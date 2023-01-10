; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/stream.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._StreamInfo = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct._RectangleInfo, i64, ptr, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._CacheMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._CacheInfo = type { i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, i32, %struct._MagickPixelPacket, i64, ptr, ptr, ptr, i32, i32, [4096 x i8], [4096 x i8], %struct._CacheMethods, ptr, i64, ptr, i32, i32, i32, i64, ptr, ptr, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._QuantumInfo = type { i64, i64, i32, double, double, double, i64, i32, i32, i32, i64, ptr, i64, i32, %struct._QuantumState, ptr, i64 }
%struct._QuantumState = type { double, i32, i64, ptr }

@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/stream.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ImageDoesNotContainTheStreamGeometry\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"NoStreamHandlerIsDefined\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"UnrecognizedPixelMap\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"BGR\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"BGRA\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"BGRP\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RGBP\00", align 1
@switch.table.WriteStreamImage = private unnamed_addr constant [6 x i64] [i64 8, i64 4, i64 4, i64 8, i64 2, i64 2], align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireStreamInfo(ptr noundef %image_info) local_unnamed_addr #0 !dbg !1110 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception12 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1114, metadata !DIExpression()), !dbg !1124
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 120) #14, !dbg !1125
  call void @llvm.dbg.value(metadata ptr %call, metadata !1115, metadata !DIExpression()), !dbg !1124
  %cmp = icmp eq ptr %call, null, !dbg !1126
  br i1 %cmp, label %if.then, label %if.end, !dbg !1127

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #15, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1119, metadata !DIExpression()), !dbg !1128
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #15, !dbg !1128
  %call1 = tail call ptr @__errno_location() #16, !dbg !1128
  %0 = load i32, ptr %call1, align 4, !dbg !1128, !tbaa !1129
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #15, !dbg !1128
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1116, metadata !DIExpression()), !dbg !1133
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 158, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #15, !dbg !1128
  %call4 = call ptr @DestroyString(ptr noundef %call2) #15, !dbg !1128
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1116, metadata !DIExpression()), !dbg !1133
  call void @CatchException(ptr noundef nonnull %exception) #15, !dbg !1128
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #15, !dbg !1128
  call void @MagickCoreTerminus() #15, !dbg !1128
  call void @_exit(i32 noundef 1) #17, !dbg !1128
  unreachable, !dbg !1128

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 120) #15, !dbg !1134
  %call7 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 1) #18, !dbg !1135
  %pixels = getelementptr inbounds %struct._StreamInfo, ptr %call, i64 0, i32 6, !dbg !1136
  store ptr %call7, ptr %pixels, align 8, !dbg !1137, !tbaa !1138
  %cmp9 = icmp eq ptr %call7, null, !dbg !1143
  br i1 %cmp9, label %if.then10, label %if.end18, !dbg !1144

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception12) #15, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %exception12, metadata !1123, metadata !DIExpression()), !dbg !1145
  call void @GetExceptionInfo(ptr noundef nonnull %exception12) #15, !dbg !1145
  %call13 = tail call ptr @__errno_location() #16, !dbg !1145
  %1 = load i32, ptr %call13, align 4, !dbg !1145, !tbaa !1129
  %call14 = call ptr @GetExceptionMessage(i32 noundef %1) #15, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1120, metadata !DIExpression()), !dbg !1146
  %call15 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call14) #15, !dbg !1145
  %call16 = call ptr @DestroyString(ptr noundef %call14) #15, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1120, metadata !DIExpression()), !dbg !1146
  call void @CatchException(ptr noundef nonnull %exception12) #15, !dbg !1145
  %call17 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception12) #15, !dbg !1145
  call void @MagickCoreTerminus() #15, !dbg !1145
  call void @_exit(i32 noundef 1) #17, !dbg !1145
  unreachable, !dbg !1145

if.end18:                                         ; preds = %if.end
  %call19 = tail call ptr @ConstantString(ptr noundef nonnull @.str.4) #15, !dbg !1147
  %map = getelementptr inbounds %struct._StreamInfo, ptr %call, i64 0, i32 4, !dbg !1148
  store ptr %call19, ptr %map, align 8, !dbg !1149, !tbaa !1150
  %storage_type = getelementptr inbounds %struct._StreamInfo, ptr %call, i64 0, i32 5, !dbg !1151
  store i32 1, ptr %storage_type, align 8, !dbg !1152, !tbaa !1153
  %call20 = tail call ptr @AcquireImage(ptr noundef %image_info) #15, !dbg !1154
  %stream = getelementptr inbounds %struct._StreamInfo, ptr %call, i64 0, i32 2, !dbg !1155
  store ptr %call20, ptr %stream, align 8, !dbg !1156, !tbaa !1157
  %signature = getelementptr inbounds %struct._StreamInfo, ptr %call, i64 0, i32 11, !dbg !1158
  store i64 2880220587, ptr %signature, align 8, !dbg !1159, !tbaa !1160
  ret ptr %call, !dbg !1161
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare !dbg !1162 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !1167 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1170 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !1174 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1178 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !1182 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !1183 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1186 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !1190 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare !dbg !1193 ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !1196 ptr @ConstantString(ptr noundef) local_unnamed_addr #4

declare !dbg !1199 ptr @AcquireImage(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyStreamInfo(ptr noundef %stream_info) local_unnamed_addr #0 !dbg !1202 {
entry:
  call void @llvm.dbg.value(metadata ptr %stream_info, metadata !1206, metadata !DIExpression()), !dbg !1207
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 265, ptr noundef nonnull @.str.5) #15, !dbg !1208
  %map = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 4, !dbg !1209
  %0 = load ptr, ptr %map, align 8, !dbg !1209, !tbaa !1150
  %cmp.not = icmp eq ptr %0, null, !dbg !1211
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1212

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @DestroyString(ptr noundef nonnull %0) #15, !dbg !1213
  store ptr %call2, ptr %map, align 8, !dbg !1214, !tbaa !1150
  br label %if.end, !dbg !1215

if.end:                                           ; preds = %if.then, %entry
  %pixels = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 6, !dbg !1216
  %1 = load ptr, ptr %pixels, align 8, !dbg !1216, !tbaa !1138
  %cmp4.not = icmp eq ptr %1, null, !dbg !1218
  br i1 %cmp4.not, label %if.end9, label %if.then5, !dbg !1219

if.then5:                                         ; preds = %if.end
  %call7 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %1) #15, !dbg !1220
  store ptr %call7, ptr %pixels, align 8, !dbg !1221, !tbaa !1138
  br label %if.end9, !dbg !1222

if.end9:                                          ; preds = %if.then5, %if.end
  %stream = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 2, !dbg !1223
  %2 = load ptr, ptr %stream, align 8, !dbg !1223, !tbaa !1157
  %cmp10.not = icmp eq ptr %2, null, !dbg !1225
  br i1 %cmp10.not, label %if.end17, label %if.then11, !dbg !1226

if.then11:                                        ; preds = %if.end9
  %call13 = tail call i32 @CloseBlob(ptr noundef nonnull %2) #15, !dbg !1227
  %3 = load ptr, ptr %stream, align 8, !dbg !1229, !tbaa !1157
  %call15 = tail call ptr @DestroyImage(ptr noundef %3) #15, !dbg !1230
  store ptr %call15, ptr %stream, align 8, !dbg !1231, !tbaa !1157
  br label %if.end17, !dbg !1232

if.end17:                                         ; preds = %if.then11, %if.end9
  %quantum_info = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 3, !dbg !1233
  %4 = load ptr, ptr %quantum_info, align 8, !dbg !1233, !tbaa !1235
  %cmp18.not = icmp eq ptr %4, null, !dbg !1236
  br i1 %cmp18.not, label %if.end23, label %if.then19, !dbg !1237

if.then19:                                        ; preds = %if.end17
  %call21 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %4) #15, !dbg !1238
  store ptr %call21, ptr %quantum_info, align 8, !dbg !1239, !tbaa !1235
  br label %if.end23, !dbg !1240

if.end23:                                         ; preds = %if.then19, %if.end17
  %signature = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 11, !dbg !1241
  store i64 -2880220588, ptr %signature, align 8, !dbg !1242, !tbaa !1160
  %call24 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %stream_info) #15, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %call24, metadata !1206, metadata !DIExpression()), !dbg !1207
  ret ptr %call24, !dbg !1244
}

declare !dbg !1245 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1250 ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #4

declare !dbg !1253 i32 @CloseBlob(ptr noundef) local_unnamed_addr #4

declare !dbg !1256 ptr @DestroyImage(ptr noundef) local_unnamed_addr #4

declare !dbg !1259 ptr @DestroyQuantumInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1262 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetStreamInfoClientData(ptr nocapture noundef readonly %stream_info) local_unnamed_addr #8 !dbg !1263 {
entry:
  call void @llvm.dbg.value(metadata ptr %stream_info, metadata !1267, metadata !DIExpression()), !dbg !1268
  %client_data = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 10, !dbg !1269
  %0 = load ptr, ptr %client_data, align 8, !dbg !1269, !tbaa !1270
  ret ptr %0, !dbg !1271
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OpenStream(ptr noundef %image_info, ptr nocapture noundef readonly %stream_info, ptr noundef %filename, ptr noundef %exception) local_unnamed_addr #0 !dbg !1272 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1276, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %stream_info, metadata !1277, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1278, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1279, metadata !DIExpression()), !dbg !1281
  %stream = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 2, !dbg !1282
  %0 = load ptr, ptr %stream, align 8, !dbg !1282, !tbaa !1157
  %filename1 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1283
  %call = tail call i64 @CopyMagickString(ptr noundef nonnull %filename1, ptr noundef %filename, i64 noundef 4096) #15, !dbg !1284
  %1 = load ptr, ptr %stream, align 8, !dbg !1285, !tbaa !1157
  %call3 = tail call i32 @OpenBlob(ptr noundef %image_info, ptr noundef %1, i32 noundef 4, ptr noundef %exception) #15, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1280, metadata !DIExpression()), !dbg !1281
  ret i32 %call3, !dbg !1287
}

declare !dbg !1288 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1291 i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @ReadStream(ptr noundef %image_info, ptr noundef %stream, ptr noundef %exception) local_unnamed_addr #0 !dbg !1296 {
entry:
  %cache_methods = alloca %struct._CacheMethods, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1300, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata ptr %stream, metadata !1301, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1302, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cache_methods) #15, !dbg !1308
  call void @llvm.dbg.declare(metadata ptr %cache_methods, metadata !1303, metadata !DIExpression()), !dbg !1309
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1310
  %0 = load i32, ptr %debug, align 8, !dbg !1310, !tbaa !1312
  %cmp.not = icmp eq i32 %0, 0, !dbg !1317
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1318

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1319
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 952, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1320
  br label %if.end, !dbg !1321

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #15, !dbg !1322
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1305, metadata !DIExpression()), !dbg !1307
  %call2 = tail call ptr @AcquirePixelCache(i64 noundef 0) #15, !dbg !1323
  %cache = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 43, !dbg !1324
  store ptr %call2, ptr %cache, align 8, !dbg !1325, !tbaa !1326
  call void @GetPixelCacheMethods(ptr noundef nonnull %cache_methods) #15, !dbg !1327
  store ptr @GetVirtualPixelStream, ptr %cache_methods, align 8, !dbg !1328, !tbaa !1329
  %get_virtual_indexes_from_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 2, !dbg !1331
  store ptr @GetVirtualIndexesFromStream, ptr %get_virtual_indexes_from_handler, align 8, !dbg !1332, !tbaa !1333
  %get_virtual_pixels_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 1, !dbg !1334
  store ptr @GetVirtualPixelsStream, ptr %get_virtual_pixels_handler, align 8, !dbg !1335, !tbaa !1336
  %get_authentic_pixels_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 4, !dbg !1337
  store ptr @GetAuthenticPixelsStream, ptr %get_authentic_pixels_handler, align 8, !dbg !1338, !tbaa !1339
  %queue_authentic_pixels_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 8, !dbg !1340
  store ptr @QueueAuthenticPixelsStream, ptr %queue_authentic_pixels_handler, align 8, !dbg !1341, !tbaa !1342
  %sync_authentic_pixels_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 9, !dbg !1343
  store ptr @SyncAuthenticPixelsStream, ptr %sync_authentic_pixels_handler, align 8, !dbg !1344, !tbaa !1345
  %get_authentic_pixels_from_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 7, !dbg !1346
  store ptr @GetAuthenticPixelsFromStream, ptr %get_authentic_pixels_from_handler, align 8, !dbg !1347, !tbaa !1348
  %get_authentic_indexes_from_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 5, !dbg !1349
  store ptr @GetAuthenticIndexesFromStream, ptr %get_authentic_indexes_from_handler, align 8, !dbg !1350, !tbaa !1351
  %get_one_virtual_pixel_from_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 3, !dbg !1352
  store ptr @GetOneVirtualPixelFromStream, ptr %get_one_virtual_pixel_from_handler, align 8, !dbg !1353, !tbaa !1354
  %get_one_authentic_pixel_from_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 6, !dbg !1355
  store ptr @GetOneAuthenticPixelFromStream, ptr %get_one_authentic_pixel_from_handler, align 8, !dbg !1356, !tbaa !1357
  %destroy_pixel_handler = getelementptr inbounds %struct._CacheMethods, ptr %cache_methods, i64 0, i32 10, !dbg !1358
  store ptr @DestroyPixelStream, ptr %destroy_pixel_handler, align 8, !dbg !1359, !tbaa !1360
  %1 = load ptr, ptr %cache, align 8, !dbg !1361, !tbaa !1326
  call void @SetPixelCacheMethods(ptr noundef %1, ptr noundef nonnull %cache_methods) #15, !dbg !1362
  %stream4 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 44, !dbg !1363
  store ptr %stream, ptr %stream4, align 8, !dbg !1364, !tbaa !1365
  %call5 = call ptr @ReadImage(ptr noundef %call1, ptr noundef %exception) #15, !dbg !1366
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1304, metadata !DIExpression()), !dbg !1307
  %call6 = call ptr @DestroyImageInfo(ptr noundef %call1) #15, !dbg !1367
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1305, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cache_methods) #15, !dbg !1368
  ret ptr %call5, !dbg !1369
}

declare !dbg !1370 ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1373 ptr @AcquirePixelCache(i64 noundef) local_unnamed_addr #4

declare !dbg !1377 void @GetPixelCacheMethods(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @GetVirtualPixelStream(ptr noundef %image, i32 noundef %virtual_pixel_method, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) #0 !dbg !1381 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1383, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i32 %virtual_pixel_method, metadata !1384, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %x, metadata !1385, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %y, metadata !1386, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %columns, metadata !1387, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %rows, metadata !1388, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1389, metadata !DIExpression()), !dbg !1394
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1395
  %0 = load i32, ptr %debug, align 8, !dbg !1395, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !1407
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1408

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1409
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 694, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1410
  br label %if.end, !dbg !1411

if.end:                                           ; preds = %if.then, %entry
  %1 = or i64 %y, %x, !dbg !1412
  %.not = icmp sgt i64 %1, -1, !dbg !1412
  br i1 %.not, label %lor.lhs.false3, label %if.then14, !dbg !1412

lor.lhs.false3:                                   ; preds = %if.end
  %add = add nsw i64 %columns, %x, !dbg !1414
  %columns4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1415
  %2 = load i64, ptr %columns4, align 8, !dbg !1415, !tbaa !1416
  %cmp5 = icmp sgt i64 %add, %2, !dbg !1417
  br i1 %cmp5, label %if.then14, label %lor.lhs.false6, !dbg !1418

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %add7 = add nsw i64 %rows, %y, !dbg !1419
  %rows8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1420
  %3 = load i64, ptr %rows8, align 8, !dbg !1420, !tbaa !1421
  %cmp9 = icmp sgt i64 %add7, %3, !dbg !1422
  %cmp11 = icmp eq i64 %columns, 0
  %or.cond57 = or i1 %cmp11, %cmp9, !dbg !1423
  %cmp13 = icmp eq i64 %rows, 0
  %or.cond58 = or i1 %cmp13, %or.cond57, !dbg !1423
  br i1 %or.cond58, label %if.then14, label %if.end18, !dbg !1423

if.then14:                                        ; preds = %lor.lhs.false6, %lor.lhs.false3, %if.end
  %filename15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1424
  %call17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 700, i32 noundef 440, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename15) #15, !dbg !1426
  br label %cleanup, !dbg !1427

if.end18:                                         ; preds = %lor.lhs.false6
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !1428
  %4 = load ptr, ptr %cache, align 8, !dbg !1428, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %4, metadata !1390, metadata !DIExpression()), !dbg !1394
  %5 = load i32, ptr %image, align 8, !dbg !1430, !tbaa !1431
  %cmp19 = icmp eq i32 %5, 2, !dbg !1432
  br i1 %cmp19, label %lor.end.thread, label %lor.end, !dbg !1433

lor.end.thread:                                   ; preds = %if.end18
  %active_index_channel113 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 16, !dbg !1434
  store i32 1, ptr %active_index_channel113, align 8, !dbg !1435, !tbaa !1436
  %mul114 = mul i64 %rows, %columns, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1392, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %mul21, metadata !1393, metadata !DIExpression()), !dbg !1394
  br label %7, !dbg !1441

lor.end:                                          ; preds = %if.end18
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1442
  %6 = load i32, ptr %colorspace, align 4, !dbg !1442, !tbaa !1443
  %cmp20 = icmp eq i32 %6, 12, !dbg !1444
  %cond = zext i1 %cmp20 to i32, !dbg !1445
  %active_index_channel = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 16, !dbg !1434
  store i32 %cond, ptr %active_index_channel, align 8, !dbg !1435, !tbaa !1436
  %mul = mul i64 %rows, %columns, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1392, metadata !DIExpression()), !dbg !1394
  %mul21 = shl i64 %mul, 3, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %mul21, metadata !1393, metadata !DIExpression()), !dbg !1394
  br i1 %cmp20, label %7, label %8, !dbg !1441

7:                                                ; preds = %lor.end.thread, %lor.end
  %mul120 = phi i64 [ %mul114, %lor.end.thread ], [ %mul, %lor.end ]
  %active_index_channel118 = phi ptr [ %active_index_channel113, %lor.end.thread ], [ %active_index_channel, %lor.end ]
  %add26121 = mul i64 %mul120, 10
  br label %8, !dbg !1441

8:                                                ; preds = %lor.end, %7
  %mul119 = phi i64 [ %mul120, %7 ], [ %mul, %lor.end ]
  %active_index_channel117 = phi ptr [ %active_index_channel118, %7 ], [ %active_index_channel, %lor.end ]
  %9 = phi i64 [ %add26121, %7 ], [ %mul21, %lor.end ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !1393, metadata !DIExpression()), !dbg !1394
  %pixels = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 14, !dbg !1447
  %10 = load ptr, ptr %pixels, align 8, !dbg !1447, !tbaa !1449
  %cmp28 = icmp eq ptr %10, null, !dbg !1450
  %length30 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 9, !dbg !1451
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !1452

if.then29:                                        ; preds = %8
  store i64 %9, ptr %length30, align 8, !dbg !1453, !tbaa !1455
  call void @llvm.dbg.value(metadata ptr %4, metadata !1456, metadata !DIExpression()) #15, !dbg !1462
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1461, metadata !DIExpression()) #15, !dbg !1462
  %mapped.i = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 5, !dbg !1464
  store i32 0, ptr %mapped.i, align 8, !dbg !1465, !tbaa !1466
  %call.i = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %9) #18, !dbg !1467
  store ptr %call.i, ptr %pixels, align 8, !dbg !1468, !tbaa !1449
  %cmp4.i = icmp eq ptr %call.i, null, !dbg !1469
  br i1 %cmp4.i, label %if.end10.i, label %if.end46, !dbg !1471

if.end10.i:                                       ; preds = %if.then29
  store i32 1, ptr %mapped.i, align 8, !dbg !1472, !tbaa !1466
  %11 = load i64, ptr %length30, align 8, !dbg !1474, !tbaa !1455
  %call8.i = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %11) #15, !dbg !1475
  store ptr %call8.i, ptr %pixels, align 8, !dbg !1476, !tbaa !1449
  %cmp12.i = icmp eq ptr %call8.i, null, !dbg !1477
  br i1 %cmp12.i, label %if.then33, label %if.end46, !dbg !1479

if.then33:                                        ; preds = %if.end10.i
  %filename.i = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 18, !dbg !1480
  %call14.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #15, !dbg !1482
  call void @llvm.dbg.value(metadata i32 0, metadata !1391, metadata !DIExpression()), !dbg !1394
  store i64 0, ptr %length30, align 8, !dbg !1483, !tbaa !1455
  br label %cleanup, !dbg !1486

if.else:                                          ; preds = %8
  %12 = load i64, ptr %length30, align 8, !dbg !1487, !tbaa !1455
  %cmp37 = icmp ult i64 %12, %9, !dbg !1489
  br i1 %cmp37, label %if.then38, label %if.end46, !dbg !1490

if.then38:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %4, metadata !1491, metadata !DIExpression()) #15, !dbg !1496
  %mapped.i95 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 5, !dbg !1499
  %13 = load i32, ptr %mapped.i95, align 8, !dbg !1499, !tbaa !1466
  %cmp.i = icmp eq i32 %13, 0, !dbg !1501
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1502

if.then.i:                                        ; preds = %if.then38
  %call.i97 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %10) #15, !dbg !1503
  br label %RelinquishStreamPixels.exit, !dbg !1504

if.else.i:                                        ; preds = %if.then38
  %call2.i = tail call i32 @UnmapBlob(ptr noundef nonnull %10, i64 noundef %12) #15, !dbg !1505
  br label %RelinquishStreamPixels.exit

RelinquishStreamPixels.exit:                      ; preds = %if.then.i, %if.else.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pixels, i8 0, i64 16, i1 false) #15, !dbg !1506
  store i64 %9, ptr %length30, align 8, !dbg !1507, !tbaa !1455
  call void @llvm.dbg.value(metadata ptr %4, metadata !1456, metadata !DIExpression()) #15, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1461, metadata !DIExpression()) #15, !dbg !1508
  store i32 0, ptr %mapped.i95, align 8, !dbg !1510, !tbaa !1466
  %call.i101 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %9) #18, !dbg !1511
  store ptr %call.i101, ptr %pixels, align 8, !dbg !1512, !tbaa !1449
  %cmp4.i103 = icmp eq ptr %call.i101, null, !dbg !1513
  br i1 %cmp4.i103, label %if.end10.i106, label %if.end46, !dbg !1514

if.end10.i106:                                    ; preds = %RelinquishStreamPixels.exit
  store i32 1, ptr %mapped.i95, align 8, !dbg !1515, !tbaa !1466
  %14 = load i64, ptr %length30, align 8, !dbg !1516, !tbaa !1455
  %call8.i104 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %14) #15, !dbg !1517
  store ptr %call8.i104, ptr %pixels, align 8, !dbg !1518, !tbaa !1449
  %cmp12.i105 = icmp eq ptr %call8.i104, null, !dbg !1519
  br i1 %cmp12.i105, label %if.then42, label %if.end46, !dbg !1520

if.then42:                                        ; preds = %if.end10.i106
  %filename.i107 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 18, !dbg !1521
  %call14.i108 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i107) #15, !dbg !1522
  call void @llvm.dbg.value(metadata i32 0, metadata !1391, metadata !DIExpression()), !dbg !1394
  store i64 0, ptr %length30, align 8, !dbg !1523, !tbaa !1455
  br label %cleanup, !dbg !1526

if.end46:                                         ; preds = %RelinquishStreamPixels.exit, %if.end10.i106, %if.then29, %if.end10.i, %if.else
  %15 = phi ptr [ %call.i101, %RelinquishStreamPixels.exit ], [ %call8.i104, %if.end10.i106 ], [ %call.i, %if.then29 ], [ %call8.i, %if.end10.i ], [ %10, %if.else ]
  %indexes = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 15, !dbg !1527
  store ptr null, ptr %indexes, align 8, !dbg !1528, !tbaa !1529
  %16 = load i32, ptr %active_index_channel117, align 8, !dbg !1530, !tbaa !1436
  %cmp48.not = icmp eq i32 %16, 0, !dbg !1532
  br i1 %cmp48.not, label %cleanup, label %if.then49, !dbg !1533

if.then49:                                        ; preds = %if.end46
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %15, i64 %mul119, !dbg !1534
  store ptr %add.ptr, ptr %indexes, align 8, !dbg !1535, !tbaa !1529
  br label %cleanup, !dbg !1536

cleanup:                                          ; preds = %if.end46, %if.then49, %if.then42, %if.then33, %if.then14
  %retval.0 = phi ptr [ null, %if.then14 ], [ null, %if.then33 ], [ null, %if.then42 ], [ %15, %if.then49 ], [ %15, %if.end46 ], !dbg !1394
  ret ptr %retval.0, !dbg !1537
}

; Function Attrs: nounwind uwtable
define internal ptr @GetVirtualIndexesFromStream(ptr noundef %image) #0 !dbg !1538 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1540, metadata !DIExpression()), !dbg !1542
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1543
  %0 = load i32, ptr %debug, align 8, !dbg !1543, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !1545
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1546

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1547
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 603, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1548
  br label %if.end, !dbg !1549

if.end:                                           ; preds = %if.then, %entry
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !1550
  %1 = load ptr, ptr %cache, align 8, !dbg !1550, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %1, metadata !1541, metadata !DIExpression()), !dbg !1542
  %indexes = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 15, !dbg !1551
  %2 = load ptr, ptr %indexes, align 8, !dbg !1551, !tbaa !1529
  ret ptr %2, !dbg !1552
}

; Function Attrs: nounwind uwtable
define internal ptr @GetVirtualPixelsStream(ptr noundef %image) #0 !dbg !1553 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1555, metadata !DIExpression()), !dbg !1557
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1558
  %0 = load i32, ptr %debug, align 8, !dbg !1558, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !1560
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1561

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1562
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 566, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1563
  br label %if.end, !dbg !1564

if.end:                                           ; preds = %if.then, %entry
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !1565
  %1 = load ptr, ptr %cache, align 8, !dbg !1565, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %1, metadata !1556, metadata !DIExpression()), !dbg !1557
  %pixels = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 14, !dbg !1566
  %2 = load ptr, ptr %pixels, align 8, !dbg !1566, !tbaa !1449
  ret ptr %2, !dbg !1567
}

; Function Attrs: nounwind uwtable
define internal ptr @GetAuthenticPixelsStream(ptr noundef %image, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) #0 !dbg !1568 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1570, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %x, metadata !1571, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %y, metadata !1572, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %columns, metadata !1573, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %rows, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1575, metadata !DIExpression()), !dbg !1577
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1578
  %0 = load i32, ptr %debug, align 8, !dbg !1578, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !1580
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1581

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1582
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 364, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1583
  br label %if.end, !dbg !1584

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @QueueAuthenticPixelsStream(ptr noundef nonnull %image, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception), !dbg !1585
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1576, metadata !DIExpression()), !dbg !1577
  ret ptr %call1, !dbg !1586
}

; Function Attrs: nounwind uwtable
define internal ptr @QueueAuthenticPixelsStream(ptr noundef %image, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) #0 !dbg !1587 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1589, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i64 %x, metadata !1590, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i64 %y, metadata !1591, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i64 %columns, metadata !1592, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i64 %rows, metadata !1593, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1594, metadata !DIExpression()), !dbg !1600
  %0 = or i64 %y, %x, !dbg !1601
  %.not = icmp sgt i64 %0, -1, !dbg !1601
  br i1 %.not, label %lor.lhs.false2, label %if.then, !dbg !1601

lor.lhs.false2:                                   ; preds = %entry
  %add = add nsw i64 %columns, %x, !dbg !1603
  %columns3 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1604
  %1 = load i64, ptr %columns3, align 8, !dbg !1604, !tbaa !1416
  %cmp4 = icmp sgt i64 %add, %1, !dbg !1605
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !1606

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %add6 = add nsw i64 %rows, %y, !dbg !1607
  %rows7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1608
  %2 = load i64, ptr %rows7, align 8, !dbg !1608, !tbaa !1421
  %cmp8 = icmp sgt i64 %add6, %2, !dbg !1609
  %cmp10 = icmp eq i64 %columns, 0
  %or.cond88 = or i1 %cmp10, %cmp8, !dbg !1610
  %cmp12 = icmp eq i64 %rows, 0
  %or.cond89 = or i1 %cmp12, %or.cond88, !dbg !1610
  br i1 %or.cond89, label %if.then, label %if.end, !dbg !1610

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1611
  %call = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 440, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #15, !dbg !1613
  br label %cleanup, !dbg !1614

if.end:                                           ; preds = %lor.lhs.false5
  %call13 = tail call ptr @GetBlobStreamHandler(ptr noundef nonnull %image) #15, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1599, metadata !DIExpression()), !dbg !1600
  %cmp14 = icmp eq ptr %call13, null, !dbg !1616
  br i1 %cmp14, label %if.then15, label %if.end19, !dbg !1618

if.then15:                                        ; preds = %if.end
  %filename16 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1619
  %call18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 849, i32 noundef 440, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename16) #15, !dbg !1621
  br label %cleanup, !dbg !1622

if.end19:                                         ; preds = %if.end
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !1623
  %3 = load ptr, ptr %cache, align 8, !dbg !1623, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %3, metadata !1595, metadata !DIExpression()), !dbg !1600
  %4 = load i32, ptr %image, align 8, !dbg !1624, !tbaa !1431
  %call21 = tail call i32 @GetPixelCacheStorageClass(ptr noundef %3) #15, !dbg !1626
  %cmp22.not = icmp eq i32 %4, %call21, !dbg !1627
  br i1 %cmp22.not, label %lor.lhs.false23, label %if.then27, !dbg !1628

lor.lhs.false23:                                  ; preds = %if.end19
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1629
  %5 = load i32, ptr %colorspace, align 4, !dbg !1629, !tbaa !1443
  %6 = load ptr, ptr %cache, align 8, !dbg !1630, !tbaa !1429
  %call25 = tail call i32 @GetPixelCacheColorspace(ptr noundef %6) #15, !dbg !1631
  %cmp26.not = icmp eq i32 %5, %call25, !dbg !1632
  br i1 %cmp26.not, label %lor.lhs.false23.if.end44_crit_edge, label %if.then27, !dbg !1633

lor.lhs.false23.if.end44_crit_edge:               ; preds = %lor.lhs.false23
  %.pre = load i32, ptr %image, align 8, !dbg !1634, !tbaa !1431
  br label %if.end44, !dbg !1633

if.then27:                                        ; preds = %lor.lhs.false23, %if.end19
  %7 = load ptr, ptr %cache, align 8, !dbg !1635, !tbaa !1429
  %call29 = tail call i32 @GetPixelCacheStorageClass(ptr noundef %7) #15, !dbg !1638
  %cmp30 = icmp eq i32 %call29, 0, !dbg !1639
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !1640

if.then31:                                        ; preds = %if.then27
  %columns32 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 6, !dbg !1641
  %8 = load i64, ptr %columns32, align 8, !dbg !1641, !tbaa !1642
  %call33 = tail call i64 %call13(ptr noundef nonnull %image, ptr noundef null, i64 noundef %8) #15, !dbg !1643
  br label %if.end34, !dbg !1644

if.end34:                                         ; preds = %if.then31, %if.then27
  %9 = load i32, ptr %image, align 8, !dbg !1645, !tbaa !1431
  store i32 %9, ptr %3, align 8, !dbg !1646, !tbaa !1647
  %colorspace37 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1648
  %10 = load i32, ptr %colorspace37, align 4, !dbg !1648, !tbaa !1443
  %colorspace38 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 1, !dbg !1649
  store i32 %10, ptr %colorspace38, align 4, !dbg !1650, !tbaa !1651
  %11 = load i64, ptr %columns3, align 8, !dbg !1652, !tbaa !1416
  %columns40 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 6, !dbg !1653
  store i64 %11, ptr %columns40, align 8, !dbg !1654, !tbaa !1642
  %12 = load i64, ptr %rows7, align 8, !dbg !1655, !tbaa !1421
  %rows42 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 7, !dbg !1656
  store i64 %12, ptr %rows42, align 8, !dbg !1657, !tbaa !1658
  store ptr %3, ptr %cache, align 8, !dbg !1659, !tbaa !1429
  br label %if.end44, !dbg !1660

if.end44:                                         ; preds = %lor.lhs.false23.if.end44_crit_edge, %if.end34
  %13 = phi i32 [ %.pre, %lor.lhs.false23.if.end44_crit_edge ], [ %9, %if.end34 ], !dbg !1634
  %cmp46 = icmp eq i32 %13, 2, !dbg !1661
  br i1 %cmp46, label %lor.end, label %lor.rhs, !dbg !1662

lor.rhs:                                          ; preds = %if.end44
  %colorspace47 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1663
  %14 = load i32, ptr %colorspace47, align 4, !dbg !1663, !tbaa !1443
  %cmp48 = icmp eq i32 %14, 12, !dbg !1664
  %phi.cast = zext i1 %cmp48 to i32, !dbg !1662
  br label %lor.end, !dbg !1662

lor.end:                                          ; preds = %lor.rhs, %if.end44
  %15 = phi i32 [ 1, %if.end44 ], [ %phi.cast, %lor.rhs ]
  %active_index_channel = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 16, !dbg !1665
  store i32 %15, ptr %active_index_channel, align 8, !dbg !1666, !tbaa !1436
  %columns49 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 6, !dbg !1667
  store i64 %columns, ptr %columns49, align 8, !dbg !1668, !tbaa !1642
  %rows50 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 7, !dbg !1669
  store i64 %rows, ptr %rows50, align 8, !dbg !1670, !tbaa !1658
  %mul = mul i64 %rows, %columns, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1597, metadata !DIExpression()), !dbg !1600
  %mul51 = shl i64 %mul, 3, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %mul51, metadata !1598, metadata !DIExpression()), !dbg !1600
  %cmp53.not = icmp eq i32 %15, 0, !dbg !1673
  %add56 = mul i64 %mul, 10
  %spec.select = select i1 %cmp53.not, i64 %mul51, i64 %add56, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1598, metadata !DIExpression()), !dbg !1600
  %pixels = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 14, !dbg !1676
  %16 = load ptr, ptr %pixels, align 8, !dbg !1676, !tbaa !1449
  %cmp58 = icmp eq ptr %16, null, !dbg !1678
  %length60 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 9, !dbg !1679
  br i1 %cmp58, label %if.then59, label %if.else, !dbg !1680

if.then59:                                        ; preds = %lor.end
  store i64 %spec.select, ptr %length60, align 8, !dbg !1681, !tbaa !1455
  call void @llvm.dbg.value(metadata ptr %3, metadata !1456, metadata !DIExpression()) #15, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1461, metadata !DIExpression()) #15, !dbg !1683
  %mapped.i = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 5, !dbg !1685
  store i32 0, ptr %mapped.i, align 8, !dbg !1686, !tbaa !1466
  %call.i = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %spec.select) #18, !dbg !1687
  store ptr %call.i, ptr %pixels, align 8, !dbg !1688, !tbaa !1449
  %cmp4.i = icmp eq ptr %call.i, null, !dbg !1689
  br i1 %cmp4.i, label %if.end10.i, label %if.end76, !dbg !1690

if.end10.i:                                       ; preds = %if.then59
  store i32 1, ptr %mapped.i, align 8, !dbg !1691, !tbaa !1466
  %17 = load i64, ptr %length60, align 8, !dbg !1692, !tbaa !1455
  %call8.i = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %17) #15, !dbg !1693
  store ptr %call8.i, ptr %pixels, align 8, !dbg !1694, !tbaa !1449
  %cmp12.i = icmp eq ptr %call8.i, null, !dbg !1695
  br i1 %cmp12.i, label %if.then63, label %if.end76, !dbg !1696

if.then63:                                        ; preds = %if.end10.i
  %filename.i = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 18, !dbg !1697
  %call14.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #15, !dbg !1698
  call void @llvm.dbg.value(metadata i32 0, metadata !1596, metadata !DIExpression()), !dbg !1600
  store i64 0, ptr %length60, align 8, !dbg !1699, !tbaa !1455
  br label %cleanup, !dbg !1702

if.else:                                          ; preds = %lor.end
  %18 = load i64, ptr %length60, align 8, !dbg !1703, !tbaa !1455
  %cmp67 = icmp ult i64 %18, %spec.select, !dbg !1705
  br i1 %cmp67, label %if.then68, label %if.end76, !dbg !1706

if.then68:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %3, metadata !1491, metadata !DIExpression()) #15, !dbg !1707
  %mapped.i149 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 5, !dbg !1710
  %19 = load i32, ptr %mapped.i149, align 8, !dbg !1710, !tbaa !1466
  %cmp.i = icmp eq i32 %19, 0, !dbg !1711
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1712

if.then.i:                                        ; preds = %if.then68
  %call.i151 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %16) #15, !dbg !1713
  br label %RelinquishStreamPixels.exit, !dbg !1714

if.else.i:                                        ; preds = %if.then68
  %call2.i = tail call i32 @UnmapBlob(ptr noundef nonnull %16, i64 noundef %18) #15, !dbg !1715
  br label %RelinquishStreamPixels.exit

RelinquishStreamPixels.exit:                      ; preds = %if.then.i, %if.else.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pixels, i8 0, i64 16, i1 false) #15, !dbg !1716
  store i64 %spec.select, ptr %length60, align 8, !dbg !1717, !tbaa !1455
  call void @llvm.dbg.value(metadata ptr %3, metadata !1456, metadata !DIExpression()) #15, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1461, metadata !DIExpression()) #15, !dbg !1718
  store i32 0, ptr %mapped.i149, align 8, !dbg !1720, !tbaa !1466
  %call.i155 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %spec.select) #18, !dbg !1721
  store ptr %call.i155, ptr %pixels, align 8, !dbg !1722, !tbaa !1449
  %cmp4.i157 = icmp eq ptr %call.i155, null, !dbg !1723
  br i1 %cmp4.i157, label %if.end10.i160, label %if.end76, !dbg !1724

if.end10.i160:                                    ; preds = %RelinquishStreamPixels.exit
  store i32 1, ptr %mapped.i149, align 8, !dbg !1725, !tbaa !1466
  %20 = load i64, ptr %length60, align 8, !dbg !1726, !tbaa !1455
  %call8.i158 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %20) #15, !dbg !1727
  store ptr %call8.i158, ptr %pixels, align 8, !dbg !1728, !tbaa !1449
  %cmp12.i159 = icmp eq ptr %call8.i158, null, !dbg !1729
  br i1 %cmp12.i159, label %if.then72, label %if.end76, !dbg !1730

if.then72:                                        ; preds = %if.end10.i160
  %filename.i161 = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 18, !dbg !1731
  %call14.i162 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i161) #15, !dbg !1732
  call void @llvm.dbg.value(metadata i32 0, metadata !1596, metadata !DIExpression()), !dbg !1600
  store i64 0, ptr %length60, align 8, !dbg !1733, !tbaa !1455
  br label %cleanup, !dbg !1736

if.end76:                                         ; preds = %RelinquishStreamPixels.exit, %if.end10.i160, %if.then59, %if.end10.i, %if.else
  %21 = phi ptr [ %call.i155, %RelinquishStreamPixels.exit ], [ %call8.i158, %if.end10.i160 ], [ %call.i, %if.then59 ], [ %call8.i, %if.end10.i ], [ %16, %if.else ]
  %indexes = getelementptr inbounds %struct._CacheInfo, ptr %3, i64 0, i32 15, !dbg !1737
  store ptr null, ptr %indexes, align 8, !dbg !1738, !tbaa !1529
  %22 = load i32, ptr %active_index_channel, align 8, !dbg !1739, !tbaa !1436
  %cmp78.not = icmp eq i32 %22, 0, !dbg !1741
  br i1 %cmp78.not, label %cleanup, label %if.then79, !dbg !1742

if.then79:                                        ; preds = %if.end76
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %21, i64 %mul, !dbg !1743
  store ptr %add.ptr, ptr %indexes, align 8, !dbg !1744, !tbaa !1529
  br label %cleanup, !dbg !1745

cleanup:                                          ; preds = %if.end76, %if.then79, %if.then72, %if.then63, %if.then15, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then15 ], [ null, %if.then63 ], [ null, %if.then72 ], [ %21, %if.then79 ], [ %21, %if.end76 ], !dbg !1600
  ret ptr %retval.0, !dbg !1746
}

; Function Attrs: nounwind uwtable
define internal i32 @SyncAuthenticPixelsStream(ptr noundef %image, ptr noundef %exception) #0 !dbg !1747 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1749, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1750, metadata !DIExpression()), !dbg !1754
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1755
  %0 = load i32, ptr %debug, align 8, !dbg !1755, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !1757
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1758

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1759
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2666, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1760
  br label %if.end, !dbg !1761

if.end:                                           ; preds = %if.then, %entry
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !1762
  %1 = load ptr, ptr %cache, align 8, !dbg !1762, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %1, metadata !1751, metadata !DIExpression()), !dbg !1754
  %call1 = tail call ptr @GetBlobStreamHandler(ptr noundef nonnull %image) #15, !dbg !1763
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1753, metadata !DIExpression()), !dbg !1754
  %cmp2 = icmp eq ptr %call1, null, !dbg !1764
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !1766

if.then3:                                         ; preds = %if.end
  %filename4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1767
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2672, i32 noundef 440, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename4) #15, !dbg !1769
  br label %cleanup, !dbg !1770

if.end7:                                          ; preds = %if.end
  %pixels = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 14, !dbg !1771
  %2 = load ptr, ptr %pixels, align 8, !dbg !1771, !tbaa !1449
  %columns = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 6, !dbg !1772
  %3 = load i64, ptr %columns, align 8, !dbg !1772, !tbaa !1642
  %call8 = tail call i64 %call1(ptr noundef nonnull %image, ptr noundef %2, i64 noundef %3) #15, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %call8, metadata !1752, metadata !DIExpression()), !dbg !1754
  %4 = load i64, ptr %columns, align 8, !dbg !1774, !tbaa !1642
  %cmp10 = icmp eq i64 %call8, %4, !dbg !1775
  %cond = zext i1 %cmp10 to i32, !dbg !1776
  br label %cleanup, !dbg !1777

cleanup:                                          ; preds = %if.end7, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %cond, %if.end7 ], !dbg !1754
  ret i32 %retval.0, !dbg !1778
}

; Function Attrs: nounwind uwtable
define internal ptr @GetAuthenticPixelsFromStream(ptr noundef %image) #0 !dbg !1779 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1781, metadata !DIExpression()), !dbg !1783
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1784
  %0 = load i32, ptr %debug, align 8, !dbg !1784, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !1786
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1787

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1788
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 400, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1789
  br label %if.end, !dbg !1790

if.end:                                           ; preds = %if.then, %entry
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !1791
  %1 = load ptr, ptr %cache, align 8, !dbg !1791, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %1, metadata !1782, metadata !DIExpression()), !dbg !1783
  %pixels = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 14, !dbg !1792
  %2 = load ptr, ptr %pixels, align 8, !dbg !1792, !tbaa !1449
  ret ptr %2, !dbg !1793
}

; Function Attrs: nounwind uwtable
define internal ptr @GetAuthenticIndexesFromStream(ptr noundef %image) #0 !dbg !1794 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1796, metadata !DIExpression()), !dbg !1798
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1799
  %0 = load i32, ptr %debug, align 8, !dbg !1799, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !1801
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1802

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1803
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 316, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1804
  br label %if.end, !dbg !1805

if.end:                                           ; preds = %if.then, %entry
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !1806
  %1 = load ptr, ptr %cache, align 8, !dbg !1806, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %1, metadata !1797, metadata !DIExpression()), !dbg !1798
  %indexes = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 15, !dbg !1807
  %2 = load ptr, ptr %indexes, align 8, !dbg !1807, !tbaa !1529
  ret ptr %2, !dbg !1808
}

; Function Attrs: nounwind uwtable
define internal i32 @GetOneVirtualPixelFromStream(ptr noundef %image, i32 noundef %virtual_pixel_method, i64 noundef %x, i64 noundef %y, ptr nocapture noundef writeonly %pixel, ptr noundef %exception) #0 !dbg !1809 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1811, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %virtual_pixel_method, metadata !1812, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %x, metadata !1813, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %y, metadata !1814, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1815, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1816, metadata !DIExpression()), !dbg !1818
  %background_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !1819
  %0 = load i64, ptr %background_color, align 8, !dbg !1819
  store i64 %0, ptr %pixel, align 2, !dbg !1819
  %call = tail call ptr @GetVirtualPixelStream(ptr noundef %image, i32 noundef %virtual_pixel_method, i64 noundef %x, i64 noundef %y, i64 noundef 1, i64 noundef 1, ptr noundef %exception), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %call, metadata !1817, metadata !DIExpression()), !dbg !1818
  %cmp.not = icmp ne ptr %call, null, !dbg !1821
  tail call void @llvm.assume(i1 %cmp.not), !dbg !1823
  ret i32 0, !dbg !1824
}

; Function Attrs: nounwind uwtable
define internal i32 @GetOneAuthenticPixelFromStream(ptr noundef %image, i64 noundef %x, i64 noundef %y, ptr nocapture noundef writeonly %pixel, ptr noundef %exception) #0 !dbg !1825 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1827, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %x, metadata !1828, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 %y, metadata !1829, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1830, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1831, metadata !DIExpression()), !dbg !1833
  %background_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !1834
  %0 = load i64, ptr %background_color, align 8, !dbg !1834
  store i64 %0, ptr %pixel, align 2, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %image, metadata !1570, metadata !DIExpression()) #15, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %x, metadata !1571, metadata !DIExpression()) #15, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %y, metadata !1572, metadata !DIExpression()) #15, !dbg !1835
  call void @llvm.dbg.value(metadata i64 1, metadata !1573, metadata !DIExpression()) #15, !dbg !1835
  call void @llvm.dbg.value(metadata i64 1, metadata !1574, metadata !DIExpression()) #15, !dbg !1835
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1575, metadata !DIExpression()) #15, !dbg !1835
  %debug.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1837
  %1 = load i32, ptr %debug.i, align 8, !dbg !1837, !tbaa !1397
  %cmp.not.i = icmp eq i32 %1, 0, !dbg !1838
  br i1 %cmp.not.i, label %GetAuthenticPixelsStream.exit, label %if.then.i, !dbg !1839

if.then.i:                                        ; preds = %entry
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1840
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 364, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename.i) #15, !dbg !1841
  br label %GetAuthenticPixelsStream.exit, !dbg !1842

GetAuthenticPixelsStream.exit:                    ; preds = %entry, %if.then.i
  %call1.i = tail call ptr @QueueAuthenticPixelsStream(ptr noundef nonnull %image, i64 noundef %x, i64 noundef %y, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #15, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1576, metadata !DIExpression()) #15, !dbg !1835
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1832, metadata !DIExpression()), !dbg !1833
  %cmp.not = icmp ne ptr %call1.i, null, !dbg !1844
  tail call void @llvm.assume(i1 %cmp.not), !dbg !1846
  ret i32 0, !dbg !1847
}

; Function Attrs: nounwind uwtable
define internal void @DestroyPixelStream(ptr noundef %image) #0 !dbg !1848 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1850, metadata !DIExpression()), !dbg !1853
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1854
  %0 = load i32, ptr %debug, align 8, !dbg !1854, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !1856
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1857

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1858
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 218, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1859
  br label %if.end, !dbg !1860

if.end:                                           ; preds = %if.then, %entry
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !1861
  %1 = load ptr, ptr %cache, align 8, !dbg !1861, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %1, metadata !1851, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 0, metadata !1852, metadata !DIExpression()), !dbg !1853
  %semaphore = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 28, !dbg !1862
  %2 = load ptr, ptr %semaphore, align 8, !dbg !1862, !tbaa !1863
  tail call void @LockSemaphoreInfo(ptr noundef %2) #15, !dbg !1864
  %reference_count = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 27, !dbg !1865
  %3 = load i64, ptr %reference_count, align 8, !dbg !1866, !tbaa !1867
  %dec = add nsw i64 %3, -1, !dbg !1866
  store i64 %dec, ptr %reference_count, align 8, !dbg !1866, !tbaa !1867
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1868
  call void @llvm.dbg.value(metadata i32 undef, metadata !1852, metadata !DIExpression()), !dbg !1853
  %4 = load ptr, ptr %semaphore, align 8, !dbg !1870, !tbaa !1863
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #15, !dbg !1871
  br i1 %cmp2, label %if.end8, label %cleanup, !dbg !1872

if.end8:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %1, metadata !1491, metadata !DIExpression()) #15, !dbg !1873
  %mapped.i = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 5, !dbg !1875
  %5 = load i32, ptr %mapped.i, align 8, !dbg !1875, !tbaa !1466
  %cmp.i = icmp eq i32 %5, 0, !dbg !1876
  %pixels.i = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 14, !dbg !1877
  %6 = load ptr, ptr %pixels.i, align 8, !dbg !1877, !tbaa !1449
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1878

if.then.i:                                        ; preds = %if.end8
  %call.i = tail call ptr @RelinquishAlignedMemory(ptr noundef %6) #15, !dbg !1879
  br label %RelinquishStreamPixels.exit, !dbg !1880

if.else.i:                                        ; preds = %if.end8
  %length.i = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 9, !dbg !1881
  %7 = load i64, ptr %length.i, align 8, !dbg !1881, !tbaa !1455
  %call2.i = tail call i32 @UnmapBlob(ptr noundef %6, i64 noundef %7) #15, !dbg !1882
  br label %RelinquishStreamPixels.exit

RelinquishStreamPixels.exit:                      ; preds = %if.then.i, %if.else.i
  %length4.i = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 9, !dbg !1883
  store i64 0, ptr %length4.i, align 8, !dbg !1884, !tbaa !1455
  store i32 0, ptr %mapped.i, align 8, !dbg !1885, !tbaa !1466
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %pixels.i, i8 0, i64 16, i1 false) #15, !dbg !1886
  %nexus_info = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 13, !dbg !1887
  %8 = load ptr, ptr %nexus_info, align 8, !dbg !1887, !tbaa !1889
  %cmp9.not = icmp eq ptr %8, null, !dbg !1890
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1891

if.then10:                                        ; preds = %RelinquishStreamPixels.exit
  %number_threads = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 12, !dbg !1892
  %9 = load i64, ptr %number_threads, align 8, !dbg !1892, !tbaa !1893
  %call12 = tail call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %8, i64 noundef %9) #15, !dbg !1894
  store ptr %call12, ptr %nexus_info, align 8, !dbg !1895, !tbaa !1889
  br label %if.end14, !dbg !1896

if.end14:                                         ; preds = %if.then10, %RelinquishStreamPixels.exit
  %file_semaphore = getelementptr inbounds %struct._CacheInfo, ptr %1, i64 0, i32 29, !dbg !1897
  %10 = load ptr, ptr %file_semaphore, align 8, !dbg !1897, !tbaa !1899
  %cmp15.not = icmp eq ptr %10, null, !dbg !1900
  br i1 %cmp15.not, label %if.end18, label %if.then16, !dbg !1901

if.then16:                                        ; preds = %if.end14
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %file_semaphore) #15, !dbg !1902
  br label %if.end18, !dbg !1902

if.end18:                                         ; preds = %if.then16, %if.end14
  %11 = load ptr, ptr %semaphore, align 8, !dbg !1903, !tbaa !1863
  %cmp20.not = icmp eq ptr %11, null, !dbg !1905
  br i1 %cmp20.not, label %if.end23, label %if.then21, !dbg !1906

if.then21:                                        ; preds = %if.end18
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #15, !dbg !1907
  br label %if.end23, !dbg !1907

if.end23:                                         ; preds = %if.then21, %if.end18
  %call24 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %1) #15, !dbg !1908
  call void @llvm.dbg.value(metadata ptr %call24, metadata !1851, metadata !DIExpression()), !dbg !1853
  br label %cleanup, !dbg !1909

cleanup:                                          ; preds = %if.end, %if.end23
  ret void, !dbg !1909
}

declare !dbg !1910 void @SetPixelCacheMethods(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1913 ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1916 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetStreamInfoClientData(ptr nocapture noundef writeonly %stream_info, ptr noundef %client_data) local_unnamed_addr #9 !dbg !1919 {
entry:
  call void @llvm.dbg.value(metadata ptr %stream_info, metadata !1923, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata ptr %client_data, metadata !1924, metadata !DIExpression()), !dbg !1925
  %client_data1 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 10, !dbg !1926
  store ptr %client_data, ptr %client_data1, align 8, !dbg !1927, !tbaa !1270
  ret void, !dbg !1928
}

; Function Attrs: nounwind uwtable
define dso_local void @SetStreamInfoMap(ptr noundef %stream_info, ptr noundef %map) local_unnamed_addr #0 !dbg !1929 {
entry:
  call void @llvm.dbg.value(metadata ptr %stream_info, metadata !1933, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata ptr %map, metadata !1934, metadata !DIExpression()), !dbg !1935
  %map1 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 4, !dbg !1936
  %call = tail call ptr @CloneString(ptr noundef nonnull %map1, ptr noundef %map) #15, !dbg !1937
  ret void, !dbg !1938
}

declare !dbg !1939 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetStreamInfoStorageType(ptr nocapture noundef writeonly %stream_info, i32 noundef %storage_type) local_unnamed_addr #9 !dbg !1943 {
entry:
  call void @llvm.dbg.value(metadata ptr %stream_info, metadata !1948, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %storage_type, metadata !1949, metadata !DIExpression()), !dbg !1950
  %storage_type1 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 5, !dbg !1951
  store i32 %storage_type, ptr %storage_type1, align 8, !dbg !1952, !tbaa !1153
  ret void, !dbg !1953
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StreamImage(ptr noundef %image_info, ptr noundef %stream_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !1954 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1958, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata ptr %stream_info, metadata !1959, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1960, metadata !DIExpression()), !dbg !1963
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1964
  %0 = load i32, ptr %debug, align 8, !dbg !1964, !tbaa !1312
  %cmp.not = icmp eq i32 %0, 0, !dbg !1966
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1967

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1968
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1212, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !1969
  br label %if.end, !dbg !1970

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #15, !dbg !1971
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1962, metadata !DIExpression()), !dbg !1963
  store ptr %image_info, ptr %stream_info, align 8, !dbg !1972, !tbaa !1973
  %call3 = tail call ptr @AcquireQuantumInfo(ptr noundef nonnull %image_info, ptr noundef null) #15, !dbg !1974
  %quantum_info = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 3, !dbg !1975
  store ptr %call3, ptr %quantum_info, align 8, !dbg !1976, !tbaa !1235
  %exception4 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 9, !dbg !1977
  store ptr %exception, ptr %exception4, align 8, !dbg !1978, !tbaa !1979
  %client_data = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 42, !dbg !1980
  store ptr %stream_info, ptr %client_data, align 8, !dbg !1981, !tbaa !1982
  %call5 = tail call ptr @ReadStream(ptr noundef %call1, ptr noundef nonnull @WriteStreamImage, ptr noundef %exception), !dbg !1983
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1961, metadata !DIExpression()), !dbg !1963
  %call6 = tail call ptr @DestroyImageInfo(ptr noundef %call1) #15, !dbg !1984
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1962, metadata !DIExpression()), !dbg !1963
  %1 = load ptr, ptr %quantum_info, align 8, !dbg !1985, !tbaa !1235
  %call8 = tail call ptr @DestroyQuantumInfo(ptr noundef %1) #15, !dbg !1986
  store ptr %call8, ptr %quantum_info, align 8, !dbg !1987, !tbaa !1235
  %call10 = tail call ptr @AcquireQuantumInfo(ptr noundef nonnull %image_info, ptr noundef %call5) #15, !dbg !1988
  store ptr %call10, ptr %quantum_info, align 8, !dbg !1989, !tbaa !1235
  %cmp13 = icmp eq ptr %call10, null, !dbg !1990
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !1992

if.then14:                                        ; preds = %if.end
  %call15 = tail call ptr @DestroyImage(ptr noundef %call5) #15, !dbg !1993
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1961, metadata !DIExpression()), !dbg !1963
  br label %if.end16, !dbg !1994

if.end16:                                         ; preds = %if.then14, %if.end
  %image.0 = phi ptr [ %call15, %if.then14 ], [ %call5, %if.end ], !dbg !1963
  call void @llvm.dbg.value(metadata ptr %image.0, metadata !1961, metadata !DIExpression()), !dbg !1963
  ret ptr %image.0, !dbg !1995
}

declare !dbg !1996 ptr @AcquireQuantumInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i64 @WriteStreamImage(ptr noundef %image, ptr nocapture noundef readnone %pixels, i64 noundef %columns) #0 !dbg !1999 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2001, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !2002, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %columns, metadata !2003, metadata !DIExpression()), !dbg !2013
  %client_data = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !2014
  %0 = load ptr, ptr %client_data, align 8, !dbg !2014, !tbaa !2015
  call void @llvm.dbg.value(metadata ptr %0, metadata !2009, metadata !DIExpression()), !dbg !2013
  %storage_type = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 5, !dbg !2016
  %1 = load i32, ptr %storage_type, align 8, !dbg !2016, !tbaa !1153
  %switch.tableidx = add i32 %1, -2, !dbg !2017
  %2 = icmp ult i32 %switch.tableidx, 6, !dbg !2017
  br i1 %2, label %switch.lookup, label %sw.epilog, !dbg !2017

switch.lookup:                                    ; preds = %entry
  %3 = sext i32 %switch.tableidx to i64, !dbg !2017
  %switch.gep = getelementptr inbounds [6 x i64], ptr @switch.table.WriteStreamImage, i64 0, i64 %3, !dbg !2017
  %switch.load = load i64, ptr %switch.gep, align 8, !dbg !2017
  br label %sw.epilog, !dbg !2017

sw.epilog:                                        ; preds = %switch.lookup, %entry
  %packet_size.0 = phi i64 [ 1, %entry ], [ %switch.load, %switch.lookup ], !dbg !2018
  call void @llvm.dbg.value(metadata i64 %packet_size.0, metadata !2007, metadata !DIExpression()), !dbg !2013
  %cache = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 49, !dbg !2020
  %4 = load ptr, ptr %cache, align 8, !dbg !2020, !tbaa !1429
  call void @llvm.dbg.value(metadata ptr %4, metadata !2004, metadata !DIExpression()), !dbg !2013
  %map = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 4, !dbg !2021
  %5 = load ptr, ptr %map, align 8, !dbg !2021, !tbaa !1150
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #19, !dbg !2022
  %mul = mul i64 %call, %packet_size.0, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %mul, metadata !2007, metadata !DIExpression()), !dbg !2013
  %columns7 = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 6, !dbg !2024
  %6 = load i64, ptr %columns7, align 8, !dbg !2024, !tbaa !1642
  %mul8 = mul i64 %mul, %6, !dbg !2025
  %rows = getelementptr inbounds %struct._CacheInfo, ptr %4, i64 0, i32 7, !dbg !2026
  %7 = load i64, ptr %rows, align 8, !dbg !2026, !tbaa !1658
  %mul9 = mul i64 %mul8, %7, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %mul9, metadata !2006, metadata !DIExpression()), !dbg !2013
  %image10 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 1, !dbg !2028
  %8 = load ptr, ptr %image10, align 8, !dbg !2028, !tbaa !2029
  %cmp.not = icmp eq ptr %8, %image, !dbg !2030
  br i1 %cmp.not, label %if.end30, label %if.then, !dbg !2031

if.then:                                          ; preds = %sw.epilog
  %pixels11 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6, !dbg !2032
  %9 = load ptr, ptr %pixels11, align 8, !dbg !2032, !tbaa !1138
  %call12 = tail call ptr @RelinquishAlignedMemory(ptr noundef %9) #15, !dbg !2033
  %call13 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %mul9) #18, !dbg !2034
  store ptr %call13, ptr %pixels11, align 8, !dbg !2035, !tbaa !1138
  %cmp16 = icmp eq ptr %call13, null, !dbg !2036
  br i1 %cmp16, label %cleanup69, label %if.end, !dbg !2038

if.end:                                           ; preds = %if.then
  %call19 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call13, i32 noundef 0, i64 noundef %mul9) #15, !dbg !2039
  store ptr %image, ptr %image10, align 8, !dbg !2040, !tbaa !2029
  %10 = load ptr, ptr %0, align 8, !dbg !2041, !tbaa !1973
  %call21 = tail call ptr @CloneImageInfo(ptr noundef %10) #15, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %call21, metadata !2010, metadata !DIExpression()), !dbg !2043
  %exception = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 9, !dbg !2044
  %11 = load ptr, ptr %exception, align 8, !dbg !2044, !tbaa !1979
  %call22 = tail call i32 @SetImageInfo(ptr noundef %call21, i32 noundef 1, ptr noundef %11) #15, !dbg !2045
  %extract = getelementptr inbounds %struct._ImageInfo, ptr %call21, i64 0, i32 7, !dbg !2046
  %12 = load ptr, ptr %extract, align 8, !dbg !2046, !tbaa !2048
  %cmp23.not = icmp eq ptr %12, null, !dbg !2049
  br i1 %cmp23.not, label %if.end28, label %if.then24, !dbg !2050

if.then24:                                        ; preds = %if.end
  %extract_info26 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 7, !dbg !2051
  %call27 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %12, ptr noundef nonnull %extract_info26) #15, !dbg !2052
  br label %if.end28, !dbg !2053

if.end28:                                         ; preds = %if.then24, %if.end
  %y = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 8, !dbg !2054
  store i64 0, ptr %y, align 8, !dbg !2055, !tbaa !2056
  %call29 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call21) #15, !dbg !2057
  call void @llvm.dbg.value(metadata ptr %call29, metadata !2010, metadata !DIExpression()), !dbg !2043
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %sw.epilog
  %extract_info31 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 7, !dbg !2058
  %extract_info.sroa.0.0.copyload = load i64, ptr %extract_info31, align 8, !dbg !2058, !tbaa.struct !2059
  call void @llvm.dbg.value(metadata i64 %extract_info.sroa.0.0.copyload, metadata !2005, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2013
  %extract_info.sroa.5.0.extract_info31.sroa_idx = getelementptr inbounds i8, ptr %extract_info31, i64 8, !dbg !2058
  %extract_info.sroa.5.0.copyload = load i64, ptr %extract_info.sroa.5.0.extract_info31.sroa_idx, align 8, !dbg !2058, !tbaa.struct !2061
  call void @llvm.dbg.value(metadata i64 %extract_info.sroa.5.0.copyload, metadata !2005, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2013
  %extract_info.sroa.7.0.extract_info31.sroa_idx = getelementptr inbounds i8, ptr %extract_info31, i64 16, !dbg !2058
  %extract_info.sroa.7.0.copyload = load i64, ptr %extract_info.sroa.7.0.extract_info31.sroa_idx, align 8, !dbg !2058, !tbaa.struct !2062
  call void @llvm.dbg.value(metadata i64 %extract_info.sroa.7.0.copyload, metadata !2005, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !2013
  call void @llvm.dbg.value(metadata i64 undef, metadata !2005, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2013
  %cmp32 = icmp eq i64 %extract_info.sroa.0.0.copyload, 0, !dbg !2063
  %cmp33 = icmp eq i64 %extract_info.sroa.5.0.copyload, 0
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp33, !dbg !2065
  br i1 %or.cond, label %if.then34, label %if.end41, !dbg !2065

if.then34:                                        ; preds = %if.end30
  %exception35 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 9, !dbg !2066
  %13 = load ptr, ptr %exception35, align 8, !dbg !2066, !tbaa !1979
  tail call fastcc void @StreamImagePixels(ptr noundef nonnull %0, ptr noundef nonnull %image, ptr noundef %13), !dbg !2068
  %stream = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 2, !dbg !2069
  %14 = load ptr, ptr %stream, align 8, !dbg !2069, !tbaa !1157
  %pixels37 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6, !dbg !2070
  %15 = load ptr, ptr %pixels37, align 8, !dbg !2070, !tbaa !1138
  %call38 = tail call i64 @WriteBlob(ptr noundef %14, i64 noundef %mul9, ptr noundef %15) #15, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %call38, metadata !2008, metadata !DIExpression()), !dbg !2013
  %y39 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 8, !dbg !2072
  %16 = load i64, ptr %y39, align 8, !dbg !2073, !tbaa !2056
  %inc = add nsw i64 %16, 1, !dbg !2073
  store i64 %inc, ptr %y39, align 8, !dbg !2073, !tbaa !2056
  %cmp40 = icmp eq i64 %call38, 0, !dbg !2074
  %spec.select = select i1 %cmp40, i64 0, i64 %columns, !dbg !2075
  br label %cleanup69, !dbg !2076

if.end41:                                         ; preds = %if.end30
  %extract_info.sroa.8.0.extract_info31.sroa_idx = getelementptr inbounds i8, ptr %extract_info31, i64 24, !dbg !2058
  %extract_info.sroa.8.0.copyload = load i64, ptr %extract_info.sroa.8.0.extract_info31.sroa_idx, align 8, !dbg !2058, !tbaa.struct !2077
  call void @llvm.dbg.value(metadata i64 %extract_info.sroa.8.0.copyload, metadata !2005, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !2013
  %y42 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 8, !dbg !2078
  %17 = load i64, ptr %y42, align 8, !dbg !2078, !tbaa !2056
  %cmp44 = icmp sge i64 %17, %extract_info.sroa.8.0.copyload, !dbg !2080
  %add = add i64 %extract_info.sroa.8.0.copyload, %extract_info.sroa.5.0.copyload
  %cmp49.not = icmp slt i64 %17, %add
  %or.cond124 = select i1 %cmp44, i1 %cmp49.not, i1 false, !dbg !2081
  br i1 %or.cond124, label %if.end53, label %if.then50, !dbg !2081

if.then50:                                        ; preds = %if.end41
  %inc52 = add nsw i64 %17, 1, !dbg !2082
  store i64 %inc52, ptr %y42, align 8, !dbg !2082, !tbaa !2056
  br label %cleanup69, !dbg !2084

if.end53:                                         ; preds = %if.end41
  %exception54 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 9, !dbg !2085
  %18 = load ptr, ptr %exception54, align 8, !dbg !2085, !tbaa !1979
  tail call fastcc void @StreamImagePixels(ptr noundef nonnull %0, ptr noundef nonnull %image, ptr noundef %18), !dbg !2086
  %mul57 = mul i64 %extract_info.sroa.0.0.copyload, %mul, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %mul57, metadata !2006, metadata !DIExpression()), !dbg !2013
  %stream58 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 2, !dbg !2088
  %19 = load ptr, ptr %stream58, align 8, !dbg !2088, !tbaa !1157
  %pixels59 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6, !dbg !2089
  %20 = load ptr, ptr %pixels59, align 8, !dbg !2089, !tbaa !1138
  %mul60 = mul i64 %extract_info.sroa.7.0.copyload, %mul, !dbg !2090
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %mul60, !dbg !2091
  %call61 = tail call i64 @WriteBlob(ptr noundef %19, i64 noundef %mul57, ptr noundef %add.ptr) #15, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %call61, metadata !2008, metadata !DIExpression()), !dbg !2013
  %21 = load i64, ptr %y42, align 8, !dbg !2093, !tbaa !2056
  %inc63 = add nsw i64 %21, 1, !dbg !2093
  store i64 %inc63, ptr %y42, align 8, !dbg !2093, !tbaa !2056
  %cmp64 = icmp eq i64 %call61, 0, !dbg !2094
  %spec.select76 = select i1 %cmp64, i64 0, i64 %columns, !dbg !2095
  br label %cleanup69, !dbg !2096

cleanup69:                                        ; preds = %if.then, %if.end53, %if.then50, %if.then34
  %retval.1 = phi i64 [ %spec.select, %if.then34 ], [ %columns, %if.then50 ], [ %spec.select76, %if.end53 ], [ 0, %if.then ], !dbg !2013
  ret i64 %retval.1, !dbg !2097
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WriteStream(ptr noundef %image_info, ptr noundef %image, ptr noundef %stream) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2102, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr %image, metadata !2103, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr %stream, metadata !2104, metadata !DIExpression()), !dbg !2107
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !2108
  %0 = load i32, ptr %debug, align 8, !dbg !2108, !tbaa !1312
  %cmp.not = icmp eq i32 %0, 0, !dbg !2110
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2111

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2112
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2718, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !2113
  br label %if.end, !dbg !2114

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #15, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2105, metadata !DIExpression()), !dbg !2107
  %stream2 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 44, !dbg !2116
  store ptr %stream, ptr %stream2, align 8, !dbg !2117, !tbaa !1365
  %call3 = tail call i32 @WriteImage(ptr noundef %call1, ptr noundef %image) #15, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %call3, metadata !2106, metadata !DIExpression()), !dbg !2107
  %call4 = tail call ptr @DestroyImageInfo(ptr noundef %call1) #15, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2105, metadata !DIExpression()), !dbg !2107
  ret i32 %call3, !dbg !2120
}

declare !dbg !2121 i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2124 ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2128 i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2131 ptr @GetBlobStreamHandler(ptr noundef) local_unnamed_addr #4

declare !dbg !2134 i32 @GetPixelCacheStorageClass(ptr noundef) local_unnamed_addr #4

declare !dbg !2138 i32 @GetPixelCacheColorspace(ptr noundef) local_unnamed_addr #4

declare !dbg !2141 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !2144 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !2145 ptr @DestroyPixelCacheNexus(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2148 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare !dbg !2152 i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2155 i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @StreamImagePixels(ptr noundef readonly %stream_info, ptr noundef %image, ptr noundef %exception) unnamed_addr #0 !dbg !2160 {
entry:
  call void @llvm.dbg.value(metadata ptr %stream_info, metadata !2166, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %image, metadata !2167, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2168, metadata !DIExpression()), !dbg !2191
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2192
  %0 = load i32, ptr %debug, align 8, !dbg !2192, !tbaa !1397
  %cmp.not = icmp eq i32 %0, 0, !dbg !2194
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2195

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2196
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1287, ptr noundef nonnull @.str.6, ptr noundef nonnull %filename) #15, !dbg !2197
  br label %if.end, !dbg !2198

if.end:                                           ; preds = %if.then, %entry
  %map = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 4, !dbg !2199
  %1 = load ptr, ptr %map, align 8, !dbg !2199, !tbaa !1150
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %call1, metadata !2175, metadata !DIExpression()), !dbg !2191
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef %call1, i64 noundef 4) #18, !dbg !2201
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2170, metadata !DIExpression()), !dbg !2191
  %cmp3 = icmp eq ptr %call2, null, !dbg !2202
  br i1 %cmp3, label %if.then4, label %for.cond.preheader, !dbg !2204

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2191
  %cmp9403 = icmp sgt i64 %call1, 0, !dbg !2205
  br i1 %cmp9403, label %for.body.lr.ph, label %for.end, !dbg !2208

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %colorspace55 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  br label %for.body, !dbg !2208

if.then4:                                         ; preds = %if.end
  %filename5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2209
  %call7 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1292, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename5) #15, !dbg !2211
  br label %cleanup2311, !dbg !2212

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0404 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.0404, metadata !2173, metadata !DIExpression()), !dbg !2191
  %2 = load ptr, ptr %map, align 8, !dbg !2213, !tbaa !1150
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %i.0404, !dbg !2215
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2215, !tbaa !2216
  %conv = sext i8 %3 to i32, !dbg !2215
  switch i32 %conv, label %sw.default [
    i32 65, label %for.inc.sink.split
    i32 97, label %for.inc.sink.split
    i32 66, label %sw.bb12
    i32 98, label %sw.bb12
    i32 67, label %sw.bb14
    i32 99, label %sw.bb14
    i32 103, label %sw.bb23
    i32 71, label %sw.bb23
    i32 73, label %sw.bb25
    i32 105, label %sw.bb25
    i32 75, label %sw.bb27
    i32 107, label %sw.bb27
    i32 77, label %sw.bb37
    i32 109, label %sw.bb37
    i32 111, label %sw.bb47
    i32 79, label %sw.bb47
    i32 80, label %sw.bb49
    i32 112, label %sw.bb49
    i32 82, label %sw.bb51
    i32 114, label %sw.bb51
    i32 89, label %sw.bb53
    i32 121, label %sw.bb53
  ], !dbg !2217

sw.bb12:                                          ; preds = %for.body, %for.body
  br label %for.inc.sink.split, !dbg !2218

sw.bb14:                                          ; preds = %for.body, %for.body
  %arrayidx15 = getelementptr inbounds i32, ptr %call2, i64 %i.0404, !dbg !2221
  store i32 6, ptr %arrayidx15, align 4, !dbg !2223, !tbaa !2216
  %4 = load i32, ptr %colorspace55, align 4, !dbg !2224, !tbaa !1443
  %cmp16 = icmp eq i32 %4, 12, !dbg !2226
  br i1 %cmp16, label %for.inc, label %if.end19, !dbg !2227

if.end19:                                         ; preds = %sw.bb14
  %call20 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #15, !dbg !2228
  call void @llvm.dbg.value(metadata ptr %call20, metadata !2170, metadata !DIExpression()), !dbg !2191
  %5 = load ptr, ptr %map, align 8, !dbg !2229, !tbaa !1150
  %call22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1319, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %5) #15, !dbg !2230
  br label %cleanup2311, !dbg !2231

sw.bb23:                                          ; preds = %for.body, %for.body
  br label %for.inc.sink.split, !dbg !2232

sw.bb25:                                          ; preds = %for.body, %for.body
  br label %for.inc.sink.split, !dbg !2234

sw.bb27:                                          ; preds = %for.body, %for.body
  %arrayidx28 = getelementptr inbounds i32, ptr %call2, i64 %i.0404, !dbg !2236
  store i32 2, ptr %arrayidx28, align 4, !dbg !2238, !tbaa !2216
  %6 = load i32, ptr %colorspace55, align 4, !dbg !2239, !tbaa !1443
  %cmp30 = icmp eq i32 %6, 12, !dbg !2241
  br i1 %cmp30, label %for.inc, label %if.end33, !dbg !2242

if.end33:                                         ; preds = %sw.bb27
  %call34 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #15, !dbg !2243
  call void @llvm.dbg.value(metadata ptr %call34, metadata !2170, metadata !DIExpression()), !dbg !2191
  %7 = load ptr, ptr %map, align 8, !dbg !2244, !tbaa !1150
  %call36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1342, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %7) #15, !dbg !2245
  br label %cleanup2311, !dbg !2246

sw.bb37:                                          ; preds = %for.body, %for.body
  %arrayidx38 = getelementptr inbounds i32, ptr %call2, i64 %i.0404, !dbg !2247
  store i32 12, ptr %arrayidx38, align 4, !dbg !2249, !tbaa !2216
  %8 = load i32, ptr %colorspace55, align 4, !dbg !2250, !tbaa !1443
  %cmp40 = icmp eq i32 %8, 12, !dbg !2252
  br i1 %cmp40, label %for.inc, label %if.end43, !dbg !2253

if.end43:                                         ; preds = %sw.bb37
  %call44 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #15, !dbg !2254
  call void @llvm.dbg.value(metadata ptr %call44, metadata !2170, metadata !DIExpression()), !dbg !2191
  %9 = load ptr, ptr %map, align 8, !dbg !2255, !tbaa !1150
  %call46 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1353, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %9) #15, !dbg !2256
  br label %cleanup2311, !dbg !2257

sw.bb47:                                          ; preds = %for.body, %for.body
  br label %for.inc.sink.split, !dbg !2258

sw.bb49:                                          ; preds = %for.body, %for.body
  br label %for.inc.sink.split, !dbg !2260

sw.bb51:                                          ; preds = %for.body, %for.body
  br label %for.inc.sink.split, !dbg !2262

sw.bb53:                                          ; preds = %for.body, %for.body
  %arrayidx54 = getelementptr inbounds i32, ptr %call2, i64 %i.0404, !dbg !2264
  store i32 19, ptr %arrayidx54, align 4, !dbg !2266, !tbaa !2216
  %10 = load i32, ptr %colorspace55, align 4, !dbg !2267, !tbaa !1443
  %cmp56 = icmp eq i32 %10, 12, !dbg !2269
  br i1 %cmp56, label %for.inc, label %if.end59, !dbg !2270

if.end59:                                         ; preds = %sw.bb53
  %call60 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #15, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %call60, metadata !2170, metadata !DIExpression()), !dbg !2191
  %11 = load ptr, ptr %map, align 8, !dbg !2272, !tbaa !1150
  %call62 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1382, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %11) #15, !dbg !2273
  br label %cleanup2311, !dbg !2274

sw.default:                                       ; preds = %for.body
  %call63 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #15, !dbg !2275
  call void @llvm.dbg.value(metadata ptr %call63, metadata !2170, metadata !DIExpression()), !dbg !2191
  %12 = load ptr, ptr %map, align 8, !dbg !2277, !tbaa !1150
  %call65 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1389, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef %12) #15, !dbg !2278
  br label %cleanup2311, !dbg !2279

for.inc.sink.split:                               ; preds = %for.body, %for.body, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb25, %sw.bb23, %sw.bb12
  %.sink = phi i32 [ 3, %sw.bb12 ], [ 9, %sw.bb23 ], [ 11, %sw.bb25 ], [ 13, %sw.bb47 ], [ 0, %sw.bb49 ], [ 14, %sw.bb51 ], [ 1, %for.body ], [ 1, %for.body ]
  %arrayidx11 = getelementptr inbounds i32, ptr %call2, i64 %i.0404, !dbg !2280
  store i32 %.sink, ptr %arrayidx11, align 4, !dbg !2280, !tbaa !2216
  br label %for.inc, !dbg !2281

for.inc:                                          ; preds = %for.inc.sink.split, %sw.bb14, %sw.bb27, %sw.bb37, %sw.bb53
  %inc = add nuw nsw i64 %i.0404, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond.not = icmp eq i64 %inc, %call1, !dbg !2205
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2208, !llvm.loop !2282

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %quantum_info66 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 3, !dbg !2286
  %13 = load ptr, ptr %quantum_info66, align 8, !dbg !2286, !tbaa !1235
  call void @llvm.dbg.value(metadata ptr %13, metadata !2169, metadata !DIExpression()), !dbg !2191
  %storage_type = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 5, !dbg !2287
  %14 = load i32, ptr %storage_type, align 8, !dbg !2287, !tbaa !1153
  switch i32 %14, label %sw.default2305 [
    i32 1, label %sw.bb67
    i32 2, label %sw.bb336
    i32 3, label %sw.bb742
    i32 4, label %sw.bb1181
    i32 5, label %sw.bb1462
    i32 6, label %sw.bb1771
    i32 7, label %sw.bb2024
  ], !dbg !2288

sw.bb67:                                          ; preds = %for.end
  %pixels = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 6, !dbg !2289
  %15 = load ptr, ptr %pixels, align 8, !dbg !2289, !tbaa !1138
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  %16 = load ptr, ptr %map, align 8, !dbg !2291, !tbaa !1150
  %call69 = tail call i32 @LocaleCompare(ptr noundef %16, ptr noundef nonnull @.str.11) #15, !dbg !2293
  %cmp70 = icmp eq i32 %call69, 0, !dbg !2294
  br i1 %cmp70, label %if.then72, label %if.end92, !dbg !2295

if.then72:                                        ; preds = %sw.bb67
  %call73 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %call73, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp74 = icmp eq ptr %call73, null, !dbg !2298
  br i1 %cmp74, label %sw.epilog2309, label %for.cond78.preheader, !dbg !2300

for.cond78.preheader:                             ; preds = %if.then72
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call73, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call79732 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2301
  %cmp80733 = icmp sgt i64 %call79732, 0, !dbg !2304
  br i1 %cmp80733, label %for.body82, label %sw.epilog2309, !dbg !2305

for.body82:                                       ; preds = %for.cond78.preheader, %for.body82
  %q.0736 = phi ptr [ %incdec.ptr87, %for.body82 ], [ %15, %for.cond78.preheader ]
  %x.0735 = phi i64 [ %inc90, %for.body82 ], [ 0, %for.cond78.preheader ]
  %p.0734 = phi ptr [ %incdec.ptr88, %for.body82 ], [ %call73, %for.cond78.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.0736, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %x.0735, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.0734, metadata !2172, metadata !DIExpression()), !dbg !2191
  %17 = load i16, ptr %p.0734, align 2, !dbg !2306, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %17, metadata !2309, metadata !DIExpression()), !dbg !2315
  %conv.i = zext i16 %17 to i64, !dbg !2317
  %add.i = add nuw nsw i64 %conv.i, 128, !dbg !2318
  %shr.i = lshr i64 %add.i, 8, !dbg !2319
  %sub.i = sub nsw i64 %add.i, %shr.i, !dbg !2320
  %shr3.i = lshr i64 %sub.i, 8, !dbg !2321
  %conv4.i = trunc i64 %shr3.i to i8, !dbg !2322
  %incdec.ptr = getelementptr inbounds i8, ptr %q.0736, i64 1, !dbg !2323
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i, ptr %q.0736, align 1, !dbg !2324, !tbaa !2216
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0734, i64 0, i32 1, !dbg !2325
  %18 = load i16, ptr %green, align 2, !dbg !2325, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %18, metadata !2309, metadata !DIExpression()), !dbg !2327
  %conv.i1 = zext i16 %18 to i64, !dbg !2329
  %add.i2 = add nuw nsw i64 %conv.i1, 128, !dbg !2330
  %shr.i3 = lshr i64 %add.i2, 8, !dbg !2331
  %sub.i4 = sub nsw i64 %add.i2, %shr.i3, !dbg !2332
  %shr3.i5 = lshr i64 %sub.i4, 8, !dbg !2333
  %conv4.i6 = trunc i64 %shr3.i5 to i8, !dbg !2334
  %incdec.ptr85 = getelementptr inbounds i8, ptr %q.0736, i64 2, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %incdec.ptr85, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i6, ptr %incdec.ptr, align 1, !dbg !2336, !tbaa !2216
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0734, i64 0, i32 2, !dbg !2337
  %19 = load i16, ptr %red, align 2, !dbg !2337, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %19, metadata !2309, metadata !DIExpression()), !dbg !2339
  %conv.i7 = zext i16 %19 to i64, !dbg !2341
  %add.i8 = add nuw nsw i64 %conv.i7, 128, !dbg !2342
  %shr.i9 = lshr i64 %add.i8, 8, !dbg !2343
  %sub.i10 = sub nsw i64 %add.i8, %shr.i9, !dbg !2344
  %shr3.i11 = lshr i64 %sub.i10, 8, !dbg !2345
  %conv4.i12 = trunc i64 %shr3.i11 to i8, !dbg !2346
  %incdec.ptr87 = getelementptr inbounds i8, ptr %q.0736, i64 3, !dbg !2347
  call void @llvm.dbg.value(metadata ptr %incdec.ptr87, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i12, ptr %incdec.ptr85, align 1, !dbg !2348, !tbaa !2216
  %incdec.ptr88 = getelementptr inbounds %struct._PixelPacket, ptr %p.0734, i64 1, !dbg !2349
  call void @llvm.dbg.value(metadata ptr %incdec.ptr88, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc90 = add nuw nsw i64 %x.0735, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %inc90, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call79 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2301
  %cmp80 = icmp slt i64 %inc90, %call79, !dbg !2304
  br i1 %cmp80, label %for.body82, label %sw.epilog2309, !dbg !2305, !llvm.loop !2351

if.end92:                                         ; preds = %sw.bb67
  %20 = load ptr, ptr %map, align 8, !dbg !2353, !tbaa !1150
  %call94 = tail call i32 @LocaleCompare(ptr noundef %20, ptr noundef nonnull @.str.12) #15, !dbg !2355
  %cmp95 = icmp eq i32 %call94, 0, !dbg !2356
  br i1 %cmp95, label %if.then97, label %if.end125, !dbg !2357

if.then97:                                        ; preds = %if.end92
  %call98 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %call98, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp99 = icmp eq ptr %call98, null, !dbg !2360
  br i1 %cmp99, label %sw.epilog2309, label %for.cond103.preheader, !dbg !2362

for.cond103.preheader:                            ; preds = %if.then97
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call98, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call104727 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2363
  %cmp105728 = icmp sgt i64 %call104727, 0, !dbg !2366
  br i1 %cmp105728, label %for.body107, label %sw.epilog2309, !dbg !2367

for.body107:                                      ; preds = %for.cond103.preheader, %for.body107
  %q.1731 = phi ptr [ %incdec.ptr120, %for.body107 ], [ %15, %for.cond103.preheader ]
  %x.1730 = phi i64 [ %inc123, %for.body107 ], [ 0, %for.cond103.preheader ]
  %p.1729 = phi ptr [ %incdec.ptr121, %for.body107 ], [ %call98, %for.cond103.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.1731, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %x.1730, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.1729, metadata !2172, metadata !DIExpression()), !dbg !2191
  %21 = load i16, ptr %p.1729, align 2, !dbg !2368, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %21, metadata !2309, metadata !DIExpression()), !dbg !2370
  %conv.i13 = zext i16 %21 to i64, !dbg !2372
  %add.i14 = add nuw nsw i64 %conv.i13, 128, !dbg !2373
  %shr.i15 = lshr i64 %add.i14, 8, !dbg !2374
  %sub.i16 = sub nsw i64 %add.i14, %shr.i15, !dbg !2375
  %shr3.i17 = lshr i64 %sub.i16, 8, !dbg !2376
  %conv4.i18 = trunc i64 %shr3.i17 to i8, !dbg !2377
  %incdec.ptr110 = getelementptr inbounds i8, ptr %q.1731, i64 1, !dbg !2378
  call void @llvm.dbg.value(metadata ptr %incdec.ptr110, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i18, ptr %q.1731, align 1, !dbg !2379, !tbaa !2216
  %green111 = getelementptr inbounds %struct._PixelPacket, ptr %p.1729, i64 0, i32 1, !dbg !2380
  %22 = load i16, ptr %green111, align 2, !dbg !2380, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %22, metadata !2309, metadata !DIExpression()), !dbg !2381
  %conv.i19 = zext i16 %22 to i64, !dbg !2383
  %add.i20 = add nuw nsw i64 %conv.i19, 128, !dbg !2384
  %shr.i21 = lshr i64 %add.i20, 8, !dbg !2385
  %sub.i22 = sub nsw i64 %add.i20, %shr.i21, !dbg !2386
  %shr3.i23 = lshr i64 %sub.i22, 8, !dbg !2387
  %conv4.i24 = trunc i64 %shr3.i23 to i8, !dbg !2388
  %incdec.ptr113 = getelementptr inbounds i8, ptr %q.1731, i64 2, !dbg !2389
  call void @llvm.dbg.value(metadata ptr %incdec.ptr113, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i24, ptr %incdec.ptr110, align 1, !dbg !2390, !tbaa !2216
  %red114 = getelementptr inbounds %struct._PixelPacket, ptr %p.1729, i64 0, i32 2, !dbg !2391
  %23 = load i16, ptr %red114, align 2, !dbg !2391, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %23, metadata !2309, metadata !DIExpression()), !dbg !2392
  %conv.i25 = zext i16 %23 to i64, !dbg !2394
  %add.i26 = add nuw nsw i64 %conv.i25, 128, !dbg !2395
  %shr.i27 = lshr i64 %add.i26, 8, !dbg !2396
  %sub.i28 = sub nsw i64 %add.i26, %shr.i27, !dbg !2397
  %shr3.i29 = lshr i64 %sub.i28, 8, !dbg !2398
  %conv4.i30 = trunc i64 %shr3.i29 to i8, !dbg !2399
  %incdec.ptr116 = getelementptr inbounds i8, ptr %q.1731, i64 3, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %incdec.ptr116, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i30, ptr %incdec.ptr113, align 1, !dbg !2401, !tbaa !2216
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.1729, i64 0, i32 3, !dbg !2402
  %24 = load i16, ptr %opacity, align 2, !dbg !2402, !tbaa !2403
  %25 = xor i16 %24, -1, !dbg !2402
  call void @llvm.dbg.value(metadata i16 %25, metadata !2309, metadata !DIExpression()), !dbg !2404
  %conv.i31 = zext i16 %25 to i64, !dbg !2406
  %add.i32 = add nuw nsw i64 %conv.i31, 128, !dbg !2407
  %shr.i33 = lshr i64 %add.i32, 8, !dbg !2408
  %sub.i34 = sub nsw i64 %add.i32, %shr.i33, !dbg !2409
  %shr3.i35 = lshr i64 %sub.i34, 8, !dbg !2410
  %conv4.i36 = trunc i64 %shr3.i35 to i8, !dbg !2411
  %incdec.ptr120 = getelementptr inbounds i8, ptr %q.1731, i64 4, !dbg !2412
  call void @llvm.dbg.value(metadata ptr %incdec.ptr120, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i36, ptr %incdec.ptr116, align 1, !dbg !2413, !tbaa !2216
  %incdec.ptr121 = getelementptr inbounds %struct._PixelPacket, ptr %p.1729, i64 1, !dbg !2414
  call void @llvm.dbg.value(metadata ptr %incdec.ptr121, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc123 = add nuw nsw i64 %x.1730, 1, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %inc123, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call104 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2363
  %cmp105 = icmp slt i64 %inc123, %call104, !dbg !2366
  br i1 %cmp105, label %for.body107, label %sw.epilog2309, !dbg !2367, !llvm.loop !2416

if.end125:                                        ; preds = %if.end92
  %26 = load ptr, ptr %map, align 8, !dbg !2418, !tbaa !1150
  %call127 = tail call i32 @LocaleCompare(ptr noundef %26, ptr noundef nonnull @.str.13) #15, !dbg !2420
  %cmp128 = icmp eq i32 %call127, 0, !dbg !2421
  br i1 %cmp128, label %if.then130, label %if.end156, !dbg !2422

if.then130:                                       ; preds = %if.end125
  %call131 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %call131, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp132 = icmp eq ptr %call131, null, !dbg !2425
  br i1 %cmp132, label %sw.epilog2309, label %for.cond136.preheader, !dbg !2427

for.cond136.preheader:                            ; preds = %if.then130
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call131, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call137722 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2428
  %cmp138723 = icmp sgt i64 %call137722, 0, !dbg !2431
  br i1 %cmp138723, label %for.body140, label %sw.epilog2309, !dbg !2432

for.body140:                                      ; preds = %for.cond136.preheader, %for.body140
  %q.2726 = phi ptr [ %incdec.ptr151, %for.body140 ], [ %15, %for.cond136.preheader ]
  %x.2725 = phi i64 [ %inc154, %for.body140 ], [ 0, %for.cond136.preheader ]
  %p.2724 = phi ptr [ %incdec.ptr152, %for.body140 ], [ %call131, %for.cond136.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.2726, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %x.2725, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.2724, metadata !2172, metadata !DIExpression()), !dbg !2191
  %27 = load i16, ptr %p.2724, align 2, !dbg !2433, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %27, metadata !2309, metadata !DIExpression()), !dbg !2435
  %conv.i37 = zext i16 %27 to i64, !dbg !2437
  %add.i38 = add nuw nsw i64 %conv.i37, 128, !dbg !2438
  %shr.i39 = lshr i64 %add.i38, 8, !dbg !2439
  %sub.i40 = sub nsw i64 %add.i38, %shr.i39, !dbg !2440
  %shr3.i41 = lshr i64 %sub.i40, 8, !dbg !2441
  %conv4.i42 = trunc i64 %shr3.i41 to i8, !dbg !2442
  %incdec.ptr143 = getelementptr inbounds i8, ptr %q.2726, i64 1, !dbg !2443
  call void @llvm.dbg.value(metadata ptr %incdec.ptr143, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i42, ptr %q.2726, align 1, !dbg !2444, !tbaa !2216
  %green144 = getelementptr inbounds %struct._PixelPacket, ptr %p.2724, i64 0, i32 1, !dbg !2445
  %28 = load i16, ptr %green144, align 2, !dbg !2445, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %28, metadata !2309, metadata !DIExpression()), !dbg !2446
  %conv.i43 = zext i16 %28 to i64, !dbg !2448
  %add.i44 = add nuw nsw i64 %conv.i43, 128, !dbg !2449
  %shr.i45 = lshr i64 %add.i44, 8, !dbg !2450
  %sub.i46 = sub nsw i64 %add.i44, %shr.i45, !dbg !2451
  %shr3.i47 = lshr i64 %sub.i46, 8, !dbg !2452
  %conv4.i48 = trunc i64 %shr3.i47 to i8, !dbg !2453
  %incdec.ptr146 = getelementptr inbounds i8, ptr %q.2726, i64 2, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %incdec.ptr146, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i48, ptr %incdec.ptr143, align 1, !dbg !2455, !tbaa !2216
  %red147 = getelementptr inbounds %struct._PixelPacket, ptr %p.2724, i64 0, i32 2, !dbg !2456
  %29 = load i16, ptr %red147, align 2, !dbg !2456, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %29, metadata !2309, metadata !DIExpression()), !dbg !2457
  %conv.i49 = zext i16 %29 to i64, !dbg !2459
  %add.i50 = add nuw nsw i64 %conv.i49, 128, !dbg !2460
  %shr.i51 = lshr i64 %add.i50, 8, !dbg !2461
  %sub.i52 = sub nsw i64 %add.i50, %shr.i51, !dbg !2462
  %shr3.i53 = lshr i64 %sub.i52, 8, !dbg !2463
  %conv4.i54 = trunc i64 %shr3.i53 to i8, !dbg !2464
  %incdec.ptr149 = getelementptr inbounds i8, ptr %q.2726, i64 3, !dbg !2465
  call void @llvm.dbg.value(metadata ptr %incdec.ptr149, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i54, ptr %incdec.ptr146, align 1, !dbg !2466, !tbaa !2216
  call void @llvm.dbg.value(metadata i16 0, metadata !2309, metadata !DIExpression()), !dbg !2467
  %incdec.ptr151 = getelementptr inbounds i8, ptr %q.2726, i64 4, !dbg !2469
  call void @llvm.dbg.value(metadata ptr %incdec.ptr151, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 0, ptr %incdec.ptr149, align 1, !dbg !2470, !tbaa !2216
  %incdec.ptr152 = getelementptr inbounds %struct._PixelPacket, ptr %p.2724, i64 1, !dbg !2471
  call void @llvm.dbg.value(metadata ptr %incdec.ptr152, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc154 = add nuw nsw i64 %x.2725, 1, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %inc154, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call137 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2428
  %cmp138 = icmp slt i64 %inc154, %call137, !dbg !2431
  br i1 %cmp138, label %for.body140, label %sw.epilog2309, !dbg !2432, !llvm.loop !2473

if.end156:                                        ; preds = %if.end125
  %30 = load ptr, ptr %map, align 8, !dbg !2475, !tbaa !1150
  %call158 = tail call i32 @LocaleCompare(ptr noundef %30, ptr noundef nonnull @.str.14) #15, !dbg !2477
  %cmp159 = icmp eq i32 %call158, 0, !dbg !2478
  br i1 %cmp159, label %if.then161, label %if.end180, !dbg !2479

if.then161:                                       ; preds = %if.end156
  %call162 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2480
  call void @llvm.dbg.value(metadata ptr %call162, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp163 = icmp eq ptr %call162, null, !dbg !2482
  br i1 %cmp163, label %sw.epilog2309, label %for.cond167.preheader, !dbg !2484

for.cond167.preheader:                            ; preds = %if.then161
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call162, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call168717 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2485
  %cmp169718 = icmp sgt i64 %call168717, 0, !dbg !2488
  br i1 %cmp169718, label %for.body171, label %sw.epilog2309, !dbg !2489

for.body171:                                      ; preds = %for.cond167.preheader, %ClampToQuantum.exit
  %q.3721 = phi ptr [ %incdec.ptr175, %ClampToQuantum.exit ], [ %15, %for.cond167.preheader ]
  %x.3720 = phi i64 [ %inc178, %ClampToQuantum.exit ], [ 0, %for.cond167.preheader ]
  %p.3719 = phi ptr [ %incdec.ptr176, %ClampToQuantum.exit ], [ %call162, %for.cond167.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.3721, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %x.3720, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.3719, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call172 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.3719) #20, !dbg !2490
  call void @llvm.dbg.value(metadata float %call172, metadata !2492, metadata !DIExpression()), !dbg !2498
  %cmp.i = fcmp ugt float %call172, 0.000000e+00, !dbg !2500
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2502

if.end.i:                                         ; preds = %for.body171
  %cmp1.i = fcmp ult float %call172, 6.553500e+04, !dbg !2503
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2505

if.end3.i:                                        ; preds = %if.end.i
  %add.i55 = fadd float %call172, 5.000000e-01, !dbg !2506
  %conv.i56 = fptoui float %add.i55 to i16, !dbg !2507
  br label %ClampToQuantum.exit, !dbg !2508

ClampToQuantum.exit:                              ; preds = %for.body171, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i56, %if.end3.i ], [ 0, %for.body171 ], [ -1, %if.end.i ], !dbg !2498
  call void @llvm.dbg.value(metadata i16 %retval.0.i, metadata !2309, metadata !DIExpression()), !dbg !2509
  %conv.i57 = zext i16 %retval.0.i to i64, !dbg !2511
  %add.i58 = add nuw nsw i64 %conv.i57, 128, !dbg !2512
  %shr.i59 = lshr i64 %add.i58, 8, !dbg !2513
  %sub.i60 = sub nsw i64 %add.i58, %shr.i59, !dbg !2514
  %shr3.i61 = lshr i64 %sub.i60, 8, !dbg !2515
  %conv4.i62 = trunc i64 %shr3.i61 to i8, !dbg !2516
  %incdec.ptr175 = getelementptr inbounds i8, ptr %q.3721, i64 1, !dbg !2517
  call void @llvm.dbg.value(metadata ptr %incdec.ptr175, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i62, ptr %q.3721, align 1, !dbg !2518, !tbaa !2216
  %incdec.ptr176 = getelementptr inbounds %struct._PixelPacket, ptr %p.3719, i64 1, !dbg !2519
  call void @llvm.dbg.value(metadata ptr %incdec.ptr176, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc178 = add nuw nsw i64 %x.3720, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %inc178, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call168 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2485
  %cmp169 = icmp slt i64 %inc178, %call168, !dbg !2488
  br i1 %cmp169, label %for.body171, label %sw.epilog2309, !dbg !2489, !llvm.loop !2521

if.end180:                                        ; preds = %if.end156
  %31 = load ptr, ptr %map, align 8, !dbg !2523, !tbaa !1150
  %call182 = tail call i32 @LocaleCompare(ptr noundef %31, ptr noundef nonnull @.str.4) #15, !dbg !2525
  %cmp183 = icmp eq i32 %call182, 0, !dbg !2526
  br i1 %cmp183, label %if.then185, label %if.end209, !dbg !2527

if.then185:                                       ; preds = %if.end180
  %call186 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2528
  call void @llvm.dbg.value(metadata ptr %call186, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp187 = icmp eq ptr %call186, null, !dbg !2530
  br i1 %cmp187, label %sw.epilog2309, label %for.cond191.preheader, !dbg !2532

for.cond191.preheader:                            ; preds = %if.then185
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call186, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call192712 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2533
  %cmp193713 = icmp sgt i64 %call192712, 0, !dbg !2536
  br i1 %cmp193713, label %for.body195, label %sw.epilog2309, !dbg !2537

for.body195:                                      ; preds = %for.cond191.preheader, %for.body195
  %q.4716 = phi ptr [ %incdec.ptr204, %for.body195 ], [ %15, %for.cond191.preheader ]
  %x.4715 = phi i64 [ %inc207, %for.body195 ], [ 0, %for.cond191.preheader ]
  %p.4714 = phi ptr [ %incdec.ptr205, %for.body195 ], [ %call186, %for.cond191.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.4716, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %x.4715, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.4714, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red196 = getelementptr inbounds %struct._PixelPacket, ptr %p.4714, i64 0, i32 2, !dbg !2538
  %32 = load i16, ptr %red196, align 2, !dbg !2538, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %32, metadata !2309, metadata !DIExpression()), !dbg !2540
  %conv.i63 = zext i16 %32 to i64, !dbg !2542
  %add.i64 = add nuw nsw i64 %conv.i63, 128, !dbg !2543
  %shr.i65 = lshr i64 %add.i64, 8, !dbg !2544
  %sub.i66 = sub nsw i64 %add.i64, %shr.i65, !dbg !2545
  %shr3.i67 = lshr i64 %sub.i66, 8, !dbg !2546
  %conv4.i68 = trunc i64 %shr3.i67 to i8, !dbg !2547
  %incdec.ptr198 = getelementptr inbounds i8, ptr %q.4716, i64 1, !dbg !2548
  call void @llvm.dbg.value(metadata ptr %incdec.ptr198, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i68, ptr %q.4716, align 1, !dbg !2549, !tbaa !2216
  %green199 = getelementptr inbounds %struct._PixelPacket, ptr %p.4714, i64 0, i32 1, !dbg !2550
  %33 = load i16, ptr %green199, align 2, !dbg !2550, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %33, metadata !2309, metadata !DIExpression()), !dbg !2551
  %conv.i69 = zext i16 %33 to i64, !dbg !2553
  %add.i70 = add nuw nsw i64 %conv.i69, 128, !dbg !2554
  %shr.i71 = lshr i64 %add.i70, 8, !dbg !2555
  %sub.i72 = sub nsw i64 %add.i70, %shr.i71, !dbg !2556
  %shr3.i73 = lshr i64 %sub.i72, 8, !dbg !2557
  %conv4.i74 = trunc i64 %shr3.i73 to i8, !dbg !2558
  %incdec.ptr201 = getelementptr inbounds i8, ptr %q.4716, i64 2, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %incdec.ptr201, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i74, ptr %incdec.ptr198, align 1, !dbg !2560, !tbaa !2216
  %34 = load i16, ptr %p.4714, align 2, !dbg !2561, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %34, metadata !2309, metadata !DIExpression()), !dbg !2562
  %conv.i75 = zext i16 %34 to i64, !dbg !2564
  %add.i76 = add nuw nsw i64 %conv.i75, 128, !dbg !2565
  %shr.i77 = lshr i64 %add.i76, 8, !dbg !2566
  %sub.i78 = sub nsw i64 %add.i76, %shr.i77, !dbg !2567
  %shr3.i79 = lshr i64 %sub.i78, 8, !dbg !2568
  %conv4.i80 = trunc i64 %shr3.i79 to i8, !dbg !2569
  %incdec.ptr204 = getelementptr inbounds i8, ptr %q.4716, i64 3, !dbg !2570
  call void @llvm.dbg.value(metadata ptr %incdec.ptr204, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i80, ptr %incdec.ptr201, align 1, !dbg !2571, !tbaa !2216
  %incdec.ptr205 = getelementptr inbounds %struct._PixelPacket, ptr %p.4714, i64 1, !dbg !2572
  call void @llvm.dbg.value(metadata ptr %incdec.ptr205, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc207 = add nuw nsw i64 %x.4715, 1, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %inc207, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call192 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2533
  %cmp193 = icmp slt i64 %inc207, %call192, !dbg !2536
  br i1 %cmp193, label %for.body195, label %sw.epilog2309, !dbg !2537, !llvm.loop !2574

if.end209:                                        ; preds = %if.end180
  %35 = load ptr, ptr %map, align 8, !dbg !2576, !tbaa !1150
  %call211 = tail call i32 @LocaleCompare(ptr noundef %35, ptr noundef nonnull @.str.15) #15, !dbg !2578
  %cmp212 = icmp eq i32 %call211, 0, !dbg !2579
  br i1 %cmp212, label %if.then214, label %if.end244, !dbg !2580

if.then214:                                       ; preds = %if.end209
  %call215 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2581
  call void @llvm.dbg.value(metadata ptr %call215, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp216 = icmp eq ptr %call215, null, !dbg !2583
  br i1 %cmp216, label %sw.epilog2309, label %for.cond220.preheader, !dbg !2585

for.cond220.preheader:                            ; preds = %if.then214
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call215, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call221707 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2586
  %cmp222708 = icmp sgt i64 %call221707, 0, !dbg !2589
  br i1 %cmp222708, label %for.body224, label %sw.epilog2309, !dbg !2590

for.body224:                                      ; preds = %for.cond220.preheader, %for.body224
  %q.5711 = phi ptr [ %incdec.ptr239, %for.body224 ], [ %15, %for.cond220.preheader ]
  %x.5710 = phi i64 [ %inc242, %for.body224 ], [ 0, %for.cond220.preheader ]
  %p.5709 = phi ptr [ %incdec.ptr240, %for.body224 ], [ %call215, %for.cond220.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.5711, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %x.5710, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.5709, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red225 = getelementptr inbounds %struct._PixelPacket, ptr %p.5709, i64 0, i32 2, !dbg !2591
  %36 = load i16, ptr %red225, align 2, !dbg !2591, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %36, metadata !2309, metadata !DIExpression()), !dbg !2593
  %conv.i81 = zext i16 %36 to i64, !dbg !2595
  %add.i82 = add nuw nsw i64 %conv.i81, 128, !dbg !2596
  %shr.i83 = lshr i64 %add.i82, 8, !dbg !2597
  %sub.i84 = sub nsw i64 %add.i82, %shr.i83, !dbg !2598
  %shr3.i85 = lshr i64 %sub.i84, 8, !dbg !2599
  %conv4.i86 = trunc i64 %shr3.i85 to i8, !dbg !2600
  %incdec.ptr227 = getelementptr inbounds i8, ptr %q.5711, i64 1, !dbg !2601
  call void @llvm.dbg.value(metadata ptr %incdec.ptr227, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i86, ptr %q.5711, align 1, !dbg !2602, !tbaa !2216
  %green228 = getelementptr inbounds %struct._PixelPacket, ptr %p.5709, i64 0, i32 1, !dbg !2603
  %37 = load i16, ptr %green228, align 2, !dbg !2603, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %37, metadata !2309, metadata !DIExpression()), !dbg !2604
  %conv.i87 = zext i16 %37 to i64, !dbg !2606
  %add.i88 = add nuw nsw i64 %conv.i87, 128, !dbg !2607
  %shr.i89 = lshr i64 %add.i88, 8, !dbg !2608
  %sub.i90 = sub nsw i64 %add.i88, %shr.i89, !dbg !2609
  %shr3.i91 = lshr i64 %sub.i90, 8, !dbg !2610
  %conv4.i92 = trunc i64 %shr3.i91 to i8, !dbg !2611
  %incdec.ptr230 = getelementptr inbounds i8, ptr %q.5711, i64 2, !dbg !2612
  call void @llvm.dbg.value(metadata ptr %incdec.ptr230, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i92, ptr %incdec.ptr227, align 1, !dbg !2613, !tbaa !2216
  %38 = load i16, ptr %p.5709, align 2, !dbg !2614, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %38, metadata !2309, metadata !DIExpression()), !dbg !2615
  %conv.i93 = zext i16 %38 to i64, !dbg !2617
  %add.i94 = add nuw nsw i64 %conv.i93, 128, !dbg !2618
  %shr.i95 = lshr i64 %add.i94, 8, !dbg !2619
  %sub.i96 = sub nsw i64 %add.i94, %shr.i95, !dbg !2620
  %shr3.i97 = lshr i64 %sub.i96, 8, !dbg !2621
  %conv4.i98 = trunc i64 %shr3.i97 to i8, !dbg !2622
  %incdec.ptr233 = getelementptr inbounds i8, ptr %q.5711, i64 3, !dbg !2623
  call void @llvm.dbg.value(metadata ptr %incdec.ptr233, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i98, ptr %incdec.ptr230, align 1, !dbg !2624, !tbaa !2216
  %opacity234 = getelementptr inbounds %struct._PixelPacket, ptr %p.5709, i64 0, i32 3, !dbg !2625
  %39 = load i16, ptr %opacity234, align 2, !dbg !2625, !tbaa !2403
  %40 = xor i16 %39, -1, !dbg !2625
  call void @llvm.dbg.value(metadata i16 %40, metadata !2309, metadata !DIExpression()), !dbg !2626
  %conv.i99 = zext i16 %40 to i64, !dbg !2628
  %add.i100 = add nuw nsw i64 %conv.i99, 128, !dbg !2629
  %shr.i101 = lshr i64 %add.i100, 8, !dbg !2630
  %sub.i102 = sub nsw i64 %add.i100, %shr.i101, !dbg !2631
  %shr3.i103 = lshr i64 %sub.i102, 8, !dbg !2632
  %conv4.i104 = trunc i64 %shr3.i103 to i8, !dbg !2633
  %incdec.ptr239 = getelementptr inbounds i8, ptr %q.5711, i64 4, !dbg !2634
  call void @llvm.dbg.value(metadata ptr %incdec.ptr239, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i104, ptr %incdec.ptr233, align 1, !dbg !2635, !tbaa !2216
  %incdec.ptr240 = getelementptr inbounds %struct._PixelPacket, ptr %p.5709, i64 1, !dbg !2636
  call void @llvm.dbg.value(metadata ptr %incdec.ptr240, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc242 = add nuw nsw i64 %x.5710, 1, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %inc242, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call221 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2586
  %cmp222 = icmp slt i64 %inc242, %call221, !dbg !2589
  br i1 %cmp222, label %for.body224, label %sw.epilog2309, !dbg !2590, !llvm.loop !2638

if.end244:                                        ; preds = %if.end209
  %41 = load ptr, ptr %map, align 8, !dbg !2640, !tbaa !1150
  %call246 = tail call i32 @LocaleCompare(ptr noundef %41, ptr noundef nonnull @.str.16) #15, !dbg !2642
  %cmp247 = icmp eq i32 %call246, 0, !dbg !2643
  %call250 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %call250, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call250, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp251 = icmp eq ptr %call250, null, !dbg !2290
  br i1 %cmp247, label %if.then249, label %if.end275, !dbg !2644

if.then249:                                       ; preds = %if.end244
  br i1 %cmp251, label %sw.epilog2309, label %for.cond255.preheader, !dbg !2645

for.cond255.preheader:                            ; preds = %if.then249
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call250, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call256702 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2647
  %cmp257703 = icmp sgt i64 %call256702, 0, !dbg !2650
  br i1 %cmp257703, label %for.body259, label %sw.epilog2309, !dbg !2651

for.body259:                                      ; preds = %for.cond255.preheader, %for.body259
  %q.6706 = phi ptr [ %incdec.ptr270, %for.body259 ], [ %15, %for.cond255.preheader ]
  %x.6705 = phi i64 [ %inc273, %for.body259 ], [ 0, %for.cond255.preheader ]
  %p.6704 = phi ptr [ %incdec.ptr271, %for.body259 ], [ %call250, %for.cond255.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.6706, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %x.6705, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.6704, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red260 = getelementptr inbounds %struct._PixelPacket, ptr %p.6704, i64 0, i32 2, !dbg !2652
  %42 = load i16, ptr %red260, align 2, !dbg !2652, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %42, metadata !2309, metadata !DIExpression()), !dbg !2654
  %conv.i105 = zext i16 %42 to i64, !dbg !2656
  %add.i106 = add nuw nsw i64 %conv.i105, 128, !dbg !2657
  %shr.i107 = lshr i64 %add.i106, 8, !dbg !2658
  %sub.i108 = sub nsw i64 %add.i106, %shr.i107, !dbg !2659
  %shr3.i109 = lshr i64 %sub.i108, 8, !dbg !2660
  %conv4.i110 = trunc i64 %shr3.i109 to i8, !dbg !2661
  %incdec.ptr262 = getelementptr inbounds i8, ptr %q.6706, i64 1, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %incdec.ptr262, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i110, ptr %q.6706, align 1, !dbg !2663, !tbaa !2216
  %green263 = getelementptr inbounds %struct._PixelPacket, ptr %p.6704, i64 0, i32 1, !dbg !2664
  %43 = load i16, ptr %green263, align 2, !dbg !2664, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %43, metadata !2309, metadata !DIExpression()), !dbg !2665
  %conv.i111 = zext i16 %43 to i64, !dbg !2667
  %add.i112 = add nuw nsw i64 %conv.i111, 128, !dbg !2668
  %shr.i113 = lshr i64 %add.i112, 8, !dbg !2669
  %sub.i114 = sub nsw i64 %add.i112, %shr.i113, !dbg !2670
  %shr3.i115 = lshr i64 %sub.i114, 8, !dbg !2671
  %conv4.i116 = trunc i64 %shr3.i115 to i8, !dbg !2672
  %incdec.ptr265 = getelementptr inbounds i8, ptr %q.6706, i64 2, !dbg !2673
  call void @llvm.dbg.value(metadata ptr %incdec.ptr265, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i116, ptr %incdec.ptr262, align 1, !dbg !2674, !tbaa !2216
  %44 = load i16, ptr %p.6704, align 2, !dbg !2675, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %44, metadata !2309, metadata !DIExpression()), !dbg !2676
  %conv.i117 = zext i16 %44 to i64, !dbg !2678
  %add.i118 = add nuw nsw i64 %conv.i117, 128, !dbg !2679
  %shr.i119 = lshr i64 %add.i118, 8, !dbg !2680
  %sub.i120 = sub nsw i64 %add.i118, %shr.i119, !dbg !2681
  %shr3.i121 = lshr i64 %sub.i120, 8, !dbg !2682
  %conv4.i122 = trunc i64 %shr3.i121 to i8, !dbg !2683
  %incdec.ptr268 = getelementptr inbounds i8, ptr %q.6706, i64 3, !dbg !2684
  call void @llvm.dbg.value(metadata ptr %incdec.ptr268, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 %conv4.i122, ptr %incdec.ptr265, align 1, !dbg !2685, !tbaa !2216
  call void @llvm.dbg.value(metadata i16 0, metadata !2309, metadata !DIExpression()), !dbg !2686
  %incdec.ptr270 = getelementptr inbounds i8, ptr %q.6706, i64 4, !dbg !2688
  call void @llvm.dbg.value(metadata ptr %incdec.ptr270, metadata !2176, metadata !DIExpression()), !dbg !2290
  store i8 0, ptr %incdec.ptr268, align 1, !dbg !2689, !tbaa !2216
  %incdec.ptr271 = getelementptr inbounds %struct._PixelPacket, ptr %p.6704, i64 1, !dbg !2690
  call void @llvm.dbg.value(metadata ptr %incdec.ptr271, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc273 = add nuw nsw i64 %x.6705, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %inc273, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call256 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2647
  %cmp257 = icmp slt i64 %inc273, %call256, !dbg !2650
  br i1 %cmp257, label %for.body259, label %sw.epilog2309, !dbg !2651, !llvm.loop !2692

if.end275:                                        ; preds = %if.end244
  br i1 %cmp251, label %sw.epilog2309, label %if.end280, !dbg !2694

if.end280:                                        ; preds = %if.end275
  %call281 = tail call ptr @GetVirtualIndexQueue(ptr noundef %image) #15, !dbg !2695
  call void @llvm.dbg.value(metadata ptr %call281, metadata !2171, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %15, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata ptr %call250, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call283695 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2696
  %cmp284696 = icmp sgt i64 %call283695, 0, !dbg !2699
  br i1 %cmp284696, label %for.cond287.preheader.lr.ph, label %sw.epilog2309, !dbg !2700

for.cond287.preheader.lr.ph:                      ; preds = %if.end280
  %colorspace311 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %cmp315 = icmp eq ptr %call281, null
  br label %for.cond287.preheader, !dbg !2700

for.cond287.preheader:                            ; preds = %for.cond287.preheader.lr.ph, %for.end331
  %q.7701 = phi ptr [ %15, %for.cond287.preheader.lr.ph ], [ %q.8.lcssa, %for.end331 ]
  %x.7699 = phi i64 [ 0, %for.cond287.preheader.lr.ph ], [ %inc334, %for.end331 ]
  %p.7697 = phi ptr [ %call250, %for.cond287.preheader.lr.ph ], [ %incdec.ptr332, %for.end331 ]
  call void @llvm.dbg.value(metadata i64 %x.7699, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.7697, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %q.7701, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2191
  br i1 %cmp9403, label %for.body290.lr.ph, label %for.end331, !dbg !2701

for.body290.lr.ph:                                ; preds = %for.cond287.preheader
  %add.ptr = getelementptr inbounds i16, ptr %call281, i64 %x.7699
  %opacity308 = getelementptr inbounds %struct._PixelPacket, ptr %p.7697, i64 0, i32 3
  %green296 = getelementptr inbounds %struct._PixelPacket, ptr %p.7697, i64 0, i32 1
  %red293 = getelementptr inbounds %struct._PixelPacket, ptr %p.7697, i64 0, i32 2
  br label %for.body290, !dbg !2701

for.body290:                                      ; preds = %for.body290.lr.ph, %sw.epilog327
  %q.8692 = phi ptr [ %q.7701, %for.body290.lr.ph ], [ %incdec.ptr328, %sw.epilog327 ]
  %i.1691 = phi i64 [ 0, %for.body290.lr.ph ], [ %inc330, %sw.epilog327 ]
  call void @llvm.dbg.value(metadata ptr %q.8692, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %i.1691, metadata !2173, metadata !DIExpression()), !dbg !2191
  store i8 0, ptr %q.8692, align 1, !dbg !2704, !tbaa !2216
  %arrayidx291 = getelementptr inbounds i32, ptr %call2, i64 %i.1691, !dbg !2707
  %45 = load i32, ptr %arrayidx291, align 4, !dbg !2707, !tbaa !2216
  switch i32 %45, label %sw.epilog327 [
    i32 14, label %sw.bb292
    i32 6, label %sw.bb292
    i32 9, label %sw.bb295
    i32 12, label %sw.bb295
    i32 3, label %sw.bb298
    i32 19, label %sw.bb298
    i32 1, label %sw.bb301
    i32 13, label %sw.bb307
    i32 2, label %sw.bb310
    i32 11, label %sw.bb322
  ], !dbg !2708

sw.bb292:                                         ; preds = %for.body290, %for.body290
  %46 = load i16, ptr %red293, align 2, !dbg !2709, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %46, metadata !2309, metadata !DIExpression()), !dbg !2712
  br label %sw.epilog327.sink.split, !dbg !2714

sw.bb295:                                         ; preds = %for.body290, %for.body290
  %47 = load i16, ptr %green296, align 2, !dbg !2715, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %47, metadata !2309, metadata !DIExpression()), !dbg !2717
  br label %sw.epilog327.sink.split, !dbg !2719

sw.bb298:                                         ; preds = %for.body290, %for.body290
  %48 = load i16, ptr %p.7697, align 2, !dbg !2720, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %48, metadata !2309, metadata !DIExpression()), !dbg !2722
  br label %sw.epilog327.sink.split, !dbg !2724

sw.bb301:                                         ; preds = %for.body290
  %49 = load i16, ptr %opacity308, align 2, !dbg !2725, !tbaa !2403
  %50 = xor i16 %49, -1, !dbg !2725
  call void @llvm.dbg.value(metadata i16 %50, metadata !2309, metadata !DIExpression()), !dbg !2727
  br label %sw.epilog327.sink.split, !dbg !2729

sw.bb307:                                         ; preds = %for.body290
  %51 = load i16, ptr %opacity308, align 2, !dbg !2730, !tbaa !2403
  call void @llvm.dbg.value(metadata i16 %51, metadata !2309, metadata !DIExpression()), !dbg !2732
  br label %sw.epilog327.sink.split, !dbg !2734

sw.bb310:                                         ; preds = %for.body290
  %52 = load i32, ptr %colorspace311, align 4, !dbg !2735, !tbaa !1443
  %cmp312 = icmp eq i32 %52, 12, !dbg !2738
  br i1 %cmp312, label %if.then314, label %sw.epilog327, !dbg !2739

if.then314:                                       ; preds = %sw.bb310
  br i1 %cmp315, label %sw.epilog327.sink.split, label %cond.false, !dbg !2740

cond.false:                                       ; preds = %if.then314
  %53 = load i16, ptr %add.ptr, align 2, !dbg !2740, !tbaa !2741
  br label %sw.epilog327.sink.split, !dbg !2740

sw.bb322:                                         ; preds = %for.body290
  %call323 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.7697) #20, !dbg !2742
  call void @llvm.dbg.value(metadata float %call323, metadata !2492, metadata !DIExpression()), !dbg !2744
  %cmp.i159 = fcmp ugt float %call323, 0.000000e+00, !dbg !2746
  br i1 %cmp.i159, label %if.end.i161, label %sw.epilog327.sink.split, !dbg !2747

if.end.i161:                                      ; preds = %sw.bb322
  %cmp1.i160 = fcmp ult float %call323, 6.553500e+04, !dbg !2748
  br i1 %cmp1.i160, label %if.end3.i164, label %sw.epilog327.sink.split, !dbg !2749

if.end3.i164:                                     ; preds = %if.end.i161
  %add.i162 = fadd float %call323, 5.000000e-01, !dbg !2750
  %conv.i163 = fptoui float %add.i162 to i16, !dbg !2751
  br label %sw.epilog327.sink.split, !dbg !2752

sw.epilog327.sink.split:                          ; preds = %if.end3.i164, %if.end.i161, %sw.bb322, %cond.false, %if.then314, %sw.bb292, %sw.bb295, %sw.bb298, %sw.bb301, %sw.bb307
  %.sink871 = phi i16 [ %46, %sw.bb292 ], [ %47, %sw.bb295 ], [ %48, %sw.bb298 ], [ %50, %sw.bb301 ], [ %51, %sw.bb307 ], [ %53, %cond.false ], [ 0, %if.then314 ], [ %conv.i163, %if.end3.i164 ], [ 0, %sw.bb322 ], [ -1, %if.end.i161 ]
  %conv.i123 = zext i16 %.sink871 to i64, !dbg !2753
  %add.i124 = add nuw nsw i64 %conv.i123, 128, !dbg !2753
  %shr.i155 = lshr i64 %add.i124, 8, !dbg !2753
  %sub.i156 = sub nsw i64 %add.i124, %shr.i155, !dbg !2753
  %shr3.i157 = lshr i64 %sub.i156, 8, !dbg !2753
  %conv4.i158 = trunc i64 %shr3.i157 to i8, !dbg !2753
  store i8 %conv4.i158, ptr %q.8692, align 1, !dbg !2753, !tbaa !2216
  br label %sw.epilog327, !dbg !2754

sw.epilog327:                                     ; preds = %sw.epilog327.sink.split, %for.body290, %sw.bb310
  %incdec.ptr328 = getelementptr inbounds i8, ptr %q.8692, i64 1, !dbg !2754
  call void @llvm.dbg.value(metadata ptr %incdec.ptr328, metadata !2176, metadata !DIExpression()), !dbg !2290
  %inc330 = add nuw nsw i64 %i.1691, 1, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %inc330, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond802.not = icmp eq i64 %inc330, %call1, !dbg !2756
  br i1 %exitcond802.not, label %for.end331, label %for.body290, !dbg !2701, !llvm.loop !2757

for.end331:                                       ; preds = %sw.epilog327, %for.cond287.preheader
  %q.8.lcssa = phi ptr [ %q.7701, %for.cond287.preheader ], [ %incdec.ptr328, %sw.epilog327 ], !dbg !2290
  %incdec.ptr332 = getelementptr inbounds %struct._PixelPacket, ptr %p.7697, i64 1, !dbg !2759
  call void @llvm.dbg.value(metadata ptr %incdec.ptr332, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc334 = add nuw nsw i64 %x.7699, 1, !dbg !2760
  call void @llvm.dbg.value(metadata ptr %q.8.lcssa, metadata !2176, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %inc334, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call283 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2696
  %cmp284 = icmp slt i64 %inc334, %call283, !dbg !2699
  br i1 %cmp284, label %for.cond287.preheader, label %sw.epilog2309, !dbg !2700, !llvm.loop !2761

sw.bb336:                                         ; preds = %for.end
  %pixels338 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 6, !dbg !2763
  %54 = load ptr, ptr %pixels338, align 8, !dbg !2763, !tbaa !1138
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  %55 = load ptr, ptr %map, align 8, !dbg !2765, !tbaa !1150
  %call340 = tail call i32 @LocaleCompare(ptr noundef %55, ptr noundef nonnull @.str.11) #15, !dbg !2767
  %cmp341 = icmp eq i32 %call340, 0, !dbg !2768
  br i1 %cmp341, label %if.then343, label %if.end379, !dbg !2769

if.then343:                                       ; preds = %sw.bb336
  %call344 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2770
  call void @llvm.dbg.value(metadata ptr %call344, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp345 = icmp eq ptr %call344, null, !dbg !2772
  br i1 %cmp345, label %sw.epilog2309, label %for.cond349.preheader, !dbg !2774

for.cond349.preheader:                            ; preds = %if.then343
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call344, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call350685 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2775
  %cmp351686 = icmp sgt i64 %call350685, 0, !dbg !2778
  br i1 %cmp351686, label %for.body353.lr.ph, label %sw.epilog2309, !dbg !2779

for.body353.lr.ph:                                ; preds = %for.cond349.preheader
  %scale = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body353, !dbg !2779

for.body353:                                      ; preds = %for.body353.lr.ph, %for.body353
  %q337.0689 = phi ptr [ %54, %for.body353.lr.ph ], [ %incdec.ptr374, %for.body353 ]
  %x.8688 = phi i64 [ 0, %for.body353.lr.ph ], [ %inc377, %for.body353 ]
  %p.8687 = phi ptr [ %call344, %for.body353.lr.ph ], [ %incdec.ptr375, %for.body353 ]
  call void @llvm.dbg.value(metadata ptr %q337.0689, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %x.8688, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.8687, metadata !2172, metadata !DIExpression()), !dbg !2191
  %56 = load i16, ptr %p.8687, align 2, !dbg !2780, !tbaa !2308
  %conv356 = uitofp i16 %56 to double, !dbg !2780
  %mul = fmul double %conv356, 0x3EF0001000100010, !dbg !2782
  %57 = load double, ptr %scale, align 8, !dbg !2783, !tbaa !2784
  %58 = load double, ptr %minimum, align 8, !dbg !2787, !tbaa !2788
  %59 = tail call double @llvm.fmuladd.f64(double %mul, double %57, double %58), !dbg !2789
  %incdec.ptr358 = getelementptr inbounds double, ptr %q337.0689, i64 1, !dbg !2790
  call void @llvm.dbg.value(metadata ptr %incdec.ptr358, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %59, ptr %q337.0689, align 8, !dbg !2791, !tbaa !2792
  %green359 = getelementptr inbounds %struct._PixelPacket, ptr %p.8687, i64 0, i32 1, !dbg !2793
  %60 = load i16, ptr %green359, align 2, !dbg !2793, !tbaa !2326
  %conv361 = uitofp i16 %60 to double, !dbg !2793
  %mul362 = fmul double %conv361, 0x3EF0001000100010, !dbg !2794
  %61 = load double, ptr %scale, align 8, !dbg !2795, !tbaa !2784
  %62 = load double, ptr %minimum, align 8, !dbg !2796, !tbaa !2788
  %63 = tail call double @llvm.fmuladd.f64(double %mul362, double %61, double %62), !dbg !2797
  %incdec.ptr366 = getelementptr inbounds double, ptr %q337.0689, i64 2, !dbg !2798
  call void @llvm.dbg.value(metadata ptr %incdec.ptr366, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %63, ptr %incdec.ptr358, align 8, !dbg !2799, !tbaa !2792
  %red367 = getelementptr inbounds %struct._PixelPacket, ptr %p.8687, i64 0, i32 2, !dbg !2800
  %64 = load i16, ptr %red367, align 2, !dbg !2800, !tbaa !2338
  %conv369 = uitofp i16 %64 to double, !dbg !2800
  %mul370 = fmul double %conv369, 0x3EF0001000100010, !dbg !2801
  %65 = load double, ptr %scale, align 8, !dbg !2802, !tbaa !2784
  %66 = load double, ptr %minimum, align 8, !dbg !2803, !tbaa !2788
  %67 = tail call double @llvm.fmuladd.f64(double %mul370, double %65, double %66), !dbg !2804
  %incdec.ptr374 = getelementptr inbounds double, ptr %q337.0689, i64 3, !dbg !2805
  call void @llvm.dbg.value(metadata ptr %incdec.ptr374, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %67, ptr %incdec.ptr366, align 8, !dbg !2806, !tbaa !2792
  %incdec.ptr375 = getelementptr inbounds %struct._PixelPacket, ptr %p.8687, i64 1, !dbg !2807
  call void @llvm.dbg.value(metadata ptr %incdec.ptr375, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc377 = add nuw nsw i64 %x.8688, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %inc377, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call350 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2775
  %cmp351 = icmp slt i64 %inc377, %call350, !dbg !2778
  br i1 %cmp351, label %for.body353, label %sw.epilog2309, !dbg !2779, !llvm.loop !2809

if.end379:                                        ; preds = %sw.bb336
  %68 = load ptr, ptr %map, align 8, !dbg !2811, !tbaa !1150
  %call381 = tail call i32 @LocaleCompare(ptr noundef %68, ptr noundef nonnull @.str.12) #15, !dbg !2813
  %cmp382 = icmp eq i32 %call381, 0, !dbg !2814
  br i1 %cmp382, label %if.then384, label %if.end432, !dbg !2815

if.then384:                                       ; preds = %if.end379
  %call385 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2816
  call void @llvm.dbg.value(metadata ptr %call385, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp386 = icmp eq ptr %call385, null, !dbg !2818
  br i1 %cmp386, label %sw.epilog2309, label %for.cond390.preheader, !dbg !2820

for.cond390.preheader:                            ; preds = %if.then384
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call385, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call391680 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2821
  %cmp392681 = icmp sgt i64 %call391680, 0, !dbg !2824
  br i1 %cmp392681, label %for.body394.lr.ph, label %sw.epilog2309, !dbg !2825

for.body394.lr.ph:                                ; preds = %for.cond390.preheader
  %scale399 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum401 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body394, !dbg !2825

for.body394:                                      ; preds = %for.body394.lr.ph, %for.body394
  %q337.1684 = phi ptr [ %54, %for.body394.lr.ph ], [ %incdec.ptr427, %for.body394 ]
  %x.9683 = phi i64 [ 0, %for.body394.lr.ph ], [ %inc430, %for.body394 ]
  %p.9682 = phi ptr [ %call385, %for.body394.lr.ph ], [ %incdec.ptr428, %for.body394 ]
  call void @llvm.dbg.value(metadata ptr %q337.1684, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %x.9683, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.9682, metadata !2172, metadata !DIExpression()), !dbg !2191
  %69 = load i16, ptr %p.9682, align 2, !dbg !2826, !tbaa !2308
  %conv397 = uitofp i16 %69 to double, !dbg !2826
  %mul398 = fmul double %conv397, 0x3EF0001000100010, !dbg !2828
  %70 = load double, ptr %scale399, align 8, !dbg !2829, !tbaa !2784
  %71 = load double, ptr %minimum401, align 8, !dbg !2830, !tbaa !2788
  %72 = tail call double @llvm.fmuladd.f64(double %mul398, double %70, double %71), !dbg !2831
  %incdec.ptr402 = getelementptr inbounds double, ptr %q337.1684, i64 1, !dbg !2832
  call void @llvm.dbg.value(metadata ptr %incdec.ptr402, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %72, ptr %q337.1684, align 8, !dbg !2833, !tbaa !2792
  %green403 = getelementptr inbounds %struct._PixelPacket, ptr %p.9682, i64 0, i32 1, !dbg !2834
  %73 = load i16, ptr %green403, align 2, !dbg !2834, !tbaa !2326
  %conv405 = uitofp i16 %73 to double, !dbg !2834
  %mul406 = fmul double %conv405, 0x3EF0001000100010, !dbg !2835
  %74 = load double, ptr %scale399, align 8, !dbg !2836, !tbaa !2784
  %75 = load double, ptr %minimum401, align 8, !dbg !2837, !tbaa !2788
  %76 = tail call double @llvm.fmuladd.f64(double %mul406, double %74, double %75), !dbg !2838
  %incdec.ptr410 = getelementptr inbounds double, ptr %q337.1684, i64 2, !dbg !2839
  call void @llvm.dbg.value(metadata ptr %incdec.ptr410, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %76, ptr %incdec.ptr402, align 8, !dbg !2840, !tbaa !2792
  %red411 = getelementptr inbounds %struct._PixelPacket, ptr %p.9682, i64 0, i32 2, !dbg !2841
  %77 = load i16, ptr %red411, align 2, !dbg !2841, !tbaa !2338
  %conv413 = uitofp i16 %77 to double, !dbg !2841
  %mul414 = fmul double %conv413, 0x3EF0001000100010, !dbg !2842
  %78 = load double, ptr %scale399, align 8, !dbg !2843, !tbaa !2784
  %79 = load double, ptr %minimum401, align 8, !dbg !2844, !tbaa !2788
  %80 = tail call double @llvm.fmuladd.f64(double %mul414, double %78, double %79), !dbg !2845
  %incdec.ptr418 = getelementptr inbounds double, ptr %q337.1684, i64 3, !dbg !2846
  call void @llvm.dbg.value(metadata ptr %incdec.ptr418, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %80, ptr %incdec.ptr410, align 8, !dbg !2847, !tbaa !2792
  %opacity419 = getelementptr inbounds %struct._PixelPacket, ptr %p.9682, i64 0, i32 3, !dbg !2848
  %81 = load i16, ptr %opacity419, align 2, !dbg !2848, !tbaa !2403
  %82 = xor i16 %81, -1, !dbg !2848
  %conv422 = uitofp i16 %82 to double, !dbg !2848
  %mul423 = fmul double %conv422, 0x3EF0001000100010, !dbg !2849
  %83 = load double, ptr %scale399, align 8, !dbg !2850, !tbaa !2784
  %84 = load double, ptr %minimum401, align 8, !dbg !2851, !tbaa !2788
  %85 = tail call double @llvm.fmuladd.f64(double %mul423, double %83, double %84), !dbg !2852
  %incdec.ptr427 = getelementptr inbounds double, ptr %q337.1684, i64 4, !dbg !2853
  call void @llvm.dbg.value(metadata ptr %incdec.ptr427, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %85, ptr %incdec.ptr418, align 8, !dbg !2854, !tbaa !2792
  %incdec.ptr428 = getelementptr inbounds %struct._PixelPacket, ptr %p.9682, i64 1, !dbg !2855
  call void @llvm.dbg.value(metadata ptr %incdec.ptr428, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc430 = add nuw nsw i64 %x.9683, 1, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %inc430, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call391 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2821
  %cmp392 = icmp slt i64 %inc430, %call391, !dbg !2824
  br i1 %cmp392, label %for.body394, label %sw.epilog2309, !dbg !2825, !llvm.loop !2857

if.end432:                                        ; preds = %if.end379
  %86 = load ptr, ptr %map, align 8, !dbg !2859, !tbaa !1150
  %call434 = tail call i32 @LocaleCompare(ptr noundef %86, ptr noundef nonnull @.str.13) #15, !dbg !2861
  %cmp435 = icmp eq i32 %call434, 0, !dbg !2862
  br i1 %cmp435, label %if.then437, label %if.end477, !dbg !2863

if.then437:                                       ; preds = %if.end432
  %call438 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2864
  call void @llvm.dbg.value(metadata ptr %call438, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp439 = icmp eq ptr %call438, null, !dbg !2866
  br i1 %cmp439, label %sw.epilog2309, label %for.cond443.preheader, !dbg !2868

for.cond443.preheader:                            ; preds = %if.then437
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call438, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call444675 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2869
  %cmp445676 = icmp sgt i64 %call444675, 0, !dbg !2872
  br i1 %cmp445676, label %for.body447.lr.ph, label %sw.epilog2309, !dbg !2873

for.body447.lr.ph:                                ; preds = %for.cond443.preheader
  %scale452 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum454 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body447, !dbg !2873

for.body447:                                      ; preds = %for.body447.lr.ph, %for.body447
  %q337.2679 = phi ptr [ %54, %for.body447.lr.ph ], [ %incdec.ptr472, %for.body447 ]
  %x.10678 = phi i64 [ 0, %for.body447.lr.ph ], [ %inc475, %for.body447 ]
  %p.10677 = phi ptr [ %call438, %for.body447.lr.ph ], [ %incdec.ptr473, %for.body447 ]
  call void @llvm.dbg.value(metadata ptr %q337.2679, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %x.10678, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.10677, metadata !2172, metadata !DIExpression()), !dbg !2191
  %87 = load i16, ptr %p.10677, align 2, !dbg !2874, !tbaa !2308
  %conv450 = uitofp i16 %87 to double, !dbg !2874
  %mul451 = fmul double %conv450, 0x3EF0001000100010, !dbg !2876
  %88 = load double, ptr %scale452, align 8, !dbg !2877, !tbaa !2784
  %89 = load double, ptr %minimum454, align 8, !dbg !2878, !tbaa !2788
  %90 = tail call double @llvm.fmuladd.f64(double %mul451, double %88, double %89), !dbg !2879
  %incdec.ptr455 = getelementptr inbounds double, ptr %q337.2679, i64 1, !dbg !2880
  call void @llvm.dbg.value(metadata ptr %incdec.ptr455, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %90, ptr %q337.2679, align 8, !dbg !2881, !tbaa !2792
  %green456 = getelementptr inbounds %struct._PixelPacket, ptr %p.10677, i64 0, i32 1, !dbg !2882
  %91 = load i16, ptr %green456, align 2, !dbg !2882, !tbaa !2326
  %conv458 = uitofp i16 %91 to double, !dbg !2882
  %mul459 = fmul double %conv458, 0x3EF0001000100010, !dbg !2883
  %92 = load double, ptr %scale452, align 8, !dbg !2884, !tbaa !2784
  %93 = load double, ptr %minimum454, align 8, !dbg !2885, !tbaa !2788
  %94 = tail call double @llvm.fmuladd.f64(double %mul459, double %92, double %93), !dbg !2886
  %incdec.ptr463 = getelementptr inbounds double, ptr %q337.2679, i64 2, !dbg !2887
  call void @llvm.dbg.value(metadata ptr %incdec.ptr463, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %94, ptr %incdec.ptr455, align 8, !dbg !2888, !tbaa !2792
  %red464 = getelementptr inbounds %struct._PixelPacket, ptr %p.10677, i64 0, i32 2, !dbg !2889
  %95 = load i16, ptr %red464, align 2, !dbg !2889, !tbaa !2338
  %conv466 = uitofp i16 %95 to double, !dbg !2889
  %mul467 = fmul double %conv466, 0x3EF0001000100010, !dbg !2890
  %96 = load double, ptr %scale452, align 8, !dbg !2891, !tbaa !2784
  %97 = load double, ptr %minimum454, align 8, !dbg !2892, !tbaa !2788
  %98 = tail call double @llvm.fmuladd.f64(double %mul467, double %96, double %97), !dbg !2893
  %incdec.ptr471 = getelementptr inbounds double, ptr %q337.2679, i64 3, !dbg !2894
  call void @llvm.dbg.value(metadata ptr %incdec.ptr471, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %98, ptr %incdec.ptr463, align 8, !dbg !2895, !tbaa !2792
  %incdec.ptr472 = getelementptr inbounds double, ptr %q337.2679, i64 4, !dbg !2896
  call void @llvm.dbg.value(metadata ptr %incdec.ptr472, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double 0.000000e+00, ptr %incdec.ptr471, align 8, !dbg !2897, !tbaa !2792
  %incdec.ptr473 = getelementptr inbounds %struct._PixelPacket, ptr %p.10677, i64 1, !dbg !2898
  call void @llvm.dbg.value(metadata ptr %incdec.ptr473, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc475 = add nuw nsw i64 %x.10678, 1, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %inc475, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call444 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2869
  %cmp445 = icmp slt i64 %inc475, %call444, !dbg !2872
  br i1 %cmp445, label %for.body447, label %sw.epilog2309, !dbg !2873, !llvm.loop !2900

if.end477:                                        ; preds = %if.end432
  %99 = load ptr, ptr %map, align 8, !dbg !2902, !tbaa !1150
  %call479 = tail call i32 @LocaleCompare(ptr noundef %99, ptr noundef nonnull @.str.14) #15, !dbg !2904
  %cmp480 = icmp eq i32 %call479, 0, !dbg !2905
  br i1 %cmp480, label %if.then482, label %if.end504, !dbg !2906

if.then482:                                       ; preds = %if.end477
  %call483 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2907
  call void @llvm.dbg.value(metadata ptr %call483, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp484 = icmp eq ptr %call483, null, !dbg !2909
  br i1 %cmp484, label %sw.epilog2309, label %for.cond488.preheader, !dbg !2911

for.cond488.preheader:                            ; preds = %if.then482
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call483, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call489670 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2912
  %cmp490671 = icmp sgt i64 %call489670, 0, !dbg !2915
  br i1 %cmp490671, label %for.body492.lr.ph, label %sw.epilog2309, !dbg !2916

for.body492.lr.ph:                                ; preds = %for.cond488.preheader
  %scale496 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum498 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body492, !dbg !2916

for.body492:                                      ; preds = %for.body492.lr.ph, %for.body492
  %q337.3674 = phi ptr [ %54, %for.body492.lr.ph ], [ %incdec.ptr499, %for.body492 ]
  %x.11673 = phi i64 [ 0, %for.body492.lr.ph ], [ %inc502, %for.body492 ]
  %p.11672 = phi ptr [ %call483, %for.body492.lr.ph ], [ %incdec.ptr500, %for.body492 ]
  call void @llvm.dbg.value(metadata ptr %q337.3674, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %x.11673, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.11672, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call493 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.11672) #20, !dbg !2917
  %conv494 = fpext float %call493 to double, !dbg !2917
  %mul495 = fmul double %conv494, 0x3EF0001000100010, !dbg !2919
  %100 = load double, ptr %scale496, align 8, !dbg !2920, !tbaa !2784
  %101 = load double, ptr %minimum498, align 8, !dbg !2921, !tbaa !2788
  %102 = tail call double @llvm.fmuladd.f64(double %mul495, double %100, double %101), !dbg !2922
  %incdec.ptr499 = getelementptr inbounds double, ptr %q337.3674, i64 1, !dbg !2923
  call void @llvm.dbg.value(metadata ptr %incdec.ptr499, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %102, ptr %q337.3674, align 8, !dbg !2924, !tbaa !2792
  %incdec.ptr500 = getelementptr inbounds %struct._PixelPacket, ptr %p.11672, i64 1, !dbg !2925
  call void @llvm.dbg.value(metadata ptr %incdec.ptr500, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc502 = add nuw nsw i64 %x.11673, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %inc502, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call489 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2912
  %cmp490 = icmp slt i64 %inc502, %call489, !dbg !2915
  br i1 %cmp490, label %for.body492, label %sw.epilog2309, !dbg !2916, !llvm.loop !2927

if.end504:                                        ; preds = %if.end477
  %103 = load ptr, ptr %map, align 8, !dbg !2929, !tbaa !1150
  %call506 = tail call i32 @LocaleCompare(ptr noundef %103, ptr noundef nonnull @.str.4) #15, !dbg !2931
  %cmp507 = icmp eq i32 %call506, 0, !dbg !2932
  br i1 %cmp507, label %if.then509, label %if.end548, !dbg !2933

if.then509:                                       ; preds = %if.end504
  %call510 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %call510, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp511 = icmp eq ptr %call510, null, !dbg !2936
  br i1 %cmp511, label %sw.epilog2309, label %for.cond515.preheader, !dbg !2938

for.cond515.preheader:                            ; preds = %if.then509
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call510, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call516665 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2939
  %cmp517666 = icmp sgt i64 %call516665, 0, !dbg !2942
  br i1 %cmp517666, label %for.body519.lr.ph, label %sw.epilog2309, !dbg !2943

for.body519.lr.ph:                                ; preds = %for.cond515.preheader
  %scale524 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum526 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body519, !dbg !2943

for.body519:                                      ; preds = %for.body519.lr.ph, %for.body519
  %q337.4669 = phi ptr [ %54, %for.body519.lr.ph ], [ %incdec.ptr543, %for.body519 ]
  %x.12668 = phi i64 [ 0, %for.body519.lr.ph ], [ %inc546, %for.body519 ]
  %p.12667 = phi ptr [ %call510, %for.body519.lr.ph ], [ %incdec.ptr544, %for.body519 ]
  call void @llvm.dbg.value(metadata ptr %q337.4669, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %x.12668, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.12667, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red520 = getelementptr inbounds %struct._PixelPacket, ptr %p.12667, i64 0, i32 2, !dbg !2944
  %104 = load i16, ptr %red520, align 2, !dbg !2944, !tbaa !2338
  %conv522 = uitofp i16 %104 to double, !dbg !2944
  %mul523 = fmul double %conv522, 0x3EF0001000100010, !dbg !2946
  %105 = load double, ptr %scale524, align 8, !dbg !2947, !tbaa !2784
  %106 = load double, ptr %minimum526, align 8, !dbg !2948, !tbaa !2788
  %107 = tail call double @llvm.fmuladd.f64(double %mul523, double %105, double %106), !dbg !2949
  %incdec.ptr527 = getelementptr inbounds double, ptr %q337.4669, i64 1, !dbg !2950
  call void @llvm.dbg.value(metadata ptr %incdec.ptr527, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %107, ptr %q337.4669, align 8, !dbg !2951, !tbaa !2792
  %green528 = getelementptr inbounds %struct._PixelPacket, ptr %p.12667, i64 0, i32 1, !dbg !2952
  %108 = load i16, ptr %green528, align 2, !dbg !2952, !tbaa !2326
  %conv530 = uitofp i16 %108 to double, !dbg !2952
  %mul531 = fmul double %conv530, 0x3EF0001000100010, !dbg !2953
  %109 = load double, ptr %scale524, align 8, !dbg !2954, !tbaa !2784
  %110 = load double, ptr %minimum526, align 8, !dbg !2955, !tbaa !2788
  %111 = tail call double @llvm.fmuladd.f64(double %mul531, double %109, double %110), !dbg !2956
  %incdec.ptr535 = getelementptr inbounds double, ptr %q337.4669, i64 2, !dbg !2957
  call void @llvm.dbg.value(metadata ptr %incdec.ptr535, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %111, ptr %incdec.ptr527, align 8, !dbg !2958, !tbaa !2792
  %112 = load i16, ptr %p.12667, align 2, !dbg !2959, !tbaa !2308
  %conv538 = uitofp i16 %112 to double, !dbg !2959
  %mul539 = fmul double %conv538, 0x3EF0001000100010, !dbg !2960
  %113 = load double, ptr %scale524, align 8, !dbg !2961, !tbaa !2784
  %114 = load double, ptr %minimum526, align 8, !dbg !2962, !tbaa !2788
  %115 = tail call double @llvm.fmuladd.f64(double %mul539, double %113, double %114), !dbg !2963
  %incdec.ptr543 = getelementptr inbounds double, ptr %q337.4669, i64 3, !dbg !2964
  call void @llvm.dbg.value(metadata ptr %incdec.ptr543, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %115, ptr %incdec.ptr535, align 8, !dbg !2965, !tbaa !2792
  %incdec.ptr544 = getelementptr inbounds %struct._PixelPacket, ptr %p.12667, i64 1, !dbg !2966
  call void @llvm.dbg.value(metadata ptr %incdec.ptr544, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc546 = add nuw nsw i64 %x.12668, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %inc546, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call516 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2939
  %cmp517 = icmp slt i64 %inc546, %call516, !dbg !2942
  br i1 %cmp517, label %for.body519, label %sw.epilog2309, !dbg !2943, !llvm.loop !2968

if.end548:                                        ; preds = %if.end504
  %116 = load ptr, ptr %map, align 8, !dbg !2970, !tbaa !1150
  %call550 = tail call i32 @LocaleCompare(ptr noundef %116, ptr noundef nonnull @.str.15) #15, !dbg !2972
  %cmp551 = icmp eq i32 %call550, 0, !dbg !2973
  br i1 %cmp551, label %if.then553, label %if.end601, !dbg !2974

if.then553:                                       ; preds = %if.end548
  %call554 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2975
  call void @llvm.dbg.value(metadata ptr %call554, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp555 = icmp eq ptr %call554, null, !dbg !2977
  br i1 %cmp555, label %sw.epilog2309, label %for.cond559.preheader, !dbg !2979

for.cond559.preheader:                            ; preds = %if.then553
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call554, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call560660 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2980
  %cmp561661 = icmp sgt i64 %call560660, 0, !dbg !2983
  br i1 %cmp561661, label %for.body563.lr.ph, label %sw.epilog2309, !dbg !2984

for.body563.lr.ph:                                ; preds = %for.cond559.preheader
  %scale568 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum570 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body563, !dbg !2984

for.body563:                                      ; preds = %for.body563.lr.ph, %for.body563
  %q337.5664 = phi ptr [ %54, %for.body563.lr.ph ], [ %incdec.ptr596, %for.body563 ]
  %x.13663 = phi i64 [ 0, %for.body563.lr.ph ], [ %inc599, %for.body563 ]
  %p.13662 = phi ptr [ %call554, %for.body563.lr.ph ], [ %incdec.ptr597, %for.body563 ]
  call void @llvm.dbg.value(metadata ptr %q337.5664, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %x.13663, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.13662, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red564 = getelementptr inbounds %struct._PixelPacket, ptr %p.13662, i64 0, i32 2, !dbg !2985
  %117 = load i16, ptr %red564, align 2, !dbg !2985, !tbaa !2338
  %conv566 = uitofp i16 %117 to double, !dbg !2985
  %mul567 = fmul double %conv566, 0x3EF0001000100010, !dbg !2987
  %118 = load double, ptr %scale568, align 8, !dbg !2988, !tbaa !2784
  %119 = load double, ptr %minimum570, align 8, !dbg !2989, !tbaa !2788
  %120 = tail call double @llvm.fmuladd.f64(double %mul567, double %118, double %119), !dbg !2990
  %incdec.ptr571 = getelementptr inbounds double, ptr %q337.5664, i64 1, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %incdec.ptr571, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %120, ptr %q337.5664, align 8, !dbg !2992, !tbaa !2792
  %green572 = getelementptr inbounds %struct._PixelPacket, ptr %p.13662, i64 0, i32 1, !dbg !2993
  %121 = load i16, ptr %green572, align 2, !dbg !2993, !tbaa !2326
  %conv574 = uitofp i16 %121 to double, !dbg !2993
  %mul575 = fmul double %conv574, 0x3EF0001000100010, !dbg !2994
  %122 = load double, ptr %scale568, align 8, !dbg !2995, !tbaa !2784
  %123 = load double, ptr %minimum570, align 8, !dbg !2996, !tbaa !2788
  %124 = tail call double @llvm.fmuladd.f64(double %mul575, double %122, double %123), !dbg !2997
  %incdec.ptr579 = getelementptr inbounds double, ptr %q337.5664, i64 2, !dbg !2998
  call void @llvm.dbg.value(metadata ptr %incdec.ptr579, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %124, ptr %incdec.ptr571, align 8, !dbg !2999, !tbaa !2792
  %125 = load i16, ptr %p.13662, align 2, !dbg !3000, !tbaa !2308
  %conv582 = uitofp i16 %125 to double, !dbg !3000
  %mul583 = fmul double %conv582, 0x3EF0001000100010, !dbg !3001
  %126 = load double, ptr %scale568, align 8, !dbg !3002, !tbaa !2784
  %127 = load double, ptr %minimum570, align 8, !dbg !3003, !tbaa !2788
  %128 = tail call double @llvm.fmuladd.f64(double %mul583, double %126, double %127), !dbg !3004
  %incdec.ptr587 = getelementptr inbounds double, ptr %q337.5664, i64 3, !dbg !3005
  call void @llvm.dbg.value(metadata ptr %incdec.ptr587, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %128, ptr %incdec.ptr579, align 8, !dbg !3006, !tbaa !2792
  %opacity588 = getelementptr inbounds %struct._PixelPacket, ptr %p.13662, i64 0, i32 3, !dbg !3007
  %129 = load i16, ptr %opacity588, align 2, !dbg !3007, !tbaa !2403
  %130 = xor i16 %129, -1, !dbg !3007
  %conv591 = uitofp i16 %130 to double, !dbg !3007
  %mul592 = fmul double %conv591, 0x3EF0001000100010, !dbg !3008
  %131 = load double, ptr %scale568, align 8, !dbg !3009, !tbaa !2784
  %132 = load double, ptr %minimum570, align 8, !dbg !3010, !tbaa !2788
  %133 = tail call double @llvm.fmuladd.f64(double %mul592, double %131, double %132), !dbg !3011
  %incdec.ptr596 = getelementptr inbounds double, ptr %q337.5664, i64 4, !dbg !3012
  call void @llvm.dbg.value(metadata ptr %incdec.ptr596, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %133, ptr %incdec.ptr587, align 8, !dbg !3013, !tbaa !2792
  %incdec.ptr597 = getelementptr inbounds %struct._PixelPacket, ptr %p.13662, i64 1, !dbg !3014
  call void @llvm.dbg.value(metadata ptr %incdec.ptr597, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc599 = add nuw nsw i64 %x.13663, 1, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %inc599, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call560 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !2980
  %cmp561 = icmp slt i64 %inc599, %call560, !dbg !2983
  br i1 %cmp561, label %for.body563, label %sw.epilog2309, !dbg !2984, !llvm.loop !3016

if.end601:                                        ; preds = %if.end548
  %134 = load ptr, ptr %map, align 8, !dbg !3018, !tbaa !1150
  %call603 = tail call i32 @LocaleCompare(ptr noundef %134, ptr noundef nonnull @.str.16) #15, !dbg !3020
  %cmp604 = icmp eq i32 %call603, 0, !dbg !3021
  %call607 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !2764
  call void @llvm.dbg.value(metadata ptr %call607, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call607, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp608 = icmp eq ptr %call607, null, !dbg !2764
  br i1 %cmp604, label %if.then606, label %if.end646, !dbg !3022

if.then606:                                       ; preds = %if.end601
  br i1 %cmp608, label %sw.epilog2309, label %for.cond612.preheader, !dbg !3023

for.cond612.preheader:                            ; preds = %if.then606
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call607, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call613655 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3025
  %cmp614656 = icmp sgt i64 %call613655, 0, !dbg !3028
  br i1 %cmp614656, label %for.body616.lr.ph, label %sw.epilog2309, !dbg !3029

for.body616.lr.ph:                                ; preds = %for.cond612.preheader
  %scale621 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum623 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body616, !dbg !3029

for.body616:                                      ; preds = %for.body616.lr.ph, %for.body616
  %q337.6659 = phi ptr [ %54, %for.body616.lr.ph ], [ %incdec.ptr641, %for.body616 ]
  %x.14658 = phi i64 [ 0, %for.body616.lr.ph ], [ %inc644, %for.body616 ]
  %p.14657 = phi ptr [ %call607, %for.body616.lr.ph ], [ %incdec.ptr642, %for.body616 ]
  call void @llvm.dbg.value(metadata ptr %q337.6659, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %x.14658, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.14657, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red617 = getelementptr inbounds %struct._PixelPacket, ptr %p.14657, i64 0, i32 2, !dbg !3030
  %135 = load i16, ptr %red617, align 2, !dbg !3030, !tbaa !2338
  %conv619 = uitofp i16 %135 to double, !dbg !3030
  %mul620 = fmul double %conv619, 0x3EF0001000100010, !dbg !3032
  %136 = load double, ptr %scale621, align 8, !dbg !3033, !tbaa !2784
  %137 = load double, ptr %minimum623, align 8, !dbg !3034, !tbaa !2788
  %138 = tail call double @llvm.fmuladd.f64(double %mul620, double %136, double %137), !dbg !3035
  %incdec.ptr624 = getelementptr inbounds double, ptr %q337.6659, i64 1, !dbg !3036
  call void @llvm.dbg.value(metadata ptr %incdec.ptr624, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %138, ptr %q337.6659, align 8, !dbg !3037, !tbaa !2792
  %green625 = getelementptr inbounds %struct._PixelPacket, ptr %p.14657, i64 0, i32 1, !dbg !3038
  %139 = load i16, ptr %green625, align 2, !dbg !3038, !tbaa !2326
  %conv627 = uitofp i16 %139 to double, !dbg !3038
  %mul628 = fmul double %conv627, 0x3EF0001000100010, !dbg !3039
  %140 = load double, ptr %scale621, align 8, !dbg !3040, !tbaa !2784
  %141 = load double, ptr %minimum623, align 8, !dbg !3041, !tbaa !2788
  %142 = tail call double @llvm.fmuladd.f64(double %mul628, double %140, double %141), !dbg !3042
  %incdec.ptr632 = getelementptr inbounds double, ptr %q337.6659, i64 2, !dbg !3043
  call void @llvm.dbg.value(metadata ptr %incdec.ptr632, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %142, ptr %incdec.ptr624, align 8, !dbg !3044, !tbaa !2792
  %143 = load i16, ptr %p.14657, align 2, !dbg !3045, !tbaa !2308
  %conv635 = uitofp i16 %143 to double, !dbg !3045
  %mul636 = fmul double %conv635, 0x3EF0001000100010, !dbg !3046
  %144 = load double, ptr %scale621, align 8, !dbg !3047, !tbaa !2784
  %145 = load double, ptr %minimum623, align 8, !dbg !3048, !tbaa !2788
  %146 = tail call double @llvm.fmuladd.f64(double %mul636, double %144, double %145), !dbg !3049
  %incdec.ptr640 = getelementptr inbounds double, ptr %q337.6659, i64 3, !dbg !3050
  call void @llvm.dbg.value(metadata ptr %incdec.ptr640, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double %146, ptr %incdec.ptr632, align 8, !dbg !3051, !tbaa !2792
  %incdec.ptr641 = getelementptr inbounds double, ptr %q337.6659, i64 4, !dbg !3052
  call void @llvm.dbg.value(metadata ptr %incdec.ptr641, metadata !2179, metadata !DIExpression()), !dbg !2764
  store double 0.000000e+00, ptr %incdec.ptr640, align 8, !dbg !3053, !tbaa !2792
  %incdec.ptr642 = getelementptr inbounds %struct._PixelPacket, ptr %p.14657, i64 1, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %incdec.ptr642, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc644 = add nuw nsw i64 %x.14658, 1, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %inc644, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call613 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3025
  %cmp614 = icmp slt i64 %inc644, %call613, !dbg !3028
  br i1 %cmp614, label %for.body616, label %sw.epilog2309, !dbg !3029, !llvm.loop !3056

if.end646:                                        ; preds = %if.end601
  br i1 %cmp608, label %sw.epilog2309, label %if.end651, !dbg !3058

if.end651:                                        ; preds = %if.end646
  %call652 = tail call ptr @GetVirtualIndexQueue(ptr noundef %image) #15, !dbg !3059
  call void @llvm.dbg.value(metadata ptr %call652, metadata !2171, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %54, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %call607, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call654648 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3060
  %cmp655649 = icmp sgt i64 %call654648, 0, !dbg !3063
  br i1 %cmp655649, label %for.cond658.preheader.lr.ph, label %sw.epilog2309, !dbg !3064

for.cond658.preheader.lr.ph:                      ; preds = %if.end651
  %scale728 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum730 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  %colorspace705 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %cmp710 = icmp eq ptr %call652, null
  br label %for.cond658.preheader, !dbg !3064

for.cond658.preheader:                            ; preds = %for.cond658.preheader.lr.ph, %for.end736
  %q337.7654 = phi ptr [ %54, %for.cond658.preheader.lr.ph ], [ %q337.8.lcssa, %for.end736 ]
  %x.15652 = phi i64 [ 0, %for.cond658.preheader.lr.ph ], [ %inc739, %for.end736 ]
  %p.15650 = phi ptr [ %call607, %for.cond658.preheader.lr.ph ], [ %incdec.ptr737, %for.end736 ]
  call void @llvm.dbg.value(metadata i64 %x.15652, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.15650, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %q337.7654, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2191
  br i1 %cmp9403, label %for.body661.lr.ph, label %for.end736, !dbg !3065

for.body661.lr.ph:                                ; preds = %for.cond658.preheader
  %add.ptr709 = getelementptr inbounds i16, ptr %call652, i64 %x.15652
  %opacity697 = getelementptr inbounds %struct._PixelPacket, ptr %p.15650, i64 0, i32 3
  %green672 = getelementptr inbounds %struct._PixelPacket, ptr %p.15650, i64 0, i32 1
  %red664 = getelementptr inbounds %struct._PixelPacket, ptr %p.15650, i64 0, i32 2
  br label %for.body661, !dbg !3065

for.body661:                                      ; preds = %for.body661.lr.ph, %sw.epilog732
  %q337.8645 = phi ptr [ %q337.7654, %for.body661.lr.ph ], [ %incdec.ptr733, %sw.epilog732 ]
  %i.2644 = phi i64 [ 0, %for.body661.lr.ph ], [ %inc735, %sw.epilog732 ]
  call void @llvm.dbg.value(metadata ptr %q337.8645, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %i.2644, metadata !2173, metadata !DIExpression()), !dbg !2191
  store double 0.000000e+00, ptr %q337.8645, align 8, !dbg !3068, !tbaa !2792
  %arrayidx662 = getelementptr inbounds i32, ptr %call2, i64 %i.2644, !dbg !3071
  %147 = load i32, ptr %arrayidx662, align 4, !dbg !3071, !tbaa !2216
  switch i32 %147, label %sw.epilog732 [
    i32 14, label %sw.bb663
    i32 6, label %sw.bb663
    i32 9, label %sw.bb671
    i32 12, label %sw.bb671
    i32 3, label %sw.bb679
    i32 19, label %sw.bb679
    i32 1, label %sw.bb687
    i32 13, label %sw.bb696
    i32 2, label %sw.bb704
    i32 11, label %sw.bb724
  ], !dbg !3072

sw.bb663:                                         ; preds = %for.body661, %for.body661
  %148 = load i16, ptr %red664, align 2, !dbg !3073, !tbaa !2338
  %conv666 = uitofp i16 %148 to double, !dbg !3073
  br label %sw.epilog732.sink.split, !dbg !3076

sw.bb671:                                         ; preds = %for.body661, %for.body661
  %149 = load i16, ptr %green672, align 2, !dbg !3077, !tbaa !2326
  %conv674 = uitofp i16 %149 to double, !dbg !3077
  br label %sw.epilog732.sink.split, !dbg !3079

sw.bb679:                                         ; preds = %for.body661, %for.body661
  %150 = load i16, ptr %p.15650, align 2, !dbg !3080, !tbaa !2308
  %conv682 = uitofp i16 %150 to double, !dbg !3080
  br label %sw.epilog732.sink.split, !dbg !3082

sw.bb687:                                         ; preds = %for.body661
  %151 = load i16, ptr %opacity697, align 2, !dbg !3083, !tbaa !2403
  %152 = xor i16 %151, -1, !dbg !3083
  %conv691 = uitofp i16 %152 to double, !dbg !3083
  br label %sw.epilog732.sink.split, !dbg !3085

sw.bb696:                                         ; preds = %for.body661
  %153 = load i16, ptr %opacity697, align 2, !dbg !3086, !tbaa !2403
  %conv699 = uitofp i16 %153 to double, !dbg !3086
  br label %sw.epilog732.sink.split, !dbg !3088

sw.bb704:                                         ; preds = %for.body661
  %154 = load i32, ptr %colorspace705, align 4, !dbg !3089, !tbaa !1443
  %cmp706 = icmp eq i32 %154, 12, !dbg !3092
  br i1 %cmp706, label %if.then708, label %sw.epilog732, !dbg !3093

if.then708:                                       ; preds = %sw.bb704
  br i1 %cmp710, label %cond.end716, label %cond.false713, !dbg !3094

cond.false713:                                    ; preds = %if.then708
  %155 = load i16, ptr %add.ptr709, align 2, !dbg !3094, !tbaa !2741
  %conv715 = zext i16 %155 to i32, !dbg !3094
  br label %cond.end716, !dbg !3094

cond.end716:                                      ; preds = %if.then708, %cond.false713
  %cond717 = phi i32 [ %conv715, %cond.false713 ], [ 0, %if.then708 ], !dbg !3094
  %conv718 = sitofp i32 %cond717 to double, !dbg !3094
  br label %sw.epilog732.sink.split, !dbg !3095

sw.bb724:                                         ; preds = %for.body661
  %call725 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.15650) #20, !dbg !3096
  %conv726 = fpext float %call725 to double, !dbg !3096
  br label %sw.epilog732.sink.split, !dbg !3098

sw.epilog732.sink.split:                          ; preds = %sw.bb663, %sw.bb671, %sw.bb679, %sw.bb687, %sw.bb696, %sw.bb724, %cond.end716
  %conv718.sink = phi double [ %conv718, %cond.end716 ], [ %conv726, %sw.bb724 ], [ %conv699, %sw.bb696 ], [ %conv691, %sw.bb687 ], [ %conv682, %sw.bb679 ], [ %conv674, %sw.bb671 ], [ %conv666, %sw.bb663 ]
  %mul719 = fmul double %conv718.sink, 0x3EF0001000100010, !dbg !3099
  %156 = load double, ptr %scale728, align 8, !dbg !3099, !tbaa !2784
  %157 = load double, ptr %minimum730, align 8, !dbg !3099, !tbaa !2788
  %158 = tail call double @llvm.fmuladd.f64(double %mul719, double %156, double %157), !dbg !3099
  store double %158, ptr %q337.8645, align 8, !dbg !3099, !tbaa !2792
  br label %sw.epilog732, !dbg !3100

sw.epilog732:                                     ; preds = %sw.epilog732.sink.split, %for.body661, %sw.bb704
  %incdec.ptr733 = getelementptr inbounds double, ptr %q337.8645, i64 1, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %incdec.ptr733, metadata !2179, metadata !DIExpression()), !dbg !2764
  %inc735 = add nuw nsw i64 %i.2644, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %inc735, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond801.not = icmp eq i64 %inc735, %call1, !dbg !3102
  br i1 %exitcond801.not, label %for.end736, label %for.body661, !dbg !3065, !llvm.loop !3103

for.end736:                                       ; preds = %sw.epilog732, %for.cond658.preheader
  %q337.8.lcssa = phi ptr [ %q337.7654, %for.cond658.preheader ], [ %incdec.ptr733, %sw.epilog732 ], !dbg !2764
  %incdec.ptr737 = getelementptr inbounds %struct._PixelPacket, ptr %p.15650, i64 1, !dbg !3105
  call void @llvm.dbg.value(metadata ptr %incdec.ptr737, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc739 = add nuw nsw i64 %x.15652, 1, !dbg !3106
  call void @llvm.dbg.value(metadata ptr %q337.8.lcssa, metadata !2179, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %inc739, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call654 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3060
  %cmp655 = icmp slt i64 %inc739, %call654, !dbg !3063
  br i1 %cmp655, label %for.cond658.preheader, label %sw.epilog2309, !dbg !3064, !llvm.loop !3107

sw.bb742:                                         ; preds = %for.end
  %pixels744 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 6, !dbg !3109
  %159 = load ptr, ptr %pixels744, align 8, !dbg !3109, !tbaa !1138
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  %160 = load ptr, ptr %map, align 8, !dbg !3111, !tbaa !1150
  %call746 = tail call i32 @LocaleCompare(ptr noundef %160, ptr noundef nonnull @.str.11) #15, !dbg !3113
  %cmp747 = icmp eq i32 %call746, 0, !dbg !3114
  br i1 %cmp747, label %if.then749, label %if.end791, !dbg !3115

if.then749:                                       ; preds = %sw.bb742
  %call750 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %call750, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp751 = icmp eq ptr %call750, null, !dbg !3118
  br i1 %cmp751, label %sw.epilog2309, label %for.cond755.preheader, !dbg !3120

for.cond755.preheader:                            ; preds = %if.then749
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call750, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call756638 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3121
  %cmp757639 = icmp sgt i64 %call756638, 0, !dbg !3124
  br i1 %cmp757639, label %for.body759.lr.ph, label %sw.epilog2309, !dbg !3125

for.body759.lr.ph:                                ; preds = %for.cond755.preheader
  %scale764 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum766 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body759, !dbg !3125

for.body759:                                      ; preds = %for.body759.lr.ph, %for.body759
  %q743.0642 = phi ptr [ %159, %for.body759.lr.ph ], [ %incdec.ptr786, %for.body759 ]
  %x.16641 = phi i64 [ 0, %for.body759.lr.ph ], [ %inc789, %for.body759 ]
  %p.16640 = phi ptr [ %call750, %for.body759.lr.ph ], [ %incdec.ptr787, %for.body759 ]
  call void @llvm.dbg.value(metadata ptr %q743.0642, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %x.16641, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.16640, metadata !2172, metadata !DIExpression()), !dbg !2191
  %161 = load i16, ptr %p.16640, align 2, !dbg !3126, !tbaa !2308
  %conv762 = uitofp i16 %161 to double, !dbg !3126
  %mul763 = fmul double %conv762, 0x3EF0001000100010, !dbg !3128
  %162 = load double, ptr %scale764, align 8, !dbg !3129, !tbaa !2784
  %163 = load double, ptr %minimum766, align 8, !dbg !3130, !tbaa !2788
  %164 = tail call double @llvm.fmuladd.f64(double %mul763, double %162, double %163), !dbg !3131
  %conv767 = fptrunc double %164 to float, !dbg !3132
  %incdec.ptr768 = getelementptr inbounds float, ptr %q743.0642, i64 1, !dbg !3133
  call void @llvm.dbg.value(metadata ptr %incdec.ptr768, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv767, ptr %q743.0642, align 4, !dbg !3134, !tbaa !3135
  %green769 = getelementptr inbounds %struct._PixelPacket, ptr %p.16640, i64 0, i32 1, !dbg !3136
  %165 = load i16, ptr %green769, align 2, !dbg !3136, !tbaa !2326
  %conv771 = uitofp i16 %165 to double, !dbg !3136
  %mul772 = fmul double %conv771, 0x3EF0001000100010, !dbg !3137
  %166 = tail call double @llvm.fmuladd.f64(double %mul772, double %162, double %163), !dbg !3138
  %conv776 = fptrunc double %166 to float, !dbg !3139
  %incdec.ptr777 = getelementptr inbounds float, ptr %q743.0642, i64 2, !dbg !3140
  call void @llvm.dbg.value(metadata ptr %incdec.ptr777, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv776, ptr %incdec.ptr768, align 4, !dbg !3141, !tbaa !3135
  %red778 = getelementptr inbounds %struct._PixelPacket, ptr %p.16640, i64 0, i32 2, !dbg !3142
  %167 = load i16, ptr %red778, align 2, !dbg !3142, !tbaa !2338
  %conv780 = uitofp i16 %167 to double, !dbg !3142
  %mul781 = fmul double %conv780, 0x3EF0001000100010, !dbg !3143
  %168 = tail call double @llvm.fmuladd.f64(double %mul781, double %162, double %163), !dbg !3144
  %conv785 = fptrunc double %168 to float, !dbg !3145
  %incdec.ptr786 = getelementptr inbounds float, ptr %q743.0642, i64 3, !dbg !3146
  call void @llvm.dbg.value(metadata ptr %incdec.ptr786, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv785, ptr %incdec.ptr777, align 4, !dbg !3147, !tbaa !3135
  %incdec.ptr787 = getelementptr inbounds %struct._PixelPacket, ptr %p.16640, i64 1, !dbg !3148
  call void @llvm.dbg.value(metadata ptr %incdec.ptr787, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc789 = add nuw nsw i64 %x.16641, 1, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %inc789, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call756 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3121
  %cmp757 = icmp slt i64 %inc789, %call756, !dbg !3124
  br i1 %cmp757, label %for.body759, label %sw.epilog2309, !dbg !3125, !llvm.loop !3150

if.end791:                                        ; preds = %sw.bb742
  %169 = load ptr, ptr %map, align 8, !dbg !3152, !tbaa !1150
  %call793 = tail call i32 @LocaleCompare(ptr noundef %169, ptr noundef nonnull @.str.12) #15, !dbg !3154
  %cmp794 = icmp eq i32 %call793, 0, !dbg !3155
  br i1 %cmp794, label %if.then796, label %if.end850, !dbg !3156

if.then796:                                       ; preds = %if.end791
  %call797 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3157
  call void @llvm.dbg.value(metadata ptr %call797, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp798 = icmp eq ptr %call797, null, !dbg !3159
  br i1 %cmp798, label %sw.epilog2309, label %for.cond802.preheader, !dbg !3161

for.cond802.preheader:                            ; preds = %if.then796
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call797, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call803633 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3162
  %cmp804634 = icmp sgt i64 %call803633, 0, !dbg !3165
  br i1 %cmp804634, label %for.body806.lr.ph, label %sw.epilog2309, !dbg !3166

for.body806.lr.ph:                                ; preds = %for.cond802.preheader
  %scale811 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum813 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body806, !dbg !3166

for.body806:                                      ; preds = %for.body806.lr.ph, %for.body806
  %q743.1637 = phi ptr [ %159, %for.body806.lr.ph ], [ %incdec.ptr845, %for.body806 ]
  %x.17636 = phi i64 [ 0, %for.body806.lr.ph ], [ %inc848, %for.body806 ]
  %p.17635 = phi ptr [ %call797, %for.body806.lr.ph ], [ %incdec.ptr846, %for.body806 ]
  call void @llvm.dbg.value(metadata ptr %q743.1637, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %x.17636, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.17635, metadata !2172, metadata !DIExpression()), !dbg !2191
  %170 = load i16, ptr %p.17635, align 2, !dbg !3167, !tbaa !2308
  %conv809 = uitofp i16 %170 to double, !dbg !3167
  %mul810 = fmul double %conv809, 0x3EF0001000100010, !dbg !3169
  %171 = load double, ptr %scale811, align 8, !dbg !3170, !tbaa !2784
  %172 = load double, ptr %minimum813, align 8, !dbg !3171, !tbaa !2788
  %173 = tail call double @llvm.fmuladd.f64(double %mul810, double %171, double %172), !dbg !3172
  %conv814 = fptrunc double %173 to float, !dbg !3173
  %incdec.ptr815 = getelementptr inbounds float, ptr %q743.1637, i64 1, !dbg !3174
  call void @llvm.dbg.value(metadata ptr %incdec.ptr815, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv814, ptr %q743.1637, align 4, !dbg !3175, !tbaa !3135
  %green816 = getelementptr inbounds %struct._PixelPacket, ptr %p.17635, i64 0, i32 1, !dbg !3176
  %174 = load i16, ptr %green816, align 2, !dbg !3176, !tbaa !2326
  %conv818 = uitofp i16 %174 to double, !dbg !3176
  %mul819 = fmul double %conv818, 0x3EF0001000100010, !dbg !3177
  %175 = tail call double @llvm.fmuladd.f64(double %mul819, double %171, double %172), !dbg !3178
  %conv823 = fptrunc double %175 to float, !dbg !3179
  %incdec.ptr824 = getelementptr inbounds float, ptr %q743.1637, i64 2, !dbg !3180
  call void @llvm.dbg.value(metadata ptr %incdec.ptr824, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv823, ptr %incdec.ptr815, align 4, !dbg !3181, !tbaa !3135
  %red825 = getelementptr inbounds %struct._PixelPacket, ptr %p.17635, i64 0, i32 2, !dbg !3182
  %176 = load i16, ptr %red825, align 2, !dbg !3182, !tbaa !2338
  %conv827 = uitofp i16 %176 to double, !dbg !3182
  %mul828 = fmul double %conv827, 0x3EF0001000100010, !dbg !3183
  %177 = tail call double @llvm.fmuladd.f64(double %mul828, double %171, double %172), !dbg !3184
  %conv832 = fptrunc double %177 to float, !dbg !3185
  %incdec.ptr833 = getelementptr inbounds float, ptr %q743.1637, i64 3, !dbg !3186
  call void @llvm.dbg.value(metadata ptr %incdec.ptr833, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv832, ptr %incdec.ptr824, align 4, !dbg !3187, !tbaa !3135
  %opacity834 = getelementptr inbounds %struct._PixelPacket, ptr %p.17635, i64 0, i32 3, !dbg !3188
  %178 = load i16, ptr %opacity834, align 2, !dbg !3188, !tbaa !2403
  %179 = xor i16 %178, -1, !dbg !3188
  %conv839 = uitofp i16 %179 to double, !dbg !3189
  %mul840 = fmul double %conv839, 0x3EF0001000100010, !dbg !3190
  %180 = tail call double @llvm.fmuladd.f64(double %mul840, double %171, double %172), !dbg !3191
  %conv844 = fptrunc double %180 to float, !dbg !3192
  %incdec.ptr845 = getelementptr inbounds float, ptr %q743.1637, i64 4, !dbg !3193
  call void @llvm.dbg.value(metadata ptr %incdec.ptr845, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv844, ptr %incdec.ptr833, align 4, !dbg !3194, !tbaa !3135
  %incdec.ptr846 = getelementptr inbounds %struct._PixelPacket, ptr %p.17635, i64 1, !dbg !3195
  call void @llvm.dbg.value(metadata ptr %incdec.ptr846, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc848 = add nuw nsw i64 %x.17636, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %inc848, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call803 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3162
  %cmp804 = icmp slt i64 %inc848, %call803, !dbg !3165
  br i1 %cmp804, label %for.body806, label %sw.epilog2309, !dbg !3166, !llvm.loop !3197

if.end850:                                        ; preds = %if.end791
  %181 = load ptr, ptr %map, align 8, !dbg !3199, !tbaa !1150
  %call852 = tail call i32 @LocaleCompare(ptr noundef %181, ptr noundef nonnull @.str.13) #15, !dbg !3201
  %cmp853 = icmp eq i32 %call852, 0, !dbg !3202
  br i1 %cmp853, label %if.then855, label %if.end898, !dbg !3203

if.then855:                                       ; preds = %if.end850
  %call856 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3204
  call void @llvm.dbg.value(metadata ptr %call856, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp857 = icmp eq ptr %call856, null, !dbg !3206
  br i1 %cmp857, label %sw.epilog2309, label %for.cond861.preheader, !dbg !3208

for.cond861.preheader:                            ; preds = %if.then855
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call856, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call862628 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3209
  %cmp863629 = icmp sgt i64 %call862628, 0, !dbg !3212
  br i1 %cmp863629, label %for.body865.lr.ph, label %sw.epilog2309, !dbg !3213

for.body865.lr.ph:                                ; preds = %for.cond861.preheader
  %scale870 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum872 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body865, !dbg !3213

for.body865:                                      ; preds = %for.body865.lr.ph, %for.body865
  %q743.2632 = phi ptr [ %159, %for.body865.lr.ph ], [ %incdec.ptr893, %for.body865 ]
  %x.18631 = phi i64 [ 0, %for.body865.lr.ph ], [ %inc896, %for.body865 ]
  %p.18630 = phi ptr [ %call856, %for.body865.lr.ph ], [ %incdec.ptr894, %for.body865 ]
  call void @llvm.dbg.value(metadata ptr %q743.2632, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %x.18631, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.18630, metadata !2172, metadata !DIExpression()), !dbg !2191
  %182 = load i16, ptr %p.18630, align 2, !dbg !3214, !tbaa !2308
  %conv868 = uitofp i16 %182 to double, !dbg !3214
  %mul869 = fmul double %conv868, 0x3EF0001000100010, !dbg !3216
  %183 = load double, ptr %scale870, align 8, !dbg !3217, !tbaa !2784
  %184 = load double, ptr %minimum872, align 8, !dbg !3218, !tbaa !2788
  %185 = tail call double @llvm.fmuladd.f64(double %mul869, double %183, double %184), !dbg !3219
  %conv873 = fptrunc double %185 to float, !dbg !3220
  %incdec.ptr874 = getelementptr inbounds float, ptr %q743.2632, i64 1, !dbg !3221
  call void @llvm.dbg.value(metadata ptr %incdec.ptr874, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv873, ptr %q743.2632, align 4, !dbg !3222, !tbaa !3135
  %green875 = getelementptr inbounds %struct._PixelPacket, ptr %p.18630, i64 0, i32 1, !dbg !3223
  %186 = load i16, ptr %green875, align 2, !dbg !3223, !tbaa !2326
  %conv877 = uitofp i16 %186 to double, !dbg !3223
  %mul878 = fmul double %conv877, 0x3EF0001000100010, !dbg !3224
  %187 = tail call double @llvm.fmuladd.f64(double %mul878, double %183, double %184), !dbg !3225
  %conv882 = fptrunc double %187 to float, !dbg !3226
  %incdec.ptr883 = getelementptr inbounds float, ptr %q743.2632, i64 2, !dbg !3227
  call void @llvm.dbg.value(metadata ptr %incdec.ptr883, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv882, ptr %incdec.ptr874, align 4, !dbg !3228, !tbaa !3135
  %red884 = getelementptr inbounds %struct._PixelPacket, ptr %p.18630, i64 0, i32 2, !dbg !3229
  %188 = load i16, ptr %red884, align 2, !dbg !3229, !tbaa !2338
  %conv886 = uitofp i16 %188 to double, !dbg !3229
  %mul887 = fmul double %conv886, 0x3EF0001000100010, !dbg !3230
  %189 = tail call double @llvm.fmuladd.f64(double %mul887, double %183, double %184), !dbg !3231
  %conv891 = fptrunc double %189 to float, !dbg !3232
  %incdec.ptr892 = getelementptr inbounds float, ptr %q743.2632, i64 3, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %incdec.ptr892, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv891, ptr %incdec.ptr883, align 4, !dbg !3234, !tbaa !3135
  %incdec.ptr893 = getelementptr inbounds float, ptr %q743.2632, i64 4, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %incdec.ptr893, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float 0.000000e+00, ptr %incdec.ptr892, align 4, !dbg !3236, !tbaa !3135
  %incdec.ptr894 = getelementptr inbounds %struct._PixelPacket, ptr %p.18630, i64 1, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %incdec.ptr894, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc896 = add nuw nsw i64 %x.18631, 1, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %inc896, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call862 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3209
  %cmp863 = icmp slt i64 %inc896, %call862, !dbg !3212
  br i1 %cmp863, label %for.body865, label %sw.epilog2309, !dbg !3213, !llvm.loop !3239

if.end898:                                        ; preds = %if.end850
  %190 = load ptr, ptr %map, align 8, !dbg !3241, !tbaa !1150
  %call900 = tail call i32 @LocaleCompare(ptr noundef %190, ptr noundef nonnull @.str.14) #15, !dbg !3243
  %cmp901 = icmp eq i32 %call900, 0, !dbg !3244
  br i1 %cmp901, label %if.then903, label %if.end926, !dbg !3245

if.then903:                                       ; preds = %if.end898
  %call904 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %call904, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp905 = icmp eq ptr %call904, null, !dbg !3248
  br i1 %cmp905, label %sw.epilog2309, label %for.cond909.preheader, !dbg !3250

for.cond909.preheader:                            ; preds = %if.then903
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call904, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call910623 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3251
  %cmp911624 = icmp sgt i64 %call910623, 0, !dbg !3254
  br i1 %cmp911624, label %for.body913.lr.ph, label %sw.epilog2309, !dbg !3255

for.body913.lr.ph:                                ; preds = %for.cond909.preheader
  %scale917 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum919 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body913, !dbg !3255

for.body913:                                      ; preds = %for.body913.lr.ph, %for.body913
  %q743.3627 = phi ptr [ %159, %for.body913.lr.ph ], [ %incdec.ptr921, %for.body913 ]
  %x.19626 = phi i64 [ 0, %for.body913.lr.ph ], [ %inc924, %for.body913 ]
  %p.19625 = phi ptr [ %call904, %for.body913.lr.ph ], [ %incdec.ptr922, %for.body913 ]
  call void @llvm.dbg.value(metadata ptr %q743.3627, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %x.19626, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.19625, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call914 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.19625) #20, !dbg !3256
  %conv915 = fpext float %call914 to double, !dbg !3256
  %mul916 = fmul double %conv915, 0x3EF0001000100010, !dbg !3258
  %191 = load double, ptr %scale917, align 8, !dbg !3259, !tbaa !2784
  %192 = load double, ptr %minimum919, align 8, !dbg !3260, !tbaa !2788
  %193 = tail call double @llvm.fmuladd.f64(double %mul916, double %191, double %192), !dbg !3261
  %conv920 = fptrunc double %193 to float, !dbg !3262
  %incdec.ptr921 = getelementptr inbounds float, ptr %q743.3627, i64 1, !dbg !3263
  call void @llvm.dbg.value(metadata ptr %incdec.ptr921, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv920, ptr %q743.3627, align 4, !dbg !3264, !tbaa !3135
  %incdec.ptr922 = getelementptr inbounds %struct._PixelPacket, ptr %p.19625, i64 1, !dbg !3265
  call void @llvm.dbg.value(metadata ptr %incdec.ptr922, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc924 = add nuw nsw i64 %x.19626, 1, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %inc924, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call910 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3251
  %cmp911 = icmp slt i64 %inc924, %call910, !dbg !3254
  br i1 %cmp911, label %for.body913, label %sw.epilog2309, !dbg !3255, !llvm.loop !3267

if.end926:                                        ; preds = %if.end898
  %194 = load ptr, ptr %map, align 8, !dbg !3269, !tbaa !1150
  %call928 = tail call i32 @LocaleCompare(ptr noundef %194, ptr noundef nonnull @.str.4) #15, !dbg !3271
  %cmp929 = icmp eq i32 %call928, 0, !dbg !3272
  br i1 %cmp929, label %if.then931, label %if.end973, !dbg !3273

if.then931:                                       ; preds = %if.end926
  %call932 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %call932, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp933 = icmp eq ptr %call932, null, !dbg !3276
  br i1 %cmp933, label %sw.epilog2309, label %for.cond937.preheader, !dbg !3278

for.cond937.preheader:                            ; preds = %if.then931
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call932, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call938618 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3279
  %cmp939619 = icmp sgt i64 %call938618, 0, !dbg !3282
  br i1 %cmp939619, label %for.body941.lr.ph, label %sw.epilog2309, !dbg !3283

for.body941.lr.ph:                                ; preds = %for.cond937.preheader
  %scale946 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum948 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body941, !dbg !3283

for.body941:                                      ; preds = %for.body941.lr.ph, %for.body941
  %q743.4622 = phi ptr [ %159, %for.body941.lr.ph ], [ %incdec.ptr968, %for.body941 ]
  %x.20621 = phi i64 [ 0, %for.body941.lr.ph ], [ %inc971, %for.body941 ]
  %p.20620 = phi ptr [ %call932, %for.body941.lr.ph ], [ %incdec.ptr969, %for.body941 ]
  call void @llvm.dbg.value(metadata ptr %q743.4622, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %x.20621, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.20620, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red942 = getelementptr inbounds %struct._PixelPacket, ptr %p.20620, i64 0, i32 2, !dbg !3284
  %195 = load i16, ptr %red942, align 2, !dbg !3284, !tbaa !2338
  %conv944 = uitofp i16 %195 to double, !dbg !3284
  %mul945 = fmul double %conv944, 0x3EF0001000100010, !dbg !3286
  %196 = load double, ptr %scale946, align 8, !dbg !3287, !tbaa !2784
  %197 = load double, ptr %minimum948, align 8, !dbg !3288, !tbaa !2788
  %198 = tail call double @llvm.fmuladd.f64(double %mul945, double %196, double %197), !dbg !3289
  %conv949 = fptrunc double %198 to float, !dbg !3290
  %incdec.ptr950 = getelementptr inbounds float, ptr %q743.4622, i64 1, !dbg !3291
  call void @llvm.dbg.value(metadata ptr %incdec.ptr950, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv949, ptr %q743.4622, align 4, !dbg !3292, !tbaa !3135
  %green951 = getelementptr inbounds %struct._PixelPacket, ptr %p.20620, i64 0, i32 1, !dbg !3293
  %199 = load i16, ptr %green951, align 2, !dbg !3293, !tbaa !2326
  %conv953 = uitofp i16 %199 to double, !dbg !3293
  %mul954 = fmul double %conv953, 0x3EF0001000100010, !dbg !3294
  %200 = tail call double @llvm.fmuladd.f64(double %mul954, double %196, double %197), !dbg !3295
  %conv958 = fptrunc double %200 to float, !dbg !3296
  %incdec.ptr959 = getelementptr inbounds float, ptr %q743.4622, i64 2, !dbg !3297
  call void @llvm.dbg.value(metadata ptr %incdec.ptr959, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv958, ptr %incdec.ptr950, align 4, !dbg !3298, !tbaa !3135
  %201 = load i16, ptr %p.20620, align 2, !dbg !3299, !tbaa !2308
  %conv962 = uitofp i16 %201 to double, !dbg !3299
  %mul963 = fmul double %conv962, 0x3EF0001000100010, !dbg !3300
  %202 = tail call double @llvm.fmuladd.f64(double %mul963, double %196, double %197), !dbg !3301
  %conv967 = fptrunc double %202 to float, !dbg !3302
  %incdec.ptr968 = getelementptr inbounds float, ptr %q743.4622, i64 3, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %incdec.ptr968, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv967, ptr %incdec.ptr959, align 4, !dbg !3304, !tbaa !3135
  %incdec.ptr969 = getelementptr inbounds %struct._PixelPacket, ptr %p.20620, i64 1, !dbg !3305
  call void @llvm.dbg.value(metadata ptr %incdec.ptr969, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc971 = add nuw nsw i64 %x.20621, 1, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %inc971, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call938 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3279
  %cmp939 = icmp slt i64 %inc971, %call938, !dbg !3282
  br i1 %cmp939, label %for.body941, label %sw.epilog2309, !dbg !3283, !llvm.loop !3307

if.end973:                                        ; preds = %if.end926
  %203 = load ptr, ptr %map, align 8, !dbg !3309, !tbaa !1150
  %call975 = tail call i32 @LocaleCompare(ptr noundef %203, ptr noundef nonnull @.str.15) #15, !dbg !3311
  %cmp976 = icmp eq i32 %call975, 0, !dbg !3312
  br i1 %cmp976, label %if.then978, label %if.end1030, !dbg !3313

if.then978:                                       ; preds = %if.end973
  %call979 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3314
  call void @llvm.dbg.value(metadata ptr %call979, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp980 = icmp eq ptr %call979, null, !dbg !3316
  br i1 %cmp980, label %sw.epilog2309, label %for.cond984.preheader, !dbg !3318

for.cond984.preheader:                            ; preds = %if.then978
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call979, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call985613 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3319
  %cmp986614 = icmp sgt i64 %call985613, 0, !dbg !3322
  br i1 %cmp986614, label %for.body988.lr.ph, label %sw.epilog2309, !dbg !3323

for.body988.lr.ph:                                ; preds = %for.cond984.preheader
  %scale993 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum995 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body988, !dbg !3323

for.body988:                                      ; preds = %for.body988.lr.ph, %for.body988
  %q743.5617 = phi ptr [ %159, %for.body988.lr.ph ], [ %incdec.ptr1025, %for.body988 ]
  %x.21616 = phi i64 [ 0, %for.body988.lr.ph ], [ %inc1028, %for.body988 ]
  %p.21615 = phi ptr [ %call979, %for.body988.lr.ph ], [ %incdec.ptr1026, %for.body988 ]
  call void @llvm.dbg.value(metadata ptr %q743.5617, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %x.21616, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.21615, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red989 = getelementptr inbounds %struct._PixelPacket, ptr %p.21615, i64 0, i32 2, !dbg !3324
  %204 = load i16, ptr %red989, align 2, !dbg !3324, !tbaa !2338
  %conv991 = uitofp i16 %204 to double, !dbg !3324
  %mul992 = fmul double %conv991, 0x3EF0001000100010, !dbg !3326
  %205 = load double, ptr %scale993, align 8, !dbg !3327, !tbaa !2784
  %206 = load double, ptr %minimum995, align 8, !dbg !3328, !tbaa !2788
  %207 = tail call double @llvm.fmuladd.f64(double %mul992, double %205, double %206), !dbg !3329
  %conv996 = fptrunc double %207 to float, !dbg !3330
  %incdec.ptr997 = getelementptr inbounds float, ptr %q743.5617, i64 1, !dbg !3331
  call void @llvm.dbg.value(metadata ptr %incdec.ptr997, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv996, ptr %q743.5617, align 4, !dbg !3332, !tbaa !3135
  %green998 = getelementptr inbounds %struct._PixelPacket, ptr %p.21615, i64 0, i32 1, !dbg !3333
  %208 = load i16, ptr %green998, align 2, !dbg !3333, !tbaa !2326
  %conv1000 = uitofp i16 %208 to double, !dbg !3333
  %mul1001 = fmul double %conv1000, 0x3EF0001000100010, !dbg !3334
  %209 = tail call double @llvm.fmuladd.f64(double %mul1001, double %205, double %206), !dbg !3335
  %conv1005 = fptrunc double %209 to float, !dbg !3336
  %incdec.ptr1006 = getelementptr inbounds float, ptr %q743.5617, i64 2, !dbg !3337
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1006, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv1005, ptr %incdec.ptr997, align 4, !dbg !3338, !tbaa !3135
  %210 = load i16, ptr %p.21615, align 2, !dbg !3339, !tbaa !2308
  %conv1009 = uitofp i16 %210 to double, !dbg !3339
  %mul1010 = fmul double %conv1009, 0x3EF0001000100010, !dbg !3340
  %211 = tail call double @llvm.fmuladd.f64(double %mul1010, double %205, double %206), !dbg !3341
  %conv1014 = fptrunc double %211 to float, !dbg !3342
  %incdec.ptr1015 = getelementptr inbounds float, ptr %q743.5617, i64 3, !dbg !3343
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1015, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv1014, ptr %incdec.ptr1006, align 4, !dbg !3344, !tbaa !3135
  %opacity1016 = getelementptr inbounds %struct._PixelPacket, ptr %p.21615, i64 0, i32 3, !dbg !3345
  %212 = load i16, ptr %opacity1016, align 2, !dbg !3345, !tbaa !2403
  %213 = xor i16 %212, -1, !dbg !3345
  %conv1019 = uitofp i16 %213 to double, !dbg !3345
  %mul1020 = fmul double %conv1019, 0x3EF0001000100010, !dbg !3346
  %214 = tail call double @llvm.fmuladd.f64(double %mul1020, double %205, double %206), !dbg !3347
  %conv1024 = fptrunc double %214 to float, !dbg !3348
  %incdec.ptr1025 = getelementptr inbounds float, ptr %q743.5617, i64 4, !dbg !3349
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1025, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv1024, ptr %incdec.ptr1015, align 4, !dbg !3350, !tbaa !3135
  %incdec.ptr1026 = getelementptr inbounds %struct._PixelPacket, ptr %p.21615, i64 1, !dbg !3351
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1026, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1028 = add nuw nsw i64 %x.21616, 1, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %inc1028, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call985 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3319
  %cmp986 = icmp slt i64 %inc1028, %call985, !dbg !3322
  br i1 %cmp986, label %for.body988, label %sw.epilog2309, !dbg !3323, !llvm.loop !3353

if.end1030:                                       ; preds = %if.end973
  %215 = load ptr, ptr %map, align 8, !dbg !3355, !tbaa !1150
  %call1032 = tail call i32 @LocaleCompare(ptr noundef %215, ptr noundef nonnull @.str.16) #15, !dbg !3357
  %cmp1033 = icmp eq i32 %call1032, 0, !dbg !3358
  %call1036 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %call1036, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1036, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1037 = icmp eq ptr %call1036, null, !dbg !3110
  br i1 %cmp1033, label %if.then1035, label %if.end1078, !dbg !3359

if.then1035:                                      ; preds = %if.end1030
  br i1 %cmp1037, label %sw.epilog2309, label %for.cond1041.preheader, !dbg !3360

for.cond1041.preheader:                           ; preds = %if.then1035
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1036, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1042608 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3362
  %cmp1043609 = icmp sgt i64 %call1042608, 0, !dbg !3365
  br i1 %cmp1043609, label %for.body1045.lr.ph, label %sw.epilog2309, !dbg !3366

for.body1045.lr.ph:                               ; preds = %for.cond1041.preheader
  %scale1050 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum1052 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  br label %for.body1045, !dbg !3366

for.body1045:                                     ; preds = %for.body1045.lr.ph, %for.body1045
  %q743.6612 = phi ptr [ %159, %for.body1045.lr.ph ], [ %incdec.ptr1073, %for.body1045 ]
  %x.22611 = phi i64 [ 0, %for.body1045.lr.ph ], [ %inc1076, %for.body1045 ]
  %p.22610 = phi ptr [ %call1036, %for.body1045.lr.ph ], [ %incdec.ptr1074, %for.body1045 ]
  call void @llvm.dbg.value(metadata ptr %q743.6612, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %x.22611, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.22610, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1046 = getelementptr inbounds %struct._PixelPacket, ptr %p.22610, i64 0, i32 2, !dbg !3367
  %216 = load i16, ptr %red1046, align 2, !dbg !3367, !tbaa !2338
  %conv1048 = uitofp i16 %216 to double, !dbg !3367
  %mul1049 = fmul double %conv1048, 0x3EF0001000100010, !dbg !3369
  %217 = load double, ptr %scale1050, align 8, !dbg !3370, !tbaa !2784
  %218 = load double, ptr %minimum1052, align 8, !dbg !3371, !tbaa !2788
  %219 = tail call double @llvm.fmuladd.f64(double %mul1049, double %217, double %218), !dbg !3372
  %conv1053 = fptrunc double %219 to float, !dbg !3373
  %incdec.ptr1054 = getelementptr inbounds float, ptr %q743.6612, i64 1, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1054, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv1053, ptr %q743.6612, align 4, !dbg !3375, !tbaa !3135
  %green1055 = getelementptr inbounds %struct._PixelPacket, ptr %p.22610, i64 0, i32 1, !dbg !3376
  %220 = load i16, ptr %green1055, align 2, !dbg !3376, !tbaa !2326
  %conv1057 = uitofp i16 %220 to double, !dbg !3376
  %mul1058 = fmul double %conv1057, 0x3EF0001000100010, !dbg !3377
  %221 = tail call double @llvm.fmuladd.f64(double %mul1058, double %217, double %218), !dbg !3378
  %conv1062 = fptrunc double %221 to float, !dbg !3379
  %incdec.ptr1063 = getelementptr inbounds float, ptr %q743.6612, i64 2, !dbg !3380
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1063, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv1062, ptr %incdec.ptr1054, align 4, !dbg !3381, !tbaa !3135
  %222 = load i16, ptr %p.22610, align 2, !dbg !3382, !tbaa !2308
  %conv1066 = uitofp i16 %222 to double, !dbg !3382
  %mul1067 = fmul double %conv1066, 0x3EF0001000100010, !dbg !3383
  %223 = tail call double @llvm.fmuladd.f64(double %mul1067, double %217, double %218), !dbg !3384
  %conv1071 = fptrunc double %223 to float, !dbg !3385
  %incdec.ptr1072 = getelementptr inbounds float, ptr %q743.6612, i64 3, !dbg !3386
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1072, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float %conv1071, ptr %incdec.ptr1063, align 4, !dbg !3387, !tbaa !3135
  %incdec.ptr1073 = getelementptr inbounds float, ptr %q743.6612, i64 4, !dbg !3388
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1073, metadata !2181, metadata !DIExpression()), !dbg !3110
  store float 0.000000e+00, ptr %incdec.ptr1072, align 4, !dbg !3389, !tbaa !3135
  %incdec.ptr1074 = getelementptr inbounds %struct._PixelPacket, ptr %p.22610, i64 1, !dbg !3390
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1074, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1076 = add nuw nsw i64 %x.22611, 1, !dbg !3391
  call void @llvm.dbg.value(metadata i64 %inc1076, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1042 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3362
  %cmp1043 = icmp slt i64 %inc1076, %call1042, !dbg !3365
  br i1 %cmp1043, label %for.body1045, label %sw.epilog2309, !dbg !3366, !llvm.loop !3392

if.end1078:                                       ; preds = %if.end1030
  br i1 %cmp1037, label %sw.epilog2309, label %if.end1083, !dbg !3394

if.end1083:                                       ; preds = %if.end1078
  %call1084 = tail call ptr @GetVirtualIndexQueue(ptr noundef %image) #15, !dbg !3395
  call void @llvm.dbg.value(metadata ptr %call1084, metadata !2171, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %159, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata ptr %call1036, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1086601 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3396
  %cmp1087602 = icmp sgt i64 %call1086601, 0, !dbg !3399
  br i1 %cmp1087602, label %for.cond1090.preheader.lr.ph, label %sw.epilog2309, !dbg !3400

for.cond1090.preheader.lr.ph:                     ; preds = %if.end1083
  %scale1166 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 5
  %minimum1168 = getelementptr inbounds %struct._QuantumInfo, ptr %13, i64 0, i32 3
  %colorspace1142 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %cmp1147 = icmp eq ptr %call1084, null
  br label %for.cond1090.preheader, !dbg !3400

for.cond1090.preheader:                           ; preds = %for.cond1090.preheader.lr.ph, %for.end1175
  %q743.7607 = phi ptr [ %159, %for.cond1090.preheader.lr.ph ], [ %q743.8.lcssa, %for.end1175 ]
  %x.23605 = phi i64 [ 0, %for.cond1090.preheader.lr.ph ], [ %inc1178, %for.end1175 ]
  %p.23603 = phi ptr [ %call1036, %for.cond1090.preheader.lr.ph ], [ %incdec.ptr1176, %for.end1175 ]
  call void @llvm.dbg.value(metadata i64 %x.23605, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.23603, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %q743.7607, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2191
  br i1 %cmp9403, label %for.body1093.lr.ph, label %for.end1175, !dbg !3401

for.body1093.lr.ph:                               ; preds = %for.cond1090.preheader
  %add.ptr1146 = getelementptr inbounds i16, ptr %call1084, i64 %x.23605
  %opacity1133 = getelementptr inbounds %struct._PixelPacket, ptr %p.23603, i64 0, i32 3
  %green1105 = getelementptr inbounds %struct._PixelPacket, ptr %p.23603, i64 0, i32 1
  %red1096 = getelementptr inbounds %struct._PixelPacket, ptr %p.23603, i64 0, i32 2
  br label %for.body1093, !dbg !3401

for.body1093:                                     ; preds = %for.body1093.lr.ph, %sw.epilog1171
  %q743.8598 = phi ptr [ %q743.7607, %for.body1093.lr.ph ], [ %incdec.ptr1172, %sw.epilog1171 ]
  %i.3597 = phi i64 [ 0, %for.body1093.lr.ph ], [ %inc1174, %sw.epilog1171 ]
  call void @llvm.dbg.value(metadata ptr %q743.8598, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %i.3597, metadata !2173, metadata !DIExpression()), !dbg !2191
  store float 0.000000e+00, ptr %q743.8598, align 4, !dbg !3404, !tbaa !3135
  %arrayidx1094 = getelementptr inbounds i32, ptr %call2, i64 %i.3597, !dbg !3407
  %224 = load i32, ptr %arrayidx1094, align 4, !dbg !3407, !tbaa !2216
  switch i32 %224, label %sw.epilog1171 [
    i32 14, label %sw.bb1095
    i32 6, label %sw.bb1095
    i32 9, label %sw.bb1104
    i32 12, label %sw.bb1104
    i32 3, label %sw.bb1113
    i32 19, label %sw.bb1113
    i32 1, label %sw.bb1122
    i32 13, label %sw.bb1132
    i32 2, label %sw.bb1141
    i32 11, label %sw.bb1162
  ], !dbg !3408

sw.bb1095:                                        ; preds = %for.body1093, %for.body1093
  %225 = load i16, ptr %red1096, align 2, !dbg !3409, !tbaa !2338
  %conv1098 = uitofp i16 %225 to double, !dbg !3409
  br label %sw.epilog1171.sink.split, !dbg !3412

sw.bb1104:                                        ; preds = %for.body1093, %for.body1093
  %226 = load i16, ptr %green1105, align 2, !dbg !3413, !tbaa !2326
  %conv1107 = uitofp i16 %226 to double, !dbg !3413
  br label %sw.epilog1171.sink.split, !dbg !3415

sw.bb1113:                                        ; preds = %for.body1093, %for.body1093
  %227 = load i16, ptr %p.23603, align 2, !dbg !3416, !tbaa !2308
  %conv1116 = uitofp i16 %227 to double, !dbg !3416
  br label %sw.epilog1171.sink.split, !dbg !3418

sw.bb1122:                                        ; preds = %for.body1093
  %228 = load i16, ptr %opacity1133, align 2, !dbg !3419, !tbaa !2403
  %229 = xor i16 %228, -1, !dbg !3419
  %conv1126 = uitofp i16 %229 to double, !dbg !3419
  br label %sw.epilog1171.sink.split, !dbg !3421

sw.bb1132:                                        ; preds = %for.body1093
  %230 = load i16, ptr %opacity1133, align 2, !dbg !3422, !tbaa !2403
  %conv1135 = uitofp i16 %230 to double, !dbg !3422
  br label %sw.epilog1171.sink.split, !dbg !3424

sw.bb1141:                                        ; preds = %for.body1093
  %231 = load i32, ptr %colorspace1142, align 4, !dbg !3425, !tbaa !1443
  %cmp1143 = icmp eq i32 %231, 12, !dbg !3428
  br i1 %cmp1143, label %if.then1145, label %sw.epilog1171, !dbg !3429

if.then1145:                                      ; preds = %sw.bb1141
  br i1 %cmp1147, label %cond.end1153, label %cond.false1150, !dbg !3430

cond.false1150:                                   ; preds = %if.then1145
  %232 = load i16, ptr %add.ptr1146, align 2, !dbg !3430, !tbaa !2741
  %conv1152 = zext i16 %232 to i32, !dbg !3430
  br label %cond.end1153, !dbg !3430

cond.end1153:                                     ; preds = %if.then1145, %cond.false1150
  %cond1154 = phi i32 [ %conv1152, %cond.false1150 ], [ 0, %if.then1145 ], !dbg !3430
  %conv1155 = sitofp i32 %cond1154 to double, !dbg !3430
  br label %sw.epilog1171.sink.split, !dbg !3431

sw.bb1162:                                        ; preds = %for.body1093
  %call1163 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.23603) #20, !dbg !3432
  %conv1164 = fpext float %call1163 to double, !dbg !3432
  br label %sw.epilog1171.sink.split, !dbg !3434

sw.epilog1171.sink.split:                         ; preds = %sw.bb1095, %sw.bb1104, %sw.bb1113, %sw.bb1122, %sw.bb1132, %sw.bb1162, %cond.end1153
  %conv1155.sink = phi double [ %conv1155, %cond.end1153 ], [ %conv1164, %sw.bb1162 ], [ %conv1135, %sw.bb1132 ], [ %conv1126, %sw.bb1122 ], [ %conv1116, %sw.bb1113 ], [ %conv1107, %sw.bb1104 ], [ %conv1098, %sw.bb1095 ]
  %mul1156 = fmul double %conv1155.sink, 0x3EF0001000100010, !dbg !3435
  %233 = load double, ptr %scale1166, align 8, !dbg !3435, !tbaa !2784
  %234 = load double, ptr %minimum1168, align 8, !dbg !3435, !tbaa !2788
  %235 = tail call double @llvm.fmuladd.f64(double %mul1156, double %233, double %234), !dbg !3435
  %conv1160 = fptrunc double %235 to float, !dbg !3435
  store float %conv1160, ptr %q743.8598, align 4, !dbg !3435, !tbaa !3135
  br label %sw.epilog1171, !dbg !3436

sw.epilog1171:                                    ; preds = %sw.epilog1171.sink.split, %for.body1093, %sw.bb1141
  %incdec.ptr1172 = getelementptr inbounds float, ptr %q743.8598, i64 1, !dbg !3436
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1172, metadata !2181, metadata !DIExpression()), !dbg !3110
  %inc1174 = add nuw nsw i64 %i.3597, 1, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %inc1174, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond800.not = icmp eq i64 %inc1174, %call1, !dbg !3438
  br i1 %exitcond800.not, label %for.end1175, label %for.body1093, !dbg !3401, !llvm.loop !3439

for.end1175:                                      ; preds = %sw.epilog1171, %for.cond1090.preheader
  %q743.8.lcssa = phi ptr [ %q743.7607, %for.cond1090.preheader ], [ %incdec.ptr1172, %sw.epilog1171 ], !dbg !3110
  %incdec.ptr1176 = getelementptr inbounds %struct._PixelPacket, ptr %p.23603, i64 1, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1176, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1178 = add nuw nsw i64 %x.23605, 1, !dbg !3442
  call void @llvm.dbg.value(metadata ptr %q743.8.lcssa, metadata !2181, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %inc1178, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1086 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3396
  %cmp1087 = icmp slt i64 %inc1178, %call1086, !dbg !3399
  br i1 %cmp1087, label %for.cond1090.preheader, label %sw.epilog2309, !dbg !3400, !llvm.loop !3443

sw.bb1181:                                        ; preds = %for.end
  %pixels1183 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 6, !dbg !3445
  %236 = load ptr, ptr %pixels1183, align 8, !dbg !3445, !tbaa !1138
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  %237 = load ptr, ptr %map, align 8, !dbg !3447, !tbaa !1150
  %call1185 = tail call i32 @LocaleCompare(ptr noundef %237, ptr noundef nonnull @.str.11) #15, !dbg !3449
  %cmp1186 = icmp eq i32 %call1185, 0, !dbg !3450
  br i1 %cmp1186, label %if.then1188, label %if.end1212, !dbg !3451

if.then1188:                                      ; preds = %sw.bb1181
  %call1189 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3452
  call void @llvm.dbg.value(metadata ptr %call1189, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1190 = icmp eq ptr %call1189, null, !dbg !3454
  br i1 %cmp1190, label %sw.epilog2309, label %for.cond1194.preheader, !dbg !3456

for.cond1194.preheader:                           ; preds = %if.then1188
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1189, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1195591 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3457
  %cmp1196592 = icmp sgt i64 %call1195591, 0, !dbg !3460
  br i1 %cmp1196592, label %for.body1198, label %sw.epilog2309, !dbg !3461

for.body1198:                                     ; preds = %for.cond1194.preheader, %for.body1198
  %q1182.0595 = phi ptr [ %incdec.ptr1207, %for.body1198 ], [ %236, %for.cond1194.preheader ]
  %x.24594 = phi i64 [ %inc1210, %for.body1198 ], [ 0, %for.cond1194.preheader ]
  %p.24593 = phi ptr [ %incdec.ptr1208, %for.body1198 ], [ %call1189, %for.cond1194.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1182.0595, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %x.24594, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.24593, metadata !2172, metadata !DIExpression()), !dbg !2191
  %238 = load i16, ptr %p.24593, align 2, !dbg !3462, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %238, metadata !3464, metadata !DIExpression()), !dbg !3469
  %conv.i173 = zext i16 %238 to i32, !dbg !3471
  %mul.i = mul nuw i32 %conv.i173, 65537, !dbg !3472
  %incdec.ptr1201 = getelementptr inbounds i32, ptr %q1182.0595, i64 1, !dbg !3473
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1201, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i, ptr %q1182.0595, align 4, !dbg !3474, !tbaa !1129
  %green1202 = getelementptr inbounds %struct._PixelPacket, ptr %p.24593, i64 0, i32 1, !dbg !3475
  %239 = load i16, ptr %green1202, align 2, !dbg !3475, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %239, metadata !3464, metadata !DIExpression()), !dbg !3476
  %conv.i174 = zext i16 %239 to i32, !dbg !3478
  %mul.i175 = mul nuw i32 %conv.i174, 65537, !dbg !3479
  %incdec.ptr1204 = getelementptr inbounds i32, ptr %q1182.0595, i64 2, !dbg !3480
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1204, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i175, ptr %incdec.ptr1201, align 4, !dbg !3481, !tbaa !1129
  %red1205 = getelementptr inbounds %struct._PixelPacket, ptr %p.24593, i64 0, i32 2, !dbg !3482
  %240 = load i16, ptr %red1205, align 2, !dbg !3482, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %240, metadata !3464, metadata !DIExpression()), !dbg !3483
  %conv.i176 = zext i16 %240 to i32, !dbg !3485
  %mul.i177 = mul nuw i32 %conv.i176, 65537, !dbg !3486
  %incdec.ptr1207 = getelementptr inbounds i32, ptr %q1182.0595, i64 3, !dbg !3487
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1207, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i177, ptr %incdec.ptr1204, align 4, !dbg !3488, !tbaa !1129
  %incdec.ptr1208 = getelementptr inbounds %struct._PixelPacket, ptr %p.24593, i64 1, !dbg !3489
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1208, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1210 = add nuw nsw i64 %x.24594, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %inc1210, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1195 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3457
  %cmp1196 = icmp slt i64 %inc1210, %call1195, !dbg !3460
  br i1 %cmp1196, label %for.body1198, label %sw.epilog2309, !dbg !3461, !llvm.loop !3491

if.end1212:                                       ; preds = %sw.bb1181
  %241 = load ptr, ptr %map, align 8, !dbg !3493, !tbaa !1150
  %call1214 = tail call i32 @LocaleCompare(ptr noundef %241, ptr noundef nonnull @.str.12) #15, !dbg !3495
  %cmp1215 = icmp eq i32 %call1214, 0, !dbg !3496
  br i1 %cmp1215, label %if.then1217, label %if.end1247, !dbg !3497

if.then1217:                                      ; preds = %if.end1212
  %call1218 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3498
  call void @llvm.dbg.value(metadata ptr %call1218, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1219 = icmp eq ptr %call1218, null, !dbg !3500
  br i1 %cmp1219, label %sw.epilog2309, label %for.cond1223.preheader, !dbg !3502

for.cond1223.preheader:                           ; preds = %if.then1217
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1218, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1224586 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3503
  %cmp1225587 = icmp sgt i64 %call1224586, 0, !dbg !3506
  br i1 %cmp1225587, label %for.body1227, label %sw.epilog2309, !dbg !3507

for.body1227:                                     ; preds = %for.cond1223.preheader, %for.body1227
  %q1182.1590 = phi ptr [ %incdec.ptr1242, %for.body1227 ], [ %236, %for.cond1223.preheader ]
  %x.25589 = phi i64 [ %inc1245, %for.body1227 ], [ 0, %for.cond1223.preheader ]
  %p.25588 = phi ptr [ %incdec.ptr1243, %for.body1227 ], [ %call1218, %for.cond1223.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1182.1590, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %x.25589, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.25588, metadata !2172, metadata !DIExpression()), !dbg !2191
  %242 = load i16, ptr %p.25588, align 2, !dbg !3508, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %242, metadata !3464, metadata !DIExpression()), !dbg !3510
  %conv.i178 = zext i16 %242 to i32, !dbg !3512
  %mul.i179 = mul nuw i32 %conv.i178, 65537, !dbg !3513
  %incdec.ptr1230 = getelementptr inbounds i32, ptr %q1182.1590, i64 1, !dbg !3514
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1230, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i179, ptr %q1182.1590, align 4, !dbg !3515, !tbaa !1129
  %green1231 = getelementptr inbounds %struct._PixelPacket, ptr %p.25588, i64 0, i32 1, !dbg !3516
  %243 = load i16, ptr %green1231, align 2, !dbg !3516, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %243, metadata !3464, metadata !DIExpression()), !dbg !3517
  %conv.i180 = zext i16 %243 to i32, !dbg !3519
  %mul.i181 = mul nuw i32 %conv.i180, 65537, !dbg !3520
  %incdec.ptr1233 = getelementptr inbounds i32, ptr %q1182.1590, i64 2, !dbg !3521
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1233, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i181, ptr %incdec.ptr1230, align 4, !dbg !3522, !tbaa !1129
  %red1234 = getelementptr inbounds %struct._PixelPacket, ptr %p.25588, i64 0, i32 2, !dbg !3523
  %244 = load i16, ptr %red1234, align 2, !dbg !3523, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %244, metadata !3464, metadata !DIExpression()), !dbg !3524
  %conv.i182 = zext i16 %244 to i32, !dbg !3526
  %mul.i183 = mul nuw i32 %conv.i182, 65537, !dbg !3527
  %incdec.ptr1236 = getelementptr inbounds i32, ptr %q1182.1590, i64 3, !dbg !3528
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1236, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i183, ptr %incdec.ptr1233, align 4, !dbg !3529, !tbaa !1129
  %opacity1237 = getelementptr inbounds %struct._PixelPacket, ptr %p.25588, i64 0, i32 3, !dbg !3530
  %245 = load i16, ptr %opacity1237, align 2, !dbg !3530, !tbaa !2403
  %246 = xor i16 %245, -1, !dbg !3531
  call void @llvm.dbg.value(metadata i16 %246, metadata !3464, metadata !DIExpression()), !dbg !3532
  %conv.i184 = zext i16 %246 to i32, !dbg !3534
  %mul.i185 = mul nuw i32 %conv.i184, 65537, !dbg !3535
  %incdec.ptr1242 = getelementptr inbounds i32, ptr %q1182.1590, i64 4, !dbg !3536
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1242, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i185, ptr %incdec.ptr1236, align 4, !dbg !3537, !tbaa !1129
  %incdec.ptr1243 = getelementptr inbounds %struct._PixelPacket, ptr %p.25588, i64 1, !dbg !3538
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1243, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1245 = add nuw nsw i64 %x.25589, 1, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %inc1245, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1224 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3503
  %cmp1225 = icmp slt i64 %inc1245, %call1224, !dbg !3506
  br i1 %cmp1225, label %for.body1227, label %sw.epilog2309, !dbg !3507, !llvm.loop !3540

if.end1247:                                       ; preds = %if.end1212
  %247 = load ptr, ptr %map, align 8, !dbg !3542, !tbaa !1150
  %call1249 = tail call i32 @LocaleCompare(ptr noundef %247, ptr noundef nonnull @.str.13) #15, !dbg !3544
  %cmp1250 = icmp eq i32 %call1249, 0, !dbg !3545
  br i1 %cmp1250, label %if.then1252, label %if.end1277, !dbg !3546

if.then1252:                                      ; preds = %if.end1247
  %call1253 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3547
  call void @llvm.dbg.value(metadata ptr %call1253, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1254 = icmp eq ptr %call1253, null, !dbg !3549
  br i1 %cmp1254, label %sw.epilog2309, label %for.cond1258.preheader, !dbg !3551

for.cond1258.preheader:                           ; preds = %if.then1252
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1253, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1259581 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3552
  %cmp1260582 = icmp sgt i64 %call1259581, 0, !dbg !3555
  br i1 %cmp1260582, label %for.body1262, label %sw.epilog2309, !dbg !3556

for.body1262:                                     ; preds = %for.cond1258.preheader, %for.body1262
  %q1182.2585 = phi ptr [ %incdec.ptr1272, %for.body1262 ], [ %236, %for.cond1258.preheader ]
  %x.26584 = phi i64 [ %inc1275, %for.body1262 ], [ 0, %for.cond1258.preheader ]
  %p.26583 = phi ptr [ %incdec.ptr1273, %for.body1262 ], [ %call1253, %for.cond1258.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1182.2585, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %x.26584, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.26583, metadata !2172, metadata !DIExpression()), !dbg !2191
  %248 = load i16, ptr %p.26583, align 2, !dbg !3557, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %248, metadata !3464, metadata !DIExpression()), !dbg !3559
  %conv.i186 = zext i16 %248 to i32, !dbg !3561
  %mul.i187 = mul nuw i32 %conv.i186, 65537, !dbg !3562
  %incdec.ptr1265 = getelementptr inbounds i32, ptr %q1182.2585, i64 1, !dbg !3563
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1265, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i187, ptr %q1182.2585, align 4, !dbg !3564, !tbaa !1129
  %green1266 = getelementptr inbounds %struct._PixelPacket, ptr %p.26583, i64 0, i32 1, !dbg !3565
  %249 = load i16, ptr %green1266, align 2, !dbg !3565, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %249, metadata !3464, metadata !DIExpression()), !dbg !3566
  %conv.i188 = zext i16 %249 to i32, !dbg !3568
  %mul.i189 = mul nuw i32 %conv.i188, 65537, !dbg !3569
  %incdec.ptr1268 = getelementptr inbounds i32, ptr %q1182.2585, i64 2, !dbg !3570
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1268, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i189, ptr %incdec.ptr1265, align 4, !dbg !3571, !tbaa !1129
  %red1269 = getelementptr inbounds %struct._PixelPacket, ptr %p.26583, i64 0, i32 2, !dbg !3572
  %250 = load i16, ptr %red1269, align 2, !dbg !3572, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %250, metadata !3464, metadata !DIExpression()), !dbg !3573
  %conv.i190 = zext i16 %250 to i32, !dbg !3575
  %mul.i191 = mul nuw i32 %conv.i190, 65537, !dbg !3576
  %incdec.ptr1271 = getelementptr inbounds i32, ptr %q1182.2585, i64 3, !dbg !3577
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1271, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i191, ptr %incdec.ptr1268, align 4, !dbg !3578, !tbaa !1129
  %incdec.ptr1272 = getelementptr inbounds i32, ptr %q1182.2585, i64 4, !dbg !3579
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1272, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 0, ptr %incdec.ptr1271, align 4, !dbg !3580, !tbaa !1129
  %incdec.ptr1273 = getelementptr inbounds %struct._PixelPacket, ptr %p.26583, i64 1, !dbg !3581
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1273, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1275 = add nuw nsw i64 %x.26584, 1, !dbg !3582
  call void @llvm.dbg.value(metadata i64 %inc1275, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1259 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3552
  %cmp1260 = icmp slt i64 %inc1275, %call1259, !dbg !3555
  br i1 %cmp1260, label %for.body1262, label %sw.epilog2309, !dbg !3556, !llvm.loop !3583

if.end1277:                                       ; preds = %if.end1247
  %251 = load ptr, ptr %map, align 8, !dbg !3585, !tbaa !1150
  %call1279 = tail call i32 @LocaleCompare(ptr noundef %251, ptr noundef nonnull @.str.14) #15, !dbg !3587
  %cmp1280 = icmp eq i32 %call1279, 0, !dbg !3588
  br i1 %cmp1280, label %if.then1282, label %if.end1301, !dbg !3589

if.then1282:                                      ; preds = %if.end1277
  %call1283 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3590
  call void @llvm.dbg.value(metadata ptr %call1283, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1284 = icmp eq ptr %call1283, null, !dbg !3592
  br i1 %cmp1284, label %sw.epilog2309, label %for.cond1288.preheader, !dbg !3594

for.cond1288.preheader:                           ; preds = %if.then1282
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1283, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1289576 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3595
  %cmp1290577 = icmp sgt i64 %call1289576, 0, !dbg !3598
  br i1 %cmp1290577, label %for.body1292, label %sw.epilog2309, !dbg !3599

for.body1292:                                     ; preds = %for.cond1288.preheader, %ClampToQuantum.exit199
  %q1182.3580 = phi ptr [ %incdec.ptr1296, %ClampToQuantum.exit199 ], [ %236, %for.cond1288.preheader ]
  %x.27579 = phi i64 [ %inc1299, %ClampToQuantum.exit199 ], [ 0, %for.cond1288.preheader ]
  %p.27578 = phi ptr [ %incdec.ptr1297, %ClampToQuantum.exit199 ], [ %call1283, %for.cond1288.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1182.3580, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %x.27579, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.27578, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1293 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.27578) #20, !dbg !3600
  call void @llvm.dbg.value(metadata float %call1293, metadata !2492, metadata !DIExpression()), !dbg !3602
  %cmp.i192 = fcmp ugt float %call1293, 0.000000e+00, !dbg !3604
  br i1 %cmp.i192, label %if.end.i194, label %ClampToQuantum.exit199, !dbg !3605

if.end.i194:                                      ; preds = %for.body1292
  %cmp1.i193 = fcmp ult float %call1293, 6.553500e+04, !dbg !3606
  br i1 %cmp1.i193, label %if.end3.i197, label %ClampToQuantum.exit199, !dbg !3607

if.end3.i197:                                     ; preds = %if.end.i194
  %add.i195 = fadd float %call1293, 5.000000e-01, !dbg !3608
  %conv.i196 = fptoui float %add.i195 to i16, !dbg !3609
  br label %ClampToQuantum.exit199, !dbg !3610

ClampToQuantum.exit199:                           ; preds = %for.body1292, %if.end.i194, %if.end3.i197
  %retval.0.i198 = phi i16 [ %conv.i196, %if.end3.i197 ], [ 0, %for.body1292 ], [ -1, %if.end.i194 ], !dbg !3602
  call void @llvm.dbg.value(metadata i16 %retval.0.i198, metadata !3464, metadata !DIExpression()), !dbg !3611
  %conv.i200 = zext i16 %retval.0.i198 to i32, !dbg !3613
  %mul.i201 = mul nuw i32 %conv.i200, 65537, !dbg !3614
  %incdec.ptr1296 = getelementptr inbounds i32, ptr %q1182.3580, i64 1, !dbg !3615
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1296, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i201, ptr %q1182.3580, align 4, !dbg !3616, !tbaa !1129
  %incdec.ptr1297 = getelementptr inbounds %struct._PixelPacket, ptr %p.27578, i64 1, !dbg !3617
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1297, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1299 = add nuw nsw i64 %x.27579, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %inc1299, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1289 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3595
  %cmp1290 = icmp slt i64 %inc1299, %call1289, !dbg !3598
  br i1 %cmp1290, label %for.body1292, label %sw.epilog2309, !dbg !3599, !llvm.loop !3619

if.end1301:                                       ; preds = %if.end1277
  %252 = load ptr, ptr %map, align 8, !dbg !3621, !tbaa !1150
  %call1303 = tail call i32 @LocaleCompare(ptr noundef %252, ptr noundef nonnull @.str.4) #15, !dbg !3623
  %cmp1304 = icmp eq i32 %call1303, 0, !dbg !3624
  br i1 %cmp1304, label %if.then1306, label %if.end1330, !dbg !3625

if.then1306:                                      ; preds = %if.end1301
  %call1307 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3626
  call void @llvm.dbg.value(metadata ptr %call1307, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1308 = icmp eq ptr %call1307, null, !dbg !3628
  br i1 %cmp1308, label %sw.epilog2309, label %for.cond1312.preheader, !dbg !3630

for.cond1312.preheader:                           ; preds = %if.then1306
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1307, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1313571 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3631
  %cmp1314572 = icmp sgt i64 %call1313571, 0, !dbg !3634
  br i1 %cmp1314572, label %for.body1316, label %sw.epilog2309, !dbg !3635

for.body1316:                                     ; preds = %for.cond1312.preheader, %for.body1316
  %q1182.4575 = phi ptr [ %incdec.ptr1325, %for.body1316 ], [ %236, %for.cond1312.preheader ]
  %x.28574 = phi i64 [ %inc1328, %for.body1316 ], [ 0, %for.cond1312.preheader ]
  %p.28573 = phi ptr [ %incdec.ptr1326, %for.body1316 ], [ %call1307, %for.cond1312.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1182.4575, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %x.28574, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.28573, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1317 = getelementptr inbounds %struct._PixelPacket, ptr %p.28573, i64 0, i32 2, !dbg !3636
  %253 = load i16, ptr %red1317, align 2, !dbg !3636, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %253, metadata !3464, metadata !DIExpression()), !dbg !3638
  %conv.i202 = zext i16 %253 to i32, !dbg !3640
  %mul.i203 = mul nuw i32 %conv.i202, 65537, !dbg !3641
  %incdec.ptr1319 = getelementptr inbounds i32, ptr %q1182.4575, i64 1, !dbg !3642
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1319, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i203, ptr %q1182.4575, align 4, !dbg !3643, !tbaa !1129
  %green1320 = getelementptr inbounds %struct._PixelPacket, ptr %p.28573, i64 0, i32 1, !dbg !3644
  %254 = load i16, ptr %green1320, align 2, !dbg !3644, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %254, metadata !3464, metadata !DIExpression()), !dbg !3645
  %conv.i204 = zext i16 %254 to i32, !dbg !3647
  %mul.i205 = mul nuw i32 %conv.i204, 65537, !dbg !3648
  %incdec.ptr1322 = getelementptr inbounds i32, ptr %q1182.4575, i64 2, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1322, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i205, ptr %incdec.ptr1319, align 4, !dbg !3650, !tbaa !1129
  %255 = load i16, ptr %p.28573, align 2, !dbg !3651, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %255, metadata !3464, metadata !DIExpression()), !dbg !3652
  %conv.i206 = zext i16 %255 to i32, !dbg !3654
  %mul.i207 = mul nuw i32 %conv.i206, 65537, !dbg !3655
  %incdec.ptr1325 = getelementptr inbounds i32, ptr %q1182.4575, i64 3, !dbg !3656
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1325, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i207, ptr %incdec.ptr1322, align 4, !dbg !3657, !tbaa !1129
  %incdec.ptr1326 = getelementptr inbounds %struct._PixelPacket, ptr %p.28573, i64 1, !dbg !3658
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1326, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1328 = add nuw nsw i64 %x.28574, 1, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %inc1328, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1313 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3631
  %cmp1314 = icmp slt i64 %inc1328, %call1313, !dbg !3634
  br i1 %cmp1314, label %for.body1316, label %sw.epilog2309, !dbg !3635, !llvm.loop !3660

if.end1330:                                       ; preds = %if.end1301
  %256 = load ptr, ptr %map, align 8, !dbg !3662, !tbaa !1150
  %call1332 = tail call i32 @LocaleCompare(ptr noundef %256, ptr noundef nonnull @.str.15) #15, !dbg !3664
  %cmp1333 = icmp eq i32 %call1332, 0, !dbg !3665
  br i1 %cmp1333, label %if.then1335, label %if.end1365, !dbg !3666

if.then1335:                                      ; preds = %if.end1330
  %call1336 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3667
  call void @llvm.dbg.value(metadata ptr %call1336, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1337 = icmp eq ptr %call1336, null, !dbg !3669
  br i1 %cmp1337, label %sw.epilog2309, label %for.cond1341.preheader, !dbg !3671

for.cond1341.preheader:                           ; preds = %if.then1335
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1336, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1342566 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3672
  %cmp1343567 = icmp sgt i64 %call1342566, 0, !dbg !3675
  br i1 %cmp1343567, label %for.body1345, label %sw.epilog2309, !dbg !3676

for.body1345:                                     ; preds = %for.cond1341.preheader, %for.body1345
  %q1182.5570 = phi ptr [ %incdec.ptr1360, %for.body1345 ], [ %236, %for.cond1341.preheader ]
  %x.29569 = phi i64 [ %inc1363, %for.body1345 ], [ 0, %for.cond1341.preheader ]
  %p.29568 = phi ptr [ %incdec.ptr1361, %for.body1345 ], [ %call1336, %for.cond1341.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1182.5570, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %x.29569, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.29568, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1346 = getelementptr inbounds %struct._PixelPacket, ptr %p.29568, i64 0, i32 2, !dbg !3677
  %257 = load i16, ptr %red1346, align 2, !dbg !3677, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %257, metadata !3464, metadata !DIExpression()), !dbg !3679
  %conv.i208 = zext i16 %257 to i32, !dbg !3681
  %mul.i209 = mul nuw i32 %conv.i208, 65537, !dbg !3682
  %incdec.ptr1348 = getelementptr inbounds i32, ptr %q1182.5570, i64 1, !dbg !3683
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1348, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i209, ptr %q1182.5570, align 4, !dbg !3684, !tbaa !1129
  %green1349 = getelementptr inbounds %struct._PixelPacket, ptr %p.29568, i64 0, i32 1, !dbg !3685
  %258 = load i16, ptr %green1349, align 2, !dbg !3685, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %258, metadata !3464, metadata !DIExpression()), !dbg !3686
  %conv.i210 = zext i16 %258 to i32, !dbg !3688
  %mul.i211 = mul nuw i32 %conv.i210, 65537, !dbg !3689
  %incdec.ptr1351 = getelementptr inbounds i32, ptr %q1182.5570, i64 2, !dbg !3690
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1351, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i211, ptr %incdec.ptr1348, align 4, !dbg !3691, !tbaa !1129
  %259 = load i16, ptr %p.29568, align 2, !dbg !3692, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %259, metadata !3464, metadata !DIExpression()), !dbg !3693
  %conv.i212 = zext i16 %259 to i32, !dbg !3695
  %mul.i213 = mul nuw i32 %conv.i212, 65537, !dbg !3696
  %incdec.ptr1354 = getelementptr inbounds i32, ptr %q1182.5570, i64 3, !dbg !3697
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1354, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i213, ptr %incdec.ptr1351, align 4, !dbg !3698, !tbaa !1129
  %opacity1355 = getelementptr inbounds %struct._PixelPacket, ptr %p.29568, i64 0, i32 3, !dbg !3699
  %260 = load i16, ptr %opacity1355, align 2, !dbg !3699, !tbaa !2403
  %261 = xor i16 %260, -1, !dbg !3699
  call void @llvm.dbg.value(metadata i16 %261, metadata !3464, metadata !DIExpression()), !dbg !3700
  %conv.i214 = zext i16 %261 to i32, !dbg !3702
  %mul.i215 = mul nuw i32 %conv.i214, 65537, !dbg !3703
  %incdec.ptr1360 = getelementptr inbounds i32, ptr %q1182.5570, i64 4, !dbg !3704
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1360, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i215, ptr %incdec.ptr1354, align 4, !dbg !3705, !tbaa !1129
  %incdec.ptr1361 = getelementptr inbounds %struct._PixelPacket, ptr %p.29568, i64 1, !dbg !3706
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1361, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1363 = add nuw nsw i64 %x.29569, 1, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %inc1363, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1342 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3672
  %cmp1343 = icmp slt i64 %inc1363, %call1342, !dbg !3675
  br i1 %cmp1343, label %for.body1345, label %sw.epilog2309, !dbg !3676, !llvm.loop !3708

if.end1365:                                       ; preds = %if.end1330
  %262 = load ptr, ptr %map, align 8, !dbg !3710, !tbaa !1150
  %call1367 = tail call i32 @LocaleCompare(ptr noundef %262, ptr noundef nonnull @.str.16) #15, !dbg !3712
  %cmp1368 = icmp eq i32 %call1367, 0, !dbg !3713
  %call1371 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3446
  call void @llvm.dbg.value(metadata ptr %call1371, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1371, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1372 = icmp eq ptr %call1371, null, !dbg !3446
  br i1 %cmp1368, label %if.then1370, label %if.end1395, !dbg !3714

if.then1370:                                      ; preds = %if.end1365
  br i1 %cmp1372, label %sw.epilog2309, label %for.cond1376.preheader, !dbg !3715

for.cond1376.preheader:                           ; preds = %if.then1370
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1371, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1377561 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3717
  %cmp1378562 = icmp sgt i64 %call1377561, 0, !dbg !3720
  br i1 %cmp1378562, label %for.body1380, label %sw.epilog2309, !dbg !3721

for.body1380:                                     ; preds = %for.cond1376.preheader, %for.body1380
  %q1182.6565 = phi ptr [ %incdec.ptr1390, %for.body1380 ], [ %236, %for.cond1376.preheader ]
  %x.30564 = phi i64 [ %inc1393, %for.body1380 ], [ 0, %for.cond1376.preheader ]
  %p.30563 = phi ptr [ %incdec.ptr1391, %for.body1380 ], [ %call1371, %for.cond1376.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1182.6565, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %x.30564, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.30563, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1381 = getelementptr inbounds %struct._PixelPacket, ptr %p.30563, i64 0, i32 2, !dbg !3722
  %263 = load i16, ptr %red1381, align 2, !dbg !3722, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %263, metadata !3464, metadata !DIExpression()), !dbg !3724
  %conv.i216 = zext i16 %263 to i32, !dbg !3726
  %mul.i217 = mul nuw i32 %conv.i216, 65537, !dbg !3727
  %incdec.ptr1383 = getelementptr inbounds i32, ptr %q1182.6565, i64 1, !dbg !3728
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1383, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i217, ptr %q1182.6565, align 4, !dbg !3729, !tbaa !1129
  %green1384 = getelementptr inbounds %struct._PixelPacket, ptr %p.30563, i64 0, i32 1, !dbg !3730
  %264 = load i16, ptr %green1384, align 2, !dbg !3730, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %264, metadata !3464, metadata !DIExpression()), !dbg !3731
  %conv.i218 = zext i16 %264 to i32, !dbg !3733
  %mul.i219 = mul nuw i32 %conv.i218, 65537, !dbg !3734
  %incdec.ptr1386 = getelementptr inbounds i32, ptr %q1182.6565, i64 2, !dbg !3735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1386, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i219, ptr %incdec.ptr1383, align 4, !dbg !3736, !tbaa !1129
  %265 = load i16, ptr %p.30563, align 2, !dbg !3737, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %265, metadata !3464, metadata !DIExpression()), !dbg !3738
  %conv.i220 = zext i16 %265 to i32, !dbg !3740
  %mul.i221 = mul nuw i32 %conv.i220, 65537, !dbg !3741
  %incdec.ptr1389 = getelementptr inbounds i32, ptr %q1182.6565, i64 3, !dbg !3742
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1389, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 %mul.i221, ptr %incdec.ptr1386, align 4, !dbg !3743, !tbaa !1129
  %incdec.ptr1390 = getelementptr inbounds i32, ptr %q1182.6565, i64 4, !dbg !3744
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1390, metadata !2183, metadata !DIExpression()), !dbg !3446
  store i32 0, ptr %incdec.ptr1389, align 4, !dbg !3745, !tbaa !1129
  %incdec.ptr1391 = getelementptr inbounds %struct._PixelPacket, ptr %p.30563, i64 1, !dbg !3746
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1391, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1393 = add nuw nsw i64 %x.30564, 1, !dbg !3747
  call void @llvm.dbg.value(metadata i64 %inc1393, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1377 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3717
  %cmp1378 = icmp slt i64 %inc1393, %call1377, !dbg !3720
  br i1 %cmp1378, label %for.body1380, label %sw.epilog2309, !dbg !3721, !llvm.loop !3748

if.end1395:                                       ; preds = %if.end1365
  br i1 %cmp1372, label %sw.epilog2309, label %if.end1400, !dbg !3750

if.end1400:                                       ; preds = %if.end1395
  %call1401 = tail call ptr @GetVirtualIndexQueue(ptr noundef %image) #15, !dbg !3751
  call void @llvm.dbg.value(metadata ptr %call1401, metadata !2171, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %236, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %call1371, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1403554 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3752
  %cmp1404555 = icmp sgt i64 %call1403554, 0, !dbg !3755
  br i1 %cmp1404555, label %for.cond1407.preheader.lr.ph, label %sw.epilog2309, !dbg !3756

for.cond1407.preheader.lr.ph:                     ; preds = %if.end1400
  %colorspace1431 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %cmp1436 = icmp eq ptr %call1401, null
  br label %for.cond1407.preheader, !dbg !3756

for.cond1407.preheader:                           ; preds = %for.cond1407.preheader.lr.ph, %for.end1456
  %q1182.7560 = phi ptr [ %236, %for.cond1407.preheader.lr.ph ], [ %q1182.8.lcssa, %for.end1456 ]
  %x.31558 = phi i64 [ 0, %for.cond1407.preheader.lr.ph ], [ %inc1459, %for.end1456 ]
  %p.31556 = phi ptr [ %call1371, %for.cond1407.preheader.lr.ph ], [ %incdec.ptr1457, %for.end1456 ]
  call void @llvm.dbg.value(metadata i64 %x.31558, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.31556, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %q1182.7560, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2191
  br i1 %cmp9403, label %for.body1410.lr.ph, label %for.end1456, !dbg !3757

for.body1410.lr.ph:                               ; preds = %for.cond1407.preheader
  %add.ptr1435 = getelementptr inbounds i16, ptr %call1401, i64 %x.31558
  %opacity1428 = getelementptr inbounds %struct._PixelPacket, ptr %p.31556, i64 0, i32 3
  %green1416 = getelementptr inbounds %struct._PixelPacket, ptr %p.31556, i64 0, i32 1
  %red1413 = getelementptr inbounds %struct._PixelPacket, ptr %p.31556, i64 0, i32 2
  br label %for.body1410, !dbg !3757

for.body1410:                                     ; preds = %for.body1410.lr.ph, %sw.epilog1452
  %q1182.8551 = phi ptr [ %q1182.7560, %for.body1410.lr.ph ], [ %incdec.ptr1453, %sw.epilog1452 ]
  %i.4550 = phi i64 [ 0, %for.body1410.lr.ph ], [ %inc1455, %sw.epilog1452 ]
  call void @llvm.dbg.value(metadata ptr %q1182.8551, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %i.4550, metadata !2173, metadata !DIExpression()), !dbg !2191
  store i32 0, ptr %q1182.8551, align 4, !dbg !3760, !tbaa !1129
  %arrayidx1411 = getelementptr inbounds i32, ptr %call2, i64 %i.4550, !dbg !3763
  %266 = load i32, ptr %arrayidx1411, align 4, !dbg !3763, !tbaa !2216
  switch i32 %266, label %sw.epilog1452 [
    i32 14, label %sw.bb1412
    i32 6, label %sw.bb1412
    i32 9, label %sw.bb1415
    i32 12, label %sw.bb1415
    i32 3, label %sw.bb1418
    i32 19, label %sw.bb1418
    i32 1, label %sw.bb1421
    i32 13, label %sw.bb1427
    i32 2, label %sw.bb1430
    i32 11, label %sw.bb1447
  ], !dbg !3764

sw.bb1412:                                        ; preds = %for.body1410, %for.body1410
  %267 = load i16, ptr %red1413, align 2, !dbg !3765, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %267, metadata !3464, metadata !DIExpression()), !dbg !3768
  br label %sw.epilog1452.sink.split, !dbg !3770

sw.bb1415:                                        ; preds = %for.body1410, %for.body1410
  %268 = load i16, ptr %green1416, align 2, !dbg !3771, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %268, metadata !3464, metadata !DIExpression()), !dbg !3773
  br label %sw.epilog1452.sink.split, !dbg !3775

sw.bb1418:                                        ; preds = %for.body1410, %for.body1410
  %269 = load i16, ptr %p.31556, align 2, !dbg !3776, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %269, metadata !3464, metadata !DIExpression()), !dbg !3778
  br label %sw.epilog1452.sink.split, !dbg !3780

sw.bb1421:                                        ; preds = %for.body1410
  %270 = load i16, ptr %opacity1428, align 2, !dbg !3781, !tbaa !2403
  %271 = xor i16 %270, -1, !dbg !3783
  call void @llvm.dbg.value(metadata i16 %271, metadata !3464, metadata !DIExpression()), !dbg !3784
  br label %sw.epilog1452.sink.split, !dbg !3786

sw.bb1427:                                        ; preds = %for.body1410
  %272 = load i16, ptr %opacity1428, align 2, !dbg !3787, !tbaa !2403
  call void @llvm.dbg.value(metadata i16 %272, metadata !3464, metadata !DIExpression()), !dbg !3789
  br label %sw.epilog1452.sink.split, !dbg !3791

sw.bb1430:                                        ; preds = %for.body1410
  %273 = load i32, ptr %colorspace1431, align 4, !dbg !3792, !tbaa !1443
  %cmp1432 = icmp eq i32 %273, 12, !dbg !3795
  br i1 %cmp1432, label %if.then1434, label %sw.epilog1452, !dbg !3796

if.then1434:                                      ; preds = %sw.bb1430
  br i1 %cmp1436, label %sw.epilog1452.sink.split, label %cond.false1439, !dbg !3797

cond.false1439:                                   ; preds = %if.then1434
  %274 = load i16, ptr %add.ptr1435, align 2, !dbg !3797, !tbaa !2741
  br label %sw.epilog1452.sink.split, !dbg !3797

sw.bb1447:                                        ; preds = %for.body1410
  %call1448 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.31556) #20, !dbg !3798
  call void @llvm.dbg.value(metadata float %call1448, metadata !2492, metadata !DIExpression()), !dbg !3800
  %cmp.i234 = fcmp ugt float %call1448, 0.000000e+00, !dbg !3802
  br i1 %cmp.i234, label %if.end.i236, label %sw.epilog1452.sink.split, !dbg !3803

if.end.i236:                                      ; preds = %sw.bb1447
  %cmp1.i235 = fcmp ult float %call1448, 6.553500e+04, !dbg !3804
  br i1 %cmp1.i235, label %if.end3.i239, label %sw.epilog1452.sink.split, !dbg !3805

if.end3.i239:                                     ; preds = %if.end.i236
  %add.i237 = fadd float %call1448, 5.000000e-01, !dbg !3806
  %conv.i238 = fptoui float %add.i237 to i16, !dbg !3807
  br label %sw.epilog1452.sink.split, !dbg !3808

sw.epilog1452.sink.split:                         ; preds = %if.end3.i239, %if.end.i236, %sw.bb1447, %cond.false1439, %if.then1434, %sw.bb1412, %sw.bb1415, %sw.bb1418, %sw.bb1421, %sw.bb1427
  %cond1443.sink = phi i16 [ %272, %sw.bb1427 ], [ %271, %sw.bb1421 ], [ %269, %sw.bb1418 ], [ %268, %sw.bb1415 ], [ %267, %sw.bb1412 ], [ %274, %cond.false1439 ], [ 0, %if.then1434 ], [ %conv.i238, %if.end3.i239 ], [ 0, %sw.bb1447 ], [ -1, %if.end.i236 ]
  %conv.i232 = zext i16 %cond1443.sink to i32, !dbg !3809
  %mul.i233 = mul nuw i32 %conv.i232, 65537, !dbg !3809
  store i32 %mul.i233, ptr %q1182.8551, align 4, !dbg !3809, !tbaa !1129
  br label %sw.epilog1452, !dbg !3810

sw.epilog1452:                                    ; preds = %sw.epilog1452.sink.split, %for.body1410, %sw.bb1430
  %incdec.ptr1453 = getelementptr inbounds i32, ptr %q1182.8551, i64 1, !dbg !3810
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1453, metadata !2183, metadata !DIExpression()), !dbg !3446
  %inc1455 = add nuw nsw i64 %i.4550, 1, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %inc1455, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond799.not = icmp eq i64 %inc1455, %call1, !dbg !3812
  br i1 %exitcond799.not, label %for.end1456, label %for.body1410, !dbg !3757, !llvm.loop !3813

for.end1456:                                      ; preds = %sw.epilog1452, %for.cond1407.preheader
  %q1182.8.lcssa = phi ptr [ %q1182.7560, %for.cond1407.preheader ], [ %incdec.ptr1453, %sw.epilog1452 ], !dbg !3446
  %incdec.ptr1457 = getelementptr inbounds %struct._PixelPacket, ptr %p.31556, i64 1, !dbg !3815
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1457, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1459 = add nuw nsw i64 %x.31558, 1, !dbg !3816
  call void @llvm.dbg.value(metadata ptr %q1182.8.lcssa, metadata !2183, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %inc1459, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1403 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3752
  %cmp1404 = icmp slt i64 %inc1459, %call1403, !dbg !3755
  br i1 %cmp1404, label %for.cond1407.preheader, label %sw.epilog2309, !dbg !3756, !llvm.loop !3817

sw.bb1462:                                        ; preds = %for.end
  %pixels1464 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 6, !dbg !3819
  %275 = load ptr, ptr %pixels1464, align 8, !dbg !3819, !tbaa !1138
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  %276 = load ptr, ptr %map, align 8, !dbg !3821, !tbaa !1150
  %call1466 = tail call i32 @LocaleCompare(ptr noundef %276, ptr noundef nonnull @.str.11) #15, !dbg !3823
  %cmp1467 = icmp eq i32 %call1466, 0, !dbg !3824
  br i1 %cmp1467, label %if.then1469, label %if.end1496, !dbg !3825

if.then1469:                                      ; preds = %sw.bb1462
  %call1470 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3826
  call void @llvm.dbg.value(metadata ptr %call1470, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1471 = icmp eq ptr %call1470, null, !dbg !3828
  br i1 %cmp1471, label %sw.epilog2309, label %for.cond1475.preheader, !dbg !3830

for.cond1475.preheader:                           ; preds = %if.then1469
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1470, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1476544 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3831
  %cmp1477545 = icmp sgt i64 %call1476544, 0, !dbg !3834
  br i1 %cmp1477545, label %for.body1479, label %sw.epilog2309, !dbg !3835

for.body1479:                                     ; preds = %for.cond1475.preheader, %for.body1479
  %q1463.0548 = phi ptr [ %incdec.ptr1491, %for.body1479 ], [ %275, %for.cond1475.preheader ]
  %x.32547 = phi i64 [ %inc1494, %for.body1479 ], [ 0, %for.cond1475.preheader ]
  %p.32546 = phi ptr [ %incdec.ptr1492, %for.body1479 ], [ %call1470, %for.cond1475.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1463.0548, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %x.32547, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.32546, metadata !2172, metadata !DIExpression()), !dbg !2191
  %277 = load i16, ptr %p.32546, align 2, !dbg !3836, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %277, metadata !3464, metadata !DIExpression()), !dbg !3838
  %conv.i244 = zext i16 %277 to i64, !dbg !3840
  %mul.i245 = mul nuw nsw i64 %conv.i244, 65537, !dbg !3841
  %incdec.ptr1483 = getelementptr inbounds i64, ptr %q1463.0548, i64 1, !dbg !3842
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1483, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i245, ptr %q1463.0548, align 8, !dbg !3843, !tbaa !2060
  %green1484 = getelementptr inbounds %struct._PixelPacket, ptr %p.32546, i64 0, i32 1, !dbg !3844
  %278 = load i16, ptr %green1484, align 2, !dbg !3844, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %278, metadata !3464, metadata !DIExpression()), !dbg !3845
  %conv.i246 = zext i16 %278 to i64, !dbg !3847
  %mul.i247 = mul nuw nsw i64 %conv.i246, 65537, !dbg !3848
  %incdec.ptr1487 = getelementptr inbounds i64, ptr %q1463.0548, i64 2, !dbg !3849
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1487, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i247, ptr %incdec.ptr1483, align 8, !dbg !3850, !tbaa !2060
  %red1488 = getelementptr inbounds %struct._PixelPacket, ptr %p.32546, i64 0, i32 2, !dbg !3851
  %279 = load i16, ptr %red1488, align 2, !dbg !3851, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %279, metadata !3464, metadata !DIExpression()), !dbg !3852
  %conv.i248 = zext i16 %279 to i64, !dbg !3854
  %mul.i249 = mul nuw nsw i64 %conv.i248, 65537, !dbg !3855
  %incdec.ptr1491 = getelementptr inbounds i64, ptr %q1463.0548, i64 3, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1491, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i249, ptr %incdec.ptr1487, align 8, !dbg !3857, !tbaa !2060
  %incdec.ptr1492 = getelementptr inbounds %struct._PixelPacket, ptr %p.32546, i64 1, !dbg !3858
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1492, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1494 = add nuw nsw i64 %x.32547, 1, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %inc1494, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1476 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3831
  %cmp1477 = icmp slt i64 %inc1494, %call1476, !dbg !3834
  br i1 %cmp1477, label %for.body1479, label %sw.epilog2309, !dbg !3835, !llvm.loop !3860

if.end1496:                                       ; preds = %sw.bb1462
  %280 = load ptr, ptr %map, align 8, !dbg !3862, !tbaa !1150
  %call1498 = tail call i32 @LocaleCompare(ptr noundef %280, ptr noundef nonnull @.str.12) #15, !dbg !3864
  %cmp1499 = icmp eq i32 %call1498, 0, !dbg !3865
  br i1 %cmp1499, label %if.then1501, label %if.end1535, !dbg !3866

if.then1501:                                      ; preds = %if.end1496
  %call1502 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3867
  call void @llvm.dbg.value(metadata ptr %call1502, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1503 = icmp eq ptr %call1502, null, !dbg !3869
  br i1 %cmp1503, label %sw.epilog2309, label %for.cond1507.preheader, !dbg !3871

for.cond1507.preheader:                           ; preds = %if.then1501
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1502, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1508539 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3872
  %cmp1509540 = icmp sgt i64 %call1508539, 0, !dbg !3875
  br i1 %cmp1509540, label %for.body1511, label %sw.epilog2309, !dbg !3876

for.body1511:                                     ; preds = %for.cond1507.preheader, %for.body1511
  %q1463.1543 = phi ptr [ %incdec.ptr1530, %for.body1511 ], [ %275, %for.cond1507.preheader ]
  %x.33542 = phi i64 [ %inc1533, %for.body1511 ], [ 0, %for.cond1507.preheader ]
  %p.33541 = phi ptr [ %incdec.ptr1531, %for.body1511 ], [ %call1502, %for.cond1507.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1463.1543, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %x.33542, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.33541, metadata !2172, metadata !DIExpression()), !dbg !2191
  %281 = load i16, ptr %p.33541, align 2, !dbg !3877, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %281, metadata !3464, metadata !DIExpression()), !dbg !3879
  %conv.i250 = zext i16 %281 to i64, !dbg !3881
  %mul.i251 = mul nuw nsw i64 %conv.i250, 65537, !dbg !3882
  %incdec.ptr1515 = getelementptr inbounds i64, ptr %q1463.1543, i64 1, !dbg !3883
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1515, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i251, ptr %q1463.1543, align 8, !dbg !3884, !tbaa !2060
  %green1516 = getelementptr inbounds %struct._PixelPacket, ptr %p.33541, i64 0, i32 1, !dbg !3885
  %282 = load i16, ptr %green1516, align 2, !dbg !3885, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %282, metadata !3464, metadata !DIExpression()), !dbg !3886
  %conv.i252 = zext i16 %282 to i64, !dbg !3888
  %mul.i253 = mul nuw nsw i64 %conv.i252, 65537, !dbg !3889
  %incdec.ptr1519 = getelementptr inbounds i64, ptr %q1463.1543, i64 2, !dbg !3890
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1519, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i253, ptr %incdec.ptr1515, align 8, !dbg !3891, !tbaa !2060
  %red1520 = getelementptr inbounds %struct._PixelPacket, ptr %p.33541, i64 0, i32 2, !dbg !3892
  %283 = load i16, ptr %red1520, align 2, !dbg !3892, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %283, metadata !3464, metadata !DIExpression()), !dbg !3893
  %conv.i254 = zext i16 %283 to i64, !dbg !3895
  %mul.i255 = mul nuw nsw i64 %conv.i254, 65537, !dbg !3896
  %incdec.ptr1523 = getelementptr inbounds i64, ptr %q1463.1543, i64 3, !dbg !3897
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1523, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i255, ptr %incdec.ptr1519, align 8, !dbg !3898, !tbaa !2060
  %opacity1524 = getelementptr inbounds %struct._PixelPacket, ptr %p.33541, i64 0, i32 3, !dbg !3899
  %284 = load i16, ptr %opacity1524, align 2, !dbg !3899, !tbaa !2403
  %285 = xor i16 %284, -1, !dbg !3899
  call void @llvm.dbg.value(metadata i16 %285, metadata !3464, metadata !DIExpression()), !dbg !3900
  %conv.i256 = zext i16 %285 to i64, !dbg !3902
  %mul.i257 = mul nuw nsw i64 %conv.i256, 65537, !dbg !3903
  %incdec.ptr1530 = getelementptr inbounds i64, ptr %q1463.1543, i64 4, !dbg !3904
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1530, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i257, ptr %incdec.ptr1523, align 8, !dbg !3905, !tbaa !2060
  %incdec.ptr1531 = getelementptr inbounds %struct._PixelPacket, ptr %p.33541, i64 1, !dbg !3906
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1531, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1533 = add nuw nsw i64 %x.33542, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %inc1533, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1508 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3872
  %cmp1509 = icmp slt i64 %inc1533, %call1508, !dbg !3875
  br i1 %cmp1509, label %for.body1511, label %sw.epilog2309, !dbg !3876, !llvm.loop !3908

if.end1535:                                       ; preds = %if.end1496
  %286 = load ptr, ptr %map, align 8, !dbg !3910, !tbaa !1150
  %call1537 = tail call i32 @LocaleCompare(ptr noundef %286, ptr noundef nonnull @.str.13) #15, !dbg !3912
  %cmp1538 = icmp eq i32 %call1537, 0, !dbg !3913
  br i1 %cmp1538, label %if.then1540, label %if.end1568, !dbg !3914

if.then1540:                                      ; preds = %if.end1535
  %call1541 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3915
  call void @llvm.dbg.value(metadata ptr %call1541, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1542 = icmp eq ptr %call1541, null, !dbg !3917
  br i1 %cmp1542, label %sw.epilog2309, label %for.cond1546.preheader, !dbg !3919

for.cond1546.preheader:                           ; preds = %if.then1540
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1541, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1547534 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3920
  %cmp1548535 = icmp sgt i64 %call1547534, 0, !dbg !3923
  br i1 %cmp1548535, label %for.body1550, label %sw.epilog2309, !dbg !3924

for.body1550:                                     ; preds = %for.cond1546.preheader, %for.body1550
  %q1463.2538 = phi ptr [ %incdec.ptr1563, %for.body1550 ], [ %275, %for.cond1546.preheader ]
  %x.34537 = phi i64 [ %inc1566, %for.body1550 ], [ 0, %for.cond1546.preheader ]
  %p.34536 = phi ptr [ %incdec.ptr1564, %for.body1550 ], [ %call1541, %for.cond1546.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1463.2538, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %x.34537, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.34536, metadata !2172, metadata !DIExpression()), !dbg !2191
  %287 = load i16, ptr %p.34536, align 2, !dbg !3925, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %287, metadata !3464, metadata !DIExpression()), !dbg !3927
  %conv.i258 = zext i16 %287 to i64, !dbg !3929
  %mul.i259 = mul nuw nsw i64 %conv.i258, 65537, !dbg !3930
  %incdec.ptr1554 = getelementptr inbounds i64, ptr %q1463.2538, i64 1, !dbg !3931
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1554, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i259, ptr %q1463.2538, align 8, !dbg !3932, !tbaa !2060
  %green1555 = getelementptr inbounds %struct._PixelPacket, ptr %p.34536, i64 0, i32 1, !dbg !3933
  %288 = load i16, ptr %green1555, align 2, !dbg !3933, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %288, metadata !3464, metadata !DIExpression()), !dbg !3934
  %conv.i260 = zext i16 %288 to i64, !dbg !3936
  %mul.i261 = mul nuw nsw i64 %conv.i260, 65537, !dbg !3937
  %incdec.ptr1558 = getelementptr inbounds i64, ptr %q1463.2538, i64 2, !dbg !3938
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1558, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i261, ptr %incdec.ptr1554, align 8, !dbg !3939, !tbaa !2060
  %red1559 = getelementptr inbounds %struct._PixelPacket, ptr %p.34536, i64 0, i32 2, !dbg !3940
  %289 = load i16, ptr %red1559, align 2, !dbg !3940, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %289, metadata !3464, metadata !DIExpression()), !dbg !3941
  %conv.i262 = zext i16 %289 to i64, !dbg !3943
  %mul.i263 = mul nuw nsw i64 %conv.i262, 65537, !dbg !3944
  %incdec.ptr1562 = getelementptr inbounds i64, ptr %q1463.2538, i64 3, !dbg !3945
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1562, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i263, ptr %incdec.ptr1558, align 8, !dbg !3946, !tbaa !2060
  %incdec.ptr1563 = getelementptr inbounds i64, ptr %q1463.2538, i64 4, !dbg !3947
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1563, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 0, ptr %incdec.ptr1562, align 8, !dbg !3948, !tbaa !2060
  %incdec.ptr1564 = getelementptr inbounds %struct._PixelPacket, ptr %p.34536, i64 1, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1564, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1566 = add nuw nsw i64 %x.34537, 1, !dbg !3950
  call void @llvm.dbg.value(metadata i64 %inc1566, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1547 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3920
  %cmp1548 = icmp slt i64 %inc1566, %call1547, !dbg !3923
  br i1 %cmp1548, label %for.body1550, label %sw.epilog2309, !dbg !3924, !llvm.loop !3951

if.end1568:                                       ; preds = %if.end1535
  %290 = load ptr, ptr %map, align 8, !dbg !3953, !tbaa !1150
  %call1570 = tail call i32 @LocaleCompare(ptr noundef %290, ptr noundef nonnull @.str.14) #15, !dbg !3955
  %cmp1571 = icmp eq i32 %call1570, 0, !dbg !3956
  br i1 %cmp1571, label %if.then1573, label %if.end1593, !dbg !3957

if.then1573:                                      ; preds = %if.end1568
  %call1574 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3958
  call void @llvm.dbg.value(metadata ptr %call1574, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1575 = icmp eq ptr %call1574, null, !dbg !3960
  br i1 %cmp1575, label %sw.epilog2309, label %for.cond1579.preheader, !dbg !3962

for.cond1579.preheader:                           ; preds = %if.then1573
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1574, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1580529 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3963
  %cmp1581530 = icmp sgt i64 %call1580529, 0, !dbg !3966
  br i1 %cmp1581530, label %for.body1583, label %sw.epilog2309, !dbg !3967

for.body1583:                                     ; preds = %for.cond1579.preheader, %ClampToQuantum.exit271
  %q1463.3533 = phi ptr [ %incdec.ptr1588, %ClampToQuantum.exit271 ], [ %275, %for.cond1579.preheader ]
  %x.35532 = phi i64 [ %inc1591, %ClampToQuantum.exit271 ], [ 0, %for.cond1579.preheader ]
  %p.35531 = phi ptr [ %incdec.ptr1589, %ClampToQuantum.exit271 ], [ %call1574, %for.cond1579.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1463.3533, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %x.35532, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.35531, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1584 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.35531) #20, !dbg !3968
  call void @llvm.dbg.value(metadata float %call1584, metadata !2492, metadata !DIExpression()), !dbg !3970
  %cmp.i264 = fcmp ugt float %call1584, 0.000000e+00, !dbg !3972
  br i1 %cmp.i264, label %if.end.i266, label %ClampToQuantum.exit271, !dbg !3973

if.end.i266:                                      ; preds = %for.body1583
  %cmp1.i265 = fcmp ult float %call1584, 6.553500e+04, !dbg !3974
  br i1 %cmp1.i265, label %if.end3.i269, label %ClampToQuantum.exit271, !dbg !3975

if.end3.i269:                                     ; preds = %if.end.i266
  %add.i267 = fadd float %call1584, 5.000000e-01, !dbg !3976
  %conv.i268 = fptoui float %add.i267 to i16, !dbg !3977
  br label %ClampToQuantum.exit271, !dbg !3978

ClampToQuantum.exit271:                           ; preds = %for.body1583, %if.end.i266, %if.end3.i269
  %retval.0.i270 = phi i16 [ %conv.i268, %if.end3.i269 ], [ 0, %for.body1583 ], [ -1, %if.end.i266 ], !dbg !3970
  call void @llvm.dbg.value(metadata i16 %retval.0.i270, metadata !3464, metadata !DIExpression()), !dbg !3979
  %conv.i272 = zext i16 %retval.0.i270 to i64, !dbg !3981
  %mul.i273 = mul nuw nsw i64 %conv.i272, 65537, !dbg !3982
  %incdec.ptr1588 = getelementptr inbounds i64, ptr %q1463.3533, i64 1, !dbg !3983
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1588, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i273, ptr %q1463.3533, align 8, !dbg !3984, !tbaa !2060
  %incdec.ptr1589 = getelementptr inbounds %struct._PixelPacket, ptr %p.35531, i64 1, !dbg !3985
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1589, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1591 = add nuw nsw i64 %x.35532, 1, !dbg !3986
  call void @llvm.dbg.value(metadata i64 %inc1591, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1580 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3963
  %cmp1581 = icmp slt i64 %inc1591, %call1580, !dbg !3966
  br i1 %cmp1581, label %for.body1583, label %sw.epilog2309, !dbg !3967, !llvm.loop !3987

if.end1593:                                       ; preds = %if.end1568
  %291 = load ptr, ptr %map, align 8, !dbg !3989, !tbaa !1150
  %call1595 = tail call i32 @LocaleCompare(ptr noundef %291, ptr noundef nonnull @.str.4) #15, !dbg !3991
  %cmp1596 = icmp eq i32 %call1595, 0, !dbg !3992
  br i1 %cmp1596, label %if.then1598, label %if.end1625, !dbg !3993

if.then1598:                                      ; preds = %if.end1593
  %call1599 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3994
  call void @llvm.dbg.value(metadata ptr %call1599, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1600 = icmp eq ptr %call1599, null, !dbg !3996
  br i1 %cmp1600, label %sw.epilog2309, label %for.cond1604.preheader, !dbg !3998

for.cond1604.preheader:                           ; preds = %if.then1598
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1599, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1605524 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3999
  %cmp1606525 = icmp sgt i64 %call1605524, 0, !dbg !4002
  br i1 %cmp1606525, label %for.body1608, label %sw.epilog2309, !dbg !4003

for.body1608:                                     ; preds = %for.cond1604.preheader, %for.body1608
  %q1463.4528 = phi ptr [ %incdec.ptr1620, %for.body1608 ], [ %275, %for.cond1604.preheader ]
  %x.36527 = phi i64 [ %inc1623, %for.body1608 ], [ 0, %for.cond1604.preheader ]
  %p.36526 = phi ptr [ %incdec.ptr1621, %for.body1608 ], [ %call1599, %for.cond1604.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1463.4528, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %x.36527, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.36526, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1609 = getelementptr inbounds %struct._PixelPacket, ptr %p.36526, i64 0, i32 2, !dbg !4004
  %292 = load i16, ptr %red1609, align 2, !dbg !4004, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %292, metadata !3464, metadata !DIExpression()), !dbg !4006
  %conv.i274 = zext i16 %292 to i64, !dbg !4008
  %mul.i275 = mul nuw nsw i64 %conv.i274, 65537, !dbg !4009
  %incdec.ptr1612 = getelementptr inbounds i64, ptr %q1463.4528, i64 1, !dbg !4010
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1612, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i275, ptr %q1463.4528, align 8, !dbg !4011, !tbaa !2060
  %green1613 = getelementptr inbounds %struct._PixelPacket, ptr %p.36526, i64 0, i32 1, !dbg !4012
  %293 = load i16, ptr %green1613, align 2, !dbg !4012, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %293, metadata !3464, metadata !DIExpression()), !dbg !4013
  %conv.i276 = zext i16 %293 to i64, !dbg !4015
  %mul.i277 = mul nuw nsw i64 %conv.i276, 65537, !dbg !4016
  %incdec.ptr1616 = getelementptr inbounds i64, ptr %q1463.4528, i64 2, !dbg !4017
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1616, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i277, ptr %incdec.ptr1612, align 8, !dbg !4018, !tbaa !2060
  %294 = load i16, ptr %p.36526, align 2, !dbg !4019, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %294, metadata !3464, metadata !DIExpression()), !dbg !4020
  %conv.i278 = zext i16 %294 to i64, !dbg !4022
  %mul.i279 = mul nuw nsw i64 %conv.i278, 65537, !dbg !4023
  %incdec.ptr1620 = getelementptr inbounds i64, ptr %q1463.4528, i64 3, !dbg !4024
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1620, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i279, ptr %incdec.ptr1616, align 8, !dbg !4025, !tbaa !2060
  %incdec.ptr1621 = getelementptr inbounds %struct._PixelPacket, ptr %p.36526, i64 1, !dbg !4026
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1621, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1623 = add nuw nsw i64 %x.36527, 1, !dbg !4027
  call void @llvm.dbg.value(metadata i64 %inc1623, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1605 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !3999
  %cmp1606 = icmp slt i64 %inc1623, %call1605, !dbg !4002
  br i1 %cmp1606, label %for.body1608, label %sw.epilog2309, !dbg !4003, !llvm.loop !4028

if.end1625:                                       ; preds = %if.end1593
  %295 = load ptr, ptr %map, align 8, !dbg !4030, !tbaa !1150
  %call1627 = tail call i32 @LocaleCompare(ptr noundef %295, ptr noundef nonnull @.str.15) #15, !dbg !4032
  %cmp1628 = icmp eq i32 %call1627, 0, !dbg !4033
  br i1 %cmp1628, label %if.then1630, label %if.end1664, !dbg !4034

if.then1630:                                      ; preds = %if.end1625
  %call1631 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4035
  call void @llvm.dbg.value(metadata ptr %call1631, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1632 = icmp eq ptr %call1631, null, !dbg !4037
  br i1 %cmp1632, label %sw.epilog2309, label %for.cond1636.preheader, !dbg !4039

for.cond1636.preheader:                           ; preds = %if.then1630
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1631, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1637519 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4040
  %cmp1638520 = icmp sgt i64 %call1637519, 0, !dbg !4043
  br i1 %cmp1638520, label %for.body1640, label %sw.epilog2309, !dbg !4044

for.body1640:                                     ; preds = %for.cond1636.preheader, %for.body1640
  %q1463.5523 = phi ptr [ %incdec.ptr1659, %for.body1640 ], [ %275, %for.cond1636.preheader ]
  %x.37522 = phi i64 [ %inc1662, %for.body1640 ], [ 0, %for.cond1636.preheader ]
  %p.37521 = phi ptr [ %incdec.ptr1660, %for.body1640 ], [ %call1631, %for.cond1636.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1463.5523, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %x.37522, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.37521, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1641 = getelementptr inbounds %struct._PixelPacket, ptr %p.37521, i64 0, i32 2, !dbg !4045
  %296 = load i16, ptr %red1641, align 2, !dbg !4045, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %296, metadata !3464, metadata !DIExpression()), !dbg !4047
  %conv.i280 = zext i16 %296 to i64, !dbg !4049
  %mul.i281 = mul nuw nsw i64 %conv.i280, 65537, !dbg !4050
  %incdec.ptr1644 = getelementptr inbounds i64, ptr %q1463.5523, i64 1, !dbg !4051
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1644, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i281, ptr %q1463.5523, align 8, !dbg !4052, !tbaa !2060
  %green1645 = getelementptr inbounds %struct._PixelPacket, ptr %p.37521, i64 0, i32 1, !dbg !4053
  %297 = load i16, ptr %green1645, align 2, !dbg !4053, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %297, metadata !3464, metadata !DIExpression()), !dbg !4054
  %conv.i282 = zext i16 %297 to i64, !dbg !4056
  %mul.i283 = mul nuw nsw i64 %conv.i282, 65537, !dbg !4057
  %incdec.ptr1648 = getelementptr inbounds i64, ptr %q1463.5523, i64 2, !dbg !4058
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1648, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i283, ptr %incdec.ptr1644, align 8, !dbg !4059, !tbaa !2060
  %298 = load i16, ptr %p.37521, align 2, !dbg !4060, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %298, metadata !3464, metadata !DIExpression()), !dbg !4061
  %conv.i284 = zext i16 %298 to i64, !dbg !4063
  %mul.i285 = mul nuw nsw i64 %conv.i284, 65537, !dbg !4064
  %incdec.ptr1652 = getelementptr inbounds i64, ptr %q1463.5523, i64 3, !dbg !4065
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1652, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i285, ptr %incdec.ptr1648, align 8, !dbg !4066, !tbaa !2060
  %opacity1653 = getelementptr inbounds %struct._PixelPacket, ptr %p.37521, i64 0, i32 3, !dbg !4067
  %299 = load i16, ptr %opacity1653, align 2, !dbg !4067, !tbaa !2403
  %300 = xor i16 %299, -1, !dbg !4067
  call void @llvm.dbg.value(metadata i16 %300, metadata !3464, metadata !DIExpression()), !dbg !4068
  %conv.i286 = zext i16 %300 to i64, !dbg !4070
  %mul.i287 = mul nuw nsw i64 %conv.i286, 65537, !dbg !4071
  %incdec.ptr1659 = getelementptr inbounds i64, ptr %q1463.5523, i64 4, !dbg !4072
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1659, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i287, ptr %incdec.ptr1652, align 8, !dbg !4073, !tbaa !2060
  %incdec.ptr1660 = getelementptr inbounds %struct._PixelPacket, ptr %p.37521, i64 1, !dbg !4074
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1660, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1662 = add nuw nsw i64 %x.37522, 1, !dbg !4075
  call void @llvm.dbg.value(metadata i64 %inc1662, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1637 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4040
  %cmp1638 = icmp slt i64 %inc1662, %call1637, !dbg !4043
  br i1 %cmp1638, label %for.body1640, label %sw.epilog2309, !dbg !4044, !llvm.loop !4076

if.end1664:                                       ; preds = %if.end1625
  %301 = load ptr, ptr %map, align 8, !dbg !4078, !tbaa !1150
  %call1666 = tail call i32 @LocaleCompare(ptr noundef %301, ptr noundef nonnull @.str.16) #15, !dbg !4080
  %cmp1667 = icmp eq i32 %call1666, 0, !dbg !4081
  %call1670 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !3820
  call void @llvm.dbg.value(metadata ptr %call1670, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1670, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1671 = icmp eq ptr %call1670, null, !dbg !3820
  br i1 %cmp1667, label %if.then1669, label %if.end1697, !dbg !4082

if.then1669:                                      ; preds = %if.end1664
  br i1 %cmp1671, label %sw.epilog2309, label %for.cond1675.preheader, !dbg !4083

for.cond1675.preheader:                           ; preds = %if.then1669
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1670, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1676514 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4085
  %cmp1677515 = icmp sgt i64 %call1676514, 0, !dbg !4088
  br i1 %cmp1677515, label %for.body1679, label %sw.epilog2309, !dbg !4089

for.body1679:                                     ; preds = %for.cond1675.preheader, %for.body1679
  %q1463.6518 = phi ptr [ %incdec.ptr1692, %for.body1679 ], [ %275, %for.cond1675.preheader ]
  %x.38517 = phi i64 [ %inc1695, %for.body1679 ], [ 0, %for.cond1675.preheader ]
  %p.38516 = phi ptr [ %incdec.ptr1693, %for.body1679 ], [ %call1670, %for.cond1675.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1463.6518, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %x.38517, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.38516, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1680 = getelementptr inbounds %struct._PixelPacket, ptr %p.38516, i64 0, i32 2, !dbg !4090
  %302 = load i16, ptr %red1680, align 2, !dbg !4090, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %302, metadata !3464, metadata !DIExpression()), !dbg !4092
  %conv.i288 = zext i16 %302 to i64, !dbg !4094
  %mul.i289 = mul nuw nsw i64 %conv.i288, 65537, !dbg !4095
  %incdec.ptr1683 = getelementptr inbounds i64, ptr %q1463.6518, i64 1, !dbg !4096
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1683, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i289, ptr %q1463.6518, align 8, !dbg !4097, !tbaa !2060
  %green1684 = getelementptr inbounds %struct._PixelPacket, ptr %p.38516, i64 0, i32 1, !dbg !4098
  %303 = load i16, ptr %green1684, align 2, !dbg !4098, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %303, metadata !3464, metadata !DIExpression()), !dbg !4099
  %conv.i290 = zext i16 %303 to i64, !dbg !4101
  %mul.i291 = mul nuw nsw i64 %conv.i290, 65537, !dbg !4102
  %incdec.ptr1687 = getelementptr inbounds i64, ptr %q1463.6518, i64 2, !dbg !4103
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1687, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i291, ptr %incdec.ptr1683, align 8, !dbg !4104, !tbaa !2060
  %304 = load i16, ptr %p.38516, align 2, !dbg !4105, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %304, metadata !3464, metadata !DIExpression()), !dbg !4106
  %conv.i292 = zext i16 %304 to i64, !dbg !4108
  %mul.i293 = mul nuw nsw i64 %conv.i292, 65537, !dbg !4109
  %incdec.ptr1691 = getelementptr inbounds i64, ptr %q1463.6518, i64 3, !dbg !4110
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1691, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 %mul.i293, ptr %incdec.ptr1687, align 8, !dbg !4111, !tbaa !2060
  %incdec.ptr1692 = getelementptr inbounds i64, ptr %q1463.6518, i64 4, !dbg !4112
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1692, metadata !2185, metadata !DIExpression()), !dbg !3820
  store i64 0, ptr %incdec.ptr1691, align 8, !dbg !4113, !tbaa !2060
  %incdec.ptr1693 = getelementptr inbounds %struct._PixelPacket, ptr %p.38516, i64 1, !dbg !4114
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1693, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1695 = add nuw nsw i64 %x.38517, 1, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %inc1695, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1676 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4085
  %cmp1677 = icmp slt i64 %inc1695, %call1676, !dbg !4088
  br i1 %cmp1677, label %for.body1679, label %sw.epilog2309, !dbg !4089, !llvm.loop !4116

if.end1697:                                       ; preds = %if.end1664
  br i1 %cmp1671, label %sw.epilog2309, label %if.end1702, !dbg !4118

if.end1702:                                       ; preds = %if.end1697
  %call1703 = tail call ptr @GetVirtualIndexQueue(ptr noundef %image) #15, !dbg !4119
  call void @llvm.dbg.value(metadata ptr %call1703, metadata !2171, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %275, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata ptr %call1670, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1705507 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4120
  %cmp1706508 = icmp sgt i64 %call1705507, 0, !dbg !4123
  br i1 %cmp1706508, label %for.cond1709.preheader.lr.ph, label %sw.epilog2309, !dbg !4124

for.cond1709.preheader.lr.ph:                     ; preds = %if.end1702
  %colorspace1738 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %cmp1743 = icmp eq ptr %call1703, null
  br label %for.cond1709.preheader, !dbg !4124

for.cond1709.preheader:                           ; preds = %for.cond1709.preheader.lr.ph, %for.end1765
  %q1463.7513 = phi ptr [ %275, %for.cond1709.preheader.lr.ph ], [ %q1463.8.lcssa, %for.end1765 ]
  %x.39511 = phi i64 [ 0, %for.cond1709.preheader.lr.ph ], [ %inc1768, %for.end1765 ]
  %p.39509 = phi ptr [ %call1670, %for.cond1709.preheader.lr.ph ], [ %incdec.ptr1766, %for.end1765 ]
  call void @llvm.dbg.value(metadata i64 %x.39511, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.39509, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %q1463.7513, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2191
  br i1 %cmp9403, label %for.body1712.lr.ph, label %for.end1765, !dbg !4125

for.body1712.lr.ph:                               ; preds = %for.cond1709.preheader
  %add.ptr1742 = getelementptr inbounds i16, ptr %call1703, i64 %x.39511
  %opacity1734 = getelementptr inbounds %struct._PixelPacket, ptr %p.39509, i64 0, i32 3
  %green1719 = getelementptr inbounds %struct._PixelPacket, ptr %p.39509, i64 0, i32 1
  %red1715 = getelementptr inbounds %struct._PixelPacket, ptr %p.39509, i64 0, i32 2
  br label %for.body1712, !dbg !4125

for.body1712:                                     ; preds = %for.body1712.lr.ph, %sw.epilog1761
  %q1463.8504 = phi ptr [ %q1463.7513, %for.body1712.lr.ph ], [ %incdec.ptr1762, %sw.epilog1761 ]
  %i.5503 = phi i64 [ 0, %for.body1712.lr.ph ], [ %inc1764, %sw.epilog1761 ]
  call void @llvm.dbg.value(metadata ptr %q1463.8504, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %i.5503, metadata !2173, metadata !DIExpression()), !dbg !2191
  store i64 0, ptr %q1463.8504, align 8, !dbg !4128, !tbaa !2060
  %arrayidx1713 = getelementptr inbounds i32, ptr %call2, i64 %i.5503, !dbg !4131
  %305 = load i32, ptr %arrayidx1713, align 4, !dbg !4131, !tbaa !2216
  switch i32 %305, label %sw.epilog1761 [
    i32 14, label %sw.bb1714
    i32 6, label %sw.bb1714
    i32 9, label %sw.bb1718
    i32 12, label %sw.bb1718
    i32 3, label %sw.bb1722
    i32 19, label %sw.bb1722
    i32 1, label %sw.bb1726
    i32 13, label %sw.bb1733
    i32 2, label %sw.bb1737
    i32 11, label %sw.bb1755
  ], !dbg !4132

sw.bb1714:                                        ; preds = %for.body1712, %for.body1712
  %306 = load i16, ptr %red1715, align 2, !dbg !4133, !tbaa !2338
  call void @llvm.dbg.value(metadata i16 %306, metadata !3464, metadata !DIExpression()), !dbg !4136
  br label %sw.epilog1761.sink.split, !dbg !4138

sw.bb1718:                                        ; preds = %for.body1712, %for.body1712
  %307 = load i16, ptr %green1719, align 2, !dbg !4139, !tbaa !2326
  call void @llvm.dbg.value(metadata i16 %307, metadata !3464, metadata !DIExpression()), !dbg !4141
  br label %sw.epilog1761.sink.split, !dbg !4143

sw.bb1722:                                        ; preds = %for.body1712, %for.body1712
  %308 = load i16, ptr %p.39509, align 2, !dbg !4144, !tbaa !2308
  call void @llvm.dbg.value(metadata i16 %308, metadata !3464, metadata !DIExpression()), !dbg !4146
  br label %sw.epilog1761.sink.split, !dbg !4148

sw.bb1726:                                        ; preds = %for.body1712
  %309 = load i16, ptr %opacity1734, align 2, !dbg !4149, !tbaa !2403
  %310 = xor i16 %309, -1, !dbg !4149
  call void @llvm.dbg.value(metadata i16 %310, metadata !3464, metadata !DIExpression()), !dbg !4151
  br label %sw.epilog1761.sink.split, !dbg !4153

sw.bb1733:                                        ; preds = %for.body1712
  %311 = load i16, ptr %opacity1734, align 2, !dbg !4154, !tbaa !2403
  call void @llvm.dbg.value(metadata i16 %311, metadata !3464, metadata !DIExpression()), !dbg !4156
  br label %sw.epilog1761.sink.split, !dbg !4158

sw.bb1737:                                        ; preds = %for.body1712
  %312 = load i32, ptr %colorspace1738, align 4, !dbg !4159, !tbaa !1443
  %cmp1739 = icmp eq i32 %312, 12, !dbg !4162
  br i1 %cmp1739, label %if.then1741, label %sw.epilog1761, !dbg !4163

if.then1741:                                      ; preds = %sw.bb1737
  br i1 %cmp1743, label %sw.epilog1761.sink.split, label %cond.false1746, !dbg !4164

cond.false1746:                                   ; preds = %if.then1741
  %313 = load i16, ptr %add.ptr1742, align 2, !dbg !4164, !tbaa !2741
  br label %sw.epilog1761.sink.split, !dbg !4164

sw.bb1755:                                        ; preds = %for.body1712
  %call1756 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.39509) #20, !dbg !4165
  call void @llvm.dbg.value(metadata float %call1756, metadata !2492, metadata !DIExpression()), !dbg !4167
  %cmp.i306 = fcmp ugt float %call1756, 0.000000e+00, !dbg !4169
  br i1 %cmp.i306, label %if.end.i308, label %sw.epilog1761.sink.split, !dbg !4170

if.end.i308:                                      ; preds = %sw.bb1755
  %cmp1.i307 = fcmp ult float %call1756, 6.553500e+04, !dbg !4171
  br i1 %cmp1.i307, label %if.end3.i311, label %sw.epilog1761.sink.split, !dbg !4172

if.end3.i311:                                     ; preds = %if.end.i308
  %add.i309 = fadd float %call1756, 5.000000e-01, !dbg !4173
  %conv.i310 = fptoui float %add.i309 to i16, !dbg !4174
  br label %sw.epilog1761.sink.split, !dbg !4175

sw.epilog1761.sink.split:                         ; preds = %if.end3.i311, %if.end.i308, %sw.bb1755, %cond.false1746, %if.then1741, %sw.bb1714, %sw.bb1718, %sw.bb1722, %sw.bb1726, %sw.bb1733
  %cond1750.sink = phi i16 [ %311, %sw.bb1733 ], [ %310, %sw.bb1726 ], [ %308, %sw.bb1722 ], [ %307, %sw.bb1718 ], [ %306, %sw.bb1714 ], [ %313, %cond.false1746 ], [ 0, %if.then1741 ], [ %conv.i310, %if.end3.i311 ], [ 0, %sw.bb1755 ], [ -1, %if.end.i308 ]
  %conv.i304 = zext i16 %cond1750.sink to i64, !dbg !4176
  %mul.i305 = mul nuw nsw i64 %conv.i304, 65537, !dbg !4176
  store i64 %mul.i305, ptr %q1463.8504, align 8, !dbg !4176, !tbaa !2060
  br label %sw.epilog1761, !dbg !4177

sw.epilog1761:                                    ; preds = %sw.epilog1761.sink.split, %for.body1712, %sw.bb1737
  %incdec.ptr1762 = getelementptr inbounds i64, ptr %q1463.8504, i64 1, !dbg !4177
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1762, metadata !2185, metadata !DIExpression()), !dbg !3820
  %inc1764 = add nuw nsw i64 %i.5503, 1, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %inc1764, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond798.not = icmp eq i64 %inc1764, %call1, !dbg !4179
  br i1 %exitcond798.not, label %for.end1765, label %for.body1712, !dbg !4125, !llvm.loop !4180

for.end1765:                                      ; preds = %sw.epilog1761, %for.cond1709.preheader
  %q1463.8.lcssa = phi ptr [ %q1463.7513, %for.cond1709.preheader ], [ %incdec.ptr1762, %sw.epilog1761 ], !dbg !3820
  %incdec.ptr1766 = getelementptr inbounds %struct._PixelPacket, ptr %p.39509, i64 1, !dbg !4182
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1766, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1768 = add nuw nsw i64 %x.39511, 1, !dbg !4183
  call void @llvm.dbg.value(metadata ptr %q1463.8.lcssa, metadata !2185, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %inc1768, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1705 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4120
  %cmp1706 = icmp slt i64 %inc1768, %call1705, !dbg !4123
  br i1 %cmp1706, label %for.cond1709.preheader, label %sw.epilog2309, !dbg !4124, !llvm.loop !4184

sw.bb1771:                                        ; preds = %for.end
  %pixels1773 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 6, !dbg !4186
  %314 = load ptr, ptr %pixels1773, align 8, !dbg !4186, !tbaa !1138
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  %315 = load ptr, ptr %map, align 8, !dbg !4188, !tbaa !1150
  %call1775 = tail call i32 @LocaleCompare(ptr noundef %315, ptr noundef nonnull @.str.11) #15, !dbg !4190
  %cmp1776 = icmp eq i32 %call1775, 0, !dbg !4191
  br i1 %cmp1776, label %if.then1778, label %if.end1799, !dbg !4192

if.then1778:                                      ; preds = %sw.bb1771
  %call1779 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4193
  call void @llvm.dbg.value(metadata ptr %call1779, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1780 = icmp eq ptr %call1779, null, !dbg !4195
  br i1 %cmp1780, label %sw.epilog2309, label %for.cond1784.preheader, !dbg !4197

for.cond1784.preheader:                           ; preds = %if.then1778
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1779, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1785497 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4198
  %cmp1786498 = icmp sgt i64 %call1785497, 0, !dbg !4201
  br i1 %cmp1786498, label %for.body1788, label %sw.epilog2309, !dbg !4202

for.body1788:                                     ; preds = %for.cond1784.preheader, %for.body1788
  %q1772.0501 = phi ptr [ %incdec.ptr1794, %for.body1788 ], [ %314, %for.cond1784.preheader ]
  %x.40500 = phi i64 [ %inc1797, %for.body1788 ], [ 0, %for.cond1784.preheader ]
  %p.40499 = phi ptr [ %incdec.ptr1795, %for.body1788 ], [ %call1779, %for.cond1784.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1772.0501, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %x.40500, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.40499, metadata !2172, metadata !DIExpression()), !dbg !2191
  %316 = load i16, ptr %p.40499, align 2, !dbg !4203, !tbaa !2308
  %incdec.ptr1790 = getelementptr inbounds i16, ptr %q1772.0501, i64 1, !dbg !4205
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1790, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %316, ptr %q1772.0501, align 2, !dbg !4206, !tbaa !2741
  %green1791 = getelementptr inbounds %struct._PixelPacket, ptr %p.40499, i64 0, i32 1, !dbg !4207
  %317 = load i16, ptr %green1791, align 2, !dbg !4207, !tbaa !2326
  %incdec.ptr1792 = getelementptr inbounds i16, ptr %q1772.0501, i64 2, !dbg !4208
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1792, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %317, ptr %incdec.ptr1790, align 2, !dbg !4209, !tbaa !2741
  %red1793 = getelementptr inbounds %struct._PixelPacket, ptr %p.40499, i64 0, i32 2, !dbg !4210
  %318 = load i16, ptr %red1793, align 2, !dbg !4210, !tbaa !2338
  %incdec.ptr1794 = getelementptr inbounds i16, ptr %q1772.0501, i64 3, !dbg !4211
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1794, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %318, ptr %incdec.ptr1792, align 2, !dbg !4212, !tbaa !2741
  %incdec.ptr1795 = getelementptr inbounds %struct._PixelPacket, ptr %p.40499, i64 1, !dbg !4213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1795, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1797 = add nuw nsw i64 %x.40500, 1, !dbg !4214
  call void @llvm.dbg.value(metadata i64 %inc1797, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1785 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4198
  %cmp1786 = icmp slt i64 %inc1797, %call1785, !dbg !4201
  br i1 %cmp1786, label %for.body1788, label %sw.epilog2309, !dbg !4202, !llvm.loop !4215

if.end1799:                                       ; preds = %sw.bb1771
  %319 = load ptr, ptr %map, align 8, !dbg !4217, !tbaa !1150
  %call1801 = tail call i32 @LocaleCompare(ptr noundef %319, ptr noundef nonnull @.str.12) #15, !dbg !4219
  %cmp1802 = icmp eq i32 %call1801, 0, !dbg !4220
  br i1 %cmp1802, label %if.then1804, label %if.end1830, !dbg !4221

if.then1804:                                      ; preds = %if.end1799
  %call1805 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4222
  call void @llvm.dbg.value(metadata ptr %call1805, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1806 = icmp eq ptr %call1805, null, !dbg !4224
  br i1 %cmp1806, label %sw.epilog2309, label %for.cond1810.preheader, !dbg !4226

for.cond1810.preheader:                           ; preds = %if.then1804
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1805, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1811492 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4227
  %cmp1812493 = icmp sgt i64 %call1811492, 0, !dbg !4230
  br i1 %cmp1812493, label %for.body1814, label %sw.epilog2309, !dbg !4231

for.body1814:                                     ; preds = %for.cond1810.preheader, %for.body1814
  %q1772.1496 = phi ptr [ %incdec.ptr1825, %for.body1814 ], [ %314, %for.cond1810.preheader ]
  %x.41495 = phi i64 [ %inc1828, %for.body1814 ], [ 0, %for.cond1810.preheader ]
  %p.41494 = phi ptr [ %incdec.ptr1826, %for.body1814 ], [ %call1805, %for.cond1810.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1772.1496, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %x.41495, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.41494, metadata !2172, metadata !DIExpression()), !dbg !2191
  %320 = load i16, ptr %p.41494, align 2, !dbg !4232, !tbaa !2308
  %incdec.ptr1816 = getelementptr inbounds i16, ptr %q1772.1496, i64 1, !dbg !4234
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1816, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %320, ptr %q1772.1496, align 2, !dbg !4235, !tbaa !2741
  %green1817 = getelementptr inbounds %struct._PixelPacket, ptr %p.41494, i64 0, i32 1, !dbg !4236
  %321 = load i16, ptr %green1817, align 2, !dbg !4236, !tbaa !2326
  %incdec.ptr1818 = getelementptr inbounds i16, ptr %q1772.1496, i64 2, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1818, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %321, ptr %incdec.ptr1816, align 2, !dbg !4238, !tbaa !2741
  %red1819 = getelementptr inbounds %struct._PixelPacket, ptr %p.41494, i64 0, i32 2, !dbg !4239
  %322 = load i16, ptr %red1819, align 2, !dbg !4239, !tbaa !2338
  %incdec.ptr1820 = getelementptr inbounds i16, ptr %q1772.1496, i64 3, !dbg !4240
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1820, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %322, ptr %incdec.ptr1818, align 2, !dbg !4241, !tbaa !2741
  %opacity1821 = getelementptr inbounds %struct._PixelPacket, ptr %p.41494, i64 0, i32 3, !dbg !4242
  %323 = load i16, ptr %opacity1821, align 2, !dbg !4242, !tbaa !2403
  %324 = xor i16 %323, -1, !dbg !4242
  %incdec.ptr1825 = getelementptr inbounds i16, ptr %q1772.1496, i64 4, !dbg !4243
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1825, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %324, ptr %incdec.ptr1820, align 2, !dbg !4244, !tbaa !2741
  %incdec.ptr1826 = getelementptr inbounds %struct._PixelPacket, ptr %p.41494, i64 1, !dbg !4245
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1826, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1828 = add nuw nsw i64 %x.41495, 1, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %inc1828, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1811 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4227
  %cmp1812 = icmp slt i64 %inc1828, %call1811, !dbg !4230
  br i1 %cmp1812, label %for.body1814, label %sw.epilog2309, !dbg !4231, !llvm.loop !4247

if.end1830:                                       ; preds = %if.end1799
  %325 = load ptr, ptr %map, align 8, !dbg !4249, !tbaa !1150
  %call1832 = tail call i32 @LocaleCompare(ptr noundef %325, ptr noundef nonnull @.str.13) #15, !dbg !4251
  %cmp1833 = icmp eq i32 %call1832, 0, !dbg !4252
  br i1 %cmp1833, label %if.then1835, label %if.end1857, !dbg !4253

if.then1835:                                      ; preds = %if.end1830
  %call1836 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4254
  call void @llvm.dbg.value(metadata ptr %call1836, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1837 = icmp eq ptr %call1836, null, !dbg !4256
  br i1 %cmp1837, label %sw.epilog2309, label %for.cond1841.preheader, !dbg !4258

for.cond1841.preheader:                           ; preds = %if.then1835
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1836, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1842487 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4259
  %cmp1843488 = icmp sgt i64 %call1842487, 0, !dbg !4262
  br i1 %cmp1843488, label %for.body1845, label %sw.epilog2309, !dbg !4263

for.body1845:                                     ; preds = %for.cond1841.preheader, %for.body1845
  %q1772.2491 = phi ptr [ %incdec.ptr1852, %for.body1845 ], [ %314, %for.cond1841.preheader ]
  %x.42490 = phi i64 [ %inc1855, %for.body1845 ], [ 0, %for.cond1841.preheader ]
  %p.42489 = phi ptr [ %incdec.ptr1853, %for.body1845 ], [ %call1836, %for.cond1841.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1772.2491, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %x.42490, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.42489, metadata !2172, metadata !DIExpression()), !dbg !2191
  %326 = load i16, ptr %p.42489, align 2, !dbg !4264, !tbaa !2308
  %incdec.ptr1847 = getelementptr inbounds i16, ptr %q1772.2491, i64 1, !dbg !4266
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1847, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %326, ptr %q1772.2491, align 2, !dbg !4267, !tbaa !2741
  %green1848 = getelementptr inbounds %struct._PixelPacket, ptr %p.42489, i64 0, i32 1, !dbg !4268
  %327 = load i16, ptr %green1848, align 2, !dbg !4268, !tbaa !2326
  %incdec.ptr1849 = getelementptr inbounds i16, ptr %q1772.2491, i64 2, !dbg !4269
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1849, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %327, ptr %incdec.ptr1847, align 2, !dbg !4270, !tbaa !2741
  %red1850 = getelementptr inbounds %struct._PixelPacket, ptr %p.42489, i64 0, i32 2, !dbg !4271
  %328 = load i16, ptr %red1850, align 2, !dbg !4271, !tbaa !2338
  %incdec.ptr1851 = getelementptr inbounds i16, ptr %q1772.2491, i64 3, !dbg !4272
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1851, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %328, ptr %incdec.ptr1849, align 2, !dbg !4273, !tbaa !2741
  %incdec.ptr1852 = getelementptr inbounds i16, ptr %q1772.2491, i64 4, !dbg !4274
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1852, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 0, ptr %incdec.ptr1851, align 2, !dbg !4275, !tbaa !2741
  %incdec.ptr1853 = getelementptr inbounds %struct._PixelPacket, ptr %p.42489, i64 1, !dbg !4276
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1853, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1855 = add nuw nsw i64 %x.42490, 1, !dbg !4277
  call void @llvm.dbg.value(metadata i64 %inc1855, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1842 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4259
  %cmp1843 = icmp slt i64 %inc1855, %call1842, !dbg !4262
  br i1 %cmp1843, label %for.body1845, label %sw.epilog2309, !dbg !4263, !llvm.loop !4278

if.end1857:                                       ; preds = %if.end1830
  %329 = load ptr, ptr %map, align 8, !dbg !4280, !tbaa !1150
  %call1859 = tail call i32 @LocaleCompare(ptr noundef %329, ptr noundef nonnull @.str.14) #15, !dbg !4282
  %cmp1860 = icmp eq i32 %call1859, 0, !dbg !4283
  br i1 %cmp1860, label %if.then1862, label %if.end1880, !dbg !4284

if.then1862:                                      ; preds = %if.end1857
  %call1863 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4285
  call void @llvm.dbg.value(metadata ptr %call1863, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1864 = icmp eq ptr %call1863, null, !dbg !4287
  br i1 %cmp1864, label %sw.epilog2309, label %for.cond1868.preheader, !dbg !4289

for.cond1868.preheader:                           ; preds = %if.then1862
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1863, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1869482 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4290
  %cmp1870483 = icmp sgt i64 %call1869482, 0, !dbg !4293
  br i1 %cmp1870483, label %for.body1872, label %sw.epilog2309, !dbg !4294

for.body1872:                                     ; preds = %for.cond1868.preheader, %ClampToQuantum.exit323
  %q1772.3486 = phi ptr [ %incdec.ptr1875, %ClampToQuantum.exit323 ], [ %314, %for.cond1868.preheader ]
  %x.43485 = phi i64 [ %inc1878, %ClampToQuantum.exit323 ], [ 0, %for.cond1868.preheader ]
  %p.43484 = phi ptr [ %incdec.ptr1876, %ClampToQuantum.exit323 ], [ %call1863, %for.cond1868.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1772.3486, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %x.43485, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.43484, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1873 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.43484) #20, !dbg !4295
  call void @llvm.dbg.value(metadata float %call1873, metadata !2492, metadata !DIExpression()), !dbg !4297
  %cmp.i316 = fcmp ugt float %call1873, 0.000000e+00, !dbg !4299
  br i1 %cmp.i316, label %if.end.i318, label %ClampToQuantum.exit323, !dbg !4300

if.end.i318:                                      ; preds = %for.body1872
  %cmp1.i317 = fcmp ult float %call1873, 6.553500e+04, !dbg !4301
  br i1 %cmp1.i317, label %if.end3.i321, label %ClampToQuantum.exit323, !dbg !4302

if.end3.i321:                                     ; preds = %if.end.i318
  %add.i319 = fadd float %call1873, 5.000000e-01, !dbg !4303
  %conv.i320 = fptoui float %add.i319 to i16, !dbg !4304
  br label %ClampToQuantum.exit323, !dbg !4305

ClampToQuantum.exit323:                           ; preds = %for.body1872, %if.end.i318, %if.end3.i321
  %retval.0.i322 = phi i16 [ %conv.i320, %if.end3.i321 ], [ 0, %for.body1872 ], [ -1, %if.end.i318 ], !dbg !4297
  %incdec.ptr1875 = getelementptr inbounds i16, ptr %q1772.3486, i64 1, !dbg !4306
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1875, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %retval.0.i322, ptr %q1772.3486, align 2, !dbg !4307, !tbaa !2741
  %incdec.ptr1876 = getelementptr inbounds %struct._PixelPacket, ptr %p.43484, i64 1, !dbg !4308
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1876, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1878 = add nuw nsw i64 %x.43485, 1, !dbg !4309
  call void @llvm.dbg.value(metadata i64 %inc1878, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1869 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4290
  %cmp1870 = icmp slt i64 %inc1878, %call1869, !dbg !4293
  br i1 %cmp1870, label %for.body1872, label %sw.epilog2309, !dbg !4294, !llvm.loop !4310

if.end1880:                                       ; preds = %if.end1857
  %330 = load ptr, ptr %map, align 8, !dbg !4312, !tbaa !1150
  %call1882 = tail call i32 @LocaleCompare(ptr noundef %330, ptr noundef nonnull @.str.4) #15, !dbg !4314
  %cmp1883 = icmp eq i32 %call1882, 0, !dbg !4315
  br i1 %cmp1883, label %if.then1885, label %if.end1906, !dbg !4316

if.then1885:                                      ; preds = %if.end1880
  %call1886 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4317
  call void @llvm.dbg.value(metadata ptr %call1886, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1887 = icmp eq ptr %call1886, null, !dbg !4319
  br i1 %cmp1887, label %sw.epilog2309, label %for.cond1891.preheader, !dbg !4321

for.cond1891.preheader:                           ; preds = %if.then1885
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1886, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1892477 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4322
  %cmp1893478 = icmp sgt i64 %call1892477, 0, !dbg !4325
  br i1 %cmp1893478, label %for.body1895, label %sw.epilog2309, !dbg !4326

for.body1895:                                     ; preds = %for.cond1891.preheader, %for.body1895
  %q1772.4481 = phi ptr [ %incdec.ptr1901, %for.body1895 ], [ %314, %for.cond1891.preheader ]
  %x.44480 = phi i64 [ %inc1904, %for.body1895 ], [ 0, %for.cond1891.preheader ]
  %p.44479 = phi ptr [ %incdec.ptr1902, %for.body1895 ], [ %call1886, %for.cond1891.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1772.4481, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %x.44480, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.44479, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1896 = getelementptr inbounds %struct._PixelPacket, ptr %p.44479, i64 0, i32 2, !dbg !4327
  %331 = load i16, ptr %red1896, align 2, !dbg !4327, !tbaa !2338
  %incdec.ptr1897 = getelementptr inbounds i16, ptr %q1772.4481, i64 1, !dbg !4329
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1897, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %331, ptr %q1772.4481, align 2, !dbg !4330, !tbaa !2741
  %green1898 = getelementptr inbounds %struct._PixelPacket, ptr %p.44479, i64 0, i32 1, !dbg !4331
  %332 = load i16, ptr %green1898, align 2, !dbg !4331, !tbaa !2326
  %incdec.ptr1899 = getelementptr inbounds i16, ptr %q1772.4481, i64 2, !dbg !4332
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1899, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %332, ptr %incdec.ptr1897, align 2, !dbg !4333, !tbaa !2741
  %333 = load i16, ptr %p.44479, align 2, !dbg !4334, !tbaa !2308
  %incdec.ptr1901 = getelementptr inbounds i16, ptr %q1772.4481, i64 3, !dbg !4335
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1901, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %333, ptr %incdec.ptr1899, align 2, !dbg !4336, !tbaa !2741
  %incdec.ptr1902 = getelementptr inbounds %struct._PixelPacket, ptr %p.44479, i64 1, !dbg !4337
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1902, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1904 = add nuw nsw i64 %x.44480, 1, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %inc1904, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1892 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4322
  %cmp1893 = icmp slt i64 %inc1904, %call1892, !dbg !4325
  br i1 %cmp1893, label %for.body1895, label %sw.epilog2309, !dbg !4326, !llvm.loop !4339

if.end1906:                                       ; preds = %if.end1880
  %334 = load ptr, ptr %map, align 8, !dbg !4341, !tbaa !1150
  %call1908 = tail call i32 @LocaleCompare(ptr noundef %334, ptr noundef nonnull @.str.15) #15, !dbg !4343
  %cmp1909 = icmp eq i32 %call1908, 0, !dbg !4344
  br i1 %cmp1909, label %if.then1911, label %if.end1937, !dbg !4345

if.then1911:                                      ; preds = %if.end1906
  %call1912 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4346
  call void @llvm.dbg.value(metadata ptr %call1912, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1913 = icmp eq ptr %call1912, null, !dbg !4348
  br i1 %cmp1913, label %sw.epilog2309, label %for.cond1917.preheader, !dbg !4350

for.cond1917.preheader:                           ; preds = %if.then1911
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1912, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1918472 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4351
  %cmp1919473 = icmp sgt i64 %call1918472, 0, !dbg !4354
  br i1 %cmp1919473, label %for.body1921, label %sw.epilog2309, !dbg !4355

for.body1921:                                     ; preds = %for.cond1917.preheader, %for.body1921
  %q1772.5476 = phi ptr [ %incdec.ptr1932, %for.body1921 ], [ %314, %for.cond1917.preheader ]
  %x.45475 = phi i64 [ %inc1935, %for.body1921 ], [ 0, %for.cond1917.preheader ]
  %p.45474 = phi ptr [ %incdec.ptr1933, %for.body1921 ], [ %call1912, %for.cond1917.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1772.5476, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %x.45475, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.45474, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1922 = getelementptr inbounds %struct._PixelPacket, ptr %p.45474, i64 0, i32 2, !dbg !4356
  %335 = load i16, ptr %red1922, align 2, !dbg !4356, !tbaa !2338
  %incdec.ptr1923 = getelementptr inbounds i16, ptr %q1772.5476, i64 1, !dbg !4358
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1923, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %335, ptr %q1772.5476, align 2, !dbg !4359, !tbaa !2741
  %green1924 = getelementptr inbounds %struct._PixelPacket, ptr %p.45474, i64 0, i32 1, !dbg !4360
  %336 = load i16, ptr %green1924, align 2, !dbg !4360, !tbaa !2326
  %incdec.ptr1925 = getelementptr inbounds i16, ptr %q1772.5476, i64 2, !dbg !4361
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1925, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %336, ptr %incdec.ptr1923, align 2, !dbg !4362, !tbaa !2741
  %337 = load i16, ptr %p.45474, align 2, !dbg !4363, !tbaa !2308
  %incdec.ptr1927 = getelementptr inbounds i16, ptr %q1772.5476, i64 3, !dbg !4364
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1927, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %337, ptr %incdec.ptr1925, align 2, !dbg !4365, !tbaa !2741
  %opacity1928 = getelementptr inbounds %struct._PixelPacket, ptr %p.45474, i64 0, i32 3, !dbg !4366
  %338 = load i16, ptr %opacity1928, align 2, !dbg !4366, !tbaa !2403
  %339 = xor i16 %338, -1, !dbg !4366
  %incdec.ptr1932 = getelementptr inbounds i16, ptr %q1772.5476, i64 4, !dbg !4367
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1932, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %339, ptr %incdec.ptr1927, align 2, !dbg !4368, !tbaa !2741
  %incdec.ptr1933 = getelementptr inbounds %struct._PixelPacket, ptr %p.45474, i64 1, !dbg !4369
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1933, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1935 = add nuw nsw i64 %x.45475, 1, !dbg !4370
  call void @llvm.dbg.value(metadata i64 %inc1935, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1918 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4351
  %cmp1919 = icmp slt i64 %inc1935, %call1918, !dbg !4354
  br i1 %cmp1919, label %for.body1921, label %sw.epilog2309, !dbg !4355, !llvm.loop !4371

if.end1937:                                       ; preds = %if.end1906
  %340 = load ptr, ptr %map, align 8, !dbg !4373, !tbaa !1150
  %call1939 = tail call i32 @LocaleCompare(ptr noundef %340, ptr noundef nonnull @.str.16) #15, !dbg !4375
  %cmp1940 = icmp eq i32 %call1939, 0, !dbg !4376
  %call1943 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4187
  call void @llvm.dbg.value(metadata ptr %call1943, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1943, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp1944 = icmp eq ptr %call1943, null, !dbg !4187
  br i1 %cmp1940, label %if.then1942, label %if.end1964, !dbg !4377

if.then1942:                                      ; preds = %if.end1937
  br i1 %cmp1944, label %sw.epilog2309, label %for.cond1948.preheader, !dbg !4378

for.cond1948.preheader:                           ; preds = %if.then1942
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call1943, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1949467 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4380
  %cmp1950468 = icmp sgt i64 %call1949467, 0, !dbg !4383
  br i1 %cmp1950468, label %for.body1952, label %sw.epilog2309, !dbg !4384

for.body1952:                                     ; preds = %for.cond1948.preheader, %for.body1952
  %q1772.6471 = phi ptr [ %incdec.ptr1959, %for.body1952 ], [ %314, %for.cond1948.preheader ]
  %x.46470 = phi i64 [ %inc1962, %for.body1952 ], [ 0, %for.cond1948.preheader ]
  %p.46469 = phi ptr [ %incdec.ptr1960, %for.body1952 ], [ %call1943, %for.cond1948.preheader ]
  call void @llvm.dbg.value(metadata ptr %q1772.6471, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %x.46470, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.46469, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red1953 = getelementptr inbounds %struct._PixelPacket, ptr %p.46469, i64 0, i32 2, !dbg !4385
  %341 = load i16, ptr %red1953, align 2, !dbg !4385, !tbaa !2338
  %incdec.ptr1954 = getelementptr inbounds i16, ptr %q1772.6471, i64 1, !dbg !4387
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1954, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %341, ptr %q1772.6471, align 2, !dbg !4388, !tbaa !2741
  %green1955 = getelementptr inbounds %struct._PixelPacket, ptr %p.46469, i64 0, i32 1, !dbg !4389
  %342 = load i16, ptr %green1955, align 2, !dbg !4389, !tbaa !2326
  %incdec.ptr1956 = getelementptr inbounds i16, ptr %q1772.6471, i64 2, !dbg !4390
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1956, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %342, ptr %incdec.ptr1954, align 2, !dbg !4391, !tbaa !2741
  %343 = load i16, ptr %p.46469, align 2, !dbg !4392, !tbaa !2308
  %incdec.ptr1958 = getelementptr inbounds i16, ptr %q1772.6471, i64 3, !dbg !4393
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1958, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 %343, ptr %incdec.ptr1956, align 2, !dbg !4394, !tbaa !2741
  %incdec.ptr1959 = getelementptr inbounds i16, ptr %q1772.6471, i64 4, !dbg !4395
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1959, metadata !2187, metadata !DIExpression()), !dbg !4187
  store i16 0, ptr %incdec.ptr1958, align 2, !dbg !4396, !tbaa !2741
  %incdec.ptr1960 = getelementptr inbounds %struct._PixelPacket, ptr %p.46469, i64 1, !dbg !4397
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1960, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc1962 = add nuw nsw i64 %x.46470, 1, !dbg !4398
  call void @llvm.dbg.value(metadata i64 %inc1962, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1949 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4380
  %cmp1950 = icmp slt i64 %inc1962, %call1949, !dbg !4383
  br i1 %cmp1950, label %for.body1952, label %sw.epilog2309, !dbg !4384, !llvm.loop !4399

if.end1964:                                       ; preds = %if.end1937
  br i1 %cmp1944, label %sw.epilog2309, label %if.end1969, !dbg !4401

if.end1969:                                       ; preds = %if.end1964
  %call1970 = tail call ptr @GetVirtualIndexQueue(ptr noundef %image) #15, !dbg !4402
  call void @llvm.dbg.value(metadata ptr %call1970, metadata !2171, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %314, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %call1943, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call1972459 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4403
  %cmp1973460 = icmp sgt i64 %call1972459, 0, !dbg !4406
  br i1 %cmp1973460, label %for.cond1976.preheader.lr.ph, label %sw.epilog2309, !dbg !4407

for.cond1976.preheader.lr.ph:                     ; preds = %if.end1969
  %colorspace1995 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %cmp2000 = icmp eq ptr %call1970, null
  br label %for.cond1976.preheader, !dbg !4407

for.cond1976.preheader:                           ; preds = %for.cond1976.preheader.lr.ph, %for.end2018
  %q1772.7466 = phi ptr [ %314, %for.cond1976.preheader.lr.ph ], [ %q1772.8.lcssa, %for.end2018 ]
  %x.47464 = phi i64 [ 0, %for.cond1976.preheader.lr.ph ], [ %inc2021, %for.end2018 ]
  %p.47461 = phi ptr [ %call1943, %for.cond1976.preheader.lr.ph ], [ %incdec.ptr2019, %for.end2018 ]
  call void @llvm.dbg.value(metadata i64 %x.47464, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.47461, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %q1772.7466, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2191
  br i1 %cmp9403, label %for.body1979.lr.ph, label %for.end2018, !dbg !4408

for.body1979.lr.ph:                               ; preds = %for.cond1976.preheader
  %add.ptr1999 = getelementptr inbounds i16, ptr %call1970, i64 %x.47464
  %opacity1993 = getelementptr inbounds %struct._PixelPacket, ptr %p.47461, i64 0, i32 3
  %green1984 = getelementptr inbounds %struct._PixelPacket, ptr %p.47461, i64 0, i32 1
  %red1982 = getelementptr inbounds %struct._PixelPacket, ptr %p.47461, i64 0, i32 2
  br i1 %cmp2000, label %for.body1979.us, label %for.body1979, !dbg !4411

for.body1979.us:                                  ; preds = %for.body1979.lr.ph, %sw.epilog2014.us
  %q1772.8455.us = phi ptr [ %incdec.ptr2015.us, %sw.epilog2014.us ], [ %q1772.7466, %for.body1979.lr.ph ]
  %i.6454.us = phi i64 [ %inc2017.us, %sw.epilog2014.us ], [ 0, %for.body1979.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q1772.8455.us, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %i.6454.us, metadata !2173, metadata !DIExpression()), !dbg !2191
  store i16 0, ptr %q1772.8455.us, align 2, !dbg !4417, !tbaa !2741
  %arrayidx1980.us = getelementptr inbounds i32, ptr %call2, i64 %i.6454.us, !dbg !4418
  %344 = load i32, ptr %arrayidx1980.us, align 4, !dbg !4418, !tbaa !2216
  switch i32 %344, label %sw.epilog2014.us [
    i32 14, label %sw.bb1981.us
    i32 6, label %sw.bb1981.us
    i32 9, label %sw.bb1983.us
    i32 12, label %sw.bb1983.us
    i32 3, label %sw.bb1985.us
    i32 19, label %sw.bb1985.us
    i32 1, label %sw.bb1987.us
    i32 13, label %sw.bb1992.us
    i32 11, label %sw.bb2010.us
  ], !dbg !4419

sw.bb2010.us:                                     ; preds = %for.body1979.us
  %call2011.us = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.47461) #20, !dbg !4420
  call void @llvm.dbg.value(metadata float %call2011.us, metadata !2492, metadata !DIExpression()), !dbg !4422
  %cmp.i324.us = fcmp ugt float %call2011.us, 0.000000e+00, !dbg !4424
  br i1 %cmp.i324.us, label %if.end.i326.us, label %sw.epilog2014.us.sink.split, !dbg !4425

if.end.i326.us:                                   ; preds = %sw.bb2010.us
  %cmp1.i325.us = fcmp ult float %call2011.us, 6.553500e+04, !dbg !4426
  br i1 %cmp1.i325.us, label %if.end3.i329.us, label %sw.epilog2014.us.sink.split, !dbg !4427

if.end3.i329.us:                                  ; preds = %if.end.i326.us
  %add.i327.us = fadd float %call2011.us, 5.000000e-01, !dbg !4428
  %conv.i328.us = fptoui float %add.i327.us to i16, !dbg !4429
  br label %sw.epilog2014.us.sink.split, !dbg !4430

sw.bb1992.us:                                     ; preds = %for.body1979.us
  %345 = load i16, ptr %opacity1993, align 2, !dbg !4431, !tbaa !2403
  br label %sw.epilog2014.us.sink.split, !dbg !4433

sw.bb1987.us:                                     ; preds = %for.body1979.us
  %346 = load i16, ptr %opacity1993, align 2, !dbg !4434, !tbaa !2403
  %347 = xor i16 %346, -1, !dbg !4434
  br label %sw.epilog2014.us.sink.split, !dbg !4436

sw.bb1985.us:                                     ; preds = %for.body1979.us, %for.body1979.us
  %348 = load i16, ptr %p.47461, align 2, !dbg !4437, !tbaa !2308
  br label %sw.epilog2014.us.sink.split, !dbg !4439

sw.bb1983.us:                                     ; preds = %for.body1979.us, %for.body1979.us
  %349 = load i16, ptr %green1984, align 2, !dbg !4440, !tbaa !2326
  br label %sw.epilog2014.us.sink.split, !dbg !4442

sw.bb1981.us:                                     ; preds = %for.body1979.us, %for.body1979.us
  %350 = load i16, ptr %red1982, align 2, !dbg !4443, !tbaa !2338
  br label %sw.epilog2014.us.sink.split, !dbg !4445

sw.epilog2014.us.sink.split:                      ; preds = %sw.bb2010.us, %if.end.i326.us, %if.end3.i329.us, %sw.bb1992.us, %sw.bb1987.us, %sw.bb1985.us, %sw.bb1983.us, %sw.bb1981.us
  %.sink867 = phi i16 [ %350, %sw.bb1981.us ], [ %349, %sw.bb1983.us ], [ %348, %sw.bb1985.us ], [ %347, %sw.bb1987.us ], [ %345, %sw.bb1992.us ], [ %conv.i328.us, %if.end3.i329.us ], [ 0, %sw.bb2010.us ], [ -1, %if.end.i326.us ]
  store i16 %.sink867, ptr %q1772.8455.us, align 2, !dbg !4446, !tbaa !2741
  br label %sw.epilog2014.us, !dbg !4447

sw.epilog2014.us:                                 ; preds = %sw.epilog2014.us.sink.split, %for.body1979.us
  %incdec.ptr2015.us = getelementptr inbounds i16, ptr %q1772.8455.us, i64 1, !dbg !4447
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2015.us, metadata !2187, metadata !DIExpression()), !dbg !4187
  %inc2017.us = add nuw nsw i64 %i.6454.us, 1, !dbg !4448
  call void @llvm.dbg.value(metadata i64 %inc2017.us, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond797.not = icmp eq i64 %inc2017.us, %call1, !dbg !4449
  br i1 %exitcond797.not, label %for.end2018, label %for.body1979.us, !dbg !4408, !llvm.loop !4450

for.body1979:                                     ; preds = %for.body1979.lr.ph, %sw.epilog2014
  %q1772.8455 = phi ptr [ %incdec.ptr2015, %sw.epilog2014 ], [ %q1772.7466, %for.body1979.lr.ph ]
  %i.6454 = phi i64 [ %inc2017, %sw.epilog2014 ], [ 0, %for.body1979.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q1772.8455, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %i.6454, metadata !2173, metadata !DIExpression()), !dbg !2191
  store i16 0, ptr %q1772.8455, align 2, !dbg !4417, !tbaa !2741
  %arrayidx1980 = getelementptr inbounds i32, ptr %call2, i64 %i.6454, !dbg !4418
  %351 = load i32, ptr %arrayidx1980, align 4, !dbg !4418, !tbaa !2216
  switch i32 %351, label %sw.epilog2014 [
    i32 14, label %sw.bb1981
    i32 6, label %sw.bb1981
    i32 9, label %sw.bb1983
    i32 12, label %sw.bb1983
    i32 3, label %sw.bb1985
    i32 19, label %sw.bb1985
    i32 1, label %sw.bb1987
    i32 13, label %sw.bb1992
    i32 2, label %sw.bb1994
    i32 11, label %sw.bb2010
  ], !dbg !4419

sw.bb1981:                                        ; preds = %for.body1979, %for.body1979
  %352 = load i16, ptr %red1982, align 2, !dbg !4443, !tbaa !2338
  br label %sw.epilog2014.sink.split, !dbg !4445

sw.bb1983:                                        ; preds = %for.body1979, %for.body1979
  %353 = load i16, ptr %green1984, align 2, !dbg !4440, !tbaa !2326
  br label %sw.epilog2014.sink.split, !dbg !4442

sw.bb1985:                                        ; preds = %for.body1979, %for.body1979
  %354 = load i16, ptr %p.47461, align 2, !dbg !4437, !tbaa !2308
  br label %sw.epilog2014.sink.split, !dbg !4439

sw.bb1987:                                        ; preds = %for.body1979
  %355 = load i16, ptr %opacity1993, align 2, !dbg !4434, !tbaa !2403
  %356 = xor i16 %355, -1, !dbg !4434
  br label %sw.epilog2014.sink.split, !dbg !4436

sw.bb1992:                                        ; preds = %for.body1979
  %357 = load i16, ptr %opacity1993, align 2, !dbg !4431, !tbaa !2403
  br label %sw.epilog2014.sink.split, !dbg !4433

sw.bb1994:                                        ; preds = %for.body1979
  %358 = load i32, ptr %colorspace1995, align 4, !dbg !4452, !tbaa !1443
  %cmp1996 = icmp eq i32 %358, 12, !dbg !4453
  br i1 %cmp1996, label %if.then1998, label %sw.epilog2014, !dbg !4454

if.then1998:                                      ; preds = %sw.bb1994
  %359 = load i16, ptr %add.ptr1999, align 2, !dbg !4411, !tbaa !2741
  br label %sw.epilog2014.sink.split, !dbg !4455

sw.bb2010:                                        ; preds = %for.body1979
  %call2011 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.47461) #20, !dbg !4420
  call void @llvm.dbg.value(metadata float %call2011, metadata !2492, metadata !DIExpression()), !dbg !4422
  %cmp.i324 = fcmp ugt float %call2011, 0.000000e+00, !dbg !4424
  br i1 %cmp.i324, label %if.end.i326, label %sw.epilog2014.sink.split, !dbg !4425

if.end.i326:                                      ; preds = %sw.bb2010
  %cmp1.i325 = fcmp ult float %call2011, 6.553500e+04, !dbg !4426
  br i1 %cmp1.i325, label %if.end3.i329, label %sw.epilog2014.sink.split, !dbg !4427

if.end3.i329:                                     ; preds = %if.end.i326
  %add.i327 = fadd float %call2011, 5.000000e-01, !dbg !4428
  %conv.i328 = fptoui float %add.i327 to i16, !dbg !4429
  br label %sw.epilog2014.sink.split, !dbg !4430

sw.epilog2014.sink.split:                         ; preds = %if.end3.i329, %if.end.i326, %sw.bb2010, %sw.bb1981, %sw.bb1983, %sw.bb1985, %sw.bb1987, %sw.bb1992, %if.then1998
  %.sink868 = phi i16 [ %359, %if.then1998 ], [ %357, %sw.bb1992 ], [ %356, %sw.bb1987 ], [ %354, %sw.bb1985 ], [ %353, %sw.bb1983 ], [ %352, %sw.bb1981 ], [ %conv.i328, %if.end3.i329 ], [ 0, %sw.bb2010 ], [ -1, %if.end.i326 ]
  store i16 %.sink868, ptr %q1772.8455, align 2, !dbg !4446, !tbaa !2741
  br label %sw.epilog2014, !dbg !4447

sw.epilog2014:                                    ; preds = %sw.epilog2014.sink.split, %for.body1979, %sw.bb1994
  %incdec.ptr2015 = getelementptr inbounds i16, ptr %q1772.8455, i64 1, !dbg !4447
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2015, metadata !2187, metadata !DIExpression()), !dbg !4187
  %inc2017 = add nuw nsw i64 %i.6454, 1, !dbg !4448
  call void @llvm.dbg.value(metadata i64 %inc2017, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond796.not = icmp eq i64 %inc2017, %call1, !dbg !4449
  br i1 %exitcond796.not, label %for.end2018, label %for.body1979, !dbg !4408, !llvm.loop !4450

for.end2018:                                      ; preds = %sw.epilog2014, %sw.epilog2014.us, %for.cond1976.preheader
  %q1772.8.lcssa = phi ptr [ %q1772.7466, %for.cond1976.preheader ], [ %incdec.ptr2015.us, %sw.epilog2014.us ], [ %incdec.ptr2015, %sw.epilog2014 ], !dbg !4187
  %incdec.ptr2019 = getelementptr inbounds %struct._PixelPacket, ptr %p.47461, i64 1, !dbg !4456
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2019, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2021 = add nuw nsw i64 %x.47464, 1, !dbg !4457
  call void @llvm.dbg.value(metadata ptr %q1772.8.lcssa, metadata !2187, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %inc2021, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call1972 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4403
  %cmp1973 = icmp slt i64 %inc2021, %call1972, !dbg !4406
  br i1 %cmp1973, label %for.cond1976.preheader, label %sw.epilog2309, !dbg !4407, !llvm.loop !4458

sw.bb2024:                                        ; preds = %for.end
  %pixels2026 = getelementptr inbounds %struct._StreamInfo, ptr %stream_info, i64 0, i32 6, !dbg !4460
  %360 = load ptr, ptr %pixels2026, align 8, !dbg !4460, !tbaa !1138
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  %361 = load ptr, ptr %map, align 8, !dbg !4462, !tbaa !1150
  %call2028 = tail call i32 @LocaleCompare(ptr noundef %361, ptr noundef nonnull @.str.11) #15, !dbg !4464
  %cmp2029 = icmp eq i32 %call2028, 0, !dbg !4465
  br i1 %cmp2029, label %if.then2031, label %if.end2055, !dbg !4466

if.then2031:                                      ; preds = %sw.bb2024
  %call2032 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4467
  call void @llvm.dbg.value(metadata ptr %call2032, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp2033 = icmp eq ptr %call2032, null, !dbg !4469
  br i1 %cmp2033, label %sw.epilog2309, label %for.cond2037.preheader, !dbg !4471

for.cond2037.preheader:                           ; preds = %if.then2031
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call2032, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2038448 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4472
  %cmp2039449 = icmp sgt i64 %call2038448, 0, !dbg !4475
  br i1 %cmp2039449, label %for.body2041, label %sw.epilog2309, !dbg !4476

for.body2041:                                     ; preds = %for.cond2037.preheader, %for.body2041
  %q2025.0452 = phi ptr [ %incdec.ptr2050, %for.body2041 ], [ %360, %for.cond2037.preheader ]
  %x.48451 = phi i64 [ %inc2053, %for.body2041 ], [ 0, %for.cond2037.preheader ]
  %p.48450 = phi ptr [ %incdec.ptr2051, %for.body2041 ], [ %call2032, %for.cond2037.preheader ]
  call void @llvm.dbg.value(metadata ptr %q2025.0452, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %x.48451, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.48450, metadata !2172, metadata !DIExpression()), !dbg !2191
  %362 = load i16, ptr %p.48450, align 2, !dbg !4477, !tbaa !2308
  %incdec.ptr2044 = getelementptr inbounds i16, ptr %q2025.0452, i64 1, !dbg !4479
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2044, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %362, ptr %q2025.0452, align 2, !dbg !4480, !tbaa !2741
  %green2045 = getelementptr inbounds %struct._PixelPacket, ptr %p.48450, i64 0, i32 1, !dbg !4481
  %363 = load i16, ptr %green2045, align 2, !dbg !4481, !tbaa !2326
  %incdec.ptr2047 = getelementptr inbounds i16, ptr %q2025.0452, i64 2, !dbg !4482
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2047, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %363, ptr %incdec.ptr2044, align 2, !dbg !4483, !tbaa !2741
  %red2048 = getelementptr inbounds %struct._PixelPacket, ptr %p.48450, i64 0, i32 2, !dbg !4484
  %364 = load i16, ptr %red2048, align 2, !dbg !4484, !tbaa !2338
  %incdec.ptr2050 = getelementptr inbounds i16, ptr %q2025.0452, i64 3, !dbg !4485
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2050, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %364, ptr %incdec.ptr2047, align 2, !dbg !4486, !tbaa !2741
  %incdec.ptr2051 = getelementptr inbounds %struct._PixelPacket, ptr %p.48450, i64 1, !dbg !4487
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2051, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2053 = add nuw nsw i64 %x.48451, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i64 %inc2053, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call2038 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4472
  %cmp2039 = icmp slt i64 %inc2053, %call2038, !dbg !4475
  br i1 %cmp2039, label %for.body2041, label %sw.epilog2309, !dbg !4476, !llvm.loop !4489

if.end2055:                                       ; preds = %sw.bb2024
  %365 = load ptr, ptr %map, align 8, !dbg !4491, !tbaa !1150
  %call2057 = tail call i32 @LocaleCompare(ptr noundef %365, ptr noundef nonnull @.str.12) #15, !dbg !4493
  %cmp2058 = icmp eq i32 %call2057, 0, !dbg !4494
  br i1 %cmp2058, label %if.then2060, label %if.end2090, !dbg !4495

if.then2060:                                      ; preds = %if.end2055
  %call2061 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4496
  call void @llvm.dbg.value(metadata ptr %call2061, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp2062 = icmp eq ptr %call2061, null, !dbg !4498
  br i1 %cmp2062, label %sw.epilog2309, label %for.cond2066.preheader, !dbg !4500

for.cond2066.preheader:                           ; preds = %if.then2060
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call2061, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2067443 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4501
  %cmp2068444 = icmp sgt i64 %call2067443, 0, !dbg !4504
  br i1 %cmp2068444, label %for.body2070, label %sw.epilog2309, !dbg !4505

for.body2070:                                     ; preds = %for.cond2066.preheader, %for.body2070
  %q2025.1447 = phi ptr [ %incdec.ptr2085, %for.body2070 ], [ %360, %for.cond2066.preheader ]
  %x.49446 = phi i64 [ %inc2088, %for.body2070 ], [ 0, %for.cond2066.preheader ]
  %p.49445 = phi ptr [ %incdec.ptr2086, %for.body2070 ], [ %call2061, %for.cond2066.preheader ]
  call void @llvm.dbg.value(metadata ptr %q2025.1447, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %x.49446, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.49445, metadata !2172, metadata !DIExpression()), !dbg !2191
  %366 = load i16, ptr %p.49445, align 2, !dbg !4506, !tbaa !2308
  %incdec.ptr2073 = getelementptr inbounds i16, ptr %q2025.1447, i64 1, !dbg !4508
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2073, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %366, ptr %q2025.1447, align 2, !dbg !4509, !tbaa !2741
  %green2074 = getelementptr inbounds %struct._PixelPacket, ptr %p.49445, i64 0, i32 1, !dbg !4510
  %367 = load i16, ptr %green2074, align 2, !dbg !4510, !tbaa !2326
  %incdec.ptr2076 = getelementptr inbounds i16, ptr %q2025.1447, i64 2, !dbg !4511
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2076, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %367, ptr %incdec.ptr2073, align 2, !dbg !4512, !tbaa !2741
  %red2077 = getelementptr inbounds %struct._PixelPacket, ptr %p.49445, i64 0, i32 2, !dbg !4513
  %368 = load i16, ptr %red2077, align 2, !dbg !4513, !tbaa !2338
  %incdec.ptr2079 = getelementptr inbounds i16, ptr %q2025.1447, i64 3, !dbg !4514
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2079, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %368, ptr %incdec.ptr2076, align 2, !dbg !4515, !tbaa !2741
  %opacity2080 = getelementptr inbounds %struct._PixelPacket, ptr %p.49445, i64 0, i32 3, !dbg !4516
  %369 = load i16, ptr %opacity2080, align 2, !dbg !4516, !tbaa !2403
  %370 = xor i16 %369, -1, !dbg !4516
  %incdec.ptr2085 = getelementptr inbounds i16, ptr %q2025.1447, i64 4, !dbg !4517
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2085, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %370, ptr %incdec.ptr2079, align 2, !dbg !4518, !tbaa !2741
  %incdec.ptr2086 = getelementptr inbounds %struct._PixelPacket, ptr %p.49445, i64 1, !dbg !4519
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2086, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2088 = add nuw nsw i64 %x.49446, 1, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %inc2088, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call2067 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4501
  %cmp2068 = icmp slt i64 %inc2088, %call2067, !dbg !4504
  br i1 %cmp2068, label %for.body2070, label %sw.epilog2309, !dbg !4505, !llvm.loop !4521

if.end2090:                                       ; preds = %if.end2055
  %371 = load ptr, ptr %map, align 8, !dbg !4523, !tbaa !1150
  %call2092 = tail call i32 @LocaleCompare(ptr noundef %371, ptr noundef nonnull @.str.13) #15, !dbg !4525
  %cmp2093 = icmp eq i32 %call2092, 0, !dbg !4526
  br i1 %cmp2093, label %if.then2095, label %if.end2120, !dbg !4527

if.then2095:                                      ; preds = %if.end2090
  %call2096 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4528
  call void @llvm.dbg.value(metadata ptr %call2096, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp2097 = icmp eq ptr %call2096, null, !dbg !4530
  br i1 %cmp2097, label %sw.epilog2309, label %for.cond2101.preheader, !dbg !4532

for.cond2101.preheader:                           ; preds = %if.then2095
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call2096, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2102438 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4533
  %cmp2103439 = icmp sgt i64 %call2102438, 0, !dbg !4536
  br i1 %cmp2103439, label %for.body2105, label %sw.epilog2309, !dbg !4537

for.body2105:                                     ; preds = %for.cond2101.preheader, %for.body2105
  %q2025.2442 = phi ptr [ %incdec.ptr2115, %for.body2105 ], [ %360, %for.cond2101.preheader ]
  %x.50441 = phi i64 [ %inc2118, %for.body2105 ], [ 0, %for.cond2101.preheader ]
  %p.50440 = phi ptr [ %incdec.ptr2116, %for.body2105 ], [ %call2096, %for.cond2101.preheader ]
  call void @llvm.dbg.value(metadata ptr %q2025.2442, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %x.50441, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.50440, metadata !2172, metadata !DIExpression()), !dbg !2191
  %372 = load i16, ptr %p.50440, align 2, !dbg !4538, !tbaa !2308
  %incdec.ptr2108 = getelementptr inbounds i16, ptr %q2025.2442, i64 1, !dbg !4540
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2108, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %372, ptr %q2025.2442, align 2, !dbg !4541, !tbaa !2741
  %green2109 = getelementptr inbounds %struct._PixelPacket, ptr %p.50440, i64 0, i32 1, !dbg !4542
  %373 = load i16, ptr %green2109, align 2, !dbg !4542, !tbaa !2326
  %incdec.ptr2111 = getelementptr inbounds i16, ptr %q2025.2442, i64 2, !dbg !4543
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2111, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %373, ptr %incdec.ptr2108, align 2, !dbg !4544, !tbaa !2741
  %red2112 = getelementptr inbounds %struct._PixelPacket, ptr %p.50440, i64 0, i32 2, !dbg !4545
  %374 = load i16, ptr %red2112, align 2, !dbg !4545, !tbaa !2338
  %incdec.ptr2114 = getelementptr inbounds i16, ptr %q2025.2442, i64 3, !dbg !4546
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2114, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %374, ptr %incdec.ptr2111, align 2, !dbg !4547, !tbaa !2741
  %incdec.ptr2115 = getelementptr inbounds i16, ptr %q2025.2442, i64 4, !dbg !4548
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2115, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 0, ptr %incdec.ptr2114, align 2, !dbg !4549, !tbaa !2741
  %incdec.ptr2116 = getelementptr inbounds %struct._PixelPacket, ptr %p.50440, i64 1, !dbg !4550
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2116, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2118 = add nuw nsw i64 %x.50441, 1, !dbg !4551
  call void @llvm.dbg.value(metadata i64 %inc2118, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call2102 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4533
  %cmp2103 = icmp slt i64 %inc2118, %call2102, !dbg !4536
  br i1 %cmp2103, label %for.body2105, label %sw.epilog2309, !dbg !4537, !llvm.loop !4552

if.end2120:                                       ; preds = %if.end2090
  %375 = load ptr, ptr %map, align 8, !dbg !4554, !tbaa !1150
  %call2122 = tail call i32 @LocaleCompare(ptr noundef %375, ptr noundef nonnull @.str.14) #15, !dbg !4556
  %cmp2123 = icmp eq i32 %call2122, 0, !dbg !4557
  br i1 %cmp2123, label %if.then2125, label %if.end2144, !dbg !4558

if.then2125:                                      ; preds = %if.end2120
  %call2126 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4559
  call void @llvm.dbg.value(metadata ptr %call2126, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp2127 = icmp eq ptr %call2126, null, !dbg !4561
  br i1 %cmp2127, label %sw.epilog2309, label %for.cond2131.preheader, !dbg !4563

for.cond2131.preheader:                           ; preds = %if.then2125
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call2126, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2132433 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4564
  %cmp2133434 = icmp sgt i64 %call2132433, 0, !dbg !4567
  br i1 %cmp2133434, label %for.body2135, label %sw.epilog2309, !dbg !4568

for.body2135:                                     ; preds = %for.cond2131.preheader, %ClampToQuantum.exit339
  %q2025.3437 = phi ptr [ %incdec.ptr2139, %ClampToQuantum.exit339 ], [ %360, %for.cond2131.preheader ]
  %x.51436 = phi i64 [ %inc2142, %ClampToQuantum.exit339 ], [ 0, %for.cond2131.preheader ]
  %p.51435 = phi ptr [ %incdec.ptr2140, %ClampToQuantum.exit339 ], [ %call2126, %for.cond2131.preheader ]
  call void @llvm.dbg.value(metadata ptr %q2025.3437, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %x.51436, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.51435, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2136 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.51435) #20, !dbg !4569
  call void @llvm.dbg.value(metadata float %call2136, metadata !2492, metadata !DIExpression()), !dbg !4571
  %cmp.i332 = fcmp ugt float %call2136, 0.000000e+00, !dbg !4573
  br i1 %cmp.i332, label %if.end.i334, label %ClampToQuantum.exit339, !dbg !4574

if.end.i334:                                      ; preds = %for.body2135
  %cmp1.i333 = fcmp ult float %call2136, 6.553500e+04, !dbg !4575
  br i1 %cmp1.i333, label %if.end3.i337, label %ClampToQuantum.exit339, !dbg !4576

if.end3.i337:                                     ; preds = %if.end.i334
  %add.i335 = fadd float %call2136, 5.000000e-01, !dbg !4577
  %conv.i336 = fptoui float %add.i335 to i16, !dbg !4578
  br label %ClampToQuantum.exit339, !dbg !4579

ClampToQuantum.exit339:                           ; preds = %for.body2135, %if.end.i334, %if.end3.i337
  %retval.0.i338 = phi i16 [ %conv.i336, %if.end3.i337 ], [ 0, %for.body2135 ], [ -1, %if.end.i334 ], !dbg !4571
  %incdec.ptr2139 = getelementptr inbounds i16, ptr %q2025.3437, i64 1, !dbg !4580
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2139, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %retval.0.i338, ptr %q2025.3437, align 2, !dbg !4581, !tbaa !2741
  %incdec.ptr2140 = getelementptr inbounds %struct._PixelPacket, ptr %p.51435, i64 1, !dbg !4582
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2140, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2142 = add nuw nsw i64 %x.51436, 1, !dbg !4583
  call void @llvm.dbg.value(metadata i64 %inc2142, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call2132 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4564
  %cmp2133 = icmp slt i64 %inc2142, %call2132, !dbg !4567
  br i1 %cmp2133, label %for.body2135, label %sw.epilog2309, !dbg !4568, !llvm.loop !4584

if.end2144:                                       ; preds = %if.end2120
  %376 = load ptr, ptr %map, align 8, !dbg !4586, !tbaa !1150
  %call2146 = tail call i32 @LocaleCompare(ptr noundef %376, ptr noundef nonnull @.str.4) #15, !dbg !4588
  %cmp2147 = icmp eq i32 %call2146, 0, !dbg !4589
  br i1 %cmp2147, label %if.then2149, label %if.end2173, !dbg !4590

if.then2149:                                      ; preds = %if.end2144
  %call2150 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4591
  call void @llvm.dbg.value(metadata ptr %call2150, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp2151 = icmp eq ptr %call2150, null, !dbg !4593
  br i1 %cmp2151, label %sw.epilog2309, label %for.cond2155.preheader, !dbg !4595

for.cond2155.preheader:                           ; preds = %if.then2149
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call2150, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2156428 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4596
  %cmp2157429 = icmp sgt i64 %call2156428, 0, !dbg !4599
  br i1 %cmp2157429, label %for.body2159, label %sw.epilog2309, !dbg !4600

for.body2159:                                     ; preds = %for.cond2155.preheader, %for.body2159
  %q2025.4432 = phi ptr [ %incdec.ptr2168, %for.body2159 ], [ %360, %for.cond2155.preheader ]
  %x.52431 = phi i64 [ %inc2171, %for.body2159 ], [ 0, %for.cond2155.preheader ]
  %p.52430 = phi ptr [ %incdec.ptr2169, %for.body2159 ], [ %call2150, %for.cond2155.preheader ]
  call void @llvm.dbg.value(metadata ptr %q2025.4432, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %x.52431, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.52430, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red2160 = getelementptr inbounds %struct._PixelPacket, ptr %p.52430, i64 0, i32 2, !dbg !4601
  %377 = load i16, ptr %red2160, align 2, !dbg !4601, !tbaa !2338
  %incdec.ptr2162 = getelementptr inbounds i16, ptr %q2025.4432, i64 1, !dbg !4603
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2162, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %377, ptr %q2025.4432, align 2, !dbg !4604, !tbaa !2741
  %green2163 = getelementptr inbounds %struct._PixelPacket, ptr %p.52430, i64 0, i32 1, !dbg !4605
  %378 = load i16, ptr %green2163, align 2, !dbg !4605, !tbaa !2326
  %incdec.ptr2165 = getelementptr inbounds i16, ptr %q2025.4432, i64 2, !dbg !4606
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2165, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %378, ptr %incdec.ptr2162, align 2, !dbg !4607, !tbaa !2741
  %379 = load i16, ptr %p.52430, align 2, !dbg !4608, !tbaa !2308
  %incdec.ptr2168 = getelementptr inbounds i16, ptr %q2025.4432, i64 3, !dbg !4609
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2168, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %379, ptr %incdec.ptr2165, align 2, !dbg !4610, !tbaa !2741
  %incdec.ptr2169 = getelementptr inbounds %struct._PixelPacket, ptr %p.52430, i64 1, !dbg !4611
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2169, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2171 = add nuw nsw i64 %x.52431, 1, !dbg !4612
  call void @llvm.dbg.value(metadata i64 %inc2171, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call2156 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4596
  %cmp2157 = icmp slt i64 %inc2171, %call2156, !dbg !4599
  br i1 %cmp2157, label %for.body2159, label %sw.epilog2309, !dbg !4600, !llvm.loop !4613

if.end2173:                                       ; preds = %if.end2144
  %380 = load ptr, ptr %map, align 8, !dbg !4615, !tbaa !1150
  %call2175 = tail call i32 @LocaleCompare(ptr noundef %380, ptr noundef nonnull @.str.15) #15, !dbg !4617
  %cmp2176 = icmp eq i32 %call2175, 0, !dbg !4618
  br i1 %cmp2176, label %if.then2178, label %if.end2208, !dbg !4619

if.then2178:                                      ; preds = %if.end2173
  %call2179 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4620
  call void @llvm.dbg.value(metadata ptr %call2179, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp2180 = icmp eq ptr %call2179, null, !dbg !4622
  br i1 %cmp2180, label %sw.epilog2309, label %for.cond2184.preheader, !dbg !4624

for.cond2184.preheader:                           ; preds = %if.then2178
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call2179, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2185423 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4625
  %cmp2186424 = icmp sgt i64 %call2185423, 0, !dbg !4628
  br i1 %cmp2186424, label %for.body2188, label %sw.epilog2309, !dbg !4629

for.body2188:                                     ; preds = %for.cond2184.preheader, %for.body2188
  %q2025.5427 = phi ptr [ %incdec.ptr2203, %for.body2188 ], [ %360, %for.cond2184.preheader ]
  %x.53426 = phi i64 [ %inc2206, %for.body2188 ], [ 0, %for.cond2184.preheader ]
  %p.53425 = phi ptr [ %incdec.ptr2204, %for.body2188 ], [ %call2179, %for.cond2184.preheader ]
  call void @llvm.dbg.value(metadata ptr %q2025.5427, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %x.53426, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.53425, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red2189 = getelementptr inbounds %struct._PixelPacket, ptr %p.53425, i64 0, i32 2, !dbg !4630
  %381 = load i16, ptr %red2189, align 2, !dbg !4630, !tbaa !2338
  %incdec.ptr2191 = getelementptr inbounds i16, ptr %q2025.5427, i64 1, !dbg !4632
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2191, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %381, ptr %q2025.5427, align 2, !dbg !4633, !tbaa !2741
  %green2192 = getelementptr inbounds %struct._PixelPacket, ptr %p.53425, i64 0, i32 1, !dbg !4634
  %382 = load i16, ptr %green2192, align 2, !dbg !4634, !tbaa !2326
  %incdec.ptr2194 = getelementptr inbounds i16, ptr %q2025.5427, i64 2, !dbg !4635
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2194, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %382, ptr %incdec.ptr2191, align 2, !dbg !4636, !tbaa !2741
  %383 = load i16, ptr %p.53425, align 2, !dbg !4637, !tbaa !2308
  %incdec.ptr2197 = getelementptr inbounds i16, ptr %q2025.5427, i64 3, !dbg !4638
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2197, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %383, ptr %incdec.ptr2194, align 2, !dbg !4639, !tbaa !2741
  %opacity2198 = getelementptr inbounds %struct._PixelPacket, ptr %p.53425, i64 0, i32 3, !dbg !4640
  %384 = load i16, ptr %opacity2198, align 2, !dbg !4640, !tbaa !2403
  %385 = xor i16 %384, -1, !dbg !4640
  %incdec.ptr2203 = getelementptr inbounds i16, ptr %q2025.5427, i64 4, !dbg !4641
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2203, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %385, ptr %incdec.ptr2197, align 2, !dbg !4642, !tbaa !2741
  %incdec.ptr2204 = getelementptr inbounds %struct._PixelPacket, ptr %p.53425, i64 1, !dbg !4643
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2204, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2206 = add nuw nsw i64 %x.53426, 1, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %inc2206, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call2185 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4625
  %cmp2186 = icmp slt i64 %inc2206, %call2185, !dbg !4628
  br i1 %cmp2186, label %for.body2188, label %sw.epilog2309, !dbg !4629, !llvm.loop !4645

if.end2208:                                       ; preds = %if.end2173
  %386 = load ptr, ptr %map, align 8, !dbg !4647, !tbaa !1150
  %call2210 = tail call i32 @LocaleCompare(ptr noundef %386, ptr noundef nonnull @.str.16) #15, !dbg !4649
  %cmp2211 = icmp eq i32 %call2210, 0, !dbg !4650
  %call2214 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %image) #15, !dbg !4461
  call void @llvm.dbg.value(metadata ptr %call2214, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call2214, metadata !2172, metadata !DIExpression()), !dbg !2191
  %cmp2215 = icmp eq ptr %call2214, null, !dbg !4461
  br i1 %cmp2211, label %if.then2213, label %if.end2238, !dbg !4651

if.then2213:                                      ; preds = %if.end2208
  br i1 %cmp2215, label %sw.epilog2309, label %for.cond2219.preheader, !dbg !4652

for.cond2219.preheader:                           ; preds = %if.then2213
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call2214, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2220418 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4654
  %cmp2221419 = icmp sgt i64 %call2220418, 0, !dbg !4657
  br i1 %cmp2221419, label %for.body2223, label %sw.epilog2309, !dbg !4658

for.body2223:                                     ; preds = %for.cond2219.preheader, %for.body2223
  %q2025.6422 = phi ptr [ %incdec.ptr2233, %for.body2223 ], [ %360, %for.cond2219.preheader ]
  %x.54421 = phi i64 [ %inc2236, %for.body2223 ], [ 0, %for.cond2219.preheader ]
  %p.54420 = phi ptr [ %incdec.ptr2234, %for.body2223 ], [ %call2214, %for.cond2219.preheader ]
  call void @llvm.dbg.value(metadata ptr %q2025.6422, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %x.54421, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.54420, metadata !2172, metadata !DIExpression()), !dbg !2191
  %red2224 = getelementptr inbounds %struct._PixelPacket, ptr %p.54420, i64 0, i32 2, !dbg !4659
  %387 = load i16, ptr %red2224, align 2, !dbg !4659, !tbaa !2338
  %incdec.ptr2226 = getelementptr inbounds i16, ptr %q2025.6422, i64 1, !dbg !4661
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2226, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %387, ptr %q2025.6422, align 2, !dbg !4662, !tbaa !2741
  %green2227 = getelementptr inbounds %struct._PixelPacket, ptr %p.54420, i64 0, i32 1, !dbg !4663
  %388 = load i16, ptr %green2227, align 2, !dbg !4663, !tbaa !2326
  %incdec.ptr2229 = getelementptr inbounds i16, ptr %q2025.6422, i64 2, !dbg !4664
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2229, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %388, ptr %incdec.ptr2226, align 2, !dbg !4665, !tbaa !2741
  %389 = load i16, ptr %p.54420, align 2, !dbg !4666, !tbaa !2308
  %incdec.ptr2232 = getelementptr inbounds i16, ptr %q2025.6422, i64 3, !dbg !4667
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2232, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 %389, ptr %incdec.ptr2229, align 2, !dbg !4668, !tbaa !2741
  %incdec.ptr2233 = getelementptr inbounds i16, ptr %q2025.6422, i64 4, !dbg !4669
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2233, metadata !2189, metadata !DIExpression()), !dbg !4461
  store i16 0, ptr %incdec.ptr2232, align 2, !dbg !4670, !tbaa !2741
  %incdec.ptr2234 = getelementptr inbounds %struct._PixelPacket, ptr %p.54420, i64 1, !dbg !4671
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2234, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2236 = add nuw nsw i64 %x.54421, 1, !dbg !4672
  call void @llvm.dbg.value(metadata i64 %inc2236, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call2220 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4654
  %cmp2221 = icmp slt i64 %inc2236, %call2220, !dbg !4657
  br i1 %cmp2221, label %for.body2223, label %sw.epilog2309, !dbg !4658, !llvm.loop !4673

if.end2238:                                       ; preds = %if.end2208
  br i1 %cmp2215, label %sw.epilog2309, label %if.end2243, !dbg !4675

if.end2243:                                       ; preds = %if.end2238
  %call2244 = tail call ptr @GetVirtualIndexQueue(ptr noundef %image) #15, !dbg !4676
  call void @llvm.dbg.value(metadata ptr %call2244, metadata !2171, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i64 0, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %360, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata ptr %call2214, metadata !2172, metadata !DIExpression()), !dbg !2191
  %call2246410 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4677
  %cmp2247411 = icmp sgt i64 %call2246410, 0, !dbg !4680
  br i1 %cmp2247411, label %for.cond2250.preheader.lr.ph, label %sw.epilog2309, !dbg !4681

for.cond2250.preheader.lr.ph:                     ; preds = %if.end2243
  %colorspace2274 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %cmp2279 = icmp eq ptr %call2244, null
  br label %for.cond2250.preheader, !dbg !4681

for.cond2250.preheader:                           ; preds = %for.cond2250.preheader.lr.ph, %for.end2299
  %q2025.7417 = phi ptr [ %360, %for.cond2250.preheader.lr.ph ], [ %q2025.8.lcssa, %for.end2299 ]
  %x.55415 = phi i64 [ 0, %for.cond2250.preheader.lr.ph ], [ %inc2302, %for.end2299 ]
  %p.55412 = phi ptr [ %call2214, %for.cond2250.preheader.lr.ph ], [ %incdec.ptr2300, %for.end2299 ]
  call void @llvm.dbg.value(metadata i64 %x.55415, metadata !2174, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %p.55412, metadata !2172, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %q2025.7417, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2191
  br i1 %cmp9403, label %for.body2253.lr.ph, label %for.end2299, !dbg !4682

for.body2253.lr.ph:                               ; preds = %for.cond2250.preheader
  %add.ptr2278 = getelementptr inbounds i16, ptr %call2244, i64 %x.55415
  %opacity2271 = getelementptr inbounds %struct._PixelPacket, ptr %p.55412, i64 0, i32 3
  %green2259 = getelementptr inbounds %struct._PixelPacket, ptr %p.55412, i64 0, i32 1
  %red2256 = getelementptr inbounds %struct._PixelPacket, ptr %p.55412, i64 0, i32 2
  br i1 %cmp2279, label %for.body2253.us, label %for.body2253, !dbg !4685

for.body2253.us:                                  ; preds = %for.body2253.lr.ph, %sw.epilog2295.us
  %q2025.8408.us = phi ptr [ %incdec.ptr2296.us, %sw.epilog2295.us ], [ %q2025.7417, %for.body2253.lr.ph ]
  %i.7407.us = phi i64 [ %inc2298.us, %sw.epilog2295.us ], [ 0, %for.body2253.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q2025.8408.us, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %i.7407.us, metadata !2173, metadata !DIExpression()), !dbg !2191
  store i16 0, ptr %q2025.8408.us, align 2, !dbg !4691, !tbaa !2741
  %arrayidx2254.us = getelementptr inbounds i32, ptr %call2, i64 %i.7407.us, !dbg !4692
  %390 = load i32, ptr %arrayidx2254.us, align 4, !dbg !4692, !tbaa !2216
  switch i32 %390, label %sw.epilog2295.us [
    i32 14, label %sw.bb2255.us
    i32 6, label %sw.bb2255.us
    i32 9, label %sw.bb2258.us
    i32 12, label %sw.bb2258.us
    i32 3, label %sw.bb2261.us
    i32 19, label %sw.bb2261.us
    i32 1, label %sw.bb2264.us
    i32 13, label %sw.bb2270.us
    i32 11, label %sw.bb2290.us
  ], !dbg !4693

sw.bb2290.us:                                     ; preds = %for.body2253.us
  %call2291.us = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.55412) #20, !dbg !4694
  call void @llvm.dbg.value(metadata float %call2291.us, metadata !2492, metadata !DIExpression()), !dbg !4696
  %cmp.i340.us = fcmp ugt float %call2291.us, 0.000000e+00, !dbg !4698
  br i1 %cmp.i340.us, label %if.end.i342.us, label %sw.epilog2295.us.sink.split, !dbg !4699

if.end.i342.us:                                   ; preds = %sw.bb2290.us
  %cmp1.i341.us = fcmp ult float %call2291.us, 6.553500e+04, !dbg !4700
  br i1 %cmp1.i341.us, label %if.end3.i345.us, label %sw.epilog2295.us.sink.split, !dbg !4701

if.end3.i345.us:                                  ; preds = %if.end.i342.us
  %add.i343.us = fadd float %call2291.us, 5.000000e-01, !dbg !4702
  %conv.i344.us = fptoui float %add.i343.us to i16, !dbg !4703
  br label %sw.epilog2295.us.sink.split, !dbg !4704

sw.bb2270.us:                                     ; preds = %for.body2253.us
  %391 = load i16, ptr %opacity2271, align 2, !dbg !4705, !tbaa !2403
  br label %sw.epilog2295.us.sink.split, !dbg !4707

sw.bb2264.us:                                     ; preds = %for.body2253.us
  %392 = load i16, ptr %opacity2271, align 2, !dbg !4708, !tbaa !2403
  %393 = xor i16 %392, -1, !dbg !4708
  br label %sw.epilog2295.us.sink.split, !dbg !4710

sw.bb2261.us:                                     ; preds = %for.body2253.us, %for.body2253.us
  %394 = load i16, ptr %p.55412, align 2, !dbg !4711, !tbaa !2308
  br label %sw.epilog2295.us.sink.split, !dbg !4713

sw.bb2258.us:                                     ; preds = %for.body2253.us, %for.body2253.us
  %395 = load i16, ptr %green2259, align 2, !dbg !4714, !tbaa !2326
  br label %sw.epilog2295.us.sink.split, !dbg !4716

sw.bb2255.us:                                     ; preds = %for.body2253.us, %for.body2253.us
  %396 = load i16, ptr %red2256, align 2, !dbg !4717, !tbaa !2338
  br label %sw.epilog2295.us.sink.split, !dbg !4719

sw.epilog2295.us.sink.split:                      ; preds = %sw.bb2290.us, %if.end.i342.us, %if.end3.i345.us, %sw.bb2270.us, %sw.bb2264.us, %sw.bb2261.us, %sw.bb2258.us, %sw.bb2255.us
  %.sink869 = phi i16 [ %396, %sw.bb2255.us ], [ %395, %sw.bb2258.us ], [ %394, %sw.bb2261.us ], [ %393, %sw.bb2264.us ], [ %391, %sw.bb2270.us ], [ %conv.i344.us, %if.end3.i345.us ], [ 0, %sw.bb2290.us ], [ -1, %if.end.i342.us ]
  store i16 %.sink869, ptr %q2025.8408.us, align 2, !dbg !4720, !tbaa !2741
  br label %sw.epilog2295.us, !dbg !4721

sw.epilog2295.us:                                 ; preds = %sw.epilog2295.us.sink.split, %for.body2253.us
  %incdec.ptr2296.us = getelementptr inbounds i16, ptr %q2025.8408.us, i64 1, !dbg !4721
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2296.us, metadata !2189, metadata !DIExpression()), !dbg !4461
  %inc2298.us = add nuw nsw i64 %i.7407.us, 1, !dbg !4722
  call void @llvm.dbg.value(metadata i64 %inc2298.us, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond795.not = icmp eq i64 %inc2298.us, %call1, !dbg !4723
  br i1 %exitcond795.not, label %for.end2299, label %for.body2253.us, !dbg !4682, !llvm.loop !4724

for.body2253:                                     ; preds = %for.body2253.lr.ph, %sw.epilog2295
  %q2025.8408 = phi ptr [ %incdec.ptr2296, %sw.epilog2295 ], [ %q2025.7417, %for.body2253.lr.ph ]
  %i.7407 = phi i64 [ %inc2298, %sw.epilog2295 ], [ 0, %for.body2253.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q2025.8408, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %i.7407, metadata !2173, metadata !DIExpression()), !dbg !2191
  store i16 0, ptr %q2025.8408, align 2, !dbg !4691, !tbaa !2741
  %arrayidx2254 = getelementptr inbounds i32, ptr %call2, i64 %i.7407, !dbg !4692
  %397 = load i32, ptr %arrayidx2254, align 4, !dbg !4692, !tbaa !2216
  switch i32 %397, label %sw.epilog2295 [
    i32 14, label %sw.bb2255
    i32 6, label %sw.bb2255
    i32 9, label %sw.bb2258
    i32 12, label %sw.bb2258
    i32 3, label %sw.bb2261
    i32 19, label %sw.bb2261
    i32 1, label %sw.bb2264
    i32 13, label %sw.bb2270
    i32 2, label %sw.bb2273
    i32 11, label %sw.bb2290
  ], !dbg !4693

sw.bb2255:                                        ; preds = %for.body2253, %for.body2253
  %398 = load i16, ptr %red2256, align 2, !dbg !4717, !tbaa !2338
  br label %sw.epilog2295.sink.split, !dbg !4719

sw.bb2258:                                        ; preds = %for.body2253, %for.body2253
  %399 = load i16, ptr %green2259, align 2, !dbg !4714, !tbaa !2326
  br label %sw.epilog2295.sink.split, !dbg !4716

sw.bb2261:                                        ; preds = %for.body2253, %for.body2253
  %400 = load i16, ptr %p.55412, align 2, !dbg !4711, !tbaa !2308
  br label %sw.epilog2295.sink.split, !dbg !4713

sw.bb2264:                                        ; preds = %for.body2253
  %401 = load i16, ptr %opacity2271, align 2, !dbg !4708, !tbaa !2403
  %402 = xor i16 %401, -1, !dbg !4708
  br label %sw.epilog2295.sink.split, !dbg !4710

sw.bb2270:                                        ; preds = %for.body2253
  %403 = load i16, ptr %opacity2271, align 2, !dbg !4705, !tbaa !2403
  br label %sw.epilog2295.sink.split, !dbg !4707

sw.bb2273:                                        ; preds = %for.body2253
  %404 = load i32, ptr %colorspace2274, align 4, !dbg !4726, !tbaa !1443
  %cmp2275 = icmp eq i32 %404, 12, !dbg !4727
  br i1 %cmp2275, label %if.then2277, label %sw.epilog2295, !dbg !4728

if.then2277:                                      ; preds = %sw.bb2273
  %405 = load i16, ptr %add.ptr2278, align 2, !dbg !4685, !tbaa !2741
  br label %sw.epilog2295.sink.split, !dbg !4729

sw.bb2290:                                        ; preds = %for.body2253
  %call2291 = tail call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.55412) #20, !dbg !4694
  call void @llvm.dbg.value(metadata float %call2291, metadata !2492, metadata !DIExpression()), !dbg !4696
  %cmp.i340 = fcmp ugt float %call2291, 0.000000e+00, !dbg !4698
  br i1 %cmp.i340, label %if.end.i342, label %sw.epilog2295.sink.split, !dbg !4699

if.end.i342:                                      ; preds = %sw.bb2290
  %cmp1.i341 = fcmp ult float %call2291, 6.553500e+04, !dbg !4700
  br i1 %cmp1.i341, label %if.end3.i345, label %sw.epilog2295.sink.split, !dbg !4701

if.end3.i345:                                     ; preds = %if.end.i342
  %add.i343 = fadd float %call2291, 5.000000e-01, !dbg !4702
  %conv.i344 = fptoui float %add.i343 to i16, !dbg !4703
  br label %sw.epilog2295.sink.split, !dbg !4704

sw.epilog2295.sink.split:                         ; preds = %if.end3.i345, %if.end.i342, %sw.bb2290, %sw.bb2255, %sw.bb2258, %sw.bb2261, %sw.bb2264, %sw.bb2270, %if.then2277
  %.sink870 = phi i16 [ %405, %if.then2277 ], [ %403, %sw.bb2270 ], [ %402, %sw.bb2264 ], [ %400, %sw.bb2261 ], [ %399, %sw.bb2258 ], [ %398, %sw.bb2255 ], [ %conv.i344, %if.end3.i345 ], [ 0, %sw.bb2290 ], [ -1, %if.end.i342 ]
  store i16 %.sink870, ptr %q2025.8408, align 2, !dbg !4720, !tbaa !2741
  br label %sw.epilog2295, !dbg !4721

sw.epilog2295:                                    ; preds = %sw.epilog2295.sink.split, %for.body2253, %sw.bb2273
  %incdec.ptr2296 = getelementptr inbounds i16, ptr %q2025.8408, i64 1, !dbg !4721
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2296, metadata !2189, metadata !DIExpression()), !dbg !4461
  %inc2298 = add nuw nsw i64 %i.7407, 1, !dbg !4722
  call void @llvm.dbg.value(metadata i64 %inc2298, metadata !2173, metadata !DIExpression()), !dbg !2191
  %exitcond794.not = icmp eq i64 %inc2298, %call1, !dbg !4723
  br i1 %exitcond794.not, label %for.end2299, label %for.body2253, !dbg !4682, !llvm.loop !4724

for.end2299:                                      ; preds = %sw.epilog2295, %sw.epilog2295.us, %for.cond2250.preheader
  %q2025.8.lcssa = phi ptr [ %q2025.7417, %for.cond2250.preheader ], [ %incdec.ptr2296.us, %sw.epilog2295.us ], [ %incdec.ptr2296, %sw.epilog2295 ], !dbg !4461
  %incdec.ptr2300 = getelementptr inbounds %struct._PixelPacket, ptr %p.55412, i64 1, !dbg !4730
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2300, metadata !2172, metadata !DIExpression()), !dbg !2191
  %inc2302 = add nuw nsw i64 %x.55415, 1, !dbg !4731
  call void @llvm.dbg.value(metadata ptr %q2025.8.lcssa, metadata !2189, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %inc2302, metadata !2174, metadata !DIExpression()), !dbg !2191
  %call2246 = tail call i64 @GetImageExtent(ptr noundef %image) #15, !dbg !4677
  %cmp2247 = icmp slt i64 %inc2302, %call2246, !dbg !4680
  br i1 %cmp2247, label %for.cond2250.preheader, label %sw.epilog2309, !dbg !4681, !llvm.loop !4732

sw.default2305:                                   ; preds = %for.end
  %call2306 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #15, !dbg !4734
  call void @llvm.dbg.value(metadata ptr %call2306, metadata !2170, metadata !DIExpression()), !dbg !2191
  %406 = load ptr, ptr %map, align 8, !dbg !4736, !tbaa !1150
  %call2308 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2616, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef %406) #15, !dbg !4737
  br label %sw.epilog2309, !dbg !4738

sw.epilog2309:                                    ; preds = %for.end2299, %for.body2223, %for.body2188, %for.body2159, %ClampToQuantum.exit339, %for.body2105, %for.body2070, %for.body2041, %for.end2018, %for.body1952, %for.body1921, %for.body1895, %ClampToQuantum.exit323, %for.body1845, %for.body1814, %for.body1788, %for.end1765, %for.body1679, %for.body1640, %for.body1608, %ClampToQuantum.exit271, %for.body1550, %for.body1511, %for.body1479, %for.end1456, %for.body1380, %for.body1345, %for.body1316, %ClampToQuantum.exit199, %for.body1262, %for.body1227, %for.body1198, %for.end1175, %for.body1045, %for.body988, %for.body941, %for.body913, %for.body865, %for.body806, %for.body759, %for.end736, %for.body616, %for.body563, %for.body519, %for.body492, %for.body447, %for.body394, %for.body353, %for.end331, %for.body259, %for.body224, %for.body195, %ClampToQuantum.exit, %for.body140, %for.body107, %for.body82, %if.end2243, %for.cond2219.preheader, %for.cond2184.preheader, %for.cond2155.preheader, %for.cond2131.preheader, %for.cond2101.preheader, %for.cond2066.preheader, %for.cond2037.preheader, %if.end1969, %for.cond1948.preheader, %for.cond1917.preheader, %for.cond1891.preheader, %for.cond1868.preheader, %for.cond1841.preheader, %for.cond1810.preheader, %for.cond1784.preheader, %if.end1702, %for.cond1675.preheader, %for.cond1636.preheader, %for.cond1604.preheader, %for.cond1579.preheader, %for.cond1546.preheader, %for.cond1507.preheader, %for.cond1475.preheader, %if.end1400, %for.cond1376.preheader, %for.cond1341.preheader, %for.cond1312.preheader, %for.cond1288.preheader, %for.cond1258.preheader, %for.cond1223.preheader, %for.cond1194.preheader, %if.end1083, %for.cond1041.preheader, %for.cond984.preheader, %for.cond937.preheader, %for.cond909.preheader, %for.cond861.preheader, %for.cond802.preheader, %for.cond755.preheader, %if.end651, %for.cond612.preheader, %for.cond559.preheader, %for.cond515.preheader, %for.cond488.preheader, %for.cond443.preheader, %for.cond390.preheader, %for.cond349.preheader, %if.end280, %for.cond255.preheader, %for.cond220.preheader, %for.cond191.preheader, %for.cond167.preheader, %for.cond136.preheader, %for.cond103.preheader, %for.cond78.preheader, %if.then2031, %if.then2060, %if.then2095, %if.then2125, %if.then2149, %if.then2178, %if.then2213, %if.end2238, %if.then1778, %if.then1804, %if.then1835, %if.then1862, %if.then1885, %if.then1911, %if.then1942, %if.end1964, %if.then1469, %if.then1501, %if.then1540, %if.then1573, %if.then1598, %if.then1630, %if.then1669, %if.end1697, %if.then1188, %if.then1217, %if.then1252, %if.then1282, %if.then1306, %if.then1335, %if.then1370, %if.end1395, %if.then749, %if.then796, %if.then855, %if.then903, %if.then931, %if.then978, %if.then1035, %if.end1078, %if.then343, %if.then384, %if.then437, %if.then482, %if.then509, %if.then553, %if.then606, %if.end646, %if.then72, %if.then97, %if.then130, %if.then161, %if.then185, %if.then214, %if.then249, %if.end275, %sw.default2305
  %quantum_map.0 = phi ptr [ %call2306, %sw.default2305 ], [ %call2, %if.end275 ], [ %call2, %if.then249 ], [ %call2, %if.then214 ], [ %call2, %if.then185 ], [ %call2, %if.then161 ], [ %call2, %if.then130 ], [ %call2, %if.then97 ], [ %call2, %if.then72 ], [ %call2, %if.end646 ], [ %call2, %if.then606 ], [ %call2, %if.then553 ], [ %call2, %if.then509 ], [ %call2, %if.then482 ], [ %call2, %if.then437 ], [ %call2, %if.then384 ], [ %call2, %if.then343 ], [ %call2, %if.end1078 ], [ %call2, %if.then1035 ], [ %call2, %if.then978 ], [ %call2, %if.then931 ], [ %call2, %if.then903 ], [ %call2, %if.then855 ], [ %call2, %if.then796 ], [ %call2, %if.then749 ], [ %call2, %if.end1395 ], [ %call2, %if.then1370 ], [ %call2, %if.then1335 ], [ %call2, %if.then1306 ], [ %call2, %if.then1282 ], [ %call2, %if.then1252 ], [ %call2, %if.then1217 ], [ %call2, %if.then1188 ], [ %call2, %if.end1697 ], [ %call2, %if.then1669 ], [ %call2, %if.then1630 ], [ %call2, %if.then1598 ], [ %call2, %if.then1573 ], [ %call2, %if.then1540 ], [ %call2, %if.then1501 ], [ %call2, %if.then1469 ], [ %call2, %if.end1964 ], [ %call2, %if.then1942 ], [ %call2, %if.then1911 ], [ %call2, %if.then1885 ], [ %call2, %if.then1862 ], [ %call2, %if.then1835 ], [ %call2, %if.then1804 ], [ %call2, %if.then1778 ], [ %call2, %if.end2238 ], [ %call2, %if.then2213 ], [ %call2, %if.then2178 ], [ %call2, %if.then2149 ], [ %call2, %if.then2125 ], [ %call2, %if.then2095 ], [ %call2, %if.then2060 ], [ %call2, %if.then2031 ], [ %call2, %for.cond78.preheader ], [ %call2, %for.cond103.preheader ], [ %call2, %for.cond136.preheader ], [ %call2, %for.cond167.preheader ], [ %call2, %for.cond191.preheader ], [ %call2, %for.cond220.preheader ], [ %call2, %for.cond255.preheader ], [ %call2, %if.end280 ], [ %call2, %for.cond349.preheader ], [ %call2, %for.cond390.preheader ], [ %call2, %for.cond443.preheader ], [ %call2, %for.cond488.preheader ], [ %call2, %for.cond515.preheader ], [ %call2, %for.cond559.preheader ], [ %call2, %for.cond612.preheader ], [ %call2, %if.end651 ], [ %call2, %for.cond755.preheader ], [ %call2, %for.cond802.preheader ], [ %call2, %for.cond861.preheader ], [ %call2, %for.cond909.preheader ], [ %call2, %for.cond937.preheader ], [ %call2, %for.cond984.preheader ], [ %call2, %for.cond1041.preheader ], [ %call2, %if.end1083 ], [ %call2, %for.cond1194.preheader ], [ %call2, %for.cond1223.preheader ], [ %call2, %for.cond1258.preheader ], [ %call2, %for.cond1288.preheader ], [ %call2, %for.cond1312.preheader ], [ %call2, %for.cond1341.preheader ], [ %call2, %for.cond1376.preheader ], [ %call2, %if.end1400 ], [ %call2, %for.cond1475.preheader ], [ %call2, %for.cond1507.preheader ], [ %call2, %for.cond1546.preheader ], [ %call2, %for.cond1579.preheader ], [ %call2, %for.cond1604.preheader ], [ %call2, %for.cond1636.preheader ], [ %call2, %for.cond1675.preheader ], [ %call2, %if.end1702 ], [ %call2, %for.cond1784.preheader ], [ %call2, %for.cond1810.preheader ], [ %call2, %for.cond1841.preheader ], [ %call2, %for.cond1868.preheader ], [ %call2, %for.cond1891.preheader ], [ %call2, %for.cond1917.preheader ], [ %call2, %for.cond1948.preheader ], [ %call2, %if.end1969 ], [ %call2, %for.cond2037.preheader ], [ %call2, %for.cond2066.preheader ], [ %call2, %for.cond2101.preheader ], [ %call2, %for.cond2131.preheader ], [ %call2, %for.cond2155.preheader ], [ %call2, %for.cond2184.preheader ], [ %call2, %for.cond2219.preheader ], [ %call2, %if.end2243 ], [ %call2, %for.body82 ], [ %call2, %for.body107 ], [ %call2, %for.body140 ], [ %call2, %ClampToQuantum.exit ], [ %call2, %for.body195 ], [ %call2, %for.body224 ], [ %call2, %for.body259 ], [ %call2, %for.end331 ], [ %call2, %for.body353 ], [ %call2, %for.body394 ], [ %call2, %for.body447 ], [ %call2, %for.body492 ], [ %call2, %for.body519 ], [ %call2, %for.body563 ], [ %call2, %for.body616 ], [ %call2, %for.end736 ], [ %call2, %for.body759 ], [ %call2, %for.body806 ], [ %call2, %for.body865 ], [ %call2, %for.body913 ], [ %call2, %for.body941 ], [ %call2, %for.body988 ], [ %call2, %for.body1045 ], [ %call2, %for.end1175 ], [ %call2, %for.body1198 ], [ %call2, %for.body1227 ], [ %call2, %for.body1262 ], [ %call2, %ClampToQuantum.exit199 ], [ %call2, %for.body1316 ], [ %call2, %for.body1345 ], [ %call2, %for.body1380 ], [ %call2, %for.end1456 ], [ %call2, %for.body1479 ], [ %call2, %for.body1511 ], [ %call2, %for.body1550 ], [ %call2, %ClampToQuantum.exit271 ], [ %call2, %for.body1608 ], [ %call2, %for.body1640 ], [ %call2, %for.body1679 ], [ %call2, %for.end1765 ], [ %call2, %for.body1788 ], [ %call2, %for.body1814 ], [ %call2, %for.body1845 ], [ %call2, %ClampToQuantum.exit323 ], [ %call2, %for.body1895 ], [ %call2, %for.body1921 ], [ %call2, %for.body1952 ], [ %call2, %for.end2018 ], [ %call2, %for.body2041 ], [ %call2, %for.body2070 ], [ %call2, %for.body2105 ], [ %call2, %ClampToQuantum.exit339 ], [ %call2, %for.body2159 ], [ %call2, %for.body2188 ], [ %call2, %for.body2223 ], [ %call2, %for.end2299 ], !dbg !2191
  call void @llvm.dbg.value(metadata ptr %quantum_map.0, metadata !2170, metadata !DIExpression()), !dbg !2191
  %call2310 = tail call ptr @RelinquishMagickMemory(ptr noundef %quantum_map.0) #15, !dbg !4739
  call void @llvm.dbg.value(metadata ptr %call2310, metadata !2170, metadata !DIExpression()), !dbg !2191
  br label %cleanup2311, !dbg !4740

cleanup2311:                                      ; preds = %sw.epilog2309, %sw.default, %if.end59, %if.end43, %if.end33, %if.end19, %if.then4
  ret void, !dbg !4741
}

declare !dbg !4742 i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare !dbg !4747 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !4748 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !4751 ptr @GetAuthenticPixelQueue(ptr noundef) local_unnamed_addr #4

declare !dbg !4752 i64 @GetImageExtent(ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !4755 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #11

declare !dbg !4759 ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1103, !1104, !1105, !1106, !1107, !1108}
!llvm.ident = !{!1109}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !546, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/stream.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "9d02161c935fa3bda6a6c1af92e3abeb")
!2 = !{!3, !29, !41, !46, !56, !62, !67, !104, !118, !151, !173, !178, !186, !221, !236, !307, !315, !321, !394, !411, !423, !444, !450, !455, !466, !491, !501, !510, !516}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 25, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!7 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!8 = !DIEnumerator(name: "NoCompression", value: 1)
!9 = !DIEnumerator(name: "BZipCompression", value: 2)
!10 = !DIEnumerator(name: "DXT1Compression", value: 3)
!11 = !DIEnumerator(name: "DXT3Compression", value: 4)
!12 = !DIEnumerator(name: "DXT5Compression", value: 5)
!13 = !DIEnumerator(name: "FaxCompression", value: 6)
!14 = !DIEnumerator(name: "Group4Compression", value: 7)
!15 = !DIEnumerator(name: "JPEGCompression", value: 8)
!16 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!17 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!18 = !DIEnumerator(name: "LZWCompression", value: 11)
!19 = !DIEnumerator(name: "RLECompression", value: 12)
!20 = !DIEnumerator(name: "ZipCompression", value: 13)
!21 = !DIEnumerator(name: "ZipSCompression", value: 14)
!22 = !DIEnumerator(name: "PizCompression", value: 15)
!23 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!24 = !DIEnumerator(name: "B44Compression", value: 17)
!25 = !DIEnumerator(name: "B44ACompression", value: 18)
!26 = !DIEnumerator(name: "LZMACompression", value: 19)
!27 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!28 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 75, baseType: !5, size: 32, elements: !31)
!30 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40}
!32 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!33 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!34 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!35 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!36 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!37 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!38 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!39 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!40 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 211, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "MagickFalse", value: 0)
!45 = !DIEnumerator(name: "MagickTrue", value: 1)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 63, baseType: !5, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55}
!48 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!49 = !DIEnumerator(name: "NoInterlace", value: 1)
!50 = !DIEnumerator(name: "LineInterlace", value: 2)
!51 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!52 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!53 = !DIEnumerator(name: "GIFInterlace", value: 5)
!54 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!55 = !DIEnumerator(name: "PNGInterlace", value: 7)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 30, baseType: !5, size: 32, elements: !58)
!57 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!60 = !DIEnumerator(name: "LSBEndian", value: 1)
!61 = !DIEnumerator(name: "MSBEndian", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 88, baseType: !5, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!65 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!66 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 25, baseType: !5, size: 32, elements: !69)
!68 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!70 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!71 = !DIEnumerator(name: "RGBColorspace", value: 1)
!72 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!73 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!74 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!75 = !DIEnumerator(name: "LabColorspace", value: 5)
!76 = !DIEnumerator(name: "XYZColorspace", value: 6)
!77 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!78 = !DIEnumerator(name: "YCCColorspace", value: 8)
!79 = !DIEnumerator(name: "YIQColorspace", value: 9)
!80 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!81 = !DIEnumerator(name: "YUVColorspace", value: 11)
!82 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!83 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!84 = !DIEnumerator(name: "HSBColorspace", value: 14)
!85 = !DIEnumerator(name: "HSLColorspace", value: 15)
!86 = !DIEnumerator(name: "HWBColorspace", value: 16)
!87 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!88 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!89 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!90 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!91 = !DIEnumerator(name: "LogColorspace", value: 21)
!92 = !DIEnumerator(name: "CMYColorspace", value: 22)
!93 = !DIEnumerator(name: "LuvColorspace", value: 23)
!94 = !DIEnumerator(name: "HCLColorspace", value: 24)
!95 = !DIEnumerator(name: "LCHColorspace", value: 25)
!96 = !DIEnumerator(name: "LMSColorspace", value: 26)
!97 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!98 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!99 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!100 = !DIEnumerator(name: "HSIColorspace", value: 30)
!101 = !DIEnumerator(name: "HSVColorspace", value: 31)
!102 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!103 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 47, baseType: !5, size: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!106 = !DIEnumerator(name: "UndefinedType", value: 0)
!107 = !DIEnumerator(name: "BilevelType", value: 1)
!108 = !DIEnumerator(name: "GrayscaleType", value: 2)
!109 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!110 = !DIEnumerator(name: "PaletteType", value: 4)
!111 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!112 = !DIEnumerator(name: "TrueColorType", value: 6)
!113 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!114 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!115 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!116 = !DIEnumerator(name: "OptimizeType", value: 10)
!117 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 27, baseType: !5, size: 32, elements: !120)
!119 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!121 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!122 = !DIEnumerator(name: "RotatePreview", value: 1)
!123 = !DIEnumerator(name: "ShearPreview", value: 2)
!124 = !DIEnumerator(name: "RollPreview", value: 3)
!125 = !DIEnumerator(name: "HuePreview", value: 4)
!126 = !DIEnumerator(name: "SaturationPreview", value: 5)
!127 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!128 = !DIEnumerator(name: "GammaPreview", value: 7)
!129 = !DIEnumerator(name: "SpiffPreview", value: 8)
!130 = !DIEnumerator(name: "DullPreview", value: 9)
!131 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!132 = !DIEnumerator(name: "QuantizePreview", value: 11)
!133 = !DIEnumerator(name: "DespecklePreview", value: 12)
!134 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!135 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!136 = !DIEnumerator(name: "SharpenPreview", value: 15)
!137 = !DIEnumerator(name: "BlurPreview", value: 16)
!138 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!139 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!140 = !DIEnumerator(name: "SpreadPreview", value: 19)
!141 = !DIEnumerator(name: "SolarizePreview", value: 20)
!142 = !DIEnumerator(name: "ShadePreview", value: 21)
!143 = !DIEnumerator(name: "RaisePreview", value: 22)
!144 = !DIEnumerator(name: "SegmentPreview", value: 23)
!145 = !DIEnumerator(name: "SwirlPreview", value: 24)
!146 = !DIEnumerator(name: "ImplodePreview", value: 25)
!147 = !DIEnumerator(name: "WavePreview", value: 26)
!148 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!149 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!150 = !DIEnumerator(name: "JPEGPreview", value: 29)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 177, baseType: !5, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!153 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!154 = !DIEnumerator(name: "RedChannel", value: 1)
!155 = !DIEnumerator(name: "GrayChannel", value: 1)
!156 = !DIEnumerator(name: "CyanChannel", value: 1)
!157 = !DIEnumerator(name: "GreenChannel", value: 2)
!158 = !DIEnumerator(name: "MagentaChannel", value: 2)
!159 = !DIEnumerator(name: "BlueChannel", value: 4)
!160 = !DIEnumerator(name: "YellowChannel", value: 4)
!161 = !DIEnumerator(name: "AlphaChannel", value: 8)
!162 = !DIEnumerator(name: "OpacityChannel", value: 8)
!163 = !DIEnumerator(name: "MatteChannel", value: 8)
!164 = !DIEnumerator(name: "BlackChannel", value: 32)
!165 = !DIEnumerator(name: "IndexChannel", value: 32)
!166 = !DIEnumerator(name: "CompositeChannels", value: 47)
!167 = !DIEnumerator(name: "AllChannels", value: 134217727)
!168 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!169 = !DIEnumerator(name: "RGBChannels", value: 128)
!170 = !DIEnumerator(name: "GrayChannels", value: 128)
!171 = !DIEnumerator(name: "SyncChannels", value: 256)
!172 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 204, baseType: !5, size: 32, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIEnumerator(name: "UndefinedClass", value: 0)
!176 = !DIEnumerator(name: "DirectClass", value: 1)
!177 = !DIEnumerator(name: "PseudoClass", value: 2)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 42, baseType: !5, size: 32, elements: !180)
!179 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!180 = !{!181, !182, !183, !184, !185}
!181 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!182 = !DIEnumerator(name: "SaturationIntent", value: 1)
!183 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!184 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!185 = !DIEnumerator(name: "RelativeIntent", value: 4)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !187, line: 32, baseType: !5, size: 32, elements: !188)
!187 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!189 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!190 = !DIEnumerator(name: "PointFilter", value: 1)
!191 = !DIEnumerator(name: "BoxFilter", value: 2)
!192 = !DIEnumerator(name: "TriangleFilter", value: 3)
!193 = !DIEnumerator(name: "HermiteFilter", value: 4)
!194 = !DIEnumerator(name: "HanningFilter", value: 5)
!195 = !DIEnumerator(name: "HammingFilter", value: 6)
!196 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!197 = !DIEnumerator(name: "GaussianFilter", value: 8)
!198 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!199 = !DIEnumerator(name: "CubicFilter", value: 10)
!200 = !DIEnumerator(name: "CatromFilter", value: 11)
!201 = !DIEnumerator(name: "MitchellFilter", value: 12)
!202 = !DIEnumerator(name: "JincFilter", value: 13)
!203 = !DIEnumerator(name: "SincFilter", value: 14)
!204 = !DIEnumerator(name: "SincFastFilter", value: 15)
!205 = !DIEnumerator(name: "KaiserFilter", value: 16)
!206 = !DIEnumerator(name: "WelshFilter", value: 17)
!207 = !DIEnumerator(name: "ParzenFilter", value: 18)
!208 = !DIEnumerator(name: "BohmanFilter", value: 19)
!209 = !DIEnumerator(name: "BartlettFilter", value: 20)
!210 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!211 = !DIEnumerator(name: "LanczosFilter", value: 22)
!212 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!213 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!214 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!215 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!216 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!217 = !DIEnumerator(name: "CosineFilter", value: 28)
!218 = !DIEnumerator(name: "SplineFilter", value: 29)
!219 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!220 = !DIEnumerator(name: "SentinelFilter", value: 31)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 77, baseType: !5, size: 32, elements: !223)
!222 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!224 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!225 = !DIEnumerator(name: "ForgetGravity", value: 0)
!226 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!227 = !DIEnumerator(name: "NorthGravity", value: 2)
!228 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!229 = !DIEnumerator(name: "WestGravity", value: 4)
!230 = !DIEnumerator(name: "CenterGravity", value: 5)
!231 = !DIEnumerator(name: "EastGravity", value: 6)
!232 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!233 = !DIEnumerator(name: "SouthGravity", value: 8)
!234 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!235 = !DIEnumerator(name: "StaticGravity", value: 10)
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
!444 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 44, baseType: !5, size: 32, elements: !445)
!445 = !{!446, !447, !448, !449}
!446 = !DIEnumerator(name: "UndefinedQuantumFormat", value: 0)
!447 = !DIEnumerator(name: "FloatingPointQuantumFormat", value: 1)
!448 = !DIEnumerator(name: "SignedQuantumFormat", value: 2)
!449 = !DIEnumerator(name: "UnsignedQuantumFormat", value: 3)
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 37, baseType: !5, size: 32, elements: !451)
!451 = !{!452, !453, !454}
!452 = !DIEnumerator(name: "UndefinedQuantumAlpha", value: 0)
!453 = !DIEnumerator(name: "AssociatedQuantumAlpha", value: 1)
!454 = !DIEnumerator(name: "DisassociatedQuantumAlpha", value: 2)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !456, line: 25, baseType: !5, size: 32, elements: !457)
!456 = !DIFile(filename: "apps/538.imagick_r/src/magick/constitute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "43cd9878a55016fc93758a53f2f400b5")
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465}
!458 = !DIEnumerator(name: "UndefinedPixel", value: 0)
!459 = !DIEnumerator(name: "CharPixel", value: 1)
!460 = !DIEnumerator(name: "DoublePixel", value: 2)
!461 = !DIEnumerator(name: "FloatPixel", value: 3)
!462 = !DIEnumerator(name: "IntegerPixel", value: 4)
!463 = !DIEnumerator(name: "LongPixel", value: 5)
!464 = !DIEnumerator(name: "QuantumPixel", value: 6)
!465 = !DIEnumerator(name: "ShortPixel", value: 7)
!466 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !467, line: 34, baseType: !5, size: 32, elements: !468)
!467 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!469 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!470 = !DIEnumerator(name: "NoEvents", value: 0)
!471 = !DIEnumerator(name: "TraceEvent", value: 1)
!472 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!473 = !DIEnumerator(name: "BlobEvent", value: 4)
!474 = !DIEnumerator(name: "CacheEvent", value: 8)
!475 = !DIEnumerator(name: "CoderEvent", value: 16)
!476 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!477 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!478 = !DIEnumerator(name: "DrawEvent", value: 128)
!479 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!480 = !DIEnumerator(name: "ImageEvent", value: 512)
!481 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!482 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!483 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!484 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!485 = !DIEnumerator(name: "TransformEvent", value: 16384)
!486 = !DIEnumerator(name: "UserEvent", value: 36864)
!487 = !DIEnumerator(name: "WandEvent", value: 65536)
!488 = !DIEnumerator(name: "X11Event", value: 131072)
!489 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!490 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !492, line: 35, baseType: !5, size: 32, elements: !493)
!492 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!493 = !{!494, !495, !496, !497, !498, !499, !500}
!494 = !DIEnumerator(name: "UndefinedBlobMode", value: 0)
!495 = !DIEnumerator(name: "ReadBlobMode", value: 1)
!496 = !DIEnumerator(name: "ReadBinaryBlobMode", value: 2)
!497 = !DIEnumerator(name: "WriteBlobMode", value: 3)
!498 = !DIEnumerator(name: "WriteBinaryBlobMode", value: 4)
!499 = !DIEnumerator(name: "AppendBlobMode", value: 5)
!500 = !DIEnumerator(name: "AppendBinaryBlobMode", value: 6)
!501 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !502, line: 27, baseType: !5, size: 32, elements: !503)
!502 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!503 = !{!504, !505, !506, !507, !508, !509}
!504 = !DIEnumerator(name: "UndefinedCache", value: 0)
!505 = !DIEnumerator(name: "MemoryCache", value: 1)
!506 = !DIEnumerator(name: "MapCache", value: 2)
!507 = !DIEnumerator(name: "DiskCache", value: 3)
!508 = !DIEnumerator(name: "PingCache", value: 4)
!509 = !DIEnumerator(name: "DistributedCache", value: 5)
!510 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !511, line: 30, baseType: !5, size: 32, elements: !512)
!511 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!512 = !{!513, !514, !515}
!513 = !DIEnumerator(name: "ReadMode", value: 0)
!514 = !DIEnumerator(name: "WriteMode", value: 1)
!515 = !DIEnumerator(name: "IOMode", value: 2)
!516 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 52, baseType: !5, size: 32, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!518 = !DIEnumerator(name: "UndefinedQuantum", value: 0)
!519 = !DIEnumerator(name: "AlphaQuantum", value: 1)
!520 = !DIEnumerator(name: "BlackQuantum", value: 2)
!521 = !DIEnumerator(name: "BlueQuantum", value: 3)
!522 = !DIEnumerator(name: "CMYKAQuantum", value: 4)
!523 = !DIEnumerator(name: "CMYKQuantum", value: 5)
!524 = !DIEnumerator(name: "CyanQuantum", value: 6)
!525 = !DIEnumerator(name: "GrayAlphaQuantum", value: 7)
!526 = !DIEnumerator(name: "GrayQuantum", value: 8)
!527 = !DIEnumerator(name: "GreenQuantum", value: 9)
!528 = !DIEnumerator(name: "IndexAlphaQuantum", value: 10)
!529 = !DIEnumerator(name: "IndexQuantum", value: 11)
!530 = !DIEnumerator(name: "MagentaQuantum", value: 12)
!531 = !DIEnumerator(name: "OpacityQuantum", value: 13)
!532 = !DIEnumerator(name: "RedQuantum", value: 14)
!533 = !DIEnumerator(name: "RGBAQuantum", value: 15)
!534 = !DIEnumerator(name: "BGRAQuantum", value: 16)
!535 = !DIEnumerator(name: "RGBOQuantum", value: 17)
!536 = !DIEnumerator(name: "RGBQuantum", value: 18)
!537 = !DIEnumerator(name: "YellowQuantum", value: 19)
!538 = !DIEnumerator(name: "GrayPadQuantum", value: 20)
!539 = !DIEnumerator(name: "RGBPadQuantum", value: 21)
!540 = !DIEnumerator(name: "CbYCrYQuantum", value: 22)
!541 = !DIEnumerator(name: "CbYCrQuantum", value: 23)
!542 = !DIEnumerator(name: "CbYCrAQuantum", value: 24)
!543 = !DIEnumerator(name: "CMYKOQuantum", value: 25)
!544 = !DIEnumerator(name: "BGRQuantum", value: 26)
!545 = !DIEnumerator(name: "BGROQuantum", value: 27)
!546 = !{!547, !668, !577, !770, !792, !569, !629, !912, !617, !646, !956, !742, !575, !1004, !828, !835, !1022, !992, !776, !1095, !600, !1036, !1097, !593, !1098, !985, !1099, !5, !1100, !1101, !1102, !793, !984, !601}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamInfo", file: !549, line: 26, baseType: !550)
!549 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "98ad0c35b5bc2f21c333fb4ef4a1a007")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StreamInfo", file: !551, line: 67, size: 960, elements: !552)
!551 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d02161c935fa3bda6a6c1af92e3abeb")
!552 = !{!553, !909, !910, !911, !946, !947, !949, !950, !951, !952, !954, !955}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !550, file: !551, line: 70, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !42, line: 223, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !30, line: 356, size: 134336, elements: !558)
!558 = !{!559, !561, !563, !565, !566, !567, !568, !571, !572, !573, !574, !578, !579, !580, !582, !584, !586, !587, !588, !589, !590, !591, !592, !594, !595, !605, !606, !607, !608, !609, !610, !612, !614, !616, !622, !623, !624, !625, !626, !628, !823, !824, !825, !826, !827, !838, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !906, !907, !908}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !557, file: !30, line: 359, baseType: !560, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !4, line: 49, baseType: !3)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !557, file: !30, line: 362, baseType: !562, size: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !30, line: 86, baseType: !29)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !557, file: !30, line: 365, baseType: !564, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !42, line: 215, baseType: !41)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !557, file: !30, line: 366, baseType: !564, size: 32, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !557, file: !30, line: 367, baseType: !564, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !557, file: !30, line: 368, baseType: !564, size: 32, offset: 160)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !557, file: !30, line: 371, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !557, file: !30, line: 372, baseType: !569, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !557, file: !30, line: 373, baseType: !569, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !557, file: !30, line: 374, baseType: !569, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !557, file: !30, line: 377, baseType: !575, size: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !576, line: 46, baseType: !577)
!576 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!577 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !557, file: !30, line: 378, baseType: !575, size: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !557, file: !30, line: 379, baseType: !575, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !557, file: !30, line: 382, baseType: !581, size: 32, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !30, line: 73, baseType: !46)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !557, file: !30, line: 385, baseType: !583, size: 32, offset: 672)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !57, line: 35, baseType: !56)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !557, file: !30, line: 388, baseType: !585, size: 32, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !30, line: 93, baseType: !62)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !557, file: !30, line: 391, baseType: !575, size: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !557, file: !30, line: 394, baseType: !569, size: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !557, file: !30, line: 395, baseType: !569, size: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !557, file: !30, line: 396, baseType: !569, size: 64, offset: 960)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !557, file: !30, line: 397, baseType: !569, size: 64, offset: 1024)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !557, file: !30, line: 398, baseType: !569, size: 64, offset: 1088)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !557, file: !30, line: 401, baseType: !593, size: 64, offset: 1152)
!593 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !557, file: !30, line: 402, baseType: !593, size: 64, offset: 1216)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !557, file: !30, line: 405, baseType: !596, size: 64, offset: 1280)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !395, line: 148, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !395, line: 131, size: 64, elements: !598)
!598 = !{!599, !602, !603, !604}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !597, file: !395, line: 143, baseType: !600, size: 16)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !42, line: 93, baseType: !601)
!601 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !597, file: !395, line: 144, baseType: !600, size: 16, offset: 16)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !597, file: !395, line: 145, baseType: !600, size: 16, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !597, file: !395, line: 146, baseType: !600, size: 16, offset: 48)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !557, file: !30, line: 406, baseType: !596, size: 64, offset: 1344)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !557, file: !30, line: 407, baseType: !596, size: 64, offset: 1408)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !557, file: !30, line: 410, baseType: !564, size: 32, offset: 1472)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !557, file: !30, line: 411, baseType: !564, size: 32, offset: 1504)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !557, file: !30, line: 414, baseType: !575, size: 64, offset: 1536)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !557, file: !30, line: 417, baseType: !611, size: 32, offset: 1600)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !68, line: 61, baseType: !67)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !30, line: 420, baseType: !613, size: 32, offset: 1632)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !30, line: 61, baseType: !104)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !557, file: !30, line: 423, baseType: !615, size: 32, offset: 1664)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !119, line: 59, baseType: !118)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !557, file: !30, line: 426, baseType: !617, size: 64, offset: 1728)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !618, line: 77, baseType: !619)
!618 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !620, line: 193, baseType: !621)
!620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!621 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !557, file: !30, line: 429, baseType: !564, size: 32, offset: 1792)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !557, file: !30, line: 430, baseType: !564, size: 32, offset: 1824)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !557, file: !30, line: 433, baseType: !569, size: 64, offset: 1856)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !557, file: !30, line: 434, baseType: !569, size: 64, offset: 1920)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !557, file: !30, line: 437, baseType: !627, size: 32, offset: 1984)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !42, line: 202, baseType: !151)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !557, file: !30, line: 440, baseType: !629, size: 64, offset: 2048)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !42, line: 221, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !30, line: 150, size: 105920, elements: !632)
!632 = !{!633, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !647, !648, !649, !650, !651, !665, !667, !669, !670, !671, !672, !673, !674, !675, !676, !684, !685, !686, !687, !688, !689, !691, !692, !693, !695, !697, !699, !701, !702, !703, !704, !705, !706, !707, !715, !730, !744, !745, !746, !747, !751, !755, !759, !760, !761, !762, !763, !781, !782, !784, !785, !795, !796, !798, !799, !800, !801, !802, !803, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !820, !822}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !631, file: !30, line: 153, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !42, line: 209, baseType: !173)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !631, file: !30, line: 156, baseType: !611, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !631, file: !30, line: 159, baseType: !560, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !631, file: !30, line: 162, baseType: !575, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !631, file: !30, line: 165, baseType: !562, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !631, file: !30, line: 168, baseType: !564, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !631, file: !30, line: 169, baseType: !564, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !631, file: !30, line: 172, baseType: !575, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !631, file: !30, line: 173, baseType: !575, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !631, file: !30, line: 174, baseType: !575, size: 64, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !631, file: !30, line: 175, baseType: !575, size: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !631, file: !30, line: 178, baseType: !646, size: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !631, file: !30, line: 179, baseType: !596, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !631, file: !30, line: 180, baseType: !596, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !631, file: !30, line: 181, baseType: !596, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !631, file: !30, line: 184, baseType: !593, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !631, file: !30, line: 187, baseType: !652, size: 768, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !30, line: 128, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !30, line: 121, size: 768, elements: !654)
!654 = !{!655, !662, !663, !664}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !653, file: !30, line: 124, baseType: !656, size: 192)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !30, line: 101, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !30, line: 95, size: 192, elements: !658)
!658 = !{!659, !660, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !657, file: !30, line: 98, baseType: !593, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !657, file: !30, line: 99, baseType: !593, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !657, file: !30, line: 100, baseType: !593, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !653, file: !30, line: 125, baseType: !656, size: 192, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !653, file: !30, line: 126, baseType: !656, size: 192, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !653, file: !30, line: 127, baseType: !656, size: 192, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !631, file: !30, line: 190, baseType: !666, size: 32, offset: 1664)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !179, line: 49, baseType: !178)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !631, file: !30, line: 193, baseType: !668, size: 64, offset: 1728)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !631, file: !30, line: 196, baseType: !585, size: 32, offset: 1792)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !631, file: !30, line: 199, baseType: !569, size: 64, offset: 1856)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !631, file: !30, line: 200, baseType: !569, size: 64, offset: 1920)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !631, file: !30, line: 201, baseType: !569, size: 64, offset: 1984)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !631, file: !30, line: 204, baseType: !617, size: 64, offset: 2048)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !631, file: !30, line: 207, baseType: !593, size: 64, offset: 2112)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !631, file: !30, line: 208, baseType: !593, size: 64, offset: 2176)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !631, file: !30, line: 211, baseType: !677, size: 256, offset: 2240)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !222, line: 130, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !222, line: 121, size: 256, elements: !679)
!679 = !{!680, !681, !682, !683}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !678, file: !222, line: 124, baseType: !575, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !678, file: !222, line: 125, baseType: !575, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !678, file: !222, line: 128, baseType: !617, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !678, file: !222, line: 129, baseType: !617, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !631, file: !30, line: 212, baseType: !677, size: 256, offset: 2496)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !631, file: !30, line: 213, baseType: !677, size: 256, offset: 2752)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !631, file: !30, line: 216, baseType: !593, size: 64, offset: 3008)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !631, file: !30, line: 217, baseType: !593, size: 64, offset: 3072)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !631, file: !30, line: 218, baseType: !593, size: 64, offset: 3136)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !631, file: !30, line: 221, baseType: !690, size: 32, offset: 3200)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !187, line: 66, baseType: !186)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !631, file: !30, line: 224, baseType: !581, size: 32, offset: 3232)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !631, file: !30, line: 227, baseType: !583, size: 32, offset: 3264)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !631, file: !30, line: 230, baseType: !694, size: 32, offset: 3296)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !222, line: 91, baseType: !221)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !631, file: !30, line: 233, baseType: !696, size: 32, offset: 3328)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !237, line: 99, baseType: !236)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !631, file: !30, line: 236, baseType: !698, size: 32, offset: 3360)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !308, line: 32, baseType: !307)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !631, file: !30, line: 239, baseType: !700, size: 64, offset: 3392)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !631, file: !30, line: 242, baseType: !575, size: 64, offset: 3456)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !631, file: !30, line: 243, baseType: !575, size: 64, offset: 3520)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !631, file: !30, line: 246, baseType: !617, size: 64, offset: 3584)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !631, file: !30, line: 249, baseType: !575, size: 64, offset: 3648)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !631, file: !30, line: 250, baseType: !575, size: 64, offset: 3712)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !631, file: !30, line: 253, baseType: !617, size: 64, offset: 3776)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !631, file: !30, line: 256, baseType: !708, size: 192, offset: 3840)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !709, line: 68, baseType: !710)
!709 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !709, line: 62, size: 192, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !710, file: !709, line: 65, baseType: !593, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !710, file: !709, line: 66, baseType: !593, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !710, file: !709, line: 67, baseType: !593, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !631, file: !30, line: 259, baseType: !716, size: 512, offset: 4032)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !316, line: 51, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !316, line: 40, size: 512, elements: !718)
!718 = !{!719, !726, !727, !729}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !717, file: !316, line: 43, baseType: !720, size: 192)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !316, line: 38, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !316, line: 32, size: 192, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !721, file: !316, line: 35, baseType: !593, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !721, file: !316, line: 36, baseType: !593, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !721, file: !316, line: 37, baseType: !593, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !717, file: !316, line: 44, baseType: !720, size: 192, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !717, file: !316, line: 47, baseType: !728, size: 32, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !316, line: 30, baseType: !315)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !717, file: !316, line: 50, baseType: !575, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !631, file: !30, line: 262, baseType: !731, size: 64, offset: 4544)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !732, line: 26, baseType: !733)
!732 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!564, !736, !738, !741, !668}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !42, line: 150, baseType: !740)
!740 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !42, line: 151, baseType: !743)
!743 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !631, file: !30, line: 265, baseType: !668, size: 64, offset: 4608)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !631, file: !30, line: 266, baseType: !668, size: 64, offset: 4672)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !631, file: !30, line: 267, baseType: !668, size: 64, offset: 4736)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !631, file: !30, line: 270, baseType: !748, size: 64, offset: 4800)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !4, line: 52, baseType: !750)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !4, line: 51, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !631, file: !30, line: 273, baseType: !752, size: 64, offset: 4864)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !42, line: 217, baseType: !754)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !42, line: 217, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !631, file: !30, line: 276, baseType: !756, size: 32768, offset: 4928)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 32768, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 4096)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !631, file: !30, line: 277, baseType: !756, size: 32768, offset: 37696)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !631, file: !30, line: 278, baseType: !756, size: 32768, offset: 70464)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !631, file: !30, line: 281, baseType: !575, size: 64, offset: 103232)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !631, file: !30, line: 282, baseType: !575, size: 64, offset: 103296)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !631, file: !30, line: 285, baseType: !764, size: 448, offset: 103360)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !42, line: 219, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !322, line: 102, size: 448, elements: !766)
!766 = !{!767, !769, !771, !772, !773, !774, !775, !780}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !765, file: !322, line: 105, baseType: !768, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !322, line: 100, baseType: !321)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !765, file: !322, line: 108, baseType: !770, size: 32, offset: 32)
!770 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !765, file: !322, line: 111, baseType: !569, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !765, file: !322, line: 112, baseType: !569, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !765, file: !322, line: 115, baseType: !668, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !765, file: !322, line: 118, baseType: !564, size: 32, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !765, file: !322, line: 121, baseType: !776, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !778, line: 26, baseType: !779)
!778 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !778, line: 25, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !765, file: !322, line: 124, baseType: !575, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !631, file: !30, line: 288, baseType: !564, size: 32, offset: 103808)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !30, line: 291, baseType: !783, size: 64, offset: 103872)
!783 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !617)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !631, file: !30, line: 294, baseType: !776, size: 64, offset: 103936)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !631, file: !30, line: 297, baseType: !786, size: 256, offset: 104000)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !179, line: 40, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !179, line: 27, size: 256, elements: !788)
!788 = !{!789, !790, !791, !794}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !787, file: !179, line: 30, baseType: !569, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !787, file: !179, line: 33, baseType: !575, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !787, file: !179, line: 36, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !787, file: !179, line: 39, baseType: !575, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !631, file: !30, line: 298, baseType: !786, size: 256, offset: 104256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !631, file: !30, line: 299, baseType: !797, size: 64, offset: 104512)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !631, file: !30, line: 302, baseType: !575, size: 64, offset: 104576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !631, file: !30, line: 305, baseType: !575, size: 64, offset: 104640)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !631, file: !30, line: 308, baseType: !700, size: 64, offset: 104704)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !631, file: !30, line: 309, baseType: !700, size: 64, offset: 104768)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !30, line: 310, baseType: !700, size: 64, offset: 104832)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !631, file: !30, line: 313, baseType: !804, size: 32, offset: 104896)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !395, line: 47, baseType: !394)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !631, file: !30, line: 316, baseType: !564, size: 32, offset: 104928)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !631, file: !30, line: 319, baseType: !596, size: 64, offset: 104960)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !631, file: !30, line: 322, baseType: !700, size: 64, offset: 105024)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !631, file: !30, line: 325, baseType: !677, size: 256, offset: 105088)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !631, file: !30, line: 328, baseType: !668, size: 64, offset: 105344)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !631, file: !30, line: 329, baseType: !668, size: 64, offset: 105408)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !30, line: 332, baseType: !613, size: 32, offset: 105472)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !631, file: !30, line: 335, baseType: !564, size: 32, offset: 105504)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !631, file: !30, line: 338, baseType: !742, size: 64, offset: 105536)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !631, file: !30, line: 341, baseType: !564, size: 32, offset: 105600)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !631, file: !30, line: 344, baseType: !575, size: 64, offset: 105664)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !631, file: !30, line: 347, baseType: !817, size: 64, offset: 105728)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !818, line: 7, baseType: !819)
!818 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !620, line: 160, baseType: !621)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !631, file: !30, line: 350, baseType: !821, size: 32, offset: 105792)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !395, line: 79, baseType: !411)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !631, file: !30, line: 353, baseType: !575, size: 64, offset: 105856)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !557, file: !30, line: 443, baseType: !668, size: 64, offset: 2112)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !557, file: !30, line: 446, baseType: !731, size: 64, offset: 2176)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !557, file: !30, line: 449, baseType: !668, size: 64, offset: 2240)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !557, file: !30, line: 450, baseType: !668, size: 64, offset: 2304)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !557, file: !30, line: 453, baseType: !828, size: 64, offset: 2368)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !829, line: 26, baseType: !830)
!829 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!575, !833, !835, !837}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !557, file: !30, line: 456, baseType: !839, size: 64, offset: 2432)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !841, line: 7, baseType: !842)
!841 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !843, line: 49, size: 1728, elements: !844)
!843 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!844 = !{!845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !860, !862, !863, !864, !866, !867, !869, !873, !876, !878, !881, !884, !885, !886, !887, !888}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !842, file: !843, line: 51, baseType: !770, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !842, file: !843, line: 54, baseType: !569, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !842, file: !843, line: 55, baseType: !569, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !842, file: !843, line: 56, baseType: !569, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !842, file: !843, line: 57, baseType: !569, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !842, file: !843, line: 58, baseType: !569, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !842, file: !843, line: 59, baseType: !569, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !842, file: !843, line: 60, baseType: !569, size: 64, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !842, file: !843, line: 61, baseType: !569, size: 64, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !842, file: !843, line: 64, baseType: !569, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !842, file: !843, line: 65, baseType: !569, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !842, file: !843, line: 66, baseType: !569, size: 64, offset: 704)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !842, file: !843, line: 68, baseType: !858, size: 64, offset: 768)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !843, line: 36, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !842, file: !843, line: 70, baseType: !861, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !842, file: !843, line: 72, baseType: !770, size: 32, offset: 896)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !842, file: !843, line: 73, baseType: !770, size: 32, offset: 928)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !842, file: !843, line: 74, baseType: !865, size: 64, offset: 960)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !620, line: 152, baseType: !621)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !842, file: !843, line: 77, baseType: !601, size: 16, offset: 1024)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !842, file: !843, line: 78, baseType: !868, size: 8, offset: 1040)
!868 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !842, file: !843, line: 79, baseType: !870, size: 8, offset: 1048)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 8, elements: !871)
!871 = !{!872}
!872 = !DISubrange(count: 1)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !842, file: !843, line: 81, baseType: !874, size: 64, offset: 1088)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !843, line: 43, baseType: null)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !842, file: !843, line: 89, baseType: !877, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !620, line: 153, baseType: !621)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !842, file: !843, line: 91, baseType: !879, size: 64, offset: 1216)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !843, line: 37, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !842, file: !843, line: 92, baseType: !882, size: 64, offset: 1280)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !843, line: 38, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !842, file: !843, line: 93, baseType: !861, size: 64, offset: 1344)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !842, file: !843, line: 94, baseType: !668, size: 64, offset: 1408)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !842, file: !843, line: 95, baseType: !575, size: 64, offset: 1472)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !842, file: !843, line: 96, baseType: !770, size: 32, offset: 1536)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !842, file: !843, line: 98, baseType: !889, size: 160, offset: 1568)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 160, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 20)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !557, file: !30, line: 459, baseType: !668, size: 64, offset: 2496)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !557, file: !30, line: 462, baseType: !575, size: 64, offset: 2560)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !557, file: !30, line: 465, baseType: !756, size: 32768, offset: 2624)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !557, file: !30, line: 466, baseType: !756, size: 32768, offset: 35392)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !557, file: !30, line: 467, baseType: !756, size: 32768, offset: 68160)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !557, file: !30, line: 468, baseType: !756, size: 32768, offset: 100928)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !557, file: !30, line: 471, baseType: !564, size: 32, offset: 133696)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !557, file: !30, line: 474, baseType: !569, size: 64, offset: 133760)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !557, file: !30, line: 477, baseType: !575, size: 64, offset: 133824)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !557, file: !30, line: 478, baseType: !575, size: 64, offset: 133888)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !557, file: !30, line: 481, baseType: !596, size: 64, offset: 133952)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !557, file: !30, line: 484, baseType: !575, size: 64, offset: 134016)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !557, file: !30, line: 487, baseType: !905, size: 32, offset: 134080)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !424, line: 47, baseType: !423)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !557, file: !30, line: 490, baseType: !596, size: 64, offset: 134112)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !557, file: !30, line: 493, baseType: !668, size: 64, offset: 134208)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !557, file: !30, line: 496, baseType: !564, size: 32, offset: 134272)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !550, file: !551, line: 73, baseType: !833, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !550, file: !551, line: 76, baseType: !629, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "quantum_info", scope: !550, file: !551, line: 79, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumInfo", file: !57, line: 85, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantumInfo", file: !915, line: 42, size: 1216, elements: !916)
!915 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f56ff413af29c367aaef7b4fe7af9628")
!916 = !{!917, !918, !919, !921, !922, !923, !924, !925, !926, !927, !929, !930, !932, !933, !934, !944, !945}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !914, file: !915, line: 45, baseType: !575, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "quantum", scope: !914, file: !915, line: 46, baseType: !575, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !914, file: !915, line: 49, baseType: !920, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumFormatType", file: !57, line: 50, baseType: !444)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !914, file: !915, line: 52, baseType: !593, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !914, file: !915, line: 53, baseType: !593, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !914, file: !915, line: 54, baseType: !593, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !914, file: !915, line: 57, baseType: !575, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "min_is_white", scope: !914, file: !915, line: 60, baseType: !564, size: 32, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pack", scope: !914, file: !915, line: 61, baseType: !564, size: 32, offset: 480)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_type", scope: !914, file: !915, line: 64, baseType: !928, size: 32, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumAlphaType", file: !57, line: 42, baseType: !450)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "number_threads", scope: !914, file: !915, line: 67, baseType: !575, size: 64, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !914, file: !915, line: 70, baseType: !931, size: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !914, file: !915, line: 73, baseType: !575, size: 64, offset: 704)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !914, file: !915, line: 76, baseType: !583, size: 32, offset: 768)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !914, file: !915, line: 79, baseType: !935, size: 256, offset: 832)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumState", file: !915, line: 40, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantumState", file: !915, line: 27, size: 256, elements: !937)
!937 = !{!938, !939, !940, !941}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_scale", scope: !936, file: !915, line: 30, baseType: !593, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pixel", scope: !936, file: !915, line: 33, baseType: !5, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !936, file: !915, line: 36, baseType: !575, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !936, file: !915, line: 39, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !914, file: !915, line: 82, baseType: !776, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !914, file: !915, line: 85, baseType: !575, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !550, file: !551, line: 82, baseType: !569, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "storage_type", scope: !550, file: !551, line: 85, baseType: !948, size: 32, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorageType", file: !456, line: 35, baseType: !455)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !550, file: !551, line: 88, baseType: !792, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !550, file: !551, line: 91, baseType: !677, size: 256, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !550, file: !551, line: 94, baseType: !617, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !550, file: !551, line: 97, baseType: !953, size: 64, offset: 768)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !550, file: !551, line: 100, baseType: !835, size: 64, offset: 832)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !550, file: !551, line: 103, baseType: !575, size: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheInfo", file: !958, line: 217, baseType: !959)
!958 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6b4e371270617573d29dc6ff902677c8")
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheInfo", file: !958, line: 128, size: 68224, elements: !960)
!960 = !{!961, !962, !963, !964, !966, !968, !969, !970, !971, !972, !973, !974, !990, !991, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1075, !1080, !1081, !1082, !1083, !1084, !1090, !1091, !1092, !1093, !1094}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !959, file: !958, line: 131, baseType: !634, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !959, file: !958, line: 134, baseType: !611, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !959, file: !958, line: 137, baseType: !575, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !959, file: !958, line: 140, baseType: !965, size: 32, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheType", file: !502, line: 35, baseType: !501)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !959, file: !958, line: 143, baseType: !967, size: 32, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "MapMode", file: !511, line: 35, baseType: !510)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !959, file: !958, line: 146, baseType: !564, size: 32, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !959, file: !958, line: 149, baseType: !575, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !959, file: !958, line: 150, baseType: !575, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !959, file: !958, line: 153, baseType: !739, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !959, file: !958, line: 156, baseType: !742, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !959, file: !958, line: 159, baseType: !905, size: 32, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_color", scope: !959, file: !958, line: 162, baseType: !975, size: 448, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !395, line: 127, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !395, line: 104, size: 448, elements: !977)
!977 = !{!978, !979, !980, !981, !982, !983, !986, !987, !988, !989}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !976, file: !395, line: 107, baseType: !634, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !976, file: !395, line: 110, baseType: !611, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !976, file: !395, line: 113, baseType: !564, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !976, file: !395, line: 116, baseType: !593, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !976, file: !395, line: 119, baseType: !575, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !976, file: !395, line: 122, baseType: !984, size: 32, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !42, line: 78, baseType: !985)
!985 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !976, file: !395, line: 123, baseType: !984, size: 32, offset: 288)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !976, file: !395, line: 124, baseType: !984, size: 32, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !976, file: !395, line: 125, baseType: !984, size: 32, offset: 352)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !976, file: !395, line: 126, baseType: !984, size: 32, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "number_threads", scope: !959, file: !958, line: 165, baseType: !575, size: 64, offset: 1024)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nexus_info", scope: !959, file: !958, line: 168, baseType: !992, size: 64, offset: 1088)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "NexusInfo", file: !958, line: 126, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NexusInfo", file: !958, line: 103, size: 704, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1006}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !995, file: !958, line: 106, baseType: !564, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !995, file: !958, line: 109, baseType: !677, size: 256, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !995, file: !958, line: 112, baseType: !742, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !995, file: !958, line: 115, baseType: !646, size: 64, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !995, file: !958, line: 116, baseType: !646, size: 64, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "authentic_pixel_cache", scope: !995, file: !958, line: 119, baseType: !564, size: 32, offset: 512)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "indexes", scope: !995, file: !958, line: 122, baseType: !1004, size: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !395, line: 129, baseType: !600)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !995, file: !958, line: 125, baseType: !575, size: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !959, file: !958, line: 171, baseType: !646, size: 64, offset: 1152)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "indexes", scope: !959, file: !958, line: 174, baseType: !1004, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "active_index_channel", scope: !959, file: !958, line: 177, baseType: !564, size: 32, offset: 1280)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !959, file: !958, line: 180, baseType: !770, size: 32, offset: 1312)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !959, file: !958, line: 183, baseType: !756, size: 32768, offset: 1344)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "cache_filename", scope: !959, file: !958, line: 184, baseType: !756, size: 32768, offset: 34112)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !959, file: !958, line: 187, baseType: !1014, size: 704, offset: 66880)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheMethods", file: !958, line: 101, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheMethods", file: !958, line: 67, size: 704, elements: !1016)
!1016 = !{!1017, !1026, !1031, !1038, !1043, !1048, !1053, !1058, !1063, !1065, !1070}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "get_virtual_pixel_handler", scope: !1015, file: !958, line: 70, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetVirtualPixelHandler", file: !958, line: 49, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!1022, !833, !1024, !1025, !1025, !837, !837, !953}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "get_virtual_pixels_handler", scope: !1015, file: !958, line: 73, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetVirtualPixelsHandler", file: !958, line: 51, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!1022, !833}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "get_virtual_indexes_from_handler", scope: !1015, file: !958, line: 76, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetVirtualIndexesFromHandler", file: !958, line: 36, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1036, !833}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "get_one_virtual_pixel_from_handler", scope: !1015, file: !958, line: 79, baseType: !1039, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetOneVirtualPixelFromHandler", file: !958, line: 44, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!564, !833, !1024, !1025, !1025, !646, !953}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "get_authentic_pixels_handler", scope: !1015, file: !958, line: 82, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetAuthenticPixelsHandler", file: !958, line: 54, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!646, !629, !1025, !1025, !837, !837, !953}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "get_authentic_indexes_from_handler", scope: !1015, file: !958, line: 85, baseType: !1049, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetAuthenticIndexesFromHandler", file: !958, line: 39, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1004, !833}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "get_one_authentic_pixel_from_handler", scope: !1015, file: !958, line: 88, baseType: !1054, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetOneAuthenticPixelFromHandler", file: !958, line: 42, baseType: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!564, !629, !1025, !1025, !646, !953}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "get_authentic_pixels_from_handler", scope: !1015, file: !958, line: 91, baseType: !1059, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "GetAuthenticPixelsFromHandler", file: !958, line: 58, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!646, !833}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "queue_authentic_pixels_handler", scope: !1015, file: !958, line: 94, baseType: !1064, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "QueueAuthenticPixelsHandler", file: !958, line: 61, baseType: !1045)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sync_authentic_pixels_handler", scope: !1015, file: !958, line: 97, baseType: !1066, size: 64, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncAuthenticPixelsHandler", file: !958, line: 46, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!564, !629, !953}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_pixel_handler", scope: !1015, file: !958, line: 100, baseType: !1071, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "DestroyPixelHandler", file: !958, line: 65, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !629}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "random_info", scope: !959, file: !958, line: 190, baseType: !1076, size: 64, offset: 67584)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "RandomInfo", file: !1078, line: 31, baseType: !1079)
!1078 = !DIFile(filename: "apps/538.imagick_r/src/magick/random_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "95f31caf92e8a7cab5b1bf8cc3698f31")
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RandomInfo", file: !1078, line: 30, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "number_connections", scope: !959, file: !958, line: 193, baseType: !575, size: 64, offset: 67648)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "server_info", scope: !959, file: !958, line: 196, baseType: !668, size: 64, offset: 67712)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !959, file: !958, line: 199, baseType: !564, size: 32, offset: 67776)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !959, file: !958, line: 200, baseType: !564, size: 32, offset: 67808)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !959, file: !958, line: 203, baseType: !1085, size: 32, offset: 67840)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickThreadType", file: !1086, line: 30, baseType: !1087)
!1086 = !DIFile(filename: "apps/538.imagick_r/src/magick/thread_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c99214db95297b06bb439184c535bbc9")
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1088, line: 97, baseType: !1089)
!1088 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !620, line: 154, baseType: !770)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !959, file: !958, line: 206, baseType: !617, size: 64, offset: 67904)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !959, file: !958, line: 209, baseType: !776, size: 64, offset: 67968)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "file_semaphore", scope: !959, file: !958, line: 210, baseType: !776, size: 64, offset: 68032)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !959, file: !958, line: 213, baseType: !817, size: 64, offset: 68096)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !959, file: !958, line: 216, baseType: !575, size: 64, offset: 68160)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumType", file: !57, line: 82, baseType: !516)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1103 = !{i32 7, !"Dwarf Version", i32 5}
!1104 = !{i32 2, !"Debug Info Version", i32 3}
!1105 = !{i32 1, !"wchar_size", i32 4}
!1106 = !{i32 7, !"PIC Level", i32 2}
!1107 = !{i32 7, !"PIE Level", i32 2}
!1108 = !{i32 7, !"uwtable", i32 2}
!1109 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1110 = distinct !DISubprogram(name: "AcquireStreamInfo", scope: !551, file: !551, line: 151, type: !1111, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!547, !554}
!1113 = !{!1114, !1115, !1116, !1119, !1120, !1123}
!1114 = !DILocalVariable(name: "image_info", arg: 1, scope: !1110, file: !551, line: 151, type: !554)
!1115 = !DILocalVariable(name: "stream_info", scope: !1110, file: !551, line: 154, type: !547)
!1116 = !DILocalVariable(name: "message", scope: !1117, file: !551, line: 158, type: !569)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !551, line: 158, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1110, file: !551, line: 157, column: 7)
!1119 = !DILocalVariable(name: "exception", scope: !1117, file: !551, line: 158, type: !764)
!1120 = !DILocalVariable(name: "message", scope: !1121, file: !551, line: 163, type: !569)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !551, line: 163, column: 5)
!1122 = distinct !DILexicalBlock(scope: !1110, file: !551, line: 162, column: 7)
!1123 = !DILocalVariable(name: "exception", scope: !1121, file: !551, line: 163, type: !764)
!1124 = !DILocation(line: 0, scope: !1110)
!1125 = !DILocation(line: 156, column: 30, scope: !1110)
!1126 = !DILocation(line: 157, column: 19, scope: !1118)
!1127 = !DILocation(line: 157, column: 7, scope: !1110)
!1128 = !DILocation(line: 158, column: 5, scope: !1117)
!1129 = !{!1130, !1130, i64 0}
!1130 = !{!"int", !1131, i64 0}
!1131 = !{!"omnipotent char", !1132, i64 0}
!1132 = !{!"Simple C/C++ TBAA"}
!1133 = !DILocation(line: 0, scope: !1117)
!1134 = !DILocation(line: 159, column: 10, scope: !1110)
!1135 = !DILocation(line: 160, column: 41, scope: !1110)
!1136 = !DILocation(line: 160, column: 16, scope: !1110)
!1137 = !DILocation(line: 160, column: 22, scope: !1110)
!1138 = !{!1139, !1140, i64 48}
!1139 = !{!"_StreamInfo", !1140, i64 0, !1140, i64 8, !1140, i64 16, !1140, i64 24, !1140, i64 32, !1131, i64 40, !1140, i64 48, !1141, i64 56, !1142, i64 88, !1140, i64 96, !1140, i64 104, !1142, i64 112}
!1140 = !{!"any pointer", !1131, i64 0}
!1141 = !{!"_RectangleInfo", !1142, i64 0, !1142, i64 8, !1142, i64 16, !1142, i64 24}
!1142 = !{!"long", !1131, i64 0}
!1143 = !DILocation(line: 162, column: 27, scope: !1122)
!1144 = !DILocation(line: 162, column: 7, scope: !1110)
!1145 = !DILocation(line: 163, column: 5, scope: !1121)
!1146 = !DILocation(line: 0, scope: !1121)
!1147 = !DILocation(line: 164, column: 20, scope: !1110)
!1148 = !DILocation(line: 164, column: 16, scope: !1110)
!1149 = !DILocation(line: 164, column: 19, scope: !1110)
!1150 = !{!1139, !1140, i64 32}
!1151 = !DILocation(line: 165, column: 16, scope: !1110)
!1152 = !DILocation(line: 165, column: 28, scope: !1110)
!1153 = !{!1139, !1131, i64 40}
!1154 = !DILocation(line: 166, column: 23, scope: !1110)
!1155 = !DILocation(line: 166, column: 16, scope: !1110)
!1156 = !DILocation(line: 166, column: 22, scope: !1110)
!1157 = !{!1139, !1140, i64 16}
!1158 = !DILocation(line: 167, column: 16, scope: !1110)
!1159 = !DILocation(line: 167, column: 25, scope: !1110)
!1160 = !{!1139, !1142, i64 112}
!1161 = !DILocation(line: 168, column: 3, scope: !1110)
!1162 = !DISubprogram(name: "AcquireMagickMemory", scope: !1163, file: !1163, line: 40, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1163 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!668, !837}
!1166 = !{}
!1167 = !DISubprogram(name: "GetExceptionInfo", scope: !322, file: !322, line: 166, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !953}
!1170 = !DISubprogram(name: "GetExceptionMessage", scope: !322, file: !322, line: 137, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!569, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!1174 = !DISubprogram(name: "ThrowMagickException", scope: !322, file: !322, line: 156, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!564, !953, !736, !736, !837, !1177, !736, !736, null}
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!1178 = !DISubprogram(name: "DestroyString", scope: !1179, file: !1179, line: 46, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1179 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!569, !569}
!1182 = !DISubprogram(name: "CatchException", scope: !322, file: !322, line: 164, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1183 = !DISubprogram(name: "DestroyExceptionInfo", scope: !322, file: !322, line: 148, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!953, !953}
!1186 = !DISubprogram(name: "MagickCoreTerminus", scope: !1187, file: !1187, line: 147, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1187 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null}
!1190 = !DISubprogram(name: "ResetMagickMemory", scope: !1163, file: !1163, line: 52, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!668, !668, !770, !837}
!1193 = !DISubprogram(name: "AcquireAlignedMemory", scope: !1163, file: !1163, line: 38, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!668, !837, !837}
!1196 = !DISubprogram(name: "ConstantString", scope: !1179, file: !1179, line: 45, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!569, !736}
!1199 = !DISubprogram(name: "AcquireImage", scope: !30, file: !30, line: 506, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!629, !554}
!1202 = distinct !DISubprogram(name: "DestroyStreamInfo", scope: !551, file: !551, line: 263, type: !1203, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!547, !547}
!1205 = !{!1206}
!1206 = !DILocalVariable(name: "stream_info", arg: 1, scope: !1202, file: !551, line: 263, type: !547)
!1207 = !DILocation(line: 0, scope: !1202)
!1208 = !DILocation(line: 265, column: 10, scope: !1202)
!1209 = !DILocation(line: 268, column: 20, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1202, file: !551, line: 268, column: 7)
!1211 = !DILocation(line: 268, column: 24, scope: !1210)
!1212 = !DILocation(line: 268, column: 7, scope: !1202)
!1213 = !DILocation(line: 269, column: 22, scope: !1210)
!1214 = !DILocation(line: 269, column: 21, scope: !1210)
!1215 = !DILocation(line: 269, column: 5, scope: !1210)
!1216 = !DILocation(line: 270, column: 20, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1202, file: !551, line: 270, column: 7)
!1218 = !DILocation(line: 270, column: 27, scope: !1217)
!1219 = !DILocation(line: 270, column: 7, scope: !1202)
!1220 = !DILocation(line: 271, column: 43, scope: !1217)
!1221 = !DILocation(line: 271, column: 24, scope: !1217)
!1222 = !DILocation(line: 271, column: 5, scope: !1217)
!1223 = !DILocation(line: 273, column: 20, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1202, file: !551, line: 273, column: 7)
!1225 = !DILocation(line: 273, column: 27, scope: !1224)
!1226 = !DILocation(line: 273, column: 7, scope: !1202)
!1227 = !DILocation(line: 275, column: 14, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !551, line: 274, column: 5)
!1229 = !DILocation(line: 276, column: 53, scope: !1228)
!1230 = !DILocation(line: 276, column: 27, scope: !1228)
!1231 = !DILocation(line: 276, column: 26, scope: !1228)
!1232 = !DILocation(line: 277, column: 5, scope: !1228)
!1233 = !DILocation(line: 278, column: 20, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1202, file: !551, line: 278, column: 7)
!1235 = !{!1139, !1140, i64 24}
!1236 = !DILocation(line: 278, column: 33, scope: !1234)
!1237 = !DILocation(line: 278, column: 7, scope: !1202)
!1238 = !DILocation(line: 279, column: 31, scope: !1234)
!1239 = !DILocation(line: 279, column: 30, scope: !1234)
!1240 = !DILocation(line: 279, column: 5, scope: !1234)
!1241 = !DILocation(line: 280, column: 16, scope: !1202)
!1242 = !DILocation(line: 280, column: 25, scope: !1202)
!1243 = !DILocation(line: 281, column: 30, scope: !1202)
!1244 = !DILocation(line: 282, column: 3, scope: !1202)
!1245 = !DISubprogram(name: "LogMagickEvent", scope: !467, file: !467, line: 83, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!564, !1248, !736, !736, !837, !736, null}
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !467, line: 58, baseType: !466)
!1250 = !DISubprogram(name: "RelinquishAlignedMemory", scope: !1163, file: !1163, line: 50, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!668, !668}
!1253 = !DISubprogram(name: "CloseBlob", scope: !492, file: !492, line: 82, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!564, !629}
!1256 = !DISubprogram(name: "DestroyImage", scope: !30, file: !30, line: 510, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!629, !629}
!1259 = !DISubprogram(name: "DestroyQuantumInfo", scope: !57, file: !57, line: 169, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!912, !912}
!1262 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1163, file: !1163, line: 51, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1263 = distinct !DISubprogram(name: "GetStreamInfoClientData", scope: !551, file: !551, line: 525, type: !1264, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!835, !547}
!1266 = !{!1267}
!1267 = !DILocalVariable(name: "stream_info", arg: 1, scope: !1263, file: !551, line: 525, type: !547)
!1268 = !DILocation(line: 0, scope: !1263)
!1269 = !DILocation(line: 529, column: 23, scope: !1263)
!1270 = !{!1139, !1140, i64 104}
!1271 = !DILocation(line: 529, column: 3, scope: !1263)
!1272 = distinct !DISubprogram(name: "OpenStream", scope: !551, file: !551, line: 772, type: !1273, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!564, !554, !547, !736, !953}
!1275 = !{!1276, !1277, !1278, !1279, !1280}
!1276 = !DILocalVariable(name: "image_info", arg: 1, scope: !1272, file: !551, line: 772, type: !554)
!1277 = !DILocalVariable(name: "stream_info", arg: 2, scope: !1272, file: !551, line: 773, type: !547)
!1278 = !DILocalVariable(name: "filename", arg: 3, scope: !1272, file: !551, line: 773, type: !736)
!1279 = !DILocalVariable(name: "exception", arg: 4, scope: !1272, file: !551, line: 773, type: !953)
!1280 = !DILocalVariable(name: "status", scope: !1272, file: !551, line: 776, type: !564)
!1281 = !DILocation(line: 0, scope: !1272)
!1282 = !DILocation(line: 778, column: 40, scope: !1272)
!1283 = !DILocation(line: 778, column: 48, scope: !1272)
!1284 = !DILocation(line: 778, column: 10, scope: !1272)
!1285 = !DILocation(line: 779, column: 43, scope: !1272)
!1286 = !DILocation(line: 779, column: 10, scope: !1272)
!1287 = !DILocation(line: 780, column: 3, scope: !1272)
!1288 = !DISubprogram(name: "CopyMagickString", scope: !1179, file: !1179, line: 78, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!575, !569, !736, !837}
!1291 = !DISubprogram(name: "OpenBlob", scope: !492, file: !492, line: 84, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!564, !554, !629, !1294, !953}
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobMode", file: !492, line: 44, baseType: !491)
!1296 = distinct !DISubprogram(name: "ReadStream", scope: !551, file: !551, line: 934, type: !1297, scopeLine: 936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!629, !554, !828, !953}
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305}
!1300 = !DILocalVariable(name: "image_info", arg: 1, scope: !1296, file: !551, line: 934, type: !554)
!1301 = !DILocalVariable(name: "stream", arg: 2, scope: !1296, file: !551, line: 934, type: !828)
!1302 = !DILocalVariable(name: "exception", arg: 3, scope: !1296, file: !551, line: 935, type: !953)
!1303 = !DILocalVariable(name: "cache_methods", scope: !1296, file: !551, line: 938, type: !1014)
!1304 = !DILocalVariable(name: "image", scope: !1296, file: !551, line: 941, type: !629)
!1305 = !DILocalVariable(name: "read_info", scope: !1296, file: !551, line: 944, type: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!1307 = !DILocation(line: 0, scope: !1296)
!1308 = !DILocation(line: 937, column: 3, scope: !1296)
!1309 = !DILocation(line: 938, column: 5, scope: !1296)
!1310 = !DILocation(line: 951, column: 19, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1296, file: !551, line: 951, column: 7)
!1312 = !{!1313, !1131, i64 16712}
!1313 = !{!"_ImageInfo", !1131, i64 0, !1131, i64 4, !1131, i64 8, !1131, i64 12, !1131, i64 16, !1131, i64 20, !1140, i64 24, !1140, i64 32, !1140, i64 40, !1140, i64 48, !1142, i64 56, !1142, i64 64, !1142, i64 72, !1131, i64 80, !1131, i64 84, !1131, i64 88, !1142, i64 96, !1140, i64 104, !1140, i64 112, !1140, i64 120, !1140, i64 128, !1140, i64 136, !1314, i64 144, !1314, i64 152, !1315, i64 160, !1315, i64 168, !1315, i64 176, !1131, i64 184, !1131, i64 188, !1142, i64 192, !1131, i64 200, !1131, i64 204, !1131, i64 208, !1142, i64 216, !1131, i64 224, !1131, i64 228, !1140, i64 232, !1140, i64 240, !1131, i64 248, !1140, i64 256, !1140, i64 264, !1140, i64 272, !1140, i64 280, !1140, i64 288, !1140, i64 296, !1140, i64 304, !1140, i64 312, !1142, i64 320, !1131, i64 328, !1131, i64 4424, !1131, i64 8520, !1131, i64 12616, !1131, i64 16712, !1140, i64 16720, !1142, i64 16728, !1142, i64 16736, !1315, i64 16744, !1142, i64 16752, !1131, i64 16760, !1315, i64 16764, !1140, i64 16776, !1131, i64 16784}
!1314 = !{!"double", !1131, i64 0}
!1315 = !{!"_PixelPacket", !1316, i64 0, !1316, i64 2, !1316, i64 4, !1316, i64 6}
!1316 = !{!"short", !1131, i64 0}
!1317 = !DILocation(line: 951, column: 25, scope: !1311)
!1318 = !DILocation(line: 951, column: 7, scope: !1296)
!1319 = !DILocation(line: 953, column: 19, scope: !1311)
!1320 = !DILocation(line: 952, column: 12, scope: !1311)
!1321 = !DILocation(line: 952, column: 5, scope: !1311)
!1322 = !DILocation(line: 956, column: 13, scope: !1296)
!1323 = !DILocation(line: 957, column: 20, scope: !1296)
!1324 = !DILocation(line: 957, column: 14, scope: !1296)
!1325 = !DILocation(line: 957, column: 19, scope: !1296)
!1326 = !{!1313, !1140, i64 288}
!1327 = !DILocation(line: 958, column: 3, scope: !1296)
!1328 = !DILocation(line: 959, column: 42, scope: !1296)
!1329 = !{!1330, !1140, i64 0}
!1330 = !{!"_CacheMethods", !1140, i64 0, !1140, i64 8, !1140, i64 16, !1140, i64 24, !1140, i64 32, !1140, i64 40, !1140, i64 48, !1140, i64 56, !1140, i64 64, !1140, i64 72, !1140, i64 80}
!1331 = !DILocation(line: 960, column: 17, scope: !1296)
!1332 = !DILocation(line: 960, column: 49, scope: !1296)
!1333 = !{!1330, !1140, i64 16}
!1334 = !DILocation(line: 961, column: 17, scope: !1296)
!1335 = !DILocation(line: 961, column: 43, scope: !1296)
!1336 = !{!1330, !1140, i64 8}
!1337 = !DILocation(line: 962, column: 17, scope: !1296)
!1338 = !DILocation(line: 962, column: 45, scope: !1296)
!1339 = !{!1330, !1140, i64 32}
!1340 = !DILocation(line: 963, column: 17, scope: !1296)
!1341 = !DILocation(line: 963, column: 47, scope: !1296)
!1342 = !{!1330, !1140, i64 64}
!1343 = !DILocation(line: 964, column: 17, scope: !1296)
!1344 = !DILocation(line: 964, column: 46, scope: !1296)
!1345 = !{!1330, !1140, i64 72}
!1346 = !DILocation(line: 965, column: 17, scope: !1296)
!1347 = !DILocation(line: 965, column: 50, scope: !1296)
!1348 = !{!1330, !1140, i64 56}
!1349 = !DILocation(line: 966, column: 17, scope: !1296)
!1350 = !DILocation(line: 966, column: 51, scope: !1296)
!1351 = !{!1330, !1140, i64 40}
!1352 = !DILocation(line: 968, column: 17, scope: !1296)
!1353 = !DILocation(line: 968, column: 51, scope: !1296)
!1354 = !{!1330, !1140, i64 24}
!1355 = !DILocation(line: 969, column: 17, scope: !1296)
!1356 = !DILocation(line: 969, column: 53, scope: !1296)
!1357 = !{!1330, !1140, i64 48}
!1358 = !DILocation(line: 971, column: 17, scope: !1296)
!1359 = !DILocation(line: 971, column: 38, scope: !1296)
!1360 = !{!1330, !1140, i64 80}
!1361 = !DILocation(line: 972, column: 35, scope: !1296)
!1362 = !DILocation(line: 972, column: 3, scope: !1296)
!1363 = !DILocation(line: 973, column: 14, scope: !1296)
!1364 = !DILocation(line: 973, column: 20, scope: !1296)
!1365 = !{!1313, !1140, i64 296}
!1366 = !DILocation(line: 974, column: 9, scope: !1296)
!1367 = !DILocation(line: 975, column: 13, scope: !1296)
!1368 = !DILocation(line: 977, column: 1, scope: !1296)
!1369 = !DILocation(line: 976, column: 3, scope: !1296)
!1370 = !DISubprogram(name: "CloneImageInfo", scope: !30, file: !30, line: 521, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1306, !554}
!1373 = !DISubprogram(name: "AcquirePixelCache", scope: !958, file: !958, line: 220, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1376, !837}
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cache", file: !958, line: 33, baseType: !668)
!1377 = !DISubprogram(name: "GetPixelCacheMethods", scope: !958, file: !958, line: 269, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1381 = distinct !DISubprogram(name: "GetVirtualPixelStream", scope: !551, file: !551, line: 669, type: !1020, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1383 = !DILocalVariable(name: "image", arg: 1, scope: !1381, file: !551, line: 669, type: !833)
!1384 = !DILocalVariable(name: "virtual_pixel_method", arg: 2, scope: !1381, file: !551, line: 670, type: !1024)
!1385 = !DILocalVariable(name: "x", arg: 3, scope: !1381, file: !551, line: 670, type: !1025)
!1386 = !DILocalVariable(name: "y", arg: 4, scope: !1381, file: !551, line: 671, type: !1025)
!1387 = !DILocalVariable(name: "columns", arg: 5, scope: !1381, file: !551, line: 671, type: !837)
!1388 = !DILocalVariable(name: "rows", arg: 6, scope: !1381, file: !551, line: 671, type: !837)
!1389 = !DILocalVariable(name: "exception", arg: 7, scope: !1381, file: !551, line: 672, type: !953)
!1390 = !DILocalVariable(name: "cache_info", scope: !1381, file: !551, line: 675, type: !956)
!1391 = !DILocalVariable(name: "status", scope: !1381, file: !551, line: 678, type: !564)
!1392 = !DILocalVariable(name: "number_pixels", scope: !1381, file: !551, line: 681, type: !742)
!1393 = !DILocalVariable(name: "length", scope: !1381, file: !551, line: 684, type: !575)
!1394 = !DILocation(line: 0, scope: !1381)
!1395 = !DILocation(line: 693, column: 14, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1381, file: !551, line: 693, column: 7)
!1397 = !{!1398, !1131, i64 12976}
!1398 = !{!"_Image", !1131, i64 0, !1131, i64 4, !1131, i64 8, !1142, i64 16, !1131, i64 24, !1131, i64 28, !1131, i64 32, !1142, i64 40, !1142, i64 48, !1142, i64 56, !1142, i64 64, !1140, i64 72, !1315, i64 80, !1315, i64 88, !1315, i64 96, !1314, i64 104, !1399, i64 112, !1131, i64 208, !1140, i64 216, !1131, i64 224, !1140, i64 232, !1140, i64 240, !1140, i64 248, !1142, i64 256, !1314, i64 264, !1314, i64 272, !1141, i64 280, !1141, i64 312, !1141, i64 344, !1314, i64 376, !1314, i64 384, !1314, i64 392, !1131, i64 400, !1131, i64 404, !1131, i64 408, !1131, i64 412, !1131, i64 416, !1131, i64 420, !1140, i64 424, !1142, i64 432, !1142, i64 440, !1142, i64 448, !1142, i64 456, !1142, i64 464, !1142, i64 472, !1401, i64 480, !1402, i64 504, !1140, i64 568, !1140, i64 576, !1140, i64 584, !1140, i64 592, !1140, i64 600, !1140, i64 608, !1131, i64 616, !1131, i64 4712, !1131, i64 8808, !1142, i64 12904, !1142, i64 12912, !1404, i64 12920, !1131, i64 12976, !1142, i64 12984, !1140, i64 12992, !1405, i64 13000, !1405, i64 13032, !1140, i64 13064, !1142, i64 13072, !1142, i64 13080, !1140, i64 13088, !1140, i64 13096, !1140, i64 13104, !1131, i64 13112, !1131, i64 13116, !1315, i64 13120, !1140, i64 13128, !1141, i64 13136, !1140, i64 13168, !1140, i64 13176, !1131, i64 13184, !1131, i64 13188, !1406, i64 13192, !1131, i64 13200, !1142, i64 13208, !1142, i64 13216, !1131, i64 13224, !1142, i64 13232}
!1399 = !{!"_ChromaticityInfo", !1400, i64 0, !1400, i64 24, !1400, i64 48, !1400, i64 72}
!1400 = !{!"_PrimaryInfo", !1314, i64 0, !1314, i64 8, !1314, i64 16}
!1401 = !{!"_ErrorInfo", !1314, i64 0, !1314, i64 8, !1314, i64 16}
!1402 = !{!"_TimerInfo", !1403, i64 0, !1403, i64 24, !1131, i64 48, !1142, i64 56}
!1403 = !{!"_Timer", !1314, i64 0, !1314, i64 8, !1314, i64 16}
!1404 = !{!"_ExceptionInfo", !1131, i64 0, !1130, i64 4, !1140, i64 8, !1140, i64 16, !1140, i64 24, !1131, i64 32, !1140, i64 40, !1142, i64 48}
!1405 = !{!"_ProfileInfo", !1140, i64 0, !1142, i64 8, !1140, i64 16, !1142, i64 24}
!1406 = !{!"long long", !1131, i64 0}
!1407 = !DILocation(line: 693, column: 20, scope: !1396)
!1408 = !DILocation(line: 693, column: 7, scope: !1381)
!1409 = !DILocation(line: 694, column: 68, scope: !1396)
!1410 = !DILocation(line: 694, column: 12, scope: !1396)
!1411 = !DILocation(line: 694, column: 5, scope: !1396)
!1412 = !DILocation(line: 695, column: 15, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1381, file: !551, line: 695, column: 7)
!1414 = !DILocation(line: 696, column: 10, scope: !1413)
!1415 = !DILocation(line: 696, column: 49, scope: !1413)
!1416 = !{!1398, !1142, i64 40}
!1417 = !DILocation(line: 696, column: 30, scope: !1413)
!1418 = !DILocation(line: 696, column: 58, scope: !1413)
!1419 = !DILocation(line: 697, column: 10, scope: !1413)
!1420 = !DILocation(line: 697, column: 46, scope: !1413)
!1421 = !{!1398, !1142, i64 48}
!1422 = !DILocation(line: 697, column: 27, scope: !1413)
!1423 = !DILocation(line: 697, column: 52, scope: !1413)
!1424 = !DILocation(line: 701, column: 62, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1413, file: !551, line: 699, column: 5)
!1426 = !DILocation(line: 700, column: 14, scope: !1425)
!1427 = !DILocation(line: 702, column: 7, scope: !1425)
!1428 = !DILocation(line: 704, column: 35, scope: !1381)
!1429 = !{!1398, !1140, i64 584}
!1430 = !DILocation(line: 709, column: 45, scope: !1381)
!1431 = !{!1398, !1131, i64 0}
!1432 = !DILocation(line: 709, column: 59, scope: !1381)
!1433 = !DILocation(line: 709, column: 75, scope: !1381)
!1434 = !DILocation(line: 709, column: 15, scope: !1381)
!1435 = !DILocation(line: 709, column: 35, scope: !1381)
!1436 = !{!1437, !1131, i64 160}
!1437 = !{!"_CacheInfo", !1131, i64 0, !1131, i64 4, !1142, i64 8, !1131, i64 16, !1131, i64 20, !1131, i64 24, !1142, i64 32, !1142, i64 40, !1406, i64 48, !1406, i64 56, !1131, i64 64, !1438, i64 72, !1142, i64 128, !1140, i64 136, !1140, i64 144, !1140, i64 152, !1131, i64 160, !1130, i64 164, !1131, i64 168, !1131, i64 4264, !1330, i64 8360, !1140, i64 8448, !1142, i64 8456, !1140, i64 8464, !1131, i64 8472, !1131, i64 8476, !1130, i64 8480, !1142, i64 8488, !1140, i64 8496, !1140, i64 8504, !1142, i64 8512, !1142, i64 8520}
!1438 = !{!"_MagickPixelPacket", !1131, i64 0, !1131, i64 4, !1131, i64 8, !1314, i64 16, !1142, i64 24, !1439, i64 32, !1439, i64 36, !1439, i64 40, !1439, i64 44, !1439, i64 48}
!1439 = !{!"float", !1131, i64 0}
!1440 = !DILocation(line: 711, column: 41, scope: !1381)
!1441 = !DILocation(line: 713, column: 7, scope: !1381)
!1442 = !DILocation(line: 710, column: 13, scope: !1381)
!1443 = !{!1398, !1131, i64 4}
!1444 = !DILocation(line: 710, column: 24, scope: !1381)
!1445 = !DILocation(line: 709, column: 36, scope: !1381)
!1446 = !DILocation(line: 712, column: 32, scope: !1381)
!1447 = !DILocation(line: 715, column: 19, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1381, file: !551, line: 715, column: 7)
!1449 = !{!1437, !1140, i64 144}
!1450 = !DILocation(line: 715, column: 26, scope: !1448)
!1451 = !DILocation(line: 0, scope: !1448)
!1452 = !DILocation(line: 715, column: 7, scope: !1381)
!1453 = !DILocation(line: 717, column: 25, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !551, line: 716, column: 5)
!1455 = !{!1437, !1406, i64 56}
!1456 = !DILocalVariable(name: "cache_info", arg: 1, scope: !1457, file: !551, line: 645, type: !956)
!1457 = distinct !DISubprogram(name: "AcquireStreamPixels", scope: !551, file: !551, line: 645, type: !1458, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!564, !956, !953}
!1460 = !{!1456, !1461}
!1461 = !DILocalVariable(name: "exception", arg: 2, scope: !1457, file: !551, line: 646, type: !953)
!1462 = !DILocation(line: 0, scope: !1457, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 718, column: 14, scope: !1454)
!1464 = !DILocation(line: 650, column: 15, scope: !1457, inlinedAt: !1463)
!1465 = !DILocation(line: 650, column: 21, scope: !1457, inlinedAt: !1463)
!1466 = !{!1437, !1131, i64 24}
!1467 = !DILocation(line: 651, column: 38, scope: !1457, inlinedAt: !1463)
!1468 = !DILocation(line: 651, column: 21, scope: !1457, inlinedAt: !1463)
!1469 = !DILocation(line: 653, column: 26, scope: !1470, inlinedAt: !1463)
!1470 = distinct !DILexicalBlock(scope: !1457, file: !551, line: 653, column: 7)
!1471 = !DILocation(line: 653, column: 7, scope: !1457, inlinedAt: !1463)
!1472 = !DILocation(line: 655, column: 25, scope: !1473, inlinedAt: !1463)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !551, line: 654, column: 5)
!1474 = !DILocation(line: 657, column: 21, scope: !1473, inlinedAt: !1463)
!1475 = !DILocation(line: 656, column: 42, scope: !1473, inlinedAt: !1463)
!1476 = !DILocation(line: 656, column: 25, scope: !1473, inlinedAt: !1463)
!1477 = !DILocation(line: 659, column: 26, scope: !1478, inlinedAt: !1463)
!1478 = distinct !DILexicalBlock(scope: !1457, file: !551, line: 659, column: 7)
!1479 = !DILocation(line: 659, column: 7, scope: !1457, inlinedAt: !1463)
!1480 = !DILocation(line: 663, column: 21, scope: !1481, inlinedAt: !1463)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !551, line: 660, column: 5)
!1482 = !DILocation(line: 661, column: 14, scope: !1481, inlinedAt: !1463)
!1483 = !DILocation(line: 721, column: 29, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !551, line: 720, column: 9)
!1485 = distinct !DILexicalBlock(scope: !1454, file: !551, line: 719, column: 11)
!1486 = !DILocation(line: 722, column: 11, scope: !1484)
!1487 = !DILocation(line: 726, column: 21, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1448, file: !551, line: 726, column: 9)
!1489 = !DILocation(line: 726, column: 28, scope: !1488)
!1490 = !DILocation(line: 726, column: 9, scope: !1448)
!1491 = !DILocalVariable(name: "cache_info", arg: 1, scope: !1492, file: !551, line: 194, type: !956)
!1492 = distinct !DISubprogram(name: "RelinquishStreamPixels", scope: !551, file: !551, line: 194, type: !1493, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !956}
!1495 = !{!1491}
!1496 = !DILocation(line: 0, scope: !1492, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 728, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1488, file: !551, line: 727, column: 7)
!1499 = !DILocation(line: 197, column: 19, scope: !1500, inlinedAt: !1497)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !551, line: 197, column: 7)
!1501 = !DILocation(line: 197, column: 26, scope: !1500, inlinedAt: !1497)
!1502 = !DILocation(line: 197, column: 7, scope: !1492, inlinedAt: !1497)
!1503 = !DILocation(line: 198, column: 12, scope: !1500, inlinedAt: !1497)
!1504 = !DILocation(line: 198, column: 5, scope: !1500, inlinedAt: !1497)
!1505 = !DILocation(line: 200, column: 12, scope: !1500, inlinedAt: !1497)
!1506 = !DILocation(line: 202, column: 22, scope: !1492, inlinedAt: !1497)
!1507 = !DILocation(line: 729, column: 27, scope: !1498)
!1508 = !DILocation(line: 0, scope: !1457, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 730, column: 16, scope: !1498)
!1510 = !DILocation(line: 650, column: 21, scope: !1457, inlinedAt: !1509)
!1511 = !DILocation(line: 651, column: 38, scope: !1457, inlinedAt: !1509)
!1512 = !DILocation(line: 651, column: 21, scope: !1457, inlinedAt: !1509)
!1513 = !DILocation(line: 653, column: 26, scope: !1470, inlinedAt: !1509)
!1514 = !DILocation(line: 653, column: 7, scope: !1457, inlinedAt: !1509)
!1515 = !DILocation(line: 655, column: 25, scope: !1473, inlinedAt: !1509)
!1516 = !DILocation(line: 657, column: 21, scope: !1473, inlinedAt: !1509)
!1517 = !DILocation(line: 656, column: 42, scope: !1473, inlinedAt: !1509)
!1518 = !DILocation(line: 656, column: 25, scope: !1473, inlinedAt: !1509)
!1519 = !DILocation(line: 659, column: 26, scope: !1478, inlinedAt: !1509)
!1520 = !DILocation(line: 659, column: 7, scope: !1457, inlinedAt: !1509)
!1521 = !DILocation(line: 663, column: 21, scope: !1481, inlinedAt: !1509)
!1522 = !DILocation(line: 661, column: 14, scope: !1481, inlinedAt: !1509)
!1523 = !DILocation(line: 733, column: 31, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !551, line: 732, column: 11)
!1525 = distinct !DILexicalBlock(scope: !1498, file: !551, line: 731, column: 13)
!1526 = !DILocation(line: 734, column: 13, scope: !1524)
!1527 = !DILocation(line: 737, column: 15, scope: !1381)
!1528 = !DILocation(line: 737, column: 22, scope: !1381)
!1529 = !{!1437, !1140, i64 152}
!1530 = !DILocation(line: 738, column: 19, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1381, file: !551, line: 738, column: 7)
!1532 = !DILocation(line: 738, column: 40, scope: !1531)
!1533 = !DILocation(line: 738, column: 7, scope: !1381)
!1534 = !DILocation(line: 739, column: 60, scope: !1531)
!1535 = !DILocation(line: 739, column: 24, scope: !1531)
!1536 = !DILocation(line: 739, column: 5, scope: !1531)
!1537 = !DILocation(line: 741, column: 1, scope: !1381)
!1538 = distinct !DISubprogram(name: "GetVirtualIndexesFromStream", scope: !551, file: !551, line: 595, type: !1034, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1539)
!1539 = !{!1540, !1541}
!1540 = !DILocalVariable(name: "image", arg: 1, scope: !1538, file: !551, line: 595, type: !833)
!1541 = !DILocalVariable(name: "cache_info", scope: !1538, file: !551, line: 598, type: !956)
!1542 = !DILocation(line: 0, scope: !1538)
!1543 = !DILocation(line: 602, column: 14, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !551, line: 602, column: 7)
!1545 = !DILocation(line: 602, column: 20, scope: !1544)
!1546 = !DILocation(line: 602, column: 7, scope: !1538)
!1547 = !DILocation(line: 603, column: 68, scope: !1544)
!1548 = !DILocation(line: 603, column: 12, scope: !1544)
!1549 = !DILocation(line: 603, column: 5, scope: !1544)
!1550 = !DILocation(line: 604, column: 35, scope: !1538)
!1551 = !DILocation(line: 606, column: 22, scope: !1538)
!1552 = !DILocation(line: 606, column: 3, scope: !1538)
!1553 = distinct !DISubprogram(name: "GetVirtualPixelsStream", scope: !551, file: !551, line: 558, type: !1029, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1554)
!1554 = !{!1555, !1556}
!1555 = !DILocalVariable(name: "image", arg: 1, scope: !1553, file: !551, line: 558, type: !833)
!1556 = !DILocalVariable(name: "cache_info", scope: !1553, file: !551, line: 561, type: !956)
!1557 = !DILocation(line: 0, scope: !1553)
!1558 = !DILocation(line: 565, column: 14, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !551, line: 565, column: 7)
!1560 = !DILocation(line: 565, column: 20, scope: !1559)
!1561 = !DILocation(line: 565, column: 7, scope: !1553)
!1562 = !DILocation(line: 566, column: 68, scope: !1559)
!1563 = !DILocation(line: 566, column: 12, scope: !1559)
!1564 = !DILocation(line: 566, column: 5, scope: !1559)
!1565 = !DILocation(line: 567, column: 35, scope: !1553)
!1566 = !DILocation(line: 569, column: 22, scope: !1553)
!1567 = !DILocation(line: 569, column: 3, scope: !1553)
!1568 = distinct !DISubprogram(name: "GetAuthenticPixelsStream", scope: !551, file: !551, line: 354, type: !1046, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1570 = !DILocalVariable(name: "image", arg: 1, scope: !1568, file: !551, line: 354, type: !629)
!1571 = !DILocalVariable(name: "x", arg: 2, scope: !1568, file: !551, line: 354, type: !1025)
!1572 = !DILocalVariable(name: "y", arg: 3, scope: !1568, file: !551, line: 355, type: !1025)
!1573 = !DILocalVariable(name: "columns", arg: 4, scope: !1568, file: !551, line: 355, type: !837)
!1574 = !DILocalVariable(name: "rows", arg: 5, scope: !1568, file: !551, line: 355, type: !837)
!1575 = !DILocalVariable(name: "exception", arg: 6, scope: !1568, file: !551, line: 356, type: !953)
!1576 = !DILocalVariable(name: "pixels", scope: !1568, file: !551, line: 359, type: !646)
!1577 = !DILocation(line: 0, scope: !1568)
!1578 = !DILocation(line: 363, column: 14, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1568, file: !551, line: 363, column: 7)
!1580 = !DILocation(line: 363, column: 20, scope: !1579)
!1581 = !DILocation(line: 363, column: 7, scope: !1568)
!1582 = !DILocation(line: 364, column: 68, scope: !1579)
!1583 = !DILocation(line: 364, column: 12, scope: !1579)
!1584 = !DILocation(line: 364, column: 5, scope: !1579)
!1585 = !DILocation(line: 365, column: 10, scope: !1568)
!1586 = !DILocation(line: 366, column: 3, scope: !1568)
!1587 = distinct !DISubprogram(name: "QueueAuthenticPixelsStream", scope: !551, file: !551, line: 814, type: !1046, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1589 = !DILocalVariable(name: "image", arg: 1, scope: !1587, file: !551, line: 814, type: !629)
!1590 = !DILocalVariable(name: "x", arg: 2, scope: !1587, file: !551, line: 814, type: !1025)
!1591 = !DILocalVariable(name: "y", arg: 3, scope: !1587, file: !551, line: 815, type: !1025)
!1592 = !DILocalVariable(name: "columns", arg: 4, scope: !1587, file: !551, line: 815, type: !837)
!1593 = !DILocalVariable(name: "rows", arg: 5, scope: !1587, file: !551, line: 815, type: !837)
!1594 = !DILocalVariable(name: "exception", arg: 6, scope: !1587, file: !551, line: 816, type: !953)
!1595 = !DILocalVariable(name: "cache_info", scope: !1587, file: !551, line: 819, type: !956)
!1596 = !DILocalVariable(name: "status", scope: !1587, file: !551, line: 822, type: !564)
!1597 = !DILocalVariable(name: "number_pixels", scope: !1587, file: !551, line: 825, type: !742)
!1598 = !DILocalVariable(name: "length", scope: !1587, file: !551, line: 828, type: !575)
!1599 = !DILocalVariable(name: "stream_handler", scope: !1587, file: !551, line: 831, type: !828)
!1600 = !DILocation(line: 0, scope: !1587)
!1601 = !DILocation(line: 837, column: 15, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1587, file: !551, line: 837, column: 7)
!1603 = !DILocation(line: 838, column: 10, scope: !1602)
!1604 = !DILocation(line: 838, column: 49, scope: !1602)
!1605 = !DILocation(line: 838, column: 30, scope: !1602)
!1606 = !DILocation(line: 838, column: 58, scope: !1602)
!1607 = !DILocation(line: 839, column: 10, scope: !1602)
!1608 = !DILocation(line: 839, column: 46, scope: !1602)
!1609 = !DILocation(line: 839, column: 27, scope: !1602)
!1610 = !DILocation(line: 839, column: 52, scope: !1602)
!1611 = !DILocation(line: 843, column: 62, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1602, file: !551, line: 841, column: 5)
!1613 = !DILocation(line: 842, column: 14, scope: !1612)
!1614 = !DILocation(line: 844, column: 7, scope: !1612)
!1615 = !DILocation(line: 846, column: 18, scope: !1587)
!1616 = !DILocation(line: 847, column: 22, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1587, file: !551, line: 847, column: 7)
!1618 = !DILocation(line: 847, column: 7, scope: !1587)
!1619 = !DILocation(line: 850, column: 50, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !551, line: 848, column: 5)
!1621 = !DILocation(line: 849, column: 14, scope: !1620)
!1622 = !DILocation(line: 851, column: 7, scope: !1620)
!1623 = !DILocation(line: 853, column: 35, scope: !1587)
!1624 = !DILocation(line: 855, column: 15, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1587, file: !551, line: 855, column: 7)
!1626 = !DILocation(line: 855, column: 32, scope: !1625)
!1627 = !DILocation(line: 855, column: 29, scope: !1625)
!1628 = !DILocation(line: 855, column: 73, scope: !1625)
!1629 = !DILocation(line: 856, column: 15, scope: !1625)
!1630 = !DILocation(line: 856, column: 60, scope: !1625)
!1631 = !DILocation(line: 856, column: 29, scope: !1625)
!1632 = !DILocation(line: 856, column: 26, scope: !1625)
!1633 = !DILocation(line: 855, column: 7, scope: !1587)
!1634 = !DILocation(line: 870, column: 45, scope: !1587)
!1635 = !DILocation(line: 858, column: 44, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !551, line: 858, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1625, file: !551, line: 857, column: 5)
!1638 = !DILocation(line: 858, column: 11, scope: !1636)
!1639 = !DILocation(line: 858, column: 51, scope: !1636)
!1640 = !DILocation(line: 858, column: 11, scope: !1637)
!1641 = !DILocation(line: 860, column: 23, scope: !1636)
!1642 = !{!1437, !1142, i64 32}
!1643 = !DILocation(line: 859, column: 16, scope: !1636)
!1644 = !DILocation(line: 859, column: 9, scope: !1636)
!1645 = !DILocation(line: 861, column: 40, scope: !1637)
!1646 = !DILocation(line: 861, column: 32, scope: !1637)
!1647 = !{!1437, !1131, i64 0}
!1648 = !DILocation(line: 862, column: 37, scope: !1637)
!1649 = !DILocation(line: 862, column: 19, scope: !1637)
!1650 = !DILocation(line: 862, column: 29, scope: !1637)
!1651 = !{!1437, !1131, i64 4}
!1652 = !DILocation(line: 863, column: 34, scope: !1637)
!1653 = !DILocation(line: 863, column: 19, scope: !1637)
!1654 = !DILocation(line: 863, column: 26, scope: !1637)
!1655 = !DILocation(line: 864, column: 31, scope: !1637)
!1656 = !DILocation(line: 864, column: 19, scope: !1637)
!1657 = !DILocation(line: 864, column: 23, scope: !1637)
!1658 = !{!1437, !1142, i64 40}
!1659 = !DILocation(line: 865, column: 19, scope: !1637)
!1660 = !DILocation(line: 866, column: 5, scope: !1637)
!1661 = !DILocation(line: 870, column: 59, scope: !1587)
!1662 = !DILocation(line: 870, column: 75, scope: !1587)
!1663 = !DILocation(line: 871, column: 13, scope: !1587)
!1664 = !DILocation(line: 871, column: 24, scope: !1587)
!1665 = !DILocation(line: 870, column: 15, scope: !1587)
!1666 = !DILocation(line: 870, column: 35, scope: !1587)
!1667 = !DILocation(line: 872, column: 15, scope: !1587)
!1668 = !DILocation(line: 872, column: 22, scope: !1587)
!1669 = !DILocation(line: 873, column: 15, scope: !1587)
!1670 = !DILocation(line: 873, column: 19, scope: !1587)
!1671 = !DILocation(line: 874, column: 41, scope: !1587)
!1672 = !DILocation(line: 875, column: 32, scope: !1587)
!1673 = !DILocation(line: 876, column: 40, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1587, file: !551, line: 876, column: 7)
!1675 = !DILocation(line: 876, column: 7, scope: !1587)
!1676 = !DILocation(line: 878, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1587, file: !551, line: 878, column: 7)
!1678 = !DILocation(line: 878, column: 26, scope: !1677)
!1679 = !DILocation(line: 0, scope: !1677)
!1680 = !DILocation(line: 878, column: 7, scope: !1587)
!1681 = !DILocation(line: 880, column: 25, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !551, line: 879, column: 5)
!1683 = !DILocation(line: 0, scope: !1457, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 881, column: 14, scope: !1682)
!1685 = !DILocation(line: 650, column: 15, scope: !1457, inlinedAt: !1684)
!1686 = !DILocation(line: 650, column: 21, scope: !1457, inlinedAt: !1684)
!1687 = !DILocation(line: 651, column: 38, scope: !1457, inlinedAt: !1684)
!1688 = !DILocation(line: 651, column: 21, scope: !1457, inlinedAt: !1684)
!1689 = !DILocation(line: 653, column: 26, scope: !1470, inlinedAt: !1684)
!1690 = !DILocation(line: 653, column: 7, scope: !1457, inlinedAt: !1684)
!1691 = !DILocation(line: 655, column: 25, scope: !1473, inlinedAt: !1684)
!1692 = !DILocation(line: 657, column: 21, scope: !1473, inlinedAt: !1684)
!1693 = !DILocation(line: 656, column: 42, scope: !1473, inlinedAt: !1684)
!1694 = !DILocation(line: 656, column: 25, scope: !1473, inlinedAt: !1684)
!1695 = !DILocation(line: 659, column: 26, scope: !1478, inlinedAt: !1684)
!1696 = !DILocation(line: 659, column: 7, scope: !1457, inlinedAt: !1684)
!1697 = !DILocation(line: 663, column: 21, scope: !1481, inlinedAt: !1684)
!1698 = !DILocation(line: 661, column: 14, scope: !1481, inlinedAt: !1684)
!1699 = !DILocation(line: 884, column: 29, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !551, line: 883, column: 9)
!1701 = distinct !DILexicalBlock(scope: !1682, file: !551, line: 882, column: 11)
!1702 = !DILocation(line: 885, column: 11, scope: !1700)
!1703 = !DILocation(line: 889, column: 21, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1677, file: !551, line: 889, column: 9)
!1705 = !DILocation(line: 889, column: 28, scope: !1704)
!1706 = !DILocation(line: 889, column: 9, scope: !1677)
!1707 = !DILocation(line: 0, scope: !1492, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 891, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !551, line: 890, column: 7)
!1710 = !DILocation(line: 197, column: 19, scope: !1500, inlinedAt: !1708)
!1711 = !DILocation(line: 197, column: 26, scope: !1500, inlinedAt: !1708)
!1712 = !DILocation(line: 197, column: 7, scope: !1492, inlinedAt: !1708)
!1713 = !DILocation(line: 198, column: 12, scope: !1500, inlinedAt: !1708)
!1714 = !DILocation(line: 198, column: 5, scope: !1500, inlinedAt: !1708)
!1715 = !DILocation(line: 200, column: 12, scope: !1500, inlinedAt: !1708)
!1716 = !DILocation(line: 202, column: 22, scope: !1492, inlinedAt: !1708)
!1717 = !DILocation(line: 892, column: 27, scope: !1709)
!1718 = !DILocation(line: 0, scope: !1457, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 893, column: 16, scope: !1709)
!1720 = !DILocation(line: 650, column: 21, scope: !1457, inlinedAt: !1719)
!1721 = !DILocation(line: 651, column: 38, scope: !1457, inlinedAt: !1719)
!1722 = !DILocation(line: 651, column: 21, scope: !1457, inlinedAt: !1719)
!1723 = !DILocation(line: 653, column: 26, scope: !1470, inlinedAt: !1719)
!1724 = !DILocation(line: 653, column: 7, scope: !1457, inlinedAt: !1719)
!1725 = !DILocation(line: 655, column: 25, scope: !1473, inlinedAt: !1719)
!1726 = !DILocation(line: 657, column: 21, scope: !1473, inlinedAt: !1719)
!1727 = !DILocation(line: 656, column: 42, scope: !1473, inlinedAt: !1719)
!1728 = !DILocation(line: 656, column: 25, scope: !1473, inlinedAt: !1719)
!1729 = !DILocation(line: 659, column: 26, scope: !1478, inlinedAt: !1719)
!1730 = !DILocation(line: 659, column: 7, scope: !1457, inlinedAt: !1719)
!1731 = !DILocation(line: 663, column: 21, scope: !1481, inlinedAt: !1719)
!1732 = !DILocation(line: 661, column: 14, scope: !1481, inlinedAt: !1719)
!1733 = !DILocation(line: 896, column: 31, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !551, line: 895, column: 11)
!1735 = distinct !DILexicalBlock(scope: !1709, file: !551, line: 894, column: 13)
!1736 = !DILocation(line: 897, column: 13, scope: !1734)
!1737 = !DILocation(line: 900, column: 15, scope: !1587)
!1738 = !DILocation(line: 900, column: 22, scope: !1587)
!1739 = !DILocation(line: 901, column: 19, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1587, file: !551, line: 901, column: 7)
!1741 = !DILocation(line: 901, column: 40, scope: !1740)
!1742 = !DILocation(line: 901, column: 7, scope: !1587)
!1743 = !DILocation(line: 902, column: 60, scope: !1740)
!1744 = !DILocation(line: 902, column: 24, scope: !1740)
!1745 = !DILocation(line: 902, column: 5, scope: !1740)
!1746 = !DILocation(line: 904, column: 1, scope: !1587)
!1747 = distinct !DISubprogram(name: "SyncAuthenticPixelsStream", scope: !551, file: !551, line: 2651, type: !1068, scopeLine: 2653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753}
!1749 = !DILocalVariable(name: "image", arg: 1, scope: !1747, file: !551, line: 2651, type: !629)
!1750 = !DILocalVariable(name: "exception", arg: 2, scope: !1747, file: !551, line: 2652, type: !953)
!1751 = !DILocalVariable(name: "cache_info", scope: !1747, file: !551, line: 2655, type: !956)
!1752 = !DILocalVariable(name: "length", scope: !1747, file: !551, line: 2658, type: !575)
!1753 = !DILocalVariable(name: "stream_handler", scope: !1747, file: !551, line: 2661, type: !828)
!1754 = !DILocation(line: 0, scope: !1747)
!1755 = !DILocation(line: 2665, column: 14, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1747, file: !551, line: 2665, column: 7)
!1757 = !DILocation(line: 2665, column: 20, scope: !1756)
!1758 = !DILocation(line: 2665, column: 7, scope: !1747)
!1759 = !DILocation(line: 2666, column: 68, scope: !1756)
!1760 = !DILocation(line: 2666, column: 12, scope: !1756)
!1761 = !DILocation(line: 2666, column: 5, scope: !1756)
!1762 = !DILocation(line: 2667, column: 35, scope: !1747)
!1763 = !DILocation(line: 2669, column: 18, scope: !1747)
!1764 = !DILocation(line: 2670, column: 22, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1747, file: !551, line: 2670, column: 7)
!1766 = !DILocation(line: 2670, column: 7, scope: !1747)
!1767 = !DILocation(line: 2673, column: 50, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !551, line: 2671, column: 5)
!1769 = !DILocation(line: 2672, column: 14, scope: !1768)
!1770 = !DILocation(line: 2674, column: 7, scope: !1768)
!1771 = !DILocation(line: 2676, column: 43, scope: !1747)
!1772 = !DILocation(line: 2676, column: 71, scope: !1747)
!1773 = !DILocation(line: 2676, column: 10, scope: !1747)
!1774 = !DILocation(line: 2677, column: 32, scope: !1747)
!1775 = !DILocation(line: 2677, column: 17, scope: !1747)
!1776 = !DILocation(line: 2677, column: 10, scope: !1747)
!1777 = !DILocation(line: 2677, column: 3, scope: !1747)
!1778 = !DILocation(line: 2678, column: 1, scope: !1747)
!1779 = distinct !DISubprogram(name: "GetAuthenticPixelsFromStream", scope: !551, file: !551, line: 392, type: !1061, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1780)
!1780 = !{!1781, !1782}
!1781 = !DILocalVariable(name: "image", arg: 1, scope: !1779, file: !551, line: 392, type: !833)
!1782 = !DILocalVariable(name: "cache_info", scope: !1779, file: !551, line: 395, type: !956)
!1783 = !DILocation(line: 0, scope: !1779)
!1784 = !DILocation(line: 399, column: 14, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !551, line: 399, column: 7)
!1786 = !DILocation(line: 399, column: 20, scope: !1785)
!1787 = !DILocation(line: 399, column: 7, scope: !1779)
!1788 = !DILocation(line: 400, column: 68, scope: !1785)
!1789 = !DILocation(line: 400, column: 12, scope: !1785)
!1790 = !DILocation(line: 400, column: 5, scope: !1785)
!1791 = !DILocation(line: 401, column: 35, scope: !1779)
!1792 = !DILocation(line: 403, column: 22, scope: !1779)
!1793 = !DILocation(line: 403, column: 3, scope: !1779)
!1794 = distinct !DISubprogram(name: "GetAuthenticIndexesFromStream", scope: !551, file: !551, line: 308, type: !1051, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1795)
!1795 = !{!1796, !1797}
!1796 = !DILocalVariable(name: "image", arg: 1, scope: !1794, file: !551, line: 308, type: !833)
!1797 = !DILocalVariable(name: "cache_info", scope: !1794, file: !551, line: 311, type: !956)
!1798 = !DILocation(line: 0, scope: !1794)
!1799 = !DILocation(line: 315, column: 14, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !551, line: 315, column: 7)
!1801 = !DILocation(line: 315, column: 20, scope: !1800)
!1802 = !DILocation(line: 315, column: 7, scope: !1794)
!1803 = !DILocation(line: 316, column: 68, scope: !1800)
!1804 = !DILocation(line: 316, column: 12, scope: !1800)
!1805 = !DILocation(line: 316, column: 5, scope: !1800)
!1806 = !DILocation(line: 317, column: 35, scope: !1794)
!1807 = !DILocation(line: 319, column: 22, scope: !1794)
!1808 = !DILocation(line: 319, column: 3, scope: !1794)
!1809 = distinct !DISubprogram(name: "GetOneVirtualPixelFromStream", scope: !551, file: !551, line: 486, type: !1041, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1811 = !DILocalVariable(name: "image", arg: 1, scope: !1809, file: !551, line: 486, type: !833)
!1812 = !DILocalVariable(name: "virtual_pixel_method", arg: 2, scope: !1809, file: !551, line: 487, type: !1024)
!1813 = !DILocalVariable(name: "x", arg: 3, scope: !1809, file: !551, line: 487, type: !1025)
!1814 = !DILocalVariable(name: "y", arg: 4, scope: !1809, file: !551, line: 487, type: !1025)
!1815 = !DILocalVariable(name: "pixel", arg: 5, scope: !1809, file: !551, line: 488, type: !646)
!1816 = !DILocalVariable(name: "exception", arg: 6, scope: !1809, file: !551, line: 488, type: !953)
!1817 = !DILocalVariable(name: "pixels", scope: !1809, file: !551, line: 491, type: !1022)
!1818 = !DILocation(line: 0, scope: !1809)
!1819 = !DILocation(line: 495, column: 17, scope: !1809)
!1820 = !DILocation(line: 496, column: 10, scope: !1809)
!1821 = !DILocation(line: 497, column: 14, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1809, file: !551, line: 497, column: 7)
!1823 = !DILocation(line: 497, column: 7, scope: !1809)
!1824 = !DILocation(line: 501, column: 1, scope: !1809)
!1825 = distinct !DISubprogram(name: "GetOneAuthenticPixelFromStream", scope: !551, file: !551, line: 437, type: !1056, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1826)
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832}
!1827 = !DILocalVariable(name: "image", arg: 1, scope: !1825, file: !551, line: 437, type: !629)
!1828 = !DILocalVariable(name: "x", arg: 2, scope: !1825, file: !551, line: 438, type: !1025)
!1829 = !DILocalVariable(name: "y", arg: 3, scope: !1825, file: !551, line: 438, type: !1025)
!1830 = !DILocalVariable(name: "pixel", arg: 4, scope: !1825, file: !551, line: 438, type: !646)
!1831 = !DILocalVariable(name: "exception", arg: 5, scope: !1825, file: !551, line: 438, type: !953)
!1832 = !DILocalVariable(name: "pixels", scope: !1825, file: !551, line: 441, type: !646)
!1833 = !DILocation(line: 0, scope: !1825)
!1834 = !DILocation(line: 445, column: 17, scope: !1825)
!1835 = !DILocation(line: 0, scope: !1568, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 446, column: 10, scope: !1825)
!1837 = !DILocation(line: 363, column: 14, scope: !1579, inlinedAt: !1836)
!1838 = !DILocation(line: 363, column: 20, scope: !1579, inlinedAt: !1836)
!1839 = !DILocation(line: 363, column: 7, scope: !1568, inlinedAt: !1836)
!1840 = !DILocation(line: 364, column: 68, scope: !1579, inlinedAt: !1836)
!1841 = !DILocation(line: 364, column: 12, scope: !1579, inlinedAt: !1836)
!1842 = !DILocation(line: 364, column: 5, scope: !1579, inlinedAt: !1836)
!1843 = !DILocation(line: 365, column: 10, scope: !1568, inlinedAt: !1836)
!1844 = !DILocation(line: 447, column: 14, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1825, file: !551, line: 447, column: 7)
!1846 = !DILocation(line: 447, column: 7, scope: !1825)
!1847 = !DILocation(line: 451, column: 1, scope: !1825)
!1848 = distinct !DISubprogram(name: "DestroyPixelStream", scope: !551, file: !551, line: 207, type: !1073, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1849)
!1849 = !{!1850, !1851, !1852}
!1850 = !DILocalVariable(name: "image", arg: 1, scope: !1848, file: !551, line: 207, type: !629)
!1851 = !DILocalVariable(name: "cache_info", scope: !1848, file: !551, line: 210, type: !956)
!1852 = !DILocalVariable(name: "destroy", scope: !1848, file: !551, line: 213, type: !564)
!1853 = !DILocation(line: 0, scope: !1848)
!1854 = !DILocation(line: 217, column: 14, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1848, file: !551, line: 217, column: 7)
!1856 = !DILocation(line: 217, column: 20, scope: !1855)
!1857 = !DILocation(line: 217, column: 7, scope: !1848)
!1858 = !DILocation(line: 218, column: 68, scope: !1855)
!1859 = !DILocation(line: 218, column: 12, scope: !1855)
!1860 = !DILocation(line: 218, column: 5, scope: !1855)
!1861 = !DILocation(line: 219, column: 35, scope: !1848)
!1862 = !DILocation(line: 222, column: 33, scope: !1848)
!1863 = !{!1437, !1140, i64 8496}
!1864 = !DILocation(line: 222, column: 3, scope: !1848)
!1865 = !DILocation(line: 223, column: 15, scope: !1848)
!1866 = !DILocation(line: 223, column: 30, scope: !1848)
!1867 = !{!1437, !1142, i64 8488}
!1868 = !DILocation(line: 224, column: 35, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1848, file: !551, line: 224, column: 7)
!1870 = !DILocation(line: 226, column: 35, scope: !1848)
!1871 = !DILocation(line: 226, column: 3, scope: !1848)
!1872 = !DILocation(line: 227, column: 7, scope: !1848)
!1873 = !DILocation(line: 0, scope: !1492, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 229, column: 3, scope: !1848)
!1875 = !DILocation(line: 197, column: 19, scope: !1500, inlinedAt: !1874)
!1876 = !DILocation(line: 197, column: 26, scope: !1500, inlinedAt: !1874)
!1877 = !DILocation(line: 0, scope: !1500, inlinedAt: !1874)
!1878 = !DILocation(line: 197, column: 7, scope: !1492, inlinedAt: !1874)
!1879 = !DILocation(line: 198, column: 12, scope: !1500, inlinedAt: !1874)
!1880 = !DILocation(line: 198, column: 5, scope: !1500, inlinedAt: !1874)
!1881 = !DILocation(line: 200, column: 62, scope: !1500, inlinedAt: !1874)
!1882 = !DILocation(line: 200, column: 12, scope: !1500, inlinedAt: !1874)
!1883 = !DILocation(line: 203, column: 15, scope: !1492, inlinedAt: !1874)
!1884 = !DILocation(line: 203, column: 21, scope: !1492, inlinedAt: !1874)
!1885 = !DILocation(line: 204, column: 21, scope: !1492, inlinedAt: !1874)
!1886 = !DILocation(line: 202, column: 22, scope: !1492, inlinedAt: !1874)
!1887 = !DILocation(line: 230, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1848, file: !551, line: 230, column: 7)
!1889 = !{!1437, !1140, i64 136}
!1890 = !DILocation(line: 230, column: 30, scope: !1888)
!1891 = !DILocation(line: 230, column: 7, scope: !1848)
!1892 = !DILocation(line: 232, column: 19, scope: !1888)
!1893 = !{!1437, !1142, i64 128}
!1894 = !DILocation(line: 231, column: 28, scope: !1888)
!1895 = !DILocation(line: 231, column: 27, scope: !1888)
!1896 = !DILocation(line: 231, column: 5, scope: !1888)
!1897 = !DILocation(line: 233, column: 19, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1848, file: !551, line: 233, column: 7)
!1899 = !{!1437, !1140, i64 8504}
!1900 = !DILocation(line: 233, column: 34, scope: !1898)
!1901 = !DILocation(line: 233, column: 7, scope: !1848)
!1902 = !DILocation(line: 234, column: 5, scope: !1898)
!1903 = !DILocation(line: 235, column: 19, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1848, file: !551, line: 235, column: 7)
!1905 = !DILocation(line: 235, column: 29, scope: !1904)
!1906 = !DILocation(line: 235, column: 7, scope: !1848)
!1907 = !DILocation(line: 236, column: 5, scope: !1904)
!1908 = !DILocation(line: 237, column: 28, scope: !1848)
!1909 = !DILocation(line: 238, column: 1, scope: !1848)
!1910 = !DISubprogram(name: "SetPixelCacheMethods", scope: !958, file: !958, line: 270, type: !1911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1376, !1380}
!1913 = !DISubprogram(name: "ReadImage", scope: !456, file: !456, line: 42, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!629, !554, !953}
!1916 = !DISubprogram(name: "DestroyImageInfo", scope: !30, file: !30, line: 522, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1306, !1306}
!1919 = distinct !DISubprogram(name: "SetStreamInfoClientData", scope: !551, file: !551, line: 1004, type: !1920, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !547, !835}
!1922 = !{!1923, !1924}
!1923 = !DILocalVariable(name: "stream_info", arg: 1, scope: !1919, file: !551, line: 1004, type: !547)
!1924 = !DILocalVariable(name: "client_data", arg: 2, scope: !1919, file: !551, line: 1005, type: !835)
!1925 = !DILocation(line: 0, scope: !1919)
!1926 = !DILocation(line: 1009, column: 16, scope: !1919)
!1927 = !DILocation(line: 1009, column: 27, scope: !1919)
!1928 = !DILocation(line: 1010, column: 1, scope: !1919)
!1929 = distinct !DISubprogram(name: "SetStreamInfoMap", scope: !551, file: !551, line: 1036, type: !1930, scopeLine: 1037, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !547, !736}
!1932 = !{!1933, !1934}
!1933 = !DILocalVariable(name: "stream_info", arg: 1, scope: !1929, file: !551, line: 1036, type: !547)
!1934 = !DILocalVariable(name: "map", arg: 2, scope: !1929, file: !551, line: 1036, type: !736)
!1935 = !DILocation(line: 0, scope: !1929)
!1936 = !DILocation(line: 1040, column: 36, scope: !1929)
!1937 = !DILocation(line: 1040, column: 10, scope: !1929)
!1938 = !DILocation(line: 1041, column: 1, scope: !1929)
!1939 = !DISubprogram(name: "CloneString", scope: !1179, file: !1179, line: 44, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!569, !1942, !736}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!1943 = distinct !DISubprogram(name: "SetStreamInfoStorageType", scope: !551, file: !551, line: 1068, type: !1944, scopeLine: 1070, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1947)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !547, !1946}
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!1947 = !{!1948, !1949}
!1948 = !DILocalVariable(name: "stream_info", arg: 1, scope: !1943, file: !551, line: 1068, type: !547)
!1949 = !DILocalVariable(name: "storage_type", arg: 2, scope: !1943, file: !551, line: 1069, type: !1946)
!1950 = !DILocation(line: 0, scope: !1943)
!1951 = !DILocation(line: 1073, column: 16, scope: !1943)
!1952 = !DILocation(line: 1073, column: 28, scope: !1943)
!1953 = !DILocation(line: 1074, column: 1, scope: !1943)
!1954 = distinct !DISubprogram(name: "StreamImage", scope: !551, file: !551, line: 1200, type: !1955, scopeLine: 1202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!629, !554, !547, !953}
!1957 = !{!1958, !1959, !1960, !1961, !1962}
!1958 = !DILocalVariable(name: "image_info", arg: 1, scope: !1954, file: !551, line: 1200, type: !554)
!1959 = !DILocalVariable(name: "stream_info", arg: 2, scope: !1954, file: !551, line: 1201, type: !547)
!1960 = !DILocalVariable(name: "exception", arg: 3, scope: !1954, file: !551, line: 1201, type: !953)
!1961 = !DILocalVariable(name: "image", scope: !1954, file: !551, line: 1204, type: !629)
!1962 = !DILocalVariable(name: "read_info", scope: !1954, file: !551, line: 1207, type: !1306)
!1963 = !DILocation(line: 0, scope: !1954)
!1964 = !DILocation(line: 1211, column: 19, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1954, file: !551, line: 1211, column: 7)
!1966 = !DILocation(line: 1211, column: 25, scope: !1965)
!1967 = !DILocation(line: 1211, column: 7, scope: !1954)
!1968 = !DILocation(line: 1213, column: 19, scope: !1965)
!1969 = !DILocation(line: 1212, column: 12, scope: !1965)
!1970 = !DILocation(line: 1212, column: 5, scope: !1965)
!1971 = !DILocation(line: 1217, column: 13, scope: !1954)
!1972 = !DILocation(line: 1218, column: 26, scope: !1954)
!1973 = !{!1139, !1140, i64 0}
!1974 = !DILocation(line: 1219, column: 29, scope: !1954)
!1975 = !DILocation(line: 1219, column: 16, scope: !1954)
!1976 = !DILocation(line: 1219, column: 28, scope: !1954)
!1977 = !DILocation(line: 1220, column: 16, scope: !1954)
!1978 = !DILocation(line: 1220, column: 25, scope: !1954)
!1979 = !{!1139, !1140, i64 96}
!1980 = !DILocation(line: 1221, column: 14, scope: !1954)
!1981 = !DILocation(line: 1221, column: 25, scope: !1954)
!1982 = !{!1313, !1140, i64 280}
!1983 = !DILocation(line: 1222, column: 9, scope: !1954)
!1984 = !DILocation(line: 1223, column: 13, scope: !1954)
!1985 = !DILocation(line: 1224, column: 61, scope: !1954)
!1986 = !DILocation(line: 1224, column: 29, scope: !1954)
!1987 = !DILocation(line: 1224, column: 28, scope: !1954)
!1988 = !DILocation(line: 1225, column: 29, scope: !1954)
!1989 = !DILocation(line: 1225, column: 28, scope: !1954)
!1990 = !DILocation(line: 1226, column: 33, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1954, file: !551, line: 1226, column: 7)
!1992 = !DILocation(line: 1226, column: 7, scope: !1954)
!1993 = !DILocation(line: 1227, column: 11, scope: !1991)
!1994 = !DILocation(line: 1227, column: 5, scope: !1991)
!1995 = !DILocation(line: 1228, column: 3, scope: !1954)
!1996 = !DISubprogram(name: "AcquireQuantumInfo", scope: !57, file: !57, line: 168, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!912, !554, !629}
!1999 = distinct !DISubprogram(name: "WriteStreamImage", scope: !551, file: !551, line: 1109, type: !831, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2000)
!2000 = !{!2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010}
!2001 = !DILocalVariable(name: "image", arg: 1, scope: !1999, file: !551, line: 1109, type: !833)
!2002 = !DILocalVariable(name: "pixels", arg: 2, scope: !1999, file: !551, line: 1109, type: !835)
!2003 = !DILocalVariable(name: "columns", arg: 3, scope: !1999, file: !551, line: 1110, type: !837)
!2004 = !DILocalVariable(name: "cache_info", scope: !1999, file: !551, line: 1113, type: !956)
!2005 = !DILocalVariable(name: "extract_info", scope: !1999, file: !551, line: 1116, type: !677)
!2006 = !DILocalVariable(name: "length", scope: !1999, file: !551, line: 1119, type: !575)
!2007 = !DILocalVariable(name: "packet_size", scope: !1999, file: !551, line: 1120, type: !575)
!2008 = !DILocalVariable(name: "count", scope: !1999, file: !551, line: 1123, type: !617)
!2009 = !DILocalVariable(name: "stream_info", scope: !1999, file: !551, line: 1126, type: !547)
!2010 = !DILocalVariable(name: "write_info", scope: !2011, file: !551, line: 1148, type: !1306)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !551, line: 1146, column: 5)
!2012 = distinct !DILexicalBlock(scope: !1999, file: !551, line: 1145, column: 7)
!2013 = !DILocation(line: 0, scope: !1999)
!2014 = !DILocation(line: 1129, column: 37, scope: !1999)
!2015 = !{!1398, !1140, i64 576}
!2016 = !DILocation(line: 1130, column: 24, scope: !1999)
!2017 = !DILocation(line: 1130, column: 3, scope: !1999)
!2018 = !DILocation(line: 0, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1999, file: !551, line: 1131, column: 3)
!2020 = !DILocation(line: 1141, column: 35, scope: !1999)
!2021 = !DILocation(line: 1143, column: 36, scope: !1999)
!2022 = !DILocation(line: 1143, column: 16, scope: !1999)
!2023 = !DILocation(line: 1143, column: 14, scope: !1999)
!2024 = !DILocation(line: 1144, column: 34, scope: !1999)
!2025 = !DILocation(line: 1144, column: 21, scope: !1999)
!2026 = !DILocation(line: 1144, column: 54, scope: !1999)
!2027 = !DILocation(line: 1144, column: 41, scope: !1999)
!2028 = !DILocation(line: 1145, column: 29, scope: !2012)
!2029 = !{!1139, !1140, i64 8}
!2030 = !DILocation(line: 1145, column: 13, scope: !2012)
!2031 = !DILocation(line: 1145, column: 7, scope: !1999)
!2032 = !DILocation(line: 1153, column: 51, scope: !2011)
!2033 = !DILocation(line: 1153, column: 14, scope: !2011)
!2034 = !DILocation(line: 1154, column: 45, scope: !2011)
!2035 = !DILocation(line: 1154, column: 26, scope: !2011)
!2036 = !DILocation(line: 1156, column: 31, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2011, file: !551, line: 1156, column: 11)
!2038 = !DILocation(line: 1156, column: 11, scope: !2011)
!2039 = !DILocation(line: 1158, column: 14, scope: !2011)
!2040 = !DILocation(line: 1159, column: 25, scope: !2011)
!2041 = !DILocation(line: 1160, column: 46, scope: !2011)
!2042 = !DILocation(line: 1160, column: 18, scope: !2011)
!2043 = !DILocation(line: 0, scope: !2011)
!2044 = !DILocation(line: 1161, column: 53, scope: !2011)
!2045 = !DILocation(line: 1161, column: 14, scope: !2011)
!2046 = !DILocation(line: 1162, column: 23, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2011, file: !551, line: 1162, column: 11)
!2048 = !{!1313, !1140, i64 32}
!2049 = !DILocation(line: 1162, column: 31, scope: !2047)
!2050 = !DILocation(line: 1162, column: 11, scope: !2011)
!2051 = !DILocation(line: 1164, column: 25, scope: !2047)
!2052 = !DILocation(line: 1163, column: 16, scope: !2047)
!2053 = !DILocation(line: 1163, column: 9, scope: !2047)
!2054 = !DILocation(line: 1165, column: 20, scope: !2011)
!2055 = !DILocation(line: 1165, column: 21, scope: !2011)
!2056 = !{!1139, !1142, i64 88}
!2057 = !DILocation(line: 1166, column: 18, scope: !2011)
!2058 = !DILocation(line: 1168, column: 29, scope: !1999)
!2059 = !{i64 0, i64 8, !2060, i64 8, i64 8, !2060, i64 16, i64 8, !2060, i64 24, i64 8, !2060}
!2060 = !{!1142, !1142, i64 0}
!2061 = !{i64 0, i64 8, !2060, i64 8, i64 8, !2060, i64 16, i64 8, !2060}
!2062 = !{i64 0, i64 8, !2060, i64 8, i64 8, !2060}
!2063 = !DILocation(line: 1169, column: 27, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1999, file: !551, line: 1169, column: 7)
!2065 = !DILocation(line: 1169, column: 33, scope: !2064)
!2066 = !DILocation(line: 1174, column: 63, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2064, file: !551, line: 1170, column: 5)
!2068 = !DILocation(line: 1174, column: 14, scope: !2067)
!2069 = !DILocation(line: 1175, column: 36, scope: !2067)
!2070 = !DILocation(line: 1175, column: 63, scope: !2067)
!2071 = !DILocation(line: 1175, column: 13, scope: !2067)
!2072 = !DILocation(line: 1176, column: 20, scope: !2067)
!2073 = !DILocation(line: 1176, column: 21, scope: !2067)
!2074 = !DILocation(line: 1177, column: 20, scope: !2067)
!2075 = !DILocation(line: 1177, column: 14, scope: !2067)
!2076 = !DILocation(line: 1177, column: 7, scope: !2067)
!2077 = !{i64 0, i64 8, !2060}
!2078 = !DILocation(line: 1179, column: 21, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1999, file: !551, line: 1179, column: 7)
!2080 = !DILocation(line: 1179, column: 23, scope: !2079)
!2081 = !DILocation(line: 1179, column: 41, scope: !2079)
!2082 = !DILocation(line: 1182, column: 21, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !551, line: 1181, column: 5)
!2084 = !DILocation(line: 1183, column: 7, scope: !2083)
!2085 = !DILocation(line: 1188, column: 59, scope: !1999)
!2086 = !DILocation(line: 1188, column: 10, scope: !1999)
!2087 = !DILocation(line: 1189, column: 21, scope: !1999)
!2088 = !DILocation(line: 1190, column: 32, scope: !1999)
!2089 = !DILocation(line: 1190, column: 59, scope: !1999)
!2090 = !DILocation(line: 1190, column: 77, scope: !1999)
!2091 = !DILocation(line: 1190, column: 65, scope: !1999)
!2092 = !DILocation(line: 1190, column: 9, scope: !1999)
!2093 = !DILocation(line: 1192, column: 17, scope: !1999)
!2094 = !DILocation(line: 1193, column: 16, scope: !1999)
!2095 = !DILocation(line: 1193, column: 10, scope: !1999)
!2096 = !DILocation(line: 1193, column: 3, scope: !1999)
!2097 = !DILocation(line: 1194, column: 1, scope: !1999)
!2098 = distinct !DISubprogram(name: "WriteStream", scope: !551, file: !551, line: 2706, type: !2099, scopeLine: 2708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!564, !554, !629, !828}
!2101 = !{!2102, !2103, !2104, !2105, !2106}
!2102 = !DILocalVariable(name: "image_info", arg: 1, scope: !2098, file: !551, line: 2706, type: !554)
!2103 = !DILocalVariable(name: "image", arg: 2, scope: !2098, file: !551, line: 2707, type: !629)
!2104 = !DILocalVariable(name: "stream", arg: 3, scope: !2098, file: !551, line: 2707, type: !828)
!2105 = !DILocalVariable(name: "write_info", scope: !2098, file: !551, line: 2710, type: !1306)
!2106 = !DILocalVariable(name: "status", scope: !2098, file: !551, line: 2713, type: !564)
!2107 = !DILocation(line: 0, scope: !2098)
!2108 = !DILocation(line: 2717, column: 19, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2098, file: !551, line: 2717, column: 7)
!2110 = !DILocation(line: 2717, column: 25, scope: !2109)
!2111 = !DILocation(line: 2717, column: 7, scope: !2098)
!2112 = !DILocation(line: 2719, column: 19, scope: !2109)
!2113 = !DILocation(line: 2718, column: 12, scope: !2109)
!2114 = !DILocation(line: 2718, column: 5, scope: !2109)
!2115 = !DILocation(line: 2722, column: 14, scope: !2098)
!2116 = !DILocation(line: 2723, column: 15, scope: !2098)
!2117 = !DILocation(line: 2723, column: 21, scope: !2098)
!2118 = !DILocation(line: 2724, column: 10, scope: !2098)
!2119 = !DILocation(line: 2725, column: 14, scope: !2098)
!2120 = !DILocation(line: 2726, column: 3, scope: !2098)
!2121 = !DISubprogram(name: "WriteImage", scope: !456, file: !456, line: 47, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!564, !554, !629}
!2124 = !DISubprogram(name: "MapBlob", scope: !492, file: !492, line: 112, type: !2125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!792, !770, !2127, !738, !837}
!2127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!2128 = !DISubprogram(name: "UnmapBlob", scope: !492, file: !492, line: 86, type: !2129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!564, !668, !837}
!2131 = !DISubprogram(name: "GetBlobStreamHandler", scope: !511, file: !511, line: 59, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!828, !833}
!2134 = !DISubprogram(name: "GetPixelCacheStorageClass", scope: !958, file: !958, line: 229, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!634, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!2138 = !DISubprogram(name: "GetPixelCacheColorspace", scope: !958, file: !958, line: 232, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!611, !2137}
!2141 = !DISubprogram(name: "LockSemaphoreInfo", scope: !778, file: !778, line: 37, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !776}
!2144 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !778, file: !778, line: 39, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2145 = !DISubprogram(name: "DestroyPixelCacheNexus", scope: !958, file: !958, line: 252, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!992, !992, !837}
!2148 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !778, file: !778, line: 36, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!2152 = !DISubprogram(name: "SetImageInfo", scope: !30, file: !30, line: 538, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!564, !1306, !943, !953}
!2155 = !DISubprogram(name: "ParseAbsoluteGeometry", scope: !222, file: !222, line: 141, type: !2156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!2158, !736, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !42, line: 147, baseType: !5)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!2160 = distinct !DISubprogram(name: "StreamImagePixels", scope: !551, file: !551, line: 1260, type: !2161, scopeLine: 1262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2165)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!564, !2163, !833, !953}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2179, !2181, !2183, !2185, !2187, !2189}
!2166 = !DILocalVariable(name: "stream_info", arg: 1, scope: !2160, file: !551, line: 1260, type: !2163)
!2167 = !DILocalVariable(name: "image", arg: 2, scope: !2160, file: !551, line: 1261, type: !833)
!2168 = !DILocalVariable(name: "exception", arg: 3, scope: !2160, file: !551, line: 1261, type: !953)
!2169 = !DILocalVariable(name: "quantum_info", scope: !2160, file: !551, line: 1264, type: !912)
!2170 = !DILocalVariable(name: "quantum_map", scope: !2160, file: !551, line: 1267, type: !1095)
!2171 = !DILocalVariable(name: "indexes", scope: !2160, file: !551, line: 1270, type: !1036)
!2172 = !DILocalVariable(name: "p", scope: !2160, file: !551, line: 1273, type: !1022)
!2173 = !DILocalVariable(name: "i", scope: !2160, file: !551, line: 1276, type: !617)
!2174 = !DILocalVariable(name: "x", scope: !2160, file: !551, line: 1277, type: !617)
!2175 = !DILocalVariable(name: "length", scope: !2160, file: !551, line: 1280, type: !575)
!2176 = !DILocalVariable(name: "q", scope: !2177, file: !551, line: 1401, type: !792)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !551, line: 1399, column: 5)
!2178 = distinct !DILexicalBlock(scope: !2160, file: !551, line: 1397, column: 3)
!2179 = !DILocalVariable(name: "q", scope: !2180, file: !551, line: 1566, type: !1097)
!2180 = distinct !DILexicalBlock(scope: !2178, file: !551, line: 1564, column: 5)
!2181 = !DILocalVariable(name: "q", scope: !2182, file: !551, line: 1759, type: !1098)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !551, line: 1757, column: 5)
!2183 = !DILocalVariable(name: "q", scope: !2184, file: !551, line: 1952, type: !1099)
!2184 = distinct !DILexicalBlock(scope: !2178, file: !551, line: 1950, column: 5)
!2185 = !DILocalVariable(name: "q", scope: !2186, file: !551, line: 2121, type: !1100)
!2186 = distinct !DILexicalBlock(scope: !2178, file: !551, line: 2119, column: 5)
!2187 = !DILocalVariable(name: "q", scope: !2188, file: !551, line: 2286, type: !1101)
!2188 = distinct !DILexicalBlock(scope: !2178, file: !551, line: 2284, column: 5)
!2189 = !DILocalVariable(name: "q", scope: !2190, file: !551, line: 2451, type: !1102)
!2190 = distinct !DILexicalBlock(scope: !2178, file: !551, line: 2449, column: 5)
!2191 = !DILocation(line: 0, scope: !2160)
!2192 = !DILocation(line: 1286, column: 14, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2160, file: !551, line: 1286, column: 7)
!2194 = !DILocation(line: 1286, column: 20, scope: !2193)
!2195 = !DILocation(line: 1286, column: 7, scope: !2160)
!2196 = !DILocation(line: 1287, column: 68, scope: !2193)
!2197 = !DILocation(line: 1287, column: 12, scope: !2193)
!2198 = !DILocation(line: 1287, column: 5, scope: !2193)
!2199 = !DILocation(line: 1288, column: 30, scope: !2160)
!2200 = !DILocation(line: 1288, column: 10, scope: !2160)
!2201 = !DILocation(line: 1289, column: 31, scope: !2160)
!2202 = !DILocation(line: 1290, column: 19, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2160, file: !551, line: 1290, column: 7)
!2204 = !DILocation(line: 1290, column: 7, scope: !2160)
!2205 = !DILocation(line: 1296, column: 15, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !551, line: 1296, column: 3)
!2207 = distinct !DILexicalBlock(scope: !2160, file: !551, line: 1296, column: 3)
!2208 = !DILocation(line: 1296, column: 3, scope: !2207)
!2209 = !DILocation(line: 1293, column: 67, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2203, file: !551, line: 1291, column: 5)
!2211 = !DILocation(line: 1292, column: 14, scope: !2210)
!2212 = !DILocation(line: 1294, column: 7, scope: !2210)
!2213 = !DILocation(line: 1298, column: 26, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2206, file: !551, line: 1297, column: 3)
!2215 = !DILocation(line: 1298, column: 13, scope: !2214)
!2216 = !{!1131, !1131, i64 0}
!2217 = !DILocation(line: 1298, column: 5, scope: !2214)
!2218 = !DILocation(line: 1310, column: 9, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1308, column: 7)
!2220 = distinct !DILexicalBlock(scope: !2214, file: !551, line: 1299, column: 5)
!2221 = !DILocation(line: 1315, column: 9, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1314, column: 7)
!2223 = !DILocation(line: 1315, column: 23, scope: !2222)
!2224 = !DILocation(line: 1316, column: 20, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !551, line: 1316, column: 13)
!2226 = !DILocation(line: 1316, column: 31, scope: !2225)
!2227 = !DILocation(line: 1316, column: 13, scope: !2222)
!2228 = !DILocation(line: 1318, column: 37, scope: !2222)
!2229 = !DILocation(line: 1320, column: 61, scope: !2222)
!2230 = !DILocation(line: 1319, column: 16, scope: !2222)
!2231 = !DILocation(line: 1321, column: 9, scope: !2222)
!2232 = !DILocation(line: 1327, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1325, column: 7)
!2234 = !DILocation(line: 1333, column: 9, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1331, column: 7)
!2236 = !DILocation(line: 1338, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1337, column: 7)
!2238 = !DILocation(line: 1338, column: 23, scope: !2237)
!2239 = !DILocation(line: 1339, column: 20, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !551, line: 1339, column: 13)
!2241 = !DILocation(line: 1339, column: 31, scope: !2240)
!2242 = !DILocation(line: 1339, column: 13, scope: !2237)
!2243 = !DILocation(line: 1341, column: 37, scope: !2237)
!2244 = !DILocation(line: 1343, column: 61, scope: !2237)
!2245 = !DILocation(line: 1342, column: 16, scope: !2237)
!2246 = !DILocation(line: 1344, column: 9, scope: !2237)
!2247 = !DILocation(line: 1349, column: 9, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1348, column: 7)
!2249 = !DILocation(line: 1349, column: 23, scope: !2248)
!2250 = !DILocation(line: 1350, column: 20, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !551, line: 1350, column: 13)
!2252 = !DILocation(line: 1350, column: 31, scope: !2251)
!2253 = !DILocation(line: 1350, column: 13, scope: !2248)
!2254 = !DILocation(line: 1352, column: 37, scope: !2248)
!2255 = !DILocation(line: 1354, column: 61, scope: !2248)
!2256 = !DILocation(line: 1353, column: 16, scope: !2248)
!2257 = !DILocation(line: 1355, column: 9, scope: !2248)
!2258 = !DILocation(line: 1361, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1359, column: 7)
!2260 = !DILocation(line: 1367, column: 9, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1365, column: 7)
!2262 = !DILocation(line: 1373, column: 9, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1371, column: 7)
!2264 = !DILocation(line: 1378, column: 9, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1377, column: 7)
!2266 = !DILocation(line: 1378, column: 23, scope: !2265)
!2267 = !DILocation(line: 1379, column: 20, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !551, line: 1379, column: 13)
!2269 = !DILocation(line: 1379, column: 31, scope: !2268)
!2270 = !DILocation(line: 1379, column: 13, scope: !2265)
!2271 = !DILocation(line: 1381, column: 37, scope: !2265)
!2272 = !DILocation(line: 1383, column: 61, scope: !2265)
!2273 = !DILocation(line: 1382, column: 16, scope: !2265)
!2274 = !DILocation(line: 1384, column: 9, scope: !2265)
!2275 = !DILocation(line: 1388, column: 37, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2220, file: !551, line: 1387, column: 7)
!2277 = !DILocation(line: 1390, column: 54, scope: !2276)
!2278 = !DILocation(line: 1389, column: 16, scope: !2276)
!2279 = !DILocation(line: 1391, column: 9, scope: !2276)
!2280 = !DILocation(line: 0, scope: !2220)
!2281 = !DILocation(line: 1296, column: 36, scope: !2206)
!2282 = distinct !{!2282, !2208, !2283, !2284, !2285}
!2283 = !DILocation(line: 1394, column: 3, scope: !2207)
!2284 = !{!"llvm.loop.mustprogress"}
!2285 = !{!"llvm.loop.unroll.disable"}
!2286 = !DILocation(line: 1395, column: 29, scope: !2160)
!2287 = !DILocation(line: 1396, column: 24, scope: !2160)
!2288 = !DILocation(line: 1396, column: 3, scope: !2160)
!2289 = !DILocation(line: 1403, column: 40, scope: !2177)
!2290 = !DILocation(line: 0, scope: !2177)
!2291 = !DILocation(line: 1404, column: 38, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2177, file: !551, line: 1404, column: 11)
!2293 = !DILocation(line: 1404, column: 11, scope: !2292)
!2294 = !DILocation(line: 1404, column: 49, scope: !2292)
!2295 = !DILocation(line: 1404, column: 11, scope: !2177)
!2296 = !DILocation(line: 1406, column: 13, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !551, line: 1405, column: 9)
!2298 = !DILocation(line: 1407, column: 17, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2297, file: !551, line: 1407, column: 15)
!2300 = !DILocation(line: 1407, column: 15, scope: !2297)
!2301 = !DILocation(line: 1409, column: 35, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !551, line: 1409, column: 11)
!2303 = distinct !DILexicalBlock(scope: !2297, file: !551, line: 1409, column: 11)
!2304 = !DILocation(line: 1409, column: 23, scope: !2302)
!2305 = !DILocation(line: 1409, column: 11, scope: !2303)
!2306 = !DILocation(line: 1411, column: 37, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2302, file: !551, line: 1410, column: 11)
!2308 = !{!1315, !1316, i64 0}
!2309 = !DILocalVariable(name: "quantum", arg: 1, scope: !2310, file: !57, line: 114, type: !2313)
!2310 = distinct !DISubprogram(name: "ScaleQuantumToChar", scope: !57, file: !57, line: 114, type: !2311, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2314)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!793, !2313}
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!2314 = !{!2309}
!2315 = !DILocation(line: 0, scope: !2310, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 1411, column: 18, scope: !2307)
!2317 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2316)
!2318 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2316)
!2319 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2316)
!2320 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2316)
!2321 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2316)
!2322 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2316)
!2323 = !DILocation(line: 1411, column: 15, scope: !2307)
!2324 = !DILocation(line: 1411, column: 17, scope: !2307)
!2325 = !DILocation(line: 1412, column: 37, scope: !2307)
!2326 = !{!1315, !1316, i64 2}
!2327 = !DILocation(line: 0, scope: !2310, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 1412, column: 18, scope: !2307)
!2329 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2328)
!2330 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2328)
!2331 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2328)
!2332 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2328)
!2333 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2328)
!2334 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2328)
!2335 = !DILocation(line: 1412, column: 15, scope: !2307)
!2336 = !DILocation(line: 1412, column: 17, scope: !2307)
!2337 = !DILocation(line: 1413, column: 37, scope: !2307)
!2338 = !{!1315, !1316, i64 4}
!2339 = !DILocation(line: 0, scope: !2310, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 1413, column: 18, scope: !2307)
!2341 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2340)
!2342 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2340)
!2343 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2340)
!2344 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2340)
!2345 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2340)
!2346 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2340)
!2347 = !DILocation(line: 1413, column: 15, scope: !2307)
!2348 = !DILocation(line: 1413, column: 17, scope: !2307)
!2349 = !DILocation(line: 1414, column: 14, scope: !2307)
!2350 = !DILocation(line: 1409, column: 59, scope: !2302)
!2351 = distinct !{!2351, !2305, !2352, !2284, !2285}
!2352 = !DILocation(line: 1415, column: 11, scope: !2303)
!2353 = !DILocation(line: 1418, column: 38, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2177, file: !551, line: 1418, column: 11)
!2355 = !DILocation(line: 1418, column: 11, scope: !2354)
!2356 = !DILocation(line: 1418, column: 50, scope: !2354)
!2357 = !DILocation(line: 1418, column: 11, scope: !2177)
!2358 = !DILocation(line: 1420, column: 13, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !551, line: 1419, column: 9)
!2360 = !DILocation(line: 1421, column: 17, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2359, file: !551, line: 1421, column: 15)
!2362 = !DILocation(line: 1421, column: 15, scope: !2359)
!2363 = !DILocation(line: 1423, column: 35, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !551, line: 1423, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2359, file: !551, line: 1423, column: 11)
!2366 = !DILocation(line: 1423, column: 23, scope: !2364)
!2367 = !DILocation(line: 1423, column: 11, scope: !2365)
!2368 = !DILocation(line: 1425, column: 37, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2364, file: !551, line: 1424, column: 11)
!2370 = !DILocation(line: 0, scope: !2310, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 1425, column: 18, scope: !2369)
!2372 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2371)
!2373 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2371)
!2374 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2371)
!2375 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2371)
!2376 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2371)
!2377 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2371)
!2378 = !DILocation(line: 1425, column: 15, scope: !2369)
!2379 = !DILocation(line: 1425, column: 17, scope: !2369)
!2380 = !DILocation(line: 1426, column: 37, scope: !2369)
!2381 = !DILocation(line: 0, scope: !2310, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 1426, column: 18, scope: !2369)
!2383 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2382)
!2384 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2382)
!2385 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2382)
!2386 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2382)
!2387 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2382)
!2388 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2382)
!2389 = !DILocation(line: 1426, column: 15, scope: !2369)
!2390 = !DILocation(line: 1426, column: 17, scope: !2369)
!2391 = !DILocation(line: 1427, column: 37, scope: !2369)
!2392 = !DILocation(line: 0, scope: !2310, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 1427, column: 18, scope: !2369)
!2394 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2393)
!2395 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2393)
!2396 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2393)
!2397 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2393)
!2398 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2393)
!2399 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2393)
!2400 = !DILocation(line: 1427, column: 15, scope: !2369)
!2401 = !DILocation(line: 1427, column: 17, scope: !2369)
!2402 = !DILocation(line: 1428, column: 48, scope: !2369)
!2403 = !{!1315, !1316, i64 6}
!2404 = !DILocation(line: 0, scope: !2310, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1428, column: 18, scope: !2369)
!2406 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2405)
!2407 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2405)
!2408 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2405)
!2409 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2405)
!2410 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2405)
!2411 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2405)
!2412 = !DILocation(line: 1428, column: 15, scope: !2369)
!2413 = !DILocation(line: 1428, column: 17, scope: !2369)
!2414 = !DILocation(line: 1429, column: 14, scope: !2369)
!2415 = !DILocation(line: 1423, column: 59, scope: !2364)
!2416 = distinct !{!2416, !2367, !2417, !2284, !2285}
!2417 = !DILocation(line: 1430, column: 11, scope: !2365)
!2418 = !DILocation(line: 1433, column: 38, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2177, file: !551, line: 1433, column: 11)
!2420 = !DILocation(line: 1433, column: 11, scope: !2419)
!2421 = !DILocation(line: 1433, column: 50, scope: !2419)
!2422 = !DILocation(line: 1433, column: 11, scope: !2177)
!2423 = !DILocation(line: 1435, column: 13, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2419, file: !551, line: 1434, column: 9)
!2425 = !DILocation(line: 1436, column: 17, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2424, file: !551, line: 1436, column: 15)
!2427 = !DILocation(line: 1436, column: 15, scope: !2424)
!2428 = !DILocation(line: 1438, column: 35, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !551, line: 1438, column: 11)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !551, line: 1438, column: 11)
!2431 = !DILocation(line: 1438, column: 23, scope: !2429)
!2432 = !DILocation(line: 1438, column: 11, scope: !2430)
!2433 = !DILocation(line: 1440, column: 37, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2429, file: !551, line: 1439, column: 11)
!2435 = !DILocation(line: 0, scope: !2310, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 1440, column: 18, scope: !2434)
!2437 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2436)
!2438 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2436)
!2439 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2436)
!2440 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2436)
!2441 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2436)
!2442 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2436)
!2443 = !DILocation(line: 1440, column: 15, scope: !2434)
!2444 = !DILocation(line: 1440, column: 17, scope: !2434)
!2445 = !DILocation(line: 1441, column: 37, scope: !2434)
!2446 = !DILocation(line: 0, scope: !2310, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 1441, column: 18, scope: !2434)
!2448 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2447)
!2449 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2447)
!2450 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2447)
!2451 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2447)
!2452 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2447)
!2453 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2447)
!2454 = !DILocation(line: 1441, column: 15, scope: !2434)
!2455 = !DILocation(line: 1441, column: 17, scope: !2434)
!2456 = !DILocation(line: 1442, column: 37, scope: !2434)
!2457 = !DILocation(line: 0, scope: !2310, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 1442, column: 18, scope: !2434)
!2459 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2458)
!2460 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2458)
!2461 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2458)
!2462 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2458)
!2463 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2458)
!2464 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2458)
!2465 = !DILocation(line: 1442, column: 15, scope: !2434)
!2466 = !DILocation(line: 1442, column: 17, scope: !2434)
!2467 = !DILocation(line: 0, scope: !2310, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1443, column: 18, scope: !2434)
!2469 = !DILocation(line: 1443, column: 15, scope: !2434)
!2470 = !DILocation(line: 1443, column: 17, scope: !2434)
!2471 = !DILocation(line: 1444, column: 14, scope: !2434)
!2472 = !DILocation(line: 1438, column: 59, scope: !2429)
!2473 = distinct !{!2473, !2432, !2474, !2284, !2285}
!2474 = !DILocation(line: 1445, column: 11, scope: !2430)
!2475 = !DILocation(line: 1448, column: 38, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2177, file: !551, line: 1448, column: 11)
!2477 = !DILocation(line: 1448, column: 11, scope: !2476)
!2478 = !DILocation(line: 1448, column: 47, scope: !2476)
!2479 = !DILocation(line: 1448, column: 11, scope: !2177)
!2480 = !DILocation(line: 1450, column: 13, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !551, line: 1449, column: 9)
!2482 = !DILocation(line: 1451, column: 17, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2481, file: !551, line: 1451, column: 15)
!2484 = !DILocation(line: 1451, column: 15, scope: !2481)
!2485 = !DILocation(line: 1453, column: 35, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !551, line: 1453, column: 11)
!2487 = distinct !DILexicalBlock(scope: !2481, file: !551, line: 1453, column: 11)
!2488 = !DILocation(line: 1453, column: 23, scope: !2486)
!2489 = !DILocation(line: 1453, column: 11, scope: !2487)
!2490 = !DILocation(line: 1455, column: 52, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !551, line: 1454, column: 11)
!2492 = !DILocalVariable(name: "value", arg: 1, scope: !2493, file: !57, line: 87, type: !2496)
!2493 = distinct !DISubprogram(name: "ClampToQuantum", scope: !57, file: !57, line: 87, type: !2494, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2497)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!600, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!2497 = !{!2492}
!2498 = !DILocation(line: 0, scope: !2493, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 1455, column: 37, scope: !2491)
!2500 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !2499)
!2501 = distinct !DILexicalBlock(scope: !2493, file: !57, line: 92, column: 7)
!2502 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !2499)
!2503 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !2499)
!2504 = distinct !DILexicalBlock(scope: !2493, file: !57, line: 94, column: 7)
!2505 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !2499)
!2506 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !2499)
!2507 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !2499)
!2508 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !2499)
!2509 = !DILocation(line: 0, scope: !2310, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 1455, column: 18, scope: !2491)
!2511 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2510)
!2512 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2510)
!2513 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2510)
!2514 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2510)
!2515 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2510)
!2516 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2510)
!2517 = !DILocation(line: 1455, column: 15, scope: !2491)
!2518 = !DILocation(line: 1455, column: 17, scope: !2491)
!2519 = !DILocation(line: 1456, column: 14, scope: !2491)
!2520 = !DILocation(line: 1453, column: 59, scope: !2486)
!2521 = distinct !{!2521, !2489, !2522, !2284, !2285}
!2522 = !DILocation(line: 1457, column: 11, scope: !2487)
!2523 = !DILocation(line: 1460, column: 38, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2177, file: !551, line: 1460, column: 11)
!2525 = !DILocation(line: 1460, column: 11, scope: !2524)
!2526 = !DILocation(line: 1460, column: 49, scope: !2524)
!2527 = !DILocation(line: 1460, column: 11, scope: !2177)
!2528 = !DILocation(line: 1462, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2524, file: !551, line: 1461, column: 9)
!2530 = !DILocation(line: 1463, column: 17, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2529, file: !551, line: 1463, column: 15)
!2532 = !DILocation(line: 1463, column: 15, scope: !2529)
!2533 = !DILocation(line: 1465, column: 35, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !551, line: 1465, column: 11)
!2535 = distinct !DILexicalBlock(scope: !2529, file: !551, line: 1465, column: 11)
!2536 = !DILocation(line: 1465, column: 23, scope: !2534)
!2537 = !DILocation(line: 1465, column: 11, scope: !2535)
!2538 = !DILocation(line: 1467, column: 37, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !551, line: 1466, column: 11)
!2540 = !DILocation(line: 0, scope: !2310, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 1467, column: 18, scope: !2539)
!2542 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2541)
!2543 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2541)
!2544 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2541)
!2545 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2541)
!2546 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2541)
!2547 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2541)
!2548 = !DILocation(line: 1467, column: 15, scope: !2539)
!2549 = !DILocation(line: 1467, column: 17, scope: !2539)
!2550 = !DILocation(line: 1468, column: 37, scope: !2539)
!2551 = !DILocation(line: 0, scope: !2310, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 1468, column: 18, scope: !2539)
!2553 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2552)
!2554 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2552)
!2555 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2552)
!2556 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2552)
!2557 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2552)
!2558 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2552)
!2559 = !DILocation(line: 1468, column: 15, scope: !2539)
!2560 = !DILocation(line: 1468, column: 17, scope: !2539)
!2561 = !DILocation(line: 1469, column: 37, scope: !2539)
!2562 = !DILocation(line: 0, scope: !2310, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 1469, column: 18, scope: !2539)
!2564 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2563)
!2565 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2563)
!2566 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2563)
!2567 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2563)
!2568 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2563)
!2569 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2563)
!2570 = !DILocation(line: 1469, column: 15, scope: !2539)
!2571 = !DILocation(line: 1469, column: 17, scope: !2539)
!2572 = !DILocation(line: 1470, column: 14, scope: !2539)
!2573 = !DILocation(line: 1465, column: 59, scope: !2534)
!2574 = distinct !{!2574, !2537, !2575, !2284, !2285}
!2575 = !DILocation(line: 1471, column: 11, scope: !2535)
!2576 = !DILocation(line: 1474, column: 38, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2177, file: !551, line: 1474, column: 11)
!2578 = !DILocation(line: 1474, column: 11, scope: !2577)
!2579 = !DILocation(line: 1474, column: 50, scope: !2577)
!2580 = !DILocation(line: 1474, column: 11, scope: !2177)
!2581 = !DILocation(line: 1476, column: 13, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !551, line: 1475, column: 9)
!2583 = !DILocation(line: 1477, column: 17, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2582, file: !551, line: 1477, column: 15)
!2585 = !DILocation(line: 1477, column: 15, scope: !2582)
!2586 = !DILocation(line: 1479, column: 35, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !551, line: 1479, column: 11)
!2588 = distinct !DILexicalBlock(scope: !2582, file: !551, line: 1479, column: 11)
!2589 = !DILocation(line: 1479, column: 23, scope: !2587)
!2590 = !DILocation(line: 1479, column: 11, scope: !2588)
!2591 = !DILocation(line: 1481, column: 37, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !551, line: 1480, column: 11)
!2593 = !DILocation(line: 0, scope: !2310, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1481, column: 18, scope: !2592)
!2595 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2594)
!2596 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2594)
!2597 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2594)
!2598 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2594)
!2599 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2594)
!2600 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2594)
!2601 = !DILocation(line: 1481, column: 15, scope: !2592)
!2602 = !DILocation(line: 1481, column: 17, scope: !2592)
!2603 = !DILocation(line: 1482, column: 37, scope: !2592)
!2604 = !DILocation(line: 0, scope: !2310, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 1482, column: 18, scope: !2592)
!2606 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2605)
!2607 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2605)
!2608 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2605)
!2609 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2605)
!2610 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2605)
!2611 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2605)
!2612 = !DILocation(line: 1482, column: 15, scope: !2592)
!2613 = !DILocation(line: 1482, column: 17, scope: !2592)
!2614 = !DILocation(line: 1483, column: 37, scope: !2592)
!2615 = !DILocation(line: 0, scope: !2310, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1483, column: 18, scope: !2592)
!2617 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2616)
!2618 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2616)
!2619 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2616)
!2620 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2616)
!2621 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2616)
!2622 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2616)
!2623 = !DILocation(line: 1483, column: 15, scope: !2592)
!2624 = !DILocation(line: 1483, column: 17, scope: !2592)
!2625 = !DILocation(line: 1484, column: 48, scope: !2592)
!2626 = !DILocation(line: 0, scope: !2310, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1484, column: 18, scope: !2592)
!2628 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2627)
!2629 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2627)
!2630 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2627)
!2631 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2627)
!2632 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2627)
!2633 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2627)
!2634 = !DILocation(line: 1484, column: 15, scope: !2592)
!2635 = !DILocation(line: 1484, column: 17, scope: !2592)
!2636 = !DILocation(line: 1485, column: 14, scope: !2592)
!2637 = !DILocation(line: 1479, column: 59, scope: !2587)
!2638 = distinct !{!2638, !2590, !2639, !2284, !2285}
!2639 = !DILocation(line: 1486, column: 11, scope: !2588)
!2640 = !DILocation(line: 1489, column: 38, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2177, file: !551, line: 1489, column: 11)
!2642 = !DILocation(line: 1489, column: 11, scope: !2641)
!2643 = !DILocation(line: 1489, column: 50, scope: !2641)
!2644 = !DILocation(line: 1489, column: 11, scope: !2177)
!2645 = !DILocation(line: 1492, column: 15, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2641, file: !551, line: 1490, column: 9)
!2647 = !DILocation(line: 1494, column: 35, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !551, line: 1494, column: 11)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !551, line: 1494, column: 11)
!2650 = !DILocation(line: 1494, column: 23, scope: !2648)
!2651 = !DILocation(line: 1494, column: 11, scope: !2649)
!2652 = !DILocation(line: 1496, column: 37, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2648, file: !551, line: 1495, column: 11)
!2654 = !DILocation(line: 0, scope: !2310, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 1496, column: 18, scope: !2653)
!2656 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2655)
!2657 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2655)
!2658 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2655)
!2659 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2655)
!2660 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2655)
!2661 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2655)
!2662 = !DILocation(line: 1496, column: 15, scope: !2653)
!2663 = !DILocation(line: 1496, column: 17, scope: !2653)
!2664 = !DILocation(line: 1497, column: 37, scope: !2653)
!2665 = !DILocation(line: 0, scope: !2310, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1497, column: 18, scope: !2653)
!2667 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2666)
!2668 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2666)
!2669 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2666)
!2670 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2666)
!2671 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2666)
!2672 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2666)
!2673 = !DILocation(line: 1497, column: 15, scope: !2653)
!2674 = !DILocation(line: 1497, column: 17, scope: !2653)
!2675 = !DILocation(line: 1498, column: 37, scope: !2653)
!2676 = !DILocation(line: 0, scope: !2310, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1498, column: 18, scope: !2653)
!2678 = !DILocation(line: 117, column: 29, scope: !2310, inlinedAt: !2677)
!2679 = !DILocation(line: 117, column: 36, scope: !2310, inlinedAt: !2677)
!2680 = !DILocation(line: 117, column: 61, scope: !2310, inlinedAt: !2677)
!2681 = !DILocation(line: 117, column: 43, scope: !2310, inlinedAt: !2677)
!2682 = !DILocation(line: 117, column: 68, scope: !2310, inlinedAt: !2677)
!2683 = !DILocation(line: 117, column: 10, scope: !2310, inlinedAt: !2677)
!2684 = !DILocation(line: 1498, column: 15, scope: !2653)
!2685 = !DILocation(line: 1498, column: 17, scope: !2653)
!2686 = !DILocation(line: 0, scope: !2310, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1499, column: 18, scope: !2653)
!2688 = !DILocation(line: 1499, column: 15, scope: !2653)
!2689 = !DILocation(line: 1499, column: 17, scope: !2653)
!2690 = !DILocation(line: 1500, column: 14, scope: !2653)
!2691 = !DILocation(line: 1494, column: 59, scope: !2648)
!2692 = distinct !{!2692, !2651, !2693, !2284, !2285}
!2693 = !DILocation(line: 1501, column: 11, scope: !2649)
!2694 = !DILocation(line: 1505, column: 11, scope: !2177)
!2695 = !DILocation(line: 1507, column: 15, scope: !2177)
!2696 = !DILocation(line: 1508, column: 31, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !551, line: 1508, column: 7)
!2698 = distinct !DILexicalBlock(scope: !2177, file: !551, line: 1508, column: 7)
!2699 = !DILocation(line: 1508, column: 19, scope: !2697)
!2700 = !DILocation(line: 1508, column: 7, scope: !2698)
!2701 = !DILocation(line: 1510, column: 9, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !551, line: 1510, column: 9)
!2703 = distinct !DILexicalBlock(scope: !2697, file: !551, line: 1509, column: 7)
!2704 = !DILocation(line: 1512, column: 13, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !551, line: 1511, column: 9)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !551, line: 1510, column: 9)
!2707 = !DILocation(line: 1513, column: 19, scope: !2705)
!2708 = !DILocation(line: 1513, column: 11, scope: !2705)
!2709 = !DILocation(line: 1518, column: 37, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !551, line: 1517, column: 13)
!2711 = distinct !DILexicalBlock(scope: !2705, file: !551, line: 1514, column: 11)
!2712 = !DILocation(line: 0, scope: !2310, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 1518, column: 18, scope: !2710)
!2714 = !DILocation(line: 1519, column: 15, scope: !2710)
!2715 = !DILocation(line: 1524, column: 37, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2711, file: !551, line: 1523, column: 13)
!2717 = !DILocation(line: 0, scope: !2310, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1524, column: 18, scope: !2716)
!2719 = !DILocation(line: 1525, column: 15, scope: !2716)
!2720 = !DILocation(line: 1530, column: 37, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2711, file: !551, line: 1529, column: 13)
!2722 = !DILocation(line: 0, scope: !2310, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1530, column: 18, scope: !2721)
!2724 = !DILocation(line: 1531, column: 15, scope: !2721)
!2725 = !DILocation(line: 1535, column: 48, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2711, file: !551, line: 1534, column: 13)
!2727 = !DILocation(line: 0, scope: !2310, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1535, column: 18, scope: !2726)
!2729 = !DILocation(line: 1536, column: 15, scope: !2726)
!2730 = !DILocation(line: 1540, column: 37, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2711, file: !551, line: 1539, column: 13)
!2732 = !DILocation(line: 0, scope: !2310, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1540, column: 18, scope: !2731)
!2734 = !DILocation(line: 1541, column: 15, scope: !2731)
!2735 = !DILocation(line: 1545, column: 26, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !551, line: 1545, column: 19)
!2737 = distinct !DILexicalBlock(scope: !2711, file: !551, line: 1544, column: 13)
!2738 = !DILocation(line: 1545, column: 37, scope: !2736)
!2739 = !DILocation(line: 1545, column: 19, scope: !2737)
!2740 = !DILocation(line: 1546, column: 39, scope: !2736)
!2741 = !{!1316, !1316, i64 0}
!2742 = !DILocation(line: 1551, column: 52, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2711, file: !551, line: 1550, column: 13)
!2744 = !DILocation(line: 0, scope: !2493, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1551, column: 37, scope: !2743)
!2746 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !2745)
!2747 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !2745)
!2748 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !2745)
!2749 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !2745)
!2750 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !2745)
!2751 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !2745)
!2752 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !2745)
!2753 = !DILocation(line: 0, scope: !2711)
!2754 = !DILocation(line: 1557, column: 12, scope: !2705)
!2755 = !DILocation(line: 1510, column: 42, scope: !2706)
!2756 = !DILocation(line: 1510, column: 21, scope: !2706)
!2757 = distinct !{!2757, !2701, !2758, !2284, !2285}
!2758 = !DILocation(line: 1558, column: 9, scope: !2702)
!2759 = !DILocation(line: 1559, column: 10, scope: !2703)
!2760 = !DILocation(line: 1508, column: 55, scope: !2697)
!2761 = distinct !{!2761, !2700, !2762, !2284, !2285}
!2762 = !DILocation(line: 1560, column: 7, scope: !2698)
!2763 = !DILocation(line: 1568, column: 33, scope: !2180)
!2764 = !DILocation(line: 0, scope: !2180)
!2765 = !DILocation(line: 1569, column: 38, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2180, file: !551, line: 1569, column: 11)
!2767 = !DILocation(line: 1569, column: 11, scope: !2766)
!2768 = !DILocation(line: 1569, column: 49, scope: !2766)
!2769 = !DILocation(line: 1569, column: 11, scope: !2180)
!2770 = !DILocation(line: 1571, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2766, file: !551, line: 1570, column: 9)
!2772 = !DILocation(line: 1572, column: 17, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2771, file: !551, line: 1572, column: 15)
!2774 = !DILocation(line: 1572, column: 15, scope: !2771)
!2775 = !DILocation(line: 1574, column: 35, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !551, line: 1574, column: 11)
!2777 = distinct !DILexicalBlock(scope: !2771, file: !551, line: 1574, column: 11)
!2778 = !DILocation(line: 1574, column: 23, scope: !2776)
!2779 = !DILocation(line: 1574, column: 11, scope: !2777)
!2780 = !DILocation(line: 1576, column: 42, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2776, file: !551, line: 1575, column: 11)
!2782 = !DILocation(line: 1576, column: 41, scope: !2781)
!2783 = !DILocation(line: 1577, column: 29, scope: !2781)
!2784 = !{!2785, !1314, i64 40}
!2785 = !{!"_QuantumInfo", !1142, i64 0, !1142, i64 8, !1131, i64 16, !1314, i64 24, !1314, i64 32, !1314, i64 40, !1142, i64 48, !1131, i64 56, !1131, i64 60, !1131, i64 64, !1142, i64 72, !1140, i64 80, !1142, i64 88, !1131, i64 96, !2786, i64 104, !1140, i64 136, !1142, i64 144}
!2786 = !{!"_QuantumState", !1314, i64 0, !1130, i64 8, !1142, i64 16, !1140, i64 24}
!2787 = !DILocation(line: 1577, column: 49, scope: !2781)
!2788 = !{!2785, !1314, i64 24}
!2789 = !DILocation(line: 1577, column: 34, scope: !2781)
!2790 = !DILocation(line: 1576, column: 15, scope: !2781)
!2791 = !DILocation(line: 1576, column: 17, scope: !2781)
!2792 = !{!1314, !1314, i64 0}
!2793 = !DILocation(line: 1578, column: 42, scope: !2781)
!2794 = !DILocation(line: 1578, column: 41, scope: !2781)
!2795 = !DILocation(line: 1579, column: 29, scope: !2781)
!2796 = !DILocation(line: 1579, column: 49, scope: !2781)
!2797 = !DILocation(line: 1579, column: 34, scope: !2781)
!2798 = !DILocation(line: 1578, column: 15, scope: !2781)
!2799 = !DILocation(line: 1578, column: 17, scope: !2781)
!2800 = !DILocation(line: 1580, column: 42, scope: !2781)
!2801 = !DILocation(line: 1580, column: 41, scope: !2781)
!2802 = !DILocation(line: 1581, column: 29, scope: !2781)
!2803 = !DILocation(line: 1581, column: 49, scope: !2781)
!2804 = !DILocation(line: 1581, column: 34, scope: !2781)
!2805 = !DILocation(line: 1580, column: 15, scope: !2781)
!2806 = !DILocation(line: 1580, column: 17, scope: !2781)
!2807 = !DILocation(line: 1582, column: 14, scope: !2781)
!2808 = !DILocation(line: 1574, column: 59, scope: !2776)
!2809 = distinct !{!2809, !2779, !2810, !2284, !2285}
!2810 = !DILocation(line: 1583, column: 11, scope: !2777)
!2811 = !DILocation(line: 1586, column: 38, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2180, file: !551, line: 1586, column: 11)
!2813 = !DILocation(line: 1586, column: 11, scope: !2812)
!2814 = !DILocation(line: 1586, column: 50, scope: !2812)
!2815 = !DILocation(line: 1586, column: 11, scope: !2180)
!2816 = !DILocation(line: 1588, column: 13, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2812, file: !551, line: 1587, column: 9)
!2818 = !DILocation(line: 1589, column: 17, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2817, file: !551, line: 1589, column: 15)
!2820 = !DILocation(line: 1589, column: 15, scope: !2817)
!2821 = !DILocation(line: 1591, column: 35, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !551, line: 1591, column: 11)
!2823 = distinct !DILexicalBlock(scope: !2817, file: !551, line: 1591, column: 11)
!2824 = !DILocation(line: 1591, column: 23, scope: !2822)
!2825 = !DILocation(line: 1591, column: 11, scope: !2823)
!2826 = !DILocation(line: 1593, column: 42, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2822, file: !551, line: 1592, column: 11)
!2828 = !DILocation(line: 1593, column: 41, scope: !2827)
!2829 = !DILocation(line: 1594, column: 29, scope: !2827)
!2830 = !DILocation(line: 1594, column: 49, scope: !2827)
!2831 = !DILocation(line: 1594, column: 34, scope: !2827)
!2832 = !DILocation(line: 1593, column: 15, scope: !2827)
!2833 = !DILocation(line: 1593, column: 17, scope: !2827)
!2834 = !DILocation(line: 1595, column: 42, scope: !2827)
!2835 = !DILocation(line: 1595, column: 41, scope: !2827)
!2836 = !DILocation(line: 1596, column: 29, scope: !2827)
!2837 = !DILocation(line: 1596, column: 49, scope: !2827)
!2838 = !DILocation(line: 1596, column: 34, scope: !2827)
!2839 = !DILocation(line: 1595, column: 15, scope: !2827)
!2840 = !DILocation(line: 1595, column: 17, scope: !2827)
!2841 = !DILocation(line: 1597, column: 42, scope: !2827)
!2842 = !DILocation(line: 1597, column: 41, scope: !2827)
!2843 = !DILocation(line: 1598, column: 29, scope: !2827)
!2844 = !DILocation(line: 1598, column: 49, scope: !2827)
!2845 = !DILocation(line: 1598, column: 34, scope: !2827)
!2846 = !DILocation(line: 1597, column: 15, scope: !2827)
!2847 = !DILocation(line: 1597, column: 17, scope: !2827)
!2848 = !DILocation(line: 1599, column: 42, scope: !2827)
!2849 = !DILocation(line: 1599, column: 41, scope: !2827)
!2850 = !DILocation(line: 1600, column: 29, scope: !2827)
!2851 = !DILocation(line: 1600, column: 49, scope: !2827)
!2852 = !DILocation(line: 1600, column: 34, scope: !2827)
!2853 = !DILocation(line: 1599, column: 15, scope: !2827)
!2854 = !DILocation(line: 1599, column: 17, scope: !2827)
!2855 = !DILocation(line: 1601, column: 14, scope: !2827)
!2856 = !DILocation(line: 1591, column: 59, scope: !2822)
!2857 = distinct !{!2857, !2825, !2858, !2284, !2285}
!2858 = !DILocation(line: 1602, column: 11, scope: !2823)
!2859 = !DILocation(line: 1605, column: 38, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2180, file: !551, line: 1605, column: 11)
!2861 = !DILocation(line: 1605, column: 11, scope: !2860)
!2862 = !DILocation(line: 1605, column: 50, scope: !2860)
!2863 = !DILocation(line: 1605, column: 11, scope: !2180)
!2864 = !DILocation(line: 1607, column: 13, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !551, line: 1606, column: 9)
!2866 = !DILocation(line: 1608, column: 17, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !551, line: 1608, column: 15)
!2868 = !DILocation(line: 1608, column: 15, scope: !2865)
!2869 = !DILocation(line: 1610, column: 35, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !551, line: 1610, column: 11)
!2871 = distinct !DILexicalBlock(scope: !2865, file: !551, line: 1610, column: 11)
!2872 = !DILocation(line: 1610, column: 23, scope: !2870)
!2873 = !DILocation(line: 1610, column: 11, scope: !2871)
!2874 = !DILocation(line: 1612, column: 42, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2870, file: !551, line: 1611, column: 11)
!2876 = !DILocation(line: 1612, column: 41, scope: !2875)
!2877 = !DILocation(line: 1613, column: 29, scope: !2875)
!2878 = !DILocation(line: 1613, column: 49, scope: !2875)
!2879 = !DILocation(line: 1613, column: 34, scope: !2875)
!2880 = !DILocation(line: 1612, column: 15, scope: !2875)
!2881 = !DILocation(line: 1612, column: 17, scope: !2875)
!2882 = !DILocation(line: 1614, column: 42, scope: !2875)
!2883 = !DILocation(line: 1614, column: 41, scope: !2875)
!2884 = !DILocation(line: 1615, column: 29, scope: !2875)
!2885 = !DILocation(line: 1615, column: 49, scope: !2875)
!2886 = !DILocation(line: 1615, column: 34, scope: !2875)
!2887 = !DILocation(line: 1614, column: 15, scope: !2875)
!2888 = !DILocation(line: 1614, column: 17, scope: !2875)
!2889 = !DILocation(line: 1616, column: 42, scope: !2875)
!2890 = !DILocation(line: 1616, column: 41, scope: !2875)
!2891 = !DILocation(line: 1617, column: 29, scope: !2875)
!2892 = !DILocation(line: 1617, column: 49, scope: !2875)
!2893 = !DILocation(line: 1617, column: 34, scope: !2875)
!2894 = !DILocation(line: 1616, column: 15, scope: !2875)
!2895 = !DILocation(line: 1616, column: 17, scope: !2875)
!2896 = !DILocation(line: 1618, column: 15, scope: !2875)
!2897 = !DILocation(line: 1618, column: 17, scope: !2875)
!2898 = !DILocation(line: 1619, column: 14, scope: !2875)
!2899 = !DILocation(line: 1610, column: 59, scope: !2870)
!2900 = distinct !{!2900, !2873, !2901, !2284, !2285}
!2901 = !DILocation(line: 1620, column: 11, scope: !2871)
!2902 = !DILocation(line: 1623, column: 38, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2180, file: !551, line: 1623, column: 11)
!2904 = !DILocation(line: 1623, column: 11, scope: !2903)
!2905 = !DILocation(line: 1623, column: 47, scope: !2903)
!2906 = !DILocation(line: 1623, column: 11, scope: !2180)
!2907 = !DILocation(line: 1625, column: 13, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !551, line: 1624, column: 9)
!2909 = !DILocation(line: 1626, column: 17, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2908, file: !551, line: 1626, column: 15)
!2911 = !DILocation(line: 1626, column: 15, scope: !2908)
!2912 = !DILocation(line: 1628, column: 35, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !551, line: 1628, column: 11)
!2914 = distinct !DILexicalBlock(scope: !2908, file: !551, line: 1628, column: 11)
!2915 = !DILocation(line: 1628, column: 23, scope: !2913)
!2916 = !DILocation(line: 1628, column: 11, scope: !2914)
!2917 = !DILocation(line: 1630, column: 42, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2913, file: !551, line: 1629, column: 11)
!2919 = !DILocation(line: 1630, column: 41, scope: !2918)
!2920 = !DILocation(line: 1631, column: 29, scope: !2918)
!2921 = !DILocation(line: 1631, column: 49, scope: !2918)
!2922 = !DILocation(line: 1631, column: 34, scope: !2918)
!2923 = !DILocation(line: 1630, column: 15, scope: !2918)
!2924 = !DILocation(line: 1630, column: 17, scope: !2918)
!2925 = !DILocation(line: 1632, column: 14, scope: !2918)
!2926 = !DILocation(line: 1628, column: 59, scope: !2913)
!2927 = distinct !{!2927, !2916, !2928, !2284, !2285}
!2928 = !DILocation(line: 1633, column: 11, scope: !2914)
!2929 = !DILocation(line: 1636, column: 38, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2180, file: !551, line: 1636, column: 11)
!2931 = !DILocation(line: 1636, column: 11, scope: !2930)
!2932 = !DILocation(line: 1636, column: 49, scope: !2930)
!2933 = !DILocation(line: 1636, column: 11, scope: !2180)
!2934 = !DILocation(line: 1638, column: 13, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2930, file: !551, line: 1637, column: 9)
!2936 = !DILocation(line: 1639, column: 17, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2935, file: !551, line: 1639, column: 15)
!2938 = !DILocation(line: 1639, column: 15, scope: !2935)
!2939 = !DILocation(line: 1641, column: 35, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !551, line: 1641, column: 11)
!2941 = distinct !DILexicalBlock(scope: !2935, file: !551, line: 1641, column: 11)
!2942 = !DILocation(line: 1641, column: 23, scope: !2940)
!2943 = !DILocation(line: 1641, column: 11, scope: !2941)
!2944 = !DILocation(line: 1643, column: 42, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !551, line: 1642, column: 11)
!2946 = !DILocation(line: 1643, column: 41, scope: !2945)
!2947 = !DILocation(line: 1644, column: 29, scope: !2945)
!2948 = !DILocation(line: 1644, column: 49, scope: !2945)
!2949 = !DILocation(line: 1644, column: 34, scope: !2945)
!2950 = !DILocation(line: 1643, column: 15, scope: !2945)
!2951 = !DILocation(line: 1643, column: 17, scope: !2945)
!2952 = !DILocation(line: 1645, column: 42, scope: !2945)
!2953 = !DILocation(line: 1645, column: 41, scope: !2945)
!2954 = !DILocation(line: 1646, column: 29, scope: !2945)
!2955 = !DILocation(line: 1646, column: 49, scope: !2945)
!2956 = !DILocation(line: 1646, column: 34, scope: !2945)
!2957 = !DILocation(line: 1645, column: 15, scope: !2945)
!2958 = !DILocation(line: 1645, column: 17, scope: !2945)
!2959 = !DILocation(line: 1647, column: 42, scope: !2945)
!2960 = !DILocation(line: 1647, column: 41, scope: !2945)
!2961 = !DILocation(line: 1648, column: 29, scope: !2945)
!2962 = !DILocation(line: 1648, column: 49, scope: !2945)
!2963 = !DILocation(line: 1648, column: 34, scope: !2945)
!2964 = !DILocation(line: 1647, column: 15, scope: !2945)
!2965 = !DILocation(line: 1647, column: 17, scope: !2945)
!2966 = !DILocation(line: 1649, column: 14, scope: !2945)
!2967 = !DILocation(line: 1641, column: 59, scope: !2940)
!2968 = distinct !{!2968, !2943, !2969, !2284, !2285}
!2969 = !DILocation(line: 1650, column: 11, scope: !2941)
!2970 = !DILocation(line: 1653, column: 38, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2180, file: !551, line: 1653, column: 11)
!2972 = !DILocation(line: 1653, column: 11, scope: !2971)
!2973 = !DILocation(line: 1653, column: 50, scope: !2971)
!2974 = !DILocation(line: 1653, column: 11, scope: !2180)
!2975 = !DILocation(line: 1655, column: 13, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2971, file: !551, line: 1654, column: 9)
!2977 = !DILocation(line: 1656, column: 17, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2976, file: !551, line: 1656, column: 15)
!2979 = !DILocation(line: 1656, column: 15, scope: !2976)
!2980 = !DILocation(line: 1658, column: 35, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !551, line: 1658, column: 11)
!2982 = distinct !DILexicalBlock(scope: !2976, file: !551, line: 1658, column: 11)
!2983 = !DILocation(line: 1658, column: 23, scope: !2981)
!2984 = !DILocation(line: 1658, column: 11, scope: !2982)
!2985 = !DILocation(line: 1660, column: 42, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !551, line: 1659, column: 11)
!2987 = !DILocation(line: 1660, column: 41, scope: !2986)
!2988 = !DILocation(line: 1661, column: 29, scope: !2986)
!2989 = !DILocation(line: 1661, column: 49, scope: !2986)
!2990 = !DILocation(line: 1661, column: 34, scope: !2986)
!2991 = !DILocation(line: 1660, column: 15, scope: !2986)
!2992 = !DILocation(line: 1660, column: 17, scope: !2986)
!2993 = !DILocation(line: 1662, column: 42, scope: !2986)
!2994 = !DILocation(line: 1662, column: 41, scope: !2986)
!2995 = !DILocation(line: 1663, column: 29, scope: !2986)
!2996 = !DILocation(line: 1663, column: 49, scope: !2986)
!2997 = !DILocation(line: 1663, column: 34, scope: !2986)
!2998 = !DILocation(line: 1662, column: 15, scope: !2986)
!2999 = !DILocation(line: 1662, column: 17, scope: !2986)
!3000 = !DILocation(line: 1664, column: 42, scope: !2986)
!3001 = !DILocation(line: 1664, column: 41, scope: !2986)
!3002 = !DILocation(line: 1665, column: 29, scope: !2986)
!3003 = !DILocation(line: 1665, column: 49, scope: !2986)
!3004 = !DILocation(line: 1665, column: 34, scope: !2986)
!3005 = !DILocation(line: 1664, column: 15, scope: !2986)
!3006 = !DILocation(line: 1664, column: 17, scope: !2986)
!3007 = !DILocation(line: 1666, column: 42, scope: !2986)
!3008 = !DILocation(line: 1666, column: 41, scope: !2986)
!3009 = !DILocation(line: 1667, column: 29, scope: !2986)
!3010 = !DILocation(line: 1667, column: 49, scope: !2986)
!3011 = !DILocation(line: 1667, column: 34, scope: !2986)
!3012 = !DILocation(line: 1666, column: 15, scope: !2986)
!3013 = !DILocation(line: 1666, column: 17, scope: !2986)
!3014 = !DILocation(line: 1668, column: 14, scope: !2986)
!3015 = !DILocation(line: 1658, column: 59, scope: !2981)
!3016 = distinct !{!3016, !2984, !3017, !2284, !2285}
!3017 = !DILocation(line: 1669, column: 11, scope: !2982)
!3018 = !DILocation(line: 1672, column: 38, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2180, file: !551, line: 1672, column: 11)
!3020 = !DILocation(line: 1672, column: 11, scope: !3019)
!3021 = !DILocation(line: 1672, column: 50, scope: !3019)
!3022 = !DILocation(line: 1672, column: 11, scope: !2180)
!3023 = !DILocation(line: 1675, column: 15, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3019, file: !551, line: 1673, column: 9)
!3025 = !DILocation(line: 1677, column: 35, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !551, line: 1677, column: 11)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !551, line: 1677, column: 11)
!3028 = !DILocation(line: 1677, column: 23, scope: !3026)
!3029 = !DILocation(line: 1677, column: 11, scope: !3027)
!3030 = !DILocation(line: 1679, column: 42, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !551, line: 1678, column: 11)
!3032 = !DILocation(line: 1679, column: 41, scope: !3031)
!3033 = !DILocation(line: 1680, column: 29, scope: !3031)
!3034 = !DILocation(line: 1680, column: 49, scope: !3031)
!3035 = !DILocation(line: 1680, column: 34, scope: !3031)
!3036 = !DILocation(line: 1679, column: 15, scope: !3031)
!3037 = !DILocation(line: 1679, column: 17, scope: !3031)
!3038 = !DILocation(line: 1681, column: 42, scope: !3031)
!3039 = !DILocation(line: 1681, column: 41, scope: !3031)
!3040 = !DILocation(line: 1682, column: 29, scope: !3031)
!3041 = !DILocation(line: 1682, column: 49, scope: !3031)
!3042 = !DILocation(line: 1682, column: 34, scope: !3031)
!3043 = !DILocation(line: 1681, column: 15, scope: !3031)
!3044 = !DILocation(line: 1681, column: 17, scope: !3031)
!3045 = !DILocation(line: 1683, column: 42, scope: !3031)
!3046 = !DILocation(line: 1683, column: 41, scope: !3031)
!3047 = !DILocation(line: 1684, column: 29, scope: !3031)
!3048 = !DILocation(line: 1684, column: 49, scope: !3031)
!3049 = !DILocation(line: 1684, column: 34, scope: !3031)
!3050 = !DILocation(line: 1683, column: 15, scope: !3031)
!3051 = !DILocation(line: 1683, column: 17, scope: !3031)
!3052 = !DILocation(line: 1685, column: 15, scope: !3031)
!3053 = !DILocation(line: 1685, column: 17, scope: !3031)
!3054 = !DILocation(line: 1686, column: 14, scope: !3031)
!3055 = !DILocation(line: 1677, column: 59, scope: !3026)
!3056 = distinct !{!3056, !3029, !3057, !2284, !2285}
!3057 = !DILocation(line: 1687, column: 11, scope: !3027)
!3058 = !DILocation(line: 1691, column: 11, scope: !2180)
!3059 = !DILocation(line: 1693, column: 15, scope: !2180)
!3060 = !DILocation(line: 1694, column: 31, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !551, line: 1694, column: 7)
!3062 = distinct !DILexicalBlock(scope: !2180, file: !551, line: 1694, column: 7)
!3063 = !DILocation(line: 1694, column: 19, scope: !3061)
!3064 = !DILocation(line: 1694, column: 7, scope: !3062)
!3065 = !DILocation(line: 1696, column: 9, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !551, line: 1696, column: 9)
!3067 = distinct !DILexicalBlock(scope: !3061, file: !551, line: 1695, column: 7)
!3068 = !DILocation(line: 1698, column: 13, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !551, line: 1697, column: 9)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !551, line: 1696, column: 9)
!3071 = !DILocation(line: 1699, column: 19, scope: !3069)
!3072 = !DILocation(line: 1699, column: 11, scope: !3069)
!3073 = !DILocation(line: 1704, column: 42, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !551, line: 1703, column: 13)
!3075 = distinct !DILexicalBlock(scope: !3069, file: !551, line: 1700, column: 11)
!3076 = !DILocation(line: 1706, column: 15, scope: !3074)
!3077 = !DILocation(line: 1711, column: 42, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !551, line: 1710, column: 13)
!3079 = !DILocation(line: 1713, column: 15, scope: !3078)
!3080 = !DILocation(line: 1718, column: 42, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3075, file: !551, line: 1717, column: 13)
!3082 = !DILocation(line: 1720, column: 15, scope: !3081)
!3083 = !DILocation(line: 1724, column: 42, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3075, file: !551, line: 1723, column: 13)
!3085 = !DILocation(line: 1726, column: 15, scope: !3084)
!3086 = !DILocation(line: 1730, column: 42, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3075, file: !551, line: 1729, column: 13)
!3088 = !DILocation(line: 1732, column: 15, scope: !3087)
!3089 = !DILocation(line: 1736, column: 26, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !551, line: 1736, column: 19)
!3091 = distinct !DILexicalBlock(scope: !3075, file: !551, line: 1735, column: 13)
!3092 = !DILocation(line: 1736, column: 37, scope: !3090)
!3093 = !DILocation(line: 1736, column: 19, scope: !3091)
!3094 = !DILocation(line: 1737, column: 44, scope: !3090)
!3095 = !DILocation(line: 1737, column: 17, scope: !3090)
!3096 = !DILocation(line: 1743, column: 42, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3075, file: !551, line: 1742, column: 13)
!3098 = !DILocation(line: 1745, column: 15, scope: !3097)
!3099 = !DILocation(line: 0, scope: !3075)
!3100 = !DILocation(line: 1750, column: 12, scope: !3069)
!3101 = !DILocation(line: 1696, column: 42, scope: !3070)
!3102 = !DILocation(line: 1696, column: 21, scope: !3070)
!3103 = distinct !{!3103, !3065, !3104, !2284, !2285}
!3104 = !DILocation(line: 1751, column: 9, scope: !3066)
!3105 = !DILocation(line: 1752, column: 10, scope: !3067)
!3106 = !DILocation(line: 1694, column: 55, scope: !3061)
!3107 = distinct !{!3107, !3064, !3108, !2284, !2285}
!3108 = !DILocation(line: 1753, column: 7, scope: !3062)
!3109 = !DILocation(line: 1761, column: 32, scope: !2182)
!3110 = !DILocation(line: 0, scope: !2182)
!3111 = !DILocation(line: 1762, column: 38, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2182, file: !551, line: 1762, column: 11)
!3113 = !DILocation(line: 1762, column: 11, scope: !3112)
!3114 = !DILocation(line: 1762, column: 49, scope: !3112)
!3115 = !DILocation(line: 1762, column: 11, scope: !2182)
!3116 = !DILocation(line: 1764, column: 13, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3112, file: !551, line: 1763, column: 9)
!3118 = !DILocation(line: 1765, column: 17, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3117, file: !551, line: 1765, column: 15)
!3120 = !DILocation(line: 1765, column: 15, scope: !3117)
!3121 = !DILocation(line: 1767, column: 35, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !551, line: 1767, column: 11)
!3123 = distinct !DILexicalBlock(scope: !3117, file: !551, line: 1767, column: 11)
!3124 = !DILocation(line: 1767, column: 23, scope: !3122)
!3125 = !DILocation(line: 1767, column: 11, scope: !3123)
!3126 = !DILocation(line: 1769, column: 41, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3122, file: !551, line: 1768, column: 11)
!3128 = !DILocation(line: 1769, column: 40, scope: !3127)
!3129 = !DILocation(line: 1770, column: 29, scope: !3127)
!3130 = !DILocation(line: 1770, column: 49, scope: !3127)
!3131 = !DILocation(line: 1770, column: 34, scope: !3127)
!3132 = !DILocation(line: 1769, column: 18, scope: !3127)
!3133 = !DILocation(line: 1769, column: 15, scope: !3127)
!3134 = !DILocation(line: 1769, column: 17, scope: !3127)
!3135 = !{!1439, !1439, i64 0}
!3136 = !DILocation(line: 1771, column: 41, scope: !3127)
!3137 = !DILocation(line: 1771, column: 40, scope: !3127)
!3138 = !DILocation(line: 1772, column: 34, scope: !3127)
!3139 = !DILocation(line: 1771, column: 18, scope: !3127)
!3140 = !DILocation(line: 1771, column: 15, scope: !3127)
!3141 = !DILocation(line: 1771, column: 17, scope: !3127)
!3142 = !DILocation(line: 1773, column: 41, scope: !3127)
!3143 = !DILocation(line: 1773, column: 40, scope: !3127)
!3144 = !DILocation(line: 1774, column: 34, scope: !3127)
!3145 = !DILocation(line: 1773, column: 18, scope: !3127)
!3146 = !DILocation(line: 1773, column: 15, scope: !3127)
!3147 = !DILocation(line: 1773, column: 17, scope: !3127)
!3148 = !DILocation(line: 1775, column: 14, scope: !3127)
!3149 = !DILocation(line: 1767, column: 59, scope: !3122)
!3150 = distinct !{!3150, !3125, !3151, !2284, !2285}
!3151 = !DILocation(line: 1776, column: 11, scope: !3123)
!3152 = !DILocation(line: 1779, column: 38, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !2182, file: !551, line: 1779, column: 11)
!3154 = !DILocation(line: 1779, column: 11, scope: !3153)
!3155 = !DILocation(line: 1779, column: 50, scope: !3153)
!3156 = !DILocation(line: 1779, column: 11, scope: !2182)
!3157 = !DILocation(line: 1781, column: 13, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3153, file: !551, line: 1780, column: 9)
!3159 = !DILocation(line: 1782, column: 17, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3158, file: !551, line: 1782, column: 15)
!3161 = !DILocation(line: 1782, column: 15, scope: !3158)
!3162 = !DILocation(line: 1784, column: 35, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !551, line: 1784, column: 11)
!3164 = distinct !DILexicalBlock(scope: !3158, file: !551, line: 1784, column: 11)
!3165 = !DILocation(line: 1784, column: 23, scope: !3163)
!3166 = !DILocation(line: 1784, column: 11, scope: !3164)
!3167 = !DILocation(line: 1786, column: 41, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !551, line: 1785, column: 11)
!3169 = !DILocation(line: 1786, column: 40, scope: !3168)
!3170 = !DILocation(line: 1787, column: 29, scope: !3168)
!3171 = !DILocation(line: 1787, column: 49, scope: !3168)
!3172 = !DILocation(line: 1787, column: 34, scope: !3168)
!3173 = !DILocation(line: 1786, column: 18, scope: !3168)
!3174 = !DILocation(line: 1786, column: 15, scope: !3168)
!3175 = !DILocation(line: 1786, column: 17, scope: !3168)
!3176 = !DILocation(line: 1788, column: 41, scope: !3168)
!3177 = !DILocation(line: 1788, column: 40, scope: !3168)
!3178 = !DILocation(line: 1789, column: 34, scope: !3168)
!3179 = !DILocation(line: 1788, column: 18, scope: !3168)
!3180 = !DILocation(line: 1788, column: 15, scope: !3168)
!3181 = !DILocation(line: 1788, column: 17, scope: !3168)
!3182 = !DILocation(line: 1790, column: 41, scope: !3168)
!3183 = !DILocation(line: 1790, column: 40, scope: !3168)
!3184 = !DILocation(line: 1791, column: 34, scope: !3168)
!3185 = !DILocation(line: 1790, column: 18, scope: !3168)
!3186 = !DILocation(line: 1790, column: 15, scope: !3168)
!3187 = !DILocation(line: 1790, column: 17, scope: !3168)
!3188 = !DILocation(line: 1792, column: 52, scope: !3168)
!3189 = !DILocation(line: 1792, column: 41, scope: !3168)
!3190 = !DILocation(line: 1792, column: 40, scope: !3168)
!3191 = !DILocation(line: 1793, column: 34, scope: !3168)
!3192 = !DILocation(line: 1792, column: 18, scope: !3168)
!3193 = !DILocation(line: 1792, column: 15, scope: !3168)
!3194 = !DILocation(line: 1792, column: 17, scope: !3168)
!3195 = !DILocation(line: 1794, column: 14, scope: !3168)
!3196 = !DILocation(line: 1784, column: 59, scope: !3163)
!3197 = distinct !{!3197, !3166, !3198, !2284, !2285}
!3198 = !DILocation(line: 1795, column: 11, scope: !3164)
!3199 = !DILocation(line: 1798, column: 38, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !2182, file: !551, line: 1798, column: 11)
!3201 = !DILocation(line: 1798, column: 11, scope: !3200)
!3202 = !DILocation(line: 1798, column: 50, scope: !3200)
!3203 = !DILocation(line: 1798, column: 11, scope: !2182)
!3204 = !DILocation(line: 1800, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !551, line: 1799, column: 9)
!3206 = !DILocation(line: 1801, column: 17, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3205, file: !551, line: 1801, column: 15)
!3208 = !DILocation(line: 1801, column: 15, scope: !3205)
!3209 = !DILocation(line: 1803, column: 35, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !551, line: 1803, column: 11)
!3211 = distinct !DILexicalBlock(scope: !3205, file: !551, line: 1803, column: 11)
!3212 = !DILocation(line: 1803, column: 23, scope: !3210)
!3213 = !DILocation(line: 1803, column: 11, scope: !3211)
!3214 = !DILocation(line: 1805, column: 41, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3210, file: !551, line: 1804, column: 11)
!3216 = !DILocation(line: 1805, column: 40, scope: !3215)
!3217 = !DILocation(line: 1806, column: 29, scope: !3215)
!3218 = !DILocation(line: 1806, column: 49, scope: !3215)
!3219 = !DILocation(line: 1806, column: 34, scope: !3215)
!3220 = !DILocation(line: 1805, column: 18, scope: !3215)
!3221 = !DILocation(line: 1805, column: 15, scope: !3215)
!3222 = !DILocation(line: 1805, column: 17, scope: !3215)
!3223 = !DILocation(line: 1807, column: 41, scope: !3215)
!3224 = !DILocation(line: 1807, column: 40, scope: !3215)
!3225 = !DILocation(line: 1808, column: 34, scope: !3215)
!3226 = !DILocation(line: 1807, column: 18, scope: !3215)
!3227 = !DILocation(line: 1807, column: 15, scope: !3215)
!3228 = !DILocation(line: 1807, column: 17, scope: !3215)
!3229 = !DILocation(line: 1809, column: 41, scope: !3215)
!3230 = !DILocation(line: 1809, column: 40, scope: !3215)
!3231 = !DILocation(line: 1810, column: 34, scope: !3215)
!3232 = !DILocation(line: 1809, column: 18, scope: !3215)
!3233 = !DILocation(line: 1809, column: 15, scope: !3215)
!3234 = !DILocation(line: 1809, column: 17, scope: !3215)
!3235 = !DILocation(line: 1811, column: 15, scope: !3215)
!3236 = !DILocation(line: 1811, column: 17, scope: !3215)
!3237 = !DILocation(line: 1812, column: 14, scope: !3215)
!3238 = !DILocation(line: 1803, column: 59, scope: !3210)
!3239 = distinct !{!3239, !3213, !3240, !2284, !2285}
!3240 = !DILocation(line: 1813, column: 11, scope: !3211)
!3241 = !DILocation(line: 1816, column: 38, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !2182, file: !551, line: 1816, column: 11)
!3243 = !DILocation(line: 1816, column: 11, scope: !3242)
!3244 = !DILocation(line: 1816, column: 47, scope: !3242)
!3245 = !DILocation(line: 1816, column: 11, scope: !2182)
!3246 = !DILocation(line: 1818, column: 13, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3242, file: !551, line: 1817, column: 9)
!3248 = !DILocation(line: 1819, column: 17, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3247, file: !551, line: 1819, column: 15)
!3250 = !DILocation(line: 1819, column: 15, scope: !3247)
!3251 = !DILocation(line: 1821, column: 35, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !551, line: 1821, column: 11)
!3253 = distinct !DILexicalBlock(scope: !3247, file: !551, line: 1821, column: 11)
!3254 = !DILocation(line: 1821, column: 23, scope: !3252)
!3255 = !DILocation(line: 1821, column: 11, scope: !3253)
!3256 = !DILocation(line: 1823, column: 41, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3252, file: !551, line: 1822, column: 11)
!3258 = !DILocation(line: 1823, column: 40, scope: !3257)
!3259 = !DILocation(line: 1824, column: 29, scope: !3257)
!3260 = !DILocation(line: 1824, column: 49, scope: !3257)
!3261 = !DILocation(line: 1824, column: 34, scope: !3257)
!3262 = !DILocation(line: 1823, column: 18, scope: !3257)
!3263 = !DILocation(line: 1823, column: 15, scope: !3257)
!3264 = !DILocation(line: 1823, column: 17, scope: !3257)
!3265 = !DILocation(line: 1825, column: 14, scope: !3257)
!3266 = !DILocation(line: 1821, column: 59, scope: !3252)
!3267 = distinct !{!3267, !3255, !3268, !2284, !2285}
!3268 = !DILocation(line: 1826, column: 11, scope: !3253)
!3269 = !DILocation(line: 1829, column: 38, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !2182, file: !551, line: 1829, column: 11)
!3271 = !DILocation(line: 1829, column: 11, scope: !3270)
!3272 = !DILocation(line: 1829, column: 49, scope: !3270)
!3273 = !DILocation(line: 1829, column: 11, scope: !2182)
!3274 = !DILocation(line: 1831, column: 13, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !551, line: 1830, column: 9)
!3276 = !DILocation(line: 1832, column: 17, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3275, file: !551, line: 1832, column: 15)
!3278 = !DILocation(line: 1832, column: 15, scope: !3275)
!3279 = !DILocation(line: 1834, column: 35, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !551, line: 1834, column: 11)
!3281 = distinct !DILexicalBlock(scope: !3275, file: !551, line: 1834, column: 11)
!3282 = !DILocation(line: 1834, column: 23, scope: !3280)
!3283 = !DILocation(line: 1834, column: 11, scope: !3281)
!3284 = !DILocation(line: 1836, column: 41, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3280, file: !551, line: 1835, column: 11)
!3286 = !DILocation(line: 1836, column: 40, scope: !3285)
!3287 = !DILocation(line: 1837, column: 29, scope: !3285)
!3288 = !DILocation(line: 1837, column: 49, scope: !3285)
!3289 = !DILocation(line: 1837, column: 34, scope: !3285)
!3290 = !DILocation(line: 1836, column: 18, scope: !3285)
!3291 = !DILocation(line: 1836, column: 15, scope: !3285)
!3292 = !DILocation(line: 1836, column: 17, scope: !3285)
!3293 = !DILocation(line: 1838, column: 41, scope: !3285)
!3294 = !DILocation(line: 1838, column: 40, scope: !3285)
!3295 = !DILocation(line: 1839, column: 34, scope: !3285)
!3296 = !DILocation(line: 1838, column: 18, scope: !3285)
!3297 = !DILocation(line: 1838, column: 15, scope: !3285)
!3298 = !DILocation(line: 1838, column: 17, scope: !3285)
!3299 = !DILocation(line: 1840, column: 41, scope: !3285)
!3300 = !DILocation(line: 1840, column: 40, scope: !3285)
!3301 = !DILocation(line: 1841, column: 34, scope: !3285)
!3302 = !DILocation(line: 1840, column: 18, scope: !3285)
!3303 = !DILocation(line: 1840, column: 15, scope: !3285)
!3304 = !DILocation(line: 1840, column: 17, scope: !3285)
!3305 = !DILocation(line: 1842, column: 14, scope: !3285)
!3306 = !DILocation(line: 1834, column: 59, scope: !3280)
!3307 = distinct !{!3307, !3283, !3308, !2284, !2285}
!3308 = !DILocation(line: 1843, column: 11, scope: !3281)
!3309 = !DILocation(line: 1846, column: 38, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !2182, file: !551, line: 1846, column: 11)
!3311 = !DILocation(line: 1846, column: 11, scope: !3310)
!3312 = !DILocation(line: 1846, column: 50, scope: !3310)
!3313 = !DILocation(line: 1846, column: 11, scope: !2182)
!3314 = !DILocation(line: 1848, column: 13, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !551, line: 1847, column: 9)
!3316 = !DILocation(line: 1849, column: 17, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3315, file: !551, line: 1849, column: 15)
!3318 = !DILocation(line: 1849, column: 15, scope: !3315)
!3319 = !DILocation(line: 1851, column: 35, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !551, line: 1851, column: 11)
!3321 = distinct !DILexicalBlock(scope: !3315, file: !551, line: 1851, column: 11)
!3322 = !DILocation(line: 1851, column: 23, scope: !3320)
!3323 = !DILocation(line: 1851, column: 11, scope: !3321)
!3324 = !DILocation(line: 1853, column: 41, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3320, file: !551, line: 1852, column: 11)
!3326 = !DILocation(line: 1853, column: 40, scope: !3325)
!3327 = !DILocation(line: 1854, column: 29, scope: !3325)
!3328 = !DILocation(line: 1854, column: 49, scope: !3325)
!3329 = !DILocation(line: 1854, column: 34, scope: !3325)
!3330 = !DILocation(line: 1853, column: 18, scope: !3325)
!3331 = !DILocation(line: 1853, column: 15, scope: !3325)
!3332 = !DILocation(line: 1853, column: 17, scope: !3325)
!3333 = !DILocation(line: 1855, column: 41, scope: !3325)
!3334 = !DILocation(line: 1855, column: 40, scope: !3325)
!3335 = !DILocation(line: 1856, column: 34, scope: !3325)
!3336 = !DILocation(line: 1855, column: 18, scope: !3325)
!3337 = !DILocation(line: 1855, column: 15, scope: !3325)
!3338 = !DILocation(line: 1855, column: 17, scope: !3325)
!3339 = !DILocation(line: 1857, column: 41, scope: !3325)
!3340 = !DILocation(line: 1857, column: 40, scope: !3325)
!3341 = !DILocation(line: 1858, column: 34, scope: !3325)
!3342 = !DILocation(line: 1857, column: 18, scope: !3325)
!3343 = !DILocation(line: 1857, column: 15, scope: !3325)
!3344 = !DILocation(line: 1857, column: 17, scope: !3325)
!3345 = !DILocation(line: 1859, column: 41, scope: !3325)
!3346 = !DILocation(line: 1859, column: 40, scope: !3325)
!3347 = !DILocation(line: 1860, column: 34, scope: !3325)
!3348 = !DILocation(line: 1859, column: 18, scope: !3325)
!3349 = !DILocation(line: 1859, column: 15, scope: !3325)
!3350 = !DILocation(line: 1859, column: 17, scope: !3325)
!3351 = !DILocation(line: 1861, column: 14, scope: !3325)
!3352 = !DILocation(line: 1851, column: 59, scope: !3320)
!3353 = distinct !{!3353, !3323, !3354, !2284, !2285}
!3354 = !DILocation(line: 1862, column: 11, scope: !3321)
!3355 = !DILocation(line: 1865, column: 38, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !2182, file: !551, line: 1865, column: 11)
!3357 = !DILocation(line: 1865, column: 11, scope: !3356)
!3358 = !DILocation(line: 1865, column: 50, scope: !3356)
!3359 = !DILocation(line: 1865, column: 11, scope: !2182)
!3360 = !DILocation(line: 1868, column: 15, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3356, file: !551, line: 1866, column: 9)
!3362 = !DILocation(line: 1870, column: 35, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !551, line: 1870, column: 11)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !551, line: 1870, column: 11)
!3365 = !DILocation(line: 1870, column: 23, scope: !3363)
!3366 = !DILocation(line: 1870, column: 11, scope: !3364)
!3367 = !DILocation(line: 1872, column: 41, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3363, file: !551, line: 1871, column: 11)
!3369 = !DILocation(line: 1872, column: 40, scope: !3368)
!3370 = !DILocation(line: 1873, column: 29, scope: !3368)
!3371 = !DILocation(line: 1873, column: 49, scope: !3368)
!3372 = !DILocation(line: 1873, column: 34, scope: !3368)
!3373 = !DILocation(line: 1872, column: 18, scope: !3368)
!3374 = !DILocation(line: 1872, column: 15, scope: !3368)
!3375 = !DILocation(line: 1872, column: 17, scope: !3368)
!3376 = !DILocation(line: 1874, column: 41, scope: !3368)
!3377 = !DILocation(line: 1874, column: 40, scope: !3368)
!3378 = !DILocation(line: 1875, column: 34, scope: !3368)
!3379 = !DILocation(line: 1874, column: 18, scope: !3368)
!3380 = !DILocation(line: 1874, column: 15, scope: !3368)
!3381 = !DILocation(line: 1874, column: 17, scope: !3368)
!3382 = !DILocation(line: 1876, column: 41, scope: !3368)
!3383 = !DILocation(line: 1876, column: 40, scope: !3368)
!3384 = !DILocation(line: 1877, column: 34, scope: !3368)
!3385 = !DILocation(line: 1876, column: 18, scope: !3368)
!3386 = !DILocation(line: 1876, column: 15, scope: !3368)
!3387 = !DILocation(line: 1876, column: 17, scope: !3368)
!3388 = !DILocation(line: 1878, column: 15, scope: !3368)
!3389 = !DILocation(line: 1878, column: 17, scope: !3368)
!3390 = !DILocation(line: 1879, column: 14, scope: !3368)
!3391 = !DILocation(line: 1870, column: 59, scope: !3363)
!3392 = distinct !{!3392, !3366, !3393, !2284, !2285}
!3393 = !DILocation(line: 1880, column: 11, scope: !3364)
!3394 = !DILocation(line: 1884, column: 11, scope: !2182)
!3395 = !DILocation(line: 1886, column: 15, scope: !2182)
!3396 = !DILocation(line: 1887, column: 31, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !551, line: 1887, column: 7)
!3398 = distinct !DILexicalBlock(scope: !2182, file: !551, line: 1887, column: 7)
!3399 = !DILocation(line: 1887, column: 19, scope: !3397)
!3400 = !DILocation(line: 1887, column: 7, scope: !3398)
!3401 = !DILocation(line: 1889, column: 9, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !551, line: 1889, column: 9)
!3403 = distinct !DILexicalBlock(scope: !3397, file: !551, line: 1888, column: 7)
!3404 = !DILocation(line: 1891, column: 13, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !551, line: 1890, column: 9)
!3406 = distinct !DILexicalBlock(scope: !3402, file: !551, line: 1889, column: 9)
!3407 = !DILocation(line: 1892, column: 19, scope: !3405)
!3408 = !DILocation(line: 1892, column: 11, scope: !3405)
!3409 = !DILocation(line: 1897, column: 41, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !551, line: 1896, column: 13)
!3411 = distinct !DILexicalBlock(scope: !3405, file: !551, line: 1893, column: 11)
!3412 = !DILocation(line: 1899, column: 15, scope: !3410)
!3413 = !DILocation(line: 1904, column: 41, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3411, file: !551, line: 1903, column: 13)
!3415 = !DILocation(line: 1906, column: 15, scope: !3414)
!3416 = !DILocation(line: 1911, column: 41, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3411, file: !551, line: 1910, column: 13)
!3418 = !DILocation(line: 1913, column: 15, scope: !3417)
!3419 = !DILocation(line: 1917, column: 41, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3411, file: !551, line: 1916, column: 13)
!3421 = !DILocation(line: 1919, column: 15, scope: !3420)
!3422 = !DILocation(line: 1923, column: 41, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3411, file: !551, line: 1922, column: 13)
!3424 = !DILocation(line: 1925, column: 15, scope: !3423)
!3425 = !DILocation(line: 1929, column: 26, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !551, line: 1929, column: 19)
!3427 = distinct !DILexicalBlock(scope: !3411, file: !551, line: 1928, column: 13)
!3428 = !DILocation(line: 1929, column: 37, scope: !3426)
!3429 = !DILocation(line: 1929, column: 19, scope: !3427)
!3430 = !DILocation(line: 1930, column: 43, scope: !3426)
!3431 = !DILocation(line: 1930, column: 17, scope: !3426)
!3432 = !DILocation(line: 1936, column: 41, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3411, file: !551, line: 1935, column: 13)
!3434 = !DILocation(line: 1938, column: 15, scope: !3433)
!3435 = !DILocation(line: 0, scope: !3411)
!3436 = !DILocation(line: 1943, column: 12, scope: !3405)
!3437 = !DILocation(line: 1889, column: 42, scope: !3406)
!3438 = !DILocation(line: 1889, column: 21, scope: !3406)
!3439 = distinct !{!3439, !3401, !3440, !2284, !2285}
!3440 = !DILocation(line: 1944, column: 9, scope: !3402)
!3441 = !DILocation(line: 1945, column: 10, scope: !3403)
!3442 = !DILocation(line: 1887, column: 55, scope: !3397)
!3443 = distinct !{!3443, !3400, !3444, !2284, !2285}
!3444 = !DILocation(line: 1946, column: 7, scope: !3398)
!3445 = !DILocation(line: 1954, column: 39, scope: !2184)
!3446 = !DILocation(line: 0, scope: !2184)
!3447 = !DILocation(line: 1955, column: 38, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !2184, file: !551, line: 1955, column: 11)
!3449 = !DILocation(line: 1955, column: 11, scope: !3448)
!3450 = !DILocation(line: 1955, column: 49, scope: !3448)
!3451 = !DILocation(line: 1955, column: 11, scope: !2184)
!3452 = !DILocation(line: 1957, column: 13, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3448, file: !551, line: 1956, column: 9)
!3454 = !DILocation(line: 1958, column: 17, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3453, file: !551, line: 1958, column: 15)
!3456 = !DILocation(line: 1958, column: 15, scope: !3453)
!3457 = !DILocation(line: 1960, column: 35, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !551, line: 1960, column: 11)
!3459 = distinct !DILexicalBlock(scope: !3453, file: !551, line: 1960, column: 11)
!3460 = !DILocation(line: 1960, column: 23, scope: !3458)
!3461 = !DILocation(line: 1960, column: 11, scope: !3459)
!3462 = !DILocation(line: 1962, column: 52, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3458, file: !551, line: 1961, column: 11)
!3464 = !DILocalVariable(name: "quantum", arg: 1, scope: !3465, file: !915, line: 395, type: !2313)
!3465 = distinct !DISubprogram(name: "ScaleQuantumToLong", scope: !915, file: !915, line: 395, type: !3466, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!5, !2313}
!3468 = !{!3464}
!3469 = !DILocation(line: 0, scope: !3465, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 1962, column: 33, scope: !3463)
!3471 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3470)
!3472 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3470)
!3473 = !DILocation(line: 1962, column: 15, scope: !3463)
!3474 = !DILocation(line: 1962, column: 17, scope: !3463)
!3475 = !DILocation(line: 1963, column: 52, scope: !3463)
!3476 = !DILocation(line: 0, scope: !3465, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 1963, column: 33, scope: !3463)
!3478 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3477)
!3479 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3477)
!3480 = !DILocation(line: 1963, column: 15, scope: !3463)
!3481 = !DILocation(line: 1963, column: 17, scope: !3463)
!3482 = !DILocation(line: 1964, column: 52, scope: !3463)
!3483 = !DILocation(line: 0, scope: !3465, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 1964, column: 33, scope: !3463)
!3485 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3484)
!3486 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3484)
!3487 = !DILocation(line: 1964, column: 15, scope: !3463)
!3488 = !DILocation(line: 1964, column: 17, scope: !3463)
!3489 = !DILocation(line: 1965, column: 14, scope: !3463)
!3490 = !DILocation(line: 1960, column: 59, scope: !3458)
!3491 = distinct !{!3491, !3461, !3492, !2284, !2285}
!3492 = !DILocation(line: 1966, column: 11, scope: !3459)
!3493 = !DILocation(line: 1969, column: 38, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !2184, file: !551, line: 1969, column: 11)
!3495 = !DILocation(line: 1969, column: 11, scope: !3494)
!3496 = !DILocation(line: 1969, column: 50, scope: !3494)
!3497 = !DILocation(line: 1969, column: 11, scope: !2184)
!3498 = !DILocation(line: 1971, column: 13, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3494, file: !551, line: 1970, column: 9)
!3500 = !DILocation(line: 1972, column: 17, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3499, file: !551, line: 1972, column: 15)
!3502 = !DILocation(line: 1972, column: 15, scope: !3499)
!3503 = !DILocation(line: 1974, column: 35, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !551, line: 1974, column: 11)
!3505 = distinct !DILexicalBlock(scope: !3499, file: !551, line: 1974, column: 11)
!3506 = !DILocation(line: 1974, column: 23, scope: !3504)
!3507 = !DILocation(line: 1974, column: 11, scope: !3505)
!3508 = !DILocation(line: 1976, column: 52, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3504, file: !551, line: 1975, column: 11)
!3510 = !DILocation(line: 0, scope: !3465, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 1976, column: 33, scope: !3509)
!3512 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3511)
!3513 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3511)
!3514 = !DILocation(line: 1976, column: 15, scope: !3509)
!3515 = !DILocation(line: 1976, column: 17, scope: !3509)
!3516 = !DILocation(line: 1977, column: 52, scope: !3509)
!3517 = !DILocation(line: 0, scope: !3465, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 1977, column: 33, scope: !3509)
!3519 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3518)
!3520 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3518)
!3521 = !DILocation(line: 1977, column: 15, scope: !3509)
!3522 = !DILocation(line: 1977, column: 17, scope: !3509)
!3523 = !DILocation(line: 1978, column: 52, scope: !3509)
!3524 = !DILocation(line: 0, scope: !3465, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1978, column: 33, scope: !3509)
!3526 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3525)
!3527 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3525)
!3528 = !DILocation(line: 1978, column: 15, scope: !3509)
!3529 = !DILocation(line: 1978, column: 17, scope: !3509)
!3530 = !DILocation(line: 1980, column: 15, scope: !3509)
!3531 = !DILocation(line: 1979, column: 75, scope: !3509)
!3532 = !DILocation(line: 0, scope: !3465, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 1979, column: 33, scope: !3509)
!3534 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3533)
!3535 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3533)
!3536 = !DILocation(line: 1979, column: 15, scope: !3509)
!3537 = !DILocation(line: 1979, column: 17, scope: !3509)
!3538 = !DILocation(line: 1981, column: 14, scope: !3509)
!3539 = !DILocation(line: 1974, column: 59, scope: !3504)
!3540 = distinct !{!3540, !3507, !3541, !2284, !2285}
!3541 = !DILocation(line: 1982, column: 11, scope: !3505)
!3542 = !DILocation(line: 1985, column: 38, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !2184, file: !551, line: 1985, column: 11)
!3544 = !DILocation(line: 1985, column: 11, scope: !3543)
!3545 = !DILocation(line: 1985, column: 50, scope: !3543)
!3546 = !DILocation(line: 1985, column: 11, scope: !2184)
!3547 = !DILocation(line: 1987, column: 13, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3543, file: !551, line: 1986, column: 9)
!3549 = !DILocation(line: 1988, column: 17, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3548, file: !551, line: 1988, column: 15)
!3551 = !DILocation(line: 1988, column: 15, scope: !3548)
!3552 = !DILocation(line: 1990, column: 35, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !551, line: 1990, column: 11)
!3554 = distinct !DILexicalBlock(scope: !3548, file: !551, line: 1990, column: 11)
!3555 = !DILocation(line: 1990, column: 23, scope: !3553)
!3556 = !DILocation(line: 1990, column: 11, scope: !3554)
!3557 = !DILocation(line: 1992, column: 52, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3553, file: !551, line: 1991, column: 11)
!3559 = !DILocation(line: 0, scope: !3465, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 1992, column: 33, scope: !3558)
!3561 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3560)
!3562 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3560)
!3563 = !DILocation(line: 1992, column: 15, scope: !3558)
!3564 = !DILocation(line: 1992, column: 17, scope: !3558)
!3565 = !DILocation(line: 1993, column: 52, scope: !3558)
!3566 = !DILocation(line: 0, scope: !3465, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 1993, column: 33, scope: !3558)
!3568 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3567)
!3569 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3567)
!3570 = !DILocation(line: 1993, column: 15, scope: !3558)
!3571 = !DILocation(line: 1993, column: 17, scope: !3558)
!3572 = !DILocation(line: 1994, column: 52, scope: !3558)
!3573 = !DILocation(line: 0, scope: !3465, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 1994, column: 33, scope: !3558)
!3575 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3574)
!3576 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3574)
!3577 = !DILocation(line: 1994, column: 15, scope: !3558)
!3578 = !DILocation(line: 1994, column: 17, scope: !3558)
!3579 = !DILocation(line: 1995, column: 15, scope: !3558)
!3580 = !DILocation(line: 1995, column: 17, scope: !3558)
!3581 = !DILocation(line: 1996, column: 14, scope: !3558)
!3582 = !DILocation(line: 1990, column: 59, scope: !3553)
!3583 = distinct !{!3583, !3556, !3584, !2284, !2285}
!3584 = !DILocation(line: 1997, column: 11, scope: !3554)
!3585 = !DILocation(line: 2000, column: 38, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !2184, file: !551, line: 2000, column: 11)
!3587 = !DILocation(line: 2000, column: 11, scope: !3586)
!3588 = !DILocation(line: 2000, column: 47, scope: !3586)
!3589 = !DILocation(line: 2000, column: 11, scope: !2184)
!3590 = !DILocation(line: 2002, column: 13, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !551, line: 2001, column: 9)
!3592 = !DILocation(line: 2003, column: 17, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3591, file: !551, line: 2003, column: 15)
!3594 = !DILocation(line: 2003, column: 15, scope: !3591)
!3595 = !DILocation(line: 2005, column: 35, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !551, line: 2005, column: 11)
!3597 = distinct !DILexicalBlock(scope: !3591, file: !551, line: 2005, column: 11)
!3598 = !DILocation(line: 2005, column: 23, scope: !3596)
!3599 = !DILocation(line: 2005, column: 11, scope: !3597)
!3600 = !DILocation(line: 2007, column: 67, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3596, file: !551, line: 2006, column: 11)
!3602 = !DILocation(line: 0, scope: !2493, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 2007, column: 52, scope: !3601)
!3604 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !3603)
!3605 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !3603)
!3606 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !3603)
!3607 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !3603)
!3608 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !3603)
!3609 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !3603)
!3610 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !3603)
!3611 = !DILocation(line: 0, scope: !3465, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 2007, column: 33, scope: !3601)
!3613 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3612)
!3614 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3612)
!3615 = !DILocation(line: 2007, column: 15, scope: !3601)
!3616 = !DILocation(line: 2007, column: 17, scope: !3601)
!3617 = !DILocation(line: 2008, column: 14, scope: !3601)
!3618 = !DILocation(line: 2005, column: 59, scope: !3596)
!3619 = distinct !{!3619, !3599, !3620, !2284, !2285}
!3620 = !DILocation(line: 2009, column: 11, scope: !3597)
!3621 = !DILocation(line: 2012, column: 38, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !2184, file: !551, line: 2012, column: 11)
!3623 = !DILocation(line: 2012, column: 11, scope: !3622)
!3624 = !DILocation(line: 2012, column: 49, scope: !3622)
!3625 = !DILocation(line: 2012, column: 11, scope: !2184)
!3626 = !DILocation(line: 2014, column: 13, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3622, file: !551, line: 2013, column: 9)
!3628 = !DILocation(line: 2015, column: 17, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3627, file: !551, line: 2015, column: 15)
!3630 = !DILocation(line: 2015, column: 15, scope: !3627)
!3631 = !DILocation(line: 2017, column: 35, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !551, line: 2017, column: 11)
!3633 = distinct !DILexicalBlock(scope: !3627, file: !551, line: 2017, column: 11)
!3634 = !DILocation(line: 2017, column: 23, scope: !3632)
!3635 = !DILocation(line: 2017, column: 11, scope: !3633)
!3636 = !DILocation(line: 2019, column: 52, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3632, file: !551, line: 2018, column: 11)
!3638 = !DILocation(line: 0, scope: !3465, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 2019, column: 33, scope: !3637)
!3640 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3639)
!3641 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3639)
!3642 = !DILocation(line: 2019, column: 15, scope: !3637)
!3643 = !DILocation(line: 2019, column: 17, scope: !3637)
!3644 = !DILocation(line: 2020, column: 52, scope: !3637)
!3645 = !DILocation(line: 0, scope: !3465, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 2020, column: 33, scope: !3637)
!3647 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3646)
!3648 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3646)
!3649 = !DILocation(line: 2020, column: 15, scope: !3637)
!3650 = !DILocation(line: 2020, column: 17, scope: !3637)
!3651 = !DILocation(line: 2021, column: 52, scope: !3637)
!3652 = !DILocation(line: 0, scope: !3465, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 2021, column: 33, scope: !3637)
!3654 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3653)
!3655 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3653)
!3656 = !DILocation(line: 2021, column: 15, scope: !3637)
!3657 = !DILocation(line: 2021, column: 17, scope: !3637)
!3658 = !DILocation(line: 2022, column: 14, scope: !3637)
!3659 = !DILocation(line: 2017, column: 59, scope: !3632)
!3660 = distinct !{!3660, !3635, !3661, !2284, !2285}
!3661 = !DILocation(line: 2023, column: 11, scope: !3633)
!3662 = !DILocation(line: 2026, column: 38, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !2184, file: !551, line: 2026, column: 11)
!3664 = !DILocation(line: 2026, column: 11, scope: !3663)
!3665 = !DILocation(line: 2026, column: 50, scope: !3663)
!3666 = !DILocation(line: 2026, column: 11, scope: !2184)
!3667 = !DILocation(line: 2028, column: 13, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3663, file: !551, line: 2027, column: 9)
!3669 = !DILocation(line: 2029, column: 17, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3668, file: !551, line: 2029, column: 15)
!3671 = !DILocation(line: 2029, column: 15, scope: !3668)
!3672 = !DILocation(line: 2031, column: 35, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !551, line: 2031, column: 11)
!3674 = distinct !DILexicalBlock(scope: !3668, file: !551, line: 2031, column: 11)
!3675 = !DILocation(line: 2031, column: 23, scope: !3673)
!3676 = !DILocation(line: 2031, column: 11, scope: !3674)
!3677 = !DILocation(line: 2033, column: 52, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3673, file: !551, line: 2032, column: 11)
!3679 = !DILocation(line: 0, scope: !3465, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 2033, column: 33, scope: !3678)
!3681 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3680)
!3682 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3680)
!3683 = !DILocation(line: 2033, column: 15, scope: !3678)
!3684 = !DILocation(line: 2033, column: 17, scope: !3678)
!3685 = !DILocation(line: 2034, column: 52, scope: !3678)
!3686 = !DILocation(line: 0, scope: !3465, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 2034, column: 33, scope: !3678)
!3688 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3687)
!3689 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3687)
!3690 = !DILocation(line: 2034, column: 15, scope: !3678)
!3691 = !DILocation(line: 2034, column: 17, scope: !3678)
!3692 = !DILocation(line: 2035, column: 52, scope: !3678)
!3693 = !DILocation(line: 0, scope: !3465, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 2035, column: 33, scope: !3678)
!3695 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3694)
!3696 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3694)
!3697 = !DILocation(line: 2035, column: 15, scope: !3678)
!3698 = !DILocation(line: 2035, column: 17, scope: !3678)
!3699 = !DILocation(line: 2037, column: 16, scope: !3678)
!3700 = !DILocation(line: 0, scope: !3465, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 2036, column: 33, scope: !3678)
!3702 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3701)
!3703 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3701)
!3704 = !DILocation(line: 2036, column: 15, scope: !3678)
!3705 = !DILocation(line: 2036, column: 17, scope: !3678)
!3706 = !DILocation(line: 2038, column: 14, scope: !3678)
!3707 = !DILocation(line: 2031, column: 59, scope: !3673)
!3708 = distinct !{!3708, !3676, !3709, !2284, !2285}
!3709 = !DILocation(line: 2039, column: 11, scope: !3674)
!3710 = !DILocation(line: 2042, column: 38, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !2184, file: !551, line: 2042, column: 11)
!3712 = !DILocation(line: 2042, column: 11, scope: !3711)
!3713 = !DILocation(line: 2042, column: 50, scope: !3711)
!3714 = !DILocation(line: 2042, column: 11, scope: !2184)
!3715 = !DILocation(line: 2045, column: 15, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3711, file: !551, line: 2043, column: 9)
!3717 = !DILocation(line: 2047, column: 35, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !551, line: 2047, column: 11)
!3719 = distinct !DILexicalBlock(scope: !3716, file: !551, line: 2047, column: 11)
!3720 = !DILocation(line: 2047, column: 23, scope: !3718)
!3721 = !DILocation(line: 2047, column: 11, scope: !3719)
!3722 = !DILocation(line: 2049, column: 52, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3718, file: !551, line: 2048, column: 11)
!3724 = !DILocation(line: 0, scope: !3465, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 2049, column: 33, scope: !3723)
!3726 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3725)
!3727 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3725)
!3728 = !DILocation(line: 2049, column: 15, scope: !3723)
!3729 = !DILocation(line: 2049, column: 17, scope: !3723)
!3730 = !DILocation(line: 2050, column: 52, scope: !3723)
!3731 = !DILocation(line: 0, scope: !3465, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 2050, column: 33, scope: !3723)
!3733 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3732)
!3734 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3732)
!3735 = !DILocation(line: 2050, column: 15, scope: !3723)
!3736 = !DILocation(line: 2050, column: 17, scope: !3723)
!3737 = !DILocation(line: 2051, column: 52, scope: !3723)
!3738 = !DILocation(line: 0, scope: !3465, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 2051, column: 33, scope: !3723)
!3740 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3739)
!3741 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3739)
!3742 = !DILocation(line: 2051, column: 15, scope: !3723)
!3743 = !DILocation(line: 2051, column: 17, scope: !3723)
!3744 = !DILocation(line: 2052, column: 15, scope: !3723)
!3745 = !DILocation(line: 2052, column: 17, scope: !3723)
!3746 = !DILocation(line: 2053, column: 14, scope: !3723)
!3747 = !DILocation(line: 2047, column: 59, scope: !3718)
!3748 = distinct !{!3748, !3721, !3749, !2284, !2285}
!3749 = !DILocation(line: 2054, column: 11, scope: !3719)
!3750 = !DILocation(line: 2058, column: 11, scope: !2184)
!3751 = !DILocation(line: 2060, column: 15, scope: !2184)
!3752 = !DILocation(line: 2061, column: 31, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !551, line: 2061, column: 7)
!3754 = distinct !DILexicalBlock(scope: !2184, file: !551, line: 2061, column: 7)
!3755 = !DILocation(line: 2061, column: 19, scope: !3753)
!3756 = !DILocation(line: 2061, column: 7, scope: !3754)
!3757 = !DILocation(line: 2063, column: 9, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !551, line: 2063, column: 9)
!3759 = distinct !DILexicalBlock(scope: !3753, file: !551, line: 2062, column: 7)
!3760 = !DILocation(line: 2065, column: 13, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !551, line: 2064, column: 9)
!3762 = distinct !DILexicalBlock(scope: !3758, file: !551, line: 2063, column: 9)
!3763 = !DILocation(line: 2066, column: 19, scope: !3761)
!3764 = !DILocation(line: 2066, column: 11, scope: !3761)
!3765 = !DILocation(line: 2071, column: 52, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !551, line: 2070, column: 13)
!3767 = distinct !DILexicalBlock(scope: !3761, file: !551, line: 2067, column: 11)
!3768 = !DILocation(line: 0, scope: !3465, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 2071, column: 33, scope: !3766)
!3770 = !DILocation(line: 2072, column: 15, scope: !3766)
!3771 = !DILocation(line: 2077, column: 52, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3767, file: !551, line: 2076, column: 13)
!3773 = !DILocation(line: 0, scope: !3465, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 2077, column: 33, scope: !3772)
!3775 = !DILocation(line: 2078, column: 15, scope: !3772)
!3776 = !DILocation(line: 2083, column: 52, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3767, file: !551, line: 2082, column: 13)
!3778 = !DILocation(line: 0, scope: !3465, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 2083, column: 33, scope: !3777)
!3780 = !DILocation(line: 2084, column: 15, scope: !3777)
!3781 = !DILocation(line: 2089, column: 17, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3767, file: !551, line: 2087, column: 13)
!3783 = !DILocation(line: 2088, column: 75, scope: !3782)
!3784 = !DILocation(line: 0, scope: !3465, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 2088, column: 33, scope: !3782)
!3786 = !DILocation(line: 2090, column: 15, scope: !3782)
!3787 = !DILocation(line: 2094, column: 52, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3767, file: !551, line: 2093, column: 13)
!3789 = !DILocation(line: 0, scope: !3465, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 2094, column: 33, scope: !3788)
!3791 = !DILocation(line: 2095, column: 15, scope: !3788)
!3792 = !DILocation(line: 2099, column: 26, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !551, line: 2099, column: 19)
!3794 = distinct !DILexicalBlock(scope: !3767, file: !551, line: 2098, column: 13)
!3795 = !DILocation(line: 2099, column: 37, scope: !3793)
!3796 = !DILocation(line: 2099, column: 19, scope: !3794)
!3797 = !DILocation(line: 2100, column: 54, scope: !3793)
!3798 = !DILocation(line: 2106, column: 67, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3767, file: !551, line: 2105, column: 13)
!3800 = !DILocation(line: 0, scope: !2493, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 2106, column: 52, scope: !3799)
!3802 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !3801)
!3803 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !3801)
!3804 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !3801)
!3805 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !3801)
!3806 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !3801)
!3807 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !3801)
!3808 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !3801)
!3809 = !DILocation(line: 0, scope: !3767)
!3810 = !DILocation(line: 2112, column: 12, scope: !3761)
!3811 = !DILocation(line: 2063, column: 42, scope: !3762)
!3812 = !DILocation(line: 2063, column: 21, scope: !3762)
!3813 = distinct !{!3813, !3757, !3814, !2284, !2285}
!3814 = !DILocation(line: 2113, column: 9, scope: !3758)
!3815 = !DILocation(line: 2114, column: 10, scope: !3759)
!3816 = !DILocation(line: 2061, column: 55, scope: !3753)
!3817 = distinct !{!3817, !3756, !3818, !2284, !2285}
!3818 = !DILocation(line: 2115, column: 7, scope: !3754)
!3819 = !DILocation(line: 2123, column: 33, scope: !2186)
!3820 = !DILocation(line: 0, scope: !2186)
!3821 = !DILocation(line: 2124, column: 38, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !2186, file: !551, line: 2124, column: 11)
!3823 = !DILocation(line: 2124, column: 11, scope: !3822)
!3824 = !DILocation(line: 2124, column: 49, scope: !3822)
!3825 = !DILocation(line: 2124, column: 11, scope: !2186)
!3826 = !DILocation(line: 2126, column: 13, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3822, file: !551, line: 2125, column: 9)
!3828 = !DILocation(line: 2127, column: 17, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3827, file: !551, line: 2127, column: 15)
!3830 = !DILocation(line: 2127, column: 15, scope: !3827)
!3831 = !DILocation(line: 2129, column: 35, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !551, line: 2129, column: 11)
!3833 = distinct !DILexicalBlock(scope: !3827, file: !551, line: 2129, column: 11)
!3834 = !DILocation(line: 2129, column: 23, scope: !3832)
!3835 = !DILocation(line: 2129, column: 11, scope: !3833)
!3836 = !DILocation(line: 2131, column: 37, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3832, file: !551, line: 2130, column: 11)
!3838 = !DILocation(line: 0, scope: !3465, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 2131, column: 18, scope: !3837)
!3840 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3839)
!3841 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3839)
!3842 = !DILocation(line: 2131, column: 15, scope: !3837)
!3843 = !DILocation(line: 2131, column: 17, scope: !3837)
!3844 = !DILocation(line: 2132, column: 37, scope: !3837)
!3845 = !DILocation(line: 0, scope: !3465, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 2132, column: 18, scope: !3837)
!3847 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3846)
!3848 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3846)
!3849 = !DILocation(line: 2132, column: 15, scope: !3837)
!3850 = !DILocation(line: 2132, column: 17, scope: !3837)
!3851 = !DILocation(line: 2133, column: 37, scope: !3837)
!3852 = !DILocation(line: 0, scope: !3465, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 2133, column: 18, scope: !3837)
!3854 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3853)
!3855 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3853)
!3856 = !DILocation(line: 2133, column: 15, scope: !3837)
!3857 = !DILocation(line: 2133, column: 17, scope: !3837)
!3858 = !DILocation(line: 2134, column: 14, scope: !3837)
!3859 = !DILocation(line: 2129, column: 59, scope: !3832)
!3860 = distinct !{!3860, !3835, !3861, !2284, !2285}
!3861 = !DILocation(line: 2135, column: 11, scope: !3833)
!3862 = !DILocation(line: 2138, column: 38, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !2186, file: !551, line: 2138, column: 11)
!3864 = !DILocation(line: 2138, column: 11, scope: !3863)
!3865 = !DILocation(line: 2138, column: 50, scope: !3863)
!3866 = !DILocation(line: 2138, column: 11, scope: !2186)
!3867 = !DILocation(line: 2140, column: 13, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !551, line: 2139, column: 9)
!3869 = !DILocation(line: 2141, column: 17, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3868, file: !551, line: 2141, column: 15)
!3871 = !DILocation(line: 2141, column: 15, scope: !3868)
!3872 = !DILocation(line: 2143, column: 35, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !551, line: 2143, column: 11)
!3874 = distinct !DILexicalBlock(scope: !3868, file: !551, line: 2143, column: 11)
!3875 = !DILocation(line: 2143, column: 23, scope: !3873)
!3876 = !DILocation(line: 2143, column: 11, scope: !3874)
!3877 = !DILocation(line: 2145, column: 37, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3873, file: !551, line: 2144, column: 11)
!3879 = !DILocation(line: 0, scope: !3465, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 2145, column: 18, scope: !3878)
!3881 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3880)
!3882 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3880)
!3883 = !DILocation(line: 2145, column: 15, scope: !3878)
!3884 = !DILocation(line: 2145, column: 17, scope: !3878)
!3885 = !DILocation(line: 2146, column: 37, scope: !3878)
!3886 = !DILocation(line: 0, scope: !3465, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 2146, column: 18, scope: !3878)
!3888 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3887)
!3889 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3887)
!3890 = !DILocation(line: 2146, column: 15, scope: !3878)
!3891 = !DILocation(line: 2146, column: 17, scope: !3878)
!3892 = !DILocation(line: 2147, column: 37, scope: !3878)
!3893 = !DILocation(line: 0, scope: !3465, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 2147, column: 18, scope: !3878)
!3895 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3894)
!3896 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3894)
!3897 = !DILocation(line: 2147, column: 15, scope: !3878)
!3898 = !DILocation(line: 2147, column: 17, scope: !3878)
!3899 = !DILocation(line: 2148, column: 48, scope: !3878)
!3900 = !DILocation(line: 0, scope: !3465, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 2148, column: 18, scope: !3878)
!3902 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3901)
!3903 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3901)
!3904 = !DILocation(line: 2148, column: 15, scope: !3878)
!3905 = !DILocation(line: 2148, column: 17, scope: !3878)
!3906 = !DILocation(line: 2149, column: 14, scope: !3878)
!3907 = !DILocation(line: 2143, column: 59, scope: !3873)
!3908 = distinct !{!3908, !3876, !3909, !2284, !2285}
!3909 = !DILocation(line: 2150, column: 11, scope: !3874)
!3910 = !DILocation(line: 2153, column: 38, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !2186, file: !551, line: 2153, column: 11)
!3912 = !DILocation(line: 2153, column: 11, scope: !3911)
!3913 = !DILocation(line: 2153, column: 50, scope: !3911)
!3914 = !DILocation(line: 2153, column: 11, scope: !2186)
!3915 = !DILocation(line: 2155, column: 13, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3911, file: !551, line: 2154, column: 9)
!3917 = !DILocation(line: 2156, column: 17, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3916, file: !551, line: 2156, column: 15)
!3919 = !DILocation(line: 2156, column: 15, scope: !3916)
!3920 = !DILocation(line: 2158, column: 35, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !551, line: 2158, column: 11)
!3922 = distinct !DILexicalBlock(scope: !3916, file: !551, line: 2158, column: 11)
!3923 = !DILocation(line: 2158, column: 23, scope: !3921)
!3924 = !DILocation(line: 2158, column: 11, scope: !3922)
!3925 = !DILocation(line: 2160, column: 37, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3921, file: !551, line: 2159, column: 11)
!3927 = !DILocation(line: 0, scope: !3465, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 2160, column: 18, scope: !3926)
!3929 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3928)
!3930 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3928)
!3931 = !DILocation(line: 2160, column: 15, scope: !3926)
!3932 = !DILocation(line: 2160, column: 17, scope: !3926)
!3933 = !DILocation(line: 2161, column: 37, scope: !3926)
!3934 = !DILocation(line: 0, scope: !3465, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 2161, column: 18, scope: !3926)
!3936 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3935)
!3937 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3935)
!3938 = !DILocation(line: 2161, column: 15, scope: !3926)
!3939 = !DILocation(line: 2161, column: 17, scope: !3926)
!3940 = !DILocation(line: 2162, column: 37, scope: !3926)
!3941 = !DILocation(line: 0, scope: !3465, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 2162, column: 18, scope: !3926)
!3943 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3942)
!3944 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3942)
!3945 = !DILocation(line: 2162, column: 15, scope: !3926)
!3946 = !DILocation(line: 2162, column: 17, scope: !3926)
!3947 = !DILocation(line: 2163, column: 15, scope: !3926)
!3948 = !DILocation(line: 2163, column: 17, scope: !3926)
!3949 = !DILocation(line: 2164, column: 14, scope: !3926)
!3950 = !DILocation(line: 2158, column: 59, scope: !3921)
!3951 = distinct !{!3951, !3924, !3952, !2284, !2285}
!3952 = !DILocation(line: 2165, column: 11, scope: !3922)
!3953 = !DILocation(line: 2168, column: 38, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !2186, file: !551, line: 2168, column: 11)
!3955 = !DILocation(line: 2168, column: 11, scope: !3954)
!3956 = !DILocation(line: 2168, column: 47, scope: !3954)
!3957 = !DILocation(line: 2168, column: 11, scope: !2186)
!3958 = !DILocation(line: 2170, column: 13, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3954, file: !551, line: 2169, column: 9)
!3960 = !DILocation(line: 2171, column: 17, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3959, file: !551, line: 2171, column: 15)
!3962 = !DILocation(line: 2171, column: 15, scope: !3959)
!3963 = !DILocation(line: 2173, column: 35, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !551, line: 2173, column: 11)
!3965 = distinct !DILexicalBlock(scope: !3959, file: !551, line: 2173, column: 11)
!3966 = !DILocation(line: 2173, column: 23, scope: !3964)
!3967 = !DILocation(line: 2173, column: 11, scope: !3965)
!3968 = !DILocation(line: 2175, column: 52, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3964, file: !551, line: 2174, column: 11)
!3970 = !DILocation(line: 0, scope: !2493, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 2175, column: 37, scope: !3969)
!3972 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !3971)
!3973 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !3971)
!3974 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !3971)
!3975 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !3971)
!3976 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !3971)
!3977 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !3971)
!3978 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !3971)
!3979 = !DILocation(line: 0, scope: !3465, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 2175, column: 18, scope: !3969)
!3981 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !3980)
!3982 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !3980)
!3983 = !DILocation(line: 2175, column: 15, scope: !3969)
!3984 = !DILocation(line: 2175, column: 17, scope: !3969)
!3985 = !DILocation(line: 2176, column: 14, scope: !3969)
!3986 = !DILocation(line: 2173, column: 59, scope: !3964)
!3987 = distinct !{!3987, !3967, !3988, !2284, !2285}
!3988 = !DILocation(line: 2177, column: 11, scope: !3965)
!3989 = !DILocation(line: 2180, column: 38, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !2186, file: !551, line: 2180, column: 11)
!3991 = !DILocation(line: 2180, column: 11, scope: !3990)
!3992 = !DILocation(line: 2180, column: 49, scope: !3990)
!3993 = !DILocation(line: 2180, column: 11, scope: !2186)
!3994 = !DILocation(line: 2182, column: 13, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3990, file: !551, line: 2181, column: 9)
!3996 = !DILocation(line: 2183, column: 17, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3995, file: !551, line: 2183, column: 15)
!3998 = !DILocation(line: 2183, column: 15, scope: !3995)
!3999 = !DILocation(line: 2185, column: 35, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !551, line: 2185, column: 11)
!4001 = distinct !DILexicalBlock(scope: !3995, file: !551, line: 2185, column: 11)
!4002 = !DILocation(line: 2185, column: 23, scope: !4000)
!4003 = !DILocation(line: 2185, column: 11, scope: !4001)
!4004 = !DILocation(line: 2187, column: 37, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4000, file: !551, line: 2186, column: 11)
!4006 = !DILocation(line: 0, scope: !3465, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 2187, column: 18, scope: !4005)
!4008 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4007)
!4009 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4007)
!4010 = !DILocation(line: 2187, column: 15, scope: !4005)
!4011 = !DILocation(line: 2187, column: 17, scope: !4005)
!4012 = !DILocation(line: 2188, column: 37, scope: !4005)
!4013 = !DILocation(line: 0, scope: !3465, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 2188, column: 18, scope: !4005)
!4015 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4014)
!4016 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4014)
!4017 = !DILocation(line: 2188, column: 15, scope: !4005)
!4018 = !DILocation(line: 2188, column: 17, scope: !4005)
!4019 = !DILocation(line: 2189, column: 37, scope: !4005)
!4020 = !DILocation(line: 0, scope: !3465, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 2189, column: 18, scope: !4005)
!4022 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4021)
!4023 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4021)
!4024 = !DILocation(line: 2189, column: 15, scope: !4005)
!4025 = !DILocation(line: 2189, column: 17, scope: !4005)
!4026 = !DILocation(line: 2190, column: 14, scope: !4005)
!4027 = !DILocation(line: 2185, column: 59, scope: !4000)
!4028 = distinct !{!4028, !4003, !4029, !2284, !2285}
!4029 = !DILocation(line: 2191, column: 11, scope: !4001)
!4030 = !DILocation(line: 2194, column: 38, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !2186, file: !551, line: 2194, column: 11)
!4032 = !DILocation(line: 2194, column: 11, scope: !4031)
!4033 = !DILocation(line: 2194, column: 50, scope: !4031)
!4034 = !DILocation(line: 2194, column: 11, scope: !2186)
!4035 = !DILocation(line: 2196, column: 13, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4031, file: !551, line: 2195, column: 9)
!4037 = !DILocation(line: 2197, column: 17, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4036, file: !551, line: 2197, column: 15)
!4039 = !DILocation(line: 2197, column: 15, scope: !4036)
!4040 = !DILocation(line: 2199, column: 35, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !551, line: 2199, column: 11)
!4042 = distinct !DILexicalBlock(scope: !4036, file: !551, line: 2199, column: 11)
!4043 = !DILocation(line: 2199, column: 23, scope: !4041)
!4044 = !DILocation(line: 2199, column: 11, scope: !4042)
!4045 = !DILocation(line: 2201, column: 37, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4041, file: !551, line: 2200, column: 11)
!4047 = !DILocation(line: 0, scope: !3465, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 2201, column: 18, scope: !4046)
!4049 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4048)
!4050 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4048)
!4051 = !DILocation(line: 2201, column: 15, scope: !4046)
!4052 = !DILocation(line: 2201, column: 17, scope: !4046)
!4053 = !DILocation(line: 2202, column: 37, scope: !4046)
!4054 = !DILocation(line: 0, scope: !3465, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 2202, column: 18, scope: !4046)
!4056 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4055)
!4057 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4055)
!4058 = !DILocation(line: 2202, column: 15, scope: !4046)
!4059 = !DILocation(line: 2202, column: 17, scope: !4046)
!4060 = !DILocation(line: 2203, column: 37, scope: !4046)
!4061 = !DILocation(line: 0, scope: !3465, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 2203, column: 18, scope: !4046)
!4063 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4062)
!4064 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4062)
!4065 = !DILocation(line: 2203, column: 15, scope: !4046)
!4066 = !DILocation(line: 2203, column: 17, scope: !4046)
!4067 = !DILocation(line: 2204, column: 48, scope: !4046)
!4068 = !DILocation(line: 0, scope: !3465, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 2204, column: 18, scope: !4046)
!4070 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4069)
!4071 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4069)
!4072 = !DILocation(line: 2204, column: 15, scope: !4046)
!4073 = !DILocation(line: 2204, column: 17, scope: !4046)
!4074 = !DILocation(line: 2205, column: 14, scope: !4046)
!4075 = !DILocation(line: 2199, column: 59, scope: !4041)
!4076 = distinct !{!4076, !4044, !4077, !2284, !2285}
!4077 = !DILocation(line: 2206, column: 11, scope: !4042)
!4078 = !DILocation(line: 2209, column: 38, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !2186, file: !551, line: 2209, column: 11)
!4080 = !DILocation(line: 2209, column: 11, scope: !4079)
!4081 = !DILocation(line: 2209, column: 50, scope: !4079)
!4082 = !DILocation(line: 2209, column: 11, scope: !2186)
!4083 = !DILocation(line: 2212, column: 15, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4079, file: !551, line: 2210, column: 9)
!4085 = !DILocation(line: 2214, column: 35, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !551, line: 2214, column: 11)
!4087 = distinct !DILexicalBlock(scope: !4084, file: !551, line: 2214, column: 11)
!4088 = !DILocation(line: 2214, column: 23, scope: !4086)
!4089 = !DILocation(line: 2214, column: 11, scope: !4087)
!4090 = !DILocation(line: 2216, column: 37, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4086, file: !551, line: 2215, column: 11)
!4092 = !DILocation(line: 0, scope: !3465, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 2216, column: 18, scope: !4091)
!4094 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4093)
!4095 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4093)
!4096 = !DILocation(line: 2216, column: 15, scope: !4091)
!4097 = !DILocation(line: 2216, column: 17, scope: !4091)
!4098 = !DILocation(line: 2217, column: 37, scope: !4091)
!4099 = !DILocation(line: 0, scope: !3465, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 2217, column: 18, scope: !4091)
!4101 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4100)
!4102 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4100)
!4103 = !DILocation(line: 2217, column: 15, scope: !4091)
!4104 = !DILocation(line: 2217, column: 17, scope: !4091)
!4105 = !DILocation(line: 2218, column: 37, scope: !4091)
!4106 = !DILocation(line: 0, scope: !3465, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 2218, column: 18, scope: !4091)
!4108 = !DILocation(line: 398, column: 34, scope: !3465, inlinedAt: !4107)
!4109 = !DILocation(line: 398, column: 33, scope: !3465, inlinedAt: !4107)
!4110 = !DILocation(line: 2218, column: 15, scope: !4091)
!4111 = !DILocation(line: 2218, column: 17, scope: !4091)
!4112 = !DILocation(line: 2219, column: 15, scope: !4091)
!4113 = !DILocation(line: 2219, column: 17, scope: !4091)
!4114 = !DILocation(line: 2220, column: 14, scope: !4091)
!4115 = !DILocation(line: 2214, column: 59, scope: !4086)
!4116 = distinct !{!4116, !4089, !4117, !2284, !2285}
!4117 = !DILocation(line: 2221, column: 11, scope: !4087)
!4118 = !DILocation(line: 2225, column: 11, scope: !2186)
!4119 = !DILocation(line: 2227, column: 15, scope: !2186)
!4120 = !DILocation(line: 2228, column: 31, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !551, line: 2228, column: 7)
!4122 = distinct !DILexicalBlock(scope: !2186, file: !551, line: 2228, column: 7)
!4123 = !DILocation(line: 2228, column: 19, scope: !4121)
!4124 = !DILocation(line: 2228, column: 7, scope: !4122)
!4125 = !DILocation(line: 2230, column: 9, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !551, line: 2230, column: 9)
!4127 = distinct !DILexicalBlock(scope: !4121, file: !551, line: 2229, column: 7)
!4128 = !DILocation(line: 2232, column: 13, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !551, line: 2231, column: 9)
!4130 = distinct !DILexicalBlock(scope: !4126, file: !551, line: 2230, column: 9)
!4131 = !DILocation(line: 2233, column: 19, scope: !4129)
!4132 = !DILocation(line: 2233, column: 11, scope: !4129)
!4133 = !DILocation(line: 2238, column: 37, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !551, line: 2237, column: 13)
!4135 = distinct !DILexicalBlock(scope: !4129, file: !551, line: 2234, column: 11)
!4136 = !DILocation(line: 0, scope: !3465, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 2238, column: 18, scope: !4134)
!4138 = !DILocation(line: 2239, column: 15, scope: !4134)
!4139 = !DILocation(line: 2244, column: 37, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4135, file: !551, line: 2243, column: 13)
!4141 = !DILocation(line: 0, scope: !3465, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 2244, column: 18, scope: !4140)
!4143 = !DILocation(line: 2245, column: 15, scope: !4140)
!4144 = !DILocation(line: 2250, column: 37, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4135, file: !551, line: 2249, column: 13)
!4146 = !DILocation(line: 0, scope: !3465, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 2250, column: 18, scope: !4145)
!4148 = !DILocation(line: 2251, column: 15, scope: !4145)
!4149 = !DILocation(line: 2255, column: 48, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4135, file: !551, line: 2254, column: 13)
!4151 = !DILocation(line: 0, scope: !3465, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 2255, column: 18, scope: !4150)
!4153 = !DILocation(line: 2256, column: 15, scope: !4150)
!4154 = !DILocation(line: 2260, column: 37, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4135, file: !551, line: 2259, column: 13)
!4156 = !DILocation(line: 0, scope: !3465, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 2260, column: 18, scope: !4155)
!4158 = !DILocation(line: 2261, column: 15, scope: !4155)
!4159 = !DILocation(line: 2265, column: 26, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4161, file: !551, line: 2265, column: 19)
!4161 = distinct !DILexicalBlock(scope: !4135, file: !551, line: 2264, column: 13)
!4162 = !DILocation(line: 2265, column: 37, scope: !4160)
!4163 = !DILocation(line: 2265, column: 19, scope: !4161)
!4164 = !DILocation(line: 2266, column: 39, scope: !4160)
!4165 = !DILocation(line: 2271, column: 52, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4135, file: !551, line: 2270, column: 13)
!4167 = !DILocation(line: 0, scope: !2493, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 2271, column: 37, scope: !4166)
!4169 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !4168)
!4170 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !4168)
!4171 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !4168)
!4172 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !4168)
!4173 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !4168)
!4174 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !4168)
!4175 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !4168)
!4176 = !DILocation(line: 0, scope: !4135)
!4177 = !DILocation(line: 2277, column: 12, scope: !4129)
!4178 = !DILocation(line: 2230, column: 42, scope: !4130)
!4179 = !DILocation(line: 2230, column: 21, scope: !4130)
!4180 = distinct !{!4180, !4125, !4181, !2284, !2285}
!4181 = !DILocation(line: 2278, column: 9, scope: !4126)
!4182 = !DILocation(line: 2279, column: 10, scope: !4127)
!4183 = !DILocation(line: 2228, column: 55, scope: !4121)
!4184 = distinct !{!4184, !4124, !4185, !2284, !2285}
!4185 = !DILocation(line: 2280, column: 7, scope: !4122)
!4186 = !DILocation(line: 2288, column: 34, scope: !2188)
!4187 = !DILocation(line: 0, scope: !2188)
!4188 = !DILocation(line: 2289, column: 38, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !2188, file: !551, line: 2289, column: 11)
!4190 = !DILocation(line: 2289, column: 11, scope: !4189)
!4191 = !DILocation(line: 2289, column: 49, scope: !4189)
!4192 = !DILocation(line: 2289, column: 11, scope: !2188)
!4193 = !DILocation(line: 2291, column: 13, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4189, file: !551, line: 2290, column: 9)
!4195 = !DILocation(line: 2292, column: 17, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4194, file: !551, line: 2292, column: 15)
!4197 = !DILocation(line: 2292, column: 15, scope: !4194)
!4198 = !DILocation(line: 2294, column: 35, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !551, line: 2294, column: 11)
!4200 = distinct !DILexicalBlock(scope: !4194, file: !551, line: 2294, column: 11)
!4201 = !DILocation(line: 2294, column: 23, scope: !4199)
!4202 = !DILocation(line: 2294, column: 11, scope: !4200)
!4203 = !DILocation(line: 2296, column: 18, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4199, file: !551, line: 2295, column: 11)
!4205 = !DILocation(line: 2296, column: 15, scope: !4204)
!4206 = !DILocation(line: 2296, column: 17, scope: !4204)
!4207 = !DILocation(line: 2297, column: 18, scope: !4204)
!4208 = !DILocation(line: 2297, column: 15, scope: !4204)
!4209 = !DILocation(line: 2297, column: 17, scope: !4204)
!4210 = !DILocation(line: 2298, column: 18, scope: !4204)
!4211 = !DILocation(line: 2298, column: 15, scope: !4204)
!4212 = !DILocation(line: 2298, column: 17, scope: !4204)
!4213 = !DILocation(line: 2299, column: 14, scope: !4204)
!4214 = !DILocation(line: 2294, column: 59, scope: !4199)
!4215 = distinct !{!4215, !4202, !4216, !2284, !2285}
!4216 = !DILocation(line: 2300, column: 11, scope: !4200)
!4217 = !DILocation(line: 2303, column: 38, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !2188, file: !551, line: 2303, column: 11)
!4219 = !DILocation(line: 2303, column: 11, scope: !4218)
!4220 = !DILocation(line: 2303, column: 50, scope: !4218)
!4221 = !DILocation(line: 2303, column: 11, scope: !2188)
!4222 = !DILocation(line: 2305, column: 13, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4218, file: !551, line: 2304, column: 9)
!4224 = !DILocation(line: 2306, column: 17, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4223, file: !551, line: 2306, column: 15)
!4226 = !DILocation(line: 2306, column: 15, scope: !4223)
!4227 = !DILocation(line: 2308, column: 35, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !551, line: 2308, column: 11)
!4229 = distinct !DILexicalBlock(scope: !4223, file: !551, line: 2308, column: 11)
!4230 = !DILocation(line: 2308, column: 23, scope: !4228)
!4231 = !DILocation(line: 2308, column: 11, scope: !4229)
!4232 = !DILocation(line: 2310, column: 18, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4228, file: !551, line: 2309, column: 11)
!4234 = !DILocation(line: 2310, column: 15, scope: !4233)
!4235 = !DILocation(line: 2310, column: 17, scope: !4233)
!4236 = !DILocation(line: 2311, column: 18, scope: !4233)
!4237 = !DILocation(line: 2311, column: 15, scope: !4233)
!4238 = !DILocation(line: 2311, column: 17, scope: !4233)
!4239 = !DILocation(line: 2312, column: 18, scope: !4233)
!4240 = !DILocation(line: 2312, column: 15, scope: !4233)
!4241 = !DILocation(line: 2312, column: 17, scope: !4233)
!4242 = !DILocation(line: 2313, column: 29, scope: !4233)
!4243 = !DILocation(line: 2313, column: 15, scope: !4233)
!4244 = !DILocation(line: 2313, column: 17, scope: !4233)
!4245 = !DILocation(line: 2314, column: 14, scope: !4233)
!4246 = !DILocation(line: 2308, column: 59, scope: !4228)
!4247 = distinct !{!4247, !4231, !4248, !2284, !2285}
!4248 = !DILocation(line: 2315, column: 11, scope: !4229)
!4249 = !DILocation(line: 2318, column: 38, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !2188, file: !551, line: 2318, column: 11)
!4251 = !DILocation(line: 2318, column: 11, scope: !4250)
!4252 = !DILocation(line: 2318, column: 50, scope: !4250)
!4253 = !DILocation(line: 2318, column: 11, scope: !2188)
!4254 = !DILocation(line: 2320, column: 13, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4250, file: !551, line: 2319, column: 9)
!4256 = !DILocation(line: 2321, column: 17, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4255, file: !551, line: 2321, column: 15)
!4258 = !DILocation(line: 2321, column: 15, scope: !4255)
!4259 = !DILocation(line: 2323, column: 35, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !551, line: 2323, column: 11)
!4261 = distinct !DILexicalBlock(scope: !4255, file: !551, line: 2323, column: 11)
!4262 = !DILocation(line: 2323, column: 23, scope: !4260)
!4263 = !DILocation(line: 2323, column: 11, scope: !4261)
!4264 = !DILocation(line: 2325, column: 18, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4260, file: !551, line: 2324, column: 11)
!4266 = !DILocation(line: 2325, column: 15, scope: !4265)
!4267 = !DILocation(line: 2325, column: 17, scope: !4265)
!4268 = !DILocation(line: 2326, column: 18, scope: !4265)
!4269 = !DILocation(line: 2326, column: 15, scope: !4265)
!4270 = !DILocation(line: 2326, column: 17, scope: !4265)
!4271 = !DILocation(line: 2327, column: 18, scope: !4265)
!4272 = !DILocation(line: 2327, column: 15, scope: !4265)
!4273 = !DILocation(line: 2327, column: 17, scope: !4265)
!4274 = !DILocation(line: 2328, column: 15, scope: !4265)
!4275 = !DILocation(line: 2328, column: 17, scope: !4265)
!4276 = !DILocation(line: 2329, column: 14, scope: !4265)
!4277 = !DILocation(line: 2323, column: 59, scope: !4260)
!4278 = distinct !{!4278, !4263, !4279, !2284, !2285}
!4279 = !DILocation(line: 2330, column: 11, scope: !4261)
!4280 = !DILocation(line: 2333, column: 38, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !2188, file: !551, line: 2333, column: 11)
!4282 = !DILocation(line: 2333, column: 11, scope: !4281)
!4283 = !DILocation(line: 2333, column: 47, scope: !4281)
!4284 = !DILocation(line: 2333, column: 11, scope: !2188)
!4285 = !DILocation(line: 2335, column: 13, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4281, file: !551, line: 2334, column: 9)
!4287 = !DILocation(line: 2336, column: 17, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4286, file: !551, line: 2336, column: 15)
!4289 = !DILocation(line: 2336, column: 15, scope: !4286)
!4290 = !DILocation(line: 2338, column: 35, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !551, line: 2338, column: 11)
!4292 = distinct !DILexicalBlock(scope: !4286, file: !551, line: 2338, column: 11)
!4293 = !DILocation(line: 2338, column: 23, scope: !4291)
!4294 = !DILocation(line: 2338, column: 11, scope: !4292)
!4295 = !DILocation(line: 2340, column: 33, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4291, file: !551, line: 2339, column: 11)
!4297 = !DILocation(line: 0, scope: !2493, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 2340, column: 18, scope: !4296)
!4299 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !4298)
!4300 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !4298)
!4301 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !4298)
!4302 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !4298)
!4303 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !4298)
!4304 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !4298)
!4305 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !4298)
!4306 = !DILocation(line: 2340, column: 15, scope: !4296)
!4307 = !DILocation(line: 2340, column: 17, scope: !4296)
!4308 = !DILocation(line: 2341, column: 14, scope: !4296)
!4309 = !DILocation(line: 2338, column: 59, scope: !4291)
!4310 = distinct !{!4310, !4294, !4311, !2284, !2285}
!4311 = !DILocation(line: 2342, column: 11, scope: !4292)
!4312 = !DILocation(line: 2345, column: 38, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !2188, file: !551, line: 2345, column: 11)
!4314 = !DILocation(line: 2345, column: 11, scope: !4313)
!4315 = !DILocation(line: 2345, column: 49, scope: !4313)
!4316 = !DILocation(line: 2345, column: 11, scope: !2188)
!4317 = !DILocation(line: 2347, column: 13, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4313, file: !551, line: 2346, column: 9)
!4319 = !DILocation(line: 2348, column: 17, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4318, file: !551, line: 2348, column: 15)
!4321 = !DILocation(line: 2348, column: 15, scope: !4318)
!4322 = !DILocation(line: 2350, column: 35, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !551, line: 2350, column: 11)
!4324 = distinct !DILexicalBlock(scope: !4318, file: !551, line: 2350, column: 11)
!4325 = !DILocation(line: 2350, column: 23, scope: !4323)
!4326 = !DILocation(line: 2350, column: 11, scope: !4324)
!4327 = !DILocation(line: 2352, column: 18, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4323, file: !551, line: 2351, column: 11)
!4329 = !DILocation(line: 2352, column: 15, scope: !4328)
!4330 = !DILocation(line: 2352, column: 17, scope: !4328)
!4331 = !DILocation(line: 2353, column: 18, scope: !4328)
!4332 = !DILocation(line: 2353, column: 15, scope: !4328)
!4333 = !DILocation(line: 2353, column: 17, scope: !4328)
!4334 = !DILocation(line: 2354, column: 18, scope: !4328)
!4335 = !DILocation(line: 2354, column: 15, scope: !4328)
!4336 = !DILocation(line: 2354, column: 17, scope: !4328)
!4337 = !DILocation(line: 2355, column: 14, scope: !4328)
!4338 = !DILocation(line: 2350, column: 59, scope: !4323)
!4339 = distinct !{!4339, !4326, !4340, !2284, !2285}
!4340 = !DILocation(line: 2356, column: 11, scope: !4324)
!4341 = !DILocation(line: 2359, column: 38, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !2188, file: !551, line: 2359, column: 11)
!4343 = !DILocation(line: 2359, column: 11, scope: !4342)
!4344 = !DILocation(line: 2359, column: 50, scope: !4342)
!4345 = !DILocation(line: 2359, column: 11, scope: !2188)
!4346 = !DILocation(line: 2361, column: 13, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4342, file: !551, line: 2360, column: 9)
!4348 = !DILocation(line: 2362, column: 17, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4347, file: !551, line: 2362, column: 15)
!4350 = !DILocation(line: 2362, column: 15, scope: !4347)
!4351 = !DILocation(line: 2364, column: 35, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !551, line: 2364, column: 11)
!4353 = distinct !DILexicalBlock(scope: !4347, file: !551, line: 2364, column: 11)
!4354 = !DILocation(line: 2364, column: 23, scope: !4352)
!4355 = !DILocation(line: 2364, column: 11, scope: !4353)
!4356 = !DILocation(line: 2366, column: 18, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4352, file: !551, line: 2365, column: 11)
!4358 = !DILocation(line: 2366, column: 15, scope: !4357)
!4359 = !DILocation(line: 2366, column: 17, scope: !4357)
!4360 = !DILocation(line: 2367, column: 18, scope: !4357)
!4361 = !DILocation(line: 2367, column: 15, scope: !4357)
!4362 = !DILocation(line: 2367, column: 17, scope: !4357)
!4363 = !DILocation(line: 2368, column: 18, scope: !4357)
!4364 = !DILocation(line: 2368, column: 15, scope: !4357)
!4365 = !DILocation(line: 2368, column: 17, scope: !4357)
!4366 = !DILocation(line: 2369, column: 29, scope: !4357)
!4367 = !DILocation(line: 2369, column: 15, scope: !4357)
!4368 = !DILocation(line: 2369, column: 17, scope: !4357)
!4369 = !DILocation(line: 2370, column: 14, scope: !4357)
!4370 = !DILocation(line: 2364, column: 59, scope: !4352)
!4371 = distinct !{!4371, !4355, !4372, !2284, !2285}
!4372 = !DILocation(line: 2371, column: 11, scope: !4353)
!4373 = !DILocation(line: 2374, column: 38, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !2188, file: !551, line: 2374, column: 11)
!4375 = !DILocation(line: 2374, column: 11, scope: !4374)
!4376 = !DILocation(line: 2374, column: 50, scope: !4374)
!4377 = !DILocation(line: 2374, column: 11, scope: !2188)
!4378 = !DILocation(line: 2377, column: 15, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4374, file: !551, line: 2375, column: 9)
!4380 = !DILocation(line: 2379, column: 35, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4382, file: !551, line: 2379, column: 11)
!4382 = distinct !DILexicalBlock(scope: !4379, file: !551, line: 2379, column: 11)
!4383 = !DILocation(line: 2379, column: 23, scope: !4381)
!4384 = !DILocation(line: 2379, column: 11, scope: !4382)
!4385 = !DILocation(line: 2381, column: 18, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4381, file: !551, line: 2380, column: 11)
!4387 = !DILocation(line: 2381, column: 15, scope: !4386)
!4388 = !DILocation(line: 2381, column: 17, scope: !4386)
!4389 = !DILocation(line: 2382, column: 18, scope: !4386)
!4390 = !DILocation(line: 2382, column: 15, scope: !4386)
!4391 = !DILocation(line: 2382, column: 17, scope: !4386)
!4392 = !DILocation(line: 2383, column: 18, scope: !4386)
!4393 = !DILocation(line: 2383, column: 15, scope: !4386)
!4394 = !DILocation(line: 2383, column: 17, scope: !4386)
!4395 = !DILocation(line: 2384, column: 15, scope: !4386)
!4396 = !DILocation(line: 2384, column: 17, scope: !4386)
!4397 = !DILocation(line: 2385, column: 14, scope: !4386)
!4398 = !DILocation(line: 2379, column: 59, scope: !4381)
!4399 = distinct !{!4399, !4384, !4400, !2284, !2285}
!4400 = !DILocation(line: 2386, column: 11, scope: !4382)
!4401 = !DILocation(line: 2390, column: 11, scope: !2188)
!4402 = !DILocation(line: 2392, column: 15, scope: !2188)
!4403 = !DILocation(line: 2393, column: 31, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !551, line: 2393, column: 7)
!4405 = distinct !DILexicalBlock(scope: !2188, file: !551, line: 2393, column: 7)
!4406 = !DILocation(line: 2393, column: 19, scope: !4404)
!4407 = !DILocation(line: 2393, column: 7, scope: !4405)
!4408 = !DILocation(line: 2395, column: 9, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !551, line: 2395, column: 9)
!4410 = distinct !DILexicalBlock(scope: !4404, file: !551, line: 2394, column: 7)
!4411 = !DILocation(line: 2431, column: 20, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !551, line: 2430, column: 19)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !551, line: 2429, column: 13)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !551, line: 2399, column: 11)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !551, line: 2396, column: 9)
!4416 = distinct !DILexicalBlock(scope: !4409, file: !551, line: 2395, column: 9)
!4417 = !DILocation(line: 2397, column: 13, scope: !4415)
!4418 = !DILocation(line: 2398, column: 19, scope: !4415)
!4419 = !DILocation(line: 2398, column: 11, scope: !4415)
!4420 = !DILocation(line: 2436, column: 33, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4414, file: !551, line: 2435, column: 13)
!4422 = !DILocation(line: 0, scope: !2493, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 2436, column: 18, scope: !4421)
!4424 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !4423)
!4425 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !4423)
!4426 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !4423)
!4427 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !4423)
!4428 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !4423)
!4429 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !4423)
!4430 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !4423)
!4431 = !DILocation(line: 2425, column: 18, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4414, file: !551, line: 2424, column: 13)
!4433 = !DILocation(line: 2426, column: 15, scope: !4432)
!4434 = !DILocation(line: 2420, column: 29, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4414, file: !551, line: 2419, column: 13)
!4436 = !DILocation(line: 2421, column: 15, scope: !4435)
!4437 = !DILocation(line: 2415, column: 18, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4414, file: !551, line: 2414, column: 13)
!4439 = !DILocation(line: 2416, column: 15, scope: !4438)
!4440 = !DILocation(line: 2409, column: 18, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4414, file: !551, line: 2408, column: 13)
!4442 = !DILocation(line: 2410, column: 15, scope: !4441)
!4443 = !DILocation(line: 2403, column: 18, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4414, file: !551, line: 2402, column: 13)
!4445 = !DILocation(line: 2404, column: 15, scope: !4444)
!4446 = !DILocation(line: 0, scope: !4414)
!4447 = !DILocation(line: 2442, column: 12, scope: !4415)
!4448 = !DILocation(line: 2395, column: 42, scope: !4416)
!4449 = !DILocation(line: 2395, column: 21, scope: !4416)
!4450 = distinct !{!4450, !4408, !4451, !2284, !2285}
!4451 = !DILocation(line: 2443, column: 9, scope: !4409)
!4452 = !DILocation(line: 2430, column: 26, scope: !4412)
!4453 = !DILocation(line: 2430, column: 37, scope: !4412)
!4454 = !DILocation(line: 2430, column: 19, scope: !4413)
!4455 = !DILocation(line: 2431, column: 17, scope: !4412)
!4456 = !DILocation(line: 2444, column: 10, scope: !4410)
!4457 = !DILocation(line: 2393, column: 55, scope: !4404)
!4458 = distinct !{!4458, !4407, !4459, !2284, !2285}
!4459 = !DILocation(line: 2445, column: 7, scope: !4405)
!4460 = !DILocation(line: 2453, column: 41, scope: !2190)
!4461 = !DILocation(line: 0, scope: !2190)
!4462 = !DILocation(line: 2454, column: 38, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !2190, file: !551, line: 2454, column: 11)
!4464 = !DILocation(line: 2454, column: 11, scope: !4463)
!4465 = !DILocation(line: 2454, column: 49, scope: !4463)
!4466 = !DILocation(line: 2454, column: 11, scope: !2190)
!4467 = !DILocation(line: 2456, column: 13, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4463, file: !551, line: 2455, column: 9)
!4469 = !DILocation(line: 2457, column: 17, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4468, file: !551, line: 2457, column: 15)
!4471 = !DILocation(line: 2457, column: 15, scope: !4468)
!4472 = !DILocation(line: 2459, column: 35, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !551, line: 2459, column: 11)
!4474 = distinct !DILexicalBlock(scope: !4468, file: !551, line: 2459, column: 11)
!4475 = !DILocation(line: 2459, column: 23, scope: !4473)
!4476 = !DILocation(line: 2459, column: 11, scope: !4474)
!4477 = !DILocation(line: 2461, column: 38, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4473, file: !551, line: 2460, column: 11)
!4479 = !DILocation(line: 2461, column: 15, scope: !4478)
!4480 = !DILocation(line: 2461, column: 17, scope: !4478)
!4481 = !DILocation(line: 2462, column: 38, scope: !4478)
!4482 = !DILocation(line: 2462, column: 15, scope: !4478)
!4483 = !DILocation(line: 2462, column: 17, scope: !4478)
!4484 = !DILocation(line: 2463, column: 38, scope: !4478)
!4485 = !DILocation(line: 2463, column: 15, scope: !4478)
!4486 = !DILocation(line: 2463, column: 17, scope: !4478)
!4487 = !DILocation(line: 2464, column: 14, scope: !4478)
!4488 = !DILocation(line: 2459, column: 59, scope: !4473)
!4489 = distinct !{!4489, !4476, !4490, !2284, !2285}
!4490 = !DILocation(line: 2465, column: 11, scope: !4474)
!4491 = !DILocation(line: 2468, column: 38, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !2190, file: !551, line: 2468, column: 11)
!4493 = !DILocation(line: 2468, column: 11, scope: !4492)
!4494 = !DILocation(line: 2468, column: 50, scope: !4492)
!4495 = !DILocation(line: 2468, column: 11, scope: !2190)
!4496 = !DILocation(line: 2470, column: 13, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4492, file: !551, line: 2469, column: 9)
!4498 = !DILocation(line: 2471, column: 17, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4497, file: !551, line: 2471, column: 15)
!4500 = !DILocation(line: 2471, column: 15, scope: !4497)
!4501 = !DILocation(line: 2473, column: 35, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !551, line: 2473, column: 11)
!4503 = distinct !DILexicalBlock(scope: !4497, file: !551, line: 2473, column: 11)
!4504 = !DILocation(line: 2473, column: 23, scope: !4502)
!4505 = !DILocation(line: 2473, column: 11, scope: !4503)
!4506 = !DILocation(line: 2475, column: 38, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4502, file: !551, line: 2474, column: 11)
!4508 = !DILocation(line: 2475, column: 15, scope: !4507)
!4509 = !DILocation(line: 2475, column: 17, scope: !4507)
!4510 = !DILocation(line: 2476, column: 38, scope: !4507)
!4511 = !DILocation(line: 2476, column: 15, scope: !4507)
!4512 = !DILocation(line: 2476, column: 17, scope: !4507)
!4513 = !DILocation(line: 2477, column: 38, scope: !4507)
!4514 = !DILocation(line: 2477, column: 15, scope: !4507)
!4515 = !DILocation(line: 2477, column: 17, scope: !4507)
!4516 = !DILocation(line: 2478, column: 49, scope: !4507)
!4517 = !DILocation(line: 2478, column: 15, scope: !4507)
!4518 = !DILocation(line: 2478, column: 17, scope: !4507)
!4519 = !DILocation(line: 2479, column: 14, scope: !4507)
!4520 = !DILocation(line: 2473, column: 59, scope: !4502)
!4521 = distinct !{!4521, !4505, !4522, !2284, !2285}
!4522 = !DILocation(line: 2480, column: 11, scope: !4503)
!4523 = !DILocation(line: 2483, column: 38, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !2190, file: !551, line: 2483, column: 11)
!4525 = !DILocation(line: 2483, column: 11, scope: !4524)
!4526 = !DILocation(line: 2483, column: 50, scope: !4524)
!4527 = !DILocation(line: 2483, column: 11, scope: !2190)
!4528 = !DILocation(line: 2485, column: 13, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4524, file: !551, line: 2484, column: 9)
!4530 = !DILocation(line: 2486, column: 19, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4529, file: !551, line: 2486, column: 17)
!4532 = !DILocation(line: 2486, column: 17, scope: !4529)
!4533 = !DILocation(line: 2488, column: 35, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !551, line: 2488, column: 11)
!4535 = distinct !DILexicalBlock(scope: !4529, file: !551, line: 2488, column: 11)
!4536 = !DILocation(line: 2488, column: 23, scope: !4534)
!4537 = !DILocation(line: 2488, column: 11, scope: !4535)
!4538 = !DILocation(line: 2490, column: 38, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4534, file: !551, line: 2489, column: 11)
!4540 = !DILocation(line: 2490, column: 15, scope: !4539)
!4541 = !DILocation(line: 2490, column: 17, scope: !4539)
!4542 = !DILocation(line: 2491, column: 38, scope: !4539)
!4543 = !DILocation(line: 2491, column: 15, scope: !4539)
!4544 = !DILocation(line: 2491, column: 17, scope: !4539)
!4545 = !DILocation(line: 2492, column: 38, scope: !4539)
!4546 = !DILocation(line: 2492, column: 15, scope: !4539)
!4547 = !DILocation(line: 2492, column: 17, scope: !4539)
!4548 = !DILocation(line: 2493, column: 15, scope: !4539)
!4549 = !DILocation(line: 2493, column: 17, scope: !4539)
!4550 = !DILocation(line: 2494, column: 14, scope: !4539)
!4551 = !DILocation(line: 2488, column: 59, scope: !4534)
!4552 = distinct !{!4552, !4537, !4553, !2284, !2285}
!4553 = !DILocation(line: 2495, column: 11, scope: !4535)
!4554 = !DILocation(line: 2498, column: 38, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !2190, file: !551, line: 2498, column: 11)
!4556 = !DILocation(line: 2498, column: 11, scope: !4555)
!4557 = !DILocation(line: 2498, column: 47, scope: !4555)
!4558 = !DILocation(line: 2498, column: 11, scope: !2190)
!4559 = !DILocation(line: 2500, column: 13, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4555, file: !551, line: 2499, column: 9)
!4561 = !DILocation(line: 2501, column: 17, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4560, file: !551, line: 2501, column: 15)
!4563 = !DILocation(line: 2501, column: 15, scope: !4560)
!4564 = !DILocation(line: 2503, column: 35, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !551, line: 2503, column: 11)
!4566 = distinct !DILexicalBlock(scope: !4560, file: !551, line: 2503, column: 11)
!4567 = !DILocation(line: 2503, column: 23, scope: !4565)
!4568 = !DILocation(line: 2503, column: 11, scope: !4566)
!4569 = !DILocation(line: 2505, column: 53, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4565, file: !551, line: 2504, column: 11)
!4571 = !DILocation(line: 0, scope: !2493, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 2505, column: 38, scope: !4570)
!4573 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !4572)
!4574 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !4572)
!4575 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !4572)
!4576 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !4572)
!4577 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !4572)
!4578 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !4572)
!4579 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !4572)
!4580 = !DILocation(line: 2505, column: 15, scope: !4570)
!4581 = !DILocation(line: 2505, column: 17, scope: !4570)
!4582 = !DILocation(line: 2506, column: 14, scope: !4570)
!4583 = !DILocation(line: 2503, column: 59, scope: !4565)
!4584 = distinct !{!4584, !4568, !4585, !2284, !2285}
!4585 = !DILocation(line: 2507, column: 11, scope: !4566)
!4586 = !DILocation(line: 2510, column: 38, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !2190, file: !551, line: 2510, column: 11)
!4588 = !DILocation(line: 2510, column: 11, scope: !4587)
!4589 = !DILocation(line: 2510, column: 49, scope: !4587)
!4590 = !DILocation(line: 2510, column: 11, scope: !2190)
!4591 = !DILocation(line: 2512, column: 13, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4587, file: !551, line: 2511, column: 9)
!4593 = !DILocation(line: 2513, column: 17, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4592, file: !551, line: 2513, column: 15)
!4595 = !DILocation(line: 2513, column: 15, scope: !4592)
!4596 = !DILocation(line: 2515, column: 35, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !551, line: 2515, column: 11)
!4598 = distinct !DILexicalBlock(scope: !4592, file: !551, line: 2515, column: 11)
!4599 = !DILocation(line: 2515, column: 23, scope: !4597)
!4600 = !DILocation(line: 2515, column: 11, scope: !4598)
!4601 = !DILocation(line: 2517, column: 38, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4597, file: !551, line: 2516, column: 11)
!4603 = !DILocation(line: 2517, column: 15, scope: !4602)
!4604 = !DILocation(line: 2517, column: 17, scope: !4602)
!4605 = !DILocation(line: 2518, column: 38, scope: !4602)
!4606 = !DILocation(line: 2518, column: 15, scope: !4602)
!4607 = !DILocation(line: 2518, column: 17, scope: !4602)
!4608 = !DILocation(line: 2519, column: 38, scope: !4602)
!4609 = !DILocation(line: 2519, column: 15, scope: !4602)
!4610 = !DILocation(line: 2519, column: 17, scope: !4602)
!4611 = !DILocation(line: 2520, column: 14, scope: !4602)
!4612 = !DILocation(line: 2515, column: 59, scope: !4597)
!4613 = distinct !{!4613, !4600, !4614, !2284, !2285}
!4614 = !DILocation(line: 2521, column: 11, scope: !4598)
!4615 = !DILocation(line: 2524, column: 38, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !2190, file: !551, line: 2524, column: 11)
!4617 = !DILocation(line: 2524, column: 11, scope: !4616)
!4618 = !DILocation(line: 2524, column: 50, scope: !4616)
!4619 = !DILocation(line: 2524, column: 11, scope: !2190)
!4620 = !DILocation(line: 2526, column: 13, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4616, file: !551, line: 2525, column: 9)
!4622 = !DILocation(line: 2527, column: 17, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4621, file: !551, line: 2527, column: 15)
!4624 = !DILocation(line: 2527, column: 15, scope: !4621)
!4625 = !DILocation(line: 2529, column: 35, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !551, line: 2529, column: 11)
!4627 = distinct !DILexicalBlock(scope: !4621, file: !551, line: 2529, column: 11)
!4628 = !DILocation(line: 2529, column: 23, scope: !4626)
!4629 = !DILocation(line: 2529, column: 11, scope: !4627)
!4630 = !DILocation(line: 2531, column: 38, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4626, file: !551, line: 2530, column: 11)
!4632 = !DILocation(line: 2531, column: 15, scope: !4631)
!4633 = !DILocation(line: 2531, column: 17, scope: !4631)
!4634 = !DILocation(line: 2532, column: 38, scope: !4631)
!4635 = !DILocation(line: 2532, column: 15, scope: !4631)
!4636 = !DILocation(line: 2532, column: 17, scope: !4631)
!4637 = !DILocation(line: 2533, column: 38, scope: !4631)
!4638 = !DILocation(line: 2533, column: 15, scope: !4631)
!4639 = !DILocation(line: 2533, column: 17, scope: !4631)
!4640 = !DILocation(line: 2534, column: 49, scope: !4631)
!4641 = !DILocation(line: 2534, column: 15, scope: !4631)
!4642 = !DILocation(line: 2534, column: 17, scope: !4631)
!4643 = !DILocation(line: 2535, column: 14, scope: !4631)
!4644 = !DILocation(line: 2529, column: 59, scope: !4626)
!4645 = distinct !{!4645, !4629, !4646, !2284, !2285}
!4646 = !DILocation(line: 2536, column: 11, scope: !4627)
!4647 = !DILocation(line: 2539, column: 38, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !2190, file: !551, line: 2539, column: 11)
!4649 = !DILocation(line: 2539, column: 11, scope: !4648)
!4650 = !DILocation(line: 2539, column: 50, scope: !4648)
!4651 = !DILocation(line: 2539, column: 11, scope: !2190)
!4652 = !DILocation(line: 2542, column: 15, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4648, file: !551, line: 2540, column: 9)
!4654 = !DILocation(line: 2544, column: 35, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !551, line: 2544, column: 11)
!4656 = distinct !DILexicalBlock(scope: !4653, file: !551, line: 2544, column: 11)
!4657 = !DILocation(line: 2544, column: 23, scope: !4655)
!4658 = !DILocation(line: 2544, column: 11, scope: !4656)
!4659 = !DILocation(line: 2546, column: 38, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4655, file: !551, line: 2545, column: 11)
!4661 = !DILocation(line: 2546, column: 15, scope: !4660)
!4662 = !DILocation(line: 2546, column: 17, scope: !4660)
!4663 = !DILocation(line: 2547, column: 38, scope: !4660)
!4664 = !DILocation(line: 2547, column: 15, scope: !4660)
!4665 = !DILocation(line: 2547, column: 17, scope: !4660)
!4666 = !DILocation(line: 2548, column: 38, scope: !4660)
!4667 = !DILocation(line: 2548, column: 15, scope: !4660)
!4668 = !DILocation(line: 2548, column: 17, scope: !4660)
!4669 = !DILocation(line: 2549, column: 15, scope: !4660)
!4670 = !DILocation(line: 2549, column: 17, scope: !4660)
!4671 = !DILocation(line: 2550, column: 14, scope: !4660)
!4672 = !DILocation(line: 2544, column: 59, scope: !4655)
!4673 = distinct !{!4673, !4658, !4674, !2284, !2285}
!4674 = !DILocation(line: 2551, column: 11, scope: !4656)
!4675 = !DILocation(line: 2555, column: 11, scope: !2190)
!4676 = !DILocation(line: 2557, column: 15, scope: !2190)
!4677 = !DILocation(line: 2558, column: 31, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !551, line: 2558, column: 7)
!4679 = distinct !DILexicalBlock(scope: !2190, file: !551, line: 2558, column: 7)
!4680 = !DILocation(line: 2558, column: 19, scope: !4678)
!4681 = !DILocation(line: 2558, column: 7, scope: !4679)
!4682 = !DILocation(line: 2560, column: 9, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !551, line: 2560, column: 9)
!4684 = distinct !DILexicalBlock(scope: !4678, file: !551, line: 2559, column: 7)
!4685 = !DILocation(line: 2596, column: 40, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !551, line: 2595, column: 19)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !551, line: 2594, column: 13)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !551, line: 2564, column: 11)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !551, line: 2561, column: 9)
!4690 = distinct !DILexicalBlock(scope: !4683, file: !551, line: 2560, column: 9)
!4691 = !DILocation(line: 2562, column: 13, scope: !4689)
!4692 = !DILocation(line: 2563, column: 19, scope: !4689)
!4693 = !DILocation(line: 2563, column: 11, scope: !4689)
!4694 = !DILocation(line: 2601, column: 53, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4688, file: !551, line: 2600, column: 13)
!4696 = !DILocation(line: 0, scope: !2493, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 2601, column: 38, scope: !4695)
!4698 = !DILocation(line: 92, column: 13, scope: !2501, inlinedAt: !4697)
!4699 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !4697)
!4700 = !DILocation(line: 94, column: 13, scope: !2504, inlinedAt: !4697)
!4701 = !DILocation(line: 94, column: 7, scope: !2493, inlinedAt: !4697)
!4702 = !DILocation(line: 96, column: 26, scope: !2493, inlinedAt: !4697)
!4703 = !DILocation(line: 96, column: 10, scope: !2493, inlinedAt: !4697)
!4704 = !DILocation(line: 96, column: 3, scope: !2493, inlinedAt: !4697)
!4705 = !DILocation(line: 2590, column: 38, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4688, file: !551, line: 2589, column: 13)
!4707 = !DILocation(line: 2591, column: 15, scope: !4706)
!4708 = !DILocation(line: 2585, column: 49, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4688, file: !551, line: 2584, column: 13)
!4710 = !DILocation(line: 2586, column: 15, scope: !4709)
!4711 = !DILocation(line: 2580, column: 38, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4688, file: !551, line: 2579, column: 13)
!4713 = !DILocation(line: 2581, column: 15, scope: !4712)
!4714 = !DILocation(line: 2574, column: 38, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4688, file: !551, line: 2573, column: 13)
!4716 = !DILocation(line: 2575, column: 15, scope: !4715)
!4717 = !DILocation(line: 2568, column: 38, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4688, file: !551, line: 2567, column: 13)
!4719 = !DILocation(line: 2569, column: 15, scope: !4718)
!4720 = !DILocation(line: 0, scope: !4688)
!4721 = !DILocation(line: 2607, column: 12, scope: !4689)
!4722 = !DILocation(line: 2560, column: 42, scope: !4690)
!4723 = !DILocation(line: 2560, column: 21, scope: !4690)
!4724 = distinct !{!4724, !4682, !4725, !2284, !2285}
!4725 = !DILocation(line: 2608, column: 9, scope: !4683)
!4726 = !DILocation(line: 2595, column: 26, scope: !4686)
!4727 = !DILocation(line: 2595, column: 37, scope: !4686)
!4728 = !DILocation(line: 2595, column: 19, scope: !4687)
!4729 = !DILocation(line: 2596, column: 17, scope: !4686)
!4730 = !DILocation(line: 2609, column: 10, scope: !4684)
!4731 = !DILocation(line: 2558, column: 55, scope: !4678)
!4732 = distinct !{!4732, !4681, !4733, !2284, !2285}
!4733 = !DILocation(line: 2610, column: 7, scope: !4679)
!4734 = !DILocation(line: 2615, column: 35, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !2178, file: !551, line: 2614, column: 5)
!4736 = !DILocation(line: 2617, column: 52, scope: !4735)
!4737 = !DILocation(line: 2616, column: 14, scope: !4735)
!4738 = !DILocation(line: 2618, column: 7, scope: !4735)
!4739 = !DILocation(line: 2621, column: 31, scope: !2160)
!4740 = !DILocation(line: 2622, column: 3, scope: !2160)
!4741 = !DILocation(line: 2623, column: 1, scope: !2160)
!4742 = !DISubprogram(name: "WriteBlob", scope: !492, file: !492, line: 98, type: !4743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!617, !629, !837, !4745}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!4747 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1163, file: !1163, line: 42, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!4748 = !DISubprogram(name: "LocaleCompare", scope: !1179, file: !1179, line: 66, type: !4749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!770, !736, !736}
!4751 = !DISubprogram(name: "GetAuthenticPixelQueue", scope: !502, file: !502, line: 74, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!4752 = !DISubprogram(name: "GetImageExtent", scope: !502, file: !502, line: 69, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!742, !833}
!4755 = !DISubprogram(name: "GetPixelIntensity", scope: !395, file: !395, line: 181, type: !4756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!984, !833, !4758}
!4758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1022)
!4759 = !DISubprogram(name: "GetVirtualIndexQueue", scope: !502, file: !502, line: 41, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1166)
