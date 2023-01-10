; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/montage.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/montage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MontageInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, double, i64, i32, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, [4096 x i8], i32, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._FrameInfo = type { i64, i64, i64, i64, i64, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._TypeMetric = type { %struct._PointInfo, double, double, double, double, double, double, double, %struct._SegmentInfo, %struct._PointInfo }
%struct._SegmentInfo = type { double, double, double, double }
%struct._PointInfo = type { double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/montage.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DefaultTileGeometry = external constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Tile/Image\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s!\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%.20gx%.20g+0+0\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"#000000\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Montage/Image\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneMontageInfo(ptr noundef %image_info, ptr noundef %montage_info) local_unnamed_addr #0 !dbg !960 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1100, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %montage_info, metadata !1101, metadata !DIExpression()), !dbg !1107
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 4224) #13, !dbg !1108
  call void @llvm.dbg.value(metadata ptr %call, metadata !1102, metadata !DIExpression()), !dbg !1107
  %cmp = icmp eq ptr %call, null, !dbg !1109
  br i1 %cmp, label %if.then, label %if.end, !dbg !1110

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #14, !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1106, metadata !DIExpression()), !dbg !1111
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #14, !dbg !1111
  %call1 = tail call ptr @__errno_location() #15, !dbg !1111
  %0 = load i32, ptr %call1, align 4, !dbg !1111, !tbaa !1112
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #14, !dbg !1111
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1103, metadata !DIExpression()), !dbg !1116
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 109, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #14, !dbg !1111
  %call4 = call ptr @DestroyString(ptr noundef %call2) #14, !dbg !1111
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1103, metadata !DIExpression()), !dbg !1116
  call void @CatchException(ptr noundef nonnull %exception) #14, !dbg !1111
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #14, !dbg !1111
  call void @MagickCoreTerminus() #14, !dbg !1111
  call void @_exit(i32 noundef 1) #16, !dbg !1111
  unreachable, !dbg !1111

if.end:                                           ; preds = %entry
  tail call void @GetMontageInfo(ptr noundef %image_info, ptr noundef nonnull %call), !dbg !1117
  %cmp6 = icmp eq ptr %montage_info, null, !dbg !1118
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !1120

if.end8:                                          ; preds = %if.end
  %1 = load ptr, ptr %montage_info, align 8, !dbg !1121, !tbaa !1123
  %cmp9.not = icmp eq ptr %1, null, !dbg !1130
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1131

if.then10:                                        ; preds = %if.end8
  %call12 = tail call ptr @AcquireString(ptr noundef nonnull %1) #14, !dbg !1132
  store ptr %call12, ptr %call, align 8, !dbg !1133, !tbaa !1123
  br label %if.end14, !dbg !1134

if.end14:                                         ; preds = %if.then10, %if.end8
  %tile = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 1, !dbg !1135
  %2 = load ptr, ptr %tile, align 8, !dbg !1135, !tbaa !1137
  %cmp15.not = icmp eq ptr %2, null, !dbg !1138
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !1139

if.then16:                                        ; preds = %if.end14
  %call18 = tail call ptr @AcquireString(ptr noundef nonnull %2) #14, !dbg !1140
  %tile19 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 1, !dbg !1141
  store ptr %call18, ptr %tile19, align 8, !dbg !1142, !tbaa !1137
  br label %if.end20, !dbg !1143

if.end20:                                         ; preds = %if.then16, %if.end14
  %title = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 2, !dbg !1144
  %3 = load ptr, ptr %title, align 8, !dbg !1144, !tbaa !1146
  %cmp21.not = icmp eq ptr %3, null, !dbg !1147
  br i1 %cmp21.not, label %if.end26, label %if.then22, !dbg !1148

if.then22:                                        ; preds = %if.end20
  %call24 = tail call ptr @AcquireString(ptr noundef nonnull %3) #14, !dbg !1149
  %title25 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 2, !dbg !1150
  store ptr %call24, ptr %title25, align 8, !dbg !1151, !tbaa !1146
  br label %if.end26, !dbg !1152

if.end26:                                         ; preds = %if.then22, %if.end20
  %frame = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 3, !dbg !1153
  %4 = load ptr, ptr %frame, align 8, !dbg !1153, !tbaa !1155
  %cmp27.not = icmp eq ptr %4, null, !dbg !1156
  br i1 %cmp27.not, label %if.end32, label %if.then28, !dbg !1157

if.then28:                                        ; preds = %if.end26
  %call30 = tail call ptr @AcquireString(ptr noundef nonnull %4) #14, !dbg !1158
  %frame31 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 3, !dbg !1159
  store ptr %call30, ptr %frame31, align 8, !dbg !1160, !tbaa !1155
  br label %if.end32, !dbg !1161

if.end32:                                         ; preds = %if.then28, %if.end26
  %texture = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 4, !dbg !1162
  %5 = load ptr, ptr %texture, align 8, !dbg !1162, !tbaa !1164
  %cmp33.not = icmp eq ptr %5, null, !dbg !1165
  br i1 %cmp33.not, label %if.end38, label %if.then34, !dbg !1166

if.then34:                                        ; preds = %if.end32
  %call36 = tail call ptr @AcquireString(ptr noundef nonnull %5) #14, !dbg !1167
  %texture37 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 4, !dbg !1168
  store ptr %call36, ptr %texture37, align 8, !dbg !1169, !tbaa !1164
  br label %if.end38, !dbg !1170

if.end38:                                         ; preds = %if.then34, %if.end32
  %font = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 5, !dbg !1171
  %6 = load ptr, ptr %font, align 8, !dbg !1171, !tbaa !1173
  %cmp39.not = icmp eq ptr %6, null, !dbg !1174
  br i1 %cmp39.not, label %if.end44, label %if.then40, !dbg !1175

if.then40:                                        ; preds = %if.end38
  %call42 = tail call ptr @AcquireString(ptr noundef nonnull %6) #14, !dbg !1176
  %font43 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 5, !dbg !1177
  store ptr %call42, ptr %font43, align 8, !dbg !1178, !tbaa !1173
  br label %if.end44, !dbg !1179

if.end44:                                         ; preds = %if.then40, %if.end38
  %pointsize = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 6, !dbg !1180
  %7 = load double, ptr %pointsize, align 8, !dbg !1180, !tbaa !1181
  %pointsize45 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 6, !dbg !1182
  store double %7, ptr %pointsize45, align 8, !dbg !1183, !tbaa !1181
  %border_width = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 7, !dbg !1184
  %8 = load i64, ptr %border_width, align 8, !dbg !1184, !tbaa !1185
  %border_width46 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 7, !dbg !1186
  store i64 %8, ptr %border_width46, align 8, !dbg !1187, !tbaa !1185
  %shadow = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 8, !dbg !1188
  %9 = load i32, ptr %shadow, align 8, !dbg !1188, !tbaa !1189
  %shadow47 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 8, !dbg !1190
  store i32 %9, ptr %shadow47, align 8, !dbg !1191, !tbaa !1189
  %fill = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 9, !dbg !1192
  %fill48 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 9, !dbg !1193
  %10 = load i64, ptr %fill48, align 4, !dbg !1193
  store i64 %10, ptr %fill, align 4, !dbg !1193
  %stroke = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 10, !dbg !1194
  %stroke49 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 10, !dbg !1195
  %11 = load i64, ptr %stroke49, align 4, !dbg !1195
  store i64 %11, ptr %stroke, align 4, !dbg !1195
  %background_color = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 11, !dbg !1196
  %background_color50 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 11, !dbg !1197
  %12 = load i64, ptr %background_color50, align 4, !dbg !1197
  store i64 %12, ptr %background_color, align 4, !dbg !1197
  %border_color = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 12, !dbg !1198
  %border_color51 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 12, !dbg !1199
  %13 = load i64, ptr %border_color51, align 4, !dbg !1199
  store i64 %13, ptr %border_color, align 4, !dbg !1199
  %matte_color = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 13, !dbg !1200
  %matte_color52 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 13, !dbg !1201
  %14 = load i64, ptr %matte_color52, align 4, !dbg !1201
  store i64 %14, ptr %matte_color, align 4, !dbg !1201
  %gravity = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 14, !dbg !1202
  %15 = load i32, ptr %gravity, align 4, !dbg !1202, !tbaa !1203
  %gravity53 = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 14, !dbg !1204
  store i32 %15, ptr %gravity53, align 4, !dbg !1205, !tbaa !1203
  %filename = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 15, !dbg !1206
  %filename54 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 15, !dbg !1207
  %call56 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename54, i64 noundef 4096) #14, !dbg !1208
  %call57 = tail call i32 @IsEventLogging() #14, !dbg !1209
  %debug = getelementptr inbounds %struct._MontageInfo, ptr %call, i64 0, i32 16, !dbg !1210
  store i32 %call57, ptr %debug, align 8, !dbg !1211, !tbaa !1212
  br label %cleanup, !dbg !1213

cleanup:                                          ; preds = %if.end, %if.end44
  ret ptr %call, !dbg !1214
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare !dbg !1215 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !1220 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1224 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !1228 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1232 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !1236 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !1237 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1240 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @GetMontageInfo(ptr noundef %image_info, ptr noundef %montage_info) local_unnamed_addr #0 !dbg !1244 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1248, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata ptr %montage_info, metadata !1249, metadata !DIExpression()), !dbg !1250
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1251
  %0 = load i32, ptr %debug, align 8, !dbg !1251, !tbaa !1253
  %cmp.not = icmp eq i32 %0, 0, !dbg !1255
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1256

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1257
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 219, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #14, !dbg !1258
  br label %if.end, !dbg !1259

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @ResetMagickMemory(ptr noundef %montage_info, i32 noundef 0, i64 noundef 4224) #14, !dbg !1260
  %filename2 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 15, !dbg !1261
  %filename4 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1262
  %call6 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename2, ptr noundef nonnull %filename4, i64 noundef 4096) #14, !dbg !1263
  %call7 = tail call ptr @AcquireString(ptr noundef nonnull @DefaultTileGeometry) #14, !dbg !1264
  store ptr %call7, ptr %montage_info, align 8, !dbg !1265, !tbaa !1123
  %font = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 19, !dbg !1266
  %1 = load ptr, ptr %font, align 8, !dbg !1266, !tbaa !1268
  %cmp8.not = icmp eq ptr %1, null, !dbg !1269
  br i1 %cmp8.not, label %if.end13, label %if.then9, !dbg !1270

if.then9:                                         ; preds = %if.end
  %call11 = tail call ptr @AcquireString(ptr noundef nonnull %1) #14, !dbg !1271
  %font12 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 5, !dbg !1272
  store ptr %call11, ptr %font12, align 8, !dbg !1273, !tbaa !1173
  br label %if.end13, !dbg !1274

if.end13:                                         ; preds = %if.then9, %if.end
  %gravity = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 14, !dbg !1275
  store i32 5, ptr %gravity, align 4, !dbg !1276, !tbaa !1203
  %pointsize = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 22, !dbg !1277
  %2 = load double, ptr %pointsize, align 8, !dbg !1277, !tbaa !1278
  %pointsize14 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 6, !dbg !1279
  store double %2, ptr %pointsize14, align 8, !dbg !1280, !tbaa !1181
  %opacity = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 9, i32 3, !dbg !1281
  store i16 0, ptr %opacity, align 2, !dbg !1282, !tbaa !1283
  %opacity15 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 10, i32 3, !dbg !1284
  store i16 -1, ptr %opacity15, align 2, !dbg !1285, !tbaa !1286
  %background_color = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 11, !dbg !1287
  %background_color16 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 24, !dbg !1288
  %3 = load i64, ptr %background_color16, align 8, !dbg !1288
  store i64 %3, ptr %background_color, align 4, !dbg !1288
  %border_color = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 12, !dbg !1289
  %border_color17 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 25, !dbg !1290
  %4 = load i64, ptr %border_color17, align 8, !dbg !1290
  store i64 %4, ptr %border_color, align 4, !dbg !1290
  %matte_color = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 13, !dbg !1291
  %matte_color18 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 26, !dbg !1292
  %5 = load i64, ptr %matte_color18, align 8, !dbg !1292
  store i64 %5, ptr %matte_color, align 4, !dbg !1292
  %call19 = tail call i32 @IsEventLogging() #14, !dbg !1293
  %debug20 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 16, !dbg !1294
  store i32 %call19, ptr %debug20, align 8, !dbg !1295, !tbaa !1212
  %signature = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 17, !dbg !1296
  store i64 2880220587, ptr %signature, align 8, !dbg !1297, !tbaa !1298
  ret void, !dbg !1299
}

declare !dbg !1300 ptr @AcquireString(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare !dbg !1303 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1306 i32 @IsEventLogging() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyMontageInfo(ptr noundef %montage_info) local_unnamed_addr #0 !dbg !1309 {
entry:
  call void @llvm.dbg.value(metadata ptr %montage_info, metadata !1313, metadata !DIExpression()), !dbg !1314
  %debug = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 16, !dbg !1315
  %0 = load i32, ptr %debug, align 8, !dbg !1315, !tbaa !1212
  %cmp.not = icmp eq i32 %0, 0, !dbg !1317
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1318

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 166, ptr noundef nonnull @.str.4) #14, !dbg !1319
  br label %if.end, !dbg !1320

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %montage_info, align 8, !dbg !1321, !tbaa !1123
  %cmp1.not = icmp eq ptr %1, null, !dbg !1323
  br i1 %cmp1.not, label %if.end6, label %if.then2, !dbg !1324

if.then2:                                         ; preds = %if.end
  %call4 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %1) #14, !dbg !1325
  store ptr %call4, ptr %montage_info, align 8, !dbg !1326, !tbaa !1123
  br label %if.end6, !dbg !1327

if.end6:                                          ; preds = %if.then2, %if.end
  %tile = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 1, !dbg !1328
  %2 = load ptr, ptr %tile, align 8, !dbg !1328, !tbaa !1137
  %cmp7.not = icmp eq ptr %2, null, !dbg !1330
  br i1 %cmp7.not, label %if.end12, label %if.then8, !dbg !1331

if.then8:                                         ; preds = %if.end6
  %call10 = tail call ptr @DestroyString(ptr noundef nonnull %2) #14, !dbg !1332
  store ptr %call10, ptr %tile, align 8, !dbg !1333, !tbaa !1137
  br label %if.end12, !dbg !1334

if.end12:                                         ; preds = %if.then8, %if.end6
  %title = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 2, !dbg !1335
  %3 = load ptr, ptr %title, align 8, !dbg !1335, !tbaa !1146
  %cmp13.not = icmp eq ptr %3, null, !dbg !1337
  br i1 %cmp13.not, label %if.end18, label %if.then14, !dbg !1338

if.then14:                                        ; preds = %if.end12
  %call16 = tail call ptr @DestroyString(ptr noundef nonnull %3) #14, !dbg !1339
  store ptr %call16, ptr %title, align 8, !dbg !1340, !tbaa !1146
  br label %if.end18, !dbg !1341

if.end18:                                         ; preds = %if.then14, %if.end12
  %frame = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 3, !dbg !1342
  %4 = load ptr, ptr %frame, align 8, !dbg !1342, !tbaa !1155
  %cmp19.not = icmp eq ptr %4, null, !dbg !1344
  br i1 %cmp19.not, label %if.end24, label %if.then20, !dbg !1345

if.then20:                                        ; preds = %if.end18
  %call22 = tail call ptr @DestroyString(ptr noundef nonnull %4) #14, !dbg !1346
  store ptr %call22, ptr %frame, align 8, !dbg !1347, !tbaa !1155
  br label %if.end24, !dbg !1348

if.end24:                                         ; preds = %if.then20, %if.end18
  %texture = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 4, !dbg !1349
  %5 = load ptr, ptr %texture, align 8, !dbg !1349, !tbaa !1164
  %cmp25.not = icmp eq ptr %5, null, !dbg !1351
  br i1 %cmp25.not, label %if.end30, label %if.then26, !dbg !1352

if.then26:                                        ; preds = %if.end24
  %call28 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #14, !dbg !1353
  store ptr %call28, ptr %texture, align 8, !dbg !1354, !tbaa !1164
  br label %if.end30, !dbg !1355

if.end30:                                         ; preds = %if.then26, %if.end24
  %font = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 5, !dbg !1356
  %6 = load ptr, ptr %font, align 8, !dbg !1356, !tbaa !1173
  %cmp31.not = icmp eq ptr %6, null, !dbg !1358
  br i1 %cmp31.not, label %if.end36, label %if.then32, !dbg !1359

if.then32:                                        ; preds = %if.end30
  %call34 = tail call ptr @DestroyString(ptr noundef nonnull %6) #14, !dbg !1360
  store ptr %call34, ptr %font, align 8, !dbg !1361, !tbaa !1173
  br label %if.end36, !dbg !1362

if.end36:                                         ; preds = %if.then32, %if.end30
  %signature = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 17, !dbg !1363
  store i64 -2880220588, ptr %signature, align 8, !dbg !1364, !tbaa !1298
  %call37 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %montage_info) #14, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %call37, metadata !1313, metadata !DIExpression()), !dbg !1314
  ret ptr %call37, !dbg !1366
}

declare !dbg !1367 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1372 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

declare !dbg !1375 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @MontageImages(ptr noundef %images, ptr noundef %montage_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !1378 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1382, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata ptr %montage_info, metadata !1383, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1384, metadata !DIExpression()), !dbg !1388
  %call = tail call ptr @AcquireImageInfo() #14, !dbg !1389
  call void @llvm.dbg.value(metadata ptr %call, metadata !1386, metadata !DIExpression()), !dbg !1388
  %call1 = tail call ptr @MontageImageList(ptr noundef %call, ptr noundef %montage_info, ptr noundef %images, ptr noundef %exception), !dbg !1390
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1385, metadata !DIExpression()), !dbg !1388
  %call2 = tail call ptr @DestroyImageInfo(ptr noundef %call) #14, !dbg !1391
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1386, metadata !DIExpression()), !dbg !1388
  ret ptr %call1, !dbg !1392
}

declare !dbg !1393 ptr @AcquireImageInfo() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @MontageImageList(ptr noundef %image_info, ptr noundef %montage_info, ptr noundef %images, ptr noundef %exception) local_unnamed_addr #0 !dbg !1396 {
entry:
  %message.i1271 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  %tile_geometry = alloca [4096 x i8], align 16
  %frame_info = alloca %struct._FrameInfo, align 8
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 128)), !dbg !1505
  %geometry = alloca %struct._RectangleInfo, align 8
  %extract_info = alloca %struct._RectangleInfo, align 8
  %sans = alloca i64, align 8
  %tiles_per_column = alloca i64, align 8
  %tiles_per_row = alloca i64, align 8
  %x_offset = alloca i64, align 8
  %y = alloca i64, align 8
  %y_offset = alloca i64, align 8
  %metrics = alloca %struct._TypeMetric, align 8
  %absolute_geometry = alloca [4096 x i8], align 16
  %geometry449 = alloca [4096 x i8], align 16
  %metrics451 = alloca %struct._TypeMetric, align 8
  %border_info = alloca %struct._RectangleInfo, align 8
  %extract_info584 = alloca %struct._FrameInfo, align 8
  %geometry643 = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1400, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %montage_info, metadata !1401, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %images, metadata !1402, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1403, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tile_geometry) #14, !dbg !1507
  call void @llvm.dbg.declare(metadata ptr %tile_geometry, metadata !1404, metadata !DIExpression()), !dbg !1508
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %frame_info) #14, !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %frame_info, metadata !1408, metadata !DIExpression()), !dbg !1510
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #14, !dbg !1511
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !1436, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %extract_info) #14, !dbg !1511
  call void @llvm.dbg.declare(metadata ptr %extract_info, metadata !1437, metadata !DIExpression()), !dbg !1513
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sans) #14, !dbg !1514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tiles_per_column) #14, !dbg !1514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tiles_per_row) #14, !dbg !1514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x_offset) #14, !dbg !1515
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y) #14, !dbg !1515
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y_offset) #14, !dbg !1515
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %metrics) #14, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %metrics, metadata !1458, metadata !DIExpression()), !dbg !1517
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !1518
  %0 = load i32, ptr %debug, align 8, !dbg !1518, !tbaa !1520
  %cmp.not = icmp eq i32 %0, 0, !dbg !1531
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1532

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1533
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 423, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #14, !dbg !1534
  br label %if.end, !dbg !1535

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i64 @GetImageListLength(ptr noundef nonnull %images) #14, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1444, metadata !DIExpression()), !dbg !1506
  %call2 = tail call ptr @ImageListToArray(ptr noundef nonnull %images, ptr noundef %exception) #14, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1421, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1420, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr undef, metadata !1419, metadata !DIExpression()), !dbg !1506
  %1 = load ptr, ptr %call2, align 8, !dbg !1538, !tbaa !1539
  call void @llvm.dbg.value(metadata ptr %1, metadata !1419, metadata !DIExpression()), !dbg !1506
  %call9 = tail call ptr @NewImageList() #14, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1425, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %1, metadata !1419, metadata !DIExpression()), !dbg !1506
  %cmp101304 = icmp sgt i64 %call1, 0, !dbg !1541
  br i1 %cmp101304, label %for.body.lr.ph, label %for.end63, !dbg !1544

for.body.lr.ph:                                   ; preds = %if.end
  %height21 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1425, metadata !DIExpression()), !dbg !1506
  %2 = load ptr, ptr %call2, align 8, !dbg !1545, !tbaa !1539
  %call121397 = call ptr @CloneImage(ptr noundef %2, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #14, !dbg !1547
  call void @llvm.dbg.value(metadata ptr %call121397, metadata !1419, metadata !DIExpression()), !dbg !1506
  %cmp131398 = icmp eq ptr %call121397, null, !dbg !1548
  br i1 %cmp131398, label %if.then35, label %if.end15, !dbg !1550

for.cond54.preheader:                             ; preds = %if.end32
  call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1506
  br i1 %cmp101304, label %for.body56, label %for.end63, !dbg !1551

for.body:                                         ; preds = %if.end32
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1434, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1425, metadata !DIExpression()), !dbg !1506
  %arrayidx11 = getelementptr inbounds ptr, ptr %call2, i64 %inc, !dbg !1545
  %3 = load ptr, ptr %arrayidx11, align 8, !dbg !1545, !tbaa !1539
  %call12 = call ptr @CloneImage(ptr noundef %3, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #14, !dbg !1547
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1419, metadata !DIExpression()), !dbg !1506
  %cmp13 = icmp eq ptr %call12, null, !dbg !1548
  br i1 %cmp13, label %if.then35, label %if.end15, !dbg !1550, !llvm.loop !1553

if.end15:                                         ; preds = %for.body.lr.ph, %for.body
  %call121402 = phi ptr [ %call12, %for.body ], [ %call121397, %for.body.lr.ph ]
  %arrayidx111401 = phi ptr [ %arrayidx11, %for.body ], [ %call2, %for.body.lr.ph ]
  %i.013061399 = phi i64 [ %inc, %for.body ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.013061399, metadata !1434, metadata !DIExpression()), !dbg !1506
  %page = getelementptr inbounds %struct._Image, ptr %call121402, i64 0, i32 26, !dbg !1557
  %call16 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.6, ptr noundef nonnull %page) #14, !dbg !1558
  %client_data = getelementptr inbounds %struct._Image, ptr %call121402, i64 0, i32 48, !dbg !1559
  %4 = load ptr, ptr %client_data, align 8, !dbg !1559, !tbaa !1560
  %call17 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %call121402, ptr noundef null, ptr noundef %4) #14, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %call17, metadata !1431, metadata !DIExpression()), !dbg !1506
  %5 = load ptr, ptr %montage_info, align 8, !dbg !1562, !tbaa !1123
  %call19 = call i32 @ParseRegionGeometry(ptr noundef nonnull %call121402, ptr noundef %5, ptr noundef nonnull %geometry, ptr noundef %exception) #14, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %call19, metadata !1432, metadata !DIExpression()), !dbg !1506
  %6 = load i64, ptr %geometry, align 8, !dbg !1564, !tbaa !1565
  %7 = load i64, ptr %height21, align 8, !dbg !1566, !tbaa !1567
  %call22 = call ptr @ThumbnailImage(ptr noundef nonnull %call121402, i64 noundef %6, i64 noundef %7, ptr noundef %exception) #14, !dbg !1568
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1425, metadata !DIExpression()), !dbg !1506
  %cmp23 = icmp eq ptr %call22, null, !dbg !1569
  br i1 %cmp23, label %if.then35, label %if.end25, !dbg !1571

if.end25:                                         ; preds = %if.end15
  store ptr %call22, ptr %arrayidx111401, align 8, !dbg !1572, !tbaa !1539
  %8 = load ptr, ptr %client_data, align 8, !dbg !1573, !tbaa !1560
  %call28 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %call121402, ptr noundef %call17, ptr noundef %8) #14, !dbg !1574
  call void @llvm.dbg.value(metadata ptr %call121402, metadata !1575, metadata !DIExpression()) #14, !dbg !1585
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !1581, metadata !DIExpression()) #14, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %i.013061399, metadata !1582, metadata !DIExpression()) #14, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1583, metadata !DIExpression()) #14, !dbg !1585
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #14, !dbg !1587
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1584, metadata !DIExpression()) #14, !dbg !1588
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %call121402, i64 0, i32 47, !dbg !1589
  %9 = load ptr, ptr %progress_monitor.i, align 8, !dbg !1589, !tbaa !1591
  %cmp.i = icmp eq ptr %9, null, !dbg !1592
  br i1 %cmp.i, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !1593

SetImageProgress.exit.thread:                     ; preds = %if.end25
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #14, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1428, metadata !DIExpression()), !dbg !1506
  br label %if.end32, !dbg !1595

SetImageProgress.exit:                            ; preds = %if.end25
  %filename.i = getelementptr inbounds %struct._Image, ptr %call121402, i64 0, i32 53, !dbg !1596
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i) #14, !dbg !1597
  %10 = load ptr, ptr %progress_monitor.i, align 8, !dbg !1598, !tbaa !1591
  %11 = load ptr, ptr %client_data, align 8, !dbg !1599, !tbaa !1560
  %call4.i = call i32 %10(ptr noundef nonnull %message.i, i64 noundef %i.013061399, i64 noundef %call1, ptr noundef %11) #14, !dbg !1600
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #14, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1428, metadata !DIExpression()), !dbg !1506
  %cmp30 = icmp eq i32 %call4.i, 0, !dbg !1601
  br i1 %cmp30, label %if.then35, label %if.end32, !dbg !1595

if.end32:                                         ; preds = %SetImageProgress.exit.thread, %SetImageProgress.exit
  %call33 = call ptr @DestroyImage(ptr noundef nonnull %call121402) #14, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1419, metadata !DIExpression()), !dbg !1506
  %inc = add nuw nsw i64 %i.013061399, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1434, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1425, metadata !DIExpression()), !dbg !1506
  %exitcond.not = icmp eq i64 %inc, %call1, !dbg !1541
  br i1 %exitcond.not, label %for.cond54.preheader, label %for.body, !dbg !1544, !llvm.loop !1553

if.then35:                                        ; preds = %for.body, %if.end15, %SetImageProgress.exit, %for.body.lr.ph
  %i.01306.lcssa = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ], [ %i.013061399, %if.end15 ], [ %i.013061399, %SetImageProgress.exit ]
  %thumbnail.1.ph = phi ptr [ %call9, %for.body.lr.ph ], [ %call22, %for.body ], [ null, %if.end15 ], [ %call22, %SetImageProgress.exit ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1419, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr undef, metadata !1425, metadata !DIExpression()), !dbg !1506
  %cmp36 = icmp eq ptr %thumbnail.1.ph, null, !dbg !1605
  %dec = sext i1 %cmp36 to i64, !dbg !1609
  %spec.select = add i64 %i.01306.lcssa, %dec, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1434, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1506
  %cmp40.not1353 = icmp slt i64 %spec.select, 0, !dbg !1610
  br i1 %cmp40.not1353, label %for.end51, label %for.body41, !dbg !1613

for.body41:                                       ; preds = %if.then35, %for.inc49
  %tile.01354 = phi i64 [ %inc50, %for.inc49 ], [ 0, %if.then35 ]
  call void @llvm.dbg.value(metadata i64 %tile.01354, metadata !1453, metadata !DIExpression()), !dbg !1506
  %arrayidx42 = getelementptr inbounds ptr, ptr %call2, i64 %tile.01354, !dbg !1614
  %12 = load ptr, ptr %arrayidx42, align 8, !dbg !1614, !tbaa !1539
  %cmp43.not = icmp eq ptr %12, null, !dbg !1616
  br i1 %cmp43.not, label %for.inc49, label %if.then44, !dbg !1617

if.then44:                                        ; preds = %for.body41
  %call46 = call ptr @DestroyImage(ptr noundef nonnull %12) #14, !dbg !1618
  store ptr %call46, ptr %arrayidx42, align 8, !dbg !1619, !tbaa !1539
  br label %for.inc49, !dbg !1620

for.inc49:                                        ; preds = %for.body41, %if.then44
  %inc50 = add nuw nsw i64 %tile.01354, 1, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %inc50, metadata !1453, metadata !DIExpression()), !dbg !1506
  %exitcond1369.not = icmp eq i64 %tile.01354, %spec.select, !dbg !1610
  br i1 %exitcond1369.not, label %for.end51, label %for.body41, !dbg !1613, !llvm.loop !1622

for.end51:                                        ; preds = %for.inc49, %if.then35
  %call52 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #14, !dbg !1624
  call void @llvm.dbg.value(metadata ptr %call52, metadata !1421, metadata !DIExpression()), !dbg !1506
  br label %cleanup, !dbg !1625

for.body56:                                       ; preds = %for.cond54.preheader, %for.inc61
  %i.21309 = phi i64 [ %inc62, %for.inc61 ], [ 0, %for.cond54.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.21309, metadata !1434, metadata !DIExpression()), !dbg !1506
  %arrayidx57 = getelementptr inbounds ptr, ptr %call2, i64 %i.21309, !dbg !1626
  %13 = load ptr, ptr %arrayidx57, align 8, !dbg !1626, !tbaa !1539
  %scene = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 39, !dbg !1629
  %14 = load i64, ptr %scene, align 8, !dbg !1629, !tbaa !1630
  %cmp58 = icmp eq i64 %14, 0, !dbg !1631
  br i1 %cmp58, label %for.end63, label %for.inc61, !dbg !1632

for.inc61:                                        ; preds = %for.body56
  %inc62 = add nuw nsw i64 %i.21309, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !1434, metadata !DIExpression()), !dbg !1506
  %exitcond1361.not = icmp eq i64 %inc62, %call1, !dbg !1634
  br i1 %exitcond1361.not, label %if.then65, label %for.body56, !dbg !1551, !llvm.loop !1635

for.end63:                                        ; preds = %for.body56, %if.end, %for.cond54.preheader
  %image.0.lcssa1374 = phi ptr [ %call33, %for.cond54.preheader ], [ %1, %if.end ], [ %call33, %for.body56 ]
  %i.2.lcssa = phi i64 [ 0, %for.cond54.preheader ], [ 0, %if.end ], [ %i.21309, %for.body56 ], !dbg !1637
  %cmp64 = icmp eq i64 %i.2.lcssa, %call1, !dbg !1638
  br i1 %cmp64, label %if.then65, label %if.end66, !dbg !1640

if.then65:                                        ; preds = %for.inc61, %for.end63
  %image.0.lcssa13741379 = phi ptr [ %image.0.lcssa1374, %for.end63 ], [ %call33, %for.inc61 ]
  call void @qsort(ptr noundef nonnull %call2, i64 noundef %call1, i64 noundef 8, ptr noundef nonnull @SceneCompare) #14, !dbg !1641
  br label %if.end66, !dbg !1641

if.end66:                                         ; preds = %if.then65, %for.end63
  %image.0.lcssa13741378 = phi ptr [ %image.0.lcssa13741379, %if.then65 ], [ %image.0.lcssa1374, %for.end63 ]
  %conv = uitofp i64 %call1 to double, !dbg !1642
  %call67 = call double @sqrt(double noundef %conv) #14, !dbg !1643
  %conv68 = fptoui double %call67 to i64, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %conv68, metadata !1447, metadata !DIExpression()), !dbg !1506
  store i64 %conv68, ptr %tiles_per_column, align 8, !dbg !1645, !tbaa !1646
  %conv70 = uitofp i64 %conv68 to double, !dbg !1647
  %div = fdiv double %conv, %conv70, !dbg !1648
  %15 = call double @llvm.ceil.f64(double %div), !dbg !1649
  %conv71 = fptoui double %15 to i64, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %conv71, metadata !1449, metadata !DIExpression()), !dbg !1506
  store i64 %conv71, ptr %tiles_per_row, align 8, !dbg !1651, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %x_offset, align 8, !dbg !1652, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %y_offset, align 8, !dbg !1653, !tbaa !1646
  %tile72 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 1, !dbg !1654
  %16 = load ptr, ptr %tile72, align 8, !dbg !1654, !tbaa !1137
  %cmp73.not = icmp eq ptr %16, null, !dbg !1656
  br i1 %cmp73.not, label %if.end77, label %if.then75, !dbg !1657

if.then75:                                        ; preds = %if.end66
  call void @llvm.dbg.value(metadata ptr %tiles_per_column, metadata !1447, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %tiles_per_row, metadata !1449, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1455, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !1457, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %16, metadata !1658, metadata !DIExpression()) #14, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1665, metadata !DIExpression()) #14, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1666, metadata !DIExpression()) #14, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !1667, metadata !DIExpression()) #14, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %tiles_per_column, metadata !1668, metadata !DIExpression()) #14, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %tiles_per_row, metadata !1669, metadata !DIExpression()) #14, !dbg !1670
  store i64 0, ptr %tiles_per_column, align 8, !dbg !1672, !tbaa !1646
  store i64 0, ptr %tiles_per_row, align 8, !dbg !1673, !tbaa !1646
  %call.i1176 = call i32 @GetGeometry(ptr noundef nonnull %16, ptr noundef nonnull %x_offset, ptr noundef nonnull %y_offset, ptr noundef nonnull %tiles_per_row, ptr noundef nonnull %tiles_per_column) #14, !dbg !1674
  %17 = load i64, ptr %tiles_per_column, align 8, !dbg !1675, !tbaa !1646
  %cmp.i1177 = icmp eq i64 %17, 0, !dbg !1677
  br i1 %cmp.i1177, label %land.lhs.true.i, label %if.end10.i, !dbg !1678

land.lhs.true.i:                                  ; preds = %if.then75
  %18 = load i64, ptr %tiles_per_row, align 8, !dbg !1679, !tbaa !1646
  %cmp1.i = icmp eq i64 %18, 0, !dbg !1680
  br i1 %cmp1.i, label %if.end.i1178, label %if.then6.i, !dbg !1681

if.end.i1178:                                     ; preds = %land.lhs.true.i
  %call2.i = call double @sqrt(double noundef %conv) #14, !dbg !1682
  %conv3.i = fptoui double %call2.i to i64, !dbg !1683
  store i64 %conv3.i, ptr %tiles_per_column, align 8, !dbg !1684, !tbaa !1646
  %cmp4.i = icmp eq i64 %conv3.i, 0, !dbg !1685
  br i1 %cmp4.i, label %if.end.if.then6_crit_edge.i, label %if.end10.i, !dbg !1687

if.end.if.then6_crit_edge.i:                      ; preds = %if.end.i1178
  %.pre.i = load i64, ptr %tiles_per_row, align 8, !dbg !1688, !tbaa !1646
  br label %if.then6.i, !dbg !1687

if.then6.i:                                       ; preds = %if.end.if.then6_crit_edge.i, %land.lhs.true.i
  %19 = phi i64 [ %.pre.i, %if.end.if.then6_crit_edge.i ], [ %18, %land.lhs.true.i ], !dbg !1688
  %conv8.i = uitofp i64 %19 to double, !dbg !1689
  %div.i = fdiv double %conv, %conv8.i, !dbg !1690
  %20 = call double @llvm.ceil.f64(double %div.i) #14, !dbg !1691
  %conv9.i = fptoui double %20 to i64, !dbg !1692
  store i64 %conv9.i, ptr %tiles_per_column, align 8, !dbg !1693, !tbaa !1646
  br label %if.end10.i, !dbg !1694

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i1178, %if.then75
  %21 = phi i64 [ %17, %if.then75 ], [ %conv9.i, %if.then6.i ], [ %conv3.i, %if.end.i1178 ]
  %22 = load i64, ptr %tiles_per_row, align 8, !dbg !1695, !tbaa !1646
  %cmp11.i = icmp eq i64 %22, 0, !dbg !1697
  br i1 %cmp11.i, label %if.then13.i, label %if.end77, !dbg !1698

if.then13.i:                                      ; preds = %if.end10.i
  %conv15.i = uitofp i64 %21 to double, !dbg !1699
  %div16.i = fdiv double %conv, %conv15.i, !dbg !1700
  %23 = call double @llvm.ceil.f64(double %div16.i) #14, !dbg !1701
  %conv17.i = fptoui double %23 to i64, !dbg !1702
  store i64 %conv17.i, ptr %tiles_per_row, align 8, !dbg !1703, !tbaa !1646
  br label %if.end77, !dbg !1704

if.end77:                                         ; preds = %if.then13.i, %if.end10.i, %if.end66
  call void @llvm.dbg.value(metadata i32 0, metadata !1427, metadata !DIExpression()), !dbg !1506
  %24 = load ptr, ptr %call2, align 8, !dbg !1705, !tbaa !1539
  call void @SetGeometry(ptr noundef %24, ptr noundef nonnull %extract_info) #14, !dbg !1706
  %border_width79 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 7, !dbg !1707
  %25 = load i64, ptr %border_width79, align 8, !dbg !1707, !tbaa !1185
  %x80 = getelementptr inbounds %struct._RectangleInfo, ptr %extract_info, i64 0, i32 2, !dbg !1708
  store i64 %25, ptr %x80, align 8, !dbg !1709, !tbaa !1710
  %y82 = getelementptr inbounds %struct._RectangleInfo, ptr %extract_info, i64 0, i32 3, !dbg !1711
  store i64 %25, ptr %y82, align 8, !dbg !1712, !tbaa !1713
  %26 = load ptr, ptr %montage_info, align 8, !dbg !1714, !tbaa !1123
  %cmp84.not = icmp eq ptr %26, null, !dbg !1716
  br i1 %cmp84.not, label %if.end98, label %if.then86, !dbg !1717

if.then86:                                        ; preds = %if.end77
  %height91 = getelementptr inbounds %struct._RectangleInfo, ptr %extract_info, i64 0, i32 1, !dbg !1718
  %call92 = call i32 @GetGeometry(ptr noundef nonnull %26, ptr noundef nonnull %x80, ptr noundef nonnull %y82, ptr noundef nonnull %extract_info, ptr noundef nonnull %height91) #14, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %call92, metadata !1432, metadata !DIExpression()), !dbg !1506
  %and = and i32 %call92, 4, !dbg !1721
  %cmp93 = icmp eq i32 %and, 0, !dbg !1722
  br i1 %cmp93, label %land.rhs, label %land.end, !dbg !1723

land.rhs:                                         ; preds = %if.then86
  %and95 = and i32 %call92, 8, !dbg !1724
  %cmp96 = icmp eq i32 %and95, 0, !dbg !1725
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then86
  %27 = phi i1 [ false, %if.then86 ], [ %cmp96, %land.rhs ], !dbg !1726
  %cond = zext i1 %27 to i32, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1427, metadata !DIExpression()), !dbg !1506
  %.pre = load i64, ptr %border_width79, align 8, !dbg !1728, !tbaa !1185
  br label %if.end98, !dbg !1729

if.end98:                                         ; preds = %land.end, %if.end77
  %28 = phi i64 [ %.pre, %land.end ], [ %25, %if.end77 ], !dbg !1728
  %concatenate.0 = phi i32 [ %cond, %land.end ], [ 0, %if.end77 ], !dbg !1506
  call void @llvm.dbg.value(metadata i32 %concatenate.0, metadata !1427, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %28, metadata !1439, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1438, metadata !DIExpression()), !dbg !1506
  %call100 = call ptr @ResetMagickMemory(ptr noundef nonnull %frame_info, i32 noundef 0, i64 noundef 48) #14, !dbg !1730
  %frame = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 3, !dbg !1731
  %29 = load ptr, ptr %frame, align 8, !dbg !1731, !tbaa !1155
  %cmp101.not = icmp eq ptr %29, null, !dbg !1732
  br i1 %cmp101.not, label %if.end147, label %if.then103, !dbg !1733

if.then103:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %absolute_geometry) #14, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %absolute_geometry, metadata !1472, metadata !DIExpression()), !dbg !1735
  %30 = load i64, ptr %extract_info, align 8, !dbg !1736, !tbaa !1565
  store i64 %30, ptr %frame_info, align 8, !dbg !1737, !tbaa !1738
  %height106 = getelementptr inbounds %struct._RectangleInfo, ptr %extract_info, i64 0, i32 1, !dbg !1740
  %31 = load i64, ptr %height106, align 8, !dbg !1740, !tbaa !1567
  %height107 = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 1, !dbg !1741
  store i64 %31, ptr %height107, align 8, !dbg !1742, !tbaa !1743
  %call110 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %absolute_geometry, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull %29) #14, !dbg !1744
  %outer_bevel = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 5, !dbg !1745
  %inner_bevel = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 4, !dbg !1746
  %call114 = call i32 @ParseMetaGeometry(ptr noundef nonnull %absolute_geometry, ptr noundef nonnull %outer_bevel, ptr noundef nonnull %inner_bevel, ptr noundef nonnull %frame_info, ptr noundef nonnull %height107) #14, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %call114, metadata !1432, metadata !DIExpression()), !dbg !1506
  %and115 = and i32 %call114, 8, !dbg !1748
  %cmp116 = icmp eq i32 %and115, 0, !dbg !1750
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !1751

if.then118:                                       ; preds = %if.then103
  %32 = load i64, ptr %frame_info, align 8, !dbg !1752, !tbaa !1738
  store i64 %32, ptr %height107, align 8, !dbg !1753, !tbaa !1743
  br label %if.end121, !dbg !1754

if.end121:                                        ; preds = %if.then118, %if.then103
  %and122 = and i32 %call114, 1, !dbg !1755
  %cmp123 = icmp eq i32 %and122, 0, !dbg !1757
  br i1 %cmp123, label %if.then125, label %if.end129, !dbg !1758

if.then125:                                       ; preds = %if.end121
  %33 = load i64, ptr %frame_info, align 8, !dbg !1759, !tbaa !1738
  %div127 = sdiv i64 %33, 2, !dbg !1760
  store i64 %div127, ptr %outer_bevel, align 8, !dbg !1761, !tbaa !1762
  br label %if.end129, !dbg !1763

if.end129:                                        ; preds = %if.then125, %if.end121
  %and130 = and i32 %call114, 2, !dbg !1764
  %cmp131 = icmp eq i32 %and130, 0, !dbg !1766
  br i1 %cmp131, label %if.then133, label %if.end129.if.end136_crit_edge, !dbg !1767

if.end129.if.end136_crit_edge:                    ; preds = %if.end129
  %.pre1370 = load i64, ptr %inner_bevel, align 8, !dbg !1768, !tbaa !1769
  %.pre1371 = load i64, ptr %outer_bevel, align 8, !dbg !1770, !tbaa !1762
  br label %if.end136, !dbg !1767

if.then133:                                       ; preds = %if.end129
  %34 = load i64, ptr %outer_bevel, align 8, !dbg !1771, !tbaa !1762
  store i64 %34, ptr %inner_bevel, align 8, !dbg !1772, !tbaa !1769
  br label %if.end136, !dbg !1773

if.end136:                                        ; preds = %if.end129.if.end136_crit_edge, %if.then133
  %35 = phi i64 [ %.pre1371, %if.end129.if.end136_crit_edge ], [ %34, %if.then133 ], !dbg !1770
  %36 = phi i64 [ %.pre1370, %if.end129.if.end136_crit_edge ], [ %34, %if.then133 ], !dbg !1768
  %37 = load i64, ptr %frame_info, align 8, !dbg !1774, !tbaa !1738
  %x138 = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 2, !dbg !1775
  store i64 %37, ptr %x138, align 8, !dbg !1776, !tbaa !1777
  %38 = load i64, ptr %height107, align 8, !dbg !1778, !tbaa !1743
  %y140 = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 3, !dbg !1779
  store i64 %38, ptr %y140, align 8, !dbg !1780, !tbaa !1781
  call void @llvm.dbg.value(metadata i64 %36, metadata !1782, metadata !DIExpression()) #14, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %35, metadata !1788, metadata !DIExpression()) #14, !dbg !1789
  %39 = call i64 @llvm.smax.i64(i64 %36, i64 %35) #14, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %39, metadata !1438, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %37, metadata !1782, metadata !DIExpression()) #14, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %38, metadata !1788, metadata !DIExpression()) #14, !dbg !1791
  %40 = call i64 @llvm.smax.i64(i64 %37, i64 %38) #14, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %40, metadata !1439, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %absolute_geometry) #14, !dbg !1793
  br label %if.end147, !dbg !1794

if.end147:                                        ; preds = %if.end136, %if.end98
  %bevel_width.0 = phi i64 [ %39, %if.end136 ], [ 0, %if.end98 ], !dbg !1506
  %border_width.0 = phi i64 [ %40, %if.end136 ], [ %28, %if.end98 ], !dbg !1506
  call void @llvm.dbg.value(metadata i64 %border_width.0, metadata !1439, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %bevel_width.0, metadata !1438, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1506
  br i1 %cmp101304, label %for.body151.lr.ph, label %for.end172, !dbg !1795

for.body151.lr.ph:                                ; preds = %if.end147
  %height162 = getelementptr inbounds %struct._RectangleInfo, ptr %extract_info, i64 0, i32 1
  %extract_info.promoted = load i64, ptr %extract_info, align 8, !tbaa !1565
  %height162.promoted = load i64, ptr %height162, align 8, !tbaa !1567
  br label %for.body151, !dbg !1795

for.body151:                                      ; preds = %for.body151.lr.ph, %for.inc170
  %41 = phi i64 [ %height162.promoted, %for.body151.lr.ph ], [ %47, %for.inc170 ]
  %42 = phi i64 [ %extract_info.promoted, %for.body151.lr.ph ], [ %45, %for.inc170 ]
  %i.31313 = phi i64 [ 0, %for.body151.lr.ph ], [ %inc171, %for.inc170 ]
  call void @llvm.dbg.value(metadata i64 %i.31313, metadata !1434, metadata !DIExpression()), !dbg !1506
  %arrayidx152 = getelementptr inbounds ptr, ptr %call2, i64 %i.31313, !dbg !1797
  %43 = load ptr, ptr %arrayidx152, align 8, !dbg !1797, !tbaa !1539
  %columns = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7, !dbg !1801
  %44 = load i64, ptr %columns, align 8, !dbg !1801, !tbaa !1802
  %cmp154 = icmp ugt i64 %44, %42, !dbg !1803
  br i1 %cmp154, label %if.then156, label %if.end160, !dbg !1804

if.then156:                                       ; preds = %for.body151
  store i64 %44, ptr %extract_info, align 8, !dbg !1805, !tbaa !1565
  br label %if.end160, !dbg !1806

if.end160:                                        ; preds = %if.then156, %for.body151
  %45 = phi i64 [ %44, %if.then156 ], [ %42, %for.body151 ]
  %rows = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 8, !dbg !1807
  %46 = load i64, ptr %rows, align 8, !dbg !1807, !tbaa !1809
  %cmp163 = icmp ugt i64 %46, %41, !dbg !1810
  br i1 %cmp163, label %if.then165, label %for.inc170, !dbg !1811

if.then165:                                       ; preds = %if.end160
  store i64 %46, ptr %height162, align 8, !dbg !1812, !tbaa !1567
  br label %for.inc170, !dbg !1813

for.inc170:                                       ; preds = %if.end160, %if.then165
  %47 = phi i64 [ %41, %if.end160 ], [ %46, %if.then165 ]
  %inc171 = add nuw nsw i64 %i.31313, 1, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %inc171, metadata !1434, metadata !DIExpression()), !dbg !1506
  %exitcond1362.not = icmp eq i64 %inc171, %call1, !dbg !1815
  br i1 %exitcond1362.not, label %for.end172, label %for.body151, !dbg !1795, !llvm.loop !1816

for.end172:                                       ; preds = %for.inc170, %if.end147
  %call173 = call ptr @CloneImageInfo(ptr noundef %image_info) #14, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %call173, metadata !1426, metadata !DIExpression()), !dbg !1506
  %background_color = getelementptr inbounds %struct._ImageInfo, ptr %call173, i64 0, i32 24, !dbg !1819
  %background_color174 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 11, !dbg !1820
  %48 = load i64, ptr %background_color174, align 4, !dbg !1820
  store i64 %48, ptr %background_color, align 8, !dbg !1820
  %border_color = getelementptr inbounds %struct._ImageInfo, ptr %call173, i64 0, i32 25, !dbg !1821
  %border_color175 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 12, !dbg !1822
  %49 = load i64, ptr %border_color175, align 4, !dbg !1822
  store i64 %49, ptr %border_color, align 8, !dbg !1822
  %call176 = call ptr @CloneDrawInfo(ptr noundef %call173, ptr noundef null) #14, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %call176, metadata !1407, metadata !DIExpression()), !dbg !1506
  %font = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 5, !dbg !1824
  %50 = load ptr, ptr %font, align 8, !dbg !1824, !tbaa !1173
  %cmp177.not = icmp eq ptr %50, null, !dbg !1826
  br i1 %cmp177.not, label %if.end183, label %if.then179, !dbg !1827

if.then179:                                       ; preds = %for.end172
  %font180 = getelementptr inbounds %struct._DrawInfo, ptr %call176, i64 0, i32 23, !dbg !1828
  %call182 = call ptr @CloneString(ptr noundef nonnull %font180, ptr noundef nonnull %50) #14, !dbg !1829
  br label %if.end183, !dbg !1830

if.end183:                                        ; preds = %if.then179, %for.end172
  %pointsize = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 6, !dbg !1831
  %51 = load double, ptr %pointsize, align 8, !dbg !1831, !tbaa !1181
  %cmp184 = fcmp une double %51, 0.000000e+00, !dbg !1833
  br i1 %cmp184, label %if.then186, label %if.end189, !dbg !1834

if.then186:                                       ; preds = %if.end183
  %pointsize188 = getelementptr inbounds %struct._DrawInfo, ptr %call176, i64 0, i32 30, !dbg !1835
  store double %51, ptr %pointsize188, align 8, !dbg !1836, !tbaa !1837
  br label %if.end189, !dbg !1845

if.end189:                                        ; preds = %if.then186, %if.end183
  %gravity = getelementptr inbounds %struct._DrawInfo, ptr %call176, i64 0, i32 4, !dbg !1846
  store i32 5, ptr %gravity, align 8, !dbg !1847, !tbaa !1848
  %stroke = getelementptr inbounds %struct._DrawInfo, ptr %call176, i64 0, i32 6, !dbg !1849
  %stroke190 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 10, !dbg !1850
  %52 = load i64, ptr %stroke190, align 4, !dbg !1850
  store i64 %52, ptr %stroke, align 4, !dbg !1850
  %fill = getelementptr inbounds %struct._DrawInfo, ptr %call176, i64 0, i32 5, !dbg !1851
  %fill191 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 9, !dbg !1852
  %53 = load i64, ptr %fill191, align 4, !dbg !1852
  store i64 %53, ptr %fill, align 4, !dbg !1852
  %call192 = call ptr @AcquireString(ptr noundef nonnull @.str.1) #14, !dbg !1853
  %text = getelementptr inbounds %struct._DrawInfo, ptr %call176, i64 0, i32 21, !dbg !1854
  store ptr %call192, ptr %text, align 8, !dbg !1855, !tbaa !1856
  %54 = load ptr, ptr %call2, align 8, !dbg !1857, !tbaa !1539
  %call194 = call i32 @GetTypeMetrics(ptr noundef %54, ptr noundef %call176, ptr noundef nonnull %metrics) #14, !dbg !1858
  %call195 = call ptr @NewImageList() #14, !dbg !1859
  call void @llvm.dbg.value(metadata ptr %call195, metadata !1423, metadata !DIExpression()), !dbg !1506
  %texture196 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 4, !dbg !1860
  %55 = load ptr, ptr %texture196, align 8, !dbg !1860, !tbaa !1164
  %cmp197.not = icmp eq ptr %55, null, !dbg !1862
  br i1 %cmp197.not, label %if.end205, label %if.then199, !dbg !1863

if.then199:                                       ; preds = %if.end189
  %filename200 = getelementptr inbounds %struct._ImageInfo, ptr %call173, i64 0, i32 51, !dbg !1864
  %call203 = call i64 @CopyMagickString(ptr noundef nonnull %filename200, ptr noundef nonnull %55, i64 noundef 4096) #14, !dbg !1866
  %call204 = call ptr @ReadImage(ptr noundef nonnull %call173, ptr noundef %exception) #14, !dbg !1867
  call void @llvm.dbg.value(metadata ptr %call204, metadata !1423, metadata !DIExpression()), !dbg !1506
  br label %if.end205, !dbg !1868

if.end205:                                        ; preds = %if.then199, %if.end189
  %texture.0 = phi ptr [ %call204, %if.then199 ], [ %call195, %if.end189 ], !dbg !1506
  call void @llvm.dbg.value(metadata ptr %texture.0, metadata !1423, metadata !DIExpression()), !dbg !1506
  %56 = load ptr, ptr %call2, align 8, !dbg !1869, !tbaa !1539
  %title207 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 2, !dbg !1870
  %57 = load ptr, ptr %title207, align 8, !dbg !1870, !tbaa !1146
  %call208 = call ptr @InterpretImageProperties(ptr noundef nonnull %call173, ptr noundef %56, ptr noundef %57) #14, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %call208, metadata !1405, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1450, metadata !DIExpression()), !dbg !1506
  %58 = load ptr, ptr %title207, align 8, !dbg !1872, !tbaa !1146
  %cmp210.not = icmp eq ptr %58, null, !dbg !1874
  br i1 %cmp210.not, label %if.end220, label %if.then212, !dbg !1875

if.then212:                                       ; preds = %if.end205
  %ascent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 1, !dbg !1876
  %59 = load double, ptr %ascent, align 8, !dbg !1876, !tbaa !1877
  %descent = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 2, !dbg !1879
  %60 = load double, ptr %descent, align 8, !dbg !1879, !tbaa !1880
  %sub = fsub double %59, %60, !dbg !1881
  %mul = fmul double %sub, 2.000000e+00, !dbg !1882
  %call213 = call i64 @MultilineCensus(ptr noundef %call208) #14, !dbg !1883
  %conv214 = uitofp i64 %call213 to double, !dbg !1883
  %61 = load i64, ptr %y82, align 8, !dbg !1884, !tbaa !1713
  %mul217 = shl nsw i64 %61, 1, !dbg !1885
  %conv218 = sitofp i64 %mul217 to double, !dbg !1886
  %62 = call double @llvm.fmuladd.f64(double %mul, double %conv214, double %conv218), !dbg !1887
  %conv219 = fptoui double %62 to i64, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %conv219, metadata !1450, metadata !DIExpression()), !dbg !1506
  br label %if.end220, !dbg !1889

if.end220:                                        ; preds = %if.then212, %if.end205
  %title_offset.0 = phi i64 [ %conv219, %if.then212 ], [ 0, %if.end205 ], !dbg !1506
  call void @llvm.dbg.value(metadata i64 %title_offset.0, metadata !1450, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1445, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1506
  br i1 %cmp101304, label %for.body224, label %for.end239, !dbg !1890

for.body224:                                      ; preds = %if.end220, %for.inc237
  %number_lines.01316 = phi i64 [ %number_lines.1, %for.inc237 ], [ 0, %if.end220 ]
  %i.41315 = phi i64 [ %inc238, %for.inc237 ], [ 0, %if.end220 ]
  call void @llvm.dbg.value(metadata i64 %number_lines.01316, metadata !1445, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %i.41315, metadata !1434, metadata !DIExpression()), !dbg !1506
  %arrayidx225 = getelementptr inbounds ptr, ptr %call2, i64 %i.41315, !dbg !1892
  %63 = load ptr, ptr %arrayidx225, align 8, !dbg !1892, !tbaa !1539
  %call226 = call ptr @GetImageProperty(ptr noundef %63, ptr noundef nonnull @.str.9) #14, !dbg !1895
  call void @llvm.dbg.value(metadata ptr %call226, metadata !1406, metadata !DIExpression()), !dbg !1506
  %cmp227 = icmp eq ptr %call226, null, !dbg !1896
  br i1 %cmp227, label %for.inc237, label %if.end230, !dbg !1898

if.end230:                                        ; preds = %for.body224
  %call231 = call i64 @MultilineCensus(ptr noundef nonnull %call226) #14, !dbg !1899
  %cmp232 = icmp ugt i64 %call231, %number_lines.01316, !dbg !1901
  br i1 %cmp232, label %if.then234, label %for.inc237, !dbg !1902

if.then234:                                       ; preds = %if.end230
  %call235 = call i64 @MultilineCensus(ptr noundef nonnull %call226) #14, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %call235, metadata !1445, metadata !DIExpression()), !dbg !1506
  br label %for.inc237, !dbg !1904

for.inc237:                                       ; preds = %if.end230, %if.then234, %for.body224
  %number_lines.1 = phi i64 [ %number_lines.01316, %for.body224 ], [ %call235, %if.then234 ], [ %number_lines.01316, %if.end230 ], !dbg !1506
  call void @llvm.dbg.value(metadata i64 %number_lines.1, metadata !1445, metadata !DIExpression()), !dbg !1506
  %inc238 = add nuw nsw i64 %i.41315, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %inc238, metadata !1434, metadata !DIExpression()), !dbg !1506
  %exitcond1363.not = icmp eq i64 %inc238, %call1, !dbg !1906
  br i1 %exitcond1363.not, label %for.end239, label %for.body224, !dbg !1890, !llvm.loop !1907

for.end239:                                       ; preds = %for.inc237, %if.end220
  %number_lines.0.lcssa = phi i64 [ 0, %if.end220 ], [ %number_lines.1, %for.inc237 ], !dbg !1909
  %call240 = call ptr @AcquireImage(ptr noundef null) #14, !dbg !1910
  call void @llvm.dbg.value(metadata ptr %call240, metadata !1424, metadata !DIExpression()), !dbg !1506
  %call241 = call ptr @AcquireImage(ptr noundef %call173) #14, !dbg !1911
  call void @llvm.dbg.value(metadata ptr %call241, metadata !1422, metadata !DIExpression()), !dbg !1506
  %background_color242 = getelementptr inbounds %struct._Image, ptr %call241, i64 0, i32 12, !dbg !1912
  %64 = load i64, ptr %background_color174, align 4, !dbg !1913
  store i64 %64, ptr %background_color242, align 8, !dbg !1913
  %scene244 = getelementptr inbounds %struct._Image, ptr %call241, i64 0, i32 39, !dbg !1914
  store i64 0, ptr %scene244, align 8, !dbg !1915, !tbaa !1630
  %sub245 = add i64 %call1, -1, !dbg !1916
  %65 = load i64, ptr %tiles_per_row, align 8, !dbg !1917, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %65, metadata !1449, metadata !DIExpression()), !dbg !1506
  %66 = load i64, ptr %tiles_per_column, align 8, !dbg !1918, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %66, metadata !1447, metadata !DIExpression()), !dbg !1506
  %mul246 = mul i64 %66, %65, !dbg !1919
  %div247 = udiv i64 %sub245, %mul246, !dbg !1920
  %add = add i64 %div247, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %add, metadata !1442, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1430, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1451, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1419, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1420, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1444, metadata !DIExpression()), !dbg !1506
  %cmp2491343 = icmp ult i64 %div247, 9223372036854775807, !dbg !1922
  br i1 %cmp2491343, label %for.body251.lr.ph, label %for.end763, !dbg !1923

for.body251.lr.ph:                                ; preds = %for.end239
  %cmp270.not = icmp eq i32 %concatenate.0, 0
  %height313 = getelementptr inbounds %struct._RectangleInfo, ptr %extract_info, i64 0, i32 1
  %ascent321 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 1
  %descent322 = getelementptr inbounds %struct._TypeMetric, ptr %metrics, i64 0, i32 2
  %conv325 = uitofp i64 %number_lines.0.lcssa to double
  %shadow = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 8
  %filename353 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 15
  %cmp440.not = icmp eq ptr %texture.0, null
  %ascent461 = getelementptr inbounds %struct._TypeMetric, ptr %metrics451, i64 0, i32 1
  %descent462 = getelementptr inbounds %struct._TypeMetric, ptr %metrics451, i64 0, i32 2
  %cmp519.not = icmp eq i64 %border_width.0, 0
  %height523 = getelementptr inbounds %struct._RectangleInfo, ptr %border_info, i64 0, i32 1
  %columns554 = getelementptr inbounds %struct._Image, ptr %call240, i64 0, i32 7
  %rows555 = getelementptr inbounds %struct._Image, ptr %call240, i64 0, i32 8
  %gravity556 = getelementptr inbounds %struct._MontageInfo, ptr %montage_info, i64 0, i32 14
  %gravity557 = getelementptr inbounds %struct._Image, ptr %call240, i64 0, i32 35
  %x573 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2
  %y575 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3
  %cmp581 = icmp ne i64 %bevel_width.0, 0
  %height589 = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 1
  %height592 = getelementptr inbounds %struct._FrameInfo, ptr %extract_info584, i64 0, i32 1
  %mul651.neg = mul i64 %border_width.0, -2
  %add666 = add i64 %border_width.0, 4
  %geometry684 = getelementptr inbounds %struct._DrawInfo, ptr %call176, i64 0, i32 1
  %progress_monitor727 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 47
  %smax = call i64 @llvm.smax.i64(i64 %add, i64 1), !dbg !1506
  br label %for.body251, !dbg !1923

for.body251:                                      ; preds = %for.body251.lr.ph, %for.inc761
  %image.21351 = phi ptr [ %image.0.lcssa13741378, %for.body251.lr.ph ], [ %image.3.lcssa, %for.inc761 ]
  %image_list.01349 = phi ptr [ %call2, %for.body251.lr.ph ], [ %image_list.1, %for.inc761 ]
  %number_images.01347 = phi i64 [ %call1, %for.body251.lr.ph ], [ %number_images.1, %for.inc761 ]
  %montage.01346 = phi ptr [ %call241, %for.body251.lr.ph ], [ %montage.1, %for.inc761 ]
  %i.51345 = phi i64 [ 0, %for.body251.lr.ph ], [ %add746, %for.inc761 ]
  %tiles.01344 = phi i64 [ 0, %for.body251.lr.ph ], [ %tiles.1.lcssa, %for.inc761 ]
  call void @llvm.dbg.value(metadata ptr %image.21351, metadata !1419, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %image_list.01349, metadata !1420, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %number_images.01347, metadata !1444, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %montage.01346, metadata !1422, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %i.51345, metadata !1434, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %tiles.01344, metadata !1430, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 undef, metadata !1449, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 undef, metadata !1447, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef), metadata !1448, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %x_offset, align 8, !dbg !1924, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %y_offset, align 8, !dbg !1925, !tbaa !1646
  %67 = load ptr, ptr %tile72, align 8, !dbg !1926, !tbaa !1137
  %cmp254.not = icmp eq ptr %67, null, !dbg !1928
  br i1 %cmp254.not, label %if.end258, label %if.then256, !dbg !1929

if.then256:                                       ; preds = %for.body251
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1446, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1455, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !1457, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %67, metadata !1658, metadata !DIExpression()) #14, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %number_images.01347, metadata !1665, metadata !DIExpression()) #14, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1666, metadata !DIExpression()) #14, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !1667, metadata !DIExpression()) #14, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1668, metadata !DIExpression()) #14, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1669, metadata !DIExpression()) #14, !dbg !1930
  store i64 0, ptr %sans, align 8, !dbg !1932, !tbaa !1646
  %call.i1179 = call i32 @GetGeometry(ptr noundef nonnull %67, ptr noundef nonnull %x_offset, ptr noundef nonnull %y_offset, ptr noundef nonnull %sans, ptr noundef nonnull %sans) #14, !dbg !1933
  %68 = load i64, ptr %sans, align 8, !dbg !1934, !tbaa !1646
  %cmp.i1180 = icmp eq i64 %68, 0, !dbg !1935
  br i1 %cmp.i1180, label %if.end.i1187, label %if.end258, !dbg !1936

if.end.i1187:                                     ; preds = %if.then256
  %conv.i1182 = uitofp i64 %number_images.01347 to double, !dbg !1930
  %call2.i1184 = call double @sqrt(double noundef %conv.i1182) #14, !dbg !1937
  %conv3.i1185 = fptoui double %call2.i1184 to i64, !dbg !1938
  store i64 %conv3.i1185, ptr %sans, align 8, !dbg !1939, !tbaa !1646
  %cmp4.i1186 = icmp eq i64 %conv3.i1185, 0, !dbg !1940
  br i1 %cmp4.i1186, label %if.end10.i1195, label %if.end258, !dbg !1941

if.end10.i1195:                                   ; preds = %if.end.i1187
  %div.i1191 = fdiv double %conv.i1182, 0.000000e+00, !dbg !1942
  %69 = call double @llvm.ceil.f64(double %div.i1191) #14, !dbg !1943
  %conv9.i1192 = fptoui double %69 to i64, !dbg !1944
  store i64 %conv9.i1192, ptr %sans, align 8, !dbg !1930
  br label %if.end258, !dbg !1945

if.end258:                                        ; preds = %if.end10.i1195, %if.then256, %if.end.i1187, %for.body251
  %70 = load i64, ptr %tiles_per_row, align 8, !dbg !1946, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %70, metadata !1449, metadata !DIExpression()), !dbg !1506
  %71 = load i64, ptr %tiles_per_column, align 8, !dbg !1947, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %71, metadata !1447, metadata !DIExpression()), !dbg !1506
  %mul259 = mul i64 %71, %70, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %mul259, metadata !1448, metadata !DIExpression()), !dbg !1506
  %72 = load i64, ptr %y_offset, align 8, !dbg !1949, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %72, metadata !1457, metadata !DIExpression()), !dbg !1506
  %add260 = add nsw i64 %72, %title_offset.0, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %add260, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 %add260, ptr %y_offset, align 8, !dbg !1949, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !1443, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1452, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1506
  %cmp2641318 = icmp sgt i64 %mul259, 0, !dbg !1950
  br i1 %cmp2641318, label %for.body266.lr.ph, label %for.end343, !dbg !1953

for.body266.lr.ph:                                ; preds = %if.end258
  %conv.i1205 = uitofp i64 %number_images.01347 to double
  %div.i1214 = fdiv double %conv.i1205, 0.000000e+00
  %73 = call double @llvm.ceil.f64(double %div.i1214) #14, !dbg !1506
  %conv9.i1215 = fptoui double %73 to i64
  br label %for.body266, !dbg !1953

for.body266:                                      ; preds = %for.body266.lr.ph, %for.inc341
  %tile.11323 = phi i64 [ 0, %for.body266.lr.ph ], [ %add296, %for.inc341 ]
  %width.01322 = phi i64 [ 0, %for.body266.lr.ph ], [ %width.1, %for.inc341 ]
  %max_height.01321 = phi i64 [ 0, %for.body266.lr.ph ], [ %max_height.2, %for.inc341 ]
  %bounds.sroa.0.01320 = phi i64 [ 0, %for.body266.lr.ph ], [ %78, %for.inc341 ]
  %bounds.sroa.8.01319 = phi i64 [ 0, %for.body266.lr.ph ], [ %bounds.sroa.8.2, %for.inc341 ]
  call void @llvm.dbg.value(metadata i64 %tile.11323, metadata !1453, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %width.01322, metadata !1452, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %max_height.01321, metadata !1443, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.0.01320, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.8.01319, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1506
  %cmp267 = icmp slt i64 %tile.11323, %number_images.01347, !dbg !1954
  br i1 %cmp267, label %if.then269, label %if.end284, !dbg !1957

if.then269:                                       ; preds = %for.body266
  %arrayidx276.phi.trans.insert = getelementptr inbounds ptr, ptr %image_list.01349, i64 %tile.11323
  %.pre1372 = load ptr, ptr %arrayidx276.phi.trans.insert, align 8, !dbg !1958, !tbaa !1539
  %columns273 = getelementptr inbounds %struct._Image, ptr %.pre1372, i64 0, i32 7
  %spec.select1390 = select i1 %cmp270.not, ptr %extract_info, ptr %columns273, !dbg !1960
  %cond275 = load i64, ptr %spec.select1390, align 8, !dbg !1960, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %cond275, metadata !1452, metadata !DIExpression()), !dbg !1506
  %rows277 = getelementptr inbounds %struct._Image, ptr %.pre1372, i64 0, i32 8, !dbg !1961
  %74 = load i64, ptr %rows277, align 8, !dbg !1961, !tbaa !1809
  %75 = call i64 @llvm.umax.i64(i64 %74, i64 %max_height.01321), !dbg !1963
  br label %if.end284, !dbg !1963

if.end284:                                        ; preds = %if.then269, %for.body266
  %max_height.1 = phi i64 [ %max_height.01321, %for.body266 ], [ %75, %if.then269 ], !dbg !1964
  %width.1 = phi i64 [ %width.01322, %for.body266 ], [ %cond275, %if.then269 ], !dbg !1964
  call void @llvm.dbg.value(metadata i64 %width.1, metadata !1452, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %max_height.1, metadata !1443, metadata !DIExpression()), !dbg !1506
  %76 = load i64, ptr %x80, align 8, !dbg !1965, !tbaa !1710
  %add286 = add i64 %76, %border_width.0, !dbg !1966
  %mul287 = shl i64 %add286, 1, !dbg !1967
  %77 = load i64, ptr %x_offset, align 8, !dbg !1968, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %77, metadata !1455, metadata !DIExpression()), !dbg !1506
  %add288 = add i64 %77, %width.1, !dbg !1969
  %add289 = add i64 %add288, %mul287, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %add289, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 %add289, ptr %x_offset, align 8, !dbg !1968, !tbaa !1646
  %78 = call i64 @llvm.smax.i64(i64 %add289, i64 %bounds.sroa.0.01320), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %78, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1506
  %add296 = add nuw nsw i64 %tile.11323, 1, !dbg !1971
  %cmp297 = icmp eq i64 %add296, %mul259, !dbg !1973
  br i1 %cmp297, label %if.then302, label %lor.lhs.false, !dbg !1974

lor.lhs.false:                                    ; preds = %if.end284
  %79 = load i64, ptr %tiles_per_row, align 8, !dbg !1975, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %79, metadata !1449, metadata !DIExpression()), !dbg !1506
  %rem = urem i64 %add296, %79, !dbg !1976
  %cmp300 = icmp eq i64 %rem, 0, !dbg !1977
  br i1 %cmp300, label %if.then302, label %for.inc341, !dbg !1978

if.then302:                                       ; preds = %lor.lhs.false, %if.end284
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %x_offset, align 8, !dbg !1979, !tbaa !1646
  %80 = load ptr, ptr %tile72, align 8, !dbg !1981, !tbaa !1137
  %cmp304.not = icmp eq ptr %80, null, !dbg !1983
  br i1 %cmp304.not, label %if.end308, label %if.then306, !dbg !1984

if.then306:                                       ; preds = %if.then302
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1446, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1455, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %y, metadata !1456, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %80, metadata !1658, metadata !DIExpression()) #14, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %number_images.01347, metadata !1665, metadata !DIExpression()) #14, !dbg !1985
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1666, metadata !DIExpression()) #14, !dbg !1985
  call void @llvm.dbg.value(metadata ptr %y, metadata !1667, metadata !DIExpression()) #14, !dbg !1985
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1668, metadata !DIExpression()) #14, !dbg !1985
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1669, metadata !DIExpression()) #14, !dbg !1985
  store i64 0, ptr %sans, align 8, !dbg !1987, !tbaa !1646
  %call.i1202 = call i32 @GetGeometry(ptr noundef nonnull %80, ptr noundef nonnull %x_offset, ptr noundef nonnull %y, ptr noundef nonnull %sans, ptr noundef nonnull %sans) #14, !dbg !1988
  %81 = load i64, ptr %sans, align 8, !dbg !1989, !tbaa !1646
  %cmp.i1203 = icmp eq i64 %81, 0, !dbg !1990
  br i1 %cmp.i1203, label %if.end.i1210, label %if.end308, !dbg !1991

if.end.i1210:                                     ; preds = %if.then306
  %call2.i1207 = call double @sqrt(double noundef %conv.i1205) #14, !dbg !1992
  %conv3.i1208 = fptoui double %call2.i1207 to i64, !dbg !1993
  %cmp4.i1209 = icmp eq i64 %conv3.i1208, 0, !dbg !1994
  %spec.store.select1409 = select i1 %cmp4.i1209, i64 %conv9.i1215, i64 %conv3.i1208, !dbg !1995
  store i64 %spec.store.select1409, ptr %sans, align 8, !dbg !1985
  br label %if.end308, !dbg !1995

if.end308:                                        ; preds = %if.end.i1210, %if.then306, %if.then302
  %82 = load i64, ptr %height313, align 8
  %spec.select1355 = select i1 %cmp270.not, i64 %82, i64 %max_height.1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %spec.select1355, metadata !1441, metadata !DIExpression()), !dbg !1506
  %83 = load i64, ptr %y82, align 8, !dbg !1997, !tbaa !1713
  %add317 = add nsw i64 %83, %border_width.0, !dbg !1998
  %mul318 = shl nsw i64 %add317, 1, !dbg !1999
  %add319 = add i64 %mul318, %spec.select1355, !dbg !2000
  %conv320 = uitofp i64 %add319 to double, !dbg !2001
  %84 = load double, ptr %ascent321, align 8, !dbg !2002, !tbaa !1877
  %85 = load double, ptr %descent322, align 8, !dbg !2003, !tbaa !1880
  %sub323 = fsub double %84, %85, !dbg !2004
  %add324 = fadd double %sub323, 4.000000e+00, !dbg !2005
  %86 = call double @llvm.fmuladd.f64(double %add324, double %conv325, double %conv320), !dbg !2006
  %87 = load i32, ptr %shadow, align 8, !dbg !2007, !tbaa !1189
  %cmp327.not = icmp eq i32 %87, 0, !dbg !2008
  %cond329 = select i1 %cmp327.not, i32 0, i32 4, !dbg !2009
  %conv330 = sitofp i32 %cond329 to double, !dbg !2010
  %add331 = fadd double %86, %conv330, !dbg !2011
  %conv332 = fptosi double %add331 to i64, !dbg !2012
  %88 = load i64, ptr %y_offset, align 8, !dbg !2013, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %88, metadata !1457, metadata !DIExpression()), !dbg !1506
  %add333 = add nsw i64 %88, %conv332, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %add333, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 %add333, ptr %y_offset, align 8, !dbg !2013, !tbaa !1646
  %89 = call i64 @llvm.smax.i64(i64 %add333, i64 %bounds.sroa.8.01319), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %89, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1443, metadata !DIExpression()), !dbg !1506
  br label %for.inc341, !dbg !2015

for.inc341:                                       ; preds = %lor.lhs.false, %if.end308
  %bounds.sroa.8.2 = phi i64 [ %89, %if.end308 ], [ %bounds.sroa.8.01319, %lor.lhs.false ], !dbg !1964
  %max_height.2 = phi i64 [ 0, %if.end308 ], [ %max_height.1, %lor.lhs.false ], !dbg !2016
  call void @llvm.dbg.value(metadata i64 %add296, metadata !1453, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %width.1, metadata !1452, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %max_height.2, metadata !1443, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %78, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.8.2, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1506
  %exitcond1364.not = icmp eq i64 %add296, %mul259, !dbg !1950
  br i1 %exitcond1364.not, label %for.end343, label %for.body266, !dbg !1953, !llvm.loop !2017

for.end343:                                       ; preds = %for.inc341, %if.end258
  %bounds.sroa.8.0.lcssa = phi i64 [ 0, %if.end258 ], [ %bounds.sroa.8.2, %for.inc341 ], !dbg !1964
  %bounds.sroa.0.0.lcssa = phi i64 [ 0, %if.end258 ], [ %78, %for.inc341 ], !dbg !1964
  %90 = load i32, ptr %shadow, align 8, !dbg !2019, !tbaa !1189
  %cmp345.not = icmp eq i32 %90, 0, !dbg !2021
  %add349 = add i64 %bounds.sroa.0.0.lcssa, 4
  %spec.select1170 = select i1 %cmp345.not, i64 %bounds.sroa.0.0.lcssa, i64 %add349, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %spec.select1170, metadata !1435, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1506
  %filename351 = getelementptr inbounds %struct._Image, ptr %montage.01346, i64 0, i32 53, !dbg !2023
  %call355 = call i64 @CopyMagickString(ptr noundef nonnull %filename351, ptr noundef nonnull %filename353, i64 noundef 4096) #14, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %spec.select1170, metadata !1782, metadata !DIExpression()) #14, !dbg !2025
  call void @llvm.dbg.value(metadata i64 1, metadata !1788, metadata !DIExpression()) #14, !dbg !2025
  %91 = call i64 @llvm.smax.i64(i64 %spec.select1170, i64 1) #14, !dbg !2025
  %columns358 = getelementptr inbounds %struct._Image, ptr %montage.01346, i64 0, i32 7, !dbg !2027
  store i64 %91, ptr %columns358, align 8, !dbg !2028, !tbaa !1802
  call void @llvm.dbg.value(metadata i64 %bounds.sroa.8.0.lcssa, metadata !1782, metadata !DIExpression()) #14, !dbg !2029
  call void @llvm.dbg.value(metadata i64 1, metadata !1788, metadata !DIExpression()) #14, !dbg !2029
  %92 = call i64 @llvm.smax.i64(i64 %bounds.sroa.8.0.lcssa, i64 1) #14, !dbg !2029
  %rows361 = getelementptr inbounds %struct._Image, ptr %montage.01346, i64 0, i32 8, !dbg !2031
  store i64 %92, ptr %rows361, align 8, !dbg !2032, !tbaa !1809
  %call362 = call i32 @SetImageBackgroundColor(ptr noundef %montage.01346) #14, !dbg !2033
  %call363 = call ptr @AcquireString(ptr noundef null) #14, !dbg !2034
  %montage364 = getelementptr inbounds %struct._Image, ptr %montage.01346, i64 0, i32 20, !dbg !2035
  store ptr %call363, ptr %montage364, align 8, !dbg !2036, !tbaa !2037
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 1, metadata !1440, metadata !DIExpression()), !dbg !1506
  %93 = call i64 @llvm.smin.i64(i64 %mul259, i64 %number_images.01347) #14, !dbg !1506
  %cmp3661328 = icmp sgt i64 %93, 0, !dbg !2038
  br i1 %cmp3661328, label %while.body, label %while.end, !dbg !2039

while.body:                                       ; preds = %for.end343, %while.body
  %tile.21330 = phi i64 [ %inc374, %while.body ], [ 0, %for.end343 ]
  %extent.01329 = phi i64 [ %add373, %while.body ], [ 1, %for.end343 ]
  call void @llvm.dbg.value(metadata i64 %tile.21330, metadata !1453, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %extent.01329, metadata !1440, metadata !DIExpression()), !dbg !1506
  %arrayidx368 = getelementptr inbounds ptr, ptr %image_list.01349, i64 %tile.21330, !dbg !2040
  %94 = load ptr, ptr %arrayidx368, align 8, !dbg !2040, !tbaa !1539
  %filename369 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 53, !dbg !2042
  %call371 = call i64 @strlen(ptr noundef nonnull %filename369) #17, !dbg !2043
  %add372 = add i64 %extent.01329, 1, !dbg !2044
  %add373 = add i64 %add372, %call371, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %add373, metadata !1440, metadata !DIExpression()), !dbg !1506
  %inc374 = add nuw nsw i64 %tile.21330, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %inc374, metadata !1453, metadata !DIExpression()), !dbg !1506
  %exitcond1365.not = icmp eq i64 %inc374, %93, !dbg !2038
  br i1 %exitcond1365.not, label %while.end, label %while.body, !dbg !2039, !llvm.loop !2047

while.end:                                        ; preds = %while.body, %for.end343
  %extent.0.lcssa = phi i64 [ 1, %for.end343 ], [ %add373, %while.body ], !dbg !1964
  %call375 = call ptr @AcquireQuantumMemory(i64 noundef %extent.0.lcssa, i64 noundef 1) #18, !dbg !2049
  %directory = getelementptr inbounds %struct._Image, ptr %montage.01346, i64 0, i32 21, !dbg !2050
  store ptr %call375, ptr %directory, align 8, !dbg !2051, !tbaa !2052
  %95 = load ptr, ptr %montage364, align 8, !dbg !2053, !tbaa !2037
  %cmp377 = icmp eq ptr %95, null, !dbg !2055
  %cmp381 = icmp eq ptr %call375, null
  %or.cond1171 = select i1 %cmp377, i1 true, i1 %cmp381, !dbg !2056
  br i1 %or.cond1171, label %if.then383, label %if.end387, !dbg !2056

if.then383:                                       ; preds = %while.end
  %filename384 = getelementptr inbounds %struct._Image, ptr %image.21351, i64 0, i32 53, !dbg !2057
  %call386 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 655, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename384) #14, !dbg !2057
  br label %cleanup, !dbg !2057

if.end387:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %x_offset, align 8, !dbg !2059, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %y_offset, align 8, !dbg !2060, !tbaa !1646
  %96 = load ptr, ptr %tile72, align 8, !dbg !2061, !tbaa !1137
  %cmp389.not = icmp eq ptr %96, null, !dbg !2063
  br i1 %cmp389.not, label %if.end393, label %if.then391, !dbg !2064

if.then391:                                       ; preds = %if.end387
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1446, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1455, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !1457, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %96, metadata !1658, metadata !DIExpression()) #14, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %number_images.01347, metadata !1665, metadata !DIExpression()) #14, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1666, metadata !DIExpression()) #14, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !1667, metadata !DIExpression()) #14, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1668, metadata !DIExpression()) #14, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1669, metadata !DIExpression()) #14, !dbg !2065
  store i64 0, ptr %sans, align 8, !dbg !2067, !tbaa !1646
  %call.i1225 = call i32 @GetGeometry(ptr noundef nonnull %96, ptr noundef nonnull %x_offset, ptr noundef nonnull %y_offset, ptr noundef nonnull %sans, ptr noundef nonnull %sans) #14, !dbg !2068
  %97 = load i64, ptr %sans, align 8, !dbg !2069, !tbaa !1646
  %cmp.i1226 = icmp eq i64 %97, 0, !dbg !2070
  br i1 %cmp.i1226, label %if.end.i1233, label %if.end393, !dbg !2071

if.end.i1233:                                     ; preds = %if.then391
  %conv.i1228 = uitofp i64 %number_images.01347 to double, !dbg !2065
  %call2.i1230 = call double @sqrt(double noundef %conv.i1228) #14, !dbg !2072
  %conv3.i1231 = fptoui double %call2.i1230 to i64, !dbg !2073
  store i64 %conv3.i1231, ptr %sans, align 8, !dbg !2074, !tbaa !1646
  %cmp4.i1232 = icmp eq i64 %conv3.i1231, 0, !dbg !2075
  br i1 %cmp4.i1232, label %if.end10.i1241, label %if.end393, !dbg !2076

if.end10.i1241:                                   ; preds = %if.end.i1233
  %div.i1237 = fdiv double %conv.i1228, 0.000000e+00, !dbg !2077
  %98 = call double @llvm.ceil.f64(double %div.i1237) #14, !dbg !2078
  %conv9.i1238 = fptoui double %98 to i64, !dbg !2079
  store i64 %conv9.i1238, ptr %sans, align 8, !dbg !2065
  br label %if.end393, !dbg !2080

if.end393:                                        ; preds = %if.end10.i1241, %if.then391, %if.end.i1233, %if.end387
  %99 = load i64, ptr %y_offset, align 8, !dbg !2081, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %99, metadata !1457, metadata !DIExpression()), !dbg !1506
  %add394 = add nsw i64 %99, %title_offset.0, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %add394, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 %add394, ptr %y_offset, align 8, !dbg !2081, !tbaa !1646
  %100 = load ptr, ptr %montage364, align 8, !dbg !2082, !tbaa !2037
  %101 = load i64, ptr %extract_info, align 8, !dbg !2083, !tbaa !1565
  %102 = load i64, ptr %x80, align 8, !dbg !2084, !tbaa !1710
  %add398 = add i64 %102, %border_width.0, !dbg !2085
  %mul399 = shl i64 %add398, 1, !dbg !2086
  %add400 = add i64 %mul399, %101, !dbg !2087
  %conv401 = uitofp i64 %add400 to double, !dbg !2088
  %103 = load i64, ptr %height313, align 8, !dbg !2089, !tbaa !1567
  %104 = load i64, ptr %y82, align 8, !dbg !2090, !tbaa !1713
  %add404 = add i64 %104, %border_width.0, !dbg !2091
  %mul405 = shl i64 %add404, 1, !dbg !2092
  %add406 = add i64 %mul405, %103, !dbg !2093
  %conv407 = uitofp i64 %add406 to double, !dbg !2094
  %105 = load double, ptr %ascent321, align 8, !dbg !2095, !tbaa !1877
  %106 = load double, ptr %descent322, align 8, !dbg !2096, !tbaa !1880
  %sub410 = fsub double %105, %106, !dbg !2097
  %add411 = fadd double %sub410, 4.000000e+00, !dbg !2098
  %107 = load i32, ptr %shadow, align 8, !dbg !2099, !tbaa !1189
  %cmp415.not = icmp eq i32 %107, 0, !dbg !2100
  %cond417 = select i1 %cmp415.not, i32 0, i32 4, !dbg !2101
  %conv418 = sitofp i32 %cond417 to double, !dbg !2102
  %108 = call double @llvm.fmuladd.f64(double %add411, double %conv325, double %conv418), !dbg !2103
  %add419 = fadd double %108, %conv407, !dbg !2104
  %109 = load i64, ptr %x_offset, align 8, !dbg !2105, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %109, metadata !1455, metadata !DIExpression()), !dbg !1506
  %conv420 = sitofp i64 %109 to double, !dbg !2106
  %conv421 = sitofp i64 %add394 to double, !dbg !2107
  %call422 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %100, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %conv401, double noundef %add419, double noundef %conv420, double noundef %conv421) #14, !dbg !2108
  %110 = load ptr, ptr %directory, align 8, !dbg !2109, !tbaa !2052
  store i8 0, ptr %110, align 1, !dbg !2110, !tbaa !2111
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1506
  br i1 %cmp3661328, label %while.body428, label %while.end437, !dbg !2112

while.body428:                                    ; preds = %if.end393, %while.body428
  %tile.31334 = phi i64 [ %inc436, %while.body428 ], [ 0, %if.end393 ]
  call void @llvm.dbg.value(metadata i64 %tile.31334, metadata !1453, metadata !DIExpression()), !dbg !1506
  %111 = load ptr, ptr %directory, align 8, !dbg !2113, !tbaa !2052
  %arrayidx430 = getelementptr inbounds ptr, ptr %image_list.01349, i64 %tile.31334, !dbg !2115
  %112 = load ptr, ptr %arrayidx430, align 8, !dbg !2115, !tbaa !1539
  %filename431 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 53, !dbg !2116
  %call433 = call i64 @ConcatenateMagickString(ptr noundef %111, ptr noundef nonnull %filename431, i64 noundef %extent.0.lcssa) #14, !dbg !2117
  %113 = load ptr, ptr %directory, align 8, !dbg !2118, !tbaa !2052
  %call435 = call i64 @ConcatenateMagickString(ptr noundef %113, ptr noundef nonnull @.str.11, i64 noundef %extent.0.lcssa) #14, !dbg !2119
  %inc436 = add nuw nsw i64 %tile.31334, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %inc436, metadata !1453, metadata !DIExpression()), !dbg !1506
  %exitcond1366.not = icmp eq i64 %inc436, %93, !dbg !2121
  br i1 %exitcond1366.not, label %while.end437, label %while.body428, !dbg !2112, !llvm.loop !2122

while.end437:                                     ; preds = %while.body428, %if.end393
  %client_data438 = getelementptr inbounds %struct._Image, ptr %montage.01346, i64 0, i32 48, !dbg !2124
  %114 = load ptr, ptr %client_data438, align 8, !dbg !2124, !tbaa !1560
  %call439 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %montage.01346, ptr noundef null, ptr noundef %114) #14, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %call439, metadata !1431, metadata !DIExpression()), !dbg !1506
  br i1 %cmp440.not, label %if.end444, label %if.then442, !dbg !2126

if.then442:                                       ; preds = %while.end437
  %call443 = call i32 @TextureImage(ptr noundef nonnull %montage.01346, ptr noundef nonnull %texture.0) #14, !dbg !2127
  br label %if.end444, !dbg !2129

if.end444:                                        ; preds = %if.then442, %while.end437
  %115 = load ptr, ptr %title207, align 8, !dbg !2130, !tbaa !1146
  %cmp446.not = icmp eq ptr %115, null, !dbg !2131
  br i1 %cmp446.not, label %if.end475, label %if.then448, !dbg !2132

if.then448:                                       ; preds = %if.end444
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %geometry449) #14, !dbg !2133
  call void @llvm.dbg.declare(metadata ptr %geometry449, metadata !1475, metadata !DIExpression()), !dbg !2134
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %metrics451) #14, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %metrics451, metadata !1482, metadata !DIExpression()), !dbg !2136
  %call452 = call ptr @CloneDrawInfo(ptr noundef %image_info, ptr noundef %call176) #14, !dbg !2137
  call void @llvm.dbg.value(metadata ptr %call452, metadata !1481, metadata !DIExpression()), !dbg !2138
  %gravity453 = getelementptr inbounds %struct._DrawInfo, ptr %call452, i64 0, i32 4, !dbg !2139
  store i32 5, ptr %gravity453, align 8, !dbg !2140, !tbaa !1848
  %pointsize454 = getelementptr inbounds %struct._DrawInfo, ptr %call452, i64 0, i32 30, !dbg !2141
  %116 = load double, ptr %pointsize454, align 8, !dbg !2142, !tbaa !1837
  %mul455 = fmul double %116, 2.000000e+00, !dbg !2142
  store double %mul455, ptr %pointsize454, align 8, !dbg !2142, !tbaa !1837
  %117 = load ptr, ptr %image_list.01349, align 8, !dbg !2143, !tbaa !1539
  %call457 = call i32 @GetTypeMetrics(ptr noundef %117, ptr noundef %call452, ptr noundef nonnull %metrics451) #14, !dbg !2144
  %118 = load i64, ptr %columns358, align 8, !dbg !2145, !tbaa !1802
  %conv460 = uitofp i64 %118 to double, !dbg !2146
  %119 = load double, ptr %ascent461, align 8, !dbg !2147, !tbaa !1877
  %120 = load double, ptr %descent462, align 8, !dbg !2148, !tbaa !1880
  %sub463 = fsub double %119, %120, !dbg !2149
  %121 = load i64, ptr %y82, align 8, !dbg !2150, !tbaa !1713
  %conv465 = sitofp i64 %121 to double, !dbg !2151
  %add466 = fadd double %conv465, 4.000000e+00, !dbg !2152
  %call467 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %geometry449, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %conv460, double noundef %sub463, double noundef 0.000000e+00, double noundef %add466) #14, !dbg !2153
  %geometry468 = getelementptr inbounds %struct._DrawInfo, ptr %call452, i64 0, i32 1, !dbg !2154
  %call470 = call ptr @CloneString(ptr noundef nonnull %geometry468, ptr noundef nonnull %geometry449) #14, !dbg !2155
  %text471 = getelementptr inbounds %struct._DrawInfo, ptr %call452, i64 0, i32 21, !dbg !2156
  %call472 = call ptr @CloneString(ptr noundef nonnull %text471, ptr noundef %call208) #14, !dbg !2157
  %call473 = call i32 @AnnotateImage(ptr noundef nonnull %montage.01346, ptr noundef %call452) #14, !dbg !2158
  %call474 = call ptr @DestroyDrawInfo(ptr noundef %call452) #14, !dbg !2159
  call void @llvm.dbg.value(metadata ptr %call474, metadata !1481, metadata !DIExpression()), !dbg !2138
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %metrics451) #14, !dbg !2160
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %geometry449) #14, !dbg !2160
  br label %if.end475, !dbg !2161

if.end475:                                        ; preds = %if.then448, %if.end444
  %122 = load ptr, ptr %client_data438, align 8, !dbg !2162, !tbaa !1560
  %call477 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %montage.01346, ptr noundef %call439, ptr noundef %122) #14, !dbg !2163
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %x_offset, align 8, !dbg !2164, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %y_offset, align 8, !dbg !2165, !tbaa !1646
  %123 = load ptr, ptr %tile72, align 8, !dbg !2166, !tbaa !1137
  %cmp479.not = icmp eq ptr %123, null, !dbg !2168
  br i1 %cmp479.not, label %if.end483, label %if.then481, !dbg !2169

if.then481:                                       ; preds = %if.end475
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1446, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1455, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !1457, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %123, metadata !1658, metadata !DIExpression()) #14, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %number_images.01347, metadata !1665, metadata !DIExpression()) #14, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !1666, metadata !DIExpression()) #14, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !1667, metadata !DIExpression()) #14, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1668, metadata !DIExpression()) #14, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %sans, metadata !1669, metadata !DIExpression()) #14, !dbg !2170
  store i64 0, ptr %sans, align 8, !dbg !2172, !tbaa !1646
  %call.i1248 = call i32 @GetGeometry(ptr noundef nonnull %123, ptr noundef nonnull %x_offset, ptr noundef nonnull %y_offset, ptr noundef nonnull %sans, ptr noundef nonnull %sans) #14, !dbg !2173
  %124 = load i64, ptr %sans, align 8, !dbg !2174, !tbaa !1646
  %cmp.i1249 = icmp eq i64 %124, 0, !dbg !2175
  br i1 %cmp.i1249, label %if.end.i1256, label %if.end483, !dbg !2176

if.end.i1256:                                     ; preds = %if.then481
  %conv.i1251 = uitofp i64 %number_images.01347 to double, !dbg !2170
  %call2.i1253 = call double @sqrt(double noundef %conv.i1251) #14, !dbg !2177
  %conv3.i1254 = fptoui double %call2.i1253 to i64, !dbg !2178
  store i64 %conv3.i1254, ptr %sans, align 8, !dbg !2179, !tbaa !1646
  %cmp4.i1255 = icmp eq i64 %conv3.i1254, 0, !dbg !2180
  br i1 %cmp4.i1255, label %if.end10.i1264, label %if.end483, !dbg !2181

if.end10.i1264:                                   ; preds = %if.end.i1256
  %div.i1260 = fdiv double %conv.i1251, 0.000000e+00, !dbg !2182
  %125 = call double @llvm.ceil.f64(double %div.i1260) #14, !dbg !2183
  %conv9.i1261 = fptoui double %125 to i64, !dbg !2184
  store i64 %conv9.i1261, ptr %sans, align 8, !dbg !2170
  br label %if.end483, !dbg !2185

if.end483:                                        ; preds = %if.end10.i1264, %if.then481, %if.end.i1256, %if.end475
  %126 = load i64, ptr %x80, align 8, !dbg !2186, !tbaa !1710
  %127 = load i64, ptr %x_offset, align 8, !dbg !2187, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %127, metadata !1455, metadata !DIExpression()), !dbg !1506
  %add485 = add nsw i64 %127, %126, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %add485, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 %add485, ptr %x_offset, align 8, !dbg !2187, !tbaa !1646
  %128 = load i64, ptr %y82, align 8, !dbg !2188, !tbaa !1713
  %add487 = add nsw i64 %128, %title_offset.0, !dbg !2189
  %129 = load i64, ptr %y_offset, align 8, !dbg !2190, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %129, metadata !1457, metadata !DIExpression()), !dbg !1506
  %add488 = add nsw i64 %add487, %129, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %add488, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 %add488, ptr %y_offset, align 8, !dbg !2190, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !1443, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i32 1, metadata !1429, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %image.21351, metadata !1419, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %tiles.01344, metadata !1430, metadata !DIExpression()), !dbg !1506
  br i1 %cmp3661328, label %for.body493, label %for.end745, !dbg !2191

for.body493:                                      ; preds = %if.end483, %if.end737
  %tile.41340 = phi i64 [ %add697, %if.end737 ], [ 0, %if.end483 ]
  %max_height.31339 = phi i64 [ %max_height.5, %if.end737 ], [ 0, %if.end483 ]
  %tiles.11337 = phi i64 [ %inc742, %if.end737 ], [ %tiles.01344, %if.end483 ]
  call void @llvm.dbg.value(metadata i64 %tile.41340, metadata !1453, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %max_height.31339, metadata !1443, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %tiles.11337, metadata !1430, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i32 undef, metadata !1429, metadata !DIExpression()), !dbg !1506
  %arrayidx494 = getelementptr inbounds ptr, ptr %image_list.01349, i64 %tile.41340, !dbg !2192
  %130 = load ptr, ptr %arrayidx494, align 8, !dbg !2192, !tbaa !1539
  %call495 = call ptr @CloneImage(ptr noundef %130, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #14, !dbg !2193
  call void @llvm.dbg.value(metadata ptr %call495, metadata !1419, metadata !DIExpression()), !dbg !1506
  %client_data496 = getelementptr inbounds %struct._Image, ptr %call495, i64 0, i32 48, !dbg !2194
  %131 = load ptr, ptr %client_data496, align 8, !dbg !2194, !tbaa !1560
  %call497 = call ptr @SetImageProgressMonitor(ptr noundef %call495, ptr noundef null, ptr noundef %131) #14, !dbg !2195
  call void @llvm.dbg.value(metadata ptr %call497, metadata !1431, metadata !DIExpression()), !dbg !1506
  %columns501 = getelementptr inbounds %struct._Image, ptr %call495, i64 0, i32 7
  %spec.select1174 = select i1 %cmp270.not, ptr %extract_info, ptr %columns501, !dbg !2196
  %cond505 = load i64, ptr %spec.select1174, align 8, !dbg !2196, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %cond505, metadata !1452, metadata !DIExpression()), !dbg !1506
  %rows506 = getelementptr inbounds %struct._Image, ptr %call495, i64 0, i32 8, !dbg !2197
  %132 = load i64, ptr %rows506, align 8, !dbg !2197, !tbaa !1809
  %133 = call i64 @llvm.umax.i64(i64 %132, i64 %max_height.31339), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %133, metadata !1443, metadata !DIExpression()), !dbg !1506
  %134 = load i64, ptr %height313, align 8
  %spec.select1175 = select i1 %cmp270.not, i64 %134, i64 %133, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %spec.select1175, metadata !1441, metadata !DIExpression()), !dbg !1506
  br i1 %cmp519.not, label %if.end553, label %if.then521, !dbg !2201

if.then521:                                       ; preds = %for.body493
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %border_info) #14, !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %border_info, metadata !1489, metadata !DIExpression()), !dbg !2203
  store i64 %border_width.0, ptr %border_info, align 8, !dbg !2204, !tbaa !1565
  store i64 %border_width.0, ptr %height523, align 8, !dbg !2205, !tbaa !1567
  %135 = load ptr, ptr %frame, align 8, !dbg !2206, !tbaa !1155
  %cmp525.not = icmp eq ptr %135, null, !dbg !2208
  br i1 %cmp525.not, label %if.end538, label %if.then527, !dbg !2209

if.then527:                                       ; preds = %if.then521
  %136 = load i64, ptr %columns501, align 8, !dbg !2210, !tbaa !1802
  %sub529 = add i64 %cond505, 1, !dbg !2212
  %add530 = sub i64 %sub529, %136, !dbg !2213
  %div5311165 = lshr i64 %add530, 1, !dbg !2214
  store i64 %div5311165, ptr %border_info, align 8, !dbg !2215, !tbaa !1565
  %sub534 = sub i64 1, %132, !dbg !2216
  %add535 = add i64 %sub534, %spec.select1175, !dbg !2217
  %div5361166 = lshr i64 %add535, 1, !dbg !2218
  store i64 %div5361166, ptr %height523, align 8, !dbg !2219, !tbaa !1567
  br label %if.end538, !dbg !2220

if.end538:                                        ; preds = %if.then527, %if.then521
  %call539 = call ptr @BorderImage(ptr noundef nonnull %call495, ptr noundef nonnull %border_info, ptr noundef %exception) #14, !dbg !2221
  call void @llvm.dbg.value(metadata ptr %call539, metadata !1483, metadata !DIExpression()), !dbg !2222
  %cmp540.not = icmp eq ptr %call539, null, !dbg !2223
  br i1 %cmp540.not, label %if.end544, label %if.then542, !dbg !2225

if.then542:                                       ; preds = %if.end538
  %call543 = call ptr @DestroyImage(ptr noundef nonnull %call495) #14, !dbg !2226
  call void @llvm.dbg.value(metadata ptr %call539, metadata !1419, metadata !DIExpression()), !dbg !1506
  br label %if.end544, !dbg !2228

if.end544:                                        ; preds = %if.then542, %if.end538
  %image.4 = phi ptr [ %call539, %if.then542 ], [ %call495, %if.end538 ], !dbg !2229
  call void @llvm.dbg.value(metadata ptr %image.4, metadata !1419, metadata !DIExpression()), !dbg !1506
  %137 = load ptr, ptr %frame, align 8, !dbg !2230, !tbaa !1155
  %cmp546.not = icmp eq ptr %137, null, !dbg !2232
  br i1 %cmp546.not, label %if.end552, label %land.lhs.true, !dbg !2233

land.lhs.true:                                    ; preds = %if.end544
  %compose = getelementptr inbounds %struct._Image, ptr %image.4, i64 0, i32 36, !dbg !2234
  %138 = load i32, ptr %compose, align 8, !dbg !2234, !tbaa !2235
  %cmp548 = icmp eq i32 %138, 24, !dbg !2236
  br i1 %cmp548, label %if.then550, label %if.end552, !dbg !2237

if.then550:                                       ; preds = %land.lhs.true
  %call551 = call i32 @NegateImageChannel(ptr noundef nonnull %image.4, i32 noundef 8, i32 noundef 0) #14, !dbg !2238
  br label %if.end552, !dbg !2239

if.end552:                                        ; preds = %if.then550, %land.lhs.true, %if.end544
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %border_info) #14, !dbg !2240
  br label %if.end553, !dbg !2241

if.end553:                                        ; preds = %if.end552, %for.body493
  %image.5 = phi ptr [ %image.4, %if.end552 ], [ %call495, %for.body493 ], !dbg !2229
  call void @llvm.dbg.value(metadata ptr %image.5, metadata !1419, metadata !DIExpression()), !dbg !1506
  store i64 %cond505, ptr %columns554, align 8, !dbg !2242, !tbaa !1802
  store i64 %spec.select1175, ptr %rows555, align 8, !dbg !2243, !tbaa !1809
  %139 = load i32, ptr %gravity556, align 4, !dbg !2244, !tbaa !1203
  store i32 %139, ptr %gravity557, align 4, !dbg !2245, !tbaa !2246
  %gravity558 = getelementptr inbounds %struct._Image, ptr %image.5, i64 0, i32 35, !dbg !2247
  %140 = load i32, ptr %gravity558, align 4, !dbg !2247, !tbaa !2246
  %cmp559.not = icmp eq i32 %140, 0, !dbg !2249
  %spec.store.select = select i1 %cmp559.not, i32 %139, i32 %140, !dbg !2250
  store i32 %spec.store.select, ptr %gravity557, align 4, !dbg !2229
  %columns566 = getelementptr inbounds %struct._Image, ptr %image.5, i64 0, i32 7, !dbg !2251
  %141 = load i64, ptr %columns566, align 8, !dbg !2251, !tbaa !1802
  %conv567 = uitofp i64 %141 to double, !dbg !2252
  %rows568 = getelementptr inbounds %struct._Image, ptr %image.5, i64 0, i32 8, !dbg !2253
  %142 = load i64, ptr %rows568, align 8, !dbg !2253, !tbaa !1809
  %conv569 = uitofp i64 %142 to double, !dbg !2254
  %call570 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %tile_geometry, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %conv567, double noundef %conv569) #14, !dbg !2255
  %call572 = call i32 @ParseGravityGeometry(ptr noundef %call240, ptr noundef nonnull %tile_geometry, ptr noundef nonnull %geometry, ptr noundef %exception) #14, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %call572, metadata !1432, metadata !DIExpression()), !dbg !1506
  %143 = load i64, ptr %x573, align 8, !dbg !2257, !tbaa !1710
  %add574 = add i64 %143, %border_width.0, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %add574, metadata !1454, metadata !DIExpression()), !dbg !1506
  %144 = load i64, ptr %y575, align 8, !dbg !2259, !tbaa !1713
  %add576 = add i64 %144, %border_width.0, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %add576, metadata !1456, metadata !DIExpression()), !dbg !1506
  store i64 %add576, ptr %y, align 8, !dbg !2261, !tbaa !1646
  %145 = load ptr, ptr %frame, align 8, !dbg !2262, !tbaa !1155
  %cmp578 = icmp ne ptr %145, null, !dbg !2263
  %or.cond = select i1 %cmp578, i1 %cmp581, i1 false, !dbg !2264
  br i1 %or.cond, label %if.then583, label %if.end614, !dbg !2264

if.then583:                                       ; preds = %if.end553
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %extract_info584) #14, !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %extract_info584, metadata !1490, metadata !DIExpression()), !dbg !2266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %extract_info584, ptr noundef nonnull align 8 dereferenceable(48) %frame_info, i64 48, i1 false), !dbg !2267, !tbaa.struct !2268
  %146 = load i64, ptr %frame_info, align 8, !dbg !2269, !tbaa !1738
  %mul586 = shl i64 %146, 1, !dbg !2270
  %add587 = add i64 %mul586, %cond505, !dbg !2271
  store i64 %add587, ptr %extract_info584, align 8, !dbg !2272, !tbaa !1738
  %147 = load i64, ptr %height589, align 8, !dbg !2273, !tbaa !1743
  %mul590 = shl i64 %147, 1, !dbg !2274
  %add591 = add i64 %mul590, %spec.select1175, !dbg !2275
  store i64 %add591, ptr %height592, align 8, !dbg !2276, !tbaa !1743
  %call593 = call ptr @GetImageProperty(ptr noundef nonnull %image.5, ptr noundef nonnull @.str.9) #14, !dbg !2277
  call void @llvm.dbg.value(metadata ptr %call593, metadata !1406, metadata !DIExpression()), !dbg !1506
  %cmp594.not = icmp eq ptr %call593, null, !dbg !2278
  br i1 %cmp594.not, label %if.end607, label %if.then596, !dbg !2280

if.then596:                                       ; preds = %if.then583
  %148 = load double, ptr %ascent321, align 8, !dbg !2281, !tbaa !1877
  %149 = load double, ptr %descent322, align 8, !dbg !2282, !tbaa !1880
  %sub599 = fsub double %148, %149, !dbg !2283
  %add600 = fadd double %sub599, 4.000000e+00, !dbg !2284
  %call601 = call i64 @MultilineCensus(ptr noundef nonnull %call593) #14, !dbg !2285
  %conv602 = uitofp i64 %call601 to double, !dbg !2285
  %mul603 = fmul double %add600, %conv602, !dbg !2286
  %conv604 = fptoui double %mul603 to i64, !dbg !2287
  %150 = load i64, ptr %height592, align 8, !dbg !2288, !tbaa !1743
  %add606 = add i64 %150, %conv604, !dbg !2288
  store i64 %add606, ptr %height592, align 8, !dbg !2288, !tbaa !1743
  br label %if.end607, !dbg !2289

if.end607:                                        ; preds = %if.then596, %if.then583
  %call608 = call ptr @FrameImage(ptr noundef nonnull %image.5, ptr noundef nonnull %extract_info584, ptr noundef %exception) #14, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %call608, metadata !1493, metadata !DIExpression()), !dbg !2291
  %cmp609.not = icmp eq ptr %call608, null, !dbg !2292
  br i1 %cmp609.not, label %if.end613, label %if.then611, !dbg !2294

if.then611:                                       ; preds = %if.end607
  %call612 = call ptr @DestroyImage(ptr noundef nonnull %image.5) #14, !dbg !2295
  call void @llvm.dbg.value(metadata ptr %call608, metadata !1419, metadata !DIExpression()), !dbg !1506
  br label %if.end613, !dbg !2297

if.end613:                                        ; preds = %if.then611, %if.end607
  %image.6 = phi ptr [ %call608, %if.then611 ], [ %image.5, %if.end607 ], !dbg !2229
  call void @llvm.dbg.value(metadata ptr %image.6, metadata !1419, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1454, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 0, metadata !1456, metadata !DIExpression()), !dbg !1506
  store i64 0, ptr %y, align 8, !dbg !2298, !tbaa !1646
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %extract_info584) #14, !dbg !2299
  br label %if.end614, !dbg !2300

if.end614:                                        ; preds = %if.end613, %if.end553
  %x.0 = phi i64 [ 0, %if.end613 ], [ %add574, %if.end553 ], !dbg !2229
  %image.7 = phi ptr [ %image.6, %if.end613 ], [ %image.5, %if.end553 ], !dbg !2229
  call void @llvm.dbg.value(metadata ptr %image.7, metadata !1419, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %x.0, metadata !1454, metadata !DIExpression()), !dbg !1506
  %magick = getelementptr inbounds %struct._Image, ptr %image.7, i64 0, i32 55, !dbg !2301
  %call616 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.13) #14, !dbg !2302
  %cmp617.not = icmp eq i32 %call616, 0, !dbg !2303
  br i1 %cmp617.not, label %if.end691, label %if.then619, !dbg !2304

if.then619:                                       ; preds = %if.end614
  %151 = load i32, ptr %shadow, align 8, !dbg !2305, !tbaa !1189
  %cmp621.not = icmp eq i32 %151, 0, !dbg !2306
  br i1 %cmp621.not, label %if.end634, label %if.then623, !dbg !2307

if.then623:                                       ; preds = %if.then619
  %background_color624 = getelementptr inbounds %struct._Image, ptr %image.7, i64 0, i32 12, !dbg !2308
  %call625 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.14, ptr noundef nonnull %background_color624, ptr noundef %exception) #14, !dbg !2309
  %call626 = call ptr @ShadowImage(ptr noundef nonnull %image.7, double noundef 8.000000e+01, double noundef 2.000000e+00, i64 noundef 5, i64 noundef 5, ptr noundef %exception) #14, !dbg !2310
  call void @llvm.dbg.value(metadata ptr %call626, metadata !1494, metadata !DIExpression()), !dbg !2311
  %cmp627.not = icmp eq ptr %call626, null, !dbg !2312
  br i1 %cmp627.not, label %if.end634, label %if.then629, !dbg !2314

if.then629:                                       ; preds = %if.then623
  %exception630 = getelementptr inbounds %struct._Image, ptr %call626, i64 0, i32 58, !dbg !2315
  call void @InheritException(ptr noundef nonnull %exception630, ptr noundef %exception) #14, !dbg !2317
  %call631 = call i32 @CompositeImage(ptr noundef nonnull %call626, i32 noundef 40, ptr noundef nonnull %image.7, i64 noundef 0, i64 noundef 0) #14, !dbg !2318
  %call632 = call ptr @DestroyImage(ptr noundef nonnull %image.7) #14, !dbg !2319
  call void @llvm.dbg.value(metadata ptr %call626, metadata !1419, metadata !DIExpression()), !dbg !1506
  br label %if.end634, !dbg !2320

if.end634:                                        ; preds = %if.then623, %if.then629, %if.then619
  %image.9 = phi ptr [ %image.7, %if.then619 ], [ %call626, %if.then629 ], [ %image.7, %if.then623 ], !dbg !2229
  call void @llvm.dbg.value(metadata ptr %image.9, metadata !1419, metadata !DIExpression()), !dbg !1506
  %compose635 = getelementptr inbounds %struct._Image, ptr %image.9, i64 0, i32 36, !dbg !2321
  %152 = load i32, ptr %compose635, align 8, !dbg !2321, !tbaa !2235
  %153 = load i64, ptr %x_offset, align 8, !dbg !2322, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %153, metadata !1455, metadata !DIExpression()), !dbg !1506
  %add636 = add nsw i64 %153, %x.0, !dbg !2323
  %154 = load i64, ptr %y_offset, align 8, !dbg !2324, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %154, metadata !1457, metadata !DIExpression()), !dbg !1506
  %155 = load i64, ptr %y, align 8, !dbg !2325, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %155, metadata !1456, metadata !DIExpression()), !dbg !1506
  %add637 = add nsw i64 %155, %154, !dbg !2326
  %call638 = call i32 @CompositeImage(ptr noundef %montage.01346, i32 noundef %152, ptr noundef nonnull %image.9, i64 noundef %add636, i64 noundef %add637) #14, !dbg !2327
  %call639 = call ptr @GetImageProperty(ptr noundef nonnull %image.9, ptr noundef nonnull @.str.9) #14, !dbg !2328
  call void @llvm.dbg.value(metadata ptr %call639, metadata !1406, metadata !DIExpression()), !dbg !1506
  %cmp640.not = icmp eq ptr %call639, null, !dbg !2329
  br i1 %cmp640.not, label %if.end691, label %if.then642, !dbg !2330

if.then642:                                       ; preds = %if.end634
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %geometry643) #14, !dbg !2331
  call void @llvm.dbg.declare(metadata ptr %geometry643, metadata !1499, metadata !DIExpression()), !dbg !2332
  %156 = load ptr, ptr %frame, align 8, !dbg !2333, !tbaa !1155
  %tobool.not = icmp eq ptr %156, null, !dbg !2334
  br i1 %tobool.not, label %cond.end649, label %cond.true646, !dbg !2334

cond.true646:                                     ; preds = %if.then642
  %columns647 = getelementptr inbounds %struct._Image, ptr %image.9, i64 0, i32 7, !dbg !2335
  %157 = load i64, ptr %columns647, align 8, !dbg !2335, !tbaa !1802
  br label %cond.end649, !dbg !2334

cond.end649:                                      ; preds = %if.then642, %cond.true646
  %cond650 = phi i64 [ %157, %cond.true646 ], [ %cond505, %if.then642 ], !dbg !2334
  %sub652 = add i64 %cond650, %mul651.neg, !dbg !2336
  %conv653 = uitofp i64 %sub652 to double, !dbg !2337
  %158 = load double, ptr %ascent321, align 8, !dbg !2338, !tbaa !1877
  %159 = load double, ptr %descent322, align 8, !dbg !2339, !tbaa !1880
  %sub656 = fsub double %158, %159, !dbg !2340
  %add657 = fadd double %sub656, 4.000000e+00, !dbg !2341
  %call658 = call i64 @MultilineCensus(ptr noundef nonnull %call639) #14, !dbg !2342
  %conv659 = uitofp i64 %call658 to double, !dbg !2342
  %mul660 = fmul double %add657, %conv659, !dbg !2343
  %160 = load i64, ptr %x_offset, align 8, !dbg !2344, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %160, metadata !1455, metadata !DIExpression()), !dbg !1506
  %add661 = add i64 %160, %border_width.0, !dbg !2345
  %conv662 = uitofp i64 %add661 to double, !dbg !2346
  %161 = load ptr, ptr %frame, align 8, !dbg !2347, !tbaa !1155
  %tobool664.not = icmp eq ptr %161, null, !dbg !2348
  %162 = load i64, ptr %y_offset, align 8, !dbg !2349, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %162, metadata !1457, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %162, metadata !1457, metadata !DIExpression()), !dbg !1506
  br i1 %tobool664.not, label %cond.false669, label %cond.true665, !dbg !2348

cond.true665:                                     ; preds = %cond.end649
  %add667 = add i64 %add666, %spec.select1175, !dbg !2350
  %add668 = add i64 %add667, %162, !dbg !2351
  br label %cond.end679, !dbg !2348

cond.false669:                                    ; preds = %cond.end649
  %163 = load i64, ptr %height313, align 8, !dbg !2352, !tbaa !1567
  %164 = load i32, ptr %shadow, align 8, !dbg !2353, !tbaa !1189
  %cmp674.not = icmp eq i32 %164, 0, !dbg !2354
  %cond676 = select i1 %cmp674.not, i64 0, i64 4, !dbg !2355
  %add671 = add i64 %162, %border_width.0, !dbg !2356
  %add672 = add i64 %add671, %163, !dbg !2357
  %add678 = add i64 %add672, %cond676, !dbg !2358
  br label %cond.end679, !dbg !2348

cond.end679:                                      ; preds = %cond.false669, %cond.true665
  %cond680 = phi i64 [ %add668, %cond.true665 ], [ %add678, %cond.false669 ], !dbg !2348
  %add681 = add i64 %cond680, %bevel_width.0, !dbg !2359
  %conv682 = uitofp i64 %add681 to double, !dbg !2360
  %call683 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %geometry643, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %conv653, double noundef %mul660, double noundef %conv662, double noundef %conv682) #14, !dbg !2361
  %call686 = call ptr @CloneString(ptr noundef nonnull %geometry684, ptr noundef nonnull %geometry643) #14, !dbg !2362
  %call688 = call ptr @CloneString(ptr noundef nonnull %text, ptr noundef nonnull %call639) #14, !dbg !2363
  %call689 = call i32 @AnnotateImage(ptr noundef %montage.01346, ptr noundef %call176) #14, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %geometry643) #14, !dbg !2365
  br label %if.end691, !dbg !2366

if.end691:                                        ; preds = %if.end634, %cond.end679, %if.end614
  %image.10 = phi ptr [ %image.9, %cond.end679 ], [ %image.9, %if.end634 ], [ %image.7, %if.end614 ], !dbg !2229
  call void @llvm.dbg.value(metadata ptr %image.10, metadata !1419, metadata !DIExpression()), !dbg !1506
  %165 = load i64, ptr %x80, align 8, !dbg !2367, !tbaa !1710
  %add693 = add i64 %165, %border_width.0, !dbg !2368
  %mul694 = shl i64 %add693, 1, !dbg !2369
  %166 = load i64, ptr %x_offset, align 8, !dbg !2370, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %166, metadata !1455, metadata !DIExpression()), !dbg !1506
  %add695 = add i64 %166, %cond505, !dbg !2371
  %add696 = add i64 %add695, %mul694, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %add696, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 %add696, ptr %x_offset, align 8, !dbg !2370, !tbaa !1646
  %add697 = add nuw nsw i64 %tile.41340, 1, !dbg !2372
  %cmp698 = icmp eq i64 %add697, %mul259, !dbg !2374
  br i1 %cmp698, label %if.then705, label %lor.lhs.false700, !dbg !2375

lor.lhs.false700:                                 ; preds = %if.end691
  %167 = load i64, ptr %tiles_per_row, align 8, !dbg !2376, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %167, metadata !1449, metadata !DIExpression()), !dbg !1506
  %rem702 = urem i64 %add697, %167, !dbg !2377
  %cmp703 = icmp eq i64 %rem702, 0, !dbg !2378
  br i1 %cmp703, label %if.then705, label %if.end726, !dbg !2379

if.then705:                                       ; preds = %lor.lhs.false700, %if.end691
  call void @llvm.dbg.value(metadata i64 %165, metadata !1455, metadata !DIExpression()), !dbg !1506
  store i64 %165, ptr %x_offset, align 8, !dbg !2380, !tbaa !1646
  %168 = load i64, ptr %y82, align 8, !dbg !2382, !tbaa !1713
  %add708 = add i64 %168, %border_width.0, !dbg !2383
  %mul709 = shl i64 %add708, 1, !dbg !2384
  %add710 = add i64 %mul709, %spec.select1175, !dbg !2385
  %conv711 = uitofp i64 %add710 to double, !dbg !2386
  %169 = load double, ptr %ascent321, align 8, !dbg !2387, !tbaa !1877
  %170 = load double, ptr %descent322, align 8, !dbg !2388, !tbaa !1880
  %sub714 = fsub double %169, %170, !dbg !2389
  %add715 = fadd double %sub714, 4.000000e+00, !dbg !2390
  %171 = call double @llvm.fmuladd.f64(double %add715, double %conv325, double %conv711), !dbg !2391
  %172 = load i32, ptr %shadow, align 8, !dbg !2392, !tbaa !1189
  %cmp719.not = icmp eq i32 %172, 0, !dbg !2393
  %cond721 = select i1 %cmp719.not, i32 0, i32 4, !dbg !2394
  %conv722 = sitofp i32 %cond721 to double, !dbg !2395
  %add723 = fadd double %171, %conv722, !dbg !2396
  %conv724 = fptosi double %add723 to i64, !dbg !2397
  %173 = load i64, ptr %y_offset, align 8, !dbg !2398, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 %173, metadata !1457, metadata !DIExpression()), !dbg !1506
  %add725 = add nsw i64 %173, %conv724, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %add725, metadata !1457, metadata !DIExpression()), !dbg !1506
  store i64 %add725, ptr %y_offset, align 8, !dbg !2398, !tbaa !1646
  call void @llvm.dbg.value(metadata i64 0, metadata !1443, metadata !DIExpression()), !dbg !1506
  br label %if.end726, !dbg !2399

if.end726:                                        ; preds = %if.then705, %lor.lhs.false700
  %max_height.5 = phi i64 [ 0, %if.then705 ], [ %133, %lor.lhs.false700 ], !dbg !2229
  call void @llvm.dbg.value(metadata i64 %max_height.5, metadata !1443, metadata !DIExpression()), !dbg !1506
  %174 = load ptr, ptr %progress_monitor727, align 8, !dbg !2400, !tbaa !1591
  %cmp728.not = icmp eq ptr %174, null, !dbg !2401
  br i1 %cmp728.not, label %if.end737, label %if.then730, !dbg !2402

if.then730:                                       ; preds = %if.end726
  call void @llvm.dbg.value(metadata ptr %image.10, metadata !1575, metadata !DIExpression()) #14, !dbg !2403
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !1581, metadata !DIExpression()) #14, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %tiles.11337, metadata !1582, metadata !DIExpression()) #14, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1583, metadata !DIExpression()) #14, !dbg !2403
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i1271) #14, !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %message.i1271, metadata !1584, metadata !DIExpression()) #14, !dbg !2406
  %progress_monitor.i1272 = getelementptr inbounds %struct._Image, ptr %image.10, i64 0, i32 47, !dbg !2407
  %175 = load ptr, ptr %progress_monitor.i1272, align 8, !dbg !2407, !tbaa !1591
  %cmp.i1273 = icmp eq ptr %175, null, !dbg !2408
  br i1 %cmp.i1273, label %SetImageProgress.exit1280.thread, label %SetImageProgress.exit1280, !dbg !2409

SetImageProgress.exit1280.thread:                 ; preds = %if.then730
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i1271) #14, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %call4.i1277, metadata !1502, metadata !DIExpression()), !dbg !2411
  br label %if.end737, !dbg !2412

SetImageProgress.exit1280:                        ; preds = %if.then730
  %filename.i1274 = getelementptr inbounds %struct._Image, ptr %image.10, i64 0, i32 53, !dbg !2413
  %call.i1275 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i1271, i64 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef nonnull %filename.i1274) #14, !dbg !2414
  %176 = load ptr, ptr %progress_monitor.i1272, align 8, !dbg !2415, !tbaa !1591
  %client_data.i1276 = getelementptr inbounds %struct._Image, ptr %image.10, i64 0, i32 48, !dbg !2416
  %177 = load ptr, ptr %client_data.i1276, align 8, !dbg !2416, !tbaa !1560
  %call4.i1277 = call i32 %176(ptr noundef nonnull %message.i1271, i64 noundef %tiles.11337, i64 noundef %call1, ptr noundef %177) #14, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i1271) #14, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %call4.i1277, metadata !1502, metadata !DIExpression()), !dbg !2411
  br label %if.end737, !dbg !2412

if.end737:                                        ; preds = %SetImageProgress.exit1280, %SetImageProgress.exit1280.thread, %if.end726
  call void @llvm.dbg.value(metadata i32 undef, metadata !1429, metadata !DIExpression()), !dbg !1506
  %178 = load ptr, ptr %arrayidx494, align 8, !dbg !2418, !tbaa !1539
  %call739 = call ptr @DestroyImage(ptr noundef %178) #14, !dbg !2419
  store ptr %call739, ptr %arrayidx494, align 8, !dbg !2420, !tbaa !1539
  %call741 = call ptr @DestroyImage(ptr noundef nonnull %image.10) #14, !dbg !2421
  call void @llvm.dbg.value(metadata ptr %call741, metadata !1419, metadata !DIExpression()), !dbg !1506
  %inc742 = add nsw i64 %tiles.11337, 1, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %add697, metadata !1453, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %max_height.5, metadata !1443, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %inc742, metadata !1430, metadata !DIExpression()), !dbg !1506
  %exitcond1367.not = icmp eq i64 %add697, %93, !dbg !2423
  br i1 %exitcond1367.not, label %for.end745, label %for.body493, !dbg !2191, !llvm.loop !2424

for.end745:                                       ; preds = %if.end737, %if.end483
  %tiles.1.lcssa = phi i64 [ %tiles.01344, %if.end483 ], [ %inc742, %if.end737 ], !dbg !1506
  %image.3.lcssa = phi ptr [ %image.21351, %if.end483 ], [ %call741, %if.end737 ], !dbg !1506
  %add746 = add nuw nsw i64 %i.51345, 1, !dbg !2426
  %cmp747 = icmp slt i64 %add746, %add, !dbg !2428
  br i1 %cmp747, label %if.then749, label %for.inc761, !dbg !2429

if.then749:                                       ; preds = %for.end745
  call void @AcquireNextImage(ptr noundef %call173, ptr noundef %montage.01346) #14, !dbg !2430
  %call750 = call ptr @GetNextImageInList(ptr noundef %montage.01346) #14, !dbg !2432
  %cmp751 = icmp eq ptr %call750, null, !dbg !2434
  br i1 %cmp751, label %if.then753, label %if.end755, !dbg !2435

if.then753:                                       ; preds = %if.then749
  %call754 = call ptr @DestroyImageList(ptr noundef %montage.01346) #14, !dbg !2436
  call void @llvm.dbg.value(metadata ptr %call754, metadata !1422, metadata !DIExpression()), !dbg !1506
  br label %cleanup, !dbg !2438

if.end755:                                        ; preds = %if.then749
  %call756 = call ptr @GetNextImageInList(ptr noundef %montage.01346) #14, !dbg !2439
  call void @llvm.dbg.value(metadata ptr %call756, metadata !1422, metadata !DIExpression()), !dbg !1506
  %background_color757 = getelementptr inbounds %struct._Image, ptr %call756, i64 0, i32 12, !dbg !2440
  %179 = load i64, ptr %background_color174, align 4, !dbg !2441
  store i64 %179, ptr %background_color757, align 8, !dbg !2441
  %add.ptr = getelementptr inbounds ptr, ptr %image_list.01349, i64 %mul259, !dbg !2442
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1420, metadata !DIExpression()), !dbg !1506
  %sub759 = sub i64 %number_images.01347, %mul259, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %sub759, metadata !1444, metadata !DIExpression()), !dbg !1506
  br label %for.inc761, !dbg !2444

for.inc761:                                       ; preds = %for.end745, %if.end755
  %montage.1 = phi ptr [ %call756, %if.end755 ], [ %montage.01346, %for.end745 ], !dbg !1506
  %number_images.1 = phi i64 [ %sub759, %if.end755 ], [ %number_images.01347, %for.end745 ], !dbg !1506
  %image_list.1 = phi ptr [ %add.ptr, %if.end755 ], [ %image_list.01349, %for.end745 ], !dbg !1506
  call void @llvm.dbg.value(metadata ptr %image.3.lcssa, metadata !1419, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %image_list.1, metadata !1420, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %number_images.1, metadata !1444, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %montage.1, metadata !1422, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %add746, metadata !1434, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %tiles.1.lcssa, metadata !1430, metadata !DIExpression()), !dbg !1506
  %exitcond1368.not = icmp eq i64 %add746, %smax, !dbg !1922
  br i1 %exitcond1368.not, label %for.end763, label %for.body251, !dbg !1923, !llvm.loop !2445

for.end763:                                       ; preds = %for.inc761, %for.end239
  %montage.0.lcssa = phi ptr [ %call241, %for.end239 ], [ %montage.1, %for.inc761 ], !dbg !1506
  %call764 = call ptr @DestroyImage(ptr noundef %call240) #14, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %call764, metadata !1424, metadata !DIExpression()), !dbg !1506
  %cmp765.not = icmp eq ptr %texture.0, null, !dbg !2448
  br i1 %cmp765.not, label %if.end769, label %if.then767, !dbg !2450

if.then767:                                       ; preds = %for.end763
  %call768 = call ptr @DestroyImage(ptr noundef nonnull %texture.0) #14, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %call768, metadata !1423, metadata !DIExpression()), !dbg !1506
  br label %if.end769, !dbg !2452

if.end769:                                        ; preds = %if.then767, %for.end763
  %call770 = call ptr @DestroyString(ptr noundef %call208) #14, !dbg !2453
  call void @llvm.dbg.value(metadata ptr %call770, metadata !1405, metadata !DIExpression()), !dbg !1506
  %call771 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #14, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %call771, metadata !1421, metadata !DIExpression()), !dbg !1506
  %call772 = call ptr @DestroyDrawInfo(ptr noundef %call176) #14, !dbg !2455
  call void @llvm.dbg.value(metadata ptr %call772, metadata !1407, metadata !DIExpression()), !dbg !1506
  %call773 = call ptr @DestroyImageInfo(ptr noundef %call173) #14, !dbg !2456
  call void @llvm.dbg.value(metadata ptr %call773, metadata !1426, metadata !DIExpression()), !dbg !1506
  %call774 = call ptr @GetFirstImageInList(ptr noundef %montage.0.lcssa) #14, !dbg !2457
  br label %cleanup, !dbg !2458

cleanup:                                          ; preds = %if.end769, %if.then753, %if.then383, %for.end51
  %retval.0 = phi ptr [ null, %for.end51 ], [ null, %if.then383 ], [ null, %if.then753 ], [ %call774, %if.end769 ], !dbg !1506
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %metrics) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y_offset) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x_offset) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tiles_per_row) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tiles_per_column) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sans) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %extract_info) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %frame_info) #14, !dbg !2459
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tile_geometry) #14, !dbg !2459
  ret ptr %retval.0, !dbg !2459
}

declare !dbg !2460 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !2463 i64 @GetImageListLength(ptr noundef) local_unnamed_addr #4

declare !dbg !2467 ptr @ImageListToArray(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2470 ptr @NewImageList() local_unnamed_addr #4

declare !dbg !2473 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2477 i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2481 ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2485 i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2488 ptr @ThumbnailImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2492 ptr @DestroyImage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !2495 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @SceneCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #9 !dbg !2503 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !2505, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %y, metadata !2506, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %x, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %y, metadata !2508, metadata !DIExpression()), !dbg !2509
  %0 = load ptr, ptr %x, align 8, !dbg !2510, !tbaa !1539
  %scene = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39, !dbg !2511
  %1 = load i64, ptr %scene, align 8, !dbg !2511, !tbaa !1630
  %2 = load ptr, ptr %y, align 8, !dbg !2512, !tbaa !1539
  %scene1 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 39, !dbg !2513
  %3 = load i64, ptr %scene1, align 8, !dbg !2513, !tbaa !1630
  %sub = sub i64 %1, %3, !dbg !2514
  %conv = trunc i64 %sub to i32, !dbg !2515
  ret i32 %conv, !dbg !2516
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

declare !dbg !2517 void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2520 i32 @GetGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2523 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !2529 i32 @ParseMetaGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2530 ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !2533 ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2538 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2542 i32 @GetTypeMetrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2547 ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2551 ptr @InterpretImageProperties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2555 i64 @MultilineCensus(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

declare !dbg !2559 ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2562 ptr @AcquireImage(ptr noundef) local_unnamed_addr #4

declare !dbg !2565 i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: allocsize(0,1)
declare !dbg !2568 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #12

declare !dbg !2571 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2572 i32 @TextureImage(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2575 i32 @AnnotateImage(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2578 ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !2581 ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2586 i32 @NegateImageChannel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2591 i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2592 ptr @FrameImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2597 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2600 i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2603 ptr @ShadowImage(ptr noundef, double noundef, double noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2608 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2613 i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2617 void @AcquireNextImage(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2620 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #4

declare !dbg !2623 ptr @DestroyImageList(ptr noundef) local_unnamed_addr #4

declare !dbg !2624 ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!953, !954, !955, !956, !957, !958}
!llvm.ident = !{!959}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !575, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/montage.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "b9148d574a3629fb522aaa9c75fce8c8")
!2 = !{!3, !9, !24, !49, !61, !71, !77, !82, !119, !133, !166, !188, !193, !201, !236, !307, !315, !321, !394, !411, !423, !444, !469, !475, !481, !486, !492, !498, !505, !513, !526, !532, !538, !542, !547}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 77, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!13 = !DIEnumerator(name: "ForgetGravity", value: 0)
!14 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!15 = !DIEnumerator(name: "NorthGravity", value: 2)
!16 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!17 = !DIEnumerator(name: "WestGravity", value: 4)
!18 = !DIEnumerator(name: "CenterGravity", value: 5)
!19 = !DIEnumerator(name: "EastGravity", value: 6)
!20 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!21 = !DIEnumerator(name: "SouthGravity", value: 8)
!22 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!23 = !DIEnumerator(name: "StaticGravity", value: 10)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 25, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!27 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!28 = !DIEnumerator(name: "NoCompression", value: 1)
!29 = !DIEnumerator(name: "BZipCompression", value: 2)
!30 = !DIEnumerator(name: "DXT1Compression", value: 3)
!31 = !DIEnumerator(name: "DXT3Compression", value: 4)
!32 = !DIEnumerator(name: "DXT5Compression", value: 5)
!33 = !DIEnumerator(name: "FaxCompression", value: 6)
!34 = !DIEnumerator(name: "Group4Compression", value: 7)
!35 = !DIEnumerator(name: "JPEGCompression", value: 8)
!36 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!37 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!38 = !DIEnumerator(name: "LZWCompression", value: 11)
!39 = !DIEnumerator(name: "RLECompression", value: 12)
!40 = !DIEnumerator(name: "ZipCompression", value: 13)
!41 = !DIEnumerator(name: "ZipSCompression", value: 14)
!42 = !DIEnumerator(name: "PizCompression", value: 15)
!43 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!44 = !DIEnumerator(name: "B44Compression", value: 17)
!45 = !DIEnumerator(name: "B44ACompression", value: 18)
!46 = !DIEnumerator(name: "LZMACompression", value: 19)
!47 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!48 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 75, baseType: !5, size: 32, elements: !51)
!50 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60}
!52 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!53 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!54 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!55 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!56 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!57 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!58 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!59 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!60 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 63, baseType: !5, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70}
!63 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!64 = !DIEnumerator(name: "NoInterlace", value: 1)
!65 = !DIEnumerator(name: "LineInterlace", value: 2)
!66 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!67 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!68 = !DIEnumerator(name: "GIFInterlace", value: 5)
!69 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!70 = !DIEnumerator(name: "PNGInterlace", value: 7)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 30, baseType: !5, size: 32, elements: !73)
!72 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!75 = !DIEnumerator(name: "LSBEndian", value: 1)
!76 = !DIEnumerator(name: "MSBEndian", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 88, baseType: !5, size: 32, elements: !78)
!78 = !{!79, !80, !81}
!79 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!80 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!81 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 25, baseType: !5, size: 32, elements: !84)
!83 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!85 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!86 = !DIEnumerator(name: "RGBColorspace", value: 1)
!87 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!88 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!89 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!90 = !DIEnumerator(name: "LabColorspace", value: 5)
!91 = !DIEnumerator(name: "XYZColorspace", value: 6)
!92 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!93 = !DIEnumerator(name: "YCCColorspace", value: 8)
!94 = !DIEnumerator(name: "YIQColorspace", value: 9)
!95 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!96 = !DIEnumerator(name: "YUVColorspace", value: 11)
!97 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!98 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!99 = !DIEnumerator(name: "HSBColorspace", value: 14)
!100 = !DIEnumerator(name: "HSLColorspace", value: 15)
!101 = !DIEnumerator(name: "HWBColorspace", value: 16)
!102 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!103 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!104 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!105 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!106 = !DIEnumerator(name: "LogColorspace", value: 21)
!107 = !DIEnumerator(name: "CMYColorspace", value: 22)
!108 = !DIEnumerator(name: "LuvColorspace", value: 23)
!109 = !DIEnumerator(name: "HCLColorspace", value: 24)
!110 = !DIEnumerator(name: "LCHColorspace", value: 25)
!111 = !DIEnumerator(name: "LMSColorspace", value: 26)
!112 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!113 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!114 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!115 = !DIEnumerator(name: "HSIColorspace", value: 30)
!116 = !DIEnumerator(name: "HSVColorspace", value: 31)
!117 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!118 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 47, baseType: !5, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!121 = !DIEnumerator(name: "UndefinedType", value: 0)
!122 = !DIEnumerator(name: "BilevelType", value: 1)
!123 = !DIEnumerator(name: "GrayscaleType", value: 2)
!124 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!125 = !DIEnumerator(name: "PaletteType", value: 4)
!126 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!127 = !DIEnumerator(name: "TrueColorType", value: 6)
!128 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!129 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!130 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!131 = !DIEnumerator(name: "OptimizeType", value: 10)
!132 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !134, line: 27, baseType: !5, size: 32, elements: !135)
!134 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!136 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!137 = !DIEnumerator(name: "RotatePreview", value: 1)
!138 = !DIEnumerator(name: "ShearPreview", value: 2)
!139 = !DIEnumerator(name: "RollPreview", value: 3)
!140 = !DIEnumerator(name: "HuePreview", value: 4)
!141 = !DIEnumerator(name: "SaturationPreview", value: 5)
!142 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!143 = !DIEnumerator(name: "GammaPreview", value: 7)
!144 = !DIEnumerator(name: "SpiffPreview", value: 8)
!145 = !DIEnumerator(name: "DullPreview", value: 9)
!146 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!147 = !DIEnumerator(name: "QuantizePreview", value: 11)
!148 = !DIEnumerator(name: "DespecklePreview", value: 12)
!149 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!150 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!151 = !DIEnumerator(name: "SharpenPreview", value: 15)
!152 = !DIEnumerator(name: "BlurPreview", value: 16)
!153 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!154 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!155 = !DIEnumerator(name: "SpreadPreview", value: 19)
!156 = !DIEnumerator(name: "SolarizePreview", value: 20)
!157 = !DIEnumerator(name: "ShadePreview", value: 21)
!158 = !DIEnumerator(name: "RaisePreview", value: 22)
!159 = !DIEnumerator(name: "SegmentPreview", value: 23)
!160 = !DIEnumerator(name: "SwirlPreview", value: 24)
!161 = !DIEnumerator(name: "ImplodePreview", value: 25)
!162 = !DIEnumerator(name: "WavePreview", value: 26)
!163 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!164 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!165 = !DIEnumerator(name: "JPEGPreview", value: 29)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!168 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!169 = !DIEnumerator(name: "RedChannel", value: 1)
!170 = !DIEnumerator(name: "GrayChannel", value: 1)
!171 = !DIEnumerator(name: "CyanChannel", value: 1)
!172 = !DIEnumerator(name: "GreenChannel", value: 2)
!173 = !DIEnumerator(name: "MagentaChannel", value: 2)
!174 = !DIEnumerator(name: "BlueChannel", value: 4)
!175 = !DIEnumerator(name: "YellowChannel", value: 4)
!176 = !DIEnumerator(name: "AlphaChannel", value: 8)
!177 = !DIEnumerator(name: "OpacityChannel", value: 8)
!178 = !DIEnumerator(name: "MatteChannel", value: 8)
!179 = !DIEnumerator(name: "BlackChannel", value: 32)
!180 = !DIEnumerator(name: "IndexChannel", value: 32)
!181 = !DIEnumerator(name: "CompositeChannels", value: 47)
!182 = !DIEnumerator(name: "AllChannels", value: 134217727)
!183 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!184 = !DIEnumerator(name: "RGBChannels", value: 128)
!185 = !DIEnumerator(name: "GrayChannels", value: 128)
!186 = !DIEnumerator(name: "SyncChannels", value: 256)
!187 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, baseType: !5, size: 32, elements: !189)
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "UndefinedClass", value: 0)
!191 = !DIEnumerator(name: "DirectClass", value: 1)
!192 = !DIEnumerator(name: "PseudoClass", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 42, baseType: !5, size: 32, elements: !195)
!194 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!197 = !DIEnumerator(name: "SaturationIntent", value: 1)
!198 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!199 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!200 = !DIEnumerator(name: "RelativeIntent", value: 4)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !202, line: 32, baseType: !5, size: 32, elements: !203)
!202 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!204 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!205 = !DIEnumerator(name: "PointFilter", value: 1)
!206 = !DIEnumerator(name: "BoxFilter", value: 2)
!207 = !DIEnumerator(name: "TriangleFilter", value: 3)
!208 = !DIEnumerator(name: "HermiteFilter", value: 4)
!209 = !DIEnumerator(name: "HanningFilter", value: 5)
!210 = !DIEnumerator(name: "HammingFilter", value: 6)
!211 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!212 = !DIEnumerator(name: "GaussianFilter", value: 8)
!213 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!214 = !DIEnumerator(name: "CubicFilter", value: 10)
!215 = !DIEnumerator(name: "CatromFilter", value: 11)
!216 = !DIEnumerator(name: "MitchellFilter", value: 12)
!217 = !DIEnumerator(name: "JincFilter", value: 13)
!218 = !DIEnumerator(name: "SincFilter", value: 14)
!219 = !DIEnumerator(name: "SincFastFilter", value: 15)
!220 = !DIEnumerator(name: "KaiserFilter", value: 16)
!221 = !DIEnumerator(name: "WelshFilter", value: 17)
!222 = !DIEnumerator(name: "ParzenFilter", value: 18)
!223 = !DIEnumerator(name: "BohmanFilter", value: 19)
!224 = !DIEnumerator(name: "BartlettFilter", value: 20)
!225 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!226 = !DIEnumerator(name: "LanczosFilter", value: 22)
!227 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!228 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!229 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!230 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!231 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!232 = !DIEnumerator(name: "CosineFilter", value: 28)
!233 = !DIEnumerator(name: "SplineFilter", value: 29)
!234 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!235 = !DIEnumerator(name: "SentinelFilter", value: 31)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 25, baseType: !5, size: 32, elements: !238)
!237 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!239 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!240 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!241 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!242 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!243 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!244 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!245 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!246 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!247 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!248 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!249 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!250 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!251 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!252 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!253 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!254 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!255 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!256 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!257 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!258 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!259 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!260 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!261 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!262 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!263 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!264 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!265 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!266 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!267 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!268 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!269 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!270 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!271 = !DIEnumerator(name: "InCompositeOp", value: 32)
!272 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!273 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!274 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!275 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!276 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!277 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!278 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!279 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!280 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!281 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!282 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!283 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!284 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!285 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!286 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!287 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!288 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!289 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!290 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!291 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!292 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!293 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!294 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!295 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!296 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!297 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!298 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!299 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!300 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!301 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!302 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!303 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!304 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!305 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!306 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!307 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !308, line: 25, baseType: !5, size: 32, elements: !309)
!308 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!309 = !{!310, !311, !312, !313, !314}
!310 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!311 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!312 = !DIEnumerator(name: "NoneDispose", value: 1)
!313 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!314 = !DIEnumerator(name: "PreviousDispose", value: 3)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !316, line: 25, baseType: !5, size: 32, elements: !317)
!316 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!317 = !{!318, !319, !320}
!318 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!319 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!320 = !DIEnumerator(name: "RunningTimerState", value: 2)
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 28, baseType: !5, size: 32, elements: !323)
!322 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!324 = !DIEnumerator(name: "UndefinedException", value: 0)
!325 = !DIEnumerator(name: "WarningException", value: 300)
!326 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!327 = !DIEnumerator(name: "TypeWarning", value: 305)
!328 = !DIEnumerator(name: "OptionWarning", value: 310)
!329 = !DIEnumerator(name: "DelegateWarning", value: 315)
!330 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!331 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!332 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!333 = !DIEnumerator(name: "BlobWarning", value: 335)
!334 = !DIEnumerator(name: "StreamWarning", value: 340)
!335 = !DIEnumerator(name: "CacheWarning", value: 345)
!336 = !DIEnumerator(name: "CoderWarning", value: 350)
!337 = !DIEnumerator(name: "FilterWarning", value: 352)
!338 = !DIEnumerator(name: "ModuleWarning", value: 355)
!339 = !DIEnumerator(name: "DrawWarning", value: 360)
!340 = !DIEnumerator(name: "ImageWarning", value: 365)
!341 = !DIEnumerator(name: "WandWarning", value: 370)
!342 = !DIEnumerator(name: "RandomWarning", value: 375)
!343 = !DIEnumerator(name: "XServerWarning", value: 380)
!344 = !DIEnumerator(name: "MonitorWarning", value: 385)
!345 = !DIEnumerator(name: "RegistryWarning", value: 390)
!346 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!347 = !DIEnumerator(name: "PolicyWarning", value: 399)
!348 = !DIEnumerator(name: "ErrorException", value: 400)
!349 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!350 = !DIEnumerator(name: "TypeError", value: 405)
!351 = !DIEnumerator(name: "OptionError", value: 410)
!352 = !DIEnumerator(name: "DelegateError", value: 415)
!353 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!354 = !DIEnumerator(name: "CorruptImageError", value: 425)
!355 = !DIEnumerator(name: "FileOpenError", value: 430)
!356 = !DIEnumerator(name: "BlobError", value: 435)
!357 = !DIEnumerator(name: "StreamError", value: 440)
!358 = !DIEnumerator(name: "CacheError", value: 445)
!359 = !DIEnumerator(name: "CoderError", value: 450)
!360 = !DIEnumerator(name: "FilterError", value: 452)
!361 = !DIEnumerator(name: "ModuleError", value: 455)
!362 = !DIEnumerator(name: "DrawError", value: 460)
!363 = !DIEnumerator(name: "ImageError", value: 465)
!364 = !DIEnumerator(name: "WandError", value: 470)
!365 = !DIEnumerator(name: "RandomError", value: 475)
!366 = !DIEnumerator(name: "XServerError", value: 480)
!367 = !DIEnumerator(name: "MonitorError", value: 485)
!368 = !DIEnumerator(name: "RegistryError", value: 490)
!369 = !DIEnumerator(name: "ConfigureError", value: 495)
!370 = !DIEnumerator(name: "PolicyError", value: 499)
!371 = !DIEnumerator(name: "FatalErrorException", value: 700)
!372 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!373 = !DIEnumerator(name: "TypeFatalError", value: 705)
!374 = !DIEnumerator(name: "OptionFatalError", value: 710)
!375 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!376 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!377 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!378 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!379 = !DIEnumerator(name: "BlobFatalError", value: 735)
!380 = !DIEnumerator(name: "StreamFatalError", value: 740)
!381 = !DIEnumerator(name: "CacheFatalError", value: 745)
!382 = !DIEnumerator(name: "CoderFatalError", value: 750)
!383 = !DIEnumerator(name: "FilterFatalError", value: 752)
!384 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!385 = !DIEnumerator(name: "DrawFatalError", value: 760)
!386 = !DIEnumerator(name: "ImageFatalError", value: 765)
!387 = !DIEnumerator(name: "WandFatalError", value: 770)
!388 = !DIEnumerator(name: "RandomFatalError", value: 775)
!389 = !DIEnumerator(name: "XServerFatalError", value: 780)
!390 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!391 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!392 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!393 = !DIEnumerator(name: "PolicyFatalError", value: 799)
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
!444 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !445, line: 34, baseType: !5, size: 32, elements: !446)
!445 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!447 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!448 = !DIEnumerator(name: "NoEvents", value: 0)
!449 = !DIEnumerator(name: "TraceEvent", value: 1)
!450 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!451 = !DIEnumerator(name: "BlobEvent", value: 4)
!452 = !DIEnumerator(name: "CacheEvent", value: 8)
!453 = !DIEnumerator(name: "CoderEvent", value: 16)
!454 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!455 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!456 = !DIEnumerator(name: "DrawEvent", value: 128)
!457 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!458 = !DIEnumerator(name: "ImageEvent", value: 512)
!459 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!460 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!461 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!462 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!463 = !DIEnumerator(name: "TransformEvent", value: 16384)
!464 = !DIEnumerator(name: "UserEvent", value: 36864)
!465 = !DIEnumerator(name: "WandEvent", value: 65536)
!466 = !DIEnumerator(name: "X11Event", value: 131072)
!467 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!468 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!469 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 70, baseType: !5, size: 32, elements: !471)
!470 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!471 = !{!472, !473, !474}
!472 = !DIEnumerator(name: "UndefinedGradient", value: 0)
!473 = !DIEnumerator(name: "LinearGradient", value: 1)
!474 = !DIEnumerator(name: "RadialGradient", value: 2)
!475 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 129, baseType: !5, size: 32, elements: !476)
!476 = !{!477, !478, !479, !480}
!477 = !DIEnumerator(name: "UndefinedSpread", value: 0)
!478 = !DIEnumerator(name: "PadSpread", value: 1)
!479 = !DIEnumerator(name: "ReflectSpread", value: 2)
!480 = !DIEnumerator(name: "RepeatSpread", value: 3)
!481 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 62, baseType: !5, size: 32, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIEnumerator(name: "UndefinedRule", value: 0)
!484 = !DIEnumerator(name: "EvenOddRule", value: 1)
!485 = !DIEnumerator(name: "NonZeroRule", value: 2)
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 77, baseType: !5, size: 32, elements: !487)
!487 = !{!488, !489, !490, !491}
!488 = !DIEnumerator(name: "UndefinedCap", value: 0)
!489 = !DIEnumerator(name: "ButtCap", value: 1)
!490 = !DIEnumerator(name: "RoundCap", value: 2)
!491 = !DIEnumerator(name: "SquareCap", value: 3)
!492 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 85, baseType: !5, size: 32, elements: !493)
!493 = !{!494, !495, !496, !497}
!494 = !DIEnumerator(name: "UndefinedJoin", value: 0)
!495 = !DIEnumerator(name: "MiterJoin", value: 1)
!496 = !DIEnumerator(name: "RoundJoin", value: 2)
!497 = !DIEnumerator(name: "BevelJoin", value: 3)
!498 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 46, baseType: !5, size: 32, elements: !499)
!499 = !{!500, !501, !502, !503, !504}
!500 = !DIEnumerator(name: "UndefinedDecoration", value: 0)
!501 = !DIEnumerator(name: "NoDecoration", value: 1)
!502 = !DIEnumerator(name: "UnderlineDecoration", value: 2)
!503 = !DIEnumerator(name: "OverlineDecoration", value: 3)
!504 = !DIEnumerator(name: "LineThroughDecoration", value: 4)
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !506, line: 40, baseType: !5, size: 32, elements: !507)
!506 = !DIFile(filename: "apps/538.imagick_r/src/magick/type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e03df4f5f7c27edd01aa629b64253bee")
!507 = !{!508, !509, !510, !511, !512}
!508 = !DIEnumerator(name: "UndefinedStyle", value: 0)
!509 = !DIEnumerator(name: "NormalStyle", value: 1)
!510 = !DIEnumerator(name: "ItalicStyle", value: 2)
!511 = !DIEnumerator(name: "ObliqueStyle", value: 3)
!512 = !DIEnumerator(name: "AnyStyle", value: 4)
!513 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !506, line: 25, baseType: !5, size: 32, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!515 = !DIEnumerator(name: "UndefinedStretch", value: 0)
!516 = !DIEnumerator(name: "NormalStretch", value: 1)
!517 = !DIEnumerator(name: "UltraCondensedStretch", value: 2)
!518 = !DIEnumerator(name: "ExtraCondensedStretch", value: 3)
!519 = !DIEnumerator(name: "CondensedStretch", value: 4)
!520 = !DIEnumerator(name: "SemiCondensedStretch", value: 5)
!521 = !DIEnumerator(name: "SemiExpandedStretch", value: 6)
!522 = !DIEnumerator(name: "ExpandedStretch", value: 7)
!523 = !DIEnumerator(name: "ExtraExpandedStretch", value: 8)
!524 = !DIEnumerator(name: "UltraExpandedStretch", value: 9)
!525 = !DIEnumerator(name: "AnyStretch", value: 10)
!526 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 30, baseType: !5, size: 32, elements: !527)
!527 = !{!528, !529, !530, !531}
!528 = !DIEnumerator(name: "UndefinedAlign", value: 0)
!529 = !DIEnumerator(name: "LeftAlign", value: 1)
!530 = !DIEnumerator(name: "CenterAlign", value: 2)
!531 = !DIEnumerator(name: "RightAlign", value: 3)
!532 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 38, baseType: !5, size: 32, elements: !533)
!533 = !{!534, !535, !536, !537}
!534 = !DIEnumerator(name: "UndefinedPathUnits", value: 0)
!535 = !DIEnumerator(name: "UserSpace", value: 1)
!536 = !DIEnumerator(name: "UserSpaceOnUse", value: 2)
!537 = !DIEnumerator(name: "ObjectBoundingBox", value: 3)
!538 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 123, baseType: !5, size: 32, elements: !539)
!539 = !{!540, !541}
!540 = !DIEnumerator(name: "UndefinedReference", value: 0)
!541 = !DIEnumerator(name: "GradientReference", value: 1)
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 55, baseType: !5, size: 32, elements: !543)
!543 = !{!544, !545, !546}
!544 = !DIEnumerator(name: "UndefinedDirection", value: 0)
!545 = !DIEnumerator(name: "RightToLeftDirection", value: 1)
!546 = !DIEnumerator(name: "LeftToRightDirection", value: 2)
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 25, baseType: !5, size: 32, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!549 = !DIEnumerator(name: "NoValue", value: 0)
!550 = !DIEnumerator(name: "XValue", value: 1)
!551 = !DIEnumerator(name: "XiValue", value: 1)
!552 = !DIEnumerator(name: "YValue", value: 2)
!553 = !DIEnumerator(name: "PsiValue", value: 2)
!554 = !DIEnumerator(name: "WidthValue", value: 4)
!555 = !DIEnumerator(name: "RhoValue", value: 4)
!556 = !DIEnumerator(name: "HeightValue", value: 8)
!557 = !DIEnumerator(name: "SigmaValue", value: 8)
!558 = !DIEnumerator(name: "ChiValue", value: 16)
!559 = !DIEnumerator(name: "XiNegative", value: 32)
!560 = !DIEnumerator(name: "XNegative", value: 32)
!561 = !DIEnumerator(name: "PsiNegative", value: 64)
!562 = !DIEnumerator(name: "YNegative", value: 64)
!563 = !DIEnumerator(name: "ChiNegative", value: 128)
!564 = !DIEnumerator(name: "PercentValue", value: 4096)
!565 = !DIEnumerator(name: "AspectValue", value: 8192)
!566 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!567 = !DIEnumerator(name: "LessValue", value: 16384)
!568 = !DIEnumerator(name: "GreaterValue", value: 32768)
!569 = !DIEnumerator(name: "MinimumValue", value: 65536)
!570 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!571 = !DIEnumerator(name: "AreaValue", value: 131072)
!572 = !DIEnumerator(name: "DecimalValue", value: 262144)
!573 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!574 = !DIEnumerator(name: "AllValues", value: 2147483647)
!575 = !{!576, !619, !594, !620, !582, !602, !621, !622, !670, !733, !741, !592, !590, !822, !738}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "MontageInfo", file: !578, line: 70, baseType: !579)
!578 = !DIFile(filename: "apps/538.imagick_r/src/magick/montage.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8b3bd6166a2c89122d4b47913872e309")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MontageInfo", file: !578, line: 33, size: 33792, elements: !580)
!580 = !{!581, !584, !585, !586, !587, !588, !589, !591, !595, !597, !607, !608, !609, !610, !611, !613, !617, !618}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !579, file: !578, line: 36, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !579, file: !578, line: 37, baseType: !582, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !579, file: !578, line: 38, baseType: !582, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !579, file: !578, line: 39, baseType: !582, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !579, file: !578, line: 40, baseType: !582, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !579, file: !578, line: 41, baseType: !582, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !579, file: !578, line: 44, baseType: !590, size: 64, offset: 384)
!590 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "border_width", scope: !579, file: !578, line: 47, baseType: !592, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !593, line: 46, baseType: !594)
!593 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!594 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !579, file: !578, line: 50, baseType: !596, size: 32, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !579, file: !578, line: 53, baseType: !598, size: 64, offset: 544)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !395, line: 148, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !395, line: 131, size: 64, elements: !600)
!600 = !{!601, !604, !605, !606}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !599, file: !395, line: 143, baseType: !602, size: 16)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !603)
!603 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !599, file: !395, line: 144, baseType: !602, size: 16, offset: 16)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !599, file: !395, line: 145, baseType: !602, size: 16, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !599, file: !395, line: 146, baseType: !602, size: 16, offset: 48)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "stroke", scope: !579, file: !578, line: 54, baseType: !598, size: 64, offset: 608)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !579, file: !578, line: 55, baseType: !598, size: 64, offset: 672)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !579, file: !578, line: 56, baseType: !598, size: 64, offset: 736)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !579, file: !578, line: 57, baseType: !598, size: 64, offset: 800)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !579, file: !578, line: 60, baseType: !612, size: 32, offset: 864)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !10, line: 91, baseType: !9)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !579, file: !578, line: 63, baseType: !614, size: 32768, offset: 896)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 32768, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 4096)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !579, file: !578, line: 66, baseType: !596, size: 32, offset: 33664)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !579, file: !578, line: 69, baseType: !592, size: 64, offset: 33728)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!620 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !50, line: 150, size: 105920, elements: !625)
!625 = !{!626, !628, !630, !632, !633, !635, !636, !637, !638, !639, !640, !641, !643, !644, !645, !646, !647, !661, !663, !664, !666, !667, !668, !669, !675, !676, !677, !685, !686, !687, !688, !689, !690, !692, !694, !696, !697, !699, !701, !703, !704, !705, !706, !707, !708, !709, !717, !732, !746, !747, !748, !749, !753, !757, !758, !759, !760, !761, !762, !779, !780, !782, !783, !793, !794, !796, !797, !798, !799, !800, !801, !803, !804, !805, !806, !807, !808, !809, !811, !812, !813, !814, !815, !819, !821}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !624, file: !50, line: 153, baseType: !627, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !188)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !624, file: !50, line: 156, baseType: !629, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !83, line: 61, baseType: !82)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !624, file: !50, line: 159, baseType: !631, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !25, line: 49, baseType: !24)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !624, file: !50, line: 162, baseType: !592, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !624, file: !50, line: 165, baseType: !634, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !50, line: 86, baseType: !49)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !624, file: !50, line: 168, baseType: !596, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !624, file: !50, line: 169, baseType: !596, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !624, file: !50, line: 172, baseType: !592, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !624, file: !50, line: 173, baseType: !592, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !624, file: !50, line: 174, baseType: !592, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !624, file: !50, line: 175, baseType: !592, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !624, file: !50, line: 178, baseType: !642, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !624, file: !50, line: 179, baseType: !598, size: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !624, file: !50, line: 180, baseType: !598, size: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !624, file: !50, line: 181, baseType: !598, size: 64, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !624, file: !50, line: 184, baseType: !590, size: 64, offset: 832)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !624, file: !50, line: 187, baseType: !648, size: 768, offset: 896)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !50, line: 128, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !50, line: 121, size: 768, elements: !650)
!650 = !{!651, !658, !659, !660}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !649, file: !50, line: 124, baseType: !652, size: 192)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !50, line: 101, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !50, line: 95, size: 192, elements: !654)
!654 = !{!655, !656, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !653, file: !50, line: 98, baseType: !590, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !653, file: !50, line: 99, baseType: !590, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !653, file: !50, line: 100, baseType: !590, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !649, file: !50, line: 125, baseType: !652, size: 192, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !649, file: !50, line: 126, baseType: !652, size: 192, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !649, file: !50, line: 127, baseType: !652, size: 192, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !624, file: !50, line: 190, baseType: !662, size: 32, offset: 1664)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !194, line: 49, baseType: !193)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !624, file: !50, line: 193, baseType: !619, size: 64, offset: 1728)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !624, file: !50, line: 196, baseType: !665, size: 32, offset: 1792)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !50, line: 93, baseType: !77)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !624, file: !50, line: 199, baseType: !582, size: 64, offset: 1856)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !624, file: !50, line: 200, baseType: !582, size: 64, offset: 1920)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !624, file: !50, line: 201, baseType: !582, size: 64, offset: 1984)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !624, file: !50, line: 204, baseType: !670, size: 64, offset: 2048)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !671, line: 77, baseType: !672)
!671 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !673, line: 193, baseType: !674)
!673 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!674 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !624, file: !50, line: 207, baseType: !590, size: 64, offset: 2112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !624, file: !50, line: 208, baseType: !590, size: 64, offset: 2176)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !624, file: !50, line: 211, baseType: !678, size: 256, offset: 2240)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !10, line: 130, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !10, line: 121, size: 256, elements: !680)
!680 = !{!681, !682, !683, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !679, file: !10, line: 124, baseType: !592, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !679, file: !10, line: 125, baseType: !592, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !679, file: !10, line: 128, baseType: !670, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !679, file: !10, line: 129, baseType: !670, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !624, file: !50, line: 212, baseType: !678, size: 256, offset: 2496)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !624, file: !50, line: 213, baseType: !678, size: 256, offset: 2752)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !624, file: !50, line: 216, baseType: !590, size: 64, offset: 3008)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !624, file: !50, line: 217, baseType: !590, size: 64, offset: 3072)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !624, file: !50, line: 218, baseType: !590, size: 64, offset: 3136)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !624, file: !50, line: 221, baseType: !691, size: 32, offset: 3200)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !202, line: 66, baseType: !201)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !624, file: !50, line: 224, baseType: !693, size: 32, offset: 3232)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !50, line: 73, baseType: !61)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !624, file: !50, line: 227, baseType: !695, size: 32, offset: 3264)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !72, line: 35, baseType: !71)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !624, file: !50, line: 230, baseType: !612, size: 32, offset: 3296)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !624, file: !50, line: 233, baseType: !698, size: 32, offset: 3328)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !237, line: 99, baseType: !236)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !624, file: !50, line: 236, baseType: !700, size: 32, offset: 3360)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !308, line: 32, baseType: !307)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !624, file: !50, line: 239, baseType: !702, size: 64, offset: 3392)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !624, file: !50, line: 242, baseType: !592, size: 64, offset: 3456)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !624, file: !50, line: 243, baseType: !592, size: 64, offset: 3520)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !624, file: !50, line: 246, baseType: !670, size: 64, offset: 3584)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !624, file: !50, line: 249, baseType: !592, size: 64, offset: 3648)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !624, file: !50, line: 250, baseType: !592, size: 64, offset: 3712)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !624, file: !50, line: 253, baseType: !670, size: 64, offset: 3776)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !624, file: !50, line: 256, baseType: !710, size: 192, offset: 3840)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !711, line: 68, baseType: !712)
!711 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !711, line: 62, size: 192, elements: !713)
!713 = !{!714, !715, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !712, file: !711, line: 65, baseType: !590, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !712, file: !711, line: 66, baseType: !590, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !712, file: !711, line: 67, baseType: !590, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !624, file: !50, line: 259, baseType: !718, size: 512, offset: 4032)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !316, line: 51, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !316, line: 40, size: 512, elements: !720)
!720 = !{!721, !728, !729, !731}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !719, file: !316, line: 43, baseType: !722, size: 192)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !316, line: 38, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !316, line: 32, size: 192, elements: !724)
!724 = !{!725, !726, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !723, file: !316, line: 35, baseType: !590, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !723, file: !316, line: 36, baseType: !590, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !723, file: !316, line: 37, baseType: !590, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !719, file: !316, line: 44, baseType: !722, size: 192, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !719, file: !316, line: 47, baseType: !730, size: 32, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !316, line: 30, baseType: !315)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !719, file: !316, line: 50, baseType: !592, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !624, file: !50, line: 262, baseType: !733, size: 64, offset: 4544)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !734, line: 26, baseType: !735)
!734 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!596, !738, !740, !743, !619}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !742)
!742 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !745)
!745 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !624, file: !50, line: 265, baseType: !619, size: 64, offset: 4608)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !624, file: !50, line: 266, baseType: !619, size: 64, offset: 4672)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !624, file: !50, line: 267, baseType: !619, size: 64, offset: 4736)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !624, file: !50, line: 270, baseType: !750, size: 64, offset: 4800)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !25, line: 52, baseType: !752)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !25, line: 51, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !624, file: !50, line: 273, baseType: !754, size: 64, offset: 4864)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !624, file: !50, line: 276, baseType: !614, size: 32768, offset: 4928)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !624, file: !50, line: 277, baseType: !614, size: 32768, offset: 37696)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !624, file: !50, line: 278, baseType: !614, size: 32768, offset: 70464)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !624, file: !50, line: 281, baseType: !592, size: 64, offset: 103232)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !624, file: !50, line: 282, baseType: !592, size: 64, offset: 103296)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !624, file: !50, line: 285, baseType: !763, size: 448, offset: 103360)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !322, line: 102, size: 448, elements: !765)
!765 = !{!766, !768, !769, !770, !771, !772, !773, !778}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !764, file: !322, line: 105, baseType: !767, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !322, line: 100, baseType: !321)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !764, file: !322, line: 108, baseType: !620, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !764, file: !322, line: 111, baseType: !582, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !764, file: !322, line: 112, baseType: !582, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !764, file: !322, line: 115, baseType: !619, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !764, file: !322, line: 118, baseType: !596, size: 32, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !764, file: !322, line: 121, baseType: !774, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !776, line: 26, baseType: !777)
!776 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !776, line: 25, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !764, file: !322, line: 124, baseType: !592, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !624, file: !50, line: 288, baseType: !596, size: 32, offset: 103808)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !624, file: !50, line: 291, baseType: !781, size: 64, offset: 103872)
!781 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !670)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !624, file: !50, line: 294, baseType: !774, size: 64, offset: 103936)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !624, file: !50, line: 297, baseType: !784, size: 256, offset: 104000)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !194, line: 40, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !194, line: 27, size: 256, elements: !786)
!786 = !{!787, !788, !789, !792}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !194, line: 30, baseType: !582, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !785, file: !194, line: 33, baseType: !592, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !785, file: !194, line: 36, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !785, file: !194, line: 39, baseType: !592, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !624, file: !50, line: 298, baseType: !784, size: 256, offset: 104256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !624, file: !50, line: 299, baseType: !795, size: 64, offset: 104512)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !624, file: !50, line: 302, baseType: !592, size: 64, offset: 104576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !624, file: !50, line: 305, baseType: !592, size: 64, offset: 104640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !624, file: !50, line: 308, baseType: !702, size: 64, offset: 104704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !624, file: !50, line: 309, baseType: !702, size: 64, offset: 104768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !50, line: 310, baseType: !702, size: 64, offset: 104832)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !624, file: !50, line: 313, baseType: !802, size: 32, offset: 104896)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !395, line: 47, baseType: !394)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !624, file: !50, line: 316, baseType: !596, size: 32, offset: 104928)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !624, file: !50, line: 319, baseType: !598, size: 64, offset: 104960)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !624, file: !50, line: 322, baseType: !702, size: 64, offset: 105024)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !624, file: !50, line: 325, baseType: !678, size: 256, offset: 105088)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !624, file: !50, line: 328, baseType: !619, size: 64, offset: 105344)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !624, file: !50, line: 329, baseType: !619, size: 64, offset: 105408)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !624, file: !50, line: 332, baseType: !810, size: 32, offset: 105472)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !50, line: 61, baseType: !119)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !624, file: !50, line: 335, baseType: !596, size: 32, offset: 105504)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !624, file: !50, line: 338, baseType: !744, size: 64, offset: 105536)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !624, file: !50, line: 341, baseType: !596, size: 32, offset: 105600)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !624, file: !50, line: 344, baseType: !592, size: 64, offset: 105664)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !624, file: !50, line: 347, baseType: !816, size: 64, offset: 105728)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !817, line: 7, baseType: !818)
!817 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !673, line: 160, baseType: !674)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !624, file: !50, line: 350, baseType: !820, size: 32, offset: 105792)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !395, line: 79, baseType: !411)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !624, file: !50, line: 353, baseType: !592, size: 64, offset: 105856)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "DrawInfo", file: !470, line: 333, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DrawInfo", file: !470, line: 205, size: 5760, elements: !825)
!825 = !{!826, !827, !828, !829, !839, !840, !841, !842, !843, !892, !893, !894, !895, !896, !897, !899, !901, !903, !904, !905, !907, !908, !909, !910, !911, !912, !913, !915, !917, !918, !919, !920, !921, !923, !924, !925, !926, !928, !929, !930, !932, !933, !934, !946, !947, !948, !949, !950, !951}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !824, file: !470, line: 208, baseType: !582, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !824, file: !470, line: 209, baseType: !582, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "viewbox", scope: !824, file: !470, line: 212, baseType: !678, size: 256, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "affine", scope: !824, file: !470, line: 215, baseType: !830, size: 384, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "AffineMatrix", file: !10, line: 102, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_AffineMatrix", file: !10, line: 93, size: 384, elements: !832)
!832 = !{!833, !834, !835, !836, !837, !838}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !831, file: !10, line: 96, baseType: !590, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !831, file: !10, line: 97, baseType: !590, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !831, file: !10, line: 98, baseType: !590, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !831, file: !10, line: 99, baseType: !590, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !831, file: !10, line: 100, baseType: !590, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !831, file: !10, line: 101, baseType: !590, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !824, file: !470, line: 218, baseType: !612, size: 32, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !824, file: !470, line: 221, baseType: !598, size: 64, offset: 800)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "stroke", scope: !824, file: !470, line: 222, baseType: !598, size: 64, offset: 864)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_width", scope: !824, file: !470, line: 225, baseType: !590, size: 64, offset: 960)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gradient", scope: !824, file: !470, line: 228, baseType: !844, size: 1024, offset: 1024)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "GradientInfo", file: !470, line: 184, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GradientInfo", file: !470, line: 153, size: 1024, elements: !846)
!846 = !{!847, !849, !850, !858, !880, !881, !883, !884, !885, !891}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !470, line: 156, baseType: !848, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "GradientType", file: !470, line: 75, baseType: !469)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bounding_box", scope: !845, file: !470, line: 159, baseType: !678, size: 256, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "gradient_vector", scope: !845, file: !470, line: 162, baseType: !851, size: 256, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "SegmentInfo", file: !50, line: 110, baseType: !852)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SegmentInfo", file: !50, line: 103, size: 256, elements: !853)
!853 = !{!854, !855, !856, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !852, file: !50, line: 106, baseType: !590, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !852, file: !50, line: 107, baseType: !590, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !852, file: !50, line: 108, baseType: !590, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !852, file: !50, line: 109, baseType: !590, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stops", scope: !845, file: !470, line: 165, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "StopInfo", file: !470, line: 151, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StopInfo", file: !470, line: 144, size: 512, elements: !862)
!862 = !{!863, !879}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !861, file: !470, line: 147, baseType: !864, size: 448)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !395, line: 127, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !395, line: 104, size: 448, elements: !866)
!866 = !{!867, !868, !869, !870, !871, !872, !875, !876, !877, !878}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !865, file: !395, line: 107, baseType: !627, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !865, file: !395, line: 110, baseType: !629, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !865, file: !395, line: 113, baseType: !596, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !865, file: !395, line: 116, baseType: !590, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !865, file: !395, line: 119, baseType: !592, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !865, file: !395, line: 122, baseType: !873, size: 32, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !874)
!874 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !865, file: !395, line: 123, baseType: !873, size: 32, offset: 288)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !865, file: !395, line: 124, baseType: !873, size: 32, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !865, file: !395, line: 125, baseType: !873, size: 32, offset: 352)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !865, file: !395, line: 126, baseType: !873, size: 32, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !861, file: !470, line: 150, baseType: !873, size: 32, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "number_stops", scope: !845, file: !470, line: 168, baseType: !592, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "spread", scope: !845, file: !470, line: 171, baseType: !882, size: 32, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "SpreadMethod", file: !470, line: 135, baseType: !475)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !845, file: !470, line: 174, baseType: !596, size: 32, offset: 736)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !845, file: !470, line: 177, baseType: !592, size: 64, offset: 768)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !845, file: !470, line: 180, baseType: !886, size: 128, offset: 832)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !470, line: 142, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !470, line: 137, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !887, file: !470, line: 140, baseType: !590, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !887, file: !470, line: 141, baseType: !590, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "radius", scope: !845, file: !470, line: 183, baseType: !873, size: 32, offset: 960)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "fill_pattern", scope: !824, file: !470, line: 231, baseType: !622, size: 64, offset: 2048)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !824, file: !470, line: 232, baseType: !622, size: 64, offset: 2112)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_pattern", scope: !824, file: !470, line: 233, baseType: !622, size: 64, offset: 2176)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "stroke_antialias", scope: !824, file: !470, line: 236, baseType: !596, size: 32, offset: 2240)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "text_antialias", scope: !824, file: !470, line: 237, baseType: !596, size: 32, offset: 2272)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "fill_rule", scope: !824, file: !470, line: 240, baseType: !898, size: 32, offset: 2304)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FillRule", file: !470, line: 68, baseType: !481)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "linecap", scope: !824, file: !470, line: 243, baseType: !900, size: 32, offset: 2336)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineCap", file: !470, line: 83, baseType: !486)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "linejoin", scope: !824, file: !470, line: 246, baseType: !902, size: 32, offset: 2368)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "LineJoin", file: !470, line: 91, baseType: !492)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "miterlimit", scope: !824, file: !470, line: 249, baseType: !592, size: 64, offset: 2432)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dash_offset", scope: !824, file: !470, line: 252, baseType: !590, size: 64, offset: 2496)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "decorate", scope: !824, file: !470, line: 255, baseType: !906, size: 32, offset: 2560)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecorationType", file: !470, line: 53, baseType: !498)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !824, file: !470, line: 258, baseType: !698, size: 32, offset: 2592)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !824, file: !470, line: 261, baseType: !582, size: 64, offset: 2624)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !824, file: !470, line: 264, baseType: !592, size: 64, offset: 2688)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !824, file: !470, line: 267, baseType: !582, size: 64, offset: 2752)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !824, file: !470, line: 268, baseType: !582, size: 64, offset: 2816)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !824, file: !470, line: 269, baseType: !582, size: 64, offset: 2880)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !824, file: !470, line: 272, baseType: !914, size: 32, offset: 2944)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "StyleType", file: !506, line: 47, baseType: !505)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "stretch", scope: !824, file: !470, line: 275, baseType: !916, size: 32, offset: 2976)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "StretchType", file: !506, line: 38, baseType: !513)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !824, file: !470, line: 278, baseType: !592, size: 64, offset: 3008)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !824, file: !470, line: 281, baseType: !582, size: 64, offset: 3072)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !824, file: !470, line: 284, baseType: !590, size: 64, offset: 3136)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !824, file: !470, line: 287, baseType: !582, size: 64, offset: 3200)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !824, file: !470, line: 290, baseType: !922, size: 32, offset: 3264)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignType", file: !470, line: 36, baseType: !526)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "undercolor", scope: !824, file: !470, line: 293, baseType: !598, size: 64, offset: 3296)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !824, file: !470, line: 294, baseType: !598, size: 64, offset: 3360)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !824, file: !470, line: 297, baseType: !582, size: 64, offset: 3456)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dash_pattern", scope: !824, file: !470, line: 300, baseType: !927, size: 64, offset: 3520)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !824, file: !470, line: 303, baseType: !582, size: 64, offset: 3584)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !824, file: !470, line: 306, baseType: !851, size: 256, offset: 3648)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "clip_units", scope: !824, file: !470, line: 309, baseType: !931, size: 32, offset: 3904)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClipPathUnits", file: !470, line: 44, baseType: !532)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !824, file: !470, line: 312, baseType: !602, size: 16, offset: 3936)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !824, file: !470, line: 315, baseType: !596, size: 32, offset: 3968)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "element_reference", scope: !824, file: !470, line: 318, baseType: !935, size: 1344, offset: 4032)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElementReference", file: !470, line: 203, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ElementReference", file: !470, line: 186, size: 1344, elements: !937)
!937 = !{!938, !939, !941, !942, !943, !945}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !936, file: !470, line: 189, baseType: !582, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !936, file: !470, line: 192, baseType: !940, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReferenceType", file: !470, line: 127, baseType: !538)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gradient", scope: !936, file: !470, line: 195, baseType: !844, size: 1024, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !936, file: !470, line: 198, baseType: !592, size: 64, offset: 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !936, file: !470, line: 201, baseType: !944, size: 64, offset: 1216)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !470, line: 202, baseType: !944, size: 64, offset: 1280)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !824, file: !470, line: 321, baseType: !596, size: 32, offset: 5376)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !824, file: !470, line: 324, baseType: !592, size: 64, offset: 5440)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "kerning", scope: !824, file: !470, line: 327, baseType: !590, size: 64, offset: 5504)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "interword_spacing", scope: !824, file: !470, line: 328, baseType: !590, size: 64, offset: 5568)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "interline_spacing", scope: !824, file: !470, line: 329, baseType: !590, size: 64, offset: 5632)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !824, file: !470, line: 332, baseType: !952, size: 32, offset: 5696)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectionType", file: !470, line: 60, baseType: !542)
!953 = !{i32 7, !"Dwarf Version", i32 5}
!954 = !{i32 2, !"Debug Info Version", i32 3}
!955 = !{i32 1, !"wchar_size", i32 4}
!956 = !{i32 7, !"PIC Level", i32 2}
!957 = !{i32 7, !"PIE Level", i32 2}
!958 = !{i32 7, !"uwtable", i32 2}
!959 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!960 = distinct !DISubprogram(name: "CloneMontageInfo", scope: !961, file: !961, line: 101, type: !962, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1099)
!961 = !DIFile(filename: "apps/538.imagick_r/src/magick/montage.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b9148d574a3629fb522aaa9c75fce8c8")
!962 = !DISubroutineType(types: !963)
!963 = !{!576, !964, !1097}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !4, line: 223, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !50, line: 356, size: 134336, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1003, !1004, !1005, !1006, !1007, !1008, !1010, !1011, !1012, !1013, !1014, !1015, !1026, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1094, !1095, !1096}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !967, file: !50, line: 359, baseType: !631, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !967, file: !50, line: 362, baseType: !634, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !967, file: !50, line: 365, baseType: !596, size: 32, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !967, file: !50, line: 366, baseType: !596, size: 32, offset: 96)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !967, file: !50, line: 367, baseType: !596, size: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !967, file: !50, line: 368, baseType: !596, size: 32, offset: 160)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !967, file: !50, line: 371, baseType: !582, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !967, file: !50, line: 372, baseType: !582, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !967, file: !50, line: 373, baseType: !582, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !967, file: !50, line: 374, baseType: !582, size: 64, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !967, file: !50, line: 377, baseType: !592, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !967, file: !50, line: 378, baseType: !592, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !967, file: !50, line: 379, baseType: !592, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !967, file: !50, line: 382, baseType: !693, size: 32, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !967, file: !50, line: 385, baseType: !695, size: 32, offset: 672)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !967, file: !50, line: 388, baseType: !665, size: 32, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !967, file: !50, line: 391, baseType: !592, size: 64, offset: 768)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !967, file: !50, line: 394, baseType: !582, size: 64, offset: 832)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !967, file: !50, line: 395, baseType: !582, size: 64, offset: 896)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !967, file: !50, line: 396, baseType: !582, size: 64, offset: 960)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !967, file: !50, line: 397, baseType: !582, size: 64, offset: 1024)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !967, file: !50, line: 398, baseType: !582, size: 64, offset: 1088)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !967, file: !50, line: 401, baseType: !590, size: 64, offset: 1152)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !967, file: !50, line: 402, baseType: !590, size: 64, offset: 1216)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !967, file: !50, line: 405, baseType: !598, size: 64, offset: 1280)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !967, file: !50, line: 406, baseType: !598, size: 64, offset: 1344)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !967, file: !50, line: 407, baseType: !598, size: 64, offset: 1408)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !967, file: !50, line: 410, baseType: !596, size: 32, offset: 1472)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !967, file: !50, line: 411, baseType: !596, size: 32, offset: 1504)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !967, file: !50, line: 414, baseType: !592, size: 64, offset: 1536)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !967, file: !50, line: 417, baseType: !629, size: 32, offset: 1600)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !967, file: !50, line: 420, baseType: !810, size: 32, offset: 1632)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !967, file: !50, line: 423, baseType: !1002, size: 32, offset: 1664)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !134, line: 59, baseType: !133)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !967, file: !50, line: 426, baseType: !670, size: 64, offset: 1728)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !967, file: !50, line: 429, baseType: !596, size: 32, offset: 1792)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !967, file: !50, line: 430, baseType: !596, size: 32, offset: 1824)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !967, file: !50, line: 433, baseType: !582, size: 64, offset: 1856)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !967, file: !50, line: 434, baseType: !582, size: 64, offset: 1920)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !967, file: !50, line: 437, baseType: !1009, size: 32, offset: 1984)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !166)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !967, file: !50, line: 440, baseType: !622, size: 64, offset: 2048)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !967, file: !50, line: 443, baseType: !619, size: 64, offset: 2112)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !967, file: !50, line: 446, baseType: !733, size: 64, offset: 2176)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !967, file: !50, line: 449, baseType: !619, size: 64, offset: 2240)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !967, file: !50, line: 450, baseType: !619, size: 64, offset: 2304)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !967, file: !50, line: 453, baseType: !1016, size: 64, offset: 2368)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !1017, line: 26, baseType: !1018)
!1017 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!592, !1021, !1023, !1025}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !967, file: !50, line: 456, baseType: !1027, size: 64, offset: 2432)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1029, line: 7, baseType: !1030)
!1029 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1031, line: 49, size: 1728, elements: !1032)
!1031 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1048, !1050, !1051, !1052, !1054, !1055, !1057, !1061, !1064, !1066, !1069, !1072, !1073, !1074, !1075, !1076}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1030, file: !1031, line: 51, baseType: !620, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1030, file: !1031, line: 54, baseType: !582, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1030, file: !1031, line: 55, baseType: !582, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1030, file: !1031, line: 56, baseType: !582, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1030, file: !1031, line: 57, baseType: !582, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1030, file: !1031, line: 58, baseType: !582, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1030, file: !1031, line: 59, baseType: !582, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1030, file: !1031, line: 60, baseType: !582, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1030, file: !1031, line: 61, baseType: !582, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1030, file: !1031, line: 64, baseType: !582, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1030, file: !1031, line: 65, baseType: !582, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1030, file: !1031, line: 66, baseType: !582, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1030, file: !1031, line: 68, baseType: !1046, size: 64, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1031, line: 36, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1030, file: !1031, line: 70, baseType: !1049, size: 64, offset: 832)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1030, file: !1031, line: 72, baseType: !620, size: 32, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1030, file: !1031, line: 73, baseType: !620, size: 32, offset: 928)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1030, file: !1031, line: 74, baseType: !1053, size: 64, offset: 960)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !673, line: 152, baseType: !674)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1030, file: !1031, line: 77, baseType: !603, size: 16, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1030, file: !1031, line: 78, baseType: !1056, size: 8, offset: 1040)
!1056 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1030, file: !1031, line: 79, baseType: !1058, size: 8, offset: 1048)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 8, elements: !1059)
!1059 = !{!1060}
!1060 = !DISubrange(count: 1)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1030, file: !1031, line: 81, baseType: !1062, size: 64, offset: 1088)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1031, line: 43, baseType: null)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1030, file: !1031, line: 89, baseType: !1065, size: 64, offset: 1152)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !673, line: 153, baseType: !674)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1030, file: !1031, line: 91, baseType: !1067, size: 64, offset: 1216)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1031, line: 37, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1030, file: !1031, line: 92, baseType: !1070, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1031, line: 38, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1030, file: !1031, line: 93, baseType: !1049, size: 64, offset: 1344)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1030, file: !1031, line: 94, baseType: !619, size: 64, offset: 1408)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1030, file: !1031, line: 95, baseType: !592, size: 64, offset: 1472)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1030, file: !1031, line: 96, baseType: !620, size: 32, offset: 1536)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1030, file: !1031, line: 98, baseType: !1077, size: 160, offset: 1568)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 160, elements: !1078)
!1078 = !{!1079}
!1079 = !DISubrange(count: 20)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !967, file: !50, line: 459, baseType: !619, size: 64, offset: 2496)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !967, file: !50, line: 462, baseType: !592, size: 64, offset: 2560)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !967, file: !50, line: 465, baseType: !614, size: 32768, offset: 2624)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !967, file: !50, line: 466, baseType: !614, size: 32768, offset: 35392)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !967, file: !50, line: 467, baseType: !614, size: 32768, offset: 68160)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !967, file: !50, line: 468, baseType: !614, size: 32768, offset: 100928)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !967, file: !50, line: 471, baseType: !596, size: 32, offset: 133696)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !967, file: !50, line: 474, baseType: !582, size: 64, offset: 133760)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !967, file: !50, line: 477, baseType: !592, size: 64, offset: 133824)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !967, file: !50, line: 478, baseType: !592, size: 64, offset: 133888)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !967, file: !50, line: 481, baseType: !598, size: 64, offset: 133952)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !967, file: !50, line: 484, baseType: !592, size: 64, offset: 134016)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !967, file: !50, line: 487, baseType: !1093, size: 32, offset: 134080)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !424, line: 47, baseType: !423)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !967, file: !50, line: 490, baseType: !598, size: 64, offset: 134112)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !967, file: !50, line: 493, baseType: !619, size: 64, offset: 134208)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !967, file: !50, line: 496, baseType: !596, size: 32, offset: 134272)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!1099 = !{!1100, !1101, !1102, !1103, !1106}
!1100 = !DILocalVariable(name: "image_info", arg: 1, scope: !960, file: !961, line: 101, type: !964)
!1101 = !DILocalVariable(name: "montage_info", arg: 2, scope: !960, file: !961, line: 102, type: !1097)
!1102 = !DILocalVariable(name: "clone_info", scope: !960, file: !961, line: 105, type: !576)
!1103 = !DILocalVariable(name: "message", scope: !1104, file: !961, line: 109, type: !582)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !961, line: 109, column: 5)
!1105 = distinct !DILexicalBlock(scope: !960, file: !961, line: 108, column: 7)
!1106 = !DILocalVariable(name: "exception", scope: !1104, file: !961, line: 109, type: !763)
!1107 = !DILocation(line: 0, scope: !960)
!1108 = !DILocation(line: 107, column: 30, scope: !960)
!1109 = !DILocation(line: 108, column: 18, scope: !1105)
!1110 = !DILocation(line: 108, column: 7, scope: !960)
!1111 = !DILocation(line: 109, column: 5, scope: !1104)
!1112 = !{!1113, !1113, i64 0}
!1113 = !{!"int", !1114, i64 0}
!1114 = !{!"omnipotent char", !1115, i64 0}
!1115 = !{!"Simple C/C++ TBAA"}
!1116 = !DILocation(line: 0, scope: !1104)
!1117 = !DILocation(line: 110, column: 3, scope: !960)
!1118 = !DILocation(line: 111, column: 20, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !960, file: !961, line: 111, column: 7)
!1120 = !DILocation(line: 111, column: 7, scope: !960)
!1121 = !DILocation(line: 113, column: 21, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !960, file: !961, line: 113, column: 7)
!1123 = !{!1124, !1125, i64 0}
!1124 = !{!"_MontageInfo", !1125, i64 0, !1125, i64 8, !1125, i64 16, !1125, i64 24, !1125, i64 32, !1125, i64 40, !1126, i64 48, !1127, i64 56, !1114, i64 64, !1128, i64 68, !1128, i64 76, !1128, i64 84, !1128, i64 92, !1128, i64 100, !1114, i64 108, !1114, i64 112, !1114, i64 4208, !1127, i64 4216}
!1125 = !{!"any pointer", !1114, i64 0}
!1126 = !{!"double", !1114, i64 0}
!1127 = !{!"long", !1114, i64 0}
!1128 = !{!"_PixelPacket", !1129, i64 0, !1129, i64 2, !1129, i64 4, !1129, i64 6}
!1129 = !{!"short", !1114, i64 0}
!1130 = !DILocation(line: 113, column: 30, scope: !1122)
!1131 = !DILocation(line: 113, column: 7, scope: !960)
!1132 = !DILocation(line: 114, column: 26, scope: !1122)
!1133 = !DILocation(line: 114, column: 25, scope: !1122)
!1134 = !DILocation(line: 114, column: 5, scope: !1122)
!1135 = !DILocation(line: 115, column: 21, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !960, file: !961, line: 115, column: 7)
!1137 = !{!1124, !1125, i64 8}
!1138 = !DILocation(line: 115, column: 26, scope: !1136)
!1139 = !DILocation(line: 115, column: 7, scope: !960)
!1140 = !DILocation(line: 116, column: 22, scope: !1136)
!1141 = !DILocation(line: 116, column: 17, scope: !1136)
!1142 = !DILocation(line: 116, column: 21, scope: !1136)
!1143 = !DILocation(line: 116, column: 5, scope: !1136)
!1144 = !DILocation(line: 117, column: 21, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !960, file: !961, line: 117, column: 7)
!1146 = !{!1124, !1125, i64 16}
!1147 = !DILocation(line: 117, column: 27, scope: !1145)
!1148 = !DILocation(line: 117, column: 7, scope: !960)
!1149 = !DILocation(line: 118, column: 23, scope: !1145)
!1150 = !DILocation(line: 118, column: 17, scope: !1145)
!1151 = !DILocation(line: 118, column: 22, scope: !1145)
!1152 = !DILocation(line: 118, column: 5, scope: !1145)
!1153 = !DILocation(line: 119, column: 21, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !960, file: !961, line: 119, column: 7)
!1155 = !{!1124, !1125, i64 24}
!1156 = !DILocation(line: 119, column: 27, scope: !1154)
!1157 = !DILocation(line: 119, column: 7, scope: !960)
!1158 = !DILocation(line: 120, column: 23, scope: !1154)
!1159 = !DILocation(line: 120, column: 17, scope: !1154)
!1160 = !DILocation(line: 120, column: 22, scope: !1154)
!1161 = !DILocation(line: 120, column: 5, scope: !1154)
!1162 = !DILocation(line: 121, column: 21, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !960, file: !961, line: 121, column: 7)
!1164 = !{!1124, !1125, i64 32}
!1165 = !DILocation(line: 121, column: 29, scope: !1163)
!1166 = !DILocation(line: 121, column: 7, scope: !960)
!1167 = !DILocation(line: 122, column: 25, scope: !1163)
!1168 = !DILocation(line: 122, column: 17, scope: !1163)
!1169 = !DILocation(line: 122, column: 24, scope: !1163)
!1170 = !DILocation(line: 122, column: 5, scope: !1163)
!1171 = !DILocation(line: 123, column: 21, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !960, file: !961, line: 123, column: 7)
!1173 = !{!1124, !1125, i64 40}
!1174 = !DILocation(line: 123, column: 26, scope: !1172)
!1175 = !DILocation(line: 123, column: 7, scope: !960)
!1176 = !DILocation(line: 124, column: 22, scope: !1172)
!1177 = !DILocation(line: 124, column: 17, scope: !1172)
!1178 = !DILocation(line: 124, column: 21, scope: !1172)
!1179 = !DILocation(line: 124, column: 5, scope: !1172)
!1180 = !DILocation(line: 125, column: 39, scope: !960)
!1181 = !{!1124, !1126, i64 48}
!1182 = !DILocation(line: 125, column: 15, scope: !960)
!1183 = !DILocation(line: 125, column: 24, scope: !960)
!1184 = !DILocation(line: 126, column: 42, scope: !960)
!1185 = !{!1124, !1127, i64 56}
!1186 = !DILocation(line: 126, column: 15, scope: !960)
!1187 = !DILocation(line: 126, column: 27, scope: !960)
!1188 = !DILocation(line: 127, column: 36, scope: !960)
!1189 = !{!1124, !1114, i64 64}
!1190 = !DILocation(line: 127, column: 15, scope: !960)
!1191 = !DILocation(line: 127, column: 21, scope: !960)
!1192 = !DILocation(line: 128, column: 15, scope: !960)
!1193 = !DILocation(line: 128, column: 34, scope: !960)
!1194 = !DILocation(line: 129, column: 15, scope: !960)
!1195 = !DILocation(line: 129, column: 36, scope: !960)
!1196 = !DILocation(line: 130, column: 15, scope: !960)
!1197 = !DILocation(line: 130, column: 46, scope: !960)
!1198 = !DILocation(line: 131, column: 15, scope: !960)
!1199 = !DILocation(line: 131, column: 42, scope: !960)
!1200 = !DILocation(line: 132, column: 15, scope: !960)
!1201 = !DILocation(line: 132, column: 41, scope: !960)
!1202 = !DILocation(line: 133, column: 37, scope: !960)
!1203 = !{!1124, !1114, i64 108}
!1204 = !DILocation(line: 133, column: 15, scope: !960)
!1205 = !DILocation(line: 133, column: 22, scope: !960)
!1206 = !DILocation(line: 134, column: 39, scope: !960)
!1207 = !DILocation(line: 134, column: 62, scope: !960)
!1208 = !DILocation(line: 134, column: 10, scope: !960)
!1209 = !DILocation(line: 136, column: 21, scope: !960)
!1210 = !DILocation(line: 136, column: 15, scope: !960)
!1211 = !DILocation(line: 136, column: 20, scope: !960)
!1212 = !{!1124, !1114, i64 4208}
!1213 = !DILocation(line: 137, column: 3, scope: !960)
!1214 = !DILocation(line: 138, column: 1, scope: !960)
!1215 = !DISubprogram(name: "AcquireMagickMemory", scope: !1216, file: !1216, line: 40, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1216 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!619, !1025}
!1219 = !{}
!1220 = !DISubprogram(name: "GetExceptionInfo", scope: !322, file: !322, line: 166, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!1224 = !DISubprogram(name: "GetExceptionMessage", scope: !322, file: !322, line: 137, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!582, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!1228 = !DISubprogram(name: "ThrowMagickException", scope: !322, file: !322, line: 156, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!596, !1223, !738, !738, !1025, !1231, !738, !738, null}
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!1232 = !DISubprogram(name: "DestroyString", scope: !1233, file: !1233, line: 46, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1233 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!582, !582}
!1236 = !DISubprogram(name: "CatchException", scope: !322, file: !322, line: 164, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1237 = !DISubprogram(name: "DestroyExceptionInfo", scope: !322, file: !322, line: 148, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1223, !1223}
!1240 = !DISubprogram(name: "MagickCoreTerminus", scope: !1241, file: !1241, line: 147, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1241 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null}
!1244 = distinct !DISubprogram(name: "GetMontageInfo", scope: !961, file: !961, line: 213, type: !1245, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !964, !576}
!1247 = !{!1248, !1249}
!1248 = !DILocalVariable(name: "image_info", arg: 1, scope: !1244, file: !961, line: 213, type: !964)
!1249 = !DILocalVariable(name: "montage_info", arg: 2, scope: !1244, file: !961, line: 214, type: !576)
!1250 = !DILocation(line: 0, scope: !1244)
!1251 = !DILocation(line: 218, column: 19, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1244, file: !961, line: 218, column: 7)
!1253 = !{!1254, !1114, i64 16712}
!1254 = !{!"_ImageInfo", !1114, i64 0, !1114, i64 4, !1114, i64 8, !1114, i64 12, !1114, i64 16, !1114, i64 20, !1125, i64 24, !1125, i64 32, !1125, i64 40, !1125, i64 48, !1127, i64 56, !1127, i64 64, !1127, i64 72, !1114, i64 80, !1114, i64 84, !1114, i64 88, !1127, i64 96, !1125, i64 104, !1125, i64 112, !1125, i64 120, !1125, i64 128, !1125, i64 136, !1126, i64 144, !1126, i64 152, !1128, i64 160, !1128, i64 168, !1128, i64 176, !1114, i64 184, !1114, i64 188, !1127, i64 192, !1114, i64 200, !1114, i64 204, !1114, i64 208, !1127, i64 216, !1114, i64 224, !1114, i64 228, !1125, i64 232, !1125, i64 240, !1114, i64 248, !1125, i64 256, !1125, i64 264, !1125, i64 272, !1125, i64 280, !1125, i64 288, !1125, i64 296, !1125, i64 304, !1125, i64 312, !1127, i64 320, !1114, i64 328, !1114, i64 4424, !1114, i64 8520, !1114, i64 12616, !1114, i64 16712, !1125, i64 16720, !1127, i64 16728, !1127, i64 16736, !1128, i64 16744, !1127, i64 16752, !1114, i64 16760, !1128, i64 16764, !1125, i64 16776, !1114, i64 16784}
!1255 = !DILocation(line: 218, column: 25, scope: !1252)
!1256 = !DILocation(line: 218, column: 7, scope: !1244)
!1257 = !DILocation(line: 220, column: 19, scope: !1252)
!1258 = !DILocation(line: 219, column: 12, scope: !1252)
!1259 = !DILocation(line: 219, column: 5, scope: !1252)
!1260 = !DILocation(line: 222, column: 10, scope: !1244)
!1261 = !DILocation(line: 223, column: 41, scope: !1244)
!1262 = !DILocation(line: 223, column: 62, scope: !1244)
!1263 = !DILocation(line: 223, column: 10, scope: !1244)
!1264 = !DILocation(line: 225, column: 26, scope: !1244)
!1265 = !DILocation(line: 225, column: 25, scope: !1244)
!1266 = !DILocation(line: 226, column: 19, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1244, file: !961, line: 226, column: 7)
!1268 = !{!1254, !1125, i64 120}
!1269 = !DILocation(line: 226, column: 24, scope: !1267)
!1270 = !DILocation(line: 226, column: 7, scope: !1244)
!1271 = !DILocation(line: 227, column: 24, scope: !1267)
!1272 = !DILocation(line: 227, column: 19, scope: !1267)
!1273 = !DILocation(line: 227, column: 23, scope: !1267)
!1274 = !DILocation(line: 227, column: 5, scope: !1267)
!1275 = !DILocation(line: 228, column: 17, scope: !1244)
!1276 = !DILocation(line: 228, column: 24, scope: !1244)
!1277 = !DILocation(line: 229, column: 39, scope: !1244)
!1278 = !{!1254, !1126, i64 144}
!1279 = !DILocation(line: 229, column: 17, scope: !1244)
!1280 = !DILocation(line: 229, column: 26, scope: !1244)
!1281 = !DILocation(line: 230, column: 22, scope: !1244)
!1282 = !DILocation(line: 230, column: 29, scope: !1244)
!1283 = !{!1124, !1129, i64 74}
!1284 = !DILocation(line: 231, column: 24, scope: !1244)
!1285 = !DILocation(line: 231, column: 31, scope: !1244)
!1286 = !{!1124, !1129, i64 82}
!1287 = !DILocation(line: 232, column: 17, scope: !1244)
!1288 = !DILocation(line: 232, column: 46, scope: !1244)
!1289 = !DILocation(line: 233, column: 17, scope: !1244)
!1290 = !DILocation(line: 233, column: 42, scope: !1244)
!1291 = !DILocation(line: 234, column: 17, scope: !1244)
!1292 = !DILocation(line: 234, column: 41, scope: !1244)
!1293 = !DILocation(line: 235, column: 23, scope: !1244)
!1294 = !DILocation(line: 235, column: 17, scope: !1244)
!1295 = !DILocation(line: 235, column: 22, scope: !1244)
!1296 = !DILocation(line: 236, column: 17, scope: !1244)
!1297 = !DILocation(line: 236, column: 26, scope: !1244)
!1298 = !{!1124, !1127, i64 4216}
!1299 = !DILocation(line: 237, column: 1, scope: !1244)
!1300 = !DISubprogram(name: "AcquireString", scope: !1233, file: !1233, line: 43, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!582, !738}
!1303 = !DISubprogram(name: "CopyMagickString", scope: !1233, file: !1233, line: 78, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!592, !582, !738, !1025}
!1306 = !DISubprogram(name: "IsEventLogging", scope: !445, file: !445, line: 80, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!596}
!1309 = distinct !DISubprogram(name: "DestroyMontageInfo", scope: !961, file: !961, line: 163, type: !1310, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!576, !576}
!1312 = !{!1313}
!1313 = !DILocalVariable(name: "montage_info", arg: 1, scope: !1309, file: !961, line: 163, type: !576)
!1314 = !DILocation(line: 0, scope: !1309)
!1315 = !DILocation(line: 165, column: 21, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1309, file: !961, line: 165, column: 7)
!1317 = !DILocation(line: 165, column: 27, scope: !1316)
!1318 = !DILocation(line: 165, column: 7, scope: !1309)
!1319 = !DILocation(line: 166, column: 12, scope: !1316)
!1320 = !DILocation(line: 166, column: 5, scope: !1316)
!1321 = !DILocation(line: 169, column: 21, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1309, file: !961, line: 169, column: 7)
!1323 = !DILocation(line: 169, column: 30, scope: !1322)
!1324 = !DILocation(line: 169, column: 7, scope: !1309)
!1325 = !DILocation(line: 171, column: 7, scope: !1322)
!1326 = !DILocation(line: 170, column: 27, scope: !1322)
!1327 = !DILocation(line: 170, column: 5, scope: !1322)
!1328 = !DILocation(line: 172, column: 21, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1309, file: !961, line: 172, column: 7)
!1330 = !DILocation(line: 172, column: 26, scope: !1329)
!1331 = !DILocation(line: 172, column: 7, scope: !1309)
!1332 = !DILocation(line: 173, column: 24, scope: !1329)
!1333 = !DILocation(line: 173, column: 23, scope: !1329)
!1334 = !DILocation(line: 173, column: 5, scope: !1329)
!1335 = !DILocation(line: 174, column: 21, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1309, file: !961, line: 174, column: 7)
!1337 = !DILocation(line: 174, column: 27, scope: !1336)
!1338 = !DILocation(line: 174, column: 7, scope: !1309)
!1339 = !DILocation(line: 175, column: 25, scope: !1336)
!1340 = !DILocation(line: 175, column: 24, scope: !1336)
!1341 = !DILocation(line: 175, column: 5, scope: !1336)
!1342 = !DILocation(line: 176, column: 21, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1309, file: !961, line: 176, column: 7)
!1344 = !DILocation(line: 176, column: 27, scope: !1343)
!1345 = !DILocation(line: 176, column: 7, scope: !1309)
!1346 = !DILocation(line: 177, column: 25, scope: !1343)
!1347 = !DILocation(line: 177, column: 24, scope: !1343)
!1348 = !DILocation(line: 177, column: 5, scope: !1343)
!1349 = !DILocation(line: 178, column: 21, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1309, file: !961, line: 178, column: 7)
!1351 = !DILocation(line: 178, column: 29, scope: !1350)
!1352 = !DILocation(line: 178, column: 7, scope: !1309)
!1353 = !DILocation(line: 179, column: 36, scope: !1350)
!1354 = !DILocation(line: 179, column: 26, scope: !1350)
!1355 = !DILocation(line: 179, column: 5, scope: !1350)
!1356 = !DILocation(line: 181, column: 21, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1309, file: !961, line: 181, column: 7)
!1358 = !DILocation(line: 181, column: 26, scope: !1357)
!1359 = !DILocation(line: 181, column: 7, scope: !1309)
!1360 = !DILocation(line: 182, column: 24, scope: !1357)
!1361 = !DILocation(line: 182, column: 23, scope: !1357)
!1362 = !DILocation(line: 182, column: 5, scope: !1357)
!1363 = !DILocation(line: 183, column: 17, scope: !1309)
!1364 = !DILocation(line: 183, column: 26, scope: !1309)
!1365 = !DILocation(line: 184, column: 32, scope: !1309)
!1366 = !DILocation(line: 185, column: 3, scope: !1309)
!1367 = !DISubprogram(name: "LogMagickEvent", scope: !445, file: !445, line: 83, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!596, !1370, !738, !738, !1025, !738, null}
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !445, line: 58, baseType: !444)
!1372 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1216, file: !1216, line: 51, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!619, !619}
!1375 = !DISubprogram(name: "ResetMagickMemory", scope: !1216, file: !1216, line: 52, type: !1376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!619, !619, !620, !1025}
!1378 = distinct !DISubprogram(name: "MontageImages", scope: !961, file: !961, line: 321, type: !1379, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!622, !1021, !1097, !1223}
!1381 = !{!1382, !1383, !1384, !1385, !1386}
!1382 = !DILocalVariable(name: "images", arg: 1, scope: !1378, file: !961, line: 321, type: !1021)
!1383 = !DILocalVariable(name: "montage_info", arg: 2, scope: !1378, file: !961, line: 322, type: !1097)
!1384 = !DILocalVariable(name: "exception", arg: 3, scope: !1378, file: !961, line: 322, type: !1223)
!1385 = !DILocalVariable(name: "montage_image", scope: !1378, file: !961, line: 325, type: !622)
!1386 = !DILocalVariable(name: "image_info", scope: !1378, file: !961, line: 328, type: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!1388 = !DILocation(line: 0, scope: !1378)
!1389 = !DILocation(line: 330, column: 14, scope: !1378)
!1390 = !DILocation(line: 331, column: 17, scope: !1378)
!1391 = !DILocation(line: 332, column: 14, scope: !1378)
!1392 = !DILocation(line: 333, column: 3, scope: !1378)
!1393 = !DISubprogram(name: "AcquireImageInfo", scope: !50, file: !50, line: 520, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1387}
!1396 = distinct !DISubprogram(name: "MontageImageList", scope: !961, file: !961, line: 336, type: !1397, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!622, !964, !1097, !1021, !1223}
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1472, !1475, !1481, !1482, !1483, !1489, !1490, !1493, !1494, !1499, !1502}
!1400 = !DILocalVariable(name: "image_info", arg: 1, scope: !1396, file: !961, line: 336, type: !964)
!1401 = !DILocalVariable(name: "montage_info", arg: 2, scope: !1396, file: !961, line: 337, type: !1097)
!1402 = !DILocalVariable(name: "images", arg: 3, scope: !1396, file: !961, line: 337, type: !1021)
!1403 = !DILocalVariable(name: "exception", arg: 4, scope: !1396, file: !961, line: 337, type: !1223)
!1404 = !DILocalVariable(name: "tile_geometry", scope: !1396, file: !961, line: 343, type: !614)
!1405 = !DILocalVariable(name: "title", scope: !1396, file: !961, line: 344, type: !582)
!1406 = !DILocalVariable(name: "value", scope: !1396, file: !961, line: 347, type: !738)
!1407 = !DILocalVariable(name: "draw_info", scope: !1396, file: !961, line: 350, type: !822)
!1408 = !DILocalVariable(name: "frame_info", scope: !1396, file: !961, line: 353, type: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameInfo", file: !1410, line: 36, baseType: !1411)
!1410 = !DIFile(filename: "apps/538.imagick_r/src/magick/decorate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "93180cd636c18c61cc22d09586313d94")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FrameInfo", file: !1410, line: 25, size: 384, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1411, file: !1410, line: 28, baseType: !592, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1411, file: !1410, line: 29, baseType: !592, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1411, file: !1410, line: 32, baseType: !670, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1411, file: !1410, line: 33, baseType: !670, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "inner_bevel", scope: !1411, file: !1410, line: 34, baseType: !670, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "outer_bevel", scope: !1411, file: !1410, line: 35, baseType: !670, size: 64, offset: 320)
!1419 = !DILocalVariable(name: "image", scope: !1396, file: !961, line: 356, type: !622)
!1420 = !DILocalVariable(name: "image_list", scope: !1396, file: !961, line: 357, type: !621)
!1421 = !DILocalVariable(name: "master_list", scope: !1396, file: !961, line: 358, type: !621)
!1422 = !DILocalVariable(name: "montage", scope: !1396, file: !961, line: 359, type: !622)
!1423 = !DILocalVariable(name: "texture", scope: !1396, file: !961, line: 360, type: !622)
!1424 = !DILocalVariable(name: "tile_image", scope: !1396, file: !961, line: 361, type: !622)
!1425 = !DILocalVariable(name: "thumbnail", scope: !1396, file: !961, line: 362, type: !622)
!1426 = !DILocalVariable(name: "clone_info", scope: !1396, file: !961, line: 365, type: !1387)
!1427 = !DILocalVariable(name: "concatenate", scope: !1396, file: !961, line: 368, type: !596)
!1428 = !DILocalVariable(name: "proceed", scope: !1396, file: !961, line: 369, type: !596)
!1429 = !DILocalVariable(name: "status", scope: !1396, file: !961, line: 370, type: !596)
!1430 = !DILocalVariable(name: "tiles", scope: !1396, file: !961, line: 373, type: !741)
!1431 = !DILocalVariable(name: "progress_monitor", scope: !1396, file: !961, line: 376, type: !733)
!1432 = !DILocalVariable(name: "flags", scope: !1396, file: !961, line: 379, type: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!1434 = !DILocalVariable(name: "i", scope: !1396, file: !961, line: 382, type: !670)
!1435 = !DILocalVariable(name: "bounds", scope: !1396, file: !961, line: 385, type: !678)
!1436 = !DILocalVariable(name: "geometry", scope: !1396, file: !961, line: 386, type: !678)
!1437 = !DILocalVariable(name: "extract_info", scope: !1396, file: !961, line: 387, type: !678)
!1438 = !DILocalVariable(name: "bevel_width", scope: !1396, file: !961, line: 391, type: !592)
!1439 = !DILocalVariable(name: "border_width", scope: !1396, file: !961, line: 392, type: !592)
!1440 = !DILocalVariable(name: "extent", scope: !1396, file: !961, line: 393, type: !592)
!1441 = !DILocalVariable(name: "height", scope: !1396, file: !961, line: 394, type: !592)
!1442 = !DILocalVariable(name: "images_per_page", scope: !1396, file: !961, line: 395, type: !592)
!1443 = !DILocalVariable(name: "max_height", scope: !1396, file: !961, line: 396, type: !592)
!1444 = !DILocalVariable(name: "number_images", scope: !1396, file: !961, line: 397, type: !592)
!1445 = !DILocalVariable(name: "number_lines", scope: !1396, file: !961, line: 398, type: !592)
!1446 = !DILocalVariable(name: "sans", scope: !1396, file: !961, line: 399, type: !592)
!1447 = !DILocalVariable(name: "tiles_per_column", scope: !1396, file: !961, line: 400, type: !592)
!1448 = !DILocalVariable(name: "tiles_per_page", scope: !1396, file: !961, line: 401, type: !592)
!1449 = !DILocalVariable(name: "tiles_per_row", scope: !1396, file: !961, line: 402, type: !592)
!1450 = !DILocalVariable(name: "title_offset", scope: !1396, file: !961, line: 403, type: !592)
!1451 = !DILocalVariable(name: "total_tiles", scope: !1396, file: !961, line: 404, type: !592)
!1452 = !DILocalVariable(name: "width", scope: !1396, file: !961, line: 405, type: !592)
!1453 = !DILocalVariable(name: "tile", scope: !1396, file: !961, line: 408, type: !670)
!1454 = !DILocalVariable(name: "x", scope: !1396, file: !961, line: 409, type: !670)
!1455 = !DILocalVariable(name: "x_offset", scope: !1396, file: !961, line: 410, type: !670)
!1456 = !DILocalVariable(name: "y", scope: !1396, file: !961, line: 411, type: !670)
!1457 = !DILocalVariable(name: "y_offset", scope: !1396, file: !961, line: 412, type: !670)
!1458 = !DILocalVariable(name: "metrics", scope: !1396, file: !961, line: 415, type: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypeMetric", file: !470, line: 372, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TypeMetric", file: !470, line: 353, size: 960, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pixels_per_em", scope: !1460, file: !470, line: 356, baseType: !886, size: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ascent", scope: !1460, file: !470, line: 359, baseType: !590, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "descent", scope: !1460, file: !470, line: 360, baseType: !590, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1460, file: !470, line: 361, baseType: !590, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1460, file: !470, line: 362, baseType: !590, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "max_advance", scope: !1460, file: !470, line: 363, baseType: !590, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "underline_position", scope: !1460, file: !470, line: 364, baseType: !590, size: 64, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "underline_thickness", scope: !1460, file: !470, line: 365, baseType: !590, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1460, file: !470, line: 368, baseType: !851, size: 256, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1460, file: !470, line: 371, baseType: !886, size: 128, offset: 832)
!1472 = !DILocalVariable(name: "absolute_geometry", scope: !1473, file: !961, line: 507, type: !614)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !961, line: 505, column: 5)
!1474 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 504, column: 7)
!1475 = !DILocalVariable(name: "geometry", scope: !1476, file: !961, line: 684, type: !614)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !961, line: 682, column: 7)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 681, column: 9)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !961, line: 586, column: 3)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !961, line: 585, column: 3)
!1480 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 585, column: 3)
!1481 = !DILocalVariable(name: "clone_info", scope: !1476, file: !961, line: 687, type: !822)
!1482 = !DILocalVariable(name: "metrics", scope: !1476, file: !961, line: 690, type: !1459)
!1483 = !DILocalVariable(name: "border_image", scope: !1484, file: !961, line: 736, type: !622)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !961, line: 734, column: 9)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !961, line: 733, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !961, line: 722, column: 5)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !961, line: 721, column: 5)
!1488 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 721, column: 5)
!1489 = !DILocalVariable(name: "border_info", scope: !1484, file: !961, line: 739, type: !678)
!1490 = !DILocalVariable(name: "extract_info", scope: !1491, file: !961, line: 777, type: !1409)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !961, line: 775, column: 9)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !961, line: 774, column: 11)
!1493 = !DILocalVariable(name: "frame_image", scope: !1491, file: !961, line: 780, type: !622)
!1494 = !DILocalVariable(name: "shadow_image", scope: !1495, file: !961, line: 809, type: !622)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !961, line: 807, column: 13)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !961, line: 806, column: 15)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !961, line: 802, column: 9)
!1498 = distinct !DILexicalBlock(scope: !1486, file: !961, line: 801, column: 11)
!1499 = !DILocalVariable(name: "geometry", scope: !1500, file: !961, line: 831, type: !614)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !961, line: 829, column: 13)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !961, line: 828, column: 15)
!1502 = !DILocalVariable(name: "proceed", scope: !1503, file: !961, line: 862, type: !596)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !961, line: 860, column: 9)
!1504 = distinct !DILexicalBlock(scope: !1486, file: !961, line: 859, column: 11)
!1505 = !DILocation(line: 385, column: 5, scope: !1396)
!1506 = !DILocation(line: 0, scope: !1396)
!1507 = !DILocation(line: 342, column: 3, scope: !1396)
!1508 = !DILocation(line: 343, column: 5, scope: !1396)
!1509 = !DILocation(line: 352, column: 3, scope: !1396)
!1510 = !DILocation(line: 353, column: 5, scope: !1396)
!1511 = !DILocation(line: 384, column: 3, scope: !1396)
!1512 = !DILocation(line: 386, column: 5, scope: !1396)
!1513 = !DILocation(line: 387, column: 5, scope: !1396)
!1514 = !DILocation(line: 390, column: 3, scope: !1396)
!1515 = !DILocation(line: 407, column: 3, scope: !1396)
!1516 = !DILocation(line: 414, column: 3, scope: !1396)
!1517 = !DILocation(line: 415, column: 5, scope: !1396)
!1518 = !DILocation(line: 422, column: 15, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 422, column: 7)
!1520 = !{!1521, !1114, i64 12976}
!1521 = !{!"_Image", !1114, i64 0, !1114, i64 4, !1114, i64 8, !1127, i64 16, !1114, i64 24, !1114, i64 28, !1114, i64 32, !1127, i64 40, !1127, i64 48, !1127, i64 56, !1127, i64 64, !1125, i64 72, !1128, i64 80, !1128, i64 88, !1128, i64 96, !1126, i64 104, !1522, i64 112, !1114, i64 208, !1125, i64 216, !1114, i64 224, !1125, i64 232, !1125, i64 240, !1125, i64 248, !1127, i64 256, !1126, i64 264, !1126, i64 272, !1524, i64 280, !1524, i64 312, !1524, i64 344, !1126, i64 376, !1126, i64 384, !1126, i64 392, !1114, i64 400, !1114, i64 404, !1114, i64 408, !1114, i64 412, !1114, i64 416, !1114, i64 420, !1125, i64 424, !1127, i64 432, !1127, i64 440, !1127, i64 448, !1127, i64 456, !1127, i64 464, !1127, i64 472, !1525, i64 480, !1526, i64 504, !1125, i64 568, !1125, i64 576, !1125, i64 584, !1125, i64 592, !1125, i64 600, !1125, i64 608, !1114, i64 616, !1114, i64 4712, !1114, i64 8808, !1127, i64 12904, !1127, i64 12912, !1528, i64 12920, !1114, i64 12976, !1127, i64 12984, !1125, i64 12992, !1529, i64 13000, !1529, i64 13032, !1125, i64 13064, !1127, i64 13072, !1127, i64 13080, !1125, i64 13088, !1125, i64 13096, !1125, i64 13104, !1114, i64 13112, !1114, i64 13116, !1128, i64 13120, !1125, i64 13128, !1524, i64 13136, !1125, i64 13168, !1125, i64 13176, !1114, i64 13184, !1114, i64 13188, !1530, i64 13192, !1114, i64 13200, !1127, i64 13208, !1127, i64 13216, !1114, i64 13224, !1127, i64 13232}
!1522 = !{!"_ChromaticityInfo", !1523, i64 0, !1523, i64 24, !1523, i64 48, !1523, i64 72}
!1523 = !{!"_PrimaryInfo", !1126, i64 0, !1126, i64 8, !1126, i64 16}
!1524 = !{!"_RectangleInfo", !1127, i64 0, !1127, i64 8, !1127, i64 16, !1127, i64 24}
!1525 = !{!"_ErrorInfo", !1126, i64 0, !1126, i64 8, !1126, i64 16}
!1526 = !{!"_TimerInfo", !1527, i64 0, !1527, i64 24, !1114, i64 48, !1127, i64 56}
!1527 = !{!"_Timer", !1126, i64 0, !1126, i64 8, !1126, i64 16}
!1528 = !{!"_ExceptionInfo", !1114, i64 0, !1113, i64 4, !1125, i64 8, !1125, i64 16, !1125, i64 24, !1114, i64 32, !1125, i64 40, !1127, i64 48}
!1529 = !{!"_ProfileInfo", !1125, i64 0, !1127, i64 8, !1125, i64 16, !1127, i64 24}
!1530 = !{!"long long", !1114, i64 0}
!1531 = !DILocation(line: 422, column: 21, scope: !1519)
!1532 = !DILocation(line: 422, column: 7, scope: !1396)
!1533 = !DILocation(line: 423, column: 69, scope: !1519)
!1534 = !DILocation(line: 423, column: 12, scope: !1519)
!1535 = !DILocation(line: 423, column: 5, scope: !1519)
!1536 = !DILocation(line: 428, column: 17, scope: !1396)
!1537 = !DILocation(line: 429, column: 15, scope: !1396)
!1538 = !DILocation(line: 431, column: 9, scope: !1396)
!1539 = !{!1125, !1125, i64 0}
!1540 = !DILocation(line: 434, column: 13, scope: !1396)
!1541 = !DILocation(line: 435, column: 15, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !961, line: 435, column: 3)
!1543 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 435, column: 3)
!1544 = !DILocation(line: 435, column: 3, scope: !1543)
!1545 = !DILocation(line: 437, column: 22, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !961, line: 436, column: 3)
!1547 = !DILocation(line: 437, column: 11, scope: !1546)
!1548 = !DILocation(line: 438, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1546, file: !961, line: 438, column: 9)
!1550 = !DILocation(line: 438, column: 9, scope: !1546)
!1551 = !DILocation(line: 468, column: 3, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 468, column: 3)
!1553 = distinct !{!1553, !1544, !1554, !1555, !1556}
!1554 = !DILocation(line: 454, column: 3, scope: !1543)
!1555 = !{!"llvm.loop.mustprogress"}
!1556 = !{!"llvm.loop.unroll.disable"}
!1557 = !DILocation(line: 440, column: 52, scope: !1546)
!1558 = !DILocation(line: 440, column: 12, scope: !1546)
!1559 = !DILocation(line: 442, column: 14, scope: !1546)
!1560 = !{!1521, !1125, i64 576}
!1561 = !DILocation(line: 441, column: 22, scope: !1546)
!1562 = !DILocation(line: 443, column: 51, scope: !1546)
!1563 = !DILocation(line: 443, column: 11, scope: !1546)
!1564 = !DILocation(line: 444, column: 45, scope: !1546)
!1565 = !{!1524, !1127, i64 0}
!1566 = !DILocation(line: 444, column: 60, scope: !1546)
!1567 = !{!1524, !1127, i64 8}
!1568 = !DILocation(line: 444, column: 15, scope: !1546)
!1569 = !DILocation(line: 445, column: 19, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1546, file: !961, line: 445, column: 9)
!1571 = !DILocation(line: 445, column: 9, scope: !1546)
!1572 = !DILocation(line: 447, column: 18, scope: !1546)
!1573 = !DILocation(line: 448, column: 66, scope: !1546)
!1574 = !DILocation(line: 448, column: 12, scope: !1546)
!1575 = !DILocalVariable(name: "image", arg: 1, scope: !1576, file: !1577, line: 27, type: !1021)
!1576 = distinct !DISubprogram(name: "SetImageProgress", scope: !1577, file: !1577, line: 27, type: !1578, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1580)
!1577 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!596, !1021, !738, !740, !743}
!1580 = !{!1575, !1581, !1582, !1583, !1584}
!1581 = !DILocalVariable(name: "tag", arg: 2, scope: !1576, file: !1577, line: 28, type: !738)
!1582 = !DILocalVariable(name: "offset", arg: 3, scope: !1576, file: !1577, line: 28, type: !740)
!1583 = !DILocalVariable(name: "extent", arg: 4, scope: !1576, file: !1577, line: 28, type: !743)
!1584 = !DILocalVariable(name: "message", scope: !1576, file: !1577, line: 31, type: !614)
!1585 = !DILocation(line: 0, scope: !1576, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 449, column: 13, scope: !1546)
!1587 = !DILocation(line: 30, column: 3, scope: !1576, inlinedAt: !1586)
!1588 = !DILocation(line: 31, column: 5, scope: !1576, inlinedAt: !1586)
!1589 = !DILocation(line: 33, column: 14, scope: !1590, inlinedAt: !1586)
!1590 = distinct !DILexicalBlock(scope: !1576, file: !1577, line: 33, column: 7)
!1591 = !{!1521, !1125, i64 568}
!1592 = !DILocation(line: 33, column: 31, scope: !1590, inlinedAt: !1586)
!1593 = !DILocation(line: 33, column: 7, scope: !1576, inlinedAt: !1586)
!1594 = !DILocation(line: 37, column: 1, scope: !1576, inlinedAt: !1586)
!1595 = !DILocation(line: 451, column: 9, scope: !1546)
!1596 = !DILocation(line: 35, column: 70, scope: !1576, inlinedAt: !1586)
!1597 = !DILocation(line: 35, column: 10, scope: !1576, inlinedAt: !1586)
!1598 = !DILocation(line: 36, column: 17, scope: !1576, inlinedAt: !1586)
!1599 = !DILocation(line: 36, column: 63, scope: !1576, inlinedAt: !1586)
!1600 = !DILocation(line: 36, column: 10, scope: !1576, inlinedAt: !1586)
!1601 = !DILocation(line: 451, column: 17, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1546, file: !961, line: 451, column: 9)
!1603 = !DILocation(line: 453, column: 11, scope: !1546)
!1604 = !DILocation(line: 435, column: 43, scope: !1542)
!1605 = !DILocation(line: 457, column: 21, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !961, line: 457, column: 11)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !961, line: 456, column: 5)
!1608 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 455, column: 7)
!1609 = !DILocation(line: 457, column: 11, scope: !1607)
!1610 = !DILocation(line: 459, column: 35, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !961, line: 459, column: 7)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !961, line: 459, column: 7)
!1613 = !DILocation(line: 459, column: 7, scope: !1612)
!1614 = !DILocation(line: 460, column: 13, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !961, line: 460, column: 13)
!1616 = !DILocation(line: 460, column: 30, scope: !1615)
!1617 = !DILocation(line: 460, column: 13, scope: !1611)
!1618 = !DILocation(line: 461, column: 28, scope: !1615)
!1619 = !DILocation(line: 461, column: 27, scope: !1615)
!1620 = !DILocation(line: 461, column: 11, scope: !1615)
!1621 = !DILocation(line: 459, column: 45, scope: !1611)
!1622 = distinct !{!1622, !1613, !1623, !1555, !1556}
!1623 = !DILocation(line: 461, column: 57, scope: !1612)
!1624 = !DILocation(line: 462, column: 30, scope: !1607)
!1625 = !DILocation(line: 463, column: 7, scope: !1607)
!1626 = !DILocation(line: 469, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !961, line: 469, column: 9)
!1628 = distinct !DILexicalBlock(scope: !1552, file: !961, line: 468, column: 3)
!1629 = !DILocation(line: 469, column: 24, scope: !1627)
!1630 = !{!1521, !1127, i64 432}
!1631 = !DILocation(line: 469, column: 30, scope: !1627)
!1632 = !DILocation(line: 469, column: 9, scope: !1628)
!1633 = !DILocation(line: 468, column: 43, scope: !1628)
!1634 = !DILocation(line: 468, column: 15, scope: !1628)
!1635 = distinct !{!1635, !1551, !1636, !1555, !1556}
!1636 = !DILocation(line: 470, column: 7, scope: !1552)
!1637 = !DILocation(line: 0, scope: !1552)
!1638 = !DILocation(line: 471, column: 9, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 471, column: 7)
!1640 = !DILocation(line: 471, column: 7, scope: !1396)
!1641 = !DILocation(line: 472, column: 5, scope: !1639)
!1642 = !DILocation(line: 477, column: 34, scope: !1396)
!1643 = !DILocation(line: 477, column: 29, scope: !1396)
!1644 = !DILocation(line: 477, column: 20, scope: !1396)
!1645 = !DILocation(line: 477, column: 19, scope: !1396)
!1646 = !{!1127, !1127, i64 0}
!1647 = !DILocation(line: 478, column: 54, scope: !1396)
!1648 = !DILocation(line: 478, column: 53, scope: !1396)
!1649 = !DILocation(line: 478, column: 26, scope: !1396)
!1650 = !DILocation(line: 478, column: 17, scope: !1396)
!1651 = !DILocation(line: 478, column: 16, scope: !1396)
!1652 = !DILocation(line: 479, column: 11, scope: !1396)
!1653 = !DILocation(line: 480, column: 11, scope: !1396)
!1654 = !DILocation(line: 481, column: 21, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 481, column: 7)
!1656 = !DILocation(line: 481, column: 26, scope: !1655)
!1657 = !DILocation(line: 481, column: 7, scope: !1396)
!1658 = !DILocalVariable(name: "geometry", arg: 1, scope: !1659, file: !961, line: 271, type: !582)
!1659 = distinct !DISubprogram(name: "GetMontageGeometry", scope: !961, file: !961, line: 271, type: !1660, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1664)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !582, !1025, !1662, !1662, !1663, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!1664 = !{!1658, !1665, !1666, !1667, !1668, !1669}
!1665 = !DILocalVariable(name: "number_images", arg: 2, scope: !1659, file: !961, line: 271, type: !1025)
!1666 = !DILocalVariable(name: "x_offset", arg: 3, scope: !1659, file: !961, line: 272, type: !1662)
!1667 = !DILocalVariable(name: "y_offset", arg: 4, scope: !1659, file: !961, line: 272, type: !1662)
!1668 = !DILocalVariable(name: "tiles_per_column", arg: 5, scope: !1659, file: !961, line: 272, type: !1663)
!1669 = !DILocalVariable(name: "tiles_per_row", arg: 6, scope: !1659, file: !961, line: 273, type: !1663)
!1670 = !DILocation(line: 0, scope: !1659, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 482, column: 5, scope: !1655)
!1672 = !DILocation(line: 275, column: 20, scope: !1659, inlinedAt: !1671)
!1673 = !DILocation(line: 276, column: 17, scope: !1659, inlinedAt: !1671)
!1674 = !DILocation(line: 277, column: 10, scope: !1659, inlinedAt: !1671)
!1675 = !DILocation(line: 278, column: 8, scope: !1676, inlinedAt: !1671)
!1676 = distinct !DILexicalBlock(scope: !1659, file: !961, line: 278, column: 7)
!1677 = !DILocation(line: 278, column: 26, scope: !1676, inlinedAt: !1671)
!1678 = !DILocation(line: 278, column: 32, scope: !1676, inlinedAt: !1671)
!1679 = !DILocation(line: 278, column: 36, scope: !1676, inlinedAt: !1671)
!1680 = !DILocation(line: 278, column: 51, scope: !1676, inlinedAt: !1671)
!1681 = !DILocation(line: 278, column: 7, scope: !1659, inlinedAt: !1671)
!1682 = !DILocation(line: 279, column: 32, scope: !1676, inlinedAt: !1671)
!1683 = !DILocation(line: 279, column: 23, scope: !1676, inlinedAt: !1671)
!1684 = !DILocation(line: 279, column: 22, scope: !1676, inlinedAt: !1671)
!1685 = !DILocation(line: 280, column: 25, scope: !1686, inlinedAt: !1671)
!1686 = distinct !DILexicalBlock(scope: !1659, file: !961, line: 280, column: 7)
!1687 = !DILocation(line: 280, column: 7, scope: !1659, inlinedAt: !1671)
!1688 = !DILocation(line: 282, column: 36, scope: !1686, inlinedAt: !1671)
!1689 = !DILocation(line: 282, column: 35, scope: !1686, inlinedAt: !1671)
!1690 = !DILocation(line: 282, column: 34, scope: !1686, inlinedAt: !1671)
!1691 = !DILocation(line: 282, column: 7, scope: !1686, inlinedAt: !1671)
!1692 = !DILocation(line: 281, column: 23, scope: !1686, inlinedAt: !1671)
!1693 = !DILocation(line: 281, column: 22, scope: !1686, inlinedAt: !1671)
!1694 = !DILocation(line: 281, column: 5, scope: !1686, inlinedAt: !1671)
!1695 = !DILocation(line: 283, column: 7, scope: !1696, inlinedAt: !1671)
!1696 = distinct !DILexicalBlock(scope: !1659, file: !961, line: 283, column: 7)
!1697 = !DILocation(line: 283, column: 22, scope: !1696, inlinedAt: !1671)
!1698 = !DILocation(line: 283, column: 7, scope: !1659, inlinedAt: !1671)
!1699 = !DILocation(line: 285, column: 35, scope: !1696, inlinedAt: !1671)
!1700 = !DILocation(line: 285, column: 34, scope: !1696, inlinedAt: !1671)
!1701 = !DILocation(line: 285, column: 7, scope: !1696, inlinedAt: !1671)
!1702 = !DILocation(line: 284, column: 20, scope: !1696, inlinedAt: !1671)
!1703 = !DILocation(line: 284, column: 19, scope: !1696, inlinedAt: !1671)
!1704 = !DILocation(line: 284, column: 5, scope: !1696, inlinedAt: !1671)
!1705 = !DILocation(line: 488, column: 15, scope: !1396)
!1706 = !DILocation(line: 488, column: 3, scope: !1396)
!1707 = !DILocation(line: 489, column: 42, scope: !1396)
!1708 = !DILocation(line: 489, column: 16, scope: !1396)
!1709 = !DILocation(line: 489, column: 17, scope: !1396)
!1710 = !{!1524, !1127, i64 16}
!1711 = !DILocation(line: 490, column: 16, scope: !1396)
!1712 = !DILocation(line: 490, column: 17, scope: !1396)
!1713 = !{!1524, !1127, i64 24}
!1714 = !DILocation(line: 491, column: 21, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 491, column: 7)
!1716 = !DILocation(line: 491, column: 30, scope: !1715)
!1717 = !DILocation(line: 491, column: 7, scope: !1396)
!1718 = !DILocation(line: 497, column: 43, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !961, line: 492, column: 5)
!1720 = !DILocation(line: 496, column: 13, scope: !1719)
!1721 = !DILocation(line: 498, column: 27, scope: !1719)
!1722 = !DILocation(line: 498, column: 39, scope: !1719)
!1723 = !DILocation(line: 498, column: 45, scope: !1719)
!1724 = !DILocation(line: 498, column: 56, scope: !1719)
!1725 = !DILocation(line: 498, column: 70, scope: !1719)
!1726 = !DILocation(line: 0, scope: !1719)
!1727 = !DILocation(line: 498, column: 19, scope: !1719)
!1728 = !DILocation(line: 501, column: 30, scope: !1396)
!1729 = !DILocation(line: 500, column: 5, scope: !1719)
!1730 = !DILocation(line: 503, column: 10, scope: !1396)
!1731 = !DILocation(line: 504, column: 21, scope: !1474)
!1732 = !DILocation(line: 504, column: 27, scope: !1474)
!1733 = !DILocation(line: 504, column: 7, scope: !1396)
!1734 = !DILocation(line: 506, column: 7, scope: !1473)
!1735 = !DILocation(line: 507, column: 9, scope: !1473)
!1736 = !DILocation(line: 509, column: 37, scope: !1473)
!1737 = !DILocation(line: 509, column: 23, scope: !1473)
!1738 = !{!1739, !1127, i64 0}
!1739 = !{!"_FrameInfo", !1127, i64 0, !1127, i64 8, !1127, i64 16, !1127, i64 24, !1127, i64 32, !1127, i64 40}
!1740 = !DILocation(line: 510, column: 38, scope: !1473)
!1741 = !DILocation(line: 510, column: 18, scope: !1473)
!1742 = !DILocation(line: 510, column: 24, scope: !1473)
!1743 = !{!1739, !1127, i64 8}
!1744 = !DILocation(line: 511, column: 14, scope: !1473)
!1745 = !DILocation(line: 513, column: 61, scope: !1473)
!1746 = !DILocation(line: 514, column: 21, scope: !1473)
!1747 = !DILocation(line: 513, column: 13, scope: !1473)
!1748 = !DILocation(line: 515, column: 18, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1473, file: !961, line: 515, column: 11)
!1750 = !DILocation(line: 515, column: 33, scope: !1749)
!1751 = !DILocation(line: 515, column: 11, scope: !1473)
!1752 = !DILocation(line: 516, column: 38, scope: !1749)
!1753 = !DILocation(line: 516, column: 26, scope: !1749)
!1754 = !DILocation(line: 516, column: 9, scope: !1749)
!1755 = !DILocation(line: 517, column: 18, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1473, file: !961, line: 517, column: 11)
!1757 = !DILocation(line: 517, column: 29, scope: !1756)
!1758 = !DILocation(line: 517, column: 11, scope: !1473)
!1759 = !DILocation(line: 518, column: 53, scope: !1756)
!1760 = !DILocation(line: 518, column: 58, scope: !1756)
!1761 = !DILocation(line: 518, column: 31, scope: !1756)
!1762 = !{!1739, !1127, i64 40}
!1763 = !DILocation(line: 518, column: 9, scope: !1756)
!1764 = !DILocation(line: 519, column: 18, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1473, file: !961, line: 519, column: 11)
!1766 = !DILocation(line: 519, column: 30, scope: !1765)
!1767 = !DILocation(line: 519, column: 11, scope: !1473)
!1768 = !DILocation(line: 523, column: 49, scope: !1473)
!1769 = !{!1739, !1127, i64 32}
!1770 = !DILocation(line: 524, column: 20, scope: !1473)
!1771 = !DILocation(line: 520, column: 43, scope: !1765)
!1772 = !DILocation(line: 520, column: 31, scope: !1765)
!1773 = !DILocation(line: 520, column: 9, scope: !1765)
!1774 = !DILocation(line: 521, column: 41, scope: !1473)
!1775 = !DILocation(line: 521, column: 18, scope: !1473)
!1776 = !DILocation(line: 521, column: 19, scope: !1473)
!1777 = !{!1739, !1127, i64 16}
!1778 = !DILocation(line: 522, column: 41, scope: !1473)
!1779 = !DILocation(line: 522, column: 18, scope: !1473)
!1780 = !DILocation(line: 522, column: 19, scope: !1473)
!1781 = !{!1739, !1127, i64 24}
!1782 = !DILocalVariable(name: "x", arg: 1, scope: !1783, file: !961, line: 288, type: !1786)
!1783 = distinct !DISubprogram(name: "MagickMax", scope: !961, file: !961, line: 288, type: !1784, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1787)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!670, !1786, !1786}
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!1787 = !{!1782, !1788}
!1788 = !DILocalVariable(name: "y", arg: 2, scope: !1783, file: !961, line: 288, type: !1786)
!1789 = !DILocation(line: 0, scope: !1783, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 523, column: 28, scope: !1473)
!1791 = !DILocation(line: 0, scope: !1783, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 525, column: 29, scope: !1473)
!1793 = !DILocation(line: 527, column: 5, scope: !1474)
!1794 = !DILocation(line: 527, column: 5, scope: !1473)
!1795 = !DILocation(line: 528, column: 3, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 528, column: 3)
!1797 = !DILocation(line: 530, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !961, line: 530, column: 9)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !961, line: 529, column: 3)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !961, line: 528, column: 3)
!1801 = !DILocation(line: 530, column: 24, scope: !1798)
!1802 = !{!1521, !1127, i64 40}
!1803 = !DILocation(line: 530, column: 32, scope: !1798)
!1804 = !DILocation(line: 530, column: 9, scope: !1799)
!1805 = !DILocation(line: 531, column: 25, scope: !1798)
!1806 = !DILocation(line: 531, column: 7, scope: !1798)
!1807 = !DILocation(line: 532, column: 24, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1799, file: !961, line: 532, column: 9)
!1809 = !{!1521, !1127, i64 48}
!1810 = !DILocation(line: 532, column: 29, scope: !1808)
!1811 = !DILocation(line: 532, column: 9, scope: !1799)
!1812 = !DILocation(line: 533, column: 26, scope: !1808)
!1813 = !DILocation(line: 533, column: 7, scope: !1808)
!1814 = !DILocation(line: 528, column: 43, scope: !1800)
!1815 = !DILocation(line: 528, column: 15, scope: !1800)
!1816 = distinct !{!1816, !1795, !1817, !1555, !1556}
!1817 = !DILocation(line: 534, column: 3, scope: !1796)
!1818 = !DILocation(line: 538, column: 14, scope: !1396)
!1819 = !DILocation(line: 539, column: 15, scope: !1396)
!1820 = !DILocation(line: 539, column: 46, scope: !1396)
!1821 = !DILocation(line: 540, column: 15, scope: !1396)
!1822 = !DILocation(line: 540, column: 42, scope: !1396)
!1823 = !DILocation(line: 541, column: 13, scope: !1396)
!1824 = !DILocation(line: 542, column: 21, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 542, column: 7)
!1826 = !DILocation(line: 542, column: 26, scope: !1825)
!1827 = !DILocation(line: 542, column: 7, scope: !1396)
!1828 = !DILocation(line: 543, column: 36, scope: !1825)
!1829 = !DILocation(line: 543, column: 12, scope: !1825)
!1830 = !DILocation(line: 543, column: 5, scope: !1825)
!1831 = !DILocation(line: 544, column: 21, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 544, column: 7)
!1833 = !DILocation(line: 544, column: 31, scope: !1832)
!1834 = !DILocation(line: 544, column: 7, scope: !1396)
!1835 = !DILocation(line: 545, column: 16, scope: !1832)
!1836 = !DILocation(line: 545, column: 25, scope: !1832)
!1837 = !{!1838, !1126, i64 392}
!1838 = !{!"_DrawInfo", !1125, i64 0, !1125, i64 8, !1524, i64 16, !1839, i64 48, !1114, i64 96, !1128, i64 100, !1128, i64 108, !1126, i64 120, !1840, i64 128, !1125, i64 256, !1125, i64 264, !1125, i64 272, !1114, i64 280, !1114, i64 284, !1114, i64 288, !1114, i64 292, !1114, i64 296, !1127, i64 304, !1126, i64 312, !1114, i64 320, !1114, i64 324, !1125, i64 328, !1127, i64 336, !1125, i64 344, !1125, i64 352, !1125, i64 360, !1114, i64 368, !1114, i64 372, !1127, i64 376, !1125, i64 384, !1126, i64 392, !1125, i64 400, !1114, i64 408, !1128, i64 412, !1128, i64 420, !1125, i64 432, !1125, i64 440, !1125, i64 448, !1841, i64 456, !1114, i64 488, !1129, i64 492, !1114, i64 496, !1844, i64 504, !1114, i64 672, !1127, i64 680, !1126, i64 688, !1126, i64 696, !1126, i64 704, !1114, i64 712}
!1839 = !{!"_AffineMatrix", !1126, i64 0, !1126, i64 8, !1126, i64 16, !1126, i64 24, !1126, i64 32, !1126, i64 40}
!1840 = !{!"_GradientInfo", !1114, i64 0, !1524, i64 8, !1841, i64 40, !1125, i64 72, !1127, i64 80, !1114, i64 88, !1114, i64 92, !1127, i64 96, !1842, i64 104, !1843, i64 120}
!1841 = !{!"_SegmentInfo", !1126, i64 0, !1126, i64 8, !1126, i64 16, !1126, i64 24}
!1842 = !{!"_PointInfo", !1126, i64 0, !1126, i64 8}
!1843 = !{!"float", !1114, i64 0}
!1844 = !{!"_ElementReference", !1125, i64 0, !1114, i64 8, !1840, i64 16, !1127, i64 144, !1125, i64 152, !1125, i64 160}
!1845 = !DILocation(line: 545, column: 5, scope: !1832)
!1846 = !DILocation(line: 546, column: 14, scope: !1396)
!1847 = !DILocation(line: 546, column: 21, scope: !1396)
!1848 = !{!1838, !1114, i64 96}
!1849 = !DILocation(line: 547, column: 14, scope: !1396)
!1850 = !DILocation(line: 547, column: 35, scope: !1396)
!1851 = !DILocation(line: 548, column: 14, scope: !1396)
!1852 = !DILocation(line: 548, column: 33, scope: !1396)
!1853 = !DILocation(line: 549, column: 19, scope: !1396)
!1854 = !DILocation(line: 549, column: 14, scope: !1396)
!1855 = !DILocation(line: 549, column: 18, scope: !1396)
!1856 = !{!1838, !1125, i64 328}
!1857 = !DILocation(line: 550, column: 25, scope: !1396)
!1858 = !DILocation(line: 550, column: 10, scope: !1396)
!1859 = !DILocation(line: 551, column: 11, scope: !1396)
!1860 = !DILocation(line: 552, column: 21, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 552, column: 7)
!1862 = !DILocation(line: 552, column: 29, scope: !1861)
!1863 = !DILocation(line: 552, column: 7, scope: !1396)
!1864 = !DILocation(line: 554, column: 43, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !961, line: 553, column: 5)
!1866 = !DILocation(line: 554, column: 14, scope: !1865)
!1867 = !DILocation(line: 556, column: 15, scope: !1865)
!1868 = !DILocation(line: 557, column: 5, scope: !1865)
!1869 = !DILocation(line: 561, column: 45, scope: !1396)
!1870 = !DILocation(line: 561, column: 73, scope: !1396)
!1871 = !DILocation(line: 561, column: 9, scope: !1396)
!1872 = !DILocation(line: 563, column: 21, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 563, column: 7)
!1874 = !DILocation(line: 563, column: 27, scope: !1873)
!1875 = !DILocation(line: 563, column: 7, scope: !1396)
!1876 = !DILocation(line: 564, column: 39, scope: !1873)
!1877 = !{!1878, !1126, i64 16}
!1878 = !{!"_TypeMetric", !1842, i64 0, !1126, i64 16, !1126, i64 24, !1126, i64 32, !1126, i64 40, !1126, i64 48, !1126, i64 56, !1126, i64 64, !1841, i64 72, !1842, i64 104}
!1879 = !DILocation(line: 564, column: 54, scope: !1873)
!1880 = !{!1878, !1126, i64 24}
!1881 = !DILocation(line: 564, column: 45, scope: !1873)
!1882 = !DILocation(line: 564, column: 29, scope: !1873)
!1883 = !DILocation(line: 565, column: 7, scope: !1873)
!1884 = !DILocation(line: 565, column: 45, scope: !1873)
!1885 = !DILocation(line: 565, column: 31, scope: !1873)
!1886 = !DILocation(line: 565, column: 30, scope: !1873)
!1887 = !DILocation(line: 565, column: 29, scope: !1873)
!1888 = !DILocation(line: 564, column: 18, scope: !1873)
!1889 = !DILocation(line: 564, column: 5, scope: !1873)
!1890 = !DILocation(line: 567, column: 3, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 567, column: 3)
!1892 = !DILocation(line: 569, column: 28, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !961, line: 568, column: 3)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !961, line: 567, column: 3)
!1895 = !DILocation(line: 569, column: 11, scope: !1893)
!1896 = !DILocation(line: 570, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !961, line: 570, column: 9)
!1898 = !DILocation(line: 570, column: 9, scope: !1893)
!1899 = !DILocation(line: 572, column: 9, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1893, file: !961, line: 572, column: 9)
!1901 = !DILocation(line: 572, column: 32, scope: !1900)
!1902 = !DILocation(line: 572, column: 9, scope: !1893)
!1903 = !DILocation(line: 573, column: 20, scope: !1900)
!1904 = !DILocation(line: 573, column: 7, scope: !1900)
!1905 = !DILocation(line: 567, column: 43, scope: !1894)
!1906 = !DILocation(line: 567, column: 15, scope: !1894)
!1907 = distinct !{!1907, !1890, !1908, !1555, !1556}
!1908 = !DILocation(line: 574, column: 3, scope: !1891)
!1909 = !DILocation(line: 566, column: 15, scope: !1396)
!1910 = !DILocation(line: 578, column: 14, scope: !1396)
!1911 = !DILocation(line: 579, column: 11, scope: !1396)
!1912 = !DILocation(line: 580, column: 12, scope: !1396)
!1913 = !DILocation(line: 580, column: 43, scope: !1396)
!1914 = !DILocation(line: 581, column: 12, scope: !1396)
!1915 = !DILocation(line: 581, column: 17, scope: !1396)
!1916 = !DILocation(line: 582, column: 33, scope: !1396)
!1917 = !DILocation(line: 582, column: 38, scope: !1396)
!1918 = !DILocation(line: 582, column: 52, scope: !1396)
!1919 = !DILocation(line: 582, column: 51, scope: !1396)
!1920 = !DILocation(line: 582, column: 36, scope: !1396)
!1921 = !DILocation(line: 582, column: 69, scope: !1396)
!1922 = !DILocation(line: 585, column: 15, scope: !1479)
!1923 = !DILocation(line: 585, column: 3, scope: !1480)
!1924 = !DILocation(line: 591, column: 13, scope: !1478)
!1925 = !DILocation(line: 592, column: 13, scope: !1478)
!1926 = !DILocation(line: 593, column: 23, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 593, column: 9)
!1928 = !DILocation(line: 593, column: 28, scope: !1927)
!1929 = !DILocation(line: 593, column: 9, scope: !1478)
!1930 = !DILocation(line: 0, scope: !1659, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 594, column: 7, scope: !1927)
!1932 = !DILocation(line: 276, column: 17, scope: !1659, inlinedAt: !1931)
!1933 = !DILocation(line: 277, column: 10, scope: !1659, inlinedAt: !1931)
!1934 = !DILocation(line: 278, column: 8, scope: !1676, inlinedAt: !1931)
!1935 = !DILocation(line: 278, column: 26, scope: !1676, inlinedAt: !1931)
!1936 = !DILocation(line: 278, column: 32, scope: !1676, inlinedAt: !1931)
!1937 = !DILocation(line: 279, column: 32, scope: !1676, inlinedAt: !1931)
!1938 = !DILocation(line: 279, column: 23, scope: !1676, inlinedAt: !1931)
!1939 = !DILocation(line: 279, column: 22, scope: !1676, inlinedAt: !1931)
!1940 = !DILocation(line: 280, column: 25, scope: !1686, inlinedAt: !1931)
!1941 = !DILocation(line: 280, column: 7, scope: !1659, inlinedAt: !1931)
!1942 = !DILocation(line: 282, column: 34, scope: !1686, inlinedAt: !1931)
!1943 = !DILocation(line: 282, column: 7, scope: !1686, inlinedAt: !1931)
!1944 = !DILocation(line: 281, column: 23, scope: !1686, inlinedAt: !1931)
!1945 = !DILocation(line: 283, column: 7, scope: !1659, inlinedAt: !1931)
!1946 = !DILocation(line: 596, column: 20, scope: !1478)
!1947 = !DILocation(line: 596, column: 34, scope: !1478)
!1948 = !DILocation(line: 596, column: 33, scope: !1478)
!1949 = !DILocation(line: 597, column: 13, scope: !1478)
!1950 = !DILocation(line: 602, column: 23, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !961, line: 602, column: 5)
!1952 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 602, column: 5)
!1953 = !DILocation(line: 602, column: 5, scope: !1952)
!1954 = !DILocation(line: 604, column: 16, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !961, line: 604, column: 11)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !961, line: 603, column: 5)
!1957 = !DILocation(line: 604, column: 11, scope: !1956)
!1958 = !DILocation(line: 0, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !961, line: 605, column: 9)
!1960 = !DILocation(line: 606, column: 17, scope: !1959)
!1961 = !DILocation(line: 608, column: 33, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !961, line: 608, column: 15)
!1963 = !DILocation(line: 608, column: 15, scope: !1959)
!1964 = !DILocation(line: 0, scope: !1478)
!1965 = !DILocation(line: 611, column: 50, scope: !1956)
!1966 = !DILocation(line: 611, column: 51, scope: !1956)
!1967 = !DILocation(line: 611, column: 35, scope: !1956)
!1968 = !DILocation(line: 611, column: 15, scope: !1956)
!1969 = !DILocation(line: 611, column: 33, scope: !1956)
!1970 = !DILocation(line: 612, column: 11, scope: !1956)
!1971 = !DILocation(line: 614, column: 17, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1956, file: !961, line: 614, column: 11)
!1973 = !DILocation(line: 614, column: 21, scope: !1972)
!1974 = !DILocation(line: 614, column: 50, scope: !1972)
!1975 = !DILocation(line: 615, column: 24, scope: !1972)
!1976 = !DILocation(line: 615, column: 22, scope: !1972)
!1977 = !DILocation(line: 615, column: 39, scope: !1972)
!1978 = !DILocation(line: 614, column: 11, scope: !1956)
!1979 = !DILocation(line: 617, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1972, file: !961, line: 616, column: 9)
!1981 = !DILocation(line: 618, column: 29, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1980, file: !961, line: 618, column: 15)
!1983 = !DILocation(line: 618, column: 34, scope: !1982)
!1984 = !DILocation(line: 618, column: 15, scope: !1980)
!1985 = !DILocation(line: 0, scope: !1659, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 619, column: 13, scope: !1982)
!1987 = !DILocation(line: 276, column: 17, scope: !1659, inlinedAt: !1986)
!1988 = !DILocation(line: 277, column: 10, scope: !1659, inlinedAt: !1986)
!1989 = !DILocation(line: 278, column: 8, scope: !1676, inlinedAt: !1986)
!1990 = !DILocation(line: 278, column: 26, scope: !1676, inlinedAt: !1986)
!1991 = !DILocation(line: 278, column: 32, scope: !1676, inlinedAt: !1986)
!1992 = !DILocation(line: 279, column: 32, scope: !1676, inlinedAt: !1986)
!1993 = !DILocation(line: 279, column: 23, scope: !1676, inlinedAt: !1986)
!1994 = !DILocation(line: 280, column: 25, scope: !1686, inlinedAt: !1986)
!1995 = !DILocation(line: 280, column: 7, scope: !1659, inlinedAt: !1986)
!1996 = !DILocation(line: 621, column: 18, scope: !1980)
!1997 = !DILocation(line: 622, column: 53, scope: !1980)
!1998 = !DILocation(line: 622, column: 54, scope: !1980)
!1999 = !DILocation(line: 622, column: 78, scope: !1980)
!2000 = !DILocation(line: 622, column: 38, scope: !1980)
!2001 = !DILocation(line: 622, column: 32, scope: !1980)
!2002 = !DILocation(line: 623, column: 22, scope: !1980)
!2003 = !DILocation(line: 623, column: 37, scope: !1980)
!2004 = !DILocation(line: 623, column: 28, scope: !1980)
!2005 = !DILocation(line: 623, column: 44, scope: !1980)
!2006 = !DILocation(line: 622, column: 80, scope: !1980)
!2007 = !DILocation(line: 624, column: 28, scope: !1980)
!2008 = !DILocation(line: 624, column: 35, scope: !1980)
!2009 = !DILocation(line: 624, column: 14, scope: !1980)
!2010 = !DILocation(line: 624, column: 13, scope: !1980)
!2011 = !DILocation(line: 623, column: 60, scope: !1980)
!2012 = !DILocation(line: 622, column: 21, scope: !1980)
!2013 = !DILocation(line: 622, column: 19, scope: !1980)
!2014 = !DILocation(line: 625, column: 15, scope: !1980)
!2015 = !DILocation(line: 628, column: 9, scope: !1980)
!2016 = !DILocation(line: 0, scope: !1956)
!2017 = distinct !{!2017, !1953, !2018, !1555, !1556}
!2018 = !DILocation(line: 629, column: 5, scope: !1952)
!2019 = !DILocation(line: 630, column: 23, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 630, column: 9)
!2021 = !DILocation(line: 630, column: 30, scope: !2020)
!2022 = !DILocation(line: 630, column: 9, scope: !1478)
!2023 = !DILocation(line: 635, column: 38, scope: !1478)
!2024 = !DILocation(line: 635, column: 12, scope: !1478)
!2025 = !DILocation(line: 0, scope: !1783, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 637, column: 31, scope: !1478)
!2027 = !DILocation(line: 637, column: 14, scope: !1478)
!2028 = !DILocation(line: 637, column: 21, scope: !1478)
!2029 = !DILocation(line: 0, scope: !1783, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 638, column: 28, scope: !1478)
!2031 = !DILocation(line: 638, column: 14, scope: !1478)
!2032 = !DILocation(line: 638, column: 18, scope: !1478)
!2033 = !DILocation(line: 639, column: 12, scope: !1478)
!2034 = !DILocation(line: 643, column: 22, scope: !1478)
!2035 = !DILocation(line: 643, column: 14, scope: !1478)
!2036 = !DILocation(line: 643, column: 21, scope: !1478)
!2037 = !{!1521, !1125, i64 232}
!2038 = !DILocation(line: 646, column: 17, scope: !1478)
!2039 = !DILocation(line: 646, column: 5, scope: !1478)
!2040 = !DILocation(line: 648, column: 22, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 647, column: 5)
!2042 = !DILocation(line: 648, column: 40, scope: !2041)
!2043 = !DILocation(line: 648, column: 15, scope: !2041)
!2044 = !DILocation(line: 648, column: 49, scope: !2041)
!2045 = !DILocation(line: 648, column: 13, scope: !2041)
!2046 = !DILocation(line: 649, column: 11, scope: !2041)
!2047 = distinct !{!2047, !2039, !2048, !1555, !1556}
!2048 = !DILocation(line: 650, column: 5, scope: !1478)
!2049 = !DILocation(line: 651, column: 33, scope: !1478)
!2050 = !DILocation(line: 651, column: 14, scope: !1478)
!2051 = !DILocation(line: 651, column: 23, scope: !1478)
!2052 = !{!1521, !1125, i64 240}
!2053 = !DILocation(line: 653, column: 19, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 653, column: 9)
!2055 = !DILocation(line: 653, column: 27, scope: !2054)
!2056 = !DILocation(line: 653, column: 45, scope: !2054)
!2057 = !DILocation(line: 655, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !961, line: 655, column: 7)
!2059 = !DILocation(line: 656, column: 13, scope: !1478)
!2060 = !DILocation(line: 657, column: 13, scope: !1478)
!2061 = !DILocation(line: 658, column: 23, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 658, column: 9)
!2063 = !DILocation(line: 658, column: 28, scope: !2062)
!2064 = !DILocation(line: 658, column: 9, scope: !1478)
!2065 = !DILocation(line: 0, scope: !1659, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 659, column: 7, scope: !2062)
!2067 = !DILocation(line: 276, column: 17, scope: !1659, inlinedAt: !2066)
!2068 = !DILocation(line: 277, column: 10, scope: !1659, inlinedAt: !2066)
!2069 = !DILocation(line: 278, column: 8, scope: !1676, inlinedAt: !2066)
!2070 = !DILocation(line: 278, column: 26, scope: !1676, inlinedAt: !2066)
!2071 = !DILocation(line: 278, column: 32, scope: !1676, inlinedAt: !2066)
!2072 = !DILocation(line: 279, column: 32, scope: !1676, inlinedAt: !2066)
!2073 = !DILocation(line: 279, column: 23, scope: !1676, inlinedAt: !2066)
!2074 = !DILocation(line: 279, column: 22, scope: !1676, inlinedAt: !2066)
!2075 = !DILocation(line: 280, column: 25, scope: !1686, inlinedAt: !2066)
!2076 = !DILocation(line: 280, column: 7, scope: !1659, inlinedAt: !2066)
!2077 = !DILocation(line: 282, column: 34, scope: !1686, inlinedAt: !2066)
!2078 = !DILocation(line: 282, column: 7, scope: !1686, inlinedAt: !2066)
!2079 = !DILocation(line: 281, column: 23, scope: !1686, inlinedAt: !2066)
!2080 = !DILocation(line: 283, column: 7, scope: !1659, inlinedAt: !2066)
!2081 = !DILocation(line: 661, column: 13, scope: !1478)
!2082 = !DILocation(line: 662, column: 40, scope: !1478)
!2083 = !DILocation(line: 663, column: 56, scope: !1478)
!2084 = !DILocation(line: 664, column: 21, scope: !1478)
!2085 = !DILocation(line: 664, column: 22, scope: !1478)
!2086 = !DILocation(line: 664, column: 36, scope: !1478)
!2087 = !DILocation(line: 663, column: 61, scope: !1478)
!2088 = !DILocation(line: 663, column: 33, scope: !1478)
!2089 = !DILocation(line: 664, column: 63, scope: !1478)
!2090 = !DILocation(line: 665, column: 21, scope: !1478)
!2091 = !DILocation(line: 665, column: 22, scope: !1478)
!2092 = !DILocation(line: 665, column: 36, scope: !1478)
!2093 = !DILocation(line: 664, column: 69, scope: !1478)
!2094 = !DILocation(line: 664, column: 50, scope: !1478)
!2095 = !DILocation(line: 665, column: 58, scope: !1478)
!2096 = !DILocation(line: 666, column: 15, scope: !1478)
!2097 = !DILocation(line: 665, column: 64, scope: !1478)
!2098 = !DILocation(line: 666, column: 22, scope: !1478)
!2099 = !DILocation(line: 666, column: 54, scope: !1478)
!2100 = !DILocation(line: 666, column: 61, scope: !1478)
!2101 = !DILocation(line: 666, column: 40, scope: !1478)
!2102 = !DILocation(line: 666, column: 39, scope: !1478)
!2103 = !DILocation(line: 666, column: 38, scope: !1478)
!2104 = !DILocation(line: 665, column: 38, scope: !1478)
!2105 = !DILocation(line: 667, column: 21, scope: !1478)
!2106 = !DILocation(line: 667, column: 12, scope: !1478)
!2107 = !DILocation(line: 667, column: 30, scope: !1478)
!2108 = !DILocation(line: 662, column: 12, scope: !1478)
!2109 = !DILocation(line: 668, column: 15, scope: !1478)
!2110 = !DILocation(line: 668, column: 24, scope: !1478)
!2111 = !{!1114, !1114, i64 0}
!2112 = !DILocation(line: 670, column: 5, scope: !1478)
!2113 = !DILocation(line: 672, column: 47, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 671, column: 5)
!2115 = !DILocation(line: 673, column: 9, scope: !2114)
!2116 = !DILocation(line: 673, column: 27, scope: !2114)
!2117 = !DILocation(line: 672, column: 14, scope: !2114)
!2118 = !DILocation(line: 674, column: 47, scope: !2114)
!2119 = !DILocation(line: 674, column: 14, scope: !2114)
!2120 = !DILocation(line: 675, column: 11, scope: !2114)
!2121 = !DILocation(line: 670, column: 17, scope: !1478)
!2122 = distinct !{!2122, !2112, !2123, !1555, !1556}
!2123 = !DILocation(line: 676, column: 5, scope: !1478)
!2124 = !DILocation(line: 678, column: 21, scope: !1478)
!2125 = !DILocation(line: 677, column: 22, scope: !1478)
!2126 = !DILocation(line: 679, column: 9, scope: !1478)
!2127 = !DILocation(line: 680, column: 14, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 679, column: 9)
!2129 = !DILocation(line: 680, column: 7, scope: !2128)
!2130 = !DILocation(line: 681, column: 23, scope: !1477)
!2131 = !DILocation(line: 681, column: 29, scope: !1477)
!2132 = !DILocation(line: 681, column: 9, scope: !1478)
!2133 = !DILocation(line: 683, column: 9, scope: !1476)
!2134 = !DILocation(line: 684, column: 11, scope: !1476)
!2135 = !DILocation(line: 689, column: 9, scope: !1476)
!2136 = !DILocation(line: 690, column: 11, scope: !1476)
!2137 = !DILocation(line: 695, column: 20, scope: !1476)
!2138 = !DILocation(line: 0, scope: !1476)
!2139 = !DILocation(line: 696, column: 21, scope: !1476)
!2140 = !DILocation(line: 696, column: 28, scope: !1476)
!2141 = !DILocation(line: 697, column: 21, scope: !1476)
!2142 = !DILocation(line: 697, column: 30, scope: !1476)
!2143 = !DILocation(line: 698, column: 31, scope: !1476)
!2144 = !DILocation(line: 698, column: 16, scope: !1476)
!2145 = !DILocation(line: 700, column: 55, scope: !1476)
!2146 = !DILocation(line: 700, column: 37, scope: !1476)
!2147 = !DILocation(line: 701, column: 20, scope: !1476)
!2148 = !DILocation(line: 701, column: 35, scope: !1476)
!2149 = !DILocation(line: 701, column: 26, scope: !1476)
!2150 = !DILocation(line: 701, column: 70, scope: !1476)
!2151 = !DILocation(line: 701, column: 48, scope: !1476)
!2152 = !DILocation(line: 701, column: 71, scope: !1476)
!2153 = !DILocation(line: 699, column: 16, scope: !1476)
!2154 = !DILocation(line: 702, column: 41, scope: !1476)
!2155 = !DILocation(line: 702, column: 16, scope: !1476)
!2156 = !DILocation(line: 703, column: 41, scope: !1476)
!2157 = !DILocation(line: 703, column: 16, scope: !1476)
!2158 = !DILocation(line: 704, column: 16, scope: !1476)
!2159 = !DILocation(line: 705, column: 20, scope: !1476)
!2160 = !DILocation(line: 706, column: 7, scope: !1477)
!2161 = !DILocation(line: 706, column: 7, scope: !1476)
!2162 = !DILocation(line: 708, column: 16, scope: !1478)
!2163 = !DILocation(line: 707, column: 12, scope: !1478)
!2164 = !DILocation(line: 712, column: 13, scope: !1478)
!2165 = !DILocation(line: 713, column: 13, scope: !1478)
!2166 = !DILocation(line: 714, column: 23, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 714, column: 9)
!2168 = !DILocation(line: 714, column: 28, scope: !2167)
!2169 = !DILocation(line: 714, column: 9, scope: !1478)
!2170 = !DILocation(line: 0, scope: !1659, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 715, column: 7, scope: !2167)
!2172 = !DILocation(line: 276, column: 17, scope: !1659, inlinedAt: !2171)
!2173 = !DILocation(line: 277, column: 10, scope: !1659, inlinedAt: !2171)
!2174 = !DILocation(line: 278, column: 8, scope: !1676, inlinedAt: !2171)
!2175 = !DILocation(line: 278, column: 26, scope: !1676, inlinedAt: !2171)
!2176 = !DILocation(line: 278, column: 32, scope: !1676, inlinedAt: !2171)
!2177 = !DILocation(line: 279, column: 32, scope: !1676, inlinedAt: !2171)
!2178 = !DILocation(line: 279, column: 23, scope: !1676, inlinedAt: !2171)
!2179 = !DILocation(line: 279, column: 22, scope: !1676, inlinedAt: !2171)
!2180 = !DILocation(line: 280, column: 25, scope: !1686, inlinedAt: !2171)
!2181 = !DILocation(line: 280, column: 7, scope: !1659, inlinedAt: !2171)
!2182 = !DILocation(line: 282, column: 34, scope: !1686, inlinedAt: !2171)
!2183 = !DILocation(line: 282, column: 7, scope: !1686, inlinedAt: !2171)
!2184 = !DILocation(line: 281, column: 23, scope: !1686, inlinedAt: !2171)
!2185 = !DILocation(line: 283, column: 7, scope: !1659, inlinedAt: !2171)
!2186 = !DILocation(line: 717, column: 28, scope: !1478)
!2187 = !DILocation(line: 717, column: 13, scope: !1478)
!2188 = !DILocation(line: 718, column: 51, scope: !1478)
!2189 = !DILocation(line: 718, column: 37, scope: !1478)
!2190 = !DILocation(line: 718, column: 13, scope: !1478)
!2191 = !DILocation(line: 721, column: 5, scope: !1488)
!2192 = !DILocation(line: 726, column: 24, scope: !1486)
!2193 = !DILocation(line: 726, column: 13, scope: !1486)
!2194 = !DILocation(line: 728, column: 45, scope: !1486)
!2195 = !DILocation(line: 727, column: 24, scope: !1486)
!2196 = !DILocation(line: 729, column: 13, scope: !1486)
!2197 = !DILocation(line: 730, column: 18, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !1486, file: !961, line: 730, column: 11)
!2199 = !DILocation(line: 730, column: 11, scope: !1486)
!2200 = !DILocation(line: 732, column: 14, scope: !1486)
!2201 = !DILocation(line: 733, column: 11, scope: !1486)
!2202 = !DILocation(line: 738, column: 11, scope: !1484)
!2203 = !DILocation(line: 739, column: 13, scope: !1484)
!2204 = !DILocation(line: 744, column: 28, scope: !1484)
!2205 = !DILocation(line: 745, column: 29, scope: !1484)
!2206 = !DILocation(line: 746, column: 29, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !1484, file: !961, line: 746, column: 15)
!2208 = !DILocation(line: 746, column: 35, scope: !2207)
!2209 = !DILocation(line: 746, column: 15, scope: !1484)
!2210 = !DILocation(line: 748, column: 47, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !961, line: 747, column: 13)
!2212 = !DILocation(line: 748, column: 39, scope: !2211)
!2213 = !DILocation(line: 748, column: 54, scope: !2211)
!2214 = !DILocation(line: 748, column: 57, scope: !2211)
!2215 = !DILocation(line: 748, column: 32, scope: !2211)
!2216 = !DILocation(line: 749, column: 41, scope: !2211)
!2217 = !DILocation(line: 749, column: 53, scope: !2211)
!2218 = !DILocation(line: 749, column: 56, scope: !2211)
!2219 = !DILocation(line: 749, column: 33, scope: !2211)
!2220 = !DILocation(line: 750, column: 13, scope: !2211)
!2221 = !DILocation(line: 751, column: 24, scope: !1484)
!2222 = !DILocation(line: 0, scope: !1484)
!2223 = !DILocation(line: 752, column: 28, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1484, file: !961, line: 752, column: 15)
!2225 = !DILocation(line: 752, column: 15, scope: !1484)
!2226 = !DILocation(line: 754, column: 21, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !961, line: 753, column: 13)
!2228 = !DILocation(line: 756, column: 13, scope: !2227)
!2229 = !DILocation(line: 0, scope: !1486)
!2230 = !DILocation(line: 757, column: 30, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !1484, file: !961, line: 757, column: 15)
!2232 = !DILocation(line: 757, column: 36, scope: !2231)
!2233 = !DILocation(line: 757, column: 54, scope: !2231)
!2234 = !DILocation(line: 758, column: 23, scope: !2231)
!2235 = !{!1521, !1114, i64 416}
!2236 = !DILocation(line: 758, column: 31, scope: !2231)
!2237 = !DILocation(line: 757, column: 15, scope: !1484)
!2238 = !DILocation(line: 759, column: 20, scope: !2231)
!2239 = !DILocation(line: 759, column: 13, scope: !2231)
!2240 = !DILocation(line: 760, column: 9, scope: !1485)
!2241 = !DILocation(line: 760, column: 9, scope: !1484)
!2242 = !DILocation(line: 764, column: 26, scope: !1486)
!2243 = !DILocation(line: 765, column: 23, scope: !1486)
!2244 = !DILocation(line: 766, column: 41, scope: !1486)
!2245 = !DILocation(line: 766, column: 26, scope: !1486)
!2246 = !{!1521, !1114, i64 412}
!2247 = !DILocation(line: 767, column: 18, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !1486, file: !961, line: 767, column: 11)
!2249 = !DILocation(line: 767, column: 26, scope: !2248)
!2250 = !DILocation(line: 767, column: 11, scope: !1486)
!2251 = !DILocation(line: 770, column: 25, scope: !1486)
!2252 = !DILocation(line: 770, column: 9, scope: !1486)
!2253 = !DILocation(line: 770, column: 49, scope: !1486)
!2254 = !DILocation(line: 770, column: 33, scope: !1486)
!2255 = !DILocation(line: 769, column: 14, scope: !1486)
!2256 = !DILocation(line: 771, column: 13, scope: !1486)
!2257 = !DILocation(line: 772, column: 29, scope: !1486)
!2258 = !DILocation(line: 772, column: 30, scope: !1486)
!2259 = !DILocation(line: 773, column: 29, scope: !1486)
!2260 = !DILocation(line: 773, column: 30, scope: !1486)
!2261 = !DILocation(line: 773, column: 8, scope: !1486)
!2262 = !DILocation(line: 774, column: 26, scope: !1492)
!2263 = !DILocation(line: 774, column: 32, scope: !1492)
!2264 = !DILocation(line: 774, column: 50, scope: !1492)
!2265 = !DILocation(line: 776, column: 11, scope: !1491)
!2266 = !DILocation(line: 777, column: 13, scope: !1491)
!2267 = !DILocation(line: 785, column: 24, scope: !1491)
!2268 = !{i64 0, i64 8, !1646, i64 8, i64 8, !1646, i64 16, i64 8, !1646, i64 24, i64 8, !1646, i64 32, i64 8, !1646, i64 40, i64 8, !1646}
!2269 = !DILocation(line: 786, column: 49, scope: !1491)
!2270 = !DILocation(line: 786, column: 37, scope: !1491)
!2271 = !DILocation(line: 786, column: 35, scope: !1491)
!2272 = !DILocation(line: 786, column: 29, scope: !1491)
!2273 = !DILocation(line: 787, column: 51, scope: !1491)
!2274 = !DILocation(line: 787, column: 39, scope: !1491)
!2275 = !DILocation(line: 787, column: 37, scope: !1491)
!2276 = !DILocation(line: 787, column: 30, scope: !1491)
!2277 = !DILocation(line: 788, column: 17, scope: !1491)
!2278 = !DILocation(line: 789, column: 21, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !1491, file: !961, line: 789, column: 15)
!2280 = !DILocation(line: 789, column: 15, scope: !1491)
!2281 = !DILocation(line: 790, column: 53, scope: !2279)
!2282 = !DILocation(line: 790, column: 68, scope: !2279)
!2283 = !DILocation(line: 790, column: 59, scope: !2279)
!2284 = !DILocation(line: 790, column: 75, scope: !2279)
!2285 = !DILocation(line: 791, column: 15, scope: !2279)
!2286 = !DILocation(line: 790, column: 78, scope: !2279)
!2287 = !DILocation(line: 790, column: 34, scope: !2279)
!2288 = !DILocation(line: 790, column: 32, scope: !2279)
!2289 = !DILocation(line: 790, column: 13, scope: !2279)
!2290 = !DILocation(line: 792, column: 23, scope: !1491)
!2291 = !DILocation(line: 0, scope: !1491)
!2292 = !DILocation(line: 793, column: 27, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !1491, file: !961, line: 793, column: 15)
!2294 = !DILocation(line: 793, column: 15, scope: !1491)
!2295 = !DILocation(line: 795, column: 21, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2293, file: !961, line: 794, column: 13)
!2297 = !DILocation(line: 797, column: 13, scope: !2296)
!2298 = !DILocation(line: 799, column: 12, scope: !1491)
!2299 = !DILocation(line: 800, column: 9, scope: !1492)
!2300 = !DILocation(line: 800, column: 9, scope: !1491)
!2301 = !DILocation(line: 801, column: 32, scope: !1498)
!2302 = !DILocation(line: 801, column: 11, scope: !1498)
!2303 = !DILocation(line: 801, column: 47, scope: !1498)
!2304 = !DILocation(line: 801, column: 11, scope: !1486)
!2305 = !DILocation(line: 806, column: 29, scope: !1496)
!2306 = !DILocation(line: 806, column: 36, scope: !1496)
!2307 = !DILocation(line: 806, column: 15, scope: !1497)
!2308 = !DILocation(line: 814, column: 59, scope: !1495)
!2309 = !DILocation(line: 814, column: 22, scope: !1495)
!2310 = !DILocation(line: 816, column: 28, scope: !1495)
!2311 = !DILocation(line: 0, scope: !1495)
!2312 = !DILocation(line: 817, column: 32, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1495, file: !961, line: 817, column: 19)
!2314 = !DILocation(line: 817, column: 19, scope: !1495)
!2315 = !DILocation(line: 819, column: 51, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !961, line: 818, column: 17)
!2317 = !DILocation(line: 819, column: 19, scope: !2316)
!2318 = !DILocation(line: 820, column: 26, scope: !2316)
!2319 = !DILocation(line: 821, column: 25, scope: !2316)
!2320 = !DILocation(line: 823, column: 17, scope: !2316)
!2321 = !DILocation(line: 825, column: 48, scope: !1497)
!2322 = !DILocation(line: 825, column: 62, scope: !1497)
!2323 = !DILocation(line: 825, column: 70, scope: !1497)
!2324 = !DILocation(line: 826, column: 13, scope: !1497)
!2325 = !DILocation(line: 826, column: 22, scope: !1497)
!2326 = !DILocation(line: 826, column: 21, scope: !1497)
!2327 = !DILocation(line: 825, column: 18, scope: !1497)
!2328 = !DILocation(line: 827, column: 17, scope: !1497)
!2329 = !DILocation(line: 828, column: 21, scope: !1501)
!2330 = !DILocation(line: 828, column: 15, scope: !1497)
!2331 = !DILocation(line: 830, column: 15, scope: !1500)
!2332 = !DILocation(line: 831, column: 17, scope: !1500)
!2333 = !DILocation(line: 837, column: 68, scope: !1500)
!2334 = !DILocation(line: 837, column: 54, scope: !1500)
!2335 = !DILocation(line: 838, column: 24, scope: !1500)
!2336 = !DILocation(line: 838, column: 40, scope: !1500)
!2337 = !DILocation(line: 837, column: 43, scope: !1500)
!2338 = !DILocation(line: 839, column: 26, scope: !1500)
!2339 = !DILocation(line: 839, column: 41, scope: !1500)
!2340 = !DILocation(line: 839, column: 32, scope: !1500)
!2341 = !DILocation(line: 839, column: 48, scope: !1500)
!2342 = !DILocation(line: 839, column: 52, scope: !1500)
!2343 = !DILocation(line: 839, column: 51, scope: !1500)
!2344 = !DILocation(line: 840, column: 27, scope: !1500)
!2345 = !DILocation(line: 840, column: 35, scope: !1500)
!2346 = !DILocation(line: 840, column: 17, scope: !1500)
!2347 = !DILocation(line: 841, column: 33, scope: !1500)
!2348 = !DILocation(line: 841, column: 19, scope: !1500)
!2349 = !DILocation(line: 0, scope: !1500)
!2350 = !DILocation(line: 841, column: 56, scope: !1500)
!2351 = !DILocation(line: 841, column: 69, scope: !1500)
!2352 = !DILocation(line: 842, column: 39, scope: !1500)
!2353 = !DILocation(line: 843, column: 32, scope: !1500)
!2354 = !DILocation(line: 843, column: 39, scope: !1500)
!2355 = !DILocation(line: 843, column: 18, scope: !1500)
!2356 = !DILocation(line: 842, column: 25, scope: !1500)
!2357 = !DILocation(line: 842, column: 45, scope: !1500)
!2358 = !DILocation(line: 842, column: 58, scope: !1500)
!2359 = !DILocation(line: 843, column: 63, scope: !1500)
!2360 = !DILocation(line: 840, column: 50, scope: !1500)
!2361 = !DILocation(line: 836, column: 22, scope: !1500)
!2362 = !DILocation(line: 844, column: 22, scope: !1500)
!2363 = !DILocation(line: 845, column: 22, scope: !1500)
!2364 = !DILocation(line: 846, column: 22, scope: !1500)
!2365 = !DILocation(line: 847, column: 13, scope: !1501)
!2366 = !DILocation(line: 847, column: 13, scope: !1500)
!2367 = !DILocation(line: 849, column: 50, scope: !1486)
!2368 = !DILocation(line: 849, column: 51, scope: !1486)
!2369 = !DILocation(line: 849, column: 35, scope: !1486)
!2370 = !DILocation(line: 849, column: 15, scope: !1486)
!2371 = !DILocation(line: 849, column: 33, scope: !1486)
!2372 = !DILocation(line: 850, column: 17, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !1486, file: !961, line: 850, column: 11)
!2374 = !DILocation(line: 850, column: 21, scope: !2373)
!2375 = !DILocation(line: 850, column: 50, scope: !2373)
!2376 = !DILocation(line: 851, column: 24, scope: !2373)
!2377 = !DILocation(line: 851, column: 22, scope: !2373)
!2378 = !DILocation(line: 851, column: 39, scope: !2373)
!2379 = !DILocation(line: 850, column: 11, scope: !1486)
!2380 = !DILocation(line: 853, column: 19, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2373, file: !961, line: 852, column: 9)
!2382 = !DILocation(line: 854, column: 53, scope: !2381)
!2383 = !DILocation(line: 854, column: 54, scope: !2381)
!2384 = !DILocation(line: 854, column: 68, scope: !2381)
!2385 = !DILocation(line: 854, column: 38, scope: !2381)
!2386 = !DILocation(line: 854, column: 32, scope: !2381)
!2387 = !DILocation(line: 855, column: 22, scope: !2381)
!2388 = !DILocation(line: 855, column: 37, scope: !2381)
!2389 = !DILocation(line: 855, column: 28, scope: !2381)
!2390 = !DILocation(line: 855, column: 44, scope: !2381)
!2391 = !DILocation(line: 854, column: 70, scope: !2381)
!2392 = !DILocation(line: 856, column: 28, scope: !2381)
!2393 = !DILocation(line: 856, column: 35, scope: !2381)
!2394 = !DILocation(line: 856, column: 14, scope: !2381)
!2395 = !DILocation(line: 856, column: 13, scope: !2381)
!2396 = !DILocation(line: 855, column: 60, scope: !2381)
!2397 = !DILocation(line: 854, column: 21, scope: !2381)
!2398 = !DILocation(line: 854, column: 19, scope: !2381)
!2399 = !DILocation(line: 858, column: 9, scope: !2381)
!2400 = !DILocation(line: 859, column: 19, scope: !1504)
!2401 = !DILocation(line: 859, column: 36, scope: !1504)
!2402 = !DILocation(line: 859, column: 11, scope: !1486)
!2403 = !DILocation(line: 0, scope: !1576, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 864, column: 19, scope: !1503)
!2405 = !DILocation(line: 30, column: 3, scope: !1576, inlinedAt: !2404)
!2406 = !DILocation(line: 31, column: 5, scope: !1576, inlinedAt: !2404)
!2407 = !DILocation(line: 33, column: 14, scope: !1590, inlinedAt: !2404)
!2408 = !DILocation(line: 33, column: 31, scope: !1590, inlinedAt: !2404)
!2409 = !DILocation(line: 33, column: 7, scope: !1576, inlinedAt: !2404)
!2410 = !DILocation(line: 37, column: 1, scope: !1576, inlinedAt: !2404)
!2411 = !DILocation(line: 0, scope: !1503)
!2412 = !DILocation(line: 865, column: 15, scope: !1503)
!2413 = !DILocation(line: 35, column: 70, scope: !1576, inlinedAt: !2404)
!2414 = !DILocation(line: 35, column: 10, scope: !1576, inlinedAt: !2404)
!2415 = !DILocation(line: 36, column: 17, scope: !1576, inlinedAt: !2404)
!2416 = !DILocation(line: 36, column: 63, scope: !1576, inlinedAt: !2404)
!2417 = !DILocation(line: 36, column: 10, scope: !1576, inlinedAt: !2404)
!2418 = !DILocation(line: 868, column: 37, scope: !1486)
!2419 = !DILocation(line: 868, column: 24, scope: !1486)
!2420 = !DILocation(line: 868, column: 23, scope: !1486)
!2421 = !DILocation(line: 869, column: 13, scope: !1486)
!2422 = !DILocation(line: 870, column: 12, scope: !1486)
!2423 = !DILocation(line: 721, column: 23, scope: !1487)
!2424 = distinct !{!2424, !2191, !2425, !1555, !1556}
!2425 = !DILocation(line: 871, column: 5, scope: !1488)
!2426 = !DILocation(line: 873, column: 11, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !1478, file: !961, line: 873, column: 9)
!2428 = !DILocation(line: 873, column: 15, scope: !2427)
!2429 = !DILocation(line: 873, column: 9, scope: !1478)
!2430 = !DILocation(line: 878, column: 9, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !961, line: 874, column: 7)
!2432 = !DILocation(line: 879, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2431, file: !961, line: 879, column: 13)
!2434 = !DILocation(line: 879, column: 41, scope: !2433)
!2435 = !DILocation(line: 879, column: 13, scope: !2431)
!2436 = !DILocation(line: 881, column: 21, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !961, line: 880, column: 11)
!2438 = !DILocation(line: 882, column: 13, scope: !2437)
!2439 = !DILocation(line: 884, column: 17, scope: !2431)
!2440 = !DILocation(line: 885, column: 18, scope: !2431)
!2441 = !DILocation(line: 885, column: 49, scope: !2431)
!2442 = !DILocation(line: 886, column: 19, scope: !2431)
!2443 = !DILocation(line: 887, column: 22, scope: !2431)
!2444 = !DILocation(line: 888, column: 7, scope: !2431)
!2445 = distinct !{!2445, !1923, !2446, !1555, !1556}
!2446 = !DILocation(line: 889, column: 3, scope: !1480)
!2447 = !DILocation(line: 890, column: 14, scope: !1396)
!2448 = !DILocation(line: 891, column: 15, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !1396, file: !961, line: 891, column: 7)
!2450 = !DILocation(line: 891, column: 7, scope: !1396)
!2451 = !DILocation(line: 892, column: 13, scope: !2449)
!2452 = !DILocation(line: 892, column: 5, scope: !2449)
!2453 = !DILocation(line: 893, column: 9, scope: !1396)
!2454 = !DILocation(line: 894, column: 26, scope: !1396)
!2455 = !DILocation(line: 895, column: 13, scope: !1396)
!2456 = !DILocation(line: 896, column: 14, scope: !1396)
!2457 = !DILocation(line: 897, column: 10, scope: !1396)
!2458 = !DILocation(line: 897, column: 3, scope: !1396)
!2459 = !DILocation(line: 898, column: 1, scope: !1396)
!2460 = !DISubprogram(name: "DestroyImageInfo", scope: !50, file: !50, line: 522, type: !2461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!1387, !1387}
!2463 = !DISubprogram(name: "GetImageListLength", scope: !2464, file: !2464, line: 45, type: !2465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2464 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!592, !1021}
!2467 = !DISubprogram(name: "ImageListToArray", scope: !2464, file: !2464, line: 35, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!621, !1021, !1223}
!2470 = !DISubprogram(name: "NewImageList", scope: !2464, file: !2464, line: 36, type: !2471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!622}
!2473 = !DISubprogram(name: "CloneImage", scope: !50, file: !50, line: 508, type: !2474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!622, !1021, !1025, !1025, !2476, !1223}
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!2477 = !DISubprogram(name: "ParseAbsoluteGeometry", scope: !10, file: !10, line: 141, type: !2478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!1433, !738, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!2481 = !DISubprogram(name: "SetImageProgressMonitor", scope: !734, file: !734, line: 30, type: !2482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!733, !622, !2484, !619}
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!2485 = !DISubprogram(name: "ParseRegionGeometry", scope: !10, file: !10, line: 148, type: !2486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!1433, !1021, !738, !2480, !1223}
!2488 = !DISubprogram(name: "ThumbnailImage", scope: !2489, file: !2489, line: 42, type: !2490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2489 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3d8d663b1b2fd0b2a79f67f76b4db66b")
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!622, !1021, !1025, !1025, !1223}
!2492 = !DISubprogram(name: "DestroyImage", scope: !50, file: !50, line: 510, type: !2493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!622, !622}
!2495 = !DISubprogram(name: "qsort", scope: !2496, file: !2496, line: 830, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2496 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !619, !592, !592, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2496, line: 808, baseType: !2500)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!620, !1023, !1023}
!2503 = distinct !DISubprogram(name: "SceneCompare", scope: !961, file: !961, line: 306, type: !2501, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2504)
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DILocalVariable(name: "x", arg: 1, scope: !2503, file: !961, line: 306, type: !1023)
!2506 = !DILocalVariable(name: "y", arg: 2, scope: !2503, file: !961, line: 306, type: !1023)
!2507 = !DILocalVariable(name: "image_1", scope: !2503, file: !961, line: 309, type: !621)
!2508 = !DILocalVariable(name: "image_2", scope: !2503, file: !961, line: 310, type: !621)
!2509 = !DILocation(line: 0, scope: !2503)
!2510 = !DILocation(line: 314, column: 18, scope: !2503)
!2511 = !DILocation(line: 314, column: 29, scope: !2503)
!2512 = !DILocation(line: 314, column: 36, scope: !2503)
!2513 = !DILocation(line: 314, column: 47, scope: !2503)
!2514 = !DILocation(line: 314, column: 34, scope: !2503)
!2515 = !DILocation(line: 314, column: 10, scope: !2503)
!2516 = !DILocation(line: 314, column: 3, scope: !2503)
!2517 = !DISubprogram(name: "SetGeometry", scope: !10, file: !10, line: 154, type: !2518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !1021, !2480}
!2520 = !DISubprogram(name: "GetGeometry", scope: !10, file: !10, line: 140, type: !2521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!1433, !738, !1662, !1662, !1663, !1663}
!2523 = !DISubprogram(name: "FormatLocaleString", scope: !2524, file: !2524, line: 71, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2524 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!670, !2527, !1025, !2528, null}
!2527 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !582)
!2528 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !738)
!2529 = !DISubprogram(name: "ParseMetaGeometry", scope: !10, file: !10, line: 146, type: !2521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2530 = !DISubprogram(name: "CloneImageInfo", scope: !50, file: !50, line: 521, type: !2531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!1387, !964}
!2533 = !DISubprogram(name: "CloneDrawInfo", scope: !470, file: !470, line: 376, type: !2534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!822, !964, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!2538 = !DISubprogram(name: "CloneString", scope: !1233, file: !1233, line: 44, type: !2539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!582, !2541, !738}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!2542 = !DISubprogram(name: "GetTypeMetrics", scope: !2543, file: !2543, line: 31, type: !2544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2543 = !DIFile(filename: "apps/538.imagick_r/src/magick/annotate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "31b56aa83cbe48792cad832046a8451e")
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!596, !622, !2536, !2546}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!2547 = !DISubprogram(name: "ReadImage", scope: !2548, file: !2548, line: 42, type: !2549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2548 = !DIFile(filename: "apps/538.imagick_r/src/magick/constitute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "43cd9878a55016fc93758a53f2f400b5")
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!622, !964, !1223}
!2551 = !DISubprogram(name: "InterpretImageProperties", scope: !2552, file: !2552, line: 27, type: !2553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2552 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!582, !964, !622, !738}
!2555 = !DISubprogram(name: "MultilineCensus", scope: !2556, file: !2556, line: 56, type: !2557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2556 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!592, !738}
!2559 = !DISubprogram(name: "GetImageProperty", scope: !2552, file: !2552, line: 31, type: !2560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!738, !1021, !738}
!2562 = !DISubprogram(name: "AcquireImage", scope: !50, file: !50, line: 506, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!622, !964}
!2565 = !DISubprogram(name: "SetImageBackgroundColor", scope: !50, file: !50, line: 534, type: !2566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!596, !622}
!2568 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1216, file: !1216, line: 42, type: !2569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!619, !1025, !1025}
!2571 = !DISubprogram(name: "ConcatenateMagickString", scope: !1233, file: !1233, line: 76, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2572 = !DISubprogram(name: "TextureImage", scope: !237, file: !237, line: 114, type: !2573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!596, !622, !1021}
!2575 = !DISubprogram(name: "AnnotateImage", scope: !2543, file: !2543, line: 29, type: !2576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!596, !622, !2536}
!2578 = !DISubprogram(name: "DestroyDrawInfo", scope: !470, file: !470, line: 377, type: !2579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!822, !822}
!2581 = !DISubprogram(name: "BorderImage", scope: !1410, file: !1410, line: 39, type: !2582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!622, !1021, !2584, !1223}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!2586 = !DISubprogram(name: "NegateImageChannel", scope: !2587, file: !2587, line: 62, type: !2588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2587 = !DIFile(filename: "apps/538.imagick_r/src/magick/enhance.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6a9430b6e6c4409433b996fd04287515")
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!596, !622, !2590, !2476}
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!2591 = !DISubprogram(name: "ParseGravityGeometry", scope: !10, file: !10, line: 144, type: !2486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2592 = !DISubprogram(name: "FrameImage", scope: !1410, file: !1410, line: 40, type: !2593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!622, !1021, !2595, !1223}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!2597 = !DISubprogram(name: "LocaleCompare", scope: !1233, file: !1233, line: 66, type: !2598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!620, !738, !738}
!2600 = !DISubprogram(name: "QueryColorDatabase", scope: !711, file: !711, line: 87, type: !2601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!596, !738, !642, !1223}
!2603 = !DISubprogram(name: "ShadowImage", scope: !2604, file: !2604, line: 53, type: !2605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2604 = !DIFile(filename: "apps/538.imagick_r/src/magick/fx.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd08d328d828970731689944b1df77bd")
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!622, !1021, !2607, !2607, !1786, !1786, !1223}
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!2608 = !DISubprogram(name: "InheritException", scope: !322, file: !322, line: 167, type: !2609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !1223, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!2613 = !DISubprogram(name: "CompositeImage", scope: !237, file: !237, line: 110, type: !2614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!596, !622, !2616, !1021, !1786, !1786}
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!2617 = !DISubprogram(name: "AcquireNextImage", scope: !50, file: !50, line: 562, type: !2618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !964, !622}
!2620 = !DISubprogram(name: "GetNextImageInList", scope: !2464, file: !2464, line: 33, type: !2621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!622, !1021}
!2623 = !DISubprogram(name: "DestroyImageList", scope: !2464, file: !2464, line: 28, type: !2493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
!2624 = !DISubprogram(name: "GetFirstImageInList", scope: !2464, file: !2464, line: 30, type: !2621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1219)
