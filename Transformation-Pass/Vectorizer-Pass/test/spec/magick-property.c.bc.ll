; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/wand/magick-property.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/magick-property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagickWand = type { i64, [4096 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
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
%struct._GeometryInfo = type { double, double, double, double, double }

@.str = private unnamed_addr constant [92 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/magick-property.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ContainsNoImages\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"exif:*\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"interpolate\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%gx%g\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%g,\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"%.20gx%.20g\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"%.20gx%.20g%+.20g\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickDeleteImageArtifact(ptr noundef %wand, ptr noundef %artifact) local_unnamed_addr #0 !dbg !1037 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1070, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !1071, metadata !DIExpression()), !dbg !1072
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1073
  %0 = load i32, ptr %debug, align 8, !dbg !1073, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1081
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1082

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1083
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 86, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1084
  br label %if.end, !dbg !1085

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1086
  %1 = load ptr, ptr %images, align 8, !dbg !1086, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !1089
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1090

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1091
  %2 = load ptr, ptr %exception, align 8, !dbg !1091, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1094
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 89, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !1095
  br label %return, !dbg !1096

if.end6:                                          ; preds = %if.end
  %call8 = tail call i32 @DeleteImageArtifact(ptr noundef nonnull %1, ptr noundef %artifact) #9, !dbg !1097
  br label %return, !dbg !1098

return:                                           ; preds = %if.end6, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call8, %if.end6 ], !dbg !1072
  ret i32 %retval.0, !dbg !1099
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !1100 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1106 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1110 i32 @DeleteImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickDeleteImageProperty(ptr noundef %wand, ptr noundef %property) local_unnamed_addr #0 !dbg !1114 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1116, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr %property, metadata !1117, metadata !DIExpression()), !dbg !1118
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1119
  %0 = load i32, ptr %debug, align 8, !dbg !1119, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1121
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1122

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1123
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 127, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1124
  br label %if.end, !dbg !1125

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1126
  %1 = load ptr, ptr %images, align 8, !dbg !1126, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !1128
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1129

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1130
  %2 = load ptr, ptr %exception, align 8, !dbg !1130, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1132
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 130, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !1133
  br label %return, !dbg !1134

if.end6:                                          ; preds = %if.end
  %call8 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %1, ptr noundef %property) #9, !dbg !1135
  br label %return, !dbg !1136

return:                                           ; preds = %if.end6, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call8, %if.end6 ], !dbg !1118
  ret i32 %retval.0, !dbg !1137
}

declare !dbg !1138 i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickDeleteOption(ptr noundef %wand, ptr noundef %option) local_unnamed_addr #0 !dbg !1140 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1142, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr %option, metadata !1143, metadata !DIExpression()), !dbg !1144
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1145
  %0 = load i32, ptr %debug, align 8, !dbg !1145, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1147
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1148

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1149
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1150
  br label %if.end, !dbg !1151

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1152
  %1 = load ptr, ptr %image_info, align 8, !dbg !1152, !tbaa !1153
  %call1 = tail call i32 @DeleteImageOption(ptr noundef %1, ptr noundef %option) #9, !dbg !1154
  ret i32 %call1, !dbg !1155
}

declare !dbg !1156 i32 @DeleteImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetAntialias(ptr noundef %wand) local_unnamed_addr #0 !dbg !1159 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1165, metadata !DIExpression()), !dbg !1166
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1167
  %0 = load i32, ptr %debug, align 8, !dbg !1167, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1169
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1170

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1171
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 200, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1172
  br label %if.end, !dbg !1173

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1174
  %1 = load ptr, ptr %image_info, align 8, !dbg !1174, !tbaa !1153
  %antialias = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 5, !dbg !1175
  %2 = load i32, ptr %antialias, align 4, !dbg !1175, !tbaa !1176
  ret i32 %2, !dbg !1181
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetBackgroundColor(ptr noundef %wand) local_unnamed_addr #0 !dbg !1182 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1190, metadata !DIExpression()), !dbg !1192
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1193
  %0 = load i32, ptr %debug, align 8, !dbg !1193, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1195
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1196

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1197
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 234, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1198
  br label %if.end, !dbg !1199

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @NewPixelWand() #9, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1191, metadata !DIExpression()), !dbg !1192
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1201
  %1 = load ptr, ptr %image_info, align 8, !dbg !1201, !tbaa !1153
  %background_color2 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 24, !dbg !1202
  tail call void @PixelSetQuantumColor(ptr noundef %call1, ptr noundef nonnull %background_color2) #9, !dbg !1203
  ret ptr %call1, !dbg !1204
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !1205 ptr @NewPixelWand() local_unnamed_addr #2

declare !dbg !1208 void @PixelSetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetColorspace(ptr noundef %wand) local_unnamed_addr #0 !dbg !1213 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1217, metadata !DIExpression()), !dbg !1218
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1219
  %0 = load i32, ptr %debug, align 8, !dbg !1219, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1221
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1222

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1223
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 267, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1224
  br label %if.end, !dbg !1225

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1226
  %1 = load ptr, ptr %image_info, align 8, !dbg !1226, !tbaa !1153
  %colorspace = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 30, !dbg !1227
  %2 = load i32, ptr %colorspace, align 8, !dbg !1227, !tbaa !1228
  ret i32 %2, !dbg !1229
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetCompression(ptr noundef %wand) local_unnamed_addr #0 !dbg !1230 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1234, metadata !DIExpression()), !dbg !1235
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1236
  %0 = load i32, ptr %debug, align 8, !dbg !1236, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1238
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1239

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1240
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 298, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1241
  br label %if.end, !dbg !1242

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1243
  %1 = load ptr, ptr %image_info, align 8, !dbg !1243, !tbaa !1153
  %2 = load i32, ptr %1, align 8, !dbg !1244, !tbaa !1245
  ret i32 %2, !dbg !1246
}

; Function Attrs: nounwind uwtable
define dso_local i64 @MagickGetCompressionQuality(ptr noundef %wand) local_unnamed_addr #0 !dbg !1247 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1251, metadata !DIExpression()), !dbg !1252
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1253
  %0 = load i32, ptr %debug, align 8, !dbg !1253, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1255
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1256

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1257
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 329, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1258
  br label %if.end, !dbg !1259

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1260
  %1 = load ptr, ptr %image_info, align 8, !dbg !1260, !tbaa !1153
  %quality = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 16, !dbg !1261
  %2 = load i64, ptr %quality, align 8, !dbg !1261, !tbaa !1262
  ret i64 %2, !dbg !1263
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetCopyright() local_unnamed_addr #0 !dbg !1264 {
entry:
  %call = tail call ptr @GetMagickCopyright() #9, !dbg !1267
  ret ptr %call, !dbg !1268
}

declare !dbg !1269 ptr @GetMagickCopyright() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetFilename(ptr noundef %wand) local_unnamed_addr #0 !dbg !1271 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1275, metadata !DIExpression()), !dbg !1276
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1277
  %0 = load i32, ptr %debug, align 8, !dbg !1277, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1279
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1280

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1281
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 384, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1282
  br label %if.end, !dbg !1283

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1284
  %1 = load ptr, ptr %image_info, align 8, !dbg !1284, !tbaa !1153
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 51, !dbg !1285
  %call2 = tail call ptr @AcquireString(ptr noundef nonnull %filename) #9, !dbg !1286
  ret ptr %call2, !dbg !1287
}

declare !dbg !1288 ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetFont(ptr noundef %wand) local_unnamed_addr #0 !dbg !1291 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1295, metadata !DIExpression()), !dbg !1296
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1297
  %0 = load i32, ptr %debug, align 8, !dbg !1297, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1299
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1300

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1301
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 415, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1302
  br label %if.end, !dbg !1303

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1304
  %1 = load ptr, ptr %image_info, align 8, !dbg !1304, !tbaa !1153
  %font = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 19, !dbg !1306
  %2 = load ptr, ptr %font, align 8, !dbg !1306, !tbaa !1307
  %cmp1 = icmp eq ptr %2, null, !dbg !1308
  br i1 %cmp1, label %return, label %if.end3, !dbg !1309

if.end3:                                          ; preds = %if.end
  %call6 = tail call ptr @AcquireString(ptr noundef nonnull %2) #9, !dbg !1310
  br label %return, !dbg !1311

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call6, %if.end3 ], [ null, %if.end ], !dbg !1296
  ret ptr %retval.0, !dbg !1312
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetFormat(ptr noundef %wand) local_unnamed_addr #0 !dbg !1313 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1315, metadata !DIExpression()), !dbg !1316
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1317
  %0 = load i32, ptr %debug, align 8, !dbg !1317, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1319
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1320

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1321
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 448, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1322
  br label %if.end, !dbg !1323

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1324
  %1 = load ptr, ptr %image_info, align 8, !dbg !1324, !tbaa !1153
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 48, !dbg !1325
  %call2 = tail call ptr @AcquireString(ptr noundef nonnull %magick) #9, !dbg !1326
  ret ptr %call2, !dbg !1327
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetGravity(ptr noundef %wand) local_unnamed_addr #0 !dbg !1328 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1332, metadata !DIExpression()), !dbg !1335
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1336
  %0 = load i32, ptr %debug, align 8, !dbg !1336, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1338
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1339

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1340
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 485, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1341
  br label %if.end, !dbg !1342

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1343
  %1 = load ptr, ptr %image_info, align 8, !dbg !1343, !tbaa !1153
  %call1 = tail call ptr @GetImageOption(ptr noundef %1, ptr noundef nonnull @.str.5) #9, !dbg !1344
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1333, metadata !DIExpression()), !dbg !1335
  %cmp2 = icmp eq ptr %call1, null, !dbg !1345
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1347

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %call1) #9, !dbg !1348
  %conv = trunc i64 %call5 to i32, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1334, metadata !DIExpression()), !dbg !1335
  br label %cleanup, !dbg !1350

cleanup:                                          ; preds = %if.end, %if.end4
  %retval.0 = phi i32 [ %conv, %if.end4 ], [ 0, %if.end ], !dbg !1335
  ret i32 %retval.0, !dbg !1351
}

declare !dbg !1352 ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1355 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetHomeURL() local_unnamed_addr #0 !dbg !1361 {
entry:
  %call = tail call ptr @GetMagickHomeURL() #9, !dbg !1364
  ret ptr %call, !dbg !1365
}

declare !dbg !1366 ptr @GetMagickHomeURL() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageArtifact(ptr noundef %wand, ptr noundef %artifact) local_unnamed_addr #0 !dbg !1367 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1371, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !1372, metadata !DIExpression()), !dbg !1374
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1375
  %0 = load i32, ptr %debug, align 8, !dbg !1375, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1377
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1378

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1379
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 550, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1380
  br label %if.end, !dbg !1381

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1382
  %1 = load ptr, ptr %images, align 8, !dbg !1382, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !1384
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1385

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1386
  %2 = load ptr, ptr %exception, align 8, !dbg !1386, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1388
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 553, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !1389
  br label %cleanup, !dbg !1390

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @GetImageArtifact(ptr noundef nonnull %1, ptr noundef %artifact) #9, !dbg !1391
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1373, metadata !DIExpression()), !dbg !1374
  %cmp9 = icmp eq ptr %call8, null, !dbg !1392
  br i1 %cmp9, label %cleanup, label %if.end11, !dbg !1394

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @ConstantString(ptr noundef nonnull %call8) #9, !dbg !1395
  br label %cleanup, !dbg !1396

cleanup:                                          ; preds = %if.end6, %if.end11, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ %call12, %if.end11 ], [ null, %if.end6 ], !dbg !1374
  ret ptr %retval.0, !dbg !1397
}

declare !dbg !1398 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1401 ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageArtifacts(ptr noundef %wand, ptr noundef %pattern, ptr nocapture noundef writeonly %number_artifacts) local_unnamed_addr #0 !dbg !1402 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1407, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1408, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %number_artifacts, metadata !1409, metadata !DIExpression()), !dbg !1414
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1415
  %0 = load i32, ptr %debug, align 8, !dbg !1415, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1417
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1418

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1419
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 611, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1420
  br label %if.end, !dbg !1421

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1422
  %1 = load ptr, ptr %images, align 8, !dbg !1422, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !1424
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1425

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1426
  %2 = load ptr, ptr %exception, align 8, !dbg !1426, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1428
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 614, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !1429
  br label %cleanup, !dbg !1430

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull @.str.6) #9, !dbg !1431
  call void @llvm.dbg.value(metadata i64 1024, metadata !1413, metadata !DIExpression()), !dbg !1414
  %call9 = tail call ptr @AcquireQuantumMemory(i64 noundef 1024, i64 noundef 8) #10, !dbg !1432
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1410, metadata !DIExpression()), !dbg !1414
  %cmp10 = icmp eq ptr %call9, null, !dbg !1433
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !1435

if.end12:                                         ; preds = %if.end6
  %3 = load ptr, ptr %images, align 8, !dbg !1436, !tbaa !1088
  tail call void @ResetImagePropertyIterator(ptr noundef %3) #9, !dbg !1437
  %4 = load ptr, ptr %images, align 8, !dbg !1438, !tbaa !1088
  %call15 = tail call ptr @GetNextImageProperty(ptr noundef %4) #9, !dbg !1439
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1411, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 0, metadata !1412, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 1024, metadata !1413, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1410, metadata !DIExpression()), !dbg !1414
  %cmp16.not71 = icmp eq ptr %call15, null, !dbg !1440
  br i1 %cmp16.not71, label %for.end, label %for.body, !dbg !1443

for.body:                                         ; preds = %if.end12, %if.end37
  %length.075 = phi i64 [ %length.2, %if.end37 ], [ 1024, %if.end12 ]
  %i.074 = phi i64 [ %i.1, %if.end37 ], [ 0, %if.end12 ]
  %artifact.073 = phi ptr [ %call39, %if.end37 ], [ %call15, %if.end12 ]
  %artifacts.072 = phi ptr [ %artifacts.2, %if.end37 ], [ %call9, %if.end12 ]
  call void @llvm.dbg.value(metadata i64 %length.075, metadata !1413, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %i.074, metadata !1412, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %artifact.073, metadata !1411, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %artifacts.072, metadata !1410, metadata !DIExpression()), !dbg !1414
  %5 = load i8, ptr %artifact.073, align 1, !dbg !1444, !tbaa !1447
  %cmp17.not = icmp eq i8 %5, 91, !dbg !1448
  br i1 %cmp17.not, label %if.end37, label %land.lhs.true, !dbg !1449

land.lhs.true:                                    ; preds = %for.body
  %call19 = tail call i32 @GlobExpression(ptr noundef nonnull %artifact.073, ptr noundef %pattern, i32 noundef 0) #9, !dbg !1450
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !1451
  br i1 %cmp20.not, label %if.end37, label %if.then22, !dbg !1452

if.then22:                                        ; preds = %land.lhs.true
  %add = add nsw i64 %i.074, 1, !dbg !1453
  %cmp23.not = icmp slt i64 %add, %length.075, !dbg !1456
  br i1 %cmp23.not, label %if.end35, label %if.then25, !dbg !1457

if.then25:                                        ; preds = %if.then22
  %shl = shl i64 %length.075, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1413, metadata !DIExpression()), !dbg !1414
  %call26 = tail call ptr @ResizeQuantumMemory(ptr noundef %artifacts.072, i64 noundef %shl, i64 noundef 8) #11, !dbg !1460
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1410, metadata !DIExpression()), !dbg !1414
  %cmp27 = icmp eq ptr %call26, null, !dbg !1461
  br i1 %cmp27, label %if.then29, label %if.end35, !dbg !1463

if.then29:                                        ; preds = %if.then25
  %exception30 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1464
  %6 = load ptr, ptr %exception30, align 8, !dbg !1464, !tbaa !1093
  %name31 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1466
  %call33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 637, i32 noundef 400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %name31) #9, !dbg !1467
  br label %cleanup, !dbg !1468

if.end35:                                         ; preds = %if.then25, %if.then22
  %artifacts.1 = phi ptr [ %call26, %if.then25 ], [ %artifacts.072, %if.then22 ], !dbg !1414
  %length.1 = phi i64 [ %shl, %if.then25 ], [ %length.075, %if.then22 ], !dbg !1414
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !1413, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %artifacts.1, metadata !1410, metadata !DIExpression()), !dbg !1414
  %call36 = tail call ptr @ConstantString(ptr noundef nonnull %artifact.073) #9, !dbg !1469
  %arrayidx = getelementptr inbounds ptr, ptr %artifacts.1, i64 %i.074, !dbg !1470
  store ptr %call36, ptr %arrayidx, align 8, !dbg !1471, !tbaa !1472
  call void @llvm.dbg.value(metadata i64 %add, metadata !1412, metadata !DIExpression()), !dbg !1414
  br label %if.end37, !dbg !1473

if.end37:                                         ; preds = %if.end35, %land.lhs.true, %for.body
  %artifacts.2 = phi ptr [ %artifacts.1, %if.end35 ], [ %artifacts.072, %land.lhs.true ], [ %artifacts.072, %for.body ], !dbg !1414
  %i.1 = phi i64 [ %add, %if.end35 ], [ %i.074, %land.lhs.true ], [ %i.074, %for.body ], !dbg !1474
  %length.2 = phi i64 [ %length.1, %if.end35 ], [ %length.075, %land.lhs.true ], [ %length.075, %for.body ], !dbg !1414
  call void @llvm.dbg.value(metadata i64 %length.2, metadata !1413, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1412, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %artifacts.2, metadata !1410, metadata !DIExpression()), !dbg !1414
  %7 = load ptr, ptr %images, align 8, !dbg !1475, !tbaa !1088
  %call39 = tail call ptr @GetNextImageProperty(ptr noundef %7) #9, !dbg !1476
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1411, metadata !DIExpression()), !dbg !1414
  %cmp16.not = icmp eq ptr %call39, null, !dbg !1440
  br i1 %cmp16.not, label %for.end, label %for.body, !dbg !1443, !llvm.loop !1477

for.end:                                          ; preds = %if.end37, %if.end12
  %artifacts.0.lcssa = phi ptr [ %call9, %if.end12 ], [ %artifacts.2, %if.end37 ], !dbg !1414
  %i.0.lcssa = phi i64 [ 0, %if.end12 ], [ %i.1, %if.end37 ], !dbg !1474
  %arrayidx40 = getelementptr inbounds ptr, ptr %artifacts.0.lcssa, i64 %i.0.lcssa, !dbg !1481
  store ptr null, ptr %arrayidx40, align 8, !dbg !1482, !tbaa !1472
  store i64 %i.0.lcssa, ptr %number_artifacts, align 8, !dbg !1483, !tbaa !1484
  br label %cleanup, !dbg !1485

cleanup:                                          ; preds = %if.end6, %for.end, %if.then29, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %if.then29 ], [ %artifacts.0.lcssa, %for.end ], [ null, %if.end6 ], !dbg !1414
  ret ptr %retval.0, !dbg !1486
}

declare !dbg !1487 ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare !dbg !1488 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1492 void @ResetImagePropertyIterator(ptr noundef) local_unnamed_addr #2

declare !dbg !1495 ptr @GetNextImageProperty(ptr noundef) local_unnamed_addr #2

declare !dbg !1498 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1,2)
declare !dbg !1502 ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageProfile(ptr noundef %wand, ptr noundef %name, ptr nocapture noundef writeonly %length) local_unnamed_addr #0 !dbg !1505 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1509, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata ptr %name, metadata !1510, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata ptr %length, metadata !1511, metadata !DIExpression()), !dbg !1516
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1517
  %0 = load i32, ptr %debug, align 8, !dbg !1517, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1519
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1520

if.then:                                          ; preds = %entry
  %name1 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1521
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 692, ptr noundef nonnull @.str.2, ptr noundef nonnull %name1) #9, !dbg !1522
  br label %if.end, !dbg !1523

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1524
  %1 = load ptr, ptr %images, align 8, !dbg !1524, !tbaa !1088
  %cmp2 = icmp eq ptr %1, null, !dbg !1526
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !1527

if.then3:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1528
  %2 = load ptr, ptr %exception, align 8, !dbg !1528, !tbaa !1093
  %name4 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1530
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 695, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name4) #9, !dbg !1531
  br label %cleanup, !dbg !1532

if.end7:                                          ; preds = %if.end
  store i64 0, ptr %length, align 8, !dbg !1533, !tbaa !1484
  %profiles = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 18, !dbg !1534
  %3 = load ptr, ptr %profiles, align 8, !dbg !1534, !tbaa !1536
  %cmp9 = icmp eq ptr %3, null, !dbg !1548
  br i1 %cmp9, label %cleanup, label %if.end11, !dbg !1549

if.end11:                                         ; preds = %if.end7
  %call13 = tail call ptr @GetImageProfile(ptr noundef nonnull %1, ptr noundef %name) #9, !dbg !1550
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1512, metadata !DIExpression()), !dbg !1516
  %cmp14 = icmp eq ptr %call13, null, !dbg !1551
  br i1 %cmp14, label %cleanup, label %if.end16, !dbg !1553

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %call13) #9, !dbg !1554
  %call18 = tail call ptr @AcquireQuantumMemory(i64 noundef %call17, i64 noundef 1) #10, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1515, metadata !DIExpression()), !dbg !1516
  %cmp19 = icmp eq ptr %call18, null, !dbg !1556
  br i1 %cmp19, label %cleanup, label %if.end21, !dbg !1558

if.end21:                                         ; preds = %if.end16
  %call22 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %call13) #9, !dbg !1559
  %call23 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %call13) #9, !dbg !1560
  %call24 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %call18, ptr noundef %call22, i64 noundef %call23) #9, !dbg !1561
  %call25 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %call13) #9, !dbg !1562
  store i64 %call25, ptr %length, align 8, !dbg !1563, !tbaa !1484
  br label %cleanup, !dbg !1564

cleanup:                                          ; preds = %if.end16, %if.end11, %if.end7, %if.end21, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call18, %if.end21 ], [ null, %if.end7 ], [ null, %if.end11 ], [ null, %if.end16 ], !dbg !1516
  ret ptr %retval.0, !dbg !1565
}

declare !dbg !1566 ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1569 i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #2

declare !dbg !1572 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1575 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageProfiles(ptr noundef %wand, ptr noundef %pattern, ptr nocapture noundef writeonly %number_profiles) local_unnamed_addr #0 !dbg !1578 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1580, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1581, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %number_profiles, metadata !1582, metadata !DIExpression()), !dbg !1587
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1588
  %0 = load i32, ptr %debug, align 8, !dbg !1588, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1590
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1591

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1592
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 763, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1593
  br label %if.end, !dbg !1594

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1595
  %1 = load ptr, ptr %images, align 8, !dbg !1595, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !1597
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1598

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1599
  %2 = load ptr, ptr %exception, align 8, !dbg !1599, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1601
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 766, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !1602
  br label %cleanup, !dbg !1603

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @GetImageProfile(ptr noundef nonnull %1, ptr noundef nonnull @.str.6) #9, !dbg !1604
  call void @llvm.dbg.value(metadata i64 1024, metadata !1586, metadata !DIExpression()), !dbg !1587
  %call9 = tail call ptr @AcquireQuantumMemory(i64 noundef 1024, i64 noundef 8) #10, !dbg !1605
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1583, metadata !DIExpression()), !dbg !1587
  %cmp10 = icmp eq ptr %call9, null, !dbg !1606
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !1608

if.end12:                                         ; preds = %if.end6
  %3 = load ptr, ptr %images, align 8, !dbg !1609, !tbaa !1088
  tail call void @ResetImageProfileIterator(ptr noundef %3) #9, !dbg !1610
  %4 = load ptr, ptr %images, align 8, !dbg !1611, !tbaa !1088
  %call15 = tail call ptr @GetNextImageProfile(ptr noundef %4) #9, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1584, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 0, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 1024, metadata !1586, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1583, metadata !DIExpression()), !dbg !1587
  %cmp16.not71 = icmp eq ptr %call15, null, !dbg !1613
  br i1 %cmp16.not71, label %for.end, label %for.body, !dbg !1616

for.body:                                         ; preds = %if.end12, %if.end37
  %length.075 = phi i64 [ %length.2, %if.end37 ], [ 1024, %if.end12 ]
  %i.074 = phi i64 [ %i.1, %if.end37 ], [ 0, %if.end12 ]
  %property.073 = phi ptr [ %call39, %if.end37 ], [ %call15, %if.end12 ]
  %profiles.072 = phi ptr [ %profiles.2, %if.end37 ], [ %call9, %if.end12 ]
  call void @llvm.dbg.value(metadata i64 %length.075, metadata !1586, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %i.074, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %property.073, metadata !1584, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %profiles.072, metadata !1583, metadata !DIExpression()), !dbg !1587
  %5 = load i8, ptr %property.073, align 1, !dbg !1617, !tbaa !1447
  %cmp17.not = icmp eq i8 %5, 91, !dbg !1620
  br i1 %cmp17.not, label %if.end37, label %land.lhs.true, !dbg !1621

land.lhs.true:                                    ; preds = %for.body
  %call19 = tail call i32 @GlobExpression(ptr noundef nonnull %property.073, ptr noundef %pattern, i32 noundef 0) #9, !dbg !1622
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !1623
  br i1 %cmp20.not, label %if.end37, label %if.then22, !dbg !1624

if.then22:                                        ; preds = %land.lhs.true
  %add = add nsw i64 %i.074, 1, !dbg !1625
  %cmp23.not = icmp slt i64 %add, %length.075, !dbg !1628
  br i1 %cmp23.not, label %if.end35, label %if.then25, !dbg !1629

if.then25:                                        ; preds = %if.then22
  %shl = shl i64 %length.075, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1586, metadata !DIExpression()), !dbg !1587
  %call26 = tail call ptr @ResizeQuantumMemory(ptr noundef %profiles.072, i64 noundef %shl, i64 noundef 8) #11, !dbg !1632
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1583, metadata !DIExpression()), !dbg !1587
  %cmp27 = icmp eq ptr %call26, null, !dbg !1633
  br i1 %cmp27, label %if.then29, label %if.end35, !dbg !1635

if.then29:                                        ; preds = %if.then25
  %exception30 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1636
  %6 = load ptr, ptr %exception30, align 8, !dbg !1636, !tbaa !1093
  %name31 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1638
  %call33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 789, i32 noundef 400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %name31) #9, !dbg !1639
  br label %cleanup, !dbg !1640

if.end35:                                         ; preds = %if.then25, %if.then22
  %profiles.1 = phi ptr [ %call26, %if.then25 ], [ %profiles.072, %if.then22 ], !dbg !1587
  %length.1 = phi i64 [ %shl, %if.then25 ], [ %length.075, %if.then22 ], !dbg !1587
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !1586, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %profiles.1, metadata !1583, metadata !DIExpression()), !dbg !1587
  %call36 = tail call ptr @ConstantString(ptr noundef nonnull %property.073) #9, !dbg !1641
  %arrayidx = getelementptr inbounds ptr, ptr %profiles.1, i64 %i.074, !dbg !1642
  store ptr %call36, ptr %arrayidx, align 8, !dbg !1643, !tbaa !1472
  call void @llvm.dbg.value(metadata i64 %add, metadata !1585, metadata !DIExpression()), !dbg !1587
  br label %if.end37, !dbg !1644

if.end37:                                         ; preds = %if.end35, %land.lhs.true, %for.body
  %profiles.2 = phi ptr [ %profiles.1, %if.end35 ], [ %profiles.072, %land.lhs.true ], [ %profiles.072, %for.body ], !dbg !1587
  %i.1 = phi i64 [ %add, %if.end35 ], [ %i.074, %land.lhs.true ], [ %i.074, %for.body ], !dbg !1645
  %length.2 = phi i64 [ %length.1, %if.end35 ], [ %length.075, %land.lhs.true ], [ %length.075, %for.body ], !dbg !1587
  call void @llvm.dbg.value(metadata i64 %length.2, metadata !1586, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1585, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr %profiles.2, metadata !1583, metadata !DIExpression()), !dbg !1587
  %7 = load ptr, ptr %images, align 8, !dbg !1646, !tbaa !1088
  %call39 = tail call ptr @GetNextImageProfile(ptr noundef %7) #9, !dbg !1647
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1584, metadata !DIExpression()), !dbg !1587
  %cmp16.not = icmp eq ptr %call39, null, !dbg !1613
  br i1 %cmp16.not, label %for.end, label %for.body, !dbg !1616, !llvm.loop !1648

for.end:                                          ; preds = %if.end37, %if.end12
  %profiles.0.lcssa = phi ptr [ %call9, %if.end12 ], [ %profiles.2, %if.end37 ], !dbg !1587
  %i.0.lcssa = phi i64 [ 0, %if.end12 ], [ %i.1, %if.end37 ], !dbg !1645
  %arrayidx40 = getelementptr inbounds ptr, ptr %profiles.0.lcssa, i64 %i.0.lcssa, !dbg !1650
  store ptr null, ptr %arrayidx40, align 8, !dbg !1651, !tbaa !1472
  store i64 %i.0.lcssa, ptr %number_profiles, align 8, !dbg !1652, !tbaa !1484
  br label %cleanup, !dbg !1653

cleanup:                                          ; preds = %if.end6, %for.end, %if.then29, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %if.then29 ], [ %profiles.0.lcssa, %for.end ], [ null, %if.end6 ], !dbg !1587
  ret ptr %retval.0, !dbg !1654
}

declare !dbg !1655 void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #2

declare !dbg !1656 ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageProperty(ptr noundef %wand, ptr noundef %property) local_unnamed_addr #0 !dbg !1657 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1659, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata ptr %property, metadata !1660, metadata !DIExpression()), !dbg !1662
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1663
  %0 = load i32, ptr %debug, align 8, !dbg !1663, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1665
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1666

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1667
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 839, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1668
  br label %if.end, !dbg !1669

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1670
  %1 = load ptr, ptr %images, align 8, !dbg !1670, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !1672
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1673

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1674
  %2 = load ptr, ptr %exception, align 8, !dbg !1674, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1676
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !1677
  br label %cleanup, !dbg !1678

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef %property) #9, !dbg !1679
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1661, metadata !DIExpression()), !dbg !1662
  %cmp9 = icmp eq ptr %call8, null, !dbg !1680
  br i1 %cmp9, label %cleanup, label %if.end11, !dbg !1682

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @ConstantString(ptr noundef nonnull %call8) #9, !dbg !1683
  br label %cleanup, !dbg !1684

cleanup:                                          ; preds = %if.end6, %if.end11, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ %call12, %if.end11 ], [ null, %if.end6 ], !dbg !1662
  ret ptr %retval.0, !dbg !1685
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetImageProperties(ptr noundef %wand, ptr noundef %pattern, ptr nocapture noundef writeonly %number_properties) local_unnamed_addr #0 !dbg !1686 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1688, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1689, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %number_properties, metadata !1690, metadata !DIExpression()), !dbg !1695
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1696
  %0 = load i32, ptr %debug, align 8, !dbg !1696, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1698
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1699

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1700
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 900, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1701
  br label %if.end, !dbg !1702

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1703
  %1 = load ptr, ptr %images, align 8, !dbg !1703, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !1705
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1706

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1707
  %2 = load ptr, ptr %exception, align 8, !dbg !1707, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1709
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 903, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !1710
  br label %cleanup, !dbg !1711

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @GetImageProperty(ptr noundef nonnull %1, ptr noundef nonnull @.str.6) #9, !dbg !1712
  call void @llvm.dbg.value(metadata i64 1024, metadata !1694, metadata !DIExpression()), !dbg !1695
  %call9 = tail call ptr @AcquireQuantumMemory(i64 noundef 1024, i64 noundef 8) #10, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1691, metadata !DIExpression()), !dbg !1695
  %cmp10 = icmp eq ptr %call9, null, !dbg !1714
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !1716

if.end12:                                         ; preds = %if.end6
  %3 = load ptr, ptr %images, align 8, !dbg !1717, !tbaa !1088
  tail call void @ResetImagePropertyIterator(ptr noundef %3) #9, !dbg !1718
  %4 = load ptr, ptr %images, align 8, !dbg !1719, !tbaa !1088
  %call15 = tail call ptr @GetNextImageProperty(ptr noundef %4) #9, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1692, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 0, metadata !1693, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 1024, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1691, metadata !DIExpression()), !dbg !1695
  %cmp16.not71 = icmp eq ptr %call15, null, !dbg !1721
  br i1 %cmp16.not71, label %for.end, label %for.body, !dbg !1724

for.body:                                         ; preds = %if.end12, %if.end37
  %length.075 = phi i64 [ %length.2, %if.end37 ], [ 1024, %if.end12 ]
  %i.074 = phi i64 [ %i.1, %if.end37 ], [ 0, %if.end12 ]
  %property.073 = phi ptr [ %call39, %if.end37 ], [ %call15, %if.end12 ]
  %properties.072 = phi ptr [ %properties.2, %if.end37 ], [ %call9, %if.end12 ]
  call void @llvm.dbg.value(metadata i64 %length.075, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %i.074, metadata !1693, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %property.073, metadata !1692, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %properties.072, metadata !1691, metadata !DIExpression()), !dbg !1695
  %5 = load i8, ptr %property.073, align 1, !dbg !1725, !tbaa !1447
  %cmp17.not = icmp eq i8 %5, 91, !dbg !1728
  br i1 %cmp17.not, label %if.end37, label %land.lhs.true, !dbg !1729

land.lhs.true:                                    ; preds = %for.body
  %call19 = tail call i32 @GlobExpression(ptr noundef nonnull %property.073, ptr noundef %pattern, i32 noundef 0) #9, !dbg !1730
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !1731
  br i1 %cmp20.not, label %if.end37, label %if.then22, !dbg !1732

if.then22:                                        ; preds = %land.lhs.true
  %add = add nsw i64 %i.074, 1, !dbg !1733
  %cmp23.not = icmp slt i64 %add, %length.075, !dbg !1736
  br i1 %cmp23.not, label %if.end35, label %if.then25, !dbg !1737

if.then25:                                        ; preds = %if.then22
  %shl = shl i64 %length.075, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1694, metadata !DIExpression()), !dbg !1695
  %call26 = tail call ptr @ResizeQuantumMemory(ptr noundef %properties.072, i64 noundef %shl, i64 noundef 8) #11, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1691, metadata !DIExpression()), !dbg !1695
  %cmp27 = icmp eq ptr %call26, null, !dbg !1741
  br i1 %cmp27, label %if.then29, label %if.end35, !dbg !1743

if.then29:                                        ; preds = %if.then25
  %exception30 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1744
  %6 = load ptr, ptr %exception30, align 8, !dbg !1744, !tbaa !1093
  %name31 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1746
  %call33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 926, i32 noundef 400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %name31) #9, !dbg !1747
  br label %cleanup, !dbg !1748

if.end35:                                         ; preds = %if.then25, %if.then22
  %properties.1 = phi ptr [ %call26, %if.then25 ], [ %properties.072, %if.then22 ], !dbg !1695
  %length.1 = phi i64 [ %shl, %if.then25 ], [ %length.075, %if.then22 ], !dbg !1695
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %properties.1, metadata !1691, metadata !DIExpression()), !dbg !1695
  %call36 = tail call ptr @ConstantString(ptr noundef nonnull %property.073) #9, !dbg !1749
  %arrayidx = getelementptr inbounds ptr, ptr %properties.1, i64 %i.074, !dbg !1750
  store ptr %call36, ptr %arrayidx, align 8, !dbg !1751, !tbaa !1472
  call void @llvm.dbg.value(metadata i64 %add, metadata !1693, metadata !DIExpression()), !dbg !1695
  br label %if.end37, !dbg !1752

if.end37:                                         ; preds = %if.end35, %land.lhs.true, %for.body
  %properties.2 = phi ptr [ %properties.1, %if.end35 ], [ %properties.072, %land.lhs.true ], [ %properties.072, %for.body ], !dbg !1695
  %i.1 = phi i64 [ %add, %if.end35 ], [ %i.074, %land.lhs.true ], [ %i.074, %for.body ], !dbg !1753
  %length.2 = phi i64 [ %length.1, %if.end35 ], [ %length.075, %land.lhs.true ], [ %length.075, %for.body ], !dbg !1695
  call void @llvm.dbg.value(metadata i64 %length.2, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1693, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %properties.2, metadata !1691, metadata !DIExpression()), !dbg !1695
  %7 = load ptr, ptr %images, align 8, !dbg !1754, !tbaa !1088
  %call39 = tail call ptr @GetNextImageProperty(ptr noundef %7) #9, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1692, metadata !DIExpression()), !dbg !1695
  %cmp16.not = icmp eq ptr %call39, null, !dbg !1721
  br i1 %cmp16.not, label %for.end, label %for.body, !dbg !1724, !llvm.loop !1756

for.end:                                          ; preds = %if.end37, %if.end12
  %properties.0.lcssa = phi ptr [ %call9, %if.end12 ], [ %properties.2, %if.end37 ], !dbg !1695
  %i.0.lcssa = phi i64 [ 0, %if.end12 ], [ %i.1, %if.end37 ], !dbg !1753
  %arrayidx40 = getelementptr inbounds ptr, ptr %properties.0.lcssa, i64 %i.0.lcssa, !dbg !1758
  store ptr null, ptr %arrayidx40, align 8, !dbg !1759, !tbaa !1472
  store i64 %i.0.lcssa, ptr %number_properties, align 8, !dbg !1760, !tbaa !1484
  br label %cleanup, !dbg !1761

cleanup:                                          ; preds = %if.end6, %for.end, %if.then29, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %if.then29 ], [ %properties.0.lcssa, %for.end ], [ null, %if.end6 ], !dbg !1695
  ret ptr %retval.0, !dbg !1762
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetInterlaceScheme(ptr noundef %wand) local_unnamed_addr #0 !dbg !1763 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1767, metadata !DIExpression()), !dbg !1768
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1769
  %0 = load i32, ptr %debug, align 8, !dbg !1769, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1771
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1772

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1773
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 969, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1774
  br label %if.end, !dbg !1775

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1776
  %1 = load ptr, ptr %image_info, align 8, !dbg !1776, !tbaa !1153
  %interlace = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 13, !dbg !1777
  %2 = load i32, ptr %interlace, align 8, !dbg !1777, !tbaa !1778
  ret i32 %2, !dbg !1779
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetInterpolateMethod(ptr noundef %wand) local_unnamed_addr #0 !dbg !1780 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1784, metadata !DIExpression()), !dbg !1787
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1788
  %0 = load i32, ptr %debug, align 8, !dbg !1788, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1790
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1791

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1792
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1006, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1793
  br label %if.end, !dbg !1794

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1795
  %1 = load ptr, ptr %image_info, align 8, !dbg !1795, !tbaa !1153
  %call1 = tail call ptr @GetImageOption(ptr noundef %1, ptr noundef nonnull @.str.8) #9, !dbg !1796
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1785, metadata !DIExpression()), !dbg !1787
  %cmp2 = icmp eq ptr %call1, null, !dbg !1797
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1799

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @ParseCommandOption(i32 noundef 33, i32 noundef 0, ptr noundef nonnull %call1) #9, !dbg !1800
  %conv = trunc i64 %call5 to i32, !dbg !1801
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1786, metadata !DIExpression()), !dbg !1787
  br label %cleanup, !dbg !1802

cleanup:                                          ; preds = %if.end, %if.end4
  %retval.0 = phi i32 [ %conv, %if.end4 ], [ 0, %if.end ], !dbg !1787
  ret i32 %retval.0, !dbg !1803
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetOption(ptr noundef %wand, ptr noundef %key) local_unnamed_addr #0 !dbg !1804 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1806, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %key, metadata !1807, metadata !DIExpression()), !dbg !1809
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1810
  %0 = load i32, ptr %debug, align 8, !dbg !1810, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1812
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1813

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1814
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1049, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1815
  br label %if.end, !dbg !1816

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1817
  %1 = load ptr, ptr %image_info, align 8, !dbg !1817, !tbaa !1153
  %call1 = tail call ptr @GetImageOption(ptr noundef %1, ptr noundef %key) #9, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1808, metadata !DIExpression()), !dbg !1809
  %call2 = tail call ptr @ConstantString(ptr noundef %call1) #9, !dbg !1819
  ret ptr %call2, !dbg !1820
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetOptions(ptr noundef %wand, ptr noundef %pattern, ptr nocapture noundef writeonly %number_options) local_unnamed_addr #0 !dbg !1821 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1824, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %number_options, metadata !1825, metadata !DIExpression()), !dbg !1830
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1831
  %0 = load i32, ptr %debug, align 8, !dbg !1831, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1833
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1834

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1835
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1102, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1836
  br label %if.end, !dbg !1837

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !1838
  %1 = load ptr, ptr %images, align 8, !dbg !1838, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !1840
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1841

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1842
  %2 = load ptr, ptr %exception, align 8, !dbg !1842, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1844
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1105, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !1845
  br label %cleanup, !dbg !1846

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 1024, metadata !1829, metadata !DIExpression()), !dbg !1830
  %call7 = tail call ptr @AcquireQuantumMemory(i64 noundef 1024, i64 noundef 8) #10, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1826, metadata !DIExpression()), !dbg !1830
  %cmp8 = icmp eq ptr %call7, null, !dbg !1848
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !1850

if.end10:                                         ; preds = %if.end6
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1851
  %3 = load ptr, ptr %image_info, align 8, !dbg !1851, !tbaa !1153
  tail call void @ResetImageOptionIterator(ptr noundef %3) #9, !dbg !1852
  %4 = load ptr, ptr %image_info, align 8, !dbg !1853, !tbaa !1153
  %call12 = tail call ptr @GetNextImageOption(ptr noundef %4) #9, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1827, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 0, metadata !1828, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 1024, metadata !1829, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1826, metadata !DIExpression()), !dbg !1830
  %cmp13.not67 = icmp eq ptr %call12, null, !dbg !1855
  br i1 %cmp13.not67, label %for.end, label %for.body, !dbg !1858

for.body:                                         ; preds = %if.end10, %if.end34
  %length.071 = phi i64 [ %length.2, %if.end34 ], [ 1024, %if.end10 ]
  %i.070 = phi i64 [ %i.1, %if.end34 ], [ 0, %if.end10 ]
  %option.069 = phi ptr [ %call36, %if.end34 ], [ %call12, %if.end10 ]
  %options.068 = phi ptr [ %options.2, %if.end34 ], [ %call7, %if.end10 ]
  call void @llvm.dbg.value(metadata i64 %length.071, metadata !1829, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %i.070, metadata !1828, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %option.069, metadata !1827, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %options.068, metadata !1826, metadata !DIExpression()), !dbg !1830
  %5 = load i8, ptr %option.069, align 1, !dbg !1859, !tbaa !1447
  %cmp14.not = icmp eq i8 %5, 91, !dbg !1862
  br i1 %cmp14.not, label %if.end34, label %land.lhs.true, !dbg !1863

land.lhs.true:                                    ; preds = %for.body
  %call16 = tail call i32 @GlobExpression(ptr noundef nonnull %option.069, ptr noundef %pattern, i32 noundef 0) #9, !dbg !1864
  %cmp17.not = icmp eq i32 %call16, 0, !dbg !1865
  br i1 %cmp17.not, label %if.end34, label %if.then19, !dbg !1866

if.then19:                                        ; preds = %land.lhs.true
  %add = add nsw i64 %i.070, 1, !dbg !1867
  %cmp20.not = icmp slt i64 %add, %length.071, !dbg !1870
  br i1 %cmp20.not, label %if.end32, label %if.then22, !dbg !1871

if.then22:                                        ; preds = %if.then19
  %shl = shl i64 %length.071, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1829, metadata !DIExpression()), !dbg !1830
  %call23 = tail call ptr @ResizeQuantumMemory(ptr noundef %options.068, i64 noundef %shl, i64 noundef 8) #11, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %call23, metadata !1826, metadata !DIExpression()), !dbg !1830
  %cmp24 = icmp eq ptr %call23, null, !dbg !1875
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !1877

if.then26:                                        ; preds = %if.then22
  %exception27 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !1878
  %6 = load ptr, ptr %exception27, align 8, !dbg !1878, !tbaa !1093
  %name28 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1880
  %call30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1127, i32 noundef 400, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %name28) #9, !dbg !1881
  br label %cleanup, !dbg !1882

if.end32:                                         ; preds = %if.then22, %if.then19
  %options.1 = phi ptr [ %call23, %if.then22 ], [ %options.068, %if.then19 ], !dbg !1830
  %length.1 = phi i64 [ %shl, %if.then22 ], [ %length.071, %if.then19 ], !dbg !1830
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !1829, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %options.1, metadata !1826, metadata !DIExpression()), !dbg !1830
  %call33 = tail call ptr @ConstantString(ptr noundef nonnull %option.069) #9, !dbg !1883
  %arrayidx = getelementptr inbounds ptr, ptr %options.1, i64 %i.070, !dbg !1884
  store ptr %call33, ptr %arrayidx, align 8, !dbg !1885, !tbaa !1472
  call void @llvm.dbg.value(metadata i64 %add, metadata !1828, metadata !DIExpression()), !dbg !1830
  br label %if.end34, !dbg !1886

if.end34:                                         ; preds = %if.end32, %land.lhs.true, %for.body
  %options.2 = phi ptr [ %options.1, %if.end32 ], [ %options.068, %land.lhs.true ], [ %options.068, %for.body ], !dbg !1830
  %i.1 = phi i64 [ %add, %if.end32 ], [ %i.070, %land.lhs.true ], [ %i.070, %for.body ], !dbg !1887
  %length.2 = phi i64 [ %length.1, %if.end32 ], [ %length.071, %land.lhs.true ], [ %length.071, %for.body ], !dbg !1830
  call void @llvm.dbg.value(metadata i64 %length.2, metadata !1829, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1828, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %options.2, metadata !1826, metadata !DIExpression()), !dbg !1830
  %7 = load ptr, ptr %image_info, align 8, !dbg !1888, !tbaa !1153
  %call36 = tail call ptr @GetNextImageOption(ptr noundef %7) #9, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %call36, metadata !1827, metadata !DIExpression()), !dbg !1830
  %cmp13.not = icmp eq ptr %call36, null, !dbg !1855
  br i1 %cmp13.not, label %for.end, label %for.body, !dbg !1858, !llvm.loop !1890

for.end:                                          ; preds = %if.end34, %if.end10
  %options.0.lcssa = phi ptr [ %call7, %if.end10 ], [ %options.2, %if.end34 ], !dbg !1830
  %i.0.lcssa = phi i64 [ 0, %if.end10 ], [ %i.1, %if.end34 ], !dbg !1887
  %arrayidx37 = getelementptr inbounds ptr, ptr %options.0.lcssa, i64 %i.0.lcssa, !dbg !1892
  store ptr null, ptr %arrayidx37, align 8, !dbg !1893, !tbaa !1472
  store i64 %i.0.lcssa, ptr %number_options, align 8, !dbg !1894, !tbaa !1484
  br label %cleanup, !dbg !1895

cleanup:                                          ; preds = %if.end6, %for.end, %if.then26, %if.then2
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %if.then26 ], [ %options.0.lcssa, %for.end ], [ null, %if.end6 ], !dbg !1830
  ret ptr %retval.0, !dbg !1896
}

declare !dbg !1897 void @ResetImageOptionIterator(ptr noundef) local_unnamed_addr #2

declare !dbg !1900 ptr @GetNextImageOption(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetOrientation(ptr noundef %wand) local_unnamed_addr #0 !dbg !1903 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1907, metadata !DIExpression()), !dbg !1908
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1909
  %0 = load i32, ptr %debug, align 8, !dbg !1909, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1911
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1912

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1913
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1170, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1914
  br label %if.end, !dbg !1915

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1916
  %1 = load ptr, ptr %image_info, align 8, !dbg !1916, !tbaa !1153
  %orientation = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 1, !dbg !1917
  %2 = load i32, ptr %orientation, align 4, !dbg !1917, !tbaa !1918
  ret i32 %2, !dbg !1919
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetPackageName() local_unnamed_addr #0 !dbg !1920 {
entry:
  %call = tail call ptr @GetMagickPackageName() #9, !dbg !1921
  ret ptr %call, !dbg !1922
}

declare !dbg !1923 ptr @GetMagickPackageName() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetPage(ptr noundef %wand, ptr nocapture noundef writeonly %width, ptr nocapture noundef writeonly %height, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y) local_unnamed_addr #0 !dbg !1924 {
entry:
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1929, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata ptr %width, metadata !1930, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata ptr %height, metadata !1931, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata ptr %x, metadata !1932, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata ptr %y, metadata !1933, metadata !DIExpression()), !dbg !1935
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #9, !dbg !1936
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !1934, metadata !DIExpression()), !dbg !1937
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1938
  %0 = load i32, ptr %debug, align 8, !dbg !1938, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1940
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1941

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1942
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1239, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1943
  br label %if.end, !dbg !1944

if.end:                                           ; preds = %if.then, %entry
  %call1 = call ptr @ResetMagickMemory(ptr noundef nonnull %geometry, i32 noundef 0, i64 noundef 32) #9, !dbg !1945
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1946
  %1 = load ptr, ptr %image_info, align 8, !dbg !1946, !tbaa !1153
  %page = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 8, !dbg !1947
  %2 = load ptr, ptr %page, align 8, !dbg !1947, !tbaa !1948
  %call2 = call i32 @ParseAbsoluteGeometry(ptr noundef %2, ptr noundef nonnull %geometry) #9, !dbg !1949
  %3 = load i64, ptr %geometry, align 8, !dbg !1950, !tbaa !1951
  store i64 %3, ptr %width, align 8, !dbg !1952, !tbaa !1484
  %height4 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !1953
  %4 = load i64, ptr %height4, align 8, !dbg !1953, !tbaa !1954
  store i64 %4, ptr %height, align 8, !dbg !1955, !tbaa !1484
  %x5 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !1956
  %5 = load i64, ptr %x5, align 8, !dbg !1956, !tbaa !1957
  store i64 %5, ptr %x, align 8, !dbg !1958, !tbaa !1484
  %y6 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !1959
  %6 = load i64, ptr %y6, align 8, !dbg !1959, !tbaa !1960
  store i64 %6, ptr %y, align 8, !dbg !1961, !tbaa !1484
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #9, !dbg !1962
  ret i32 1, !dbg !1963
}

declare !dbg !1964 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1967 i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @MagickGetPointsize(ptr noundef %wand) local_unnamed_addr #0 !dbg !1971 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1975, metadata !DIExpression()), !dbg !1976
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !1977
  %0 = load i32, ptr %debug, align 8, !dbg !1977, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !1979
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1980

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1981
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1277, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !1982
  br label %if.end, !dbg !1983

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !1984
  %1 = load ptr, ptr %image_info, align 8, !dbg !1984, !tbaa !1153
  %pointsize = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 22, !dbg !1985
  %2 = load double, ptr %pointsize, align 8, !dbg !1985, !tbaa !1986
  ret double %2, !dbg !1987
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetQuantumDepth(ptr noundef %depth) local_unnamed_addr #0 !dbg !1988 {
entry:
  call void @llvm.dbg.value(metadata ptr %depth, metadata !1992, metadata !DIExpression()), !dbg !1993
  %call = tail call ptr @GetMagickQuantumDepth(ptr noundef %depth) #9, !dbg !1994
  ret ptr %call, !dbg !1995
}

declare !dbg !1996 ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetQuantumRange(ptr noundef %range) local_unnamed_addr #0 !dbg !1997 {
entry:
  call void @llvm.dbg.value(metadata ptr %range, metadata !1999, metadata !DIExpression()), !dbg !2000
  %call = tail call ptr @GetMagickQuantumRange(ptr noundef %range) #9, !dbg !2001
  ret ptr %call, !dbg !2002
}

declare !dbg !2003 ptr @GetMagickQuantumRange(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetReleaseDate() local_unnamed_addr #0 !dbg !2004 {
entry:
  %call = tail call ptr @GetMagickReleaseDate() #9, !dbg !2005
  ret ptr %call, !dbg !2006
}

declare !dbg !2007 ptr @GetMagickReleaseDate() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetResolution(ptr noundef %wand, ptr nocapture noundef %x, ptr nocapture noundef writeonly %y) local_unnamed_addr #0 !dbg !2008 {
entry:
  %geometry_info = alloca %struct._GeometryInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2012, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata ptr %x, metadata !2013, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata ptr %y, metadata !2014, metadata !DIExpression()), !dbg !2027
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2028
  %0 = load i32, ptr %debug, align 8, !dbg !2028, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2030
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2031

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2032
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1394, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2033
  br label %if.end, !dbg !2034

if.end:                                           ; preds = %if.then, %entry
  store double 7.200000e+01, ptr %x, align 8, !dbg !2035, !tbaa !2036
  store double 7.200000e+01, ptr %y, align 8, !dbg !2037, !tbaa !2036
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2038
  %1 = load ptr, ptr %image_info, align 8, !dbg !2038, !tbaa !1153
  %density = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 21, !dbg !2039
  %2 = load ptr, ptr %density, align 8, !dbg !2039, !tbaa !2040
  %cmp1.not = icmp eq ptr %2, null, !dbg !2041
  br i1 %cmp1.not, label %if.end9, label %if.then2, !dbg !2042

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #9, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !2015, metadata !DIExpression()), !dbg !2044
  %call5 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %geometry_info) #9, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %call5, metadata !2026, metadata !DIExpression()), !dbg !2046
  %3 = load double, ptr %geometry_info, align 8, !dbg !2047, !tbaa !2048
  store double %3, ptr %x, align 8, !dbg !2050, !tbaa !2036
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !2051
  %4 = load double, ptr %sigma, align 8, !dbg !2051, !tbaa !2052
  store double %4, ptr %y, align 8, !dbg !2053, !tbaa !2036
  %and = and i32 %call5, 8, !dbg !2054
  %cmp6 = icmp eq i32 %and, 0, !dbg !2056
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2057

if.then7:                                         ; preds = %if.then2
  %5 = load double, ptr %x, align 8, !dbg !2058, !tbaa !2036
  store double %5, ptr %y, align 8, !dbg !2059, !tbaa !2036
  br label %if.end8, !dbg !2060

if.end8:                                          ; preds = %if.then7, %if.then2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #9, !dbg !2061
  br label %if.end9, !dbg !2062

if.end9:                                          ; preds = %if.end8, %if.end
  ret i32 1, !dbg !2063
}

declare !dbg !2064 i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @MagickGetResource(i32 noundef %type) local_unnamed_addr #0 !dbg !2068 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !2074, metadata !DIExpression()), !dbg !2075
  %call = tail call i64 @GetMagickResource(i32 noundef %type) #9, !dbg !2076
  ret i64 %call, !dbg !2077
}

declare !dbg !2078 i64 @GetMagickResource(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @MagickGetResourceLimit(i32 noundef %type) local_unnamed_addr #0 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !2081, metadata !DIExpression()), !dbg !2082
  %call = tail call i64 @GetMagickResourceLimit(i32 noundef %type) #9, !dbg !2083
  ret i64 %call, !dbg !2084
}

declare !dbg !2085 i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetSamplingFactors(ptr noundef %wand, ptr nocapture noundef writeonly %number_factors) local_unnamed_addr #0 !dbg !2086 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2090, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata ptr %number_factors, metadata !2091, metadata !DIExpression()), !dbg !2098
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2099
  %0 = load i32, ptr %debug, align 8, !dbg !2099, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2101
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2102

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2103
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1508, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2104
  br label %if.end, !dbg !2105

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %number_factors, align 8, !dbg !2106, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr null, metadata !2092, metadata !DIExpression()), !dbg !2098
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2107
  %1 = load ptr, ptr %image_info, align 8, !dbg !2107, !tbaa !1153
  %sampling_factor = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 17, !dbg !2109
  %2 = load ptr, ptr %sampling_factor, align 8, !dbg !2109, !tbaa !2110
  %cmp1 = icmp eq ptr %2, null, !dbg !2111
  br i1 %cmp1, label %cleanup, label %while.cond.preheader, !dbg !2112

while.cond.preheader:                             ; preds = %if.end, %while.end
  %i.094 = phi i64 [ %inc, %while.end ], [ 0, %if.end ]
  %p.093 = phi ptr [ %call17, %while.end ], [ %2, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.094, metadata !2094, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata ptr %p.093, metadata !2093, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata ptr %p.093, metadata !2093, metadata !DIExpression()), !dbg !2098
  %3 = load i8, ptr %p.093, align 1, !dbg !2113, !tbaa !1447
  %cmp7.not89 = icmp eq i8 %3, 0, !dbg !2117
  br i1 %cmp7.not89, label %while.end, label %land.rhs.lr.ph, !dbg !2118

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %call9 = tail call ptr @__ctype_b_loc() #12, !dbg !2098
  %4 = load ptr, ptr %call9, align 8, !tbaa !1472
  br label %land.rhs, !dbg !2118

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %5 = phi i8 [ %3, %land.rhs.lr.ph ], [ %9, %while.body ]
  %p.190 = phi ptr [ %p.093, %land.rhs.lr.ph ], [ %incdec.ptr, %while.body ]
  call void @llvm.dbg.value(metadata ptr %p.190, metadata !2093, metadata !DIExpression()), !dbg !2098
  %6 = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %6, !dbg !2119
  %7 = load i16, ptr %arrayidx, align 2, !dbg !2119, !tbaa !2120
  %8 = and i16 %7, 8192, !dbg !2119
  %cmp12.not = icmp ne i16 %8, 0, !dbg !2121
  %cmp15 = icmp eq i8 %5, 44
  %or.cond = select i1 %cmp12.not, i1 true, i1 %cmp15, !dbg !2122
  br i1 %or.cond, label %while.body, label %while.end, !dbg !2122

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, ptr %p.190, i64 1, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2093, metadata !DIExpression()), !dbg !2098
  %9 = load i8, ptr %incdec.ptr, align 1, !dbg !2113, !tbaa !1447
  %cmp7.not = icmp eq i8 %9, 0, !dbg !2117
  br i1 %cmp7.not, label %while.end, label %land.rhs, !dbg !2118, !llvm.loop !2124

while.end:                                        ; preds = %while.body, %land.rhs, %while.cond.preheader
  %p.1.lcssa = phi ptr [ %p.093, %while.cond.preheader ], [ %p.190, %land.rhs ], [ %incdec.ptr, %while.body ], !dbg !2126
  %inc = add nuw nsw i64 %i.094, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2094, metadata !DIExpression()), !dbg !2098
  %call17 = tail call ptr @strchr(ptr noundef nonnull %p.1.lcssa, i32 noundef 44) #13, !dbg !2128
  call void @llvm.dbg.value(metadata ptr %call17, metadata !2093, metadata !DIExpression()), !dbg !2098
  %cmp6.not = icmp eq ptr %call17, null, !dbg !2129
  br i1 %cmp6.not, label %for.end, label %while.cond.preheader, !dbg !2130, !llvm.loop !2131

for.end:                                          ; preds = %while.end
  %add = add nuw i64 %i.094, 2, !dbg !2133
  %call18 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #10, !dbg !2134
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2092, metadata !DIExpression()), !dbg !2098
  %cmp19 = icmp eq ptr %call18, null, !dbg !2135
  br i1 %cmp19, label %if.then21, label %if.end26, !dbg !2136

if.then21:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #9, !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !2095, metadata !DIExpression()), !dbg !2137
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #9, !dbg !2137
  %10 = load ptr, ptr %image_info, align 8, !dbg !2137, !tbaa !1153
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %10, i64 0, i32 51, !dbg !2137
  %call24 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1525, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #9, !dbg !2137
  call void @CatchException(ptr noundef nonnull %exception) #9, !dbg !2137
  %call25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #9, !dbg !2137
  call void @MagickWandTerminus() #9, !dbg !2137
  call void @_exit(i32 noundef 1) #14, !dbg !2137
  unreachable, !dbg !2137

if.end26:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !2094, metadata !DIExpression()), !dbg !2098
  %11 = load ptr, ptr %image_info, align 8, !dbg !2138, !tbaa !1153
  %sampling_factor28 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 17, !dbg !2140
  %12 = load ptr, ptr %sampling_factor28, align 8, !dbg !2140, !tbaa !2110
  call void @llvm.dbg.value(metadata ptr %12, metadata !2093, metadata !DIExpression()), !dbg !2098
  %cmp30.not100 = icmp eq ptr %12, null, !dbg !2141
  br i1 %cmp30.not100, label %for.end60, label %while.cond33.preheader, !dbg !2143

while.cond33.preheader:                           ; preds = %if.end26, %while.end54
  %i.1102 = phi i64 [ %inc57, %while.end54 ], [ 0, %if.end26 ]
  %p.2101 = phi ptr [ %call59, %while.end54 ], [ %12, %if.end26 ]
  call void @llvm.dbg.value(metadata i64 %i.1102, metadata !2094, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata ptr %p.2101, metadata !2093, metadata !DIExpression()), !dbg !2098
  %13 = load i8, ptr %p.2101, align 1, !dbg !2144, !tbaa !1447
  %cmp35.not96 = icmp eq i8 %13, 0, !dbg !2146
  br i1 %cmp35.not96, label %while.end54, label %land.rhs37.lr.ph, !dbg !2147

land.rhs37.lr.ph:                                 ; preds = %while.cond33.preheader
  %call38 = tail call ptr @__ctype_b_loc() #12, !dbg !2098
  %14 = load ptr, ptr %call38, align 8, !tbaa !1472
  br label %land.rhs37, !dbg !2147

land.rhs37:                                       ; preds = %land.rhs37.lr.ph, %while.body52
  %15 = phi i8 [ %13, %land.rhs37.lr.ph ], [ %19, %while.body52 ]
  %p.397 = phi ptr [ %p.2101, %land.rhs37.lr.ph ], [ %incdec.ptr53, %while.body52 ]
  call void @llvm.dbg.value(metadata ptr %p.397, metadata !2093, metadata !DIExpression()), !dbg !2098
  %16 = zext i8 %15 to i64
  %arrayidx41 = getelementptr inbounds i16, ptr %14, i64 %16, !dbg !2148
  %17 = load i16, ptr %arrayidx41, align 2, !dbg !2148, !tbaa !2120
  %18 = and i16 %17, 8192, !dbg !2148
  %cmp44.not = icmp ne i16 %18, 0, !dbg !2149
  %cmp48 = icmp eq i8 %15, 44
  %or.cond88 = select i1 %cmp44.not, i1 true, i1 %cmp48, !dbg !2150
  br i1 %or.cond88, label %while.body52, label %while.end54, !dbg !2150

while.body52:                                     ; preds = %land.rhs37
  %incdec.ptr53 = getelementptr inbounds i8, ptr %p.397, i64 1, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %incdec.ptr53, metadata !2093, metadata !DIExpression()), !dbg !2098
  %19 = load i8, ptr %incdec.ptr53, align 1, !dbg !2144, !tbaa !1447
  %cmp35.not = icmp eq i8 %19, 0, !dbg !2146
  br i1 %cmp35.not, label %while.end54, label %land.rhs37, !dbg !2147, !llvm.loop !2152

while.end54:                                      ; preds = %while.body52, %land.rhs37, %while.cond33.preheader
  %p.3.lcssa = phi ptr [ %p.2101, %while.cond33.preheader ], [ %p.397, %land.rhs37 ], [ %incdec.ptr53, %while.body52 ], !dbg !2154
  call void @llvm.dbg.value(metadata ptr %p.3.lcssa, metadata !2155, metadata !DIExpression()) #9, !dbg !2164
  call void @llvm.dbg.value(metadata ptr null, metadata !2163, metadata !DIExpression()) #9, !dbg !2164
  %call.i = tail call double @InterpretLocaleValue(ptr noundef nonnull %p.3.lcssa, ptr noundef null) #9, !dbg !2166
  %arrayidx56 = getelementptr inbounds double, ptr %call18, i64 %i.1102, !dbg !2167
  store double %call.i, ptr %arrayidx56, align 8, !dbg !2168, !tbaa !2036
  %inc57 = add nuw nsw i64 %i.1102, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %inc57, metadata !2094, metadata !DIExpression()), !dbg !2098
  %call59 = tail call ptr @strchr(ptr noundef nonnull %p.3.lcssa, i32 noundef 44) #13, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %call59, metadata !2093, metadata !DIExpression()), !dbg !2098
  %cmp30.not = icmp eq ptr %call59, null, !dbg !2141
  br i1 %cmp30.not, label %for.end60, label %while.cond33.preheader, !dbg !2143, !llvm.loop !2171

for.end60:                                        ; preds = %while.end54, %if.end26
  %i.1.lcssa = phi i64 [ 0, %if.end26 ], [ %inc57, %while.end54 ], !dbg !2098
  store i64 %i.1.lcssa, ptr %number_factors, align 8, !dbg !2173, !tbaa !1484
  br label %cleanup, !dbg !2174

cleanup:                                          ; preds = %if.end, %for.end60
  %retval.0 = phi ptr [ %call18, %for.end60 ], [ null, %if.end ], !dbg !2098
  ret ptr %retval.0, !dbg !2175
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare !dbg !2176 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !2179 void @CatchException(ptr noundef) local_unnamed_addr #2

declare !dbg !2180 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !2183 void @MagickWandTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetSize(ptr noundef %wand, ptr nocapture noundef writeonly %columns, ptr nocapture noundef writeonly %rows) local_unnamed_addr #0 !dbg !2186 {
entry:
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr %columns, metadata !2191, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr %rows, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #9, !dbg !2195
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !2193, metadata !DIExpression()), !dbg !2196
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2197
  %0 = load i32, ptr %debug, align 8, !dbg !2197, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2199
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2200

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2201
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1575, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2202
  br label %if.end, !dbg !2203

if.end:                                           ; preds = %if.then, %entry
  %call1 = call ptr @ResetMagickMemory(ptr noundef nonnull %geometry, i32 noundef 0, i64 noundef 32) #9, !dbg !2204
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2205
  %1 = load ptr, ptr %image_info, align 8, !dbg !2205, !tbaa !1153
  %size = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 6, !dbg !2206
  %2 = load ptr, ptr %size, align 8, !dbg !2206, !tbaa !2207
  %call2 = call i32 @ParseAbsoluteGeometry(ptr noundef %2, ptr noundef nonnull %geometry) #9, !dbg !2208
  %3 = load i64, ptr %geometry, align 8, !dbg !2209, !tbaa !1951
  store i64 %3, ptr %columns, align 8, !dbg !2210, !tbaa !1484
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !2211
  %4 = load i64, ptr %height, align 8, !dbg !2211, !tbaa !1954
  store i64 %4, ptr %rows, align 8, !dbg !2212, !tbaa !1484
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #9, !dbg !2213
  ret i32 1, !dbg !2214
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetSizeOffset(ptr noundef %wand, ptr nocapture noundef writeonly %offset) local_unnamed_addr #0 !dbg !2215 {
entry:
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2219, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %offset, metadata !2220, metadata !DIExpression()), !dbg !2222
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #9, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !2221, metadata !DIExpression()), !dbg !2224
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2225
  %0 = load i32, ptr %debug, align 8, !dbg !2225, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2227
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2228

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2229
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1618, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2230
  br label %if.end, !dbg !2231

if.end:                                           ; preds = %if.then, %entry
  %call1 = call ptr @ResetMagickMemory(ptr noundef nonnull %geometry, i32 noundef 0, i64 noundef 32) #9, !dbg !2232
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2233
  %1 = load ptr, ptr %image_info, align 8, !dbg !2233, !tbaa !1153
  %size = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 6, !dbg !2234
  %2 = load ptr, ptr %size, align 8, !dbg !2234, !tbaa !2207
  %call2 = call i32 @ParseAbsoluteGeometry(ptr noundef %2, ptr noundef nonnull %geometry) #9, !dbg !2235
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !2236
  %3 = load i64, ptr %x, align 8, !dbg !2236, !tbaa !1957
  store i64 %3, ptr %offset, align 8, !dbg !2237, !tbaa !1484
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #9, !dbg !2238
  ret i32 1, !dbg !2239
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickGetType(ptr noundef %wand) local_unnamed_addr #0 !dbg !2240 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2244, metadata !DIExpression()), !dbg !2245
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2246
  %0 = load i32, ptr %debug, align 8, !dbg !2246, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2248
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2249

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2250
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1652, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2251
  br label %if.end, !dbg !2252

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2253
  %1 = load ptr, ptr %image_info, align 8, !dbg !2253, !tbaa !1153
  %type = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 31, !dbg !2254
  %2 = load i32, ptr %type, align 4, !dbg !2254, !tbaa !2255
  ret i32 %2, !dbg !2256
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickGetVersion(ptr noundef %version) local_unnamed_addr #0 !dbg !2257 {
entry:
  call void @llvm.dbg.value(metadata ptr %version, metadata !2259, metadata !DIExpression()), !dbg !2260
  %call = tail call ptr @GetMagickVersion(ptr noundef %version) #9, !dbg !2261
  ret ptr %call, !dbg !2262
}

declare !dbg !2263 ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickProfileImage(ptr noundef %wand, ptr noundef %name, ptr noundef %profile, i64 noundef %length) local_unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2268, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata ptr %name, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata ptr %profile, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %length, metadata !2271, metadata !DIExpression()), !dbg !2273
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2274
  %0 = load i32, ptr %debug, align 8, !dbg !2274, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2276
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2277

if.then:                                          ; preds = %entry
  %name1 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2278
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1725, ptr noundef nonnull @.str.2, ptr noundef nonnull %name1) #9, !dbg !2279
  br label %if.end, !dbg !2280

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !2281
  %1 = load ptr, ptr %images, align 8, !dbg !2281, !tbaa !1088
  %cmp2 = icmp eq ptr %1, null, !dbg !2283
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !2284

if.then3:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2285
  %2 = load ptr, ptr %exception, align 8, !dbg !2285, !tbaa !1093
  %name4 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2285
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1727, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name4) #9, !dbg !2285
  br label %cleanup, !dbg !2285

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @ProfileImage(ptr noundef nonnull %1, ptr noundef %name, ptr noundef %profile, i64 noundef %length, i32 noundef 1) #9, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %call9, metadata !2272, metadata !DIExpression()), !dbg !2273
  %cmp10 = icmp eq i32 %call9, 0, !dbg !2288
  br i1 %cmp10, label %if.then11, label %cleanup, !dbg !2290

if.then11:                                        ; preds = %if.end7
  %exception12 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2291
  %3 = load ptr, ptr %exception12, align 8, !dbg !2291, !tbaa !1093
  %4 = load ptr, ptr %images, align 8, !dbg !2292, !tbaa !1088
  %exception14 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 58, !dbg !2293
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %exception14) #9, !dbg !2294
  br label %cleanup, !dbg !2294

cleanup:                                          ; preds = %if.end7, %if.then11, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then11 ], [ %call9, %if.end7 ], !dbg !2273
  ret i32 %retval.0, !dbg !2295
}

declare !dbg !2296 i32 @ProfileImage(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2299 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickRemoveImageProfile(ptr noundef %wand, ptr noundef %name, ptr nocapture noundef writeonly %length) local_unnamed_addr #0 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2306, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %name, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %length, metadata !2308, metadata !DIExpression()), !dbg !2311
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2312
  %0 = load i32, ptr %debug, align 8, !dbg !2312, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2314
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2315

if.then:                                          ; preds = %entry
  %name1 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2316
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1773, ptr noundef nonnull @.str.2, ptr noundef nonnull %name1) #9, !dbg !2317
  br label %if.end, !dbg !2318

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !2319
  %1 = load ptr, ptr %images, align 8, !dbg !2319, !tbaa !1088
  %cmp2 = icmp eq ptr %1, null, !dbg !2321
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !2322

if.then3:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2323
  %2 = load ptr, ptr %exception, align 8, !dbg !2323, !tbaa !1093
  %name4 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2325
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1776, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name4) #9, !dbg !2326
  br label %cleanup, !dbg !2327

if.end7:                                          ; preds = %if.end
  store i64 0, ptr %length, align 8, !dbg !2328, !tbaa !1484
  %call9 = tail call ptr @RemoveImageProfile(ptr noundef nonnull %1, ptr noundef %name) #9, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %call9, metadata !2309, metadata !DIExpression()), !dbg !2311
  %cmp10 = icmp eq ptr %call9, null, !dbg !2330
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !2332

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %call9) #9, !dbg !2333
  %call14 = tail call ptr @AcquireQuantumMemory(i64 noundef %call13, i64 noundef 1) #10, !dbg !2334
  call void @llvm.dbg.value(metadata ptr %call14, metadata !2310, metadata !DIExpression()), !dbg !2311
  %cmp15 = icmp eq ptr %call14, null, !dbg !2335
  br i1 %cmp15, label %cleanup, label %if.end17, !dbg !2337

if.end17:                                         ; preds = %if.end12
  %call18 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %call9) #9, !dbg !2338
  %call19 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %call9) #9, !dbg !2339
  %call20 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %call14, ptr noundef %call18, i64 noundef %call19) #9, !dbg !2340
  %call21 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %call9) #9, !dbg !2341
  store i64 %call21, ptr %length, align 8, !dbg !2342, !tbaa !1484
  %call22 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %call9) #9, !dbg !2343
  call void @llvm.dbg.value(metadata ptr %call22, metadata !2309, metadata !DIExpression()), !dbg !2311
  br label %cleanup, !dbg !2344

cleanup:                                          ; preds = %if.end12, %if.end7, %if.end17, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call14, %if.end17 ], [ null, %if.end7 ], [ null, %if.end12 ], !dbg !2311
  ret ptr %retval.0, !dbg !2345
}

declare !dbg !2346 ptr @RemoveImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2349 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetAntialias(ptr noundef %wand, i32 noundef %antialias) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 %antialias, metadata !2357, metadata !DIExpression()), !dbg !2358
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2359
  %0 = load i32, ptr %debug, align 8, !dbg !2359, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2361
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2362

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2363
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1826, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2364
  br label %if.end, !dbg !2365

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2366
  %1 = load ptr, ptr %image_info, align 8, !dbg !2366, !tbaa !1153
  %antialias1 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 5, !dbg !2367
  store i32 %antialias, ptr %antialias1, align 4, !dbg !2368, !tbaa !1176
  ret i32 1, !dbg !2369
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetBackgroundColor(ptr noundef %wand, ptr noundef %background) local_unnamed_addr #0 !dbg !2370 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %background, metadata !2377, metadata !DIExpression()), !dbg !2378
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2379
  %0 = load i32, ptr %debug, align 8, !dbg !2379, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2381
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2382

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2383
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1862, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2384
  br label %if.end, !dbg !2385

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2386
  %1 = load ptr, ptr %image_info, align 8, !dbg !2386, !tbaa !1153
  %background_color = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 24, !dbg !2387
  tail call void @PixelGetQuantumColor(ptr noundef %background, ptr noundef nonnull %background_color) #9, !dbg !2388
  ret i32 1, !dbg !2389
}

declare !dbg !2390 void @PixelGetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetColorspace(ptr noundef %wand, i32 noundef %colorspace) local_unnamed_addr #0 !dbg !2393 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %colorspace, metadata !2399, metadata !DIExpression()), !dbg !2400
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2401
  %0 = load i32, ptr %debug, align 8, !dbg !2401, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2403
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2404

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2405
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1898, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2406
  br label %if.end, !dbg !2407

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2408
  %1 = load ptr, ptr %image_info, align 8, !dbg !2408, !tbaa !1153
  %colorspace1 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 30, !dbg !2409
  store i32 %colorspace, ptr %colorspace1, align 8, !dbg !2410, !tbaa !1228
  ret i32 1, !dbg !2411
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetCompression(ptr noundef %wand, i32 noundef %compression) local_unnamed_addr #0 !dbg !2412 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 %compression, metadata !2418, metadata !DIExpression()), !dbg !2419
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2420
  %0 = load i32, ptr %debug, align 8, !dbg !2420, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2422
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2423

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2424
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1934, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2425
  br label %if.end, !dbg !2426

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2427
  %1 = load ptr, ptr %image_info, align 8, !dbg !2427, !tbaa !1153
  store i32 %compression, ptr %1, align 8, !dbg !2428, !tbaa !1245
  ret i32 1, !dbg !2429
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetCompressionQuality(ptr noundef %wand, i64 noundef %quality) local_unnamed_addr #0 !dbg !2430 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %quality, metadata !2435, metadata !DIExpression()), !dbg !2436
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2437
  %0 = load i32, ptr %debug, align 8, !dbg !2437, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2439
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2440

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2441
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1970, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2442
  br label %if.end, !dbg !2443

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2444
  %1 = load ptr, ptr %image_info, align 8, !dbg !2444, !tbaa !1153
  %quality1 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 16, !dbg !2445
  store i64 %quality, ptr %quality1, align 8, !dbg !2446, !tbaa !1262
  ret i32 1, !dbg !2447
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetDepth(ptr noundef %wand, i64 noundef %depth) local_unnamed_addr #0 !dbg !2448 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %depth, metadata !2451, metadata !DIExpression()), !dbg !2452
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2453
  %0 = load i32, ptr %debug, align 8, !dbg !2453, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2455
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2456

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2457
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2006, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2458
  br label %if.end, !dbg !2459

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2460
  %1 = load ptr, ptr %image_info, align 8, !dbg !2460, !tbaa !1153
  %depth1 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 12, !dbg !2461
  store i64 %depth, ptr %depth1, align 8, !dbg !2462, !tbaa !2463
  ret i32 1, !dbg !2464
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetExtract(ptr noundef %wand, ptr noundef %geometry) local_unnamed_addr #0 !dbg !2465 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !2468, metadata !DIExpression()), !dbg !2469
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2470
  %0 = load i32, ptr %debug, align 8, !dbg !2470, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2472
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2473

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2474
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2044, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2475
  br label %if.end, !dbg !2476

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq ptr %geometry, null, !dbg !2477
  br i1 %cmp1.not, label %if.end4, label %if.then2, !dbg !2479

if.then2:                                         ; preds = %if.end
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2480
  %1 = load ptr, ptr %image_info, align 8, !dbg !2480, !tbaa !1153
  %extract = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 7, !dbg !2481
  %2 = load ptr, ptr %extract, align 8, !dbg !2481, !tbaa !2482
  %call3 = tail call i64 @CopyMagickString(ptr noundef %2, ptr noundef nonnull %geometry, i64 noundef 4096) #9, !dbg !2483
  br label %if.end4, !dbg !2484

if.end4:                                          ; preds = %if.then2, %if.end
  ret i32 1, !dbg !2485
}

declare !dbg !2486 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetFilename(ptr noundef %wand, ptr noundef %filename) local_unnamed_addr #0 !dbg !2489 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %filename, metadata !2492, metadata !DIExpression()), !dbg !2493
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2494
  %0 = load i32, ptr %debug, align 8, !dbg !2494, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2496
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2497

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2498
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2081, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2499
  br label %if.end, !dbg !2500

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq ptr %filename, null, !dbg !2501
  br i1 %cmp1.not, label %if.end6, label %if.then2, !dbg !2503

if.then2:                                         ; preds = %if.end
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2504
  %1 = load ptr, ptr %image_info, align 8, !dbg !2504, !tbaa !1153
  %filename3 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 51, !dbg !2505
  %call5 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename3, ptr noundef nonnull %filename, i64 noundef 4096) #9, !dbg !2506
  br label %if.end6, !dbg !2507

if.end6:                                          ; preds = %if.then2, %if.end
  ret i32 1, !dbg !2508
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetFont(ptr noundef %wand, ptr noundef %font) local_unnamed_addr #0 !dbg !2509 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata ptr %font, metadata !2512, metadata !DIExpression()), !dbg !2513
  %cmp = icmp eq ptr %font, null, !dbg !2514
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !2516

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %font, align 1, !dbg !2517, !tbaa !1447
  %cmp1 = icmp eq i8 %0, 0, !dbg !2518
  br i1 %cmp1, label %return, label %if.end, !dbg !2519

if.end:                                           ; preds = %lor.lhs.false
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2520
  %1 = load i32, ptr %debug, align 8, !dbg !2520, !tbaa !1075
  %cmp3.not = icmp eq i32 %1, 0, !dbg !2522
  br i1 %cmp3.not, label %if.end6, label %if.then5, !dbg !2523

if.then5:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2524
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2118, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2525
  br label %if.end6, !dbg !2526

if.end6:                                          ; preds = %if.then5, %if.end
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2527
  %2 = load ptr, ptr %image_info, align 8, !dbg !2527, !tbaa !1153
  %font7 = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 19, !dbg !2528
  %call8 = tail call ptr @CloneString(ptr noundef nonnull %font7, ptr noundef nonnull %font) #9, !dbg !2529
  br label %return, !dbg !2530

return:                                           ; preds = %entry, %lor.lhs.false, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !2513
  ret i32 %retval.0, !dbg !2531
}

declare !dbg !2532 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetFormat(ptr noundef %wand, ptr noundef %format) local_unnamed_addr #0 !dbg !2535 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2537, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata ptr %format, metadata !2538, metadata !DIExpression()), !dbg !2540
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2541
  %0 = load i32, ptr %debug, align 8, !dbg !2541, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2543
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2544

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2545
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2156, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2546
  br label %if.end, !dbg !2547

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %format, null, !dbg !2548
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !2550

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8, ptr %format, align 1, !dbg !2551, !tbaa !1447
  %cmp2 = icmp eq i8 %1, 0, !dbg !2552
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !2553

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2554
  %2 = load ptr, ptr %image_info, align 8, !dbg !2554, !tbaa !1153
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %2, i64 0, i32 48, !dbg !2556
  store i8 0, ptr %magick, align 8, !dbg !2557, !tbaa !1447
  br label %cleanup, !dbg !2558

if.end6:                                          ; preds = %lor.lhs.false
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2559
  %3 = load ptr, ptr %exception, align 8, !dbg !2559, !tbaa !1093
  %call7 = tail call ptr @GetMagickInfo(ptr noundef nonnull %format, ptr noundef %3) #9, !dbg !2560
  call void @llvm.dbg.value(metadata ptr %call7, metadata !2539, metadata !DIExpression()), !dbg !2540
  %cmp8 = icmp eq ptr %call7, null, !dbg !2561
  br i1 %cmp8, label %cleanup, label %if.end11, !dbg !2563

if.end11:                                         ; preds = %if.end6
  %4 = load ptr, ptr %exception, align 8, !dbg !2564, !tbaa !1093
  tail call void @ClearMagickException(ptr noundef %4) #9, !dbg !2565
  %image_info13 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2566
  %5 = load ptr, ptr %image_info13, align 8, !dbg !2566, !tbaa !1153
  %magick14 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 48, !dbg !2567
  %call16 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick14, ptr noundef nonnull %format, i64 noundef 4096) #9, !dbg !2568
  br label %cleanup, !dbg !2569

cleanup:                                          ; preds = %if.end6, %if.end11, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.end11 ], [ 0, %if.end6 ], !dbg !2540
  ret i32 %retval.0, !dbg !2570
}

declare !dbg !2571 ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2574 void @ClearMagickException(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetGravity(ptr noundef %wand, i32 noundef %type) local_unnamed_addr #0 !dbg !2575 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2580, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 %type, metadata !2581, metadata !DIExpression()), !dbg !2583
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2584
  %0 = load i32, ptr %debug, align 8, !dbg !2584, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2586
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2587

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2588
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2204, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2589
  br label %if.end, !dbg !2590

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2591
  %1 = load ptr, ptr %image_info, align 8, !dbg !2591, !tbaa !1153
  %conv = zext i32 %type to i64, !dbg !2592
  %call1 = tail call ptr @CommandOptionToMnemonic(i32 noundef 30, i64 noundef %conv) #9, !dbg !2593
  %call2 = tail call i32 @SetImageOption(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %call1) #9, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2582, metadata !DIExpression()), !dbg !2583
  ret i32 %call2, !dbg !2595
}

declare !dbg !2596 i32 @SetImageOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2599 ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetImageArtifact(ptr noundef %wand, ptr noundef %artifact, ptr noundef %value) local_unnamed_addr #0 !dbg !2603 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2607, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !2608, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %value, metadata !2609, metadata !DIExpression()), !dbg !2611
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2612
  %0 = load i32, ptr %debug, align 8, !dbg !2612, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2614
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2615

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2616
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2246, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2617
  br label %if.end, !dbg !2618

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !2619
  %1 = load ptr, ptr %images, align 8, !dbg !2619, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !2621
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !2622

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2623
  %2 = load ptr, ptr %exception, align 8, !dbg !2623, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2623
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2248, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !2623
  br label %cleanup, !dbg !2623

if.end6:                                          ; preds = %if.end
  %call8 = tail call i32 @SetImageArtifact(ptr noundef nonnull %1, ptr noundef %artifact, ptr noundef %value) #9, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2610, metadata !DIExpression()), !dbg !2611
  %cmp9 = icmp eq i32 %call8, 0, !dbg !2626
  br i1 %cmp9, label %if.then10, label %cleanup, !dbg !2628

if.then10:                                        ; preds = %if.end6
  %exception11 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2629
  %3 = load ptr, ptr %exception11, align 8, !dbg !2629, !tbaa !1093
  %4 = load ptr, ptr %images, align 8, !dbg !2630, !tbaa !1088
  %exception13 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 58, !dbg !2631
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %exception13) #9, !dbg !2632
  br label %cleanup, !dbg !2632

cleanup:                                          ; preds = %if.end6, %if.then10, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then10 ], [ %call8, %if.end6 ], !dbg !2611
  ret i32 %retval.0, !dbg !2633
}

declare !dbg !2634 i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetImageProfile(ptr noundef %wand, ptr noundef %name, ptr noundef %profile, i64 noundef %length) local_unnamed_addr #0 !dbg !2637 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2639, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %name, metadata !2640, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %profile, metadata !2641, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %length, metadata !2642, metadata !DIExpression()), !dbg !2645
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2646
  %0 = load i32, ptr %debug, align 8, !dbg !2646, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2648
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2649

if.then:                                          ; preds = %entry
  %name1 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2650
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2299, ptr noundef nonnull @.str.2, ptr noundef nonnull %name1) #9, !dbg !2651
  br label %if.end, !dbg !2652

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !2653
  %1 = load ptr, ptr %images, align 8, !dbg !2653, !tbaa !1088
  %cmp2 = icmp eq ptr %1, null, !dbg !2655
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !2656

if.then3:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2657
  %2 = load ptr, ptr %exception, align 8, !dbg !2657, !tbaa !1093
  %name4 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2657
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2301, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name4) #9, !dbg !2657
  br label %cleanup, !dbg !2657

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @AcquireStringInfo(i64 noundef %length) #9, !dbg !2659
  call void @llvm.dbg.value(metadata ptr %call8, metadata !2644, metadata !DIExpression()), !dbg !2645
  tail call void @SetStringInfoDatum(ptr noundef %call8, ptr noundef %profile) #9, !dbg !2660
  %3 = load ptr, ptr %images, align 8, !dbg !2661, !tbaa !1088
  %call10 = tail call i32 @SetImageProfile(ptr noundef %3, ptr noundef %name, ptr noundef %call8) #9, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2643, metadata !DIExpression()), !dbg !2645
  %call11 = tail call ptr @DestroyStringInfo(ptr noundef %call8) #9, !dbg !2663
  call void @llvm.dbg.value(metadata ptr %call11, metadata !2644, metadata !DIExpression()), !dbg !2645
  %cmp12 = icmp eq i32 %call10, 0, !dbg !2664
  br i1 %cmp12, label %if.then13, label %cleanup, !dbg !2666

if.then13:                                        ; preds = %if.end7
  %exception14 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2667
  %4 = load ptr, ptr %exception14, align 8, !dbg !2667, !tbaa !1093
  %5 = load ptr, ptr %images, align 8, !dbg !2668, !tbaa !1088
  %exception16 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 58, !dbg !2669
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %exception16) #9, !dbg !2670
  br label %cleanup, !dbg !2670

cleanup:                                          ; preds = %if.end7, %if.then13, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then13 ], [ %call10, %if.end7 ], !dbg !2645
  ret i32 %retval.0, !dbg !2671
}

declare !dbg !2672 ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #2

declare !dbg !2675 void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2678 i32 @SetImageProfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetImageProperty(ptr noundef %wand, ptr noundef %property, ptr noundef %value) local_unnamed_addr #0 !dbg !2681 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2683, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %property, metadata !2684, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %value, metadata !2685, metadata !DIExpression()), !dbg !2687
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2688
  %0 = load i32, ptr %debug, align 8, !dbg !2688, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2690
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2691

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2692
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2347, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2693
  br label %if.end, !dbg !2694

if.end:                                           ; preds = %if.then, %entry
  %images = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 5, !dbg !2695
  %1 = load ptr, ptr %images, align 8, !dbg !2695, !tbaa !1088
  %cmp1 = icmp eq ptr %1, null, !dbg !2697
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !2698

if.then2:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2699
  %2 = load ptr, ptr %exception, align 8, !dbg !2699, !tbaa !1093
  %name3 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2699
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2349, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name3) #9, !dbg !2699
  br label %cleanup, !dbg !2699

if.end6:                                          ; preds = %if.end
  %call8 = tail call i32 @SetImageProperty(ptr noundef nonnull %1, ptr noundef %property, ptr noundef %value) #9, !dbg !2701
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2686, metadata !DIExpression()), !dbg !2687
  %cmp9 = icmp eq i32 %call8, 0, !dbg !2702
  br i1 %cmp9, label %if.then10, label %cleanup, !dbg !2704

if.then10:                                        ; preds = %if.end6
  %exception11 = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 2, !dbg !2705
  %3 = load ptr, ptr %exception11, align 8, !dbg !2705, !tbaa !1093
  %4 = load ptr, ptr %images, align 8, !dbg !2706, !tbaa !1088
  %exception13 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 58, !dbg !2707
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %exception13) #9, !dbg !2708
  br label %cleanup, !dbg !2708

cleanup:                                          ; preds = %if.end6, %if.then10, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then10 ], [ %call8, %if.end6 ], !dbg !2687
  ret i32 %retval.0, !dbg !2709
}

declare !dbg !2710 i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetInterlaceScheme(ptr noundef %wand, i32 noundef %interlace_scheme) local_unnamed_addr #0 !dbg !2711 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %interlace_scheme, metadata !2717, metadata !DIExpression()), !dbg !2718
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2719
  %0 = load i32, ptr %debug, align 8, !dbg !2719, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2721
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2722

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2723
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2388, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2724
  br label %if.end, !dbg !2725

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2726
  %1 = load ptr, ptr %image_info, align 8, !dbg !2726, !tbaa !1153
  %interlace = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 13, !dbg !2727
  store i32 %interlace_scheme, ptr %interlace, align 8, !dbg !2728, !tbaa !1778
  ret i32 1, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetInterpolateMethod(ptr noundef %wand, i32 noundef %method) local_unnamed_addr #0 !dbg !2730 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2735, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i32 %method, metadata !2736, metadata !DIExpression()), !dbg !2738
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2739
  %0 = load i32, ptr %debug, align 8, !dbg !2739, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2741
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2742

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2743
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2427, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2744
  br label %if.end, !dbg !2745

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2746
  %1 = load ptr, ptr %image_info, align 8, !dbg !2746, !tbaa !1153
  %conv = zext i32 %method to i64, !dbg !2747
  %call1 = tail call ptr @CommandOptionToMnemonic(i32 noundef 33, i64 noundef %conv) #9, !dbg !2748
  %call2 = tail call i32 @SetImageOption(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %call1) #9, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2737, metadata !DIExpression()), !dbg !2738
  ret i32 %call2, !dbg !2750
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetOption(ptr noundef %wand, ptr noundef %key, ptr noundef %value) local_unnamed_addr #0 !dbg !2751 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2753, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %key, metadata !2754, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %value, metadata !2755, metadata !DIExpression()), !dbg !2756
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2757
  %0 = load i32, ptr %debug, align 8, !dbg !2757, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2759
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2760

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2761
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2467, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2762
  br label %if.end, !dbg !2763

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2764
  %1 = load ptr, ptr %image_info, align 8, !dbg !2764, !tbaa !1153
  %call1 = tail call i32 @SetImageOption(ptr noundef %1, ptr noundef %key, ptr noundef %value) #9, !dbg !2765
  ret i32 %call1, !dbg !2766
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetOrientation(ptr noundef %wand, i32 noundef %orientation) local_unnamed_addr #0 !dbg !2767 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2772, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 %orientation, metadata !2773, metadata !DIExpression()), !dbg !2774
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2775
  %0 = load i32, ptr %debug, align 8, !dbg !2775, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2777
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2778

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2779
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2502, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2780
  br label %if.end, !dbg !2781

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2782
  %1 = load ptr, ptr %image_info, align 8, !dbg !2782, !tbaa !1153
  %orientation1 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 1, !dbg !2783
  store i32 %orientation, ptr %orientation1, align 4, !dbg !2784, !tbaa !1918
  ret i32 1, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetPage(ptr noundef %wand, i64 noundef %width, i64 noundef %height, i64 noundef %x, i64 noundef %y) local_unnamed_addr #0 !dbg !2786 {
entry:
  %geometry = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2790, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %width, metadata !2791, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %height, metadata !2792, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %x, metadata !2793, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %y, metadata !2794, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %geometry) #9, !dbg !2797
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !2795, metadata !DIExpression()), !dbg !2798
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2799
  %0 = load i32, ptr %debug, align 8, !dbg !2799, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2801
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2802

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2803
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2549, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2804
  br label %if.end, !dbg !2805

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i64 %width to double, !dbg !2806
  %conv2 = uitofp i64 %height to double, !dbg !2807
  %conv3 = sitofp i64 %x to double, !dbg !2808
  %conv4 = sitofp i64 %y to double, !dbg !2809
  %call5 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %geometry, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %conv, double noundef %conv2, double noundef %conv3, double noundef %conv4) #9, !dbg !2810
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2811
  %1 = load ptr, ptr %image_info, align 8, !dbg !2811, !tbaa !1153
  %page = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 8, !dbg !2812
  %call7 = call ptr @CloneString(ptr noundef nonnull %page, ptr noundef nonnull %geometry) #9, !dbg !2813
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %geometry) #9, !dbg !2814
  ret i32 1, !dbg !2815
}

declare !dbg !2816 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetPassphrase(ptr noundef %wand, ptr noundef %passphrase) local_unnamed_addr #0 !dbg !2821 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2823, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %passphrase, metadata !2824, metadata !DIExpression()), !dbg !2825
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2826
  %0 = load i32, ptr %debug, align 8, !dbg !2826, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2828
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2829

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2830
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2587, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2831
  br label %if.end, !dbg !2832

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2833
  %1 = load ptr, ptr %image_info, align 8, !dbg !2833, !tbaa !1153
  %authenticate = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 37, !dbg !2834
  %call1 = tail call ptr @CloneString(ptr noundef nonnull %authenticate, ptr noundef %passphrase) #9, !dbg !2835
  ret i32 1, !dbg !2836
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetPointsize(ptr noundef %wand, double noundef %pointsize) local_unnamed_addr #0 !dbg !2837 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata double %pointsize, metadata !2843, metadata !DIExpression()), !dbg !2844
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2845
  %0 = load i32, ptr %debug, align 8, !dbg !2845, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2847
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2848

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2849
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2623, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2850
  br label %if.end, !dbg !2851

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2852
  %1 = load ptr, ptr %image_info, align 8, !dbg !2852, !tbaa !1153
  %pointsize1 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 22, !dbg !2853
  store double %pointsize, ptr %pointsize1, align 8, !dbg !2854, !tbaa !1986
  ret i32 1, !dbg !2855
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagickSetProgressMonitor(ptr noundef %wand, ptr noundef %progress_monitor, ptr noundef %client_data) local_unnamed_addr #0 !dbg !2856 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2861, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata ptr %progress_monitor, metadata !2862, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata ptr %client_data, metadata !2863, metadata !DIExpression()), !dbg !2865
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2866
  %0 = load i32, ptr %debug, align 8, !dbg !2866, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2868
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2869

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2870
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2674, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2871
  br label %if.end, !dbg !2872

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2873
  %1 = load ptr, ptr %image_info, align 8, !dbg !2873, !tbaa !1153
  %call1 = tail call ptr @SetImageInfoProgressMonitor(ptr noundef %1, ptr noundef %progress_monitor, ptr noundef %client_data) #9, !dbg !2874
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2864, metadata !DIExpression()), !dbg !2865
  ret ptr %call1, !dbg !2875
}

declare !dbg !2876 ptr @SetImageInfoProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetResourceLimit(i32 noundef %type, i64 noundef %limit) local_unnamed_addr #0 !dbg !2879 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %limit, metadata !2884, metadata !DIExpression()), !dbg !2885
  %call = tail call i32 @SetMagickResourceLimit(i32 noundef %type, i64 noundef %limit) #9, !dbg !2886
  ret i32 %call, !dbg !2887
}

declare !dbg !2888 i32 @SetMagickResourceLimit(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetResolution(ptr noundef %wand, double noundef %x_resolution, double noundef %y_resolution) local_unnamed_addr #0 !dbg !2889 {
entry:
  %density = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2893, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata double %x_resolution, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata double %y_resolution, metadata !2895, metadata !DIExpression()), !dbg !2897
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %density) #9, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %density, metadata !2896, metadata !DIExpression()), !dbg !2899
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2900
  %0 = load i32, ptr %debug, align 8, !dbg !2900, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2902
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2903

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2904
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2749, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2905
  br label %if.end, !dbg !2906

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %density, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %x_resolution, double noundef %y_resolution) #9, !dbg !2907
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2908
  %1 = load ptr, ptr %image_info, align 8, !dbg !2908, !tbaa !1153
  %density3 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 21, !dbg !2909
  %call5 = call ptr @CloneString(ptr noundef nonnull %density3, ptr noundef nonnull %density) #9, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %density) #9, !dbg !2911
  ret i32 1, !dbg !2912
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetSamplingFactors(ptr noundef %wand, i64 noundef %number_factors, ptr nocapture noundef readonly %sampling_factors) local_unnamed_addr #0 !dbg !2913 {
entry:
  %sampling_factor = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2918, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 %number_factors, metadata !2919, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata ptr %sampling_factors, metadata !2920, metadata !DIExpression()), !dbg !2923
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %sampling_factor) #9, !dbg !2924
  call void @llvm.dbg.declare(metadata ptr %sampling_factor, metadata !2921, metadata !DIExpression()), !dbg !2925
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2926
  %0 = load i32, ptr %debug, align 8, !dbg !2926, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2928
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2929

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2930
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2796, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2931
  br label %if.end, !dbg !2932

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2933
  %1 = load ptr, ptr %image_info, align 8, !dbg !2933, !tbaa !1153
  %sampling_factor1 = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 17, !dbg !2935
  %2 = load ptr, ptr %sampling_factor1, align 8, !dbg !2935, !tbaa !2110
  %cmp2.not = icmp eq ptr %2, null, !dbg !2936
  br i1 %cmp2.not, label %if.end9, label %if.then3, !dbg !2937

if.then3:                                         ; preds = %if.end
  %call6 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %2) #9, !dbg !2938
  %3 = load ptr, ptr %image_info, align 8, !dbg !2939, !tbaa !1153
  %sampling_factor8 = getelementptr inbounds %struct._ImageInfo, ptr %3, i64 0, i32 17, !dbg !2940
  store ptr %call6, ptr %sampling_factor8, align 8, !dbg !2941, !tbaa !2110
  br label %if.end9, !dbg !2942

if.end9:                                          ; preds = %if.then3, %if.end
  %cmp10 = icmp eq i64 %number_factors, 0, !dbg !2943
  br i1 %cmp10, label %cleanup, label %for.cond.preheader, !dbg !2945

for.cond.preheader:                               ; preds = %if.end9
  %sub = add i64 %number_factors, -1
  call void @llvm.dbg.value(metadata i64 0, metadata !2922, metadata !DIExpression()), !dbg !2923
  %cmp1339 = icmp sgt i64 %sub, 0, !dbg !2946
  br i1 %cmp1339, label %for.body, label %for.end, !dbg !2949

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.040 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.040, metadata !2922, metadata !DIExpression()), !dbg !2923
  %arrayidx = getelementptr inbounds double, ptr %sampling_factors, i64 %i.040, !dbg !2950
  %4 = load double, ptr %arrayidx, align 8, !dbg !2950, !tbaa !2036
  %call15 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %sampling_factor, i64 noundef 4096, ptr noundef nonnull @.str.11, double noundef %4) #9, !dbg !2952
  %5 = load ptr, ptr %image_info, align 8, !dbg !2953, !tbaa !1153
  %sampling_factor17 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 17, !dbg !2954
  %call19 = call i32 @ConcatenateString(ptr noundef nonnull %sampling_factor17, ptr noundef nonnull %sampling_factor) #9, !dbg !2955
  %inc = add nuw nsw i64 %i.040, 1, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2922, metadata !DIExpression()), !dbg !2923
  %exitcond.not = icmp eq i64 %inc, %sub, !dbg !2946
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2949, !llvm.loop !2957

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %i.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %sub, %for.body ], !dbg !2959
  %arrayidx21 = getelementptr inbounds double, ptr %sampling_factors, i64 %i.0.lcssa, !dbg !2960
  %6 = load double, ptr %arrayidx21, align 8, !dbg !2960, !tbaa !2036
  %call22 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %sampling_factor, i64 noundef 4096, ptr noundef nonnull @.str.12, double noundef %6) #9, !dbg !2961
  %7 = load ptr, ptr %image_info, align 8, !dbg !2962, !tbaa !1153
  %sampling_factor24 = getelementptr inbounds %struct._ImageInfo, ptr %7, i64 0, i32 17, !dbg !2963
  %call26 = call i32 @ConcatenateString(ptr noundef nonnull %sampling_factor24, ptr noundef nonnull %sampling_factor) #9, !dbg !2964
  br label %cleanup, !dbg !2965

cleanup:                                          ; preds = %if.end9, %for.end
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %sampling_factor) #9, !dbg !2966
  ret i32 1, !dbg !2966
}

declare !dbg !2967 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

declare !dbg !2970 i32 @ConcatenateString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetSize(ptr noundef %wand, i64 noundef %columns, i64 noundef %rows) local_unnamed_addr #0 !dbg !2973 {
entry:
  %geometry = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2977, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %columns, metadata !2978, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %rows, metadata !2979, metadata !DIExpression()), !dbg !2981
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %geometry) #9, !dbg !2982
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !2980, metadata !DIExpression()), !dbg !2983
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !2984
  %0 = load i32, ptr %debug, align 8, !dbg !2984, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !2986
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2987

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !2988
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2852, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !2989
  br label %if.end, !dbg !2990

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i64 %columns to double, !dbg !2991
  %conv2 = uitofp i64 %rows to double, !dbg !2992
  %call3 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %geometry, i64 noundef 4096, ptr noundef nonnull @.str.13, double noundef %conv, double noundef %conv2) #9, !dbg !2993
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !2994
  %1 = load ptr, ptr %image_info, align 8, !dbg !2994, !tbaa !1153
  %size = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 6, !dbg !2995
  %call5 = call ptr @CloneString(ptr noundef nonnull %size, ptr noundef nonnull %geometry) #9, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %geometry) #9, !dbg !2997
  ret i32 1, !dbg !2998
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetSizeOffset(ptr noundef %wand, i64 noundef %columns, i64 noundef %rows, i64 noundef %offset) local_unnamed_addr #0 !dbg !2999 {
entry:
  %geometry = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %wand, metadata !3003, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %columns, metadata !3004, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %rows, metadata !3005, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %offset, metadata !3006, metadata !DIExpression()), !dbg !3008
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %geometry) #9, !dbg !3009
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !3007, metadata !DIExpression()), !dbg !3010
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !3011
  %0 = load i32, ptr %debug, align 8, !dbg !3011, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !3013
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3014

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !3015
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2899, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !3016
  br label %if.end, !dbg !3017

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i64 %columns to double, !dbg !3018
  %conv2 = uitofp i64 %rows to double, !dbg !3019
  %conv3 = sitofp i64 %offset to double, !dbg !3020
  %call4 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %geometry, i64 noundef 4096, ptr noundef nonnull @.str.14, double noundef %conv, double noundef %conv2, double noundef %conv3) #9, !dbg !3021
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !3022
  %1 = load ptr, ptr %image_info, align 8, !dbg !3022, !tbaa !1153
  %size = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 6, !dbg !3023
  %call6 = call ptr @CloneString(ptr noundef nonnull %size, ptr noundef nonnull %geometry) #9, !dbg !3024
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %geometry) #9, !dbg !3025
  ret i32 1, !dbg !3026
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickSetType(ptr noundef %wand, i32 noundef %image_type) local_unnamed_addr #0 !dbg !3027 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !3032, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i32 %image_type, metadata !3033, metadata !DIExpression()), !dbg !3034
  %debug = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 8, !dbg !3035
  %0 = load i32, ptr %debug, align 8, !dbg !3035, !tbaa !1075
  %cmp.not = icmp eq i32 %0, 0, !dbg !3037
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3038

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !3039
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2940, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #9, !dbg !3040
  br label %if.end, !dbg !3041

if.end:                                           ; preds = %if.then, %entry
  %image_info = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 3, !dbg !3042
  %1 = load ptr, ptr %image_info, align 8, !dbg !3042, !tbaa !1153
  %type = getelementptr inbounds %struct._ImageInfo, ptr %1, i64 0, i32 31, !dbg !3043
  store i32 %image_type, ptr %type, align 4, !dbg !3044, !tbaa !2255
  ret i32 1, !dbg !3045
}

declare !dbg !3046 double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(1,2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind allocsize(1,2) }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1030, !1031, !1032, !1033, !1034, !1035}
!llvm.ident = !{!1036}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !613, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/magick-property.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "bbad2ace85759dc953cc4f4e915e3231")
!2 = !{!3, !9, !82, !107, !119, !129, !135, !140, !177, !191, !224, !246, !251, !259, !294, !309, !380, !388, !394, !411, !423, !444, !451, !476, !552, !580, !592, !607}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 28, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!12 = !DIEnumerator(name: "UndefinedException", value: 0)
!13 = !DIEnumerator(name: "WarningException", value: 300)
!14 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!15 = !DIEnumerator(name: "TypeWarning", value: 305)
!16 = !DIEnumerator(name: "OptionWarning", value: 310)
!17 = !DIEnumerator(name: "DelegateWarning", value: 315)
!18 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!19 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!20 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!21 = !DIEnumerator(name: "BlobWarning", value: 335)
!22 = !DIEnumerator(name: "StreamWarning", value: 340)
!23 = !DIEnumerator(name: "CacheWarning", value: 345)
!24 = !DIEnumerator(name: "CoderWarning", value: 350)
!25 = !DIEnumerator(name: "FilterWarning", value: 352)
!26 = !DIEnumerator(name: "ModuleWarning", value: 355)
!27 = !DIEnumerator(name: "DrawWarning", value: 360)
!28 = !DIEnumerator(name: "ImageWarning", value: 365)
!29 = !DIEnumerator(name: "WandWarning", value: 370)
!30 = !DIEnumerator(name: "RandomWarning", value: 375)
!31 = !DIEnumerator(name: "XServerWarning", value: 380)
!32 = !DIEnumerator(name: "MonitorWarning", value: 385)
!33 = !DIEnumerator(name: "RegistryWarning", value: 390)
!34 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!35 = !DIEnumerator(name: "PolicyWarning", value: 399)
!36 = !DIEnumerator(name: "ErrorException", value: 400)
!37 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!38 = !DIEnumerator(name: "TypeError", value: 405)
!39 = !DIEnumerator(name: "OptionError", value: 410)
!40 = !DIEnumerator(name: "DelegateError", value: 415)
!41 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!42 = !DIEnumerator(name: "CorruptImageError", value: 425)
!43 = !DIEnumerator(name: "FileOpenError", value: 430)
!44 = !DIEnumerator(name: "BlobError", value: 435)
!45 = !DIEnumerator(name: "StreamError", value: 440)
!46 = !DIEnumerator(name: "CacheError", value: 445)
!47 = !DIEnumerator(name: "CoderError", value: 450)
!48 = !DIEnumerator(name: "FilterError", value: 452)
!49 = !DIEnumerator(name: "ModuleError", value: 455)
!50 = !DIEnumerator(name: "DrawError", value: 460)
!51 = !DIEnumerator(name: "ImageError", value: 465)
!52 = !DIEnumerator(name: "WandError", value: 470)
!53 = !DIEnumerator(name: "RandomError", value: 475)
!54 = !DIEnumerator(name: "XServerError", value: 480)
!55 = !DIEnumerator(name: "MonitorError", value: 485)
!56 = !DIEnumerator(name: "RegistryError", value: 490)
!57 = !DIEnumerator(name: "ConfigureError", value: 495)
!58 = !DIEnumerator(name: "PolicyError", value: 499)
!59 = !DIEnumerator(name: "FatalErrorException", value: 700)
!60 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!61 = !DIEnumerator(name: "TypeFatalError", value: 705)
!62 = !DIEnumerator(name: "OptionFatalError", value: 710)
!63 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!64 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!65 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!66 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!67 = !DIEnumerator(name: "BlobFatalError", value: 735)
!68 = !DIEnumerator(name: "StreamFatalError", value: 740)
!69 = !DIEnumerator(name: "CacheFatalError", value: 745)
!70 = !DIEnumerator(name: "CoderFatalError", value: 750)
!71 = !DIEnumerator(name: "FilterFatalError", value: 752)
!72 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!73 = !DIEnumerator(name: "DrawFatalError", value: 760)
!74 = !DIEnumerator(name: "ImageFatalError", value: 765)
!75 = !DIEnumerator(name: "WandFatalError", value: 770)
!76 = !DIEnumerator(name: "RandomFatalError", value: 775)
!77 = !DIEnumerator(name: "XServerFatalError", value: 780)
!78 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!79 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!80 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!81 = !DIEnumerator(name: "PolicyFatalError", value: 799)
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
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !225)
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
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, baseType: !5, size: 32, elements: !247)
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
!476 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !477, line: 25, baseType: !478, size: 32, elements: !479)
!477 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!478 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!480 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!481 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!482 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!483 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!484 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!485 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!486 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!487 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!488 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!489 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!490 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!491 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!492 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!493 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!494 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!495 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!496 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!497 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!498 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!499 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!500 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!501 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!502 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!503 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!504 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!505 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!506 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!507 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!508 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!509 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!510 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!511 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!512 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!513 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!514 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!515 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!516 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!517 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!518 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!519 = !DIEnumerator(name: "MagickListOptions", value: 38)
!520 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!521 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!522 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!523 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!524 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!525 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!526 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!527 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!528 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!529 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!530 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!531 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!532 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!533 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!534 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!535 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!536 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!537 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!538 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!539 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!540 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!541 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!542 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!543 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!544 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!545 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!546 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!547 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!548 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!549 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!550 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!551 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 25, baseType: !5, size: 32, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!554 = !DIEnumerator(name: "NoValue", value: 0)
!555 = !DIEnumerator(name: "XValue", value: 1)
!556 = !DIEnumerator(name: "XiValue", value: 1)
!557 = !DIEnumerator(name: "YValue", value: 2)
!558 = !DIEnumerator(name: "PsiValue", value: 2)
!559 = !DIEnumerator(name: "WidthValue", value: 4)
!560 = !DIEnumerator(name: "RhoValue", value: 4)
!561 = !DIEnumerator(name: "HeightValue", value: 8)
!562 = !DIEnumerator(name: "SigmaValue", value: 8)
!563 = !DIEnumerator(name: "ChiValue", value: 16)
!564 = !DIEnumerator(name: "XiNegative", value: 32)
!565 = !DIEnumerator(name: "XNegative", value: 32)
!566 = !DIEnumerator(name: "PsiNegative", value: 64)
!567 = !DIEnumerator(name: "YNegative", value: 64)
!568 = !DIEnumerator(name: "ChiNegative", value: 128)
!569 = !DIEnumerator(name: "PercentValue", value: 4096)
!570 = !DIEnumerator(name: "AspectValue", value: 8192)
!571 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!572 = !DIEnumerator(name: "LessValue", value: 16384)
!573 = !DIEnumerator(name: "GreaterValue", value: 32768)
!574 = !DIEnumerator(name: "MinimumValue", value: 65536)
!575 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!576 = !DIEnumerator(name: "AreaValue", value: 131072)
!577 = !DIEnumerator(name: "DecimalValue", value: 262144)
!578 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!579 = !DIEnumerator(name: "AllValues", value: 2147483647)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !581, line: 25, baseType: !5, size: 32, elements: !582)
!581 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591}
!583 = !DIEnumerator(name: "UndefinedResource", value: 0)
!584 = !DIEnumerator(name: "AreaResource", value: 1)
!585 = !DIEnumerator(name: "DiskResource", value: 2)
!586 = !DIEnumerator(name: "FileResource", value: 3)
!587 = !DIEnumerator(name: "MapResource", value: 4)
!588 = !DIEnumerator(name: "MemoryResource", value: 5)
!589 = !DIEnumerator(name: "ThreadResource", value: 6)
!590 = !DIEnumerator(name: "TimeResource", value: 7)
!591 = !DIEnumerator(name: "ThrottleResource", value: 8)
!592 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !593, line: 46, baseType: !5, size: 32, elements: !594)
!593 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!595 = !DIEnumerator(name: "_ISupper", value: 256)
!596 = !DIEnumerator(name: "_ISlower", value: 512)
!597 = !DIEnumerator(name: "_ISalpha", value: 1024)
!598 = !DIEnumerator(name: "_ISdigit", value: 2048)
!599 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!600 = !DIEnumerator(name: "_ISspace", value: 8192)
!601 = !DIEnumerator(name: "_ISprint", value: 16384)
!602 = !DIEnumerator(name: "_ISgraph", value: 32768)
!603 = !DIEnumerator(name: "_ISblank", value: 1)
!604 = !DIEnumerator(name: "_IScntrl", value: 2)
!605 = !DIEnumerator(name: "_ISpunct", value: 4)
!606 = !DIEnumerator(name: "_ISalnum", value: 8)
!607 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !608, line: 28, baseType: !5, size: 32, elements: !609)
!608 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!609 = !{!610, !611, !612}
!610 = !DIEnumerator(name: "UndefinedFormatType", value: 0)
!611 = !DIEnumerator(name: "ImplicitFormatType", value: 1)
!612 = !DIEnumerator(name: "ExplicitFormatType", value: 2)
!613 = !{!614, !615, !670, !674, !748, !706, !835, !679, !626, !803, !836, !840, !815, !849, !478, !804, !644, !850, !652}
!614 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !108, line: 150, size: 105920, elements: !618)
!618 = !{!619, !621, !623, !625, !628, !630, !632, !633, !634, !635, !636, !637, !648, !649, !650, !651, !653, !667, !669, !671, !673, !676, !677, !678, !684, !685, !686, !694, !695, !696, !697, !698, !699, !701, !703, !705, !707, !709, !711, !713, !714, !715, !716, !717, !718, !719, !727, !742, !756, !757, !758, !759, !763, !767, !771, !772, !773, !774, !775, !792, !793, !795, !796, !806, !807, !809, !810, !811, !812, !813, !814, !816, !817, !818, !819, !820, !821, !822, !824, !825, !826, !827, !828, !832, !834}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !617, file: !108, line: 153, baseType: !620, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !246)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !617, file: !108, line: 156, baseType: !622, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !141, line: 61, baseType: !140)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !617, file: !108, line: 159, baseType: !624, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !83, line: 49, baseType: !82)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !617, file: !108, line: 162, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !627, line: 46, baseType: !614)
!627 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !617, file: !108, line: 165, baseType: !629, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !108, line: 86, baseType: !107)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !617, file: !108, line: 168, baseType: !631, size: 32, offset: 224)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !617, file: !108, line: 169, baseType: !631, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !617, file: !108, line: 172, baseType: !626, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !617, file: !108, line: 173, baseType: !626, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !617, file: !108, line: 174, baseType: !626, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !617, file: !108, line: 175, baseType: !626, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !617, file: !108, line: 178, baseType: !638, size: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !395, line: 148, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !395, line: 131, size: 64, elements: !641)
!641 = !{!642, !645, !646, !647}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !640, file: !395, line: 143, baseType: !643, size: 16)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !644)
!644 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !640, file: !395, line: 144, baseType: !643, size: 16, offset: 16)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !640, file: !395, line: 145, baseType: !643, size: 16, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !640, file: !395, line: 146, baseType: !643, size: 16, offset: 48)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !617, file: !108, line: 179, baseType: !639, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !617, file: !108, line: 180, baseType: !639, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !617, file: !108, line: 181, baseType: !639, size: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !617, file: !108, line: 184, baseType: !652, size: 64, offset: 832)
!652 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !617, file: !108, line: 187, baseType: !654, size: 768, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !108, line: 128, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !108, line: 121, size: 768, elements: !656)
!656 = !{!657, !664, !665, !666}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !655, file: !108, line: 124, baseType: !658, size: 192)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !108, line: 101, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !108, line: 95, size: 192, elements: !660)
!660 = !{!661, !662, !663}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !659, file: !108, line: 98, baseType: !652, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !659, file: !108, line: 99, baseType: !652, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !659, file: !108, line: 100, baseType: !652, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !655, file: !108, line: 125, baseType: !658, size: 192, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !655, file: !108, line: 126, baseType: !658, size: 192, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !655, file: !108, line: 127, baseType: !658, size: 192, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !617, file: !108, line: 190, baseType: !668, size: 32, offset: 1664)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !252, line: 49, baseType: !251)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !617, file: !108, line: 193, baseType: !670, size: 64, offset: 1728)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !617, file: !108, line: 196, baseType: !672, size: 32, offset: 1792)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !108, line: 93, baseType: !135)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !617, file: !108, line: 199, baseType: !674, size: 64, offset: 1856)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !617, file: !108, line: 200, baseType: !674, size: 64, offset: 1920)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !617, file: !108, line: 201, baseType: !674, size: 64, offset: 1984)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !617, file: !108, line: 204, baseType: !679, size: 64, offset: 2048)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !680, line: 77, baseType: !681)
!680 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !682, line: 193, baseType: !683)
!682 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!683 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !617, file: !108, line: 207, baseType: !652, size: 64, offset: 2112)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !617, file: !108, line: 208, baseType: !652, size: 64, offset: 2176)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !617, file: !108, line: 211, baseType: !687, size: 256, offset: 2240)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !295, line: 130, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !295, line: 121, size: 256, elements: !689)
!689 = !{!690, !691, !692, !693}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !688, file: !295, line: 124, baseType: !626, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !688, file: !295, line: 125, baseType: !626, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !688, file: !295, line: 128, baseType: !679, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !688, file: !295, line: 129, baseType: !679, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !617, file: !108, line: 212, baseType: !687, size: 256, offset: 2496)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !617, file: !108, line: 213, baseType: !687, size: 256, offset: 2752)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !617, file: !108, line: 216, baseType: !652, size: 64, offset: 3008)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !617, file: !108, line: 217, baseType: !652, size: 64, offset: 3072)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !617, file: !108, line: 218, baseType: !652, size: 64, offset: 3136)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !617, file: !108, line: 221, baseType: !700, size: 32, offset: 3200)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !260, line: 66, baseType: !259)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !617, file: !108, line: 224, baseType: !702, size: 32, offset: 3232)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !108, line: 73, baseType: !119)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !617, file: !108, line: 227, baseType: !704, size: 32, offset: 3264)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !130, line: 35, baseType: !129)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !617, file: !108, line: 230, baseType: !706, size: 32, offset: 3296)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !295, line: 91, baseType: !294)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !617, file: !108, line: 233, baseType: !708, size: 32, offset: 3328)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !310, line: 99, baseType: !309)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !617, file: !108, line: 236, baseType: !710, size: 32, offset: 3360)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !381, line: 32, baseType: !380)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !617, file: !108, line: 239, baseType: !712, size: 64, offset: 3392)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !617, file: !108, line: 242, baseType: !626, size: 64, offset: 3456)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !617, file: !108, line: 243, baseType: !626, size: 64, offset: 3520)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !617, file: !108, line: 246, baseType: !679, size: 64, offset: 3584)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !617, file: !108, line: 249, baseType: !626, size: 64, offset: 3648)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !617, file: !108, line: 250, baseType: !626, size: 64, offset: 3712)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !617, file: !108, line: 253, baseType: !679, size: 64, offset: 3776)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !617, file: !108, line: 256, baseType: !720, size: 192, offset: 3840)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !721, line: 68, baseType: !722)
!721 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !721, line: 62, size: 192, elements: !723)
!723 = !{!724, !725, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !722, file: !721, line: 65, baseType: !652, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !722, file: !721, line: 66, baseType: !652, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !722, file: !721, line: 67, baseType: !652, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !617, file: !108, line: 259, baseType: !728, size: 512, offset: 4032)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !389, line: 51, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !389, line: 40, size: 512, elements: !730)
!730 = !{!731, !738, !739, !741}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !729, file: !389, line: 43, baseType: !732, size: 192)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !389, line: 38, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !389, line: 32, size: 192, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !733, file: !389, line: 35, baseType: !652, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !733, file: !389, line: 36, baseType: !652, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !733, file: !389, line: 37, baseType: !652, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !729, file: !389, line: 44, baseType: !732, size: 192, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !729, file: !389, line: 47, baseType: !740, size: 32, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !389, line: 30, baseType: !388)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !729, file: !389, line: 50, baseType: !626, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !617, file: !108, line: 262, baseType: !743, size: 64, offset: 4544)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !744, line: 26, baseType: !745)
!744 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!631, !748, !750, !753, !670}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !752)
!752 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !755)
!755 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !617, file: !108, line: 265, baseType: !670, size: 64, offset: 4608)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !617, file: !108, line: 266, baseType: !670, size: 64, offset: 4672)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !617, file: !108, line: 267, baseType: !670, size: 64, offset: 4736)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !617, file: !108, line: 270, baseType: !760, size: 64, offset: 4800)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !83, line: 52, baseType: !762)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !83, line: 51, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !617, file: !108, line: 273, baseType: !764, size: 64, offset: 4864)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !766)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !617, file: !108, line: 276, baseType: !768, size: 32768, offset: 4928)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 32768, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 4096)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !617, file: !108, line: 277, baseType: !768, size: 32768, offset: 37696)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !617, file: !108, line: 278, baseType: !768, size: 32768, offset: 70464)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !617, file: !108, line: 281, baseType: !626, size: 64, offset: 103232)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !617, file: !108, line: 282, baseType: !626, size: 64, offset: 103296)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !617, file: !108, line: 285, baseType: !776, size: 448, offset: 103360)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !10, line: 102, size: 448, elements: !778)
!778 = !{!779, !781, !782, !783, !784, !785, !786, !791}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !777, file: !10, line: 105, baseType: !780, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !10, line: 100, baseType: !9)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !777, file: !10, line: 108, baseType: !478, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !777, file: !10, line: 111, baseType: !674, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !777, file: !10, line: 112, baseType: !674, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !777, file: !10, line: 115, baseType: !670, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !777, file: !10, line: 118, baseType: !631, size: 32, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !777, file: !10, line: 121, baseType: !787, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !789, line: 26, baseType: !790)
!789 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !789, line: 25, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !777, file: !10, line: 124, baseType: !626, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !617, file: !108, line: 288, baseType: !631, size: 32, offset: 103808)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !108, line: 291, baseType: !794, size: 64, offset: 103872)
!794 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !679)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !617, file: !108, line: 294, baseType: !787, size: 64, offset: 103936)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !617, file: !108, line: 297, baseType: !797, size: 256, offset: 104000)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !252, line: 40, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !252, line: 27, size: 256, elements: !799)
!799 = !{!800, !801, !802, !805}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !798, file: !252, line: 30, baseType: !674, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !798, file: !252, line: 33, baseType: !626, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !798, file: !252, line: 36, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !798, file: !252, line: 39, baseType: !626, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !617, file: !108, line: 298, baseType: !797, size: 256, offset: 104256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !617, file: !108, line: 299, baseType: !808, size: 64, offset: 104512)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !617, file: !108, line: 302, baseType: !626, size: 64, offset: 104576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !617, file: !108, line: 305, baseType: !626, size: 64, offset: 104640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !617, file: !108, line: 308, baseType: !712, size: 64, offset: 104704)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !617, file: !108, line: 309, baseType: !712, size: 64, offset: 104768)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !108, line: 310, baseType: !712, size: 64, offset: 104832)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !617, file: !108, line: 313, baseType: !815, size: 32, offset: 104896)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !395, line: 47, baseType: !394)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !617, file: !108, line: 316, baseType: !631, size: 32, offset: 104928)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !617, file: !108, line: 319, baseType: !639, size: 64, offset: 104960)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !617, file: !108, line: 322, baseType: !712, size: 64, offset: 105024)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !617, file: !108, line: 325, baseType: !687, size: 256, offset: 105088)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !617, file: !108, line: 328, baseType: !670, size: 64, offset: 105344)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !617, file: !108, line: 329, baseType: !670, size: 64, offset: 105408)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !108, line: 332, baseType: !823, size: 32, offset: 105472)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !108, line: 61, baseType: !177)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !617, file: !108, line: 335, baseType: !631, size: 32, offset: 105504)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !617, file: !108, line: 338, baseType: !754, size: 64, offset: 105536)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !617, file: !108, line: 341, baseType: !631, size: 32, offset: 105600)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !617, file: !108, line: 344, baseType: !626, size: 64, offset: 105664)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !617, file: !108, line: 347, baseType: !829, size: 64, offset: 105728)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !830, line: 7, baseType: !831)
!830 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !682, line: 160, baseType: !683)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !617, file: !108, line: 350, baseType: !833, size: 32, offset: 105792)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !395, line: 79, baseType: !411)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !617, file: !108, line: 353, baseType: !626, size: 64, offset: 105856)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !838, line: 26, baseType: !839)
!838 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !838, line: 25, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !842, line: 40, baseType: !843)
!842 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !842, line: 29, size: 32960, elements: !844)
!844 = !{!845, !846, !847, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !843, file: !842, line: 32, baseType: !768, size: 32768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !843, file: !842, line: 35, baseType: !803, size: 64, offset: 32768)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !843, file: !842, line: 38, baseType: !626, size: 64, offset: 32832)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !843, file: !842, line: 39, baseType: !626, size: 64, offset: 32896)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickInfo", file: !608, line: 103, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickInfo", file: !608, line: 51, size: 1216, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !993, !1001, !1006, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1021, !1023, !1024, !1026, !1027, !1028, !1029}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !853, file: !608, line: 54, baseType: !674, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !853, file: !608, line: 55, baseType: !674, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !853, file: !608, line: 56, baseType: !674, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !853, file: !608, line: 57, baseType: !674, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !853, file: !608, line: 58, baseType: !674, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !853, file: !608, line: 61, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !4, line: 223, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !108, line: 356, size: 134336, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !899, !900, !901, !902, !903, !904, !906, !907, !908, !909, !910, !911, !922, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !990, !991, !992}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !863, file: !108, line: 359, baseType: !624, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !863, file: !108, line: 362, baseType: !629, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !863, file: !108, line: 365, baseType: !631, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !863, file: !108, line: 366, baseType: !631, size: 32, offset: 96)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !863, file: !108, line: 367, baseType: !631, size: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !863, file: !108, line: 368, baseType: !631, size: 32, offset: 160)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !863, file: !108, line: 371, baseType: !674, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !863, file: !108, line: 372, baseType: !674, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !863, file: !108, line: 373, baseType: !674, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !863, file: !108, line: 374, baseType: !674, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !863, file: !108, line: 377, baseType: !626, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !863, file: !108, line: 378, baseType: !626, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !863, file: !108, line: 379, baseType: !626, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !863, file: !108, line: 382, baseType: !702, size: 32, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !863, file: !108, line: 385, baseType: !704, size: 32, offset: 672)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !863, file: !108, line: 388, baseType: !672, size: 32, offset: 704)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !863, file: !108, line: 391, baseType: !626, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !863, file: !108, line: 394, baseType: !674, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !863, file: !108, line: 395, baseType: !674, size: 64, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !863, file: !108, line: 396, baseType: !674, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !863, file: !108, line: 397, baseType: !674, size: 64, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !863, file: !108, line: 398, baseType: !674, size: 64, offset: 1088)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !863, file: !108, line: 401, baseType: !652, size: 64, offset: 1152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !863, file: !108, line: 402, baseType: !652, size: 64, offset: 1216)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !863, file: !108, line: 405, baseType: !639, size: 64, offset: 1280)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !863, file: !108, line: 406, baseType: !639, size: 64, offset: 1344)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !863, file: !108, line: 407, baseType: !639, size: 64, offset: 1408)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !863, file: !108, line: 410, baseType: !631, size: 32, offset: 1472)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !863, file: !108, line: 411, baseType: !631, size: 32, offset: 1504)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !863, file: !108, line: 414, baseType: !626, size: 64, offset: 1536)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !863, file: !108, line: 417, baseType: !622, size: 32, offset: 1600)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !863, file: !108, line: 420, baseType: !823, size: 32, offset: 1632)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !863, file: !108, line: 423, baseType: !898, size: 32, offset: 1664)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !192, line: 59, baseType: !191)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !863, file: !108, line: 426, baseType: !679, size: 64, offset: 1728)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !863, file: !108, line: 429, baseType: !631, size: 32, offset: 1792)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !863, file: !108, line: 430, baseType: !631, size: 32, offset: 1824)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !863, file: !108, line: 433, baseType: !674, size: 64, offset: 1856)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !863, file: !108, line: 434, baseType: !674, size: 64, offset: 1920)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !863, file: !108, line: 437, baseType: !905, size: 32, offset: 1984)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !224)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !863, file: !108, line: 440, baseType: !615, size: 64, offset: 2048)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !863, file: !108, line: 443, baseType: !670, size: 64, offset: 2112)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !863, file: !108, line: 446, baseType: !743, size: 64, offset: 2176)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !863, file: !108, line: 449, baseType: !670, size: 64, offset: 2240)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !863, file: !108, line: 450, baseType: !670, size: 64, offset: 2304)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !863, file: !108, line: 453, baseType: !912, size: 64, offset: 2368)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !913, line: 26, baseType: !914)
!913 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!626, !917, !919, !921}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !863, file: !108, line: 456, baseType: !923, size: 64, offset: 2432)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !925, line: 7, baseType: !926)
!925 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !927, line: 49, size: 1728, elements: !928)
!927 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!928 = !{!929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !944, !946, !947, !948, !950, !951, !953, !957, !960, !962, !965, !968, !969, !970, !971, !972}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !926, file: !927, line: 51, baseType: !478, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !926, file: !927, line: 54, baseType: !674, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !926, file: !927, line: 55, baseType: !674, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !926, file: !927, line: 56, baseType: !674, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !926, file: !927, line: 57, baseType: !674, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !926, file: !927, line: 58, baseType: !674, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !926, file: !927, line: 59, baseType: !674, size: 64, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !926, file: !927, line: 60, baseType: !674, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !926, file: !927, line: 61, baseType: !674, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !926, file: !927, line: 64, baseType: !674, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !926, file: !927, line: 65, baseType: !674, size: 64, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !926, file: !927, line: 66, baseType: !674, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !926, file: !927, line: 68, baseType: !942, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !927, line: 36, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !926, file: !927, line: 70, baseType: !945, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !926, file: !927, line: 72, baseType: !478, size: 32, offset: 896)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !926, file: !927, line: 73, baseType: !478, size: 32, offset: 928)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !926, file: !927, line: 74, baseType: !949, size: 64, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !682, line: 152, baseType: !683)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !926, file: !927, line: 77, baseType: !644, size: 16, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !926, file: !927, line: 78, baseType: !952, size: 8, offset: 1040)
!952 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !926, file: !927, line: 79, baseType: !954, size: 8, offset: 1048)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 8, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: 1)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !926, file: !927, line: 81, baseType: !958, size: 64, offset: 1088)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !927, line: 43, baseType: null)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !926, file: !927, line: 89, baseType: !961, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !682, line: 153, baseType: !683)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !926, file: !927, line: 91, baseType: !963, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !927, line: 37, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !926, file: !927, line: 92, baseType: !966, size: 64, offset: 1280)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !927, line: 38, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !926, file: !927, line: 93, baseType: !945, size: 64, offset: 1344)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !926, file: !927, line: 94, baseType: !670, size: 64, offset: 1408)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !926, file: !927, line: 95, baseType: !626, size: 64, offset: 1472)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !926, file: !927, line: 96, baseType: !478, size: 32, offset: 1536)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !926, file: !927, line: 98, baseType: !973, size: 160, offset: 1568)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 160, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 20)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !863, file: !108, line: 459, baseType: !670, size: 64, offset: 2496)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !863, file: !108, line: 462, baseType: !626, size: 64, offset: 2560)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !863, file: !108, line: 465, baseType: !768, size: 32768, offset: 2624)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !863, file: !108, line: 466, baseType: !768, size: 32768, offset: 35392)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !863, file: !108, line: 467, baseType: !768, size: 32768, offset: 68160)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !863, file: !108, line: 468, baseType: !768, size: 32768, offset: 100928)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !863, file: !108, line: 471, baseType: !631, size: 32, offset: 133696)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !863, file: !108, line: 474, baseType: !674, size: 64, offset: 133760)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !863, file: !108, line: 477, baseType: !626, size: 64, offset: 133824)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !863, file: !108, line: 478, baseType: !626, size: 64, offset: 133888)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !863, file: !108, line: 481, baseType: !639, size: 64, offset: 133952)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !863, file: !108, line: 484, baseType: !626, size: 64, offset: 134016)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !863, file: !108, line: 487, baseType: !989, size: 32, offset: 134080)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !424, line: 47, baseType: !423)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !863, file: !108, line: 490, baseType: !639, size: 64, offset: 134112)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !863, file: !108, line: 493, baseType: !670, size: 64, offset: 134208)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !863, file: !108, line: 496, baseType: !631, size: 32, offset: 134272)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !853, file: !608, line: 64, baseType: !994, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodeImageHandler", file: !608, line: 43, baseType: !996)
!996 = !DISubroutineType(types: !997)
!997 = !{!615, !998, !1000}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !853, file: !608, line: 67, baseType: !1002, size: 64, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodeImageHandler", file: !608, line: 46, baseType: !1004)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!631, !998, !615}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !853, file: !608, line: 70, baseType: !1007, size: 64, offset: 512)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "IsImageFormatHandler", file: !608, line: 49, baseType: !1009)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!631, !1011, !921}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !853, file: !608, line: 73, baseType: !670, size: 64, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !853, file: !608, line: 76, baseType: !631, size: 32, offset: 640)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !853, file: !608, line: 77, baseType: !631, size: 32, offset: 672)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "endian_support", scope: !853, file: !608, line: 78, baseType: !631, size: 32, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "blob_support", scope: !853, file: !608, line: 79, baseType: !631, size: 32, offset: 736)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "seekable_stream", scope: !853, file: !608, line: 80, baseType: !631, size: 32, offset: 768)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "format_type", scope: !853, file: !608, line: 83, baseType: !1020, size: 32, offset: 800)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickFormatType", file: !608, line: 33, baseType: !607)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "thread_support", scope: !853, file: !608, line: 86, baseType: !1022, size: 32, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !853, file: !608, line: 89, baseType: !631, size: 32, offset: 864)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !853, file: !608, line: 92, baseType: !1025, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !608, line: 93, baseType: !1025, size: 64, offset: 960)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !853, file: !608, line: 96, baseType: !626, size: 64, offset: 1024)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !853, file: !608, line: 99, baseType: !674, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !853, file: !608, line: 102, baseType: !787, size: 64, offset: 1152)
!1030 = !{i32 7, !"Dwarf Version", i32 5}
!1031 = !{i32 2, !"Debug Info Version", i32 3}
!1032 = !{i32 1, !"wchar_size", i32 4}
!1033 = !{i32 7, !"PIC Level", i32 2}
!1034 = !{i32 7, !"PIE Level", i32 2}
!1035 = !{i32 7, !"uwtable", i32 2}
!1036 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1037 = distinct !DISubprogram(name: "MagickDeleteImageArtifact", scope: !1038, file: !1038, line: 80, type: !1039, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1069)
!1038 = !DIFile(filename: "apps/538.imagick_r/src/wand/magick-property.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bbad2ace85759dc953cc4f4e915e3231")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!631, !1041, !748}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickWand", file: !1043, line: 69, baseType: !1044)
!1043 = !DIFile(filename: "apps/538.imagick_r/src/wand/MagickWand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ffc9981fe595b674b5932183b4455d96")
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickWand", file: !1045, line: 50, size: 33280, elements: !1046)
!1045 = !DIFile(filename: "apps/538.imagick_r/src/wand/magick-wand-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "acd9e5d3507eb9a242a35f2a3efc4904")
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1064, !1065, !1066, !1067, !1068}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1044, file: !1045, line: 53, baseType: !626, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1044, file: !1045, line: 56, baseType: !768, size: 32768, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !1044, file: !1045, line: 59, baseType: !1000, size: 64, offset: 32832)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !1044, file: !1045, line: 62, baseType: !861, size: 64, offset: 32896)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_info", scope: !1044, file: !1045, line: 65, baseType: !1052, size: 64, offset: 32960)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantizeInfo", file: !445, line: 57, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantizeInfo", file: !445, line: 35, size: 384, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "number_colors", scope: !1054, file: !445, line: 38, baseType: !626, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "tree_depth", scope: !1054, file: !445, line: 41, baseType: !626, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !1054, file: !445, line: 44, baseType: !631, size: 32, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1054, file: !445, line: 47, baseType: !622, size: 32, offset: 160)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "measure_error", scope: !1054, file: !445, line: 50, baseType: !631, size: 32, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1054, file: !445, line: 53, baseType: !626, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dither_method", scope: !1054, file: !445, line: 56, baseType: !1063, size: 32, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "DitherMethod", file: !445, line: 33, baseType: !444)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "images", scope: !1044, file: !1045, line: 68, baseType: !615, size: 64, offset: 33024)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "insert_before", scope: !1044, file: !1045, line: 71, baseType: !631, size: 32, offset: 33088)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "image_pending", scope: !1044, file: !1045, line: 72, baseType: !631, size: 32, offset: 33120)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !1044, file: !1045, line: 73, baseType: !631, size: 32, offset: 33152)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1044, file: !1045, line: 76, baseType: !626, size: 64, offset: 33216)
!1069 = !{!1070, !1071}
!1070 = !DILocalVariable(name: "wand", arg: 1, scope: !1037, file: !1038, line: 80, type: !1041)
!1071 = !DILocalVariable(name: "artifact", arg: 2, scope: !1037, file: !1038, line: 81, type: !748)
!1072 = !DILocation(line: 0, scope: !1037)
!1073 = !DILocation(line: 85, column: 13, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1037, file: !1038, line: 85, column: 7)
!1075 = !{!1076, !1078, i64 4144}
!1076 = !{!"_MagickWand", !1077, i64 0, !1078, i64 8, !1080, i64 4104, !1080, i64 4112, !1080, i64 4120, !1080, i64 4128, !1078, i64 4136, !1078, i64 4140, !1078, i64 4144, !1077, i64 4152}
!1077 = !{!"long", !1078, i64 0}
!1078 = !{!"omnipotent char", !1079, i64 0}
!1079 = !{!"Simple C/C++ TBAA"}
!1080 = !{!"any pointer", !1078, i64 0}
!1081 = !DILocation(line: 85, column: 19, scope: !1074)
!1082 = !DILocation(line: 85, column: 7, scope: !1037)
!1083 = !DILocation(line: 86, column: 66, scope: !1074)
!1084 = !DILocation(line: 86, column: 12, scope: !1074)
!1085 = !DILocation(line: 86, column: 5, scope: !1074)
!1086 = !DILocation(line: 87, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1037, file: !1038, line: 87, column: 7)
!1088 = !{!1076, !1080, i64 4128}
!1089 = !DILocation(line: 87, column: 20, scope: !1087)
!1090 = !DILocation(line: 87, column: 7, scope: !1037)
!1091 = !DILocation(line: 89, column: 41, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !1038, line: 88, column: 5)
!1093 = !{!1076, !1080, i64 4104}
!1094 = !DILocation(line: 90, column: 41, scope: !1092)
!1095 = !DILocation(line: 89, column: 14, scope: !1092)
!1096 = !DILocation(line: 91, column: 7, scope: !1092)
!1097 = !DILocation(line: 93, column: 10, scope: !1037)
!1098 = !DILocation(line: 93, column: 3, scope: !1037)
!1099 = !DILocation(line: 94, column: 1, scope: !1037)
!1100 = !DISubprogram(name: "LogMagickEvent", scope: !452, file: !452, line: 83, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!631, !1103, !748, !748, !921, !748, null}
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !452, line: 58, baseType: !451)
!1105 = !{}
!1106 = !DISubprogram(name: "ThrowMagickException", scope: !10, file: !10, line: 156, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!631, !1000, !748, !748, !921, !1109, !748, !748, null}
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!1110 = !DISubprogram(name: "DeleteImageArtifact", scope: !1111, file: !1111, line: 35, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1111 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!631, !615, !748}
!1114 = distinct !DISubprogram(name: "MagickDeleteImageProperty", scope: !1038, file: !1038, line: 121, type: !1039, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1115)
!1115 = !{!1116, !1117}
!1116 = !DILocalVariable(name: "wand", arg: 1, scope: !1114, file: !1038, line: 121, type: !1041)
!1117 = !DILocalVariable(name: "property", arg: 2, scope: !1114, file: !1038, line: 122, type: !748)
!1118 = !DILocation(line: 0, scope: !1114)
!1119 = !DILocation(line: 126, column: 13, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1114, file: !1038, line: 126, column: 7)
!1121 = !DILocation(line: 126, column: 19, scope: !1120)
!1122 = !DILocation(line: 126, column: 7, scope: !1114)
!1123 = !DILocation(line: 127, column: 66, scope: !1120)
!1124 = !DILocation(line: 127, column: 12, scope: !1120)
!1125 = !DILocation(line: 127, column: 5, scope: !1120)
!1126 = !DILocation(line: 128, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1114, file: !1038, line: 128, column: 7)
!1128 = !DILocation(line: 128, column: 20, scope: !1127)
!1129 = !DILocation(line: 128, column: 7, scope: !1114)
!1130 = !DILocation(line: 130, column: 41, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !1038, line: 129, column: 5)
!1132 = !DILocation(line: 131, column: 41, scope: !1131)
!1133 = !DILocation(line: 130, column: 14, scope: !1131)
!1134 = !DILocation(line: 132, column: 7, scope: !1131)
!1135 = !DILocation(line: 134, column: 10, scope: !1114)
!1136 = !DILocation(line: 134, column: 3, scope: !1114)
!1137 = !DILocation(line: 135, column: 1, scope: !1114)
!1138 = !DISubprogram(name: "DeleteImageProperty", scope: !1139, file: !1139, line: 37, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1139 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!1140 = distinct !DISubprogram(name: "MagickDeleteOption", scope: !1038, file: !1038, line: 162, type: !1039, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1141)
!1141 = !{!1142, !1143}
!1142 = !DILocalVariable(name: "wand", arg: 1, scope: !1140, file: !1038, line: 162, type: !1041)
!1143 = !DILocalVariable(name: "option", arg: 2, scope: !1140, file: !1038, line: 163, type: !748)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocation(line: 167, column: 13, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !1038, line: 167, column: 7)
!1147 = !DILocation(line: 167, column: 19, scope: !1146)
!1148 = !DILocation(line: 167, column: 7, scope: !1140)
!1149 = !DILocation(line: 168, column: 66, scope: !1146)
!1150 = !DILocation(line: 168, column: 12, scope: !1146)
!1151 = !DILocation(line: 168, column: 5, scope: !1146)
!1152 = !DILocation(line: 169, column: 34, scope: !1140)
!1153 = !{!1076, !1080, i64 4112}
!1154 = !DILocation(line: 169, column: 10, scope: !1140)
!1155 = !DILocation(line: 169, column: 3, scope: !1140)
!1156 = !DISubprogram(name: "DeleteImageOption", scope: !477, file: !477, line: 163, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!631, !861, !748}
!1159 = distinct !DISubprogram(name: "MagickGetAntialias", scope: !1038, file: !1038, line: 195, type: !1160, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1164)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!631, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1164 = !{!1165}
!1165 = !DILocalVariable(name: "wand", arg: 1, scope: !1159, file: !1038, line: 195, type: !1162)
!1166 = !DILocation(line: 0, scope: !1159)
!1167 = !DILocation(line: 199, column: 13, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1159, file: !1038, line: 199, column: 7)
!1169 = !DILocation(line: 199, column: 19, scope: !1168)
!1170 = !DILocation(line: 199, column: 7, scope: !1159)
!1171 = !DILocation(line: 200, column: 66, scope: !1168)
!1172 = !DILocation(line: 200, column: 12, scope: !1168)
!1173 = !DILocation(line: 200, column: 5, scope: !1168)
!1174 = !DILocation(line: 201, column: 16, scope: !1159)
!1175 = !DILocation(line: 201, column: 28, scope: !1159)
!1176 = !{!1177, !1078, i64 20}
!1177 = !{!"_ImageInfo", !1078, i64 0, !1078, i64 4, !1078, i64 8, !1078, i64 12, !1078, i64 16, !1078, i64 20, !1080, i64 24, !1080, i64 32, !1080, i64 40, !1080, i64 48, !1077, i64 56, !1077, i64 64, !1077, i64 72, !1078, i64 80, !1078, i64 84, !1078, i64 88, !1077, i64 96, !1080, i64 104, !1080, i64 112, !1080, i64 120, !1080, i64 128, !1080, i64 136, !1178, i64 144, !1178, i64 152, !1179, i64 160, !1179, i64 168, !1179, i64 176, !1078, i64 184, !1078, i64 188, !1077, i64 192, !1078, i64 200, !1078, i64 204, !1078, i64 208, !1077, i64 216, !1078, i64 224, !1078, i64 228, !1080, i64 232, !1080, i64 240, !1078, i64 248, !1080, i64 256, !1080, i64 264, !1080, i64 272, !1080, i64 280, !1080, i64 288, !1080, i64 296, !1080, i64 304, !1080, i64 312, !1077, i64 320, !1078, i64 328, !1078, i64 4424, !1078, i64 8520, !1078, i64 12616, !1078, i64 16712, !1080, i64 16720, !1077, i64 16728, !1077, i64 16736, !1179, i64 16744, !1077, i64 16752, !1078, i64 16760, !1179, i64 16764, !1080, i64 16776, !1078, i64 16784}
!1178 = !{!"double", !1078, i64 0}
!1179 = !{!"_PixelPacket", !1180, i64 0, !1180, i64 2, !1180, i64 4, !1180, i64 6}
!1180 = !{!"short", !1078, i64 0}
!1181 = !DILocation(line: 201, column: 3, scope: !1159)
!1182 = distinct !DISubprogram(name: "MagickGetBackgroundColor", scope: !1038, file: !1038, line: 226, type: !1183, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1189)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!1185, !1041}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelWand", file: !1187, line: 26, baseType: !1188)
!1187 = !DIFile(filename: "apps/538.imagick_r/src/wand/pixel-wand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3c7d71f46771b27e3f74acd989c109c4")
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelWand", file: !1187, line: 25, flags: DIFlagFwdDecl)
!1189 = !{!1190, !1191}
!1190 = !DILocalVariable(name: "wand", arg: 1, scope: !1182, file: !1038, line: 226, type: !1041)
!1191 = !DILocalVariable(name: "background_color", scope: !1182, file: !1038, line: 229, type: !1185)
!1192 = !DILocation(line: 0, scope: !1182)
!1193 = !DILocation(line: 233, column: 13, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1182, file: !1038, line: 233, column: 7)
!1195 = !DILocation(line: 233, column: 19, scope: !1194)
!1196 = !DILocation(line: 233, column: 7, scope: !1182)
!1197 = !DILocation(line: 234, column: 66, scope: !1194)
!1198 = !DILocation(line: 234, column: 12, scope: !1194)
!1199 = !DILocation(line: 234, column: 5, scope: !1194)
!1200 = !DILocation(line: 235, column: 20, scope: !1182)
!1201 = !DILocation(line: 236, column: 48, scope: !1182)
!1202 = !DILocation(line: 236, column: 60, scope: !1182)
!1203 = !DILocation(line: 236, column: 3, scope: !1182)
!1204 = !DILocation(line: 237, column: 3, scope: !1182)
!1205 = !DISubprogram(name: "NewPixelWand", scope: !1187, file: !1187, line: 62, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!1185}
!1208 = !DISubprogram(name: "PixelSetQuantumColor", scope: !1187, file: !1187, line: 104, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1185, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!1213 = distinct !DISubprogram(name: "MagickGetColorspace", scope: !1038, file: !1038, line: 262, type: !1214, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!622, !1041}
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "wand", arg: 1, scope: !1213, file: !1038, line: 262, type: !1041)
!1218 = !DILocation(line: 0, scope: !1213)
!1219 = !DILocation(line: 266, column: 13, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1213, file: !1038, line: 266, column: 7)
!1221 = !DILocation(line: 266, column: 19, scope: !1220)
!1222 = !DILocation(line: 266, column: 7, scope: !1213)
!1223 = !DILocation(line: 267, column: 66, scope: !1220)
!1224 = !DILocation(line: 267, column: 12, scope: !1220)
!1225 = !DILocation(line: 267, column: 5, scope: !1220)
!1226 = !DILocation(line: 268, column: 16, scope: !1213)
!1227 = !DILocation(line: 268, column: 28, scope: !1213)
!1228 = !{!1177, !1078, i64 200}
!1229 = !DILocation(line: 268, column: 3, scope: !1213)
!1230 = distinct !DISubprogram(name: "MagickGetCompression", scope: !1038, file: !1038, line: 293, type: !1231, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1233)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!624, !1041}
!1233 = !{!1234}
!1234 = !DILocalVariable(name: "wand", arg: 1, scope: !1230, file: !1038, line: 293, type: !1041)
!1235 = !DILocation(line: 0, scope: !1230)
!1236 = !DILocation(line: 297, column: 13, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !1038, line: 297, column: 7)
!1238 = !DILocation(line: 297, column: 19, scope: !1237)
!1239 = !DILocation(line: 297, column: 7, scope: !1230)
!1240 = !DILocation(line: 298, column: 66, scope: !1237)
!1241 = !DILocation(line: 298, column: 12, scope: !1237)
!1242 = !DILocation(line: 298, column: 5, scope: !1237)
!1243 = !DILocation(line: 299, column: 16, scope: !1230)
!1244 = !DILocation(line: 299, column: 28, scope: !1230)
!1245 = !{!1177, !1078, i64 0}
!1246 = !DILocation(line: 299, column: 3, scope: !1230)
!1247 = distinct !DISubprogram(name: "MagickGetCompressionQuality", scope: !1038, file: !1038, line: 324, type: !1248, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!626, !1041}
!1250 = !{!1251}
!1251 = !DILocalVariable(name: "wand", arg: 1, scope: !1247, file: !1038, line: 324, type: !1041)
!1252 = !DILocation(line: 0, scope: !1247)
!1253 = !DILocation(line: 328, column: 13, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1247, file: !1038, line: 328, column: 7)
!1255 = !DILocation(line: 328, column: 19, scope: !1254)
!1256 = !DILocation(line: 328, column: 7, scope: !1247)
!1257 = !DILocation(line: 329, column: 66, scope: !1254)
!1258 = !DILocation(line: 329, column: 12, scope: !1254)
!1259 = !DILocation(line: 329, column: 5, scope: !1254)
!1260 = !DILocation(line: 330, column: 16, scope: !1247)
!1261 = !DILocation(line: 330, column: 28, scope: !1247)
!1262 = !{!1177, !1077, i64 96}
!1263 = !DILocation(line: 330, column: 3, scope: !1247)
!1264 = distinct !DISubprogram(name: "MagickGetCopyright", scope: !1038, file: !1038, line: 352, type: !1265, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1105)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!748}
!1267 = !DILocation(line: 354, column: 10, scope: !1264)
!1268 = !DILocation(line: 354, column: 3, scope: !1264)
!1269 = !DISubprogram(name: "GetMagickCopyright", scope: !1270, file: !1270, line: 94, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1270 = !DIFile(filename: "apps/538.imagick_r/src/magick/version.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5bbd8280cb91779d444e54bd210c3e35")
!1271 = distinct !DISubprogram(name: "MagickGetFilename", scope: !1038, file: !1038, line: 379, type: !1272, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!674, !1162}
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "wand", arg: 1, scope: !1271, file: !1038, line: 379, type: !1162)
!1276 = !DILocation(line: 0, scope: !1271)
!1277 = !DILocation(line: 383, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1271, file: !1038, line: 383, column: 7)
!1279 = !DILocation(line: 383, column: 19, scope: !1278)
!1280 = !DILocation(line: 383, column: 7, scope: !1271)
!1281 = !DILocation(line: 384, column: 66, scope: !1278)
!1282 = !DILocation(line: 384, column: 12, scope: !1278)
!1283 = !DILocation(line: 384, column: 5, scope: !1278)
!1284 = !DILocation(line: 385, column: 30, scope: !1271)
!1285 = !DILocation(line: 385, column: 42, scope: !1271)
!1286 = !DILocation(line: 385, column: 10, scope: !1271)
!1287 = !DILocation(line: 385, column: 3, scope: !1271)
!1288 = !DISubprogram(name: "AcquireString", scope: !842, file: !842, line: 43, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!674, !748}
!1291 = distinct !DISubprogram(name: "MagickGetFont", scope: !1038, file: !1038, line: 410, type: !1292, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!674, !1041}
!1294 = !{!1295}
!1295 = !DILocalVariable(name: "wand", arg: 1, scope: !1291, file: !1038, line: 410, type: !1041)
!1296 = !DILocation(line: 0, scope: !1291)
!1297 = !DILocation(line: 414, column: 13, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1291, file: !1038, line: 414, column: 7)
!1299 = !DILocation(line: 414, column: 19, scope: !1298)
!1300 = !DILocation(line: 414, column: 7, scope: !1291)
!1301 = !DILocation(line: 415, column: 66, scope: !1298)
!1302 = !DILocation(line: 415, column: 12, scope: !1298)
!1303 = !DILocation(line: 415, column: 5, scope: !1298)
!1304 = !DILocation(line: 416, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1291, file: !1038, line: 416, column: 7)
!1306 = !DILocation(line: 416, column: 25, scope: !1305)
!1307 = !{!1177, !1080, i64 120}
!1308 = !DILocation(line: 416, column: 30, scope: !1305)
!1309 = !DILocation(line: 416, column: 7, scope: !1291)
!1310 = !DILocation(line: 418, column: 10, scope: !1291)
!1311 = !DILocation(line: 418, column: 3, scope: !1291)
!1312 = !DILocation(line: 419, column: 1, scope: !1291)
!1313 = distinct !DISubprogram(name: "MagickGetFormat", scope: !1038, file: !1038, line: 443, type: !1292, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1314)
!1314 = !{!1315}
!1315 = !DILocalVariable(name: "wand", arg: 1, scope: !1313, file: !1038, line: 443, type: !1041)
!1316 = !DILocation(line: 0, scope: !1313)
!1317 = !DILocation(line: 447, column: 13, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !1038, line: 447, column: 7)
!1319 = !DILocation(line: 447, column: 19, scope: !1318)
!1320 = !DILocation(line: 447, column: 7, scope: !1313)
!1321 = !DILocation(line: 448, column: 66, scope: !1318)
!1322 = !DILocation(line: 448, column: 12, scope: !1318)
!1323 = !DILocation(line: 448, column: 5, scope: !1318)
!1324 = !DILocation(line: 449, column: 30, scope: !1313)
!1325 = !DILocation(line: 449, column: 42, scope: !1313)
!1326 = !DILocation(line: 449, column: 10, scope: !1313)
!1327 = !DILocation(line: 449, column: 3, scope: !1313)
!1328 = distinct !DISubprogram(name: "MagickGetGravity", scope: !1038, file: !1038, line: 474, type: !1329, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1331)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!706, !1041}
!1331 = !{!1332, !1333, !1334}
!1332 = !DILocalVariable(name: "wand", arg: 1, scope: !1328, file: !1038, line: 474, type: !1041)
!1333 = !DILocalVariable(name: "option", scope: !1328, file: !1038, line: 477, type: !748)
!1334 = !DILocalVariable(name: "type", scope: !1328, file: !1038, line: 480, type: !706)
!1335 = !DILocation(line: 0, scope: !1328)
!1336 = !DILocation(line: 484, column: 13, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1328, file: !1038, line: 484, column: 7)
!1338 = !DILocation(line: 484, column: 19, scope: !1337)
!1339 = !DILocation(line: 484, column: 7, scope: !1328)
!1340 = !DILocation(line: 485, column: 66, scope: !1337)
!1341 = !DILocation(line: 485, column: 12, scope: !1337)
!1342 = !DILocation(line: 485, column: 5, scope: !1337)
!1343 = !DILocation(line: 486, column: 31, scope: !1328)
!1344 = !DILocation(line: 486, column: 10, scope: !1328)
!1345 = !DILocation(line: 487, column: 14, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1328, file: !1038, line: 487, column: 7)
!1347 = !DILocation(line: 487, column: 7, scope: !1328)
!1348 = !DILocation(line: 489, column: 22, scope: !1328)
!1349 = !DILocation(line: 489, column: 8, scope: !1328)
!1350 = !DILocation(line: 490, column: 3, scope: !1328)
!1351 = !DILocation(line: 491, column: 1, scope: !1328)
!1352 = !DISubprogram(name: "GetImageOption", scope: !477, file: !477, line: 158, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!748, !998, !748}
!1355 = !DISubprogram(name: "ParseCommandOption", scope: !477, file: !477, line: 172, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!679, !1358, !1360, !748}
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !477, line: 99, baseType: !476)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!1361 = distinct !DISubprogram(name: "MagickGetHomeURL", scope: !1038, file: !1038, line: 511, type: !1362, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1105)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!674}
!1364 = !DILocation(line: 513, column: 10, scope: !1361)
!1365 = !DILocation(line: 513, column: 3, scope: !1361)
!1366 = !DISubprogram(name: "GetMagickHomeURL", scope: !1270, file: !1270, line: 91, type: !1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1367 = distinct !DISubprogram(name: "MagickGetImageArtifact", scope: !1038, file: !1038, line: 542, type: !1368, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!674, !1041, !748}
!1370 = !{!1371, !1372, !1373}
!1371 = !DILocalVariable(name: "wand", arg: 1, scope: !1367, file: !1038, line: 542, type: !1041)
!1372 = !DILocalVariable(name: "artifact", arg: 2, scope: !1367, file: !1038, line: 542, type: !748)
!1373 = !DILocalVariable(name: "value", scope: !1367, file: !1038, line: 545, type: !748)
!1374 = !DILocation(line: 0, scope: !1367)
!1375 = !DILocation(line: 549, column: 13, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1367, file: !1038, line: 549, column: 7)
!1377 = !DILocation(line: 549, column: 19, scope: !1376)
!1378 = !DILocation(line: 549, column: 7, scope: !1367)
!1379 = !DILocation(line: 550, column: 66, scope: !1376)
!1380 = !DILocation(line: 550, column: 12, scope: !1376)
!1381 = !DILocation(line: 550, column: 5, scope: !1376)
!1382 = !DILocation(line: 551, column: 13, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1367, file: !1038, line: 551, column: 7)
!1384 = !DILocation(line: 551, column: 20, scope: !1383)
!1385 = !DILocation(line: 551, column: 7, scope: !1367)
!1386 = !DILocation(line: 553, column: 41, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !1038, line: 552, column: 5)
!1388 = !DILocation(line: 554, column: 41, scope: !1387)
!1389 = !DILocation(line: 553, column: 14, scope: !1387)
!1390 = !DILocation(line: 555, column: 7, scope: !1387)
!1391 = !DILocation(line: 557, column: 9, scope: !1367)
!1392 = !DILocation(line: 558, column: 13, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1367, file: !1038, line: 558, column: 7)
!1394 = !DILocation(line: 558, column: 7, scope: !1367)
!1395 = !DILocation(line: 560, column: 10, scope: !1367)
!1396 = !DILocation(line: 560, column: 3, scope: !1367)
!1397 = !DILocation(line: 561, column: 1, scope: !1367)
!1398 = !DISubprogram(name: "GetImageArtifact", scope: !1111, file: !1111, line: 30, type: !1399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!748, !917, !748}
!1401 = !DISubprogram(name: "ConstantString", scope: !842, file: !842, line: 45, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1402 = distinct !DISubprogram(name: "MagickGetImageArtifacts", scope: !1038, file: !1038, line: 593, type: !1403, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1406)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!835, !1041, !748, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1407 = !DILocalVariable(name: "wand", arg: 1, scope: !1402, file: !1038, line: 593, type: !1041)
!1408 = !DILocalVariable(name: "pattern", arg: 2, scope: !1402, file: !1038, line: 594, type: !748)
!1409 = !DILocalVariable(name: "number_artifacts", arg: 3, scope: !1402, file: !1038, line: 594, type: !1405)
!1410 = !DILocalVariable(name: "artifacts", scope: !1402, file: !1038, line: 597, type: !835)
!1411 = !DILocalVariable(name: "artifact", scope: !1402, file: !1038, line: 600, type: !748)
!1412 = !DILocalVariable(name: "i", scope: !1402, file: !1038, line: 603, type: !679)
!1413 = !DILocalVariable(name: "length", scope: !1402, file: !1038, line: 606, type: !626)
!1414 = !DILocation(line: 0, scope: !1402)
!1415 = !DILocation(line: 610, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1402, file: !1038, line: 610, column: 7)
!1417 = !DILocation(line: 610, column: 19, scope: !1416)
!1418 = !DILocation(line: 610, column: 7, scope: !1402)
!1419 = !DILocation(line: 611, column: 66, scope: !1416)
!1420 = !DILocation(line: 611, column: 12, scope: !1416)
!1421 = !DILocation(line: 611, column: 5, scope: !1416)
!1422 = !DILocation(line: 612, column: 13, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1402, file: !1038, line: 612, column: 7)
!1424 = !DILocation(line: 612, column: 20, scope: !1423)
!1425 = !DILocation(line: 612, column: 7, scope: !1402)
!1426 = !DILocation(line: 614, column: 41, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !1038, line: 613, column: 5)
!1428 = !DILocation(line: 615, column: 41, scope: !1427)
!1429 = !DILocation(line: 614, column: 14, scope: !1427)
!1430 = !DILocation(line: 616, column: 7, scope: !1427)
!1431 = !DILocation(line: 618, column: 10, scope: !1402)
!1432 = !DILocation(line: 620, column: 23, scope: !1402)
!1433 = !DILocation(line: 621, column: 17, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1402, file: !1038, line: 621, column: 7)
!1435 = !DILocation(line: 621, column: 7, scope: !1402)
!1436 = !DILocation(line: 623, column: 36, scope: !1402)
!1437 = !DILocation(line: 623, column: 3, scope: !1402)
!1438 = !DILocation(line: 624, column: 39, scope: !1402)
!1439 = !DILocation(line: 624, column: 12, scope: !1402)
!1440 = !DILocation(line: 625, column: 22, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !1038, line: 625, column: 3)
!1442 = distinct !DILexicalBlock(scope: !1402, file: !1038, line: 625, column: 3)
!1443 = !DILocation(line: 625, column: 3, scope: !1442)
!1444 = !DILocation(line: 627, column: 10, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !1038, line: 627, column: 9)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !1038, line: 626, column: 3)
!1447 = !{!1078, !1078, i64 0}
!1448 = !DILocation(line: 627, column: 20, scope: !1445)
!1449 = !DILocation(line: 627, column: 28, scope: !1445)
!1450 = !DILocation(line: 628, column: 10, scope: !1445)
!1451 = !DILocation(line: 628, column: 55, scope: !1445)
!1452 = !DILocation(line: 627, column: 9, scope: !1446)
!1453 = !DILocation(line: 630, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !1038, line: 630, column: 13)
!1455 = distinct !DILexicalBlock(scope: !1445, file: !1038, line: 629, column: 7)
!1456 = !DILocation(line: 630, column: 19, scope: !1454)
!1457 = !DILocation(line: 630, column: 13, scope: !1455)
!1458 = !DILocation(line: 632, column: 19, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !1038, line: 631, column: 11)
!1460 = !DILocation(line: 633, column: 33, scope: !1459)
!1461 = !DILocation(line: 635, column: 27, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !1038, line: 635, column: 17)
!1463 = !DILocation(line: 635, column: 17, scope: !1459)
!1464 = !DILocation(line: 637, column: 51, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !1038, line: 636, column: 15)
!1466 = !DILocation(line: 639, column: 25, scope: !1465)
!1467 = !DILocation(line: 637, column: 24, scope: !1465)
!1468 = !DILocation(line: 640, column: 17, scope: !1465)
!1469 = !DILocation(line: 643, column: 22, scope: !1455)
!1470 = !DILocation(line: 643, column: 9, scope: !1455)
!1471 = !DILocation(line: 643, column: 21, scope: !1455)
!1472 = !{!1080, !1080, i64 0}
!1473 = !DILocation(line: 645, column: 7, scope: !1455)
!1474 = !DILocation(line: 0, scope: !1442)
!1475 = !DILocation(line: 646, column: 41, scope: !1446)
!1476 = !DILocation(line: 646, column: 14, scope: !1446)
!1477 = distinct !{!1477, !1443, !1478, !1479, !1480}
!1478 = !DILocation(line: 647, column: 3, scope: !1442)
!1479 = !{!"llvm.loop.mustprogress"}
!1480 = !{!"llvm.loop.unroll.disable"}
!1481 = !DILocation(line: 648, column: 3, scope: !1402)
!1482 = !DILocation(line: 648, column: 15, scope: !1402)
!1483 = !DILocation(line: 649, column: 20, scope: !1402)
!1484 = !{!1077, !1077, i64 0}
!1485 = !DILocation(line: 650, column: 3, scope: !1402)
!1486 = !DILocation(line: 651, column: 1, scope: !1402)
!1487 = !DISubprogram(name: "GetImageProperty", scope: !1139, file: !1139, line: 31, type: !1399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1488 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1489, file: !1489, line: 42, type: !1490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1489 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!670, !921, !921}
!1492 = !DISubprogram(name: "ResetImagePropertyIterator", scope: !1139, file: !1139, line: 44, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !917}
!1495 = !DISubprogram(name: "GetNextImageProperty", scope: !1139, file: !1139, line: 26, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!674, !917}
!1498 = !DISubprogram(name: "GlobExpression", scope: !1499, file: !1499, line: 36, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1499 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!631, !748, !748, !1360}
!1502 = !DISubprogram(name: "ResizeQuantumMemory", scope: !1489, file: !1489, line: 55, type: !1503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!670, !670, !921, !921}
!1505 = distinct !DISubprogram(name: "MagickGetImageProfile", scope: !1038, file: !1038, line: 680, type: !1506, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!803, !1041, !748, !1405}
!1508 = !{!1509, !1510, !1511, !1512, !1515}
!1509 = !DILocalVariable(name: "wand", arg: 1, scope: !1505, file: !1038, line: 680, type: !1041)
!1510 = !DILocalVariable(name: "name", arg: 2, scope: !1505, file: !1038, line: 681, type: !748)
!1511 = !DILocalVariable(name: "length", arg: 3, scope: !1505, file: !1038, line: 681, type: !1405)
!1512 = !DILocalVariable(name: "profile", scope: !1505, file: !1038, line: 684, type: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!1515 = !DILocalVariable(name: "datum", scope: !1505, file: !1038, line: 687, type: !803)
!1516 = !DILocation(line: 0, scope: !1505)
!1517 = !DILocation(line: 691, column: 13, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1505, file: !1038, line: 691, column: 7)
!1519 = !DILocation(line: 691, column: 19, scope: !1518)
!1520 = !DILocation(line: 691, column: 7, scope: !1505)
!1521 = !DILocation(line: 692, column: 66, scope: !1518)
!1522 = !DILocation(line: 692, column: 12, scope: !1518)
!1523 = !DILocation(line: 692, column: 5, scope: !1518)
!1524 = !DILocation(line: 693, column: 13, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1505, file: !1038, line: 693, column: 7)
!1526 = !DILocation(line: 693, column: 20, scope: !1525)
!1527 = !DILocation(line: 693, column: 7, scope: !1505)
!1528 = !DILocation(line: 695, column: 41, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !1038, line: 694, column: 5)
!1530 = !DILocation(line: 696, column: 41, scope: !1529)
!1531 = !DILocation(line: 695, column: 14, scope: !1529)
!1532 = !DILocation(line: 697, column: 7, scope: !1529)
!1533 = !DILocation(line: 699, column: 10, scope: !1505)
!1534 = !DILocation(line: 700, column: 21, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1505, file: !1038, line: 700, column: 7)
!1536 = !{!1537, !1080, i64 216}
!1537 = !{!"_Image", !1078, i64 0, !1078, i64 4, !1078, i64 8, !1077, i64 16, !1078, i64 24, !1078, i64 28, !1078, i64 32, !1077, i64 40, !1077, i64 48, !1077, i64 56, !1077, i64 64, !1080, i64 72, !1179, i64 80, !1179, i64 88, !1179, i64 96, !1178, i64 104, !1538, i64 112, !1078, i64 208, !1080, i64 216, !1078, i64 224, !1080, i64 232, !1080, i64 240, !1080, i64 248, !1077, i64 256, !1178, i64 264, !1178, i64 272, !1540, i64 280, !1540, i64 312, !1540, i64 344, !1178, i64 376, !1178, i64 384, !1178, i64 392, !1078, i64 400, !1078, i64 404, !1078, i64 408, !1078, i64 412, !1078, i64 416, !1078, i64 420, !1080, i64 424, !1077, i64 432, !1077, i64 440, !1077, i64 448, !1077, i64 456, !1077, i64 464, !1077, i64 472, !1541, i64 480, !1542, i64 504, !1080, i64 568, !1080, i64 576, !1080, i64 584, !1080, i64 592, !1080, i64 600, !1080, i64 608, !1078, i64 616, !1078, i64 4712, !1078, i64 8808, !1077, i64 12904, !1077, i64 12912, !1544, i64 12920, !1078, i64 12976, !1077, i64 12984, !1080, i64 12992, !1546, i64 13000, !1546, i64 13032, !1080, i64 13064, !1077, i64 13072, !1077, i64 13080, !1080, i64 13088, !1080, i64 13096, !1080, i64 13104, !1078, i64 13112, !1078, i64 13116, !1179, i64 13120, !1080, i64 13128, !1540, i64 13136, !1080, i64 13168, !1080, i64 13176, !1078, i64 13184, !1078, i64 13188, !1547, i64 13192, !1078, i64 13200, !1077, i64 13208, !1077, i64 13216, !1078, i64 13224, !1077, i64 13232}
!1538 = !{!"_ChromaticityInfo", !1539, i64 0, !1539, i64 24, !1539, i64 48, !1539, i64 72}
!1539 = !{!"_PrimaryInfo", !1178, i64 0, !1178, i64 8, !1178, i64 16}
!1540 = !{!"_RectangleInfo", !1077, i64 0, !1077, i64 8, !1077, i64 16, !1077, i64 24}
!1541 = !{!"_ErrorInfo", !1178, i64 0, !1178, i64 8, !1178, i64 16}
!1542 = !{!"_TimerInfo", !1543, i64 0, !1543, i64 24, !1078, i64 48, !1077, i64 56}
!1543 = !{!"_Timer", !1178, i64 0, !1178, i64 8, !1178, i64 16}
!1544 = !{!"_ExceptionInfo", !1078, i64 0, !1545, i64 4, !1080, i64 8, !1080, i64 16, !1080, i64 24, !1078, i64 32, !1080, i64 40, !1077, i64 48}
!1545 = !{!"int", !1078, i64 0}
!1546 = !{!"_ProfileInfo", !1080, i64 0, !1077, i64 8, !1080, i64 16, !1077, i64 24}
!1547 = !{!"long long", !1078, i64 0}
!1548 = !DILocation(line: 700, column: 30, scope: !1535)
!1549 = !DILocation(line: 700, column: 7, scope: !1505)
!1550 = !DILocation(line: 702, column: 11, scope: !1505)
!1551 = !DILocation(line: 703, column: 15, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1505, file: !1038, line: 703, column: 7)
!1553 = !DILocation(line: 703, column: 7, scope: !1505)
!1554 = !DILocation(line: 705, column: 48, scope: !1505)
!1555 = !DILocation(line: 705, column: 27, scope: !1505)
!1556 = !DILocation(line: 707, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1505, file: !1038, line: 707, column: 7)
!1558 = !DILocation(line: 707, column: 7, scope: !1505)
!1559 = !DILocation(line: 709, column: 33, scope: !1505)
!1560 = !DILocation(line: 710, column: 5, scope: !1505)
!1561 = !DILocation(line: 709, column: 10, scope: !1505)
!1562 = !DILocation(line: 711, column: 20, scope: !1505)
!1563 = !DILocation(line: 711, column: 10, scope: !1505)
!1564 = !DILocation(line: 712, column: 3, scope: !1505)
!1565 = !DILocation(line: 713, column: 1, scope: !1505)
!1566 = !DISubprogram(name: "GetImageProfile", scope: !252, file: !252, line: 55, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!1513, !917, !748}
!1569 = !DISubprogram(name: "GetStringInfoLength", scope: !842, file: !842, line: 80, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!626, !1513}
!1572 = !DISubprogram(name: "CopyMagickMemory", scope: !1489, file: !1489, line: 44, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!670, !670, !919, !921}
!1575 = !DISubprogram(name: "GetStringInfoDatum", scope: !842, file: !842, line: 97, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!803, !1513}
!1578 = distinct !DISubprogram(name: "MagickGetImageProfiles", scope: !1038, file: !1038, line: 745, type: !1403, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1580 = !DILocalVariable(name: "wand", arg: 1, scope: !1578, file: !1038, line: 745, type: !1041)
!1581 = !DILocalVariable(name: "pattern", arg: 2, scope: !1578, file: !1038, line: 745, type: !748)
!1582 = !DILocalVariable(name: "number_profiles", arg: 3, scope: !1578, file: !1038, line: 746, type: !1405)
!1583 = !DILocalVariable(name: "profiles", scope: !1578, file: !1038, line: 749, type: !835)
!1584 = !DILocalVariable(name: "property", scope: !1578, file: !1038, line: 752, type: !748)
!1585 = !DILocalVariable(name: "i", scope: !1578, file: !1038, line: 755, type: !679)
!1586 = !DILocalVariable(name: "length", scope: !1578, file: !1038, line: 758, type: !626)
!1587 = !DILocation(line: 0, scope: !1578)
!1588 = !DILocation(line: 762, column: 13, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1578, file: !1038, line: 762, column: 7)
!1590 = !DILocation(line: 762, column: 19, scope: !1589)
!1591 = !DILocation(line: 762, column: 7, scope: !1578)
!1592 = !DILocation(line: 763, column: 66, scope: !1589)
!1593 = !DILocation(line: 763, column: 12, scope: !1589)
!1594 = !DILocation(line: 763, column: 5, scope: !1589)
!1595 = !DILocation(line: 764, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1578, file: !1038, line: 764, column: 7)
!1597 = !DILocation(line: 764, column: 20, scope: !1596)
!1598 = !DILocation(line: 764, column: 7, scope: !1578)
!1599 = !DILocation(line: 766, column: 41, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !1038, line: 765, column: 5)
!1601 = !DILocation(line: 767, column: 41, scope: !1600)
!1602 = !DILocation(line: 766, column: 14, scope: !1600)
!1603 = !DILocation(line: 768, column: 7, scope: !1600)
!1604 = !DILocation(line: 770, column: 10, scope: !1578)
!1605 = !DILocation(line: 772, column: 22, scope: !1578)
!1606 = !DILocation(line: 773, column: 16, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1578, file: !1038, line: 773, column: 7)
!1608 = !DILocation(line: 773, column: 7, scope: !1578)
!1609 = !DILocation(line: 775, column: 35, scope: !1578)
!1610 = !DILocation(line: 775, column: 3, scope: !1578)
!1611 = !DILocation(line: 776, column: 38, scope: !1578)
!1612 = !DILocation(line: 776, column: 12, scope: !1578)
!1613 = !DILocation(line: 777, column: 22, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !1038, line: 777, column: 3)
!1615 = distinct !DILexicalBlock(scope: !1578, file: !1038, line: 777, column: 3)
!1616 = !DILocation(line: 777, column: 3, scope: !1615)
!1617 = !DILocation(line: 779, column: 10, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !1038, line: 779, column: 9)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !1038, line: 778, column: 3)
!1620 = !DILocation(line: 779, column: 20, scope: !1618)
!1621 = !DILocation(line: 779, column: 28, scope: !1618)
!1622 = !DILocation(line: 780, column: 10, scope: !1618)
!1623 = !DILocation(line: 780, column: 55, scope: !1618)
!1624 = !DILocation(line: 779, column: 9, scope: !1619)
!1625 = !DILocation(line: 782, column: 15, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1038, line: 782, column: 13)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !1038, line: 781, column: 7)
!1628 = !DILocation(line: 782, column: 19, scope: !1626)
!1629 = !DILocation(line: 782, column: 13, scope: !1627)
!1630 = !DILocation(line: 784, column: 19, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !1038, line: 783, column: 11)
!1632 = !DILocation(line: 785, column: 32, scope: !1631)
!1633 = !DILocation(line: 787, column: 26, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1631, file: !1038, line: 787, column: 17)
!1635 = !DILocation(line: 787, column: 17, scope: !1631)
!1636 = !DILocation(line: 789, column: 51, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !1038, line: 788, column: 15)
!1638 = !DILocation(line: 791, column: 25, scope: !1637)
!1639 = !DILocation(line: 789, column: 24, scope: !1637)
!1640 = !DILocation(line: 792, column: 17, scope: !1637)
!1641 = !DILocation(line: 795, column: 21, scope: !1627)
!1642 = !DILocation(line: 795, column: 9, scope: !1627)
!1643 = !DILocation(line: 795, column: 20, scope: !1627)
!1644 = !DILocation(line: 797, column: 7, scope: !1627)
!1645 = !DILocation(line: 0, scope: !1615)
!1646 = !DILocation(line: 798, column: 40, scope: !1619)
!1647 = !DILocation(line: 798, column: 14, scope: !1619)
!1648 = distinct !{!1648, !1616, !1649, !1479, !1480}
!1649 = !DILocation(line: 799, column: 3, scope: !1615)
!1650 = !DILocation(line: 800, column: 3, scope: !1578)
!1651 = !DILocation(line: 800, column: 14, scope: !1578)
!1652 = !DILocation(line: 801, column: 19, scope: !1578)
!1653 = !DILocation(line: 802, column: 3, scope: !1578)
!1654 = !DILocation(line: 803, column: 1, scope: !1578)
!1655 = !DISubprogram(name: "ResetImageProfileIterator", scope: !252, file: !252, line: 70, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1656 = !DISubprogram(name: "GetNextImageProfile", scope: !252, file: !252, line: 52, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1657 = distinct !DISubprogram(name: "MagickGetImageProperty", scope: !1038, file: !1038, line: 831, type: !1368, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1658)
!1658 = !{!1659, !1660, !1661}
!1659 = !DILocalVariable(name: "wand", arg: 1, scope: !1657, file: !1038, line: 831, type: !1041)
!1660 = !DILocalVariable(name: "property", arg: 2, scope: !1657, file: !1038, line: 831, type: !748)
!1661 = !DILocalVariable(name: "value", scope: !1657, file: !1038, line: 834, type: !748)
!1662 = !DILocation(line: 0, scope: !1657)
!1663 = !DILocation(line: 838, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1657, file: !1038, line: 838, column: 7)
!1665 = !DILocation(line: 838, column: 19, scope: !1664)
!1666 = !DILocation(line: 838, column: 7, scope: !1657)
!1667 = !DILocation(line: 839, column: 66, scope: !1664)
!1668 = !DILocation(line: 839, column: 12, scope: !1664)
!1669 = !DILocation(line: 839, column: 5, scope: !1664)
!1670 = !DILocation(line: 840, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1657, file: !1038, line: 840, column: 7)
!1672 = !DILocation(line: 840, column: 20, scope: !1671)
!1673 = !DILocation(line: 840, column: 7, scope: !1657)
!1674 = !DILocation(line: 842, column: 41, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !1038, line: 841, column: 5)
!1676 = !DILocation(line: 843, column: 41, scope: !1675)
!1677 = !DILocation(line: 842, column: 14, scope: !1675)
!1678 = !DILocation(line: 844, column: 7, scope: !1675)
!1679 = !DILocation(line: 846, column: 9, scope: !1657)
!1680 = !DILocation(line: 847, column: 13, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1657, file: !1038, line: 847, column: 7)
!1682 = !DILocation(line: 847, column: 7, scope: !1657)
!1683 = !DILocation(line: 849, column: 10, scope: !1657)
!1684 = !DILocation(line: 849, column: 3, scope: !1657)
!1685 = !DILocation(line: 850, column: 1, scope: !1657)
!1686 = distinct !DISubprogram(name: "MagickGetImageProperties", scope: !1038, file: !1038, line: 882, type: !1403, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694}
!1688 = !DILocalVariable(name: "wand", arg: 1, scope: !1686, file: !1038, line: 882, type: !1041)
!1689 = !DILocalVariable(name: "pattern", arg: 2, scope: !1686, file: !1038, line: 883, type: !748)
!1690 = !DILocalVariable(name: "number_properties", arg: 3, scope: !1686, file: !1038, line: 883, type: !1405)
!1691 = !DILocalVariable(name: "properties", scope: !1686, file: !1038, line: 886, type: !835)
!1692 = !DILocalVariable(name: "property", scope: !1686, file: !1038, line: 889, type: !748)
!1693 = !DILocalVariable(name: "i", scope: !1686, file: !1038, line: 892, type: !679)
!1694 = !DILocalVariable(name: "length", scope: !1686, file: !1038, line: 895, type: !626)
!1695 = !DILocation(line: 0, scope: !1686)
!1696 = !DILocation(line: 899, column: 13, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1686, file: !1038, line: 899, column: 7)
!1698 = !DILocation(line: 899, column: 19, scope: !1697)
!1699 = !DILocation(line: 899, column: 7, scope: !1686)
!1700 = !DILocation(line: 900, column: 66, scope: !1697)
!1701 = !DILocation(line: 900, column: 12, scope: !1697)
!1702 = !DILocation(line: 900, column: 5, scope: !1697)
!1703 = !DILocation(line: 901, column: 13, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1686, file: !1038, line: 901, column: 7)
!1705 = !DILocation(line: 901, column: 20, scope: !1704)
!1706 = !DILocation(line: 901, column: 7, scope: !1686)
!1707 = !DILocation(line: 903, column: 41, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !1038, line: 902, column: 5)
!1709 = !DILocation(line: 904, column: 41, scope: !1708)
!1710 = !DILocation(line: 903, column: 14, scope: !1708)
!1711 = !DILocation(line: 905, column: 7, scope: !1708)
!1712 = !DILocation(line: 907, column: 10, scope: !1686)
!1713 = !DILocation(line: 909, column: 24, scope: !1686)
!1714 = !DILocation(line: 910, column: 18, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1686, file: !1038, line: 910, column: 7)
!1716 = !DILocation(line: 910, column: 7, scope: !1686)
!1717 = !DILocation(line: 912, column: 36, scope: !1686)
!1718 = !DILocation(line: 912, column: 3, scope: !1686)
!1719 = !DILocation(line: 913, column: 39, scope: !1686)
!1720 = !DILocation(line: 913, column: 12, scope: !1686)
!1721 = !DILocation(line: 914, column: 22, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !1038, line: 914, column: 3)
!1723 = distinct !DILexicalBlock(scope: !1686, file: !1038, line: 914, column: 3)
!1724 = !DILocation(line: 914, column: 3, scope: !1723)
!1725 = !DILocation(line: 916, column: 10, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1038, line: 916, column: 9)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !1038, line: 915, column: 3)
!1728 = !DILocation(line: 916, column: 20, scope: !1726)
!1729 = !DILocation(line: 916, column: 28, scope: !1726)
!1730 = !DILocation(line: 917, column: 10, scope: !1726)
!1731 = !DILocation(line: 917, column: 55, scope: !1726)
!1732 = !DILocation(line: 916, column: 9, scope: !1727)
!1733 = !DILocation(line: 919, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !1038, line: 919, column: 13)
!1735 = distinct !DILexicalBlock(scope: !1726, file: !1038, line: 918, column: 7)
!1736 = !DILocation(line: 919, column: 19, scope: !1734)
!1737 = !DILocation(line: 919, column: 13, scope: !1735)
!1738 = !DILocation(line: 921, column: 19, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !1038, line: 920, column: 11)
!1740 = !DILocation(line: 922, column: 34, scope: !1739)
!1741 = !DILocation(line: 924, column: 28, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !1038, line: 924, column: 17)
!1743 = !DILocation(line: 924, column: 17, scope: !1739)
!1744 = !DILocation(line: 926, column: 51, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !1038, line: 925, column: 15)
!1746 = !DILocation(line: 928, column: 25, scope: !1745)
!1747 = !DILocation(line: 926, column: 24, scope: !1745)
!1748 = !DILocation(line: 929, column: 17, scope: !1745)
!1749 = !DILocation(line: 932, column: 23, scope: !1735)
!1750 = !DILocation(line: 932, column: 9, scope: !1735)
!1751 = !DILocation(line: 932, column: 22, scope: !1735)
!1752 = !DILocation(line: 934, column: 7, scope: !1735)
!1753 = !DILocation(line: 0, scope: !1723)
!1754 = !DILocation(line: 935, column: 41, scope: !1727)
!1755 = !DILocation(line: 935, column: 14, scope: !1727)
!1756 = distinct !{!1756, !1724, !1757, !1479, !1480}
!1757 = !DILocation(line: 936, column: 3, scope: !1723)
!1758 = !DILocation(line: 937, column: 3, scope: !1686)
!1759 = !DILocation(line: 937, column: 16, scope: !1686)
!1760 = !DILocation(line: 938, column: 21, scope: !1686)
!1761 = !DILocation(line: 939, column: 3, scope: !1686)
!1762 = !DILocation(line: 940, column: 1, scope: !1686)
!1763 = distinct !DISubprogram(name: "MagickGetInterlaceScheme", scope: !1038, file: !1038, line: 964, type: !1764, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!702, !1041}
!1766 = !{!1767}
!1767 = !DILocalVariable(name: "wand", arg: 1, scope: !1763, file: !1038, line: 964, type: !1041)
!1768 = !DILocation(line: 0, scope: !1763)
!1769 = !DILocation(line: 968, column: 13, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !1038, line: 968, column: 7)
!1771 = !DILocation(line: 968, column: 19, scope: !1770)
!1772 = !DILocation(line: 968, column: 7, scope: !1763)
!1773 = !DILocation(line: 969, column: 66, scope: !1770)
!1774 = !DILocation(line: 969, column: 12, scope: !1770)
!1775 = !DILocation(line: 969, column: 5, scope: !1770)
!1776 = !DILocation(line: 970, column: 16, scope: !1763)
!1777 = !DILocation(line: 970, column: 28, scope: !1763)
!1778 = !{!1177, !1078, i64 80}
!1779 = !DILocation(line: 970, column: 3, scope: !1763)
!1780 = distinct !DISubprogram(name: "MagickGetInterpolateMethod", scope: !1038, file: !1038, line: 995, type: !1781, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!815, !1041}
!1783 = !{!1784, !1785, !1786}
!1784 = !DILocalVariable(name: "wand", arg: 1, scope: !1780, file: !1038, line: 995, type: !1041)
!1785 = !DILocalVariable(name: "option", scope: !1780, file: !1038, line: 998, type: !748)
!1786 = !DILocalVariable(name: "method", scope: !1780, file: !1038, line: 1001, type: !815)
!1787 = !DILocation(line: 0, scope: !1780)
!1788 = !DILocation(line: 1005, column: 13, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1780, file: !1038, line: 1005, column: 7)
!1790 = !DILocation(line: 1005, column: 19, scope: !1789)
!1791 = !DILocation(line: 1005, column: 7, scope: !1780)
!1792 = !DILocation(line: 1006, column: 66, scope: !1789)
!1793 = !DILocation(line: 1006, column: 12, scope: !1789)
!1794 = !DILocation(line: 1006, column: 5, scope: !1789)
!1795 = !DILocation(line: 1007, column: 31, scope: !1780)
!1796 = !DILocation(line: 1007, column: 10, scope: !1780)
!1797 = !DILocation(line: 1008, column: 14, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1780, file: !1038, line: 1008, column: 7)
!1799 = !DILocation(line: 1008, column: 7, scope: !1780)
!1800 = !DILocation(line: 1010, column: 35, scope: !1780)
!1801 = !DILocation(line: 1010, column: 10, scope: !1780)
!1802 = !DILocation(line: 1012, column: 3, scope: !1780)
!1803 = !DILocation(line: 1013, column: 1, scope: !1780)
!1804 = distinct !DISubprogram(name: "MagickGetOption", scope: !1038, file: !1038, line: 1041, type: !1368, scopeLine: 1042, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1805)
!1805 = !{!1806, !1807, !1808}
!1806 = !DILocalVariable(name: "wand", arg: 1, scope: !1804, file: !1038, line: 1041, type: !1041)
!1807 = !DILocalVariable(name: "key", arg: 2, scope: !1804, file: !1038, line: 1041, type: !748)
!1808 = !DILocalVariable(name: "option", scope: !1804, file: !1038, line: 1044, type: !748)
!1809 = !DILocation(line: 0, scope: !1804)
!1810 = !DILocation(line: 1048, column: 13, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1804, file: !1038, line: 1048, column: 7)
!1812 = !DILocation(line: 1048, column: 19, scope: !1811)
!1813 = !DILocation(line: 1048, column: 7, scope: !1804)
!1814 = !DILocation(line: 1049, column: 66, scope: !1811)
!1815 = !DILocation(line: 1049, column: 12, scope: !1811)
!1816 = !DILocation(line: 1049, column: 5, scope: !1811)
!1817 = !DILocation(line: 1050, column: 31, scope: !1804)
!1818 = !DILocation(line: 1050, column: 10, scope: !1804)
!1819 = !DILocation(line: 1051, column: 10, scope: !1804)
!1820 = !DILocation(line: 1051, column: 3, scope: !1804)
!1821 = distinct !DISubprogram(name: "MagickGetOptions", scope: !1038, file: !1038, line: 1084, type: !1403, scopeLine: 1086, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1822)
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829}
!1823 = !DILocalVariable(name: "wand", arg: 1, scope: !1821, file: !1038, line: 1084, type: !1041)
!1824 = !DILocalVariable(name: "pattern", arg: 2, scope: !1821, file: !1038, line: 1084, type: !748)
!1825 = !DILocalVariable(name: "number_options", arg: 3, scope: !1821, file: !1038, line: 1085, type: !1405)
!1826 = !DILocalVariable(name: "options", scope: !1821, file: !1038, line: 1088, type: !835)
!1827 = !DILocalVariable(name: "option", scope: !1821, file: !1038, line: 1091, type: !748)
!1828 = !DILocalVariable(name: "i", scope: !1821, file: !1038, line: 1094, type: !679)
!1829 = !DILocalVariable(name: "length", scope: !1821, file: !1038, line: 1097, type: !626)
!1830 = !DILocation(line: 0, scope: !1821)
!1831 = !DILocation(line: 1101, column: 13, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !1038, line: 1101, column: 7)
!1833 = !DILocation(line: 1101, column: 19, scope: !1832)
!1834 = !DILocation(line: 1101, column: 7, scope: !1821)
!1835 = !DILocation(line: 1102, column: 66, scope: !1832)
!1836 = !DILocation(line: 1102, column: 12, scope: !1832)
!1837 = !DILocation(line: 1102, column: 5, scope: !1832)
!1838 = !DILocation(line: 1103, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1821, file: !1038, line: 1103, column: 7)
!1840 = !DILocation(line: 1103, column: 20, scope: !1839)
!1841 = !DILocation(line: 1103, column: 7, scope: !1821)
!1842 = !DILocation(line: 1105, column: 41, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !1038, line: 1104, column: 5)
!1844 = !DILocation(line: 1106, column: 41, scope: !1843)
!1845 = !DILocation(line: 1105, column: 14, scope: !1843)
!1846 = !DILocation(line: 1107, column: 7, scope: !1843)
!1847 = !DILocation(line: 1110, column: 21, scope: !1821)
!1848 = !DILocation(line: 1111, column: 15, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1821, file: !1038, line: 1111, column: 7)
!1850 = !DILocation(line: 1111, column: 7, scope: !1821)
!1851 = !DILocation(line: 1113, column: 34, scope: !1821)
!1852 = !DILocation(line: 1113, column: 3, scope: !1821)
!1853 = !DILocation(line: 1114, column: 35, scope: !1821)
!1854 = !DILocation(line: 1114, column: 10, scope: !1821)
!1855 = !DILocation(line: 1115, column: 20, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !1038, line: 1115, column: 3)
!1857 = distinct !DILexicalBlock(scope: !1821, file: !1038, line: 1115, column: 3)
!1858 = !DILocation(line: 1115, column: 3, scope: !1857)
!1859 = !DILocation(line: 1117, column: 10, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !1038, line: 1117, column: 9)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !1038, line: 1116, column: 3)
!1862 = !DILocation(line: 1117, column: 18, scope: !1860)
!1863 = !DILocation(line: 1117, column: 26, scope: !1860)
!1864 = !DILocation(line: 1118, column: 10, scope: !1860)
!1865 = !DILocation(line: 1118, column: 53, scope: !1860)
!1866 = !DILocation(line: 1117, column: 9, scope: !1861)
!1867 = !DILocation(line: 1120, column: 15, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !1038, line: 1120, column: 13)
!1869 = distinct !DILexicalBlock(scope: !1860, file: !1038, line: 1119, column: 7)
!1870 = !DILocation(line: 1120, column: 19, scope: !1868)
!1871 = !DILocation(line: 1120, column: 13, scope: !1869)
!1872 = !DILocation(line: 1122, column: 19, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !1038, line: 1121, column: 11)
!1874 = !DILocation(line: 1123, column: 31, scope: !1873)
!1875 = !DILocation(line: 1125, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !1038, line: 1125, column: 17)
!1877 = !DILocation(line: 1125, column: 17, scope: !1873)
!1878 = !DILocation(line: 1127, column: 51, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !1038, line: 1126, column: 15)
!1880 = !DILocation(line: 1129, column: 25, scope: !1879)
!1881 = !DILocation(line: 1127, column: 24, scope: !1879)
!1882 = !DILocation(line: 1130, column: 17, scope: !1879)
!1883 = !DILocation(line: 1133, column: 20, scope: !1869)
!1884 = !DILocation(line: 1133, column: 9, scope: !1869)
!1885 = !DILocation(line: 1133, column: 19, scope: !1869)
!1886 = !DILocation(line: 1135, column: 7, scope: !1869)
!1887 = !DILocation(line: 0, scope: !1857)
!1888 = !DILocation(line: 1136, column: 37, scope: !1861)
!1889 = !DILocation(line: 1136, column: 12, scope: !1861)
!1890 = distinct !{!1890, !1858, !1891, !1479, !1480}
!1891 = !DILocation(line: 1137, column: 3, scope: !1857)
!1892 = !DILocation(line: 1138, column: 3, scope: !1821)
!1893 = !DILocation(line: 1138, column: 13, scope: !1821)
!1894 = !DILocation(line: 1139, column: 18, scope: !1821)
!1895 = !DILocation(line: 1140, column: 3, scope: !1821)
!1896 = !DILocation(line: 1141, column: 1, scope: !1821)
!1897 = !DISubprogram(name: "ResetImageOptionIterator", scope: !477, file: !477, line: 177, type: !1898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !998}
!1900 = !DISubprogram(name: "GetNextImageOption", scope: !477, file: !477, line: 153, type: !1901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!674, !998}
!1903 = distinct !DISubprogram(name: "MagickGetOrientation", scope: !1038, file: !1038, line: 1165, type: !1904, scopeLine: 1166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!629, !1041}
!1906 = !{!1907}
!1907 = !DILocalVariable(name: "wand", arg: 1, scope: !1903, file: !1038, line: 1165, type: !1041)
!1908 = !DILocation(line: 0, scope: !1903)
!1909 = !DILocation(line: 1169, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1903, file: !1038, line: 1169, column: 7)
!1911 = !DILocation(line: 1169, column: 19, scope: !1910)
!1912 = !DILocation(line: 1169, column: 7, scope: !1903)
!1913 = !DILocation(line: 1170, column: 66, scope: !1910)
!1914 = !DILocation(line: 1170, column: 12, scope: !1910)
!1915 = !DILocation(line: 1170, column: 5, scope: !1910)
!1916 = !DILocation(line: 1171, column: 16, scope: !1903)
!1917 = !DILocation(line: 1171, column: 28, scope: !1903)
!1918 = !{!1177, !1078, i64 4}
!1919 = !DILocation(line: 1171, column: 3, scope: !1903)
!1920 = distinct !DISubprogram(name: "MagickGetPackageName", scope: !1038, file: !1038, line: 1194, type: !1265, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1105)
!1921 = !DILocation(line: 1196, column: 10, scope: !1920)
!1922 = !DILocation(line: 1196, column: 3, scope: !1920)
!1923 = !DISubprogram(name: "GetMagickPackageName", scope: !1270, file: !1270, line: 97, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1924 = distinct !DISubprogram(name: "MagickGetPage", scope: !1038, file: !1038, line: 1230, type: !1925, scopeLine: 1232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1928)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!631, !1162, !1405, !1405, !1927, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934}
!1929 = !DILocalVariable(name: "wand", arg: 1, scope: !1924, file: !1038, line: 1230, type: !1162)
!1930 = !DILocalVariable(name: "width", arg: 2, scope: !1924, file: !1038, line: 1231, type: !1405)
!1931 = !DILocalVariable(name: "height", arg: 3, scope: !1924, file: !1038, line: 1231, type: !1405)
!1932 = !DILocalVariable(name: "x", arg: 4, scope: !1924, file: !1038, line: 1231, type: !1927)
!1933 = !DILocalVariable(name: "y", arg: 5, scope: !1924, file: !1038, line: 1231, type: !1927)
!1934 = !DILocalVariable(name: "geometry", scope: !1924, file: !1038, line: 1234, type: !687)
!1935 = !DILocation(line: 0, scope: !1924)
!1936 = !DILocation(line: 1233, column: 3, scope: !1924)
!1937 = !DILocation(line: 1234, column: 5, scope: !1924)
!1938 = !DILocation(line: 1238, column: 13, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1924, file: !1038, line: 1238, column: 7)
!1940 = !DILocation(line: 1238, column: 19, scope: !1939)
!1941 = !DILocation(line: 1238, column: 7, scope: !1924)
!1942 = !DILocation(line: 1239, column: 66, scope: !1939)
!1943 = !DILocation(line: 1239, column: 12, scope: !1939)
!1944 = !DILocation(line: 1239, column: 5, scope: !1939)
!1945 = !DILocation(line: 1240, column: 10, scope: !1924)
!1946 = !DILocation(line: 1241, column: 38, scope: !1924)
!1947 = !DILocation(line: 1241, column: 50, scope: !1924)
!1948 = !{!1177, !1080, i64 40}
!1949 = !DILocation(line: 1241, column: 10, scope: !1924)
!1950 = !DILocation(line: 1242, column: 19, scope: !1924)
!1951 = !{!1540, !1077, i64 0}
!1952 = !DILocation(line: 1242, column: 9, scope: !1924)
!1953 = !DILocation(line: 1243, column: 20, scope: !1924)
!1954 = !{!1540, !1077, i64 8}
!1955 = !DILocation(line: 1243, column: 10, scope: !1924)
!1956 = !DILocation(line: 1244, column: 15, scope: !1924)
!1957 = !{!1540, !1077, i64 16}
!1958 = !DILocation(line: 1244, column: 5, scope: !1924)
!1959 = !DILocation(line: 1245, column: 15, scope: !1924)
!1960 = !{!1540, !1077, i64 24}
!1961 = !DILocation(line: 1245, column: 5, scope: !1924)
!1962 = !DILocation(line: 1247, column: 1, scope: !1924)
!1963 = !DILocation(line: 1246, column: 3, scope: !1924)
!1964 = !DISubprogram(name: "ResetMagickMemory", scope: !1489, file: !1489, line: 52, type: !1965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!670, !670, !478, !921}
!1967 = !DISubprogram(name: "ParseAbsoluteGeometry", scope: !295, file: !295, line: 141, type: !1968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1022, !748, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!1971 = distinct !DISubprogram(name: "MagickGetPointsize", scope: !1038, file: !1038, line: 1272, type: !1972, scopeLine: 1273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!652, !1041}
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "wand", arg: 1, scope: !1971, file: !1038, line: 1272, type: !1041)
!1976 = !DILocation(line: 0, scope: !1971)
!1977 = !DILocation(line: 1276, column: 13, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1971, file: !1038, line: 1276, column: 7)
!1979 = !DILocation(line: 1276, column: 19, scope: !1978)
!1980 = !DILocation(line: 1276, column: 7, scope: !1971)
!1981 = !DILocation(line: 1277, column: 66, scope: !1978)
!1982 = !DILocation(line: 1277, column: 12, scope: !1978)
!1983 = !DILocation(line: 1277, column: 5, scope: !1978)
!1984 = !DILocation(line: 1278, column: 16, scope: !1971)
!1985 = !DILocation(line: 1278, column: 28, scope: !1971)
!1986 = !{!1177, !1178, i64 144}
!1987 = !DILocation(line: 1278, column: 3, scope: !1971)
!1988 = distinct !DISubprogram(name: "MagickGetQuantumDepth", scope: !1038, file: !1038, line: 1304, type: !1989, scopeLine: 1305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!748, !1405}
!1991 = !{!1992}
!1992 = !DILocalVariable(name: "depth", arg: 1, scope: !1988, file: !1038, line: 1304, type: !1405)
!1993 = !DILocation(line: 0, scope: !1988)
!1994 = !DILocation(line: 1306, column: 10, scope: !1988)
!1995 = !DILocation(line: 1306, column: 3, scope: !1988)
!1996 = !DISubprogram(name: "GetMagickQuantumDepth", scope: !1270, file: !1270, line: 98, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!1997 = distinct !DISubprogram(name: "MagickGetQuantumRange", scope: !1038, file: !1038, line: 1332, type: !1989, scopeLine: 1333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1998)
!1998 = !{!1999}
!1999 = !DILocalVariable(name: "range", arg: 1, scope: !1997, file: !1038, line: 1332, type: !1405)
!2000 = !DILocation(line: 0, scope: !1997)
!2001 = !DILocation(line: 1334, column: 10, scope: !1997)
!2002 = !DILocation(line: 1334, column: 3, scope: !1997)
!2003 = !DISubprogram(name: "GetMagickQuantumRange", scope: !1270, file: !1270, line: 99, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2004 = distinct !DISubprogram(name: "MagickGetReleaseDate", scope: !1038, file: !1038, line: 1356, type: !1265, scopeLine: 1357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1105)
!2005 = !DILocation(line: 1358, column: 10, scope: !2004)
!2006 = !DILocation(line: 1358, column: 3, scope: !2004)
!2007 = !DISubprogram(name: "GetMagickReleaseDate", scope: !1270, file: !1270, line: 100, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2008 = distinct !DISubprogram(name: "MagickGetResolution", scope: !1038, file: !1038, line: 1388, type: !2009, scopeLine: 1390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!631, !1162, !849, !849}
!2011 = !{!2012, !2013, !2014, !2015, !2026}
!2012 = !DILocalVariable(name: "wand", arg: 1, scope: !2008, file: !1038, line: 1388, type: !1162)
!2013 = !DILocalVariable(name: "x", arg: 2, scope: !2008, file: !1038, line: 1389, type: !849)
!2014 = !DILocalVariable(name: "y", arg: 3, scope: !2008, file: !1038, line: 1389, type: !849)
!2015 = !DILocalVariable(name: "geometry_info", scope: !2016, file: !1038, line: 1400, type: !2018)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !1038, line: 1398, column: 5)
!2017 = distinct !DILexicalBlock(scope: !2008, file: !1038, line: 1397, column: 7)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeometryInfo", file: !295, line: 112, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GeometryInfo", file: !295, line: 104, size: 320, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "rho", scope: !2019, file: !295, line: 107, baseType: !652, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !2019, file: !295, line: 108, baseType: !652, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !2019, file: !295, line: 109, baseType: !652, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !2019, file: !295, line: 110, baseType: !652, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "chi", scope: !2019, file: !295, line: 111, baseType: !652, size: 64, offset: 256)
!2026 = !DILocalVariable(name: "flags", scope: !2016, file: !1038, line: 1403, type: !1022)
!2027 = !DILocation(line: 0, scope: !2008)
!2028 = !DILocation(line: 1393, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2008, file: !1038, line: 1393, column: 7)
!2030 = !DILocation(line: 1393, column: 19, scope: !2029)
!2031 = !DILocation(line: 1393, column: 7, scope: !2008)
!2032 = !DILocation(line: 1394, column: 66, scope: !2029)
!2033 = !DILocation(line: 1394, column: 12, scope: !2029)
!2034 = !DILocation(line: 1394, column: 5, scope: !2029)
!2035 = !DILocation(line: 1395, column: 5, scope: !2008)
!2036 = !{!1178, !1178, i64 0}
!2037 = !DILocation(line: 1396, column: 5, scope: !2008)
!2038 = !DILocation(line: 1397, column: 13, scope: !2017)
!2039 = !DILocation(line: 1397, column: 25, scope: !2017)
!2040 = !{!1177, !1080, i64 136}
!2041 = !DILocation(line: 1397, column: 33, scope: !2017)
!2042 = !DILocation(line: 1397, column: 7, scope: !2008)
!2043 = !DILocation(line: 1399, column: 7, scope: !2016)
!2044 = !DILocation(line: 1400, column: 9, scope: !2016)
!2045 = !DILocation(line: 1405, column: 13, scope: !2016)
!2046 = !DILocation(line: 0, scope: !2016)
!2047 = !DILocation(line: 1406, column: 24, scope: !2016)
!2048 = !{!2049, !1178, i64 0}
!2049 = !{!"_GeometryInfo", !1178, i64 0, !1178, i64 8, !1178, i64 16, !1178, i64 24, !1178, i64 32}
!2050 = !DILocation(line: 1406, column: 9, scope: !2016)
!2051 = !DILocation(line: 1407, column: 24, scope: !2016)
!2052 = !{!2049, !1178, i64 8}
!2053 = !DILocation(line: 1407, column: 9, scope: !2016)
!2054 = !DILocation(line: 1408, column: 18, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2016, file: !1038, line: 1408, column: 11)
!2056 = !DILocation(line: 1408, column: 32, scope: !2055)
!2057 = !DILocation(line: 1408, column: 11, scope: !2016)
!2058 = !DILocation(line: 1409, column: 13, scope: !2055)
!2059 = !DILocation(line: 1409, column: 11, scope: !2055)
!2060 = !DILocation(line: 1409, column: 9, scope: !2055)
!2061 = !DILocation(line: 1410, column: 5, scope: !2017)
!2062 = !DILocation(line: 1410, column: 5, scope: !2016)
!2063 = !DILocation(line: 1411, column: 3, scope: !2008)
!2064 = !DISubprogram(name: "ParseGeometry", scope: !295, file: !295, line: 143, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!1022, !748, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2068 = distinct !DISubprogram(name: "MagickGetResource", scope: !1038, file: !1038, line: 1436, type: !2069, scopeLine: 1437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2073)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!754, !2071}
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !581, line: 36, baseType: !580)
!2073 = !{!2074}
!2074 = !DILocalVariable(name: "type", arg: 1, scope: !2068, file: !1038, line: 1436, type: !2071)
!2075 = !DILocation(line: 0, scope: !2068)
!2076 = !DILocation(line: 1438, column: 10, scope: !2068)
!2077 = !DILocation(line: 1438, column: 3, scope: !2068)
!2078 = !DISubprogram(name: "GetMagickResource", scope: !581, file: !581, line: 52, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2079 = distinct !DISubprogram(name: "MagickGetResourceLimit", scope: !1038, file: !1038, line: 1463, type: !2069, scopeLine: 1464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2080)
!2080 = !{!2081}
!2081 = !DILocalVariable(name: "type", arg: 1, scope: !2079, file: !1038, line: 1463, type: !2071)
!2082 = !DILocation(line: 0, scope: !2079)
!2083 = !DILocation(line: 1465, column: 10, scope: !2079)
!2084 = !DILocation(line: 1465, column: 3, scope: !2079)
!2085 = !DISubprogram(name: "GetMagickResourceLimit", scope: !581, file: !581, line: 53, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2086 = distinct !DISubprogram(name: "MagickGetSamplingFactors", scope: !1038, file: !1038, line: 1493, type: !2087, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!849, !1041, !1405}
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095}
!2090 = !DILocalVariable(name: "wand", arg: 1, scope: !2086, file: !1038, line: 1493, type: !1041)
!2091 = !DILocalVariable(name: "number_factors", arg: 2, scope: !2086, file: !1038, line: 1494, type: !1405)
!2092 = !DILocalVariable(name: "sampling_factors", scope: !2086, file: !1038, line: 1497, type: !849)
!2093 = !DILocalVariable(name: "p", scope: !2086, file: !1038, line: 1500, type: !748)
!2094 = !DILocalVariable(name: "i", scope: !2086, file: !1038, line: 1503, type: !679)
!2095 = !DILocalVariable(name: "exception", scope: !2096, file: !1038, line: 1524, type: !776)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !1038, line: 1524, column: 5)
!2097 = distinct !DILexicalBlock(scope: !2086, file: !1038, line: 1523, column: 7)
!2098 = !DILocation(line: 0, scope: !2086)
!2099 = !DILocation(line: 1507, column: 13, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2086, file: !1038, line: 1507, column: 7)
!2101 = !DILocation(line: 1507, column: 19, scope: !2100)
!2102 = !DILocation(line: 1507, column: 7, scope: !2086)
!2103 = !DILocation(line: 1508, column: 66, scope: !2100)
!2104 = !DILocation(line: 1508, column: 12, scope: !2100)
!2105 = !DILocation(line: 1508, column: 5, scope: !2100)
!2106 = !DILocation(line: 1509, column: 18, scope: !2086)
!2107 = !DILocation(line: 1511, column: 13, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2086, file: !1038, line: 1511, column: 7)
!2109 = !DILocation(line: 1511, column: 25, scope: !2108)
!2110 = !{!1177, !1080, i64 104}
!2111 = !DILocation(line: 1511, column: 41, scope: !2108)
!2112 = !DILocation(line: 1511, column: 7, scope: !2086)
!2113 = !DILocation(line: 1516, column: 19, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !1038, line: 1515, column: 3)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !1038, line: 1514, column: 3)
!2116 = distinct !DILexicalBlock(scope: !2086, file: !1038, line: 1514, column: 3)
!2117 = !DILocation(line: 1516, column: 22, scope: !2114)
!2118 = !DILocation(line: 1516, column: 28, scope: !2114)
!2119 = !DILocation(line: 1516, column: 33, scope: !2114)
!2120 = !{!1180, !1180, i64 0}
!2121 = !DILocation(line: 1516, column: 69, scope: !2114)
!2122 = !DILocation(line: 1516, column: 75, scope: !2114)
!2123 = !DILocation(line: 1518, column: 8, scope: !2114)
!2124 = distinct !{!2124, !2125, !2123, !1479, !1480}
!2125 = !DILocation(line: 1516, column: 5, scope: !2114)
!2126 = !DILocation(line: 0, scope: !2116)
!2127 = !DILocation(line: 1519, column: 6, scope: !2114)
!2128 = !DILocation(line: 1514, column: 67, scope: !2115)
!2129 = !DILocation(line: 1514, column: 47, scope: !2115)
!2130 = !DILocation(line: 1514, column: 3, scope: !2116)
!2131 = distinct !{!2131, !2130, !2132, !1479, !1480}
!2132 = !DILocation(line: 1520, column: 3, scope: !2116)
!2133 = !DILocation(line: 1521, column: 62, scope: !2086)
!2134 = !DILocation(line: 1521, column: 31, scope: !2086)
!2135 = !DILocation(line: 1523, column: 24, scope: !2097)
!2136 = !DILocation(line: 1523, column: 7, scope: !2086)
!2137 = !DILocation(line: 1524, column: 5, scope: !2096)
!2138 = !DILocation(line: 1527, column: 16, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2086, file: !1038, line: 1527, column: 3)
!2140 = !DILocation(line: 1527, column: 28, scope: !2139)
!2141 = !DILocation(line: 1527, column: 47, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !1038, line: 1527, column: 3)
!2143 = !DILocation(line: 1527, column: 3, scope: !2139)
!2144 = !DILocation(line: 1529, column: 19, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !1038, line: 1528, column: 3)
!2146 = !DILocation(line: 1529, column: 22, scope: !2145)
!2147 = !DILocation(line: 1529, column: 28, scope: !2145)
!2148 = !DILocation(line: 1529, column: 33, scope: !2145)
!2149 = !DILocation(line: 1529, column: 69, scope: !2145)
!2150 = !DILocation(line: 1529, column: 75, scope: !2145)
!2151 = !DILocation(line: 1531, column: 8, scope: !2145)
!2152 = distinct !{!2152, !2153, !2151, !1479, !1480}
!2153 = !DILocation(line: 1529, column: 5, scope: !2145)
!2154 = !DILocation(line: 0, scope: !2139)
!2155 = !DILocalVariable(name: "string", arg: 1, scope: !2156, file: !2157, line: 42, type: !2160)
!2156 = distinct !DISubprogram(name: "StringToDouble", scope: !2157, file: !2157, line: 42, type: !2158, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2162)
!2157 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!652, !2160, !2161}
!2160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !748)
!2161 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !835)
!2162 = !{!2155, !2163}
!2163 = !DILocalVariable(name: "sentinal", arg: 2, scope: !2156, file: !2157, line: 43, type: !2161)
!2164 = !DILocation(line: 0, scope: !2156, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 1532, column: 25, scope: !2145)
!2166 = !DILocation(line: 45, column: 10, scope: !2156, inlinedAt: !2165)
!2167 = !DILocation(line: 1532, column: 5, scope: !2145)
!2168 = !DILocation(line: 1532, column: 24, scope: !2145)
!2169 = !DILocation(line: 1533, column: 6, scope: !2145)
!2170 = !DILocation(line: 1527, column: 67, scope: !2142)
!2171 = distinct !{!2171, !2143, !2172, !1479, !1480}
!2172 = !DILocation(line: 1534, column: 3, scope: !2139)
!2173 = !DILocation(line: 1535, column: 18, scope: !2086)
!2174 = !DILocation(line: 1536, column: 3, scope: !2086)
!2175 = !DILocation(line: 1537, column: 1, scope: !2086)
!2176 = !DISubprogram(name: "GetExceptionInfo", scope: !10, file: !10, line: 166, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !1000}
!2179 = !DISubprogram(name: "CatchException", scope: !10, file: !10, line: 164, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2180 = !DISubprogram(name: "DestroyExceptionInfo", scope: !10, file: !10, line: 148, type: !2181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!1000, !1000}
!2183 = !DISubprogram(name: "MagickWandTerminus", scope: !1043, file: !1043, line: 116, type: !2184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null}
!2186 = distinct !DISubprogram(name: "MagickGetSize", scope: !1038, file: !1038, line: 1566, type: !2187, scopeLine: 1568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!631, !1162, !1405, !1405}
!2189 = !{!2190, !2191, !2192, !2193}
!2190 = !DILocalVariable(name: "wand", arg: 1, scope: !2186, file: !1038, line: 1566, type: !1162)
!2191 = !DILocalVariable(name: "columns", arg: 2, scope: !2186, file: !1038, line: 1567, type: !1405)
!2192 = !DILocalVariable(name: "rows", arg: 3, scope: !2186, file: !1038, line: 1567, type: !1405)
!2193 = !DILocalVariable(name: "geometry", scope: !2186, file: !1038, line: 1570, type: !687)
!2194 = !DILocation(line: 0, scope: !2186)
!2195 = !DILocation(line: 1569, column: 3, scope: !2186)
!2196 = !DILocation(line: 1570, column: 5, scope: !2186)
!2197 = !DILocation(line: 1574, column: 13, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2186, file: !1038, line: 1574, column: 7)
!2199 = !DILocation(line: 1574, column: 19, scope: !2198)
!2200 = !DILocation(line: 1574, column: 7, scope: !2186)
!2201 = !DILocation(line: 1575, column: 66, scope: !2198)
!2202 = !DILocation(line: 1575, column: 12, scope: !2198)
!2203 = !DILocation(line: 1575, column: 5, scope: !2198)
!2204 = !DILocation(line: 1576, column: 10, scope: !2186)
!2205 = !DILocation(line: 1577, column: 38, scope: !2186)
!2206 = !DILocation(line: 1577, column: 50, scope: !2186)
!2207 = !{!1177, !1080, i64 24}
!2208 = !DILocation(line: 1577, column: 10, scope: !2186)
!2209 = !DILocation(line: 1578, column: 21, scope: !2186)
!2210 = !DILocation(line: 1578, column: 11, scope: !2186)
!2211 = !DILocation(line: 1579, column: 18, scope: !2186)
!2212 = !DILocation(line: 1579, column: 8, scope: !2186)
!2213 = !DILocation(line: 1581, column: 1, scope: !2186)
!2214 = !DILocation(line: 1580, column: 3, scope: !2186)
!2215 = distinct !DISubprogram(name: "MagickGetSizeOffset", scope: !1038, file: !1038, line: 1609, type: !2216, scopeLine: 1611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!631, !1162, !1927}
!2218 = !{!2219, !2220, !2221}
!2219 = !DILocalVariable(name: "wand", arg: 1, scope: !2215, file: !1038, line: 1609, type: !1162)
!2220 = !DILocalVariable(name: "offset", arg: 2, scope: !2215, file: !1038, line: 1610, type: !1927)
!2221 = !DILocalVariable(name: "geometry", scope: !2215, file: !1038, line: 1613, type: !687)
!2222 = !DILocation(line: 0, scope: !2215)
!2223 = !DILocation(line: 1612, column: 3, scope: !2215)
!2224 = !DILocation(line: 1613, column: 5, scope: !2215)
!2225 = !DILocation(line: 1617, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2215, file: !1038, line: 1617, column: 7)
!2227 = !DILocation(line: 1617, column: 19, scope: !2226)
!2228 = !DILocation(line: 1617, column: 7, scope: !2215)
!2229 = !DILocation(line: 1618, column: 66, scope: !2226)
!2230 = !DILocation(line: 1618, column: 12, scope: !2226)
!2231 = !DILocation(line: 1618, column: 5, scope: !2226)
!2232 = !DILocation(line: 1619, column: 10, scope: !2215)
!2233 = !DILocation(line: 1620, column: 38, scope: !2215)
!2234 = !DILocation(line: 1620, column: 50, scope: !2215)
!2235 = !DILocation(line: 1620, column: 10, scope: !2215)
!2236 = !DILocation(line: 1621, column: 20, scope: !2215)
!2237 = !DILocation(line: 1621, column: 10, scope: !2215)
!2238 = !DILocation(line: 1623, column: 1, scope: !2215)
!2239 = !DILocation(line: 1622, column: 3, scope: !2215)
!2240 = distinct !DISubprogram(name: "MagickGetType", scope: !1038, file: !1038, line: 1647, type: !2241, scopeLine: 1648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!823, !1041}
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "wand", arg: 1, scope: !2240, file: !1038, line: 1647, type: !1041)
!2245 = !DILocation(line: 0, scope: !2240)
!2246 = !DILocation(line: 1651, column: 13, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2240, file: !1038, line: 1651, column: 7)
!2248 = !DILocation(line: 1651, column: 19, scope: !2247)
!2249 = !DILocation(line: 1651, column: 7, scope: !2240)
!2250 = !DILocation(line: 1652, column: 66, scope: !2247)
!2251 = !DILocation(line: 1652, column: 12, scope: !2247)
!2252 = !DILocation(line: 1652, column: 5, scope: !2247)
!2253 = !DILocation(line: 1653, column: 16, scope: !2240)
!2254 = !DILocation(line: 1653, column: 28, scope: !2240)
!2255 = !{!1177, !1078, i64 204}
!2256 = !DILocation(line: 1653, column: 3, scope: !2240)
!2257 = distinct !DISubprogram(name: "MagickGetVersion", scope: !1038, file: !1038, line: 1679, type: !1989, scopeLine: 1680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2258)
!2258 = !{!2259}
!2259 = !DILocalVariable(name: "version", arg: 1, scope: !2257, file: !1038, line: 1679, type: !1405)
!2260 = !DILocation(line: 0, scope: !2257)
!2261 = !DILocation(line: 1681, column: 10, scope: !2257)
!2262 = !DILocation(line: 1681, column: 3, scope: !2257)
!2263 = !DISubprogram(name: "GetMagickVersion", scope: !1270, file: !1270, line: 101, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2264 = distinct !DISubprogram(name: "MagickProfileImage", scope: !1038, file: !1038, line: 1716, type: !2265, scopeLine: 1718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!631, !1041, !748, !919, !921}
!2267 = !{!2268, !2269, !2270, !2271, !2272}
!2268 = !DILocalVariable(name: "wand", arg: 1, scope: !2264, file: !1038, line: 1716, type: !1041)
!2269 = !DILocalVariable(name: "name", arg: 2, scope: !2264, file: !1038, line: 1717, type: !748)
!2270 = !DILocalVariable(name: "profile", arg: 3, scope: !2264, file: !1038, line: 1717, type: !919)
!2271 = !DILocalVariable(name: "length", arg: 4, scope: !2264, file: !1038, line: 1717, type: !921)
!2272 = !DILocalVariable(name: "status", scope: !2264, file: !1038, line: 1720, type: !631)
!2273 = !DILocation(line: 0, scope: !2264)
!2274 = !DILocation(line: 1724, column: 13, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2264, file: !1038, line: 1724, column: 7)
!2276 = !DILocation(line: 1724, column: 19, scope: !2275)
!2277 = !DILocation(line: 1724, column: 7, scope: !2264)
!2278 = !DILocation(line: 1725, column: 66, scope: !2275)
!2279 = !DILocation(line: 1725, column: 12, scope: !2275)
!2280 = !DILocation(line: 1725, column: 5, scope: !2275)
!2281 = !DILocation(line: 1726, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2264, file: !1038, line: 1726, column: 7)
!2283 = !DILocation(line: 1726, column: 20, scope: !2282)
!2284 = !DILocation(line: 1726, column: 7, scope: !2264)
!2285 = !DILocation(line: 1727, column: 5, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !1038, line: 1727, column: 5)
!2287 = !DILocation(line: 1728, column: 10, scope: !2264)
!2288 = !DILocation(line: 1729, column: 14, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2264, file: !1038, line: 1729, column: 7)
!2290 = !DILocation(line: 1729, column: 7, scope: !2264)
!2291 = !DILocation(line: 1730, column: 28, scope: !2289)
!2292 = !DILocation(line: 1730, column: 45, scope: !2289)
!2293 = !DILocation(line: 1730, column: 53, scope: !2289)
!2294 = !DILocation(line: 1730, column: 5, scope: !2289)
!2295 = !DILocation(line: 1732, column: 1, scope: !2264)
!2296 = !DISubprogram(name: "ProfileImage", scope: !252, file: !252, line: 60, type: !2297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!631, !615, !748, !919, !921, !1360}
!2299 = !DISubprogram(name: "InheritException", scope: !10, file: !10, line: 167, type: !2300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !1000, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!2304 = distinct !DISubprogram(name: "MagickRemoveImageProfile", scope: !1038, file: !1038, line: 1761, type: !1506, scopeLine: 1763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2305)
!2305 = !{!2306, !2307, !2308, !2309, !2310}
!2306 = !DILocalVariable(name: "wand", arg: 1, scope: !2304, file: !1038, line: 1761, type: !1041)
!2307 = !DILocalVariable(name: "name", arg: 2, scope: !2304, file: !1038, line: 1762, type: !748)
!2308 = !DILocalVariable(name: "length", arg: 3, scope: !2304, file: !1038, line: 1762, type: !1405)
!2309 = !DILocalVariable(name: "profile", scope: !2304, file: !1038, line: 1765, type: !840)
!2310 = !DILocalVariable(name: "datum", scope: !2304, file: !1038, line: 1768, type: !803)
!2311 = !DILocation(line: 0, scope: !2304)
!2312 = !DILocation(line: 1772, column: 13, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2304, file: !1038, line: 1772, column: 7)
!2314 = !DILocation(line: 1772, column: 19, scope: !2313)
!2315 = !DILocation(line: 1772, column: 7, scope: !2304)
!2316 = !DILocation(line: 1773, column: 66, scope: !2313)
!2317 = !DILocation(line: 1773, column: 12, scope: !2313)
!2318 = !DILocation(line: 1773, column: 5, scope: !2313)
!2319 = !DILocation(line: 1774, column: 13, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2304, file: !1038, line: 1774, column: 7)
!2321 = !DILocation(line: 1774, column: 20, scope: !2320)
!2322 = !DILocation(line: 1774, column: 7, scope: !2304)
!2323 = !DILocation(line: 1776, column: 41, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !1038, line: 1775, column: 5)
!2325 = !DILocation(line: 1777, column: 41, scope: !2324)
!2326 = !DILocation(line: 1776, column: 14, scope: !2324)
!2327 = !DILocation(line: 1778, column: 7, scope: !2324)
!2328 = !DILocation(line: 1780, column: 10, scope: !2304)
!2329 = !DILocation(line: 1781, column: 11, scope: !2304)
!2330 = !DILocation(line: 1782, column: 15, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2304, file: !1038, line: 1782, column: 7)
!2332 = !DILocation(line: 1782, column: 7, scope: !2304)
!2333 = !DILocation(line: 1784, column: 48, scope: !2304)
!2334 = !DILocation(line: 1784, column: 27, scope: !2304)
!2335 = !DILocation(line: 1786, column: 13, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2304, file: !1038, line: 1786, column: 7)
!2337 = !DILocation(line: 1786, column: 7, scope: !2304)
!2338 = !DILocation(line: 1788, column: 33, scope: !2304)
!2339 = !DILocation(line: 1789, column: 5, scope: !2304)
!2340 = !DILocation(line: 1788, column: 10, scope: !2304)
!2341 = !DILocation(line: 1790, column: 11, scope: !2304)
!2342 = !DILocation(line: 1790, column: 10, scope: !2304)
!2343 = !DILocation(line: 1791, column: 11, scope: !2304)
!2344 = !DILocation(line: 1792, column: 3, scope: !2304)
!2345 = !DILocation(line: 1793, column: 1, scope: !2304)
!2346 = !DISubprogram(name: "RemoveImageProfile", scope: !252, file: !252, line: 66, type: !2347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!840, !615, !748}
!2349 = !DISubprogram(name: "DestroyStringInfo", scope: !842, file: !842, line: 91, type: !2350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!840, !840}
!2352 = distinct !DISubprogram(name: "MagickSetAntialias", scope: !1038, file: !1038, line: 1820, type: !2353, scopeLine: 1822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!631, !1041, !1360}
!2355 = !{!2356, !2357}
!2356 = !DILocalVariable(name: "wand", arg: 1, scope: !2352, file: !1038, line: 1820, type: !1041)
!2357 = !DILocalVariable(name: "antialias", arg: 2, scope: !2352, file: !1038, line: 1821, type: !1360)
!2358 = !DILocation(line: 0, scope: !2352)
!2359 = !DILocation(line: 1825, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2352, file: !1038, line: 1825, column: 7)
!2361 = !DILocation(line: 1825, column: 19, scope: !2360)
!2362 = !DILocation(line: 1825, column: 7, scope: !2352)
!2363 = !DILocation(line: 1826, column: 66, scope: !2360)
!2364 = !DILocation(line: 1826, column: 12, scope: !2360)
!2365 = !DILocation(line: 1826, column: 5, scope: !2360)
!2366 = !DILocation(line: 1827, column: 9, scope: !2352)
!2367 = !DILocation(line: 1827, column: 21, scope: !2352)
!2368 = !DILocation(line: 1827, column: 30, scope: !2352)
!2369 = !DILocation(line: 1828, column: 3, scope: !2352)
!2370 = distinct !DISubprogram(name: "MagickSetBackgroundColor", scope: !1038, file: !1038, line: 1856, type: !2371, scopeLine: 1858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2375)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!631, !1041, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!2375 = !{!2376, !2377}
!2376 = !DILocalVariable(name: "wand", arg: 1, scope: !2370, file: !1038, line: 1856, type: !1041)
!2377 = !DILocalVariable(name: "background", arg: 2, scope: !2370, file: !1038, line: 1857, type: !2373)
!2378 = !DILocation(line: 0, scope: !2370)
!2379 = !DILocation(line: 1861, column: 13, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2370, file: !1038, line: 1861, column: 7)
!2381 = !DILocation(line: 1861, column: 19, scope: !2380)
!2382 = !DILocation(line: 1861, column: 7, scope: !2370)
!2383 = !DILocation(line: 1862, column: 66, scope: !2380)
!2384 = !DILocation(line: 1862, column: 12, scope: !2380)
!2385 = !DILocation(line: 1862, column: 5, scope: !2380)
!2386 = !DILocation(line: 1863, column: 42, scope: !2370)
!2387 = !DILocation(line: 1863, column: 54, scope: !2370)
!2388 = !DILocation(line: 1863, column: 3, scope: !2370)
!2389 = !DILocation(line: 1864, column: 3, scope: !2370)
!2390 = !DISubprogram(name: "PixelGetQuantumColor", scope: !1187, file: !1187, line: 83, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !2373, !638}
!2393 = distinct !DISubprogram(name: "MagickSetColorspace", scope: !1038, file: !1038, line: 1892, type: !2394, scopeLine: 1894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2397)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!631, !1041, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!2397 = !{!2398, !2399}
!2398 = !DILocalVariable(name: "wand", arg: 1, scope: !2393, file: !1038, line: 1892, type: !1041)
!2399 = !DILocalVariable(name: "colorspace", arg: 2, scope: !2393, file: !1038, line: 1893, type: !2396)
!2400 = !DILocation(line: 0, scope: !2393)
!2401 = !DILocation(line: 1897, column: 13, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2393, file: !1038, line: 1897, column: 7)
!2403 = !DILocation(line: 1897, column: 19, scope: !2402)
!2404 = !DILocation(line: 1897, column: 7, scope: !2393)
!2405 = !DILocation(line: 1898, column: 66, scope: !2402)
!2406 = !DILocation(line: 1898, column: 12, scope: !2402)
!2407 = !DILocation(line: 1898, column: 5, scope: !2402)
!2408 = !DILocation(line: 1899, column: 9, scope: !2393)
!2409 = !DILocation(line: 1899, column: 21, scope: !2393)
!2410 = !DILocation(line: 1899, column: 31, scope: !2393)
!2411 = !DILocation(line: 1900, column: 3, scope: !2393)
!2412 = distinct !DISubprogram(name: "MagickSetCompression", scope: !1038, file: !1038, line: 1928, type: !2413, scopeLine: 1930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2416)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!631, !1041, !2415}
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!2416 = !{!2417, !2418}
!2417 = !DILocalVariable(name: "wand", arg: 1, scope: !2412, file: !1038, line: 1928, type: !1041)
!2418 = !DILocalVariable(name: "compression", arg: 2, scope: !2412, file: !1038, line: 1929, type: !2415)
!2419 = !DILocation(line: 0, scope: !2412)
!2420 = !DILocation(line: 1933, column: 13, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2412, file: !1038, line: 1933, column: 7)
!2422 = !DILocation(line: 1933, column: 19, scope: !2421)
!2423 = !DILocation(line: 1933, column: 7, scope: !2412)
!2424 = !DILocation(line: 1934, column: 66, scope: !2421)
!2425 = !DILocation(line: 1934, column: 12, scope: !2421)
!2426 = !DILocation(line: 1934, column: 5, scope: !2421)
!2427 = !DILocation(line: 1935, column: 9, scope: !2412)
!2428 = !DILocation(line: 1935, column: 32, scope: !2412)
!2429 = !DILocation(line: 1936, column: 3, scope: !2412)
!2430 = distinct !DISubprogram(name: "MagickSetCompressionQuality", scope: !1038, file: !1038, line: 1964, type: !2431, scopeLine: 1966, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!631, !1041, !921}
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "wand", arg: 1, scope: !2430, file: !1038, line: 1964, type: !1041)
!2435 = !DILocalVariable(name: "quality", arg: 2, scope: !2430, file: !1038, line: 1965, type: !921)
!2436 = !DILocation(line: 0, scope: !2430)
!2437 = !DILocation(line: 1969, column: 13, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2430, file: !1038, line: 1969, column: 7)
!2439 = !DILocation(line: 1969, column: 19, scope: !2438)
!2440 = !DILocation(line: 1969, column: 7, scope: !2430)
!2441 = !DILocation(line: 1970, column: 66, scope: !2438)
!2442 = !DILocation(line: 1970, column: 12, scope: !2438)
!2443 = !DILocation(line: 1970, column: 5, scope: !2438)
!2444 = !DILocation(line: 1971, column: 9, scope: !2430)
!2445 = !DILocation(line: 1971, column: 21, scope: !2430)
!2446 = !DILocation(line: 1971, column: 28, scope: !2430)
!2447 = !DILocation(line: 1972, column: 3, scope: !2430)
!2448 = distinct !DISubprogram(name: "MagickSetDepth", scope: !1038, file: !1038, line: 2000, type: !2431, scopeLine: 2002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2449)
!2449 = !{!2450, !2451}
!2450 = !DILocalVariable(name: "wand", arg: 1, scope: !2448, file: !1038, line: 2000, type: !1041)
!2451 = !DILocalVariable(name: "depth", arg: 2, scope: !2448, file: !1038, line: 2001, type: !921)
!2452 = !DILocation(line: 0, scope: !2448)
!2453 = !DILocation(line: 2005, column: 13, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !1038, line: 2005, column: 7)
!2455 = !DILocation(line: 2005, column: 19, scope: !2454)
!2456 = !DILocation(line: 2005, column: 7, scope: !2448)
!2457 = !DILocation(line: 2006, column: 66, scope: !2454)
!2458 = !DILocation(line: 2006, column: 12, scope: !2454)
!2459 = !DILocation(line: 2006, column: 5, scope: !2454)
!2460 = !DILocation(line: 2007, column: 9, scope: !2448)
!2461 = !DILocation(line: 2007, column: 21, scope: !2448)
!2462 = !DILocation(line: 2007, column: 26, scope: !2448)
!2463 = !{!1177, !1077, i64 72}
!2464 = !DILocation(line: 2008, column: 3, scope: !2448)
!2465 = distinct !DISubprogram(name: "MagickSetExtract", scope: !1038, file: !1038, line: 2038, type: !1039, scopeLine: 2040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2466)
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "wand", arg: 1, scope: !2465, file: !1038, line: 2038, type: !1041)
!2468 = !DILocalVariable(name: "geometry", arg: 2, scope: !2465, file: !1038, line: 2039, type: !748)
!2469 = !DILocation(line: 0, scope: !2465)
!2470 = !DILocation(line: 2043, column: 13, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2465, file: !1038, line: 2043, column: 7)
!2472 = !DILocation(line: 2043, column: 19, scope: !2471)
!2473 = !DILocation(line: 2043, column: 7, scope: !2465)
!2474 = !DILocation(line: 2044, column: 66, scope: !2471)
!2475 = !DILocation(line: 2044, column: 12, scope: !2471)
!2476 = !DILocation(line: 2044, column: 5, scope: !2471)
!2477 = !DILocation(line: 2045, column: 16, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2465, file: !1038, line: 2045, column: 7)
!2479 = !DILocation(line: 2045, column: 7, scope: !2465)
!2480 = !DILocation(line: 2046, column: 35, scope: !2478)
!2481 = !DILocation(line: 2046, column: 47, scope: !2478)
!2482 = !{!1177, !1080, i64 32}
!2483 = !DILocation(line: 2046, column: 12, scope: !2478)
!2484 = !DILocation(line: 2046, column: 5, scope: !2478)
!2485 = !DILocation(line: 2047, column: 3, scope: !2465)
!2486 = !DISubprogram(name: "CopyMagickString", scope: !842, file: !842, line: 78, type: !2487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!626, !674, !748, !921}
!2489 = distinct !DISubprogram(name: "MagickSetFilename", scope: !1038, file: !1038, line: 2075, type: !1039, scopeLine: 2077, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2490)
!2490 = !{!2491, !2492}
!2491 = !DILocalVariable(name: "wand", arg: 1, scope: !2489, file: !1038, line: 2075, type: !1041)
!2492 = !DILocalVariable(name: "filename", arg: 2, scope: !2489, file: !1038, line: 2076, type: !748)
!2493 = !DILocation(line: 0, scope: !2489)
!2494 = !DILocation(line: 2080, column: 13, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2489, file: !1038, line: 2080, column: 7)
!2496 = !DILocation(line: 2080, column: 19, scope: !2495)
!2497 = !DILocation(line: 2080, column: 7, scope: !2489)
!2498 = !DILocation(line: 2081, column: 66, scope: !2495)
!2499 = !DILocation(line: 2081, column: 12, scope: !2495)
!2500 = !DILocation(line: 2081, column: 5, scope: !2495)
!2501 = !DILocation(line: 2082, column: 16, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2489, file: !1038, line: 2082, column: 7)
!2503 = !DILocation(line: 2082, column: 7, scope: !2489)
!2504 = !DILocation(line: 2083, column: 35, scope: !2502)
!2505 = !DILocation(line: 2083, column: 47, scope: !2502)
!2506 = !DILocation(line: 2083, column: 12, scope: !2502)
!2507 = !DILocation(line: 2083, column: 5, scope: !2502)
!2508 = !DILocation(line: 2084, column: 3, scope: !2489)
!2509 = distinct !DISubprogram(name: "MagickSetFont", scope: !1038, file: !1038, line: 2111, type: !1039, scopeLine: 2112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2510)
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "wand", arg: 1, scope: !2509, file: !1038, line: 2111, type: !1041)
!2512 = !DILocalVariable(name: "font", arg: 2, scope: !2509, file: !1038, line: 2111, type: !748)
!2513 = !DILocation(line: 0, scope: !2509)
!2514 = !DILocation(line: 2113, column: 13, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2509, file: !1038, line: 2113, column: 7)
!2516 = !DILocation(line: 2113, column: 37, scope: !2515)
!2517 = !DILocation(line: 2113, column: 41, scope: !2515)
!2518 = !DILocation(line: 2113, column: 47, scope: !2515)
!2519 = !DILocation(line: 2113, column: 7, scope: !2509)
!2520 = !DILocation(line: 2117, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2509, file: !1038, line: 2117, column: 7)
!2522 = !DILocation(line: 2117, column: 19, scope: !2521)
!2523 = !DILocation(line: 2117, column: 7, scope: !2509)
!2524 = !DILocation(line: 2118, column: 66, scope: !2521)
!2525 = !DILocation(line: 2118, column: 12, scope: !2521)
!2526 = !DILocation(line: 2118, column: 5, scope: !2521)
!2527 = !DILocation(line: 2119, column: 29, scope: !2509)
!2528 = !DILocation(line: 2119, column: 41, scope: !2509)
!2529 = !DILocation(line: 2119, column: 10, scope: !2509)
!2530 = !DILocation(line: 2120, column: 3, scope: !2509)
!2531 = !DILocation(line: 2121, column: 1, scope: !2509)
!2532 = !DISubprogram(name: "CloneString", scope: !842, file: !842, line: 44, type: !2533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!674, !835, !748}
!2535 = distinct !DISubprogram(name: "MagickSetFormat", scope: !1038, file: !1038, line: 2147, type: !1039, scopeLine: 2149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DILocalVariable(name: "wand", arg: 1, scope: !2535, file: !1038, line: 2147, type: !1041)
!2538 = !DILocalVariable(name: "format", arg: 2, scope: !2535, file: !1038, line: 2148, type: !748)
!2539 = !DILocalVariable(name: "magick_info", scope: !2535, file: !1038, line: 2151, type: !850)
!2540 = !DILocation(line: 0, scope: !2535)
!2541 = !DILocation(line: 2155, column: 13, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2535, file: !1038, line: 2155, column: 7)
!2543 = !DILocation(line: 2155, column: 19, scope: !2542)
!2544 = !DILocation(line: 2155, column: 7, scope: !2535)
!2545 = !DILocation(line: 2156, column: 66, scope: !2542)
!2546 = !DILocation(line: 2156, column: 12, scope: !2542)
!2547 = !DILocation(line: 2156, column: 5, scope: !2542)
!2548 = !DILocation(line: 2157, column: 15, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2535, file: !1038, line: 2157, column: 7)
!2550 = !DILocation(line: 2157, column: 33, scope: !2549)
!2551 = !DILocation(line: 2157, column: 37, scope: !2549)
!2552 = !DILocation(line: 2157, column: 45, scope: !2549)
!2553 = !DILocation(line: 2157, column: 7, scope: !2535)
!2554 = !DILocation(line: 2159, column: 14, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2549, file: !1038, line: 2158, column: 5)
!2556 = !DILocation(line: 2159, column: 26, scope: !2555)
!2557 = !DILocation(line: 2159, column: 32, scope: !2555)
!2558 = !DILocation(line: 2160, column: 7, scope: !2555)
!2559 = !DILocation(line: 2162, column: 42, scope: !2535)
!2560 = !DILocation(line: 2162, column: 15, scope: !2535)
!2561 = !DILocation(line: 2163, column: 19, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2535, file: !1038, line: 2163, column: 7)
!2563 = !DILocation(line: 2163, column: 7, scope: !2535)
!2564 = !DILocation(line: 2165, column: 30, scope: !2535)
!2565 = !DILocation(line: 2165, column: 3, scope: !2535)
!2566 = !DILocation(line: 2166, column: 33, scope: !2535)
!2567 = !DILocation(line: 2166, column: 45, scope: !2535)
!2568 = !DILocation(line: 2166, column: 10, scope: !2535)
!2569 = !DILocation(line: 2167, column: 3, scope: !2535)
!2570 = !DILocation(line: 2168, column: 1, scope: !2535)
!2571 = !DISubprogram(name: "GetMagickInfo", scope: !608, file: !608, line: 134, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!850, !748, !1000}
!2574 = !DISubprogram(name: "ClearMagickException", scope: !10, file: !10, line: 165, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2575 = distinct !DISubprogram(name: "MagickSetGravity", scope: !1038, file: !1038, line: 2195, type: !2576, scopeLine: 2197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2579)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!631, !1041, !2578}
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!2579 = !{!2580, !2581, !2582}
!2580 = !DILocalVariable(name: "wand", arg: 1, scope: !2575, file: !1038, line: 2195, type: !1041)
!2581 = !DILocalVariable(name: "type", arg: 2, scope: !2575, file: !1038, line: 2196, type: !2578)
!2582 = !DILocalVariable(name: "status", scope: !2575, file: !1038, line: 2199, type: !631)
!2583 = !DILocation(line: 0, scope: !2575)
!2584 = !DILocation(line: 2203, column: 13, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2575, file: !1038, line: 2203, column: 7)
!2586 = !DILocation(line: 2203, column: 19, scope: !2585)
!2587 = !DILocation(line: 2203, column: 7, scope: !2575)
!2588 = !DILocation(line: 2204, column: 66, scope: !2585)
!2589 = !DILocation(line: 2204, column: 12, scope: !2585)
!2590 = !DILocation(line: 2204, column: 5, scope: !2585)
!2591 = !DILocation(line: 2205, column: 31, scope: !2575)
!2592 = !DILocation(line: 2206, column: 26, scope: !2575)
!2593 = !DILocation(line: 2205, column: 52, scope: !2575)
!2594 = !DILocation(line: 2205, column: 10, scope: !2575)
!2595 = !DILocation(line: 2207, column: 3, scope: !2575)
!2596 = !DISubprogram(name: "SetImageOption", scope: !477, file: !477, line: 166, type: !2597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!631, !861, !748, !748}
!2599 = !DISubprogram(name: "CommandOptionToMnemonic", scope: !477, file: !477, line: 157, type: !2600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!748, !1358, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!2603 = distinct !DISubprogram(name: "MagickSetImageArtifact", scope: !1038, file: !1038, line: 2237, type: !2604, scopeLine: 2239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!631, !1041, !748, !748}
!2606 = !{!2607, !2608, !2609, !2610}
!2607 = !DILocalVariable(name: "wand", arg: 1, scope: !2603, file: !1038, line: 2237, type: !1041)
!2608 = !DILocalVariable(name: "artifact", arg: 2, scope: !2603, file: !1038, line: 2238, type: !748)
!2609 = !DILocalVariable(name: "value", arg: 3, scope: !2603, file: !1038, line: 2238, type: !748)
!2610 = !DILocalVariable(name: "status", scope: !2603, file: !1038, line: 2241, type: !631)
!2611 = !DILocation(line: 0, scope: !2603)
!2612 = !DILocation(line: 2245, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2603, file: !1038, line: 2245, column: 7)
!2614 = !DILocation(line: 2245, column: 19, scope: !2613)
!2615 = !DILocation(line: 2245, column: 7, scope: !2603)
!2616 = !DILocation(line: 2246, column: 66, scope: !2613)
!2617 = !DILocation(line: 2246, column: 12, scope: !2613)
!2618 = !DILocation(line: 2246, column: 5, scope: !2613)
!2619 = !DILocation(line: 2247, column: 13, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2603, file: !1038, line: 2247, column: 7)
!2621 = !DILocation(line: 2247, column: 20, scope: !2620)
!2622 = !DILocation(line: 2247, column: 7, scope: !2603)
!2623 = !DILocation(line: 2248, column: 5, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !1038, line: 2248, column: 5)
!2625 = !DILocation(line: 2249, column: 10, scope: !2603)
!2626 = !DILocation(line: 2250, column: 14, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2603, file: !1038, line: 2250, column: 7)
!2628 = !DILocation(line: 2250, column: 7, scope: !2603)
!2629 = !DILocation(line: 2251, column: 28, scope: !2627)
!2630 = !DILocation(line: 2251, column: 45, scope: !2627)
!2631 = !DILocation(line: 2251, column: 53, scope: !2627)
!2632 = !DILocation(line: 2251, column: 5, scope: !2627)
!2633 = !DILocation(line: 2253, column: 1, scope: !2603)
!2634 = !DISubprogram(name: "SetImageArtifact", scope: !1111, file: !1111, line: 36, type: !2635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!631, !615, !748, !748}
!2637 = distinct !DISubprogram(name: "MagickSetImageProfile", scope: !1038, file: !1038, line: 2287, type: !2265, scopeLine: 2289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644}
!2639 = !DILocalVariable(name: "wand", arg: 1, scope: !2637, file: !1038, line: 2287, type: !1041)
!2640 = !DILocalVariable(name: "name", arg: 2, scope: !2637, file: !1038, line: 2288, type: !748)
!2641 = !DILocalVariable(name: "profile", arg: 3, scope: !2637, file: !1038, line: 2288, type: !919)
!2642 = !DILocalVariable(name: "length", arg: 4, scope: !2637, file: !1038, line: 2288, type: !921)
!2643 = !DILocalVariable(name: "status", scope: !2637, file: !1038, line: 2291, type: !631)
!2644 = !DILocalVariable(name: "profile_info", scope: !2637, file: !1038, line: 2294, type: !840)
!2645 = !DILocation(line: 0, scope: !2637)
!2646 = !DILocation(line: 2298, column: 13, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2637, file: !1038, line: 2298, column: 7)
!2648 = !DILocation(line: 2298, column: 19, scope: !2647)
!2649 = !DILocation(line: 2298, column: 7, scope: !2637)
!2650 = !DILocation(line: 2299, column: 66, scope: !2647)
!2651 = !DILocation(line: 2299, column: 12, scope: !2647)
!2652 = !DILocation(line: 2299, column: 5, scope: !2647)
!2653 = !DILocation(line: 2300, column: 13, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2637, file: !1038, line: 2300, column: 7)
!2655 = !DILocation(line: 2300, column: 20, scope: !2654)
!2656 = !DILocation(line: 2300, column: 7, scope: !2637)
!2657 = !DILocation(line: 2301, column: 5, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !1038, line: 2301, column: 5)
!2659 = !DILocation(line: 2302, column: 16, scope: !2637)
!2660 = !DILocation(line: 2303, column: 3, scope: !2637)
!2661 = !DILocation(line: 2304, column: 32, scope: !2637)
!2662 = !DILocation(line: 2304, column: 10, scope: !2637)
!2663 = !DILocation(line: 2305, column: 16, scope: !2637)
!2664 = !DILocation(line: 2306, column: 14, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2637, file: !1038, line: 2306, column: 7)
!2666 = !DILocation(line: 2306, column: 7, scope: !2637)
!2667 = !DILocation(line: 2307, column: 28, scope: !2665)
!2668 = !DILocation(line: 2307, column: 45, scope: !2665)
!2669 = !DILocation(line: 2307, column: 53, scope: !2665)
!2670 = !DILocation(line: 2307, column: 5, scope: !2665)
!2671 = !DILocation(line: 2309, column: 1, scope: !2637)
!2672 = !DISubprogram(name: "AcquireStringInfo", scope: !842, file: !842, line: 87, type: !2673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!840, !921}
!2675 = !DISubprogram(name: "SetStringInfoDatum", scope: !842, file: !842, line: 107, type: !2676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !840, !1011}
!2678 = !DISubprogram(name: "SetImageProfile", scope: !252, file: !252, line: 62, type: !2679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!631, !615, !748, !1513}
!2681 = distinct !DISubprogram(name: "MagickSetImageProperty", scope: !1038, file: !1038, line: 2338, type: !2604, scopeLine: 2340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2682)
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DILocalVariable(name: "wand", arg: 1, scope: !2681, file: !1038, line: 2338, type: !1041)
!2684 = !DILocalVariable(name: "property", arg: 2, scope: !2681, file: !1038, line: 2339, type: !748)
!2685 = !DILocalVariable(name: "value", arg: 3, scope: !2681, file: !1038, line: 2339, type: !748)
!2686 = !DILocalVariable(name: "status", scope: !2681, file: !1038, line: 2342, type: !631)
!2687 = !DILocation(line: 0, scope: !2681)
!2688 = !DILocation(line: 2346, column: 13, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2681, file: !1038, line: 2346, column: 7)
!2690 = !DILocation(line: 2346, column: 19, scope: !2689)
!2691 = !DILocation(line: 2346, column: 7, scope: !2681)
!2692 = !DILocation(line: 2347, column: 66, scope: !2689)
!2693 = !DILocation(line: 2347, column: 12, scope: !2689)
!2694 = !DILocation(line: 2347, column: 5, scope: !2689)
!2695 = !DILocation(line: 2348, column: 13, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2681, file: !1038, line: 2348, column: 7)
!2697 = !DILocation(line: 2348, column: 20, scope: !2696)
!2698 = !DILocation(line: 2348, column: 7, scope: !2681)
!2699 = !DILocation(line: 2349, column: 5, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !1038, line: 2349, column: 5)
!2701 = !DILocation(line: 2350, column: 10, scope: !2681)
!2702 = !DILocation(line: 2351, column: 14, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2681, file: !1038, line: 2351, column: 7)
!2704 = !DILocation(line: 2351, column: 7, scope: !2681)
!2705 = !DILocation(line: 2352, column: 28, scope: !2703)
!2706 = !DILocation(line: 2352, column: 45, scope: !2703)
!2707 = !DILocation(line: 2352, column: 53, scope: !2703)
!2708 = !DILocation(line: 2352, column: 5, scope: !2703)
!2709 = !DILocation(line: 2354, column: 1, scope: !2681)
!2710 = !DISubprogram(name: "SetImageProperty", scope: !1139, file: !1139, line: 40, type: !2635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2711 = distinct !DISubprogram(name: "MagickSetInterlaceScheme", scope: !1038, file: !1038, line: 2382, type: !2712, scopeLine: 2384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2715)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!631, !1041, !2714}
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!2715 = !{!2716, !2717}
!2716 = !DILocalVariable(name: "wand", arg: 1, scope: !2711, file: !1038, line: 2382, type: !1041)
!2717 = !DILocalVariable(name: "interlace_scheme", arg: 2, scope: !2711, file: !1038, line: 2383, type: !2714)
!2718 = !DILocation(line: 0, scope: !2711)
!2719 = !DILocation(line: 2387, column: 13, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2711, file: !1038, line: 2387, column: 7)
!2721 = !DILocation(line: 2387, column: 19, scope: !2720)
!2722 = !DILocation(line: 2387, column: 7, scope: !2711)
!2723 = !DILocation(line: 2388, column: 66, scope: !2720)
!2724 = !DILocation(line: 2388, column: 12, scope: !2720)
!2725 = !DILocation(line: 2388, column: 5, scope: !2720)
!2726 = !DILocation(line: 2389, column: 9, scope: !2711)
!2727 = !DILocation(line: 2389, column: 21, scope: !2711)
!2728 = !DILocation(line: 2389, column: 30, scope: !2711)
!2729 = !DILocation(line: 2390, column: 3, scope: !2711)
!2730 = distinct !DISubprogram(name: "MagickSetInterpolateMethod", scope: !1038, file: !1038, line: 2418, type: !2731, scopeLine: 2420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2734)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!631, !1041, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!2734 = !{!2735, !2736, !2737}
!2735 = !DILocalVariable(name: "wand", arg: 1, scope: !2730, file: !1038, line: 2418, type: !1041)
!2736 = !DILocalVariable(name: "method", arg: 2, scope: !2730, file: !1038, line: 2419, type: !2733)
!2737 = !DILocalVariable(name: "status", scope: !2730, file: !1038, line: 2422, type: !631)
!2738 = !DILocation(line: 0, scope: !2730)
!2739 = !DILocation(line: 2426, column: 13, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2730, file: !1038, line: 2426, column: 7)
!2741 = !DILocation(line: 2426, column: 19, scope: !2740)
!2742 = !DILocation(line: 2426, column: 7, scope: !2730)
!2743 = !DILocation(line: 2427, column: 66, scope: !2740)
!2744 = !DILocation(line: 2427, column: 12, scope: !2740)
!2745 = !DILocation(line: 2427, column: 5, scope: !2740)
!2746 = !DILocation(line: 2428, column: 31, scope: !2730)
!2747 = !DILocation(line: 2429, column: 54, scope: !2730)
!2748 = !DILocation(line: 2429, column: 5, scope: !2730)
!2749 = !DILocation(line: 2428, column: 10, scope: !2730)
!2750 = !DILocation(line: 2430, column: 3, scope: !2730)
!2751 = distinct !DISubprogram(name: "MagickSetOption", scope: !1038, file: !1038, line: 2461, type: !2604, scopeLine: 2463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2752)
!2752 = !{!2753, !2754, !2755}
!2753 = !DILocalVariable(name: "wand", arg: 1, scope: !2751, file: !1038, line: 2461, type: !1041)
!2754 = !DILocalVariable(name: "key", arg: 2, scope: !2751, file: !1038, line: 2461, type: !748)
!2755 = !DILocalVariable(name: "value", arg: 3, scope: !2751, file: !1038, line: 2462, type: !748)
!2756 = !DILocation(line: 0, scope: !2751)
!2757 = !DILocation(line: 2466, column: 13, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2751, file: !1038, line: 2466, column: 7)
!2759 = !DILocation(line: 2466, column: 19, scope: !2758)
!2760 = !DILocation(line: 2466, column: 7, scope: !2751)
!2761 = !DILocation(line: 2467, column: 66, scope: !2758)
!2762 = !DILocation(line: 2467, column: 12, scope: !2758)
!2763 = !DILocation(line: 2467, column: 5, scope: !2758)
!2764 = !DILocation(line: 2468, column: 31, scope: !2751)
!2765 = !DILocation(line: 2468, column: 10, scope: !2751)
!2766 = !DILocation(line: 2468, column: 3, scope: !2751)
!2767 = distinct !DISubprogram(name: "MagickSetOrientation", scope: !1038, file: !1038, line: 2496, type: !2768, scopeLine: 2498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2771)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!631, !1041, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!2771 = !{!2772, !2773}
!2772 = !DILocalVariable(name: "wand", arg: 1, scope: !2767, file: !1038, line: 2496, type: !1041)
!2773 = !DILocalVariable(name: "orientation", arg: 2, scope: !2767, file: !1038, line: 2497, type: !2770)
!2774 = !DILocation(line: 0, scope: !2767)
!2775 = !DILocation(line: 2501, column: 13, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2767, file: !1038, line: 2501, column: 7)
!2777 = !DILocation(line: 2501, column: 19, scope: !2776)
!2778 = !DILocation(line: 2501, column: 7, scope: !2767)
!2779 = !DILocation(line: 2502, column: 66, scope: !2776)
!2780 = !DILocation(line: 2502, column: 12, scope: !2776)
!2781 = !DILocation(line: 2502, column: 5, scope: !2776)
!2782 = !DILocation(line: 2503, column: 9, scope: !2767)
!2783 = !DILocation(line: 2503, column: 21, scope: !2767)
!2784 = !DILocation(line: 2503, column: 32, scope: !2767)
!2785 = !DILocation(line: 2504, column: 3, scope: !2767)
!2786 = distinct !DISubprogram(name: "MagickSetPage", scope: !1038, file: !1038, line: 2539, type: !2787, scopeLine: 2542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!631, !1041, !921, !921, !2602, !2602}
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2795}
!2790 = !DILocalVariable(name: "wand", arg: 1, scope: !2786, file: !1038, line: 2539, type: !1041)
!2791 = !DILocalVariable(name: "width", arg: 2, scope: !2786, file: !1038, line: 2540, type: !921)
!2792 = !DILocalVariable(name: "height", arg: 3, scope: !2786, file: !1038, line: 2540, type: !921)
!2793 = !DILocalVariable(name: "x", arg: 4, scope: !2786, file: !1038, line: 2540, type: !2602)
!2794 = !DILocalVariable(name: "y", arg: 5, scope: !2786, file: !1038, line: 2541, type: !2602)
!2795 = !DILocalVariable(name: "geometry", scope: !2786, file: !1038, line: 2544, type: !768)
!2796 = !DILocation(line: 0, scope: !2786)
!2797 = !DILocation(line: 2543, column: 3, scope: !2786)
!2798 = !DILocation(line: 2544, column: 5, scope: !2786)
!2799 = !DILocation(line: 2548, column: 13, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2786, file: !1038, line: 2548, column: 7)
!2801 = !DILocation(line: 2548, column: 19, scope: !2800)
!2802 = !DILocation(line: 2548, column: 7, scope: !2786)
!2803 = !DILocation(line: 2549, column: 66, scope: !2800)
!2804 = !DILocation(line: 2549, column: 12, scope: !2800)
!2805 = !DILocation(line: 2549, column: 5, scope: !2800)
!2806 = !DILocation(line: 2551, column: 5, scope: !2786)
!2807 = !DILocation(line: 2551, column: 20, scope: !2786)
!2808 = !DILocation(line: 2551, column: 36, scope: !2786)
!2809 = !DILocation(line: 2551, column: 47, scope: !2786)
!2810 = !DILocation(line: 2550, column: 10, scope: !2786)
!2811 = !DILocation(line: 2552, column: 29, scope: !2786)
!2812 = !DILocation(line: 2552, column: 41, scope: !2786)
!2813 = !DILocation(line: 2552, column: 10, scope: !2786)
!2814 = !DILocation(line: 2554, column: 1, scope: !2786)
!2815 = !DILocation(line: 2553, column: 3, scope: !2786)
!2816 = !DISubprogram(name: "FormatLocaleString", scope: !2817, file: !2817, line: 71, type: !2818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2817 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!679, !2820, !921, !2160, null}
!2820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !674)
!2821 = distinct !DISubprogram(name: "MagickSetPassphrase", scope: !1038, file: !1038, line: 2581, type: !1039, scopeLine: 2583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2822)
!2822 = !{!2823, !2824}
!2823 = !DILocalVariable(name: "wand", arg: 1, scope: !2821, file: !1038, line: 2581, type: !1041)
!2824 = !DILocalVariable(name: "passphrase", arg: 2, scope: !2821, file: !1038, line: 2582, type: !748)
!2825 = !DILocation(line: 0, scope: !2821)
!2826 = !DILocation(line: 2586, column: 13, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2821, file: !1038, line: 2586, column: 7)
!2828 = !DILocation(line: 2586, column: 19, scope: !2827)
!2829 = !DILocation(line: 2586, column: 7, scope: !2821)
!2830 = !DILocation(line: 2587, column: 66, scope: !2827)
!2831 = !DILocation(line: 2587, column: 12, scope: !2827)
!2832 = !DILocation(line: 2587, column: 5, scope: !2827)
!2833 = !DILocation(line: 2588, column: 29, scope: !2821)
!2834 = !DILocation(line: 2588, column: 41, scope: !2821)
!2835 = !DILocation(line: 2588, column: 10, scope: !2821)
!2836 = !DILocation(line: 2589, column: 3, scope: !2821)
!2837 = distinct !DISubprogram(name: "MagickSetPointsize", scope: !1038, file: !1038, line: 2617, type: !2838, scopeLine: 2619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2841)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!631, !1041, !2840}
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "wand", arg: 1, scope: !2837, file: !1038, line: 2617, type: !1041)
!2843 = !DILocalVariable(name: "pointsize", arg: 2, scope: !2837, file: !1038, line: 2618, type: !2840)
!2844 = !DILocation(line: 0, scope: !2837)
!2845 = !DILocation(line: 2622, column: 13, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2837, file: !1038, line: 2622, column: 7)
!2847 = !DILocation(line: 2622, column: 19, scope: !2846)
!2848 = !DILocation(line: 2622, column: 7, scope: !2837)
!2849 = !DILocation(line: 2623, column: 66, scope: !2846)
!2850 = !DILocation(line: 2623, column: 12, scope: !2846)
!2851 = !DILocation(line: 2623, column: 5, scope: !2846)
!2852 = !DILocation(line: 2624, column: 9, scope: !2837)
!2853 = !DILocation(line: 2624, column: 21, scope: !2837)
!2854 = !DILocation(line: 2624, column: 30, scope: !2837)
!2855 = !DILocation(line: 2625, column: 3, scope: !2837)
!2856 = distinct !DISubprogram(name: "MagickSetProgressMonitor", scope: !1038, file: !1038, line: 2665, type: !2857, scopeLine: 2667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2860)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!743, !1041, !2859, !670}
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!2860 = !{!2861, !2862, !2863, !2864}
!2861 = !DILocalVariable(name: "wand", arg: 1, scope: !2856, file: !1038, line: 2665, type: !1041)
!2862 = !DILocalVariable(name: "progress_monitor", arg: 2, scope: !2856, file: !1038, line: 2666, type: !2859)
!2863 = !DILocalVariable(name: "client_data", arg: 3, scope: !2856, file: !1038, line: 2666, type: !670)
!2864 = !DILocalVariable(name: "previous_monitor", scope: !2856, file: !1038, line: 2669, type: !743)
!2865 = !DILocation(line: 0, scope: !2856)
!2866 = !DILocation(line: 2673, column: 13, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2856, file: !1038, line: 2673, column: 7)
!2868 = !DILocation(line: 2673, column: 19, scope: !2867)
!2869 = !DILocation(line: 2673, column: 7, scope: !2856)
!2870 = !DILocation(line: 2674, column: 66, scope: !2867)
!2871 = !DILocation(line: 2674, column: 12, scope: !2867)
!2872 = !DILocation(line: 2674, column: 5, scope: !2867)
!2873 = !DILocation(line: 2675, column: 54, scope: !2856)
!2874 = !DILocation(line: 2675, column: 20, scope: !2856)
!2875 = !DILocation(line: 2677, column: 3, scope: !2856)
!2876 = !DISubprogram(name: "SetImageInfoProgressMonitor", scope: !744, file: !744, line: 31, type: !2877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!743, !861, !2859, !670}
!2879 = distinct !DISubprogram(name: "MagickSetResourceLimit", scope: !1038, file: !1038, line: 2707, type: !2880, scopeLine: 2709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!631, !2071, !753}
!2882 = !{!2883, !2884}
!2883 = !DILocalVariable(name: "type", arg: 1, scope: !2879, file: !1038, line: 2707, type: !2071)
!2884 = !DILocalVariable(name: "limit", arg: 2, scope: !2879, file: !1038, line: 2708, type: !753)
!2885 = !DILocation(line: 0, scope: !2879)
!2886 = !DILocation(line: 2710, column: 10, scope: !2879)
!2887 = !DILocation(line: 2710, column: 3, scope: !2879)
!2888 = !DISubprogram(name: "SetMagickResourceLimit", scope: !581, file: !581, line: 49, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2889 = distinct !DISubprogram(name: "MagickSetResolution", scope: !1038, file: !1038, line: 2740, type: !2890, scopeLine: 2742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!631, !1041, !2840, !2840}
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DILocalVariable(name: "wand", arg: 1, scope: !2889, file: !1038, line: 2740, type: !1041)
!2894 = !DILocalVariable(name: "x_resolution", arg: 2, scope: !2889, file: !1038, line: 2741, type: !2840)
!2895 = !DILocalVariable(name: "y_resolution", arg: 3, scope: !2889, file: !1038, line: 2741, type: !2840)
!2896 = !DILocalVariable(name: "density", scope: !2889, file: !1038, line: 2744, type: !768)
!2897 = !DILocation(line: 0, scope: !2889)
!2898 = !DILocation(line: 2743, column: 3, scope: !2889)
!2899 = !DILocation(line: 2744, column: 5, scope: !2889)
!2900 = !DILocation(line: 2748, column: 13, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2889, file: !1038, line: 2748, column: 7)
!2902 = !DILocation(line: 2748, column: 19, scope: !2901)
!2903 = !DILocation(line: 2748, column: 7, scope: !2889)
!2904 = !DILocation(line: 2749, column: 66, scope: !2901)
!2905 = !DILocation(line: 2749, column: 12, scope: !2901)
!2906 = !DILocation(line: 2749, column: 5, scope: !2901)
!2907 = !DILocation(line: 2750, column: 10, scope: !2889)
!2908 = !DILocation(line: 2752, column: 29, scope: !2889)
!2909 = !DILocation(line: 2752, column: 41, scope: !2889)
!2910 = !DILocation(line: 2752, column: 10, scope: !2889)
!2911 = !DILocation(line: 2754, column: 1, scope: !2889)
!2912 = !DILocation(line: 2753, column: 3, scope: !2889)
!2913 = distinct !DISubprogram(name: "MagickSetSamplingFactors", scope: !1038, file: !1038, line: 2784, type: !2914, scopeLine: 2786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2917)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!631, !1041, !921, !2916}
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2917 = !{!2918, !2919, !2920, !2921, !2922}
!2918 = !DILocalVariable(name: "wand", arg: 1, scope: !2913, file: !1038, line: 2784, type: !1041)
!2919 = !DILocalVariable(name: "number_factors", arg: 2, scope: !2913, file: !1038, line: 2785, type: !921)
!2920 = !DILocalVariable(name: "sampling_factors", arg: 3, scope: !2913, file: !1038, line: 2785, type: !2916)
!2921 = !DILocalVariable(name: "sampling_factor", scope: !2913, file: !1038, line: 2788, type: !768)
!2922 = !DILocalVariable(name: "i", scope: !2913, file: !1038, line: 2791, type: !679)
!2923 = !DILocation(line: 0, scope: !2913)
!2924 = !DILocation(line: 2787, column: 3, scope: !2913)
!2925 = !DILocation(line: 2788, column: 5, scope: !2913)
!2926 = !DILocation(line: 2795, column: 13, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2913, file: !1038, line: 2795, column: 7)
!2928 = !DILocation(line: 2795, column: 19, scope: !2927)
!2929 = !DILocation(line: 2795, column: 7, scope: !2913)
!2930 = !DILocation(line: 2796, column: 66, scope: !2927)
!2931 = !DILocation(line: 2796, column: 12, scope: !2927)
!2932 = !DILocation(line: 2796, column: 5, scope: !2927)
!2933 = !DILocation(line: 2797, column: 13, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2913, file: !1038, line: 2797, column: 7)
!2935 = !DILocation(line: 2797, column: 25, scope: !2934)
!2936 = !DILocation(line: 2797, column: 41, scope: !2934)
!2937 = !DILocation(line: 2797, column: 7, scope: !2913)
!2938 = !DILocation(line: 2799, column: 7, scope: !2934)
!2939 = !DILocation(line: 2798, column: 11, scope: !2934)
!2940 = !DILocation(line: 2798, column: 23, scope: !2934)
!2941 = !DILocation(line: 2798, column: 38, scope: !2934)
!2942 = !DILocation(line: 2798, column: 5, scope: !2934)
!2943 = !DILocation(line: 2800, column: 22, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2913, file: !1038, line: 2800, column: 7)
!2945 = !DILocation(line: 2800, column: 7, scope: !2913)
!2946 = !DILocation(line: 2802, column: 15, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !1038, line: 2802, column: 3)
!2948 = distinct !DILexicalBlock(scope: !2913, file: !1038, line: 2802, column: 3)
!2949 = !DILocation(line: 2802, column: 3, scope: !2948)
!2950 = !DILocation(line: 2805, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2947, file: !1038, line: 2803, column: 3)
!2952 = !DILocation(line: 2804, column: 12, scope: !2951)
!2953 = !DILocation(line: 2806, column: 37, scope: !2951)
!2954 = !DILocation(line: 2806, column: 49, scope: !2951)
!2955 = !DILocation(line: 2806, column: 12, scope: !2951)
!2956 = !DILocation(line: 2802, column: 48, scope: !2947)
!2957 = distinct !{!2957, !2949, !2958, !1479, !1480}
!2958 = !DILocation(line: 2808, column: 3, scope: !2948)
!2959 = !DILocation(line: 0, scope: !2948)
!2960 = !DILocation(line: 2810, column: 5, scope: !2913)
!2961 = !DILocation(line: 2809, column: 10, scope: !2913)
!2962 = !DILocation(line: 2811, column: 35, scope: !2913)
!2963 = !DILocation(line: 2811, column: 47, scope: !2913)
!2964 = !DILocation(line: 2811, column: 10, scope: !2913)
!2965 = !DILocation(line: 2812, column: 3, scope: !2913)
!2966 = !DILocation(line: 2813, column: 1, scope: !2913)
!2967 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1489, file: !1489, line: 51, type: !2968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!670, !670}
!2970 = !DISubprogram(name: "ConcatenateString", scope: !842, file: !842, line: 70, type: !2971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!631, !835, !748}
!2973 = distinct !DISubprogram(name: "MagickSetSize", scope: !1038, file: !1038, line: 2843, type: !2974, scopeLine: 2845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!631, !1041, !921, !921}
!2976 = !{!2977, !2978, !2979, !2980}
!2977 = !DILocalVariable(name: "wand", arg: 1, scope: !2973, file: !1038, line: 2843, type: !1041)
!2978 = !DILocalVariable(name: "columns", arg: 2, scope: !2973, file: !1038, line: 2844, type: !921)
!2979 = !DILocalVariable(name: "rows", arg: 3, scope: !2973, file: !1038, line: 2844, type: !921)
!2980 = !DILocalVariable(name: "geometry", scope: !2973, file: !1038, line: 2847, type: !768)
!2981 = !DILocation(line: 0, scope: !2973)
!2982 = !DILocation(line: 2846, column: 3, scope: !2973)
!2983 = !DILocation(line: 2847, column: 5, scope: !2973)
!2984 = !DILocation(line: 2851, column: 13, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2973, file: !1038, line: 2851, column: 7)
!2986 = !DILocation(line: 2851, column: 19, scope: !2985)
!2987 = !DILocation(line: 2851, column: 7, scope: !2973)
!2988 = !DILocation(line: 2852, column: 66, scope: !2985)
!2989 = !DILocation(line: 2852, column: 12, scope: !2985)
!2990 = !DILocation(line: 2852, column: 5, scope: !2985)
!2991 = !DILocation(line: 2853, column: 66, scope: !2973)
!2992 = !DILocation(line: 2854, column: 13, scope: !2973)
!2993 = !DILocation(line: 2853, column: 10, scope: !2973)
!2994 = !DILocation(line: 2855, column: 29, scope: !2973)
!2995 = !DILocation(line: 2855, column: 41, scope: !2973)
!2996 = !DILocation(line: 2855, column: 10, scope: !2973)
!2997 = !DILocation(line: 2857, column: 1, scope: !2973)
!2998 = !DILocation(line: 2856, column: 3, scope: !2973)
!2999 = distinct !DISubprogram(name: "MagickSetSizeOffset", scope: !1038, file: !1038, line: 2890, type: !3000, scopeLine: 2892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!631, !1041, !921, !921, !2602}
!3002 = !{!3003, !3004, !3005, !3006, !3007}
!3003 = !DILocalVariable(name: "wand", arg: 1, scope: !2999, file: !1038, line: 2890, type: !1041)
!3004 = !DILocalVariable(name: "columns", arg: 2, scope: !2999, file: !1038, line: 2891, type: !921)
!3005 = !DILocalVariable(name: "rows", arg: 3, scope: !2999, file: !1038, line: 2891, type: !921)
!3006 = !DILocalVariable(name: "offset", arg: 4, scope: !2999, file: !1038, line: 2891, type: !2602)
!3007 = !DILocalVariable(name: "geometry", scope: !2999, file: !1038, line: 2894, type: !768)
!3008 = !DILocation(line: 0, scope: !2999)
!3009 = !DILocation(line: 2893, column: 3, scope: !2999)
!3010 = !DILocation(line: 2894, column: 5, scope: !2999)
!3011 = !DILocation(line: 2898, column: 13, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2999, file: !1038, line: 2898, column: 7)
!3013 = !DILocation(line: 2898, column: 19, scope: !3012)
!3014 = !DILocation(line: 2898, column: 7, scope: !2999)
!3015 = !DILocation(line: 2899, column: 66, scope: !3012)
!3016 = !DILocation(line: 2899, column: 12, scope: !3012)
!3017 = !DILocation(line: 2899, column: 5, scope: !3012)
!3018 = !DILocation(line: 2901, column: 5, scope: !2999)
!3019 = !DILocation(line: 2901, column: 22, scope: !2999)
!3020 = !DILocation(line: 2901, column: 36, scope: !2999)
!3021 = !DILocation(line: 2900, column: 10, scope: !2999)
!3022 = !DILocation(line: 2902, column: 29, scope: !2999)
!3023 = !DILocation(line: 2902, column: 41, scope: !2999)
!3024 = !DILocation(line: 2902, column: 10, scope: !2999)
!3025 = !DILocation(line: 2904, column: 1, scope: !2999)
!3026 = !DILocation(line: 2903, column: 3, scope: !2999)
!3027 = distinct !DISubprogram(name: "MagickSetType", scope: !1038, file: !1038, line: 2934, type: !3028, scopeLine: 2936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3031)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!631, !1041, !3030}
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!3031 = !{!3032, !3033}
!3032 = !DILocalVariable(name: "wand", arg: 1, scope: !3027, file: !1038, line: 2934, type: !1041)
!3033 = !DILocalVariable(name: "image_type", arg: 2, scope: !3027, file: !1038, line: 2935, type: !3030)
!3034 = !DILocation(line: 0, scope: !3027)
!3035 = !DILocation(line: 2939, column: 13, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3027, file: !1038, line: 2939, column: 7)
!3037 = !DILocation(line: 2939, column: 19, scope: !3036)
!3038 = !DILocation(line: 2939, column: 7, scope: !3027)
!3039 = !DILocation(line: 2940, column: 66, scope: !3036)
!3040 = !DILocation(line: 2940, column: 12, scope: !3036)
!3041 = !DILocation(line: 2940, column: 5, scope: !3036)
!3042 = !DILocation(line: 2941, column: 9, scope: !3027)
!3043 = !DILocation(line: 2941, column: 21, scope: !3027)
!3044 = !DILocation(line: 2941, column: 25, scope: !3027)
!3045 = !DILocation(line: 2942, column: 3, scope: !3027)
!3046 = !DISubprogram(name: "InterpretLocaleValue", scope: !2817, file: !2817, line: 56, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1105)
