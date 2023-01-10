; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/quantize.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._CubeInfo = type { ptr, i64, i64, i64, i64, %struct._RealPixelPacket, float, float, float, i64, i64, i64, ptr, ptr, ptr, ptr, [16 x %struct._RealPixelPacket], [16 x float], ptr, i32, i64, i64, i64, i64, i64 }
%struct._RealPixelPacket = type { float, float, float, float }
%struct._Nodes = type { ptr, ptr }
%struct._NodeInfo = type { ptr, [16 x ptr], i64, %struct._RealPixelPacket, float, i64, i64, i64 }

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/quantize.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Posterize/Image\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Assign/Image\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Classify/Image\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Dither/Image\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Reduce/Image\00", align 1
@switch.table.Riemersma = private unnamed_addr constant [7 x i32] [i32 8, i32 6, i32 6, i32 6, i32 4, i32 6, i32 2], align 4
@switch.table.Riemersma.16 = private unnamed_addr constant [7 x i32] [i32 6, i32 8, i32 8, i32 8, i32 2, i32 8, i32 4], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireQuantizeInfo(ptr noundef %image_info) local_unnamed_addr #0 !dbg !1015 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1021, metadata !DIExpression()), !dbg !1030
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 48) #16, !dbg !1031
  call void @llvm.dbg.value(metadata ptr %call, metadata !1022, metadata !DIExpression()), !dbg !1030
  %cmp = icmp eq ptr %call, null, !dbg !1032
  br i1 %cmp, label %if.then, label %if.end, !dbg !1033

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #17, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1026, metadata !DIExpression()), !dbg !1034
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !1034
  %call1 = tail call ptr @__errno_location() #18, !dbg !1034
  %0 = load i32, ptr %call1, align 4, !dbg !1034, !tbaa !1035
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #17, !dbg !1034
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1023, metadata !DIExpression()), !dbg !1039
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 377, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #17, !dbg !1034
  %call4 = call ptr @DestroyString(ptr noundef %call2) #17, !dbg !1034
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1023, metadata !DIExpression()), !dbg !1039
  call void @CatchException(ptr noundef nonnull %exception) #17, !dbg !1034
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !1034
  call void @MagickCoreTerminus() #17, !dbg !1034
  call void @_exit(i32 noundef 1) #19, !dbg !1034
  unreachable, !dbg !1034

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call, metadata !1040, metadata !DIExpression()) #17, !dbg !1045
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #17, !dbg !1047
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 48) #17, !dbg !1048
  store i64 256, ptr %call, align 8, !dbg !1049, !tbaa !1050
  %dither.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 2, !dbg !1053
  store i32 1, ptr %dither.i, align 8, !dbg !1054, !tbaa !1055
  %dither_method.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 6, !dbg !1056
  store i32 2, ptr %dither_method.i, align 8, !dbg !1057, !tbaa !1058
  %colorspace.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 3, !dbg !1059
  store i32 0, ptr %colorspace.i, align 4, !dbg !1060, !tbaa !1061
  %measure_error.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 4, !dbg !1062
  store i32 0, ptr %measure_error.i, align 8, !dbg !1063, !tbaa !1064
  %signature.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 5, !dbg !1065
  store i64 2880220587, ptr %signature.i, align 8, !dbg !1066, !tbaa !1067
  %cmp6.not = icmp eq ptr %image_info, null, !dbg !1068
  br i1 %cmp6.not, label %if.end14, label %if.then7, !dbg !1069

if.then7:                                         ; preds = %if.end
  %dither = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 27, !dbg !1070
  %1 = load i32, ptr %dither, align 8, !dbg !1070, !tbaa !1071
  store i32 %1, ptr %dither.i, align 8, !dbg !1077, !tbaa !1055
  %call9 = tail call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.4) #17, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1027, metadata !DIExpression()), !dbg !1079
  %cmp10.not = icmp eq ptr %call9, null, !dbg !1080
  br i1 %cmp10.not, label %if.end13, label %if.then11, !dbg !1082

if.then11:                                        ; preds = %if.then7
  %call12 = tail call i64 @ParseCommandOption(i32 noundef 21, i32 noundef 0, ptr noundef nonnull %call9) #17, !dbg !1083
  %conv = trunc i64 %call12 to i32, !dbg !1084
  store i32 %conv, ptr %dither_method.i, align 8, !dbg !1085, !tbaa !1058
  br label %if.end13, !dbg !1086

if.end13:                                         ; preds = %if.then11, %if.then7
  %verbose = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 35, !dbg !1087
  %2 = load i32, ptr %verbose, align 4, !dbg !1087, !tbaa !1088
  store i32 %2, ptr %measure_error.i, align 8, !dbg !1089, !tbaa !1064
  br label %if.end14, !dbg !1090

if.end14:                                         ; preds = %if.end13, %if.end
  ret ptr %call, !dbg !1091
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare !dbg !1092 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !1096 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1100 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !1104 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1108 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !1112 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !1113 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1116 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @GetQuantizeInfo(ptr noundef %quantize_info) local_unnamed_addr #0 !dbg !1041 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !1040, metadata !DIExpression()), !dbg !1120
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #17, !dbg !1121
  %call1 = tail call ptr @ResetMagickMemory(ptr noundef %quantize_info, i32 noundef 0, i64 noundef 48) #17, !dbg !1122
  store i64 256, ptr %quantize_info, align 8, !dbg !1123, !tbaa !1050
  %dither = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 2, !dbg !1124
  store i32 1, ptr %dither, align 8, !dbg !1125, !tbaa !1055
  %dither_method = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 6, !dbg !1126
  store i32 2, ptr %dither_method, align 8, !dbg !1127, !tbaa !1058
  %colorspace = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 3, !dbg !1128
  store i32 0, ptr %colorspace, align 4, !dbg !1129, !tbaa !1061
  %measure_error = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 4, !dbg !1130
  store i32 0, ptr %measure_error, align 8, !dbg !1131, !tbaa !1064
  %signature = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 5, !dbg !1132
  store i64 2880220587, ptr %signature, align 8, !dbg !1133, !tbaa !1067
  ret void, !dbg !1134
}

declare !dbg !1135 ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1138 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneQuantizeInfo(ptr noundef readonly %quantize_info) local_unnamed_addr #0 !dbg !1144 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !1150, metadata !DIExpression()), !dbg !1156
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 48) #16, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %call, metadata !1151, metadata !DIExpression()), !dbg !1156
  %cmp = icmp eq ptr %call, null, !dbg !1158
  br i1 %cmp, label %if.then, label %if.end, !dbg !1159

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #17, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1155, metadata !DIExpression()), !dbg !1160
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !1160
  %call1 = tail call ptr @__errno_location() #18, !dbg !1160
  %0 = load i32, ptr %call1, align 4, !dbg !1160, !tbaa !1035
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #17, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1152, metadata !DIExpression()), !dbg !1161
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1021, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #17, !dbg !1160
  %call4 = call ptr @DestroyString(ptr noundef %call2) #17, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1152, metadata !DIExpression()), !dbg !1161
  call void @CatchException(ptr noundef nonnull %exception) #17, !dbg !1160
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #17, !dbg !1160
  call void @MagickCoreTerminus() #17, !dbg !1160
  call void @_exit(i32 noundef 1) #19, !dbg !1160
  unreachable, !dbg !1160

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call, metadata !1040, metadata !DIExpression()) #17, !dbg !1162
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #17, !dbg !1164
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 48) #17, !dbg !1165
  store i64 256, ptr %call, align 8, !dbg !1166, !tbaa !1050
  %dither.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 2, !dbg !1167
  store i32 1, ptr %dither.i, align 8, !dbg !1168, !tbaa !1055
  %dither_method.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 6, !dbg !1169
  store i32 2, ptr %dither_method.i, align 8, !dbg !1170, !tbaa !1058
  %colorspace.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 3, !dbg !1171
  store i32 0, ptr %colorspace.i, align 4, !dbg !1172, !tbaa !1061
  %measure_error.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 4, !dbg !1173
  store i32 0, ptr %measure_error.i, align 8, !dbg !1174, !tbaa !1064
  %signature.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 5, !dbg !1175
  store i64 2880220587, ptr %signature.i, align 8, !dbg !1176, !tbaa !1067
  %cmp6 = icmp eq ptr %quantize_info, null, !dbg !1177
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !1179

if.end8:                                          ; preds = %if.end
  %1 = load i64, ptr %quantize_info, align 8, !dbg !1180, !tbaa !1050
  store i64 %1, ptr %call, align 8, !dbg !1181, !tbaa !1050
  %tree_depth = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 1, !dbg !1182
  %2 = load i64, ptr %tree_depth, align 8, !dbg !1182, !tbaa !1183
  %tree_depth10 = getelementptr inbounds %struct._QuantizeInfo, ptr %call, i64 0, i32 1, !dbg !1184
  store i64 %2, ptr %tree_depth10, align 8, !dbg !1185, !tbaa !1183
  %dither = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 2, !dbg !1186
  %3 = load i32, ptr %dither, align 8, !dbg !1186, !tbaa !1055
  store i32 %3, ptr %dither.i, align 8, !dbg !1187, !tbaa !1055
  %dither_method = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 6, !dbg !1188
  %4 = load i32, ptr %dither_method, align 8, !dbg !1188, !tbaa !1058
  store i32 %4, ptr %dither_method.i, align 8, !dbg !1189, !tbaa !1058
  %colorspace = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 3, !dbg !1190
  %5 = load i32, ptr %colorspace, align 4, !dbg !1190, !tbaa !1061
  store i32 %5, ptr %colorspace.i, align 4, !dbg !1191, !tbaa !1061
  %measure_error = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 4, !dbg !1192
  %6 = load i32, ptr %measure_error, align 8, !dbg !1192, !tbaa !1064
  store i32 %6, ptr %measure_error.i, align 8, !dbg !1193, !tbaa !1064
  br label %cleanup, !dbg !1194

cleanup:                                          ; preds = %if.end, %if.end8
  ret ptr %call, !dbg !1195
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CompressImageColormap(ptr noundef %image) local_unnamed_addr #0 !dbg !1196 {
entry:
  %quantize_info = alloca %struct._QuantizeInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1200, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %quantize_info) #17, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %quantize_info, metadata !1201, metadata !DIExpression()), !dbg !1204
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1205
  %0 = load i32, ptr %debug, align 8, !dbg !1205, !tbaa !1207
  %cmp.not = icmp eq i32 %0, 0, !dbg !1218
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1219

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1220
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1163, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #17, !dbg !1221
  br label %if.end, !dbg !1222

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1223
  %call1 = tail call i32 @IsPaletteImage(ptr noundef nonnull %image, ptr noundef nonnull %exception) #17, !dbg !1225
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1226
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1227

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !1040, metadata !DIExpression()) #17, !dbg !1228
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2237, ptr noundef nonnull @.str.6) #17, !dbg !1230
  %call1.i = call ptr @ResetMagickMemory(ptr noundef nonnull %quantize_info, i32 noundef 0, i64 noundef 48) #17, !dbg !1231
  %dither.i = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 2, !dbg !1232
  store i32 1, ptr %dither.i, align 8, !dbg !1233, !tbaa !1055
  %dither_method.i = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 6, !dbg !1234
  store i32 2, ptr %dither_method.i, align 8, !dbg !1235, !tbaa !1058
  %colorspace.i = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 3, !dbg !1236
  store i32 0, ptr %colorspace.i, align 4, !dbg !1237, !tbaa !1061
  %measure_error.i = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 4, !dbg !1238
  store i32 0, ptr %measure_error.i, align 8, !dbg !1239, !tbaa !1064
  %signature.i = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 5, !dbg !1240
  store i64 2880220587, ptr %signature.i, align 8, !dbg !1241, !tbaa !1067
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1242
  %1 = load i64, ptr %colors, align 8, !dbg !1242, !tbaa !1243
  store i64 %1, ptr %quantize_info, align 8, !dbg !1244, !tbaa !1050
  %tree_depth = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 1, !dbg !1245
  store i64 8, ptr %tree_depth, align 8, !dbg !1246, !tbaa !1183
  %call5 = call i32 @QuantizeImage(ptr noundef nonnull %quantize_info, ptr noundef nonnull %image), !dbg !1247
  br label %cleanup, !dbg !1248

cleanup:                                          ; preds = %if.end, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.end ], !dbg !1202
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %quantize_info) #17, !dbg !1249
  ret i32 %retval.0, !dbg !1249
}

declare !dbg !1250 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1255 i32 @IsPaletteImage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @QuantizeImage(ptr noundef %quantize_info, ptr noundef %image) local_unnamed_addr #0 !dbg !1259 {
entry:
  %message.i.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !1263, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %image, metadata !1264, metadata !DIExpression()), !dbg !1272
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1273
  %0 = load i32, ptr %debug, align 8, !dbg !1273, !tbaa !1207
  %cmp.not = icmp eq i32 %0, 0, !dbg !1275
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1276

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1277
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2695, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #17, !dbg !1278
  br label %if.end, !dbg !1279

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %quantize_info, align 8, !dbg !1280, !tbaa !1050
  call void @llvm.dbg.value(metadata i64 %1, metadata !1268, metadata !DIExpression()), !dbg !1272
  %cmp1 = icmp eq i64 %1, 0, !dbg !1281
  call void @llvm.dbg.value(metadata i64 undef, metadata !1268, metadata !DIExpression()), !dbg !1272
  %2 = tail call i64 @llvm.umin.i64(i64 %1, i64 65536), !dbg !1283
  %3 = select i1 %cmp1, i64 65536, i64 %2, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %3, metadata !1268, metadata !DIExpression()), !dbg !1272
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1284
  %4 = load i32, ptr %matte, align 8, !dbg !1284, !tbaa !1286
  %cmp7 = icmp eq i32 %4, 0, !dbg !1287
  br i1 %cmp7, label %if.then8, label %if.end19, !dbg !1288

if.then8:                                         ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1289
  %5 = load i64, ptr %columns, align 8, !dbg !1289, !tbaa !1292
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1293
  %6 = load i64, ptr %rows, align 8, !dbg !1293, !tbaa !1294
  %mul = mul i64 %6, %5, !dbg !1295
  %cmp9.not = icmp ugt i64 %mul, %3, !dbg !1296
  br i1 %cmp9.not, label %if.end12, label %if.then10, !dbg !1297

if.then10:                                        ; preds = %if.then8
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1298
  call void @llvm.dbg.value(metadata ptr %image, metadata !1299, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1304, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i32 1, metadata !1309, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1311, metadata !DIExpression()) #17, !dbg !1322
  %call.i = tail call i32 @AcquireImageColormap(ptr noundef nonnull %image, i64 noundef %mul) #17, !dbg !1324
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !1326
  br i1 %cmp.i, label %if.then2.i, label %if.end5.i, !dbg !1327

if.then2.i:                                       ; preds = %if.then10
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1328
  %call4.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2633, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #17, !dbg !1328
  br label %if.end12, !dbg !1328

if.end5.i:                                        ; preds = %if.then10
  %colors.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1331
  %7 = load i64, ptr %colors.i, align 8, !dbg !1331, !tbaa !1243
  %cmp6.not.i = icmp eq i64 %7, %mul, !dbg !1333
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end12, !dbg !1334

if.end8.i:                                        ; preds = %if.end5.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %call9.i = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception) #17, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !1305, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i64 0, metadata !1312, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i32 1, metadata !1309, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i64 0, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %8 = load i64, ptr %rows, align 8, !dbg !1336, !tbaa !1294
  %cmp1114.i = icmp sgt i64 %8, 0, !dbg !1337
  br i1 %cmp1114.i, label %for.body.lr.ph.i, label %for.end53.i, !dbg !1338

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %colormap.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %progress_monitor.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body.i, !dbg !1338

for.body.i:                                       ; preds = %for.inc51.i, %for.body.lr.ph.i
  %y.017.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc52.i, %for.inc51.i ]
  %i.015.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %i.1.lcssa.i, %for.inc51.i ]
  call void @llvm.dbg.value(metadata i64 %y.017.i, metadata !1312, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i32 undef, metadata !1309, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %i.015.i, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %9 = load i64, ptr %columns, align 8, !dbg !1339, !tbaa !1292
  %call13.i = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call9.i, i64 noundef 0, i64 noundef %y.017.i, i64 noundef %9, i64 noundef 1, ptr noundef nonnull %exception) #20, !dbg !1340
  call void @llvm.dbg.value(metadata ptr %call13.i, metadata !1319, metadata !DIExpression()) #17, !dbg !1341
  %cmp14.i = icmp eq ptr %call13.i, null, !dbg !1342
  br i1 %cmp14.i, label %for.end53.i, label %if.end16.i, !dbg !1344

if.end16.i:                                       ; preds = %for.body.i
  %call17.i = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call9.i) #17, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %call17.i, metadata !1317, metadata !DIExpression()) #17, !dbg !1341
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()) #17, !dbg !1341
  %10 = load i64, ptr %columns, align 8, !tbaa !1292
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()) #17, !dbg !1341
  call void @llvm.dbg.value(metadata ptr %call13.i, metadata !1319, metadata !DIExpression()) #17, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %i.015.i, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %cmp209.i = icmp sgt i64 %10, 0, !dbg !1346
  br i1 %cmp209.i, label %for.body21.lr.ph.i, label %for.end.i, !dbg !1349

for.body21.lr.ph.i:                               ; preds = %if.end16.i
  %11 = load ptr, ptr %colormap.i, align 8, !tbaa !1350
  %cmp32.not.i = icmp eq ptr %call17.i, null
  br i1 %cmp32.not.i, label %for.body21.us.preheader.i, label %for.body21.i, !dbg !1351

for.body21.us.preheader.i:                        ; preds = %for.body21.lr.ph.i
  %12 = add i64 %10, %i.015.i, !dbg !1349
  br label %for.body21.us.i, !dbg !1349

for.body21.us.i:                                  ; preds = %for.body21.us.i, %for.body21.us.preheader.i
  %q.011.us.i = phi ptr [ %incdec.ptr.us.i, %for.body21.us.i ], [ %call13.i, %for.body21.us.preheader.i ]
  %i.110.us.i = phi i64 [ %inc.us.i, %for.body21.us.i ], [ %i.015.i, %for.body21.us.preheader.i ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1321, metadata !DIExpression()) #17, !dbg !1341
  call void @llvm.dbg.value(metadata ptr %q.011.us.i, metadata !1319, metadata !DIExpression()) #17, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %i.110.us.i, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %red.us.i = getelementptr inbounds %struct._PixelPacket, ptr %q.011.us.i, i64 0, i32 2, !dbg !1354
  %13 = load i16, ptr %red.us.i, align 2, !dbg !1354, !tbaa !1355
  %red22.us.i = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %i.110.us.i, i32 2, !dbg !1356
  store i16 %13, ptr %red22.us.i, align 2, !dbg !1357, !tbaa !1355
  %green.us.i = getelementptr inbounds %struct._PixelPacket, ptr %q.011.us.i, i64 0, i32 1, !dbg !1358
  %14 = load i16, ptr %green.us.i, align 2, !dbg !1358, !tbaa !1359
  %green25.us.i = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %i.110.us.i, i32 1, !dbg !1360
  store i16 %14, ptr %green25.us.i, align 2, !dbg !1361, !tbaa !1359
  %15 = load i16, ptr %q.011.us.i, align 2, !dbg !1362, !tbaa !1363
  %arrayidx27.us.i = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %i.110.us.i, !dbg !1364
  store i16 %15, ptr %arrayidx27.us.i, align 2, !dbg !1365, !tbaa !1363
  %opacity.us.i = getelementptr inbounds %struct._PixelPacket, ptr %q.011.us.i, i64 0, i32 3, !dbg !1366
  %16 = load i16, ptr %opacity.us.i, align 2, !dbg !1366, !tbaa !1367
  %opacity31.us.i = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %i.110.us.i, i32 3, !dbg !1368
  store i16 %16, ptr %opacity31.us.i, align 2, !dbg !1369, !tbaa !1367
  %inc.us.i = add i64 %i.110.us.i, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %inc.us.i, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %incdec.ptr.us.i = getelementptr inbounds %struct._PixelPacket, ptr %q.011.us.i, i64 1, !dbg !1371
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.i, metadata !1319, metadata !DIExpression()) #17, !dbg !1341
  call void @llvm.dbg.value(metadata i64 undef, metadata !1321, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !1341
  %exitcond20.not.i = icmp eq i64 %inc.us.i, %12, !dbg !1346
  br i1 %exitcond20.not.i, label %for.end.i, label %for.body21.us.i, !dbg !1349, !llvm.loop !1372

for.body21.i:                                     ; preds = %for.body21.lr.ph.i, %for.body21.i
  %x.012.i = phi i64 [ %inc36.i, %for.body21.i ], [ 0, %for.body21.lr.ph.i ]
  %q.011.i = phi ptr [ %incdec.ptr.i, %for.body21.i ], [ %call13.i, %for.body21.lr.ph.i ]
  %i.110.i = phi i64 [ %inc.i, %for.body21.i ], [ %i.015.i, %for.body21.lr.ph.i ]
  call void @llvm.dbg.value(metadata i64 %x.012.i, metadata !1321, metadata !DIExpression()) #17, !dbg !1341
  call void @llvm.dbg.value(metadata ptr %q.011.i, metadata !1319, metadata !DIExpression()) #17, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %i.110.i, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %q.011.i, i64 0, i32 2, !dbg !1354
  %17 = load i16, ptr %red.i, align 2, !dbg !1354, !tbaa !1355
  %red22.i = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %i.110.i, i32 2, !dbg !1356
  store i16 %17, ptr %red22.i, align 2, !dbg !1357, !tbaa !1355
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %q.011.i, i64 0, i32 1, !dbg !1358
  %18 = load i16, ptr %green.i, align 2, !dbg !1358, !tbaa !1359
  %green25.i = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %i.110.i, i32 1, !dbg !1360
  store i16 %18, ptr %green25.i, align 2, !dbg !1361, !tbaa !1359
  %19 = load i16, ptr %q.011.i, align 2, !dbg !1362, !tbaa !1363
  %arrayidx27.i = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %i.110.i, !dbg !1364
  store i16 %19, ptr %arrayidx27.i, align 2, !dbg !1365, !tbaa !1363
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %q.011.i, i64 0, i32 3, !dbg !1366
  %20 = load i16, ptr %opacity.i, align 2, !dbg !1366, !tbaa !1367
  %opacity31.i = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 %i.110.i, i32 3, !dbg !1368
  store i16 %20, ptr %opacity31.i, align 2, !dbg !1369, !tbaa !1367
  %add.ptr.i = getelementptr inbounds i16, ptr %call17.i, i64 %x.012.i, !dbg !1376
  %conv.i = trunc i64 %i.110.i to i16, !dbg !1376
  store i16 %conv.i, ptr %add.ptr.i, align 2, !dbg !1376, !tbaa !1378
  %inc.i = add nsw i64 %i.110.i, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %incdec.ptr.i = getelementptr inbounds %struct._PixelPacket, ptr %q.011.i, i64 1, !dbg !1371
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !1319, metadata !DIExpression()) #17, !dbg !1341
  %inc36.i = add nuw nsw i64 %x.012.i, 1, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %inc36.i, metadata !1321, metadata !DIExpression()) #17, !dbg !1341
  %exitcond.not.i = icmp eq i64 %inc36.i, %10, !dbg !1346
  br i1 %exitcond.not.i, label %for.end.i, label %for.body21.i, !dbg !1349, !llvm.loop !1380

for.end.i:                                        ; preds = %for.body21.i, %for.body21.us.i, %if.end16.i
  %i.1.lcssa.i = phi i64 [ %i.015.i, %if.end16.i ], [ %12, %for.body21.us.i ], [ %inc.i, %for.body21.i ], !dbg !1322
  %call37.i = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call9.i, ptr noundef nonnull %exception) #20, !dbg !1381
  %cmp38.i = icmp eq i32 %call37.i, 0, !dbg !1383
  br i1 %cmp38.i, label %for.end53.i, label %if.end41.i, !dbg !1384

if.end41.i:                                       ; preds = %for.end.i
  %21 = load i64, ptr %rows, align 8, !dbg !1385, !tbaa !1294
  call void @llvm.dbg.value(metadata ptr %image, metadata !1386, metadata !DIExpression()) #17, !dbg !1396
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !1392, metadata !DIExpression()) #17, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %y.017.i, metadata !1393, metadata !DIExpression()) #17, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %21, metadata !1394, metadata !DIExpression()) #17, !dbg !1396
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i.i) #17, !dbg !1398
  call void @llvm.dbg.declare(metadata ptr %message.i.i, metadata !1395, metadata !DIExpression()) #17, !dbg !1399
  %22 = load ptr, ptr %progress_monitor.i.i, align 8, !dbg !1400, !tbaa !1402
  %cmp.i.i = icmp eq ptr %22, null, !dbg !1403
  br i1 %cmp.i.i, label %SetImageProgress.exit.thread.i, label %SetImageProgress.exit.i, !dbg !1404

SetImageProgress.exit.thread.i:                   ; preds = %if.end41.i
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i.i) #17, !dbg !1405
  call void @llvm.dbg.value(metadata i32 %call4.i.i, metadata !1313, metadata !DIExpression()) #17, !dbg !1341
  br label %for.inc51.i, !dbg !1406

SetImageProgress.exit.i:                          ; preds = %if.end41.i
  %call.i.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i.i) #17, !dbg !1407
  %23 = load ptr, ptr %progress_monitor.i.i, align 8, !dbg !1408, !tbaa !1402
  %24 = load ptr, ptr %client_data.i.i, align 8, !dbg !1409, !tbaa !1410
  %call4.i.i = call i32 %23(ptr noundef nonnull %message.i.i, i64 noundef %y.017.i, i64 noundef %21, ptr noundef %24) #17, !dbg !1411
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i.i) #17, !dbg !1405
  call void @llvm.dbg.value(metadata i32 %call4.i.i, metadata !1313, metadata !DIExpression()) #17, !dbg !1341
  %.pre.i = load i64, ptr %rows, align 8, !dbg !1336, !tbaa !1294
  br label %for.inc51.i, !dbg !1406

for.inc51.i:                                      ; preds = %SetImageProgress.exit.i, %SetImageProgress.exit.thread.i
  %25 = phi i64 [ %21, %SetImageProgress.exit.thread.i ], [ %.pre.i, %SetImageProgress.exit.i ], !dbg !1336
  call void @llvm.dbg.value(metadata i32 undef, metadata !1309, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i64 undef, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %inc52.i = add nuw nsw i64 %y.017.i, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %inc52.i, metadata !1312, metadata !DIExpression()) #17, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa.i, metadata !1310, metadata !DIExpression()) #17, !dbg !1322
  %cmp11.i = icmp slt i64 %inc52.i, %25, !dbg !1337
  br i1 %cmp11.i, label %for.body.i, label %for.end53.i, !dbg !1338, !llvm.loop !1413

for.end53.i:                                      ; preds = %for.inc51.i, %for.end.i, %for.body.i, %if.end8.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !1309, metadata !DIExpression()) #17, !dbg !1322
  %call54.i = call ptr @DestroyCacheView(ptr noundef %call9.i) #17, !dbg !1415
  call void @llvm.dbg.value(metadata ptr %call54.i, metadata !1305, metadata !DIExpression()) #17, !dbg !1322
  br label %if.end12, !dbg !1416

if.end12:                                         ; preds = %for.end53.i, %if.end5.i, %if.then2.i, %if.then8
  %exception13 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1417
  %call14 = call i32 @IsGrayImage(ptr noundef %image, ptr noundef nonnull %exception13) #17, !dbg !1419
  %cmp15.not = icmp eq i32 %call14, 0, !dbg !1420
  br i1 %cmp15.not, label %if.end19, label %if.then16, !dbg !1421

if.then16:                                        ; preds = %if.end12
  call void @llvm.dbg.value(metadata ptr %image, metadata !1422, metadata !DIExpression()) #17, !dbg !1453
  %type.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1455
  %26 = load i32, ptr %type.i, align 8, !dbg !1455, !tbaa !1457
  %cmp.not.i = icmp eq i32 %26, 2, !dbg !1458
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1459

if.then.i:                                        ; preds = %if.then16
  %call.i111 = call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 2) #17, !dbg !1460
  br label %if.end.i, !dbg !1461

if.end.i:                                         ; preds = %if.then.i, %if.then16
  %call1.i = call ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #21, !dbg !1462
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1430, metadata !DIExpression()) #17, !dbg !1453
  %cmp2.i = icmp eq ptr %call1.i, null, !dbg !1463
  br i1 %cmp2.i, label %if.then5.i, label %if.end9.i, !dbg !1465

if.then5.i:                                       ; preds = %if.end.i
  %filename.i112 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1466
  %call7.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3345, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i112) #17, !dbg !1466
  br label %if.end19, !dbg !1466

if.end9.i:                                        ; preds = %if.end.i
  %27 = load i32, ptr %image, align 8, !dbg !1469, !tbaa !1470
  %cmp10.not.i = icmp eq i32 %27, 2, !dbg !1471
  br i1 %cmp10.not.i, label %if.end94.i, label %for.body.preheader.i, !dbg !1472

for.body.preheader.i:                             ; preds = %if.end9.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %call1.i, i8 -1, i64 524288, i1 false) #17, !dbg !1473, !tbaa !1476
  call void @llvm.dbg.value(metadata i32 undef, metadata !1429, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !1453
  %call14.i = call i32 @AcquireImageColormap(ptr noundef nonnull %image, i64 noundef 65536) #17, !dbg !1477
  %cmp15.i = icmp eq i32 %call14.i, 0, !dbg !1479
  br i1 %cmp15.i, label %cleanup91.thread.i, label %if.end24.i, !dbg !1480

cleanup91.thread.i:                               ; preds = %for.body.preheader.i
  %filename20.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1481
  %call22.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3355, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename20.i) #17, !dbg !1481
  br label %if.end19

if.end24.i:                                       ; preds = %for.body.preheader.i
  %colors.i113 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1484
  store i64 0, ptr %colors.i113, align 8, !dbg !1485, !tbaa !1243
  call void @llvm.dbg.value(metadata i32 1, metadata !1427, metadata !DIExpression()) #17, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %exception13, metadata !1433, metadata !DIExpression()) #17, !dbg !1486
  %call26.i = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception13) #17, !dbg !1487
  call void @llvm.dbg.value(metadata ptr %call26.i, metadata !1425, metadata !DIExpression()) #17, !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1432, metadata !DIExpression()) #17, !dbg !1453
  %28 = load i64, ptr %rows, align 8, !dbg !1488, !tbaa !1294
  %cmp2811.i = icmp sgt i64 %28, 0, !dbg !1489
  br i1 %cmp2811.i, label %for.body29.lr.ph.i, label %cleanup91.i, !dbg !1490

for.body29.lr.ph.i:                               ; preds = %if.end24.i
  %colormap54.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  br label %for.body29.i, !dbg !1490

for.body29.i:                                     ; preds = %cleanup.i, %for.body29.lr.ph.i
  %status.013.i = phi i32 [ 1, %for.body29.lr.ph.i ], [ %status.2.i, %cleanup.i ]
  %y.012.i = phi i64 [ 0, %for.body29.lr.ph.i ], [ %inc88.i, %cleanup.i ]
  call void @llvm.dbg.value(metadata i32 %status.013.i, metadata !1427, metadata !DIExpression()) #17, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %y.012.i, metadata !1432, metadata !DIExpression()) #17, !dbg !1453
  %cmp30.i = icmp eq i32 %status.013.i, 0, !dbg !1491
  br i1 %cmp30.i, label %cleanup.i, label %if.end32.i, !dbg !1493

if.end32.i:                                       ; preds = %for.body29.i
  %29 = load i64, ptr %columns, align 8, !dbg !1494, !tbaa !1292
  %call33.i = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call26.i, i64 noundef 0, i64 noundef %y.012.i, i64 noundef %29, i64 noundef 1, ptr noundef nonnull %exception13) #20, !dbg !1495
  call void @llvm.dbg.value(metadata ptr %call33.i, metadata !1440, metadata !DIExpression()) #17, !dbg !1496
  %cmp34.i = icmp eq ptr %call33.i, null, !dbg !1497
  br i1 %cmp34.i, label %cleanup.i, label %if.end36.i, !dbg !1499

if.end36.i:                                       ; preds = %if.end32.i
  %call37.i116 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call26.i) #17, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %call37.i116, metadata !1436, metadata !DIExpression()) #17, !dbg !1496
  call void @llvm.dbg.value(metadata i64 0, metadata !1442, metadata !DIExpression()) #17, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %call33.i, metadata !1440, metadata !DIExpression()) #17, !dbg !1496
  %30 = load i64, ptr %columns, align 8, !dbg !1501, !tbaa !1292
  %cmp406.i = icmp sgt i64 %30, 0, !dbg !1502
  br i1 %cmp406.i, label %for.body41.lr.ph.i, label %for.end79.i, !dbg !1503

for.body41.lr.ph.i:                               ; preds = %if.end36.i
  %cmp70.not.i = icmp eq ptr %call37.i116, null
  br i1 %cmp70.not.i, label %for.body41.us.i, label %for.body41.i, !dbg !1504

for.body41.us.i:                                  ; preds = %for.body41.lr.ph.i, %if.end69.us.i
  %31 = phi i64 [ %39, %if.end69.us.i ], [ %30, %for.body41.lr.ph.i ]
  %x.09.us.i = phi i64 [ %inc78.us.i, %if.end69.us.i ], [ 0, %for.body41.lr.ph.i ]
  %q.07.us.i = phi ptr [ %incdec.ptr.us.i119, %if.end69.us.i ], [ %call33.i, %for.body41.lr.ph.i ]
  call void @llvm.dbg.value(metadata i64 %x.09.us.i, metadata !1442, metadata !DIExpression()) #17, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %q.07.us.i, metadata !1440, metadata !DIExpression()) #17, !dbg !1496
  %red.us.i117 = getelementptr inbounds %struct._PixelPacket, ptr %q.07.us.i, i64 0, i32 2, !dbg !1506
  %32 = load i16, ptr %red.us.i117, align 2, !dbg !1506, !tbaa !1355
  %conv.us.i = zext i16 %32 to i64, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %conv.us.i, metadata !1443, metadata !DIExpression()) #17, !dbg !1508
  %arrayidx43.us.i = getelementptr inbounds i64, ptr %call1.i, i64 %conv.us.i, !dbg !1509
  %33 = load i64, ptr %arrayidx43.us.i, align 8, !dbg !1509, !tbaa !1476
  %cmp44.us.i = icmp slt i64 %33, 0, !dbg !1511
  br i1 %cmp44.us.i, label %if.then50.us.i, label %if.end69.us.i, !dbg !1512

if.then50.us.i:                                   ; preds = %for.body41.us.i
  %34 = load i64, ptr %colors.i113, align 8, !dbg !1513, !tbaa !1243
  store i64 %34, ptr %arrayidx43.us.i, align 8, !dbg !1517, !tbaa !1476
  %35 = load ptr, ptr %colormap54.i, align 8, !dbg !1518, !tbaa !1350
  %36 = load i64, ptr %colors.i113, align 8, !dbg !1519, !tbaa !1243
  %red57.us.i = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 %36, i32 2, !dbg !1520
  store i16 %32, ptr %red57.us.i, align 2, !dbg !1521, !tbaa !1355
  %green.us.i118 = getelementptr inbounds %struct._PixelPacket, ptr %q.07.us.i, i64 0, i32 1, !dbg !1522
  %37 = load i16, ptr %green.us.i118, align 2, !dbg !1522, !tbaa !1359
  %green61.us.i = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 %36, i32 1, !dbg !1523
  store i16 %37, ptr %green61.us.i, align 2, !dbg !1524, !tbaa !1359
  %38 = load i16, ptr %q.07.us.i, align 2, !dbg !1525, !tbaa !1363
  %arrayidx64.us.i = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 %36, !dbg !1526
  store i16 %38, ptr %arrayidx64.us.i, align 2, !dbg !1527, !tbaa !1363
  %inc67.us.i = add i64 %36, 1, !dbg !1528
  store i64 %inc67.us.i, ptr %colors.i113, align 8, !dbg !1528, !tbaa !1243
  %.pre33.i = load i64, ptr %columns, align 8, !dbg !1501, !tbaa !1292
  br label %if.end69.us.i, !dbg !1529

if.end69.us.i:                                    ; preds = %if.then50.us.i, %for.body41.us.i
  %39 = phi i64 [ %.pre33.i, %if.then50.us.i ], [ %31, %for.body41.us.i ], !dbg !1501
  %incdec.ptr.us.i119 = getelementptr inbounds %struct._PixelPacket, ptr %q.07.us.i, i64 1, !dbg !1530
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.i119, metadata !1440, metadata !DIExpression()) #17, !dbg !1496
  %inc78.us.i = add nuw nsw i64 %x.09.us.i, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %inc78.us.i, metadata !1442, metadata !DIExpression()) #17, !dbg !1496
  %cmp40.us.i = icmp slt i64 %inc78.us.i, %39, !dbg !1502
  br i1 %cmp40.us.i, label %for.body41.us.i, label %for.end79.i, !dbg !1503, !llvm.loop !1532

for.body41.i:                                     ; preds = %for.body41.lr.ph.i, %if.end69.i
  %40 = phi i64 [ %48, %if.end69.i ], [ %30, %for.body41.lr.ph.i ]
  %x.09.i = phi i64 [ %inc78.i, %if.end69.i ], [ 0, %for.body41.lr.ph.i ]
  %q.07.i = phi ptr [ %incdec.ptr.i125, %if.end69.i ], [ %call33.i, %for.body41.lr.ph.i ]
  call void @llvm.dbg.value(metadata i64 %x.09.i, metadata !1442, metadata !DIExpression()) #17, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %q.07.i, metadata !1440, metadata !DIExpression()) #17, !dbg !1496
  %red.i120 = getelementptr inbounds %struct._PixelPacket, ptr %q.07.i, i64 0, i32 2, !dbg !1506
  %41 = load i16, ptr %red.i120, align 2, !dbg !1506, !tbaa !1355
  %conv.i121 = zext i16 %41 to i64, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %conv.i121, metadata !1443, metadata !DIExpression()) #17, !dbg !1508
  %arrayidx43.i = getelementptr inbounds i64, ptr %call1.i, i64 %conv.i121, !dbg !1509
  %42 = load i64, ptr %arrayidx43.i, align 8, !dbg !1509, !tbaa !1476
  %cmp44.i = icmp slt i64 %42, 0, !dbg !1511
  br i1 %cmp44.i, label %if.then50.i, label %if.end69.i, !dbg !1512

if.then50.i:                                      ; preds = %for.body41.i
  %43 = load i64, ptr %colors.i113, align 8, !dbg !1513, !tbaa !1243
  store i64 %43, ptr %arrayidx43.i, align 8, !dbg !1517, !tbaa !1476
  %44 = load ptr, ptr %colormap54.i, align 8, !dbg !1518, !tbaa !1350
  %45 = load i64, ptr %colors.i113, align 8, !dbg !1519, !tbaa !1243
  %red57.i = getelementptr inbounds %struct._PixelPacket, ptr %44, i64 %45, i32 2, !dbg !1520
  store i16 %41, ptr %red57.i, align 2, !dbg !1521, !tbaa !1355
  %green.i122 = getelementptr inbounds %struct._PixelPacket, ptr %q.07.i, i64 0, i32 1, !dbg !1522
  %46 = load i16, ptr %green.i122, align 2, !dbg !1522, !tbaa !1359
  %green61.i = getelementptr inbounds %struct._PixelPacket, ptr %44, i64 %45, i32 1, !dbg !1523
  store i16 %46, ptr %green61.i, align 2, !dbg !1524, !tbaa !1359
  %47 = load i16, ptr %q.07.i, align 2, !dbg !1525, !tbaa !1363
  %arrayidx64.i = getelementptr inbounds %struct._PixelPacket, ptr %44, i64 %45, !dbg !1526
  store i16 %47, ptr %arrayidx64.i, align 2, !dbg !1527, !tbaa !1363
  %inc67.i = add i64 %45, 1, !dbg !1528
  store i64 %inc67.i, ptr %colors.i113, align 8, !dbg !1528, !tbaa !1243
  %.pre.i123 = load i64, ptr %arrayidx43.i, align 8, !dbg !1534, !tbaa !1476
  %.pre32.i = load i64, ptr %columns, align 8, !dbg !1501, !tbaa !1292
  br label %if.end69.i, !dbg !1529

if.end69.i:                                       ; preds = %if.then50.i, %for.body41.i
  %48 = phi i64 [ %.pre32.i, %if.then50.i ], [ %40, %for.body41.i ], !dbg !1501
  %49 = phi i64 [ %.pre.i123, %if.then50.i ], [ %42, %for.body41.i ], !dbg !1534
  %add.ptr.i124 = getelementptr inbounds i16, ptr %call37.i116, i64 %x.09.i, !dbg !1534
  %conv74.i = trunc i64 %49 to i16, !dbg !1534
  store i16 %conv74.i, ptr %add.ptr.i124, align 2, !dbg !1534, !tbaa !1378
  %incdec.ptr.i125 = getelementptr inbounds %struct._PixelPacket, ptr %q.07.i, i64 1, !dbg !1530
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i125, metadata !1440, metadata !DIExpression()) #17, !dbg !1496
  %inc78.i = add nuw nsw i64 %x.09.i, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %inc78.i, metadata !1442, metadata !DIExpression()) #17, !dbg !1496
  %cmp40.i = icmp slt i64 %inc78.i, %48, !dbg !1502
  br i1 %cmp40.i, label %for.body41.i, label %for.end79.i, !dbg !1503, !llvm.loop !1536

for.end79.i:                                      ; preds = %if.end69.i, %if.end69.us.i, %if.end36.i
  %call80.i = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call26.i, ptr noundef nonnull %exception13) #20, !dbg !1537
  %cmp81.i = icmp ne i32 %call80.i, 0, !dbg !1539
  %spec.select.i = zext i1 %cmp81.i to i32, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !1427, metadata !DIExpression()) #17, !dbg !1453
  br label %cleanup.i, !dbg !1541

cleanup.i:                                        ; preds = %for.end79.i, %if.end32.i, %for.body29.i
  %status.2.i = phi i32 [ %spec.select.i, %for.end79.i ], [ 0, %for.body29.i ], [ 0, %if.end32.i ], !dbg !1486
  call void @llvm.dbg.value(metadata i32 %status.2.i, metadata !1427, metadata !DIExpression()) #17, !dbg !1453
  %inc88.i = add nuw nsw i64 %y.012.i, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %inc88.i, metadata !1432, metadata !DIExpression()) #17, !dbg !1453
  %50 = load i64, ptr %rows, align 8, !dbg !1488, !tbaa !1294
  %cmp28.i = icmp slt i64 %inc88.i, %50, !dbg !1489
  br i1 %cmp28.i, label %for.body29.i, label %cleanup91.i, !dbg !1490, !llvm.loop !1543

cleanup91.i:                                      ; preds = %cleanup.i, %if.end24.i
  %call90.i = call ptr @DestroyCacheView(ptr noundef %call26.i) #17, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %call90.i, metadata !1425, metadata !DIExpression()) #17, !dbg !1453
  br label %if.end94.i

if.end94.i:                                       ; preds = %cleanup91.i, %if.end9.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1429, metadata !DIExpression()) #17, !dbg !1453
  %colors96.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10
  %51 = load i64, ptr %colors96.i, align 8, !tbaa !1243
  %cmp9714.i = icmp sgt i64 %51, 0, !dbg !1546
  %colormap101.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %52 = load ptr, ptr %colormap101.i, align 8, !tbaa !1350
  br i1 %cmp9714.i, label %for.body99.i, label %for.end105.i, !dbg !1549

for.body99.i:                                     ; preds = %if.end94.i, %for.body99.i
  %i.115.i = phi i64 [ %inc104.i, %for.body99.i ], [ 0, %if.end94.i ]
  call void @llvm.dbg.value(metadata i64 %i.115.i, metadata !1429, metadata !DIExpression()) #17, !dbg !1453
  %conv100.i = trunc i64 %i.115.i to i16, !dbg !1550
  %opacity.i126 = getelementptr inbounds %struct._PixelPacket, ptr %52, i64 %i.115.i, i32 3, !dbg !1551
  store i16 %conv100.i, ptr %opacity.i126, align 2, !dbg !1552, !tbaa !1367
  %inc104.i = add nuw nsw i64 %i.115.i, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %inc104.i, metadata !1429, metadata !DIExpression()) #17, !dbg !1453
  %exitcond.not.i127 = icmp eq i64 %inc104.i, %51, !dbg !1546
  br i1 %exitcond.not.i127, label %for.end105.i, label %for.body99.i, !dbg !1549, !llvm.loop !1554

for.end105.i:                                     ; preds = %for.body99.i, %if.end94.i
  call void @qsort(ptr noundef %52, i64 noundef %51, i64 noundef 8, ptr noundef nonnull @IntensityCompare) #17, !dbg !1556
  %53 = load i64, ptr %colors96.i, align 8, !dbg !1557, !tbaa !1243
  %call109.i = call ptr @AcquireQuantumMemory(i64 noundef %53, i64 noundef 8) #21, !dbg !1558
  call void @llvm.dbg.value(metadata ptr %call109.i, metadata !1428, metadata !DIExpression()) #17, !dbg !1453
  %cmp110.i = icmp eq ptr %call109.i, null, !dbg !1559
  br i1 %cmp110.i, label %if.then115.i, label %if.end121.i, !dbg !1561

if.then115.i:                                     ; preds = %for.end105.i
  %filename117.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1562
  %call119.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3421, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename117.i) #17, !dbg !1562
  br label %if.end19, !dbg !1565

if.end121.i:                                      ; preds = %for.end105.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1431, metadata !DIExpression()) #17, !dbg !1453
  %54 = load ptr, ptr %colormap101.i, align 8, !dbg !1566, !tbaa !1350
  %55 = load i64, ptr %54, align 2, !dbg !1567
  store i64 %55, ptr %call109.i, align 2, !dbg !1567
  call void @llvm.dbg.value(metadata i64 0, metadata !1429, metadata !DIExpression()) #17, !dbg !1453
  %56 = load i64, ptr %colors96.i, align 8, !dbg !1568, !tbaa !1243
  %cmp12716.i = icmp sgt i64 %56, 0, !dbg !1571
  %.pre35.i = load ptr, ptr %colormap101.i, align 8, !dbg !1453, !tbaa !1350
  br i1 %cmp12716.i, label %for.body129.i, label %for.end149.i, !dbg !1572

for.body129.i:                                    ; preds = %if.end121.i, %if.end141.i
  %57 = phi ptr [ %68, %if.end141.i ], [ %.pre35.i, %if.end121.i ]
  %i.219.i = phi i64 [ %inc148.i, %if.end141.i ], [ 0, %if.end121.i ]
  %j.017.i = phi i64 [ %j.1.i, %if.end141.i ], [ 0, %if.end121.i ]
  call void @llvm.dbg.value(metadata i64 %i.219.i, metadata !1429, metadata !DIExpression()) #17, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %j.017.i, metadata !1431, metadata !DIExpression()) #17, !dbg !1453
  %arrayidx130.i = getelementptr inbounds %struct._PixelPacket, ptr %call109.i, i64 %j.017.i, !dbg !1573
  %arrayidx132.i = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 %i.219.i, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %image, metadata !1577, metadata !DIExpression()) #17, !dbg !1584
  call void @llvm.dbg.value(metadata ptr %arrayidx130.i, metadata !1582, metadata !DIExpression()) #17, !dbg !1584
  call void @llvm.dbg.value(metadata ptr %arrayidx132.i, metadata !1583, metadata !DIExpression()) #17, !dbg !1584
  %red.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call109.i, i64 %j.017.i, i32 2, !dbg !1586
  %58 = load i16, ptr %red.i.i, align 2, !dbg !1586, !tbaa !1355
  %red1.i.i = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 %i.219.i, i32 2, !dbg !1588
  %59 = load i16, ptr %red1.i.i, align 2, !dbg !1588, !tbaa !1355
  %cmp.not.i.i = icmp eq i16 %58, %59, !dbg !1589
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then136.i, !dbg !1590

lor.lhs.false.i.i:                                ; preds = %for.body129.i
  %green.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call109.i, i64 %j.017.i, i32 1, !dbg !1591
  %60 = load i16, ptr %green.i.i, align 2, !dbg !1591, !tbaa !1359
  %green5.i.i = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 %i.219.i, i32 1, !dbg !1592
  %61 = load i16, ptr %green5.i.i, align 2, !dbg !1592, !tbaa !1359
  %cmp7.not.i.i = icmp eq i16 %60, %61, !dbg !1593
  br i1 %cmp7.not.i.i, label %lor.lhs.false9.i.i, label %if.then136.i, !dbg !1594

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false.i.i
  %62 = load i16, ptr %arrayidx130.i, align 2, !dbg !1595, !tbaa !1363
  %63 = load i16, ptr %arrayidx132.i, align 2, !dbg !1596, !tbaa !1363
  %cmp13.not.i.i = icmp eq i16 %62, %63, !dbg !1597
  br i1 %cmp13.not.i.i, label %if.end.i.i, label %if.then136.i, !dbg !1598

if.end.i.i:                                       ; preds = %lor.lhs.false9.i.i
  %64 = load i32, ptr %matte, align 8, !dbg !1599, !tbaa !1286
  %cmp15.not.i.i = icmp eq i32 %64, 0, !dbg !1601
  br i1 %cmp15.not.i.i, label %if.end141.i, label %land.lhs.true.i.i, !dbg !1602

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %opacity.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call109.i, i64 %j.017.i, i32 3, !dbg !1603
  %65 = load i16, ptr %opacity.i.i, align 2, !dbg !1603, !tbaa !1367
  %opacity18.i.i = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 %i.219.i, i32 3, !dbg !1604
  %66 = load i16, ptr %opacity18.i.i, align 2, !dbg !1604, !tbaa !1367
  %cmp20.not.i.i = icmp eq i16 %65, %66, !dbg !1605
  br i1 %cmp20.not.i.i, label %if.end141.i, label %if.then136.i, !dbg !1606

if.then136.i:                                     ; preds = %land.lhs.true.i.i, %lor.lhs.false9.i.i, %lor.lhs.false.i.i, %for.body129.i
  %inc137.i = add nsw i64 %j.017.i, 1, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %inc137.i, metadata !1431, metadata !DIExpression()) #17, !dbg !1453
  %arrayidx138.i = getelementptr inbounds %struct._PixelPacket, ptr %call109.i, i64 %inc137.i, !dbg !1609
  %67 = load i64, ptr %arrayidx132.i, align 2, !dbg !1610
  store i64 %67, ptr %arrayidx138.i, align 2, !dbg !1610
  %.pre36.i = load ptr, ptr %colormap101.i, align 8, !dbg !1611, !tbaa !1350
  br label %if.end141.i, !dbg !1612

if.end141.i:                                      ; preds = %if.then136.i, %land.lhs.true.i.i, %if.end.i.i
  %68 = phi ptr [ %.pre36.i, %if.then136.i ], [ %57, %if.end.i.i ], [ %57, %land.lhs.true.i.i ], !dbg !1611
  %j.1.i = phi i64 [ %inc137.i, %if.then136.i ], [ %j.017.i, %if.end.i.i ], [ %j.017.i, %land.lhs.true.i.i ], !dbg !1453
  call void @llvm.dbg.value(metadata i64 %j.1.i, metadata !1431, metadata !DIExpression()) #17, !dbg !1453
  %opacity144.i = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %i.219.i, i32 3, !dbg !1613
  %69 = load i16, ptr %opacity144.i, align 2, !dbg !1613, !tbaa !1367
  %conv145.i = zext i16 %69 to i64, !dbg !1614
  %arrayidx146.i = getelementptr inbounds i64, ptr %call1.i, i64 %conv145.i, !dbg !1615
  store i64 %j.1.i, ptr %arrayidx146.i, align 8, !dbg !1616, !tbaa !1476
  %inc148.i = add nuw nsw i64 %i.219.i, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %inc148.i, metadata !1429, metadata !DIExpression()) #17, !dbg !1453
  %70 = load i64, ptr %colors96.i, align 8, !dbg !1568, !tbaa !1243
  %cmp127.i = icmp slt i64 %inc148.i, %70, !dbg !1571
  br i1 %cmp127.i, label %for.body129.i, label %for.end149.i, !dbg !1572, !llvm.loop !1618

for.end149.i:                                     ; preds = %if.end141.i, %if.end121.i
  %71 = phi ptr [ %.pre35.i, %if.end121.i ], [ %68, %if.end141.i ], !dbg !1620
  %j.0.lcssa.i = phi i64 [ 0, %if.end121.i ], [ %j.1.i, %if.end141.i ], !dbg !1453
  %add.i = add nsw i64 %j.0.lcssa.i, 1, !dbg !1621
  store i64 %add.i, ptr %colors96.i, align 8, !dbg !1622, !tbaa !1243
  %call152.i = call ptr @RelinquishMagickMemory(ptr noundef %71) #17, !dbg !1623
  store ptr %call109.i, ptr %colormap101.i, align 8, !dbg !1624, !tbaa !1350
  call void @llvm.dbg.value(metadata i32 1, metadata !1427, metadata !DIExpression()) #17, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %exception13, metadata !1426, metadata !DIExpression()) #17, !dbg !1453
  %call156.i = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception13) #17, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %call156.i, metadata !1425, metadata !DIExpression()) #17, !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1432, metadata !DIExpression()) #17, !dbg !1453
  %72 = load i64, ptr %rows, align 8, !dbg !1626, !tbaa !1294
  %cmp15926.i = icmp sgt i64 %72, 0, !dbg !1627
  br i1 %cmp15926.i, label %for.body161.i, label %for.end211.i, !dbg !1628

for.body161.i:                                    ; preds = %for.end149.i, %cleanup204.i
  %status.328.i = phi i32 [ %status.5.i, %cleanup204.i ], [ 1, %for.end149.i ]
  %y.127.i = phi i64 [ %inc210.i, %cleanup204.i ], [ 0, %for.end149.i ]
  call void @llvm.dbg.value(metadata i32 %status.328.i, metadata !1427, metadata !DIExpression()) #17, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %y.127.i, metadata !1432, metadata !DIExpression()) #17, !dbg !1453
  %cmp165.i = icmp eq i32 %status.328.i, 0, !dbg !1629
  br i1 %cmp165.i, label %cleanup204.i, label %if.end168.i, !dbg !1631

if.end168.i:                                      ; preds = %for.body161.i
  %73 = load i64, ptr %columns, align 8, !dbg !1632, !tbaa !1292
  %call170.i = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call156.i, i64 noundef 0, i64 noundef %y.127.i, i64 noundef %73, i64 noundef 1, ptr noundef nonnull %exception13) #20, !dbg !1633
  call void @llvm.dbg.value(metadata ptr %call170.i, metadata !1451, metadata !DIExpression()) #17, !dbg !1634
  %cmp171.i = icmp eq ptr %call170.i, null, !dbg !1635
  br i1 %cmp171.i, label %cleanup204.i, label %if.end174.i, !dbg !1637

if.end174.i:                                      ; preds = %if.end168.i
  %call175.i = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call156.i) #17, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %call175.i, metadata !1447, metadata !DIExpression()) #17, !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1452, metadata !DIExpression()) #17, !dbg !1634
  %74 = load i64, ptr %columns, align 8, !tbaa !1292
  %cmp17823.i = icmp slt i64 %74, 1, !dbg !1639
  %cmp182.not.i = icmp eq ptr %call175.i, null
  %or.cond.i = select i1 %cmp17823.i, i1 true, i1 %cmp182.not.i, !dbg !1642
  br i1 %or.cond.i, label %for.end198.i, label %for.body180.i, !dbg !1642

for.body180.i:                                    ; preds = %if.end174.i, %for.body180.i
  %x164.024.i = phi i64 [ %inc197.i, %for.body180.i ], [ 0, %if.end174.i ]
  call void @llvm.dbg.value(metadata i64 %x164.024.i, metadata !1452, metadata !DIExpression()) #17, !dbg !1634
  %add.ptr181.i = getelementptr inbounds i16, ptr %call175.i, i64 %x164.024.i, !dbg !1643
  %75 = load i16, ptr %add.ptr181.i, align 2, !dbg !1643, !tbaa !1378
  %idxprom.i = zext i16 %75 to i64, !dbg !1643
  %arrayidx192.i = getelementptr inbounds i64, ptr %call1.i, i64 %idxprom.i, !dbg !1643
  %76 = load i64, ptr %arrayidx192.i, align 8, !dbg !1643, !tbaa !1476
  %conv193.i = trunc i64 %76 to i16, !dbg !1643
  store i16 %conv193.i, ptr %add.ptr181.i, align 2, !dbg !1643, !tbaa !1378
  %inc197.i = add nuw nsw i64 %x164.024.i, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %inc197.i, metadata !1452, metadata !DIExpression()) #17, !dbg !1634
  %exitcond31.not.i = icmp eq i64 %inc197.i, %74, !dbg !1639
  br i1 %exitcond31.not.i, label %for.end198.i, label %for.body180.i, !dbg !1642, !llvm.loop !1647

for.end198.i:                                     ; preds = %for.body180.i, %if.end174.i
  %call199.i = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call156.i, ptr noundef nonnull %exception13) #20, !dbg !1649
  %cmp200.i = icmp ne i32 %call199.i, 0, !dbg !1651
  %spec.select1.i = zext i1 %cmp200.i to i32, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %spec.select1.i, metadata !1427, metadata !DIExpression()) #17, !dbg !1453
  br label %cleanup204.i, !dbg !1653

cleanup204.i:                                     ; preds = %for.end198.i, %if.end168.i, %for.body161.i
  %status.5.i = phi i32 [ %spec.select1.i, %for.end198.i ], [ 0, %for.body161.i ], [ 0, %if.end168.i ], !dbg !1453
  call void @llvm.dbg.value(metadata i32 %status.5.i, metadata !1427, metadata !DIExpression()) #17, !dbg !1453
  %inc210.i = add nuw nsw i64 %y.127.i, 1, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %inc210.i, metadata !1432, metadata !DIExpression()) #17, !dbg !1453
  %77 = load i64, ptr %rows, align 8, !dbg !1626, !tbaa !1294
  %cmp159.i = icmp slt i64 %inc210.i, %77, !dbg !1627
  br i1 %cmp159.i, label %for.body161.i, label %for.end211.i, !dbg !1628, !llvm.loop !1655

for.end211.i:                                     ; preds = %cleanup204.i, %for.end149.i
  %call212.i = call ptr @DestroyCacheView(ptr noundef %call156.i) #17, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %call212.i, metadata !1425, metadata !DIExpression()) #17, !dbg !1453
  %call213.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1.i) #17, !dbg !1658
  call void @llvm.dbg.value(metadata ptr %call213.i, metadata !1430, metadata !DIExpression()) #17, !dbg !1453
  store i32 2, ptr %type.i, align 8, !dbg !1659, !tbaa !1457
  %call216.i = call i32 @IsMonochromeImage(ptr noundef nonnull %image, ptr noundef nonnull %exception13) #17, !dbg !1660
  %cmp217.not.i = icmp eq i32 %call216.i, 0, !dbg !1662
  br i1 %cmp217.not.i, label %if.end19, label %if.then219.i, !dbg !1663

if.then219.i:                                     ; preds = %for.end211.i
  store i32 1, ptr %type.i, align 8, !dbg !1664, !tbaa !1457
  br label %if.end19, !dbg !1665

if.end19:                                         ; preds = %if.then219.i, %for.end211.i, %if.then115.i, %cleanup91.thread.i, %if.then5.i, %if.end12, %if.end
  %78 = load i32, ptr %image, align 8, !dbg !1666, !tbaa !1470
  %cmp20 = icmp eq i32 %78, 2, !dbg !1668
  br i1 %cmp20, label %land.lhs.true, label %if.end23, !dbg !1669

land.lhs.true:                                    ; preds = %if.end19
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1670
  %79 = load i64, ptr %colors, align 8, !dbg !1670, !tbaa !1243
  %cmp21.not = icmp ugt i64 %79, %3, !dbg !1671
  br i1 %cmp21.not, label %if.end23, label %cleanup, !dbg !1672

if.end23:                                         ; preds = %land.lhs.true, %if.end19
  %tree_depth = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 1, !dbg !1673
  %80 = load i64, ptr %tree_depth, align 8, !dbg !1673, !tbaa !1183
  call void @llvm.dbg.value(metadata i64 %80, metadata !1267, metadata !DIExpression()), !dbg !1272
  %cmp24 = icmp eq i64 %80, 0, !dbg !1674
  br i1 %cmp24, label %for.cond.preheader, label %if.end45, !dbg !1675

for.cond.preheader:                               ; preds = %if.end23
  call void @llvm.dbg.value(metadata i64 %3, metadata !1269, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 1, metadata !1267, metadata !DIExpression()), !dbg !1272
  %cmp27.not130 = icmp eq i64 %3, 0, !dbg !1677
  br i1 %cmp27.not130, label %for.end, label %for.body, !dbg !1680

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %colors26.0132 = phi i64 [ %shr, %for.body ], [ %3, %for.cond.preheader ]
  %depth.0131 = phi i64 [ %inc, %for.body ], [ 1, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %colors26.0132, metadata !1269, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %depth.0131, metadata !1267, metadata !DIExpression()), !dbg !1272
  %shr = lshr i64 %colors26.0132, 2, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %shr, metadata !1269, metadata !DIExpression()), !dbg !1676
  %inc = add nuw nsw i64 %depth.0131, 1, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1267, metadata !DIExpression()), !dbg !1272
  %cmp27.not = icmp ult i64 %colors26.0132, 4, !dbg !1677
  br i1 %cmp27.not, label %for.end, label %for.body, !dbg !1680, !llvm.loop !1683

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %depth.0.lcssa = phi i64 [ 1, %for.cond.preheader ], [ %inc, %for.body ], !dbg !1685
  %dither = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 2, !dbg !1686
  %81 = load i32, ptr %dither, align 8, !dbg !1686, !tbaa !1055
  %cmp28 = icmp ne i32 %81, 0, !dbg !1688
  %cmp30 = icmp ugt i64 %depth.0.lcssa, 2
  %or.cond = select i1 %cmp28, i1 %cmp30, i1 false, !dbg !1689
  %dec = sext i1 %or.cond to i64, !dbg !1689
  %spec.select = add i64 %depth.0.lcssa, %dec, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1267, metadata !DIExpression()), !dbg !1272
  %82 = load i32, ptr %matte, align 8, !dbg !1690, !tbaa !1286
  %cmp34 = icmp ne i32 %82, 0, !dbg !1692
  %cmp36 = icmp ugt i64 %spec.select, 5
  %or.cond66 = select i1 %cmp34, i1 %cmp36, i1 false, !dbg !1693
  %dec38 = sext i1 %or.cond66 to i64, !dbg !1693
  %spec.select110 = add i64 %spec.select, %dec38, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %spec.select110, metadata !1267, metadata !DIExpression()), !dbg !1272
  %exception40 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1694
  %call41 = call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef nonnull %exception40) #17, !dbg !1696
  %cmp42.not = icmp eq i32 %call41, 0, !dbg !1697
  %spec.select109 = select i1 %cmp42.not, i64 %spec.select110, i64 8, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %spec.select109, metadata !1267, metadata !DIExpression()), !dbg !1272
  br label %if.end45, !dbg !1699

if.end45:                                         ; preds = %for.end, %if.end23
  %depth.4 = phi i64 [ %spec.select109, %for.end ], [ %80, %if.end23 ], !dbg !1272
  call void @llvm.dbg.value(metadata i64 %depth.4, metadata !1267, metadata !DIExpression()), !dbg !1272
  %call46 = call fastcc ptr @GetCubeInfo(ptr noundef nonnull %quantize_info, i64 noundef %depth.4, i64 noundef %3), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %call46, metadata !1265, metadata !DIExpression()), !dbg !1272
  %cmp47 = icmp eq ptr %call46, null, !dbg !1701
  %exception51 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1272
  br i1 %cmp47, label %if.then50, label %if.end56, !dbg !1703

if.then50:                                        ; preds = %if.end45
  %filename52 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1704
  %call54 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception51, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2736, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename52) #17, !dbg !1704
  br label %cleanup, !dbg !1707

if.end56:                                         ; preds = %if.end45
  %call58 = call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %call46, ptr noundef nonnull %image, ptr noundef nonnull %exception51), !dbg !1708
  call void @llvm.dbg.value(metadata i32 %call58, metadata !1266, metadata !DIExpression()), !dbg !1272
  %cmp59.not = icmp eq i32 %call58, 0, !dbg !1709
  br i1 %cmp59.not, label %if.end62, label %if.then60, !dbg !1711

if.then60:                                        ; preds = %if.end56
  call fastcc void @ReduceImageColors(ptr noundef nonnull %image, ptr noundef nonnull %call46), !dbg !1712
  %call61 = call fastcc i32 @AssignImageColors(ptr noundef nonnull %image, ptr noundef nonnull %call46), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %call61, metadata !1266, metadata !DIExpression()), !dbg !1272
  br label %if.end62, !dbg !1715

if.end62:                                         ; preds = %if.then60, %if.end56
  %status.0 = phi i32 [ %call61, %if.then60 ], [ 0, %if.end56 ], !dbg !1272
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !1266, metadata !DIExpression()), !dbg !1272
  call fastcc void @DestroyCubeInfo(ptr noundef nonnull %call46), !dbg !1716
  br label %cleanup, !dbg !1717

cleanup:                                          ; preds = %land.lhs.true, %if.end62, %if.then50
  %retval.0 = phi i32 [ 0, %if.then50 ], [ %status.0, %if.end62 ], [ 1, %land.lhs.true ], !dbg !1272
  ret i32 %retval.0, !dbg !1718
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyQuantizeInfo(ptr noundef %quantize_info) local_unnamed_addr #0 !dbg !1719 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !1723, metadata !DIExpression()), !dbg !1724
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.6) #17, !dbg !1725
  %signature = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 5, !dbg !1726
  store i64 -2880220588, ptr %signature, align 8, !dbg !1727, !tbaa !1067
  %call1 = tail call ptr @RelinquishMagickMemory(ptr noundef %quantize_info) #17, !dbg !1728
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1723, metadata !DIExpression()), !dbg !1724
  ret ptr %call1, !dbg !1729
}

declare !dbg !1730 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageQuantizeError(ptr noundef %image) local_unnamed_addr #0 !dbg !1733 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1735, metadata !DIExpression()), !dbg !1753
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1754
  %0 = load i32, ptr %debug, align 8, !dbg !1754, !tbaa !1207
  %cmp.not = icmp eq i32 %0, 0, !dbg !1756
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1757

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1758
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2153, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #17, !dbg !1759
  br label %if.end, !dbg !1760

if.end:                                           ; preds = %if.then, %entry
  %exception1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1761
  %call2 = tail call i64 @GetNumberColors(ptr noundef nonnull %image, ptr noundef null, ptr noundef nonnull %exception1) #17, !dbg !1762
  %total_colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 43, !dbg !1763
  store i64 %call2, ptr %total_colors, align 8, !dbg !1764, !tbaa !1765
  %error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, !dbg !1766
  %call3 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %error, i32 noundef 0, i64 noundef 24) #17, !dbg !1767
  %1 = load i32, ptr %image, align 8, !dbg !1768, !tbaa !1470
  %cmp4 = icmp eq i32 %1, 1, !dbg !1770
  br i1 %cmp4, label %cleanup116, label %if.end6, !dbg !1771

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1739, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1741, metadata !DIExpression()), !dbg !1753
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1772
  %2 = load i64, ptr %columns, align 8, !dbg !1772, !tbaa !1292
  %conv = uitofp i64 %2 to double, !dbg !1773
  %mul = fmul double %conv, 3.000000e+00, !dbg !1774
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1775
  %3 = load i64, ptr %rows, align 8, !dbg !1775, !tbaa !1294
  %conv7 = uitofp i64 %3 to double, !dbg !1776
  %mul8 = fmul double %mul, %conv7, !dbg !1777
  %conv9 = fptrunc double %mul8 to float, !dbg !1778
  call void @llvm.dbg.value(metadata float %conv9, metadata !1740, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1743, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata ptr %exception1, metadata !1737, metadata !DIExpression()), !dbg !1753
  %call11 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception1) #17, !dbg !1779
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1736, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 0, metadata !1747, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1743, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1739, metadata !DIExpression()), !dbg !1753
  %4 = load i64, ptr %rows, align 8, !dbg !1780, !tbaa !1294
  %cmp13219 = icmp sgt i64 %4, 0, !dbg !1781
  br i1 %cmp13219, label %for.body.lr.ph, label %for.end102, !dbg !1782

for.body.lr.ph:                                   ; preds = %if.end6
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %.pre = load i64, ptr %columns, align 8, !dbg !1783, !tbaa !1292
  br label %for.body, !dbg !1782

for.body:                                         ; preds = %for.body.lr.ph, %for.inc100
  %5 = phi i64 [ %.pre, %for.body.lr.ph ], [ %6, %for.inc100 ], !dbg !1783
  %y.0225 = phi i64 [ 0, %for.body.lr.ph ], [ %inc101, %for.inc100 ]
  %mean_error_per_pixel.0224 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %mean_error_per_pixel.1.lcssa, %for.inc100 ]
  %mean_error.0223 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %mean_error.1.lcssa, %for.inc100 ]
  %maximum_error.0222 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %maximum_error.1.lcssa, %for.inc100 ]
  %beta.0221 = phi float [ 1.000000e+00, %for.body.lr.ph ], [ %beta.1.lcssa, %for.inc100 ]
  %alpha.0220 = phi float [ 1.000000e+00, %for.body.lr.ph ], [ %alpha.1.lcssa, %for.inc100 ]
  call void @llvm.dbg.value(metadata i64 %y.0225, metadata !1747, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.0224, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %mean_error.0223, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %maximum_error.0222, metadata !1743, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %beta.0221, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %alpha.0220, metadata !1739, metadata !DIExpression()), !dbg !1753
  %call16 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call11, i64 noundef 0, i64 noundef %y.0225, i64 noundef %5, i64 noundef 1, ptr noundef nonnull %exception1) #20, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1748, metadata !DIExpression()), !dbg !1785
  %cmp17 = icmp eq ptr %call16, null, !dbg !1786
  br i1 %cmp17, label %for.end102, label %if.end20, !dbg !1788

if.end20:                                         ; preds = %for.body
  %call21 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call11) #17, !dbg !1789
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1738, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 0, metadata !1752, metadata !DIExpression()), !dbg !1785
  %6 = load i64, ptr %columns, align 8, !tbaa !1292
  call void @llvm.dbg.value(metadata i64 0, metadata !1752, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1748, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.0224, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %mean_error.0223, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %maximum_error.0222, metadata !1743, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %beta.0221, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %alpha.0220, metadata !1739, metadata !DIExpression()), !dbg !1753
  %cmp24206 = icmp sgt i64 %6, 0, !dbg !1790
  br i1 %cmp24206, label %for.body26.lr.ph, label %for.inc100, !dbg !1793

for.body26.lr.ph:                                 ; preds = %if.end20
  %cmp27 = icmp eq ptr %call21, null
  %7 = load i32, ptr %matte, align 8, !tbaa !1286
  %cmp33.not = icmp eq i32 %7, 0
  %8 = load ptr, ptr %colormap, align 8, !tbaa !1350
  br label %for.body26, !dbg !1793

for.body26:                                       ; preds = %for.body26.lr.ph, %if.end98
  %x.0213 = phi i64 [ 0, %for.body26.lr.ph ], [ %inc, %if.end98 ]
  %p.0212 = phi ptr [ %call16, %for.body26.lr.ph ], [ %incdec.ptr, %if.end98 ]
  %mean_error_per_pixel.1211 = phi float [ %mean_error_per_pixel.0224, %for.body26.lr.ph ], [ %add93, %if.end98 ]
  %mean_error.1210 = phi float [ %mean_error.0223, %for.body26.lr.ph ], [ %29, %if.end98 ]
  %maximum_error.1209 = phi float [ %maximum_error.0222, %for.body26.lr.ph ], [ %maximum_error.4, %if.end98 ]
  %beta.1208 = phi float [ %beta.0221, %for.body26.lr.ph ], [ %beta.2, %if.end98 ]
  %alpha.1207 = phi float [ %alpha.0220, %for.body26.lr.ph ], [ %alpha.2, %if.end98 ]
  call void @llvm.dbg.value(metadata i64 %x.0213, metadata !1752, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata ptr %p.0212, metadata !1748, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.1211, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %mean_error.1210, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %maximum_error.1209, metadata !1743, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %beta.1208, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %alpha.1207, metadata !1739, metadata !DIExpression()), !dbg !1753
  br i1 %cmp27, label %cond.end, label %cond.false, !dbg !1794

cond.false:                                       ; preds = %for.body26
  %add.ptr = getelementptr inbounds i16, ptr %call21, i64 %x.0213, !dbg !1794
  %9 = load i16, ptr %add.ptr, align 2, !dbg !1794, !tbaa !1378
  %conv30 = zext i16 %9 to i64, !dbg !1794
  br label %cond.end, !dbg !1794

cond.end:                                         ; preds = %for.body26, %cond.false
  %cond = phi i64 [ %conv30, %cond.false ], [ 0, %for.body26 ], !dbg !1794
  call void @llvm.dbg.value(metadata i64 %cond, metadata !1746, metadata !DIExpression()), !dbg !1753
  br i1 %cmp33.not, label %if.end46, label %if.then35, !dbg !1796

if.then35:                                        ; preds = %cond.end
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0212, i64 0, i32 3, !dbg !1797
  %10 = load i16, ptr %opacity, align 2, !dbg !1797, !tbaa !1367
  %11 = xor i16 %10, -1, !dbg !1797
  %conv37 = uitofp i16 %11 to double, !dbg !1800
  %mul38 = fmul double %conv37, 0x3EF0001000100010, !dbg !1801
  %conv39 = fptrunc double %mul38 to float, !dbg !1802
  call void @llvm.dbg.value(metadata float %conv39, metadata !1739, metadata !DIExpression()), !dbg !1753
  %opacity40 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 %cond, i32 3, !dbg !1803
  %12 = load i16, ptr %opacity40, align 2, !dbg !1803, !tbaa !1367
  %13 = xor i16 %12, -1, !dbg !1804
  %conv43 = uitofp i16 %13 to double, !dbg !1805
  %mul44 = fmul double %conv43, 0x3EF0001000100010, !dbg !1806
  %conv45 = fptrunc double %mul44 to float, !dbg !1807
  call void @llvm.dbg.value(metadata float %conv45, metadata !1741, metadata !DIExpression()), !dbg !1753
  br label %if.end46, !dbg !1808

if.end46:                                         ; preds = %if.then35, %cond.end
  %alpha.2 = phi float [ %conv39, %if.then35 ], [ %alpha.1207, %cond.end ], !dbg !1753
  %beta.2 = phi float [ %conv45, %if.then35 ], [ %beta.1208, %cond.end ], !dbg !1753
  call void @llvm.dbg.value(metadata float %beta.2, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %alpha.2, metadata !1739, metadata !DIExpression()), !dbg !1753
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0212, i64 0, i32 2, !dbg !1809
  %14 = load i16, ptr %red, align 2, !dbg !1809, !tbaa !1355
  %conv48 = uitofp i16 %14 to float, !dbg !1809
  %red52 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 %cond, i32 2, !dbg !1810
  %15 = load i16, ptr %red52, align 2, !dbg !1810, !tbaa !1355
  %conv54 = uitofp i16 %15 to float, !dbg !1811
  %16 = fneg float %beta.2, !dbg !1812
  %neg = fmul float %16, %conv54, !dbg !1812
  %17 = tail call float @llvm.fmuladd.f32(float %alpha.2, float %conv48, float %neg), !dbg !1812
  %18 = tail call float @llvm.fabs.f32(float %17), !dbg !1813
  call void @llvm.dbg.value(metadata float %18, metadata !1742, metadata !DIExpression()), !dbg !1753
  %add = fadd float %mean_error_per_pixel.1211, %18, !dbg !1814
  call void @llvm.dbg.value(metadata float %add, metadata !1745, metadata !DIExpression()), !dbg !1753
  %19 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %mean_error.1210), !dbg !1815
  call void @llvm.dbg.value(metadata float %19, metadata !1744, metadata !DIExpression()), !dbg !1753
  %cmp59 = fcmp ogt float %18, %maximum_error.1209, !dbg !1816
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !1818

if.then61:                                        ; preds = %if.end46
  call void @llvm.dbg.value(metadata float %18, metadata !1743, metadata !DIExpression()), !dbg !1753
  br label %if.end62, !dbg !1819

if.end62:                                         ; preds = %if.then61, %if.end46
  %maximum_error.2 = phi float [ %18, %if.then61 ], [ %maximum_error.1209, %if.end46 ], !dbg !1753
  call void @llvm.dbg.value(metadata float %maximum_error.2, metadata !1743, metadata !DIExpression()), !dbg !1753
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0212, i64 0, i32 1, !dbg !1820
  %20 = load i16, ptr %green, align 2, !dbg !1820, !tbaa !1359
  %conv64 = uitofp i16 %20 to float, !dbg !1820
  %green68 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 %cond, i32 1, !dbg !1821
  %21 = load i16, ptr %green68, align 2, !dbg !1821, !tbaa !1359
  %conv70 = uitofp i16 %21 to float, !dbg !1822
  %neg72 = fmul float %16, %conv70, !dbg !1823
  %22 = tail call float @llvm.fmuladd.f32(float %alpha.2, float %conv64, float %neg72), !dbg !1823
  %23 = tail call float @llvm.fabs.f32(float %22), !dbg !1824
  call void @llvm.dbg.value(metadata float %23, metadata !1742, metadata !DIExpression()), !dbg !1753
  %add75 = fadd float %add, %23, !dbg !1825
  call void @llvm.dbg.value(metadata float %add75, metadata !1745, metadata !DIExpression()), !dbg !1753
  %24 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %19), !dbg !1826
  call void @llvm.dbg.value(metadata float %24, metadata !1744, metadata !DIExpression()), !dbg !1753
  %cmp77 = fcmp ogt float %23, %maximum_error.2, !dbg !1827
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !1829

if.then79:                                        ; preds = %if.end62
  call void @llvm.dbg.value(metadata float %23, metadata !1743, metadata !DIExpression()), !dbg !1753
  br label %if.end80, !dbg !1830

if.end80:                                         ; preds = %if.then79, %if.end62
  %maximum_error.3 = phi float [ %23, %if.then79 ], [ %maximum_error.2, %if.end62 ], !dbg !1831
  call void @llvm.dbg.value(metadata float %maximum_error.3, metadata !1743, metadata !DIExpression()), !dbg !1753
  %25 = load i16, ptr %p.0212, align 2, !dbg !1832, !tbaa !1363
  %conv82 = uitofp i16 %25 to float, !dbg !1832
  %arrayidx85 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 %cond, !dbg !1833
  %26 = load i16, ptr %arrayidx85, align 2, !dbg !1834, !tbaa !1363
  %conv88 = uitofp i16 %26 to float, !dbg !1833
  %neg90 = fmul float %16, %conv88, !dbg !1835
  %27 = tail call float @llvm.fmuladd.f32(float %alpha.2, float %conv82, float %neg90), !dbg !1835
  %28 = tail call float @llvm.fabs.f32(float %27), !dbg !1836
  call void @llvm.dbg.value(metadata float %28, metadata !1742, metadata !DIExpression()), !dbg !1753
  %add93 = fadd float %add75, %28, !dbg !1837
  call void @llvm.dbg.value(metadata float %add93, metadata !1745, metadata !DIExpression()), !dbg !1753
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %24), !dbg !1838
  call void @llvm.dbg.value(metadata float %29, metadata !1744, metadata !DIExpression()), !dbg !1753
  %cmp95 = fcmp ogt float %28, %maximum_error.3, !dbg !1839
  br i1 %cmp95, label %if.then97, label %if.end98, !dbg !1841

if.then97:                                        ; preds = %if.end80
  call void @llvm.dbg.value(metadata float %28, metadata !1743, metadata !DIExpression()), !dbg !1753
  br label %if.end98, !dbg !1842

if.end98:                                         ; preds = %if.then97, %if.end80
  %maximum_error.4 = phi float [ %28, %if.then97 ], [ %maximum_error.3, %if.end80 ], !dbg !1831
  call void @llvm.dbg.value(metadata float %maximum_error.4, metadata !1743, metadata !DIExpression()), !dbg !1753
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0212, i64 1, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1748, metadata !DIExpression()), !dbg !1785
  %inc = add nuw nsw i64 %x.0213, 1, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1752, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata float %add93, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %29, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %beta.2, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %alpha.2, metadata !1739, metadata !DIExpression()), !dbg !1753
  %exitcond.not = icmp eq i64 %inc, %6, !dbg !1790
  br i1 %exitcond.not, label %for.inc100, label %for.body26, !dbg !1793, !llvm.loop !1845

for.inc100:                                       ; preds = %if.end98, %if.end20
  %alpha.1.lcssa = phi float [ %alpha.0220, %if.end20 ], [ %alpha.2, %if.end98 ], !dbg !1753
  %beta.1.lcssa = phi float [ %beta.0221, %if.end20 ], [ %beta.2, %if.end98 ], !dbg !1753
  %maximum_error.1.lcssa = phi float [ %maximum_error.0222, %if.end20 ], [ %maximum_error.4, %if.end98 ], !dbg !1753
  %mean_error.1.lcssa = phi float [ %mean_error.0223, %if.end20 ], [ %29, %if.end98 ], !dbg !1753
  %mean_error_per_pixel.1.lcssa = phi float [ %mean_error_per_pixel.0224, %if.end20 ], [ %add93, %if.end98 ], !dbg !1753
  call void @llvm.dbg.value(metadata float undef, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float undef, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float undef, metadata !1743, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float undef, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float undef, metadata !1739, metadata !DIExpression()), !dbg !1753
  %inc101 = add nuw nsw i64 %y.0225, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %inc101, metadata !1747, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.1.lcssa, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %mean_error.1.lcssa, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %maximum_error.1.lcssa, metadata !1743, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %beta.1.lcssa, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %alpha.1.lcssa, metadata !1739, metadata !DIExpression()), !dbg !1753
  %30 = load i64, ptr %rows, align 8, !dbg !1780, !tbaa !1294
  %cmp13 = icmp slt i64 %inc101, %30, !dbg !1781
  br i1 %cmp13, label %for.body, label %for.end102, !dbg !1782, !llvm.loop !1848

for.end102:                                       ; preds = %for.inc100, %for.body, %if.end6
  %maximum_error.0.lcssa = phi float [ 0.000000e+00, %if.end6 ], [ %maximum_error.0222, %for.body ], [ %maximum_error.1.lcssa, %for.inc100 ], !dbg !1850
  %mean_error.0.lcssa = phi float [ 0.000000e+00, %if.end6 ], [ %mean_error.0223, %for.body ], [ %mean_error.1.lcssa, %for.inc100 ], !dbg !1851
  %mean_error_per_pixel.0.lcssa = phi float [ 0.000000e+00, %if.end6 ], [ %mean_error_per_pixel.0224, %for.body ], [ %mean_error_per_pixel.1.lcssa, %for.inc100 ], !dbg !1852
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.0.lcssa, metadata !1745, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %mean_error.0.lcssa, metadata !1744, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata float %maximum_error.0.lcssa, metadata !1743, metadata !DIExpression()), !dbg !1753
  %call103 = tail call ptr @DestroyCacheView(ptr noundef %call11) #17, !dbg !1853
  call void @llvm.dbg.value(metadata ptr %call103, metadata !1736, metadata !DIExpression()), !dbg !1753
  %conv104 = fpext float %mean_error_per_pixel.0.lcssa to double, !dbg !1854
  %conv105 = fpext float %conv9 to double, !dbg !1855
  %div = fdiv double %conv104, %conv105, !dbg !1856
  store double %div, ptr %error, align 8, !dbg !1857, !tbaa !1858
  %conv108 = fpext float %mean_error.0.lcssa to double, !dbg !1859
  %mul109 = fmul double %conv108, 0x3DF0002000300040, !dbg !1860
  %div111 = fdiv double %mul109, %conv105, !dbg !1861
  %normalized_mean_error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 1, !dbg !1862
  store double %div111, ptr %normalized_mean_error, align 8, !dbg !1863, !tbaa !1864
  %conv113 = fpext float %maximum_error.0.lcssa to double, !dbg !1865
  %mul114 = fmul double %conv113, 0x3EF0001000100010, !dbg !1866
  %normalized_maximum_error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 2, !dbg !1867
  store double %mul114, ptr %normalized_maximum_error, align 8, !dbg !1868, !tbaa !1869
  br label %cleanup116, !dbg !1870

cleanup116:                                       ; preds = %if.end, %for.end102
  ret i32 1, !dbg !1871
}

declare !dbg !1872 i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1875 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1878 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1881 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !1887 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

declare !dbg !1890 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @PosterizeImage(ptr noundef %image, i64 noundef %levels, i32 noundef %dither) local_unnamed_addr #0 !dbg !1893 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1897, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %levels, metadata !1898, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i32 %dither, metadata !1899, metadata !DIExpression()), !dbg !1901
  %call = tail call i32 @PosterizeImageChannel(ptr noundef %image, i32 noundef 134217719, i64 noundef %levels, i32 noundef %dither), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %call, metadata !1900, metadata !DIExpression()), !dbg !1901
  ret i32 %call, !dbg !1903
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PosterizeImageChannel(ptr noundef %image, i32 noundef %channel, i64 noundef %levels, i32 noundef %dither) local_unnamed_addr #0 !dbg !1904 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1909, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1910, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %levels, metadata !1911, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i32 %dither, metadata !1912, metadata !DIExpression()), !dbg !1929
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1930
  %0 = load i32, ptr %debug, align 8, !dbg !1930, !tbaa !1207
  %cmp.not = icmp eq i32 %0, 0, !dbg !1932
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1933

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1934
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2333, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #17, !dbg !1935
  br label %if.end, !dbg !1936

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %image, align 8, !dbg !1937, !tbaa !1470
  %cmp1 = icmp eq i32 %1, 2, !dbg !1939
  br i1 %cmp1, label %for.cond.preheader, label %if.end88, !dbg !1940

for.cond.preheader:                               ; preds = %if.end
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10
  %2 = load i64, ptr %colors, align 8, !tbaa !1243
  call void @llvm.dbg.value(metadata i64 0, metadata !1918, metadata !DIExpression()), !dbg !1929
  %cmp3384 = icmp sgt i64 %2, 0, !dbg !1941
  br i1 %cmp3384, label %for.body.lr.ph, label %if.end88, !dbg !1944

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and = and i32 %channel, 1
  %cmp4.not = icmp eq i32 %and, 0
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %sub = add i64 %levels, -1
  %conv7 = uitofp i64 %sub to double
  %3 = tail call i64 @llvm.smax.i64(i64 %sub, i64 1) #17, !dbg !1929
  %conv13 = sitofp i64 %3 to double
  %and19 = and i32 %channel, 2
  %cmp20.not = icmp eq i32 %and19, 0
  %and42 = and i32 %channel, 4
  %cmp43.not = icmp eq i32 %and42, 0
  %and65 = and i32 %channel, 8
  %cmp66.not = icmp eq i32 %and65, 0
  br label %for.body, !dbg !1944

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0385 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.0385, metadata !1918, metadata !DIExpression()), !dbg !1929
  br i1 %cmp4.not, label %if.end18, label %if.then5, !dbg !1945

if.then5:                                         ; preds = %for.body
  %4 = load ptr, ptr %colormap, align 8, !dbg !1947, !tbaa !1350
  %red = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 %i.0385, i32 2, !dbg !1947
  %5 = load i16, ptr %red, align 2, !dbg !1947, !tbaa !1355
  %conv6 = uitofp i16 %5 to double, !dbg !1947
  %mul = fmul double %conv6, 0x3EF0001000100010, !dbg !1947
  %mul8 = fmul double %mul, %conv7, !dbg !1947
  call void @llvm.dbg.value(metadata double %mul8, metadata !1949, metadata !DIExpression()) #17, !dbg !1954
  %6 = tail call double @llvm.floor.f64(double %mul8) #17, !dbg !1956
  %sub.i = fsub double %mul8, %6, !dbg !1958
  %7 = tail call double @llvm.ceil.f64(double %mul8) #17, !dbg !1959
  %sub1.i = fsub double %7, %mul8, !dbg !1960
  %cmp.i = fcmp olt double %sub.i, %sub1.i, !dbg !1961
  %..i = select i1 %cmp.i, double %6, double %7, !dbg !1954
  %mul10 = fmul double %..i, 6.553500e+04, !dbg !1947
  %div = fdiv double %mul10, %conv13, !dbg !1947
  %conv14 = fptoui double %div to i16, !dbg !1947
  store i16 %conv14, ptr %red, align 2, !dbg !1962, !tbaa !1355
  br label %if.end18, !dbg !1963

if.end18:                                         ; preds = %if.then5, %for.body
  br i1 %cmp20.not, label %if.end41, label %if.then22, !dbg !1964

if.then22:                                        ; preds = %if.end18
  %8 = load ptr, ptr %colormap, align 8, !dbg !1965, !tbaa !1350
  %green = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 %i.0385, i32 1, !dbg !1965
  %9 = load i16, ptr %green, align 2, !dbg !1965, !tbaa !1359
  %conv26 = uitofp i16 %9 to double, !dbg !1965
  %mul27 = fmul double %conv26, 0x3EF0001000100010, !dbg !1965
  %mul30 = fmul double %mul27, %conv7, !dbg !1965
  call void @llvm.dbg.value(metadata double %mul30, metadata !1949, metadata !DIExpression()) #17, !dbg !1967
  %10 = tail call double @llvm.floor.f64(double %mul30) #17, !dbg !1969
  %sub.i350 = fsub double %mul30, %10, !dbg !1970
  %11 = tail call double @llvm.ceil.f64(double %mul30) #17, !dbg !1971
  %sub1.i351 = fsub double %11, %mul30, !dbg !1972
  %cmp.i352 = fcmp olt double %sub.i350, %sub1.i351, !dbg !1973
  %..i353 = select i1 %cmp.i352, double %10, double %11, !dbg !1967
  %mul32 = fmul double %..i353, 6.553500e+04, !dbg !1965
  %div36 = fdiv double %mul32, %conv13, !dbg !1965
  %conv37 = fptoui double %div36 to i16, !dbg !1965
  store i16 %conv37, ptr %green, align 2, !dbg !1974, !tbaa !1359
  br label %if.end41, !dbg !1975

if.end41:                                         ; preds = %if.then22, %if.end18
  br i1 %cmp43.not, label %if.end64, label %if.then45, !dbg !1976

if.then45:                                        ; preds = %if.end41
  %12 = load ptr, ptr %colormap, align 8, !dbg !1977, !tbaa !1350
  %arrayidx47 = getelementptr inbounds %struct._PixelPacket, ptr %12, i64 %i.0385, !dbg !1977
  %13 = load i16, ptr %arrayidx47, align 2, !dbg !1977, !tbaa !1363
  %conv49 = uitofp i16 %13 to double, !dbg !1977
  %mul50 = fmul double %conv49, 0x3EF0001000100010, !dbg !1977
  %mul53 = fmul double %mul50, %conv7, !dbg !1977
  call void @llvm.dbg.value(metadata double %mul53, metadata !1949, metadata !DIExpression()) #17, !dbg !1979
  %14 = tail call double @llvm.floor.f64(double %mul53) #17, !dbg !1981
  %sub.i354 = fsub double %mul53, %14, !dbg !1982
  %15 = tail call double @llvm.ceil.f64(double %mul53) #17, !dbg !1983
  %sub1.i355 = fsub double %15, %mul53, !dbg !1984
  %cmp.i356 = fcmp olt double %sub.i354, %sub1.i355, !dbg !1985
  %..i357 = select i1 %cmp.i356, double %14, double %15, !dbg !1979
  %mul55 = fmul double %..i357, 6.553500e+04, !dbg !1977
  %div59 = fdiv double %mul55, %conv13, !dbg !1977
  %conv60 = fptoui double %div59 to i16, !dbg !1977
  store i16 %conv60, ptr %arrayidx47, align 2, !dbg !1986, !tbaa !1363
  br label %if.end64, !dbg !1987

if.end64:                                         ; preds = %if.then45, %if.end41
  br i1 %cmp66.not, label %for.inc, label %if.then68, !dbg !1988

if.then68:                                        ; preds = %if.end64
  %16 = load ptr, ptr %colormap, align 8, !dbg !1989, !tbaa !1350
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %16, i64 %i.0385, i32 3, !dbg !1989
  %17 = load i16, ptr %opacity, align 2, !dbg !1989, !tbaa !1367
  %conv72 = uitofp i16 %17 to double, !dbg !1989
  %mul73 = fmul double %conv72, 0x3EF0001000100010, !dbg !1989
  %mul76 = fmul double %mul73, %conv7, !dbg !1989
  call void @llvm.dbg.value(metadata double %mul76, metadata !1949, metadata !DIExpression()) #17, !dbg !1991
  %18 = tail call double @llvm.floor.f64(double %mul76) #17, !dbg !1993
  %sub.i358 = fsub double %mul76, %18, !dbg !1994
  %19 = tail call double @llvm.ceil.f64(double %mul76) #17, !dbg !1995
  %sub1.i359 = fsub double %19, %mul76, !dbg !1996
  %cmp.i360 = fcmp olt double %sub.i358, %sub1.i359, !dbg !1997
  %..i361 = select i1 %cmp.i360, double %18, double %19, !dbg !1991
  %mul78 = fmul double %..i361, 6.553500e+04, !dbg !1989
  %div82 = fdiv double %mul78, %conv13, !dbg !1989
  %conv83 = fptoui double %div82 to i16, !dbg !1989
  store i16 %conv83, ptr %opacity, align 2, !dbg !1998, !tbaa !1367
  br label %for.inc, !dbg !1999

for.inc:                                          ; preds = %if.end64, %if.then68
  %inc = add nuw nsw i64 %i.0385, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1918, metadata !DIExpression()), !dbg !1929
  %exitcond.not = icmp eq i64 %inc, %2, !dbg !1941
  br i1 %exitcond.not, label %if.end88, label %for.body, !dbg !1944, !llvm.loop !2001

if.end88:                                         ; preds = %for.inc, %for.cond.preheader, %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !1915, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1929
  %exception89 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2003
  call void @llvm.dbg.value(metadata ptr %exception89, metadata !1914, metadata !DIExpression()), !dbg !1929
  %call90 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception89) #17, !dbg !2004
  call void @llvm.dbg.value(metadata ptr %call90, metadata !1913, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 0, metadata !1919, metadata !DIExpression()), !dbg !1929
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %20 = load i64, ptr %rows, align 8, !dbg !2005, !tbaa !1294
  %cmp92394 = icmp sgt i64 %20, 0, !dbg !2006
  br i1 %cmp92394, label %for.body94.lr.ph, label %for.end245, !dbg !2007

for.body94.lr.ph:                                 ; preds = %if.end88
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and110 = and i32 %channel, 1
  %cmp111.not = icmp eq i32 %and110, 0
  %sub118 = add i64 %levels, -1
  %conv119 = uitofp i64 %sub118 to double
  %21 = call i64 @llvm.smax.i64(i64 %sub118, i64 1) #17, !dbg !1929
  %conv125 = sitofp i64 %21 to double
  %and130 = and i32 %channel, 2
  %cmp131.not = icmp eq i32 %and130, 0
  %and150 = and i32 %channel, 4
  %cmp151.not = icmp eq i32 %and150, 0
  %and170 = and i32 %channel, 8
  %cmp171.not = icmp eq i32 %and170, 0
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %and192 = and i32 %channel, 32
  %cmp193.not = icmp eq i32 %and192, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body94, !dbg !2007

for.body94:                                       ; preds = %for.body94.lr.ph, %cleanup
  %status.0397 = phi i32 [ 1, %for.body94.lr.ph ], [ %status.4, %cleanup ]
  %y.0396 = phi i64 [ 0, %for.body94.lr.ph ], [ %inc244, %cleanup ]
  %progress.0395 = phi i64 [ 0, %for.body94.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0397, metadata !1915, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %y.0396, metadata !1919, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %progress.0395, metadata !1916, metadata !DIExpression()), !dbg !1929
  %cmp95 = icmp eq i32 %status.0397, 0, !dbg !2008
  br i1 %cmp95, label %cleanup, label %if.end98, !dbg !2010

if.end98:                                         ; preds = %for.body94
  %22 = load i64, ptr %columns, align 8, !dbg !2011, !tbaa !1292
  %call99 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call90, i64 noundef 0, i64 noundef %y.0396, i64 noundef %22, i64 noundef 1, ptr noundef nonnull %exception89) #20, !dbg !2012
  call void @llvm.dbg.value(metadata ptr %call99, metadata !1924, metadata !DIExpression()), !dbg !2013
  %cmp100 = icmp eq ptr %call99, null, !dbg !2014
  br i1 %cmp100, label %cleanup, label %if.end103, !dbg !2016

if.end103:                                        ; preds = %if.end98
  %call104 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call90) #17, !dbg !2017
  call void @llvm.dbg.value(metadata ptr %call104, metadata !1920, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 0, metadata !1925, metadata !DIExpression()), !dbg !2013
  %23 = load i64, ptr %columns, align 8, !tbaa !1292
  call void @llvm.dbg.value(metadata ptr %call99, metadata !1924, metadata !DIExpression()), !dbg !2013
  %cmp107389 = icmp sgt i64 %23, 0, !dbg !2018
  br i1 %cmp107389, label %for.body109.lr.ph, label %for.end224, !dbg !2021

for.body109.lr.ph:                                ; preds = %if.end103
  %cmp199.not = icmp eq ptr %call104, null
  br label %for.body109, !dbg !2021

for.body109:                                      ; preds = %for.body109.lr.ph, %if.end221
  %x.0392 = phi i64 [ 0, %for.body109.lr.ph ], [ %inc223, %if.end221 ]
  %q.0390 = phi ptr [ %call99, %for.body109.lr.ph ], [ %incdec.ptr, %if.end221 ]
  call void @llvm.dbg.value(metadata i64 %x.0392, metadata !1925, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata ptr %q.0390, metadata !1924, metadata !DIExpression()), !dbg !2013
  br i1 %cmp111.not, label %if.end129, label %if.then113, !dbg !2022

if.then113:                                       ; preds = %for.body109
  %red114 = getelementptr inbounds %struct._PixelPacket, ptr %q.0390, i64 0, i32 2, !dbg !2024
  %24 = load i16, ptr %red114, align 2, !dbg !2024, !tbaa !1355
  %conv116 = uitofp i16 %24 to double, !dbg !2024
  %mul117 = fmul double %conv116, 0x3EF0001000100010, !dbg !2024
  %mul120 = fmul double %mul117, %conv119, !dbg !2024
  call void @llvm.dbg.value(metadata double %mul120, metadata !1949, metadata !DIExpression()) #17, !dbg !2026
  %25 = call double @llvm.floor.f64(double %mul120) #17, !dbg !2028
  %sub.i362 = fsub double %mul120, %25, !dbg !2029
  %26 = call double @llvm.ceil.f64(double %mul120) #17, !dbg !2030
  %sub1.i363 = fsub double %26, %mul120, !dbg !2031
  %cmp.i364 = fcmp olt double %sub.i362, %sub1.i363, !dbg !2032
  %..i365 = select i1 %cmp.i364, double %25, double %26, !dbg !2026
  %mul122 = fmul double %..i365, 6.553500e+04, !dbg !2024
  %div126 = fdiv double %mul122, %conv125, !dbg !2024
  %conv127 = fptoui double %div126 to i16, !dbg !2024
  store i16 %conv127, ptr %red114, align 2, !dbg !2024, !tbaa !1355
  br label %if.end129, !dbg !2024

if.end129:                                        ; preds = %if.then113, %for.body109
  br i1 %cmp131.not, label %if.end149, label %if.then133, !dbg !2033

if.then133:                                       ; preds = %if.end129
  %green134 = getelementptr inbounds %struct._PixelPacket, ptr %q.0390, i64 0, i32 1, !dbg !2034
  %27 = load i16, ptr %green134, align 2, !dbg !2034, !tbaa !1359
  %conv136 = uitofp i16 %27 to double, !dbg !2034
  %mul137 = fmul double %conv136, 0x3EF0001000100010, !dbg !2034
  %mul140 = fmul double %mul137, %conv119, !dbg !2034
  call void @llvm.dbg.value(metadata double %mul140, metadata !1949, metadata !DIExpression()) #17, !dbg !2036
  %28 = call double @llvm.floor.f64(double %mul140) #17, !dbg !2038
  %sub.i366 = fsub double %mul140, %28, !dbg !2039
  %29 = call double @llvm.ceil.f64(double %mul140) #17, !dbg !2040
  %sub1.i367 = fsub double %29, %mul140, !dbg !2041
  %cmp.i368 = fcmp olt double %sub.i366, %sub1.i367, !dbg !2042
  %..i369 = select i1 %cmp.i368, double %28, double %29, !dbg !2036
  %mul142 = fmul double %..i369, 6.553500e+04, !dbg !2034
  %div146 = fdiv double %mul142, %conv125, !dbg !2034
  %conv147 = fptoui double %div146 to i16, !dbg !2034
  store i16 %conv147, ptr %green134, align 2, !dbg !2034, !tbaa !1359
  br label %if.end149, !dbg !2034

if.end149:                                        ; preds = %if.then133, %if.end129
  br i1 %cmp151.not, label %if.end169, label %if.then153, !dbg !2043

if.then153:                                       ; preds = %if.end149
  %30 = load i16, ptr %q.0390, align 2, !dbg !2044, !tbaa !1363
  %conv156 = uitofp i16 %30 to double, !dbg !2044
  %mul157 = fmul double %conv156, 0x3EF0001000100010, !dbg !2044
  %mul160 = fmul double %mul157, %conv119, !dbg !2044
  call void @llvm.dbg.value(metadata double %mul160, metadata !1949, metadata !DIExpression()) #17, !dbg !2046
  %31 = call double @llvm.floor.f64(double %mul160) #17, !dbg !2048
  %sub.i370 = fsub double %mul160, %31, !dbg !2049
  %32 = call double @llvm.ceil.f64(double %mul160) #17, !dbg !2050
  %sub1.i371 = fsub double %32, %mul160, !dbg !2051
  %cmp.i372 = fcmp olt double %sub.i370, %sub1.i371, !dbg !2052
  %..i373 = select i1 %cmp.i372, double %31, double %32, !dbg !2046
  %mul162 = fmul double %..i373, 6.553500e+04, !dbg !2044
  %div166 = fdiv double %mul162, %conv125, !dbg !2044
  %conv167 = fptoui double %div166 to i16, !dbg !2044
  store i16 %conv167, ptr %q.0390, align 2, !dbg !2044, !tbaa !1363
  br label %if.end169, !dbg !2044

if.end169:                                        ; preds = %if.then153, %if.end149
  br i1 %cmp171.not, label %if.end191, label %land.lhs.true, !dbg !2053

land.lhs.true:                                    ; preds = %if.end169
  %33 = load i32, ptr %matte, align 8, !dbg !2055, !tbaa !1286
  %cmp173.not = icmp eq i32 %33, 0, !dbg !2056
  br i1 %cmp173.not, label %if.end191, label %if.then175, !dbg !2057

if.then175:                                       ; preds = %land.lhs.true
  %opacity176 = getelementptr inbounds %struct._PixelPacket, ptr %q.0390, i64 0, i32 3, !dbg !2058
  %34 = load i16, ptr %opacity176, align 2, !dbg !2058, !tbaa !1367
  %conv178 = uitofp i16 %34 to double, !dbg !2058
  %mul179 = fmul double %conv178, 0x3EF0001000100010, !dbg !2058
  %mul182 = fmul double %mul179, %conv119, !dbg !2058
  call void @llvm.dbg.value(metadata double %mul182, metadata !1949, metadata !DIExpression()) #17, !dbg !2059
  %35 = call double @llvm.floor.f64(double %mul182) #17, !dbg !2061
  %sub.i374 = fsub double %mul182, %35, !dbg !2062
  %36 = call double @llvm.ceil.f64(double %mul182) #17, !dbg !2063
  %sub1.i375 = fsub double %36, %mul182, !dbg !2064
  %cmp.i376 = fcmp olt double %sub.i374, %sub1.i375, !dbg !2065
  %..i377 = select i1 %cmp.i376, double %35, double %36, !dbg !2059
  %mul184 = fmul double %..i377, 6.553500e+04, !dbg !2058
  %div188 = fdiv double %mul184, %conv125, !dbg !2058
  %conv189 = fptoui double %div188 to i16, !dbg !2058
  store i16 %conv189, ptr %opacity176, align 2, !dbg !2058, !tbaa !1367
  br label %if.end191, !dbg !2058

if.end191:                                        ; preds = %if.then175, %land.lhs.true, %if.end169
  br i1 %cmp193.not, label %if.end221, label %land.lhs.true195, !dbg !2066

land.lhs.true195:                                 ; preds = %if.end191
  %37 = load i32, ptr %colorspace, align 4, !dbg !2068, !tbaa !2069
  %cmp196 = icmp ne i32 %37, 12, !dbg !2070
  %or.cond = select i1 %cmp196, i1 true, i1 %cmp199.not, !dbg !2071
  br i1 %or.cond, label %if.end221, label %cond.end, !dbg !2071

cond.end:                                         ; preds = %land.lhs.true195
  %add.ptr = getelementptr inbounds i16, ptr %call104, i64 %x.0392, !dbg !2072
  %38 = load i16, ptr %add.ptr, align 2, !dbg !2072, !tbaa !1378
  %conv207 = uitofp i16 %38 to double, !dbg !2072
  %mul208 = fmul double %conv207, 0x3EF0001000100010, !dbg !2072
  %mul211 = fmul double %mul208, %conv119, !dbg !2072
  call void @llvm.dbg.value(metadata double %mul211, metadata !1949, metadata !DIExpression()) #17, !dbg !2075
  %39 = call double @llvm.floor.f64(double %mul211) #17, !dbg !2077
  %sub.i378 = fsub double %mul211, %39, !dbg !2078
  %40 = call double @llvm.ceil.f64(double %mul211) #17, !dbg !2079
  %sub1.i379 = fsub double %40, %mul211, !dbg !2080
  %cmp.i380 = fcmp olt double %sub.i378, %sub1.i379, !dbg !2081
  %..i381 = select i1 %cmp.i380, double %39, double %40, !dbg !2075
  %mul213 = fmul double %..i381, 6.553500e+04, !dbg !2072
  %div217 = fdiv double %mul213, %conv125, !dbg !2072
  %conv218 = fptoui double %div217 to i16, !dbg !2072
  store i16 %conv218, ptr %add.ptr, align 2, !dbg !2072, !tbaa !1378
  br label %if.end221, !dbg !2072

if.end221:                                        ; preds = %cond.end, %land.lhs.true195, %if.end191
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0390, i64 1, !dbg !2082
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1924, metadata !DIExpression()), !dbg !2013
  %inc223 = add nuw nsw i64 %x.0392, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %inc223, metadata !1925, metadata !DIExpression()), !dbg !2013
  %exitcond398.not = icmp eq i64 %inc223, %23, !dbg !2018
  br i1 %exitcond398.not, label %for.end224, label %for.body109, !dbg !2021, !llvm.loop !2084

for.end224:                                       ; preds = %if.end221, %if.end103
  %call225 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call90, ptr noundef nonnull %exception89) #20, !dbg !2086
  %cmp226 = icmp ne i32 %call225, 0, !dbg !2088
  %spec.select = zext i1 %cmp226 to i32, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1915, metadata !DIExpression()), !dbg !1929
  %41 = load ptr, ptr %progress_monitor, align 8, !dbg !2090, !tbaa !1402
  %cmp230.not = icmp eq ptr %41, null, !dbg !2091
  br i1 %cmp230.not, label %cleanup, label %SetImageProgress.exit, !dbg !2092

SetImageProgress.exit:                            ; preds = %for.end224
  %inc233 = add nsw i64 %progress.0395, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %inc233, metadata !1916, metadata !DIExpression()), !dbg !1929
  %42 = load i64, ptr %rows, align 8, !dbg !2094, !tbaa !1294
  call void @llvm.dbg.value(metadata ptr %image, metadata !1386, metadata !DIExpression()) #17, !dbg !2095
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !1392, metadata !DIExpression()) #17, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %progress.0395, metadata !1393, metadata !DIExpression()) #17, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %42, metadata !1394, metadata !DIExpression()) #17, !dbg !2095
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !2097
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1395, metadata !DIExpression()) #17, !dbg !2098
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i) #17, !dbg !2099
  %43 = load ptr, ptr %progress_monitor, align 8, !dbg !2100, !tbaa !1402
  %44 = load ptr, ptr %client_data.i, align 8, !dbg !2101, !tbaa !1410
  %call4.i = call i32 %43(ptr noundef nonnull %message.i, i64 noundef %progress.0395, i64 noundef %42, ptr noundef %44) #17, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1926, metadata !DIExpression()), !dbg !2104
  %cmp236 = icmp eq i32 %call4.i, 0, !dbg !2105
  %spec.select349 = select i1 %cmp236, i32 0, i32 %spec.select, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %spec.select349, metadata !1915, metadata !DIExpression()), !dbg !1929
  br label %cleanup, !dbg !2108

cleanup:                                          ; preds = %for.end224, %SetImageProgress.exit, %if.end98, %for.body94
  %progress.2 = phi i64 [ %progress.0395, %for.body94 ], [ %progress.0395, %if.end98 ], [ %inc233, %SetImageProgress.exit ], [ %progress.0395, %for.end224 ], !dbg !1929
  %status.4 = phi i32 [ 0, %for.body94 ], [ 0, %if.end98 ], [ %spec.select349, %SetImageProgress.exit ], [ %spec.select, %for.end224 ], !dbg !1929
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1915, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1916, metadata !DIExpression()), !dbg !1929
  %inc244 = add nuw nsw i64 %y.0396, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %inc244, metadata !1919, metadata !DIExpression()), !dbg !1929
  %45 = load i64, ptr %rows, align 8, !dbg !2005, !tbaa !1294
  %cmp92 = icmp slt i64 %inc244, %45, !dbg !2006
  br i1 %cmp92, label %for.body94, label %for.end245, !dbg !2007, !llvm.loop !2110

for.end245:                                       ; preds = %cleanup, %if.end88
  %call246 = call ptr @DestroyCacheView(ptr noundef %call90) #17, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %call246, metadata !1913, metadata !DIExpression()), !dbg !1929
  %call247 = call ptr @AcquireQuantizeInfo(ptr noundef null), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %call247, metadata !1917, metadata !DIExpression()), !dbg !1929
  %mul248 = mul i64 %levels, %levels, !dbg !2114
  %mul249 = mul i64 %mul248, %levels, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %mul249, metadata !2116, metadata !DIExpression()) #17, !dbg !2122
  call void @llvm.dbg.value(metadata i64 65537, metadata !2121, metadata !DIExpression()) #17, !dbg !2122
  %46 = call i64 @llvm.smin.i64(i64 %mul249, i64 65537) #17, !dbg !2122
  store i64 %46, ptr %call247, align 8, !dbg !2124, !tbaa !1050
  %dither251 = getelementptr inbounds %struct._QuantizeInfo, ptr %call247, i64 0, i32 2, !dbg !2125
  store i32 %dither, ptr %dither251, align 8, !dbg !2126, !tbaa !1055
  %tree_depth = getelementptr inbounds %struct._QuantizeInfo, ptr %call247, i64 0, i32 1, !dbg !2127
  store i64 8, ptr %tree_depth, align 8, !dbg !2128, !tbaa !1183
  %call252 = call i32 @QuantizeImage(ptr noundef nonnull %call247, ptr noundef nonnull %image), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %call252, metadata !1915, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %call247, metadata !1723, metadata !DIExpression()) #17, !dbg !2130
  %call.i383 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.6) #17, !dbg !2132
  %signature.i = getelementptr inbounds %struct._QuantizeInfo, ptr %call247, i64 0, i32 5, !dbg !2133
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !2134, !tbaa !1067
  %call1.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call247) #17, !dbg !2135
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1723, metadata !DIExpression()) #17, !dbg !2130
  call void @llvm.dbg.value(metadata ptr undef, metadata !1917, metadata !DIExpression()), !dbg !1929
  ret i32 %call252, !dbg !2136
}

declare !dbg !2137 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !2138 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: hot
declare !dbg !2141 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !2144 i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GetCubeInfo(ptr noundef %quantize_info, i64 noundef %depth, i64 noundef %maximum_colors) unnamed_addr #0 !dbg !2146 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !2150, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i64 %depth, metadata !2151, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i64 %maximum_colors, metadata !2152, metadata !DIExpression()), !dbg !2158
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 504) #16, !dbg !2159
  call void @llvm.dbg.value(metadata ptr %call, metadata !2153, metadata !DIExpression()), !dbg !2158
  %cmp = icmp eq ptr %call, null, !dbg !2160
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2162

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 504) #17, !dbg !2163
  %depth2 = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 22, !dbg !2164
  %0 = tail call i64 @llvm.umin.i64(i64 %depth, i64 8), !dbg !2165
  %1 = tail call i64 @llvm.umax.i64(i64 %0, i64 2), !dbg !2166
  store i64 %1, ptr %depth2, align 8, !dbg !2158, !tbaa !2167
  %maximum_colors13 = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 2, !dbg !2171
  store i64 %maximum_colors, ptr %maximum_colors13, align 8, !dbg !2172, !tbaa !2173
  call void @llvm.dbg.value(metadata ptr %call, metadata !2174, metadata !DIExpression()) #17, !dbg !2186
  call void @llvm.dbg.value(metadata i64 0, metadata !2179, metadata !DIExpression()) #17, !dbg !2186
  call void @llvm.dbg.value(metadata i64 0, metadata !2180, metadata !DIExpression()) #17, !dbg !2186
  call void @llvm.dbg.value(metadata ptr null, metadata !2181, metadata !DIExpression()) #17, !dbg !2186
  %free_nodes.i = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 10, !dbg !2188
  %2 = load i64, ptr %free_nodes.i, align 8, !dbg !2188, !tbaa !2189
  %cmp.i = icmp eq i64 %2, 0, !dbg !2190
  br i1 %cmp.i, label %if.then.i, label %entry.if.end12_crit_edge.i, !dbg !2191

entry.if.end12_crit_edge.i:                       ; preds = %if.end
  %next_node15.phi.trans.insert.i = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 12
  %.pre.i = load ptr, ptr %next_node15.phi.trans.insert.i, align 8, !dbg !2192, !tbaa !2193
  %phi.bo.i = add i64 %2, -1, !dbg !2191
  br label %if.end18, !dbg !2191

if.then.i:                                        ; preds = %if.end
  %call.i = tail call ptr @AcquireMagickMemory(i64 noundef 16) #16, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2183, metadata !DIExpression()) #17, !dbg !2195
  %cmp1.i = icmp eq ptr %call.i, null, !dbg !2196
  br i1 %cmp1.i, label %GetNodeInfo.exit.thread, label %if.end.i, !dbg !2198

if.end.i:                                         ; preds = %if.then.i
  %call3.i = tail call ptr @AcquireQuantumMemory(i64 noundef 1920, i64 noundef 192) #21, !dbg !2199
  store ptr %call3.i, ptr %call.i, align 8, !dbg !2200, !tbaa !2201
  %cmp6.i = icmp eq ptr %call3.i, null, !dbg !2203
  br i1 %cmp6.i, label %GetNodeInfo.exit.thread, label %if.end8.i, !dbg !2205

if.end8.i:                                        ; preds = %if.end.i
  %node_queue.i = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 13, !dbg !2206
  %3 = load ptr, ptr %node_queue.i, align 8, !dbg !2206, !tbaa !2207
  %next.i = getelementptr inbounds %struct._Nodes, ptr %call.i, i64 0, i32 1, !dbg !2208
  store ptr %3, ptr %next.i, align 8, !dbg !2209, !tbaa !2210
  store ptr %call.i, ptr %node_queue.i, align 8, !dbg !2211, !tbaa !2207
  br label %if.end18

GetNodeInfo.exit.thread:                          ; preds = %if.end.i, %if.then.i
  store ptr null, ptr %call, align 8, !dbg !2212, !tbaa !2213
  br label %cleanup, !dbg !2214

if.end18:                                         ; preds = %if.end8.i, %entry.if.end12_crit_edge.i
  %4 = phi ptr [ %call3.i, %if.end8.i ], [ %.pre.i, %entry.if.end12_crit_edge.i ], !dbg !2192
  %5 = phi i64 [ 1919, %if.end8.i ], [ %phi.bo.i, %entry.if.end12_crit_edge.i ]
  %nodes13.i = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 9, !dbg !2215
  %6 = load i64, ptr %nodes13.i, align 8, !dbg !2216, !tbaa !2217
  %inc.i = add i64 %6, 1, !dbg !2216
  store i64 %inc.i, ptr %nodes13.i, align 8, !dbg !2216, !tbaa !2217
  store i64 %5, ptr %free_nodes.i, align 8, !dbg !2218, !tbaa !2189
  %next_node15.i = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 12, !dbg !2219
  %incdec.ptr.i = getelementptr inbounds %struct._NodeInfo, ptr %4, i64 1, !dbg !2192
  store ptr %incdec.ptr.i, ptr %next_node15.i, align 8, !dbg !2192, !tbaa !2193
  call void @llvm.dbg.value(metadata ptr %4, metadata !2182, metadata !DIExpression()) #17, !dbg !2186
  %call16.i = tail call ptr @ResetMagickMemory(ptr noundef %4, i32 noundef 0, i64 noundef 192) #17, !dbg !2220
  %id18.i = getelementptr inbounds %struct._NodeInfo, ptr %4, i64 0, i32 6, !dbg !2221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %id18.i, i8 0, i64 16, i1 false), !dbg !2222
  store ptr %4, ptr %call, align 8, !dbg !2212, !tbaa !2213
  store ptr %4, ptr %4, align 8, !dbg !2223, !tbaa !2224
  %call21 = tail call ptr @CloneQuantizeInfo(ptr noundef %quantize_info), !dbg !2226
  %quantize_info22 = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 18, !dbg !2227
  store ptr %call21, ptr %quantize_info22, align 8, !dbg !2228, !tbaa !2229
  %dither = getelementptr inbounds %struct._QuantizeInfo, ptr %call21, i64 0, i32 2, !dbg !2230
  %7 = load i32, ptr %dither, align 8, !dbg !2230, !tbaa !1055
  %cmp24 = icmp eq i32 %7, 0, !dbg !2232
  br i1 %cmp24, label %cleanup, label %if.end26, !dbg !2233

if.end26:                                         ; preds = %if.end18
  call void @llvm.dbg.value(metadata i64 16777216, metadata !2157, metadata !DIExpression()), !dbg !2158
  %call27 = tail call ptr @AcquireVirtualMemory(i64 noundef 16777216, i64 noundef 8) #21, !dbg !2234
  %memory_info = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 14, !dbg !2235
  store ptr %call27, ptr %memory_info, align 8, !dbg !2236, !tbaa !2237
  %cmp29 = icmp eq ptr %call27, null, !dbg !2238
  br i1 %cmp29, label %cleanup, label %if.end31, !dbg !2240

if.end31:                                         ; preds = %if.end26
  %call33 = tail call ptr @GetVirtualMemoryBlob(ptr noundef nonnull %call27) #17, !dbg !2241
  %cache = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 15, !dbg !2242
  store ptr %call33, ptr %cache, align 8, !dbg !2243, !tbaa !2244
  call void @llvm.dbg.value(metadata i64 0, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(134217728) %call33, i8 -1, i64 134217728, i1 false), !dbg !2245, !tbaa !1476
  call void @llvm.dbg.value(metadata i32 undef, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32 undef, metadata !2156, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2158
  br label %for.body38, !dbg !2248

for.body38:                                       ; preds = %if.end31, %PerceptibleReciprocal.exit
  %i.1136 = phi i64 [ %inc48, %PerceptibleReciprocal.exit ], [ 0, %if.end31 ]
  %weight.0135 = phi float [ %conv46, %PerceptibleReciprocal.exit ], [ 1.000000e+00, %if.end31 ]
  call void @llvm.dbg.value(metadata i64 %i.1136, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata float %weight.0135, metadata !2155, metadata !DIExpression()), !dbg !2158
  %conv = fpext float %weight.0135 to double, !dbg !2250
  call void @llvm.dbg.value(metadata double %conv, metadata !2253, metadata !DIExpression()), !dbg !2261
  %cmp.i128 = fcmp olt float %weight.0135, 0.000000e+00, !dbg !2263
  %cond.i = select i1 %cmp.i128, double -1.000000e+00, double 1.000000e+00, !dbg !2264
  call void @llvm.dbg.value(metadata double %cond.i, metadata !2260, metadata !DIExpression()), !dbg !2261
  %mul.i = fmul double %cond.i, %conv, !dbg !2265
  %cmp1.i129 = fcmp ult double %mul.i, 1.000000e-15, !dbg !2267
  br i1 %cmp1.i129, label %if.end.i131, label %if.then.i130, !dbg !2268

if.then.i130:                                     ; preds = %for.body38
  %div.i = fdiv double 1.000000e+00, %conv, !dbg !2269
  br label %PerceptibleReciprocal.exit, !dbg !2270

if.end.i131:                                      ; preds = %for.body38
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !2271
  br label %PerceptibleReciprocal.exit, !dbg !2272

PerceptibleReciprocal.exit:                       ; preds = %if.then.i130, %if.end.i131
  %retval.0.i = phi double [ %div.i, %if.then.i130 ], [ %div2.i, %if.end.i131 ], !dbg !2261
  %conv40 = fptrunc double %retval.0.i to float, !dbg !2273
  %sub41 = sub nuw nsw i64 15, %i.1136, !dbg !2274
  %arrayidx42 = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 17, i64 %sub41, !dbg !2275
  store float %conv40, ptr %arrayidx42, align 4, !dbg !2276, !tbaa !2277
  %mul = fmul double %conv, 0x4000C1B77B6CEBED, !dbg !2278
  %conv46 = fptrunc double %mul to float, !dbg !2278
  call void @llvm.dbg.value(metadata float %conv46, metadata !2155, metadata !DIExpression()), !dbg !2158
  %inc48 = add nuw nsw i64 %i.1136, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %inc48, metadata !2156, metadata !DIExpression()), !dbg !2158
  %exitcond.not = icmp eq i64 %inc48, 16, !dbg !2280
  br i1 %exitcond.not, label %for.body53, label %for.body38, !dbg !2248, !llvm.loop !2281

for.body53:                                       ; preds = %PerceptibleReciprocal.exit, %for.body53
  %i.2138 = phi i64 [ %inc57, %for.body53 ], [ 0, %PerceptibleReciprocal.exit ]
  %weight.1137 = phi float [ %add, %for.body53 ], [ 0.000000e+00, %PerceptibleReciprocal.exit ]
  call void @llvm.dbg.value(metadata i64 %i.2138, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata float %weight.1137, metadata !2155, metadata !DIExpression()), !dbg !2158
  %arrayidx55 = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 17, i64 %i.2138, !dbg !2283
  %8 = load float, ptr %arrayidx55, align 4, !dbg !2283, !tbaa !2277
  %add = fadd float %weight.1137, %8, !dbg !2286
  call void @llvm.dbg.value(metadata float %add, metadata !2155, metadata !DIExpression()), !dbg !2158
  %inc57 = add nuw nsw i64 %i.2138, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %inc57, metadata !2156, metadata !DIExpression()), !dbg !2158
  %exitcond141.not = icmp eq i64 %inc57, 16, !dbg !2288
  br i1 %exitcond141.not, label %for.body62, label %for.body53, !dbg !2289, !llvm.loop !2290

for.body62:                                       ; preds = %for.body53, %for.body62
  %i.3140 = phi i64 [ %inc70, %for.body62 ], [ 0, %for.body53 ]
  %sum.0139 = phi float [ %add68, %for.body62 ], [ 0.000000e+00, %for.body53 ]
  call void @llvm.dbg.value(metadata i64 %i.3140, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata float %sum.0139, metadata !2154, metadata !DIExpression()), !dbg !2158
  %arrayidx64 = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 17, i64 %i.3140, !dbg !2292
  %9 = load float, ptr %arrayidx64, align 4, !dbg !2296, !tbaa !2277
  %div65 = fdiv float %9, %add, !dbg !2296
  store float %div65, ptr %arrayidx64, align 4, !dbg !2296, !tbaa !2277
  %add68 = fadd float %sum.0139, %div65, !dbg !2297
  call void @llvm.dbg.value(metadata float %add68, metadata !2154, metadata !DIExpression()), !dbg !2158
  %inc70 = add nuw nsw i64 %i.3140, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %inc70, metadata !2156, metadata !DIExpression()), !dbg !2158
  %exitcond142.not = icmp eq i64 %inc70, 16, !dbg !2299
  br i1 %exitcond142.not, label %for.end71, label %for.body62, !dbg !2300, !llvm.loop !2301

for.end71:                                        ; preds = %for.body62
  %conv72 = fpext float %add68 to double, !dbg !2303
  %sub73 = fsub double 1.000000e+00, %conv72, !dbg !2304
  %weights74 = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 17, !dbg !2305
  %10 = load float, ptr %weights74, align 8, !dbg !2306, !tbaa !2277
  %conv76 = fpext float %10 to double, !dbg !2306
  %add77 = fadd double %sub73, %conv76, !dbg !2306
  %conv78 = fptrunc double %add77 to float, !dbg !2306
  store float %conv78, ptr %weights74, align 8, !dbg !2306, !tbaa !2277
  br label %cleanup, !dbg !2307

cleanup:                                          ; preds = %GetNodeInfo.exit.thread, %if.end26, %if.end18, %entry, %for.end71
  %retval.0 = phi ptr [ %call, %for.end71 ], [ null, %entry ], [ %call, %if.end18 ], [ null, %if.end26 ], [ null, %GetNodeInfo.exit.thread ], !dbg !2158
  ret ptr %retval.0, !dbg !2308
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ClassifyImageColors(ptr noundef %cube_info, ptr noundef %image, ptr noundef %exception) unnamed_addr #0 !dbg !2309 {
entry:
  %message.i955 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2313, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %image, metadata !2314, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2315, metadata !DIExpression()), !dbg !2339
  %0 = getelementptr i8, ptr %image, i64 32, !dbg !2340
  %image.val = load i32, ptr %0, align 8, !dbg !2340, !tbaa !1286
  call void @llvm.dbg.value(metadata ptr undef, metadata !2341, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2346, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %image.val, metadata !2347, metadata !DIExpression()), !dbg !2348
  %quantize_info.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 18, !dbg !2350
  %1 = load ptr, ptr %quantize_info.i, align 8, !dbg !2350, !tbaa !2229
  %2 = load i64, ptr %1, align 8, !dbg !2352, !tbaa !1050
  %cmp.i = icmp eq i64 %2, 2, !dbg !2353
  %colorspace.i = getelementptr inbounds %struct._QuantizeInfo, ptr %1, i64 0, i32 3
  %3 = load i32, ptr %colorspace.i, align 4, !dbg !2339, !tbaa !1061
  br i1 %cmp.i, label %land.lhs.true.i, label %SetAssociatedAlpha.exit, !dbg !2354

land.lhs.true.i:                                  ; preds = %entry
  %cmp2.i = icmp eq i32 %3, 2, !dbg !2355
  %spec.select.i = select i1 %cmp2.i, i32 0, i32 %image.val, !dbg !2356
  br label %SetAssociatedAlpha.exit, !dbg !2356

SetAssociatedAlpha.exit:                          ; preds = %entry, %land.lhs.true.i
  %associate_alpha.0.i = phi i32 [ %spec.select.i, %land.lhs.true.i ], [ %image.val, %entry ], !dbg !2348
  call void @llvm.dbg.value(metadata i32 %associate_alpha.0.i, metadata !2347, metadata !DIExpression()), !dbg !2348
  %associate_alpha3.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19, !dbg !2357
  store i32 %associate_alpha.0.i, ptr %associate_alpha3.i, align 8, !dbg !2358, !tbaa !2359
  switch i32 %3, label %if.end11.sink.split [
    i32 0, label %if.else
    i32 12, label %if.else
  ], !dbg !2360

if.else:                                          ; preds = %SetAssociatedAlpha.exit, %SetAssociatedAlpha.exit
  %colorspace6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2362
  %4 = load i32, ptr %colorspace6, align 4, !dbg !2362, !tbaa !2069
  call void @llvm.dbg.value(metadata i32 %4, metadata !2364, metadata !DIExpression()), !dbg !2371
  switch i32 %4, label %if.end11.sink.split [
    i32 29, label %if.end11
    i32 13, label %if.end11
    i32 3, label %if.end11
    i32 1, label %if.end11
    i32 19, label %if.end11
    i32 17, label %if.end11
    i32 2, label %if.end11
  ], !dbg !2373

if.end11.sink.split:                              ; preds = %if.else, %SetAssociatedAlpha.exit
  %.sink = phi i32 [ %3, %SetAssociatedAlpha.exit ], [ 13, %if.else ]
  %call10 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef %.sink) #17, !dbg !2375
  br label %if.end11, !dbg !2376

if.end11:                                         ; preds = %if.end11.sink.split, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2322, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2322, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2322, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %call13 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #17, !dbg !2376
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2316, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2339
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %5 = load i64, ptr %rows, align 8, !dbg !2377, !tbaa !1294
  %cmp141047 = icmp sgt i64 %5, 0, !dbg !2378
  br i1 %cmp141047, label %for.body.lr.ph, label %for.end220, !dbg !2379

for.body.lr.ph:                                   ; preds = %if.end11
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %nodes = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 9
  %depth = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 22
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %6 = getelementptr i8, ptr %cube_info, i64 456
  %free_nodes.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 10
  %next_node15.phi.trans.insert.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 12
  %node_queue.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 13
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 1
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %maximum_colors = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 2
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2379

for.body:                                         ; preds = %for.body.lr.ph, %for.inc218
  %y.01049 = phi i64 [ 0, %for.body.lr.ph ], [ %inc219, %for.inc218 ]
  %error.sroa.20.01048 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %error.sroa.20.1.lcssa, %for.inc218 ]
  call void @llvm.dbg.value(metadata i64 %y.01049, metadata !2328, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.01048, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %7 = load i64, ptr %columns, align 8, !dbg !2380, !tbaa !1292
  %call15 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call13, i64 noundef 0, i64 noundef %y.01049, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #20, !dbg !2381
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2329, metadata !DIExpression()), !dbg !2382
  %cmp16 = icmp eq ptr %call15, null, !dbg !2383
  br i1 %cmp16, label %for.end220, label %if.end18, !dbg !2385

if.end18:                                         ; preds = %for.body
  %8 = load i64, ptr %nodes, align 8, !dbg !2386, !tbaa !2217
  %cmp19 = icmp ugt i64 %8, 266817, !dbg !2388
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !2389

if.then20:                                        ; preds = %if.end18
  %9 = load ptr, ptr %cube_info, align 8, !dbg !2390, !tbaa !2213
  call fastcc void @PruneLevel(ptr noundef nonnull %cube_info, ptr noundef %9), !dbg !2392
  %10 = load i64, ptr %depth, align 8, !dbg !2393, !tbaa !2167
  %dec = add i64 %10, -1, !dbg !2393
  store i64 %dec, ptr %depth, align 8, !dbg !2393, !tbaa !2167
  br label %if.end21, !dbg !2394

if.end21:                                         ; preds = %if.then20, %if.end18
  call void @llvm.dbg.value(metadata i64 0, metadata !2333, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2329, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata float %error.sroa.20.01048, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %11 = load i64, ptr %columns, align 8, !dbg !2395, !tbaa !1292
  %cmp241040 = icmp sgt i64 %11, 0, !dbg !2398
  br i1 %cmp241040, label %for.cond26.preheader, label %for.end204, !dbg !2399

for.cond26.preheader:                             ; preds = %if.end21, %if.end200
  %12 = phi i64 [ %67, %if.end200 ], [ %11, %if.end21 ]
  %x.01045 = phi i64 [ %add.lcssa, %if.end200 ], [ 0, %if.end21 ]
  %p.01042 = phi ptr [ %add.ptr201, %if.end200 ], [ %call15, %if.end21 ]
  %error.sroa.20.11041 = phi float [ %error.sroa.20.4, %if.end200 ], [ %error.sroa.20.01048, %if.end21 ]
  call void @llvm.dbg.value(metadata i64 %x.01045, metadata !2333, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata ptr %p.01042, metadata !2329, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata float %error.sroa.20.11041, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 0, i32 1, !dbg !2400
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 0, i32 3, !dbg !2406
  call void @llvm.dbg.value(metadata i64 1, metadata !2324, metadata !DIExpression()), !dbg !2339
  %add1009 = add nsw i64 %x.01045, 1, !dbg !2407
  %cmp281010 = icmp slt i64 %add1009, %12, !dbg !2408
  br i1 %cmp281010, label %for.body29.lr.ph, label %for.endthread-pre-split, !dbg !2409

for.body29.lr.ph:                                 ; preds = %for.cond26.preheader
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 0, i32 2
  %13 = load i16, ptr %red.i, align 2, !tbaa !1355
  %14 = sub i64 %12, %x.01045, !dbg !2409
  br label %for.body29, !dbg !2409

for.body29:                                       ; preds = %for.body29.lr.ph, %for.inc
  %add1013 = phi i64 [ %add1009, %for.body29.lr.ph ], [ %add, %for.inc ]
  %count.01011 = phi i64 [ 1, %for.body29.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %count.01011, metadata !2324, metadata !DIExpression()), !dbg !2339
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 %count.01011, !dbg !2410
  call void @llvm.dbg.value(metadata ptr %image, metadata !1577, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata ptr %p.01042, metadata !1582, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1583, metadata !DIExpression()), !dbg !2411
  %red1.i = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 %count.01011, i32 2, !dbg !2412
  %15 = load i16, ptr %red1.i, align 2, !dbg !2412, !tbaa !1355
  %cmp.not.i = icmp eq i16 %13, %15, !dbg !2413
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %for.endthread-pre-split, !dbg !2414

lor.lhs.false.i:                                  ; preds = %for.body29
  %16 = load i16, ptr %green.i, align 2, !dbg !2400, !tbaa !1359
  %green5.i = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 %count.01011, i32 1, !dbg !2415
  %17 = load i16, ptr %green5.i, align 2, !dbg !2415, !tbaa !1359
  %cmp7.not.i = icmp eq i16 %16, %17, !dbg !2416
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %for.endthread-pre-split, !dbg !2417

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %18 = load i16, ptr %p.01042, align 2, !dbg !2418, !tbaa !1363
  %19 = load i16, ptr %add.ptr, align 2, !dbg !2419, !tbaa !1363
  %cmp13.not.i = icmp eq i16 %18, %19, !dbg !2420
  br i1 %cmp13.not.i, label %if.end.i, label %for.endthread-pre-split, !dbg !2421

if.end.i:                                         ; preds = %lor.lhs.false9.i
  %20 = load i32, ptr %matte.i, align 8, !dbg !2422, !tbaa !1286
  %cmp15.not.i = icmp eq i32 %20, 0, !dbg !2423
  br i1 %cmp15.not.i, label %for.inc, label %land.lhs.true.i717, !dbg !2424

land.lhs.true.i717:                               ; preds = %if.end.i
  %21 = load i16, ptr %opacity.i, align 2, !dbg !2406, !tbaa !1367
  %opacity18.i = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 %count.01011, i32 3, !dbg !2425
  %22 = load i16, ptr %opacity18.i, align 2, !dbg !2425, !tbaa !1367
  %cmp20.not.i = icmp eq i16 %21, %22, !dbg !2426
  br i1 %cmp20.not.i, label %for.inc, label %for.end, !dbg !2427

for.inc:                                          ; preds = %land.lhs.true.i717, %if.end.i
  %inc = add i64 %count.01011, 1, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2324, metadata !DIExpression()), !dbg !2339
  %add = add nsw i64 %inc, %x.01045, !dbg !2407
  %exitcond.not = icmp eq i64 %inc, %14, !dbg !2408
  br i1 %exitcond.not, label %for.endthread-pre-split, label %for.body29, !dbg !2409, !llvm.loop !2429

for.endthread-pre-split:                          ; preds = %for.body29, %lor.lhs.false.i, %lor.lhs.false9.i, %for.inc, %for.cond26.preheader
  %count.0.lcssa.ph = phi i64 [ 1, %for.cond26.preheader ], [ %14, %for.inc ], [ %count.01011, %lor.lhs.false9.i ], [ %count.01011, %lor.lhs.false.i ], [ %count.01011, %for.body29 ]
  %add.lcssa.ph = phi i64 [ %add1009, %for.cond26.preheader ], [ %12, %for.inc ], [ %add1013, %lor.lhs.false9.i ], [ %add1013, %lor.lhs.false.i ], [ %add1013, %for.body29 ]
  %.pre.i.pr = load i16, ptr %opacity.i, align 2, !dbg !2431, !tbaa !1367
  br label %for.end, !dbg !2444

for.end:                                          ; preds = %land.lhs.true.i717, %for.endthread-pre-split
  %.pre.i = phi i16 [ %.pre.i.pr, %for.endthread-pre-split ], [ %21, %land.lhs.true.i717 ], !dbg !2431
  %count.0.lcssa = phi i64 [ %count.0.lcssa.ph, %for.endthread-pre-split ], [ %count.01011, %land.lhs.true.i717 ], !dbg !2445
  %add.lcssa = phi i64 [ %add.lcssa.ph, %for.endthread-pre-split ], [ %add1013, %land.lhs.true.i717 ], !dbg !2407
  %cube_info.val716 = load i32, ptr %6, align 8, !dbg !2444, !tbaa !2359
  call void @llvm.dbg.value(metadata ptr undef, metadata !2439, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata ptr %p.01042, metadata !2440, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata ptr undef, metadata !2441, metadata !DIExpression()), !dbg !2446
  %cmp.i719 = icmp eq i32 %cube_info.val716, 0, !dbg !2447
  br i1 %cmp.i719, label %entry.if.then_crit_edge.i, label %lor.lhs.false.i720, !dbg !2448

entry.if.then_crit_edge.i:                        ; preds = %for.end
  %phi.cast.i = uitofp i16 %.pre.i to float, !dbg !2448
  br label %if.then.i, !dbg !2448

lor.lhs.false.i720:                               ; preds = %for.end
  %cmp1.i = icmp eq i16 %.pre.i, 0, !dbg !2449
  br i1 %cmp1.i, label %if.then.i, label %if.end.i723, !dbg !2450

if.then.i:                                        ; preds = %lor.lhs.false.i720, %entry.if.then_crit_edge.i
  %23 = phi float [ %phi.cast.i, %entry.if.then_crit_edge.i ], [ 0.000000e+00, %lor.lhs.false.i720 ]
  %red.i721 = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 0, i32 2, !dbg !2451
  %24 = load i16, ptr %red.i721, align 2, !dbg !2451, !tbaa !1355
  %conv3.i = uitofp i16 %24 to float, !dbg !2453
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  %25 = load i16, ptr %green.i, align 2, !dbg !2454, !tbaa !1359
  %conv5.i = uitofp i16 %25 to float, !dbg !2455
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  %26 = load i16, ptr %p.01042, align 2, !dbg !2456, !tbaa !1363
  %conv7.i = uitofp i16 %26 to float, !dbg !2457
  call void @llvm.dbg.value(metadata float %conv7.i, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  br label %AssociateAlphaPixel.exit, !dbg !2458

if.end.i723:                                      ; preds = %lor.lhs.false.i720
  %27 = xor i16 %.pre.i, -1, !dbg !2459
  %conv14.i = uitofp i16 %27 to double, !dbg !2460
  %mul.i = fmul double %conv14.i, 0x3EF0001000100010, !dbg !2461
  %conv15.i = fptrunc double %mul.i to float, !dbg !2462
  call void @llvm.dbg.value(metadata float %conv15.i, metadata !2442, metadata !DIExpression()), !dbg !2446
  %red16.i = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 0, i32 2, !dbg !2463
  %28 = load i16, ptr %red16.i, align 2, !dbg !2463, !tbaa !1355
  %conv18.i = uitofp i16 %28 to float, !dbg !2463
  %mul19.i = fmul float %conv15.i, %conv18.i, !dbg !2464
  call void @llvm.dbg.value(metadata float %mul19.i, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  %29 = load i16, ptr %green.i, align 2, !dbg !2465, !tbaa !1359
  %conv23.i = uitofp i16 %29 to float, !dbg !2465
  %mul24.i = fmul float %conv15.i, %conv23.i, !dbg !2466
  call void @llvm.dbg.value(metadata float %mul24.i, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  %30 = load i16, ptr %p.01042, align 2, !dbg !2467, !tbaa !1363
  %conv28.i = uitofp i16 %30 to float, !dbg !2467
  %mul29.i = fmul float %conv15.i, %conv28.i, !dbg !2468
  call void @llvm.dbg.value(metadata float %mul29.i, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  %conv32.i = uitofp i16 %.pre.i to float, !dbg !2469
  br label %AssociateAlphaPixel.exit, !dbg !2470

AssociateAlphaPixel.exit:                         ; preds = %if.then.i, %if.end.i723
  %pixel.sroa.22.0 = phi float [ %conv7.i, %if.then.i ], [ %mul29.i, %if.end.i723 ], !dbg !2446
  %pixel.sroa.12.0 = phi float [ %conv5.i, %if.then.i ], [ %mul24.i, %if.end.i723 ], !dbg !2446
  %pixel.sroa.0.0 = phi float [ %conv3.i, %if.then.i ], [ %mul19.i, %if.end.i723 ], !dbg !2446
  %conv32.sink.i = phi float [ %23, %if.then.i ], [ %conv32.i, %if.end.i723 ]
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.0, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %pixel.sroa.12.0, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %pixel.sroa.22.0, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %conv32.sink.i, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata i64 7, metadata !2326, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276800e+04, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %31 = load ptr, ptr %cube_info, align 8, !dbg !2471, !tbaa !2213
  call void @llvm.dbg.value(metadata ptr %31, metadata !2319, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 1, metadata !2327, metadata !DIExpression()), !dbg !2339
  %cmp1.i.i = fcmp ult float %pixel.sroa.0.0, 6.553500e+04
  %cmp1.i38.i = fcmp ult float %pixel.sroa.12.0, 6.553500e+04
  %cmp1.i52.i = fcmp ult float %pixel.sroa.22.0, 6.553500e+04
  call void @llvm.dbg.value(metadata i64 poison, metadata !2326, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.11041, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %add.i.i = fadd float %pixel.sroa.0.0, 5.000000e-01
  %conv.i.i = fptoui float %add.i.i to i16
  %phi.cast.i724 = zext i16 %conv.i.i to i64
  %phi.bo.i = add nuw nsw i64 %phi.cast.i724, 128
  %add.i40.i = fadd float %pixel.sroa.12.0, 5.000000e-01
  %conv.i41.i = fptoui float %add.i40.i to i16
  %phi.cast79.i = zext i16 %conv.i41.i to i64
  %phi.bo80.i = add nuw nsw i64 %phi.cast79.i, 128
  %add.i54.i = fadd float %pixel.sroa.22.0, 5.000000e-01
  %conv.i55.i = fptoui float %add.i54.i to i16
  %phi.cast81.i = zext i16 %conv.i55.i to i64
  %phi.bo82.i = add nuw nsw i64 %phi.cast81.i, 128
  %cmp1.i66.i = fcmp ult float %conv32.sink.i, 6.553500e+04
  %add.i68.i = fadd float %conv32.sink.i, 5.000000e-01
  %conv.i69.i = fptoui float %add.i68.i to i16
  %phi.cast83.i = zext i16 %conv.i69.i to i64
  %phi.bo84.i = add nuw nsw i64 %phi.cast83.i, 128
  %conv126 = uitofp i64 %count.0.lcssa to double
  br label %if.end.i.i, !dbg !2472

if.end.i.i:                                       ; preds = %AssociateAlphaPixel.exit, %for.inc149
  %level.01036 = phi i64 [ 1, %AssociateAlphaPixel.exit ], [ %inc150, %for.inc149 ]
  %index.01032 = phi i32 [ 7, %AssociateAlphaPixel.exit ], [ %index.1, %for.inc149 ]
  %bisect.01031 = phi float [ 3.276800e+04, %AssociateAlphaPixel.exit ], [ %conv38, %for.inc149 ]
  %node_info.01029 = phi ptr [ %31, %AssociateAlphaPixel.exit ], [ %node_info.1, %for.inc149 ]
  %mid.sroa.0.01028 = phi float [ 3.276750e+04, %AssociateAlphaPixel.exit ], [ %add43, %for.inc149 ]
  %mid.sroa.10.01027 = phi float [ 3.276750e+04, %AssociateAlphaPixel.exit ], [ %add53, %for.inc149 ]
  %mid.sroa.18.01026 = phi float [ 3.276750e+04, %AssociateAlphaPixel.exit ], [ %add63, %for.inc149 ]
  %mid.sroa.26.01025 = phi float [ 3.276750e+04, %AssociateAlphaPixel.exit ], [ %add73, %for.inc149 ]
  %error.sroa.20.21023 = phi float [ %error.sroa.20.11041, %AssociateAlphaPixel.exit ], [ %error.sroa.20.4, %for.inc149 ]
  call void @llvm.dbg.value(metadata i64 %level.01036, metadata !2327, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %bisect.01031, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %node_info.01029, metadata !2319, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %mid.sroa.0.01028, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %mid.sroa.10.01027, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %mid.sroa.18.01026, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %mid.sroa.26.01025, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.21023, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %conv38 = fmul float %bisect.01031, 5.000000e-01, !dbg !2474
  call void @llvm.dbg.value(metadata float %conv38, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2477, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata ptr undef, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 poison, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.0, metadata !2489, metadata !DIExpression()), !dbg !2495
  br i1 %cmp1.i.i, label %if.end3.i.i, label %if.end.i39.i, !dbg !2497

if.end3.i.i:                                      ; preds = %if.end.i.i
  br label %if.end.i39.i, !dbg !2498

if.end.i39.i:                                     ; preds = %if.end.i.i, %if.end3.i.i
  %retval.0.i.i = phi i64 [ %phi.bo.i, %if.end3.i.i ], [ 65663, %if.end.i.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !2505
  %shr.i.i = lshr i64 %retval.0.i.i, 8, !dbg !2507
  %sub.i.i = sub nsw i64 %retval.0.i.i, %shr.i.i, !dbg !2508
  %32 = trunc i64 %sub.i.i to i32, !dbg !2509
  %33 = lshr i32 %32, 8, !dbg !2509
  %conv.i = and i32 %33, 255, !dbg !2510
  %shr.i = lshr i32 %conv.i, %index.01032, !dbg !2511
  %and.i = and i32 %shr.i, 1, !dbg !2512
  call void @llvm.dbg.value(metadata float %pixel.sroa.12.0, metadata !2489, metadata !DIExpression()), !dbg !2513
  br i1 %cmp1.i38.i, label %if.end3.i42.i, label %if.end.i53.i, !dbg !2515

if.end3.i42.i:                                    ; preds = %if.end.i39.i
  br label %if.end.i53.i, !dbg !2516

if.end.i53.i:                                     ; preds = %if.end.i39.i, %if.end3.i42.i
  %retval.0.i43.i = phi i64 [ %phi.bo80.i, %if.end3.i42.i ], [ 65663, %if.end.i39.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !2517
  %shr.i47.i = lshr i64 %retval.0.i43.i, 8, !dbg !2519
  %sub.i48.i = sub nsw i64 %retval.0.i43.i, %shr.i47.i, !dbg !2520
  %34 = trunc i64 %sub.i48.i to i32, !dbg !2521
  %35 = lshr i32 %34, 8, !dbg !2521
  %conv4.i = and i32 %35, 255, !dbg !2522
  %shr6.i = lshr i32 %conv4.i, %index.01032, !dbg !2523
  %and7.i = shl nuw nsw i32 %shr6.i, 1, !dbg !2524
  %shl.i = and i32 %and7.i, 2, !dbg !2524
  %or.i = or i32 %shl.i, %and.i, !dbg !2525
  call void @llvm.dbg.value(metadata float %pixel.sroa.22.0, metadata !2489, metadata !DIExpression()), !dbg !2526
  br i1 %cmp1.i52.i, label %if.end3.i56.i, label %ClampPixel.exit58.i, !dbg !2528

if.end3.i56.i:                                    ; preds = %if.end.i53.i
  br label %ClampPixel.exit58.i, !dbg !2529

ClampPixel.exit58.i:                              ; preds = %if.end3.i56.i, %if.end.i53.i
  %retval.0.i57.i = phi i64 [ %phi.bo82.i, %if.end3.i56.i ], [ 65663, %if.end.i53.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !2530
  %shr.i61.i = lshr i64 %retval.0.i57.i, 8, !dbg !2532
  %sub.i62.i = sub nsw i64 %retval.0.i57.i, %shr.i61.i, !dbg !2533
  %36 = trunc i64 %sub.i62.i to i32, !dbg !2534
  %37 = lshr i32 %36, 8, !dbg !2534
  %conv10.i = and i32 %37, 255, !dbg !2535
  %shr12.i = lshr i32 %conv10.i, %index.01032, !dbg !2536
  %and13.i = shl nuw nsw i32 %shr12.i, 2, !dbg !2537
  %shl14.i = and i32 %and13.i, 4, !dbg !2537
  %or15.i = or i32 %or.i, %shl14.i, !dbg !2538
  call void @llvm.dbg.value(metadata i32 %or15.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2487
  %38 = load i32, ptr %associate_alpha3.i, align 8, !dbg !2539, !tbaa !2359
  %cmp.not.i726 = icmp eq i32 %38, 0, !dbg !2541
  br i1 %cmp.not.i726, label %ColorToNodeId.exit, label %if.end.i67.i, !dbg !2542

if.end.i67.i:                                     ; preds = %ClampPixel.exit58.i
  call void @llvm.dbg.value(metadata float %conv32.sink.i, metadata !2489, metadata !DIExpression()), !dbg !2543
  br i1 %cmp1.i66.i, label %if.end3.i70.i, label %ClampPixel.exit72.i, !dbg !2545

if.end3.i70.i:                                    ; preds = %if.end.i67.i
  br label %ClampPixel.exit72.i, !dbg !2546

ClampPixel.exit72.i:                              ; preds = %if.end3.i70.i, %if.end.i67.i
  %retval.0.i71.i = phi i64 [ %phi.bo84.i, %if.end3.i70.i ], [ 65663, %if.end.i67.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !2547
  %shr.i75.i = lshr i64 %retval.0.i71.i, 8, !dbg !2549
  %sub.i76.i = sub nsw i64 %retval.0.i71.i, %shr.i75.i, !dbg !2550
  %39 = trunc i64 %sub.i76.i to i32, !dbg !2551
  %40 = lshr i32 %39, 8, !dbg !2551
  %conv20.i = and i32 %40, 255, !dbg !2552
  %shr22.i = lshr i32 %conv20.i, %index.01032, !dbg !2553
  %and23.i = shl nuw nsw i32 %shr22.i, 3, !dbg !2554
  %shl24.i = and i32 %and23.i, 8, !dbg !2554
  %or2634.i = or i32 %shl24.i, %or15.i, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %or2634.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2487
  br label %ColorToNodeId.exit, !dbg !2556

ColorToNodeId.exit:                               ; preds = %ClampPixel.exit58.i, %ClampPixel.exit72.i
  %id.0.in.i = phi i32 [ %or2634.i, %ClampPixel.exit72.i ], [ %or15.i, %ClampPixel.exit58.i ]
  %id.0.i = zext i32 %id.0.in.i to i64, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !2325, metadata !DIExpression()), !dbg !2339
  %and = and i64 %id.0.i, 1, !dbg !2557
  %cmp40.not = icmp eq i64 %and, 0, !dbg !2558
  %fneg = fneg float %conv38
  %spec.select = select i1 %cmp40.not, float %fneg, float %conv38, !dbg !2559
  %add43 = fadd float %mid.sroa.0.01028, %spec.select, !dbg !2560
  call void @llvm.dbg.value(metadata float %add43, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  %and44 = and i64 %id.0.i, 2, !dbg !2561
  %cmp45.not = icmp eq i64 %and44, 0, !dbg !2562
  %spec.select712 = select i1 %cmp45.not, float %fneg, float %conv38, !dbg !2563
  %add53 = fadd float %mid.sroa.10.01027, %spec.select712, !dbg !2564
  call void @llvm.dbg.value(metadata float %add53, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  %and54 = and i64 %id.0.i, 4, !dbg !2565
  %cmp55.not = icmp eq i64 %and54, 0, !dbg !2566
  %spec.select709 = select i1 %cmp55.not, float %fneg, float %conv38, !dbg !2567
  %add63 = fadd float %mid.sroa.18.01026, %spec.select709, !dbg !2568
  call void @llvm.dbg.value(metadata float %add63, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  %and64 = and i64 %id.0.i, 8, !dbg !2569
  %cmp65.not = icmp eq i64 %and64, 0, !dbg !2570
  %spec.select714 = select i1 %cmp65.not, float %fneg, float %conv38, !dbg !2571
  %add73 = fadd float %mid.sroa.26.01025, %spec.select714, !dbg !2572
  call void @llvm.dbg.value(metadata float %add73, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %arrayidx = getelementptr inbounds %struct._NodeInfo, ptr %node_info.01029, i64 0, i32 1, i64 %id.0.i, !dbg !2573
  %41 = load ptr, ptr %arrayidx, align 8, !dbg !2573, !tbaa !2575
  %cmp74 = icmp eq ptr %41, null, !dbg !2576
  br i1 %cmp74, label %if.then76, label %if.end92, !dbg !2577

if.then76:                                        ; preds = %ColorToNodeId.exit
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2174, metadata !DIExpression()) #17, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !2179, metadata !DIExpression()) #17, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %level.01036, metadata !2180, metadata !DIExpression()) #17, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %node_info.01029, metadata !2181, metadata !DIExpression()) #17, !dbg !2578
  %42 = load i64, ptr %free_nodes.i, align 8, !dbg !2581, !tbaa !2189
  %cmp.i730 = icmp eq i64 %42, 0, !dbg !2582
  br i1 %cmp.i730, label %if.then.i734, label %entry.if.end12_crit_edge.i, !dbg !2583

entry.if.end12_crit_edge.i:                       ; preds = %if.then76
  %.pre.i731 = load ptr, ptr %next_node15.phi.trans.insert.i, align 8, !dbg !2584, !tbaa !2193
  %phi.bo.i732 = add i64 %42, -1, !dbg !2583
  br label %if.end86, !dbg !2583

if.then.i734:                                     ; preds = %if.then76
  %call.i = call ptr @AcquireMagickMemory(i64 noundef 16) #16, !dbg !2585
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2183, metadata !DIExpression()) #17, !dbg !2586
  %cmp1.i733 = icmp eq ptr %call.i, null, !dbg !2587
  br i1 %cmp1.i733, label %if.then84, label %if.end.i735, !dbg !2588

if.end.i735:                                      ; preds = %if.then.i734
  %call3.i = call ptr @AcquireQuantumMemory(i64 noundef 1920, i64 noundef 192) #21, !dbg !2589
  store ptr %call3.i, ptr %call.i, align 8, !dbg !2590, !tbaa !2201
  %cmp6.i = icmp eq ptr %call3.i, null, !dbg !2591
  br i1 %cmp6.i, label %if.then84, label %if.end8.i, !dbg !2592

if.end8.i:                                        ; preds = %if.end.i735
  %43 = load ptr, ptr %node_queue.i, align 8, !dbg !2593, !tbaa !2207
  %next.i = getelementptr inbounds %struct._Nodes, ptr %call.i, i64 0, i32 1, !dbg !2594
  store ptr %43, ptr %next.i, align 8, !dbg !2595, !tbaa !2210
  store ptr %call.i, ptr %node_queue.i, align 8, !dbg !2596, !tbaa !2207
  br label %if.end86

if.then84:                                        ; preds = %if.end.i735, %if.then.i734
  store ptr null, ptr %arrayidx, align 8, !dbg !2597, !tbaa !2575
  %call85 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 848, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #17, !dbg !2598
  br label %for.inc149, !dbg !2601

if.end86:                                         ; preds = %if.end8.i, %entry.if.end12_crit_edge.i
  %44 = phi ptr [ %call3.i, %if.end8.i ], [ %.pre.i731, %entry.if.end12_crit_edge.i ], !dbg !2584
  %45 = phi i64 [ 1919, %if.end8.i ], [ %phi.bo.i732, %entry.if.end12_crit_edge.i ]
  %46 = load i64, ptr %nodes, align 8, !dbg !2602, !tbaa !2217
  %inc.i = add i64 %46, 1, !dbg !2602
  store i64 %inc.i, ptr %nodes, align 8, !dbg !2602, !tbaa !2217
  store i64 %45, ptr %free_nodes.i, align 8, !dbg !2603, !tbaa !2189
  %incdec.ptr.i = getelementptr inbounds %struct._NodeInfo, ptr %44, i64 1, !dbg !2584
  store ptr %incdec.ptr.i, ptr %next_node15.phi.trans.insert.i, align 8, !dbg !2584, !tbaa !2193
  call void @llvm.dbg.value(metadata ptr %44, metadata !2182, metadata !DIExpression()) #17, !dbg !2578
  %call16.i = call ptr @ResetMagickMemory(ptr noundef %44, i32 noundef 0, i64 noundef 192) #17, !dbg !2604
  store ptr %node_info.01029, ptr %44, align 8, !dbg !2605, !tbaa !2224
  %id18.i = getelementptr inbounds %struct._NodeInfo, ptr %44, i64 0, i32 6, !dbg !2606
  store i64 %id.0.i, ptr %id18.i, align 8, !dbg !2607, !tbaa !2608
  %level19.i = getelementptr inbounds %struct._NodeInfo, ptr %44, i64 0, i32 7, !dbg !2609
  store i64 %level.01036, ptr %level19.i, align 8, !dbg !2610, !tbaa !2611
  store ptr %44, ptr %arrayidx, align 8, !dbg !2597, !tbaa !2575
  %cmp87 = icmp eq i64 %level.01036, 8, !dbg !2612
  br i1 %cmp87, label %if.then89, label %if.end92, !dbg !2614

if.then89:                                        ; preds = %if.end86
  %47 = load i64, ptr %colors, align 8, !dbg !2615, !tbaa !2616
  %inc90 = add i64 %47, 1, !dbg !2615
  store i64 %inc90, ptr %colors, align 8, !dbg !2615, !tbaa !2616
  br label %if.end92, !dbg !2617

if.end92:                                         ; preds = %if.end86, %if.then89, %ColorToNodeId.exit
  %48 = phi ptr [ %44, %if.end86 ], [ %44, %if.then89 ], [ %41, %ColorToNodeId.exit ], !dbg !2618
  call void @llvm.dbg.value(metadata ptr %48, metadata !2319, metadata !DIExpression()), !dbg !2339
  %sub = fsub float %pixel.sroa.0.0, %add43, !dbg !2619
  %conv97 = fpext float %sub to double, !dbg !2620
  %mul98 = fmul double %conv97, 0x3EF0001000100010, !dbg !2621
  %conv99 = fptrunc double %mul98 to float, !dbg !2622
  call void @llvm.dbg.value(metadata float %conv99, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  %sub103 = fsub float %pixel.sroa.12.0, %add53, !dbg !2623
  %conv104 = fpext float %sub103 to double, !dbg !2624
  %mul105 = fmul double %conv104, 0x3EF0001000100010, !dbg !2625
  %conv106 = fptrunc double %mul105 to float, !dbg !2626
  call void @llvm.dbg.value(metadata float %conv106, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  %sub110 = fsub float %pixel.sroa.22.0, %add63, !dbg !2627
  %conv111 = fpext float %sub110 to double, !dbg !2628
  %mul112 = fmul double %conv111, 0x3EF0001000100010, !dbg !2629
  %conv113 = fptrunc double %mul112 to float, !dbg !2630
  call void @llvm.dbg.value(metadata float %conv113, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  %49 = load i32, ptr %associate_alpha3.i, align 8, !dbg !2631, !tbaa !2359
  %cmp115.not = icmp eq i32 %49, 0, !dbg !2633
  br i1 %cmp115.not, label %if.end125, label %if.then117, !dbg !2634

if.then117:                                       ; preds = %if.end92
  %sub120 = fsub float %conv32.sink.i, %add73, !dbg !2635
  %conv121 = fpext float %sub120 to double, !dbg !2636
  %mul122 = fmul double %conv121, 0x3EF0001000100010, !dbg !2637
  %conv123 = fptrunc double %mul122 to float, !dbg !2638
  call void @llvm.dbg.value(metadata float %conv123, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  br label %if.end125, !dbg !2639

if.end125:                                        ; preds = %if.then117, %if.end92
  %error.sroa.20.3 = phi float [ %conv123, %if.then117 ], [ %error.sroa.20.21023, %if.end92 ], !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.3, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %mul132 = fmul float %conv106, %conv106, !dbg !2640
  %50 = call float @llvm.fmuladd.f32(float %conv99, float %conv99, float %mul132), !dbg !2641
  %51 = call float @llvm.fmuladd.f32(float %conv113, float %conv113, float %50), !dbg !2642
  %52 = call float @llvm.fmuladd.f32(float %error.sroa.20.3, float %error.sroa.20.3, float %51), !dbg !2643
  %conv139 = fpext float %52 to double, !dbg !2644
  %call140 = call double @sqrt(double noundef %conv139) #17, !dbg !2645
  %quantize_error = getelementptr inbounds %struct._NodeInfo, ptr %48, i64 0, i32 4, !dbg !2646
  %53 = load float, ptr %quantize_error, align 8, !dbg !2647, !tbaa !2648
  %conv142 = fpext float %53 to double, !dbg !2647
  %54 = call double @llvm.fmuladd.f64(double %conv126, double %call140, double %conv142), !dbg !2647
  %conv143 = fptrunc double %54 to float, !dbg !2647
  store float %conv143, ptr %quantize_error, align 8, !dbg !2647, !tbaa !2648
  %55 = load ptr, ptr %cube_info, align 8, !dbg !2649, !tbaa !2213
  %quantize_error146 = getelementptr inbounds %struct._NodeInfo, ptr %55, i64 0, i32 4, !dbg !2650
  %56 = load float, ptr %quantize_error146, align 8, !dbg !2651, !tbaa !2648
  %add147 = fadd float %56, %conv143, !dbg !2651
  store float %add147, ptr %quantize_error146, align 8, !dbg !2651, !tbaa !2648
  %dec148 = add i32 %index.01032, -1, !dbg !2652
  call void @llvm.dbg.value(metadata i64 undef, metadata !2326, metadata !DIExpression()), !dbg !2339
  br label %for.inc149, !dbg !2653

for.inc149:                                       ; preds = %if.end125, %if.then84
  %error.sroa.20.4 = phi float [ %error.sroa.20.21023, %if.then84 ], [ %error.sroa.20.3, %if.end125 ], !dbg !2339
  %node_info.1 = phi ptr [ %node_info.01029, %if.then84 ], [ %48, %if.end125 ], !dbg !2654
  %index.1 = phi i32 [ %index.01032, %if.then84 ], [ %dec148, %if.end125 ], !dbg !2654
  call void @llvm.dbg.value(metadata i64 poison, metadata !2326, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %node_info.1, metadata !2319, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.4, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %inc150 = add nuw nsw i64 %level.01036, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %inc150, metadata !2327, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %conv38, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %add43, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %add53, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %add63, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %add73, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %exitcond1110.not = icmp eq i64 %inc150, 9, !dbg !2656
  br i1 %exitcond1110.not, label %if.end.i738, label %if.end.i.i, !dbg !2472, !llvm.loop !2657

if.end.i738:                                      ; preds = %for.inc149
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info.1, i64 0, i32 2, !dbg !2659
  %57 = load i64, ptr %number_unique, align 8, !dbg !2660, !tbaa !2661
  %add152 = add i64 %57, %count.0.lcssa, !dbg !2660
  store i64 %add152, ptr %number_unique, align 8, !dbg !2660, !tbaa !2661
  %mul154 = fmul double %conv126, 0x3EF0001000100010, !dbg !2662
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.0, metadata !2489, metadata !DIExpression()), !dbg !2663
  br i1 %cmp1.i.i, label %if.end3.i, label %if.end.i743, !dbg !2665

if.end3.i:                                        ; preds = %if.end.i738
  br label %if.end.i743, !dbg !2666

if.end.i743:                                      ; preds = %if.end3.i, %if.end.i738
  %retval.0.i740 = phi i16 [ %conv.i.i, %if.end3.i ], [ -1, %if.end.i738 ], !dbg !2663
  %conv158 = uitofp i16 %retval.0.i740 to double, !dbg !2667
  %total_color = getelementptr inbounds %struct._NodeInfo, ptr %node_info.1, i64 0, i32 3, !dbg !2668
  %58 = load float, ptr %total_color, align 8, !dbg !2669, !tbaa !2670
  %conv161 = fpext float %58 to double, !dbg !2669
  %59 = call double @llvm.fmuladd.f64(double %mul154, double %conv158, double %conv161), !dbg !2669
  %conv162 = fptrunc double %59 to float, !dbg !2669
  store float %conv162, ptr %total_color, align 8, !dbg !2669, !tbaa !2670
  call void @llvm.dbg.value(metadata float %pixel.sroa.12.0, metadata !2489, metadata !DIExpression()), !dbg !2671
  br i1 %cmp1.i38.i, label %if.end3.i746, label %if.end.i751, !dbg !2673

if.end3.i746:                                     ; preds = %if.end.i743
  br label %if.end.i751, !dbg !2674

if.end.i751:                                      ; preds = %if.end3.i746, %if.end.i743
  %retval.0.i747 = phi i16 [ %conv.i41.i, %if.end3.i746 ], [ -1, %if.end.i743 ], !dbg !2671
  %conv168 = uitofp i16 %retval.0.i747 to double, !dbg !2675
  %green171 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.1, i64 0, i32 3, i32 1, !dbg !2676
  %60 = load float, ptr %green171, align 4, !dbg !2677, !tbaa !2678
  %conv172 = fpext float %60 to double, !dbg !2677
  %61 = call double @llvm.fmuladd.f64(double %mul154, double %conv168, double %conv172), !dbg !2677
  %conv173 = fptrunc double %61 to float, !dbg !2677
  store float %conv173, ptr %green171, align 4, !dbg !2677, !tbaa !2678
  call void @llvm.dbg.value(metadata float %pixel.sroa.22.0, metadata !2489, metadata !DIExpression()), !dbg !2679
  br i1 %cmp1.i52.i, label %if.end3.i754, label %ClampPixel.exit756, !dbg !2681

if.end3.i754:                                     ; preds = %if.end.i751
  br label %ClampPixel.exit756, !dbg !2682

ClampPixel.exit756:                               ; preds = %if.end.i751, %if.end3.i754
  %retval.0.i755 = phi i16 [ %conv.i55.i, %if.end3.i754 ], [ -1, %if.end.i751 ], !dbg !2679
  %conv179 = uitofp i16 %retval.0.i755 to double, !dbg !2683
  %blue182 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.1, i64 0, i32 3, i32 2, !dbg !2684
  %62 = load float, ptr %blue182, align 8, !dbg !2685, !tbaa !2686
  %conv183 = fpext float %62 to double, !dbg !2685
  %63 = call double @llvm.fmuladd.f64(double %mul154, double %conv179, double %conv183), !dbg !2685
  %conv184 = fptrunc double %63 to float, !dbg !2685
  store float %conv184, ptr %blue182, align 8, !dbg !2685, !tbaa !2686
  %64 = load i32, ptr %associate_alpha3.i, align 8, !dbg !2687, !tbaa !2359
  %cmp186.not = icmp eq i32 %64, 0, !dbg !2689
  br i1 %cmp186.not, label %if.end200, label %if.end.i759, !dbg !2690

if.end.i759:                                      ; preds = %ClampPixel.exit756
  call void @llvm.dbg.value(metadata float %conv32.sink.i, metadata !2489, metadata !DIExpression()), !dbg !2691
  br i1 %cmp1.i66.i, label %if.end3.i762, label %ClampPixel.exit764, !dbg !2693

if.end3.i762:                                     ; preds = %if.end.i759
  br label %ClampPixel.exit764, !dbg !2694

ClampPixel.exit764:                               ; preds = %if.end.i759, %if.end3.i762
  %retval.0.i763 = phi i16 [ %conv.i69.i, %if.end3.i762 ], [ -1, %if.end.i759 ], !dbg !2691
  %conv194 = uitofp i16 %retval.0.i763 to double, !dbg !2695
  %opacity197 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.1, i64 0, i32 3, i32 3, !dbg !2696
  %65 = load float, ptr %opacity197, align 4, !dbg !2697, !tbaa !2698
  %conv198 = fpext float %65 to double, !dbg !2697
  %66 = call double @llvm.fmuladd.f64(double %mul154, double %conv194, double %conv198), !dbg !2697
  %conv199 = fptrunc double %66 to float, !dbg !2697
  store float %conv199, ptr %opacity197, align 4, !dbg !2697, !tbaa !2698
  br label %if.end200, !dbg !2699

if.end200:                                        ; preds = %ClampPixel.exit764, %ClampPixel.exit756
  %add.ptr201 = getelementptr inbounds %struct._PixelPacket, ptr %p.01042, i64 %count.0.lcssa, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %add.lcssa, metadata !2333, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata ptr %add.ptr201, metadata !2329, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata float %error.sroa.20.4, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %67 = load i64, ptr %columns, align 8, !dbg !2395, !tbaa !1292
  %cmp24 = icmp slt i64 %add.lcssa, %67, !dbg !2398
  br i1 %cmp24, label %for.cond26.preheader, label %for.end204, !dbg !2399, !llvm.loop !2701

for.end204:                                       ; preds = %if.end200, %if.end21
  %error.sroa.20.1.lcssa = phi float [ %error.sroa.20.01048, %if.end21 ], [ %error.sroa.20.4, %if.end200 ], !dbg !2703
  %68 = load i64, ptr %colors, align 8, !dbg !2704, !tbaa !2616
  %69 = load i64, ptr %maximum_colors, align 8, !dbg !2706, !tbaa !2173
  %cmp206 = icmp ugt i64 %68, %69, !dbg !2707
  br i1 %cmp206, label %if.then208, label %if.end210, !dbg !2708

if.then208:                                       ; preds = %for.end204
  %70 = load ptr, ptr %cube_info, align 8, !dbg !2709, !tbaa !2213
  call fastcc void @PruneToCubeDepth(ptr noundef nonnull %cube_info, ptr noundef %70), !dbg !2711
  br label %for.end220, !dbg !2712

if.end210:                                        ; preds = %for.end204
  %71 = load i64, ptr %rows, align 8, !dbg !2713, !tbaa !1294
  call void @llvm.dbg.value(metadata ptr %image, metadata !1386, metadata !DIExpression()) #17, !dbg !2714
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !1392, metadata !DIExpression()) #17, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %y.01049, metadata !1393, metadata !DIExpression()) #17, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %71, metadata !1394, metadata !DIExpression()) #17, !dbg !2714
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !2716
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1395, metadata !DIExpression()) #17, !dbg !2717
  %72 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2718, !tbaa !1402
  %cmp.i765 = icmp eq ptr %72, null, !dbg !2719
  br i1 %cmp.i765, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !2720

SetImageProgress.exit.thread:                     ; preds = %if.end210
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !2721
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2317, metadata !DIExpression()), !dbg !2339
  br label %for.inc218, !dbg !2722

SetImageProgress.exit:                            ; preds = %if.end210
  %call.i766 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #17, !dbg !2723
  %73 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2724, !tbaa !1402
  %74 = load ptr, ptr %client_data.i, align 8, !dbg !2725, !tbaa !1410
  %call4.i = call i32 %73(ptr noundef nonnull %message.i, i64 noundef %y.01049, i64 noundef %71, ptr noundef %74) #17, !dbg !2726
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !2721
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2317, metadata !DIExpression()), !dbg !2339
  %cmp213 = icmp eq i32 %call4.i, 0, !dbg !2727
  br i1 %cmp213, label %for.end220, label %SetImageProgress.exit.for.inc218_crit_edge, !dbg !2722

SetImageProgress.exit.for.inc218_crit_edge:       ; preds = %SetImageProgress.exit
  %.pre1112 = load i64, ptr %rows, align 8, !dbg !2377, !tbaa !1294
  br label %for.inc218, !dbg !2722

for.inc218:                                       ; preds = %SetImageProgress.exit.for.inc218_crit_edge, %SetImageProgress.exit.thread
  %75 = phi i64 [ %.pre1112, %SetImageProgress.exit.for.inc218_crit_edge ], [ %71, %SetImageProgress.exit.thread ], !dbg !2377
  call void @llvm.dbg.value(metadata float %error.sroa.20.1.lcssa, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %inc219 = add nuw nsw i64 %y.01049, 1, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %inc219, metadata !2328, metadata !DIExpression()), !dbg !2339
  %cmp14 = icmp slt i64 %inc219, %75, !dbg !2378
  br i1 %cmp14, label %for.body, label %for.end220, !dbg !2379, !llvm.loop !2730

for.end220:                                       ; preds = %for.inc218, %for.body, %SetImageProgress.exit, %if.end11, %if.then208
  %y.01008 = phi i64 [ %y.01049, %if.then208 ], [ 0, %if.end11 ], [ %inc219, %for.inc218 ], [ %y.01049, %for.body ], [ %y.01049, %SetImageProgress.exit ]
  %error.sroa.20.6 = phi float [ %error.sroa.20.1.lcssa, %if.then208 ], [ 0.000000e+00, %if.end11 ], [ %error.sroa.20.1.lcssa, %for.inc218 ], [ %error.sroa.20.01048, %for.body ], [ %error.sroa.20.1.lcssa, %SetImageProgress.exit ], !dbg !2703
  call void @llvm.dbg.value(metadata float %error.sroa.20.6, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %y.01008, metadata !2328, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2339
  %columns229 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2732
  %filename.i958 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2733
  %y.11102 = add nuw nsw i64 %y.01008, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %y.11102, metadata !2328, metadata !DIExpression()), !dbg !2339
  %76 = load i64, ptr %rows, align 8, !dbg !2736, !tbaa !1294
  %cmp2241103 = icmp slt i64 %y.11102, %76, !dbg !2737
  br i1 %cmp2241103, label %for.body226.lr.ph, label %for.end467, !dbg !2738

for.body226.lr.ph:                                ; preds = %for.end220
  %nodes235 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 9
  %depth240 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 22
  %matte.i778 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %77 = getelementptr i8, ptr %cube_info, i64 456
  %free_nodes.i898 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 10
  %next_node15.phi.trans.insert.i900 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 12
  %node_queue.i910 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 13
  %colors334 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 1
  %progress_monitor.i956 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %client_data.i960 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body226, !dbg !2738

for.body226:                                      ; preds = %for.body226.lr.ph, %cleanup461
  %y.11105 = phi i64 [ %y.11102, %for.body226.lr.ph ], [ %y.1, %cleanup461 ]
  %error.sroa.20.71104 = phi float [ %error.sroa.20.6, %for.body226.lr.ph ], [ %error.sroa.20.8.lcssa, %cleanup461 ]
  call void @llvm.dbg.value(metadata float %error.sroa.20.71104, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %78 = load i64, ptr %columns229, align 8, !dbg !2732, !tbaa !1292
  %call230 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call13, i64 noundef 0, i64 noundef %y.11105, i64 noundef %78, i64 noundef 1, ptr noundef %exception) #20, !dbg !2739
  call void @llvm.dbg.value(metadata ptr %call230, metadata !2334, metadata !DIExpression()), !dbg !2740
  %cmp231 = icmp eq ptr %call230, null, !dbg !2741
  br i1 %cmp231, label %for.end467, label %if.end234, !dbg !2743

if.end234:                                        ; preds = %for.body226
  %79 = load i64, ptr %nodes235, align 8, !dbg !2744, !tbaa !2217
  %cmp236 = icmp ugt i64 %79, 266817, !dbg !2746
  br i1 %cmp236, label %if.then238, label %if.end242, !dbg !2747

if.then238:                                       ; preds = %if.end234
  %80 = load ptr, ptr %cube_info, align 8, !dbg !2748, !tbaa !2213
  call fastcc void @PruneLevel(ptr noundef nonnull %cube_info, ptr noundef %80), !dbg !2750
  %81 = load i64, ptr %depth240, align 8, !dbg !2751, !tbaa !2167
  %dec241 = add i64 %81, -1, !dbg !2751
  store i64 %dec241, ptr %depth240, align 8, !dbg !2751, !tbaa !2167
  br label %if.end242, !dbg !2752

if.end242:                                        ; preds = %if.then238, %if.end234
  call void @llvm.dbg.value(metadata i64 0, metadata !2338, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %call230, metadata !2334, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata float %error.sroa.20.71104, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %82 = load i64, ptr %columns229, align 8, !dbg !2753, !tbaa !1292
  %cmp2451095 = icmp sgt i64 %82, 0, !dbg !2756
  br i1 %cmp2451095, label %for.cond248.preheader, label %for.end454, !dbg !2757

for.cond248.preheader:                            ; preds = %if.end242, %if.end450
  %83 = phi i64 [ %141, %if.end450 ], [ %82, %if.end242 ]
  %x228.01100 = phi i64 [ %add249.lcssa, %if.end450 ], [ 0, %if.end242 ]
  %p227.01097 = phi ptr [ %add.ptr451, %if.end450 ], [ %call230, %if.end242 ]
  %error.sroa.20.81096 = phi float [ %error.sroa.20.9.lcssa, %if.end450 ], [ %error.sroa.20.71104, %if.end242 ]
  call void @llvm.dbg.value(metadata i64 %x228.01100, metadata !2338, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %p227.01097, metadata !2334, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata float %error.sroa.20.81096, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %green.i772 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 0, i32 1, !dbg !2758
  %opacity.i781 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 0, i32 3, !dbg !2764
  call void @llvm.dbg.value(metadata i64 1, metadata !2324, metadata !DIExpression()), !dbg !2339
  %add2491060 = add nsw i64 %x228.01100, 1, !dbg !2765
  %cmp2511061 = icmp slt i64 %add2491060, %83, !dbg !2766
  br i1 %cmp2511061, label %for.body253.lr.ph, label %for.end262thread-pre-split, !dbg !2767

for.body253.lr.ph:                                ; preds = %for.cond248.preheader
  %red.i769 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 0, i32 2
  %84 = load i16, ptr %red.i769, align 2, !tbaa !1355
  %85 = sub i64 %83, %x228.01100, !dbg !2767
  br label %for.body253, !dbg !2767

for.body253:                                      ; preds = %for.body253.lr.ph, %for.inc260
  %add2491064 = phi i64 [ %add2491060, %for.body253.lr.ph ], [ %add249, %for.inc260 ]
  %count.11062 = phi i64 [ 1, %for.body253.lr.ph ], [ %inc261, %for.inc260 ]
  call void @llvm.dbg.value(metadata i64 %count.11062, metadata !2324, metadata !DIExpression()), !dbg !2339
  %add.ptr254 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 %count.11062, !dbg !2768
  call void @llvm.dbg.value(metadata ptr %image, metadata !1577, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %p227.01097, metadata !1582, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %add.ptr254, metadata !1583, metadata !DIExpression()), !dbg !2769
  %red1.i770 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 %count.11062, i32 2, !dbg !2770
  %86 = load i16, ptr %red1.i770, align 2, !dbg !2770, !tbaa !1355
  %cmp.not.i771 = icmp eq i16 %84, %86, !dbg !2771
  br i1 %cmp.not.i771, label %lor.lhs.false.i775, label %for.end262thread-pre-split, !dbg !2772

lor.lhs.false.i775:                               ; preds = %for.body253
  %87 = load i16, ptr %green.i772, align 2, !dbg !2758, !tbaa !1359
  %green5.i773 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 %count.11062, i32 1, !dbg !2773
  %88 = load i16, ptr %green5.i773, align 2, !dbg !2773, !tbaa !1359
  %cmp7.not.i774 = icmp eq i16 %87, %88, !dbg !2774
  br i1 %cmp7.not.i774, label %lor.lhs.false9.i777, label %for.end262thread-pre-split, !dbg !2775

lor.lhs.false9.i777:                              ; preds = %lor.lhs.false.i775
  %89 = load i16, ptr %p227.01097, align 2, !dbg !2776, !tbaa !1363
  %90 = load i16, ptr %add.ptr254, align 2, !dbg !2777, !tbaa !1363
  %cmp13.not.i776 = icmp eq i16 %89, %90, !dbg !2778
  br i1 %cmp13.not.i776, label %if.end.i780, label %for.end262thread-pre-split, !dbg !2779

if.end.i780:                                      ; preds = %lor.lhs.false9.i777
  %91 = load i32, ptr %matte.i778, align 8, !dbg !2780, !tbaa !1286
  %cmp15.not.i779 = icmp eq i32 %91, 0, !dbg !2781
  br i1 %cmp15.not.i779, label %for.inc260, label %land.lhs.true.i784, !dbg !2782

land.lhs.true.i784:                               ; preds = %if.end.i780
  %92 = load i16, ptr %opacity.i781, align 2, !dbg !2764, !tbaa !1367
  %opacity18.i782 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 %count.11062, i32 3, !dbg !2783
  %93 = load i16, ptr %opacity18.i782, align 2, !dbg !2783, !tbaa !1367
  %cmp20.not.i783 = icmp eq i16 %92, %93, !dbg !2784
  br i1 %cmp20.not.i783, label %for.inc260, label %for.end262, !dbg !2785

for.inc260:                                       ; preds = %land.lhs.true.i784, %if.end.i780
  %inc261 = add i64 %count.11062, 1, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %inc261, metadata !2324, metadata !DIExpression()), !dbg !2339
  %add249 = add nsw i64 %inc261, %x228.01100, !dbg !2765
  %exitcond1111.not = icmp eq i64 %inc261, %85, !dbg !2766
  br i1 %exitcond1111.not, label %for.end262thread-pre-split, label %for.body253, !dbg !2767, !llvm.loop !2787

for.end262thread-pre-split:                       ; preds = %for.body253, %lor.lhs.false.i775, %lor.lhs.false9.i777, %for.inc260, %for.cond248.preheader
  %count.1.lcssa.ph = phi i64 [ 1, %for.cond248.preheader ], [ %85, %for.inc260 ], [ %count.11062, %lor.lhs.false9.i777 ], [ %count.11062, %lor.lhs.false.i775 ], [ %count.11062, %for.body253 ]
  %add249.lcssa.ph = phi i64 [ %add2491060, %for.cond248.preheader ], [ %83, %for.inc260 ], [ %add2491064, %lor.lhs.false9.i777 ], [ %add2491064, %lor.lhs.false.i775 ], [ %add2491064, %for.body253 ]
  %.pre.i790.pr = load i16, ptr %opacity.i781, align 2, !dbg !2789, !tbaa !1367
  br label %for.end262, !dbg !2791

for.end262:                                       ; preds = %land.lhs.true.i784, %for.end262thread-pre-split
  %.pre.i790 = phi i16 [ %.pre.i790.pr, %for.end262thread-pre-split ], [ %92, %land.lhs.true.i784 ], !dbg !2789
  %count.1.lcssa = phi i64 [ %count.1.lcssa.ph, %for.end262thread-pre-split ], [ %count.11062, %land.lhs.true.i784 ], !dbg !2792
  %add249.lcssa = phi i64 [ %add249.lcssa.ph, %for.end262thread-pre-split ], [ %add2491064, %land.lhs.true.i784 ], !dbg !2765
  %cube_info.val = load i32, ptr %77, align 8, !dbg !2791, !tbaa !2359
  call void @llvm.dbg.value(metadata ptr undef, metadata !2439, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %p227.01097, metadata !2440, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr undef, metadata !2441, metadata !DIExpression()), !dbg !2793
  %cmp.i788 = icmp eq i32 %cube_info.val, 0, !dbg !2794
  br i1 %cmp.i788, label %entry.if.then_crit_edge.i792, label %lor.lhs.false.i794, !dbg !2795

entry.if.then_crit_edge.i792:                     ; preds = %for.end262
  %phi.cast.i791 = uitofp i16 %.pre.i790 to float, !dbg !2795
  br label %if.then.i802, !dbg !2795

lor.lhs.false.i794:                               ; preds = %for.end262
  %cmp1.i793 = icmp eq i16 %.pre.i790, 0, !dbg !2796
  br i1 %cmp1.i793, label %if.then.i802, label %if.end.i817, !dbg !2797

if.then.i802:                                     ; preds = %lor.lhs.false.i794, %entry.if.then_crit_edge.i792
  %94 = phi float [ %phi.cast.i791, %entry.if.then_crit_edge.i792 ], [ 0.000000e+00, %lor.lhs.false.i794 ]
  %red.i795 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 0, i32 2, !dbg !2798
  %95 = load i16, ptr %red.i795, align 2, !dbg !2798, !tbaa !1355
  %conv3.i796 = uitofp i16 %95 to float, !dbg !2799
  call void @llvm.dbg.value(metadata float %conv3.i796, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  %96 = load i16, ptr %green.i772, align 2, !dbg !2800, !tbaa !1359
  %conv5.i798 = uitofp i16 %96 to float, !dbg !2801
  call void @llvm.dbg.value(metadata float %conv5.i798, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  %97 = load i16, ptr %p227.01097, align 2, !dbg !2802, !tbaa !1363
  %conv7.i800 = uitofp i16 %97 to float, !dbg !2803
  call void @llvm.dbg.value(metadata float %conv7.i800, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  br label %AssociateAlphaPixel.exit820, !dbg !2804

if.end.i817:                                      ; preds = %lor.lhs.false.i794
  %98 = xor i16 %.pre.i790, -1, !dbg !2805
  %conv14.i803 = uitofp i16 %98 to double, !dbg !2806
  %mul.i804 = fmul double %conv14.i803, 0x3EF0001000100010, !dbg !2807
  %conv15.i805 = fptrunc double %mul.i804 to float, !dbg !2808
  call void @llvm.dbg.value(metadata float %conv15.i805, metadata !2442, metadata !DIExpression()), !dbg !2793
  %red16.i806 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 0, i32 2, !dbg !2809
  %99 = load i16, ptr %red16.i806, align 2, !dbg !2809, !tbaa !1355
  %conv18.i807 = uitofp i16 %99 to float, !dbg !2809
  %mul19.i808 = fmul float %conv15.i805, %conv18.i807, !dbg !2810
  call void @llvm.dbg.value(metadata float %mul19.i808, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  %100 = load i16, ptr %green.i772, align 2, !dbg !2811, !tbaa !1359
  %conv23.i810 = uitofp i16 %100 to float, !dbg !2811
  %mul24.i811 = fmul float %conv15.i805, %conv23.i810, !dbg !2812
  call void @llvm.dbg.value(metadata float %mul24.i811, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  %101 = load i16, ptr %p227.01097, align 2, !dbg !2813, !tbaa !1363
  %conv28.i813 = uitofp i16 %101 to float, !dbg !2813
  %mul29.i814 = fmul float %conv15.i805, %conv28.i813, !dbg !2814
  call void @llvm.dbg.value(metadata float %mul29.i814, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  %conv32.i816 = uitofp i16 %.pre.i790 to float, !dbg !2815
  br label %AssociateAlphaPixel.exit820, !dbg !2816

AssociateAlphaPixel.exit820:                      ; preds = %if.then.i802, %if.end.i817
  %pixel.sroa.22.1 = phi float [ %conv7.i800, %if.then.i802 ], [ %mul29.i814, %if.end.i817 ], !dbg !2793
  %pixel.sroa.12.1 = phi float [ %conv5.i798, %if.then.i802 ], [ %mul24.i811, %if.end.i817 ], !dbg !2793
  %pixel.sroa.0.1 = phi float [ %conv3.i796, %if.then.i802 ], [ %mul19.i808, %if.end.i817 ], !dbg !2793
  %conv32.sink.i818 = phi float [ %94, %if.then.i802 ], [ %conv32.i816, %if.end.i817 ]
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.1, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %pixel.sroa.12.1, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %pixel.sroa.22.1, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %conv32.sink.i818, metadata !2323, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata i64 7, metadata !2326, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276800e+04, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %102 = load ptr, ptr %cube_info, align 8, !dbg !2817, !tbaa !2213
  call void @llvm.dbg.value(metadata i64 1, metadata !2327, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 poison, metadata !2326, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %102, metadata !2319, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float 3.276750e+04, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.81096, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %103 = load i64, ptr %depth240, align 8, !dbg !2818, !tbaa !2167
  %cmp266.not1075 = icmp eq i64 %103, 0, !dbg !2821
  br i1 %cmp266.not1075, label %AssociateAlphaPixel.exit820.if.end.i925_crit_edge, label %if.end.i.i823.lr.ph, !dbg !2822

AssociateAlphaPixel.exit820.if.end.i925_crit_edge: ; preds = %AssociateAlphaPixel.exit820
  %.pre1114 = uitofp i64 %count.1.lcssa to double, !dbg !2823
  br label %if.end.i925, !dbg !2822

if.end.i.i823.lr.ph:                              ; preds = %AssociateAlphaPixel.exit820
  %cmp1.i.i822 = fcmp ult float %pixel.sroa.0.1, 6.553500e+04
  %add.i.i824 = fadd float %pixel.sroa.0.1, 5.000000e-01
  %conv.i.i825 = fptoui float %add.i.i824 to i16
  %phi.cast.i826 = zext i16 %conv.i.i825 to i64
  %phi.bo.i827 = add nuw nsw i64 %phi.cast.i826, 128
  %cmp1.i38.i839 = fcmp ult float %pixel.sroa.12.1, 6.553500e+04
  %add.i40.i841 = fadd float %pixel.sroa.12.1, 5.000000e-01
  %conv.i41.i842 = fptoui float %add.i40.i841 to i16
  %phi.cast79.i843 = zext i16 %conv.i41.i842 to i64
  %phi.bo80.i844 = add nuw nsw i64 %phi.cast79.i843, 128
  %cmp1.i52.i857 = fcmp ult float %pixel.sroa.22.1, 6.553500e+04
  %add.i54.i859 = fadd float %pixel.sroa.22.1, 5.000000e-01
  %conv.i55.i860 = fptoui float %add.i54.i859 to i16
  %phi.cast81.i861 = zext i16 %conv.i55.i860 to i64
  %phi.bo82.i862 = add nuw nsw i64 %phi.cast81.i861, 128
  %cmp1.i66.i878 = fcmp ult float %conv32.sink.i818, 6.553500e+04
  %add.i68.i880 = fadd float %conv32.sink.i818, 5.000000e-01
  %conv.i69.i881 = fptoui float %add.i68.i880 to i16
  %phi.cast83.i882 = zext i16 %conv.i69.i881 to i64
  %phi.bo84.i883 = add nuw nsw i64 %phi.cast83.i882, 128
  %conv373 = uitofp i64 %count.1.lcssa to double
  br label %if.end.i.i823, !dbg !2822

if.end.i.i823:                                    ; preds = %if.end.i.i823.lr.ph, %for.inc397
  %level.11089 = phi i64 [ 1, %if.end.i.i823.lr.ph ], [ %inc398, %for.inc397 ]
  %index.21085 = phi i32 [ 7, %if.end.i.i823.lr.ph ], [ %index.3, %for.inc397 ]
  %bisect.11084 = phi float [ 3.276800e+04, %if.end.i.i823.lr.ph ], [ %conv271, %for.inc397 ]
  %node_info.21082 = phi ptr [ %102, %if.end.i.i823.lr.ph ], [ %node_info.3, %for.inc397 ]
  %mid.sroa.0.11081 = phi float [ 3.276750e+04, %if.end.i.i823.lr.ph ], [ %add282, %for.inc397 ]
  %mid.sroa.10.11080 = phi float [ 3.276750e+04, %if.end.i.i823.lr.ph ], [ %add292, %for.inc397 ]
  %mid.sroa.18.11079 = phi float [ 3.276750e+04, %if.end.i.i823.lr.ph ], [ %add302, %for.inc397 ]
  %mid.sroa.26.11078 = phi float [ 3.276750e+04, %if.end.i.i823.lr.ph ], [ %add312, %for.inc397 ]
  %error.sroa.20.91076 = phi float [ %error.sroa.20.81096, %if.end.i.i823.lr.ph ], [ %error.sroa.20.11, %for.inc397 ]
  call void @llvm.dbg.value(metadata i64 %level.11089, metadata !2327, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %bisect.11084, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %node_info.21082, metadata !2319, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %mid.sroa.0.11081, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %mid.sroa.10.11080, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %mid.sroa.18.11079, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %mid.sroa.26.11078, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.91076, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %conv271 = fmul float %bisect.11084, 5.000000e-01, !dbg !2824
  call void @llvm.dbg.value(metadata float %conv271, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2477, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr undef, metadata !2484, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 poison, metadata !2485, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.1, metadata !2489, metadata !DIExpression()), !dbg !2828
  br i1 %cmp1.i.i822, label %if.end3.i.i828, label %if.end.i39.i840, !dbg !2830

if.end3.i.i828:                                   ; preds = %if.end.i.i823
  br label %if.end.i39.i840, !dbg !2831

if.end.i39.i840:                                  ; preds = %if.end.i.i823, %if.end3.i.i828
  %retval.0.i.i829 = phi i64 [ %phi.bo.i827, %if.end3.i.i828 ], [ 65663, %if.end.i.i823 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !2832
  %shr.i.i830 = lshr i64 %retval.0.i.i829, 8, !dbg !2834
  %sub.i.i831 = sub nsw i64 %retval.0.i.i829, %shr.i.i830, !dbg !2835
  %104 = trunc i64 %sub.i.i831 to i32, !dbg !2836
  %105 = lshr i32 %104, 8, !dbg !2836
  %conv.i832 = and i32 %105, 255, !dbg !2837
  %shr.i834 = lshr i32 %conv.i832, %index.21085, !dbg !2838
  %and.i835 = and i32 %shr.i834, 1, !dbg !2839
  call void @llvm.dbg.value(metadata float %pixel.sroa.12.1, metadata !2489, metadata !DIExpression()), !dbg !2840
  br i1 %cmp1.i38.i839, label %if.end3.i42.i845, label %if.end.i53.i858, !dbg !2842

if.end3.i42.i845:                                 ; preds = %if.end.i39.i840
  br label %if.end.i53.i858, !dbg !2843

if.end.i53.i858:                                  ; preds = %if.end.i39.i840, %if.end3.i42.i845
  %retval.0.i43.i846 = phi i64 [ %phi.bo80.i844, %if.end3.i42.i845 ], [ 65663, %if.end.i39.i840 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !2844
  %shr.i47.i847 = lshr i64 %retval.0.i43.i846, 8, !dbg !2846
  %sub.i48.i848 = sub nsw i64 %retval.0.i43.i846, %shr.i47.i847, !dbg !2847
  %106 = trunc i64 %sub.i48.i848 to i32, !dbg !2848
  %107 = lshr i32 %106, 8, !dbg !2848
  %conv4.i849 = and i32 %107, 255, !dbg !2849
  %shr6.i850 = lshr i32 %conv4.i849, %index.21085, !dbg !2850
  %and7.i851 = shl nuw nsw i32 %shr6.i850, 1, !dbg !2851
  %shl.i852 = and i32 %and7.i851, 2, !dbg !2851
  %or.i853 = or i32 %shl.i852, %and.i835, !dbg !2852
  call void @llvm.dbg.value(metadata float %pixel.sroa.22.1, metadata !2489, metadata !DIExpression()), !dbg !2853
  br i1 %cmp1.i52.i857, label %if.end3.i56.i863, label %ClampPixel.exit58.i874, !dbg !2855

if.end3.i56.i863:                                 ; preds = %if.end.i53.i858
  br label %ClampPixel.exit58.i874, !dbg !2856

ClampPixel.exit58.i874:                           ; preds = %if.end3.i56.i863, %if.end.i53.i858
  %retval.0.i57.i864 = phi i64 [ %phi.bo82.i862, %if.end3.i56.i863 ], [ 65663, %if.end.i53.i858 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !2857
  %shr.i61.i865 = lshr i64 %retval.0.i57.i864, 8, !dbg !2859
  %sub.i62.i866 = sub nsw i64 %retval.0.i57.i864, %shr.i61.i865, !dbg !2860
  %108 = trunc i64 %sub.i62.i866 to i32, !dbg !2861
  %109 = lshr i32 %108, 8, !dbg !2861
  %conv10.i867 = and i32 %109, 255, !dbg !2862
  %shr12.i868 = lshr i32 %conv10.i867, %index.21085, !dbg !2863
  %and13.i869 = shl nuw nsw i32 %shr12.i868, 2, !dbg !2864
  %shl14.i870 = and i32 %and13.i869, 4, !dbg !2864
  %or15.i871 = or i32 %or.i853, %shl14.i870, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %or15.i871, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2826
  %110 = load i32, ptr %associate_alpha3.i, align 8, !dbg !2866, !tbaa !2359
  %cmp.not.i873 = icmp eq i32 %110, 0, !dbg !2867
  br i1 %cmp.not.i873, label %ColorToNodeId.exit897, label %if.end.i67.i879, !dbg !2868

if.end.i67.i879:                                  ; preds = %ClampPixel.exit58.i874
  call void @llvm.dbg.value(metadata float %conv32.sink.i818, metadata !2489, metadata !DIExpression()), !dbg !2869
  br i1 %cmp1.i66.i878, label %if.end3.i70.i884, label %ClampPixel.exit72.i893, !dbg !2871

if.end3.i70.i884:                                 ; preds = %if.end.i67.i879
  br label %ClampPixel.exit72.i893, !dbg !2872

ClampPixel.exit72.i893:                           ; preds = %if.end3.i70.i884, %if.end.i67.i879
  %retval.0.i71.i885 = phi i64 [ %phi.bo84.i883, %if.end3.i70.i884 ], [ 65663, %if.end.i67.i879 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !2873
  %shr.i75.i886 = lshr i64 %retval.0.i71.i885, 8, !dbg !2875
  %sub.i76.i887 = sub nsw i64 %retval.0.i71.i885, %shr.i75.i886, !dbg !2876
  %111 = trunc i64 %sub.i76.i887 to i32, !dbg !2877
  %112 = lshr i32 %111, 8, !dbg !2877
  %conv20.i888 = and i32 %112, 255, !dbg !2878
  %shr22.i889 = lshr i32 %conv20.i888, %index.21085, !dbg !2879
  %and23.i890 = shl nuw nsw i32 %shr22.i889, 3, !dbg !2880
  %shl24.i891 = and i32 %and23.i890, 8, !dbg !2880
  %or2634.i892 = or i32 %shl24.i891, %or15.i871, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %or2634.i892, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2826
  br label %ColorToNodeId.exit897, !dbg !2882

ColorToNodeId.exit897:                            ; preds = %ClampPixel.exit58.i874, %ClampPixel.exit72.i893
  %id.0.in.i894 = phi i32 [ %or2634.i892, %ClampPixel.exit72.i893 ], [ %or15.i871, %ClampPixel.exit58.i874 ]
  %id.0.i895 = zext i32 %id.0.in.i894 to i64, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %id.0.i895, metadata !2486, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %id.0.i895, metadata !2325, metadata !DIExpression()), !dbg !2339
  %and273 = and i64 %id.0.i895, 1, !dbg !2883
  %cmp274.not = icmp eq i64 %and273, 0, !dbg !2884
  %fneg278 = fneg float %conv271
  %spec.select710 = select i1 %cmp274.not, float %fneg278, float %conv271, !dbg !2885
  %add282 = fadd float %mid.sroa.0.11081, %spec.select710, !dbg !2886
  call void @llvm.dbg.value(metadata float %add282, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  %and283 = and i64 %id.0.i895, 2, !dbg !2887
  %cmp284.not = icmp eq i64 %and283, 0, !dbg !2888
  %spec.select713 = select i1 %cmp284.not, float %fneg278, float %conv271, !dbg !2889
  %add292 = fadd float %mid.sroa.10.11080, %spec.select713, !dbg !2890
  call void @llvm.dbg.value(metadata float %add292, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  %and293 = and i64 %id.0.i895, 4, !dbg !2891
  %cmp294.not = icmp eq i64 %and293, 0, !dbg !2892
  %spec.select711 = select i1 %cmp294.not, float %fneg278, float %conv271, !dbg !2893
  %add302 = fadd float %mid.sroa.18.11079, %spec.select711, !dbg !2894
  call void @llvm.dbg.value(metadata float %add302, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  %and303 = and i64 %id.0.i895, 8, !dbg !2895
  %cmp304.not = icmp eq i64 %and303, 0, !dbg !2896
  %spec.select715 = select i1 %cmp304.not, float %fneg278, float %conv271, !dbg !2897
  %add312 = fadd float %mid.sroa.26.11078, %spec.select715, !dbg !2898
  call void @llvm.dbg.value(metadata float %add312, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %arrayidx314 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.21082, i64 0, i32 1, i64 %id.0.i895, !dbg !2899
  %113 = load ptr, ptr %arrayidx314, align 8, !dbg !2899, !tbaa !2575
  %cmp315 = icmp eq ptr %113, null, !dbg !2901
  br i1 %cmp315, label %if.then317, label %if.end337, !dbg !2902

if.then317:                                       ; preds = %ColorToNodeId.exit897
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2174, metadata !DIExpression()) #17, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %id.0.i895, metadata !2179, metadata !DIExpression()) #17, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %level.11089, metadata !2180, metadata !DIExpression()) #17, !dbg !2903
  call void @llvm.dbg.value(metadata ptr %node_info.21082, metadata !2181, metadata !DIExpression()) #17, !dbg !2903
  %114 = load i64, ptr %free_nodes.i898, align 8, !dbg !2906, !tbaa !2189
  %cmp.i899 = icmp eq i64 %114, 0, !dbg !2907
  br i1 %cmp.i899, label %if.then.i906, label %entry.if.end12_crit_edge.i903, !dbg !2908

entry.if.end12_crit_edge.i903:                    ; preds = %if.then317
  %.pre.i901 = load ptr, ptr %next_node15.phi.trans.insert.i900, align 8, !dbg !2909, !tbaa !2193
  %phi.bo.i902 = add i64 %114, -1, !dbg !2908
  br label %if.end329, !dbg !2908

if.then.i906:                                     ; preds = %if.then317
  %call.i904 = call ptr @AcquireMagickMemory(i64 noundef 16) #16, !dbg !2910
  call void @llvm.dbg.value(metadata ptr %call.i904, metadata !2183, metadata !DIExpression()) #17, !dbg !2911
  %cmp1.i905 = icmp eq ptr %call.i904, null, !dbg !2912
  br i1 %cmp1.i905, label %if.then325, label %if.end.i909, !dbg !2913

if.end.i909:                                      ; preds = %if.then.i906
  %call3.i907 = call ptr @AcquireQuantumMemory(i64 noundef 1920, i64 noundef 192) #21, !dbg !2914
  store ptr %call3.i907, ptr %call.i904, align 8, !dbg !2915, !tbaa !2201
  %cmp6.i908 = icmp eq ptr %call3.i907, null, !dbg !2916
  br i1 %cmp6.i908, label %if.then325, label %if.end8.i912, !dbg !2917

if.end8.i912:                                     ; preds = %if.end.i909
  %115 = load ptr, ptr %node_queue.i910, align 8, !dbg !2918, !tbaa !2207
  %next.i911 = getelementptr inbounds %struct._Nodes, ptr %call.i904, i64 0, i32 1, !dbg !2919
  store ptr %115, ptr %next.i911, align 8, !dbg !2920, !tbaa !2210
  store ptr %call.i904, ptr %node_queue.i910, align 8, !dbg !2921, !tbaa !2207
  br label %if.end329

if.then325:                                       ; preds = %if.end.i909, %if.then.i906
  store ptr null, ptr %arrayidx314, align 8, !dbg !2922, !tbaa !2575
  %call328 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename.i958) #17, !dbg !2923
  br label %for.inc397, !dbg !2926

if.end329:                                        ; preds = %if.end8.i912, %entry.if.end12_crit_edge.i903
  %116 = phi ptr [ %call3.i907, %if.end8.i912 ], [ %.pre.i901, %entry.if.end12_crit_edge.i903 ], !dbg !2909
  %117 = phi i64 [ 1919, %if.end8.i912 ], [ %phi.bo.i902, %entry.if.end12_crit_edge.i903 ]
  %118 = load i64, ptr %nodes235, align 8, !dbg !2927, !tbaa !2217
  %inc.i914 = add i64 %118, 1, !dbg !2927
  store i64 %inc.i914, ptr %nodes235, align 8, !dbg !2927, !tbaa !2217
  store i64 %117, ptr %free_nodes.i898, align 8, !dbg !2928, !tbaa !2189
  %incdec.ptr.i916 = getelementptr inbounds %struct._NodeInfo, ptr %116, i64 1, !dbg !2909
  store ptr %incdec.ptr.i916, ptr %next_node15.phi.trans.insert.i900, align 8, !dbg !2909, !tbaa !2193
  call void @llvm.dbg.value(metadata ptr %116, metadata !2182, metadata !DIExpression()) #17, !dbg !2903
  %call16.i917 = call ptr @ResetMagickMemory(ptr noundef %116, i32 noundef 0, i64 noundef 192) #17, !dbg !2929
  store ptr %node_info.21082, ptr %116, align 8, !dbg !2930, !tbaa !2224
  %id18.i918 = getelementptr inbounds %struct._NodeInfo, ptr %116, i64 0, i32 6, !dbg !2931
  store i64 %id.0.i895, ptr %id18.i918, align 8, !dbg !2932, !tbaa !2608
  %level19.i919 = getelementptr inbounds %struct._NodeInfo, ptr %116, i64 0, i32 7, !dbg !2933
  store i64 %level.11089, ptr %level19.i919, align 8, !dbg !2934, !tbaa !2611
  store ptr %116, ptr %arrayidx314, align 8, !dbg !2922, !tbaa !2575
  %119 = load i64, ptr %depth240, align 8, !dbg !2935, !tbaa !2167
  %cmp331 = icmp eq i64 %level.11089, %119, !dbg !2937
  br i1 %cmp331, label %if.then333, label %if.end337, !dbg !2938

if.then333:                                       ; preds = %if.end329
  %120 = load i64, ptr %colors334, align 8, !dbg !2939, !tbaa !2616
  %inc335 = add i64 %120, 1, !dbg !2939
  store i64 %inc335, ptr %colors334, align 8, !dbg !2939, !tbaa !2616
  br label %if.end337, !dbg !2940

if.end337:                                        ; preds = %if.end329, %if.then333, %ColorToNodeId.exit897
  %121 = phi ptr [ %116, %if.end329 ], [ %116, %if.then333 ], [ %113, %ColorToNodeId.exit897 ], !dbg !2941
  call void @llvm.dbg.value(metadata ptr %121, metadata !2319, metadata !DIExpression()), !dbg !2339
  %sub342 = fsub float %pixel.sroa.0.1, %add282, !dbg !2942
  %conv343 = fpext float %sub342 to double, !dbg !2943
  %mul344 = fmul double %conv343, 0x3EF0001000100010, !dbg !2944
  %conv345 = fptrunc double %mul344 to float, !dbg !2945
  call void @llvm.dbg.value(metadata float %conv345, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  %sub349 = fsub float %pixel.sroa.12.1, %add292, !dbg !2946
  %conv350 = fpext float %sub349 to double, !dbg !2947
  %mul351 = fmul double %conv350, 0x3EF0001000100010, !dbg !2948
  %conv352 = fptrunc double %mul351 to float, !dbg !2949
  call void @llvm.dbg.value(metadata float %conv352, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  %sub356 = fsub float %pixel.sroa.22.1, %add302, !dbg !2950
  %conv357 = fpext float %sub356 to double, !dbg !2951
  %mul358 = fmul double %conv357, 0x3EF0001000100010, !dbg !2952
  %conv359 = fptrunc double %mul358 to float, !dbg !2953
  call void @llvm.dbg.value(metadata float %conv359, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  %122 = load i32, ptr %associate_alpha3.i, align 8, !dbg !2954, !tbaa !2359
  %cmp362.not = icmp eq i32 %122, 0, !dbg !2956
  br i1 %cmp362.not, label %if.end372, label %if.then364, !dbg !2957

if.then364:                                       ; preds = %if.end337
  %sub367 = fsub float %conv32.sink.i818, %add312, !dbg !2958
  %conv368 = fpext float %sub367 to double, !dbg !2959
  %mul369 = fmul double %conv368, 0x3EF0001000100010, !dbg !2960
  %conv370 = fptrunc double %mul369 to float, !dbg !2961
  call void @llvm.dbg.value(metadata float %conv370, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  br label %if.end372, !dbg !2962

if.end372:                                        ; preds = %if.then364, %if.end337
  %error.sroa.20.10 = phi float [ %conv370, %if.then364 ], [ %error.sroa.20.91076, %if.end337 ], !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.10, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %mul379 = fmul float %conv352, %conv352, !dbg !2963
  %123 = call float @llvm.fmuladd.f32(float %conv345, float %conv345, float %mul379), !dbg !2964
  %124 = call float @llvm.fmuladd.f32(float %conv359, float %conv359, float %123), !dbg !2965
  %125 = call float @llvm.fmuladd.f32(float %error.sroa.20.10, float %error.sroa.20.10, float %124), !dbg !2966
  %conv386 = fpext float %125 to double, !dbg !2967
  %call387 = call double @sqrt(double noundef %conv386) #17, !dbg !2968
  %quantize_error389 = getelementptr inbounds %struct._NodeInfo, ptr %121, i64 0, i32 4, !dbg !2969
  %126 = load float, ptr %quantize_error389, align 8, !dbg !2970, !tbaa !2648
  %conv390 = fpext float %126 to double, !dbg !2970
  %127 = call double @llvm.fmuladd.f64(double %conv373, double %call387, double %conv390), !dbg !2970
  %conv391 = fptrunc double %127 to float, !dbg !2970
  store float %conv391, ptr %quantize_error389, align 8, !dbg !2970, !tbaa !2648
  %128 = load ptr, ptr %cube_info, align 8, !dbg !2971, !tbaa !2213
  %quantize_error394 = getelementptr inbounds %struct._NodeInfo, ptr %128, i64 0, i32 4, !dbg !2972
  %129 = load float, ptr %quantize_error394, align 8, !dbg !2973, !tbaa !2648
  %add395 = fadd float %129, %conv391, !dbg !2973
  store float %add395, ptr %quantize_error394, align 8, !dbg !2973, !tbaa !2648
  %dec396 = add i32 %index.21085, -1, !dbg !2974
  call void @llvm.dbg.value(metadata i64 undef, metadata !2326, metadata !DIExpression()), !dbg !2339
  br label %for.inc397, !dbg !2975

for.inc397:                                       ; preds = %if.end372, %if.then325
  %error.sroa.20.11 = phi float [ %error.sroa.20.91076, %if.then325 ], [ %error.sroa.20.10, %if.end372 ], !dbg !2339
  %node_info.3 = phi ptr [ %node_info.21082, %if.then325 ], [ %121, %if.end372 ], !dbg !2976
  %index.3 = phi i32 [ %index.21085, %if.then325 ], [ %dec396, %if.end372 ], !dbg !2976
  call void @llvm.dbg.value(metadata i64 poison, metadata !2326, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr %node_info.3, metadata !2319, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %error.sroa.20.11, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %inc398 = add i64 %level.11089, 1, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %inc398, metadata !2327, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %conv271, metadata !2318, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata float %add282, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %add292, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %add302, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2339
  call void @llvm.dbg.value(metadata float %add312, metadata !2321, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %130 = load i64, ptr %depth240, align 8, !dbg !2818, !tbaa !2167
  %cmp266.not = icmp ugt i64 %inc398, %130, !dbg !2821
  br i1 %cmp266.not, label %if.end.i925, label %if.end.i.i823, !dbg !2822, !llvm.loop !2978

if.end.i925:                                      ; preds = %for.inc397, %AssociateAlphaPixel.exit820.if.end.i925_crit_edge
  %conv402.pre-phi = phi double [ %.pre1114, %AssociateAlphaPixel.exit820.if.end.i925_crit_edge ], [ %conv373, %for.inc397 ], !dbg !2823
  %error.sroa.20.9.lcssa = phi float [ %error.sroa.20.81096, %AssociateAlphaPixel.exit820.if.end.i925_crit_edge ], [ %error.sroa.20.11, %for.inc397 ], !dbg !2703
  %node_info.2.lcssa = phi ptr [ %102, %AssociateAlphaPixel.exit820.if.end.i925_crit_edge ], [ %node_info.3, %for.inc397 ], !dbg !2980
  %number_unique400 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.2.lcssa, i64 0, i32 2, !dbg !2981
  %131 = load i64, ptr %number_unique400, align 8, !dbg !2982, !tbaa !2661
  %add401 = add i64 %131, %count.1.lcssa, !dbg !2982
  store i64 %add401, ptr %number_unique400, align 8, !dbg !2982, !tbaa !2661
  %mul403 = fmul double %conv402.pre-phi, 0x3EF0001000100010, !dbg !2983
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.1, metadata !2489, metadata !DIExpression()), !dbg !2984
  %cmp1.i924 = fcmp ult float %pixel.sroa.0.1, 6.553500e+04, !dbg !2986
  br i1 %cmp1.i924, label %if.end3.i928, label %if.end.i933, !dbg !2988

if.end3.i928:                                     ; preds = %if.end.i925
  %add.i926 = fadd float %pixel.sroa.0.1, 5.000000e-01, !dbg !2989
  %conv.i927 = fptoui float %add.i926 to i16, !dbg !2990
  br label %if.end.i933, !dbg !2991

if.end.i933:                                      ; preds = %if.end3.i928, %if.end.i925
  %retval.0.i929 = phi i16 [ %conv.i927, %if.end3.i928 ], [ -1, %if.end.i925 ], !dbg !2984
  %conv407 = uitofp i16 %retval.0.i929 to double, !dbg !2992
  %total_color409 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.2.lcssa, i64 0, i32 3, !dbg !2993
  %132 = load float, ptr %total_color409, align 8, !dbg !2994, !tbaa !2670
  %conv411 = fpext float %132 to double, !dbg !2994
  %133 = call double @llvm.fmuladd.f64(double %mul403, double %conv407, double %conv411), !dbg !2994
  %conv412 = fptrunc double %133 to float, !dbg !2994
  store float %conv412, ptr %total_color409, align 8, !dbg !2994, !tbaa !2670
  call void @llvm.dbg.value(metadata float %pixel.sroa.12.1, metadata !2489, metadata !DIExpression()), !dbg !2995
  %cmp1.i932 = fcmp ult float %pixel.sroa.12.1, 6.553500e+04, !dbg !2997
  br i1 %cmp1.i932, label %if.end3.i936, label %if.end.i941, !dbg !2998

if.end3.i936:                                     ; preds = %if.end.i933
  %add.i934 = fadd float %pixel.sroa.12.1, 5.000000e-01, !dbg !2999
  %conv.i935 = fptoui float %add.i934 to i16, !dbg !3000
  br label %if.end.i941, !dbg !3001

if.end.i941:                                      ; preds = %if.end3.i936, %if.end.i933
  %retval.0.i937 = phi i16 [ %conv.i935, %if.end3.i936 ], [ -1, %if.end.i933 ], !dbg !2995
  %conv418 = uitofp i16 %retval.0.i937 to double, !dbg !3002
  %green421 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.2.lcssa, i64 0, i32 3, i32 1, !dbg !3003
  %134 = load float, ptr %green421, align 4, !dbg !3004, !tbaa !2678
  %conv422 = fpext float %134 to double, !dbg !3004
  %135 = call double @llvm.fmuladd.f64(double %mul403, double %conv418, double %conv422), !dbg !3004
  %conv423 = fptrunc double %135 to float, !dbg !3004
  store float %conv423, ptr %green421, align 4, !dbg !3004, !tbaa !2678
  call void @llvm.dbg.value(metadata float %pixel.sroa.22.1, metadata !2489, metadata !DIExpression()), !dbg !3005
  %cmp1.i940 = fcmp ult float %pixel.sroa.22.1, 6.553500e+04, !dbg !3007
  br i1 %cmp1.i940, label %if.end3.i944, label %ClampPixel.exit946, !dbg !3008

if.end3.i944:                                     ; preds = %if.end.i941
  %add.i942 = fadd float %pixel.sroa.22.1, 5.000000e-01, !dbg !3009
  %conv.i943 = fptoui float %add.i942 to i16, !dbg !3010
  br label %ClampPixel.exit946, !dbg !3011

ClampPixel.exit946:                               ; preds = %if.end.i941, %if.end3.i944
  %retval.0.i945 = phi i16 [ %conv.i943, %if.end3.i944 ], [ -1, %if.end.i941 ], !dbg !3005
  %conv429 = uitofp i16 %retval.0.i945 to double, !dbg !3012
  %blue432 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.2.lcssa, i64 0, i32 3, i32 2, !dbg !3013
  %136 = load float, ptr %blue432, align 8, !dbg !3014, !tbaa !2686
  %conv433 = fpext float %136 to double, !dbg !3014
  %137 = call double @llvm.fmuladd.f64(double %mul403, double %conv429, double %conv433), !dbg !3014
  %conv434 = fptrunc double %137 to float, !dbg !3014
  store float %conv434, ptr %blue432, align 8, !dbg !3014, !tbaa !2686
  %138 = load i32, ptr %associate_alpha3.i, align 8, !dbg !3015, !tbaa !2359
  %cmp436.not = icmp eq i32 %138, 0, !dbg !3017
  br i1 %cmp436.not, label %if.end450, label %if.end.i949, !dbg !3018

if.end.i949:                                      ; preds = %ClampPixel.exit946
  call void @llvm.dbg.value(metadata float %conv32.sink.i818, metadata !2489, metadata !DIExpression()), !dbg !3019
  %cmp1.i948 = fcmp ult float %conv32.sink.i818, 6.553500e+04, !dbg !3021
  br i1 %cmp1.i948, label %if.end3.i952, label %ClampPixel.exit954, !dbg !3022

if.end3.i952:                                     ; preds = %if.end.i949
  %add.i950 = fadd float %conv32.sink.i818, 5.000000e-01, !dbg !3023
  %conv.i951 = fptoui float %add.i950 to i16, !dbg !3024
  br label %ClampPixel.exit954, !dbg !3025

ClampPixel.exit954:                               ; preds = %if.end.i949, %if.end3.i952
  %retval.0.i953 = phi i16 [ %conv.i951, %if.end3.i952 ], [ -1, %if.end.i949 ], !dbg !3019
  %conv444 = uitofp i16 %retval.0.i953 to double, !dbg !3026
  %opacity447 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.2.lcssa, i64 0, i32 3, i32 3, !dbg !3027
  %139 = load float, ptr %opacity447, align 4, !dbg !3028, !tbaa !2698
  %conv448 = fpext float %139 to double, !dbg !3028
  %140 = call double @llvm.fmuladd.f64(double %mul403, double %conv444, double %conv448), !dbg !3028
  %conv449 = fptrunc double %140 to float, !dbg !3028
  store float %conv449, ptr %opacity447, align 4, !dbg !3028, !tbaa !2698
  br label %if.end450, !dbg !3029

if.end450:                                        ; preds = %ClampPixel.exit954, %ClampPixel.exit946
  %add.ptr451 = getelementptr inbounds %struct._PixelPacket, ptr %p227.01097, i64 %count.1.lcssa, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %add249.lcssa, metadata !2338, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %add.ptr451, metadata !2334, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata float %error.sroa.20.9.lcssa, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %141 = load i64, ptr %columns229, align 8, !dbg !2753, !tbaa !1292
  %cmp245 = icmp slt i64 %add249.lcssa, %141, !dbg !2756
  br i1 %cmp245, label %for.cond248.preheader, label %for.end454, !dbg !2757, !llvm.loop !3031

for.end454:                                       ; preds = %if.end450, %if.end242
  %error.sroa.20.8.lcssa = phi float [ %error.sroa.20.71104, %if.end242 ], [ %error.sroa.20.9.lcssa, %if.end450 ], !dbg !2703
  %142 = load i64, ptr %rows, align 8, !dbg !3033, !tbaa !1294
  call void @llvm.dbg.value(metadata ptr %image, metadata !1386, metadata !DIExpression()) #17, !dbg !3034
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !1392, metadata !DIExpression()) #17, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %y.11105, metadata !1393, metadata !DIExpression()) #17, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %142, metadata !1394, metadata !DIExpression()) #17, !dbg !3034
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i955) #17, !dbg !3035
  call void @llvm.dbg.declare(metadata ptr %message.i955, metadata !1395, metadata !DIExpression()) #17, !dbg !3036
  %143 = load ptr, ptr %progress_monitor.i956, align 8, !dbg !3037, !tbaa !1402
  %cmp.i957 = icmp eq ptr %143, null, !dbg !3038
  br i1 %cmp.i957, label %SetImageProgress.exit964.thread, label %SetImageProgress.exit964, !dbg !3039

SetImageProgress.exit964.thread:                  ; preds = %for.end454
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i955) #17, !dbg !3040
  call void @llvm.dbg.value(metadata i32 %call4.i961, metadata !2317, metadata !DIExpression()), !dbg !2339
  br label %cleanup461, !dbg !3041

SetImageProgress.exit964:                         ; preds = %for.end454
  %call.i959 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i955, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename.i958) #17, !dbg !3042
  %144 = load ptr, ptr %progress_monitor.i956, align 8, !dbg !3043, !tbaa !1402
  %145 = load ptr, ptr %client_data.i960, align 8, !dbg !3044, !tbaa !1410
  %call4.i961 = call i32 %144(ptr noundef nonnull %message.i955, i64 noundef %y.11105, i64 noundef %142, ptr noundef %145) #17, !dbg !3045
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i955) #17, !dbg !3040
  call void @llvm.dbg.value(metadata i32 %call4.i961, metadata !2317, metadata !DIExpression()), !dbg !2339
  %cmp457 = icmp eq i32 %call4.i961, 0, !dbg !3046
  br i1 %cmp457, label %for.end467, label %SetImageProgress.exit964.cleanup461_crit_edge, !dbg !3041

SetImageProgress.exit964.cleanup461_crit_edge:    ; preds = %SetImageProgress.exit964
  %.pre1113 = load i64, ptr %rows, align 8, !dbg !2736, !tbaa !1294
  br label %cleanup461, !dbg !3041

cleanup461:                                       ; preds = %SetImageProgress.exit964.cleanup461_crit_edge, %SetImageProgress.exit964.thread
  %146 = phi i64 [ %.pre1113, %SetImageProgress.exit964.cleanup461_crit_edge ], [ %142, %SetImageProgress.exit964.thread ], !dbg !2736
  call void @llvm.dbg.value(metadata float %error.sroa.20.8.lcssa, metadata !2320, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2339
  %y.1 = add nuw nsw i64 %y.11105, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %y.1, metadata !2328, metadata !DIExpression()), !dbg !2339
  %cmp224 = icmp slt i64 %y.1, %146, !dbg !2737
  br i1 %cmp224, label %for.body226, label %for.end467, !dbg !2738

for.end467:                                       ; preds = %cleanup461, %for.body226, %SetImageProgress.exit964, %for.end220
  %y.1.lcssa = phi i64 [ %y.11102, %for.end220 ], [ %y.11105, %SetImageProgress.exit964 ], [ %y.11105, %for.body226 ], [ %y.1, %cleanup461 ], !dbg !2735
  %call468 = call ptr @DestroyCacheView(ptr noundef %call13) #17, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %call468, metadata !2316, metadata !DIExpression()), !dbg !2339
  %147 = load ptr, ptr %quantize_info.i, align 8, !dbg !3049, !tbaa !2229
  %colorspace470 = getelementptr inbounds %struct._QuantizeInfo, ptr %147, i64 0, i32 3, !dbg !3051
  %148 = load i32, ptr %colorspace470, align 4, !dbg !3051, !tbaa !1061
  switch i32 %148, label %if.then478 [
    i32 0, label %if.end480
    i32 12, label %if.end480
  ], !dbg !3052

if.then478:                                       ; preds = %for.end467
  %call479 = call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #17, !dbg !3053
  br label %if.end480, !dbg !3054

if.end480:                                        ; preds = %for.end467, %for.end467, %if.then478
  %149 = load i64, ptr %rows, align 8, !dbg !3055, !tbaa !1294
  %cmp482 = icmp sge i64 %y.1.lcssa, %149, !dbg !3056
  %cond484 = zext i1 %cmp482 to i32, !dbg !3057
  ret i32 %cond484, !dbg !3058
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ReduceImageColors(ptr noundef %image, ptr nocapture noundef %cube_info) unnamed_addr #0 !dbg !3059 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !3061, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !3062, metadata !DIExpression()), !dbg !3069
  %next_threshold = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 8, !dbg !3070
  store float 0.000000e+00, ptr %next_threshold, align 8, !dbg !3071, !tbaa !3072
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 1, !dbg !3073
  %0 = load i64, ptr %colors, align 8, !dbg !3073, !tbaa !2616
  %maximum_colors = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 2, !dbg !3074
  %1 = load i64, ptr %maximum_colors, align 8, !dbg !3074, !tbaa !2173
  %cmp = icmp ugt i64 %0, %1, !dbg !3075
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !3076

land.lhs.true:                                    ; preds = %entry
  %nodes = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 9, !dbg !3077
  %2 = load i64, ptr %nodes, align 8, !dbg !3077, !tbaa !2217
  %cmp1 = icmp ugt i64 %2, 128, !dbg !3078
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !3079

if.then:                                          ; preds = %land.lhs.true
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 4) #21, !dbg !3080
  call void @llvm.dbg.value(metadata ptr %call, metadata !3066, metadata !DIExpression()), !dbg !3081
  %cmp3.not = icmp eq ptr %call, null, !dbg !3082
  br i1 %cmp3.not, label %if.end12, label %if.then4, !dbg !3084

if.then4:                                         ; preds = %if.then
  %3 = load ptr, ptr %cube_info, align 8, !dbg !3085, !tbaa !2213
  %4 = tail call fastcc i64 @QuantizeErrorFlatten(ptr noundef nonnull %cube_info, ptr noundef %3, i64 noundef 0, ptr noundef nonnull %call), !dbg !3087
  %5 = load i64, ptr %nodes, align 8, !dbg !3088, !tbaa !2217
  tail call void @qsort(ptr noundef nonnull %call, i64 noundef %5, i64 noundef 4, ptr noundef nonnull @MagickRealTypeCompare) #17, !dbg !3089
  %6 = load i64, ptr %nodes, align 8, !dbg !3090, !tbaa !2217
  %7 = load i64, ptr %maximum_colors, align 8, !dbg !3091, !tbaa !2173
  %8 = mul i64 %7, 110, !dbg !3092
  %mul = add i64 %8, 110, !dbg !3092
  %div = udiv i64 %mul, 100, !dbg !3093
  %sub = sub i64 %6, %div, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %sub, metadata !3095, metadata !DIExpression()) #17, !dbg !3099
  call void @llvm.dbg.value(metadata i64 0, metadata !3098, metadata !DIExpression()) #17, !dbg !3099
  %9 = tail call i64 @llvm.smax.i64(i64 %sub, i64 0) #17, !dbg !3099
  %arrayidx = getelementptr inbounds float, ptr %call, i64 %9, !dbg !3101
  %10 = load float, ptr %arrayidx, align 4, !dbg !3101, !tbaa !2277
  store float %10, ptr %next_threshold, align 8, !dbg !3102, !tbaa !3072
  %call11 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #17, !dbg !3103
  call void @llvm.dbg.value(metadata ptr %call11, metadata !3066, metadata !DIExpression()), !dbg !3081
  br label %if.end12, !dbg !3104

if.end12:                                         ; preds = %if.then, %if.then4, %land.lhs.true, %entry
  %11 = load i64, ptr %colors, align 8, !dbg !3105, !tbaa !2616
  call void @llvm.dbg.value(metadata i64 %11, metadata !3065, metadata !DIExpression()), !dbg !3069
  %pruning_threshold = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 7
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %sub27 = add i64 %11, 1
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  %12 = load i64, ptr %maximum_colors, align 8, !dbg !3107, !tbaa !2173
  %cmp1664 = icmp ugt i64 %11, %12, !dbg !3109
  br i1 %cmp1664, label %for.body, label %for.end, !dbg !3110

for.body:                                         ; preds = %if.end12, %SetImageProgress.exit.for.cond_crit_edge
  %13 = load float, ptr %next_threshold, align 8, !dbg !3111, !tbaa !3072
  store float %13, ptr %pruning_threshold, align 4, !dbg !3113, !tbaa !3114
  %14 = load ptr, ptr %cube_info, align 8, !dbg !3115, !tbaa !2213
  %quantize_error19 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 4, !dbg !3116
  %15 = load float, ptr %quantize_error19, align 8, !dbg !3116, !tbaa !2648
  %sub20 = fadd float %15, -1.000000e+00, !dbg !3117
  store float %sub20, ptr %next_threshold, align 8, !dbg !3118, !tbaa !3072
  store i64 0, ptr %colors, align 8, !dbg !3119, !tbaa !2616
  call fastcc void @Reduce(ptr noundef nonnull %cube_info, ptr noundef %14), !dbg !3120
  %16 = load i64, ptr %colors, align 8, !dbg !3121, !tbaa !2616
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i64 %16), metadata !3064, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3069
  %17 = load i64, ptr %maximum_colors, align 8, !dbg !3122, !tbaa !2173
  call void @llvm.dbg.value(metadata ptr %image, metadata !1386, metadata !DIExpression()) #17, !dbg !3123
  call void @llvm.dbg.value(metadata ptr @.str.12, metadata !1392, metadata !DIExpression()) #17, !dbg !3123
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i64 %16), metadata !1393, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #17, !dbg !3123
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i64 %17), metadata !1394, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !3123
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !3125
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1395, metadata !DIExpression()) #17, !dbg !3126
  %18 = load ptr, ptr %progress_monitor.i, align 8, !dbg !3127, !tbaa !1402
  %cmp.i = icmp eq ptr %18, null, !dbg !3128
  br i1 %cmp.i, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !3129

SetImageProgress.exit.thread:                     ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !3063, metadata !DIExpression()), !dbg !3069
  br label %SetImageProgress.exit.for.cond_crit_edge, !dbg !3131

SetImageProgress.exit:                            ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1394, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !3123
  %add28 = sub i64 %sub27, %17, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %add28, metadata !1394, metadata !DIExpression()) #17, !dbg !3123
  %sub25 = sub i64 %11, %16, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %sub25, metadata !3064, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %sub25, metadata !1393, metadata !DIExpression()) #17, !dbg !3123
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef nonnull %filename.i) #17, !dbg !3134
  %19 = load ptr, ptr %progress_monitor.i, align 8, !dbg !3135, !tbaa !1402
  %20 = load ptr, ptr %client_data.i, align 8, !dbg !3136, !tbaa !1410
  %call4.i = call i32 %19(ptr noundef nonnull %message.i, i64 noundef %sub25, i64 noundef %add28, ptr noundef %20) #17, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !3063, metadata !DIExpression()), !dbg !3069
  %cmp30 = icmp eq i32 %call4.i, 0, !dbg !3138
  br i1 %cmp30, label %for.end, label %SetImageProgress.exit.for.cond_crit_edge, !dbg !3131, !llvm.loop !3140

SetImageProgress.exit.for.cond_crit_edge:         ; preds = %SetImageProgress.exit.thread, %SetImageProgress.exit
  %.pre = load i64, ptr %colors, align 8, !dbg !3142, !tbaa !2616
  %21 = load i64, ptr %maximum_colors, align 8, !dbg !3107, !tbaa !2173
  %cmp16 = icmp ugt i64 %.pre, %21, !dbg !3109
  br i1 %cmp16, label %for.body, label %for.end, !dbg !3110

for.end:                                          ; preds = %SetImageProgress.exit.for.cond_crit_edge, %SetImageProgress.exit, %if.end12
  ret void, !dbg !3143
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @AssignImageColors(ptr noundef %image, ptr noundef %cube_info) unnamed_addr #0 !dbg !3144 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %message.i.i.i = alloca [4096 x i8], align 16
  %cube.i.i = alloca %struct._CubeInfo, align 8
  %cube = alloca %struct._CubeInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3148, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !3149, metadata !DIExpression()), !dbg !3182
  %quantize_info = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 18, !dbg !3183
  %0 = load ptr, ptr %quantize_info, align 8, !dbg !3183, !tbaa !2229
  %colorspace = getelementptr inbounds %struct._QuantizeInfo, ptr %0, i64 0, i32 3, !dbg !3185
  %1 = load i32, ptr %colorspace, align 4, !dbg !3185, !tbaa !1061
  switch i32 %1, label %if.then [
    i32 0, label %if.else
    i32 12, label %if.else
  ], !dbg !3186

if.then:                                          ; preds = %entry
  %call = tail call i32 @TransformImageColorspace(ptr noundef %image, i32 noundef %1) #17, !dbg !3187
  br label %if.end11, !dbg !3188

if.else:                                          ; preds = %entry, %entry
  %colorspace6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !3189
  %2 = load i32, ptr %colorspace6, align 4, !dbg !3189, !tbaa !2069
  call void @llvm.dbg.value(metadata i32 %2, metadata !2364, metadata !DIExpression()), !dbg !3191
  switch i32 %2, label %if.then9 [
    i32 29, label %if.end11
    i32 13, label %if.end11
    i32 3, label %if.end11
    i32 1, label %if.end11
    i32 19, label %if.end11
    i32 17, label %if.end11
    i32 2, label %if.end11
  ], !dbg !3193

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #17, !dbg !3194
  br label %if.end11, !dbg !3195

if.end11:                                         ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.then9, %if.then
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 1, !dbg !3196
  %3 = load i64, ptr %colors, align 8, !dbg !3196, !tbaa !2616
  %call12 = tail call i32 @AcquireImageColormap(ptr noundef %image, i64 noundef %3) #17, !dbg !3198
  %cmp13 = icmp eq i32 %call12, 0, !dbg !3199
  br i1 %cmp13, label %if.then14, label %if.end19, !dbg !3200

if.then14:                                        ; preds = %if.end11
  %cmp15.not = icmp eq ptr %image, null, !dbg !3201
  br i1 %cmp15.not, label %cleanup179, label %if.then16, !dbg !3204

if.then16:                                        ; preds = %if.then14
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3201
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3201
  %call17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 517, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #17, !dbg !3201
  br label %cleanup179, !dbg !3201

if.end19:                                         ; preds = %if.end11
  %colors20 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !3205
  store i64 0, ptr %colors20, align 8, !dbg !3206, !tbaa !1243
  %transparent_pixels = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 4, !dbg !3207
  store i64 0, ptr %transparent_pixels, align 8, !dbg !3208, !tbaa !3209
  %transparent_index = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 3, !dbg !3210
  store i64 -1, ptr %transparent_index, align 8, !dbg !3211, !tbaa !3212
  %4 = load ptr, ptr %cube_info, align 8, !dbg !3213, !tbaa !2213
  tail call fastcc void @DefineImageColormap(ptr noundef %image, ptr noundef nonnull %cube_info, ptr noundef %4), !dbg !3214
  %5 = load ptr, ptr %quantize_info, align 8, !dbg !3215, !tbaa !2229
  %dither = getelementptr inbounds %struct._QuantizeInfo, ptr %5, i64 0, i32 2, !dbg !3216
  %6 = load i32, ptr %dither, align 8, !dbg !3216, !tbaa !1055
  %cmp23.not = icmp eq i32 %6, 0, !dbg !3217
  br i1 %cmp23.not, label %if.else29, label %land.lhs.true24, !dbg !3218

land.lhs.true24:                                  ; preds = %if.end19
  %dither_method = getelementptr inbounds %struct._QuantizeInfo, ptr %5, i64 0, i32 6, !dbg !3219
  %7 = load i32, ptr %dither_method, align 8, !dbg !3219, !tbaa !1058
  switch i32 %7, label %if.then.i [
    i32 1, label %if.else29
    i32 2, label %if.end.i
  ], !dbg !3220

if.then.i:                                        ; preds = %land.lhs.true24
  call void @llvm.dbg.value(metadata ptr %image, metadata !3221, metadata !DIExpression()) #17, !dbg !3256
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !3224, metadata !DIExpression()) #17, !dbg !3256
  %columns.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3268
  %8 = load i64, ptr %columns.i.i, align 8, !dbg !3268, !tbaa !1292
  call void @llvm.dbg.value(metadata i64 %8, metadata !3269, metadata !DIExpression()) #17, !dbg !3277
  %call.i.i.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %call.i.i.i, metadata !3276, metadata !DIExpression()) #17, !dbg !3277
  %call1.i.i.i = tail call ptr @AcquireQuantumMemory(i64 noundef %call.i.i.i, i64 noundef 8) #21, !dbg !3280
  call void @llvm.dbg.value(metadata ptr %call1.i.i.i, metadata !3274, metadata !DIExpression()) #17, !dbg !3277
  %cmp.i.i.i = icmp eq ptr %call1.i.i.i, null, !dbg !3281
  br i1 %cmp.i.i.i, label %if.end128, label %if.end.i.i.i, !dbg !3283

if.end.i.i.i:                                     ; preds = %if.then.i
  %mul.i.i.i = shl i64 %call.i.i.i, 3, !dbg !3284
  %call2.i.i.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1.i.i.i, i32 noundef 0, i64 noundef %mul.i.i.i) #17, !dbg !3285
  call void @llvm.dbg.value(metadata i64 0, metadata !3275, metadata !DIExpression()) #17, !dbg !3277
  %cmp322.i.i.i = icmp sgt i64 %call.i.i.i, 0, !dbg !3286
  br i1 %cmp322.i.i.i, label %for.body.i.i.i, label %if.end.i.i, !dbg !3289

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i64 %i.023.i.i.i, 1, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %i.023.i.i.i, metadata !3275, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !3277
  %exitcond.not.i.i.i = icmp eq i64 %inc.i.i.i, %call.i.i.i, !dbg !3286
  br i1 %exitcond.not.i.i.i, label %if.end.i.i, label %for.body.i.i.i, !dbg !3289, !llvm.loop !3291

for.body.i.i.i:                                   ; preds = %if.end.i.i.i, %for.cond.i.i.i
  %i.023.i.i.i = phi i64 [ %inc.i.i.i, %for.cond.i.i.i ], [ 0, %if.end.i.i.i ]
  call void @llvm.dbg.value(metadata i64 %i.023.i.i.i, metadata !3275, metadata !DIExpression()) #17, !dbg !3277
  %call4.i.i.i = tail call ptr @AcquireQuantumMemory(i64 noundef %8, i64 noundef 32) #21, !dbg !3293
  %arrayidx.i.i.i = getelementptr inbounds ptr, ptr %call1.i.i.i, i64 %i.023.i.i.i, !dbg !3295
  store ptr %call4.i.i.i, ptr %arrayidx.i.i.i, align 8, !dbg !3296, !tbaa !2575
  %cmp6.i.i.i = icmp eq ptr %call4.i.i.i, null, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %i.023.i.i.i, metadata !3275, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !3277
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %for.cond.i.i.i, !dbg !3299

if.then7.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @llvm.dbg.value(metadata ptr %call1.i.i.i, metadata !3300, metadata !DIExpression()) #17, !dbg !3306
  call void @llvm.dbg.value(metadata i64 0, metadata !3305, metadata !DIExpression()) #17, !dbg !3306
  %call14.i.i.i.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17, !dbg !3308
  %cmp15.i.i.i.i = icmp sgt i64 %call14.i.i.i.i, 0, !dbg !3311
  br i1 %cmp15.i.i.i.i, label %for.body.i.i.i.i, label %AcquirePixelThreadSet.exit.i.i, !dbg !3312

for.body.i.i.i.i:                                 ; preds = %if.then7.i.i.i, %for.inc.i.i.i.i
  %i.016.i.i.i.i = phi i64 [ %inc.i.i.i.i, %for.inc.i.i.i.i ], [ 0, %if.then7.i.i.i ]
  call void @llvm.dbg.value(metadata i64 %i.016.i.i.i.i, metadata !3305, metadata !DIExpression()) #17, !dbg !3306
  %arrayidx.i.i.i.i = getelementptr inbounds ptr, ptr %call1.i.i.i, i64 %i.016.i.i.i.i, !dbg !3313
  %9 = load ptr, ptr %arrayidx.i.i.i.i, align 8, !dbg !3313, !tbaa !2575
  %cmp1.not.i.i.i.i = icmp eq ptr %9, null, !dbg !3315
  br i1 %cmp1.not.i.i.i.i, label %for.inc.i.i.i.i, label %if.then.i.i.i.i, !dbg !3316

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %call3.i.i.i.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #17, !dbg !3317
  store ptr %call3.i.i.i.i, ptr %arrayidx.i.i.i.i, align 8, !dbg !3318, !tbaa !2575
  br label %for.inc.i.i.i.i, !dbg !3319

for.inc.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i64 %i.016.i.i.i.i, 1, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %inc.i.i.i.i, metadata !3305, metadata !DIExpression()) #17, !dbg !3306
  %call.i.i.i.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #17, !dbg !3308
  %cmp.i.i.i.i = icmp slt i64 %inc.i.i.i.i, %call.i.i.i.i, !dbg !3311
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i, label %AcquirePixelThreadSet.exit.i.i, !dbg !3312, !llvm.loop !3321

AcquirePixelThreadSet.exit.i.i:                   ; preds = %for.inc.i.i.i.i, %if.then7.i.i.i
  %call5.i.i.i.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1.i.i.i) #17, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %call5.i.i.i.i, metadata !3300, metadata !DIExpression()) #17, !dbg !3306
  call void @llvm.dbg.value(metadata ptr %call5.i.i.i.i, metadata !3228, metadata !DIExpression()) #17, !dbg !3256
  %cmp.i.i = icmp eq ptr %call5.i.i.i.i, null, !dbg !3324
  br i1 %cmp.i.i, label %if.end128, label %if.end.i.i, !dbg !3326

if.end.i.i:                                       ; preds = %for.cond.i.i.i, %AcquirePixelThreadSet.exit.i.i, %if.end.i.i.i
  %retval.0.i563.i.i = phi ptr [ %call5.i.i.i.i, %AcquirePixelThreadSet.exit.i.i ], [ %call1.i.i.i, %if.end.i.i.i ], [ %call1.i.i.i, %for.cond.i.i.i ]
  %exception1.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3327
  call void @llvm.dbg.value(metadata ptr %exception1.i.i, metadata !3226, metadata !DIExpression()) #17, !dbg !3256
  call void @llvm.dbg.value(metadata i32 1, metadata !3227, metadata !DIExpression()) #17, !dbg !3256
  %call2.i.i = tail call ptr @AcquireAuthenticCacheView(ptr noundef %image, ptr noundef nonnull %exception1.i.i) #17, !dbg !3328
  call void @llvm.dbg.value(metadata ptr %call2.i.i, metadata !3225, metadata !DIExpression()) #17, !dbg !3256
  call void @llvm.dbg.value(metadata i64 0, metadata !3229, metadata !DIExpression()) #17, !dbg !3256
  %rows.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %10 = load i64, ptr %rows.i.i, align 8, !dbg !3329, !tbaa !1294
  %cmp3574.i.i = icmp sgt i64 %10, 0, !dbg !3330
  br i1 %cmp3574.i.i, label %for.body.lr.ph.i.i, label %for.end306.i.i, !dbg !3331

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %11 = getelementptr inbounds i8, ptr %cube.i.i, i64 456
  %associate_alpha.i.i = getelementptr inbounds %struct._CubeInfo, ptr %cube.i.i, i64 0, i32 19
  %cache.i.i = getelementptr inbounds %struct._CubeInfo, ptr %cube.i.i, i64 0, i32 15
  %target.i.i = getelementptr inbounds %struct._CubeInfo, ptr %cube.i.i, i64 0, i32 5
  %pixel.sroa.18.0.target.sroa_idx.i.i = getelementptr inbounds i8, ptr %target.i.i, i64 4
  %pixel.sroa.33.0.target.sroa_idx.i.i = getelementptr inbounds i8, ptr %target.i.i, i64 8
  %pixel.sroa.48.0.target.sroa_idx.i.i = getelementptr inbounds i8, ptr %target.i.i, i64 12
  %distance.i.i = getelementptr inbounds %struct._CubeInfo, ptr %cube.i.i, i64 0, i32 6
  %color_number.i.i = getelementptr inbounds %struct._CubeInfo, ptr %cube.i.i, i64 0, i32 11
  %quantize_info.i.i = getelementptr inbounds %struct._CubeInfo, ptr %cube.i.i, i64 0, i32 18
  %colormap.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %progress_monitor.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body.i.i, !dbg !3331

for.body.i.i:                                     ; preds = %cleanup.i.i, %for.body.lr.ph.i.i
  %status.0578.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %status.5.i.i, %cleanup.i.i ]
  %y.0575.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %inc305.i.i, %cleanup.i.i ]
  call void @llvm.dbg.value(metadata i32 %status.0578.i.i, metadata !3227, metadata !DIExpression()) #17, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %y.0575.i.i, metadata !3229, metadata !DIExpression()) #17, !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3230, metadata !DIExpression()) #17, !dbg !3332
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %cube.i.i) #17, !dbg !3333
  call void @llvm.dbg.declare(metadata ptr %cube.i.i, metadata !3234, metadata !DIExpression()) #17, !dbg !3334
  %cmp5.i.i = icmp eq i32 %status.0578.i.i, 0, !dbg !3335
  br i1 %cmp5.i.i, label %cleanup.i.i, label %if.end7.i.i, !dbg !3337

if.end7.i.i:                                      ; preds = %for.body.i.i
  %12 = load i64, ptr %columns.i.i, align 8, !dbg !3338, !tbaa !1292
  %call9.i.i = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call2.i.i, i64 noundef 0, i64 noundef %y.0575.i.i, i64 noundef %12, i64 noundef 1, ptr noundef nonnull %exception1.i.i) #20, !dbg !3339
  call void @llvm.dbg.value(metadata ptr %call9.i.i, metadata !3238, metadata !DIExpression()) #17, !dbg !3332
  %cmp10.i.i = icmp eq ptr %call9.i.i, null, !dbg !3340
  br i1 %cmp10.i.i, label %cleanup.i.i, label %if.end12.i.i, !dbg !3342

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %call13.i.i = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call2.i.i) #17, !dbg !3343
  call void @llvm.dbg.value(metadata ptr %call13.i.i, metadata !3237, metadata !DIExpression()) #17, !dbg !3332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %cube.i.i, ptr noundef nonnull align 8 dereferenceable(504) %cube_info, i64 504, i1 false) #17, !dbg !3344, !tbaa.struct !3345
  %13 = load ptr, ptr %retval.0.i563.i.i, align 8, !dbg !3348, !tbaa !2575
  %and.i.i = and i64 %y.0575.i.i, 1, !dbg !3349
  %14 = load i64, ptr %columns.i.i, align 8, !dbg !3350, !tbaa !1292
  %mul.i.i = mul nuw nsw i64 %14, %and.i.i, !dbg !3351
  %add.ptr.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %13, i64 %mul.i.i, !dbg !3352
  call void @llvm.dbg.value(metadata ptr %add.ptr.i.i, metadata !3235, metadata !DIExpression()) #17, !dbg !3332
  %and17.i.i = xor i64 %and.i.i, 1, !dbg !3353
  %mul19.i.i = mul nuw i64 %14, %and17.i.i, !dbg !3354
  %add.ptr20.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %13, i64 %mul19.i.i, !dbg !3355
  call void @llvm.dbg.value(metadata ptr %add.ptr20.i.i, metadata !3236, metadata !DIExpression()) #17, !dbg !3332
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0, !dbg !3356
  %conv.i.i = select i1 %tobool.not.i.i, i64 1, i64 -1, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %conv.i.i, metadata !3241, metadata !DIExpression()) #17, !dbg !3332
  call void @llvm.dbg.value(metadata i64 0, metadata !3239, metadata !DIExpression()) #17, !dbg !3332
  call void @llvm.dbg.value(metadata i32 1, metadata !3227, metadata !DIExpression()) #17, !dbg !3256
  %cmp24569.i.i = icmp sgt i64 %14, 0, !dbg !3358
  br i1 %cmp24569.i.i, label %for.body26.lr.ph.i.i, label %cleanup.i.i, !dbg !3359

for.body26.lr.ph.i.i:                             ; preds = %if.end12.i.i
  %cmp64.not.i.i = icmp eq i64 %y.0575.i.i, 0
  %cmp217.not.i.i = icmp eq ptr %call13.i.i, null
  br label %for.body26.i.i, !dbg !3359

for.body26.i.i:                                   ; preds = %if.end293.i.i, %for.body26.lr.ph.i.i
  %15 = phi i64 [ %14, %for.body26.lr.ph.i.i ], [ %81, %if.end293.i.i ]
  %status.1573.i.i = phi i32 [ 1, %for.body26.lr.ph.i.i ], [ %status.4.i.i, %if.end293.i.i ]
  %x.0570.i.i = phi i64 [ 0, %for.body26.lr.ph.i.i ], [ %inc.i.i, %if.end293.i.i ]
  call void @llvm.dbg.value(metadata i32 %status.1573.i.i, metadata !3227, metadata !DIExpression()) #17, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %x.0570.i.i, metadata !3239, metadata !DIExpression()) #17, !dbg !3332
  br i1 %tobool.not.i.i, label %cond.end.i.i, label %cond.true.i.i, !dbg !3360

cond.true.i.i:                                    ; preds = %for.body26.i.i
  %16 = xor i64 %x.0570.i.i, -1, !dbg !3361
  %sub30.i.i = add i64 %15, %16, !dbg !3361
  br label %cond.end.i.i, !dbg !3360

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.body26.i.i
  %cond31.i.i = phi i64 [ %sub30.i.i, %cond.true.i.i ], [ %x.0570.i.i, %for.body26.i.i ], !dbg !3360
  call void @llvm.dbg.value(metadata i64 %cond31.i.i, metadata !3248, metadata !DIExpression()) #17, !dbg !3362
  %add.ptr32.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call9.i.i, i64 %cond31.i.i, !dbg !3363
  %cube.val431.i.i = load i32, ptr %11, align 8, !dbg !3364, !tbaa !2359
  call void @llvm.dbg.value(metadata ptr undef, metadata !2439, metadata !DIExpression()) #17, !dbg !3365
  call void @llvm.dbg.value(metadata ptr %add.ptr32.i.i, metadata !2440, metadata !DIExpression()) #17, !dbg !3365
  call void @llvm.dbg.value(metadata ptr undef, metadata !2441, metadata !DIExpression()) #17, !dbg !3365
  %cmp.i432.i.i = icmp eq i32 %cube.val431.i.i, 0, !dbg !3367
  %opacity9.phi.trans.insert.i.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call9.i.i, i64 %cond31.i.i, i32 3
  %.pre.i.i.i = load i16, ptr %opacity9.phi.trans.insert.i.i.i, align 2, !dbg !3368, !tbaa !1367
  br i1 %cmp.i432.i.i, label %entry.if.then_crit_edge.i.i.i, label %lor.lhs.false.i.i.i, !dbg !3369

entry.if.then_crit_edge.i.i.i:                    ; preds = %cond.end.i.i
  %phi.cast.i.i.i = uitofp i16 %.pre.i.i.i to float, !dbg !3369
  br label %if.then.i.i.i, !dbg !3369

lor.lhs.false.i.i.i:                              ; preds = %cond.end.i.i
  %cmp1.i.i.i = icmp eq i16 %.pre.i.i.i, 0, !dbg !3370
  br i1 %cmp1.i.i.i, label %if.then.i.i.i, label %if.end.i434.i.i, !dbg !3371

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i, %entry.if.then_crit_edge.i.i.i
  %17 = phi float [ %phi.cast.i.i.i, %entry.if.then_crit_edge.i.i.i ], [ 0.000000e+00, %lor.lhs.false.i.i.i ]
  %red.i.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call9.i.i, i64 %cond31.i.i, i32 2, !dbg !3372
  %18 = load i16, ptr %red.i.i.i, align 2, !dbg !3372, !tbaa !1355
  %conv3.i.i.i = uitofp i16 %18 to float, !dbg !3373
  call void @llvm.dbg.value(metadata float %conv3.i.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  %green.i.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call9.i.i, i64 %cond31.i.i, i32 1, !dbg !3374
  %19 = load i16, ptr %green.i.i.i, align 2, !dbg !3374, !tbaa !1359
  %conv5.i.i.i = uitofp i16 %19 to float, !dbg !3375
  call void @llvm.dbg.value(metadata float %conv5.i.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  %20 = load i16, ptr %add.ptr32.i.i, align 2, !dbg !3376, !tbaa !1363
  %conv7.i.i.i = uitofp i16 %20 to float, !dbg !3377
  call void @llvm.dbg.value(metadata float %conv7.i.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  br label %AssociateAlphaPixel.exit.i.i, !dbg !3378

if.end.i434.i.i:                                  ; preds = %lor.lhs.false.i.i.i
  %21 = xor i16 %.pre.i.i.i, -1, !dbg !3379
  %conv14.i.i.i = uitofp i16 %21 to double, !dbg !3380
  %mul.i433.i.i = fmul double %conv14.i.i.i, 0x3EF0001000100010, !dbg !3381
  %conv15.i.i.i = fptrunc double %mul.i433.i.i to float, !dbg !3382
  call void @llvm.dbg.value(metadata float %conv15.i.i.i, metadata !2442, metadata !DIExpression()) #17, !dbg !3365
  %red16.i.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call9.i.i, i64 %cond31.i.i, i32 2, !dbg !3383
  %22 = load i16, ptr %red16.i.i.i, align 2, !dbg !3383, !tbaa !1355
  %conv18.i.i.i = uitofp i16 %22 to float, !dbg !3383
  %mul19.i.i.i = fmul float %conv15.i.i.i, %conv18.i.i.i, !dbg !3384
  call void @llvm.dbg.value(metadata float %mul19.i.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  %green21.i.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call9.i.i, i64 %cond31.i.i, i32 1, !dbg !3385
  %23 = load i16, ptr %green21.i.i.i, align 2, !dbg !3385, !tbaa !1359
  %conv23.i.i.i = uitofp i16 %23 to float, !dbg !3385
  %mul24.i.i.i = fmul float %conv15.i.i.i, %conv23.i.i.i, !dbg !3386
  call void @llvm.dbg.value(metadata float %mul24.i.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  %24 = load i16, ptr %add.ptr32.i.i, align 2, !dbg !3387, !tbaa !1363
  %conv28.i.i.i = uitofp i16 %24 to float, !dbg !3387
  %mul29.i.i.i = fmul float %conv15.i.i.i, %conv28.i.i.i, !dbg !3388
  call void @llvm.dbg.value(metadata float %mul29.i.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  %conv32.i.i.i = uitofp i16 %.pre.i.i.i to float, !dbg !3389
  br label %AssociateAlphaPixel.exit.i.i, !dbg !3390

AssociateAlphaPixel.exit.i.i:                     ; preds = %if.end.i434.i.i, %if.then.i.i.i
  %pixel.sroa.33.0.i.i = phi float [ %conv7.i.i.i, %if.then.i.i.i ], [ %mul29.i.i.i, %if.end.i434.i.i ], !dbg !3365
  %pixel.sroa.18.0.i.i = phi float [ %conv5.i.i.i, %if.then.i.i.i ], [ %mul24.i.i.i, %if.end.i434.i.i ], !dbg !3365
  %pixel.sroa.0.0.i.i = phi float [ %conv3.i.i.i, %if.then.i.i.i ], [ %mul19.i.i.i, %if.end.i434.i.i ], !dbg !3365
  %conv32.sink.i.i.i = phi float [ %17, %if.then.i.i.i ], [ %conv32.i.i.i, %if.end.i434.i.i ]
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.0.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.18.0.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.33.0.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %conv32.sink.i.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  %cmp33.not.i.i = icmp eq i64 %x.0570.i.i, 0, !dbg !3391
  br i1 %cmp33.not.i.i, label %if.end63.i.i, label %if.then35.i.i, !dbg !3393

if.then35.i.i:                                    ; preds = %AssociateAlphaPixel.exit.i.i
  %sub36.i.i = sub nsw i64 %cond31.i.i, %conv.i.i, !dbg !3394
  %arrayidx37.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %add.ptr.i.i, i64 %sub36.i.i, !dbg !3396
  %25 = load float, ptr %arrayidx37.i.i, align 4, !dbg !3397, !tbaa !3398
  %mul38.i.i = fmul float %25, 7.000000e+00, !dbg !3399
  %div.i.i = fmul float %mul38.i.i, 6.250000e-02, !dbg !3400
  %add40.i.i = fadd float %pixel.sroa.0.0.i.i, %div.i.i, !dbg !3401
  call void @llvm.dbg.value(metadata float %add40.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  %green.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx37.i.i, i64 0, i32 1, !dbg !3402
  %26 = load float, ptr %green.i.i, align 4, !dbg !3402, !tbaa !3403
  %mul43.i.i = fmul float %26, 7.000000e+00, !dbg !3404
  %div44.i.i = fmul float %mul43.i.i, 6.250000e-02, !dbg !3405
  %add46.i.i = fadd float %pixel.sroa.18.0.i.i, %div44.i.i, !dbg !3406
  call void @llvm.dbg.value(metadata float %add46.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  %blue.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx37.i.i, i64 0, i32 2, !dbg !3407
  %27 = load float, ptr %blue.i.i, align 4, !dbg !3407, !tbaa !3408
  %mul49.i.i = fmul float %27, 7.000000e+00, !dbg !3409
  %div50.i.i = fmul float %mul49.i.i, 6.250000e-02, !dbg !3410
  %add52.i.i = fadd float %pixel.sroa.33.0.i.i, %div50.i.i, !dbg !3411
  call void @llvm.dbg.value(metadata float %add52.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  br i1 %cmp.i432.i.i, label %if.end63.i.i, label %if.then55.i.i, !dbg !3412

if.then55.i.i:                                    ; preds = %if.then35.i.i
  %opacity.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx37.i.i, i64 0, i32 3, !dbg !3413
  %28 = load float, ptr %opacity.i.i, align 4, !dbg !3413, !tbaa !3415
  %mul58.i.i = fmul float %28, 7.000000e+00, !dbg !3416
  %div59.i.i = fmul float %mul58.i.i, 6.250000e-02, !dbg !3417
  %add61.i.i = fadd float %conv32.sink.i.i.i, %div59.i.i, !dbg !3418
  call void @llvm.dbg.value(metadata float %add61.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  br label %if.end63.i.i, !dbg !3419

if.end63.i.i:                                     ; preds = %if.then55.i.i, %if.then35.i.i, %AssociateAlphaPixel.exit.i.i
  %pixel.sroa.48.0.i.i = phi float [ %conv32.sink.i.i.i, %AssociateAlphaPixel.exit.i.i ], [ %conv32.sink.i.i.i, %if.then35.i.i ], [ %add61.i.i, %if.then55.i.i ], !dbg !3362
  %pixel.sroa.33.1.i.i = phi float [ %pixel.sroa.33.0.i.i, %AssociateAlphaPixel.exit.i.i ], [ %add52.i.i, %if.then35.i.i ], [ %add52.i.i, %if.then55.i.i ], !dbg !3362
  %pixel.sroa.18.1.i.i = phi float [ %pixel.sroa.18.0.i.i, %AssociateAlphaPixel.exit.i.i ], [ %add46.i.i, %if.then35.i.i ], [ %add46.i.i, %if.then55.i.i ], !dbg !3362
  %pixel.sroa.0.1.i.i = phi float [ %pixel.sroa.0.0.i.i, %AssociateAlphaPixel.exit.i.i ], [ %add40.i.i, %if.then35.i.i ], [ %add40.i.i, %if.then55.i.i ], !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.1.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.18.1.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.33.1.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.48.0.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  br i1 %cmp64.not.i.i, label %if.end168.i.i, label %if.then66.i.i, !dbg !3420

if.then66.i.i:                                    ; preds = %if.end63.i.i
  %sub68.i.i = add nsw i64 %15, -1, !dbg !3421
  %cmp69.i.i = icmp slt i64 %x.0570.i.i, %sub68.i.i, !dbg !3425
  br i1 %cmp69.i.i, label %if.then71.i.i, label %if.end101.i.i, !dbg !3426

if.then71.i.i:                                    ; preds = %if.then66.i.i
  %add72.i.i = add nsw i64 %cond31.i.i, %conv.i.i, !dbg !3427
  %arrayidx73.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %add.ptr20.i.i, i64 %add72.i.i, !dbg !3429
  %29 = load float, ptr %arrayidx73.i.i, align 4, !dbg !3430, !tbaa !3398
  %div75.i.i = fmul float %29, 6.250000e-02, !dbg !3431
  %add77.i.i = fadd float %pixel.sroa.0.1.i.i, %div75.i.i, !dbg !3432
  call void @llvm.dbg.value(metadata float %add77.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  %green80.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx73.i.i, i64 0, i32 1, !dbg !3433
  %30 = load float, ptr %green80.i.i, align 4, !dbg !3433, !tbaa !3403
  %div81.i.i = fmul float %30, 6.250000e-02, !dbg !3434
  %add83.i.i = fadd float %pixel.sroa.18.1.i.i, %div81.i.i, !dbg !3435
  call void @llvm.dbg.value(metadata float %add83.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  %blue86.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx73.i.i, i64 0, i32 2, !dbg !3436
  %31 = load float, ptr %blue86.i.i, align 4, !dbg !3436, !tbaa !3408
  %div87.i.i = fmul float %31, 6.250000e-02, !dbg !3437
  %add89.i.i = fadd float %pixel.sroa.33.1.i.i, %div87.i.i, !dbg !3438
  call void @llvm.dbg.value(metadata float %add89.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  br i1 %cmp.i432.i.i, label %if.end101.i.i, label %if.then93.i.i, !dbg !3439

if.then93.i.i:                                    ; preds = %if.then71.i.i
  %opacity96.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx73.i.i, i64 0, i32 3, !dbg !3440
  %32 = load float, ptr %opacity96.i.i, align 4, !dbg !3440, !tbaa !3415
  %div97.i.i = fmul float %32, 6.250000e-02, !dbg !3442
  %add99.i.i = fadd float %pixel.sroa.48.0.i.i, %div97.i.i, !dbg !3443
  call void @llvm.dbg.value(metadata float %add99.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  br label %if.end101.i.i, !dbg !3444

if.end101.i.i:                                    ; preds = %if.then93.i.i, %if.then71.i.i, %if.then66.i.i
  %pixel.sroa.48.1.i.i = phi float [ %pixel.sroa.48.0.i.i, %if.then71.i.i ], [ %add99.i.i, %if.then93.i.i ], [ %pixel.sroa.48.0.i.i, %if.then66.i.i ], !dbg !3362
  %pixel.sroa.33.2.i.i = phi float [ %add89.i.i, %if.then71.i.i ], [ %add89.i.i, %if.then93.i.i ], [ %pixel.sroa.33.1.i.i, %if.then66.i.i ], !dbg !3362
  %pixel.sroa.18.2.i.i = phi float [ %add83.i.i, %if.then71.i.i ], [ %add83.i.i, %if.then93.i.i ], [ %pixel.sroa.18.1.i.i, %if.then66.i.i ], !dbg !3362
  %pixel.sroa.0.2.i.i = phi float [ %add77.i.i, %if.then71.i.i ], [ %add77.i.i, %if.then93.i.i ], [ %pixel.sroa.0.1.i.i, %if.then66.i.i ], !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.2.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.18.2.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.33.2.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.48.1.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  %arrayidx102.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %add.ptr20.i.i, i64 %cond31.i.i, !dbg !3445
  %33 = load float, ptr %arrayidx102.i.i, align 4, !dbg !3446, !tbaa !3398
  %mul104.i.i = fmul float %33, 5.000000e+00, !dbg !3447
  %div105.i.i = fmul float %mul104.i.i, 6.250000e-02, !dbg !3448
  %add107.i.i = fadd float %pixel.sroa.0.2.i.i, %div105.i.i, !dbg !3449
  call void @llvm.dbg.value(metadata float %add107.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  %green109.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx102.i.i, i64 0, i32 1, !dbg !3450
  %34 = load float, ptr %green109.i.i, align 4, !dbg !3450, !tbaa !3403
  %mul110.i.i = fmul float %34, 5.000000e+00, !dbg !3451
  %div111.i.i = fmul float %mul110.i.i, 6.250000e-02, !dbg !3452
  %add113.i.i = fadd float %pixel.sroa.18.2.i.i, %div111.i.i, !dbg !3453
  call void @llvm.dbg.value(metadata float %add113.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  %blue115.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx102.i.i, i64 0, i32 2, !dbg !3454
  %35 = load float, ptr %blue115.i.i, align 4, !dbg !3454, !tbaa !3408
  %mul116.i.i = fmul float %35, 5.000000e+00, !dbg !3455
  %div117.i.i = fmul float %mul116.i.i, 6.250000e-02, !dbg !3456
  %add119.i.i = fadd float %pixel.sroa.33.2.i.i, %div117.i.i, !dbg !3457
  call void @llvm.dbg.value(metadata float %add119.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  br i1 %cmp.i432.i.i, label %if.end130.i.i, label %if.then123.i.i, !dbg !3458

if.then123.i.i:                                   ; preds = %if.end101.i.i
  %opacity125.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx102.i.i, i64 0, i32 3, !dbg !3459
  %36 = load float, ptr %opacity125.i.i, align 4, !dbg !3459, !tbaa !3415
  %mul126.i.i = fmul float %36, 5.000000e+00, !dbg !3461
  %div127.i.i = fmul float %mul126.i.i, 6.250000e-02, !dbg !3462
  %add129.i.i = fadd float %pixel.sroa.48.1.i.i, %div127.i.i, !dbg !3463
  call void @llvm.dbg.value(metadata float %add129.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  br label %if.end130.i.i, !dbg !3464

if.end130.i.i:                                    ; preds = %if.then123.i.i, %if.end101.i.i
  %pixel.sroa.48.2.i.i = phi float [ %pixel.sroa.48.1.i.i, %if.end101.i.i ], [ %add129.i.i, %if.then123.i.i ], !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.48.2.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  br i1 %cmp33.not.i.i, label %if.end168.i.i, label %if.then133.i.i, !dbg !3465

if.then133.i.i:                                   ; preds = %if.end130.i.i
  %sub134.i.i = sub nsw i64 %cond31.i.i, %conv.i.i, !dbg !3466
  %arrayidx135.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %add.ptr20.i.i, i64 %sub134.i.i, !dbg !3469
  %37 = load float, ptr %arrayidx135.i.i, align 4, !dbg !3470, !tbaa !3398
  %mul137.i.i = fmul float %37, 3.000000e+00, !dbg !3471
  %div138.i.i = fmul float %mul137.i.i, 6.250000e-02, !dbg !3472
  %add140.i.i = fadd float %add107.i.i, %div138.i.i, !dbg !3473
  call void @llvm.dbg.value(metadata float %add140.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  %green143.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx135.i.i, i64 0, i32 1, !dbg !3474
  %38 = load float, ptr %green143.i.i, align 4, !dbg !3474, !tbaa !3403
  %mul144.i.i = fmul float %38, 3.000000e+00, !dbg !3475
  %div145.i.i = fmul float %mul144.i.i, 6.250000e-02, !dbg !3476
  %add147.i.i = fadd float %add113.i.i, %div145.i.i, !dbg !3477
  call void @llvm.dbg.value(metadata float %add147.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  %blue150.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx135.i.i, i64 0, i32 2, !dbg !3478
  %39 = load float, ptr %blue150.i.i, align 4, !dbg !3478, !tbaa !3408
  %mul151.i.i = fmul float %39, 3.000000e+00, !dbg !3479
  %div152.i.i = fmul float %mul151.i.i, 6.250000e-02, !dbg !3480
  %add154.i.i = fadd float %add119.i.i, %div152.i.i, !dbg !3481
  call void @llvm.dbg.value(metadata float %add154.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  br i1 %cmp.i432.i.i, label %if.end168.i.i, label %if.then158.i.i, !dbg !3482

if.then158.i.i:                                   ; preds = %if.then133.i.i
  %opacity161.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx135.i.i, i64 0, i32 3, !dbg !3483
  %40 = load float, ptr %opacity161.i.i, align 4, !dbg !3483, !tbaa !3415
  %mul162.i.i = fmul float %40, 3.000000e+00, !dbg !3485
  %div163.i.i = fmul float %mul162.i.i, 6.250000e-02, !dbg !3486
  %add165.i.i = fadd float %pixel.sroa.48.2.i.i, %div163.i.i, !dbg !3487
  call void @llvm.dbg.value(metadata float %add165.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  br label %if.end168.i.i, !dbg !3488

if.end168.i.i:                                    ; preds = %if.then158.i.i, %if.then133.i.i, %if.end130.i.i, %if.end63.i.i
  %pixel.sroa.48.3.i.i = phi float [ %pixel.sroa.48.0.i.i, %if.end63.i.i ], [ %pixel.sroa.48.2.i.i, %if.end130.i.i ], [ %pixel.sroa.48.2.i.i, %if.then133.i.i ], [ %add165.i.i, %if.then158.i.i ], !dbg !3362
  %pixel.sroa.33.3.i.i = phi float [ %pixel.sroa.33.1.i.i, %if.end63.i.i ], [ %add119.i.i, %if.end130.i.i ], [ %add154.i.i, %if.then133.i.i ], [ %add154.i.i, %if.then158.i.i ], !dbg !3362
  %pixel.sroa.18.3.i.i = phi float [ %pixel.sroa.18.1.i.i, %if.end63.i.i ], [ %add113.i.i, %if.end130.i.i ], [ %add147.i.i, %if.then133.i.i ], [ %add147.i.i, %if.then158.i.i ], !dbg !3362
  %pixel.sroa.0.3.i.i = phi float [ %pixel.sroa.0.1.i.i, %if.end63.i.i ], [ %add107.i.i, %if.end130.i.i ], [ %add140.i.i, %if.then133.i.i ], [ %add140.i.i, %if.then158.i.i ], !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.3.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.18.3.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.33.3.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.48.3.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.3.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3489
  %cmp.i435.i.i = fcmp olt float %pixel.sroa.0.3.i.i, 0.000000e+00, !dbg !3491
  br i1 %cmp.i435.i.i, label %ClampPixel.exit.i.i, label %if.end.i437.i.i, !dbg !3493

if.end.i437.i.i:                                  ; preds = %if.end168.i.i
  %cmp1.i436.i.i = fcmp ult float %pixel.sroa.0.3.i.i, 6.553500e+04, !dbg !3494
  br i1 %cmp1.i436.i.i, label %if.end3.i.i.i, label %ClampPixel.exit.i.i, !dbg !3495

if.end3.i.i.i:                                    ; preds = %if.end.i437.i.i
  %add.i.i.i = fadd float %pixel.sroa.0.3.i.i, 5.000000e-01, !dbg !3496
  %conv.i.i.i = fptoui float %add.i.i.i to i16, !dbg !3497
  br label %ClampPixel.exit.i.i, !dbg !3498

ClampPixel.exit.i.i:                              ; preds = %if.end3.i.i.i, %if.end.i437.i.i, %if.end168.i.i
  %retval.0.i438.i.i = phi i16 [ %conv.i.i.i, %if.end3.i.i.i ], [ 0, %if.end168.i.i ], [ -1, %if.end.i437.i.i ], !dbg !3489
  %conv171.i.i = uitofp i16 %retval.0.i438.i.i to float, !dbg !3499
  call void @llvm.dbg.value(metadata float %conv171.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.18.3.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3500
  %cmp.i439.i.i = fcmp olt float %pixel.sroa.18.3.i.i, 0.000000e+00, !dbg !3502
  br i1 %cmp.i439.i.i, label %ClampPixel.exit446.i.i, label %if.end.i441.i.i, !dbg !3503

if.end.i441.i.i:                                  ; preds = %ClampPixel.exit.i.i
  %cmp1.i440.i.i = fcmp ult float %pixel.sroa.18.3.i.i, 6.553500e+04, !dbg !3504
  br i1 %cmp1.i440.i.i, label %if.end3.i444.i.i, label %ClampPixel.exit446.i.i, !dbg !3505

if.end3.i444.i.i:                                 ; preds = %if.end.i441.i.i
  %add.i442.i.i = fadd float %pixel.sroa.18.3.i.i, 5.000000e-01, !dbg !3506
  %conv.i443.i.i = fptoui float %add.i442.i.i to i16, !dbg !3507
  br label %ClampPixel.exit446.i.i, !dbg !3508

ClampPixel.exit446.i.i:                           ; preds = %if.end3.i444.i.i, %if.end.i441.i.i, %ClampPixel.exit.i.i
  %retval.0.i445.i.i = phi i16 [ %conv.i443.i.i, %if.end3.i444.i.i ], [ 0, %ClampPixel.exit.i.i ], [ -1, %if.end.i441.i.i ], !dbg !3500
  %conv175.i.i = uitofp i16 %retval.0.i445.i.i to float, !dbg !3509
  call void @llvm.dbg.value(metadata float %conv175.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.33.3.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3510
  %cmp.i447.i.i = fcmp olt float %pixel.sroa.33.3.i.i, 0.000000e+00, !dbg !3512
  br i1 %cmp.i447.i.i, label %ClampPixel.exit454.i.i, label %if.end.i449.i.i, !dbg !3513

if.end.i449.i.i:                                  ; preds = %ClampPixel.exit446.i.i
  %cmp1.i448.i.i = fcmp ult float %pixel.sroa.33.3.i.i, 6.553500e+04, !dbg !3514
  br i1 %cmp1.i448.i.i, label %if.end3.i452.i.i, label %ClampPixel.exit454.i.i, !dbg !3515

if.end3.i452.i.i:                                 ; preds = %if.end.i449.i.i
  %add.i450.i.i = fadd float %pixel.sroa.33.3.i.i, 5.000000e-01, !dbg !3516
  %conv.i451.i.i = fptoui float %add.i450.i.i to i16, !dbg !3517
  br label %ClampPixel.exit454.i.i, !dbg !3518

ClampPixel.exit454.i.i:                           ; preds = %if.end3.i452.i.i, %if.end.i449.i.i, %ClampPixel.exit446.i.i
  %retval.0.i453.i.i = phi i16 [ %conv.i451.i.i, %if.end3.i452.i.i ], [ 0, %ClampPixel.exit446.i.i ], [ -1, %if.end.i449.i.i ], !dbg !3510
  %conv179.i.i = uitofp i16 %retval.0.i453.i.i to float, !dbg !3519
  call void @llvm.dbg.value(metadata float %conv179.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  br i1 %cmp.i432.i.i, label %if.end.i.i.i.i, label %if.then184.i.i, !dbg !3520

if.then184.i.i:                                   ; preds = %ClampPixel.exit454.i.i
  call void @llvm.dbg.value(metadata float %pixel.sroa.48.3.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3521
  %cmp.i455.i.i = fcmp olt float %pixel.sroa.48.3.i.i, 0.000000e+00, !dbg !3524
  br i1 %cmp.i455.i.i, label %ClampPixel.exit462.i.i, label %if.end.i457.i.i, !dbg !3525

if.end.i457.i.i:                                  ; preds = %if.then184.i.i
  %cmp1.i456.i.i = fcmp ult float %pixel.sroa.48.3.i.i, 6.553500e+04, !dbg !3526
  br i1 %cmp1.i456.i.i, label %if.end3.i460.i.i, label %ClampPixel.exit462.i.i, !dbg !3527

if.end3.i460.i.i:                                 ; preds = %if.end.i457.i.i
  %add.i458.i.i = fadd float %pixel.sroa.48.3.i.i, 5.000000e-01, !dbg !3528
  %conv.i459.i.i = fptoui float %add.i458.i.i to i16, !dbg !3529
  br label %ClampPixel.exit462.i.i, !dbg !3530

ClampPixel.exit462.i.i:                           ; preds = %if.end3.i460.i.i, %if.end.i457.i.i, %if.then184.i.i
  %retval.0.i461.i.i = phi i16 [ %conv.i459.i.i, %if.end3.i460.i.i ], [ 0, %if.then184.i.i ], [ -1, %if.end.i457.i.i ], !dbg !3521
  %conv187.i.i = uitofp i16 %retval.0.i461.i.i to float, !dbg !3531
  call void @llvm.dbg.value(metadata float %conv187.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  br label %if.end.i.i.i.i, !dbg !3532

if.end.i.i.i.i:                                   ; preds = %ClampPixel.exit462.i.i, %ClampPixel.exit454.i.i
  %pixel.sroa.48.4.i.i = phi float [ %pixel.sroa.48.3.i.i, %ClampPixel.exit454.i.i ], [ %conv187.i.i, %ClampPixel.exit462.i.i ], !dbg !3362
  call void @llvm.dbg.value(metadata float %pixel.sroa.48.4.i.i, metadata !3246, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata ptr %cube.i.i, metadata !3533, metadata !DIExpression()) #17, !dbg !3540
  call void @llvm.dbg.value(metadata ptr undef, metadata !3538, metadata !DIExpression()) #17, !dbg !3540
  call void @llvm.dbg.value(metadata float %conv171.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3542
  %cmp1.i.i.not.i.i = icmp eq i16 %retval.0.i438.i.i, -1, !dbg !3544
  br i1 %cmp1.i.i.not.i.i, label %if.end.i30.i.i.i, label %if.end3.i.i.i.i, !dbg !3545

if.end3.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %add.i.i.i.i = fadd float %conv171.i.i, 5.000000e-01, !dbg !3546
  %conv.i.i.i.i = fptoui float %add.i.i.i.i to i16, !dbg !3547
  %phi.cast.i464.i.i = zext i16 %conv.i.i.i.i to i64, !dbg !3548
  %phi.bo.i.i.i = add nuw nsw i64 %phi.cast.i464.i.i, 128, !dbg !3548
  br label %if.end.i30.i.i.i, !dbg !3548

if.end.i30.i.i.i:                                 ; preds = %if.end3.i.i.i.i, %if.end.i.i.i.i
  %retval.0.i.i.i.i = phi i64 [ %phi.bo.i.i.i, %if.end3.i.i.i.i ], [ 65663, %if.end.i.i.i.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3549
  %shr.i.i.i.i = lshr i64 %retval.0.i.i.i.i, 8, !dbg !3551
  %sub.i.i.i.i = sub nsw i64 %retval.0.i.i.i.i, %shr.i.i.i.i, !dbg !3552
  %sum.shift.i.i.i = lshr i64 %sub.i.i.i.i, 10, !dbg !3553
  %41 = and i64 %sum.shift.i.i.i, 63, !dbg !3553
  call void @llvm.dbg.value(metadata float %conv175.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3554
  %cmp1.i29.i.not.i.i = icmp eq i16 %retval.0.i445.i.i, -1, !dbg !3556
  br i1 %cmp1.i29.i.not.i.i, label %if.end.i44.i.i.i, label %if.end3.i33.i.i.i, !dbg !3557

if.end3.i33.i.i.i:                                ; preds = %if.end.i30.i.i.i
  %add.i31.i.i.i = fadd float %conv175.i.i, 5.000000e-01, !dbg !3558
  %conv.i32.i.i.i = fptoui float %add.i31.i.i.i to i16, !dbg !3559
  %phi.cast70.i.i.i = zext i16 %conv.i32.i.i.i to i64, !dbg !3560
  %phi.bo71.i.i.i = add nuw nsw i64 %phi.cast70.i.i.i, 128, !dbg !3560
  br label %if.end.i44.i.i.i, !dbg !3560

if.end.i44.i.i.i:                                 ; preds = %if.end3.i33.i.i.i, %if.end.i30.i.i.i
  %retval.0.i34.i.i.i = phi i64 [ %phi.bo71.i.i.i, %if.end3.i33.i.i.i ], [ 65663, %if.end.i30.i.i.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3561
  %shr.i38.i.i.i = lshr i64 %retval.0.i34.i.i.i, 8, !dbg !3563
  %sub.i39.i.i.i = sub nsw i64 %retval.0.i34.i.i.i, %shr.i38.i.i.i, !dbg !3564
  %42 = lshr i64 %sub.i39.i.i.i, 4, !dbg !3565
  %shl6.i.i.i = and i64 %42, 4032, !dbg !3565
  %or.i.i.i = or i64 %shl6.i.i.i, %41, !dbg !3566
  call void @llvm.dbg.value(metadata float %conv179.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3567
  %cmp1.i43.i.not.i.i = icmp eq i16 %retval.0.i453.i.i, -1, !dbg !3569
  br i1 %cmp1.i43.i.not.i.i, label %ClampPixel.exit49.i.i.i, label %if.end3.i47.i.i.i, !dbg !3570

if.end3.i47.i.i.i:                                ; preds = %if.end.i44.i.i.i
  %add.i45.i.i.i = fadd float %conv179.i.i, 5.000000e-01, !dbg !3571
  %conv.i46.i.i.i = fptoui float %add.i45.i.i.i to i16, !dbg !3572
  %phi.cast73.i.i.i = zext i16 %conv.i46.i.i.i to i64, !dbg !3573
  %phi.bo74.i.i.i = add nuw nsw i64 %phi.cast73.i.i.i, 128, !dbg !3573
  br label %ClampPixel.exit49.i.i.i, !dbg !3573

ClampPixel.exit49.i.i.i:                          ; preds = %if.end3.i47.i.i.i, %if.end.i44.i.i.i
  %retval.0.i48.i.i.i = phi i64 [ %phi.bo74.i.i.i, %if.end3.i47.i.i.i ], [ 65663, %if.end.i44.i.i.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3574
  %shr.i52.i.i.i = lshr i64 %retval.0.i48.i.i.i, 8, !dbg !3576
  %sub.i53.i.i.i = sub nsw i64 %retval.0.i48.i.i.i, %shr.i52.i.i.i, !dbg !3577
  %43 = shl nsw i64 %sub.i53.i.i.i, 2, !dbg !3578
  %shl11.i.i.i = and i64 %43, 258048, !dbg !3578
  %or12.i.i.i = or i64 %or.i.i.i, %shl11.i.i.i, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %or12.i.i.i, metadata !3539, metadata !DIExpression()) #17, !dbg !3540
  br i1 %cmp.i432.i.i, label %CacheOffset.exit.i.i, label %if.then.i466.i.i, !dbg !3580

if.then.i466.i.i:                                 ; preds = %ClampPixel.exit49.i.i.i
  call void @llvm.dbg.value(metadata float %pixel.sroa.48.4.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3581
  %cmp.i56.i.i.i = fcmp olt float %pixel.sroa.48.4.i.i, 0.000000e+00, !dbg !3584
  br i1 %cmp.i56.i.i.i, label %ClampPixel.exit63.i.i.i, label %if.end.i58.i.i.i, !dbg !3585

if.end.i58.i.i.i:                                 ; preds = %if.then.i466.i.i
  %cmp1.i57.i.i.i = fcmp ult float %pixel.sroa.48.4.i.i, 6.553500e+04, !dbg !3586
  br i1 %cmp1.i57.i.i.i, label %if.end3.i61.i.i.i, label %ClampPixel.exit63.i.i.i, !dbg !3587

if.end3.i61.i.i.i:                                ; preds = %if.end.i58.i.i.i
  %add.i59.i.i.i = fadd float %pixel.sroa.48.4.i.i, 5.000000e-01, !dbg !3588
  %conv.i60.i.i.i = fptoui float %add.i59.i.i.i to i16, !dbg !3589
  %phi.cast76.i.i.i = zext i16 %conv.i60.i.i.i to i64, !dbg !3590
  %phi.bo77.i.i.i = add nuw nsw i64 %phi.cast76.i.i.i, 128, !dbg !3590
  br label %ClampPixel.exit63.i.i.i, !dbg !3590

ClampPixel.exit63.i.i.i:                          ; preds = %if.end3.i61.i.i.i, %if.end.i58.i.i.i, %if.then.i466.i.i
  %retval.0.i62.i.i.i = phi i64 [ %phi.bo77.i.i.i, %if.end3.i61.i.i.i ], [ 128, %if.then.i466.i.i ], [ 65663, %if.end.i58.i.i.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3591
  %shr.i66.i.i.i = lshr i64 %retval.0.i62.i.i.i, 8, !dbg !3593
  %sub.i67.i.i.i = sub nsw i64 %retval.0.i62.i.i.i, %shr.i66.i.i.i, !dbg !3594
  %44 = shl i64 %sub.i67.i.i.i, 8, !dbg !3595
  %shl19.i.i.i = and i64 %44, 16515072, !dbg !3595
  %or21.i.i.i = or i64 %shl19.i.i.i, %or12.i.i.i, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %or21.i.i.i, metadata !3539, metadata !DIExpression()) #17, !dbg !3540
  br label %CacheOffset.exit.i.i, !dbg !3597

CacheOffset.exit.i.i:                             ; preds = %ClampPixel.exit63.i.i.i, %ClampPixel.exit49.i.i.i
  %offset.0.i.i.i = phi i64 [ %or21.i.i.i, %ClampPixel.exit63.i.i.i ], [ %or12.i.i.i, %ClampPixel.exit49.i.i.i ], !dbg !3540
  call void @llvm.dbg.value(metadata i64 %offset.0.i.i.i, metadata !3539, metadata !DIExpression()) #17, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %offset.0.i.i.i, metadata !3247, metadata !DIExpression()) #17, !dbg !3362
  %45 = load ptr, ptr %cache.i.i, align 8, !dbg !3598, !tbaa !2244
  %arrayidx191.i.i = getelementptr inbounds i64, ptr %45, i64 %offset.0.i.i.i, !dbg !3599
  %46 = load i64, ptr %arrayidx191.i.i, align 8, !dbg !3599, !tbaa !1476
  %cmp192.i.i = icmp slt i64 %46, 0, !dbg !3600
  br i1 %cmp192.i.i, label %if.then194.i.i, label %if.end210.i.i, !dbg !3601

if.then194.i.i:                                   ; preds = %CacheOffset.exit.i.i
  %47 = load ptr, ptr %cube.i.i, align 8, !dbg !3602, !tbaa !2213
  call void @llvm.dbg.value(metadata ptr %47, metadata !3249, metadata !DIExpression()) #17, !dbg !3603
  call void @llvm.dbg.value(metadata i64 7, metadata !3240, metadata !DIExpression()) #17, !dbg !3332
  %add.i.i471.i.i = fadd float %conv171.i.i, 5.000000e-01
  %conv.i.i472.i.i = fptoui float %add.i.i471.i.i to i16
  %phi.cast.i473.i.i = zext i16 %conv.i.i472.i.i to i32
  %phi.bo.i474.i.i = add nuw nsw i32 %phi.cast.i473.i.i, 128
  %add.i40.i.i.i = fadd float %conv175.i.i, 5.000000e-01
  %conv.i41.i.i.i = fptoui float %add.i40.i.i.i to i16
  %phi.cast79.i.i.i = zext i16 %conv.i41.i.i.i to i32
  %phi.bo80.i.i.i = add nuw nsw i32 %phi.cast79.i.i.i, 128
  %add.i54.i.i.i = fadd float %conv179.i.i, 5.000000e-01
  %conv.i55.i.i.i = fptoui float %add.i54.i.i.i to i16
  %phi.cast81.i.i.i = zext i16 %conv.i55.i.i.i to i32
  %phi.bo82.i.i.i = add nuw nsw i32 %phi.cast81.i.i.i, 128
  %spec.select579.i.i = select i1 %cmp1.i.i.not.i.i, i32 65663, i32 %phi.bo.i474.i.i
  %shr.i.i477.us.i.i = lshr i32 %spec.select579.i.i, 8
  %sub.i.i478.us.i.i = sub nsw i32 %spec.select579.i.i, %shr.i.i477.us.i.i
  %48 = lshr i32 %sub.i.i478.us.i.i, 8
  %conv.i479.us.i.i = and i32 %48, 255
  %spec.select583.i.i = select i1 %cmp1.i29.i.not.i.i, i32 65663, i32 %phi.bo80.i.i.i
  %shr.i47.i.us.i.i = lshr i32 %spec.select583.i.i, 8
  %sub.i48.i.us.i.i = sub nsw i32 %spec.select583.i.i, %shr.i47.i.us.i.i
  %49 = lshr i32 %sub.i48.i.us.i.i, 8
  %conv4.i.us.i.i = and i32 %49, 255
  %spec.select580.i.i = select i1 %cmp1.i43.i.not.i.i, i32 65663, i32 %phi.bo82.i.i.i
  %shr.i61.i.us.i.i = lshr i32 %spec.select580.i.i, 8
  %sub.i62.i.us.i.i = sub nsw i32 %spec.select580.i.i, %shr.i61.i.us.i.i
  %50 = lshr i32 %sub.i62.i.us.i.i, 8
  %conv10.i.us.i.i = and i32 %50, 255
  br i1 %cmp.i432.i.i, label %if.end.i.i470.us.i.i, label %if.end.i.i470.preheader.i.i, !dbg !3604

if.end.i.i470.preheader.i.i:                      ; preds = %if.then194.i.i
  %add.i68.i.i.i = fadd float %pixel.sroa.48.4.i.i, 5.000000e-01
  %conv.i69.i.i.i = fptoui float %add.i68.i.i.i to i16
  %phi.cast83.i.i.i = zext i16 %conv.i69.i.i.i to i32
  %phi.bo84.i.i.i = add nuw nsw i32 %phi.cast83.i.i.i, 128
  %cmp1.i66.i.i.i = fcmp oge float %pixel.sroa.48.4.i.i, 6.553500e+04
  %cmp.i65.i.i.i = fcmp olt float %pixel.sroa.48.4.i.i, 0.000000e+00
  %brmerge.i.i = or i1 %cmp.i65.i.i.i, %cmp1.i66.i.i.i
  %.mux.i.i = select i1 %cmp.i65.i.i.i, i32 128, i32 65663
  %spec.select585.i.i = select i1 %brmerge.i.i, i32 %.mux.i.i, i32 %phi.bo84.i.i.i
  %shr.i75.i.i.i = lshr i32 %spec.select585.i.i, 8
  %sub.i76.i.i.i = sub nsw i32 %spec.select585.i.i, %shr.i75.i.i.i
  %51 = lshr i32 %sub.i76.i.i.i, 8
  %conv20.i.i.i = and i32 %51, 255
  br label %if.end.i.i470.i.i, !dbg !3609

if.end.i.i470.us.i.i:                             ; preds = %if.then194.i.i, %for.cond196.us.i.i
  %node_info.0568.us.i.i = phi ptr [ %52, %for.cond196.us.i.i ], [ %47, %if.then194.i.i ]
  %index.0567.us.i.i = phi i64 [ %dec.us.i.i, %for.cond196.us.i.i ], [ 7, %if.then194.i.i ]
  call void @llvm.dbg.value(metadata ptr %node_info.0568.us.i.i, metadata !3249, metadata !DIExpression()) #17, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %index.0567.us.i.i, metadata !3240, metadata !DIExpression()) #17, !dbg !3332
  call void @llvm.dbg.value(metadata ptr %cube.i.i, metadata !2477, metadata !DIExpression()) #17, !dbg !3610
  call void @llvm.dbg.value(metadata ptr undef, metadata !2484, metadata !DIExpression()) #17, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %index.0567.us.i.i, metadata !2485, metadata !DIExpression()) #17, !dbg !3610
  call void @llvm.dbg.value(metadata float %conv171.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3611
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3613
  %sh_prom.i.us.i.i = trunc i64 %index.0567.us.i.i to i32, !dbg !3615
  %shr.i.us.i.i = lshr i32 %conv.i479.us.i.i, %sh_prom.i.us.i.i, !dbg !3615
  %and.i.us.i.i = and i32 %shr.i.us.i.i, 1, !dbg !3616
  call void @llvm.dbg.value(metadata float %conv175.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3617
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3619
  %shr6.i.us.i.i = lshr i32 %conv4.i.us.i.i, %sh_prom.i.us.i.i, !dbg !3621
  %and7.i.us.i.i = shl nuw nsw i32 %shr6.i.us.i.i, 1, !dbg !3622
  %shl.i.us.i.i = and i32 %and7.i.us.i.i, 2, !dbg !3622
  %or.i482.us.i.i = or i32 %shl.i.us.i.i, %and.i.us.i.i, !dbg !3623
  call void @llvm.dbg.value(metadata float %conv179.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3624
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3626
  %shr12.i.us.i.i = lshr i32 %conv10.i.us.i.i, %sh_prom.i.us.i.i, !dbg !3628
  %and13.i.us.i.i = shl nuw nsw i32 %shr12.i.us.i.i, 2, !dbg !3629
  %shl14.i.us.i.i = and i32 %and13.i.us.i.i, 4, !dbg !3629
  %or15.i.us.i.i = or i32 %or.i482.us.i.i, %shl14.i.us.i.i, !dbg !3630
  call void @llvm.dbg.value(metadata i32 %or15.i.us.i.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #17, !dbg !3610
  %id.0.i.us.i.i = zext i32 %or15.i.us.i.i to i64, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %id.0.i.us.i.i, metadata !2486, metadata !DIExpression()) #17, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %id.0.i.us.i.i, metadata !3252, metadata !DIExpression()) #17, !dbg !3603
  %arrayidx201.us.i.i = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0568.us.i.i, i64 0, i32 1, i64 %id.0.i.us.i.i, !dbg !3631
  %52 = load ptr, ptr %arrayidx201.us.i.i, align 8, !dbg !3631, !tbaa !2575
  %cmp202.us.i.i = icmp eq ptr %52, null, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %52, metadata !3249, metadata !DIExpression()) #17, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %index.0567.us.i.i, metadata !3240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #17, !dbg !3332
  br i1 %cmp202.us.i.i, label %for.end.i.i, label %for.cond196.us.i.i, !dbg !3634

for.cond196.us.i.i:                               ; preds = %if.end.i.i470.us.i.i
  %dec.us.i.i = add nsw i64 %index.0567.us.i.i, -1, !dbg !3635
  call void @llvm.dbg.value(metadata ptr undef, metadata !3249, metadata !DIExpression()) #17, !dbg !3603
  call void @llvm.dbg.value(metadata i64 undef, metadata !3240, metadata !DIExpression()) #17, !dbg !3332
  %cmp197.us.i.i = icmp ugt i64 %index.0567.us.i.i, 1, !dbg !3636
  br i1 %cmp197.us.i.i, label %if.end.i.i470.us.i.i, label %for.end.i.i, !dbg !3609, !llvm.loop !3637

for.cond196.i.i:                                  ; preds = %if.end.i.i470.i.i
  %dec.i.i = add nsw i64 %index.0567.i.i, -1, !dbg !3635
  call void @llvm.dbg.value(metadata ptr undef, metadata !3249, metadata !DIExpression()) #17, !dbg !3603
  call void @llvm.dbg.value(metadata i64 undef, metadata !3240, metadata !DIExpression()) #17, !dbg !3332
  %cmp197.i.i = icmp ugt i64 %index.0567.i.i, 1, !dbg !3636
  br i1 %cmp197.i.i, label %if.end.i.i470.i.i, label %for.end.i.i, !dbg !3609, !llvm.loop !3639

if.end.i.i470.i.i:                                ; preds = %for.cond196.i.i, %if.end.i.i470.preheader.i.i
  %node_info.0568.i.i = phi ptr [ %53, %for.cond196.i.i ], [ %47, %if.end.i.i470.preheader.i.i ]
  %index.0567.i.i = phi i64 [ %dec.i.i, %for.cond196.i.i ], [ 7, %if.end.i.i470.preheader.i.i ]
  call void @llvm.dbg.value(metadata ptr %node_info.0568.i.i, metadata !3249, metadata !DIExpression()) #17, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %index.0567.i.i, metadata !3240, metadata !DIExpression()) #17, !dbg !3332
  call void @llvm.dbg.value(metadata ptr %cube.i.i, metadata !2477, metadata !DIExpression()) #17, !dbg !3610
  call void @llvm.dbg.value(metadata ptr undef, metadata !2484, metadata !DIExpression()) #17, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %index.0567.i.i, metadata !2485, metadata !DIExpression()) #17, !dbg !3610
  call void @llvm.dbg.value(metadata float %conv171.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3611
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3613
  %sh_prom.i.i.i = trunc i64 %index.0567.i.i to i32, !dbg !3615
  %shr.i.i.i = lshr i32 %conv.i479.us.i.i, %sh_prom.i.i.i, !dbg !3615
  %and.i.i.i = and i32 %shr.i.i.i, 1, !dbg !3616
  call void @llvm.dbg.value(metadata float %conv175.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3617
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3619
  %shr6.i.i.i = lshr i32 %conv4.i.us.i.i, %sh_prom.i.i.i, !dbg !3621
  %and7.i.i.i = shl nuw nsw i32 %shr6.i.i.i, 1, !dbg !3622
  %shl.i.i.i = and i32 %and7.i.i.i, 2, !dbg !3622
  %or.i482.i.i = or i32 %shl.i.i.i, %and.i.i.i, !dbg !3623
  call void @llvm.dbg.value(metadata float %conv179.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3624
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3626
  %shr12.i.i.i = lshr i32 %conv10.i.us.i.i, %sh_prom.i.i.i, !dbg !3628
  %and13.i.i.i = shl nuw nsw i32 %shr12.i.i.i, 2, !dbg !3629
  %shl14.i.i.i = and i32 %and13.i.i.i, 4, !dbg !3629
  %or15.i.i.i = or i32 %or.i482.i.i, %shl14.i.i.i, !dbg !3630
  call void @llvm.dbg.value(metadata i32 %or15.i.i.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #17, !dbg !3610
  call void @llvm.dbg.value(metadata float %pixel.sroa.48.4.i.i, metadata !2489, metadata !DIExpression()) #17, !dbg !3640
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()) #17, !dbg !3642
  %shr22.i.i.i = lshr i32 %conv20.i.i.i, %sh_prom.i.i.i, !dbg !3644
  %and23.i.i.i = shl nuw nsw i32 %shr22.i.i.i, 3, !dbg !3645
  %shl24.i.i.i = and i32 %and23.i.i.i, 8, !dbg !3645
  %or2634.i.i.i = or i32 %or15.i.i.i, %shl24.i.i.i, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %or2634.i.i.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #17, !dbg !3610
  %id.0.i.i.i = zext i32 %or2634.i.i.i to i64, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %id.0.i.i.i, metadata !2486, metadata !DIExpression()) #17, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %id.0.i.i.i, metadata !3252, metadata !DIExpression()) #17, !dbg !3603
  %arrayidx201.i.i = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0568.i.i, i64 0, i32 1, i64 %id.0.i.i.i, !dbg !3631
  %53 = load ptr, ptr %arrayidx201.i.i, align 8, !dbg !3631, !tbaa !2575
  %cmp202.i.i = icmp eq ptr %53, null, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %53, metadata !3249, metadata !DIExpression()) #17, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %index.0567.i.i, metadata !3240, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #17, !dbg !3332
  br i1 %cmp202.i.i, label %for.end.i.i, label %for.cond196.i.i, !dbg !3634

for.end.i.i:                                      ; preds = %if.end.i.i470.i.i, %for.cond196.i.i, %for.cond196.us.i.i, %if.end.i.i470.us.i.i
  %.us-phi.i.i = phi ptr [ %node_info.0568.us.i.i, %if.end.i.i470.us.i.i ], [ %52, %for.cond196.us.i.i ], [ %node_info.0568.i.i, %if.end.i.i470.i.i ], [ %53, %for.cond196.i.i ]
  store float %conv171.i.i, ptr %target.i.i, align 8, !dbg !3647, !tbaa.struct !3648
  store float %conv175.i.i, ptr %pixel.sroa.18.0.target.sroa_idx.i.i, align 4, !dbg !3647, !tbaa.struct !3649
  store float %conv179.i.i, ptr %pixel.sroa.33.0.target.sroa_idx.i.i, align 8, !dbg !3647, !tbaa.struct !3650
  store float %pixel.sroa.48.4.i.i, ptr %pixel.sroa.48.0.target.sroa_idx.i.i, align 4, !dbg !3647, !tbaa.struct !3651
  store float 0x4210000000000000, ptr %distance.i.i, align 8, !dbg !3652, !tbaa !3653
  %54 = load ptr, ptr %.us-phi.i.i, align 8, !dbg !3654, !tbaa !2224
  call fastcc void @ClosestColor(ptr noundef %image, ptr noundef nonnull %cube.i.i, ptr noundef %54) #17, !dbg !3655
  %55 = load i64, ptr %color_number.i.i, align 8, !dbg !3656, !tbaa !3657
  %56 = load ptr, ptr %cache.i.i, align 8, !dbg !3658, !tbaa !2244
  %arrayidx209.i.i = getelementptr inbounds i64, ptr %56, i64 %offset.0.i.i.i, !dbg !3659
  store i64 %55, ptr %arrayidx209.i.i, align 8, !dbg !3660, !tbaa !1476
  br label %if.end210.i.i, !dbg !3661

if.end210.i.i:                                    ; preds = %for.end.i.i, %CacheOffset.exit.i.i
  %57 = phi i64 [ %55, %for.end.i.i ], [ %46, %CacheOffset.exit.i.i ], !dbg !3662
  call void @llvm.dbg.value(metadata i64 %57, metadata !3240, metadata !DIExpression()) #17, !dbg !3332
  %58 = load i32, ptr %image, align 8, !dbg !3663, !tbaa !1470
  %cmp213.i.i = icmp ne i32 %58, 2, !dbg !3665
  %or.cond.i.i = select i1 %cmp213.i.i, i1 true, i1 %cmp217.not.i.i, !dbg !3666
  br i1 %or.cond.i.i, label %if.end223.i.i, label %if.then219.i.i, !dbg !3666

if.then219.i.i:                                   ; preds = %if.end210.i.i
  %add.ptr216.i.i = getelementptr inbounds i16, ptr %call13.i.i, i64 %cond31.i.i, !dbg !3667
  %conv220.i.i = trunc i64 %57 to i16, !dbg !3667
  store i16 %conv220.i.i, ptr %add.ptr216.i.i, align 2, !dbg !3667, !tbaa !1378
  br label %if.end223.i.i, !dbg !3667

if.end223.i.i:                                    ; preds = %if.then219.i.i, %if.end210.i.i
  %59 = load ptr, ptr %quantize_info.i.i, align 8, !dbg !3670, !tbaa !2229
  %measure_error.i.i = getelementptr inbounds %struct._QuantizeInfo, ptr %59, i64 0, i32 4, !dbg !3672
  %60 = load i32, ptr %measure_error.i.i, align 8, !dbg !3672, !tbaa !1064
  %cmp224.i.i = icmp eq i32 %60, 0, !dbg !3673
  br i1 %cmp224.i.i, label %if.then226.i.i, label %if.end223.if.end251_crit_edge.i.i, !dbg !3674

if.end223.if.end251_crit_edge.i.i:                ; preds = %if.end223.i.i
  %cube.val.pre.i.i = load i32, ptr %11, align 8, !dbg !3675, !tbaa !2359
  br label %if.end251.i.i, !dbg !3674

if.then226.i.i:                                   ; preds = %if.end223.i.i
  %61 = load ptr, ptr %colormap.i.i, align 8, !dbg !3676, !tbaa !1350
  %red228.i.i = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %57, i32 2, !dbg !3676
  %62 = load i16, ptr %red228.i.i, align 2, !dbg !3676, !tbaa !1355
  %red230.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call9.i.i, i64 %cond31.i.i, i32 2, !dbg !3676
  store i16 %62, ptr %red230.i.i, align 2, !dbg !3676, !tbaa !1355
  %green233.i.i = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %57, i32 1, !dbg !3676
  %63 = load i16, ptr %green233.i.i, align 2, !dbg !3676, !tbaa !1359
  %green235.i.i = getelementptr inbounds %struct._PixelPacket, ptr %call9.i.i, i64 %cond31.i.i, i32 1, !dbg !3676
  store i16 %63, ptr %green235.i.i, align 2, !dbg !3676, !tbaa !1359
  %add.ptr237.i.i = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %57, !dbg !3676
  %64 = load i16, ptr %add.ptr237.i.i, align 2, !dbg !3676, !tbaa !1363
  store i16 %64, ptr %add.ptr32.i.i, align 2, !dbg !3676, !tbaa !1363
  %65 = load i32, ptr %associate_alpha.i.i, align 8, !dbg !3679, !tbaa !2359
  %cmp242.not.i.i = icmp eq i32 %65, 0, !dbg !3681
  br i1 %cmp242.not.i.i, label %if.end251.i.i, label %if.then244.i.i, !dbg !3682

if.then244.i.i:                                   ; preds = %if.then226.i.i
  %opacity247.i.i = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %57, i32 3, !dbg !3683
  %66 = load i16, ptr %opacity247.i.i, align 2, !dbg !3683, !tbaa !1367
  store i16 %66, ptr %opacity9.phi.trans.insert.i.i.i, align 2, !dbg !3683, !tbaa !1367
  br label %if.end251.i.i, !dbg !3683

if.end251.i.i:                                    ; preds = %if.then244.i.i, %if.then226.i.i, %if.end223.if.end251_crit_edge.i.i
  %67 = phi i32 [ %cube.val.pre.i.i, %if.end223.if.end251_crit_edge.i.i ], [ 0, %if.then226.i.i ], [ 1, %if.then244.i.i ], !dbg !3675
  %call252.i.i = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call2.i.i, ptr noundef nonnull %exception1.i.i) #20, !dbg !3684
  %cmp253.i.i = icmp eq i32 %call252.i.i, 0, !dbg !3686
  %spec.select.i.i = select i1 %cmp253.i.i, i32 0, i32 %status.1573.i.i, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !3227, metadata !DIExpression()) #17, !dbg !3256
  %68 = load ptr, ptr %colormap.i.i, align 8, !dbg !3688, !tbaa !1350
  %add.ptr258.i.i = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %57, !dbg !3689
  call void @llvm.dbg.value(metadata ptr undef, metadata !2439, metadata !DIExpression()) #17, !dbg !3690
  call void @llvm.dbg.value(metadata ptr %add.ptr258.i.i, metadata !2440, metadata !DIExpression()) #17, !dbg !3690
  call void @llvm.dbg.value(metadata ptr undef, metadata !2441, metadata !DIExpression()) #17, !dbg !3690
  %cmp.i489.i.i = icmp eq i32 %67, 0, !dbg !3692
  %opacity9.phi.trans.insert.i490.i.i = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %57, i32 3
  %.pre.i491.i.i = load i16, ptr %opacity9.phi.trans.insert.i490.i.i, align 2, !dbg !3693, !tbaa !1367
  br i1 %cmp.i489.i.i, label %entry.if.then_crit_edge.i493.i.i, label %lor.lhs.false.i495.i.i, !dbg !3694

entry.if.then_crit_edge.i493.i.i:                 ; preds = %if.end251.i.i
  %phi.cast.i492.i.i = uitofp i16 %.pre.i491.i.i to float, !dbg !3694
  br label %if.then.i503.i.i, !dbg !3694

lor.lhs.false.i495.i.i:                           ; preds = %if.end251.i.i
  %cmp1.i494.i.i = icmp eq i16 %.pre.i491.i.i, 0, !dbg !3695
  br i1 %cmp1.i494.i.i, label %if.then.i503.i.i, label %if.end.i518.i.i, !dbg !3696

if.then.i503.i.i:                                 ; preds = %lor.lhs.false.i495.i.i, %entry.if.then_crit_edge.i493.i.i
  %69 = phi float [ %phi.cast.i492.i.i, %entry.if.then_crit_edge.i493.i.i ], [ 0.000000e+00, %lor.lhs.false.i495.i.i ]
  %red.i496.i.i = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %57, i32 2, !dbg !3697
  %70 = load i16, ptr %red.i496.i.i, align 2, !dbg !3697, !tbaa !1355
  %conv3.i497.i.i = uitofp i16 %70 to float, !dbg !3698
  call void @llvm.dbg.value(metadata float %conv3.i497.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  %green.i498.i.i = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %57, i32 1, !dbg !3699
  %71 = load i16, ptr %green.i498.i.i, align 2, !dbg !3699, !tbaa !1359
  %conv5.i499.i.i = uitofp i16 %71 to float, !dbg !3700
  call void @llvm.dbg.value(metadata float %conv5.i499.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  %72 = load i16, ptr %add.ptr258.i.i, align 2, !dbg !3701, !tbaa !1363
  %conv7.i501.i.i = uitofp i16 %72 to float, !dbg !3702
  call void @llvm.dbg.value(metadata float %conv7.i501.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  br label %AssociateAlphaPixel.exit521.i.i, !dbg !3703

if.end.i518.i.i:                                  ; preds = %lor.lhs.false.i495.i.i
  %73 = xor i16 %.pre.i491.i.i, -1, !dbg !3704
  %conv14.i504.i.i = uitofp i16 %73 to double, !dbg !3705
  %mul.i505.i.i = fmul double %conv14.i504.i.i, 0x3EF0001000100010, !dbg !3706
  %conv15.i506.i.i = fptrunc double %mul.i505.i.i to float, !dbg !3707
  call void @llvm.dbg.value(metadata float %conv15.i506.i.i, metadata !2442, metadata !DIExpression()) #17, !dbg !3690
  %red16.i507.i.i = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %57, i32 2, !dbg !3708
  %74 = load i16, ptr %red16.i507.i.i, align 2, !dbg !3708, !tbaa !1355
  %conv18.i508.i.i = uitofp i16 %74 to float, !dbg !3708
  %mul19.i509.i.i = fmul float %conv15.i506.i.i, %conv18.i508.i.i, !dbg !3709
  call void @llvm.dbg.value(metadata float %mul19.i509.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  %green21.i510.i.i = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %57, i32 1, !dbg !3710
  %75 = load i16, ptr %green21.i510.i.i, align 2, !dbg !3710, !tbaa !1359
  %conv23.i511.i.i = uitofp i16 %75 to float, !dbg !3710
  %mul24.i512.i.i = fmul float %conv15.i506.i.i, %conv23.i511.i.i, !dbg !3711
  call void @llvm.dbg.value(metadata float %mul24.i512.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  %76 = load i16, ptr %add.ptr258.i.i, align 2, !dbg !3712, !tbaa !1363
  %conv28.i514.i.i = uitofp i16 %76 to float, !dbg !3712
  %mul29.i515.i.i = fmul float %conv15.i506.i.i, %conv28.i514.i.i, !dbg !3713
  call void @llvm.dbg.value(metadata float %mul29.i515.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  %conv32.i517.i.i = uitofp i16 %.pre.i491.i.i to float, !dbg !3714
  br label %AssociateAlphaPixel.exit521.i.i, !dbg !3715

AssociateAlphaPixel.exit521.i.i:                  ; preds = %if.end.i518.i.i, %if.then.i503.i.i
  %color.sroa.8.0.i.i = phi float [ %conv7.i501.i.i, %if.then.i503.i.i ], [ %mul29.i515.i.i, %if.end.i518.i.i ], !dbg !3690
  %color.sroa.5.0.i.i = phi float [ %conv5.i499.i.i, %if.then.i503.i.i ], [ %mul24.i512.i.i, %if.end.i518.i.i ], !dbg !3690
  %color.sroa.0.0.i.i = phi float [ %conv3.i497.i.i, %if.then.i503.i.i ], [ %mul19.i509.i.i, %if.end.i518.i.i ], !dbg !3690
  %conv32.sink.i519.i.i = phi float [ %69, %if.then.i503.i.i ], [ %conv32.i517.i.i, %if.end.i518.i.i ]
  call void @llvm.dbg.value(metadata float %color.sroa.0.0.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %color.sroa.5.0.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %color.sroa.8.0.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)) #17, !dbg !3362
  call void @llvm.dbg.value(metadata float %conv32.sink.i519.i.i, metadata !3242, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)) #17, !dbg !3362
  %sub261.i.i = fsub float %conv171.i.i, %color.sroa.0.0.i.i, !dbg !3716
  %arrayidx262.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %add.ptr.i.i, i64 %cond31.i.i, !dbg !3717
  store float %sub261.i.i, ptr %arrayidx262.i.i, align 4, !dbg !3718, !tbaa !3398
  %sub266.i.i = fsub float %conv175.i.i, %color.sroa.5.0.i.i, !dbg !3719
  %green268.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx262.i.i, i64 0, i32 1, !dbg !3720
  store float %sub266.i.i, ptr %green268.i.i, align 4, !dbg !3721, !tbaa !3403
  %sub271.i.i = fsub float %conv179.i.i, %color.sroa.8.0.i.i, !dbg !3722
  %blue273.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx262.i.i, i64 0, i32 2, !dbg !3723
  store float %sub271.i.i, ptr %blue273.i.i, align 4, !dbg !3724, !tbaa !3408
  br i1 %cmp.i489.i.i, label %if.end283.i.i, label %if.then277.i.i, !dbg !3725

if.then277.i.i:                                   ; preds = %AssociateAlphaPixel.exit521.i.i
  %sub280.i.i = fsub float %pixel.sroa.48.4.i.i, %conv32.sink.i519.i.i, !dbg !3726
  %opacity282.i.i = getelementptr inbounds %struct._RealPixelPacket, ptr %arrayidx262.i.i, i64 0, i32 3, !dbg !3728
  store float %sub280.i.i, ptr %opacity282.i.i, align 4, !dbg !3729, !tbaa !3415
  br label %if.end283.i.i, !dbg !3730

if.end283.i.i:                                    ; preds = %if.then277.i.i, %AssociateAlphaPixel.exit521.i.i
  %77 = load ptr, ptr %progress_monitor.i.i, align 8, !dbg !3731, !tbaa !1402
  %cmp284.not.i.i = icmp eq ptr %77, null, !dbg !3732
  br i1 %cmp284.not.i.i, label %if.end293.i.i, label %SetImageProgress.exit.i.i, !dbg !3733

SetImageProgress.exit.i.i:                        ; preds = %if.end283.i.i
  %78 = load i64, ptr %rows.i.i, align 8, !dbg !3734, !tbaa !1294
  call void @llvm.dbg.value(metadata ptr %image, metadata !1386, metadata !DIExpression()) #17, !dbg !3735
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !1392, metadata !DIExpression()) #17, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %y.0575.i.i, metadata !1393, metadata !DIExpression()) #17, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %78, metadata !1394, metadata !DIExpression()) #17, !dbg !3735
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i.i.i) #17, !dbg !3737
  call void @llvm.dbg.declare(metadata ptr %message.i.i.i, metadata !1395, metadata !DIExpression()) #17, !dbg !3738
  %call.i523.i.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i.i.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, ptr noundef nonnull %filename.i.i.i) #17, !dbg !3739
  %79 = load ptr, ptr %progress_monitor.i.i, align 8, !dbg !3740, !tbaa !1402
  %80 = load ptr, ptr %client_data.i.i.i, align 8, !dbg !3741, !tbaa !1410
  %call4.i524.i.i = call i32 %79(ptr noundef nonnull %message.i.i.i, i64 noundef %y.0575.i.i, i64 noundef %78, ptr noundef %80) #17, !dbg !3742
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i.i.i) #17, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %call4.i524.i.i, metadata !3253, metadata !DIExpression()) #17, !dbg !3744
  %cmp289.i.i = icmp eq i32 %call4.i524.i.i, 0, !dbg !3745
  %spec.select430.i.i = select i1 %cmp289.i.i, i32 0, i32 %spec.select.i.i, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %spec.select430.i.i, metadata !3227, metadata !DIExpression()) #17, !dbg !3256
  br label %if.end293.i.i, !dbg !3748

if.end293.i.i:                                    ; preds = %SetImageProgress.exit.i.i, %if.end283.i.i
  %status.4.i.i = phi i32 [ %spec.select430.i.i, %SetImageProgress.exit.i.i ], [ %spec.select.i.i, %if.end283.i.i ], !dbg !3362
  call void @llvm.dbg.value(metadata i32 %status.4.i.i, metadata !3227, metadata !DIExpression()) #17, !dbg !3256
  %inc.i.i = add nuw nsw i64 %x.0570.i.i, 1, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !3239, metadata !DIExpression()) #17, !dbg !3332
  %81 = load i64, ptr %columns.i.i, align 8, !dbg !3750, !tbaa !1292
  %cmp24.i.i = icmp slt i64 %inc.i.i, %81, !dbg !3358
  br i1 %cmp24.i.i, label %for.body26.i.i, label %cleanup.i.i, !dbg !3359, !llvm.loop !3751

cleanup.i.i:                                      ; preds = %if.end293.i.i, %if.end12.i.i, %if.end7.i.i, %for.body.i.i
  %status.5.i.i = phi i32 [ 0, %for.body.i.i ], [ 0, %if.end7.i.i ], [ 1, %if.end12.i.i ], [ %status.4.i.i, %if.end293.i.i ], !dbg !3256
  call void @llvm.dbg.value(metadata i32 %status.5.i.i, metadata !3227, metadata !DIExpression()) #17, !dbg !3256
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %cube.i.i) #17, !dbg !3753
  %inc305.i.i = add nuw nsw i64 %y.0575.i.i, 1, !dbg !3754
  call void @llvm.dbg.value(metadata i64 %inc305.i.i, metadata !3229, metadata !DIExpression()) #17, !dbg !3256
  %82 = load i64, ptr %rows.i.i, align 8, !dbg !3329, !tbaa !1294
  %cmp3.i.i = icmp slt i64 %inc305.i.i, %82, !dbg !3330
  br i1 %cmp3.i.i, label %for.body.i.i, label %for.end306.i.i, !dbg !3331, !llvm.loop !3755

for.end306.i.i:                                   ; preds = %cleanup.i.i, %if.end.i.i
  %call307.i.i = call ptr @DestroyCacheView(ptr noundef %call2.i.i) #17, !dbg !3757
  call void @llvm.dbg.value(metadata ptr %call307.i.i, metadata !3225, metadata !DIExpression()) #17, !dbg !3256
  call void @llvm.dbg.value(metadata i64 0, metadata !3305, metadata !DIExpression()) #17, !dbg !3758
  %call14.i.i.i = call i64 @GetMagickResourceLimit(i32 noundef 6) #17, !dbg !3760
  %cmp15.i.i.i = icmp sgt i64 %call14.i.i.i, 0, !dbg !3761
  br i1 %cmp15.i.i.i, label %for.body.i528.i.i, label %DestroyPixelThreadSet.exit.i.i, !dbg !3762

for.body.i528.i.i:                                ; preds = %for.end306.i.i, %for.inc.i.i.i
  %i.016.i.i.i = phi i64 [ %inc.i530.i.i, %for.inc.i.i.i ], [ 0, %for.end306.i.i ]
  call void @llvm.dbg.value(metadata i64 %i.016.i.i.i, metadata !3305, metadata !DIExpression()) #17, !dbg !3758
  %arrayidx.i527.i.i = getelementptr inbounds ptr, ptr %retval.0.i563.i.i, i64 %i.016.i.i.i, !dbg !3763
  %83 = load ptr, ptr %arrayidx.i527.i.i, align 8, !dbg !3763, !tbaa !2575
  %cmp1.not.i.i.i = icmp eq ptr %83, null, !dbg !3764
  br i1 %cmp1.not.i.i.i, label %for.inc.i.i.i, label %if.then.i529.i.i, !dbg !3765

if.then.i529.i.i:                                 ; preds = %for.body.i528.i.i
  %call3.i.i.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %83) #17, !dbg !3766
  store ptr %call3.i.i.i, ptr %arrayidx.i527.i.i, align 8, !dbg !3767, !tbaa !2575
  br label %for.inc.i.i.i, !dbg !3768

for.inc.i.i.i:                                    ; preds = %if.then.i529.i.i, %for.body.i528.i.i
  %inc.i530.i.i = add nuw nsw i64 %i.016.i.i.i, 1, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %inc.i530.i.i, metadata !3305, metadata !DIExpression()) #17, !dbg !3758
  %call.i531.i.i = call i64 @GetMagickResourceLimit(i32 noundef 6) #17, !dbg !3760
  %cmp.i532.i.i = icmp slt i64 %inc.i530.i.i, %call.i531.i.i, !dbg !3761
  br i1 %cmp.i532.i.i, label %for.body.i528.i.i, label %DestroyPixelThreadSet.exit.i.i, !dbg !3762, !llvm.loop !3770

DestroyPixelThreadSet.exit.i.i:                   ; preds = %for.inc.i.i.i, %for.end306.i.i
  %call5.i.i.i = call ptr @RelinquishMagickMemory(ptr noundef %retval.0.i563.i.i) #17, !dbg !3772
  call void @llvm.dbg.value(metadata ptr %call5.i.i.i, metadata !3300, metadata !DIExpression()) #17, !dbg !3758
  call void @llvm.dbg.value(metadata ptr undef, metadata !3228, metadata !DIExpression()) #17, !dbg !3256
  br label %if.end128, !dbg !3773

if.end.i:                                         ; preds = %land.lhs.true24
  %error.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, !dbg !3774
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %error.i, i32 noundef 0, i64 noundef 256) #17, !dbg !3775
  %x.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 20, !dbg !3776
  %columns.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3777
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x.i, i8 0, i64 16, i1 false) #17, !dbg !3778
  %84 = load i64, ptr %columns.i, align 8, !dbg !3777, !tbaa !1292
  %rows.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !3779
  %85 = load i64, ptr %rows.i, align 8, !dbg !3779, !tbaa !1294
  call void @llvm.dbg.value(metadata i64 %84, metadata !3095, metadata !DIExpression()) #17, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %85, metadata !3098, metadata !DIExpression()) #17, !dbg !3780
  %86 = tail call i64 @llvm.smax.i64(i64 %84, i64 %85) #17, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %86, metadata !3265, metadata !DIExpression()) #17, !dbg !3782
  call void @llvm.dbg.value(metadata i64 1, metadata !3266, metadata !DIExpression()) #17, !dbg !3782
  %cmp3.not3.i = icmp eq i64 %86, 0, !dbg !3783
  br i1 %cmp3.not3.i, label %for.end.i, label %for.body.i, !dbg !3786

for.body.i:                                       ; preds = %if.end.i, %for.body.i
  %depth.05.i = phi i64 [ %inc.i, %for.body.i ], [ 1, %if.end.i ]
  %i.04.i = phi i64 [ %shr.i, %for.body.i ], [ %86, %if.end.i ]
  call void @llvm.dbg.value(metadata i64 %depth.05.i, metadata !3266, metadata !DIExpression()) #17, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %i.04.i, metadata !3265, metadata !DIExpression()) #17, !dbg !3782
  %shr.i = ashr i64 %i.04.i, 1, !dbg !3787
  call void @llvm.dbg.value(metadata i64 %shr.i, metadata !3265, metadata !DIExpression()) #17, !dbg !3782
  %inc.i = add i64 %depth.05.i, 1, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !3266, metadata !DIExpression()) #17, !dbg !3782
  %cmp3.not.i = icmp ult i64 %i.04.i, 2, !dbg !3783
  br i1 %cmp3.not.i, label %for.end.i, label %for.body.i, !dbg !3786, !llvm.loop !3789

for.end.i:                                        ; preds = %for.body.i, %if.end.i
  %depth.0.lcssa.i = phi i64 [ 1, %if.end.i ], [ %inc.i, %for.body.i ], !dbg !3791
  %shl.i = shl nuw i64 1, %depth.0.lcssa.i, !dbg !3792
  call void @llvm.dbg.value(metadata i64 %84, metadata !3095, metadata !DIExpression()) #17, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %85, metadata !3098, metadata !DIExpression()) #17, !dbg !3794
  %cmp7.i = icmp slt i64 %shl.i, %86, !dbg !3796
  %inc9.i = zext i1 %cmp7.i to i64, !dbg !3797
  %spec.select.i = add i64 %depth.0.lcssa.i, %inc9.i, !dbg !3797
  call void @llvm.dbg.value(metadata i64 %spec.select.i, metadata !3266, metadata !DIExpression()) #17, !dbg !3782
  %offset.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 23, !dbg !3798
  store i64 0, ptr %offset.i, align 8, !dbg !3799, !tbaa !3800
  %mul.i = mul i64 %85, %84, !dbg !3801
  %span.i = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 24, !dbg !3802
  store i64 %mul.i, ptr %span.i, align 8, !dbg !3803, !tbaa !3804
  %exception.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3805
  %call13.i = tail call ptr @AcquireAuthenticCacheView(ptr noundef %image, ptr noundef nonnull %exception.i) #17, !dbg !3806
  call void @llvm.dbg.value(metadata ptr %call13.i, metadata !3263, metadata !DIExpression()) #17, !dbg !3782
  %cmp14.i = icmp ugt i64 %spec.select.i, 1, !dbg !3807
  br i1 %cmp14.i, label %if.then15.i, label %if.end16.i, !dbg !3809

if.then15.i:                                      ; preds = %for.end.i
  %sub.i = add i64 %spec.select.i, -1, !dbg !3810
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %call13.i, ptr noundef nonnull %cube_info, i64 noundef %sub.i, i32 noundef 2) #17, !dbg !3811
  br label %if.end16.i, !dbg !3811

if.end16.i:                                       ; preds = %if.then15.i, %for.end.i
  %call17.i = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %call13.i, ptr noundef nonnull %cube_info, i32 noundef 0) #17, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %call17.i, metadata !3264, metadata !DIExpression()) #17, !dbg !3782
  %call18.i = tail call ptr @DestroyCacheView(ptr noundef %call13.i) #17, !dbg !3813
  call void @llvm.dbg.value(metadata ptr %call18.i, metadata !3263, metadata !DIExpression()) #17, !dbg !3782
  br label %if.end128, !dbg !3814

if.else29:                                        ; preds = %land.lhs.true24, %if.end19
  call void @llvm.dbg.value(metadata i32 1, metadata !3155, metadata !DIExpression()), !dbg !3815
  %exception31 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3816
  call void @llvm.dbg.value(metadata ptr %exception31, metadata !3154, metadata !DIExpression()), !dbg !3815
  %call32 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception31) #17, !dbg !3817
  call void @llvm.dbg.value(metadata ptr %call32, metadata !3151, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i64 0, metadata !3150, metadata !DIExpression()), !dbg !3182
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %87 = load i64, ptr %rows, align 8, !dbg !3818, !tbaa !1294
  %cmp33344 = icmp sgt i64 %87, 0, !dbg !3819
  br i1 %cmp33344, label %for.body.lr.ph, label %for.end126, !dbg !3820

for.body.lr.ph:                                   ; preds = %if.else29
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %88 = getelementptr inbounds i8, ptr %cube, i64 456
  %associate_alpha.i = getelementptr inbounds %struct._CubeInfo, ptr %cube, i64 0, i32 19
  %target = getelementptr inbounds %struct._CubeInfo, ptr %cube, i64 0, i32 5
  %pixel.sroa.6.0.target.sroa_idx = getelementptr inbounds i8, ptr %target, i64 4
  %pixel.sroa.9.0.target.sroa_idx = getelementptr inbounds i8, ptr %target, i64 8
  %pixel.sroa.12.0.target.sroa_idx = getelementptr inbounds i8, ptr %target, i64 12
  %distance = getelementptr inbounds %struct._CubeInfo, ptr %cube, i64 0, i32 6
  %color_number = getelementptr inbounds %struct._CubeInfo, ptr %cube, i64 0, i32 11
  %quantize_info79 = getelementptr inbounds %struct._CubeInfo, ptr %cube, i64 0, i32 18
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !3820

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0346 = phi i64 [ 0, %for.body.lr.ph ], [ %inc125, %cleanup ]
  %status.0345 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0346, metadata !3150, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 %status.0345, metadata !3155, metadata !DIExpression()), !dbg !3815
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %cube) #17, !dbg !3821
  call void @llvm.dbg.declare(metadata ptr %cube, metadata !3156, metadata !DIExpression()), !dbg !3822
  %cmp34 = icmp eq i32 %status.0345, 0, !dbg !3823
  br i1 %cmp34, label %cleanup, label %if.end36, !dbg !3825

if.end36:                                         ; preds = %for.body
  %89 = load i64, ptr %columns, align 8, !dbg !3826, !tbaa !1292
  %call37 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call32, i64 noundef 0, i64 noundef %y.0346, i64 noundef %89, i64 noundef 1, ptr noundef nonnull %exception31) #20, !dbg !3827
  call void @llvm.dbg.value(metadata ptr %call37, metadata !3161, metadata !DIExpression()), !dbg !3828
  %cmp38 = icmp eq ptr %call37, null, !dbg !3829
  br i1 %cmp38, label %cleanup, label %if.end40, !dbg !3831

if.end40:                                         ; preds = %if.end36
  %call41 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call32) #17, !dbg !3832
  call void @llvm.dbg.value(metadata ptr %call41, metadata !3160, metadata !DIExpression()), !dbg !3828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %cube, ptr noundef nonnull align 8 dereferenceable(504) %cube_info, i64 504, i1 false), !dbg !3833, !tbaa.struct !3345
  call void @llvm.dbg.value(metadata i64 0, metadata !3162, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %call37, metadata !3161, metadata !DIExpression()), !dbg !3828
  %90 = load i64, ptr %columns, align 8, !dbg !3834, !tbaa !1292
  %cmp44340 = icmp sgt i64 %90, 0, !dbg !3835
  br i1 %cmp44340, label %for.cond46.preheader.lr.ph, label %for.end104, !dbg !3836

for.cond46.preheader.lr.ph:                       ; preds = %if.end40
  %cmp73.not = icmp eq ptr %call41, null
  br label %for.cond46.preheader, !dbg !3836

for.cond42.loopexit:                              ; preds = %for.body68, %if.end98.us, %for.body68.us331.preheader
  %.us-phi = phi ptr [ %uglygep, %for.body68.us331.preheader ], [ %incdec.ptr.us, %if.end98.us ], [ %incdec.ptr, %for.body68 ]
  call void @llvm.dbg.value(metadata i64 %add.lcssa, metadata !3162, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %.us-phi, metadata !3161, metadata !DIExpression()), !dbg !3828
  %91 = load i64, ptr %columns, align 8, !dbg !3834, !tbaa !1292
  %cmp44 = icmp slt i64 %add.lcssa, %91, !dbg !3835
  br i1 %cmp44, label %for.cond46.preheader, label %for.end104, !dbg !3836, !llvm.loop !3837

for.cond46.preheader:                             ; preds = %for.cond46.preheader.lr.ph, %for.cond42.loopexit
  %92 = phi i64 [ %90, %for.cond46.preheader.lr.ph ], [ %91, %for.cond42.loopexit ]
  %x.0342 = phi i64 [ 0, %for.cond46.preheader.lr.ph ], [ %add.lcssa, %for.cond42.loopexit ]
  %q.0341 = phi ptr [ %call37, %for.cond46.preheader.lr.ph ], [ %.us-phi, %for.cond42.loopexit ]
  call void @llvm.dbg.value(metadata i64 %x.0342, metadata !3162, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %q.0341, metadata !3161, metadata !DIExpression()), !dbg !3828
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 0, i32 1, !dbg !3839
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 0, i32 3, !dbg !3844
  call void @llvm.dbg.value(metadata i64 1, metadata !3163, metadata !DIExpression()), !dbg !3828
  %add311 = add nuw nsw i64 %x.0342, 1, !dbg !3845
  %cmp48312 = icmp slt i64 %add311, %92, !dbg !3846
  br i1 %cmp48312, label %for.body49.lr.ph, label %for.endthread-pre-split, !dbg !3847

for.body49.lr.ph:                                 ; preds = %for.cond46.preheader
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 0, i32 2
  %93 = load i16, ptr %red.i, align 2, !tbaa !1355
  %94 = sub i64 %92, %x.0342, !dbg !3847
  br label %for.body49, !dbg !3847

for.body49:                                       ; preds = %for.body49.lr.ph, %for.inc
  %add315 = phi i64 [ %add311, %for.body49.lr.ph ], [ %add, %for.inc ]
  %count.0313 = phi i64 [ 1, %for.body49.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %count.0313, metadata !3163, metadata !DIExpression()), !dbg !3828
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 %count.0313, !dbg !3848
  call void @llvm.dbg.value(metadata ptr %image, metadata !1577, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %q.0341, metadata !1582, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1583, metadata !DIExpression()), !dbg !3849
  %red1.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 %count.0313, i32 2, !dbg !3850
  %95 = load i16, ptr %red1.i, align 2, !dbg !3850, !tbaa !1355
  %cmp.not.i275 = icmp eq i16 %93, %95, !dbg !3851
  br i1 %cmp.not.i275, label %lor.lhs.false.i, label %for.endthread-pre-split, !dbg !3852

lor.lhs.false.i:                                  ; preds = %for.body49
  %96 = load i16, ptr %green.i, align 2, !dbg !3839, !tbaa !1359
  %green5.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 %count.0313, i32 1, !dbg !3853
  %97 = load i16, ptr %green5.i, align 2, !dbg !3853, !tbaa !1359
  %cmp7.not.i = icmp eq i16 %96, %97, !dbg !3854
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %for.endthread-pre-split, !dbg !3855

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %98 = load i16, ptr %q.0341, align 2, !dbg !3856, !tbaa !1363
  %99 = load i16, ptr %add.ptr, align 2, !dbg !3857, !tbaa !1363
  %cmp13.not.i = icmp eq i16 %98, %99, !dbg !3858
  br i1 %cmp13.not.i, label %if.end.i276, label %for.endthread-pre-split, !dbg !3859

if.end.i276:                                      ; preds = %lor.lhs.false9.i
  %100 = load i32, ptr %matte.i, align 8, !dbg !3860, !tbaa !1286
  %cmp15.not.i = icmp eq i32 %100, 0, !dbg !3861
  br i1 %cmp15.not.i, label %for.inc, label %land.lhs.true.i, !dbg !3862

land.lhs.true.i:                                  ; preds = %if.end.i276
  %101 = load i16, ptr %opacity.i, align 2, !dbg !3844, !tbaa !1367
  %opacity18.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 %count.0313, i32 3, !dbg !3863
  %102 = load i16, ptr %opacity18.i, align 2, !dbg !3863, !tbaa !1367
  %cmp20.not.i = icmp eq i16 %101, %102, !dbg !3864
  br i1 %cmp20.not.i, label %for.inc, label %for.end, !dbg !3865

for.inc:                                          ; preds = %land.lhs.true.i, %if.end.i276
  %inc = add nuw i64 %count.0313, 1, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3163, metadata !DIExpression()), !dbg !3828
  %add = add nuw nsw i64 %inc, %x.0342, !dbg !3845
  %exitcond.not = icmp eq i64 %inc, %94, !dbg !3846
  br i1 %exitcond.not, label %for.endthread-pre-split, label %for.body49, !dbg !3847, !llvm.loop !3867

for.endthread-pre-split:                          ; preds = %for.body49, %lor.lhs.false.i, %lor.lhs.false9.i, %for.inc, %for.cond46.preheader
  %count.0.lcssa.ph = phi i64 [ 1, %for.cond46.preheader ], [ %94, %for.inc ], [ %count.0313, %lor.lhs.false9.i ], [ %count.0313, %lor.lhs.false.i ], [ %count.0313, %for.body49 ]
  %add.lcssa.ph = phi i64 [ %add311, %for.cond46.preheader ], [ %92, %for.inc ], [ %add315, %lor.lhs.false9.i ], [ %add315, %lor.lhs.false.i ], [ %add315, %for.body49 ]
  %.pre.i.pr = load i16, ptr %opacity.i, align 2, !dbg !3869, !tbaa !1367
  br label %for.end, !dbg !3871

for.end:                                          ; preds = %land.lhs.true.i, %for.endthread-pre-split
  %.pre.i = phi i16 [ %.pre.i.pr, %for.endthread-pre-split ], [ %101, %land.lhs.true.i ], !dbg !3869
  %count.0.lcssa = phi i64 [ %count.0.lcssa.ph, %for.endthread-pre-split ], [ %count.0313, %land.lhs.true.i ], !dbg !3872
  %add.lcssa = phi i64 [ %add.lcssa.ph, %for.endthread-pre-split ], [ %add315, %land.lhs.true.i ], !dbg !3845
  %cube.val = load i32, ptr %88, align 8, !dbg !3871, !tbaa !2359
  call void @llvm.dbg.value(metadata ptr undef, metadata !2439, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata ptr %q.0341, metadata !2440, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata ptr undef, metadata !2441, metadata !DIExpression()), !dbg !3873
  %cmp.i = icmp eq i32 %cube.val, 0, !dbg !3874
  br i1 %cmp.i, label %entry.if.then_crit_edge.i, label %lor.lhs.false.i278, !dbg !3875

entry.if.then_crit_edge.i:                        ; preds = %for.end
  %phi.cast.i = uitofp i16 %.pre.i to float, !dbg !3875
  br label %if.then.i281, !dbg !3875

lor.lhs.false.i278:                               ; preds = %for.end
  %cmp1.i = icmp eq i16 %.pre.i, 0, !dbg !3876
  br i1 %cmp1.i, label %if.then.i281, label %if.end.i283, !dbg !3877

if.then.i281:                                     ; preds = %lor.lhs.false.i278, %entry.if.then_crit_edge.i
  %103 = phi float [ %phi.cast.i, %entry.if.then_crit_edge.i ], [ 0.000000e+00, %lor.lhs.false.i278 ]
  %red.i279 = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 0, i32 2, !dbg !3878
  %104 = load i16, ptr %red.i279, align 2, !dbg !3878, !tbaa !1355
  %conv3.i = uitofp i16 %104 to float, !dbg !3879
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3880
  %105 = load i16, ptr %green.i, align 2, !dbg !3881, !tbaa !1359
  %conv5.i = uitofp i16 %105 to float, !dbg !3882
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !3880
  %106 = load i16, ptr %q.0341, align 2, !dbg !3883, !tbaa !1363
  %conv7.i = uitofp i16 %106 to float, !dbg !3884
  call void @llvm.dbg.value(metadata float %conv7.i, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !3880
  br label %AssociateAlphaPixel.exit, !dbg !3885

if.end.i283:                                      ; preds = %lor.lhs.false.i278
  %107 = xor i16 %.pre.i, -1, !dbg !3886
  %conv14.i = uitofp i16 %107 to double, !dbg !3887
  %mul.i282 = fmul double %conv14.i, 0x3EF0001000100010, !dbg !3888
  %conv15.i = fptrunc double %mul.i282 to float, !dbg !3889
  call void @llvm.dbg.value(metadata float %conv15.i, metadata !2442, metadata !DIExpression()), !dbg !3873
  %red16.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0341, i64 0, i32 2, !dbg !3890
  %108 = load i16, ptr %red16.i, align 2, !dbg !3890, !tbaa !1355
  %conv18.i = uitofp i16 %108 to float, !dbg !3890
  %mul19.i = fmul float %conv15.i, %conv18.i, !dbg !3891
  call void @llvm.dbg.value(metadata float %mul19.i, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3880
  %109 = load i16, ptr %green.i, align 2, !dbg !3892, !tbaa !1359
  %conv23.i = uitofp i16 %109 to float, !dbg !3892
  %mul24.i = fmul float %conv15.i, %conv23.i, !dbg !3893
  call void @llvm.dbg.value(metadata float %mul24.i, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !3880
  %110 = load i16, ptr %q.0341, align 2, !dbg !3894, !tbaa !1363
  %conv28.i = uitofp i16 %110 to float, !dbg !3894
  %mul29.i = fmul float %conv15.i, %conv28.i, !dbg !3895
  call void @llvm.dbg.value(metadata float %mul29.i, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !3880
  %conv32.i = uitofp i16 %.pre.i to float, !dbg !3896
  br label %AssociateAlphaPixel.exit, !dbg !3897

AssociateAlphaPixel.exit:                         ; preds = %if.then.i281, %if.end.i283
  %pixel.sroa.9.0 = phi float [ %conv7.i, %if.then.i281 ], [ %mul29.i, %if.end.i283 ], !dbg !3873
  %pixel.sroa.6.0 = phi float [ %conv5.i, %if.then.i281 ], [ %mul24.i, %if.end.i283 ], !dbg !3873
  %pixel.sroa.0.0 = phi float [ %conv3.i, %if.then.i281 ], [ %mul19.i, %if.end.i283 ], !dbg !3873
  %conv32.sink.i = phi float [ %103, %if.then.i281 ], [ %conv32.i, %if.end.i283 ]
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.0, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3880
  call void @llvm.dbg.value(metadata float %pixel.sroa.6.0, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !3880
  call void @llvm.dbg.value(metadata float %pixel.sroa.9.0, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !3880
  call void @llvm.dbg.value(metadata float %conv32.sink.i, metadata !3164, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !3880
  %111 = load ptr, ptr %cube, align 8, !dbg !3898, !tbaa !2213
  call void @llvm.dbg.value(metadata ptr %111, metadata !3168, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 7, metadata !3173, metadata !DIExpression()), !dbg !3880
  %cmp1.i.i = fcmp ult float %pixel.sroa.0.0, 6.553500e+04
  %add.i.i = fadd float %pixel.sroa.0.0, 5.000000e-01
  %conv.i.i286 = fptoui float %add.i.i to i16
  %phi.cast.i287 = zext i16 %conv.i.i286 to i64
  %phi.bo.i = add nuw nsw i64 %phi.cast.i287, 128
  %cmp1.i38.i = fcmp ult float %pixel.sroa.6.0, 6.553500e+04
  %add.i40.i = fadd float %pixel.sroa.6.0, 5.000000e-01
  %conv.i41.i = fptoui float %add.i40.i to i16
  %phi.cast79.i = zext i16 %conv.i41.i to i64
  %phi.bo80.i = add nuw nsw i64 %phi.cast79.i, 128
  %cmp1.i52.i = fcmp ult float %pixel.sroa.9.0, 6.553500e+04
  %add.i54.i = fadd float %pixel.sroa.9.0, 5.000000e-01
  %conv.i55.i = fptoui float %add.i54.i to i16
  %phi.cast81.i = zext i16 %conv.i55.i to i64
  %phi.bo82.i = add nuw nsw i64 %phi.cast81.i, 128
  %cmp1.i66.i = fcmp ult float %conv32.sink.i, 6.553500e+04
  %add.i68.i = fadd float %conv32.sink.i, 5.000000e-01
  %conv.i69.i = fptoui float %add.i68.i to i16
  %phi.cast83.i = zext i16 %conv.i69.i to i64
  %phi.bo84.i = add nuw nsw i64 %phi.cast83.i, 128
  br label %if.end.i.i285, !dbg !3899

for.cond55:                                       ; preds = %ColorToNodeId.exit
  %dec = add nsw i64 %index.0326, -1, !dbg !3901
  call void @llvm.dbg.value(metadata i64 undef, metadata !3173, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr undef, metadata !3168, metadata !DIExpression()), !dbg !3880
  %cmp56 = icmp ugt i64 %index.0326, 1, !dbg !3903
  br i1 %cmp56, label %if.end.i.i285, label %for.end65, !dbg !3899, !llvm.loop !3904

if.end.i.i285:                                    ; preds = %AssociateAlphaPixel.exit, %for.cond55
  %index.0326 = phi i64 [ 7, %AssociateAlphaPixel.exit ], [ %dec, %for.cond55 ]
  %node_info.0325 = phi ptr [ %111, %AssociateAlphaPixel.exit ], [ %120, %for.cond55 ]
  call void @llvm.dbg.value(metadata i64 %index.0326, metadata !3173, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %node_info.0325, metadata !3168, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %cube, metadata !2477, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata ptr undef, metadata !2484, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %index.0326, metadata !2485, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.0, metadata !2489, metadata !DIExpression()), !dbg !3909
  br i1 %cmp1.i.i, label %if.end3.i.i, label %if.end.i39.i, !dbg !3911

if.end3.i.i:                                      ; preds = %if.end.i.i285
  br label %if.end.i39.i, !dbg !3912

if.end.i39.i:                                     ; preds = %if.end.i.i285, %if.end3.i.i
  %retval.0.i.i = phi i64 [ %phi.bo.i, %if.end3.i.i ], [ 65663, %if.end.i.i285 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !3913
  %shr.i.i = lshr i64 %retval.0.i.i, 8, !dbg !3915
  %sub.i.i = sub nsw i64 %retval.0.i.i, %shr.i.i, !dbg !3916
  %112 = trunc i64 %sub.i.i to i32, !dbg !3917
  %113 = lshr i32 %112, 8, !dbg !3917
  %conv.i = and i32 %113, 255, !dbg !3918
  %sh_prom.i = trunc i64 %index.0326 to i32, !dbg !3919
  %shr.i288 = lshr i32 %conv.i, %sh_prom.i, !dbg !3919
  %and.i = and i32 %shr.i288, 1, !dbg !3920
  call void @llvm.dbg.value(metadata float %pixel.sroa.6.0, metadata !2489, metadata !DIExpression()), !dbg !3921
  br i1 %cmp1.i38.i, label %if.end3.i42.i, label %if.end.i53.i, !dbg !3923

if.end3.i42.i:                                    ; preds = %if.end.i39.i
  br label %if.end.i53.i, !dbg !3924

if.end.i53.i:                                     ; preds = %if.end.i39.i, %if.end3.i42.i
  %retval.0.i43.i = phi i64 [ %phi.bo80.i, %if.end3.i42.i ], [ 65663, %if.end.i39.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !3925
  %shr.i47.i = lshr i64 %retval.0.i43.i, 8, !dbg !3927
  %sub.i48.i = sub nsw i64 %retval.0.i43.i, %shr.i47.i, !dbg !3928
  %114 = trunc i64 %sub.i48.i to i32, !dbg !3929
  %115 = lshr i32 %114, 8, !dbg !3929
  %conv4.i = and i32 %115, 255, !dbg !3930
  %shr6.i = lshr i32 %conv4.i, %sh_prom.i, !dbg !3931
  %and7.i = shl nuw nsw i32 %shr6.i, 1, !dbg !3932
  %shl.i290 = and i32 %and7.i, 2, !dbg !3932
  %or.i = or i32 %shl.i290, %and.i, !dbg !3933
  call void @llvm.dbg.value(metadata float %pixel.sroa.9.0, metadata !2489, metadata !DIExpression()), !dbg !3934
  br i1 %cmp1.i52.i, label %if.end3.i56.i, label %ClampPixel.exit58.i, !dbg !3936

if.end3.i56.i:                                    ; preds = %if.end.i53.i
  br label %ClampPixel.exit58.i, !dbg !3937

ClampPixel.exit58.i:                              ; preds = %if.end3.i56.i, %if.end.i53.i
  %retval.0.i57.i = phi i64 [ %phi.bo82.i, %if.end3.i56.i ], [ 65663, %if.end.i53.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !3938
  %shr.i61.i = lshr i64 %retval.0.i57.i, 8, !dbg !3940
  %sub.i62.i = sub nsw i64 %retval.0.i57.i, %shr.i61.i, !dbg !3941
  %116 = trunc i64 %sub.i62.i to i32, !dbg !3942
  %117 = lshr i32 %116, 8, !dbg !3942
  %conv10.i = and i32 %117, 255, !dbg !3943
  %shr12.i = lshr i32 %conv10.i, %sh_prom.i, !dbg !3944
  %and13.i = shl nuw nsw i32 %shr12.i, 2, !dbg !3945
  %shl14.i = and i32 %and13.i, 4, !dbg !3945
  %or15.i = or i32 %or.i, %shl14.i, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %or15.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3906
  br i1 %cmp.i, label %ColorToNodeId.exit, label %if.end.i67.i, !dbg !3947

if.end.i67.i:                                     ; preds = %ClampPixel.exit58.i
  call void @llvm.dbg.value(metadata float %conv32.sink.i, metadata !2489, metadata !DIExpression()), !dbg !3948
  br i1 %cmp1.i66.i, label %if.end3.i70.i, label %ClampPixel.exit72.i, !dbg !3950

if.end3.i70.i:                                    ; preds = %if.end.i67.i
  br label %ClampPixel.exit72.i, !dbg !3951

ClampPixel.exit72.i:                              ; preds = %if.end3.i70.i, %if.end.i67.i
  %retval.0.i71.i = phi i64 [ %phi.bo84.i, %if.end3.i70.i ], [ 65663, %if.end.i67.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !3952
  %shr.i75.i = lshr i64 %retval.0.i71.i, 8, !dbg !3954
  %sub.i76.i = sub nsw i64 %retval.0.i71.i, %shr.i75.i, !dbg !3955
  %118 = trunc i64 %sub.i76.i to i32, !dbg !3956
  %119 = lshr i32 %118, 8, !dbg !3956
  %conv20.i = and i32 %119, 255, !dbg !3957
  %shr22.i = lshr i32 %conv20.i, %sh_prom.i, !dbg !3958
  %and23.i = shl nuw nsw i32 %shr22.i, 3, !dbg !3959
  %shl24.i = and i32 %and23.i, 8, !dbg !3959
  %or2634.i = or i32 %shl24.i, %or15.i, !dbg !3960
  call void @llvm.dbg.value(metadata i32 %or2634.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3906
  br label %ColorToNodeId.exit, !dbg !3961

ColorToNodeId.exit:                               ; preds = %ClampPixel.exit58.i, %ClampPixel.exit72.i
  %id.0.in.i = phi i32 [ %or2634.i, %ClampPixel.exit72.i ], [ %or15.i, %ClampPixel.exit58.i ]
  %id.0.i = zext i32 %id.0.in.i to i64, !dbg !3906
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !2486, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !3172, metadata !DIExpression()), !dbg !3880
  %arrayidx = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0325, i64 0, i32 1, i64 %id.0.i, !dbg !3962
  %120 = load ptr, ptr %arrayidx, align 8, !dbg !3962, !tbaa !2575
  %cmp59 = icmp eq ptr %120, null, !dbg !3964
  call void @llvm.dbg.value(metadata ptr %120, metadata !3168, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %index.0326, metadata !3173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3880
  br i1 %cmp59, label %for.end65, label %for.cond55, !dbg !3965

for.end65:                                        ; preds = %ColorToNodeId.exit, %for.cond55
  %node_info.0.lcssa = phi ptr [ %node_info.0325, %ColorToNodeId.exit ], [ %120, %for.cond55 ], !dbg !3880
  store float %pixel.sroa.0.0, ptr %target, align 8, !dbg !3966, !tbaa.struct !3648
  store float %pixel.sroa.6.0, ptr %pixel.sroa.6.0.target.sroa_idx, align 4, !dbg !3966, !tbaa.struct !3649
  store float %pixel.sroa.9.0, ptr %pixel.sroa.9.0.target.sroa_idx, align 8, !dbg !3966, !tbaa.struct !3650
  store float %conv32.sink.i, ptr %pixel.sroa.12.0.target.sroa_idx, align 4, !dbg !3966, !tbaa.struct !3651
  store float 0x4210000000000000, ptr %distance, align 8, !dbg !3967, !tbaa !3653
  %121 = load ptr, ptr %node_info.0.lcssa, align 8, !dbg !3968, !tbaa !2224
  call fastcc void @ClosestColor(ptr noundef %image, ptr noundef nonnull %cube, ptr noundef %121), !dbg !3969
  %122 = load i64, ptr %color_number, align 8, !dbg !3970, !tbaa !3657
  call void @llvm.dbg.value(metadata i64 %122, metadata !3173, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 0, metadata !3171, metadata !DIExpression()), !dbg !3880
  %123 = load i32, ptr %image, align 8, !tbaa !1470
  %cmp69 = icmp ne i32 %123, 2
  %or.cond = select i1 %cmp69, i1 true, i1 %cmp73.not
  %124 = load ptr, ptr %quantize_info79, align 8, !tbaa !2229
  %measure_error = getelementptr inbounds %struct._QuantizeInfo, ptr %124, i64 0, i32 4
  %125 = load i32, ptr %measure_error, align 8, !tbaa !1064
  %cmp80 = icmp eq i32 %125, 0
  call void @llvm.dbg.value(metadata ptr %q.0341, metadata !3161, metadata !DIExpression()), !dbg !3828
  %add.ptr71 = getelementptr inbounds i16, ptr %call41, i64 %x.0342
  %conv = trunc i64 %122 to i16
  %126 = load i32, ptr %associate_alpha.i, align 8
  %cmp91.not = icmp eq i32 %126, 0
  br i1 %cmp80, label %for.end65.split.us, label %for.end65.split, !dbg !3971

for.end65.split.us:                               ; preds = %for.end65
  %127 = load ptr, ptr %colormap, align 8, !tbaa !1350
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 %122, i32 2
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 %122, i32 1
  %add.ptr89.us = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 %122
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 %122, i32 3
  %umax359 = call i64 @llvm.umax.i64(i64 %count.0.lcssa, i64 1), !dbg !3975
  br label %for.body68.us, !dbg !3975

for.body68.us:                                    ; preds = %if.end98.us, %for.end65.split.us
  %i.0329.us = phi i64 [ 0, %for.end65.split.us ], [ %inc100.us, %if.end98.us ]
  %q.1327.us = phi ptr [ %q.0341, %for.end65.split.us ], [ %incdec.ptr.us, %if.end98.us ]
  call void @llvm.dbg.value(metadata i64 %i.0329.us, metadata !3171, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %q.1327.us, metadata !3161, metadata !DIExpression()), !dbg !3828
  br i1 %or.cond, label %if.end78.us, label %if.then74.us, !dbg !3976

if.then74.us:                                     ; preds = %for.body68.us
  %add.ptr72.us = getelementptr inbounds i16, ptr %add.ptr71, i64 %i.0329.us, !dbg !3977
  store i16 %conv, ptr %add.ptr72.us, align 2, !dbg !3977, !tbaa !1378
  br label %if.end78.us, !dbg !3977

if.end78.us:                                      ; preds = %if.then74.us, %for.body68.us
  %128 = load i16, ptr %red.us, align 2, !dbg !3981, !tbaa !1355
  %red84.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1327.us, i64 0, i32 2, !dbg !3981
  store i16 %128, ptr %red84.us, align 2, !dbg !3981, !tbaa !1355
  %129 = load i16, ptr %green.us, align 2, !dbg !3981, !tbaa !1359
  %green87.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1327.us, i64 0, i32 1, !dbg !3981
  store i16 %129, ptr %green87.us, align 2, !dbg !3981, !tbaa !1359
  %130 = load i16, ptr %add.ptr89.us, align 2, !dbg !3981, !tbaa !1363
  store i16 %130, ptr %q.1327.us, align 2, !dbg !3981, !tbaa !1363
  br i1 %cmp91.not, label %if.end98.us, label %if.then93.us, !dbg !3985

if.then93.us:                                     ; preds = %if.end78.us
  %131 = load i16, ptr %opacity.us, align 2, !dbg !3986, !tbaa !1367
  %opacity96.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1327.us, i64 0, i32 3, !dbg !3986
  store i16 %131, ptr %opacity96.us, align 2, !dbg !3986, !tbaa !1367
  br label %if.end98.us, !dbg !3986

if.end98.us:                                      ; preds = %if.then93.us, %if.end78.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.1327.us, i64 1, !dbg !3988
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !3161, metadata !DIExpression()), !dbg !3828
  %inc100.us = add nuw nsw i64 %i.0329.us, 1, !dbg !3989
  call void @llvm.dbg.value(metadata i64 %inc100.us, metadata !3171, metadata !DIExpression()), !dbg !3880
  %exitcond360.not = icmp eq i64 %inc100.us, %umax359, !dbg !3990
  br i1 %exitcond360.not, label %for.cond42.loopexit, label %for.body68.us, !dbg !3975, !llvm.loop !3991

for.end65.split:                                  ; preds = %for.end65
  %umax358 = call i64 @llvm.umax.i64(i64 %count.0.lcssa, i64 1), !dbg !3975
  br i1 %or.cond, label %for.body68.us331.preheader, label %for.body68, !dbg !3976

for.body68.us331.preheader:                       ; preds = %for.end65.split
  %132 = shl i64 %umax358, 3, !dbg !3975
  call void @llvm.dbg.value(metadata i32 undef, metadata !3161, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3828
  call void @llvm.dbg.value(metadata i32 undef, metadata !3171, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3880
  %uglygep = getelementptr i8, ptr %q.0341, i64 %132, !dbg !3975
  br label %for.cond42.loopexit, !dbg !3834

for.body68:                                       ; preds = %for.end65.split, %for.body68
  %i.0329 = phi i64 [ %inc100, %for.body68 ], [ 0, %for.end65.split ]
  %q.1327 = phi ptr [ %incdec.ptr, %for.body68 ], [ %q.0341, %for.end65.split ]
  call void @llvm.dbg.value(metadata i64 %i.0329, metadata !3171, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %q.1327, metadata !3161, metadata !DIExpression()), !dbg !3828
  %add.ptr72 = getelementptr inbounds i16, ptr %add.ptr71, i64 %i.0329, !dbg !3977
  store i16 %conv, ptr %add.ptr72, align 2, !dbg !3977, !tbaa !1378
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.1327, i64 1, !dbg !3988
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3161, metadata !DIExpression()), !dbg !3828
  %inc100 = add nuw nsw i64 %i.0329, 1, !dbg !3989
  call void @llvm.dbg.value(metadata i64 %inc100, metadata !3171, metadata !DIExpression()), !dbg !3880
  %exitcond357.not = icmp eq i64 %inc100, %umax358, !dbg !3990
  br i1 %exitcond357.not, label %for.cond42.loopexit, label %for.body68, !dbg !3975, !llvm.loop !3991

for.end104:                                       ; preds = %for.cond42.loopexit, %if.end40
  %call105 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call32, ptr noundef nonnull %exception31) #20, !dbg !3993
  %cmp106 = icmp ne i32 %call105, 0, !dbg !3995
  %spec.select = zext i1 %cmp106 to i32, !dbg !3996
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3155, metadata !DIExpression()), !dbg !3815
  %133 = load ptr, ptr %progress_monitor, align 8, !dbg !3997, !tbaa !1402
  %cmp110.not = icmp eq ptr %133, null, !dbg !3998
  br i1 %cmp110.not, label %cleanup, label %SetImageProgress.exit, !dbg !3999

SetImageProgress.exit:                            ; preds = %for.end104
  %134 = load i64, ptr %rows, align 8, !dbg !4000, !tbaa !1294
  call void @llvm.dbg.value(metadata ptr %image, metadata !1386, metadata !DIExpression()) #17, !dbg !4001
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !1392, metadata !DIExpression()) #17, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %y.0346, metadata !1393, metadata !DIExpression()) #17, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %134, metadata !1394, metadata !DIExpression()) #17, !dbg !4001
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !4003
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1395, metadata !DIExpression()) #17, !dbg !4004
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #17, !dbg !4005
  %135 = load ptr, ptr %progress_monitor, align 8, !dbg !4006, !tbaa !1402
  %136 = load ptr, ptr %client_data.i, align 8, !dbg !4007, !tbaa !1410
  %call4.i = call i32 %135(ptr noundef nonnull %message.i, i64 noundef %y.0346, i64 noundef %134, ptr noundef %136) #17, !dbg !4008
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !4009
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !3174, metadata !DIExpression()), !dbg !4010
  %cmp115 = icmp eq i32 %call4.i, 0, !dbg !4011
  %spec.select274 = select i1 %cmp115, i32 0, i32 %spec.select, !dbg !4013
  call void @llvm.dbg.value(metadata i32 %spec.select274, metadata !3155, metadata !DIExpression()), !dbg !3815
  br label %cleanup, !dbg !4014

cleanup:                                          ; preds = %for.end104, %SetImageProgress.exit, %if.end36, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end36 ], [ %spec.select274, %SetImageProgress.exit ], [ %spec.select, %for.end104 ], !dbg !3815
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !3155, metadata !DIExpression()), !dbg !3815
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %cube) #17, !dbg !4015
  %inc125 = add nuw nsw i64 %y.0346, 1, !dbg !4016
  call void @llvm.dbg.value(metadata i64 %inc125, metadata !3150, metadata !DIExpression()), !dbg !3182
  %137 = load i64, ptr %rows, align 8, !dbg !3818, !tbaa !1294
  %cmp33 = icmp slt i64 %inc125, %137, !dbg !3819
  br i1 %cmp33, label %for.body, label %for.end126, !dbg !3820, !llvm.loop !4017

for.end126:                                       ; preds = %cleanup, %if.else29
  %call127 = call ptr @DestroyCacheView(ptr noundef %call32) #17, !dbg !4019
  call void @llvm.dbg.value(metadata ptr %call127, metadata !3151, metadata !DIExpression()), !dbg !3815
  br label %if.end128

if.end128:                                        ; preds = %if.end16.i, %DestroyPixelThreadSet.exit.i.i, %AcquirePixelThreadSet.exit.i.i, %if.then.i, %for.end126
  %138 = load ptr, ptr %quantize_info, align 8, !dbg !4020, !tbaa !2229
  %measure_error130 = getelementptr inbounds %struct._QuantizeInfo, ptr %138, i64 0, i32 4, !dbg !4022
  %139 = load i32, ptr %measure_error130, align 8, !dbg !4022, !tbaa !1064
  %cmp131.not = icmp eq i32 %139, 0, !dbg !4023
  br i1 %cmp131.not, label %if.end135, label %if.then133, !dbg !4024

if.then133:                                       ; preds = %if.end128
  %call134 = call i32 @GetImageQuantizeError(ptr noundef %image), !dbg !4025
  %.pre = load ptr, ptr %quantize_info, align 8, !dbg !4026, !tbaa !2229
  br label %if.end135, !dbg !4027

if.end135:                                        ; preds = %if.then133, %if.end128
  %140 = phi ptr [ %.pre, %if.then133 ], [ %138, %if.end128 ], !dbg !4026
  %141 = load i64, ptr %140, align 8, !dbg !4028, !tbaa !1050
  %cmp137 = icmp eq i64 %141, 2, !dbg !4029
  br i1 %cmp137, label %land.lhs.true139, label %if.end165, !dbg !4030

land.lhs.true139:                                 ; preds = %if.end135
  %colorspace141 = getelementptr inbounds %struct._QuantizeInfo, ptr %140, i64 0, i32 3, !dbg !4031
  %142 = load i32, ptr %colorspace141, align 4, !dbg !4031, !tbaa !1061
  %cmp142 = icmp eq i32 %142, 2, !dbg !4032
  br i1 %cmp142, label %if.then144, label %if.end165, !dbg !4033

if.then144:                                       ; preds = %land.lhs.true139
  call void @llvm.dbg.value(metadata ptr undef, metadata !3180, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64 0, metadata !3181, metadata !DIExpression()), !dbg !4034
  %143 = load i64, ptr %colors20, align 8, !tbaa !1243
  %cmp150348 = icmp sgt i64 %143, 0, !dbg !4035
  br i1 %cmp150348, label %for.body152.lr.ph, label %if.end165, !dbg !4038

for.body152.lr.ph:                                ; preds = %if.then144
  %colormap147 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !4039
  %144 = load ptr, ptr %colormap147, align 8, !dbg !4039, !tbaa !1350
  call void @llvm.dbg.value(metadata ptr %144, metadata !3180, metadata !DIExpression()), !dbg !4034
  %145 = getelementptr i8, ptr %image, i64 4
  %image.val = load i32, ptr %145, align 4, !tbaa !2069
  %cmp.i298 = icmp eq i32 %image.val, 2
  br i1 %cmp.i298, label %for.body152.us, label %for.body152, !dbg !4040

for.body152.us:                                   ; preds = %for.body152.lr.ph, %for.body152.us
  %i146.0351.us = phi i64 [ %inc163.us, %for.body152.us ], [ 0, %for.body152.lr.ph ]
  %q145.0349.us = phi ptr [ %incdec.ptr161.us, %for.body152.us ], [ %144, %for.body152.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i146.0351.us, metadata !3181, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %q145.0349.us, metadata !3180, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4047, metadata !DIExpression()) #17, !dbg !4051
  call void @llvm.dbg.value(metadata ptr %q145.0349.us, metadata !4048, metadata !DIExpression()) #17, !dbg !4051
  %red.i299.us = getelementptr inbounds %struct._PixelPacket, ptr %q145.0349.us, i64 0, i32 2, !dbg !4051
  %146 = load i16, ptr %red.i299.us, align 2, !dbg !4051, !tbaa !1355, !alias.scope !4052
  %.lobit = ashr i16 %146, 15, !dbg !4055
  call void @llvm.dbg.value(metadata i16 %.lobit, metadata !3177, metadata !DIExpression()), !dbg !4034
  store i16 %.lobit, ptr %red.i299.us, align 2, !dbg !4056, !tbaa !1355
  %green159.us = getelementptr inbounds %struct._PixelPacket, ptr %q145.0349.us, i64 0, i32 1, !dbg !4057
  store i16 %.lobit, ptr %green159.us, align 2, !dbg !4057, !tbaa !1359
  store i16 %.lobit, ptr %q145.0349.us, align 2, !dbg !4058, !tbaa !1363
  %incdec.ptr161.us = getelementptr inbounds %struct._PixelPacket, ptr %q145.0349.us, i64 1, !dbg !4059
  call void @llvm.dbg.value(metadata ptr %incdec.ptr161.us, metadata !3180, metadata !DIExpression()), !dbg !4034
  %inc163.us = add nuw nsw i64 %i146.0351.us, 1, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %inc163.us, metadata !3181, metadata !DIExpression()), !dbg !4034
  %exitcond362.not = icmp eq i64 %inc163.us, %143, !dbg !4035
  br i1 %exitcond362.not, label %if.end165, label %for.body152.us, !dbg !4038, !llvm.loop !4061

for.body152:                                      ; preds = %for.body152.lr.ph, %for.body152
  %i146.0351 = phi i64 [ %inc163, %for.body152 ], [ 0, %for.body152.lr.ph ]
  %q145.0349 = phi ptr [ %incdec.ptr161, %for.body152 ], [ %144, %for.body152.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i146.0351, metadata !3181, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %q145.0349, metadata !3180, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr undef, metadata !4047, metadata !DIExpression()) #17, !dbg !4051
  call void @llvm.dbg.value(metadata ptr %q145.0349, metadata !4048, metadata !DIExpression()) #17, !dbg !4051
  %red.i299 = getelementptr inbounds %struct._PixelPacket, ptr %q145.0349, i64 0, i32 2, !dbg !4051
  %147 = load i16, ptr %red.i299, align 2, !dbg !4051, !tbaa !1355, !alias.scope !4052
  %conv.i300 = uitofp i16 %147 to float, !dbg !4051
  %green.i301 = getelementptr inbounds %struct._PixelPacket, ptr %q145.0349, i64 0, i32 1, !dbg !4063
  %148 = load i16, ptr %green.i301, align 2, !dbg !4063, !tbaa !1359, !alias.scope !4052
  %conv5.i302 = uitofp i16 %148 to float, !dbg !4064
  %mul6.i = fmul float %conv5.i302, 0x3FE6E29300000000, !dbg !4065
  %149 = call float @llvm.fmuladd.f32(float %conv.i300, float 0x3FCB384FE0000000, float %mul6.i) #17, !dbg !4066
  %150 = load i16, ptr %q145.0349, align 2, !dbg !4067, !tbaa !1363, !alias.scope !4052
  %conv8.i = uitofp i16 %150 to float, !dbg !4068
  %151 = call float @llvm.fmuladd.f32(float %conv8.i, float 0x3FB27AC820000000, float %149) #17, !dbg !4069
  %cmp155 = fcmp uge float %151, 3.276750e+04, !dbg !4070
  %conv157 = sext i1 %cmp155 to i16, !dbg !4055
  call void @llvm.dbg.value(metadata i16 %conv157, metadata !3177, metadata !DIExpression()), !dbg !4034
  store i16 %conv157, ptr %red.i299, align 2, !dbg !4056, !tbaa !1355
  store i16 %conv157, ptr %green.i301, align 2, !dbg !4057, !tbaa !1359
  store i16 %conv157, ptr %q145.0349, align 2, !dbg !4058, !tbaa !1363
  %incdec.ptr161 = getelementptr inbounds %struct._PixelPacket, ptr %q145.0349, i64 1, !dbg !4059
  call void @llvm.dbg.value(metadata ptr %incdec.ptr161, metadata !3180, metadata !DIExpression()), !dbg !4034
  %inc163 = add nuw nsw i64 %i146.0351, 1, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %inc163, metadata !3181, metadata !DIExpression()), !dbg !4034
  %exitcond361.not = icmp eq i64 %inc163, %143, !dbg !4035
  br i1 %exitcond361.not, label %if.end165, label %for.body152, !dbg !4038, !llvm.loop !4061

if.end165:                                        ; preds = %for.body152, %for.body152.us, %if.then144, %land.lhs.true139, %if.end135
  %call166 = call i32 @SyncImage(ptr noundef %image) #17, !dbg !4071
  %152 = load ptr, ptr %quantize_info, align 8, !dbg !4072, !tbaa !2229
  %colorspace168 = getelementptr inbounds %struct._QuantizeInfo, ptr %152, i64 0, i32 3, !dbg !4074
  %153 = load i32, ptr %colorspace168, align 4, !dbg !4074, !tbaa !1061
  switch i32 %153, label %if.then176 [
    i32 0, label %cleanup179
    i32 12, label %cleanup179
  ], !dbg !4075

if.then176:                                       ; preds = %if.end165
  %call177 = call i32 @TransformImageColorspace(ptr noundef %image, i32 noundef 13) #17, !dbg !4076
  br label %cleanup179, !dbg !4077

cleanup179:                                       ; preds = %if.then176, %if.end165, %if.end165, %if.then14, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then14 ], [ 1, %if.end165 ], [ 1, %if.end165 ], [ 1, %if.then176 ], !dbg !3182
  ret i32 %retval.0, !dbg !4078
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DestroyCubeInfo(ptr noundef %cube_info) unnamed_addr #0 !dbg !4079 {
entry:
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4083, metadata !DIExpression()), !dbg !4085
  %node_queue = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 13
  %.pre = load ptr, ptr %node_queue, align 8, !dbg !4086, !tbaa !2207
  br label %do.body, !dbg !4088

do.body:                                          ; preds = %do.body, %entry
  %0 = phi ptr [ %1, %do.body ], [ %.pre, %entry ], !dbg !4086
  %next = getelementptr inbounds %struct._Nodes, ptr %0, i64 0, i32 1, !dbg !4089
  %1 = load ptr, ptr %next, align 8, !dbg !4089, !tbaa !2210
  call void @llvm.dbg.value(metadata ptr %1, metadata !4084, metadata !DIExpression()), !dbg !4085
  %2 = load ptr, ptr %0, align 8, !dbg !4090, !tbaa !2201
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef %2) #17, !dbg !4091
  %3 = load ptr, ptr %node_queue, align 8, !dbg !4092, !tbaa !2207
  store ptr %call, ptr %3, align 8, !dbg !4093, !tbaa !2201
  %call6 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #17, !dbg !4094
  store ptr %1, ptr %node_queue, align 8, !dbg !4095, !tbaa !2207
  %cmp.not = icmp eq ptr %1, null, !dbg !4096
  br i1 %cmp.not, label %do.end, label %do.body, !dbg !4097, !llvm.loop !4098

do.end:                                           ; preds = %do.body
  %memory_info = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 14, !dbg !4100
  %4 = load ptr, ptr %memory_info, align 8, !dbg !4100, !tbaa !2237
  %cmp10.not = icmp eq ptr %4, null, !dbg !4102
  br i1 %cmp10.not, label %if.end, label %if.then, !dbg !4103

if.then:                                          ; preds = %do.end
  %call12 = tail call ptr @RelinquishVirtualMemory(ptr noundef nonnull %4) #17, !dbg !4104
  store ptr %call12, ptr %memory_info, align 8, !dbg !4105, !tbaa !2237
  br label %if.end, !dbg !4106

if.end:                                           ; preds = %if.then, %do.end
  %quantize_info = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 18, !dbg !4107
  %5 = load ptr, ptr %quantize_info, align 8, !dbg !4107, !tbaa !2229
  call void @llvm.dbg.value(metadata ptr %5, metadata !1723, metadata !DIExpression()) #17, !dbg !4108
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.6) #17, !dbg !4110
  %signature.i = getelementptr inbounds %struct._QuantizeInfo, ptr %5, i64 0, i32 5, !dbg !4111
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !4112, !tbaa !1067
  %call1.i = tail call ptr @RelinquishMagickMemory(ptr noundef %5) #17, !dbg !4113
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1723, metadata !DIExpression()) #17, !dbg !4108
  store ptr %call1.i, ptr %quantize_info, align 8, !dbg !4114, !tbaa !2229
  %call16 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %cube_info) #17, !dbg !4115
  call void @llvm.dbg.value(metadata ptr %call16, metadata !4083, metadata !DIExpression()), !dbg !4085
  ret void, !dbg !4116
}

; Function Attrs: nounwind uwtable
define dso_local i32 @QuantizeImages(ptr noundef %quantize_info, ptr noundef %images) local_unnamed_addr #0 !dbg !4117 {
entry:
  %message.i127 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !4119, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %images, metadata !4120, metadata !DIExpression()), !dbg !4133
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !4134
  %0 = load i32, ptr %debug, align 8, !dbg !4134, !tbaa !1207
  %cmp.not = icmp eq i32 %0, 0, !dbg !4136
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4137

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !4138
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2807, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #17, !dbg !4139
  br label %if.end, !dbg !4140

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @GetNextImageInList(ptr noundef nonnull %images) #17, !dbg !4141
  %cmp2 = icmp eq ptr %call1, null, !dbg !4143
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !4144

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @QuantizeImage(ptr noundef %quantize_info, ptr noundef nonnull %images), !dbg !4145
  call void @llvm.dbg.value(metadata i32 %call4, metadata !4124, metadata !DIExpression()), !dbg !4133
  br label %cleanup, !dbg !4147

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !4124, metadata !DIExpression()), !dbg !4133
  %1 = load i64, ptr %quantize_info, align 8, !dbg !4148, !tbaa !1050
  call void @llvm.dbg.value(metadata i64 %1, metadata !4128, metadata !DIExpression()), !dbg !4133
  %cmp6 = icmp eq i64 %1, 0, !dbg !4149
  call void @llvm.dbg.value(metadata i64 undef, metadata !4128, metadata !DIExpression()), !dbg !4133
  %2 = tail call i64 @llvm.umin.i64(i64 %1, i64 65536), !dbg !4151
  %3 = select i1 %cmp6, i64 65536, i64 %2, !dbg !4151
  call void @llvm.dbg.value(metadata i64 %3, metadata !4128, metadata !DIExpression()), !dbg !4133
  %tree_depth = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 1, !dbg !4152
  %4 = load i64, ptr %tree_depth, align 8, !dbg !4152, !tbaa !1183
  call void @llvm.dbg.value(metadata i64 %4, metadata !4127, metadata !DIExpression()), !dbg !4133
  %cmp12 = icmp eq i64 %4, 0, !dbg !4153
  br i1 %cmp12, label %for.cond.preheader, label %if.end18, !dbg !4154

for.cond.preheader:                               ; preds = %if.end5
  call void @llvm.dbg.value(metadata i64 %3, metadata !4130, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 1, metadata !4127, metadata !DIExpression()), !dbg !4133
  %cmp14.not151 = icmp eq i64 %3, 0, !dbg !4156
  br i1 %cmp14.not151, label %for.end, label %for.body, !dbg !4159

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %colors.0153 = phi i64 [ %shr, %for.body ], [ %3, %for.cond.preheader ]
  %depth.0152 = phi i64 [ %inc, %for.body ], [ 1, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %colors.0153, metadata !4130, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %depth.0152, metadata !4127, metadata !DIExpression()), !dbg !4133
  %shr = lshr i64 %colors.0153, 2, !dbg !4160
  call void @llvm.dbg.value(metadata i64 %shr, metadata !4130, metadata !DIExpression()), !dbg !4155
  %inc = add nuw nsw i64 %depth.0152, 1, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4127, metadata !DIExpression()), !dbg !4133
  %cmp14.not = icmp ult i64 %colors.0153, 4, !dbg !4156
  br i1 %cmp14.not, label %for.end, label %for.body, !dbg !4159, !llvm.loop !4162

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %depth.0.lcssa = phi i64 [ 1, %for.cond.preheader ], [ %inc, %for.body ], !dbg !4164
  %dither = getelementptr inbounds %struct._QuantizeInfo, ptr %quantize_info, i64 0, i32 2, !dbg !4165
  %5 = load i32, ptr %dither, align 8, !dbg !4165, !tbaa !1055
  %cmp15.not = icmp ne i32 %5, 0, !dbg !4167
  %dec = sext i1 %cmp15.not to i64, !dbg !4168
  %spec.select = add i64 %depth.0.lcssa, %dec, !dbg !4168
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !4127, metadata !DIExpression()), !dbg !4133
  br label %if.end18, !dbg !4169

if.end18:                                         ; preds = %for.end, %if.end5
  %depth.2 = phi i64 [ %spec.select, %for.end ], [ %4, %if.end5 ], !dbg !4133
  call void @llvm.dbg.value(metadata i64 %depth.2, metadata !4127, metadata !DIExpression()), !dbg !4133
  %call19 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %quantize_info, i64 noundef %depth.2, i64 noundef %3), !dbg !4170
  call void @llvm.dbg.value(metadata ptr %call19, metadata !4121, metadata !DIExpression()), !dbg !4133
  %cmp20 = icmp eq ptr %call19, null, !dbg !4171
  br i1 %cmp20, label %if.then21, label %if.end25, !dbg !4173

if.then21:                                        ; preds = %if.end18
  %exception = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 58, !dbg !4174
  %filename22 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !4176
  %call24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2843, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename22) #17, !dbg !4177
  br label %cleanup, !dbg !4178

if.end25:                                         ; preds = %if.end18
  %call26 = tail call i64 @GetImageListLength(ptr noundef %images) #17, !dbg !4179
  call void @llvm.dbg.value(metadata i64 %call26, metadata !4129, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %images, metadata !4122, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 0, metadata !4126, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i32 0, metadata !4124, metadata !DIExpression()), !dbg !4133
  %cmp28.not154 = icmp eq ptr %images, null, !dbg !4180
  br i1 %cmp28.not154, label %if.end67, label %for.body29, !dbg !4183

for.body29:                                       ; preds = %if.end25, %if.end41
  %i.0157 = phi i64 [ %inc44, %if.end41 ], [ 0, %if.end25 ]
  %image.0155 = phi ptr [ %call42, %if.end41 ], [ %images, %if.end25 ]
  call void @llvm.dbg.value(metadata i64 %i.0157, metadata !4126, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %image.0155, metadata !4122, metadata !DIExpression()), !dbg !4133
  %client_data = getelementptr inbounds %struct._Image, ptr %image.0155, i64 0, i32 48, !dbg !4184
  %6 = load ptr, ptr %client_data, align 8, !dbg !4184, !tbaa !1410
  %call30 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %image.0155, ptr noundef null, ptr noundef %6) #17, !dbg !4186
  call void @llvm.dbg.value(metadata ptr %call30, metadata !4125, metadata !DIExpression()), !dbg !4133
  %exception31 = getelementptr inbounds %struct._Image, ptr %image.0155, i64 0, i32 58, !dbg !4187
  %call32 = call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %call19, ptr noundef nonnull %image.0155, ptr noundef nonnull %exception31), !dbg !4188
  call void @llvm.dbg.value(metadata i32 %call32, metadata !4124, metadata !DIExpression()), !dbg !4133
  %cmp33 = icmp eq i32 %call32, 0, !dbg !4189
  br i1 %cmp33, label %if.end67, label %if.end35, !dbg !4191

if.end35:                                         ; preds = %for.body29
  %7 = load ptr, ptr %client_data, align 8, !dbg !4192, !tbaa !1410
  %call37 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %image.0155, ptr noundef %call30, ptr noundef %7) #17, !dbg !4193
  call void @llvm.dbg.value(metadata ptr %image.0155, metadata !1386, metadata !DIExpression()) #17, !dbg !4194
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !1392, metadata !DIExpression()) #17, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %i.0157, metadata !1393, metadata !DIExpression()) #17, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %call26, metadata !1394, metadata !DIExpression()) #17, !dbg !4194
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !4196
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1395, metadata !DIExpression()) #17, !dbg !4197
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image.0155, i64 0, i32 47, !dbg !4198
  %8 = load ptr, ptr %progress_monitor.i, align 8, !dbg !4198, !tbaa !1402
  %cmp.i = icmp eq ptr %8, null, !dbg !4199
  br i1 %cmp.i, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !4200

SetImageProgress.exit.thread:                     ; preds = %if.end35
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !4201
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !4123, metadata !DIExpression()), !dbg !4133
  br label %if.end41, !dbg !4202

SetImageProgress.exit:                            ; preds = %if.end35
  %filename.i = getelementptr inbounds %struct._Image, ptr %image.0155, i64 0, i32 53, !dbg !4203
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i) #17, !dbg !4204
  %9 = load ptr, ptr %progress_monitor.i, align 8, !dbg !4205, !tbaa !1402
  %10 = load ptr, ptr %client_data, align 8, !dbg !4206, !tbaa !1410
  %call4.i = call i32 %9(ptr noundef nonnull %message.i, i64 noundef %i.0157, i64 noundef %call26, ptr noundef %10) #17, !dbg !4207
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !4201
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !4123, metadata !DIExpression()), !dbg !4133
  %cmp39 = icmp eq i32 %call4.i, 0, !dbg !4208
  br i1 %cmp39, label %if.then47, label %if.end41, !dbg !4202

if.end41:                                         ; preds = %SetImageProgress.exit.thread, %SetImageProgress.exit
  %call42 = call ptr @GetNextImageInList(ptr noundef nonnull %image.0155) #17, !dbg !4210
  call void @llvm.dbg.value(metadata ptr %call42, metadata !4122, metadata !DIExpression()), !dbg !4133
  %inc44 = add nuw nsw i64 %i.0157, 1, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %inc44, metadata !4126, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i32 %call32, metadata !4124, metadata !DIExpression()), !dbg !4133
  %cmp28.not = icmp eq ptr %call42, null, !dbg !4180
  br i1 %cmp28.not, label %if.then47, label %for.body29, !dbg !4183, !llvm.loop !4212

if.then47:                                        ; preds = %SetImageProgress.exit, %if.end41
  call fastcc void @ReduceImageColors(ptr noundef nonnull %images, ptr noundef nonnull %call19), !dbg !4214
  call void @llvm.dbg.value(metadata ptr %images, metadata !4122, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 0, metadata !4126, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i32 %call32, metadata !4124, metadata !DIExpression()), !dbg !4133
  br i1 %cmp28.not154, label %if.end67, label %for.body50, !dbg !4217

for.body50:                                       ; preds = %if.then47, %if.end62
  %i.1163 = phi i64 [ %inc65, %if.end62 ], [ 0, %if.then47 ]
  %image.1161 = phi ptr [ %call63, %if.end62 ], [ %images, %if.then47 ]
  call void @llvm.dbg.value(metadata i64 %i.1163, metadata !4126, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %image.1161, metadata !4122, metadata !DIExpression()), !dbg !4133
  %client_data51 = getelementptr inbounds %struct._Image, ptr %image.1161, i64 0, i32 48, !dbg !4219
  %11 = load ptr, ptr %client_data51, align 8, !dbg !4219, !tbaa !1410
  %call52 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %image.1161, ptr noundef null, ptr noundef %11) #17, !dbg !4222
  call void @llvm.dbg.value(metadata ptr %call52, metadata !4125, metadata !DIExpression()), !dbg !4133
  %call53 = call fastcc i32 @AssignImageColors(ptr noundef nonnull %image.1161, ptr noundef nonnull %call19), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %call53, metadata !4124, metadata !DIExpression()), !dbg !4133
  %cmp54 = icmp eq i32 %call53, 0, !dbg !4224
  br i1 %cmp54, label %if.end67, label %if.end56, !dbg !4226

if.end56:                                         ; preds = %for.body50
  %12 = load ptr, ptr %client_data51, align 8, !dbg !4227, !tbaa !1410
  %call58 = call ptr @SetImageProgressMonitor(ptr noundef nonnull %image.1161, ptr noundef %call52, ptr noundef %12) #17, !dbg !4228
  call void @llvm.dbg.value(metadata ptr %image.1161, metadata !1386, metadata !DIExpression()) #17, !dbg !4229
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !1392, metadata !DIExpression()) #17, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %i.1163, metadata !1393, metadata !DIExpression()) #17, !dbg !4229
  call void @llvm.dbg.value(metadata i64 %call26, metadata !1394, metadata !DIExpression()) #17, !dbg !4229
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i127) #17, !dbg !4231
  call void @llvm.dbg.declare(metadata ptr %message.i127, metadata !1395, metadata !DIExpression()) #17, !dbg !4232
  %progress_monitor.i128 = getelementptr inbounds %struct._Image, ptr %image.1161, i64 0, i32 47, !dbg !4233
  %13 = load ptr, ptr %progress_monitor.i128, align 8, !dbg !4233, !tbaa !1402
  %cmp.i129 = icmp eq ptr %13, null, !dbg !4234
  br i1 %cmp.i129, label %SetImageProgress.exit136.thread, label %SetImageProgress.exit136, !dbg !4235

SetImageProgress.exit136.thread:                  ; preds = %if.end56
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i127) #17, !dbg !4236
  call void @llvm.dbg.value(metadata i32 %call4.i133, metadata !4123, metadata !DIExpression()), !dbg !4133
  br label %if.end62, !dbg !4237

SetImageProgress.exit136:                         ; preds = %if.end56
  %filename.i130 = getelementptr inbounds %struct._Image, ptr %image.1161, i64 0, i32 53, !dbg !4238
  %call.i131 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i127, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename.i130) #17, !dbg !4239
  %14 = load ptr, ptr %progress_monitor.i128, align 8, !dbg !4240, !tbaa !1402
  %15 = load ptr, ptr %client_data51, align 8, !dbg !4241, !tbaa !1410
  %call4.i133 = call i32 %14(ptr noundef nonnull %message.i127, i64 noundef %i.1163, i64 noundef %call26, ptr noundef %15) #17, !dbg !4242
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i127) #17, !dbg !4236
  call void @llvm.dbg.value(metadata i32 %call4.i133, metadata !4123, metadata !DIExpression()), !dbg !4133
  %cmp60 = icmp eq i32 %call4.i133, 0, !dbg !4243
  br i1 %cmp60, label %if.end67, label %if.end62, !dbg !4237

if.end62:                                         ; preds = %SetImageProgress.exit136.thread, %SetImageProgress.exit136
  %call63 = call ptr @GetNextImageInList(ptr noundef nonnull %image.1161) #17, !dbg !4245
  call void @llvm.dbg.value(metadata ptr %call63, metadata !4122, metadata !DIExpression()), !dbg !4133
  %inc65 = add nuw nsw i64 %i.1163, 1, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %inc65, metadata !4126, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i32 1, metadata !4124, metadata !DIExpression()), !dbg !4133
  %cmp49.not = icmp eq ptr %call63, null, !dbg !4247
  br i1 %cmp49.not, label %if.end67, label %for.body50, !dbg !4217, !llvm.loop !4248

if.end67:                                         ; preds = %for.body29, %SetImageProgress.exit136, %for.body50, %if.end62, %if.end25, %if.then47
  %status.3 = phi i32 [ %call32, %if.then47 ], [ 0, %if.end25 ], [ 1, %SetImageProgress.exit136 ], [ 0, %for.body50 ], [ 1, %if.end62 ], [ 0, %for.body29 ], !dbg !4133
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !4124, metadata !DIExpression()), !dbg !4133
  call fastcc void @DestroyCubeInfo(ptr noundef nonnull %call19), !dbg !4250
  br label %cleanup, !dbg !4251

cleanup:                                          ; preds = %if.end67, %if.then21, %if.then3
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ 0, %if.then21 ], [ %status.3, %if.end67 ], !dbg !4133
  ret i32 %retval.0, !dbg !4252
}

declare !dbg !4253 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #4

declare !dbg !4257 i64 @GetImageListLength(ptr noundef) local_unnamed_addr #4

declare !dbg !4260 ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @RemapImage(ptr noundef %quantize_info, ptr noundef %image, ptr noundef %remap_image) local_unnamed_addr #0 !dbg !4264 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !4268, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %image, metadata !4269, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %remap_image, metadata !4270, metadata !DIExpression()), !dbg !4273
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4274
  %0 = load i32, ptr %debug, align 8, !dbg !4274, !tbaa !1207
  %cmp.not = icmp eq i32 %0, 0, !dbg !4276
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4277

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4278
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3168, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #17, !dbg !4279
  br label %if.end, !dbg !4280

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %quantize_info, align 8, !dbg !4281, !tbaa !1050
  %call1 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %quantize_info, i64 noundef 8, i64 noundef %1), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %call1, metadata !4271, metadata !DIExpression()), !dbg !4273
  %cmp2 = icmp eq ptr %call1, null, !dbg !4283
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !4273
  br i1 %cmp2, label %if.then5, label %if.end10, !dbg !4285

if.then5:                                         ; preds = %if.end
  %filename6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4286
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3175, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename6) #17, !dbg !4286
  br label %cleanup, !dbg !4286

if.end10:                                         ; preds = %if.end
  %call12 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %call1, ptr noundef %remap_image, ptr noundef nonnull %exception), !dbg !4289
  call void @llvm.dbg.value(metadata i32 %call12, metadata !4272, metadata !DIExpression()), !dbg !4273
  %cmp13.not = icmp eq i32 %call12, 0, !dbg !4290
  br i1 %cmp13.not, label %if.end18, label %if.then14, !dbg !4292

if.then14:                                        ; preds = %if.end10
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %call1, i64 0, i32 1, !dbg !4293
  %2 = load i64, ptr %colors, align 8, !dbg !4293, !tbaa !2616
  %quantize_info15 = getelementptr inbounds %struct._CubeInfo, ptr %call1, i64 0, i32 18, !dbg !4295
  %3 = load ptr, ptr %quantize_info15, align 8, !dbg !4295, !tbaa !2229
  store i64 %2, ptr %3, align 8, !dbg !4296, !tbaa !1050
  %call17 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %image, ptr noundef nonnull %call1), !dbg !4297
  call void @llvm.dbg.value(metadata i32 %call17, metadata !4272, metadata !DIExpression()), !dbg !4273
  br label %if.end18, !dbg !4298

if.end18:                                         ; preds = %if.then14, %if.end10
  %status.0 = phi i32 [ %call17, %if.then14 ], [ 0, %if.end10 ], !dbg !4273
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !4272, metadata !DIExpression()), !dbg !4273
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %call1), !dbg !4299
  br label %cleanup, !dbg !4300

cleanup:                                          ; preds = %if.then5, %if.end18
  %retval.0 = phi i32 [ %status.0, %if.end18 ], [ 0, %if.then5 ], !dbg !4273
  ret i32 %retval.0, !dbg !4301
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RemapImages(ptr noundef %quantize_info, ptr noundef %images, ptr noundef %remap_image) local_unnamed_addr #0 !dbg !4302 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantize_info, metadata !4304, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata ptr %images, metadata !4305, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata ptr %remap_image, metadata !4306, metadata !DIExpression()), !dbg !4310
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !4311
  %0 = load i32, ptr %debug, align 8, !dbg !4311, !tbaa !1207
  %cmp.not = icmp eq i32 %0, 0, !dbg !4313
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4314

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !4315
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3232, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #17, !dbg !4316
  br label %if.end, !dbg !4317

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %images, metadata !4308, metadata !DIExpression()), !dbg !4310
  %cmp1 = icmp eq ptr %remap_image, null, !dbg !4318
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !4320

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @QuantizeImages(ptr noundef %quantize_info, ptr noundef nonnull %images), !dbg !4321
  call void @llvm.dbg.value(metadata i32 %call3, metadata !4309, metadata !DIExpression()), !dbg !4310
  br label %cleanup, !dbg !4323

if.end4:                                          ; preds = %if.end
  %1 = load i64, ptr %quantize_info, align 8, !dbg !4324, !tbaa !1050
  %call5 = tail call fastcc ptr @GetCubeInfo(ptr noundef nonnull %quantize_info, i64 noundef 8, i64 noundef %1), !dbg !4325
  call void @llvm.dbg.value(metadata ptr %call5, metadata !4307, metadata !DIExpression()), !dbg !4310
  %cmp6 = icmp eq ptr %call5, null, !dbg !4326
  %exception = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 58, !dbg !4310
  br i1 %cmp6, label %if.then9, label %if.end14, !dbg !4328

if.then9:                                         ; preds = %if.end4
  %filename10 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !4329
  %call12 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3249, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename10) #17, !dbg !4329
  br label %cleanup, !dbg !4329

if.end14:                                         ; preds = %if.end4
  %call16 = tail call fastcc i32 @ClassifyImageColors(ptr noundef nonnull %call5, ptr noundef nonnull %remap_image, ptr noundef nonnull %exception), !dbg !4332
  call void @llvm.dbg.value(metadata i32 %call16, metadata !4309, metadata !DIExpression()), !dbg !4310
  %cmp17.not = icmp eq i32 %call16, 0, !dbg !4333
  br i1 %cmp17.not, label %if.end27, label %for.body.preheader, !dbg !4335

for.body.preheader:                               ; preds = %if.end14
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %call5, i64 0, i32 1, !dbg !4336
  %2 = load i64, ptr %colors, align 8, !dbg !4336, !tbaa !2616
  %quantize_info19 = getelementptr inbounds %struct._CubeInfo, ptr %call5, i64 0, i32 18, !dbg !4338
  %3 = load ptr, ptr %quantize_info19, align 8, !dbg !4338, !tbaa !2229
  store i64 %2, ptr %3, align 8, !dbg !4339, !tbaa !1050
  call void @llvm.dbg.value(metadata ptr %images, metadata !4308, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i32 %call16, metadata !4309, metadata !DIExpression()), !dbg !4310
  br label %for.body, !dbg !4340

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %image.052 = phi ptr [ %call26, %for.inc ], [ %images, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %image.052, metadata !4308, metadata !DIExpression()), !dbg !4310
  %call22 = tail call fastcc i32 @AssignImageColors(ptr noundef nonnull %image.052, ptr noundef nonnull %call5), !dbg !4342
  call void @llvm.dbg.value(metadata i32 %call22, metadata !4309, metadata !DIExpression()), !dbg !4310
  %cmp23 = icmp eq i32 %call22, 0, !dbg !4345
  br i1 %cmp23, label %if.end27, label %for.inc, !dbg !4347

for.inc:                                          ; preds = %for.body
  %call26 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image.052) #17, !dbg !4348
  call void @llvm.dbg.value(metadata i32 1, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata ptr %call26, metadata !4308, metadata !DIExpression()), !dbg !4310
  %cmp21.not = icmp eq ptr %call26, null, !dbg !4349
  br i1 %cmp21.not, label %if.end27, label %for.body, !dbg !4340, !llvm.loop !4350

if.end27:                                         ; preds = %for.body, %for.inc, %if.end14
  %status.1 = phi i32 [ 0, %if.end14 ], [ 0, %for.body ], [ 1, %for.inc ], !dbg !4310
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !4309, metadata !DIExpression()), !dbg !4310
  tail call fastcc void @DestroyCubeInfo(ptr noundef nonnull %call5), !dbg !4352
  br label %cleanup, !dbg !4353

cleanup:                                          ; preds = %if.then9, %if.end27, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %status.1, %if.end27 ], [ 0, %if.then9 ], !dbg !4310
  ret i32 %retval.0, !dbg !4354
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

declare !dbg !4355 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !4361 i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare !dbg !4365 ptr @AcquireVirtualMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare !dbg !4368 ptr @GetVirtualMemoryBlob(ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare !dbg !4373 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare !dbg !4376 i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @PruneLevel(ptr nocapture noundef %cube_info, ptr nocapture noundef readonly %node_info) unnamed_addr #9 !dbg !4379 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !4383, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4384, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !4385, metadata !DIExpression()), !dbg !4388
  %associate_alpha = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19, !dbg !4389
  %0 = load i32, ptr %associate_alpha, align 8, !dbg !4389, !tbaa !2359
  %cmp = icmp eq i32 %0, 0, !dbg !4390
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %cond, metadata !4387, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i64 0, metadata !4386, metadata !DIExpression()), !dbg !4388
  br label %for.body, !dbg !4392

for.body:                                         ; preds = %entry, %for.inc
  %i.01 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.01, metadata !4386, metadata !DIExpression()), !dbg !4388
  %arrayidx = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, i64 %i.01, !dbg !4394
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !4394, !tbaa !2575
  %cmp2.not = icmp eq ptr %1, null, !dbg !4397
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !4398

if.then:                                          ; preds = %for.body
  tail call fastcc void @PruneLevel(ptr noundef %cube_info, ptr noundef nonnull %1), !dbg !4399
  br label %for.inc, !dbg !4399

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.01, 1, !dbg !4400
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4386, metadata !DIExpression()), !dbg !4388
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !4401
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !4392, !llvm.loop !4402

for.end:                                          ; preds = %for.inc
  %level = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 7, !dbg !4404
  %2 = load i64, ptr %level, align 8, !dbg !4404, !tbaa !2611
  %depth = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 22, !dbg !4406
  %3 = load i64, ptr %depth, align 8, !dbg !4406, !tbaa !2167
  %cmp5 = icmp eq i64 %2, %3, !dbg !4407
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4408

if.then6:                                         ; preds = %for.end
  tail call fastcc void @PruneChild(ptr noundef nonnull %cube_info, ptr noundef nonnull %node_info), !dbg !4409
  br label %if.end7, !dbg !4409

if.end7:                                          ; preds = %if.then6, %for.end
  ret void, !dbg !4410
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @PruneToCubeDepth(ptr nocapture noundef %cube_info, ptr nocapture noundef readonly %node_info) unnamed_addr #9 !dbg !4411 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !4413, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4414, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !4415, metadata !DIExpression()), !dbg !4418
  %associate_alpha = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19, !dbg !4419
  %0 = load i32, ptr %associate_alpha, align 8, !dbg !4419, !tbaa !2359
  %cmp = icmp eq i32 %0, 0, !dbg !4420
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !4421
  call void @llvm.dbg.value(metadata i64 %cond, metadata !4417, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 0, metadata !4416, metadata !DIExpression()), !dbg !4418
  br label %for.body, !dbg !4422

for.body:                                         ; preds = %entry, %for.inc
  %i.01 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.01, metadata !4416, metadata !DIExpression()), !dbg !4418
  %arrayidx = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, i64 %i.01, !dbg !4424
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !4424, !tbaa !2575
  %cmp2.not = icmp eq ptr %1, null, !dbg !4427
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !4428

if.then:                                          ; preds = %for.body
  tail call fastcc void @PruneToCubeDepth(ptr noundef %cube_info, ptr noundef nonnull %1), !dbg !4429
  br label %for.inc, !dbg !4429

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.01, 1, !dbg !4430
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4416, metadata !DIExpression()), !dbg !4418
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !4431
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !4422, !llvm.loop !4432

for.end:                                          ; preds = %for.inc
  %level = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 7, !dbg !4434
  %2 = load i64, ptr %level, align 8, !dbg !4434, !tbaa !2611
  %depth = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 22, !dbg !4436
  %3 = load i64, ptr %depth, align 8, !dbg !4436, !tbaa !2167
  %cmp5 = icmp ugt i64 %2, %3, !dbg !4437
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4438

if.then6:                                         ; preds = %for.end
  tail call fastcc void @PruneChild(ptr noundef nonnull %cube_info, ptr noundef nonnull %node_info), !dbg !4439
  br label %if.end7, !dbg !4439

if.end7:                                          ; preds = %if.then6, %for.end
  ret void, !dbg !4440
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @PruneChild(ptr nocapture noundef %cube_info, ptr nocapture noundef readonly %node_info) unnamed_addr #9 !dbg !4441 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !4443, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4444, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !4445, metadata !DIExpression()), !dbg !4449
  %associate_alpha = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19, !dbg !4450
  %0 = load i32, ptr %associate_alpha, align 8, !dbg !4450, !tbaa !2359
  %cmp = icmp eq i32 %0, 0, !dbg !4451
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !4452
  call void @llvm.dbg.value(metadata i64 %cond, metadata !4448, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i64 0, metadata !4447, metadata !DIExpression()), !dbg !4449
  br label %for.body, !dbg !4453

for.body:                                         ; preds = %entry, %for.inc
  %i.01 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.01, metadata !4447, metadata !DIExpression()), !dbg !4449
  %arrayidx = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, i64 %i.01, !dbg !4455
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !4455, !tbaa !2575
  %cmp2.not = icmp eq ptr %1, null, !dbg !4458
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !4459

if.then:                                          ; preds = %for.body
  tail call fastcc void @PruneChild(ptr noundef %cube_info, ptr noundef nonnull %1), !dbg !4460
  br label %for.inc, !dbg !4460

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.01, 1, !dbg !4461
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4447, metadata !DIExpression()), !dbg !4449
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !4462
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !4453, !llvm.loop !4463

for.end:                                          ; preds = %for.inc
  %2 = load ptr, ptr %node_info, align 8, !dbg !4465, !tbaa !2224
  call void @llvm.dbg.value(metadata ptr %2, metadata !4446, metadata !DIExpression()), !dbg !4449
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 2, !dbg !4466
  %3 = load i64, ptr %number_unique, align 8, !dbg !4466, !tbaa !2661
  %number_unique6 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 2, !dbg !4467
  %4 = load i64, ptr %number_unique6, align 8, !dbg !4468, !tbaa !2661
  %add = add i64 %4, %3, !dbg !4468
  store i64 %add, ptr %number_unique6, align 8, !dbg !4468, !tbaa !2661
  %total_color = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, !dbg !4469
  %5 = load float, ptr %total_color, align 8, !dbg !4470, !tbaa !2670
  %total_color7 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, !dbg !4471
  %6 = load float, ptr %total_color7, align 8, !dbg !4472, !tbaa !2670
  %add9 = fadd float %5, %6, !dbg !4472
  store float %add9, ptr %total_color7, align 8, !dbg !4472, !tbaa !2670
  %green = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 1, !dbg !4473
  %7 = load float, ptr %green, align 4, !dbg !4473, !tbaa !2678
  %green12 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 1, !dbg !4474
  %8 = load float, ptr %green12, align 4, !dbg !4475, !tbaa !2678
  %add13 = fadd float %7, %8, !dbg !4475
  store float %add13, ptr %green12, align 4, !dbg !4475, !tbaa !2678
  %blue = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 2, !dbg !4476
  %9 = load float, ptr %blue, align 8, !dbg !4476, !tbaa !2686
  %blue16 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 2, !dbg !4477
  %10 = load float, ptr %blue16, align 8, !dbg !4478, !tbaa !2686
  %add17 = fadd float %9, %10, !dbg !4478
  store float %add17, ptr %blue16, align 8, !dbg !4478, !tbaa !2686
  %opacity = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 3, !dbg !4479
  %11 = load float, ptr %opacity, align 4, !dbg !4479, !tbaa !2698
  %opacity20 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 3, i32 3, !dbg !4480
  %12 = load float, ptr %opacity20, align 4, !dbg !4481, !tbaa !2698
  %add21 = fadd float %11, %12, !dbg !4481
  store float %add21, ptr %opacity20, align 4, !dbg !4481, !tbaa !2698
  %id = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 6, !dbg !4482
  %13 = load i64, ptr %id, align 8, !dbg !4482, !tbaa !2608
  %arrayidx23 = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 1, i64 %13, !dbg !4483
  store ptr null, ptr %arrayidx23, align 8, !dbg !4484, !tbaa !2575
  %nodes = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 9, !dbg !4485
  %14 = load i64, ptr %nodes, align 8, !dbg !4486, !tbaa !2217
  %dec = add i64 %14, -1, !dbg !4486
  store i64 %dec, ptr %nodes, align 8, !dbg !4486, !tbaa !2217
  ret void, !dbg !4487
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @DefineImageColormap(ptr nocapture noundef %image, ptr nocapture noundef %cube_info, ptr nocapture noundef %node_info) unnamed_addr #9 !dbg !4488 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4492, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4493, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !4494, metadata !DIExpression()), !dbg !4507
  %associate_alpha = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19, !dbg !4508
  %0 = load i32, ptr %associate_alpha, align 8, !dbg !4508, !tbaa !2359
  %cmp = icmp eq i32 %0, 0, !dbg !4509
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %cond, metadata !4496, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 0, metadata !4495, metadata !DIExpression()), !dbg !4507
  br label %for.body, !dbg !4511

for.body:                                         ; preds = %entry, %for.inc
  %i.095 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.095, metadata !4495, metadata !DIExpression()), !dbg !4507
  %arrayidx = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, i64 %i.095, !dbg !4513
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !4513, !tbaa !2575
  %cmp2.not = icmp eq ptr %1, null, !dbg !4516
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !4517

if.then:                                          ; preds = %for.body
  tail call fastcc void @DefineImageColormap(ptr noundef %image, ptr noundef %cube_info, ptr noundef nonnull %1), !dbg !4518
  br label %for.inc, !dbg !4519

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.095, 1, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4495, metadata !DIExpression()), !dbg !4507
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !4521
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !4511, !llvm.loop !4522

for.end:                                          ; preds = %for.inc
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 2, !dbg !4524
  %2 = load i64, ptr %number_unique, align 8, !dbg !4524, !tbaa !2661
  %cmp5.not = icmp eq i64 %2, 0, !dbg !4525
  br i1 %cmp5.not, label %if.end109, label %if.then6, !dbg !4526

if.then6:                                         ; preds = %for.end
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !4527
  %3 = load ptr, ptr %colormap, align 8, !dbg !4527, !tbaa !1350
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !4528
  %4 = load i64, ptr %colors, align 8, !dbg !4528, !tbaa !1243
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, !dbg !4529
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !4500, metadata !DIExpression()), !dbg !4530
  %conv = sitofp i64 %2 to float, !dbg !4531
  call void @llvm.dbg.value(metadata float %conv, metadata !4497, metadata !DIExpression()), !dbg !4530
  %conv8 = fpext float %conv to double, !dbg !4532
  call void @llvm.dbg.value(metadata double %conv8, metadata !2253, metadata !DIExpression()), !dbg !4533
  %cmp.i = icmp slt i64 %2, 0, !dbg !4535
  %cond.i = select i1 %cmp.i, double -1.000000e+00, double 1.000000e+00, !dbg !4536
  call void @llvm.dbg.value(metadata double %cond.i, metadata !2260, metadata !DIExpression()), !dbg !4533
  %mul.i = fmul double %cond.i, %conv8, !dbg !4537
  %cmp1.i = fcmp ult double %mul.i, 1.000000e-15, !dbg !4538
  br i1 %cmp1.i, label %if.end.i, label %if.then.i, !dbg !4539

if.then.i:                                        ; preds = %if.then6
  %div.i = fdiv double 1.000000e+00, %conv8, !dbg !4540
  br label %PerceptibleReciprocal.exit, !dbg !4541

if.end.i:                                         ; preds = %if.then6
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !4542
  br label %PerceptibleReciprocal.exit, !dbg !4543

PerceptibleReciprocal.exit:                       ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ %div2.i, %if.end.i ], !dbg !4533
  %conv10 = fptrunc double %retval.0.i to float, !dbg !4544
  call void @llvm.dbg.value(metadata float %conv10, metadata !4497, metadata !DIExpression()), !dbg !4530
  %5 = load i32, ptr %associate_alpha, align 8, !dbg !4545, !tbaa !2359
  %cmp12 = icmp eq i32 %5, 0, !dbg !4546
  %mul = fmul float %conv10, 6.553500e+04, !dbg !4547
  %total_color = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, !dbg !4547
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !4548

if.then14:                                        ; preds = %PerceptibleReciprocal.exit
  %6 = load float, ptr %total_color, align 8, !dbg !4549, !tbaa !2670
  %mul15 = fmul float %mul, %6, !dbg !4549
  call void @llvm.dbg.value(metadata float %mul15, metadata !4551, metadata !DIExpression()), !dbg !4554
  %cmp.i1 = fcmp ugt float %mul15, 0.000000e+00, !dbg !4556
  br i1 %cmp.i1, label %if.end.i3, label %ClampToQuantum.exit, !dbg !4558

if.end.i3:                                        ; preds = %if.then14
  %cmp1.i2 = fcmp ult float %mul15, 6.553500e+04, !dbg !4559
  br i1 %cmp1.i2, label %if.end3.i, label %ClampToQuantum.exit, !dbg !4561

if.end3.i:                                        ; preds = %if.end.i3
  %add.i = fadd float %mul15, 5.000000e-01, !dbg !4562
  %conv.i = fptoui float %add.i to i16, !dbg !4563
  br label %ClampToQuantum.exit, !dbg !4564

ClampToQuantum.exit:                              ; preds = %if.then14, %if.end.i3, %if.end3.i
  %retval.0.i4 = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.then14 ], [ -1, %if.end.i3 ], !dbg !4554
  %red17 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 2, !dbg !4549
  store i16 %retval.0.i4, ptr %red17, align 2, !dbg !4549, !tbaa !1355
  %green = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 1, !dbg !4565
  %7 = load float, ptr %green, align 4, !dbg !4565, !tbaa !2678
  %mul20 = fmul float %mul, %7, !dbg !4565
  call void @llvm.dbg.value(metadata float %mul20, metadata !4551, metadata !DIExpression()), !dbg !4566
  %cmp.i5 = fcmp ugt float %mul20, 0.000000e+00, !dbg !4568
  br i1 %cmp.i5, label %if.end.i7, label %ClampToQuantum.exit12, !dbg !4569

if.end.i7:                                        ; preds = %ClampToQuantum.exit
  %cmp1.i6 = fcmp ult float %mul20, 6.553500e+04, !dbg !4570
  br i1 %cmp1.i6, label %if.end3.i10, label %ClampToQuantum.exit12, !dbg !4571

if.end3.i10:                                      ; preds = %if.end.i7
  %add.i8 = fadd float %mul20, 5.000000e-01, !dbg !4572
  %conv.i9 = fptoui float %add.i8 to i16, !dbg !4573
  br label %ClampToQuantum.exit12, !dbg !4574

ClampToQuantum.exit12:                            ; preds = %ClampToQuantum.exit, %if.end.i7, %if.end3.i10
  %retval.0.i11 = phi i16 [ %conv.i9, %if.end3.i10 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i7 ], !dbg !4566
  %green22 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 1, !dbg !4565
  store i16 %retval.0.i11, ptr %green22, align 2, !dbg !4565, !tbaa !1359
  %blue = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 2, !dbg !4575
  %8 = load float, ptr %blue, align 8, !dbg !4575, !tbaa !2686
  %mul25 = fmul float %mul, %8, !dbg !4575
  call void @llvm.dbg.value(metadata float %mul25, metadata !4551, metadata !DIExpression()), !dbg !4576
  %cmp.i13 = fcmp ugt float %mul25, 0.000000e+00, !dbg !4578
  br i1 %cmp.i13, label %if.end.i15, label %ClampToQuantum.exit20, !dbg !4579

if.end.i15:                                       ; preds = %ClampToQuantum.exit12
  %cmp1.i14 = fcmp ult float %mul25, 6.553500e+04, !dbg !4580
  br i1 %cmp1.i14, label %if.end3.i18, label %ClampToQuantum.exit20, !dbg !4581

if.end3.i18:                                      ; preds = %if.end.i15
  %add.i16 = fadd float %mul25, 5.000000e-01, !dbg !4582
  %conv.i17 = fptoui float %add.i16 to i16, !dbg !4583
  br label %ClampToQuantum.exit20, !dbg !4584

ClampToQuantum.exit20:                            ; preds = %ClampToQuantum.exit12, %if.end.i15, %if.end3.i18
  %retval.0.i19 = phi i16 [ %conv.i17, %if.end3.i18 ], [ 0, %ClampToQuantum.exit12 ], [ -1, %if.end.i15 ], !dbg !4576
  store i16 %retval.0.i19, ptr %add.ptr, align 2, !dbg !4575, !tbaa !1363
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 3, !dbg !4585
  store i16 0, ptr %opacity, align 2, !dbg !4585, !tbaa !1367
  br label %if.end106, !dbg !4586

if.else:                                          ; preds = %PerceptibleReciprocal.exit
  %opacity31 = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 3, !dbg !4587
  %9 = load float, ptr %opacity31, align 4, !dbg !4587, !tbaa !2698
  %mul32 = fmul float %mul, %9, !dbg !4588
  call void @llvm.dbg.value(metadata float %mul32, metadata !4501, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata float %mul32, metadata !4551, metadata !DIExpression()), !dbg !4590
  %cmp.i21 = fcmp ugt float %mul32, 0.000000e+00, !dbg !4592
  br i1 %cmp.i21, label %if.end.i23, label %ClampToQuantum.exit28.thread, !dbg !4593

ClampToQuantum.exit28.thread:                     ; preds = %if.else
  %opacity3488 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 3, !dbg !4594
  store i16 0, ptr %opacity3488, align 2, !dbg !4594, !tbaa !1367
  br label %if.then39, !dbg !4595

if.end.i23:                                       ; preds = %if.else
  %cmp1.i22 = fcmp ult float %mul32, 6.553500e+04, !dbg !4596
  br i1 %cmp1.i22, label %ClampToQuantum.exit28, label %ClampToQuantum.exit28.thread90, !dbg !4597

ClampToQuantum.exit28.thread90:                   ; preds = %if.end.i23
  %opacity3492 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 3, !dbg !4594
  store i16 -1, ptr %opacity3492, align 2, !dbg !4594, !tbaa !1367
  br label %if.else58, !dbg !4595

ClampToQuantum.exit28:                            ; preds = %if.end.i23
  %add.i24 = fadd float %mul32, 5.000000e-01, !dbg !4598
  %conv.i25 = fptoui float %add.i24 to i16, !dbg !4599
  %opacity34 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 3, !dbg !4594
  store i16 %conv.i25, ptr %opacity34, align 2, !dbg !4594, !tbaa !1367
  %cmp37 = icmp eq i16 %conv.i25, 0, !dbg !4600
  br i1 %cmp37, label %if.then39, label %if.else58, !dbg !4595

if.then39:                                        ; preds = %ClampToQuantum.exit28.thread, %ClampToQuantum.exit28
  %10 = load float, ptr %total_color, align 8, !dbg !4601, !tbaa !2670
  %mul43 = fmul float %mul, %10, !dbg !4601
  call void @llvm.dbg.value(metadata float %mul43, metadata !4551, metadata !DIExpression()), !dbg !4603
  %cmp.i29 = fcmp ugt float %mul43, 0.000000e+00, !dbg !4605
  br i1 %cmp.i29, label %if.end.i31, label %ClampToQuantum.exit36, !dbg !4606

if.end.i31:                                       ; preds = %if.then39
  %cmp1.i30 = fcmp ult float %mul43, 6.553500e+04, !dbg !4607
  br i1 %cmp1.i30, label %if.end3.i34, label %ClampToQuantum.exit36, !dbg !4608

if.end3.i34:                                      ; preds = %if.end.i31
  %add.i32 = fadd float %mul43, 5.000000e-01, !dbg !4609
  %conv.i33 = fptoui float %add.i32 to i16, !dbg !4610
  br label %ClampToQuantum.exit36, !dbg !4611

ClampToQuantum.exit36:                            ; preds = %if.then39, %if.end.i31, %if.end3.i34
  %retval.0.i35 = phi i16 [ %conv.i33, %if.end3.i34 ], [ 0, %if.then39 ], [ -1, %if.end.i31 ], !dbg !4603
  %red45 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 2, !dbg !4601
  store i16 %retval.0.i35, ptr %red45, align 2, !dbg !4601, !tbaa !1355
  %green48 = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 1, !dbg !4612
  %11 = load float, ptr %green48, align 4, !dbg !4612, !tbaa !2678
  %mul49 = fmul float %mul, %11, !dbg !4612
  call void @llvm.dbg.value(metadata float %mul49, metadata !4551, metadata !DIExpression()), !dbg !4613
  %cmp.i37 = fcmp ugt float %mul49, 0.000000e+00, !dbg !4615
  br i1 %cmp.i37, label %if.end.i39, label %ClampToQuantum.exit44, !dbg !4616

if.end.i39:                                       ; preds = %ClampToQuantum.exit36
  %cmp1.i38 = fcmp ult float %mul49, 6.553500e+04, !dbg !4617
  br i1 %cmp1.i38, label %if.end3.i42, label %ClampToQuantum.exit44, !dbg !4618

if.end3.i42:                                      ; preds = %if.end.i39
  %add.i40 = fadd float %mul49, 5.000000e-01, !dbg !4619
  %conv.i41 = fptoui float %add.i40 to i16, !dbg !4620
  br label %ClampToQuantum.exit44, !dbg !4621

ClampToQuantum.exit44:                            ; preds = %ClampToQuantum.exit36, %if.end.i39, %if.end3.i42
  %retval.0.i43 = phi i16 [ %conv.i41, %if.end3.i42 ], [ 0, %ClampToQuantum.exit36 ], [ -1, %if.end.i39 ], !dbg !4613
  %green51 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 1, !dbg !4612
  store i16 %retval.0.i43, ptr %green51, align 2, !dbg !4612, !tbaa !1359
  %blue54 = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 2, !dbg !4622
  %12 = load float, ptr %blue54, align 8, !dbg !4622, !tbaa !2686
  %mul55 = fmul float %mul, %12, !dbg !4622
  call void @llvm.dbg.value(metadata float %mul55, metadata !4551, metadata !DIExpression()), !dbg !4623
  %cmp.i45 = fcmp ugt float %mul55, 0.000000e+00, !dbg !4625
  br i1 %cmp.i45, label %if.end.i47, label %ClampToQuantum.exit52, !dbg !4626

if.end.i47:                                       ; preds = %ClampToQuantum.exit44
  %cmp1.i46 = fcmp ult float %mul55, 6.553500e+04, !dbg !4627
  br i1 %cmp1.i46, label %if.end3.i50, label %ClampToQuantum.exit52, !dbg !4628

if.end3.i50:                                      ; preds = %if.end.i47
  %add.i48 = fadd float %mul55, 5.000000e-01, !dbg !4629
  %conv.i49 = fptoui float %add.i48 to i16, !dbg !4630
  br label %ClampToQuantum.exit52, !dbg !4631

ClampToQuantum.exit52:                            ; preds = %ClampToQuantum.exit44, %if.end.i47, %if.end3.i50
  %retval.0.i51 = phi i16 [ %conv.i49, %if.end3.i50 ], [ 0, %ClampToQuantum.exit44 ], [ -1, %if.end.i47 ], !dbg !4623
  store i16 %retval.0.i51, ptr %add.ptr, align 2, !dbg !4622, !tbaa !1363
  br label %if.end106, !dbg !4632

if.else58:                                        ; preds = %ClampToQuantum.exit28.thread90, %ClampToQuantum.exit28
  %retval.0.i2794 = phi i16 [ -1, %ClampToQuantum.exit28.thread90 ], [ %conv.i25, %ClampToQuantum.exit28 ]
  %conv60 = uitofp i16 %retval.0.i2794 to double, !dbg !4633
  %sub = fsub double 6.553500e+04, %conv60, !dbg !4634
  %mul61 = fmul double %sub, 0x3EF0001000100010, !dbg !4635
  call void @llvm.dbg.value(metadata double %mul61, metadata !4504, metadata !DIExpression()), !dbg !4636
  %cmp62 = fcmp olt double %mul61, 0.000000e+00, !dbg !4637
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !4639

if.then64:                                        ; preds = %if.else58
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !4504, metadata !DIExpression()), !dbg !4636
  br label %if.end65, !dbg !4640

if.end65:                                         ; preds = %if.then64, %if.else58
  %gamma.0 = phi double [ 0.000000e+00, %if.then64 ], [ %mul61, %if.else58 ], !dbg !4636
  call void @llvm.dbg.value(metadata double %gamma.0, metadata !4504, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata double %gamma.0, metadata !2253, metadata !DIExpression()), !dbg !4641
  %cmp.i53 = fcmp olt double %gamma.0, 0.000000e+00, !dbg !4643
  %cond.i54 = select i1 %cmp.i53, double -1.000000e+00, double 1.000000e+00, !dbg !4644
  call void @llvm.dbg.value(metadata double %cond.i54, metadata !2260, metadata !DIExpression()), !dbg !4641
  %mul.i55 = fmul double %gamma.0, %cond.i54, !dbg !4645
  %cmp1.i56 = fcmp ult double %mul.i55, 1.000000e-15, !dbg !4646
  br i1 %cmp1.i56, label %if.end.i60, label %if.then.i58, !dbg !4647

if.then.i58:                                      ; preds = %if.end65
  %div.i57 = fdiv double 1.000000e+00, %gamma.0, !dbg !4648
  br label %PerceptibleReciprocal.exit62, !dbg !4649

if.end.i60:                                       ; preds = %if.end65
  %div2.i59 = fdiv double %cond.i54, 1.000000e-15, !dbg !4650
  br label %PerceptibleReciprocal.exit62, !dbg !4651

PerceptibleReciprocal.exit62:                     ; preds = %if.then.i58, %if.end.i60
  %retval.0.i61 = phi double [ %div.i57, %if.then.i58 ], [ %div2.i59, %if.end.i60 ], !dbg !4641
  call void @llvm.dbg.value(metadata double %retval.0.i61, metadata !4504, metadata !DIExpression()), !dbg !4636
  %conv67 = fpext float %conv10 to double, !dbg !4652
  %mul68 = fmul double %retval.0.i61, %conv67, !dbg !4652
  %mul69 = fmul double %mul68, 6.553500e+04, !dbg !4652
  %13 = load float, ptr %total_color, align 8, !dbg !4652, !tbaa !2670
  %conv72 = fpext float %13 to double, !dbg !4652
  %mul73 = fmul double %mul69, %conv72, !dbg !4652
  %conv74 = fptrunc double %mul73 to float, !dbg !4652
  call void @llvm.dbg.value(metadata float %conv74, metadata !4551, metadata !DIExpression()), !dbg !4653
  %cmp.i63 = fcmp ugt float %conv74, 0.000000e+00, !dbg !4655
  br i1 %cmp.i63, label %if.end.i65, label %ClampToQuantum.exit70, !dbg !4656

if.end.i65:                                       ; preds = %PerceptibleReciprocal.exit62
  %cmp1.i64 = fcmp ult float %conv74, 6.553500e+04, !dbg !4657
  br i1 %cmp1.i64, label %if.end3.i68, label %ClampToQuantum.exit70, !dbg !4658

if.end3.i68:                                      ; preds = %if.end.i65
  %add.i66 = fadd float %conv74, 5.000000e-01, !dbg !4659
  %conv.i67 = fptoui float %add.i66 to i16, !dbg !4660
  br label %ClampToQuantum.exit70, !dbg !4661

ClampToQuantum.exit70:                            ; preds = %PerceptibleReciprocal.exit62, %if.end.i65, %if.end3.i68
  %retval.0.i69 = phi i16 [ %conv.i67, %if.end3.i68 ], [ 0, %PerceptibleReciprocal.exit62 ], [ -1, %if.end.i65 ], !dbg !4653
  %red76 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 2, !dbg !4652
  store i16 %retval.0.i69, ptr %red76, align 2, !dbg !4652, !tbaa !1355
  %green81 = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 1, !dbg !4662
  %14 = load float, ptr %green81, align 4, !dbg !4662, !tbaa !2678
  %conv82 = fpext float %14 to double, !dbg !4662
  %mul83 = fmul double %mul69, %conv82, !dbg !4662
  %conv84 = fptrunc double %mul83 to float, !dbg !4662
  call void @llvm.dbg.value(metadata float %conv84, metadata !4551, metadata !DIExpression()), !dbg !4663
  %cmp.i71 = fcmp ugt float %conv84, 0.000000e+00, !dbg !4665
  br i1 %cmp.i71, label %if.end.i73, label %ClampToQuantum.exit78, !dbg !4666

if.end.i73:                                       ; preds = %ClampToQuantum.exit70
  %cmp1.i72 = fcmp ult float %conv84, 6.553500e+04, !dbg !4667
  br i1 %cmp1.i72, label %if.end3.i76, label %ClampToQuantum.exit78, !dbg !4668

if.end3.i76:                                      ; preds = %if.end.i73
  %add.i74 = fadd float %conv84, 5.000000e-01, !dbg !4669
  %conv.i75 = fptoui float %add.i74 to i16, !dbg !4670
  br label %ClampToQuantum.exit78, !dbg !4671

ClampToQuantum.exit78:                            ; preds = %ClampToQuantum.exit70, %if.end.i73, %if.end3.i76
  %retval.0.i77 = phi i16 [ %conv.i75, %if.end3.i76 ], [ 0, %ClampToQuantum.exit70 ], [ -1, %if.end.i73 ], !dbg !4663
  %green86 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 1, !dbg !4662
  store i16 %retval.0.i77, ptr %green86, align 2, !dbg !4662, !tbaa !1359
  %blue91 = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, i32 2, !dbg !4672
  %15 = load float, ptr %blue91, align 8, !dbg !4672, !tbaa !2686
  %conv92 = fpext float %15 to double, !dbg !4672
  %mul93 = fmul double %mul69, %conv92, !dbg !4672
  %conv94 = fptrunc double %mul93 to float, !dbg !4672
  call void @llvm.dbg.value(metadata float %conv94, metadata !4551, metadata !DIExpression()), !dbg !4673
  %cmp.i79 = fcmp ugt float %conv94, 0.000000e+00, !dbg !4675
  br i1 %cmp.i79, label %if.end.i81, label %ClampToQuantum.exit86, !dbg !4676

if.end.i81:                                       ; preds = %ClampToQuantum.exit78
  %cmp1.i80 = fcmp ult float %conv94, 6.553500e+04, !dbg !4677
  br i1 %cmp1.i80, label %if.end3.i84, label %ClampToQuantum.exit86, !dbg !4678

if.end3.i84:                                      ; preds = %if.end.i81
  %add.i82 = fadd float %conv94, 5.000000e-01, !dbg !4679
  %conv.i83 = fptoui float %add.i82 to i16, !dbg !4680
  br label %ClampToQuantum.exit86, !dbg !4681

ClampToQuantum.exit86:                            ; preds = %ClampToQuantum.exit78, %if.end.i81, %if.end3.i84
  %retval.0.i85 = phi i16 [ %conv.i83, %if.end3.i84 ], [ 0, %ClampToQuantum.exit78 ], [ -1, %if.end.i81 ], !dbg !4673
  store i16 %retval.0.i85, ptr %add.ptr, align 2, !dbg !4672, !tbaa !1363
  %transparent_pixels = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 4, !dbg !4682
  %16 = load i64, ptr %transparent_pixels, align 8, !dbg !4682, !tbaa !3209
  %cmp98 = icmp ugt i64 %2, %16, !dbg !4684
  br i1 %cmp98, label %if.then100, label %if.end106, !dbg !4685

if.then100:                                       ; preds = %ClampToQuantum.exit86
  store i64 %2, ptr %transparent_pixels, align 8, !dbg !4686, !tbaa !3209
  %transparent_index = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 3, !dbg !4688
  store i64 %4, ptr %transparent_index, align 8, !dbg !4689, !tbaa !3212
  br label %if.end106, !dbg !4690

if.end106:                                        ; preds = %ClampToQuantum.exit52, %if.then100, %ClampToQuantum.exit86, %ClampToQuantum.exit20
  %inc108 = add i64 %4, 1, !dbg !4691
  store i64 %inc108, ptr %colors, align 8, !dbg !4691, !tbaa !1243
  %color_number = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 5, !dbg !4692
  store i64 %4, ptr %color_number, align 8, !dbg !4693, !tbaa !4694
  br label %if.end109, !dbg !4695

if.end109:                                        ; preds = %if.end106, %for.end
  ret void, !dbg !4696
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @ClosestColor(ptr nocapture noundef readonly %image, ptr nocapture noundef %cube_info, ptr nocapture noundef readonly %node_info) unnamed_addr #9 !dbg !4697 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4699, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4700, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !4701, metadata !DIExpression()), !dbg !4713
  %associate_alpha = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19, !dbg !4714
  %0 = load i32, ptr %associate_alpha, align 8, !dbg !4714, !tbaa !2359
  %cmp = icmp eq i32 %0, 0, !dbg !4715
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !4716
  call void @llvm.dbg.value(metadata i64 %cond, metadata !4703, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 0, metadata !4702, metadata !DIExpression()), !dbg !4713
  br label %for.body, !dbg !4717

for.body:                                         ; preds = %entry, %for.inc
  %i.0111 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.0111, metadata !4702, metadata !DIExpression()), !dbg !4713
  %arrayidx = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, i64 %i.0111, !dbg !4719
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !4719, !tbaa !2575
  %cmp2.not = icmp eq ptr %1, null, !dbg !4722
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !4723

if.then:                                          ; preds = %for.body
  tail call fastcc void @ClosestColor(ptr noundef %image, ptr noundef %cube_info, ptr noundef nonnull %1), !dbg !4724
  br label %for.inc, !dbg !4724

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.0111, 1, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4702, metadata !DIExpression()), !dbg !4713
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !4726
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !4717, !llvm.loop !4727

for.end:                                          ; preds = %for.inc
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 2, !dbg !4729
  %2 = load i64, ptr %number_unique, align 8, !dbg !4729, !tbaa !2661
  %cmp5.not = icmp eq i64 %2, 0, !dbg !4730
  br i1 %cmp5.not, label %if.end63, label %if.then6, !dbg !4731

if.then6:                                         ; preds = %for.end
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !4732
  %3 = load ptr, ptr %colormap, align 8, !dbg !4732, !tbaa !1350
  %color_number = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 5, !dbg !4733
  %4 = load i64, ptr %color_number, align 8, !dbg !4733, !tbaa !4694
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, !dbg !4734
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !4710, metadata !DIExpression()), !dbg !4735
  %target = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 5, !dbg !4736
  call void @llvm.dbg.value(metadata ptr %target, metadata !4711, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !4707, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !4708, metadata !DIExpression()), !dbg !4735
  %5 = load i32, ptr %associate_alpha, align 8, !dbg !4737, !tbaa !2359
  %cmp8.not = icmp eq i32 %5, 0, !dbg !4739
  br i1 %cmp8.not, label %if.end17, label %if.then9, !dbg !4740

if.then9:                                         ; preds = %if.then6
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 3, !dbg !4741
  %6 = load i16, ptr %opacity, align 2, !dbg !4741, !tbaa !1367
  %7 = xor i16 %6, -1, !dbg !4741
  %conv10 = uitofp i16 %7 to double, !dbg !4741
  %mul = fmul double %conv10, 0x3EF0001000100010, !dbg !4743
  %conv11 = fptrunc double %mul to float, !dbg !4744
  call void @llvm.dbg.value(metadata float %conv11, metadata !4707, metadata !DIExpression()), !dbg !4735
  %opacity12 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 5, i32 3, !dbg !4745
  %8 = load float, ptr %opacity12, align 4, !dbg !4745, !tbaa !3415
  %sub13 = fsub float 6.553500e+04, %8, !dbg !4745
  %conv14 = fpext float %sub13 to double, !dbg !4745
  %mul15 = fmul double %conv14, 0x3EF0001000100010, !dbg !4746
  %conv16 = fptrunc double %mul15 to float, !dbg !4747
  call void @llvm.dbg.value(metadata float %conv16, metadata !4708, metadata !DIExpression()), !dbg !4735
  br label %if.end17, !dbg !4748

if.end17:                                         ; preds = %if.then9, %if.then6
  %alpha.0 = phi float [ %conv11, %if.then9 ], [ 1.000000e+00, %if.then6 ], !dbg !4735
  %beta.0 = phi float [ %conv16, %if.then9 ], [ 1.000000e+00, %if.then6 ], !dbg !4735
  call void @llvm.dbg.value(metadata float %beta.0, metadata !4708, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata float %alpha.0, metadata !4707, metadata !DIExpression()), !dbg !4735
  %red = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 2, !dbg !4749
  %9 = load i16, ptr %red, align 2, !dbg !4749, !tbaa !1355
  %conv19 = uitofp i16 %9 to float, !dbg !4749
  %10 = load float, ptr %target, align 4, !dbg !4750, !tbaa !3398
  %11 = fneg float %beta.0, !dbg !4751
  %neg = fmul float %10, %11, !dbg !4751
  %12 = tail call float @llvm.fmuladd.f32(float %alpha.0, float %conv19, float %neg), !dbg !4751
  call void @llvm.dbg.value(metadata float %12, metadata !4704, metadata !DIExpression()), !dbg !4735
  %mul23 = fmul float %12, %12, !dbg !4752
  call void @llvm.dbg.value(metadata float %mul23, metadata !4709, metadata !DIExpression()), !dbg !4735
  %distance24 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 6, !dbg !4753
  %13 = load float, ptr %distance24, align 8, !dbg !4753, !tbaa !3653
  %cmp25 = fcmp ugt float %mul23, %13, !dbg !4755
  br i1 %cmp25, label %if.end63, label %if.then27, !dbg !4756

if.then27:                                        ; preds = %if.end17
  %green = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %4, i32 1, !dbg !4757
  %14 = load i16, ptr %green, align 2, !dbg !4757, !tbaa !1359
  %conv29 = uitofp i16 %14 to float, !dbg !4757
  %green31 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 5, i32 1, !dbg !4759
  %15 = load float, ptr %green31, align 4, !dbg !4759, !tbaa !3403
  %neg33 = fmul float %15, %11, !dbg !4760
  %16 = tail call float @llvm.fmuladd.f32(float %alpha.0, float %conv29, float %neg33), !dbg !4760
  call void @llvm.dbg.value(metadata float %16, metadata !4704, metadata !DIExpression()), !dbg !4735
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %mul23), !dbg !4761
  call void @llvm.dbg.value(metadata float %17, metadata !4709, metadata !DIExpression()), !dbg !4735
  %cmp36 = fcmp ugt float %17, %13, !dbg !4762
  br i1 %cmp36, label %if.end63, label %if.then38, !dbg !4764

if.then38:                                        ; preds = %if.then27
  %18 = load i16, ptr %add.ptr, align 2, !dbg !4765, !tbaa !1363
  %conv40 = uitofp i16 %18 to float, !dbg !4765
  %blue42 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 5, i32 2, !dbg !4767
  %19 = load float, ptr %blue42, align 4, !dbg !4767, !tbaa !3408
  %neg44 = fmul float %19, %11, !dbg !4768
  %20 = tail call float @llvm.fmuladd.f32(float %alpha.0, float %conv40, float %neg44), !dbg !4768
  call void @llvm.dbg.value(metadata float %20, metadata !4704, metadata !DIExpression()), !dbg !4735
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %17), !dbg !4769
  call void @llvm.dbg.value(metadata float %21, metadata !4709, metadata !DIExpression()), !dbg !4735
  %cmp47 = fcmp ugt float %21, %13, !dbg !4770
  br i1 %cmp47, label %if.end63, label %if.then49, !dbg !4772

if.then49:                                        ; preds = %if.then38
  %sub50 = fsub float %alpha.0, %beta.0, !dbg !4773
  call void @llvm.dbg.value(metadata float %sub50, metadata !4704, metadata !DIExpression()), !dbg !4735
  %22 = tail call float @llvm.fmuladd.f32(float %sub50, float %sub50, float %21), !dbg !4775
  call void @llvm.dbg.value(metadata float %22, metadata !4709, metadata !DIExpression()), !dbg !4735
  %cmp53 = fcmp ugt float %22, %13, !dbg !4776
  br i1 %cmp53, label %if.end63, label %if.then55, !dbg !4778

if.then55:                                        ; preds = %if.then49
  store float %22, ptr %distance24, align 8, !dbg !4779, !tbaa !3653
  %color_number58 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 11, !dbg !4781
  store i64 %4, ptr %color_number58, align 8, !dbg !4782, !tbaa !3657
  br label %if.end63, !dbg !4783

if.end63:                                         ; preds = %if.end17, %if.then38, %if.then55, %if.then49, %if.then27, %for.end
  ret void, !dbg !4784
}

declare !dbg !4785 i32 @SyncImage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %level, i32 noundef %direction) unnamed_addr #0 !dbg !4786 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4791, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata ptr %image_view, metadata !4792, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4793, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i64 %level, metadata !4794, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i32 %direction, metadata !4795, metadata !DIExpression()), !dbg !4796
  %cmp183 = icmp eq i64 %level, 1, !dbg !4797
  br i1 %cmp183, label %if.then, label %if.else, !dbg !4799

if.then:                                          ; preds = %tailrecurse.backedge, %entry
  %direction.tr.lcssa = phi i32 [ %direction, %entry ], [ %direction.tr.be, %tailrecurse.backedge ]
  %switch.tableidx = add i32 %direction.tr.lcssa, -2, !dbg !4800
  %0 = icmp ult i32 %switch.tableidx, 7, !dbg !4800
  br i1 %0, label %switch.hole_check, label %if.end, !dbg !4800

if.else:                                          ; preds = %entry, %tailrecurse.backedge
  %direction.tr185 = phi i32 [ %direction.tr.be, %tailrecurse.backedge ], [ %direction, %entry ]
  %level.tr184 = phi i64 [ %level.tr.be, %tailrecurse.backedge ], [ %level, %entry ]
  call void @llvm.dbg.value(metadata i32 %direction.tr185, metadata !4795, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i64 %level.tr184, metadata !4794, metadata !DIExpression()), !dbg !4796
  switch i32 %direction.tr185, label %if.end [
    i32 4, label %sw.bb15
    i32 6, label %sw.bb22
    i32 2, label %sw.bb30
    i32 8, label %sw.bb38
  ], !dbg !4801

sw.bb15:                                          ; preds = %if.else
  %sub = add i64 %level.tr184, -1, !dbg !4802
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub, i32 noundef 2), !dbg !4805
  %call16 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef 6), !dbg !4806
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub, i32 noundef 4), !dbg !4807
  %call18 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef 8), !dbg !4808
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub, i32 noundef 4), !dbg !4809
  br label %tailrecurse.backedge, !dbg !4810

tailrecurse.backedge:                             ; preds = %sw.bb15, %sw.bb22, %sw.bb30, %sw.bb38
  %level.tr.be = phi i64 [ %sub, %sw.bb15 ], [ %sub23, %sw.bb22 ], [ %sub31, %sw.bb30 ], [ %sub39, %sw.bb38 ]
  %direction.tr.be = phi i32 [ 8, %sw.bb15 ], [ 2, %sw.bb22 ], [ 6, %sw.bb30 ], [ 4, %sw.bb38 ]
  %call20 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef %direction.tr185), !dbg !4811
  call void @llvm.dbg.value(metadata ptr %image, metadata !4791, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata ptr %image_view, metadata !4792, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4793, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i64 %level.tr.be, metadata !4794, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i32 %direction.tr.be, metadata !4795, metadata !DIExpression()), !dbg !4796
  %cmp = icmp eq i64 %level.tr.be, 1, !dbg !4797
  br i1 %cmp, label %if.then, label %if.else, !dbg !4799

sw.bb22:                                          ; preds = %if.else
  %sub23 = add i64 %level.tr184, -1, !dbg !4812
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub23, i32 noundef 8), !dbg !4814
  %call24 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef 4), !dbg !4815
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub23, i32 noundef 6), !dbg !4816
  %call26 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef 2), !dbg !4817
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub23, i32 noundef 6), !dbg !4818
  br label %tailrecurse.backedge, !dbg !4819

sw.bb30:                                          ; preds = %if.else
  %sub31 = add i64 %level.tr184, -1, !dbg !4820
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub31, i32 noundef 4), !dbg !4822
  %call32 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef 8), !dbg !4823
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub31, i32 noundef 2), !dbg !4824
  %call34 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef 6), !dbg !4825
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub31, i32 noundef 2), !dbg !4826
  br label %tailrecurse.backedge, !dbg !4827

sw.bb38:                                          ; preds = %if.else
  %sub39 = add i64 %level.tr184, -1, !dbg !4828
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub39, i32 noundef 6), !dbg !4830
  %call40 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef 2), !dbg !4831
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub39, i32 noundef 8), !dbg !4832
  %call42 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef 4), !dbg !4833
  tail call fastcc void @Riemersma(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i64 noundef %sub39, i32 noundef 8), !dbg !4834
  br label %tailrecurse.backedge, !dbg !4835

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %switch.tableidx to i8, !dbg !4800
  %switch.shifted = lshr i8 85, %switch.maskindex, !dbg !4800
  %1 = and i8 %switch.shifted, 1, !dbg !4800
  %switch.lobit.not = icmp eq i8 %1, 0, !dbg !4800
  br i1 %switch.lobit.not, label %if.end, label %switch.lookup, !dbg !4800

switch.lookup:                                    ; preds = %switch.hole_check
  %2 = sext i32 %switch.tableidx to i64, !dbg !4800
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.Riemersma, i64 0, i64 %2, !dbg !4800
  %switch.load = load i32, ptr %switch.gep, align 4, !dbg !4800
  %3 = sext i32 %switch.tableidx to i64, !dbg !4800
  %switch.gep189 = getelementptr inbounds [7 x i32], ptr @switch.table.Riemersma.16, i64 0, i64 %3, !dbg !4800
  %switch.load190 = load i32, ptr %switch.gep189, align 4, !dbg !4800
  %call = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef %switch.load), !dbg !4836
  %call1 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef %switch.load190), !dbg !4836
  %call2 = tail call fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef %direction.tr.lcssa), !dbg !4836
  br label %if.end, !dbg !4838

if.end:                                           ; preds = %if.else, %switch.hole_check, %if.then, %switch.lookup
  ret void, !dbg !4838
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @RiemersmaDither(ptr noundef %image, ptr noundef %image_view, ptr noundef %cube_info, i32 noundef %direction) unnamed_addr #0 !dbg !4839 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !4843, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata ptr %image_view, metadata !4844, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4845, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i32 %direction, metadata !4846, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !4850, metadata !DIExpression()), !dbg !4862
  %x = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 20, !dbg !4863
  %0 = load i64, ptr %x, align 8, !dbg !4863, !tbaa !4864
  %cmp = icmp sgt i64 %0, -1, !dbg !4865
  br i1 %cmp, label %land.lhs.true, label %if.end157, !dbg !4866

land.lhs.true:                                    ; preds = %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !4867
  %1 = load i64, ptr %columns, align 8, !dbg !4867, !tbaa !1292
  %cmp2 = icmp slt i64 %0, %1, !dbg !4868
  br i1 %cmp2, label %land.lhs.true3, label %if.end157, !dbg !4869

land.lhs.true3:                                   ; preds = %land.lhs.true
  %y = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 21, !dbg !4870
  %2 = load i64, ptr %y, align 8, !dbg !4870, !tbaa !4871
  %cmp4 = icmp sgt i64 %2, -1, !dbg !4872
  br i1 %cmp4, label %land.lhs.true5, label %if.end157, !dbg !4873

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !4874
  %3 = load i64, ptr %rows, align 8, !dbg !4874, !tbaa !1294
  %cmp7 = icmp slt i64 %2, %3, !dbg !4875
  br i1 %cmp7, label %if.then, label %if.end157, !dbg !4876

if.then:                                          ; preds = %land.lhs.true5
  %exception8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !4877
  call void @llvm.dbg.value(metadata ptr %exception8, metadata !4852, metadata !DIExpression()), !dbg !4878
  %call = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %image_view, i64 noundef %0, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %exception8) #20, !dbg !4879
  call void @llvm.dbg.value(metadata ptr %call, metadata !4856, metadata !DIExpression()), !dbg !4878
  %cmp11 = icmp eq ptr %call, null, !dbg !4880
  br i1 %cmp11, label %cleanup169, label %if.end, !dbg !4882

if.end:                                           ; preds = %if.then
  %call13 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %image_view) #17, !dbg !4883
  call void @llvm.dbg.value(metadata ptr %call13, metadata !4855, metadata !DIExpression()), !dbg !4878
  %4 = getelementptr i8, ptr %cube_info, i64 456, !dbg !4884
  %cube_info.val260 = load i32, ptr %4, align 8, !dbg !4884, !tbaa !2359
  call void @llvm.dbg.value(metadata ptr undef, metadata !2439, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata ptr %call, metadata !2440, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata ptr undef, metadata !2441, metadata !DIExpression()), !dbg !4885
  %cmp.i = icmp eq i32 %cube_info.val260, 0, !dbg !4887
  %opacity9.phi.trans.insert.i = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 3
  %.pre.i = load i16, ptr %opacity9.phi.trans.insert.i, align 2, !dbg !4888, !tbaa !1367
  br i1 %cmp.i, label %for.body.us.preheader, label %lor.lhs.false.i, !dbg !4889

lor.lhs.false.i:                                  ; preds = %if.end
  %cmp1.i = icmp eq i16 %.pre.i, 0, !dbg !4890
  br i1 %cmp1.i, label %AssociateAlphaPixel.exit, label %AssociateAlphaPixel.exit.thread, !dbg !4891

AssociateAlphaPixel.exit.thread:                  ; preds = %lor.lhs.false.i
  %5 = xor i16 %.pre.i, -1, !dbg !4892
  %conv14.i = uitofp i16 %5 to double, !dbg !4893
  %mul.i = fmul double %conv14.i, 0x3EF0001000100010, !dbg !4894
  %conv15.i = fptrunc double %mul.i to float, !dbg !4895
  call void @llvm.dbg.value(metadata float %conv15.i, metadata !2442, metadata !DIExpression()), !dbg !4885
  %red16.i = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 2, !dbg !4896
  %6 = load i16, ptr %red16.i, align 2, !dbg !4896, !tbaa !1355
  %conv18.i = uitofp i16 %6 to float, !dbg !4896
  %mul19.i = fmul float %conv15.i, %conv18.i, !dbg !4897
  call void @llvm.dbg.value(metadata float %mul19.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  %green21.i = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 1, !dbg !4898
  %7 = load i16, ptr %green21.i, align 2, !dbg !4898, !tbaa !1359
  %conv23.i = uitofp i16 %7 to float, !dbg !4898
  %mul24.i = fmul float %conv15.i, %conv23.i, !dbg !4899
  call void @llvm.dbg.value(metadata float %mul24.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  %8 = load i16, ptr %call, align 2, !dbg !4900, !tbaa !1363
  %conv28.i = uitofp i16 %8 to float, !dbg !4900
  %mul29.i = fmul float %conv15.i, %conv28.i, !dbg !4901
  call void @llvm.dbg.value(metadata float %mul29.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  %conv32.i = uitofp i16 %.pre.i to float, !dbg !4902
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv7.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata i64 0, metadata !4857, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv7.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  br label %for.body.preheader, !dbg !4903

for.body.preheader:                               ; preds = %AssociateAlphaPixel.exit, %AssociateAlphaPixel.exit.thread
  %pixel.sroa.0.1370.ph = phi float [ %mul19.i, %AssociateAlphaPixel.exit.thread ], [ %conv3.i, %AssociateAlphaPixel.exit ]
  %pixel.sroa.12.1369.ph = phi float [ %mul24.i, %AssociateAlphaPixel.exit.thread ], [ %conv5.i, %AssociateAlphaPixel.exit ]
  %pixel.sroa.21.1368.ph = phi float [ %mul29.i, %AssociateAlphaPixel.exit.thread ], [ %conv7.i, %AssociateAlphaPixel.exit ]
  %pixel.sroa.30.0367.ph = phi float [ %conv32.i, %AssociateAlphaPixel.exit.thread ], [ 0.000000e+00, %AssociateAlphaPixel.exit ]
  br label %for.body, !dbg !4907

AssociateAlphaPixel.exit:                         ; preds = %lor.lhs.false.i
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 2, !dbg !4908
  %9 = load i16, ptr %red.i, align 2, !dbg !4908, !tbaa !1355
  %conv3.i = uitofp i16 %9 to float, !dbg !4909
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 1, !dbg !4910
  %10 = load i16, ptr %green.i, align 2, !dbg !4910, !tbaa !1359
  %conv5.i = uitofp i16 %10 to float, !dbg !4911
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  %11 = load i16, ptr %call, align 2, !dbg !4912, !tbaa !1363
  %conv7.i = uitofp i16 %11 to float, !dbg !4913
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv7.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata i64 0, metadata !4857, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv7.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  br label %for.body.preheader, !dbg !4903

for.body.us.preheader:                            ; preds = %if.end
  %phi.cast.i = uitofp i16 %.pre.i to float, !dbg !4889
  %red.i407 = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 2, !dbg !4908
  %12 = load i16, ptr %red.i407, align 2, !dbg !4908, !tbaa !1355
  %conv3.i408 = uitofp i16 %12 to float, !dbg !4909
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  %green.i409 = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 1, !dbg !4910
  %13 = load i16, ptr %green.i409, align 2, !dbg !4910, !tbaa !1359
  %conv5.i410 = uitofp i16 %13 to float, !dbg !4911
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  %14 = load i16, ptr %call, align 2, !dbg !4912, !tbaa !1363
  %conv7.i411 = uitofp i16 %14 to float, !dbg !4913
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv7.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata i64 0, metadata !4857, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv7.i, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  br label %for.body.us, !dbg !4907

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %i.0371.us = phi i64 [ %inc.us, %for.body.us ], [ 0, %for.body.us.preheader ]
  %pixel.sroa.0.1370.us = phi float [ %17, %for.body.us ], [ %conv3.i408, %for.body.us.preheader ]
  %pixel.sroa.12.1369.us = phi float [ %19, %for.body.us ], [ %conv5.i410, %for.body.us.preheader ]
  %pixel.sroa.21.1368.us = phi float [ %21, %for.body.us ], [ %conv7.i411, %for.body.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0371.us, metadata !4857, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.1370.us, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %pixel.sroa.12.1369.us, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %pixel.sroa.21.1368.us, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float undef, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  %arrayidx.us = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 17, i64 %i.0371.us, !dbg !4914
  %15 = load float, ptr %arrayidx.us, align 4, !dbg !4914, !tbaa !2277
  %arrayidx15.us = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 %i.0371.us, !dbg !4915
  %16 = load float, ptr %arrayidx15.us, align 8, !dbg !4916, !tbaa !3398
  %17 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %pixel.sroa.0.1370.us), !dbg !4917
  call void @llvm.dbg.value(metadata float %17, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  %green.us = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 %i.0371.us, i32 1, !dbg !4918
  %18 = load float, ptr %green.us, align 4, !dbg !4918, !tbaa !3403
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %18, float %pixel.sroa.12.1369.us), !dbg !4919
  call void @llvm.dbg.value(metadata float %19, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  %blue.us = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 %i.0371.us, i32 2, !dbg !4920
  %20 = load float, ptr %blue.us, align 8, !dbg !4920, !tbaa !3408
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %20, float %pixel.sroa.21.1368.us), !dbg !4921
  call void @llvm.dbg.value(metadata float %21, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float undef, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  %inc.us = add nuw nsw i64 %i.0371.us, 1, !dbg !4922
  call void @llvm.dbg.value(metadata float %17, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %19, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %21, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float undef, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !4857, metadata !DIExpression()), !dbg !4878
  %exitcond394.not = icmp eq i64 %inc.us, 16, !dbg !4923
  br i1 %exitcond394.not, label %for.end, label %for.body.us, !dbg !4907, !llvm.loop !4924

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.0371 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %pixel.sroa.0.1370 = phi float [ %24, %for.body ], [ %pixel.sroa.0.1370.ph, %for.body.preheader ]
  %pixel.sroa.12.1369 = phi float [ %26, %for.body ], [ %pixel.sroa.12.1369.ph, %for.body.preheader ]
  %pixel.sroa.21.1368 = phi float [ %28, %for.body ], [ %pixel.sroa.21.1368.ph, %for.body.preheader ]
  %pixel.sroa.30.0367 = phi float [ %30, %for.body ], [ %pixel.sroa.30.0367.ph, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0371, metadata !4857, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata float %pixel.sroa.0.1370, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %pixel.sroa.12.1369, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %pixel.sroa.21.1368, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %pixel.sroa.30.0367, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  %arrayidx = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 17, i64 %i.0371, !dbg !4914
  %22 = load float, ptr %arrayidx, align 4, !dbg !4914, !tbaa !2277
  %arrayidx15 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 %i.0371, !dbg !4915
  %23 = load float, ptr %arrayidx15, align 8, !dbg !4916, !tbaa !3398
  %24 = tail call float @llvm.fmuladd.f32(float %22, float %23, float %pixel.sroa.0.1370), !dbg !4917
  call void @llvm.dbg.value(metadata float %24, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  %green = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 %i.0371, i32 1, !dbg !4918
  %25 = load float, ptr %green, align 4, !dbg !4918, !tbaa !3403
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %25, float %pixel.sroa.12.1369), !dbg !4919
  call void @llvm.dbg.value(metadata float %26, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  %blue = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 %i.0371, i32 2, !dbg !4920
  %27 = load float, ptr %blue, align 8, !dbg !4920, !tbaa !3408
  %28 = tail call float @llvm.fmuladd.f32(float %22, float %27, float %pixel.sroa.21.1368), !dbg !4921
  call void @llvm.dbg.value(metadata float %28, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  %opacity = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 %i.0371, i32 3, !dbg !4926
  %29 = load float, ptr %opacity, align 4, !dbg !4926, !tbaa !3415
  %30 = tail call float @llvm.fmuladd.f32(float %22, float %29, float %pixel.sroa.30.0367), !dbg !4928
  call void @llvm.dbg.value(metadata float undef, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  %inc = add nuw nsw i64 %i.0371, 1, !dbg !4922
  call void @llvm.dbg.value(metadata float %24, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %26, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %28, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float undef, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4857, metadata !DIExpression()), !dbg !4878
  %exitcond.not = icmp eq i64 %inc, 16, !dbg !4923
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !4907, !llvm.loop !4924

for.end:                                          ; preds = %for.body, %for.body.us
  %.us-phi = phi float [ %phi.cast.i, %for.body.us ], [ %30, %for.body ]
  %.us-phi373 = phi float [ %21, %for.body.us ], [ %28, %for.body ]
  %.us-phi374 = phi float [ %19, %for.body.us ], [ %26, %for.body ]
  %.us-phi375 = phi float [ %17, %for.body.us ], [ %24, %for.body ]
  %associate_alpha404 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19
  call void @llvm.dbg.value(metadata float %.us-phi375, metadata !2489, metadata !DIExpression()), !dbg !4929
  %cmp.i261 = fcmp olt float %.us-phi375, 0.000000e+00, !dbg !4931
  br i1 %cmp.i261, label %ClampPixel.exit, label %if.end.i263, !dbg !4932

if.end.i263:                                      ; preds = %for.end
  %cmp1.i262 = fcmp ult float %.us-phi375, 6.553500e+04, !dbg !4933
  br i1 %cmp1.i262, label %if.end3.i, label %ClampPixel.exit, !dbg !4934

if.end3.i:                                        ; preds = %if.end.i263
  %add.i = fadd float %.us-phi375, 5.000000e-01, !dbg !4935
  %conv.i = fptoui float %add.i to i16, !dbg !4936
  br label %ClampPixel.exit, !dbg !4937

ClampPixel.exit:                                  ; preds = %for.end, %if.end.i263, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %for.end ], [ -1, %if.end.i263 ], !dbg !4929
  %conv = uitofp i16 %retval.0.i to float, !dbg !4938
  call void @llvm.dbg.value(metadata float %conv, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %.us-phi374, metadata !2489, metadata !DIExpression()), !dbg !4939
  %cmp.i264 = fcmp olt float %.us-phi374, 0.000000e+00, !dbg !4941
  br i1 %cmp.i264, label %ClampPixel.exit271, label %if.end.i266, !dbg !4942

if.end.i266:                                      ; preds = %ClampPixel.exit
  %cmp1.i265 = fcmp ult float %.us-phi374, 6.553500e+04, !dbg !4943
  br i1 %cmp1.i265, label %if.end3.i269, label %ClampPixel.exit271, !dbg !4944

if.end3.i269:                                     ; preds = %if.end.i266
  %add.i267 = fadd float %.us-phi374, 5.000000e-01, !dbg !4945
  %conv.i268 = fptoui float %add.i267 to i16, !dbg !4946
  br label %ClampPixel.exit271, !dbg !4947

ClampPixel.exit271:                               ; preds = %ClampPixel.exit, %if.end.i266, %if.end3.i269
  %retval.0.i270 = phi i16 [ %conv.i268, %if.end3.i269 ], [ 0, %ClampPixel.exit ], [ -1, %if.end.i266 ], !dbg !4939
  %conv40 = uitofp i16 %retval.0.i270 to float, !dbg !4948
  call void @llvm.dbg.value(metadata float %conv40, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %.us-phi373, metadata !2489, metadata !DIExpression()), !dbg !4949
  %cmp.i272 = fcmp olt float %.us-phi373, 0.000000e+00, !dbg !4951
  br i1 %cmp.i272, label %ClampPixel.exit279, label %if.end.i274, !dbg !4952

if.end.i274:                                      ; preds = %ClampPixel.exit271
  %cmp1.i273 = fcmp ult float %.us-phi373, 6.553500e+04, !dbg !4953
  br i1 %cmp1.i273, label %if.end3.i277, label %ClampPixel.exit279, !dbg !4954

if.end3.i277:                                     ; preds = %if.end.i274
  %add.i275 = fadd float %.us-phi373, 5.000000e-01, !dbg !4955
  %conv.i276 = fptoui float %add.i275 to i16, !dbg !4956
  br label %ClampPixel.exit279, !dbg !4957

ClampPixel.exit279:                               ; preds = %ClampPixel.exit271, %if.end.i274, %if.end3.i277
  %retval.0.i278 = phi i16 [ %conv.i276, %if.end3.i277 ], [ 0, %ClampPixel.exit271 ], [ -1, %if.end.i274 ], !dbg !4949
  %conv44 = uitofp i16 %retval.0.i278 to float, !dbg !4958
  call void @llvm.dbg.value(metadata float %conv44, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  br i1 %cmp.i, label %if.end.i.i, label %if.then49, !dbg !4959

if.then49:                                        ; preds = %ClampPixel.exit279
  call void @llvm.dbg.value(metadata float %.us-phi, metadata !2489, metadata !DIExpression()), !dbg !4960
  %cmp.i280 = fcmp olt float %.us-phi, 0.000000e+00, !dbg !4963
  br i1 %cmp.i280, label %ClampPixel.exit287, label %if.end.i282, !dbg !4964

if.end.i282:                                      ; preds = %if.then49
  %cmp1.i281 = fcmp ult float %.us-phi, 6.553500e+04, !dbg !4965
  br i1 %cmp1.i281, label %if.end3.i285, label %ClampPixel.exit287, !dbg !4966

if.end3.i285:                                     ; preds = %if.end.i282
  %add.i283 = fadd float %.us-phi, 5.000000e-01, !dbg !4967
  %conv.i284 = fptoui float %add.i283 to i16, !dbg !4968
  br label %ClampPixel.exit287, !dbg !4969

ClampPixel.exit287:                               ; preds = %if.then49, %if.end.i282, %if.end3.i285
  %retval.0.i286 = phi i16 [ %conv.i284, %if.end3.i285 ], [ 0, %if.then49 ], [ -1, %if.end.i282 ], !dbg !4960
  %conv52 = uitofp i16 %retval.0.i286 to float, !dbg !4970
  call void @llvm.dbg.value(metadata float %conv52, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  br label %if.end.i.i, !dbg !4971

if.end.i.i:                                       ; preds = %ClampPixel.exit279, %ClampPixel.exit287
  %pixel.sroa.30.2 = phi float [ %.us-phi, %ClampPixel.exit279 ], [ %conv52, %ClampPixel.exit287 ], !dbg !4878
  call void @llvm.dbg.value(metadata float %pixel.sroa.30.2, metadata !4849, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !3533, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata ptr undef, metadata !3538, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata float %conv, metadata !2489, metadata !DIExpression()), !dbg !4974
  %cmp1.i.i.not = icmp eq i16 %retval.0.i, -1, !dbg !4976
  br i1 %cmp1.i.i.not, label %if.end.i30.i, label %if.end3.i.i, !dbg !4977

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %conv, 5.000000e-01, !dbg !4978
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !4979
  %phi.cast.i288 = zext i16 %conv.i.i to i64, !dbg !4980
  %phi.bo.i = add nuw nsw i64 %phi.cast.i288, 128, !dbg !4980
  br label %if.end.i30.i, !dbg !4980

if.end.i30.i:                                     ; preds = %if.end.i.i, %if.end3.i.i
  %retval.0.i.i = phi i64 [ %phi.bo.i, %if.end3.i.i ], [ 65663, %if.end.i.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !4981
  %shr.i.i = lshr i64 %retval.0.i.i, 8, !dbg !4983
  %sub.i.i = sub nsw i64 %retval.0.i.i, %shr.i.i, !dbg !4984
  %sum.shift.i = lshr i64 %sub.i.i, 10, !dbg !4985
  %31 = and i64 %sum.shift.i, 63, !dbg !4985
  call void @llvm.dbg.value(metadata float %conv40, metadata !2489, metadata !DIExpression()), !dbg !4986
  %cmp1.i29.i.not = icmp eq i16 %retval.0.i270, -1, !dbg !4988
  br i1 %cmp1.i29.i.not, label %if.end.i44.i, label %if.end3.i33.i, !dbg !4989

if.end3.i33.i:                                    ; preds = %if.end.i30.i
  %add.i31.i = fadd float %conv40, 5.000000e-01, !dbg !4990
  %conv.i32.i = fptoui float %add.i31.i to i16, !dbg !4991
  %phi.cast70.i = zext i16 %conv.i32.i to i64, !dbg !4992
  %phi.bo71.i = add nuw nsw i64 %phi.cast70.i, 128, !dbg !4992
  br label %if.end.i44.i, !dbg !4992

if.end.i44.i:                                     ; preds = %if.end.i30.i, %if.end3.i33.i
  %retval.0.i34.i = phi i64 [ %phi.bo71.i, %if.end3.i33.i ], [ 65663, %if.end.i30.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !4993
  %shr.i38.i = lshr i64 %retval.0.i34.i, 8, !dbg !4995
  %sub.i39.i = sub nsw i64 %retval.0.i34.i, %shr.i38.i, !dbg !4996
  %32 = lshr i64 %sub.i39.i, 4, !dbg !4997
  %shl6.i = and i64 %32, 4032, !dbg !4997
  %or.i = or i64 %shl6.i, %31, !dbg !4998
  call void @llvm.dbg.value(metadata float %conv44, metadata !2489, metadata !DIExpression()), !dbg !4999
  %cmp1.i43.i.not = icmp eq i16 %retval.0.i278, -1, !dbg !5001
  br i1 %cmp1.i43.i.not, label %ClampPixel.exit49.i, label %if.end3.i47.i, !dbg !5002

if.end3.i47.i:                                    ; preds = %if.end.i44.i
  %add.i45.i = fadd float %conv44, 5.000000e-01, !dbg !5003
  %conv.i46.i = fptoui float %add.i45.i to i16, !dbg !5004
  %phi.cast73.i = zext i16 %conv.i46.i to i64, !dbg !5005
  %phi.bo74.i = add nuw nsw i64 %phi.cast73.i, 128, !dbg !5005
  br label %ClampPixel.exit49.i, !dbg !5005

ClampPixel.exit49.i:                              ; preds = %if.end3.i47.i, %if.end.i44.i
  %retval.0.i48.i = phi i64 [ %phi.bo74.i, %if.end3.i47.i ], [ 65663, %if.end.i44.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5006
  %shr.i52.i = lshr i64 %retval.0.i48.i, 8, !dbg !5008
  %sub.i53.i = sub nsw i64 %retval.0.i48.i, %shr.i52.i, !dbg !5009
  %33 = shl nsw i64 %sub.i53.i, 2, !dbg !5010
  %shl11.i = and i64 %33, 258048, !dbg !5010
  %or12.i = or i64 %or.i, %shl11.i, !dbg !5011
  call void @llvm.dbg.value(metadata i64 %or12.i, metadata !3539, metadata !DIExpression()), !dbg !4972
  br i1 %cmp.i, label %CacheOffset.exit, label %if.then.i290, !dbg !5012

if.then.i290:                                     ; preds = %ClampPixel.exit49.i
  call void @llvm.dbg.value(metadata float %pixel.sroa.30.2, metadata !2489, metadata !DIExpression()), !dbg !5013
  %cmp.i56.i = fcmp olt float %pixel.sroa.30.2, 0.000000e+00, !dbg !5015
  br i1 %cmp.i56.i, label %ClampPixel.exit63.i, label %if.end.i58.i, !dbg !5016

if.end.i58.i:                                     ; preds = %if.then.i290
  %cmp1.i57.i = fcmp ult float %pixel.sroa.30.2, 6.553500e+04, !dbg !5017
  br i1 %cmp1.i57.i, label %if.end3.i61.i, label %ClampPixel.exit63.i, !dbg !5018

if.end3.i61.i:                                    ; preds = %if.end.i58.i
  %add.i59.i = fadd float %pixel.sroa.30.2, 5.000000e-01, !dbg !5019
  %conv.i60.i = fptoui float %add.i59.i to i16, !dbg !5020
  %phi.cast76.i = zext i16 %conv.i60.i to i64, !dbg !5021
  %phi.bo77.i = add nuw nsw i64 %phi.cast76.i, 128, !dbg !5021
  br label %ClampPixel.exit63.i, !dbg !5021

ClampPixel.exit63.i:                              ; preds = %if.end3.i61.i, %if.end.i58.i, %if.then.i290
  %retval.0.i62.i = phi i64 [ %phi.bo77.i, %if.end3.i61.i ], [ 128, %if.then.i290 ], [ 65663, %if.end.i58.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5022
  %shr.i66.i = lshr i64 %retval.0.i62.i, 8, !dbg !5024
  %sub.i67.i = sub nsw i64 %retval.0.i62.i, %shr.i66.i, !dbg !5025
  %34 = shl i64 %sub.i67.i, 8, !dbg !5026
  %shl19.i = and i64 %34, 16515072, !dbg !5026
  %or21.i = or i64 %shl19.i, %or12.i, !dbg !5027
  call void @llvm.dbg.value(metadata i64 %or21.i, metadata !3539, metadata !DIExpression()), !dbg !4972
  br label %CacheOffset.exit, !dbg !5028

CacheOffset.exit:                                 ; preds = %ClampPixel.exit49.i, %ClampPixel.exit63.i
  %offset.0.i = phi i64 [ %or21.i, %ClampPixel.exit63.i ], [ %or12.i, %ClampPixel.exit49.i ], !dbg !4972
  call void @llvm.dbg.value(metadata i64 %offset.0.i, metadata !3539, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.value(metadata i64 %offset.0.i, metadata !4857, metadata !DIExpression()), !dbg !4878
  %cache = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 15, !dbg !5029
  %35 = load ptr, ptr %cache, align 8, !dbg !5029, !tbaa !2244
  %arrayidx56 = getelementptr inbounds i64, ptr %35, i64 %offset.0.i, !dbg !5030
  %36 = load i64, ptr %arrayidx56, align 8, !dbg !5030, !tbaa !1476
  %cmp57 = icmp slt i64 %36, 0, !dbg !5031
  br i1 %cmp57, label %if.then59, label %if.end76, !dbg !5032

if.then59:                                        ; preds = %CacheOffset.exit
  %37 = load ptr, ptr %cube_info, align 8, !dbg !5033, !tbaa !2213
  call void @llvm.dbg.value(metadata ptr %37, metadata !4858, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i64 7, metadata !4851, metadata !DIExpression()), !dbg !4862
  %add.i.i295 = fadd float %conv, 5.000000e-01
  %conv.i.i296 = fptoui float %add.i.i295 to i16
  %phi.cast.i297 = zext i16 %conv.i.i296 to i64
  %phi.bo.i298 = add nuw nsw i64 %phi.cast.i297, 128
  %add.i40.i = fadd float %conv40, 5.000000e-01
  %conv.i41.i = fptoui float %add.i40.i to i16
  %phi.cast79.i = zext i16 %conv.i41.i to i64
  %phi.bo80.i = add nuw nsw i64 %phi.cast79.i, 128
  %add.i54.i = fadd float %conv44, 5.000000e-01
  %conv.i55.i = fptoui float %add.i54.i to i16
  %phi.cast81.i = zext i16 %conv.i55.i to i64
  %phi.bo82.i = add nuw nsw i64 %phi.cast81.i, 128
  %spec.select = select i1 %cmp1.i.i.not, i64 65663, i64 %phi.bo.i298
  %shr.i.i301.us = lshr i64 %spec.select, 8
  %sub.i.i302.us = sub nsw i64 %spec.select, %shr.i.i301.us
  %38 = trunc i64 %sub.i.i302.us to i32
  %39 = lshr i32 %38, 8
  %conv.i303.us = and i32 %39, 255
  %spec.select382 = select i1 %cmp1.i29.i.not, i64 65663, i64 %phi.bo80.i
  %shr.i47.i.us = lshr i64 %spec.select382, 8
  %sub.i48.i.us = sub nsw i64 %spec.select382, %shr.i47.i.us
  %40 = trunc i64 %sub.i48.i.us to i32
  %41 = lshr i32 %40, 8
  %conv4.i.us = and i32 %41, 255
  %spec.select379 = select i1 %cmp1.i43.i.not, i64 65663, i64 %phi.bo82.i
  %shr.i61.i.us = lshr i64 %spec.select379, 8
  %sub.i62.i.us = sub nsw i64 %spec.select379, %shr.i61.i.us
  %42 = trunc i64 %sub.i62.i.us to i32
  %43 = lshr i32 %42, 8
  %conv10.i.us = and i32 %43, 255
  br i1 %cmp.i, label %if.end.i.i294.us, label %if.end.i.i294.preheader, !dbg !5035

if.end.i.i294.preheader:                          ; preds = %if.then59
  %add.i68.i = fadd float %pixel.sroa.30.2, 5.000000e-01
  %conv.i69.i = fptoui float %add.i68.i to i16
  %phi.cast83.i = zext i16 %conv.i69.i to i64
  %phi.bo84.i = add nuw nsw i64 %phi.cast83.i, 128
  %cmp1.i66.i = fcmp oge float %pixel.sroa.30.2, 6.553500e+04
  %cmp.i65.i = fcmp olt float %pixel.sroa.30.2, 0.000000e+00
  %brmerge = or i1 %cmp.i65.i, %cmp1.i66.i
  %.mux = select i1 %cmp.i65.i, i64 128, i64 65663
  %spec.select384 = select i1 %brmerge, i64 %.mux, i64 %phi.bo84.i
  %shr.i75.i = lshr i64 %spec.select384, 8
  %sub.i76.i = sub nsw i64 %spec.select384, %shr.i75.i
  %44 = trunc i64 %sub.i76.i to i32
  %45 = lshr i32 %44, 8
  %conv20.i = and i32 %45, 255
  br label %if.end.i.i294, !dbg !5040

if.end.i.i294.us:                                 ; preds = %if.then59, %for.cond60.us
  %node_info.0377.us = phi ptr [ %46, %for.cond60.us ], [ %37, %if.then59 ]
  %index.0376.us = phi i64 [ %dec.us, %for.cond60.us ], [ 7, %if.then59 ]
  call void @llvm.dbg.value(metadata ptr %node_info.0377.us, metadata !4858, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i64 %index.0376.us, metadata !4851, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2477, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata ptr undef, metadata !2484, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 %index.0376.us, metadata !2485, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata float %conv, metadata !2489, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5044
  %sh_prom.i.us = trunc i64 %index.0376.us to i32, !dbg !5046
  %shr.i.us = lshr i32 %conv.i303.us, %sh_prom.i.us, !dbg !5046
  %and.i.us = and i32 %shr.i.us, 1, !dbg !5047
  call void @llvm.dbg.value(metadata float %conv40, metadata !2489, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5050
  %shr6.i.us = lshr i32 %conv4.i.us, %sh_prom.i.us, !dbg !5052
  %and7.i.us = shl nuw nsw i32 %shr6.i.us, 1, !dbg !5053
  %shl.i.us = and i32 %and7.i.us, 2, !dbg !5053
  %or.i306.us = or i32 %shl.i.us, %and.i.us, !dbg !5054
  call void @llvm.dbg.value(metadata float %conv44, metadata !2489, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5057
  %shr12.i.us = lshr i32 %conv10.i.us, %sh_prom.i.us, !dbg !5059
  %and13.i.us = shl nuw nsw i32 %shr12.i.us, 2, !dbg !5060
  %shl14.i.us = and i32 %and13.i.us, 4, !dbg !5060
  %or15.i.us = or i32 %or.i306.us, %shl14.i.us, !dbg !5061
  call void @llvm.dbg.value(metadata i32 %or15.i.us, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5041
  %id.0.i.us = zext i32 %or15.i.us to i64, !dbg !5041
  call void @llvm.dbg.value(metadata i64 %id.0.i.us, metadata !2486, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 %id.0.i.us, metadata !4861, metadata !DIExpression()), !dbg !5034
  %arrayidx65.us = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0377.us, i64 0, i32 1, i64 %id.0.i.us, !dbg !5062
  %46 = load ptr, ptr %arrayidx65.us, align 8, !dbg !5062, !tbaa !2575
  %cmp66.us = icmp eq ptr %46, null, !dbg !5064
  call void @llvm.dbg.value(metadata ptr %46, metadata !4858, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i64 %index.0376.us, metadata !4851, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4862
  br i1 %cmp66.us, label %for.end73, label %for.cond60.us, !dbg !5065

for.cond60.us:                                    ; preds = %if.end.i.i294.us
  %dec.us = add nsw i64 %index.0376.us, -1, !dbg !5066
  call void @llvm.dbg.value(metadata ptr undef, metadata !4858, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i64 undef, metadata !4851, metadata !DIExpression()), !dbg !4862
  %cmp61.us = icmp ugt i64 %index.0376.us, 1, !dbg !5067
  br i1 %cmp61.us, label %if.end.i.i294.us, label %for.end73, !dbg !5040, !llvm.loop !5068

for.cond60:                                       ; preds = %if.end.i.i294
  %dec = add nsw i64 %index.0376, -1, !dbg !5066
  call void @llvm.dbg.value(metadata ptr undef, metadata !4858, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i64 undef, metadata !4851, metadata !DIExpression()), !dbg !4862
  %cmp61 = icmp ugt i64 %index.0376, 1, !dbg !5067
  br i1 %cmp61, label %if.end.i.i294, label %for.end73, !dbg !5040, !llvm.loop !5068

if.end.i.i294:                                    ; preds = %if.end.i.i294.preheader, %for.cond60
  %node_info.0377 = phi ptr [ %47, %for.cond60 ], [ %37, %if.end.i.i294.preheader ]
  %index.0376 = phi i64 [ %dec, %for.cond60 ], [ 7, %if.end.i.i294.preheader ]
  call void @llvm.dbg.value(metadata ptr %node_info.0377, metadata !4858, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i64 %index.0376, metadata !4851, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2477, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata ptr undef, metadata !2484, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 %index.0376, metadata !2485, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata float %conv, metadata !2489, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5044
  %sh_prom.i = trunc i64 %index.0376 to i32, !dbg !5046
  %shr.i = lshr i32 %conv.i303.us, %sh_prom.i, !dbg !5046
  %and.i = and i32 %shr.i, 1, !dbg !5047
  call void @llvm.dbg.value(metadata float %conv40, metadata !2489, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5050
  %shr6.i = lshr i32 %conv4.i.us, %sh_prom.i, !dbg !5052
  %and7.i = shl nuw nsw i32 %shr6.i, 1, !dbg !5053
  %shl.i = and i32 %and7.i, 2, !dbg !5053
  %or.i306 = or i32 %shl.i, %and.i, !dbg !5054
  call void @llvm.dbg.value(metadata float %conv44, metadata !2489, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5057
  %shr12.i = lshr i32 %conv10.i.us, %sh_prom.i, !dbg !5059
  %and13.i = shl nuw nsw i32 %shr12.i, 2, !dbg !5060
  %shl14.i = and i32 %and13.i, 4, !dbg !5060
  %or15.i = or i32 %or.i306, %shl14.i, !dbg !5061
  call void @llvm.dbg.value(metadata i32 %or15.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5041
  call void @llvm.dbg.value(metadata float %pixel.sroa.30.2, metadata !2489, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i16 undef, metadata !2499, metadata !DIExpression()), !dbg !5072
  %shr22.i = lshr i32 %conv20.i, %sh_prom.i, !dbg !5074
  %and23.i = shl nuw nsw i32 %shr22.i, 3, !dbg !5075
  %shl24.i = and i32 %and23.i, 8, !dbg !5075
  %or2634.i = or i32 %shl24.i, %or15.i, !dbg !5076
  call void @llvm.dbg.value(metadata i32 %or2634.i, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5041
  %id.0.i = zext i32 %or2634.i to i64, !dbg !5041
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !2486, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !4861, metadata !DIExpression()), !dbg !5034
  %arrayidx65 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0377, i64 0, i32 1, i64 %id.0.i, !dbg !5062
  %47 = load ptr, ptr %arrayidx65, align 8, !dbg !5062, !tbaa !2575
  %cmp66 = icmp eq ptr %47, null, !dbg !5064
  call void @llvm.dbg.value(metadata ptr %47, metadata !4858, metadata !DIExpression()), !dbg !5034
  call void @llvm.dbg.value(metadata i64 %index.0376, metadata !4851, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4862
  br i1 %cmp66, label %for.end73, label %for.cond60, !dbg !5065

for.end73:                                        ; preds = %for.cond60, %if.end.i.i294, %for.cond60.us, %if.end.i.i294.us
  %.us-phi378 = phi ptr [ %node_info.0377.us, %if.end.i.i294.us ], [ %46, %for.cond60.us ], [ %node_info.0377, %if.end.i.i294 ], [ %47, %for.cond60 ]
  %target = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 5, !dbg !5077
  store float %conv, ptr %target, align 8, !dbg !5078, !tbaa.struct !3648
  %pixel.sroa.12.0.target.sroa_idx = getelementptr inbounds i8, ptr %target, i64 4, !dbg !5078
  store float %conv40, ptr %pixel.sroa.12.0.target.sroa_idx, align 4, !dbg !5078, !tbaa.struct !3649
  %pixel.sroa.21.0.target.sroa_idx = getelementptr inbounds i8, ptr %target, i64 8, !dbg !5078
  store float %conv44, ptr %pixel.sroa.21.0.target.sroa_idx, align 8, !dbg !5078, !tbaa.struct !3650
  %pixel.sroa.30.0.target.sroa_idx = getelementptr inbounds i8, ptr %target, i64 12, !dbg !5078
  store float %pixel.sroa.30.2, ptr %pixel.sroa.30.0.target.sroa_idx, align 4, !dbg !5078, !tbaa.struct !3651
  %distance = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 6, !dbg !5079
  store float 0x4210000000000000, ptr %distance, align 8, !dbg !5080, !tbaa !3653
  %48 = load ptr, ptr %.us-phi378, align 8, !dbg !5081, !tbaa !2224
  tail call fastcc void @ClosestColor(ptr noundef %image, ptr noundef nonnull %cube_info, ptr noundef %48), !dbg !5082
  %color_number = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 11, !dbg !5083
  %49 = load i64, ptr %color_number, align 8, !dbg !5083, !tbaa !3657
  %50 = load ptr, ptr %cache, align 8, !dbg !5084, !tbaa !2244
  %arrayidx75 = getelementptr inbounds i64, ptr %50, i64 %offset.0.i, !dbg !5085
  store i64 %49, ptr %arrayidx75, align 8, !dbg !5086, !tbaa !1476
  br label %if.end76, !dbg !5087

if.end76:                                         ; preds = %for.end73, %CacheOffset.exit
  %51 = phi i64 [ %49, %for.end73 ], [ %36, %CacheOffset.exit ], !dbg !5088
  call void @llvm.dbg.value(metadata i64 %51, metadata !4851, metadata !DIExpression()), !dbg !4862
  %52 = load i32, ptr %image, align 8, !dbg !5089, !tbaa !1470
  %cmp79 = icmp eq i32 %52, 2, !dbg !5091
  br i1 %cmp79, label %if.then81, label %if.end83, !dbg !5092

if.then81:                                        ; preds = %if.end76
  %conv82 = trunc i64 %51 to i16, !dbg !5093
  store i16 %conv82, ptr %call13, align 2, !dbg !5094, !tbaa !1378
  br label %if.end83, !dbg !5095

if.end83:                                         ; preds = %if.then81, %if.end76
  %quantize_info = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 18, !dbg !5096
  %53 = load ptr, ptr %quantize_info, align 8, !dbg !5096, !tbaa !2229
  %measure_error = getelementptr inbounds %struct._QuantizeInfo, ptr %53, i64 0, i32 4, !dbg !5098
  %54 = load i32, ptr %measure_error, align 8, !dbg !5098, !tbaa !1064
  %cmp84 = icmp eq i32 %54, 0, !dbg !5099
  br i1 %cmp84, label %if.then86, label %if.end106, !dbg !5100

if.then86:                                        ; preds = %if.end83
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !5101
  %55 = load ptr, ptr %colormap, align 8, !dbg !5101, !tbaa !1350
  %red87 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %51, i32 2, !dbg !5101
  %56 = load i16, ptr %red87, align 2, !dbg !5101, !tbaa !1355
  %red88 = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 2, !dbg !5101
  store i16 %56, ptr %red88, align 2, !dbg !5101, !tbaa !1355
  %green91 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %51, i32 1, !dbg !5101
  %57 = load i16, ptr %green91, align 2, !dbg !5101, !tbaa !1359
  %green92 = getelementptr inbounds %struct._PixelPacket, ptr %call, i64 0, i32 1, !dbg !5101
  store i16 %57, ptr %green92, align 2, !dbg !5101, !tbaa !1359
  %add.ptr94 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %51, !dbg !5101
  %58 = load i16, ptr %add.ptr94, align 2, !dbg !5101, !tbaa !1363
  store i16 %58, ptr %call, align 2, !dbg !5101, !tbaa !1363
  %59 = load i32, ptr %associate_alpha404, align 8, !dbg !5104, !tbaa !2359
  %cmp98.not = icmp eq i32 %59, 0, !dbg !5106
  br i1 %cmp98.not, label %if.end106, label %if.then100, !dbg !5107

if.then100:                                       ; preds = %if.then86
  %opacity103 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 %51, i32 3, !dbg !5108
  %60 = load i16, ptr %opacity103, align 2, !dbg !5108, !tbaa !1367
  store i16 %60, ptr %opacity9.phi.trans.insert.i, align 2, !dbg !5108, !tbaa !1367
  br label %if.end106, !dbg !5108

if.end106:                                        ; preds = %if.then86, %if.then100, %if.end83
  %call107 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %image_view, ptr noundef nonnull %exception8) #20, !dbg !5109
  %cmp108 = icmp eq i32 %call107, 0, !dbg !5111
  br i1 %cmp108, label %cleanup169, label %if.end111, !dbg !5112

if.end111:                                        ; preds = %if.end106
  %error112 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, !dbg !5113
  %add.ptr115 = getelementptr inbounds %struct._RealPixelPacket, ptr %error112, i64 1, !dbg !5114
  %call116 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %error112, ptr noundef nonnull %add.ptr115, i64 noundef 240) #17, !dbg !5115
  %colormap117 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !5116
  %61 = load ptr, ptr %colormap117, align 8, !dbg !5116, !tbaa !1350
  %add.ptr118 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %51, !dbg !5117
  %cube_info.val = load i32, ptr %4, align 8, !dbg !5118, !tbaa !2359
  call void @llvm.dbg.value(metadata ptr undef, metadata !2439, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata ptr %add.ptr118, metadata !2440, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata ptr undef, metadata !2441, metadata !DIExpression()), !dbg !5119
  %cmp.i313 = icmp eq i32 %cube_info.val, 0, !dbg !5121
  %opacity9.phi.trans.insert.i314 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %51, i32 3
  %.pre.i315 = load i16, ptr %opacity9.phi.trans.insert.i314, align 2, !dbg !5122, !tbaa !1367
  br i1 %cmp.i313, label %entry.if.then_crit_edge.i317, label %lor.lhs.false.i319, !dbg !5123

entry.if.then_crit_edge.i317:                     ; preds = %if.end111
  %phi.cast.i316 = uitofp i16 %.pre.i315 to float, !dbg !5123
  br label %AssociateAlphaPixel.exit345, !dbg !5123

lor.lhs.false.i319:                               ; preds = %if.end111
  %cmp1.i318 = icmp eq i16 %.pre.i315, 0, !dbg !5124
  br i1 %cmp1.i318, label %AssociateAlphaPixel.exit345, label %AssociateAlphaPixel.exit345.thread, !dbg !5125

AssociateAlphaPixel.exit345.thread:               ; preds = %lor.lhs.false.i319
  %62 = xor i16 %.pre.i315, -1, !dbg !5126
  %conv14.i328 = uitofp i16 %62 to double, !dbg !5127
  %mul.i329 = fmul double %conv14.i328, 0x3EF0001000100010, !dbg !5128
  %conv15.i330 = fptrunc double %mul.i329 to float, !dbg !5129
  call void @llvm.dbg.value(metadata float %conv15.i330, metadata !2442, metadata !DIExpression()), !dbg !5119
  %red16.i331 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %51, i32 2, !dbg !5130
  %63 = load i16, ptr %red16.i331, align 2, !dbg !5130, !tbaa !1355
  %conv18.i332 = uitofp i16 %63 to float, !dbg !5130
  %mul19.i333 = fmul float %conv15.i330, %conv18.i332, !dbg !5131
  call void @llvm.dbg.value(metadata float %mul19.i333, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  %green21.i334 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %51, i32 1, !dbg !5132
  %64 = load i16, ptr %green21.i334, align 2, !dbg !5132, !tbaa !1359
  %conv23.i335 = uitofp i16 %64 to float, !dbg !5132
  %mul24.i336 = fmul float %conv15.i330, %conv23.i335, !dbg !5133
  call void @llvm.dbg.value(metadata float %mul24.i336, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  %65 = load i16, ptr %add.ptr118, align 2, !dbg !5134, !tbaa !1363
  %conv28.i338 = uitofp i16 %65 to float, !dbg !5134
  %mul29.i339 = fmul float %conv15.i330, %conv28.i338, !dbg !5135
  call void @llvm.dbg.value(metadata float %mul29.i339, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  %conv32.i341 = uitofp i16 %.pre.i315 to float, !dbg !5136
  call void @llvm.dbg.value(metadata float %conv3.i321, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv5.i323, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv7.i325, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %66, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  %sub421 = fsub float %conv, %mul19.i333, !dbg !5137
  %arrayidx122422 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 15, !dbg !5138
  store float %sub421, ptr %arrayidx122422, align 8, !dbg !5139, !tbaa !3398
  %sub126423 = fsub float %conv40, %mul24.i336, !dbg !5140
  %green129424 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 15, i32 1, !dbg !5141
  store float %sub126423, ptr %green129424, align 4, !dbg !5142, !tbaa !3403
  %sub132425 = fsub float %conv44, %mul29.i339, !dbg !5143
  %blue135426 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 15, i32 2, !dbg !5144
  store float %sub132425, ptr %blue135426, align 8, !dbg !5145, !tbaa !3408
  br label %if.then139, !dbg !5146

AssociateAlphaPixel.exit345:                      ; preds = %entry.if.then_crit_edge.i317, %lor.lhs.false.i319
  %66 = phi float [ %phi.cast.i316, %entry.if.then_crit_edge.i317 ], [ 0.000000e+00, %lor.lhs.false.i319 ]
  %red.i320 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %51, i32 2, !dbg !5147
  %67 = load i16, ptr %red.i320, align 2, !dbg !5147, !tbaa !1355
  %conv3.i321 = uitofp i16 %67 to float, !dbg !5148
  call void @llvm.dbg.value(metadata float %conv3.i321, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  %green.i322 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %51, i32 1, !dbg !5149
  %68 = load i16, ptr %green.i322, align 2, !dbg !5149, !tbaa !1359
  %conv5.i323 = uitofp i16 %68 to float, !dbg !5150
  call void @llvm.dbg.value(metadata float %conv5.i323, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  %69 = load i16, ptr %add.ptr118, align 2, !dbg !5151, !tbaa !1363
  %conv7.i325 = uitofp i16 %69 to float, !dbg !5152
  call void @llvm.dbg.value(metadata float %conv3.i321, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv5.i323, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %conv7.i325, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4862
  call void @llvm.dbg.value(metadata float %66, metadata !4848, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4862
  %sub = fsub float %conv, %conv3.i321, !dbg !5137
  %arrayidx122 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 15, !dbg !5138
  store float %sub, ptr %arrayidx122, align 8, !dbg !5139, !tbaa !3398
  %sub126 = fsub float %conv40, %conv5.i323, !dbg !5140
  %green129 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 15, i32 1, !dbg !5141
  store float %sub126, ptr %green129, align 4, !dbg !5142, !tbaa !3403
  %sub132 = fsub float %conv44, %conv7.i325, !dbg !5143
  %blue135 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 15, i32 2, !dbg !5144
  store float %sub132, ptr %blue135, align 8, !dbg !5145, !tbaa !3408
  br i1 %cmp.i313, label %if.end146, label %if.then139, !dbg !5146

if.then139:                                       ; preds = %AssociateAlphaPixel.exit345.thread, %AssociateAlphaPixel.exit345
  %conv32.sink.i343427 = phi float [ %conv32.i341, %AssociateAlphaPixel.exit345.thread ], [ %66, %AssociateAlphaPixel.exit345 ]
  %sub142 = fsub float %pixel.sroa.30.2, %conv32.sink.i343427, !dbg !5153
  %opacity145 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 16, i64 15, i32 3, !dbg !5155
  store float %sub142, ptr %opacity145, align 4, !dbg !5156, !tbaa !3415
  br label %if.end146, !dbg !5157

if.end146:                                        ; preds = %if.then139, %AssociateAlphaPixel.exit345
  %offset = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 23, !dbg !5158
  %70 = load i64, ptr %offset, align 8, !dbg !5158, !tbaa !3800
  %span = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 24, !dbg !5159
  %71 = load i64, ptr %span, align 8, !dbg !5159, !tbaa !3804
  call void @llvm.dbg.value(metadata ptr %image, metadata !1386, metadata !DIExpression()) #17, !dbg !5160
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !1392, metadata !DIExpression()) #17, !dbg !5160
  call void @llvm.dbg.value(metadata i64 %70, metadata !1393, metadata !DIExpression()) #17, !dbg !5160
  call void @llvm.dbg.value(metadata i64 %71, metadata !1394, metadata !DIExpression()) #17, !dbg !5160
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5162
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1395, metadata !DIExpression()) #17, !dbg !5163
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47, !dbg !5164
  %72 = load ptr, ptr %progress_monitor.i, align 8, !dbg !5164, !tbaa !1402
  %cmp.i346 = icmp eq ptr %72, null, !dbg !5165
  br i1 %cmp.i346, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !5166

SetImageProgress.exit.thread:                     ; preds = %if.end146
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5167
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !4847, metadata !DIExpression()), !dbg !4862
  br label %if.end151, !dbg !5168

SetImageProgress.exit:                            ; preds = %if.end146
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !5169
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, ptr noundef nonnull %filename.i) #17, !dbg !5170
  %73 = load ptr, ptr %progress_monitor.i, align 8, !dbg !5171, !tbaa !1402
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !5172
  %74 = load ptr, ptr %client_data.i, align 8, !dbg !5172, !tbaa !1410
  %call4.i = call i32 %73(ptr noundef nonnull %message.i, i64 noundef %70, i64 noundef %71, ptr noundef %74) #17, !dbg !5173
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #17, !dbg !5167
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !4847, metadata !DIExpression()), !dbg !4862
  %cmp148 = icmp eq i32 %call4.i, 0, !dbg !5174
  br i1 %cmp148, label %cleanup169, label %SetImageProgress.exit.if.end151_crit_edge, !dbg !5168

SetImageProgress.exit.if.end151_crit_edge:        ; preds = %SetImageProgress.exit
  %.pre = load i64, ptr %offset, align 8, !dbg !5176, !tbaa !3800
  br label %if.end151, !dbg !5168

if.end151:                                        ; preds = %SetImageProgress.exit.if.end151_crit_edge, %SetImageProgress.exit.thread
  %75 = phi i64 [ %.pre, %SetImageProgress.exit.if.end151_crit_edge ], [ %70, %SetImageProgress.exit.thread ], !dbg !5176
  %inc153 = add nsw i64 %75, 1, !dbg !5176
  store i64 %inc153, ptr %offset, align 8, !dbg !5176, !tbaa !3800
  br label %if.end157

if.end157:                                        ; preds = %if.end151, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  switch i32 %direction, label %cleanup169 [
    i32 4, label %cleanup169.sink.split
    i32 6, label %sw.bb160
    i32 2, label %sw.bb163
    i32 8, label %sw.bb166
  ], !dbg !5177

sw.bb160:                                         ; preds = %if.end157
  br label %cleanup169.sink.split, !dbg !5178

sw.bb163:                                         ; preds = %if.end157
  %y164 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 21, !dbg !5180
  br label %cleanup169.sink.split, !dbg !5181

sw.bb166:                                         ; preds = %if.end157
  %y167 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 21, !dbg !5182
  br label %cleanup169.sink.split, !dbg !5183

cleanup169.sink.split:                            ; preds = %if.end157, %sw.bb166, %sw.bb163, %sw.bb160
  %x.sink438 = phi ptr [ %x, %sw.bb160 ], [ %y164, %sw.bb163 ], [ %y167, %sw.bb166 ], [ %x, %if.end157 ]
  %.sink437 = phi i64 [ 1, %sw.bb160 ], [ -1, %sw.bb163 ], [ 1, %sw.bb166 ], [ -1, %if.end157 ]
  %76 = load i64, ptr %x.sink438, align 8, !dbg !5184, !tbaa !1476
  %dec159 = add nsw i64 %76, %.sink437, !dbg !5184
  store i64 %dec159, ptr %x.sink438, align 8, !dbg !5184, !tbaa !1476
  br label %cleanup169, !dbg !5185

cleanup169:                                       ; preds = %cleanup169.sink.split, %if.end157, %if.then, %if.end106, %SetImageProgress.exit
  %retval.1 = phi i32 [ 0, %SetImageProgress.exit ], [ 0, %if.end106 ], [ 0, %if.then ], [ 1, %if.end157 ], [ 1, %cleanup169.sink.split ], !dbg !4862
  ret i32 %retval.1, !dbg !5185
}

declare !dbg !5186 i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #4

declare !dbg !5191 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !5194 ptr @RelinquishVirtualMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal fastcc i64 @QuantizeErrorFlatten(ptr nocapture noundef readonly %cube_info, ptr nocapture noundef readonly %node_info, i64 noundef %offset, ptr nocapture noundef writeonly %quantize_error) unnamed_addr #12 !dbg !5197 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !5201, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !5202, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !5203, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i64 %offset, metadata !5204, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata ptr %quantize_error, metadata !5205, metadata !DIExpression()), !dbg !5209
  %nodes = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 9, !dbg !5210
  %0 = load i64, ptr %nodes, align 8, !dbg !5210, !tbaa !2217
  %cmp.not = icmp sgt i64 %0, %offset, !dbg !5212
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !5213

if.end:                                           ; preds = %entry
  %quantize_error1 = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 4, !dbg !5214
  %1 = load float, ptr %quantize_error1, align 8, !dbg !5214, !tbaa !2648
  %arrayidx = getelementptr inbounds float, ptr %quantize_error, i64 %offset, !dbg !5215
  store float %1, ptr %arrayidx, align 4, !dbg !5216, !tbaa !2277
  call void @llvm.dbg.value(metadata i64 1, metadata !5207, metadata !DIExpression()), !dbg !5209
  %associate_alpha = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19, !dbg !5217
  %2 = load i32, ptr %associate_alpha, align 8, !dbg !5217, !tbaa !2359
  %cmp2 = icmp eq i32 %2, 0, !dbg !5218
  %cond = select i1 %cmp2, i64 8, i64 16, !dbg !5219
  call void @llvm.dbg.value(metadata i64 %cond, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i64 0, metadata !5206, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i64 1, metadata !5207, metadata !DIExpression()), !dbg !5209
  br label %for.body, !dbg !5220

for.body:                                         ; preds = %if.end, %for.inc
  %n.02 = phi i64 [ 1, %if.end ], [ %n.1, %for.inc ]
  %i.01 = phi i64 [ 0, %if.end ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %n.02, metadata !5207, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.value(metadata i64 %i.01, metadata !5206, metadata !DIExpression()), !dbg !5209
  %arrayidx4 = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, i64 %i.01, !dbg !5222
  %3 = load ptr, ptr %arrayidx4, align 8, !dbg !5222, !tbaa !2575
  %cmp5.not = icmp eq ptr %3, null, !dbg !5225
  br i1 %cmp5.not, label %for.inc, label %if.then6, !dbg !5226

if.then6:                                         ; preds = %for.body
  %add = add i64 %n.02, %offset, !dbg !5227
  %call = tail call fastcc i64 @QuantizeErrorFlatten(ptr noundef %cube_info, ptr noundef nonnull %3, i64 noundef %add, ptr noundef %quantize_error), !dbg !5228
  %add9 = add i64 %call, %n.02, !dbg !5229
  call void @llvm.dbg.value(metadata i64 %add9, metadata !5207, metadata !DIExpression()), !dbg !5209
  br label %for.inc, !dbg !5230

for.inc:                                          ; preds = %for.body, %if.then6
  %n.1 = phi i64 [ %add9, %if.then6 ], [ %n.02, %for.body ], !dbg !5209
  call void @llvm.dbg.value(metadata i64 %n.1, metadata !5207, metadata !DIExpression()), !dbg !5209
  %inc = add nuw nsw i64 %i.01, 1, !dbg !5231
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5206, metadata !DIExpression()), !dbg !5209
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !5232
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !5220, !llvm.loop !5233

cleanup:                                          ; preds = %for.inc, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %n.1, %for.inc ], !dbg !5209
  ret i64 %retval.0, !dbg !5235
}

; Function Attrs: nofree
declare !dbg !5236 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define internal i32 @MagickRealTypeCompare(ptr nocapture noundef readonly %error_p, ptr nocapture noundef readonly %error_q) #14 !dbg !5244 {
entry:
  call void @llvm.dbg.value(metadata ptr %error_p, metadata !5246, metadata !DIExpression()), !dbg !5250
  call void @llvm.dbg.value(metadata ptr %error_q, metadata !5247, metadata !DIExpression()), !dbg !5250
  call void @llvm.dbg.value(metadata ptr %error_p, metadata !5248, metadata !DIExpression()), !dbg !5250
  call void @llvm.dbg.value(metadata ptr %error_q, metadata !5249, metadata !DIExpression()), !dbg !5250
  %0 = load float, ptr %error_p, align 4, !dbg !5251, !tbaa !2277
  %1 = load float, ptr %error_q, align 4, !dbg !5253, !tbaa !2277
  %cmp = fcmp ogt float %0, %1, !dbg !5254
  br i1 %cmp, label %cleanup, label %if.end, !dbg !5255

if.end:                                           ; preds = %entry
  %sub = fsub float %1, %0, !dbg !5256
  %2 = tail call float @llvm.fabs.f32(float %sub), !dbg !5258
  %3 = fpext float %2 to double, !dbg !5258
  %cmp1 = fcmp ugt double %3, 1.000000e-15, !dbg !5259
  %. = sext i1 %cmp1 to i32, !dbg !5250
  br label %cleanup, !dbg !5250

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !5250
  ret i32 %retval.0, !dbg !5260
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Reduce(ptr nocapture noundef %cube_info, ptr nocapture noundef readonly %node_info) unnamed_addr #9 !dbg !5261 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !5263, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !5264, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !5265, metadata !DIExpression()), !dbg !5268
  %associate_alpha = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 19, !dbg !5269
  %0 = load i32, ptr %associate_alpha, align 8, !dbg !5269, !tbaa !2359
  %cmp = icmp eq i32 %0, 0, !dbg !5270
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !5271
  call void @llvm.dbg.value(metadata i64 %cond, metadata !5267, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.value(metadata i64 0, metadata !5266, metadata !DIExpression()), !dbg !5268
  br label %for.body, !dbg !5272

for.body:                                         ; preds = %entry, %for.inc
  %i.01 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.01, metadata !5266, metadata !DIExpression()), !dbg !5268
  %arrayidx = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, i64 %i.01, !dbg !5274
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !5274, !tbaa !2575
  %cmp2.not = icmp eq ptr %1, null, !dbg !5277
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !5278

if.then:                                          ; preds = %for.body
  tail call fastcc void @Reduce(ptr noundef %cube_info, ptr noundef nonnull %1), !dbg !5279
  br label %for.inc, !dbg !5279

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.01, 1, !dbg !5280
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5266, metadata !DIExpression()), !dbg !5268
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !5281
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !5272, !llvm.loop !5282

for.end:                                          ; preds = %for.inc
  %quantize_error = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 4, !dbg !5284
  %2 = load float, ptr %quantize_error, align 8, !dbg !5284, !tbaa !2648
  %pruning_threshold = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 7, !dbg !5286
  %3 = load float, ptr %pruning_threshold, align 4, !dbg !5286, !tbaa !3114
  %cmp5 = fcmp ugt float %2, %3, !dbg !5287
  br i1 %cmp5, label %if.else, label %if.then6, !dbg !5288

if.then6:                                         ; preds = %for.end
  tail call fastcc void @PruneChild(ptr noundef nonnull %cube_info, ptr noundef nonnull %node_info), !dbg !5289
  br label %if.end17, !dbg !5289

if.else:                                          ; preds = %for.end
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 2, !dbg !5290
  %4 = load i64, ptr %number_unique, align 8, !dbg !5290, !tbaa !2661
  %cmp7.not = icmp eq i64 %4, 0, !dbg !5293
  br i1 %cmp7.not, label %if.end10, label %if.then8, !dbg !5294

if.then8:                                         ; preds = %if.else
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 1, !dbg !5295
  %5 = load i64, ptr %colors, align 8, !dbg !5296, !tbaa !2616
  %inc9 = add i64 %5, 1, !dbg !5296
  store i64 %inc9, ptr %colors, align 8, !dbg !5296, !tbaa !2616
  br label %if.end10, !dbg !5297

if.end10:                                         ; preds = %if.then8, %if.else
  %next_threshold = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 8, !dbg !5298
  %6 = load float, ptr %next_threshold, align 8, !dbg !5298, !tbaa !3072
  %cmp12 = fcmp olt float %2, %6, !dbg !5300
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !5301

if.then13:                                        ; preds = %if.end10
  store float %2, ptr %next_threshold, align 8, !dbg !5302, !tbaa !3072
  br label %if.end17, !dbg !5303

if.end17:                                         ; preds = %if.end10, %if.then13, %if.then6
  ret void, !dbg !5304
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #14 !dbg !5305 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !5307, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.value(metadata ptr %y, metadata !5308, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.value(metadata ptr %x, metadata !5309, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.value(metadata ptr %y, metadata !5310, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.value(metadata ptr %x, metadata !5313, metadata !DIExpression()) #17, !dbg !5319
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %x, i64 0, i32 2, !dbg !5321
  %0 = load i16, ptr %red.i, align 2, !dbg !5321, !tbaa !1355
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %x, i64 0, i32 1, !dbg !5323
  %1 = load i16, ptr %green.i, align 2, !dbg !5323, !tbaa !1359
  %cmp.i = icmp eq i16 %0, %1, !dbg !5324
  %2 = load i16, ptr %x, align 2, !dbg !5319, !tbaa !1363
  %cmp6.i = icmp eq i16 %0, %2
  %or.cond.i = select i1 %cmp.i, i1 %cmp6.i, i1 false, !dbg !5325
  br i1 %or.cond.i, label %PixelPacketIntensity.exit, label %if.end.i, !dbg !5325

if.end.i:                                         ; preds = %entry
  %conv11.i = uitofp i16 %0 to double, !dbg !5326
  %conv14.i = uitofp i16 %1 to double, !dbg !5327
  %mul15.i = fmul double %conv14.i, 0x3FE6E29307AF20EA, !dbg !5328
  %3 = tail call double @llvm.fmuladd.f64(double %conv11.i, double 2.126560e-01, double %mul15.i) #17, !dbg !5329
  %conv18.i = uitofp i16 %2 to double, !dbg !5330
  %4 = tail call double @llvm.fmuladd.f64(double %conv18.i, double 7.218600e-02, double %3) #17, !dbg !5331
  %conv19.i = fptrunc double %4 to float, !dbg !5332
  call void @llvm.dbg.value(metadata float %conv19.i, metadata !5318, metadata !DIExpression()) #17, !dbg !5319
  call void @llvm.dbg.value(metadata float %conv19.i, metadata !4551, metadata !DIExpression()) #17, !dbg !5333
  %cmp.i.i = fcmp ugt float %conv19.i, 0.000000e+00, !dbg !5335
  br i1 %cmp.i.i, label %if.end.i.i, label %PixelPacketIntensity.exit, !dbg !5336

if.end.i.i:                                       ; preds = %if.end.i
  %cmp1.i.i = fcmp ult float %conv19.i, 6.553500e+04, !dbg !5337
  br i1 %cmp1.i.i, label %if.end3.i.i, label %PixelPacketIntensity.exit, !dbg !5338

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %conv19.i, 5.000000e-01, !dbg !5339
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !5340
  br label %PixelPacketIntensity.exit, !dbg !5341

PixelPacketIntensity.exit:                        ; preds = %entry, %if.end.i, %if.end.i.i, %if.end3.i.i
  %retval.0.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %if.end.i ], [ -1, %if.end.i.i ], [ %0, %entry ], !dbg !5319
  call void @llvm.dbg.value(metadata ptr %y, metadata !5313, metadata !DIExpression()) #17, !dbg !5342
  %red.i3 = getelementptr inbounds %struct._PixelPacket, ptr %y, i64 0, i32 2, !dbg !5344
  %5 = load i16, ptr %red.i3, align 2, !dbg !5344, !tbaa !1355
  %green.i4 = getelementptr inbounds %struct._PixelPacket, ptr %y, i64 0, i32 1, !dbg !5345
  %6 = load i16, ptr %green.i4, align 2, !dbg !5345, !tbaa !1359
  %cmp.i5 = icmp eq i16 %5, %6, !dbg !5346
  %7 = load i16, ptr %y, align 2, !dbg !5342, !tbaa !1363
  %cmp6.i6 = icmp eq i16 %5, %7
  %or.cond.i7 = select i1 %cmp.i5, i1 %cmp6.i6, i1 false, !dbg !5347
  br i1 %or.cond.i7, label %PixelPacketIntensity.exit21, label %if.end.i14, !dbg !5347

if.end.i14:                                       ; preds = %PixelPacketIntensity.exit
  %conv11.i8 = uitofp i16 %5 to double, !dbg !5348
  %conv14.i9 = uitofp i16 %6 to double, !dbg !5349
  %mul15.i10 = fmul double %conv14.i9, 0x3FE6E29307AF20EA, !dbg !5350
  %8 = tail call double @llvm.fmuladd.f64(double %conv11.i8, double 2.126560e-01, double %mul15.i10) #17, !dbg !5351
  %conv18.i11 = uitofp i16 %7 to double, !dbg !5352
  %9 = tail call double @llvm.fmuladd.f64(double %conv18.i11, double 7.218600e-02, double %8) #17, !dbg !5353
  %conv19.i12 = fptrunc double %9 to float, !dbg !5354
  call void @llvm.dbg.value(metadata float %conv19.i12, metadata !5318, metadata !DIExpression()) #17, !dbg !5342
  call void @llvm.dbg.value(metadata float %conv19.i12, metadata !4551, metadata !DIExpression()) #17, !dbg !5355
  %cmp.i.i13 = fcmp ugt float %conv19.i12, 0.000000e+00, !dbg !5357
  br i1 %cmp.i.i13, label %if.end.i.i16, label %PixelPacketIntensity.exit21, !dbg !5358

if.end.i.i16:                                     ; preds = %if.end.i14
  %cmp1.i.i15 = fcmp ult float %conv19.i12, 6.553500e+04, !dbg !5359
  br i1 %cmp1.i.i15, label %if.end3.i.i19, label %PixelPacketIntensity.exit21, !dbg !5360

if.end3.i.i19:                                    ; preds = %if.end.i.i16
  %add.i.i17 = fadd float %conv19.i12, 5.000000e-01, !dbg !5361
  %conv.i.i18 = fptoui float %add.i.i17 to i16, !dbg !5362
  br label %PixelPacketIntensity.exit21, !dbg !5363

PixelPacketIntensity.exit21:                      ; preds = %PixelPacketIntensity.exit, %if.end.i14, %if.end.i.i16, %if.end3.i.i19
  %retval.0.i20 = phi i16 [ %conv.i.i18, %if.end3.i.i19 ], [ 0, %if.end.i14 ], [ -1, %if.end.i.i16 ], [ %5, %PixelPacketIntensity.exit ], !dbg !5342
  %conv = zext i16 %retval.0.i to i32, !dbg !5364
  %conv2 = zext i16 %retval.0.i20 to i32, !dbg !5365
  %sub = sub nsw i32 %conv, %conv2, !dbg !5366
  call void @llvm.dbg.value(metadata i32 %sub, metadata !5311, metadata !DIExpression()), !dbg !5312
  ret i32 %sub, !dbg !5367
}

declare !dbg !5368 i32 @IsMonochromeImage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone willreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { hot nounwind }
attributes #21 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1008, !1009, !1010, !1011, !1012, !1013}
!llvm.ident = !{!1014}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !564, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/quantize.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "0145e3822a3cc6356993eb9536319140")
!2 = !{!3, !9, !46, !53, !78, !90, !100, !106, !111, !125, !158, !180, !185, !193, !228, !243, !314, !322, !328, !401, !418, !430, !451, !527, !552}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 25, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!12 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!13 = !DIEnumerator(name: "RGBColorspace", value: 1)
!14 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!15 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!16 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!17 = !DIEnumerator(name: "LabColorspace", value: 5)
!18 = !DIEnumerator(name: "XYZColorspace", value: 6)
!19 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!20 = !DIEnumerator(name: "YCCColorspace", value: 8)
!21 = !DIEnumerator(name: "YIQColorspace", value: 9)
!22 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!23 = !DIEnumerator(name: "YUVColorspace", value: 11)
!24 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!25 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!26 = !DIEnumerator(name: "HSBColorspace", value: 14)
!27 = !DIEnumerator(name: "HSLColorspace", value: 15)
!28 = !DIEnumerator(name: "HWBColorspace", value: 16)
!29 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!30 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!31 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!32 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!33 = !DIEnumerator(name: "LogColorspace", value: 21)
!34 = !DIEnumerator(name: "CMYColorspace", value: 22)
!35 = !DIEnumerator(name: "LuvColorspace", value: 23)
!36 = !DIEnumerator(name: "HCLColorspace", value: 24)
!37 = !DIEnumerator(name: "LCHColorspace", value: 25)
!38 = !DIEnumerator(name: "LMSColorspace", value: 26)
!39 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!40 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!41 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!42 = !DIEnumerator(name: "HSIColorspace", value: 30)
!43 = !DIEnumerator(name: "HSVColorspace", value: 31)
!44 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!45 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 27, baseType: !5, size: 32, elements: !48)
!47 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3eab4066ac81fc10b9d90b7cb7db1009")
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "UndefinedDitherMethod", value: 0)
!50 = !DIEnumerator(name: "NoDitherMethod", value: 1)
!51 = !DIEnumerator(name: "RiemersmaDitherMethod", value: 2)
!52 = !DIEnumerator(name: "FloydSteinbergDitherMethod", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 25, baseType: !5, size: 32, elements: !55)
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
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 75, baseType: !5, size: 32, elements: !80)
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
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 63, baseType: !5, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99}
!92 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!93 = !DIEnumerator(name: "NoInterlace", value: 1)
!94 = !DIEnumerator(name: "LineInterlace", value: 2)
!95 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!96 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!97 = !DIEnumerator(name: "GIFInterlace", value: 5)
!98 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!99 = !DIEnumerator(name: "PNGInterlace", value: 7)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 30, baseType: !5, size: 32, elements: !102)
!101 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!104 = !DIEnumerator(name: "LSBEndian", value: 1)
!105 = !DIEnumerator(name: "MSBEndian", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 88, baseType: !5, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!109 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!110 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 47, baseType: !5, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!113 = !DIEnumerator(name: "UndefinedType", value: 0)
!114 = !DIEnumerator(name: "BilevelType", value: 1)
!115 = !DIEnumerator(name: "GrayscaleType", value: 2)
!116 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!117 = !DIEnumerator(name: "PaletteType", value: 4)
!118 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!119 = !DIEnumerator(name: "TrueColorType", value: 6)
!120 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!121 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!122 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!123 = !DIEnumerator(name: "OptimizeType", value: 10)
!124 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 27, baseType: !5, size: 32, elements: !127)
!126 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!128 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!129 = !DIEnumerator(name: "RotatePreview", value: 1)
!130 = !DIEnumerator(name: "ShearPreview", value: 2)
!131 = !DIEnumerator(name: "RollPreview", value: 3)
!132 = !DIEnumerator(name: "HuePreview", value: 4)
!133 = !DIEnumerator(name: "SaturationPreview", value: 5)
!134 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!135 = !DIEnumerator(name: "GammaPreview", value: 7)
!136 = !DIEnumerator(name: "SpiffPreview", value: 8)
!137 = !DIEnumerator(name: "DullPreview", value: 9)
!138 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!139 = !DIEnumerator(name: "QuantizePreview", value: 11)
!140 = !DIEnumerator(name: "DespecklePreview", value: 12)
!141 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!142 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!143 = !DIEnumerator(name: "SharpenPreview", value: 15)
!144 = !DIEnumerator(name: "BlurPreview", value: 16)
!145 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!146 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!147 = !DIEnumerator(name: "SpreadPreview", value: 19)
!148 = !DIEnumerator(name: "SolarizePreview", value: 20)
!149 = !DIEnumerator(name: "ShadePreview", value: 21)
!150 = !DIEnumerator(name: "RaisePreview", value: 22)
!151 = !DIEnumerator(name: "SegmentPreview", value: 23)
!152 = !DIEnumerator(name: "SwirlPreview", value: 24)
!153 = !DIEnumerator(name: "ImplodePreview", value: 25)
!154 = !DIEnumerator(name: "WavePreview", value: 26)
!155 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!156 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!157 = !DIEnumerator(name: "JPEGPreview", value: 29)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!160 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!161 = !DIEnumerator(name: "RedChannel", value: 1)
!162 = !DIEnumerator(name: "GrayChannel", value: 1)
!163 = !DIEnumerator(name: "CyanChannel", value: 1)
!164 = !DIEnumerator(name: "GreenChannel", value: 2)
!165 = !DIEnumerator(name: "MagentaChannel", value: 2)
!166 = !DIEnumerator(name: "BlueChannel", value: 4)
!167 = !DIEnumerator(name: "YellowChannel", value: 4)
!168 = !DIEnumerator(name: "AlphaChannel", value: 8)
!169 = !DIEnumerator(name: "OpacityChannel", value: 8)
!170 = !DIEnumerator(name: "MatteChannel", value: 8)
!171 = !DIEnumerator(name: "BlackChannel", value: 32)
!172 = !DIEnumerator(name: "IndexChannel", value: 32)
!173 = !DIEnumerator(name: "CompositeChannels", value: 47)
!174 = !DIEnumerator(name: "AllChannels", value: 134217727)
!175 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!176 = !DIEnumerator(name: "RGBChannels", value: 128)
!177 = !DIEnumerator(name: "GrayChannels", value: 128)
!178 = !DIEnumerator(name: "SyncChannels", value: 256)
!179 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, baseType: !5, size: 32, elements: !181)
!181 = !{!182, !183, !184}
!182 = !DIEnumerator(name: "UndefinedClass", value: 0)
!183 = !DIEnumerator(name: "DirectClass", value: 1)
!184 = !DIEnumerator(name: "PseudoClass", value: 2)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 42, baseType: !5, size: 32, elements: !187)
!186 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!187 = !{!188, !189, !190, !191, !192}
!188 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!189 = !DIEnumerator(name: "SaturationIntent", value: 1)
!190 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!191 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!192 = !DIEnumerator(name: "RelativeIntent", value: 4)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 32, baseType: !5, size: 32, elements: !195)
!194 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
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
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !229, line: 77, baseType: !5, size: 32, elements: !230)
!229 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!231 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!232 = !DIEnumerator(name: "ForgetGravity", value: 0)
!233 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!234 = !DIEnumerator(name: "NorthGravity", value: 2)
!235 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!236 = !DIEnumerator(name: "WestGravity", value: 4)
!237 = !DIEnumerator(name: "CenterGravity", value: 5)
!238 = !DIEnumerator(name: "EastGravity", value: 6)
!239 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!240 = !DIEnumerator(name: "SouthGravity", value: 8)
!241 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!242 = !DIEnumerator(name: "StaticGravity", value: 10)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 25, baseType: !5, size: 32, elements: !245)
!244 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!246 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!247 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!248 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!249 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!250 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!251 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!252 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!253 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!254 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!255 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!256 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!257 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!258 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!259 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!260 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!261 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!262 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!263 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!264 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!265 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!266 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!267 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!268 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!269 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!270 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!271 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!272 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!273 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!274 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!275 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!276 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!277 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!278 = !DIEnumerator(name: "InCompositeOp", value: 32)
!279 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!280 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!281 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!282 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!283 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!284 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!285 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!286 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!287 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!288 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!289 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!290 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!291 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!292 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!293 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!294 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!295 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!296 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!297 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!298 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!299 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!300 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!301 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!302 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!303 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!304 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!305 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!306 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!307 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!308 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!309 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!310 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!311 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!312 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!313 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 25, baseType: !5, size: 32, elements: !316)
!315 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!316 = !{!317, !318, !319, !320, !321}
!317 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!318 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!319 = !DIEnumerator(name: "NoneDispose", value: 1)
!320 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!321 = !DIEnumerator(name: "PreviousDispose", value: 3)
!322 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !323, line: 25, baseType: !5, size: 32, elements: !324)
!323 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!324 = !{!325, !326, !327}
!325 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!326 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!327 = !DIEnumerator(name: "RunningTimerState", value: 2)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !329, line: 28, baseType: !5, size: 32, elements: !330)
!329 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!331 = !DIEnumerator(name: "UndefinedException", value: 0)
!332 = !DIEnumerator(name: "WarningException", value: 300)
!333 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!334 = !DIEnumerator(name: "TypeWarning", value: 305)
!335 = !DIEnumerator(name: "OptionWarning", value: 310)
!336 = !DIEnumerator(name: "DelegateWarning", value: 315)
!337 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!338 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!339 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!340 = !DIEnumerator(name: "BlobWarning", value: 335)
!341 = !DIEnumerator(name: "StreamWarning", value: 340)
!342 = !DIEnumerator(name: "CacheWarning", value: 345)
!343 = !DIEnumerator(name: "CoderWarning", value: 350)
!344 = !DIEnumerator(name: "FilterWarning", value: 352)
!345 = !DIEnumerator(name: "ModuleWarning", value: 355)
!346 = !DIEnumerator(name: "DrawWarning", value: 360)
!347 = !DIEnumerator(name: "ImageWarning", value: 365)
!348 = !DIEnumerator(name: "WandWarning", value: 370)
!349 = !DIEnumerator(name: "RandomWarning", value: 375)
!350 = !DIEnumerator(name: "XServerWarning", value: 380)
!351 = !DIEnumerator(name: "MonitorWarning", value: 385)
!352 = !DIEnumerator(name: "RegistryWarning", value: 390)
!353 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!354 = !DIEnumerator(name: "PolicyWarning", value: 399)
!355 = !DIEnumerator(name: "ErrorException", value: 400)
!356 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!357 = !DIEnumerator(name: "TypeError", value: 405)
!358 = !DIEnumerator(name: "OptionError", value: 410)
!359 = !DIEnumerator(name: "DelegateError", value: 415)
!360 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!361 = !DIEnumerator(name: "CorruptImageError", value: 425)
!362 = !DIEnumerator(name: "FileOpenError", value: 430)
!363 = !DIEnumerator(name: "BlobError", value: 435)
!364 = !DIEnumerator(name: "StreamError", value: 440)
!365 = !DIEnumerator(name: "CacheError", value: 445)
!366 = !DIEnumerator(name: "CoderError", value: 450)
!367 = !DIEnumerator(name: "FilterError", value: 452)
!368 = !DIEnumerator(name: "ModuleError", value: 455)
!369 = !DIEnumerator(name: "DrawError", value: 460)
!370 = !DIEnumerator(name: "ImageError", value: 465)
!371 = !DIEnumerator(name: "WandError", value: 470)
!372 = !DIEnumerator(name: "RandomError", value: 475)
!373 = !DIEnumerator(name: "XServerError", value: 480)
!374 = !DIEnumerator(name: "MonitorError", value: 485)
!375 = !DIEnumerator(name: "RegistryError", value: 490)
!376 = !DIEnumerator(name: "ConfigureError", value: 495)
!377 = !DIEnumerator(name: "PolicyError", value: 499)
!378 = !DIEnumerator(name: "FatalErrorException", value: 700)
!379 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!380 = !DIEnumerator(name: "TypeFatalError", value: 705)
!381 = !DIEnumerator(name: "OptionFatalError", value: 710)
!382 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!383 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!384 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!385 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!386 = !DIEnumerator(name: "BlobFatalError", value: 735)
!387 = !DIEnumerator(name: "StreamFatalError", value: 740)
!388 = !DIEnumerator(name: "CacheFatalError", value: 745)
!389 = !DIEnumerator(name: "CoderFatalError", value: 750)
!390 = !DIEnumerator(name: "FilterFatalError", value: 752)
!391 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!392 = !DIEnumerator(name: "DrawFatalError", value: 760)
!393 = !DIEnumerator(name: "ImageFatalError", value: 765)
!394 = !DIEnumerator(name: "WandFatalError", value: 770)
!395 = !DIEnumerator(name: "RandomFatalError", value: 775)
!396 = !DIEnumerator(name: "XServerFatalError", value: 780)
!397 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!398 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!399 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!400 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!401 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !402, line: 31, baseType: !5, size: 32, elements: !403)
!402 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417}
!404 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!405 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!406 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!407 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!408 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!409 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!410 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!411 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!412 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!413 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!414 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!415 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!416 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!417 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!418 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !402, line: 67, baseType: !5, size: 32, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!420 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!421 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!422 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!423 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!424 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!425 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!426 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!427 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!428 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!429 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!430 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !431, line: 27, baseType: !5, size: 32, elements: !432)
!431 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!433 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!434 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!435 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!436 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!437 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!438 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!439 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!440 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!441 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!442 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!443 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!444 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!445 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!446 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!447 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!448 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!449 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!450 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !452, line: 25, baseType: !453, size: 32, elements: !454)
!452 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!453 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!455 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!456 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!457 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!458 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!459 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!460 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!461 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!462 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!463 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!464 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!465 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!466 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!467 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!468 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!469 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!470 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!471 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!472 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!473 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!474 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!475 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!476 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!477 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!478 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!479 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!480 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!481 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!482 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!483 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!484 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!485 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!486 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!487 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!488 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!489 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!490 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!491 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!492 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!493 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!494 = !DIEnumerator(name: "MagickListOptions", value: 38)
!495 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!496 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!497 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!498 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!499 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!500 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!501 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!502 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!503 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!504 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!505 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!506 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!507 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!508 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!509 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!510 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!511 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!512 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!513 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!514 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!515 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!516 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!517 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!518 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!519 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!520 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!521 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!522 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!523 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!524 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!525 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!526 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !528, line: 34, baseType: !5, size: 32, elements: !529)
!528 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!530 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!531 = !DIEnumerator(name: "NoEvents", value: 0)
!532 = !DIEnumerator(name: "TraceEvent", value: 1)
!533 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!534 = !DIEnumerator(name: "BlobEvent", value: 4)
!535 = !DIEnumerator(name: "CacheEvent", value: 8)
!536 = !DIEnumerator(name: "CoderEvent", value: 16)
!537 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!538 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!539 = !DIEnumerator(name: "DrawEvent", value: 128)
!540 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!541 = !DIEnumerator(name: "ImageEvent", value: 512)
!542 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!543 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!544 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!545 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!546 = !DIEnumerator(name: "TransformEvent", value: 16384)
!547 = !DIEnumerator(name: "UserEvent", value: 36864)
!548 = !DIEnumerator(name: "WandEvent", value: 65536)
!549 = !DIEnumerator(name: "X11Event", value: 131072)
!550 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!551 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !553, line: 25, baseType: !5, size: 32, elements: !554)
!553 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563}
!555 = !DIEnumerator(name: "UndefinedResource", value: 0)
!556 = !DIEnumerator(name: "AreaResource", value: 1)
!557 = !DIEnumerator(name: "DiskResource", value: 2)
!558 = !DIEnumerator(name: "FileResource", value: 3)
!559 = !DIEnumerator(name: "MapResource", value: 4)
!560 = !DIEnumerator(name: "MemoryResource", value: 5)
!561 = !DIEnumerator(name: "ThreadResource", value: 6)
!562 = !DIEnumerator(name: "TimeResource", value: 7)
!563 = !DIEnumerator(name: "ThrottleResource", value: 8)
!564 = !{!565, !582, !572, !453, !583, !758, !581, !860, !640, !930, !932, !935, !617, !624, !669, !937, !934, !753, !570, !938, !652, !761, !944, !988, !993, !980, !814, !764, !1005, !1006, !1007, !625, !5}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantizeInfo", file: !47, line: 57, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantizeInfo", file: !47, line: 35, size: 384, elements: !568)
!568 = !{!569, !573, !574, !576, !578, !579, !580}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "number_colors", scope: !567, file: !47, line: 38, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !571, line: 46, baseType: !572)
!571 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!572 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tree_depth", scope: !567, file: !47, line: 41, baseType: !570, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !567, file: !47, line: 44, baseType: !575, size: 32, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !567, file: !47, line: 47, baseType: !577, size: 32, offset: 160)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !10, line: 61, baseType: !9)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "measure_error", scope: !567, file: !47, line: 50, baseType: !575, size: 32, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !567, file: !47, line: 53, baseType: !570, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dither_method", scope: !567, file: !47, line: 56, baseType: !581, size: 32, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "DitherMethod", file: !47, line: 33, baseType: !46)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !4, line: 223, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !79, line: 356, size: 134336, elements: !586)
!586 = !{!587, !589, !591, !592, !593, !594, !595, !598, !599, !600, !601, !602, !603, !604, !606, !608, !610, !611, !612, !613, !614, !615, !616, !618, !619, !629, !630, !631, !632, !633, !634, !635, !637, !639, !645, !646, !647, !648, !649, !651, !844, !845, !846, !847, !848, !859, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !927, !928, !929}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !585, file: !79, line: 359, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !54, line: 49, baseType: !53)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !585, file: !79, line: 362, baseType: !590, size: 32, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !79, line: 86, baseType: !78)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !585, file: !79, line: 365, baseType: !575, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !585, file: !79, line: 366, baseType: !575, size: 32, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !585, file: !79, line: 367, baseType: !575, size: 32, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !585, file: !79, line: 368, baseType: !575, size: 32, offset: 160)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !585, file: !79, line: 371, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !585, file: !79, line: 372, baseType: !596, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !585, file: !79, line: 373, baseType: !596, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !585, file: !79, line: 374, baseType: !596, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !585, file: !79, line: 377, baseType: !570, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !585, file: !79, line: 378, baseType: !570, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !585, file: !79, line: 379, baseType: !570, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !585, file: !79, line: 382, baseType: !605, size: 32, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !79, line: 73, baseType: !90)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !585, file: !79, line: 385, baseType: !607, size: 32, offset: 672)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !101, line: 35, baseType: !100)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !585, file: !79, line: 388, baseType: !609, size: 32, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !79, line: 93, baseType: !106)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !585, file: !79, line: 391, baseType: !570, size: 64, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !585, file: !79, line: 394, baseType: !596, size: 64, offset: 832)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !585, file: !79, line: 395, baseType: !596, size: 64, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !585, file: !79, line: 396, baseType: !596, size: 64, offset: 960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !585, file: !79, line: 397, baseType: !596, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !585, file: !79, line: 398, baseType: !596, size: 64, offset: 1088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !585, file: !79, line: 401, baseType: !617, size: 64, offset: 1152)
!617 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !585, file: !79, line: 402, baseType: !617, size: 64, offset: 1216)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !585, file: !79, line: 405, baseType: !620, size: 64, offset: 1280)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !402, line: 148, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !402, line: 131, size: 64, elements: !622)
!622 = !{!623, !626, !627, !628}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !621, file: !402, line: 143, baseType: !624, size: 16)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !625)
!625 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !621, file: !402, line: 144, baseType: !624, size: 16, offset: 16)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !621, file: !402, line: 145, baseType: !624, size: 16, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !621, file: !402, line: 146, baseType: !624, size: 16, offset: 48)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !585, file: !79, line: 406, baseType: !620, size: 64, offset: 1344)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !585, file: !79, line: 407, baseType: !620, size: 64, offset: 1408)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !585, file: !79, line: 410, baseType: !575, size: 32, offset: 1472)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !585, file: !79, line: 411, baseType: !575, size: 32, offset: 1504)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !585, file: !79, line: 414, baseType: !570, size: 64, offset: 1536)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !585, file: !79, line: 417, baseType: !577, size: 32, offset: 1600)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !79, line: 420, baseType: !636, size: 32, offset: 1632)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !79, line: 61, baseType: !111)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !585, file: !79, line: 423, baseType: !638, size: 32, offset: 1664)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !126, line: 59, baseType: !125)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !585, file: !79, line: 426, baseType: !640, size: 64, offset: 1728)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !641, line: 77, baseType: !642)
!641 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !643, line: 193, baseType: !644)
!643 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!644 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !585, file: !79, line: 429, baseType: !575, size: 32, offset: 1792)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !585, file: !79, line: 430, baseType: !575, size: 32, offset: 1824)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !585, file: !79, line: 433, baseType: !596, size: 64, offset: 1856)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !585, file: !79, line: 434, baseType: !596, size: 64, offset: 1920)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !585, file: !79, line: 437, baseType: !650, size: 32, offset: 1984)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !158)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !585, file: !79, line: 440, baseType: !652, size: 64, offset: 2048)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !79, line: 150, size: 105920, elements: !655)
!655 = !{!656, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !670, !671, !672, !673, !674, !688, !690, !691, !692, !693, !694, !695, !696, !697, !698, !706, !707, !708, !709, !710, !711, !713, !714, !715, !717, !719, !721, !723, !724, !725, !726, !727, !728, !729, !737, !752, !766, !767, !768, !769, !773, !777, !781, !782, !783, !784, !785, !802, !803, !805, !806, !816, !817, !819, !820, !821, !822, !823, !824, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !841, !843}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !654, file: !79, line: 153, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !180)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !654, file: !79, line: 156, baseType: !577, size: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !654, file: !79, line: 159, baseType: !588, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !654, file: !79, line: 162, baseType: !570, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !654, file: !79, line: 165, baseType: !590, size: 32, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !654, file: !79, line: 168, baseType: !575, size: 32, offset: 224)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !654, file: !79, line: 169, baseType: !575, size: 32, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !654, file: !79, line: 172, baseType: !570, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !654, file: !79, line: 173, baseType: !570, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !654, file: !79, line: 174, baseType: !570, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !654, file: !79, line: 175, baseType: !570, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !654, file: !79, line: 178, baseType: !669, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !654, file: !79, line: 179, baseType: !620, size: 64, offset: 640)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !654, file: !79, line: 180, baseType: !620, size: 64, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !654, file: !79, line: 181, baseType: !620, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !654, file: !79, line: 184, baseType: !617, size: 64, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !654, file: !79, line: 187, baseType: !675, size: 768, offset: 896)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !79, line: 128, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !79, line: 121, size: 768, elements: !677)
!677 = !{!678, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !676, file: !79, line: 124, baseType: !679, size: 192)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !79, line: 101, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !79, line: 95, size: 192, elements: !681)
!681 = !{!682, !683, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !680, file: !79, line: 98, baseType: !617, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !680, file: !79, line: 99, baseType: !617, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !680, file: !79, line: 100, baseType: !617, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !676, file: !79, line: 125, baseType: !679, size: 192, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !676, file: !79, line: 126, baseType: !679, size: 192, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !676, file: !79, line: 127, baseType: !679, size: 192, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !654, file: !79, line: 190, baseType: !689, size: 32, offset: 1664)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !186, line: 49, baseType: !185)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !654, file: !79, line: 193, baseType: !582, size: 64, offset: 1728)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !654, file: !79, line: 196, baseType: !609, size: 32, offset: 1792)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !654, file: !79, line: 199, baseType: !596, size: 64, offset: 1856)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !654, file: !79, line: 200, baseType: !596, size: 64, offset: 1920)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !654, file: !79, line: 201, baseType: !596, size: 64, offset: 1984)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !654, file: !79, line: 204, baseType: !640, size: 64, offset: 2048)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !654, file: !79, line: 207, baseType: !617, size: 64, offset: 2112)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !654, file: !79, line: 208, baseType: !617, size: 64, offset: 2176)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !654, file: !79, line: 211, baseType: !699, size: 256, offset: 2240)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !229, line: 130, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !229, line: 121, size: 256, elements: !701)
!701 = !{!702, !703, !704, !705}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !700, file: !229, line: 124, baseType: !570, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !700, file: !229, line: 125, baseType: !570, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !700, file: !229, line: 128, baseType: !640, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !700, file: !229, line: 129, baseType: !640, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !654, file: !79, line: 212, baseType: !699, size: 256, offset: 2496)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !654, file: !79, line: 213, baseType: !699, size: 256, offset: 2752)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !654, file: !79, line: 216, baseType: !617, size: 64, offset: 3008)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !654, file: !79, line: 217, baseType: !617, size: 64, offset: 3072)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !654, file: !79, line: 218, baseType: !617, size: 64, offset: 3136)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !654, file: !79, line: 221, baseType: !712, size: 32, offset: 3200)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !194, line: 66, baseType: !193)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !654, file: !79, line: 224, baseType: !605, size: 32, offset: 3232)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !654, file: !79, line: 227, baseType: !607, size: 32, offset: 3264)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !654, file: !79, line: 230, baseType: !716, size: 32, offset: 3296)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !229, line: 91, baseType: !228)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !654, file: !79, line: 233, baseType: !718, size: 32, offset: 3328)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !244, line: 99, baseType: !243)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !654, file: !79, line: 236, baseType: !720, size: 32, offset: 3360)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !315, line: 32, baseType: !314)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !654, file: !79, line: 239, baseType: !722, size: 64, offset: 3392)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !654, file: !79, line: 242, baseType: !570, size: 64, offset: 3456)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !654, file: !79, line: 243, baseType: !570, size: 64, offset: 3520)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !654, file: !79, line: 246, baseType: !640, size: 64, offset: 3584)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !654, file: !79, line: 249, baseType: !570, size: 64, offset: 3648)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !654, file: !79, line: 250, baseType: !570, size: 64, offset: 3712)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !654, file: !79, line: 253, baseType: !640, size: 64, offset: 3776)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !654, file: !79, line: 256, baseType: !730, size: 192, offset: 3840)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !731, line: 68, baseType: !732)
!731 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !731, line: 62, size: 192, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !732, file: !731, line: 65, baseType: !617, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !732, file: !731, line: 66, baseType: !617, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !732, file: !731, line: 67, baseType: !617, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !654, file: !79, line: 259, baseType: !738, size: 512, offset: 4032)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !323, line: 51, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !323, line: 40, size: 512, elements: !740)
!740 = !{!741, !748, !749, !751}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !739, file: !323, line: 43, baseType: !742, size: 192)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !323, line: 38, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !323, line: 32, size: 192, elements: !744)
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !743, file: !323, line: 35, baseType: !617, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !743, file: !323, line: 36, baseType: !617, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !743, file: !323, line: 37, baseType: !617, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !739, file: !323, line: 44, baseType: !742, size: 192, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !739, file: !323, line: 47, baseType: !750, size: 32, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !323, line: 30, baseType: !322)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !739, file: !323, line: 50, baseType: !570, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !654, file: !79, line: 262, baseType: !753, size: 64, offset: 4544)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !754, line: 26, baseType: !755)
!754 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!575, !758, !760, !763, !582}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !762)
!762 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !765)
!765 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !654, file: !79, line: 265, baseType: !582, size: 64, offset: 4608)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !654, file: !79, line: 266, baseType: !582, size: 64, offset: 4672)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !654, file: !79, line: 267, baseType: !582, size: 64, offset: 4736)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !654, file: !79, line: 270, baseType: !770, size: 64, offset: 4800)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !54, line: 52, baseType: !772)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !54, line: 51, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !654, file: !79, line: 273, baseType: !774, size: 64, offset: 4864)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !776)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !654, file: !79, line: 276, baseType: !778, size: 32768, offset: 4928)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 32768, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 4096)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !654, file: !79, line: 277, baseType: !778, size: 32768, offset: 37696)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !654, file: !79, line: 278, baseType: !778, size: 32768, offset: 70464)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !654, file: !79, line: 281, baseType: !570, size: 64, offset: 103232)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !654, file: !79, line: 282, baseType: !570, size: 64, offset: 103296)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !654, file: !79, line: 285, baseType: !786, size: 448, offset: 103360)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !329, line: 102, size: 448, elements: !788)
!788 = !{!789, !791, !792, !793, !794, !795, !796, !801}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !787, file: !329, line: 105, baseType: !790, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !329, line: 100, baseType: !328)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !787, file: !329, line: 108, baseType: !453, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !787, file: !329, line: 111, baseType: !596, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !787, file: !329, line: 112, baseType: !596, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !787, file: !329, line: 115, baseType: !582, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !787, file: !329, line: 118, baseType: !575, size: 32, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !787, file: !329, line: 121, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !799, line: 26, baseType: !800)
!799 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !799, line: 25, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !787, file: !329, line: 124, baseType: !570, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !654, file: !79, line: 288, baseType: !575, size: 32, offset: 103808)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !654, file: !79, line: 291, baseType: !804, size: 64, offset: 103872)
!804 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !654, file: !79, line: 294, baseType: !797, size: 64, offset: 103936)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !654, file: !79, line: 297, baseType: !807, size: 256, offset: 104000)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !186, line: 40, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !186, line: 27, size: 256, elements: !809)
!809 = !{!810, !811, !812, !815}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !808, file: !186, line: 30, baseType: !596, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !808, file: !186, line: 33, baseType: !570, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !808, file: !186, line: 36, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !808, file: !186, line: 39, baseType: !570, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !654, file: !79, line: 298, baseType: !807, size: 256, offset: 104256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !654, file: !79, line: 299, baseType: !818, size: 64, offset: 104512)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !654, file: !79, line: 302, baseType: !570, size: 64, offset: 104576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !654, file: !79, line: 305, baseType: !570, size: 64, offset: 104640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !654, file: !79, line: 308, baseType: !722, size: 64, offset: 104704)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !654, file: !79, line: 309, baseType: !722, size: 64, offset: 104768)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !79, line: 310, baseType: !722, size: 64, offset: 104832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !654, file: !79, line: 313, baseType: !825, size: 32, offset: 104896)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !402, line: 47, baseType: !401)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !654, file: !79, line: 316, baseType: !575, size: 32, offset: 104928)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !654, file: !79, line: 319, baseType: !620, size: 64, offset: 104960)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !654, file: !79, line: 322, baseType: !722, size: 64, offset: 105024)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !654, file: !79, line: 325, baseType: !699, size: 256, offset: 105088)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !654, file: !79, line: 328, baseType: !582, size: 64, offset: 105344)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !654, file: !79, line: 329, baseType: !582, size: 64, offset: 105408)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !79, line: 332, baseType: !636, size: 32, offset: 105472)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !654, file: !79, line: 335, baseType: !575, size: 32, offset: 105504)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !654, file: !79, line: 338, baseType: !764, size: 64, offset: 105536)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !654, file: !79, line: 341, baseType: !575, size: 32, offset: 105600)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !654, file: !79, line: 344, baseType: !570, size: 64, offset: 105664)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !654, file: !79, line: 347, baseType: !838, size: 64, offset: 105728)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !839, line: 7, baseType: !840)
!839 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !643, line: 160, baseType: !644)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !654, file: !79, line: 350, baseType: !842, size: 32, offset: 105792)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !402, line: 79, baseType: !418)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !654, file: !79, line: 353, baseType: !570, size: 64, offset: 105856)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !585, file: !79, line: 443, baseType: !582, size: 64, offset: 2112)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !585, file: !79, line: 446, baseType: !753, size: 64, offset: 2176)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !585, file: !79, line: 449, baseType: !582, size: 64, offset: 2240)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !585, file: !79, line: 450, baseType: !582, size: 64, offset: 2304)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !585, file: !79, line: 453, baseType: !849, size: 64, offset: 2368)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !850, line: 26, baseType: !851)
!850 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!570, !854, !856, !858}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !585, file: !79, line: 456, baseType: !860, size: 64, offset: 2432)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !862, line: 7, baseType: !863)
!862 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !864, line: 49, size: 1728, elements: !865)
!864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !881, !883, !884, !885, !887, !888, !890, !894, !897, !899, !902, !905, !906, !907, !908, !909}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !863, file: !864, line: 51, baseType: !453, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !863, file: !864, line: 54, baseType: !596, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !863, file: !864, line: 55, baseType: !596, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !863, file: !864, line: 56, baseType: !596, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !863, file: !864, line: 57, baseType: !596, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !863, file: !864, line: 58, baseType: !596, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !863, file: !864, line: 59, baseType: !596, size: 64, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !863, file: !864, line: 60, baseType: !596, size: 64, offset: 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !863, file: !864, line: 61, baseType: !596, size: 64, offset: 512)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !863, file: !864, line: 64, baseType: !596, size: 64, offset: 576)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !863, file: !864, line: 65, baseType: !596, size: 64, offset: 640)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !863, file: !864, line: 66, baseType: !596, size: 64, offset: 704)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !863, file: !864, line: 68, baseType: !879, size: 64, offset: 768)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !864, line: 36, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !863, file: !864, line: 70, baseType: !882, size: 64, offset: 832)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !863, file: !864, line: 72, baseType: !453, size: 32, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !863, file: !864, line: 73, baseType: !453, size: 32, offset: 928)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !863, file: !864, line: 74, baseType: !886, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !643, line: 152, baseType: !644)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !863, file: !864, line: 77, baseType: !625, size: 16, offset: 1024)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !863, file: !864, line: 78, baseType: !889, size: 8, offset: 1040)
!889 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !863, file: !864, line: 79, baseType: !891, size: 8, offset: 1048)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 8, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 1)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !863, file: !864, line: 81, baseType: !895, size: 64, offset: 1088)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !864, line: 43, baseType: null)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !863, file: !864, line: 89, baseType: !898, size: 64, offset: 1152)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !643, line: 153, baseType: !644)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !863, file: !864, line: 91, baseType: !900, size: 64, offset: 1216)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !864, line: 37, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !863, file: !864, line: 92, baseType: !903, size: 64, offset: 1280)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !864, line: 38, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !863, file: !864, line: 93, baseType: !882, size: 64, offset: 1344)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !863, file: !864, line: 94, baseType: !582, size: 64, offset: 1408)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !863, file: !864, line: 95, baseType: !570, size: 64, offset: 1472)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !863, file: !864, line: 96, baseType: !453, size: 32, offset: 1536)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !863, file: !864, line: 98, baseType: !910, size: 160, offset: 1568)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 160, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 20)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !585, file: !79, line: 459, baseType: !582, size: 64, offset: 2496)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !585, file: !79, line: 462, baseType: !570, size: 64, offset: 2560)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !585, file: !79, line: 465, baseType: !778, size: 32768, offset: 2624)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !585, file: !79, line: 466, baseType: !778, size: 32768, offset: 35392)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !585, file: !79, line: 467, baseType: !778, size: 32768, offset: 68160)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !585, file: !79, line: 468, baseType: !778, size: 32768, offset: 100928)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !585, file: !79, line: 471, baseType: !575, size: 32, offset: 133696)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !585, file: !79, line: 474, baseType: !596, size: 64, offset: 133760)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !585, file: !79, line: 477, baseType: !570, size: 64, offset: 133824)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !585, file: !79, line: 478, baseType: !570, size: 64, offset: 133888)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !585, file: !79, line: 481, baseType: !620, size: 64, offset: 133952)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !585, file: !79, line: 484, baseType: !570, size: 64, offset: 134016)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !585, file: !79, line: 487, baseType: !926, size: 32, offset: 134080)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !431, line: 47, baseType: !430)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !585, file: !79, line: 490, baseType: !620, size: 64, offset: 134112)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !585, file: !79, line: 493, baseType: !582, size: 64, offset: 134208)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !585, file: !79, line: 496, baseType: !575, size: 32, offset: 134272)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !402, line: 129, baseType: !624)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !936)
!936 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "CubeInfo", file: !940, line: 321, baseType: !941)
!940 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantize.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0145e3822a3cc6356993eb9536319140")
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CubeInfo", file: !940, line: 257, size: 4032, elements: !942)
!942 = !{!943, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !987, !992, !994, !996, !998, !999, !1000, !1001, !1002, !1003, !1004}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !941, file: !940, line: 260, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "NodeInfo", file: !940, line: 246, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NodeInfo", file: !940, line: 227, size: 1536, elements: !947)
!947 = !{!948, !950, !954, !955, !963, !964, !965, !966}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !946, file: !940, line: 230, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !946, file: !940, line: 231, baseType: !951, size: 1024, offset: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !949, size: 1024, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "number_unique", scope: !946, file: !940, line: 234, baseType: !764, size: 64, offset: 1088)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "total_color", scope: !946, file: !940, line: 237, baseType: !956, size: 128, offset: 1152)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "RealPixelPacket", file: !940, line: 225, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RealPixelPacket", file: !940, line: 218, size: 128, elements: !958)
!958 = !{!959, !960, !961, !962}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !957, file: !940, line: 221, baseType: !935, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !957, file: !940, line: 222, baseType: !935, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !957, file: !940, line: 223, baseType: !935, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !957, file: !940, line: 224, baseType: !935, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_error", scope: !946, file: !940, line: 240, baseType: !935, size: 32, offset: 1280)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "color_number", scope: !946, file: !940, line: 243, baseType: !570, size: 64, offset: 1344)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !946, file: !940, line: 244, baseType: !570, size: 64, offset: 1408)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !946, file: !940, line: 245, baseType: !570, size: 64, offset: 1472)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !941, file: !940, line: 263, baseType: !570, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_colors", scope: !941, file: !940, line: 264, baseType: !570, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_index", scope: !941, file: !940, line: 267, baseType: !640, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_pixels", scope: !941, file: !940, line: 270, baseType: !764, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !941, file: !940, line: 273, baseType: !956, size: 128, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !941, file: !940, line: 276, baseType: !935, size: 32, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pruning_threshold", scope: !941, file: !940, line: 277, baseType: !935, size: 32, offset: 480)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "next_threshold", scope: !941, file: !940, line: 278, baseType: !935, size: 32, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !941, file: !940, line: 281, baseType: !570, size: 64, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "free_nodes", scope: !941, file: !940, line: 282, baseType: !570, size: 64, offset: 640)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "color_number", scope: !941, file: !940, line: 283, baseType: !570, size: 64, offset: 704)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "next_node", scope: !941, file: !940, line: 286, baseType: !944, size: 64, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "node_queue", scope: !941, file: !940, line: 289, baseType: !980, size: 64, offset: 832)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "Nodes", file: !940, line: 255, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nodes", file: !940, line: 248, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !982, file: !940, line: 251, baseType: !944, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !940, line: 254, baseType: !986, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "memory_info", scope: !941, file: !940, line: 292, baseType: !988, size: 64, offset: 896)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "MemoryInfo", file: !990, line: 26, baseType: !991)
!990 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MemoryInfo", file: !990, line: 25, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !941, file: !940, line: 295, baseType: !993, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !941, file: !940, line: 298, baseType: !995, size: 2048, offset: 1024)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 2048, elements: !952)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "weights", scope: !941, file: !940, line: 301, baseType: !997, size: 512, offset: 3072)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 512, elements: !952)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_info", scope: !941, file: !940, line: 304, baseType: !565, size: 64, offset: 3584)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "associate_alpha", scope: !941, file: !940, line: 307, baseType: !575, size: 32, offset: 3648)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !941, file: !940, line: 310, baseType: !640, size: 64, offset: 3712)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !941, file: !940, line: 311, baseType: !640, size: 64, offset: 3776)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !941, file: !940, line: 314, baseType: !570, size: 64, offset: 3840)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !941, file: !940, line: 317, baseType: !761, size: 64, offset: 3904)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !941, file: !940, line: 320, baseType: !764, size: 64, offset: 3968)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!1008 = !{i32 7, !"Dwarf Version", i32 5}
!1009 = !{i32 2, !"Debug Info Version", i32 3}
!1010 = !{i32 1, !"wchar_size", i32 4}
!1011 = !{i32 7, !"PIC Level", i32 2}
!1012 = !{i32 7, !"PIE Level", i32 2}
!1013 = !{i32 7, !"uwtable", i32 2}
!1014 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1015 = distinct !DISubprogram(name: "AcquireQuantizeInfo", scope: !940, file: !940, line: 370, type: !1016, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1020)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!565, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!1020 = !{!1021, !1022, !1023, !1026, !1027}
!1021 = !DILocalVariable(name: "image_info", arg: 1, scope: !1015, file: !940, line: 370, type: !1018)
!1022 = !DILocalVariable(name: "quantize_info", scope: !1015, file: !940, line: 373, type: !565)
!1023 = !DILocalVariable(name: "message", scope: !1024, file: !940, line: 377, type: !596)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !940, line: 377, column: 5)
!1025 = distinct !DILexicalBlock(scope: !1015, file: !940, line: 376, column: 7)
!1026 = !DILocalVariable(name: "exception", scope: !1024, file: !940, line: 377, type: !786)
!1027 = !DILocalVariable(name: "option", scope: !1028, file: !940, line: 382, type: !758)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !940, line: 380, column: 5)
!1029 = distinct !DILexicalBlock(scope: !1015, file: !940, line: 379, column: 7)
!1030 = !DILocation(line: 0, scope: !1015)
!1031 = !DILocation(line: 375, column: 34, scope: !1015)
!1032 = !DILocation(line: 376, column: 21, scope: !1025)
!1033 = !DILocation(line: 376, column: 7, scope: !1015)
!1034 = !DILocation(line: 377, column: 5, scope: !1024)
!1035 = !{!1036, !1036, i64 0}
!1036 = !{!"int", !1037, i64 0}
!1037 = !{!"omnipotent char", !1038, i64 0}
!1038 = !{!"Simple C/C++ TBAA"}
!1039 = !DILocation(line: 0, scope: !1024)
!1040 = !DILocalVariable(name: "quantize_info", arg: 1, scope: !1041, file: !940, line: 2235, type: !565)
!1041 = distinct !DISubprogram(name: "GetQuantizeInfo", scope: !940, file: !940, line: 2235, type: !1042, scopeLine: 2236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !565}
!1044 = !{!1040}
!1045 = !DILocation(line: 0, scope: !1041, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 378, column: 3, scope: !1015)
!1047 = !DILocation(line: 2237, column: 10, scope: !1041, inlinedAt: !1046)
!1048 = !DILocation(line: 2239, column: 10, scope: !1041, inlinedAt: !1046)
!1049 = !DILocation(line: 2240, column: 31, scope: !1041, inlinedAt: !1046)
!1050 = !{!1051, !1052, i64 0}
!1051 = !{!"_QuantizeInfo", !1052, i64 0, !1052, i64 8, !1037, i64 16, !1037, i64 20, !1037, i64 24, !1052, i64 32, !1037, i64 40}
!1052 = !{!"long", !1037, i64 0}
!1053 = !DILocation(line: 2241, column: 18, scope: !1041, inlinedAt: !1046)
!1054 = !DILocation(line: 2241, column: 24, scope: !1041, inlinedAt: !1046)
!1055 = !{!1051, !1037, i64 16}
!1056 = !DILocation(line: 2242, column: 18, scope: !1041, inlinedAt: !1046)
!1057 = !DILocation(line: 2242, column: 31, scope: !1041, inlinedAt: !1046)
!1058 = !{!1051, !1037, i64 40}
!1059 = !DILocation(line: 2243, column: 18, scope: !1041, inlinedAt: !1046)
!1060 = !DILocation(line: 2243, column: 28, scope: !1041, inlinedAt: !1046)
!1061 = !{!1051, !1037, i64 20}
!1062 = !DILocation(line: 2244, column: 18, scope: !1041, inlinedAt: !1046)
!1063 = !DILocation(line: 2244, column: 31, scope: !1041, inlinedAt: !1046)
!1064 = !{!1051, !1037, i64 24}
!1065 = !DILocation(line: 2245, column: 18, scope: !1041, inlinedAt: !1046)
!1066 = !DILocation(line: 2245, column: 27, scope: !1041, inlinedAt: !1046)
!1067 = !{!1051, !1052, i64 32}
!1068 = !DILocation(line: 379, column: 18, scope: !1029)
!1069 = !DILocation(line: 379, column: 7, scope: !1015)
!1070 = !DILocation(line: 384, column: 41, scope: !1028)
!1071 = !{!1072, !1037, i64 184}
!1072 = !{!"_ImageInfo", !1037, i64 0, !1037, i64 4, !1037, i64 8, !1037, i64 12, !1037, i64 16, !1037, i64 20, !1073, i64 24, !1073, i64 32, !1073, i64 40, !1073, i64 48, !1052, i64 56, !1052, i64 64, !1052, i64 72, !1037, i64 80, !1037, i64 84, !1037, i64 88, !1052, i64 96, !1073, i64 104, !1073, i64 112, !1073, i64 120, !1073, i64 128, !1073, i64 136, !1074, i64 144, !1074, i64 152, !1075, i64 160, !1075, i64 168, !1075, i64 176, !1037, i64 184, !1037, i64 188, !1052, i64 192, !1037, i64 200, !1037, i64 204, !1037, i64 208, !1052, i64 216, !1037, i64 224, !1037, i64 228, !1073, i64 232, !1073, i64 240, !1037, i64 248, !1073, i64 256, !1073, i64 264, !1073, i64 272, !1073, i64 280, !1073, i64 288, !1073, i64 296, !1073, i64 304, !1073, i64 312, !1052, i64 320, !1037, i64 328, !1037, i64 4424, !1037, i64 8520, !1037, i64 12616, !1037, i64 16712, !1073, i64 16720, !1052, i64 16728, !1052, i64 16736, !1075, i64 16744, !1052, i64 16752, !1037, i64 16760, !1075, i64 16764, !1073, i64 16776, !1037, i64 16784}
!1073 = !{!"any pointer", !1037, i64 0}
!1074 = !{!"double", !1037, i64 0}
!1075 = !{!"_PixelPacket", !1076, i64 0, !1076, i64 2, !1076, i64 4, !1076, i64 6}
!1076 = !{!"short", !1037, i64 0}
!1077 = !DILocation(line: 384, column: 28, scope: !1028)
!1078 = !DILocation(line: 385, column: 14, scope: !1028)
!1079 = !DILocation(line: 0, scope: !1028)
!1080 = !DILocation(line: 386, column: 18, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1028, file: !940, line: 386, column: 11)
!1082 = !DILocation(line: 386, column: 11, scope: !1028)
!1083 = !DILocation(line: 387, column: 53, scope: !1081)
!1084 = !DILocation(line: 387, column: 38, scope: !1081)
!1085 = !DILocation(line: 387, column: 37, scope: !1081)
!1086 = !DILocation(line: 387, column: 9, scope: !1081)
!1087 = !DILocation(line: 389, column: 48, scope: !1028)
!1088 = !{!1072, !1037, i64 228}
!1089 = !DILocation(line: 389, column: 35, scope: !1028)
!1090 = !DILocation(line: 390, column: 5, scope: !1028)
!1091 = !DILocation(line: 391, column: 3, scope: !1015)
!1092 = !DISubprogram(name: "AcquireMagickMemory", scope: !990, file: !990, line: 40, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!582, !858}
!1095 = !{}
!1096 = !DISubprogram(name: "GetExceptionInfo", scope: !329, file: !329, line: 166, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!1100 = !DISubprogram(name: "GetExceptionMessage", scope: !329, file: !329, line: 137, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!596, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!1104 = !DISubprogram(name: "ThrowMagickException", scope: !329, file: !329, line: 156, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!575, !1099, !758, !758, !858, !1107, !758, !758, null}
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!1108 = !DISubprogram(name: "DestroyString", scope: !1109, file: !1109, line: 46, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1109 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!596, !596}
!1112 = !DISubprogram(name: "CatchException", scope: !329, file: !329, line: 164, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1113 = !DISubprogram(name: "DestroyExceptionInfo", scope: !329, file: !329, line: 148, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!1099, !1099}
!1116 = !DISubprogram(name: "MagickCoreTerminus", scope: !1117, file: !1117, line: 147, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1117 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null}
!1120 = !DILocation(line: 0, scope: !1041)
!1121 = !DILocation(line: 2237, column: 10, scope: !1041)
!1122 = !DILocation(line: 2239, column: 10, scope: !1041)
!1123 = !DILocation(line: 2240, column: 31, scope: !1041)
!1124 = !DILocation(line: 2241, column: 18, scope: !1041)
!1125 = !DILocation(line: 2241, column: 24, scope: !1041)
!1126 = !DILocation(line: 2242, column: 18, scope: !1041)
!1127 = !DILocation(line: 2242, column: 31, scope: !1041)
!1128 = !DILocation(line: 2243, column: 18, scope: !1041)
!1129 = !DILocation(line: 2243, column: 28, scope: !1041)
!1130 = !DILocation(line: 2244, column: 18, scope: !1041)
!1131 = !DILocation(line: 2244, column: 31, scope: !1041)
!1132 = !DILocation(line: 2245, column: 18, scope: !1041)
!1133 = !DILocation(line: 2245, column: 27, scope: !1041)
!1134 = !DILocation(line: 2246, column: 1, scope: !1041)
!1135 = !DISubprogram(name: "GetImageOption", scope: !452, file: !452, line: 158, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!758, !1018, !758}
!1138 = !DISubprogram(name: "ParseCommandOption", scope: !452, file: !452, line: 172, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!640, !1141, !1143, !758}
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !452, line: 99, baseType: !451)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!1144 = distinct !DISubprogram(name: "CloneQuantizeInfo", scope: !940, file: !940, line: 1014, type: !1145, scopeLine: 1015, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1149)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!565, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!1149 = !{!1150, !1151, !1152, !1155}
!1150 = !DILocalVariable(name: "quantize_info", arg: 1, scope: !1144, file: !940, line: 1014, type: !1147)
!1151 = !DILocalVariable(name: "clone_info", scope: !1144, file: !940, line: 1017, type: !565)
!1152 = !DILocalVariable(name: "message", scope: !1153, file: !940, line: 1021, type: !596)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !940, line: 1021, column: 5)
!1154 = distinct !DILexicalBlock(scope: !1144, file: !940, line: 1020, column: 7)
!1155 = !DILocalVariable(name: "exception", scope: !1153, file: !940, line: 1021, type: !786)
!1156 = !DILocation(line: 0, scope: !1144)
!1157 = !DILocation(line: 1019, column: 31, scope: !1144)
!1158 = !DILocation(line: 1020, column: 18, scope: !1154)
!1159 = !DILocation(line: 1020, column: 7, scope: !1144)
!1160 = !DILocation(line: 1021, column: 5, scope: !1153)
!1161 = !DILocation(line: 0, scope: !1153)
!1162 = !DILocation(line: 0, scope: !1041, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 1022, column: 3, scope: !1144)
!1164 = !DILocation(line: 2237, column: 10, scope: !1041, inlinedAt: !1163)
!1165 = !DILocation(line: 2239, column: 10, scope: !1041, inlinedAt: !1163)
!1166 = !DILocation(line: 2240, column: 31, scope: !1041, inlinedAt: !1163)
!1167 = !DILocation(line: 2241, column: 18, scope: !1041, inlinedAt: !1163)
!1168 = !DILocation(line: 2241, column: 24, scope: !1041, inlinedAt: !1163)
!1169 = !DILocation(line: 2242, column: 18, scope: !1041, inlinedAt: !1163)
!1170 = !DILocation(line: 2242, column: 31, scope: !1041, inlinedAt: !1163)
!1171 = !DILocation(line: 2243, column: 18, scope: !1041, inlinedAt: !1163)
!1172 = !DILocation(line: 2243, column: 28, scope: !1041, inlinedAt: !1163)
!1173 = !DILocation(line: 2244, column: 18, scope: !1041, inlinedAt: !1163)
!1174 = !DILocation(line: 2244, column: 31, scope: !1041, inlinedAt: !1163)
!1175 = !DILocation(line: 2245, column: 18, scope: !1041, inlinedAt: !1163)
!1176 = !DILocation(line: 2245, column: 27, scope: !1041, inlinedAt: !1163)
!1177 = !DILocation(line: 1023, column: 21, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1144, file: !940, line: 1023, column: 7)
!1179 = !DILocation(line: 1023, column: 7, scope: !1144)
!1180 = !DILocation(line: 1025, column: 44, scope: !1144)
!1181 = !DILocation(line: 1025, column: 28, scope: !1144)
!1182 = !DILocation(line: 1026, column: 41, scope: !1144)
!1183 = !{!1051, !1052, i64 8}
!1184 = !DILocation(line: 1026, column: 15, scope: !1144)
!1185 = !DILocation(line: 1026, column: 25, scope: !1144)
!1186 = !DILocation(line: 1027, column: 37, scope: !1144)
!1187 = !DILocation(line: 1027, column: 21, scope: !1144)
!1188 = !DILocation(line: 1028, column: 44, scope: !1144)
!1189 = !DILocation(line: 1028, column: 28, scope: !1144)
!1190 = !DILocation(line: 1029, column: 41, scope: !1144)
!1191 = !DILocation(line: 1029, column: 25, scope: !1144)
!1192 = !DILocation(line: 1030, column: 44, scope: !1144)
!1193 = !DILocation(line: 1030, column: 28, scope: !1144)
!1194 = !DILocation(line: 1031, column: 3, scope: !1144)
!1195 = !DILocation(line: 1032, column: 1, scope: !1144)
!1196 = distinct !DISubprogram(name: "CompressImageColormap", scope: !940, file: !940, line: 1155, type: !1197, scopeLine: 1156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!575, !652}
!1199 = !{!1200, !1201}
!1200 = !DILocalVariable(name: "image", arg: 1, scope: !1196, file: !940, line: 1155, type: !652)
!1201 = !DILocalVariable(name: "quantize_info", scope: !1196, file: !940, line: 1158, type: !566)
!1202 = !DILocation(line: 0, scope: !1196)
!1203 = !DILocation(line: 1157, column: 3, scope: !1196)
!1204 = !DILocation(line: 1158, column: 5, scope: !1196)
!1205 = !DILocation(line: 1162, column: 14, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1196, file: !940, line: 1162, column: 7)
!1207 = !{!1208, !1037, i64 12976}
!1208 = !{!"_Image", !1037, i64 0, !1037, i64 4, !1037, i64 8, !1052, i64 16, !1037, i64 24, !1037, i64 28, !1037, i64 32, !1052, i64 40, !1052, i64 48, !1052, i64 56, !1052, i64 64, !1073, i64 72, !1075, i64 80, !1075, i64 88, !1075, i64 96, !1074, i64 104, !1209, i64 112, !1037, i64 208, !1073, i64 216, !1037, i64 224, !1073, i64 232, !1073, i64 240, !1073, i64 248, !1052, i64 256, !1074, i64 264, !1074, i64 272, !1211, i64 280, !1211, i64 312, !1211, i64 344, !1074, i64 376, !1074, i64 384, !1074, i64 392, !1037, i64 400, !1037, i64 404, !1037, i64 408, !1037, i64 412, !1037, i64 416, !1037, i64 420, !1073, i64 424, !1052, i64 432, !1052, i64 440, !1052, i64 448, !1052, i64 456, !1052, i64 464, !1052, i64 472, !1212, i64 480, !1213, i64 504, !1073, i64 568, !1073, i64 576, !1073, i64 584, !1073, i64 592, !1073, i64 600, !1073, i64 608, !1037, i64 616, !1037, i64 4712, !1037, i64 8808, !1052, i64 12904, !1052, i64 12912, !1215, i64 12920, !1037, i64 12976, !1052, i64 12984, !1073, i64 12992, !1216, i64 13000, !1216, i64 13032, !1073, i64 13064, !1052, i64 13072, !1052, i64 13080, !1073, i64 13088, !1073, i64 13096, !1073, i64 13104, !1037, i64 13112, !1037, i64 13116, !1075, i64 13120, !1073, i64 13128, !1211, i64 13136, !1073, i64 13168, !1073, i64 13176, !1037, i64 13184, !1037, i64 13188, !1217, i64 13192, !1037, i64 13200, !1052, i64 13208, !1052, i64 13216, !1037, i64 13224, !1052, i64 13232}
!1209 = !{!"_ChromaticityInfo", !1210, i64 0, !1210, i64 24, !1210, i64 48, !1210, i64 72}
!1210 = !{!"_PrimaryInfo", !1074, i64 0, !1074, i64 8, !1074, i64 16}
!1211 = !{!"_RectangleInfo", !1052, i64 0, !1052, i64 8, !1052, i64 16, !1052, i64 24}
!1212 = !{!"_ErrorInfo", !1074, i64 0, !1074, i64 8, !1074, i64 16}
!1213 = !{!"_TimerInfo", !1214, i64 0, !1214, i64 24, !1037, i64 48, !1052, i64 56}
!1214 = !{!"_Timer", !1074, i64 0, !1074, i64 8, !1074, i64 16}
!1215 = !{!"_ExceptionInfo", !1037, i64 0, !1036, i64 4, !1073, i64 8, !1073, i64 16, !1073, i64 24, !1037, i64 32, !1073, i64 40, !1052, i64 48}
!1216 = !{!"_ProfileInfo", !1073, i64 0, !1052, i64 8, !1073, i64 16, !1052, i64 24}
!1217 = !{!"long long", !1037, i64 0}
!1218 = !DILocation(line: 1162, column: 20, scope: !1206)
!1219 = !DILocation(line: 1162, column: 7, scope: !1196)
!1220 = !DILocation(line: 1163, column: 68, scope: !1206)
!1221 = !DILocation(line: 1163, column: 12, scope: !1206)
!1222 = !DILocation(line: 1163, column: 5, scope: !1206)
!1223 = !DILocation(line: 1164, column: 36, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1196, file: !940, line: 1164, column: 7)
!1225 = !DILocation(line: 1164, column: 7, scope: !1224)
!1226 = !DILocation(line: 1164, column: 47, scope: !1224)
!1227 = !DILocation(line: 1164, column: 7, scope: !1196)
!1228 = !DILocation(line: 0, scope: !1041, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 1166, column: 3, scope: !1196)
!1230 = !DILocation(line: 2237, column: 10, scope: !1041, inlinedAt: !1229)
!1231 = !DILocation(line: 2239, column: 10, scope: !1041, inlinedAt: !1229)
!1232 = !DILocation(line: 2241, column: 18, scope: !1041, inlinedAt: !1229)
!1233 = !DILocation(line: 2241, column: 24, scope: !1041, inlinedAt: !1229)
!1234 = !DILocation(line: 2242, column: 18, scope: !1041, inlinedAt: !1229)
!1235 = !DILocation(line: 2242, column: 31, scope: !1041, inlinedAt: !1229)
!1236 = !DILocation(line: 2243, column: 18, scope: !1041, inlinedAt: !1229)
!1237 = !DILocation(line: 2243, column: 28, scope: !1041, inlinedAt: !1229)
!1238 = !DILocation(line: 2244, column: 18, scope: !1041, inlinedAt: !1229)
!1239 = !DILocation(line: 2244, column: 31, scope: !1041, inlinedAt: !1229)
!1240 = !DILocation(line: 2245, column: 18, scope: !1041, inlinedAt: !1229)
!1241 = !DILocation(line: 2245, column: 27, scope: !1041, inlinedAt: !1229)
!1242 = !DILocation(line: 1167, column: 38, scope: !1196)
!1243 = !{!1208, !1052, i64 64}
!1244 = !DILocation(line: 1167, column: 30, scope: !1196)
!1245 = !DILocation(line: 1168, column: 17, scope: !1196)
!1246 = !DILocation(line: 1168, column: 27, scope: !1196)
!1247 = !DILocation(line: 1169, column: 10, scope: !1196)
!1248 = !DILocation(line: 1169, column: 3, scope: !1196)
!1249 = !DILocation(line: 1170, column: 1, scope: !1196)
!1250 = !DISubprogram(name: "LogMagickEvent", scope: !528, file: !528, line: 83, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!575, !1253, !758, !758, !858, !758, null}
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !528, line: 58, baseType: !527)
!1255 = !DISubprogram(name: "IsPaletteImage", scope: !1256, file: !1256, line: 45, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1256 = !DIFile(filename: "apps/538.imagick_r/src/magick/histogram.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2cf116c94f52893f7dbbcaa9072de9d3")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!575, !854, !1099}
!1259 = distinct !DISubprogram(name: "QuantizeImage", scope: !940, file: !940, line: 2677, type: !1260, scopeLine: 2679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!575, !1147, !652}
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269}
!1263 = !DILocalVariable(name: "quantize_info", arg: 1, scope: !1259, file: !940, line: 2677, type: !1147)
!1264 = !DILocalVariable(name: "image", arg: 2, scope: !1259, file: !940, line: 2678, type: !652)
!1265 = !DILocalVariable(name: "cube_info", scope: !1259, file: !940, line: 2681, type: !938)
!1266 = !DILocalVariable(name: "status", scope: !1259, file: !940, line: 2684, type: !575)
!1267 = !DILocalVariable(name: "depth", scope: !1259, file: !940, line: 2687, type: !570)
!1268 = !DILocalVariable(name: "maximum_colors", scope: !1259, file: !940, line: 2688, type: !570)
!1269 = !DILocalVariable(name: "colors", scope: !1270, file: !940, line: 2715, type: !570)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !940, line: 2713, column: 5)
!1271 = distinct !DILexicalBlock(scope: !1259, file: !940, line: 2712, column: 7)
!1272 = !DILocation(line: 0, scope: !1259)
!1273 = !DILocation(line: 2694, column: 14, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1259, file: !940, line: 2694, column: 7)
!1275 = !DILocation(line: 2694, column: 20, scope: !1274)
!1276 = !DILocation(line: 2694, column: 7, scope: !1259)
!1277 = !DILocation(line: 2695, column: 68, scope: !1274)
!1278 = !DILocation(line: 2695, column: 12, scope: !1274)
!1279 = !DILocation(line: 2695, column: 5, scope: !1274)
!1280 = !DILocation(line: 2696, column: 33, scope: !1259)
!1281 = !DILocation(line: 2697, column: 22, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1259, file: !940, line: 2697, column: 7)
!1283 = !DILocation(line: 2699, column: 7, scope: !1259)
!1284 = !DILocation(line: 2701, column: 14, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1259, file: !940, line: 2701, column: 7)
!1286 = !{!1208, !1037, i64 32}
!1287 = !DILocation(line: 2701, column: 20, scope: !1285)
!1288 = !DILocation(line: 2701, column: 7, scope: !1259)
!1289 = !DILocation(line: 2703, column: 19, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !940, line: 2703, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1285, file: !940, line: 2702, column: 5)
!1292 = !{!1208, !1052, i64 40}
!1293 = !DILocation(line: 2703, column: 34, scope: !1290)
!1294 = !{!1208, !1052, i64 48}
!1295 = !DILocation(line: 2703, column: 26, scope: !1290)
!1296 = !DILocation(line: 2703, column: 40, scope: !1290)
!1297 = !DILocation(line: 2703, column: 11, scope: !1291)
!1298 = !DILocation(line: 2704, column: 52, scope: !1290)
!1299 = !DILocalVariable(name: "image", arg: 1, scope: !1300, file: !940, line: 2611, type: !652)
!1300 = distinct !DISubprogram(name: "DirectToColormapImage", scope: !940, file: !940, line: 2611, type: !1301, scopeLine: 2613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!575, !652, !1099}
!1303 = !{!1299, !1304, !1305, !1309, !1310, !1311, !1312, !1313, !1317, !1319, !1321}
!1304 = !DILocalVariable(name: "exception", arg: 2, scope: !1300, file: !940, line: 2612, type: !1099)
!1305 = !DILocalVariable(name: "image_view", scope: !1300, file: !940, line: 2615, type: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !431, line: 50, baseType: !1308)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !402, line: 160, flags: DIFlagFwdDecl)
!1309 = !DILocalVariable(name: "status", scope: !1300, file: !940, line: 2618, type: !575)
!1310 = !DILocalVariable(name: "i", scope: !1300, file: !940, line: 2621, type: !640)
!1311 = !DILocalVariable(name: "number_colors", scope: !1300, file: !940, line: 2624, type: !570)
!1312 = !DILocalVariable(name: "y", scope: !1300, file: !940, line: 2627, type: !640)
!1313 = !DILocalVariable(name: "proceed", scope: !1314, file: !940, line: 2641, type: !575)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !940, line: 2639, column: 3)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !940, line: 2638, column: 3)
!1316 = distinct !DILexicalBlock(scope: !1300, file: !940, line: 2638, column: 3)
!1317 = !DILocalVariable(name: "indexes", scope: !1314, file: !940, line: 2644, type: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !937)
!1319 = !DILocalVariable(name: "q", scope: !1314, file: !940, line: 2647, type: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !669)
!1321 = !DILocalVariable(name: "x", scope: !1314, file: !940, line: 2650, type: !640)
!1322 = !DILocation(line: 0, scope: !1300, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 2704, column: 16, scope: !1290)
!1324 = !DILocation(line: 2631, column: 7, scope: !1325, inlinedAt: !1323)
!1325 = distinct !DILexicalBlock(scope: !1300, file: !940, line: 2631, column: 7)
!1326 = !DILocation(line: 2631, column: 49, scope: !1325, inlinedAt: !1323)
!1327 = !DILocation(line: 2631, column: 7, scope: !1300, inlinedAt: !1323)
!1328 = !DILocation(line: 2632, column: 5, scope: !1329, inlinedAt: !1323)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !940, line: 2632, column: 5)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !940, line: 2632, column: 5)
!1331 = !DILocation(line: 2634, column: 14, scope: !1332, inlinedAt: !1323)
!1332 = distinct !DILexicalBlock(scope: !1300, file: !940, line: 2634, column: 7)
!1333 = !DILocation(line: 2634, column: 21, scope: !1332, inlinedAt: !1323)
!1334 = !DILocation(line: 2634, column: 7, scope: !1300, inlinedAt: !1323)
!1335 = !DILocation(line: 2637, column: 14, scope: !1300, inlinedAt: !1323)
!1336 = !DILocation(line: 2638, column: 34, scope: !1315, inlinedAt: !1323)
!1337 = !DILocation(line: 2638, column: 15, scope: !1315, inlinedAt: !1323)
!1338 = !DILocation(line: 2638, column: 3, scope: !1316, inlinedAt: !1323)
!1339 = !DILocation(line: 2652, column: 57, scope: !1314, inlinedAt: !1323)
!1340 = !DILocation(line: 2652, column: 7, scope: !1314, inlinedAt: !1323)
!1341 = !DILocation(line: 0, scope: !1314, inlinedAt: !1323)
!1342 = !DILocation(line: 2653, column: 11, scope: !1343, inlinedAt: !1323)
!1343 = distinct !DILexicalBlock(scope: !1314, file: !940, line: 2653, column: 9)
!1344 = !DILocation(line: 2653, column: 9, scope: !1314, inlinedAt: !1323)
!1345 = !DILocation(line: 2655, column: 13, scope: !1314, inlinedAt: !1323)
!1346 = !DILocation(line: 2656, column: 17, scope: !1347, inlinedAt: !1323)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !940, line: 2656, column: 5)
!1348 = distinct !DILexicalBlock(scope: !1314, file: !940, line: 2656, column: 5)
!1349 = !DILocation(line: 2656, column: 5, scope: !1348, inlinedAt: !1323)
!1350 = !{!1208, !1073, i64 72}
!1351 = !DILocation(line: 2662, column: 7, scope: !1352, inlinedAt: !1323)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !940, line: 2662, column: 7)
!1353 = distinct !DILexicalBlock(scope: !1347, file: !940, line: 2657, column: 5)
!1354 = !DILocation(line: 2658, column: 30, scope: !1353, inlinedAt: !1323)
!1355 = !{!1075, !1076, i64 4}
!1356 = !DILocation(line: 2658, column: 26, scope: !1353, inlinedAt: !1323)
!1357 = !DILocation(line: 2658, column: 29, scope: !1353, inlinedAt: !1323)
!1358 = !DILocation(line: 2659, column: 32, scope: !1353, inlinedAt: !1323)
!1359 = !{!1075, !1076, i64 2}
!1360 = !DILocation(line: 2659, column: 26, scope: !1353, inlinedAt: !1323)
!1361 = !DILocation(line: 2659, column: 31, scope: !1353, inlinedAt: !1323)
!1362 = !DILocation(line: 2660, column: 31, scope: !1353, inlinedAt: !1323)
!1363 = !{!1075, !1076, i64 0}
!1364 = !DILocation(line: 2660, column: 7, scope: !1353, inlinedAt: !1323)
!1365 = !DILocation(line: 2660, column: 30, scope: !1353, inlinedAt: !1323)
!1366 = !DILocation(line: 2661, column: 34, scope: !1353, inlinedAt: !1323)
!1367 = !{!1075, !1076, i64 6}
!1368 = !DILocation(line: 2661, column: 26, scope: !1353, inlinedAt: !1323)
!1369 = !DILocation(line: 2661, column: 33, scope: !1353, inlinedAt: !1323)
!1370 = !DILocation(line: 2663, column: 8, scope: !1353, inlinedAt: !1323)
!1371 = !DILocation(line: 2664, column: 8, scope: !1353, inlinedAt: !1323)
!1372 = distinct !{!1372, !1349, !1373, !1374, !1375}
!1373 = !DILocation(line: 2665, column: 5, scope: !1348, inlinedAt: !1323)
!1374 = !{!"llvm.loop.mustprogress"}
!1375 = !{!"llvm.loop.unroll.disable"}
!1376 = !DILocation(line: 2662, column: 7, scope: !1377, inlinedAt: !1323)
!1377 = distinct !DILexicalBlock(scope: !1352, file: !940, line: 2662, column: 7)
!1378 = !{!1076, !1076, i64 0}
!1379 = !DILocation(line: 2656, column: 46, scope: !1347, inlinedAt: !1323)
!1380 = distinct !{!1380, !1349, !1373, !1374, !1375}
!1381 = !DILocation(line: 2666, column: 9, scope: !1382, inlinedAt: !1323)
!1382 = distinct !DILexicalBlock(scope: !1314, file: !940, line: 2666, column: 9)
!1383 = !DILocation(line: 2666, column: 60, scope: !1382, inlinedAt: !1323)
!1384 = !DILocation(line: 2666, column: 9, scope: !1314, inlinedAt: !1323)
!1385 = !DILocation(line: 2669, column: 14, scope: !1314, inlinedAt: !1323)
!1386 = !DILocalVariable(name: "image", arg: 1, scope: !1387, file: !1388, line: 27, type: !854)
!1387 = distinct !DISubprogram(name: "SetImageProgress", scope: !1388, file: !1388, line: 27, type: !1389, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1391)
!1388 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!575, !854, !758, !760, !763}
!1391 = !{!1386, !1392, !1393, !1394, !1395}
!1392 = !DILocalVariable(name: "tag", arg: 2, scope: !1387, file: !1388, line: 28, type: !758)
!1393 = !DILocalVariable(name: "offset", arg: 3, scope: !1387, file: !1388, line: 28, type: !760)
!1394 = !DILocalVariable(name: "extent", arg: 4, scope: !1387, file: !1388, line: 28, type: !763)
!1395 = !DILocalVariable(name: "message", scope: !1387, file: !1388, line: 31, type: !778)
!1396 = !DILocation(line: 0, scope: !1387, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 2668, column: 13, scope: !1314, inlinedAt: !1323)
!1398 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !1397)
!1399 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !1397)
!1400 = !DILocation(line: 33, column: 14, scope: !1401, inlinedAt: !1397)
!1401 = distinct !DILexicalBlock(scope: !1387, file: !1388, line: 33, column: 7)
!1402 = !{!1208, !1073, i64 568}
!1403 = !DILocation(line: 33, column: 31, scope: !1401, inlinedAt: !1397)
!1404 = !DILocation(line: 33, column: 7, scope: !1387, inlinedAt: !1397)
!1405 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !1397)
!1406 = !DILocation(line: 2670, column: 9, scope: !1314, inlinedAt: !1323)
!1407 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !1397)
!1408 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !1397)
!1409 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !1397)
!1410 = !{!1208, !1073, i64 576}
!1411 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !1397)
!1412 = !DILocation(line: 2638, column: 41, scope: !1315, inlinedAt: !1323)
!1413 = distinct !{!1413, !1338, !1414, !1374, !1375}
!1414 = !DILocation(line: 2672, column: 3, scope: !1316, inlinedAt: !1323)
!1415 = !DILocation(line: 2673, column: 14, scope: !1300, inlinedAt: !1323)
!1416 = !DILocation(line: 2674, column: 3, scope: !1300, inlinedAt: !1323)
!1417 = !DILocation(line: 2705, column: 37, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1291, file: !940, line: 2705, column: 11)
!1419 = !DILocation(line: 2705, column: 11, scope: !1418)
!1420 = !DILocation(line: 2705, column: 48, scope: !1418)
!1421 = !DILocation(line: 2705, column: 11, scope: !1291)
!1422 = !DILocalVariable(name: "image", arg: 1, scope: !1423, file: !940, line: 3315, type: !652)
!1423 = distinct !DISubprogram(name: "SetGrayscaleImage", scope: !940, file: !940, line: 3315, type: !1197, scopeLine: 3316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1424)
!1424 = !{!1422, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1436, !1440, !1442, !1443, !1447, !1451, !1452}
!1425 = !DILocalVariable(name: "image_view", scope: !1423, file: !940, line: 3318, type: !1306)
!1426 = !DILocalVariable(name: "exception", scope: !1423, file: !940, line: 3321, type: !1099)
!1427 = !DILocalVariable(name: "status", scope: !1423, file: !940, line: 3324, type: !575)
!1428 = !DILocalVariable(name: "colormap", scope: !1423, file: !940, line: 3327, type: !669)
!1429 = !DILocalVariable(name: "i", scope: !1423, file: !940, line: 3330, type: !640)
!1430 = !DILocalVariable(name: "colormap_index", scope: !1423, file: !940, line: 3333, type: !993)
!1431 = !DILocalVariable(name: "j", scope: !1423, file: !940, line: 3334, type: !640)
!1432 = !DILocalVariable(name: "y", scope: !1423, file: !940, line: 3335, type: !640)
!1433 = !DILocalVariable(name: "exception", scope: !1434, file: !940, line: 3349, type: !1099)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !940, line: 3347, column: 5)
!1435 = distinct !DILexicalBlock(scope: !1423, file: !940, line: 3346, column: 7)
!1436 = !DILocalVariable(name: "indexes", scope: !1437, file: !940, line: 3367, type: !1318)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !940, line: 3365, column: 7)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !940, line: 3364, column: 7)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !940, line: 3364, column: 7)
!1440 = !DILocalVariable(name: "q", scope: !1437, file: !940, line: 3370, type: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !930)
!1442 = !DILocalVariable(name: "x", scope: !1437, file: !940, line: 3373, type: !640)
!1443 = !DILocalVariable(name: "intensity", scope: !1444, file: !940, line: 3388, type: !570)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !940, line: 3386, column: 9)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !940, line: 3385, column: 9)
!1446 = distinct !DILexicalBlock(scope: !1437, file: !940, line: 3385, column: 9)
!1447 = !DILocalVariable(name: "indexes", scope: !1448, file: !940, line: 3446, type: !1318)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !940, line: 3444, column: 3)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !940, line: 3443, column: 3)
!1450 = distinct !DILexicalBlock(scope: !1423, file: !940, line: 3443, column: 3)
!1451 = !DILocalVariable(name: "q", scope: !1448, file: !940, line: 3449, type: !1441)
!1452 = !DILocalVariable(name: "x", scope: !1448, file: !940, line: 3452, type: !640)
!1453 = !DILocation(line: 0, scope: !1423, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 2706, column: 16, scope: !1418)
!1455 = !DILocation(line: 3339, column: 14, scope: !1456, inlinedAt: !1454)
!1456 = distinct !DILexicalBlock(scope: !1423, file: !940, line: 3339, column: 7)
!1457 = !{!1208, !1037, i64 13184}
!1458 = !DILocation(line: 3339, column: 19, scope: !1456, inlinedAt: !1454)
!1459 = !DILocation(line: 3339, column: 7, scope: !1423, inlinedAt: !1454)
!1460 = !DILocation(line: 3340, column: 12, scope: !1456, inlinedAt: !1454)
!1461 = !DILocation(line: 3340, column: 5, scope: !1456, inlinedAt: !1454)
!1462 = !DILocation(line: 3341, column: 30, scope: !1423, inlinedAt: !1454)
!1463 = !DILocation(line: 3343, column: 22, scope: !1464, inlinedAt: !1454)
!1464 = distinct !DILexicalBlock(scope: !1423, file: !940, line: 3343, column: 7)
!1465 = !DILocation(line: 3343, column: 7, scope: !1423, inlinedAt: !1454)
!1466 = !DILocation(line: 3344, column: 5, scope: !1467, inlinedAt: !1454)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !940, line: 3344, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !940, line: 3344, column: 5)
!1469 = !DILocation(line: 3346, column: 14, scope: !1435, inlinedAt: !1454)
!1470 = !{!1208, !1037, i64 0}
!1471 = !DILocation(line: 3346, column: 28, scope: !1435, inlinedAt: !1454)
!1472 = !DILocation(line: 3346, column: 7, scope: !1423, inlinedAt: !1454)
!1473 = !DILocation(line: 3352, column: 26, scope: !1474, inlinedAt: !1454)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !940, line: 3351, column: 7)
!1475 = distinct !DILexicalBlock(scope: !1434, file: !940, line: 3351, column: 7)
!1476 = !{!1052, !1052, i64 0}
!1477 = !DILocation(line: 3353, column: 11, scope: !1478, inlinedAt: !1454)
!1478 = distinct !DILexicalBlock(scope: !1434, file: !940, line: 3353, column: 11)
!1479 = !DILocation(line: 3353, column: 48, scope: !1478, inlinedAt: !1454)
!1480 = !DILocation(line: 3353, column: 11, scope: !1434, inlinedAt: !1454)
!1481 = !DILocation(line: 3354, column: 9, scope: !1482, inlinedAt: !1454)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !940, line: 3354, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !940, line: 3354, column: 9)
!1484 = !DILocation(line: 3356, column: 14, scope: !1434, inlinedAt: !1454)
!1485 = !DILocation(line: 3356, column: 20, scope: !1434, inlinedAt: !1454)
!1486 = !DILocation(line: 0, scope: !1434, inlinedAt: !1454)
!1487 = !DILocation(line: 3359, column: 18, scope: !1434, inlinedAt: !1454)
!1488 = !DILocation(line: 3364, column: 38, scope: !1438, inlinedAt: !1454)
!1489 = !DILocation(line: 3364, column: 19, scope: !1438, inlinedAt: !1454)
!1490 = !DILocation(line: 3364, column: 7, scope: !1439, inlinedAt: !1454)
!1491 = !DILocation(line: 3375, column: 20, scope: !1492, inlinedAt: !1454)
!1492 = distinct !DILexicalBlock(scope: !1437, file: !940, line: 3375, column: 13)
!1493 = !DILocation(line: 3375, column: 13, scope: !1437, inlinedAt: !1454)
!1494 = !DILocation(line: 3377, column: 61, scope: !1437, inlinedAt: !1454)
!1495 = !DILocation(line: 3377, column: 11, scope: !1437, inlinedAt: !1454)
!1496 = !DILocation(line: 0, scope: !1437, inlinedAt: !1454)
!1497 = !DILocation(line: 3379, column: 15, scope: !1498, inlinedAt: !1454)
!1498 = distinct !DILexicalBlock(scope: !1437, file: !940, line: 3379, column: 13)
!1499 = !DILocation(line: 3379, column: 13, scope: !1437, inlinedAt: !1454)
!1500 = !DILocation(line: 3384, column: 17, scope: !1437, inlinedAt: !1454)
!1501 = !DILocation(line: 3385, column: 40, scope: !1445, inlinedAt: !1454)
!1502 = !DILocation(line: 3385, column: 21, scope: !1445, inlinedAt: !1454)
!1503 = !DILocation(line: 3385, column: 9, scope: !1446, inlinedAt: !1454)
!1504 = !DILocation(line: 3405, column: 11, scope: !1505, inlinedAt: !1454)
!1505 = distinct !DILexicalBlock(scope: !1444, file: !940, line: 3405, column: 11)
!1506 = !DILocation(line: 3390, column: 39, scope: !1444, inlinedAt: !1454)
!1507 = !DILocation(line: 3390, column: 21, scope: !1444, inlinedAt: !1454)
!1508 = !DILocation(line: 0, scope: !1444, inlinedAt: !1454)
!1509 = !DILocation(line: 3391, column: 15, scope: !1510, inlinedAt: !1454)
!1510 = distinct !DILexicalBlock(scope: !1444, file: !940, line: 3391, column: 15)
!1511 = !DILocation(line: 3391, column: 41, scope: !1510, inlinedAt: !1454)
!1512 = !DILocation(line: 3391, column: 15, scope: !1444, inlinedAt: !1454)
!1513 = !DILocation(line: 3398, column: 62, scope: !1514, inlinedAt: !1454)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !940, line: 3397, column: 17)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !940, line: 3396, column: 19)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !940, line: 3392, column: 13)
!1517 = !DILocation(line: 3398, column: 44, scope: !1514, inlinedAt: !1454)
!1518 = !DILocation(line: 3399, column: 26, scope: !1514, inlinedAt: !1454)
!1519 = !DILocation(line: 3399, column: 42, scope: !1514, inlinedAt: !1454)
!1520 = !DILocation(line: 3399, column: 50, scope: !1514, inlinedAt: !1454)
!1521 = !DILocation(line: 3399, column: 53, scope: !1514, inlinedAt: !1454)
!1522 = !DILocation(line: 3400, column: 56, scope: !1514, inlinedAt: !1454)
!1523 = !DILocation(line: 3400, column: 50, scope: !1514, inlinedAt: !1454)
!1524 = !DILocation(line: 3400, column: 55, scope: !1514, inlinedAt: !1454)
!1525 = !DILocation(line: 3401, column: 55, scope: !1514, inlinedAt: !1454)
!1526 = !DILocation(line: 3401, column: 19, scope: !1514, inlinedAt: !1454)
!1527 = !DILocation(line: 3401, column: 54, scope: !1514, inlinedAt: !1454)
!1528 = !DILocation(line: 3402, column: 32, scope: !1514, inlinedAt: !1454)
!1529 = !DILocation(line: 3403, column: 16, scope: !1514, inlinedAt: !1454)
!1530 = !DILocation(line: 3406, column: 12, scope: !1444, inlinedAt: !1454)
!1531 = !DILocation(line: 3385, column: 50, scope: !1445, inlinedAt: !1454)
!1532 = distinct !{!1532, !1503, !1533, !1374, !1375}
!1533 = !DILocation(line: 3407, column: 9, scope: !1446, inlinedAt: !1454)
!1534 = !DILocation(line: 3405, column: 11, scope: !1535, inlinedAt: !1454)
!1535 = distinct !DILexicalBlock(scope: !1505, file: !940, line: 3405, column: 11)
!1536 = distinct !{!1536, !1503, !1533, !1374, !1375}
!1537 = !DILocation(line: 3408, column: 13, scope: !1538, inlinedAt: !1454)
!1538 = distinct !DILexicalBlock(scope: !1437, file: !940, line: 3408, column: 13)
!1539 = !DILocation(line: 3408, column: 64, scope: !1538, inlinedAt: !1454)
!1540 = !DILocation(line: 3408, column: 13, scope: !1437, inlinedAt: !1454)
!1541 = !DILocation(line: 3410, column: 7, scope: !1438, inlinedAt: !1454)
!1542 = !DILocation(line: 3364, column: 45, scope: !1438, inlinedAt: !1454)
!1543 = distinct !{!1543, !1490, !1544, !1374, !1375}
!1544 = !DILocation(line: 3410, column: 7, scope: !1439, inlinedAt: !1454)
!1545 = !DILocation(line: 3411, column: 18, scope: !1434, inlinedAt: !1454)
!1546 = !DILocation(line: 3413, column: 15, scope: !1547, inlinedAt: !1454)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !940, line: 3413, column: 3)
!1548 = distinct !DILexicalBlock(scope: !1423, file: !940, line: 3413, column: 3)
!1549 = !DILocation(line: 3413, column: 3, scope: !1548, inlinedAt: !1454)
!1550 = !DILocation(line: 3414, column: 32, scope: !1547, inlinedAt: !1454)
!1551 = !DILocation(line: 3414, column: 24, scope: !1547, inlinedAt: !1454)
!1552 = !DILocation(line: 3414, column: 31, scope: !1547, inlinedAt: !1454)
!1553 = !DILocation(line: 3413, column: 43, scope: !1547, inlinedAt: !1454)
!1554 = distinct !{!1554, !1549, !1555, !1374, !1375}
!1555 = !DILocation(line: 3414, column: 49, scope: !1548, inlinedAt: !1454)
!1556 = !DILocation(line: 3415, column: 3, scope: !1423, inlinedAt: !1454)
!1557 = !DILocation(line: 3417, column: 56, scope: !1423, inlinedAt: !1454)
!1558 = !DILocation(line: 3417, column: 28, scope: !1423, inlinedAt: !1454)
!1559 = !DILocation(line: 3419, column: 16, scope: !1560, inlinedAt: !1454)
!1560 = distinct !DILexicalBlock(scope: !1423, file: !940, line: 3419, column: 7)
!1561 = !DILocation(line: 3419, column: 7, scope: !1423, inlinedAt: !1454)
!1562 = !DILocation(line: 3420, column: 5, scope: !1563, inlinedAt: !1454)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !940, line: 3420, column: 5)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !940, line: 3420, column: 5)
!1565 = !DILocation(line: 3420, column: 5, scope: !1564, inlinedAt: !1454)
!1566 = !DILocation(line: 3423, column: 22, scope: !1423, inlinedAt: !1454)
!1567 = !DILocation(line: 3423, column: 15, scope: !1423, inlinedAt: !1454)
!1568 = !DILocation(line: 3424, column: 34, scope: !1569, inlinedAt: !1454)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !940, line: 3424, column: 3)
!1570 = distinct !DILexicalBlock(scope: !1423, file: !940, line: 3424, column: 3)
!1571 = !DILocation(line: 3424, column: 15, scope: !1569, inlinedAt: !1454)
!1572 = !DILocation(line: 3424, column: 3, scope: !1570, inlinedAt: !1454)
!1573 = !DILocation(line: 3426, column: 28, scope: !1574, inlinedAt: !1454)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !940, line: 3426, column: 9)
!1575 = distinct !DILexicalBlock(scope: !1569, file: !940, line: 3425, column: 3)
!1576 = !DILocation(line: 3426, column: 41, scope: !1574, inlinedAt: !1454)
!1577 = !DILocalVariable(name: "image", arg: 1, scope: !1578, file: !940, line: 485, type: !854)
!1578 = distinct !DISubprogram(name: "IsSameColor", scope: !940, file: !940, line: 485, type: !1579, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!575, !854, !930, !930}
!1581 = !{!1577, !1582, !1583}
!1582 = !DILocalVariable(name: "p", arg: 2, scope: !1578, file: !940, line: 486, type: !930)
!1583 = !DILocalVariable(name: "q", arg: 3, scope: !1578, file: !940, line: 486, type: !930)
!1584 = !DILocation(line: 0, scope: !1578, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 3426, column: 9, scope: !1574, inlinedAt: !1454)
!1586 = !DILocation(line: 488, column: 8, scope: !1587, inlinedAt: !1585)
!1587 = distinct !DILexicalBlock(scope: !1578, file: !940, line: 488, column: 7)
!1588 = !DILocation(line: 488, column: 26, scope: !1587, inlinedAt: !1585)
!1589 = !DILocation(line: 488, column: 23, scope: !1587, inlinedAt: !1585)
!1590 = !DILocation(line: 488, column: 42, scope: !1587, inlinedAt: !1585)
!1591 = !DILocation(line: 489, column: 8, scope: !1587, inlinedAt: !1585)
!1592 = !DILocation(line: 489, column: 28, scope: !1587, inlinedAt: !1585)
!1593 = !DILocation(line: 489, column: 25, scope: !1587, inlinedAt: !1585)
!1594 = !DILocation(line: 489, column: 46, scope: !1587, inlinedAt: !1585)
!1595 = !DILocation(line: 490, column: 8, scope: !1587, inlinedAt: !1585)
!1596 = !DILocation(line: 490, column: 27, scope: !1587, inlinedAt: !1585)
!1597 = !DILocation(line: 490, column: 24, scope: !1587, inlinedAt: !1585)
!1598 = !DILocation(line: 488, column: 7, scope: !1578, inlinedAt: !1585)
!1599 = !DILocation(line: 492, column: 15, scope: !1600, inlinedAt: !1585)
!1600 = distinct !DILexicalBlock(scope: !1578, file: !940, line: 492, column: 7)
!1601 = !DILocation(line: 492, column: 21, scope: !1600, inlinedAt: !1585)
!1602 = !DILocation(line: 492, column: 37, scope: !1600, inlinedAt: !1585)
!1603 = !DILocation(line: 493, column: 8, scope: !1600, inlinedAt: !1585)
!1604 = !DILocation(line: 493, column: 30, scope: !1600, inlinedAt: !1585)
!1605 = !DILocation(line: 493, column: 27, scope: !1600, inlinedAt: !1585)
!1606 = !DILocation(line: 492, column: 7, scope: !1578, inlinedAt: !1585)
!1607 = !DILocation(line: 3428, column: 10, scope: !1608, inlinedAt: !1454)
!1608 = distinct !DILexicalBlock(scope: !1574, file: !940, line: 3427, column: 7)
!1609 = !DILocation(line: 3429, column: 9, scope: !1608, inlinedAt: !1454)
!1610 = !DILocation(line: 3429, column: 21, scope: !1608, inlinedAt: !1454)
!1611 = !DILocation(line: 3431, column: 37, scope: !1575, inlinedAt: !1454)
!1612 = !DILocation(line: 3430, column: 7, scope: !1608, inlinedAt: !1454)
!1613 = !DILocation(line: 3431, column: 49, scope: !1575, inlinedAt: !1454)
!1614 = !DILocation(line: 3431, column: 20, scope: !1575, inlinedAt: !1454)
!1615 = !DILocation(line: 3431, column: 5, scope: !1575, inlinedAt: !1454)
!1616 = !DILocation(line: 3431, column: 57, scope: !1575, inlinedAt: !1454)
!1617 = !DILocation(line: 3424, column: 43, scope: !1569, inlinedAt: !1454)
!1618 = distinct !{!1618, !1572, !1619, !1374, !1375}
!1619 = !DILocation(line: 3432, column: 3, scope: !1570, inlinedAt: !1454)
!1620 = !DILocation(line: 3434, column: 65, scope: !1423, inlinedAt: !1454)
!1621 = !DILocation(line: 3433, column: 28, scope: !1423, inlinedAt: !1454)
!1622 = !DILocation(line: 3433, column: 16, scope: !1423, inlinedAt: !1454)
!1623 = !DILocation(line: 3434, column: 35, scope: !1423, inlinedAt: !1454)
!1624 = !DILocation(line: 3435, column: 18, scope: !1423, inlinedAt: !1454)
!1625 = !DILocation(line: 3438, column: 14, scope: !1423, inlinedAt: !1454)
!1626 = !DILocation(line: 3443, column: 34, scope: !1449, inlinedAt: !1454)
!1627 = !DILocation(line: 3443, column: 15, scope: !1449, inlinedAt: !1454)
!1628 = !DILocation(line: 3443, column: 3, scope: !1450, inlinedAt: !1454)
!1629 = !DILocation(line: 3454, column: 16, scope: !1630, inlinedAt: !1454)
!1630 = distinct !DILexicalBlock(scope: !1448, file: !940, line: 3454, column: 9)
!1631 = !DILocation(line: 3454, column: 9, scope: !1448, inlinedAt: !1454)
!1632 = !DILocation(line: 3456, column: 57, scope: !1448, inlinedAt: !1454)
!1633 = !DILocation(line: 3456, column: 7, scope: !1448, inlinedAt: !1454)
!1634 = !DILocation(line: 0, scope: !1448, inlinedAt: !1454)
!1635 = !DILocation(line: 3457, column: 11, scope: !1636, inlinedAt: !1454)
!1636 = distinct !DILexicalBlock(scope: !1448, file: !940, line: 3457, column: 9)
!1637 = !DILocation(line: 3457, column: 9, scope: !1448, inlinedAt: !1454)
!1638 = !DILocation(line: 3462, column: 13, scope: !1448, inlinedAt: !1454)
!1639 = !DILocation(line: 3463, column: 17, scope: !1640, inlinedAt: !1454)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !940, line: 3463, column: 5)
!1641 = distinct !DILexicalBlock(scope: !1448, file: !940, line: 3463, column: 5)
!1642 = !DILocation(line: 3463, column: 5, scope: !1641, inlinedAt: !1454)
!1643 = !DILocation(line: 3464, column: 7, scope: !1644, inlinedAt: !1454)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !940, line: 3464, column: 7)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !940, line: 3464, column: 7)
!1646 = !DILocation(line: 3463, column: 46, scope: !1640, inlinedAt: !1454)
!1647 = distinct !{!1647, !1642, !1648, !1374, !1375}
!1648 = !DILocation(line: 3464, column: 7, scope: !1641, inlinedAt: !1454)
!1649 = !DILocation(line: 3466, column: 9, scope: !1650, inlinedAt: !1454)
!1650 = distinct !DILexicalBlock(scope: !1448, file: !940, line: 3466, column: 9)
!1651 = !DILocation(line: 3466, column: 60, scope: !1650, inlinedAt: !1454)
!1652 = !DILocation(line: 3466, column: 9, scope: !1448, inlinedAt: !1454)
!1653 = !DILocation(line: 3468, column: 3, scope: !1449, inlinedAt: !1454)
!1654 = !DILocation(line: 3443, column: 41, scope: !1449, inlinedAt: !1454)
!1655 = distinct !{!1655, !1628, !1656, !1374, !1375}
!1656 = !DILocation(line: 3468, column: 3, scope: !1450, inlinedAt: !1454)
!1657 = !DILocation(line: 3469, column: 14, scope: !1423, inlinedAt: !1454)
!1658 = !DILocation(line: 3470, column: 30, scope: !1423, inlinedAt: !1454)
!1659 = !DILocation(line: 3471, column: 14, scope: !1423, inlinedAt: !1454)
!1660 = !DILocation(line: 3472, column: 7, scope: !1661, inlinedAt: !1454)
!1661 = distinct !DILexicalBlock(scope: !1423, file: !940, line: 3472, column: 7)
!1662 = !DILocation(line: 3472, column: 50, scope: !1661, inlinedAt: !1454)
!1663 = !DILocation(line: 3472, column: 7, scope: !1423, inlinedAt: !1454)
!1664 = !DILocation(line: 3473, column: 16, scope: !1661, inlinedAt: !1454)
!1665 = !DILocation(line: 3473, column: 5, scope: !1661, inlinedAt: !1454)
!1666 = !DILocation(line: 2708, column: 15, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1259, file: !940, line: 2708, column: 7)
!1668 = !DILocation(line: 2708, column: 29, scope: !1667)
!1669 = !DILocation(line: 2708, column: 45, scope: !1667)
!1670 = !DILocation(line: 2709, column: 15, scope: !1667)
!1671 = !DILocation(line: 2709, column: 22, scope: !1667)
!1672 = !DILocation(line: 2708, column: 7, scope: !1259)
!1673 = !DILocation(line: 2711, column: 24, scope: !1259)
!1674 = !DILocation(line: 2712, column: 13, scope: !1271)
!1675 = !DILocation(line: 2712, column: 7, scope: !1259)
!1676 = !DILocation(line: 0, scope: !1270)
!1677 = !DILocation(line: 2721, column: 28, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !940, line: 2721, column: 7)
!1679 = distinct !DILexicalBlock(scope: !1270, file: !940, line: 2721, column: 7)
!1680 = !DILocation(line: 2721, column: 7, scope: !1679)
!1681 = !DILocation(line: 2722, column: 15, scope: !1678)
!1682 = !DILocation(line: 2721, column: 39, scope: !1678)
!1683 = distinct !{!1683, !1680, !1684, !1374, !1375}
!1684 = !DILocation(line: 2722, column: 18, scope: !1679)
!1685 = !DILocation(line: 0, scope: !1679)
!1686 = !DILocation(line: 2723, column: 27, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1270, file: !940, line: 2723, column: 11)
!1688 = !DILocation(line: 2723, column: 34, scope: !1687)
!1689 = !DILocation(line: 2723, column: 50, scope: !1687)
!1690 = !DILocation(line: 2725, column: 19, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1270, file: !940, line: 2725, column: 11)
!1692 = !DILocation(line: 2725, column: 25, scope: !1691)
!1693 = !DILocation(line: 2725, column: 41, scope: !1691)
!1694 = !DILocation(line: 2727, column: 37, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1270, file: !940, line: 2727, column: 11)
!1696 = !DILocation(line: 2727, column: 11, scope: !1695)
!1697 = !DILocation(line: 2727, column: 48, scope: !1695)
!1698 = !DILocation(line: 2727, column: 11, scope: !1270)
!1699 = !DILocation(line: 2729, column: 5, scope: !1270)
!1700 = !DILocation(line: 2733, column: 13, scope: !1259)
!1701 = !DILocation(line: 2734, column: 17, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1259, file: !940, line: 2734, column: 7)
!1703 = !DILocation(line: 2734, column: 7, scope: !1259)
!1704 = !DILocation(line: 2735, column: 5, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !940, line: 2735, column: 5)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !940, line: 2735, column: 5)
!1707 = !DILocation(line: 2735, column: 5, scope: !1706)
!1708 = !DILocation(line: 2737, column: 10, scope: !1259)
!1709 = !DILocation(line: 2738, column: 14, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1259, file: !940, line: 2738, column: 7)
!1711 = !DILocation(line: 2738, column: 7, scope: !1259)
!1712 = !DILocation(line: 2743, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !940, line: 2739, column: 5)
!1714 = !DILocation(line: 2744, column: 14, scope: !1713)
!1715 = !DILocation(line: 2745, column: 5, scope: !1713)
!1716 = !DILocation(line: 2746, column: 3, scope: !1259)
!1717 = !DILocation(line: 2747, column: 3, scope: !1259)
!1718 = !DILocation(line: 2748, column: 1, scope: !1259)
!1719 = distinct !DISubprogram(name: "DestroyQuantizeInfo", scope: !940, file: !940, line: 1356, type: !1720, scopeLine: 1357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!565, !565}
!1722 = !{!1723}
!1723 = !DILocalVariable(name: "quantize_info", arg: 1, scope: !1719, file: !940, line: 1356, type: !565)
!1724 = !DILocation(line: 0, scope: !1719)
!1725 = !DILocation(line: 1358, column: 10, scope: !1719)
!1726 = !DILocation(line: 1361, column: 18, scope: !1719)
!1727 = !DILocation(line: 1361, column: 27, scope: !1719)
!1728 = !DILocation(line: 1362, column: 34, scope: !1719)
!1729 = !DILocation(line: 1363, column: 3, scope: !1719)
!1730 = !DISubprogram(name: "RelinquishMagickMemory", scope: !990, file: !990, line: 51, type: !1731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!582, !582}
!1733 = distinct !DISubprogram(name: "GetImageQuantizeError", scope: !940, file: !940, line: 2124, type: !1197, scopeLine: 2125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1752}
!1735 = !DILocalVariable(name: "image", arg: 1, scope: !1733, file: !940, line: 2124, type: !652)
!1736 = !DILocalVariable(name: "image_view", scope: !1733, file: !940, line: 2127, type: !1306)
!1737 = !DILocalVariable(name: "exception", scope: !1733, file: !940, line: 2130, type: !1099)
!1738 = !DILocalVariable(name: "indexes", scope: !1733, file: !940, line: 2133, type: !937)
!1739 = !DILocalVariable(name: "alpha", scope: !1733, file: !940, line: 2136, type: !935)
!1740 = !DILocalVariable(name: "area", scope: !1733, file: !940, line: 2137, type: !935)
!1741 = !DILocalVariable(name: "beta", scope: !1733, file: !940, line: 2138, type: !935)
!1742 = !DILocalVariable(name: "distance", scope: !1733, file: !940, line: 2139, type: !935)
!1743 = !DILocalVariable(name: "maximum_error", scope: !1733, file: !940, line: 2140, type: !935)
!1744 = !DILocalVariable(name: "mean_error", scope: !1733, file: !940, line: 2141, type: !935)
!1745 = !DILocalVariable(name: "mean_error_per_pixel", scope: !1733, file: !940, line: 2142, type: !935)
!1746 = !DILocalVariable(name: "index", scope: !1733, file: !940, line: 2145, type: !570)
!1747 = !DILocalVariable(name: "y", scope: !1733, file: !940, line: 2148, type: !640)
!1748 = !DILocalVariable(name: "p", scope: !1749, file: !940, line: 2169, type: !1441)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !940, line: 2167, column: 3)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !940, line: 2166, column: 3)
!1751 = distinct !DILexicalBlock(scope: !1733, file: !940, line: 2166, column: 3)
!1752 = !DILocalVariable(name: "x", scope: !1749, file: !940, line: 2172, type: !640)
!1753 = !DILocation(line: 0, scope: !1733)
!1754 = !DILocation(line: 2152, column: 14, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1733, file: !940, line: 2152, column: 7)
!1756 = !DILocation(line: 2152, column: 20, scope: !1755)
!1757 = !DILocation(line: 2152, column: 7, scope: !1733)
!1758 = !DILocation(line: 2153, column: 68, scope: !1755)
!1759 = !DILocation(line: 2153, column: 12, scope: !1755)
!1760 = !DILocation(line: 2153, column: 5, scope: !1755)
!1761 = !DILocation(line: 2154, column: 67, scope: !1733)
!1762 = !DILocation(line: 2154, column: 23, scope: !1733)
!1763 = !DILocation(line: 2154, column: 10, scope: !1733)
!1764 = !DILocation(line: 2154, column: 22, scope: !1733)
!1765 = !{!1208, !1052, i64 464}
!1766 = !DILocation(line: 2155, column: 36, scope: !1733)
!1767 = !DILocation(line: 2155, column: 10, scope: !1733)
!1768 = !DILocation(line: 2156, column: 14, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1733, file: !940, line: 2156, column: 7)
!1770 = !DILocation(line: 2156, column: 28, scope: !1769)
!1771 = !DILocation(line: 2156, column: 7, scope: !1733)
!1772 = !DILocation(line: 2160, column: 19, scope: !1733)
!1773 = !DILocation(line: 2160, column: 12, scope: !1733)
!1774 = !DILocation(line: 2160, column: 11, scope: !1733)
!1775 = !DILocation(line: 2160, column: 34, scope: !1733)
!1776 = !DILocation(line: 2160, column: 27, scope: !1733)
!1777 = !DILocation(line: 2160, column: 26, scope: !1733)
!1778 = !DILocation(line: 2160, column: 8, scope: !1733)
!1779 = !DILocation(line: 2165, column: 14, scope: !1733)
!1780 = !DILocation(line: 2166, column: 34, scope: !1750)
!1781 = !DILocation(line: 2166, column: 15, scope: !1750)
!1782 = !DILocation(line: 2166, column: 3, scope: !1751)
!1783 = !DILocation(line: 2174, column: 55, scope: !1749)
!1784 = !DILocation(line: 2174, column: 7, scope: !1749)
!1785 = !DILocation(line: 0, scope: !1749)
!1786 = !DILocation(line: 2175, column: 11, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1749, file: !940, line: 2175, column: 9)
!1788 = !DILocation(line: 2175, column: 9, scope: !1749)
!1789 = !DILocation(line: 2177, column: 13, scope: !1749)
!1790 = !DILocation(line: 2178, column: 17, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !940, line: 2178, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1749, file: !940, line: 2178, column: 5)
!1793 = !DILocation(line: 2178, column: 5, scope: !1792)
!1794 = !DILocation(line: 2180, column: 17, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !940, line: 2179, column: 5)
!1796 = !DILocation(line: 2181, column: 11, scope: !1795)
!1797 = !DILocation(line: 2183, column: 49, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !940, line: 2182, column: 9)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !940, line: 2181, column: 11)
!1800 = !DILocation(line: 2183, column: 48, scope: !1798)
!1801 = !DILocation(line: 2183, column: 47, scope: !1798)
!1802 = !DILocation(line: 2183, column: 17, scope: !1798)
!1803 = !DILocation(line: 2185, column: 36, scope: !1798)
!1804 = !DILocation(line: 2184, column: 60, scope: !1798)
!1805 = !DILocation(line: 2184, column: 47, scope: !1798)
!1806 = !DILocation(line: 2184, column: 46, scope: !1798)
!1807 = !DILocation(line: 2184, column: 16, scope: !1798)
!1808 = !DILocation(line: 2186, column: 9, scope: !1798)
!1809 = !DILocation(line: 2187, column: 27, scope: !1795)
!1810 = !DILocation(line: 2187, column: 70, scope: !1795)
!1811 = !DILocation(line: 2187, column: 47, scope: !1795)
!1812 = !DILocation(line: 2187, column: 41, scope: !1795)
!1813 = !DILocation(line: 2187, column: 16, scope: !1795)
!1814 = !DILocation(line: 2188, column: 27, scope: !1795)
!1815 = !DILocation(line: 2189, column: 17, scope: !1795)
!1816 = !DILocation(line: 2190, column: 20, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1795, file: !940, line: 2190, column: 11)
!1818 = !DILocation(line: 2190, column: 11, scope: !1795)
!1819 = !DILocation(line: 2191, column: 9, scope: !1817)
!1820 = !DILocation(line: 2192, column: 27, scope: !1795)
!1821 = !DILocation(line: 2192, column: 72, scope: !1795)
!1822 = !DILocation(line: 2192, column: 49, scope: !1795)
!1823 = !DILocation(line: 2192, column: 43, scope: !1795)
!1824 = !DILocation(line: 2192, column: 16, scope: !1795)
!1825 = !DILocation(line: 2193, column: 27, scope: !1795)
!1826 = !DILocation(line: 2194, column: 17, scope: !1795)
!1827 = !DILocation(line: 2195, column: 20, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1795, file: !940, line: 2195, column: 11)
!1829 = !DILocation(line: 2195, column: 11, scope: !1795)
!1830 = !DILocation(line: 2196, column: 9, scope: !1828)
!1831 = !DILocation(line: 0, scope: !1795)
!1832 = !DILocation(line: 2197, column: 27, scope: !1795)
!1833 = !DILocation(line: 2197, column: 48, scope: !1795)
!1834 = !DILocation(line: 2197, column: 71, scope: !1795)
!1835 = !DILocation(line: 2197, column: 42, scope: !1795)
!1836 = !DILocation(line: 2197, column: 16, scope: !1795)
!1837 = !DILocation(line: 2198, column: 27, scope: !1795)
!1838 = !DILocation(line: 2199, column: 17, scope: !1795)
!1839 = !DILocation(line: 2200, column: 20, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1795, file: !940, line: 2200, column: 11)
!1841 = !DILocation(line: 2200, column: 11, scope: !1795)
!1842 = !DILocation(line: 2201, column: 9, scope: !1840)
!1843 = !DILocation(line: 2202, column: 8, scope: !1795)
!1844 = !DILocation(line: 2178, column: 46, scope: !1791)
!1845 = distinct !{!1845, !1793, !1846, !1374, !1375}
!1846 = !DILocation(line: 2203, column: 5, scope: !1792)
!1847 = !DILocation(line: 2166, column: 41, scope: !1750)
!1848 = distinct !{!1848, !1782, !1849, !1374, !1375}
!1849 = !DILocation(line: 2204, column: 3, scope: !1751)
!1850 = !DILocation(line: 2161, column: 16, scope: !1733)
!1851 = !DILocation(line: 2163, column: 13, scope: !1733)
!1852 = !DILocation(line: 2162, column: 23, scope: !1733)
!1853 = !DILocation(line: 2205, column: 14, scope: !1733)
!1854 = !DILocation(line: 2206, column: 37, scope: !1733)
!1855 = !DILocation(line: 2206, column: 67, scope: !1733)
!1856 = !DILocation(line: 2206, column: 66, scope: !1733)
!1857 = !DILocation(line: 2206, column: 36, scope: !1733)
!1858 = !{!1208, !1074, i64 480}
!1859 = !DILocation(line: 2208, column: 5, scope: !1733)
!1860 = !DILocation(line: 2207, column: 72, scope: !1733)
!1861 = !DILocation(line: 2208, column: 15, scope: !1733)
!1862 = !DILocation(line: 2207, column: 16, scope: !1733)
!1863 = !DILocation(line: 2207, column: 37, scope: !1733)
!1864 = !{!1208, !1074, i64 488}
!1865 = !DILocation(line: 2209, column: 63, scope: !1733)
!1866 = !DILocation(line: 2209, column: 62, scope: !1733)
!1867 = !DILocation(line: 2209, column: 16, scope: !1733)
!1868 = !DILocation(line: 2209, column: 40, scope: !1733)
!1869 = !{!1208, !1074, i64 496}
!1870 = !DILocation(line: 2210, column: 3, scope: !1733)
!1871 = !DILocation(line: 2211, column: 1, scope: !1733)
!1872 = !DISubprogram(name: "GetNumberColors", scope: !1256, file: !1256, line: 49, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!570, !854, !860, !1099}
!1875 = !DISubprogram(name: "ResetMagickMemory", scope: !990, file: !990, line: 52, type: !1876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!582, !582, !453, !858}
!1878 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !431, file: !431, line: 55, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1306, !854, !1099}
!1881 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !431, file: !431, line: 69, type: !1882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!930, !1884, !1886, !1886, !858, !858, !1099}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!1887 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !431, file: !431, line: 77, type: !1888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!937, !1306}
!1890 = !DISubprogram(name: "DestroyCacheView", scope: !431, file: !431, line: 57, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1306, !1306}
!1893 = distinct !DISubprogram(name: "PosterizeImage", scope: !940, file: !940, line: 2292, type: !1894, scopeLine: 2294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!575, !652, !858, !1143}
!1896 = !{!1897, !1898, !1899, !1900}
!1897 = !DILocalVariable(name: "image", arg: 1, scope: !1893, file: !940, line: 2292, type: !652)
!1898 = !DILocalVariable(name: "levels", arg: 2, scope: !1893, file: !940, line: 2292, type: !858)
!1899 = !DILocalVariable(name: "dither", arg: 3, scope: !1893, file: !940, line: 2293, type: !1143)
!1900 = !DILocalVariable(name: "status", scope: !1893, file: !940, line: 2296, type: !575)
!1901 = !DILocation(line: 0, scope: !1893)
!1902 = !DILocation(line: 2298, column: 10, scope: !1893)
!1903 = !DILocation(line: 2299, column: 3, scope: !1893)
!1904 = distinct !DISubprogram(name: "PosterizeImageChannel", scope: !940, file: !940, line: 2302, type: !1905, scopeLine: 2304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1908)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!575, !652, !1907, !858, !1143}
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1924, !1925, !1926}
!1909 = !DILocalVariable(name: "image", arg: 1, scope: !1904, file: !940, line: 2302, type: !652)
!1910 = !DILocalVariable(name: "channel", arg: 2, scope: !1904, file: !940, line: 2303, type: !1907)
!1911 = !DILocalVariable(name: "levels", arg: 3, scope: !1904, file: !940, line: 2303, type: !858)
!1912 = !DILocalVariable(name: "dither", arg: 4, scope: !1904, file: !940, line: 2303, type: !1143)
!1913 = !DILocalVariable(name: "image_view", scope: !1904, file: !940, line: 2310, type: !1306)
!1914 = !DILocalVariable(name: "exception", scope: !1904, file: !940, line: 2313, type: !1099)
!1915 = !DILocalVariable(name: "status", scope: !1904, file: !940, line: 2316, type: !575)
!1916 = !DILocalVariable(name: "progress", scope: !1904, file: !940, line: 2319, type: !761)
!1917 = !DILocalVariable(name: "quantize_info", scope: !1904, file: !940, line: 2322, type: !565)
!1918 = !DILocalVariable(name: "i", scope: !1904, file: !940, line: 2325, type: !640)
!1919 = !DILocalVariable(name: "y", scope: !1904, file: !940, line: 2328, type: !640)
!1920 = !DILocalVariable(name: "indexes", scope: !1921, file: !940, line: 2367, type: !1318)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !940, line: 2365, column: 3)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !940, line: 2364, column: 3)
!1923 = distinct !DILexicalBlock(scope: !1904, file: !940, line: 2364, column: 3)
!1924 = !DILocalVariable(name: "q", scope: !1921, file: !940, line: 2370, type: !1320)
!1925 = !DILocalVariable(name: "x", scope: !1921, file: !940, line: 2373, type: !640)
!1926 = !DILocalVariable(name: "proceed", scope: !1927, file: !940, line: 2405, type: !575)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !940, line: 2403, column: 7)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !940, line: 2402, column: 9)
!1929 = !DILocation(line: 0, scope: !1904)
!1930 = !DILocation(line: 2332, column: 14, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1904, file: !940, line: 2332, column: 7)
!1932 = !DILocation(line: 2332, column: 20, scope: !1931)
!1933 = !DILocation(line: 2332, column: 7, scope: !1904)
!1934 = !DILocation(line: 2333, column: 68, scope: !1931)
!1935 = !DILocation(line: 2333, column: 12, scope: !1931)
!1936 = !DILocation(line: 2333, column: 5, scope: !1931)
!1937 = !DILocation(line: 2334, column: 14, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1904, file: !940, line: 2334, column: 7)
!1939 = !DILocation(line: 2334, column: 28, scope: !1938)
!1940 = !DILocation(line: 2334, column: 7, scope: !1904)
!1941 = !DILocation(line: 2339, column: 17, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !940, line: 2339, column: 5)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !940, line: 2339, column: 5)
!1944 = !DILocation(line: 2339, column: 5, scope: !1943)
!1945 = !DILocation(line: 2344, column: 11, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !940, line: 2340, column: 5)
!1947 = !DILocation(line: 2345, column: 32, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1946, file: !940, line: 2344, column: 11)
!1949 = !DILocalVariable(name: "x", arg: 1, scope: !1950, file: !940, line: 2282, type: !617)
!1950 = distinct !DISubprogram(name: "MagickRound", scope: !940, file: !940, line: 2282, type: !1951, scopeLine: 2283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!617, !617}
!1953 = !{!1949}
!1954 = !DILocation(line: 0, scope: !1950, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 2345, column: 32, scope: !1948)
!1956 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !1955)
!1957 = distinct !DILexicalBlock(scope: !1950, file: !940, line: 2287, column: 7)
!1958 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !1955)
!1959 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !1955)
!1960 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !1955)
!1961 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !1955)
!1962 = !DILocation(line: 2345, column: 31, scope: !1948)
!1963 = !DILocation(line: 2345, column: 9, scope: !1948)
!1964 = !DILocation(line: 2346, column: 11, scope: !1946)
!1965 = !DILocation(line: 2347, column: 34, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1946, file: !940, line: 2346, column: 11)
!1967 = !DILocation(line: 0, scope: !1950, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 2347, column: 34, scope: !1966)
!1969 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !1968)
!1970 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !1968)
!1971 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !1968)
!1972 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !1968)
!1973 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !1968)
!1974 = !DILocation(line: 2347, column: 33, scope: !1966)
!1975 = !DILocation(line: 2347, column: 9, scope: !1966)
!1976 = !DILocation(line: 2348, column: 11, scope: !1946)
!1977 = !DILocation(line: 2349, column: 33, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1946, file: !940, line: 2348, column: 11)
!1979 = !DILocation(line: 0, scope: !1950, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 2349, column: 33, scope: !1978)
!1981 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !1980)
!1982 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !1980)
!1983 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !1980)
!1984 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !1980)
!1985 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !1980)
!1986 = !DILocation(line: 2349, column: 32, scope: !1978)
!1987 = !DILocation(line: 2349, column: 9, scope: !1978)
!1988 = !DILocation(line: 2350, column: 11, scope: !1946)
!1989 = !DILocation(line: 2351, column: 36, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1946, file: !940, line: 2350, column: 11)
!1991 = !DILocation(line: 0, scope: !1950, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 2351, column: 36, scope: !1990)
!1993 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !1992)
!1994 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !1992)
!1995 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !1992)
!1996 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !1992)
!1997 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !1992)
!1998 = !DILocation(line: 2351, column: 35, scope: !1990)
!1999 = !DILocation(line: 2351, column: 9, scope: !1990)
!2000 = !DILocation(line: 2339, column: 45, scope: !1942)
!2001 = distinct !{!2001, !1944, !2002, !1374, !1375}
!2002 = !DILocation(line: 2352, column: 5, scope: !1943)
!2003 = !DILocation(line: 2358, column: 22, scope: !1904)
!2004 = !DILocation(line: 2359, column: 14, scope: !1904)
!2005 = !DILocation(line: 2364, column: 34, scope: !1922)
!2006 = !DILocation(line: 2364, column: 15, scope: !1922)
!2007 = !DILocation(line: 2364, column: 3, scope: !1923)
!2008 = !DILocation(line: 2375, column: 16, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1921, file: !940, line: 2375, column: 9)
!2010 = !DILocation(line: 2375, column: 9, scope: !1921)
!2011 = !DILocation(line: 2377, column: 57, scope: !1921)
!2012 = !DILocation(line: 2377, column: 7, scope: !1921)
!2013 = !DILocation(line: 0, scope: !1921)
!2014 = !DILocation(line: 2378, column: 11, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1921, file: !940, line: 2378, column: 9)
!2016 = !DILocation(line: 2378, column: 9, scope: !1921)
!2017 = !DILocation(line: 2383, column: 13, scope: !1921)
!2018 = !DILocation(line: 2384, column: 17, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !940, line: 2384, column: 5)
!2020 = distinct !DILexicalBlock(scope: !1921, file: !940, line: 2384, column: 5)
!2021 = !DILocation(line: 2384, column: 5, scope: !2020)
!2022 = !DILocation(line: 2386, column: 11, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !940, line: 2385, column: 5)
!2024 = !DILocation(line: 2387, column: 9, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2023, file: !940, line: 2386, column: 11)
!2026 = !DILocation(line: 0, scope: !1950, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 2387, column: 9, scope: !2025)
!2028 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !2027)
!2029 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !2027)
!2030 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !2027)
!2031 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !2027)
!2032 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !2027)
!2033 = !DILocation(line: 2388, column: 11, scope: !2023)
!2034 = !DILocation(line: 2389, column: 9, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2023, file: !940, line: 2388, column: 11)
!2036 = !DILocation(line: 0, scope: !1950, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 2389, column: 9, scope: !2035)
!2038 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !2037)
!2039 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !2037)
!2040 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !2037)
!2041 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !2037)
!2042 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !2037)
!2043 = !DILocation(line: 2390, column: 11, scope: !2023)
!2044 = !DILocation(line: 2391, column: 9, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2023, file: !940, line: 2390, column: 11)
!2046 = !DILocation(line: 0, scope: !1950, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 2391, column: 9, scope: !2045)
!2048 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !2047)
!2049 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !2047)
!2050 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !2047)
!2051 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !2047)
!2052 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !2047)
!2053 = !DILocation(line: 2392, column: 45, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2023, file: !940, line: 2392, column: 11)
!2055 = !DILocation(line: 2393, column: 19, scope: !2054)
!2056 = !DILocation(line: 2393, column: 25, scope: !2054)
!2057 = !DILocation(line: 2392, column: 11, scope: !2023)
!2058 = !DILocation(line: 2394, column: 9, scope: !2054)
!2059 = !DILocation(line: 0, scope: !1950, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 2394, column: 9, scope: !2054)
!2061 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !2060)
!2062 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !2060)
!2063 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !2060)
!2064 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !2060)
!2065 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !2060)
!2066 = !DILocation(line: 2395, column: 43, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2023, file: !940, line: 2395, column: 11)
!2068 = !DILocation(line: 2396, column: 19, scope: !2067)
!2069 = !{!1208, !1037, i64 4}
!2070 = !DILocation(line: 2396, column: 30, scope: !2067)
!2071 = !DILocation(line: 2395, column: 11, scope: !2023)
!2072 = !DILocation(line: 2397, column: 9, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !940, line: 2397, column: 9)
!2074 = distinct !DILexicalBlock(scope: !2067, file: !940, line: 2397, column: 9)
!2075 = !DILocation(line: 0, scope: !1950, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 2397, column: 9, scope: !2073)
!2077 = !DILocation(line: 2287, column: 10, scope: !1957, inlinedAt: !2076)
!2078 = !DILocation(line: 2287, column: 9, scope: !1957, inlinedAt: !2076)
!2079 = !DILocation(line: 2287, column: 23, scope: !1957, inlinedAt: !2076)
!2080 = !DILocation(line: 2287, column: 30, scope: !1957, inlinedAt: !2076)
!2081 = !DILocation(line: 2287, column: 20, scope: !1957, inlinedAt: !2076)
!2082 = !DILocation(line: 2398, column: 8, scope: !2023)
!2083 = !DILocation(line: 2384, column: 46, scope: !2019)
!2084 = distinct !{!2084, !2021, !2085, !1374, !1375}
!2085 = !DILocation(line: 2399, column: 5, scope: !2020)
!2086 = !DILocation(line: 2400, column: 9, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1921, file: !940, line: 2400, column: 9)
!2088 = !DILocation(line: 2400, column: 60, scope: !2087)
!2089 = !DILocation(line: 2400, column: 9, scope: !1921)
!2090 = !DILocation(line: 2402, column: 16, scope: !1928)
!2091 = !DILocation(line: 2402, column: 33, scope: !1928)
!2092 = !DILocation(line: 2402, column: 9, scope: !1921)
!2093 = !DILocation(line: 2410, column: 66, scope: !1927)
!2094 = !DILocation(line: 2411, column: 18, scope: !1927)
!2095 = !DILocation(line: 0, scope: !1387, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 2410, column: 17, scope: !1927)
!2097 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !2096)
!2098 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !2096)
!2099 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !2096)
!2100 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !2096)
!2101 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !2096)
!2102 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !2096)
!2103 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !2096)
!2104 = !DILocation(line: 0, scope: !1927)
!2105 = !DILocation(line: 2412, column: 21, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1927, file: !940, line: 2412, column: 13)
!2107 = !DILocation(line: 2412, column: 13, scope: !1927)
!2108 = !DILocation(line: 2414, column: 7, scope: !1927)
!2109 = !DILocation(line: 2364, column: 41, scope: !1922)
!2110 = distinct !{!2110, !2007, !2111, !1374, !1375}
!2111 = !DILocation(line: 2415, column: 3, scope: !1923)
!2112 = !DILocation(line: 2416, column: 14, scope: !1904)
!2113 = !DILocation(line: 2417, column: 17, scope: !1904)
!2114 = !DILocation(line: 2418, column: 67, scope: !1904)
!2115 = !DILocation(line: 2418, column: 74, scope: !1904)
!2116 = !DILocalVariable(name: "x", arg: 1, scope: !2117, file: !940, line: 1865, type: !1886)
!2117 = distinct !DISubprogram(name: "MagickMin", scope: !940, file: !940, line: 1865, type: !2118, scopeLine: 1866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!640, !1886, !1886}
!2120 = !{!2116, !2121}
!2121 = !DILocalVariable(name: "y", arg: 2, scope: !2117, file: !940, line: 1865, type: !1886)
!2122 = !DILocation(line: 0, scope: !2117, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 2418, column: 41, scope: !1904)
!2124 = !DILocation(line: 2418, column: 31, scope: !1904)
!2125 = !DILocation(line: 2420, column: 18, scope: !1904)
!2126 = !DILocation(line: 2420, column: 24, scope: !1904)
!2127 = !DILocation(line: 2421, column: 18, scope: !1904)
!2128 = !DILocation(line: 2421, column: 28, scope: !1904)
!2129 = !DILocation(line: 2422, column: 10, scope: !1904)
!2130 = !DILocation(line: 0, scope: !1719, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 2423, column: 17, scope: !1904)
!2132 = !DILocation(line: 1358, column: 10, scope: !1719, inlinedAt: !2131)
!2133 = !DILocation(line: 1361, column: 18, scope: !1719, inlinedAt: !2131)
!2134 = !DILocation(line: 1361, column: 27, scope: !1719, inlinedAt: !2131)
!2135 = !DILocation(line: 1362, column: 34, scope: !1719, inlinedAt: !2131)
!2136 = !DILocation(line: 2424, column: 3, scope: !1904)
!2137 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !431, file: !431, line: 53, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2138 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !431, file: !431, line: 99, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!669, !1306, !1886, !1886, !858, !858, !1099}
!2141 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !431, file: !431, line: 89, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!575, !1306, !1099}
!2144 = !DISubprogram(name: "IsGrayImage", scope: !2145, file: !2145, line: 32, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2145 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!2146 = distinct !DISubprogram(name: "GetCubeInfo", scope: !940, file: !940, line: 1944, type: !2147, scopeLine: 1946, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!938, !1147, !858, !858}
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2150 = !DILocalVariable(name: "quantize_info", arg: 1, scope: !2146, file: !940, line: 1944, type: !1147)
!2151 = !DILocalVariable(name: "depth", arg: 2, scope: !2146, file: !940, line: 1945, type: !858)
!2152 = !DILocalVariable(name: "maximum_colors", arg: 3, scope: !2146, file: !940, line: 1945, type: !858)
!2153 = !DILocalVariable(name: "cube_info", scope: !2146, file: !940, line: 1948, type: !938)
!2154 = !DILocalVariable(name: "sum", scope: !2146, file: !940, line: 1951, type: !935)
!2155 = !DILocalVariable(name: "weight", scope: !2146, file: !940, line: 1952, type: !935)
!2156 = !DILocalVariable(name: "i", scope: !2146, file: !940, line: 1955, type: !640)
!2157 = !DILocalVariable(name: "length", scope: !2146, file: !940, line: 1958, type: !570)
!2158 = !DILocation(line: 0, scope: !2146)
!2159 = !DILocation(line: 1963, column: 26, scope: !2146)
!2160 = !DILocation(line: 1964, column: 17, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2146, file: !940, line: 1964, column: 7)
!2162 = !DILocation(line: 1964, column: 7, scope: !2146)
!2163 = !DILocation(line: 1966, column: 10, scope: !2146)
!2164 = !DILocation(line: 1967, column: 14, scope: !2146)
!2165 = !DILocation(line: 1968, column: 7, scope: !2146)
!2166 = !DILocation(line: 1970, column: 7, scope: !2146)
!2167 = !{!2168, !1052, i64 480}
!2168 = !{!"_CubeInfo", !1073, i64 0, !1052, i64 8, !1052, i64 16, !1052, i64 24, !1217, i64 32, !2169, i64 40, !2170, i64 56, !2170, i64 60, !2170, i64 64, !1052, i64 72, !1052, i64 80, !1052, i64 88, !1073, i64 96, !1073, i64 104, !1073, i64 112, !1073, i64 120, !1037, i64 128, !1037, i64 384, !1073, i64 448, !1037, i64 456, !1052, i64 464, !1052, i64 472, !1052, i64 480, !1217, i64 488, !1217, i64 496}
!2169 = !{!"_RealPixelPacket", !2170, i64 0, !2170, i64 4, !2170, i64 8, !2170, i64 12}
!2170 = !{!"float", !1037, i64 0}
!2171 = !DILocation(line: 1972, column: 14, scope: !2146)
!2172 = !DILocation(line: 1972, column: 28, scope: !2146)
!2173 = !{!2168, !1052, i64 16}
!2174 = !DILocalVariable(name: "cube_info", arg: 1, scope: !2175, file: !940, line: 2049, type: !938)
!2175 = distinct !DISubprogram(name: "GetNodeInfo", scope: !940, file: !940, line: 2049, type: !2176, scopeLine: 2051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!944, !938, !858, !858, !944}
!2178 = !{!2174, !2179, !2180, !2181, !2182, !2183}
!2179 = !DILocalVariable(name: "id", arg: 2, scope: !2175, file: !940, line: 2049, type: !858)
!2180 = !DILocalVariable(name: "level", arg: 3, scope: !2175, file: !940, line: 2050, type: !858)
!2181 = !DILocalVariable(name: "parent", arg: 4, scope: !2175, file: !940, line: 2050, type: !944)
!2182 = !DILocalVariable(name: "node_info", scope: !2175, file: !940, line: 2053, type: !944)
!2183 = !DILocalVariable(name: "nodes", scope: !2184, file: !940, line: 2058, type: !980)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !940, line: 2056, column: 5)
!2185 = distinct !DILexicalBlock(scope: !2175, file: !940, line: 2055, column: 7)
!2186 = !DILocation(line: 0, scope: !2175, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 1976, column: 19, scope: !2146)
!2188 = !DILocation(line: 2055, column: 18, scope: !2185, inlinedAt: !2187)
!2189 = !{!2168, !1052, i64 80}
!2190 = !DILocation(line: 2055, column: 29, scope: !2185, inlinedAt: !2187)
!2191 = !DILocation(line: 2055, column: 7, scope: !2175, inlinedAt: !2187)
!2192 = !DILocation(line: 2077, column: 33, scope: !2175, inlinedAt: !2187)
!2193 = !{!2168, !1073, i64 96}
!2194 = !DILocation(line: 2063, column: 23, scope: !2184, inlinedAt: !2187)
!2195 = !DILocation(line: 0, scope: !2184, inlinedAt: !2187)
!2196 = !DILocation(line: 2064, column: 17, scope: !2197, inlinedAt: !2187)
!2197 = distinct !DILexicalBlock(scope: !2184, file: !940, line: 2064, column: 11)
!2198 = !DILocation(line: 2064, column: 11, scope: !2184, inlinedAt: !2187)
!2199 = !DILocation(line: 2066, column: 33, scope: !2184, inlinedAt: !2187)
!2200 = !DILocation(line: 2066, column: 19, scope: !2184, inlinedAt: !2187)
!2201 = !{!2202, !1073, i64 0}
!2202 = !{!"_Nodes", !1073, i64 0, !1073, i64 8}
!2203 = !DILocation(line: 2068, column: 24, scope: !2204, inlinedAt: !2187)
!2204 = distinct !DILexicalBlock(scope: !2184, file: !940, line: 2068, column: 11)
!2205 = !DILocation(line: 2068, column: 11, scope: !2184, inlinedAt: !2187)
!2206 = !DILocation(line: 2070, column: 30, scope: !2184, inlinedAt: !2187)
!2207 = !{!2168, !1073, i64 104}
!2208 = !DILocation(line: 2070, column: 14, scope: !2184, inlinedAt: !2187)
!2209 = !DILocation(line: 2070, column: 18, scope: !2184, inlinedAt: !2187)
!2210 = !{!2202, !1073, i64 8}
!2211 = !DILocation(line: 2071, column: 28, scope: !2184, inlinedAt: !2187)
!2212 = !DILocation(line: 1976, column: 18, scope: !2146)
!2213 = !{!2168, !1073, i64 0}
!2214 = !DILocation(line: 1977, column: 7, scope: !2146)
!2215 = !DILocation(line: 2075, column: 14, scope: !2175, inlinedAt: !2187)
!2216 = !DILocation(line: 2075, column: 19, scope: !2175, inlinedAt: !2187)
!2217 = !{!2168, !1052, i64 72}
!2218 = !DILocation(line: 2076, column: 24, scope: !2175, inlinedAt: !2187)
!2219 = !DILocation(line: 2077, column: 24, scope: !2175, inlinedAt: !2187)
!2220 = !DILocation(line: 2078, column: 10, scope: !2175, inlinedAt: !2187)
!2221 = !DILocation(line: 2080, column: 14, scope: !2175, inlinedAt: !2187)
!2222 = !DILocation(line: 2080, column: 16, scope: !2175, inlinedAt: !2187)
!2223 = !DILocation(line: 1979, column: 26, scope: !2146)
!2224 = !{!2225, !1073, i64 0}
!2225 = !{!"_NodeInfo", !1073, i64 0, !1037, i64 8, !1217, i64 136, !2169, i64 144, !2170, i64 160, !1052, i64 168, !1052, i64 176, !1052, i64 184}
!2226 = !DILocation(line: 1980, column: 28, scope: !2146)
!2227 = !DILocation(line: 1980, column: 14, scope: !2146)
!2228 = !DILocation(line: 1980, column: 27, scope: !2146)
!2229 = !{!2168, !1073, i64 448}
!2230 = !DILocation(line: 1981, column: 33, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2146, file: !940, line: 1981, column: 7)
!2232 = !DILocation(line: 1981, column: 40, scope: !2231)
!2233 = !DILocation(line: 1981, column: 7, scope: !2146)
!2234 = !DILocation(line: 1987, column: 26, scope: !2146)
!2235 = !DILocation(line: 1987, column: 14, scope: !2146)
!2236 = !DILocation(line: 1987, column: 25, scope: !2146)
!2237 = !{!2168, !1073, i64 112}
!2238 = !DILocation(line: 1988, column: 30, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2146, file: !940, line: 1988, column: 7)
!2240 = !DILocation(line: 1988, column: 7, scope: !2146)
!2241 = !DILocation(line: 1990, column: 32, scope: !2146)
!2242 = !DILocation(line: 1990, column: 14, scope: !2146)
!2243 = !DILocation(line: 1990, column: 19, scope: !2146)
!2244 = !{!2168, !1073, i64 120}
!2245 = !DILocation(line: 1995, column: 24, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !940, line: 1994, column: 3)
!2247 = distinct !DILexicalBlock(scope: !2146, file: !940, line: 1994, column: 3)
!2248 = !DILocation(line: 2000, column: 3, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2146, file: !940, line: 2000, column: 3)
!2250 = !DILocation(line: 2002, column: 68, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !940, line: 2001, column: 3)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !940, line: 2000, column: 3)
!2253 = !DILocalVariable(name: "x", arg: 1, scope: !2254, file: !2255, line: 78, type: !2258)
!2254 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !2255, file: !2255, line: 78, type: !2256, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2259)
!2255 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!617, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!2259 = !{!2253, !2260}
!2260 = !DILocalVariable(name: "sign", scope: !2254, file: !2255, line: 81, type: !617)
!2261 = !DILocation(line: 0, scope: !2254, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 2002, column: 46, scope: !2251)
!2263 = !DILocation(line: 86, column: 10, scope: !2254, inlinedAt: !2262)
!2264 = !DILocation(line: 86, column: 8, scope: !2254, inlinedAt: !2262)
!2265 = !DILocation(line: 87, column: 12, scope: !2266, inlinedAt: !2262)
!2266 = distinct !DILexicalBlock(scope: !2254, file: !2255, line: 87, column: 7)
!2267 = !DILocation(line: 87, column: 16, scope: !2266, inlinedAt: !2262)
!2268 = !DILocation(line: 87, column: 7, scope: !2254, inlinedAt: !2262)
!2269 = !DILocation(line: 88, column: 15, scope: !2266, inlinedAt: !2262)
!2270 = !DILocation(line: 88, column: 5, scope: !2266, inlinedAt: !2262)
!2271 = !DILocation(line: 89, column: 14, scope: !2254, inlinedAt: !2262)
!2272 = !DILocation(line: 89, column: 3, scope: !2254, inlinedAt: !2262)
!2273 = !DILocation(line: 2002, column: 46, scope: !2251)
!2274 = !DILocation(line: 2002, column: 42, scope: !2251)
!2275 = !DILocation(line: 2002, column: 5, scope: !2251)
!2276 = !DILocation(line: 2002, column: 45, scope: !2251)
!2277 = !{!2170, !2170, i64 0}
!2278 = !DILocation(line: 2003, column: 11, scope: !2251)
!2279 = !DILocation(line: 2000, column: 36, scope: !2252)
!2280 = !DILocation(line: 2000, column: 15, scope: !2252)
!2281 = distinct !{!2281, !2248, !2282, !1374, !1375}
!2282 = !DILocation(line: 2004, column: 3, scope: !2249)
!2283 = !DILocation(line: 2010, column: 13, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !940, line: 2009, column: 3)
!2285 = distinct !DILexicalBlock(scope: !2146, file: !940, line: 2009, column: 3)
!2286 = !DILocation(line: 2010, column: 11, scope: !2284)
!2287 = !DILocation(line: 2009, column: 36, scope: !2284)
!2288 = !DILocation(line: 2009, column: 15, scope: !2284)
!2289 = !DILocation(line: 2009, column: 3, scope: !2285)
!2290 = distinct !{!2290, !2289, !2291, !1374, !1375}
!2291 = !DILocation(line: 2010, column: 33, scope: !2285)
!2292 = !DILocation(line: 2014, column: 5, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !940, line: 2013, column: 3)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !940, line: 2012, column: 3)
!2295 = distinct !DILexicalBlock(scope: !2146, file: !940, line: 2012, column: 3)
!2296 = !DILocation(line: 2014, column: 26, scope: !2293)
!2297 = !DILocation(line: 2015, column: 8, scope: !2293)
!2298 = !DILocation(line: 2012, column: 36, scope: !2294)
!2299 = !DILocation(line: 2012, column: 15, scope: !2294)
!2300 = !DILocation(line: 2012, column: 3, scope: !2295)
!2301 = distinct !{!2301, !2300, !2302, !1374, !1375}
!2302 = !DILocation(line: 2016, column: 3, scope: !2295)
!2303 = !DILocation(line: 2017, column: 30, scope: !2146)
!2304 = !DILocation(line: 2017, column: 29, scope: !2146)
!2305 = !DILocation(line: 2017, column: 14, scope: !2146)
!2306 = !DILocation(line: 2017, column: 24, scope: !2146)
!2307 = !DILocation(line: 2018, column: 3, scope: !2146)
!2308 = !DILocation(line: 2019, column: 1, scope: !2146)
!2309 = distinct !DISubprogram(name: "ClassifyImageColors", scope: !940, file: !940, line: 751, type: !2310, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2312)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!575, !938, !854, !1099}
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2333, !2334, !2338}
!2313 = !DILocalVariable(name: "cube_info", arg: 1, scope: !2309, file: !940, line: 751, type: !938)
!2314 = !DILocalVariable(name: "image", arg: 2, scope: !2309, file: !940, line: 752, type: !854)
!2315 = !DILocalVariable(name: "exception", arg: 3, scope: !2309, file: !940, line: 752, type: !1099)
!2316 = !DILocalVariable(name: "image_view", scope: !2309, file: !940, line: 757, type: !1306)
!2317 = !DILocalVariable(name: "proceed", scope: !2309, file: !940, line: 760, type: !575)
!2318 = !DILocalVariable(name: "bisect", scope: !2309, file: !940, line: 763, type: !935)
!2319 = !DILocalVariable(name: "node_info", scope: !2309, file: !940, line: 766, type: !944)
!2320 = !DILocalVariable(name: "error", scope: !2309, file: !940, line: 769, type: !956)
!2321 = !DILocalVariable(name: "mid", scope: !2309, file: !940, line: 770, type: !956)
!2322 = !DILocalVariable(name: "midpoint", scope: !2309, file: !940, line: 771, type: !956)
!2323 = !DILocalVariable(name: "pixel", scope: !2309, file: !940, line: 772, type: !956)
!2324 = !DILocalVariable(name: "count", scope: !2309, file: !940, line: 775, type: !570)
!2325 = !DILocalVariable(name: "id", scope: !2309, file: !940, line: 776, type: !570)
!2326 = !DILocalVariable(name: "index", scope: !2309, file: !940, line: 777, type: !570)
!2327 = !DILocalVariable(name: "level", scope: !2309, file: !940, line: 778, type: !570)
!2328 = !DILocalVariable(name: "y", scope: !2309, file: !940, line: 781, type: !640)
!2329 = !DILocalVariable(name: "p", scope: !2330, file: !940, line: 803, type: !1441)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !940, line: 801, column: 3)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !940, line: 800, column: 3)
!2332 = distinct !DILexicalBlock(scope: !2309, file: !940, line: 800, column: 3)
!2333 = !DILocalVariable(name: "x", scope: !2330, file: !940, line: 806, type: !640)
!2334 = !DILocalVariable(name: "p", scope: !2335, file: !940, line: 896, type: !1441)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !940, line: 894, column: 3)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !940, line: 893, column: 3)
!2337 = distinct !DILexicalBlock(scope: !2309, file: !940, line: 893, column: 3)
!2338 = !DILocalVariable(name: "x", scope: !2335, file: !940, line: 899, type: !640)
!2339 = !DILocation(line: 0, scope: !2309)
!2340 = !DILocation(line: 786, column: 3, scope: !2309)
!2341 = !DILocalVariable(name: "image", arg: 1, scope: !2342, file: !940, line: 739, type: !854)
!2342 = distinct !DISubprogram(name: "SetAssociatedAlpha", scope: !940, file: !940, line: 739, type: !2343, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !854, !938}
!2345 = !{!2341, !2346, !2347}
!2346 = !DILocalVariable(name: "cube_info", arg: 2, scope: !2342, file: !940, line: 739, type: !938)
!2347 = !DILocalVariable(name: "associate_alpha", scope: !2342, file: !940, line: 742, type: !575)
!2348 = !DILocation(line: 0, scope: !2342, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 786, column: 3, scope: !2309)
!2350 = !DILocation(line: 745, column: 19, scope: !2351, inlinedAt: !2349)
!2351 = distinct !DILexicalBlock(scope: !2342, file: !940, line: 745, column: 7)
!2352 = !DILocation(line: 745, column: 34, scope: !2351, inlinedAt: !2349)
!2353 = !DILocation(line: 745, column: 48, scope: !2351, inlinedAt: !2349)
!2354 = !DILocation(line: 745, column: 54, scope: !2351, inlinedAt: !2349)
!2355 = !DILocation(line: 746, column: 45, scope: !2351, inlinedAt: !2349)
!2356 = !DILocation(line: 745, column: 7, scope: !2342, inlinedAt: !2349)
!2357 = !DILocation(line: 748, column: 14, scope: !2342, inlinedAt: !2349)
!2358 = !DILocation(line: 748, column: 29, scope: !2342, inlinedAt: !2349)
!2359 = !{!2168, !1037, i64 456}
!2360 = !DILocation(line: 787, column: 69, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2309, file: !940, line: 787, column: 7)
!2362 = !DILocation(line: 792, column: 43, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2361, file: !940, line: 792, column: 9)
!2364 = !DILocalVariable(name: "colorspace", arg: 1, scope: !2365, file: !2366, line: 110, type: !2369)
!2365 = distinct !DISubprogram(name: "IssRGBCompatibleColorspace", scope: !2366, file: !2366, line: 109, type: !2367, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2370)
!2366 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!575, !2369}
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!2370 = !{!2364}
!2371 = !DILocation(line: 0, scope: !2365, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 792, column: 9, scope: !2363)
!2373 = !DILocation(line: 112, column: 38, scope: !2374, inlinedAt: !2372)
!2374 = distinct !DILexicalBlock(scope: !2365, file: !2366, line: 112, column: 7)
!2375 = !DILocation(line: 0, scope: !2361)
!2376 = !DILocation(line: 799, column: 14, scope: !2309)
!2377 = !DILocation(line: 800, column: 34, scope: !2331)
!2378 = !DILocation(line: 800, column: 15, scope: !2331)
!2379 = !DILocation(line: 800, column: 3, scope: !2332)
!2380 = !DILocation(line: 808, column: 55, scope: !2330)
!2381 = !DILocation(line: 808, column: 7, scope: !2330)
!2382 = !DILocation(line: 0, scope: !2330)
!2383 = !DILocation(line: 809, column: 11, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2330, file: !940, line: 809, column: 9)
!2385 = !DILocation(line: 809, column: 9, scope: !2330)
!2386 = !DILocation(line: 811, column: 20, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2330, file: !940, line: 811, column: 9)
!2388 = !DILocation(line: 811, column: 26, scope: !2387)
!2389 = !DILocation(line: 811, column: 9, scope: !2330)
!2390 = !DILocation(line: 816, column: 47, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !940, line: 812, column: 7)
!2392 = !DILocation(line: 816, column: 9, scope: !2391)
!2393 = !DILocation(line: 817, column: 25, scope: !2391)
!2394 = !DILocation(line: 818, column: 7, scope: !2391)
!2395 = !DILocation(line: 819, column: 36, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !940, line: 819, column: 5)
!2397 = distinct !DILexicalBlock(scope: !2330, file: !940, line: 819, column: 5)
!2398 = !DILocation(line: 819, column: 17, scope: !2396)
!2399 = !DILocation(line: 819, column: 5, scope: !2397)
!2400 = !DILocation(line: 489, column: 8, scope: !1587, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 825, column: 13, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !940, line: 825, column: 13)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !940, line: 824, column: 7)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !940, line: 824, column: 7)
!2405 = distinct !DILexicalBlock(scope: !2396, file: !940, line: 820, column: 5)
!2406 = !DILocation(line: 493, column: 8, scope: !1600, inlinedAt: !2401)
!2407 = !DILocation(line: 824, column: 23, scope: !2403)
!2408 = !DILocation(line: 824, column: 41, scope: !2403)
!2409 = !DILocation(line: 824, column: 7, scope: !2404)
!2410 = !DILocation(line: 825, column: 34, scope: !2402)
!2411 = !DILocation(line: 0, scope: !1578, inlinedAt: !2401)
!2412 = !DILocation(line: 488, column: 26, scope: !1587, inlinedAt: !2401)
!2413 = !DILocation(line: 488, column: 23, scope: !1587, inlinedAt: !2401)
!2414 = !DILocation(line: 488, column: 42, scope: !1587, inlinedAt: !2401)
!2415 = !DILocation(line: 489, column: 28, scope: !1587, inlinedAt: !2401)
!2416 = !DILocation(line: 489, column: 25, scope: !1587, inlinedAt: !2401)
!2417 = !DILocation(line: 489, column: 46, scope: !1587, inlinedAt: !2401)
!2418 = !DILocation(line: 490, column: 8, scope: !1587, inlinedAt: !2401)
!2419 = !DILocation(line: 490, column: 27, scope: !1587, inlinedAt: !2401)
!2420 = !DILocation(line: 490, column: 24, scope: !1587, inlinedAt: !2401)
!2421 = !DILocation(line: 488, column: 7, scope: !1578, inlinedAt: !2401)
!2422 = !DILocation(line: 492, column: 15, scope: !1600, inlinedAt: !2401)
!2423 = !DILocation(line: 492, column: 21, scope: !1600, inlinedAt: !2401)
!2424 = !DILocation(line: 492, column: 37, scope: !1600, inlinedAt: !2401)
!2425 = !DILocation(line: 493, column: 30, scope: !1600, inlinedAt: !2401)
!2426 = !DILocation(line: 493, column: 27, scope: !1600, inlinedAt: !2401)
!2427 = !DILocation(line: 492, column: 7, scope: !1578, inlinedAt: !2401)
!2428 = !DILocation(line: 824, column: 74, scope: !2403)
!2429 = distinct !{!2429, !2409, !2430, !1374, !1375}
!2430 = !DILocation(line: 826, column: 11, scope: !2404)
!2431 = !DILocation(line: 0, scope: !2432, inlinedAt: !2443)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !940, line: 440, column: 7)
!2433 = distinct !DISubprogram(name: "AssociateAlphaPixel", scope: !940, file: !940, line: 434, type: !2434, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2438)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !2436, !930, !1006}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!2438 = !{!2439, !2440, !2441, !2442}
!2439 = !DILocalVariable(name: "cube_info", arg: 1, scope: !2433, file: !940, line: 434, type: !2436)
!2440 = !DILocalVariable(name: "pixel", arg: 2, scope: !2433, file: !940, line: 435, type: !930)
!2441 = !DILocalVariable(name: "alpha_pixel", arg: 3, scope: !2433, file: !940, line: 435, type: !1006)
!2442 = !DILocalVariable(name: "alpha", scope: !2433, file: !940, line: 438, type: !935)
!2443 = distinct !DILocation(line: 827, column: 7, scope: !2405)
!2444 = !DILocation(line: 827, column: 7, scope: !2405)
!2445 = !DILocation(line: 0, scope: !2404)
!2446 = !DILocation(line: 0, scope: !2433, inlinedAt: !2443)
!2447 = !DILocation(line: 440, column: 35, scope: !2432, inlinedAt: !2443)
!2448 = !DILocation(line: 440, column: 51, scope: !2432, inlinedAt: !2443)
!2449 = !DILocation(line: 441, column: 23, scope: !2432, inlinedAt: !2443)
!2450 = !DILocation(line: 440, column: 7, scope: !2433, inlinedAt: !2443)
!2451 = !DILocation(line: 443, column: 41, scope: !2452, inlinedAt: !2443)
!2452 = distinct !DILexicalBlock(scope: !2432, file: !940, line: 442, column: 5)
!2453 = !DILocation(line: 443, column: 24, scope: !2452, inlinedAt: !2443)
!2454 = !DILocation(line: 444, column: 43, scope: !2452, inlinedAt: !2443)
!2455 = !DILocation(line: 444, column: 26, scope: !2452, inlinedAt: !2443)
!2456 = !DILocation(line: 445, column: 42, scope: !2452, inlinedAt: !2443)
!2457 = !DILocation(line: 445, column: 25, scope: !2452, inlinedAt: !2443)
!2458 = !DILocation(line: 447, column: 7, scope: !2452, inlinedAt: !2443)
!2459 = !DILocation(line: 449, column: 53, scope: !2433, inlinedAt: !2443)
!2460 = !DILocation(line: 449, column: 40, scope: !2433, inlinedAt: !2443)
!2461 = !DILocation(line: 449, column: 39, scope: !2433, inlinedAt: !2443)
!2462 = !DILocation(line: 449, column: 9, scope: !2433, inlinedAt: !2443)
!2463 = !DILocation(line: 450, column: 26, scope: !2433, inlinedAt: !2443)
!2464 = !DILocation(line: 450, column: 25, scope: !2433, inlinedAt: !2443)
!2465 = !DILocation(line: 451, column: 28, scope: !2433, inlinedAt: !2443)
!2466 = !DILocation(line: 451, column: 27, scope: !2433, inlinedAt: !2443)
!2467 = !DILocation(line: 452, column: 27, scope: !2433, inlinedAt: !2443)
!2468 = !DILocation(line: 452, column: 26, scope: !2433, inlinedAt: !2443)
!2469 = !DILocation(line: 453, column: 24, scope: !2433, inlinedAt: !2443)
!2470 = !DILocation(line: 454, column: 1, scope: !2433, inlinedAt: !2443)
!2471 = !DILocation(line: 831, column: 28, scope: !2405)
!2472 = !DILocation(line: 832, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2405, file: !940, line: 832, column: 7)
!2474 = !DILocation(line: 834, column: 15, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !940, line: 833, column: 7)
!2476 = distinct !DILexicalBlock(scope: !2473, file: !940, line: 832, column: 7)
!2477 = !DILocalVariable(name: "cube_info", arg: 1, scope: !2478, file: !940, line: 469, type: !2436)
!2478 = distinct !DISubprogram(name: "ColorToNodeId", scope: !940, file: !940, line: 469, type: !2479, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2483)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!570, !2436, !2481, !570}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!2483 = !{!2477, !2484, !2485, !2486}
!2484 = !DILocalVariable(name: "pixel", arg: 2, scope: !2478, file: !940, line: 470, type: !2481)
!2485 = !DILocalVariable(name: "index", arg: 3, scope: !2478, file: !940, line: 470, type: !570)
!2486 = !DILocalVariable(name: "id", scope: !2478, file: !940, line: 473, type: !570)
!2487 = !DILocation(line: 0, scope: !2478, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 835, column: 12, scope: !2475)
!2489 = !DILocalVariable(name: "value", arg: 1, scope: !2490, file: !940, line: 456, type: !2493)
!2490 = distinct !DISubprogram(name: "ClampPixel", scope: !940, file: !940, line: 456, type: !2491, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2494)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!624, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!2494 = !{!2489}
!2495 = !DILocation(line: 0, scope: !2490, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 475, column: 37, scope: !2478, inlinedAt: !2488)
!2497 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2496)
!2498 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2496)
!2499 = !DILocalVariable(name: "quantum", arg: 1, scope: !2500, file: !101, line: 114, type: !2503)
!2500 = distinct !DISubprogram(name: "ScaleQuantumToChar", scope: !101, file: !101, line: 114, type: !2501, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2504)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!814, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!2504 = !{!2499}
!2505 = !DILocation(line: 0, scope: !2500, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 475, column: 18, scope: !2478, inlinedAt: !2488)
!2507 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !2506)
!2508 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !2506)
!2509 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !2506)
!2510 = !DILocation(line: 475, column: 18, scope: !2478, inlinedAt: !2488)
!2511 = !DILocation(line: 475, column: 69, scope: !2478, inlinedAt: !2488)
!2512 = !DILocation(line: 475, column: 79, scope: !2478, inlinedAt: !2488)
!2513 = !DILocation(line: 0, scope: !2490, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 476, column: 34, scope: !2478, inlinedAt: !2488)
!2515 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2514)
!2516 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2514)
!2517 = !DILocation(line: 0, scope: !2500, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 476, column: 15, scope: !2478, inlinedAt: !2488)
!2519 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !2518)
!2520 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !2518)
!2521 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !2518)
!2522 = !DILocation(line: 476, column: 15, scope: !2478, inlinedAt: !2488)
!2523 = !DILocation(line: 476, column: 68, scope: !2478, inlinedAt: !2488)
!2524 = !DILocation(line: 477, column: 11, scope: !2478, inlinedAt: !2488)
!2525 = !DILocation(line: 476, column: 11, scope: !2478, inlinedAt: !2488)
!2526 = !DILocation(line: 0, scope: !2490, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 477, column: 39, scope: !2478, inlinedAt: !2488)
!2528 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2527)
!2529 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2527)
!2530 = !DILocation(line: 0, scope: !2500, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 477, column: 20, scope: !2478, inlinedAt: !2488)
!2532 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !2531)
!2533 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !2531)
!2534 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !2531)
!2535 = !DILocation(line: 477, column: 20, scope: !2478, inlinedAt: !2488)
!2536 = !DILocation(line: 477, column: 72, scope: !2478, inlinedAt: !2488)
!2537 = !DILocation(line: 478, column: 20, scope: !2478, inlinedAt: !2488)
!2538 = !DILocation(line: 477, column: 16, scope: !2478, inlinedAt: !2488)
!2539 = !DILocation(line: 479, column: 18, scope: !2540, inlinedAt: !2488)
!2540 = distinct !DILexicalBlock(scope: !2478, file: !940, line: 479, column: 7)
!2541 = !DILocation(line: 479, column: 34, scope: !2540, inlinedAt: !2488)
!2542 = !DILocation(line: 479, column: 7, scope: !2478, inlinedAt: !2488)
!2543 = !DILocation(line: 0, scope: !2490, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 480, column: 30, scope: !2540, inlinedAt: !2488)
!2545 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2544)
!2546 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2544)
!2547 = !DILocation(line: 0, scope: !2500, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 480, column: 11, scope: !2540, inlinedAt: !2488)
!2549 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !2548)
!2550 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !2548)
!2551 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !2548)
!2552 = !DILocation(line: 480, column: 11, scope: !2540, inlinedAt: !2488)
!2553 = !DILocation(line: 480, column: 66, scope: !2540, inlinedAt: !2488)
!2554 = !DILocation(line: 481, column: 12, scope: !2540, inlinedAt: !2488)
!2555 = !DILocation(line: 480, column: 7, scope: !2540, inlinedAt: !2488)
!2556 = !DILocation(line: 480, column: 5, scope: !2540, inlinedAt: !2488)
!2557 = !DILocation(line: 836, column: 22, scope: !2475)
!2558 = !DILocation(line: 836, column: 27, scope: !2475)
!2559 = !DILocation(line: 836, column: 18, scope: !2475)
!2560 = !DILocation(line: 836, column: 16, scope: !2475)
!2561 = !DILocation(line: 837, column: 24, scope: !2475)
!2562 = !DILocation(line: 837, column: 29, scope: !2475)
!2563 = !DILocation(line: 837, column: 20, scope: !2475)
!2564 = !DILocation(line: 837, column: 18, scope: !2475)
!2565 = !DILocation(line: 838, column: 23, scope: !2475)
!2566 = !DILocation(line: 838, column: 28, scope: !2475)
!2567 = !DILocation(line: 838, column: 19, scope: !2475)
!2568 = !DILocation(line: 838, column: 17, scope: !2475)
!2569 = !DILocation(line: 839, column: 26, scope: !2475)
!2570 = !DILocation(line: 839, column: 31, scope: !2475)
!2571 = !DILocation(line: 839, column: 22, scope: !2475)
!2572 = !DILocation(line: 839, column: 20, scope: !2475)
!2573 = !DILocation(line: 840, column: 13, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2475, file: !940, line: 840, column: 13)
!2575 = !{!1073, !1073, i64 0}
!2576 = !DILocation(line: 840, column: 34, scope: !2574)
!2577 = !DILocation(line: 840, column: 13, scope: !2475)
!2578 = !DILocation(line: 0, scope: !2175, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 845, column: 34, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !940, line: 841, column: 11)
!2581 = !DILocation(line: 2055, column: 18, scope: !2185, inlinedAt: !2579)
!2582 = !DILocation(line: 2055, column: 29, scope: !2185, inlinedAt: !2579)
!2583 = !DILocation(line: 2055, column: 7, scope: !2175, inlinedAt: !2579)
!2584 = !DILocation(line: 2077, column: 33, scope: !2175, inlinedAt: !2579)
!2585 = !DILocation(line: 2063, column: 23, scope: !2184, inlinedAt: !2579)
!2586 = !DILocation(line: 0, scope: !2184, inlinedAt: !2579)
!2587 = !DILocation(line: 2064, column: 17, scope: !2197, inlinedAt: !2579)
!2588 = !DILocation(line: 2064, column: 11, scope: !2184, inlinedAt: !2579)
!2589 = !DILocation(line: 2066, column: 33, scope: !2184, inlinedAt: !2579)
!2590 = !DILocation(line: 2066, column: 19, scope: !2184, inlinedAt: !2579)
!2591 = !DILocation(line: 2068, column: 24, scope: !2204, inlinedAt: !2579)
!2592 = !DILocation(line: 2068, column: 11, scope: !2184, inlinedAt: !2579)
!2593 = !DILocation(line: 2070, column: 30, scope: !2184, inlinedAt: !2579)
!2594 = !DILocation(line: 2070, column: 14, scope: !2184, inlinedAt: !2579)
!2595 = !DILocation(line: 2070, column: 18, scope: !2184, inlinedAt: !2579)
!2596 = !DILocation(line: 2071, column: 28, scope: !2184, inlinedAt: !2579)
!2597 = !DILocation(line: 845, column: 33, scope: !2580)
!2598 = !DILocation(line: 848, column: 24, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !940, line: 847, column: 15)
!2600 = distinct !DILexicalBlock(scope: !2580, file: !940, line: 846, column: 17)
!2601 = !DILocation(line: 851, column: 17, scope: !2599)
!2602 = !DILocation(line: 2075, column: 19, scope: !2175, inlinedAt: !2579)
!2603 = !DILocation(line: 2076, column: 24, scope: !2175, inlinedAt: !2579)
!2604 = !DILocation(line: 2078, column: 10, scope: !2175, inlinedAt: !2579)
!2605 = !DILocation(line: 2079, column: 20, scope: !2175, inlinedAt: !2579)
!2606 = !DILocation(line: 2080, column: 14, scope: !2175, inlinedAt: !2579)
!2607 = !DILocation(line: 2080, column: 16, scope: !2175, inlinedAt: !2579)
!2608 = !{!2225, !1052, i64 176}
!2609 = !DILocation(line: 2081, column: 14, scope: !2175, inlinedAt: !2579)
!2610 = !DILocation(line: 2081, column: 19, scope: !2175, inlinedAt: !2579)
!2611 = !{!2225, !1052, i64 184}
!2612 = !DILocation(line: 853, column: 23, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2580, file: !940, line: 853, column: 17)
!2614 = !DILocation(line: 853, column: 17, scope: !2580)
!2615 = !DILocation(line: 854, column: 32, scope: !2613)
!2616 = !{!2168, !1052, i64 8}
!2617 = !DILocation(line: 854, column: 15, scope: !2613)
!2618 = !DILocation(line: 859, column: 19, scope: !2475)
!2619 = !DILocation(line: 860, column: 42, scope: !2475)
!2620 = !DILocation(line: 860, column: 32, scope: !2475)
!2621 = !DILocation(line: 860, column: 31, scope: !2475)
!2622 = !DILocation(line: 860, column: 19, scope: !2475)
!2623 = !DILocation(line: 861, column: 46, scope: !2475)
!2624 = !DILocation(line: 861, column: 34, scope: !2475)
!2625 = !DILocation(line: 861, column: 33, scope: !2475)
!2626 = !DILocation(line: 861, column: 21, scope: !2475)
!2627 = !DILocation(line: 862, column: 44, scope: !2475)
!2628 = !DILocation(line: 862, column: 33, scope: !2475)
!2629 = !DILocation(line: 862, column: 32, scope: !2475)
!2630 = !DILocation(line: 862, column: 20, scope: !2475)
!2631 = !DILocation(line: 863, column: 24, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2475, file: !940, line: 863, column: 13)
!2633 = !DILocation(line: 863, column: 40, scope: !2632)
!2634 = !DILocation(line: 863, column: 13, scope: !2475)
!2635 = !DILocation(line: 864, column: 52, scope: !2632)
!2636 = !DILocation(line: 864, column: 38, scope: !2632)
!2637 = !DILocation(line: 864, column: 37, scope: !2632)
!2638 = !DILocation(line: 864, column: 25, scope: !2632)
!2639 = !DILocation(line: 864, column: 11, scope: !2632)
!2640 = !DILocation(line: 866, column: 22, scope: !2475)
!2641 = !DILocation(line: 865, column: 76, scope: !2475)
!2642 = !DILocation(line: 866, column: 34, scope: !2475)
!2643 = !DILocation(line: 866, column: 56, scope: !2475)
!2644 = !DILocation(line: 865, column: 47, scope: !2475)
!2645 = !DILocation(line: 865, column: 42, scope: !2475)
!2646 = !DILocation(line: 865, column: 20, scope: !2475)
!2647 = !DILocation(line: 865, column: 34, scope: !2475)
!2648 = !{!2225, !2170, i64 160}
!2649 = !DILocation(line: 868, column: 20, scope: !2475)
!2650 = !DILocation(line: 868, column: 26, scope: !2475)
!2651 = !DILocation(line: 868, column: 40, scope: !2475)
!2652 = !DILocation(line: 869, column: 14, scope: !2475)
!2653 = !DILocation(line: 870, column: 7, scope: !2475)
!2654 = !DILocation(line: 0, scope: !2405)
!2655 = !DILocation(line: 832, column: 49, scope: !2476)
!2656 = !DILocation(line: 832, column: 27, scope: !2476)
!2657 = distinct !{!2657, !2472, !2658, !1374, !1375}
!2658 = !DILocation(line: 870, column: 7, scope: !2473)
!2659 = !DILocation(line: 874, column: 18, scope: !2405)
!2660 = !DILocation(line: 874, column: 31, scope: !2405)
!2661 = !{!2225, !1217, i64 136}
!2662 = !DILocation(line: 875, column: 40, scope: !2405)
!2663 = !DILocation(line: 0, scope: !2490, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 875, column: 54, scope: !2405)
!2665 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2664)
!2666 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2664)
!2667 = !DILocation(line: 875, column: 54, scope: !2405)
!2668 = !DILocation(line: 875, column: 18, scope: !2405)
!2669 = !DILocation(line: 875, column: 33, scope: !2405)
!2670 = !{!2225, !2170, i64 144}
!2671 = !DILocation(line: 0, scope: !2490, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 876, column: 56, scope: !2405)
!2673 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2672)
!2674 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2672)
!2675 = !DILocation(line: 876, column: 56, scope: !2405)
!2676 = !DILocation(line: 876, column: 30, scope: !2405)
!2677 = !DILocation(line: 876, column: 35, scope: !2405)
!2678 = !{!2225, !2170, i64 148}
!2679 = !DILocation(line: 0, scope: !2490, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 877, column: 55, scope: !2405)
!2681 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2680)
!2682 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2680)
!2683 = !DILocation(line: 877, column: 55, scope: !2405)
!2684 = !DILocation(line: 877, column: 30, scope: !2405)
!2685 = !DILocation(line: 877, column: 34, scope: !2405)
!2686 = !{!2225, !2170, i64 152}
!2687 = !DILocation(line: 878, column: 22, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2405, file: !940, line: 878, column: 11)
!2689 = !DILocation(line: 878, column: 38, scope: !2688)
!2690 = !DILocation(line: 878, column: 11, scope: !2405)
!2691 = !DILocation(line: 0, scope: !2490, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 880, column: 11, scope: !2688)
!2693 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2692)
!2694 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2692)
!2695 = !DILocation(line: 880, column: 11, scope: !2688)
!2696 = !DILocation(line: 879, column: 32, scope: !2688)
!2697 = !DILocation(line: 879, column: 39, scope: !2688)
!2698 = !{!2225, !2170, i64 156}
!2699 = !DILocation(line: 879, column: 9, scope: !2688)
!2700 = !DILocation(line: 881, column: 8, scope: !2405)
!2701 = distinct !{!2701, !2399, !2702, !1374, !1375}
!2702 = !DILocation(line: 882, column: 5, scope: !2397)
!2703 = !DILocation(line: 798, column: 16, scope: !2309)
!2704 = !DILocation(line: 883, column: 20, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2330, file: !940, line: 883, column: 9)
!2706 = !DILocation(line: 883, column: 40, scope: !2705)
!2707 = !DILocation(line: 883, column: 27, scope: !2705)
!2708 = !DILocation(line: 883, column: 9, scope: !2330)
!2709 = !DILocation(line: 885, column: 53, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !940, line: 884, column: 7)
!2711 = !DILocation(line: 885, column: 9, scope: !2710)
!2712 = !DILocation(line: 886, column: 9, scope: !2710)
!2713 = !DILocation(line: 889, column: 14, scope: !2330)
!2714 = !DILocation(line: 0, scope: !1387, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 888, column: 13, scope: !2330)
!2716 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !2715)
!2717 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !2715)
!2718 = !DILocation(line: 33, column: 14, scope: !1401, inlinedAt: !2715)
!2719 = !DILocation(line: 33, column: 31, scope: !1401, inlinedAt: !2715)
!2720 = !DILocation(line: 33, column: 7, scope: !1387, inlinedAt: !2715)
!2721 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !2715)
!2722 = !DILocation(line: 0, scope: !2331)
!2723 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !2715)
!2724 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !2715)
!2725 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !2715)
!2726 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !2715)
!2727 = !DILocation(line: 890, column: 17, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2330, file: !940, line: 890, column: 9)
!2729 = !DILocation(line: 800, column: 41, scope: !2331)
!2730 = distinct !{!2730, !2379, !2731, !1374, !1375}
!2731 = !DILocation(line: 892, column: 3, scope: !2332)
!2732 = !DILocation(line: 901, column: 55, scope: !2335)
!2733 = !DILocation(line: 35, column: 70, scope: !1387, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 976, column: 13, scope: !2335)
!2735 = !DILocation(line: 0, scope: !2337)
!2736 = !DILocation(line: 893, column: 34, scope: !2336)
!2737 = !DILocation(line: 893, column: 15, scope: !2336)
!2738 = !DILocation(line: 893, column: 3, scope: !2337)
!2739 = !DILocation(line: 901, column: 7, scope: !2335)
!2740 = !DILocation(line: 0, scope: !2335)
!2741 = !DILocation(line: 902, column: 11, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2335, file: !940, line: 902, column: 9)
!2743 = !DILocation(line: 902, column: 9, scope: !2335)
!2744 = !DILocation(line: 904, column: 20, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2335, file: !940, line: 904, column: 9)
!2746 = !DILocation(line: 904, column: 26, scope: !2745)
!2747 = !DILocation(line: 904, column: 9, scope: !2335)
!2748 = !DILocation(line: 909, column: 47, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !940, line: 905, column: 7)
!2750 = !DILocation(line: 909, column: 9, scope: !2749)
!2751 = !DILocation(line: 910, column: 25, scope: !2749)
!2752 = !DILocation(line: 911, column: 7, scope: !2749)
!2753 = !DILocation(line: 912, column: 36, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !940, line: 912, column: 5)
!2755 = distinct !DILexicalBlock(scope: !2335, file: !940, line: 912, column: 5)
!2756 = !DILocation(line: 912, column: 17, scope: !2754)
!2757 = !DILocation(line: 912, column: 5, scope: !2755)
!2758 = !DILocation(line: 489, column: 8, scope: !1587, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 918, column: 13, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !940, line: 918, column: 13)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !940, line: 917, column: 7)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !940, line: 917, column: 7)
!2763 = distinct !DILexicalBlock(scope: !2754, file: !940, line: 913, column: 5)
!2764 = !DILocation(line: 493, column: 8, scope: !1600, inlinedAt: !2759)
!2765 = !DILocation(line: 917, column: 23, scope: !2761)
!2766 = !DILocation(line: 917, column: 41, scope: !2761)
!2767 = !DILocation(line: 917, column: 7, scope: !2762)
!2768 = !DILocation(line: 918, column: 34, scope: !2760)
!2769 = !DILocation(line: 0, scope: !1578, inlinedAt: !2759)
!2770 = !DILocation(line: 488, column: 26, scope: !1587, inlinedAt: !2759)
!2771 = !DILocation(line: 488, column: 23, scope: !1587, inlinedAt: !2759)
!2772 = !DILocation(line: 488, column: 42, scope: !1587, inlinedAt: !2759)
!2773 = !DILocation(line: 489, column: 28, scope: !1587, inlinedAt: !2759)
!2774 = !DILocation(line: 489, column: 25, scope: !1587, inlinedAt: !2759)
!2775 = !DILocation(line: 489, column: 46, scope: !1587, inlinedAt: !2759)
!2776 = !DILocation(line: 490, column: 8, scope: !1587, inlinedAt: !2759)
!2777 = !DILocation(line: 490, column: 27, scope: !1587, inlinedAt: !2759)
!2778 = !DILocation(line: 490, column: 24, scope: !1587, inlinedAt: !2759)
!2779 = !DILocation(line: 488, column: 7, scope: !1578, inlinedAt: !2759)
!2780 = !DILocation(line: 492, column: 15, scope: !1600, inlinedAt: !2759)
!2781 = !DILocation(line: 492, column: 21, scope: !1600, inlinedAt: !2759)
!2782 = !DILocation(line: 492, column: 37, scope: !1600, inlinedAt: !2759)
!2783 = !DILocation(line: 493, column: 30, scope: !1600, inlinedAt: !2759)
!2784 = !DILocation(line: 493, column: 27, scope: !1600, inlinedAt: !2759)
!2785 = !DILocation(line: 492, column: 7, scope: !1578, inlinedAt: !2759)
!2786 = !DILocation(line: 917, column: 74, scope: !2761)
!2787 = distinct !{!2787, !2767, !2788, !1374, !1375}
!2788 = !DILocation(line: 919, column: 11, scope: !2762)
!2789 = !DILocation(line: 0, scope: !2432, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 920, column: 7, scope: !2763)
!2791 = !DILocation(line: 920, column: 7, scope: !2763)
!2792 = !DILocation(line: 0, scope: !2762)
!2793 = !DILocation(line: 0, scope: !2433, inlinedAt: !2790)
!2794 = !DILocation(line: 440, column: 35, scope: !2432, inlinedAt: !2790)
!2795 = !DILocation(line: 440, column: 51, scope: !2432, inlinedAt: !2790)
!2796 = !DILocation(line: 441, column: 23, scope: !2432, inlinedAt: !2790)
!2797 = !DILocation(line: 440, column: 7, scope: !2433, inlinedAt: !2790)
!2798 = !DILocation(line: 443, column: 41, scope: !2452, inlinedAt: !2790)
!2799 = !DILocation(line: 443, column: 24, scope: !2452, inlinedAt: !2790)
!2800 = !DILocation(line: 444, column: 43, scope: !2452, inlinedAt: !2790)
!2801 = !DILocation(line: 444, column: 26, scope: !2452, inlinedAt: !2790)
!2802 = !DILocation(line: 445, column: 42, scope: !2452, inlinedAt: !2790)
!2803 = !DILocation(line: 445, column: 25, scope: !2452, inlinedAt: !2790)
!2804 = !DILocation(line: 447, column: 7, scope: !2452, inlinedAt: !2790)
!2805 = !DILocation(line: 449, column: 53, scope: !2433, inlinedAt: !2790)
!2806 = !DILocation(line: 449, column: 40, scope: !2433, inlinedAt: !2790)
!2807 = !DILocation(line: 449, column: 39, scope: !2433, inlinedAt: !2790)
!2808 = !DILocation(line: 449, column: 9, scope: !2433, inlinedAt: !2790)
!2809 = !DILocation(line: 450, column: 26, scope: !2433, inlinedAt: !2790)
!2810 = !DILocation(line: 450, column: 25, scope: !2433, inlinedAt: !2790)
!2811 = !DILocation(line: 451, column: 28, scope: !2433, inlinedAt: !2790)
!2812 = !DILocation(line: 451, column: 27, scope: !2433, inlinedAt: !2790)
!2813 = !DILocation(line: 452, column: 27, scope: !2433, inlinedAt: !2790)
!2814 = !DILocation(line: 452, column: 26, scope: !2433, inlinedAt: !2790)
!2815 = !DILocation(line: 453, column: 24, scope: !2433, inlinedAt: !2790)
!2816 = !DILocation(line: 454, column: 1, scope: !2433, inlinedAt: !2790)
!2817 = !DILocation(line: 924, column: 28, scope: !2763)
!2818 = !DILocation(line: 925, column: 41, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !940, line: 925, column: 7)
!2820 = distinct !DILexicalBlock(scope: !2763, file: !940, line: 925, column: 7)
!2821 = !DILocation(line: 925, column: 27, scope: !2819)
!2822 = !DILocation(line: 925, column: 7, scope: !2820)
!2823 = !DILocation(line: 968, column: 35, scope: !2763)
!2824 = !DILocation(line: 927, column: 15, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2819, file: !940, line: 926, column: 7)
!2826 = !DILocation(line: 0, scope: !2478, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 928, column: 12, scope: !2825)
!2828 = !DILocation(line: 0, scope: !2490, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 475, column: 37, scope: !2478, inlinedAt: !2827)
!2830 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2829)
!2831 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2829)
!2832 = !DILocation(line: 0, scope: !2500, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 475, column: 18, scope: !2478, inlinedAt: !2827)
!2834 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !2833)
!2835 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !2833)
!2836 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !2833)
!2837 = !DILocation(line: 475, column: 18, scope: !2478, inlinedAt: !2827)
!2838 = !DILocation(line: 475, column: 69, scope: !2478, inlinedAt: !2827)
!2839 = !DILocation(line: 475, column: 79, scope: !2478, inlinedAt: !2827)
!2840 = !DILocation(line: 0, scope: !2490, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 476, column: 34, scope: !2478, inlinedAt: !2827)
!2842 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2841)
!2843 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2841)
!2844 = !DILocation(line: 0, scope: !2500, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 476, column: 15, scope: !2478, inlinedAt: !2827)
!2846 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !2845)
!2847 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !2845)
!2848 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !2845)
!2849 = !DILocation(line: 476, column: 15, scope: !2478, inlinedAt: !2827)
!2850 = !DILocation(line: 476, column: 68, scope: !2478, inlinedAt: !2827)
!2851 = !DILocation(line: 477, column: 11, scope: !2478, inlinedAt: !2827)
!2852 = !DILocation(line: 476, column: 11, scope: !2478, inlinedAt: !2827)
!2853 = !DILocation(line: 0, scope: !2490, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 477, column: 39, scope: !2478, inlinedAt: !2827)
!2855 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2854)
!2856 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2854)
!2857 = !DILocation(line: 0, scope: !2500, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 477, column: 20, scope: !2478, inlinedAt: !2827)
!2859 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !2858)
!2860 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !2858)
!2861 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !2858)
!2862 = !DILocation(line: 477, column: 20, scope: !2478, inlinedAt: !2827)
!2863 = !DILocation(line: 477, column: 72, scope: !2478, inlinedAt: !2827)
!2864 = !DILocation(line: 478, column: 20, scope: !2478, inlinedAt: !2827)
!2865 = !DILocation(line: 477, column: 16, scope: !2478, inlinedAt: !2827)
!2866 = !DILocation(line: 479, column: 18, scope: !2540, inlinedAt: !2827)
!2867 = !DILocation(line: 479, column: 34, scope: !2540, inlinedAt: !2827)
!2868 = !DILocation(line: 479, column: 7, scope: !2478, inlinedAt: !2827)
!2869 = !DILocation(line: 0, scope: !2490, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 480, column: 30, scope: !2540, inlinedAt: !2827)
!2871 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2870)
!2872 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2870)
!2873 = !DILocation(line: 0, scope: !2500, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 480, column: 11, scope: !2540, inlinedAt: !2827)
!2875 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !2874)
!2876 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !2874)
!2877 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !2874)
!2878 = !DILocation(line: 480, column: 11, scope: !2540, inlinedAt: !2827)
!2879 = !DILocation(line: 480, column: 66, scope: !2540, inlinedAt: !2827)
!2880 = !DILocation(line: 481, column: 12, scope: !2540, inlinedAt: !2827)
!2881 = !DILocation(line: 480, column: 7, scope: !2540, inlinedAt: !2827)
!2882 = !DILocation(line: 480, column: 5, scope: !2540, inlinedAt: !2827)
!2883 = !DILocation(line: 929, column: 22, scope: !2825)
!2884 = !DILocation(line: 929, column: 27, scope: !2825)
!2885 = !DILocation(line: 929, column: 18, scope: !2825)
!2886 = !DILocation(line: 929, column: 16, scope: !2825)
!2887 = !DILocation(line: 930, column: 24, scope: !2825)
!2888 = !DILocation(line: 930, column: 29, scope: !2825)
!2889 = !DILocation(line: 930, column: 20, scope: !2825)
!2890 = !DILocation(line: 930, column: 18, scope: !2825)
!2891 = !DILocation(line: 931, column: 23, scope: !2825)
!2892 = !DILocation(line: 931, column: 28, scope: !2825)
!2893 = !DILocation(line: 931, column: 19, scope: !2825)
!2894 = !DILocation(line: 931, column: 17, scope: !2825)
!2895 = !DILocation(line: 932, column: 26, scope: !2825)
!2896 = !DILocation(line: 932, column: 31, scope: !2825)
!2897 = !DILocation(line: 932, column: 22, scope: !2825)
!2898 = !DILocation(line: 932, column: 20, scope: !2825)
!2899 = !DILocation(line: 933, column: 13, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2825, file: !940, line: 933, column: 13)
!2901 = !DILocation(line: 933, column: 34, scope: !2900)
!2902 = !DILocation(line: 933, column: 13, scope: !2825)
!2903 = !DILocation(line: 0, scope: !2175, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 938, column: 34, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2900, file: !940, line: 934, column: 11)
!2906 = !DILocation(line: 2055, column: 18, scope: !2185, inlinedAt: !2904)
!2907 = !DILocation(line: 2055, column: 29, scope: !2185, inlinedAt: !2904)
!2908 = !DILocation(line: 2055, column: 7, scope: !2175, inlinedAt: !2904)
!2909 = !DILocation(line: 2077, column: 33, scope: !2175, inlinedAt: !2904)
!2910 = !DILocation(line: 2063, column: 23, scope: !2184, inlinedAt: !2904)
!2911 = !DILocation(line: 0, scope: !2184, inlinedAt: !2904)
!2912 = !DILocation(line: 2064, column: 17, scope: !2197, inlinedAt: !2904)
!2913 = !DILocation(line: 2064, column: 11, scope: !2184, inlinedAt: !2904)
!2914 = !DILocation(line: 2066, column: 33, scope: !2184, inlinedAt: !2904)
!2915 = !DILocation(line: 2066, column: 19, scope: !2184, inlinedAt: !2904)
!2916 = !DILocation(line: 2068, column: 24, scope: !2204, inlinedAt: !2904)
!2917 = !DILocation(line: 2068, column: 11, scope: !2184, inlinedAt: !2904)
!2918 = !DILocation(line: 2070, column: 30, scope: !2184, inlinedAt: !2904)
!2919 = !DILocation(line: 2070, column: 14, scope: !2184, inlinedAt: !2904)
!2920 = !DILocation(line: 2070, column: 18, scope: !2184, inlinedAt: !2904)
!2921 = !DILocation(line: 2071, column: 28, scope: !2184, inlinedAt: !2904)
!2922 = !DILocation(line: 938, column: 33, scope: !2905)
!2923 = !DILocation(line: 941, column: 24, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !940, line: 940, column: 15)
!2925 = distinct !DILexicalBlock(scope: !2905, file: !940, line: 939, column: 17)
!2926 = !DILocation(line: 944, column: 19, scope: !2924)
!2927 = !DILocation(line: 2075, column: 19, scope: !2175, inlinedAt: !2904)
!2928 = !DILocation(line: 2076, column: 24, scope: !2175, inlinedAt: !2904)
!2929 = !DILocation(line: 2078, column: 10, scope: !2175, inlinedAt: !2904)
!2930 = !DILocation(line: 2079, column: 20, scope: !2175, inlinedAt: !2904)
!2931 = !DILocation(line: 2080, column: 14, scope: !2175, inlinedAt: !2904)
!2932 = !DILocation(line: 2080, column: 16, scope: !2175, inlinedAt: !2904)
!2933 = !DILocation(line: 2081, column: 14, scope: !2175, inlinedAt: !2904)
!2934 = !DILocation(line: 2081, column: 19, scope: !2175, inlinedAt: !2904)
!2935 = !DILocation(line: 946, column: 37, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2905, file: !940, line: 946, column: 17)
!2937 = !DILocation(line: 946, column: 23, scope: !2936)
!2938 = !DILocation(line: 946, column: 17, scope: !2905)
!2939 = !DILocation(line: 947, column: 32, scope: !2936)
!2940 = !DILocation(line: 947, column: 15, scope: !2936)
!2941 = !DILocation(line: 952, column: 19, scope: !2825)
!2942 = !DILocation(line: 953, column: 42, scope: !2825)
!2943 = !DILocation(line: 953, column: 32, scope: !2825)
!2944 = !DILocation(line: 953, column: 31, scope: !2825)
!2945 = !DILocation(line: 953, column: 19, scope: !2825)
!2946 = !DILocation(line: 954, column: 46, scope: !2825)
!2947 = !DILocation(line: 954, column: 34, scope: !2825)
!2948 = !DILocation(line: 954, column: 33, scope: !2825)
!2949 = !DILocation(line: 954, column: 21, scope: !2825)
!2950 = !DILocation(line: 955, column: 44, scope: !2825)
!2951 = !DILocation(line: 955, column: 33, scope: !2825)
!2952 = !DILocation(line: 955, column: 32, scope: !2825)
!2953 = !DILocation(line: 955, column: 20, scope: !2825)
!2954 = !DILocation(line: 956, column: 24, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2825, file: !940, line: 956, column: 13)
!2956 = !DILocation(line: 956, column: 40, scope: !2955)
!2957 = !DILocation(line: 956, column: 13, scope: !2825)
!2958 = !DILocation(line: 957, column: 52, scope: !2955)
!2959 = !DILocation(line: 957, column: 38, scope: !2955)
!2960 = !DILocation(line: 957, column: 37, scope: !2955)
!2961 = !DILocation(line: 957, column: 25, scope: !2955)
!2962 = !DILocation(line: 957, column: 11, scope: !2955)
!2963 = !DILocation(line: 959, column: 22, scope: !2825)
!2964 = !DILocation(line: 958, column: 76, scope: !2825)
!2965 = !DILocation(line: 959, column: 34, scope: !2825)
!2966 = !DILocation(line: 959, column: 56, scope: !2825)
!2967 = !DILocation(line: 958, column: 47, scope: !2825)
!2968 = !DILocation(line: 958, column: 42, scope: !2825)
!2969 = !DILocation(line: 958, column: 20, scope: !2825)
!2970 = !DILocation(line: 958, column: 34, scope: !2825)
!2971 = !DILocation(line: 961, column: 20, scope: !2825)
!2972 = !DILocation(line: 961, column: 26, scope: !2825)
!2973 = !DILocation(line: 961, column: 40, scope: !2825)
!2974 = !DILocation(line: 962, column: 14, scope: !2825)
!2975 = !DILocation(line: 963, column: 7, scope: !2825)
!2976 = !DILocation(line: 0, scope: !2763)
!2977 = !DILocation(line: 925, column: 53, scope: !2819)
!2978 = distinct !{!2978, !2822, !2979, !1374, !1375}
!2979 = !DILocation(line: 963, column: 7, scope: !2820)
!2980 = !DILocation(line: 924, column: 16, scope: !2763)
!2981 = !DILocation(line: 967, column: 18, scope: !2763)
!2982 = !DILocation(line: 967, column: 31, scope: !2763)
!2983 = !DILocation(line: 968, column: 40, scope: !2763)
!2984 = !DILocation(line: 0, scope: !2490, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 968, column: 54, scope: !2763)
!2986 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !2985)
!2987 = distinct !DILexicalBlock(scope: !2490, file: !940, line: 460, column: 7)
!2988 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2985)
!2989 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !2985)
!2990 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !2985)
!2991 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2985)
!2992 = !DILocation(line: 968, column: 54, scope: !2763)
!2993 = !DILocation(line: 968, column: 18, scope: !2763)
!2994 = !DILocation(line: 968, column: 33, scope: !2763)
!2995 = !DILocation(line: 0, scope: !2490, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 969, column: 56, scope: !2763)
!2997 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !2996)
!2998 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !2996)
!2999 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !2996)
!3000 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !2996)
!3001 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !2996)
!3002 = !DILocation(line: 969, column: 56, scope: !2763)
!3003 = !DILocation(line: 969, column: 30, scope: !2763)
!3004 = !DILocation(line: 969, column: 35, scope: !2763)
!3005 = !DILocation(line: 0, scope: !2490, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 970, column: 55, scope: !2763)
!3007 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3006)
!3008 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3006)
!3009 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3006)
!3010 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3006)
!3011 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3006)
!3012 = !DILocation(line: 970, column: 55, scope: !2763)
!3013 = !DILocation(line: 970, column: 30, scope: !2763)
!3014 = !DILocation(line: 970, column: 34, scope: !2763)
!3015 = !DILocation(line: 971, column: 22, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2763, file: !940, line: 971, column: 11)
!3017 = !DILocation(line: 971, column: 38, scope: !3016)
!3018 = !DILocation(line: 971, column: 11, scope: !2763)
!3019 = !DILocation(line: 0, scope: !2490, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 972, column: 60, scope: !3016)
!3021 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3020)
!3022 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3020)
!3023 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3020)
!3024 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3020)
!3025 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3020)
!3026 = !DILocation(line: 972, column: 60, scope: !3016)
!3027 = !DILocation(line: 972, column: 32, scope: !3016)
!3028 = !DILocation(line: 972, column: 39, scope: !3016)
!3029 = !DILocation(line: 972, column: 9, scope: !3016)
!3030 = !DILocation(line: 974, column: 8, scope: !2763)
!3031 = distinct !{!3031, !2757, !3032, !1374, !1375}
!3032 = !DILocation(line: 975, column: 5, scope: !2755)
!3033 = !DILocation(line: 977, column: 14, scope: !2335)
!3034 = !DILocation(line: 0, scope: !1387, inlinedAt: !2734)
!3035 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !2734)
!3036 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !2734)
!3037 = !DILocation(line: 33, column: 14, scope: !1401, inlinedAt: !2734)
!3038 = !DILocation(line: 33, column: 31, scope: !1401, inlinedAt: !2734)
!3039 = !DILocation(line: 33, column: 7, scope: !1387, inlinedAt: !2734)
!3040 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !2734)
!3041 = !DILocation(line: 0, scope: !2336)
!3042 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !2734)
!3043 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !2734)
!3044 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !2734)
!3045 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !2734)
!3046 = !DILocation(line: 978, column: 17, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2335, file: !940, line: 978, column: 9)
!3048 = !DILocation(line: 981, column: 14, scope: !2309)
!3049 = !DILocation(line: 982, column: 19, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !2309, file: !940, line: 982, column: 7)
!3051 = !DILocation(line: 982, column: 34, scope: !3050)
!3052 = !DILocation(line: 982, column: 69, scope: !3050)
!3053 = !DILocation(line: 984, column: 12, scope: !3050)
!3054 = !DILocation(line: 984, column: 5, scope: !3050)
!3055 = !DILocation(line: 985, column: 31, scope: !2309)
!3056 = !DILocation(line: 985, column: 12, scope: !2309)
!3057 = !DILocation(line: 985, column: 10, scope: !2309)
!3058 = !DILocation(line: 985, column: 3, scope: !2309)
!3059 = distinct !DISubprogram(name: "ReduceImageColors", scope: !940, file: !940, line: 3074, type: !2343, scopeLine: 3075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066}
!3061 = !DILocalVariable(name: "image", arg: 1, scope: !3059, file: !940, line: 3074, type: !854)
!3062 = !DILocalVariable(name: "cube_info", arg: 2, scope: !3059, file: !940, line: 3074, type: !938)
!3063 = !DILocalVariable(name: "proceed", scope: !3059, file: !940, line: 3079, type: !575)
!3064 = !DILocalVariable(name: "offset", scope: !3059, file: !940, line: 3082, type: !761)
!3065 = !DILocalVariable(name: "span", scope: !3059, file: !940, line: 3085, type: !570)
!3066 = !DILocalVariable(name: "quantize_error", scope: !3067, file: !940, line: 3092, type: !1007)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !940, line: 3090, column: 5)
!3068 = distinct !DILexicalBlock(scope: !3059, file: !940, line: 3088, column: 7)
!3069 = !DILocation(line: 0, scope: !3059)
!3070 = !DILocation(line: 3087, column: 14, scope: !3059)
!3071 = !DILocation(line: 3087, column: 28, scope: !3059)
!3072 = !{!2168, !2170, i64 64}
!3073 = !DILocation(line: 3088, column: 19, scope: !3068)
!3074 = !DILocation(line: 3088, column: 39, scope: !3068)
!3075 = !DILocation(line: 3088, column: 26, scope: !3068)
!3076 = !DILocation(line: 3088, column: 55, scope: !3068)
!3077 = !DILocation(line: 3089, column: 19, scope: !3068)
!3078 = !DILocation(line: 3089, column: 25, scope: !3068)
!3079 = !DILocation(line: 3088, column: 7, scope: !3059)
!3080 = !DILocation(line: 3097, column: 41, scope: !3067)
!3081 = !DILocation(line: 0, scope: !3067)
!3082 = !DILocation(line: 3099, column: 26, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3067, file: !940, line: 3099, column: 11)
!3084 = !DILocation(line: 3099, column: 11, scope: !3067)
!3085 = !DILocation(line: 3101, column: 66, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !940, line: 3100, column: 9)
!3087 = !DILocation(line: 3101, column: 18, scope: !3086)
!3088 = !DILocation(line: 3103, column: 43, scope: !3086)
!3089 = !DILocation(line: 3103, column: 11, scope: !3086)
!3090 = !DILocation(line: 3105, column: 73, scope: !3086)
!3091 = !DILocation(line: 3106, column: 29, scope: !3086)
!3092 = !DILocation(line: 3106, column: 16, scope: !3086)
!3093 = !DILocation(line: 3106, column: 46, scope: !3086)
!3094 = !DILocation(line: 3105, column: 78, scope: !3086)
!3095 = !DILocalVariable(name: "x", arg: 1, scope: !3096, file: !940, line: 1858, type: !1886)
!3096 = distinct !DISubprogram(name: "MagickMax", scope: !940, file: !940, line: 1858, type: !2118, scopeLine: 1859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3097)
!3097 = !{!3095, !3098}
!3098 = !DILocalVariable(name: "y", arg: 2, scope: !3096, file: !940, line: 1858, type: !1886)
!3099 = !DILocation(line: 0, scope: !3096, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 3105, column: 52, scope: !3086)
!3101 = !DILocation(line: 3105, column: 37, scope: !3086)
!3102 = !DILocation(line: 3105, column: 36, scope: !3086)
!3103 = !DILocation(line: 3107, column: 45, scope: !3086)
!3104 = !DILocation(line: 3109, column: 9, scope: !3086)
!3105 = !DILocation(line: 3111, column: 24, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3059, file: !940, line: 3111, column: 3)
!3107 = !DILocation(line: 3111, column: 63, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3106, file: !940, line: 3111, column: 3)
!3109 = !DILocation(line: 3111, column: 50, scope: !3108)
!3110 = !DILocation(line: 3111, column: 3, scope: !3106)
!3111 = !DILocation(line: 3113, column: 45, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3108, file: !940, line: 3112, column: 3)
!3113 = !DILocation(line: 3113, column: 33, scope: !3112)
!3114 = !{!2168, !2170, i64 60}
!3115 = !DILocation(line: 3114, column: 42, scope: !3112)
!3116 = !DILocation(line: 3114, column: 48, scope: !3112)
!3117 = !DILocation(line: 3114, column: 62, scope: !3112)
!3118 = !DILocation(line: 3114, column: 30, scope: !3112)
!3119 = !DILocation(line: 3115, column: 22, scope: !3112)
!3120 = !DILocation(line: 3116, column: 5, scope: !3112)
!3121 = !DILocation(line: 3117, column: 47, scope: !3112)
!3122 = !DILocation(line: 3119, column: 18, scope: !3112)
!3123 = !DILocation(line: 0, scope: !1387, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 3118, column: 13, scope: !3112)
!3125 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !3124)
!3126 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !3124)
!3127 = !DILocation(line: 33, column: 14, scope: !1401, inlinedAt: !3124)
!3128 = !DILocation(line: 33, column: 31, scope: !1401, inlinedAt: !3124)
!3129 = !DILocation(line: 33, column: 7, scope: !1387, inlinedAt: !3124)
!3130 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !3124)
!3131 = !DILocation(line: 3120, column: 9, scope: !3112)
!3132 = !DILocation(line: 3119, column: 32, scope: !3112)
!3133 = !DILocation(line: 3117, column: 35, scope: !3112)
!3134 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !3124)
!3135 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !3124)
!3136 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !3124)
!3137 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !3124)
!3138 = !DILocation(line: 3120, column: 17, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3112, file: !940, line: 3120, column: 9)
!3140 = distinct !{!3140, !3110, !3141, !1374, !1375}
!3141 = !DILocation(line: 3122, column: 3, scope: !3106)
!3142 = !DILocation(line: 3111, column: 43, scope: !3108)
!3143 = !DILocation(line: 3123, column: 1, scope: !3059)
!3144 = distinct !DISubprogram(name: "AssignImageColors", scope: !940, file: !940, line: 498, type: !3145, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!575, !652, !938}
!3147 = !{!3148, !3149, !3150, !3151, !3154, !3155, !3156, !3160, !3161, !3162, !3163, !3164, !3168, !3171, !3172, !3173, !3174, !3177, !3180, !3181}
!3148 = !DILocalVariable(name: "image", arg: 1, scope: !3144, file: !940, line: 498, type: !652)
!3149 = !DILocalVariable(name: "cube_info", arg: 2, scope: !3144, file: !940, line: 498, type: !938)
!3150 = !DILocalVariable(name: "y", scope: !3144, file: !940, line: 503, type: !640)
!3151 = !DILocalVariable(name: "image_view", scope: !3152, file: !940, line: 531, type: !1306)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !940, line: 529, column: 5)
!3153 = distinct !DILexicalBlock(scope: !3144, file: !940, line: 525, column: 7)
!3154 = !DILocalVariable(name: "exception", scope: !3152, file: !940, line: 534, type: !1099)
!3155 = !DILocalVariable(name: "status", scope: !3152, file: !940, line: 537, type: !575)
!3156 = !DILocalVariable(name: "cube", scope: !3157, file: !940, line: 549, type: !939)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !940, line: 547, column: 7)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !940, line: 546, column: 7)
!3159 = distinct !DILexicalBlock(scope: !3152, file: !940, line: 546, column: 7)
!3160 = !DILocalVariable(name: "indexes", scope: !3157, file: !940, line: 552, type: !1318)
!3161 = !DILocalVariable(name: "q", scope: !3157, file: !940, line: 555, type: !1320)
!3162 = !DILocalVariable(name: "x", scope: !3157, file: !940, line: 558, type: !640)
!3163 = !DILocalVariable(name: "count", scope: !3157, file: !940, line: 561, type: !640)
!3164 = !DILocalVariable(name: "pixel", scope: !3165, file: !940, line: 577, type: !956)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !940, line: 575, column: 9)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !940, line: 574, column: 9)
!3167 = distinct !DILexicalBlock(scope: !3157, file: !940, line: 574, column: 9)
!3168 = !DILocalVariable(name: "node_info", scope: !3165, file: !940, line: 580, type: !3169)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!3171 = !DILocalVariable(name: "i", scope: !3165, file: !940, line: 583, type: !640)
!3172 = !DILocalVariable(name: "id", scope: !3165, file: !940, line: 586, type: !570)
!3173 = !DILocalVariable(name: "index", scope: !3165, file: !940, line: 587, type: !570)
!3174 = !DILocalVariable(name: "proceed", scope: !3175, file: !940, line: 630, type: !575)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !940, line: 628, column: 11)
!3176 = distinct !DILexicalBlock(scope: !3157, file: !940, line: 627, column: 13)
!3177 = !DILocalVariable(name: "intensity", scope: !3178, file: !940, line: 649, type: !624)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !940, line: 647, column: 5)
!3179 = distinct !DILexicalBlock(scope: !3144, file: !940, line: 645, column: 7)
!3180 = !DILocalVariable(name: "q", scope: !3178, file: !940, line: 652, type: !1320)
!3181 = !DILocalVariable(name: "i", scope: !3178, file: !940, line: 655, type: !640)
!3182 = !DILocation(line: 0, scope: !3144)
!3183 = !DILocation(line: 508, column: 19, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3144, file: !940, line: 508, column: 7)
!3185 = !DILocation(line: 508, column: 34, scope: !3184)
!3186 = !DILocation(line: 508, column: 69, scope: !3184)
!3187 = !DILocation(line: 510, column: 12, scope: !3184)
!3188 = !DILocation(line: 510, column: 5, scope: !3184)
!3189 = !DILocation(line: 513, column: 43, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3184, file: !940, line: 513, column: 9)
!3191 = !DILocation(line: 0, scope: !2365, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 513, column: 9, scope: !3190)
!3193 = !DILocation(line: 112, column: 38, scope: !2374, inlinedAt: !3192)
!3194 = !DILocation(line: 514, column: 14, scope: !3190)
!3195 = !DILocation(line: 514, column: 7, scope: !3190)
!3196 = !DILocation(line: 515, column: 45, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3144, file: !940, line: 515, column: 7)
!3198 = !DILocation(line: 515, column: 7, scope: !3197)
!3199 = !DILocation(line: 515, column: 53, scope: !3197)
!3200 = !DILocation(line: 515, column: 7, scope: !3144)
!3201 = !DILocation(line: 516, column: 5, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !940, line: 516, column: 5)
!3203 = distinct !DILexicalBlock(scope: !3197, file: !940, line: 516, column: 5)
!3204 = !DILocation(line: 516, column: 5, scope: !3203)
!3205 = !DILocation(line: 518, column: 10, scope: !3144)
!3206 = !DILocation(line: 518, column: 16, scope: !3144)
!3207 = !DILocation(line: 519, column: 14, scope: !3144)
!3208 = !DILocation(line: 519, column: 32, scope: !3144)
!3209 = !{!2168, !1217, i64 32}
!3210 = !DILocation(line: 520, column: 14, scope: !3144)
!3211 = !DILocation(line: 520, column: 31, scope: !3144)
!3212 = !{!2168, !1052, i64 24}
!3213 = !DILocation(line: 521, column: 57, scope: !3144)
!3214 = !DILocation(line: 521, column: 10, scope: !3144)
!3215 = !DILocation(line: 525, column: 19, scope: !3153)
!3216 = !DILocation(line: 525, column: 34, scope: !3153)
!3217 = !DILocation(line: 525, column: 41, scope: !3153)
!3218 = !DILocation(line: 525, column: 57, scope: !3153)
!3219 = !DILocation(line: 526, column: 34, scope: !3153)
!3220 = !DILocation(line: 525, column: 7, scope: !3144)
!3221 = !DILocalVariable(name: "image", arg: 1, scope: !3222, file: !940, line: 1453, type: !652)
!3222 = distinct !DISubprogram(name: "FloydSteinbergDither", scope: !940, file: !940, line: 1453, type: !3145, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3223)
!3223 = !{!3221, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3246, !3247, !3248, !3249, !3252, !3253}
!3224 = !DILocalVariable(name: "cube_info", arg: 2, scope: !3222, file: !940, line: 1453, type: !938)
!3225 = !DILocalVariable(name: "image_view", scope: !3222, file: !940, line: 1458, type: !1306)
!3226 = !DILocalVariable(name: "exception", scope: !3222, file: !940, line: 1461, type: !1099)
!3227 = !DILocalVariable(name: "status", scope: !3222, file: !940, line: 1464, type: !575)
!3228 = !DILocalVariable(name: "pixels", scope: !3222, file: !940, line: 1467, type: !1005)
!3229 = !DILocalVariable(name: "y", scope: !3222, file: !940, line: 1470, type: !640)
!3230 = !DILocalVariable(name: "id", scope: !3231, file: !940, line: 1484, type: !1103)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !940, line: 1482, column: 3)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !940, line: 1481, column: 3)
!3233 = distinct !DILexicalBlock(scope: !3222, file: !940, line: 1481, column: 3)
!3234 = !DILocalVariable(name: "cube", scope: !3231, file: !940, line: 1487, type: !939)
!3235 = !DILocalVariable(name: "current", scope: !3231, file: !940, line: 1490, type: !1006)
!3236 = !DILocalVariable(name: "previous", scope: !3231, file: !940, line: 1491, type: !1006)
!3237 = !DILocalVariable(name: "indexes", scope: !3231, file: !940, line: 1494, type: !1318)
!3238 = !DILocalVariable(name: "q", scope: !3231, file: !940, line: 1497, type: !1320)
!3239 = !DILocalVariable(name: "x", scope: !3231, file: !940, line: 1500, type: !640)
!3240 = !DILocalVariable(name: "index", scope: !3231, file: !940, line: 1503, type: !570)
!3241 = !DILocalVariable(name: "v", scope: !3231, file: !940, line: 1506, type: !640)
!3242 = !DILocalVariable(name: "color", scope: !3243, file: !940, line: 1524, type: !956)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !940, line: 1522, column: 5)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !940, line: 1521, column: 5)
!3245 = distinct !DILexicalBlock(scope: !3231, file: !940, line: 1521, column: 5)
!3246 = !DILocalVariable(name: "pixel", scope: !3243, file: !940, line: 1525, type: !956)
!3247 = !DILocalVariable(name: "i", scope: !3243, file: !940, line: 1528, type: !640)
!3248 = !DILocalVariable(name: "u", scope: !3243, file: !940, line: 1531, type: !640)
!3249 = !DILocalVariable(name: "node_info", scope: !3250, file: !940, line: 1576, type: !944)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !940, line: 1574, column: 9)
!3251 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1573, column: 11)
!3252 = !DILocalVariable(name: "id", scope: !3250, file: !940, line: 1579, type: !570)
!3253 = !DILocalVariable(name: "proceed", scope: !3254, file: !940, line: 1627, type: !575)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !940, line: 1625, column: 9)
!3255 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1624, column: 11)
!3256 = !DILocation(line: 0, scope: !3222, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1887, column: 12, scope: !3258, inlinedAt: !3267)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !940, line: 1886, column: 7)
!3259 = distinct !DISubprogram(name: "DitherImage", scope: !940, file: !940, line: 1872, type: !3145, scopeLine: 1873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266}
!3261 = !DILocalVariable(name: "image", arg: 1, scope: !3259, file: !940, line: 1872, type: !652)
!3262 = !DILocalVariable(name: "cube_info", arg: 2, scope: !3259, file: !940, line: 1872, type: !938)
!3263 = !DILocalVariable(name: "image_view", scope: !3259, file: !940, line: 1875, type: !1306)
!3264 = !DILocalVariable(name: "status", scope: !3259, file: !940, line: 1878, type: !575)
!3265 = !DILocalVariable(name: "i", scope: !3259, file: !940, line: 1881, type: !640)
!3266 = !DILocalVariable(name: "depth", scope: !3259, file: !940, line: 1884, type: !570)
!3267 = distinct !DILocation(line: 527, column: 12, scope: !3153)
!3268 = !DILocation(line: 1475, column: 39, scope: !3222, inlinedAt: !3257)
!3269 = !DILocalVariable(name: "count", arg: 1, scope: !3270, file: !940, line: 1407, type: !858)
!3270 = distinct !DISubprogram(name: "AcquirePixelThreadSet", scope: !940, file: !940, line: 1407, type: !3271, scopeLine: 1408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!1005, !858}
!3273 = !{!3269, !3274, !3275, !3276}
!3274 = !DILocalVariable(name: "pixels", scope: !3270, file: !940, line: 1410, type: !1005)
!3275 = !DILocalVariable(name: "i", scope: !3270, file: !940, line: 1413, type: !640)
!3276 = !DILocalVariable(name: "number_threads", scope: !3270, file: !940, line: 1416, type: !570)
!3277 = !DILocation(line: 0, scope: !3270, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 1475, column: 10, scope: !3222, inlinedAt: !3257)
!3279 = !DILocation(line: 1418, column: 27, scope: !3270, inlinedAt: !3278)
!3280 = !DILocation(line: 1419, column: 31, scope: !3270, inlinedAt: !3278)
!3281 = !DILocation(line: 1421, column: 14, scope: !3282, inlinedAt: !3278)
!3282 = distinct !DILexicalBlock(scope: !3270, file: !940, line: 1421, column: 7)
!3283 = !DILocation(line: 1421, column: 7, scope: !3270, inlinedAt: !3278)
!3284 = !DILocation(line: 1423, column: 51, scope: !3270, inlinedAt: !3278)
!3285 = !DILocation(line: 1423, column: 10, scope: !3270, inlinedAt: !3278)
!3286 = !DILocation(line: 1424, column: 15, scope: !3287, inlinedAt: !3278)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !940, line: 1424, column: 3)
!3288 = distinct !DILexicalBlock(scope: !3270, file: !940, line: 1424, column: 3)
!3289 = !DILocation(line: 1424, column: 3, scope: !3288, inlinedAt: !3278)
!3290 = !DILocation(line: 1424, column: 44, scope: !3287, inlinedAt: !3278)
!3291 = distinct !{!3291, !3289, !3292, !1374, !1375}
!3292 = !DILocation(line: 1430, column: 3, scope: !3288, inlinedAt: !3278)
!3293 = !DILocation(line: 1426, column: 35, scope: !3294, inlinedAt: !3278)
!3294 = distinct !DILexicalBlock(scope: !3287, file: !940, line: 1425, column: 3)
!3295 = !DILocation(line: 1426, column: 5, scope: !3294, inlinedAt: !3278)
!3296 = !DILocation(line: 1426, column: 14, scope: !3294, inlinedAt: !3278)
!3297 = !DILocation(line: 1428, column: 19, scope: !3298, inlinedAt: !3278)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !940, line: 1428, column: 9)
!3299 = !DILocation(line: 1428, column: 9, scope: !3294, inlinedAt: !3278)
!3300 = !DILocalVariable(name: "pixels", arg: 1, scope: !3301, file: !940, line: 1394, type: !1005)
!3301 = distinct !DISubprogram(name: "DestroyPixelThreadSet", scope: !940, file: !940, line: 1394, type: !3302, scopeLine: 1395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!1005, !1005}
!3304 = !{!3300, !3305}
!3305 = !DILocalVariable(name: "i", scope: !3301, file: !940, line: 1397, type: !640)
!3306 = !DILocation(line: 0, scope: !3301, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 1429, column: 14, scope: !3298, inlinedAt: !3278)
!3308 = !DILocation(line: 1400, column: 27, scope: !3309, inlinedAt: !3307)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !940, line: 1400, column: 3)
!3310 = distinct !DILexicalBlock(scope: !3301, file: !940, line: 1400, column: 3)
!3311 = !DILocation(line: 1400, column: 15, scope: !3309, inlinedAt: !3307)
!3312 = !DILocation(line: 1400, column: 3, scope: !3310, inlinedAt: !3307)
!3313 = !DILocation(line: 1401, column: 9, scope: !3314, inlinedAt: !3307)
!3314 = distinct !DILexicalBlock(scope: !3309, file: !940, line: 1401, column: 9)
!3315 = !DILocation(line: 1401, column: 19, scope: !3314, inlinedAt: !3307)
!3316 = !DILocation(line: 1401, column: 9, scope: !3309, inlinedAt: !3307)
!3317 = !DILocation(line: 1402, column: 37, scope: !3314, inlinedAt: !3307)
!3318 = !DILocation(line: 1402, column: 16, scope: !3314, inlinedAt: !3307)
!3319 = !DILocation(line: 1402, column: 7, scope: !3314, inlinedAt: !3307)
!3320 = !DILocation(line: 1400, column: 68, scope: !3309, inlinedAt: !3307)
!3321 = distinct !{!3321, !3312, !3322, !1374, !1375}
!3322 = !DILocation(line: 1402, column: 69, scope: !3310, inlinedAt: !3307)
!3323 = !DILocation(line: 1403, column: 31, scope: !3301, inlinedAt: !3307)
!3324 = !DILocation(line: 1476, column: 14, scope: !3325, inlinedAt: !3257)
!3325 = distinct !DILexicalBlock(scope: !3222, file: !940, line: 1476, column: 7)
!3326 = !DILocation(line: 1476, column: 7, scope: !3222, inlinedAt: !3257)
!3327 = !DILocation(line: 1478, column: 22, scope: !3222, inlinedAt: !3257)
!3328 = !DILocation(line: 1480, column: 14, scope: !3222, inlinedAt: !3257)
!3329 = !DILocation(line: 1481, column: 34, scope: !3232, inlinedAt: !3257)
!3330 = !DILocation(line: 1481, column: 15, scope: !3232, inlinedAt: !3257)
!3331 = !DILocation(line: 1481, column: 3, scope: !3233, inlinedAt: !3257)
!3332 = !DILocation(line: 0, scope: !3231, inlinedAt: !3257)
!3333 = !DILocation(line: 1486, column: 5, scope: !3231, inlinedAt: !3257)
!3334 = !DILocation(line: 1487, column: 7, scope: !3231, inlinedAt: !3257)
!3335 = !DILocation(line: 1508, column: 16, scope: !3336, inlinedAt: !3257)
!3336 = distinct !DILexicalBlock(scope: !3231, file: !940, line: 1508, column: 9)
!3337 = !DILocation(line: 1508, column: 9, scope: !3231, inlinedAt: !3257)
!3338 = !DILocation(line: 1510, column: 57, scope: !3231, inlinedAt: !3257)
!3339 = !DILocation(line: 1510, column: 7, scope: !3231, inlinedAt: !3257)
!3340 = !DILocation(line: 1511, column: 11, scope: !3341, inlinedAt: !3257)
!3341 = distinct !DILexicalBlock(scope: !3231, file: !940, line: 1511, column: 9)
!3342 = !DILocation(line: 1511, column: 9, scope: !3231, inlinedAt: !3257)
!3343 = !DILocation(line: 1516, column: 13, scope: !3231, inlinedAt: !3257)
!3344 = !DILocation(line: 1517, column: 11, scope: !3231, inlinedAt: !3257)
!3345 = !{i64 0, i64 8, !2575, i64 8, i64 8, !1476, i64 16, i64 8, !1476, i64 24, i64 8, !1476, i64 32, i64 8, !3346, i64 40, i64 4, !2277, i64 44, i64 4, !2277, i64 48, i64 4, !2277, i64 52, i64 4, !2277, i64 56, i64 4, !2277, i64 60, i64 4, !2277, i64 64, i64 4, !2277, i64 72, i64 8, !1476, i64 80, i64 8, !1476, i64 88, i64 8, !1476, i64 96, i64 8, !2575, i64 104, i64 8, !2575, i64 112, i64 8, !2575, i64 120, i64 8, !2575, i64 128, i64 256, !3347, i64 384, i64 64, !3347, i64 448, i64 8, !2575, i64 456, i64 4, !3347, i64 464, i64 8, !1476, i64 472, i64 8, !1476, i64 480, i64 8, !1476, i64 488, i64 8, !3346, i64 496, i64 8, !3346}
!3346 = !{!1217, !1217, i64 0}
!3347 = !{!1037, !1037, i64 0}
!3348 = !DILocation(line: 1518, column: 13, scope: !3231, inlinedAt: !3257)
!3349 = !DILocation(line: 1518, column: 27, scope: !3231, inlinedAt: !3257)
!3350 = !DILocation(line: 1518, column: 42, scope: !3231, inlinedAt: !3257)
!3351 = !DILocation(line: 1518, column: 34, scope: !3231, inlinedAt: !3257)
!3352 = !DILocation(line: 1518, column: 23, scope: !3231, inlinedAt: !3257)
!3353 = !DILocation(line: 1519, column: 32, scope: !3231, inlinedAt: !3257)
!3354 = !DILocation(line: 1519, column: 39, scope: !3231, inlinedAt: !3257)
!3355 = !DILocation(line: 1519, column: 24, scope: !3231, inlinedAt: !3257)
!3356 = !DILocation(line: 1520, column: 18, scope: !3231, inlinedAt: !3257)
!3357 = !DILocation(line: 1520, column: 7, scope: !3231, inlinedAt: !3257)
!3358 = !DILocation(line: 1521, column: 17, scope: !3244, inlinedAt: !3257)
!3359 = !DILocation(line: 1521, column: 5, scope: !3245, inlinedAt: !3257)
!3360 = !DILocation(line: 1533, column: 9, scope: !3243, inlinedAt: !3257)
!3361 = !DILocation(line: 1533, column: 48, scope: !3243, inlinedAt: !3257)
!3362 = !DILocation(line: 0, scope: !3243, inlinedAt: !3257)
!3363 = !DILocation(line: 1534, column: 34, scope: !3243, inlinedAt: !3257)
!3364 = !DILocation(line: 1534, column: 7, scope: !3243, inlinedAt: !3257)
!3365 = !DILocation(line: 0, scope: !2433, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 1534, column: 7, scope: !3243, inlinedAt: !3257)
!3367 = !DILocation(line: 440, column: 35, scope: !2432, inlinedAt: !3366)
!3368 = !DILocation(line: 0, scope: !2432, inlinedAt: !3366)
!3369 = !DILocation(line: 440, column: 51, scope: !2432, inlinedAt: !3366)
!3370 = !DILocation(line: 441, column: 23, scope: !2432, inlinedAt: !3366)
!3371 = !DILocation(line: 440, column: 7, scope: !2433, inlinedAt: !3366)
!3372 = !DILocation(line: 443, column: 41, scope: !2452, inlinedAt: !3366)
!3373 = !DILocation(line: 443, column: 24, scope: !2452, inlinedAt: !3366)
!3374 = !DILocation(line: 444, column: 43, scope: !2452, inlinedAt: !3366)
!3375 = !DILocation(line: 444, column: 26, scope: !2452, inlinedAt: !3366)
!3376 = !DILocation(line: 445, column: 42, scope: !2452, inlinedAt: !3366)
!3377 = !DILocation(line: 445, column: 25, scope: !2452, inlinedAt: !3366)
!3378 = !DILocation(line: 447, column: 7, scope: !2452, inlinedAt: !3366)
!3379 = !DILocation(line: 449, column: 53, scope: !2433, inlinedAt: !3366)
!3380 = !DILocation(line: 449, column: 40, scope: !2433, inlinedAt: !3366)
!3381 = !DILocation(line: 449, column: 39, scope: !2433, inlinedAt: !3366)
!3382 = !DILocation(line: 449, column: 9, scope: !2433, inlinedAt: !3366)
!3383 = !DILocation(line: 450, column: 26, scope: !2433, inlinedAt: !3366)
!3384 = !DILocation(line: 450, column: 25, scope: !2433, inlinedAt: !3366)
!3385 = !DILocation(line: 451, column: 28, scope: !2433, inlinedAt: !3366)
!3386 = !DILocation(line: 451, column: 27, scope: !2433, inlinedAt: !3366)
!3387 = !DILocation(line: 452, column: 27, scope: !2433, inlinedAt: !3366)
!3388 = !DILocation(line: 452, column: 26, scope: !2433, inlinedAt: !3366)
!3389 = !DILocation(line: 453, column: 24, scope: !2433, inlinedAt: !3366)
!3390 = !DILocation(line: 454, column: 1, scope: !2433, inlinedAt: !3366)
!3391 = !DILocation(line: 1535, column: 13, scope: !3392, inlinedAt: !3257)
!3392 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1535, column: 11)
!3393 = !DILocation(line: 1535, column: 11, scope: !3243, inlinedAt: !3257)
!3394 = !DILocation(line: 1537, column: 33, scope: !3395, inlinedAt: !3257)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !940, line: 1536, column: 9)
!3396 = !DILocation(line: 1537, column: 24, scope: !3395, inlinedAt: !3257)
!3397 = !DILocation(line: 1537, column: 37, scope: !3395, inlinedAt: !3257)
!3398 = !{!2169, !2170, i64 0}
!3399 = !DILocation(line: 1537, column: 23, scope: !3395, inlinedAt: !3257)
!3400 = !DILocation(line: 1537, column: 40, scope: !3395, inlinedAt: !3257)
!3401 = !DILocation(line: 1537, column: 20, scope: !3395, inlinedAt: !3257)
!3402 = !DILocation(line: 1538, column: 39, scope: !3395, inlinedAt: !3257)
!3403 = !{!2169, !2170, i64 4}
!3404 = !DILocation(line: 1538, column: 25, scope: !3395, inlinedAt: !3257)
!3405 = !DILocation(line: 1538, column: 44, scope: !3395, inlinedAt: !3257)
!3406 = !DILocation(line: 1538, column: 22, scope: !3395, inlinedAt: !3257)
!3407 = !DILocation(line: 1539, column: 38, scope: !3395, inlinedAt: !3257)
!3408 = !{!2169, !2170, i64 8}
!3409 = !DILocation(line: 1539, column: 24, scope: !3395, inlinedAt: !3257)
!3410 = !DILocation(line: 1539, column: 42, scope: !3395, inlinedAt: !3257)
!3411 = !DILocation(line: 1539, column: 21, scope: !3395, inlinedAt: !3257)
!3412 = !DILocation(line: 1540, column: 15, scope: !3395, inlinedAt: !3257)
!3413 = !DILocation(line: 1541, column: 43, scope: !3414, inlinedAt: !3257)
!3414 = distinct !DILexicalBlock(scope: !3395, file: !940, line: 1540, column: 15)
!3415 = !{!2169, !2170, i64 12}
!3416 = !DILocation(line: 1541, column: 29, scope: !3414, inlinedAt: !3257)
!3417 = !DILocation(line: 1541, column: 50, scope: !3414, inlinedAt: !3257)
!3418 = !DILocation(line: 1541, column: 26, scope: !3414, inlinedAt: !3257)
!3419 = !DILocation(line: 1541, column: 13, scope: !3414, inlinedAt: !3257)
!3420 = !DILocation(line: 1543, column: 11, scope: !3243, inlinedAt: !3257)
!3421 = !DILocation(line: 1545, column: 44, scope: !3422, inlinedAt: !3257)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !940, line: 1545, column: 15)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !940, line: 1544, column: 9)
!3424 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1543, column: 11)
!3425 = !DILocation(line: 1545, column: 17, scope: !3422, inlinedAt: !3257)
!3426 = !DILocation(line: 1545, column: 15, scope: !3423, inlinedAt: !3257)
!3427 = !DILocation(line: 1547, column: 36, scope: !3428, inlinedAt: !3257)
!3428 = distinct !DILexicalBlock(scope: !3422, file: !940, line: 1546, column: 13)
!3429 = !DILocation(line: 1547, column: 26, scope: !3428, inlinedAt: !3257)
!3430 = !DILocation(line: 1547, column: 40, scope: !3428, inlinedAt: !3257)
!3431 = !DILocation(line: 1547, column: 43, scope: !3428, inlinedAt: !3257)
!3432 = !DILocation(line: 1547, column: 24, scope: !3428, inlinedAt: !3257)
!3433 = !DILocation(line: 1548, column: 42, scope: !3428, inlinedAt: !3257)
!3434 = !DILocation(line: 1548, column: 47, scope: !3428, inlinedAt: !3257)
!3435 = !DILocation(line: 1548, column: 26, scope: !3428, inlinedAt: !3257)
!3436 = !DILocation(line: 1549, column: 41, scope: !3428, inlinedAt: !3257)
!3437 = !DILocation(line: 1549, column: 45, scope: !3428, inlinedAt: !3257)
!3438 = !DILocation(line: 1549, column: 25, scope: !3428, inlinedAt: !3257)
!3439 = !DILocation(line: 1550, column: 19, scope: !3428, inlinedAt: !3257)
!3440 = !DILocation(line: 1551, column: 46, scope: !3441, inlinedAt: !3257)
!3441 = distinct !DILexicalBlock(scope: !3428, file: !940, line: 1550, column: 19)
!3442 = !DILocation(line: 1551, column: 53, scope: !3441, inlinedAt: !3257)
!3443 = !DILocation(line: 1551, column: 30, scope: !3441, inlinedAt: !3257)
!3444 = !DILocation(line: 1551, column: 17, scope: !3441, inlinedAt: !3257)
!3445 = !DILocation(line: 1553, column: 24, scope: !3423, inlinedAt: !3257)
!3446 = !DILocation(line: 1553, column: 36, scope: !3423, inlinedAt: !3257)
!3447 = !DILocation(line: 1553, column: 23, scope: !3423, inlinedAt: !3257)
!3448 = !DILocation(line: 1553, column: 39, scope: !3423, inlinedAt: !3257)
!3449 = !DILocation(line: 1553, column: 20, scope: !3423, inlinedAt: !3257)
!3450 = !DILocation(line: 1554, column: 38, scope: !3423, inlinedAt: !3257)
!3451 = !DILocation(line: 1554, column: 25, scope: !3423, inlinedAt: !3257)
!3452 = !DILocation(line: 1554, column: 43, scope: !3423, inlinedAt: !3257)
!3453 = !DILocation(line: 1554, column: 22, scope: !3423, inlinedAt: !3257)
!3454 = !DILocation(line: 1555, column: 37, scope: !3423, inlinedAt: !3257)
!3455 = !DILocation(line: 1555, column: 24, scope: !3423, inlinedAt: !3257)
!3456 = !DILocation(line: 1555, column: 41, scope: !3423, inlinedAt: !3257)
!3457 = !DILocation(line: 1555, column: 21, scope: !3423, inlinedAt: !3257)
!3458 = !DILocation(line: 1556, column: 15, scope: !3423, inlinedAt: !3257)
!3459 = !DILocation(line: 1557, column: 42, scope: !3460, inlinedAt: !3257)
!3460 = distinct !DILexicalBlock(scope: !3423, file: !940, line: 1556, column: 15)
!3461 = !DILocation(line: 1557, column: 29, scope: !3460, inlinedAt: !3257)
!3462 = !DILocation(line: 1557, column: 49, scope: !3460, inlinedAt: !3257)
!3463 = !DILocation(line: 1557, column: 26, scope: !3460, inlinedAt: !3257)
!3464 = !DILocation(line: 1557, column: 13, scope: !3460, inlinedAt: !3257)
!3465 = !DILocation(line: 1558, column: 15, scope: !3423, inlinedAt: !3257)
!3466 = !DILocation(line: 1560, column: 38, scope: !3467, inlinedAt: !3257)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !940, line: 1559, column: 13)
!3468 = distinct !DILexicalBlock(scope: !3423, file: !940, line: 1558, column: 15)
!3469 = !DILocation(line: 1560, column: 28, scope: !3467, inlinedAt: !3257)
!3470 = !DILocation(line: 1560, column: 42, scope: !3467, inlinedAt: !3257)
!3471 = !DILocation(line: 1560, column: 27, scope: !3467, inlinedAt: !3257)
!3472 = !DILocation(line: 1560, column: 45, scope: !3467, inlinedAt: !3257)
!3473 = !DILocation(line: 1560, column: 24, scope: !3467, inlinedAt: !3257)
!3474 = !DILocation(line: 1561, column: 44, scope: !3467, inlinedAt: !3257)
!3475 = !DILocation(line: 1561, column: 29, scope: !3467, inlinedAt: !3257)
!3476 = !DILocation(line: 1561, column: 49, scope: !3467, inlinedAt: !3257)
!3477 = !DILocation(line: 1561, column: 26, scope: !3467, inlinedAt: !3257)
!3478 = !DILocation(line: 1562, column: 43, scope: !3467, inlinedAt: !3257)
!3479 = !DILocation(line: 1562, column: 28, scope: !3467, inlinedAt: !3257)
!3480 = !DILocation(line: 1562, column: 47, scope: !3467, inlinedAt: !3257)
!3481 = !DILocation(line: 1562, column: 25, scope: !3467, inlinedAt: !3257)
!3482 = !DILocation(line: 1563, column: 19, scope: !3467, inlinedAt: !3257)
!3483 = !DILocation(line: 1564, column: 48, scope: !3484, inlinedAt: !3257)
!3484 = distinct !DILexicalBlock(scope: !3467, file: !940, line: 1563, column: 19)
!3485 = !DILocation(line: 1564, column: 33, scope: !3484, inlinedAt: !3257)
!3486 = !DILocation(line: 1564, column: 55, scope: !3484, inlinedAt: !3257)
!3487 = !DILocation(line: 1564, column: 30, scope: !3484, inlinedAt: !3257)
!3488 = !DILocation(line: 1564, column: 17, scope: !3484, inlinedAt: !3257)
!3489 = !DILocation(line: 0, scope: !2490, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 1567, column: 34, scope: !3243, inlinedAt: !3257)
!3491 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !3490)
!3492 = distinct !DILexicalBlock(scope: !2490, file: !940, line: 458, column: 7)
!3493 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !3490)
!3494 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3490)
!3495 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3490)
!3496 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3490)
!3497 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3490)
!3498 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3490)
!3499 = !DILocation(line: 1567, column: 17, scope: !3243, inlinedAt: !3257)
!3500 = !DILocation(line: 0, scope: !2490, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 1568, column: 36, scope: !3243, inlinedAt: !3257)
!3502 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !3501)
!3503 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !3501)
!3504 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3501)
!3505 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3501)
!3506 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3501)
!3507 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3501)
!3508 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3501)
!3509 = !DILocation(line: 1568, column: 19, scope: !3243, inlinedAt: !3257)
!3510 = !DILocation(line: 0, scope: !2490, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 1569, column: 35, scope: !3243, inlinedAt: !3257)
!3512 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !3511)
!3513 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !3511)
!3514 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3511)
!3515 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3511)
!3516 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3511)
!3517 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3511)
!3518 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3511)
!3519 = !DILocation(line: 1569, column: 18, scope: !3243, inlinedAt: !3257)
!3520 = !DILocation(line: 1570, column: 11, scope: !3243, inlinedAt: !3257)
!3521 = !DILocation(line: 0, scope: !2490, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 1571, column: 40, scope: !3523, inlinedAt: !3257)
!3523 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1570, column: 11)
!3524 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !3522)
!3525 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !3522)
!3526 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3522)
!3527 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3522)
!3528 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3522)
!3529 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3522)
!3530 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3522)
!3531 = !DILocation(line: 1571, column: 23, scope: !3523, inlinedAt: !3257)
!3532 = !DILocation(line: 1571, column: 9, scope: !3523, inlinedAt: !3257)
!3533 = !DILocalVariable(name: "cube_info", arg: 1, scope: !3534, file: !940, line: 1434, type: !938)
!3534 = distinct !DISubprogram(name: "CacheOffset", scope: !940, file: !940, line: 1434, type: !3535, scopeLine: 1436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!640, !938, !2481}
!3537 = !{!3533, !3538, !3539}
!3538 = !DILocalVariable(name: "pixel", arg: 2, scope: !3534, file: !940, line: 1435, type: !2481)
!3539 = !DILocalVariable(name: "offset", scope: !3534, file: !940, line: 1443, type: !640)
!3540 = !DILocation(line: 0, scope: !3534, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 1572, column: 9, scope: !3243, inlinedAt: !3257)
!3542 = !DILocation(line: 0, scope: !2490, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 1445, column: 21, scope: !3534, inlinedAt: !3541)
!3544 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3543)
!3545 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3543)
!3546 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3543)
!3547 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3543)
!3548 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3543)
!3549 = !DILocation(line: 0, scope: !2500, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 1445, column: 21, scope: !3534, inlinedAt: !3541)
!3551 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !3550)
!3552 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !3550)
!3553 = !DILocation(line: 1445, column: 21, scope: !3534, inlinedAt: !3541)
!3554 = !DILocation(line: 0, scope: !2490, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 1446, column: 5, scope: !3534, inlinedAt: !3541)
!3556 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3555)
!3557 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3555)
!3558 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3555)
!3559 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3555)
!3560 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3555)
!3561 = !DILocation(line: 0, scope: !2500, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 1446, column: 5, scope: !3534, inlinedAt: !3541)
!3563 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !3562)
!3564 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !3562)
!3565 = !DILocation(line: 1446, column: 5, scope: !3534, inlinedAt: !3541)
!3566 = !DILocation(line: 1445, column: 74, scope: !3534, inlinedAt: !3541)
!3567 = !DILocation(line: 0, scope: !2490, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 1447, column: 5, scope: !3534, inlinedAt: !3541)
!3569 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3568)
!3570 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3568)
!3571 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3568)
!3572 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3568)
!3573 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3568)
!3574 = !DILocation(line: 0, scope: !2500, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 1447, column: 5, scope: !3534, inlinedAt: !3541)
!3576 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !3575)
!3577 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !3575)
!3578 = !DILocation(line: 1447, column: 5, scope: !3534, inlinedAt: !3541)
!3579 = !DILocation(line: 1446, column: 62, scope: !3534, inlinedAt: !3541)
!3580 = !DILocation(line: 1448, column: 7, scope: !3534, inlinedAt: !3541)
!3581 = !DILocation(line: 0, scope: !2490, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1449, column: 13, scope: !3583, inlinedAt: !3541)
!3583 = distinct !DILexicalBlock(scope: !3534, file: !940, line: 1448, column: 7)
!3584 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !3582)
!3585 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !3582)
!3586 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !3582)
!3587 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3582)
!3588 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !3582)
!3589 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !3582)
!3590 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3582)
!3591 = !DILocation(line: 0, scope: !2500, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1449, column: 13, scope: !3583, inlinedAt: !3541)
!3593 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !3592)
!3594 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !3592)
!3595 = !DILocation(line: 1449, column: 13, scope: !3583, inlinedAt: !3541)
!3596 = !DILocation(line: 1449, column: 11, scope: !3583, inlinedAt: !3541)
!3597 = !DILocation(line: 1449, column: 5, scope: !3583, inlinedAt: !3541)
!3598 = !DILocation(line: 1573, column: 16, scope: !3251, inlinedAt: !3257)
!3599 = !DILocation(line: 1573, column: 11, scope: !3251, inlinedAt: !3257)
!3600 = !DILocation(line: 1573, column: 25, scope: !3251, inlinedAt: !3257)
!3601 = !DILocation(line: 1573, column: 11, scope: !3243, inlinedAt: !3257)
!3602 = !DILocation(line: 1584, column: 26, scope: !3250, inlinedAt: !3257)
!3603 = !DILocation(line: 0, scope: !3250, inlinedAt: !3257)
!3604 = !DILocation(line: 479, column: 7, scope: !2478, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1587, column: 16, scope: !3606, inlinedAt: !3257)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !940, line: 1586, column: 11)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !940, line: 1585, column: 11)
!3608 = distinct !DILexicalBlock(scope: !3250, file: !940, line: 1585, column: 11)
!3609 = !DILocation(line: 1585, column: 11, scope: !3608, inlinedAt: !3257)
!3610 = !DILocation(line: 0, scope: !2478, inlinedAt: !3605)
!3611 = !DILocation(line: 0, scope: !2490, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 475, column: 37, scope: !2478, inlinedAt: !3605)
!3613 = !DILocation(line: 0, scope: !2500, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 475, column: 18, scope: !2478, inlinedAt: !3605)
!3615 = !DILocation(line: 475, column: 69, scope: !2478, inlinedAt: !3605)
!3616 = !DILocation(line: 475, column: 79, scope: !2478, inlinedAt: !3605)
!3617 = !DILocation(line: 0, scope: !2490, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 476, column: 34, scope: !2478, inlinedAt: !3605)
!3619 = !DILocation(line: 0, scope: !2500, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 476, column: 15, scope: !2478, inlinedAt: !3605)
!3621 = !DILocation(line: 476, column: 68, scope: !2478, inlinedAt: !3605)
!3622 = !DILocation(line: 477, column: 11, scope: !2478, inlinedAt: !3605)
!3623 = !DILocation(line: 476, column: 11, scope: !2478, inlinedAt: !3605)
!3624 = !DILocation(line: 0, scope: !2490, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 477, column: 39, scope: !2478, inlinedAt: !3605)
!3626 = !DILocation(line: 0, scope: !2500, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 477, column: 20, scope: !2478, inlinedAt: !3605)
!3628 = !DILocation(line: 477, column: 72, scope: !2478, inlinedAt: !3605)
!3629 = !DILocation(line: 478, column: 20, scope: !2478, inlinedAt: !3605)
!3630 = !DILocation(line: 477, column: 16, scope: !2478, inlinedAt: !3605)
!3631 = !DILocation(line: 1588, column: 17, scope: !3632, inlinedAt: !3257)
!3632 = distinct !DILexicalBlock(scope: !3606, file: !940, line: 1588, column: 17)
!3633 = !DILocation(line: 1588, column: 38, scope: !3632, inlinedAt: !3257)
!3634 = !DILocation(line: 1588, column: 17, scope: !3606, inlinedAt: !3257)
!3635 = !DILocation(line: 1585, column: 64, scope: !3607, inlinedAt: !3257)
!3636 = !DILocation(line: 1585, column: 54, scope: !3607, inlinedAt: !3257)
!3637 = distinct !{!3637, !3609, !3638, !1374, !1375}
!3638 = !DILocation(line: 1591, column: 11, scope: !3608, inlinedAt: !3257)
!3639 = distinct !{!3639, !3609, !3638, !1374, !1375}
!3640 = !DILocation(line: 0, scope: !2490, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 480, column: 30, scope: !2540, inlinedAt: !3605)
!3642 = !DILocation(line: 0, scope: !2500, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 480, column: 11, scope: !2540, inlinedAt: !3605)
!3644 = !DILocation(line: 480, column: 66, scope: !2540, inlinedAt: !3605)
!3645 = !DILocation(line: 481, column: 12, scope: !2540, inlinedAt: !3605)
!3646 = !DILocation(line: 480, column: 7, scope: !2540, inlinedAt: !3605)
!3647 = !DILocation(line: 1595, column: 23, scope: !3250, inlinedAt: !3257)
!3648 = !{i64 0, i64 4, !2277, i64 4, i64 4, !2277, i64 8, i64 4, !2277, i64 12, i64 4, !2277}
!3649 = !{i64 0, i64 4, !2277, i64 4, i64 4, !2277, i64 8, i64 4, !2277}
!3650 = !{i64 0, i64 4, !2277, i64 4, i64 4, !2277}
!3651 = !{i64 0, i64 4, !2277}
!3652 = !DILocation(line: 1596, column: 24, scope: !3250, inlinedAt: !3257)
!3653 = !{!2168, !2170, i64 56}
!3654 = !DILocation(line: 1598, column: 47, scope: !3250, inlinedAt: !3257)
!3655 = !DILocation(line: 1598, column: 11, scope: !3250, inlinedAt: !3257)
!3656 = !DILocation(line: 1599, column: 40, scope: !3250, inlinedAt: !3257)
!3657 = !{!2168, !1052, i64 88}
!3658 = !DILocation(line: 1599, column: 16, scope: !3250, inlinedAt: !3257)
!3659 = !DILocation(line: 1599, column: 11, scope: !3250, inlinedAt: !3257)
!3660 = !DILocation(line: 1599, column: 24, scope: !3250, inlinedAt: !3257)
!3661 = !DILocation(line: 1600, column: 9, scope: !3250, inlinedAt: !3257)
!3662 = !DILocation(line: 1604, column: 22, scope: !3243, inlinedAt: !3257)
!3663 = !DILocation(line: 1605, column: 18, scope: !3664, inlinedAt: !3257)
!3664 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1605, column: 11)
!3665 = !DILocation(line: 1605, column: 32, scope: !3664, inlinedAt: !3257)
!3666 = !DILocation(line: 1605, column: 11, scope: !3243, inlinedAt: !3257)
!3667 = !DILocation(line: 1606, column: 9, scope: !3668, inlinedAt: !3257)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !940, line: 1606, column: 9)
!3669 = distinct !DILexicalBlock(scope: !3664, file: !940, line: 1606, column: 9)
!3670 = !DILocation(line: 1607, column: 16, scope: !3671, inlinedAt: !3257)
!3671 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1607, column: 11)
!3672 = !DILocation(line: 1607, column: 31, scope: !3671, inlinedAt: !3257)
!3673 = !DILocation(line: 1607, column: 45, scope: !3671, inlinedAt: !3257)
!3674 = !DILocation(line: 1607, column: 11, scope: !3243, inlinedAt: !3257)
!3675 = !DILocation(line: 1618, column: 7, scope: !3243, inlinedAt: !3257)
!3676 = !DILocation(line: 1609, column: 11, scope: !3677, inlinedAt: !3257)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !940, line: 1609, column: 11)
!3678 = distinct !DILexicalBlock(scope: !3671, file: !940, line: 1608, column: 9)
!3679 = !DILocation(line: 1610, column: 20, scope: !3680, inlinedAt: !3257)
!3680 = distinct !DILexicalBlock(scope: !3678, file: !940, line: 1610, column: 15)
!3681 = !DILocation(line: 1610, column: 36, scope: !3680, inlinedAt: !3257)
!3682 = !DILocation(line: 1610, column: 15, scope: !3678, inlinedAt: !3257)
!3683 = !DILocation(line: 1611, column: 13, scope: !3680, inlinedAt: !3257)
!3684 = !DILocation(line: 1613, column: 11, scope: !3685, inlinedAt: !3257)
!3685 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1613, column: 11)
!3686 = !DILocation(line: 1613, column: 62, scope: !3685, inlinedAt: !3257)
!3687 = !DILocation(line: 1613, column: 11, scope: !3243, inlinedAt: !3257)
!3688 = !DILocation(line: 1618, column: 40, scope: !3243, inlinedAt: !3257)
!3689 = !DILocation(line: 1618, column: 48, scope: !3243, inlinedAt: !3257)
!3690 = !DILocation(line: 0, scope: !2433, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 1618, column: 7, scope: !3243, inlinedAt: !3257)
!3692 = !DILocation(line: 440, column: 35, scope: !2432, inlinedAt: !3691)
!3693 = !DILocation(line: 0, scope: !2432, inlinedAt: !3691)
!3694 = !DILocation(line: 440, column: 51, scope: !2432, inlinedAt: !3691)
!3695 = !DILocation(line: 441, column: 23, scope: !2432, inlinedAt: !3691)
!3696 = !DILocation(line: 440, column: 7, scope: !2433, inlinedAt: !3691)
!3697 = !DILocation(line: 443, column: 41, scope: !2452, inlinedAt: !3691)
!3698 = !DILocation(line: 443, column: 24, scope: !2452, inlinedAt: !3691)
!3699 = !DILocation(line: 444, column: 43, scope: !2452, inlinedAt: !3691)
!3700 = !DILocation(line: 444, column: 26, scope: !2452, inlinedAt: !3691)
!3701 = !DILocation(line: 445, column: 42, scope: !2452, inlinedAt: !3691)
!3702 = !DILocation(line: 445, column: 25, scope: !2452, inlinedAt: !3691)
!3703 = !DILocation(line: 447, column: 7, scope: !2452, inlinedAt: !3691)
!3704 = !DILocation(line: 449, column: 53, scope: !2433, inlinedAt: !3691)
!3705 = !DILocation(line: 449, column: 40, scope: !2433, inlinedAt: !3691)
!3706 = !DILocation(line: 449, column: 39, scope: !2433, inlinedAt: !3691)
!3707 = !DILocation(line: 449, column: 9, scope: !2433, inlinedAt: !3691)
!3708 = !DILocation(line: 450, column: 26, scope: !2433, inlinedAt: !3691)
!3709 = !DILocation(line: 450, column: 25, scope: !2433, inlinedAt: !3691)
!3710 = !DILocation(line: 451, column: 28, scope: !2433, inlinedAt: !3691)
!3711 = !DILocation(line: 451, column: 27, scope: !2433, inlinedAt: !3691)
!3712 = !DILocation(line: 452, column: 27, scope: !2433, inlinedAt: !3691)
!3713 = !DILocation(line: 452, column: 26, scope: !2433, inlinedAt: !3691)
!3714 = !DILocation(line: 453, column: 24, scope: !2433, inlinedAt: !3691)
!3715 = !DILocation(line: 454, column: 1, scope: !2433, inlinedAt: !3691)
!3716 = !DILocation(line: 1619, column: 31, scope: !3243, inlinedAt: !3257)
!3717 = !DILocation(line: 1619, column: 7, scope: !3243, inlinedAt: !3257)
!3718 = !DILocation(line: 1619, column: 21, scope: !3243, inlinedAt: !3257)
!3719 = !DILocation(line: 1620, column: 35, scope: !3243, inlinedAt: !3257)
!3720 = !DILocation(line: 1620, column: 18, scope: !3243, inlinedAt: !3257)
!3721 = !DILocation(line: 1620, column: 23, scope: !3243, inlinedAt: !3257)
!3722 = !DILocation(line: 1621, column: 33, scope: !3243, inlinedAt: !3257)
!3723 = !DILocation(line: 1621, column: 18, scope: !3243, inlinedAt: !3257)
!3724 = !DILocation(line: 1621, column: 22, scope: !3243, inlinedAt: !3257)
!3725 = !DILocation(line: 1622, column: 11, scope: !3243, inlinedAt: !3257)
!3726 = !DILocation(line: 1623, column: 41, scope: !3727, inlinedAt: !3257)
!3727 = distinct !DILexicalBlock(scope: !3243, file: !940, line: 1622, column: 11)
!3728 = !DILocation(line: 1623, column: 20, scope: !3727, inlinedAt: !3257)
!3729 = !DILocation(line: 1623, column: 27, scope: !3727, inlinedAt: !3257)
!3730 = !DILocation(line: 1623, column: 9, scope: !3727, inlinedAt: !3257)
!3731 = !DILocation(line: 1624, column: 18, scope: !3255, inlinedAt: !3257)
!3732 = !DILocation(line: 1624, column: 35, scope: !3255, inlinedAt: !3257)
!3733 = !DILocation(line: 1624, column: 11, scope: !3243, inlinedAt: !3257)
!3734 = !DILocation(line: 1630, column: 20, scope: !3254, inlinedAt: !3257)
!3735 = !DILocation(line: 0, scope: !1387, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 1629, column: 19, scope: !3254, inlinedAt: !3257)
!3737 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !3736)
!3738 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !3736)
!3739 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !3736)
!3740 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !3736)
!3741 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !3736)
!3742 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !3736)
!3743 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !3736)
!3744 = !DILocation(line: 0, scope: !3254, inlinedAt: !3257)
!3745 = !DILocation(line: 1631, column: 23, scope: !3746, inlinedAt: !3257)
!3746 = distinct !DILexicalBlock(scope: !3254, file: !940, line: 1631, column: 15)
!3747 = !DILocation(line: 1631, column: 15, scope: !3254, inlinedAt: !3257)
!3748 = !DILocation(line: 1633, column: 9, scope: !3254, inlinedAt: !3257)
!3749 = !DILocation(line: 1521, column: 46, scope: !3244, inlinedAt: !3257)
!3750 = !DILocation(line: 1521, column: 36, scope: !3244, inlinedAt: !3257)
!3751 = distinct !{!3751, !3359, !3752, !1374, !1375}
!3752 = !DILocation(line: 1634, column: 5, scope: !3245, inlinedAt: !3257)
!3753 = !DILocation(line: 1635, column: 3, scope: !3232, inlinedAt: !3257)
!3754 = !DILocation(line: 1481, column: 41, scope: !3232, inlinedAt: !3257)
!3755 = distinct !{!3755, !3331, !3756, !1374, !1375}
!3756 = !DILocation(line: 1635, column: 3, scope: !3233, inlinedAt: !3257)
!3757 = !DILocation(line: 1636, column: 14, scope: !3222, inlinedAt: !3257)
!3758 = !DILocation(line: 0, scope: !3301, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 1637, column: 10, scope: !3222, inlinedAt: !3257)
!3760 = !DILocation(line: 1400, column: 27, scope: !3309, inlinedAt: !3759)
!3761 = !DILocation(line: 1400, column: 15, scope: !3309, inlinedAt: !3759)
!3762 = !DILocation(line: 1400, column: 3, scope: !3310, inlinedAt: !3759)
!3763 = !DILocation(line: 1401, column: 9, scope: !3314, inlinedAt: !3759)
!3764 = !DILocation(line: 1401, column: 19, scope: !3314, inlinedAt: !3759)
!3765 = !DILocation(line: 1401, column: 9, scope: !3309, inlinedAt: !3759)
!3766 = !DILocation(line: 1402, column: 37, scope: !3314, inlinedAt: !3759)
!3767 = !DILocation(line: 1402, column: 16, scope: !3314, inlinedAt: !3759)
!3768 = !DILocation(line: 1402, column: 7, scope: !3314, inlinedAt: !3759)
!3769 = !DILocation(line: 1400, column: 68, scope: !3309, inlinedAt: !3759)
!3770 = distinct !{!3770, !3762, !3771, !1374, !1375}
!3771 = !DILocation(line: 1402, column: 69, scope: !3310, inlinedAt: !3759)
!3772 = !DILocation(line: 1403, column: 31, scope: !3301, inlinedAt: !3759)
!3773 = !DILocation(line: 1638, column: 3, scope: !3222, inlinedAt: !3257)
!3774 = !DILocation(line: 1891, column: 39, scope: !3259, inlinedAt: !3267)
!3775 = !DILocation(line: 1891, column: 10, scope: !3259, inlinedAt: !3267)
!3776 = !DILocation(line: 1893, column: 14, scope: !3259, inlinedAt: !3267)
!3777 = !DILocation(line: 1895, column: 32, scope: !3259, inlinedAt: !3267)
!3778 = !DILocation(line: 1894, column: 15, scope: !3259, inlinedAt: !3267)
!3779 = !DILocation(line: 1895, column: 57, scope: !3259, inlinedAt: !3267)
!3780 = !DILocation(line: 0, scope: !3096, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1895, column: 5, scope: !3259, inlinedAt: !3267)
!3782 = !DILocation(line: 0, scope: !3259, inlinedAt: !3267)
!3783 = !DILocation(line: 1896, column: 19, scope: !3784, inlinedAt: !3267)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !940, line: 1896, column: 3)
!3785 = distinct !DILexicalBlock(scope: !3259, file: !940, line: 1896, column: 3)
!3786 = !DILocation(line: 1896, column: 3, scope: !3785, inlinedAt: !3267)
!3787 = !DILocation(line: 1897, column: 6, scope: !3784, inlinedAt: !3267)
!3788 = !DILocation(line: 1896, column: 30, scope: !3784, inlinedAt: !3267)
!3789 = distinct !{!3789, !3786, !3790, !1374, !1375}
!3790 = !DILocation(line: 1897, column: 9, scope: !3785, inlinedAt: !3267)
!3791 = !DILocation(line: 0, scope: !3785, inlinedAt: !3267)
!3792 = !DILocation(line: 1898, column: 21, scope: !3793, inlinedAt: !3267)
!3793 = distinct !DILexicalBlock(scope: !3259, file: !940, line: 1898, column: 7)
!3794 = !DILocation(line: 0, scope: !3096, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 1898, column: 33, scope: !3793, inlinedAt: !3267)
!3796 = !DILocation(line: 1898, column: 31, scope: !3793, inlinedAt: !3267)
!3797 = !DILocation(line: 1898, column: 7, scope: !3259, inlinedAt: !3267)
!3798 = !DILocation(line: 1900, column: 14, scope: !3259, inlinedAt: !3267)
!3799 = !DILocation(line: 1900, column: 20, scope: !3259, inlinedAt: !3267)
!3800 = !{!2168, !1217, i64 488}
!3801 = !DILocation(line: 1901, column: 50, scope: !3259, inlinedAt: !3267)
!3802 = !DILocation(line: 1901, column: 14, scope: !3259, inlinedAt: !3267)
!3803 = !DILocation(line: 1901, column: 18, scope: !3259, inlinedAt: !3267)
!3804 = !{!2168, !1217, i64 496}
!3805 = !DILocation(line: 1902, column: 54, scope: !3259, inlinedAt: !3267)
!3806 = !DILocation(line: 1902, column: 14, scope: !3259, inlinedAt: !3267)
!3807 = !DILocation(line: 1903, column: 13, scope: !3808, inlinedAt: !3267)
!3808 = distinct !DILexicalBlock(scope: !3259, file: !940, line: 1903, column: 7)
!3809 = !DILocation(line: 1903, column: 7, scope: !3259, inlinedAt: !3267)
!3810 = !DILocation(line: 1904, column: 47, scope: !3808, inlinedAt: !3267)
!3811 = !DILocation(line: 1904, column: 5, scope: !3808, inlinedAt: !3267)
!3812 = !DILocation(line: 1905, column: 10, scope: !3259, inlinedAt: !3267)
!3813 = !DILocation(line: 1906, column: 14, scope: !3259, inlinedAt: !3267)
!3814 = !DILocation(line: 1907, column: 3, scope: !3259, inlinedAt: !3267)
!3815 = !DILocation(line: 0, scope: !3152)
!3816 = !DILocation(line: 540, column: 26, scope: !3152)
!3817 = !DILocation(line: 541, column: 18, scope: !3152)
!3818 = !DILocation(line: 546, column: 38, scope: !3158)
!3819 = !DILocation(line: 546, column: 19, scope: !3158)
!3820 = !DILocation(line: 546, column: 7, scope: !3159)
!3821 = !DILocation(line: 548, column: 9, scope: !3157)
!3822 = !DILocation(line: 549, column: 11, scope: !3157)
!3823 = !DILocation(line: 563, column: 20, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3157, file: !940, line: 563, column: 13)
!3825 = !DILocation(line: 563, column: 13, scope: !3157)
!3826 = !DILocation(line: 565, column: 61, scope: !3157)
!3827 = !DILocation(line: 565, column: 11, scope: !3157)
!3828 = !DILocation(line: 0, scope: !3157)
!3829 = !DILocation(line: 567, column: 15, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3157, file: !940, line: 567, column: 13)
!3831 = !DILocation(line: 567, column: 13, scope: !3157)
!3832 = !DILocation(line: 572, column: 17, scope: !3157)
!3833 = !DILocation(line: 573, column: 15, scope: !3157)
!3834 = !DILocation(line: 574, column: 40, scope: !3166)
!3835 = !DILocation(line: 574, column: 21, scope: !3166)
!3836 = !DILocation(line: 574, column: 9, scope: !3167)
!3837 = distinct !{!3837, !3836, !3838, !1374, !1375}
!3838 = !DILocation(line: 624, column: 9, scope: !3167)
!3839 = !DILocation(line: 489, column: 8, scope: !1587, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 593, column: 17, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !940, line: 593, column: 17)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !940, line: 592, column: 11)
!3843 = distinct !DILexicalBlock(scope: !3165, file: !940, line: 592, column: 11)
!3844 = !DILocation(line: 493, column: 8, scope: !1600, inlinedAt: !3840)
!3845 = !DILocation(line: 592, column: 27, scope: !3842)
!3846 = !DILocation(line: 592, column: 35, scope: !3842)
!3847 = !DILocation(line: 592, column: 11, scope: !3843)
!3848 = !DILocation(line: 593, column: 38, scope: !3841)
!3849 = !DILocation(line: 0, scope: !1578, inlinedAt: !3840)
!3850 = !DILocation(line: 488, column: 26, scope: !1587, inlinedAt: !3840)
!3851 = !DILocation(line: 488, column: 23, scope: !1587, inlinedAt: !3840)
!3852 = !DILocation(line: 488, column: 42, scope: !1587, inlinedAt: !3840)
!3853 = !DILocation(line: 489, column: 28, scope: !1587, inlinedAt: !3840)
!3854 = !DILocation(line: 489, column: 25, scope: !1587, inlinedAt: !3840)
!3855 = !DILocation(line: 489, column: 46, scope: !1587, inlinedAt: !3840)
!3856 = !DILocation(line: 490, column: 8, scope: !1587, inlinedAt: !3840)
!3857 = !DILocation(line: 490, column: 27, scope: !1587, inlinedAt: !3840)
!3858 = !DILocation(line: 490, column: 24, scope: !1587, inlinedAt: !3840)
!3859 = !DILocation(line: 488, column: 7, scope: !1578, inlinedAt: !3840)
!3860 = !DILocation(line: 492, column: 15, scope: !1600, inlinedAt: !3840)
!3861 = !DILocation(line: 492, column: 21, scope: !1600, inlinedAt: !3840)
!3862 = !DILocation(line: 492, column: 37, scope: !1600, inlinedAt: !3840)
!3863 = !DILocation(line: 493, column: 30, scope: !1600, inlinedAt: !3840)
!3864 = !DILocation(line: 493, column: 27, scope: !1600, inlinedAt: !3840)
!3865 = !DILocation(line: 492, column: 7, scope: !1578, inlinedAt: !3840)
!3866 = !DILocation(line: 592, column: 68, scope: !3842)
!3867 = distinct !{!3867, !3847, !3868, !1374, !1375}
!3868 = !DILocation(line: 594, column: 15, scope: !3843)
!3869 = !DILocation(line: 0, scope: !2432, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 595, column: 11, scope: !3165)
!3871 = !DILocation(line: 595, column: 11, scope: !3165)
!3872 = !DILocation(line: 0, scope: !3843)
!3873 = !DILocation(line: 0, scope: !2433, inlinedAt: !3870)
!3874 = !DILocation(line: 440, column: 35, scope: !2432, inlinedAt: !3870)
!3875 = !DILocation(line: 440, column: 51, scope: !2432, inlinedAt: !3870)
!3876 = !DILocation(line: 441, column: 23, scope: !2432, inlinedAt: !3870)
!3877 = !DILocation(line: 440, column: 7, scope: !2433, inlinedAt: !3870)
!3878 = !DILocation(line: 443, column: 41, scope: !2452, inlinedAt: !3870)
!3879 = !DILocation(line: 443, column: 24, scope: !2452, inlinedAt: !3870)
!3880 = !DILocation(line: 0, scope: !3165)
!3881 = !DILocation(line: 444, column: 43, scope: !2452, inlinedAt: !3870)
!3882 = !DILocation(line: 444, column: 26, scope: !2452, inlinedAt: !3870)
!3883 = !DILocation(line: 445, column: 42, scope: !2452, inlinedAt: !3870)
!3884 = !DILocation(line: 445, column: 25, scope: !2452, inlinedAt: !3870)
!3885 = !DILocation(line: 447, column: 7, scope: !2452, inlinedAt: !3870)
!3886 = !DILocation(line: 449, column: 53, scope: !2433, inlinedAt: !3870)
!3887 = !DILocation(line: 449, column: 40, scope: !2433, inlinedAt: !3870)
!3888 = !DILocation(line: 449, column: 39, scope: !2433, inlinedAt: !3870)
!3889 = !DILocation(line: 449, column: 9, scope: !2433, inlinedAt: !3870)
!3890 = !DILocation(line: 450, column: 26, scope: !2433, inlinedAt: !3870)
!3891 = !DILocation(line: 450, column: 25, scope: !2433, inlinedAt: !3870)
!3892 = !DILocation(line: 451, column: 28, scope: !2433, inlinedAt: !3870)
!3893 = !DILocation(line: 451, column: 27, scope: !2433, inlinedAt: !3870)
!3894 = !DILocation(line: 452, column: 27, scope: !2433, inlinedAt: !3870)
!3895 = !DILocation(line: 452, column: 26, scope: !2433, inlinedAt: !3870)
!3896 = !DILocation(line: 453, column: 24, scope: !2433, inlinedAt: !3870)
!3897 = !DILocation(line: 454, column: 1, scope: !2433, inlinedAt: !3870)
!3898 = !DILocation(line: 596, column: 26, scope: !3165)
!3899 = !DILocation(line: 597, column: 11, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3165, file: !940, line: 597, column: 11)
!3901 = !DILocation(line: 597, column: 64, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3900, file: !940, line: 597, column: 11)
!3903 = !DILocation(line: 597, column: 54, scope: !3902)
!3904 = distinct !{!3904, !3899, !3905, !1374, !1375}
!3905 = !DILocation(line: 603, column: 11, scope: !3900)
!3906 = !DILocation(line: 0, scope: !2478, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 599, column: 16, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3902, file: !940, line: 598, column: 11)
!3909 = !DILocation(line: 0, scope: !2490, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 475, column: 37, scope: !2478, inlinedAt: !3907)
!3911 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3910)
!3912 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3910)
!3913 = !DILocation(line: 0, scope: !2500, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 475, column: 18, scope: !2478, inlinedAt: !3907)
!3915 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !3914)
!3916 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !3914)
!3917 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !3914)
!3918 = !DILocation(line: 475, column: 18, scope: !2478, inlinedAt: !3907)
!3919 = !DILocation(line: 475, column: 69, scope: !2478, inlinedAt: !3907)
!3920 = !DILocation(line: 475, column: 79, scope: !2478, inlinedAt: !3907)
!3921 = !DILocation(line: 0, scope: !2490, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 476, column: 34, scope: !2478, inlinedAt: !3907)
!3923 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3922)
!3924 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3922)
!3925 = !DILocation(line: 0, scope: !2500, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 476, column: 15, scope: !2478, inlinedAt: !3907)
!3927 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !3926)
!3928 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !3926)
!3929 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !3926)
!3930 = !DILocation(line: 476, column: 15, scope: !2478, inlinedAt: !3907)
!3931 = !DILocation(line: 476, column: 68, scope: !2478, inlinedAt: !3907)
!3932 = !DILocation(line: 477, column: 11, scope: !2478, inlinedAt: !3907)
!3933 = !DILocation(line: 476, column: 11, scope: !2478, inlinedAt: !3907)
!3934 = !DILocation(line: 0, scope: !2490, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 477, column: 39, scope: !2478, inlinedAt: !3907)
!3936 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3935)
!3937 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3935)
!3938 = !DILocation(line: 0, scope: !2500, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 477, column: 20, scope: !2478, inlinedAt: !3907)
!3940 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !3939)
!3941 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !3939)
!3942 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !3939)
!3943 = !DILocation(line: 477, column: 20, scope: !2478, inlinedAt: !3907)
!3944 = !DILocation(line: 477, column: 72, scope: !2478, inlinedAt: !3907)
!3945 = !DILocation(line: 478, column: 20, scope: !2478, inlinedAt: !3907)
!3946 = !DILocation(line: 477, column: 16, scope: !2478, inlinedAt: !3907)
!3947 = !DILocation(line: 479, column: 7, scope: !2478, inlinedAt: !3907)
!3948 = !DILocation(line: 0, scope: !2490, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 480, column: 30, scope: !2540, inlinedAt: !3907)
!3950 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !3949)
!3951 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !3949)
!3952 = !DILocation(line: 0, scope: !2500, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 480, column: 11, scope: !2540, inlinedAt: !3907)
!3954 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !3953)
!3955 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !3953)
!3956 = !DILocation(line: 117, column: 10, scope: !2500, inlinedAt: !3953)
!3957 = !DILocation(line: 480, column: 11, scope: !2540, inlinedAt: !3907)
!3958 = !DILocation(line: 480, column: 66, scope: !2540, inlinedAt: !3907)
!3959 = !DILocation(line: 481, column: 12, scope: !2540, inlinedAt: !3907)
!3960 = !DILocation(line: 480, column: 7, scope: !2540, inlinedAt: !3907)
!3961 = !DILocation(line: 480, column: 5, scope: !2540, inlinedAt: !3907)
!3962 = !DILocation(line: 600, column: 17, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3908, file: !940, line: 600, column: 17)
!3964 = !DILocation(line: 600, column: 38, scope: !3963)
!3965 = !DILocation(line: 600, column: 17, scope: !3908)
!3966 = !DILocation(line: 607, column: 23, scope: !3165)
!3967 = !DILocation(line: 608, column: 24, scope: !3165)
!3968 = !DILocation(line: 610, column: 47, scope: !3165)
!3969 = !DILocation(line: 610, column: 11, scope: !3165)
!3970 = !DILocation(line: 611, column: 22, scope: !3165)
!3971 = !DILocation(line: 616, column: 17, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !940, line: 613, column: 11)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !940, line: 612, column: 11)
!3974 = distinct !DILexicalBlock(scope: !3165, file: !940, line: 612, column: 11)
!3975 = !DILocation(line: 612, column: 11, scope: !3974)
!3976 = !DILocation(line: 614, column: 17, scope: !3972)
!3977 = !DILocation(line: 615, column: 15, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !940, line: 615, column: 15)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !940, line: 615, column: 15)
!3980 = distinct !DILexicalBlock(scope: !3972, file: !940, line: 614, column: 17)
!3981 = !DILocation(line: 618, column: 17, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !940, line: 618, column: 17)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !940, line: 617, column: 15)
!3984 = distinct !DILexicalBlock(scope: !3972, file: !940, line: 616, column: 17)
!3985 = !DILocation(line: 619, column: 21, scope: !3983)
!3986 = !DILocation(line: 620, column: 19, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3983, file: !940, line: 619, column: 21)
!3988 = !DILocation(line: 622, column: 14, scope: !3972)
!3989 = !DILocation(line: 612, column: 43, scope: !3973)
!3990 = !DILocation(line: 612, column: 23, scope: !3973)
!3991 = distinct !{!3991, !3975, !3992, !1374, !1375}
!3992 = !DILocation(line: 623, column: 11, scope: !3974)
!3993 = !DILocation(line: 625, column: 13, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3157, file: !940, line: 625, column: 13)
!3995 = !DILocation(line: 625, column: 64, scope: !3994)
!3996 = !DILocation(line: 625, column: 13, scope: !3157)
!3997 = !DILocation(line: 627, column: 20, scope: !3176)
!3998 = !DILocation(line: 627, column: 37, scope: !3176)
!3999 = !DILocation(line: 627, column: 13, scope: !3157)
!4000 = !DILocation(line: 636, column: 22, scope: !3175)
!4001 = !DILocation(line: 0, scope: !1387, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 635, column: 21, scope: !3175)
!4003 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !4002)
!4004 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !4002)
!4005 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !4002)
!4006 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !4002)
!4007 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !4002)
!4008 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !4002)
!4009 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !4002)
!4010 = !DILocation(line: 0, scope: !3175)
!4011 = !DILocation(line: 637, column: 25, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3175, file: !940, line: 637, column: 17)
!4013 = !DILocation(line: 637, column: 17, scope: !3175)
!4014 = !DILocation(line: 639, column: 11, scope: !3175)
!4015 = !DILocation(line: 640, column: 7, scope: !3158)
!4016 = !DILocation(line: 546, column: 45, scope: !3158)
!4017 = distinct !{!4017, !3820, !4018, !1374, !1375}
!4018 = !DILocation(line: 640, column: 7, scope: !3159)
!4019 = !DILocation(line: 641, column: 18, scope: !3152)
!4020 = !DILocation(line: 643, column: 18, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3144, file: !940, line: 643, column: 7)
!4022 = !DILocation(line: 643, column: 33, scope: !4021)
!4023 = !DILocation(line: 643, column: 47, scope: !4021)
!4024 = !DILocation(line: 643, column: 7, scope: !3144)
!4025 = !DILocation(line: 644, column: 12, scope: !4021)
!4026 = !DILocation(line: 645, column: 19, scope: !3179)
!4027 = !DILocation(line: 644, column: 5, scope: !4021)
!4028 = !DILocation(line: 645, column: 34, scope: !3179)
!4029 = !DILocation(line: 645, column: 48, scope: !3179)
!4030 = !DILocation(line: 645, column: 54, scope: !3179)
!4031 = !DILocation(line: 646, column: 34, scope: !3179)
!4032 = !DILocation(line: 646, column: 45, scope: !3179)
!4033 = !DILocation(line: 645, column: 7, scope: !3144)
!4034 = !DILocation(line: 0, scope: !3178)
!4035 = !DILocation(line: 661, column: 19, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !940, line: 661, column: 7)
!4037 = distinct !DILexicalBlock(scope: !3178, file: !940, line: 661, column: 7)
!4038 = !DILocation(line: 661, column: 7, scope: !4037)
!4039 = !DILocation(line: 660, column: 16, scope: !3178)
!4040 = !DILocation(line: 119, column: 7, scope: !4041, inlinedAt: !4049)
!4041 = distinct !DISubprogram(name: "GetPixelLuma", scope: !4042, file: !4042, line: 116, type: !4043, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4046)
!4042 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-accessor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5a3f95523a4166f31b566bb4d0a07c1b")
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!935, !4045, !1441}
!4045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !854)
!4046 = !{!4047, !4048}
!4047 = !DILocalVariable(name: "image", arg: 1, scope: !4041, file: !4042, line: 116, type: !4045)
!4048 = !DILocalVariable(name: "pixel", arg: 2, scope: !4041, file: !4042, line: 117, type: !1441)
!4049 = distinct !DILocation(line: 663, column: 30, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4036, file: !940, line: 662, column: 7)
!4051 = !DILocation(line: 0, scope: !4041, inlinedAt: !4049)
!4052 = !{!4053}
!4053 = distinct !{!4053, !4054, !"GetPixelLuma: %pixel"}
!4054 = distinct !{!4054, !"GetPixelLuma"}
!4055 = !DILocation(line: 663, column: 19, scope: !4050)
!4056 = !DILocation(line: 665, column: 9, scope: !4050)
!4057 = !DILocation(line: 666, column: 9, scope: !4050)
!4058 = !DILocation(line: 667, column: 9, scope: !4050)
!4059 = !DILocation(line: 668, column: 10, scope: !4050)
!4060 = !DILocation(line: 661, column: 47, scope: !4036)
!4061 = distinct !{!4061, !4038, !4062, !1374, !1375}
!4062 = !DILocation(line: 669, column: 7, scope: !4037)
!4063 = !DILocation(line: 121, column: 48, scope: !4041, inlinedAt: !4049)
!4064 = !DILocation(line: 121, column: 41, scope: !4041, inlinedAt: !4049)
!4065 = !DILocation(line: 121, column: 40, scope: !4041, inlinedAt: !4049)
!4066 = !DILocation(line: 121, column: 30, scope: !4041, inlinedAt: !4049)
!4067 = !DILocation(line: 121, column: 71, scope: !4041, inlinedAt: !4049)
!4068 = !DILocation(line: 121, column: 64, scope: !4041, inlinedAt: !4049)
!4069 = !DILocation(line: 121, column: 53, scope: !4041, inlinedAt: !4049)
!4070 = !DILocation(line: 663, column: 52, scope: !4050)
!4071 = !DILocation(line: 671, column: 10, scope: !3144)
!4072 = !DILocation(line: 672, column: 19, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !3144, file: !940, line: 672, column: 7)
!4074 = !DILocation(line: 672, column: 34, scope: !4073)
!4075 = !DILocation(line: 672, column: 69, scope: !4073)
!4076 = !DILocation(line: 674, column: 12, scope: !4073)
!4077 = !DILocation(line: 674, column: 5, scope: !4073)
!4078 = !DILocation(line: 676, column: 1, scope: !3144)
!4079 = distinct !DISubprogram(name: "DestroyCubeInfo", scope: !940, file: !940, line: 1310, type: !4080, scopeLine: 1311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !938}
!4082 = !{!4083, !4084}
!4083 = !DILocalVariable(name: "cube_info", arg: 1, scope: !4079, file: !940, line: 1310, type: !938)
!4084 = !DILocalVariable(name: "nodes", scope: !4079, file: !940, line: 1313, type: !980)
!4085 = !DILocation(line: 0, scope: !4079)
!4086 = !DILocation(line: 1320, column: 22, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4079, file: !940, line: 1319, column: 3)
!4088 = !DILocation(line: 1318, column: 3, scope: !4079)
!4089 = !DILocation(line: 1320, column: 34, scope: !4087)
!4090 = !DILocation(line: 1322, column: 30, scope: !4087)
!4091 = !DILocation(line: 1321, column: 47, scope: !4087)
!4092 = !DILocation(line: 1321, column: 16, scope: !4087)
!4093 = !DILocation(line: 1321, column: 33, scope: !4087)
!4094 = !DILocation(line: 1323, column: 37, scope: !4087)
!4095 = !DILocation(line: 1325, column: 26, scope: !4087)
!4096 = !DILocation(line: 1326, column: 34, scope: !4079)
!4097 = !DILocation(line: 1326, column: 3, scope: !4087)
!4098 = distinct !{!4098, !4088, !4099, !1374, !1375}
!4099 = !DILocation(line: 1326, column: 51, scope: !4079)
!4100 = !DILocation(line: 1327, column: 18, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4079, file: !940, line: 1327, column: 7)
!4102 = !DILocation(line: 1327, column: 30, scope: !4101)
!4103 = !DILocation(line: 1327, column: 7, scope: !4079)
!4104 = !DILocation(line: 1328, column: 28, scope: !4101)
!4105 = !DILocation(line: 1328, column: 27, scope: !4101)
!4106 = !DILocation(line: 1328, column: 5, scope: !4101)
!4107 = !DILocation(line: 1329, column: 59, scope: !4079)
!4108 = !DILocation(line: 0, scope: !1719, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 1329, column: 28, scope: !4079)
!4110 = !DILocation(line: 1358, column: 10, scope: !1719, inlinedAt: !4109)
!4111 = !DILocation(line: 1361, column: 18, scope: !1719, inlinedAt: !4109)
!4112 = !DILocation(line: 1361, column: 27, scope: !1719, inlinedAt: !4109)
!4113 = !DILocation(line: 1362, column: 34, scope: !1719, inlinedAt: !4109)
!4114 = !DILocation(line: 1329, column: 27, scope: !4079)
!4115 = !DILocation(line: 1330, column: 26, scope: !4079)
!4116 = !DILocation(line: 1331, column: 1, scope: !4079)
!4117 = distinct !DISubprogram(name: "QuantizeImages", scope: !940, file: !940, line: 2778, type: !1260, scopeLine: 2780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130}
!4119 = !DILocalVariable(name: "quantize_info", arg: 1, scope: !4117, file: !940, line: 2778, type: !1147)
!4120 = !DILocalVariable(name: "images", arg: 2, scope: !4117, file: !940, line: 2779, type: !652)
!4121 = !DILocalVariable(name: "cube_info", scope: !4117, file: !940, line: 2782, type: !938)
!4122 = !DILocalVariable(name: "image", scope: !4117, file: !940, line: 2785, type: !652)
!4123 = !DILocalVariable(name: "proceed", scope: !4117, file: !940, line: 2788, type: !575)
!4124 = !DILocalVariable(name: "status", scope: !4117, file: !940, line: 2789, type: !575)
!4125 = !DILocalVariable(name: "progress_monitor", scope: !4117, file: !940, line: 2792, type: !753)
!4126 = !DILocalVariable(name: "i", scope: !4117, file: !940, line: 2795, type: !640)
!4127 = !DILocalVariable(name: "depth", scope: !4117, file: !940, line: 2798, type: !570)
!4128 = !DILocalVariable(name: "maximum_colors", scope: !4117, file: !940, line: 2799, type: !570)
!4129 = !DILocalVariable(name: "number_images", scope: !4117, file: !940, line: 2800, type: !570)
!4130 = !DILocalVariable(name: "colors", scope: !4131, file: !940, line: 2826, type: !570)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !940, line: 2824, column: 5)
!4132 = distinct !DILexicalBlock(scope: !4117, file: !940, line: 2823, column: 7)
!4133 = !DILocation(line: 0, scope: !4117)
!4134 = !DILocation(line: 2806, column: 15, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4117, file: !940, line: 2806, column: 7)
!4136 = !DILocation(line: 2806, column: 21, scope: !4135)
!4137 = !DILocation(line: 2806, column: 7, scope: !4117)
!4138 = !DILocation(line: 2807, column: 69, scope: !4135)
!4139 = !DILocation(line: 2807, column: 12, scope: !4135)
!4140 = !DILocation(line: 2807, column: 5, scope: !4135)
!4141 = !DILocation(line: 2808, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4117, file: !940, line: 2808, column: 7)
!4143 = !DILocation(line: 2808, column: 34, scope: !4142)
!4144 = !DILocation(line: 2808, column: 7, scope: !4117)
!4145 = !DILocation(line: 2813, column: 14, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4142, file: !940, line: 2809, column: 5)
!4147 = !DILocation(line: 2814, column: 7, scope: !4146)
!4148 = !DILocation(line: 2817, column: 33, scope: !4117)
!4149 = !DILocation(line: 2818, column: 22, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4117, file: !940, line: 2818, column: 7)
!4151 = !DILocation(line: 2820, column: 7, scope: !4117)
!4152 = !DILocation(line: 2822, column: 24, scope: !4117)
!4153 = !DILocation(line: 2823, column: 13, scope: !4132)
!4154 = !DILocation(line: 2823, column: 7, scope: !4117)
!4155 = !DILocation(line: 0, scope: !4131)
!4156 = !DILocation(line: 2832, column: 28, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !940, line: 2832, column: 7)
!4158 = distinct !DILexicalBlock(scope: !4131, file: !940, line: 2832, column: 7)
!4159 = !DILocation(line: 2832, column: 7, scope: !4158)
!4160 = !DILocation(line: 2833, column: 15, scope: !4157)
!4161 = !DILocation(line: 2832, column: 39, scope: !4157)
!4162 = distinct !{!4162, !4159, !4163, !1374, !1375}
!4163 = !DILocation(line: 2833, column: 18, scope: !4158)
!4164 = !DILocation(line: 0, scope: !4158)
!4165 = !DILocation(line: 2834, column: 26, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4131, file: !940, line: 2834, column: 11)
!4167 = !DILocation(line: 2834, column: 33, scope: !4166)
!4168 = !DILocation(line: 2834, column: 11, scope: !4131)
!4169 = !DILocation(line: 2836, column: 5, scope: !4131)
!4170 = !DILocation(line: 2840, column: 13, scope: !4117)
!4171 = !DILocation(line: 2841, column: 17, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4117, file: !940, line: 2841, column: 7)
!4173 = !DILocation(line: 2841, column: 7, scope: !4117)
!4174 = !DILocation(line: 2843, column: 44, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4172, file: !940, line: 2842, column: 5)
!4176 = !DILocation(line: 2844, column: 68, scope: !4175)
!4177 = !DILocation(line: 2843, column: 14, scope: !4175)
!4178 = !DILocation(line: 2845, column: 7, scope: !4175)
!4179 = !DILocation(line: 2847, column: 17, scope: !4117)
!4180 = !DILocation(line: 2849, column: 19, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !940, line: 2849, column: 3)
!4182 = distinct !DILexicalBlock(scope: !4117, file: !940, line: 2849, column: 3)
!4183 = !DILocation(line: 2849, column: 3, scope: !4182)
!4184 = !DILocation(line: 2852, column: 14, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4181, file: !940, line: 2850, column: 3)
!4186 = !DILocation(line: 2851, column: 22, scope: !4185)
!4187 = !DILocation(line: 2853, column: 56, scope: !4185)
!4188 = !DILocation(line: 2853, column: 12, scope: !4185)
!4189 = !DILocation(line: 2854, column: 16, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4185, file: !940, line: 2854, column: 9)
!4191 = !DILocation(line: 2854, column: 9, scope: !4185)
!4192 = !DILocation(line: 2856, column: 66, scope: !4185)
!4193 = !DILocation(line: 2856, column: 12, scope: !4185)
!4194 = !DILocation(line: 0, scope: !1387, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 2857, column: 13, scope: !4185)
!4196 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !4195)
!4197 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !4195)
!4198 = !DILocation(line: 33, column: 14, scope: !1401, inlinedAt: !4195)
!4199 = !DILocation(line: 33, column: 31, scope: !1401, inlinedAt: !4195)
!4200 = !DILocation(line: 33, column: 7, scope: !1387, inlinedAt: !4195)
!4201 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !4195)
!4202 = !DILocation(line: 2859, column: 9, scope: !4185)
!4203 = !DILocation(line: 35, column: 70, scope: !1387, inlinedAt: !4195)
!4204 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !4195)
!4205 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !4195)
!4206 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !4195)
!4207 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !4195)
!4208 = !DILocation(line: 2859, column: 17, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4185, file: !940, line: 2859, column: 9)
!4210 = !DILocation(line: 2861, column: 11, scope: !4185)
!4211 = !DILocation(line: 2849, column: 39, scope: !4181)
!4212 = distinct !{!4212, !4183, !4213, !1374, !1375}
!4213 = !DILocation(line: 2862, column: 3, scope: !4182)
!4214 = !DILocation(line: 2868, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !940, line: 2864, column: 5)
!4216 = distinct !DILexicalBlock(scope: !4117, file: !940, line: 2863, column: 7)
!4217 = !DILocation(line: 2870, column: 7, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4215, file: !940, line: 2870, column: 7)
!4219 = !DILocation(line: 2873, column: 23, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !940, line: 2871, column: 7)
!4221 = distinct !DILexicalBlock(scope: !4218, file: !940, line: 2870, column: 7)
!4222 = !DILocation(line: 2872, column: 26, scope: !4220)
!4223 = !DILocation(line: 2874, column: 16, scope: !4220)
!4224 = !DILocation(line: 2875, column: 20, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4220, file: !940, line: 2875, column: 13)
!4226 = !DILocation(line: 2875, column: 13, scope: !4220)
!4227 = !DILocation(line: 2878, column: 18, scope: !4220)
!4228 = !DILocation(line: 2877, column: 16, scope: !4220)
!4229 = !DILocation(line: 0, scope: !1387, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 2879, column: 17, scope: !4220)
!4231 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !4230)
!4232 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !4230)
!4233 = !DILocation(line: 33, column: 14, scope: !1401, inlinedAt: !4230)
!4234 = !DILocation(line: 33, column: 31, scope: !1401, inlinedAt: !4230)
!4235 = !DILocation(line: 33, column: 7, scope: !1387, inlinedAt: !4230)
!4236 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !4230)
!4237 = !DILocation(line: 2881, column: 13, scope: !4220)
!4238 = !DILocation(line: 35, column: 70, scope: !1387, inlinedAt: !4230)
!4239 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !4230)
!4240 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !4230)
!4241 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !4230)
!4242 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !4230)
!4243 = !DILocation(line: 2881, column: 21, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4220, file: !940, line: 2881, column: 13)
!4245 = !DILocation(line: 2883, column: 15, scope: !4220)
!4246 = !DILocation(line: 2870, column: 43, scope: !4221)
!4247 = !DILocation(line: 2870, column: 23, scope: !4221)
!4248 = distinct !{!4248, !4217, !4249, !1374, !1375}
!4249 = !DILocation(line: 2884, column: 7, scope: !4218)
!4250 = !DILocation(line: 2886, column: 3, scope: !4117)
!4251 = !DILocation(line: 2887, column: 3, scope: !4117)
!4252 = !DILocation(line: 2888, column: 1, scope: !4117)
!4253 = !DISubprogram(name: "GetNextImageInList", scope: !4254, file: !4254, line: 33, type: !4255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4254 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!652, !854}
!4257 = !DISubprogram(name: "GetImageListLength", scope: !4254, file: !4254, line: 45, type: !4258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!570, !854}
!4260 = !DISubprogram(name: "SetImageProgressMonitor", scope: !754, file: !754, line: 30, type: !4261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!753, !652, !4263, !582}
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!4264 = distinct !DISubprogram(name: "RemapImage", scope: !940, file: !940, line: 3153, type: !4265, scopeLine: 3155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4267)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!575, !1147, !652, !854}
!4267 = !{!4268, !4269, !4270, !4271, !4272}
!4268 = !DILocalVariable(name: "quantize_info", arg: 1, scope: !4264, file: !940, line: 3153, type: !1147)
!4269 = !DILocalVariable(name: "image", arg: 2, scope: !4264, file: !940, line: 3154, type: !652)
!4270 = !DILocalVariable(name: "remap_image", arg: 3, scope: !4264, file: !940, line: 3154, type: !854)
!4271 = !DILocalVariable(name: "cube_info", scope: !4264, file: !940, line: 3157, type: !938)
!4272 = !DILocalVariable(name: "status", scope: !4264, file: !940, line: 3160, type: !575)
!4273 = !DILocation(line: 0, scope: !4264)
!4274 = !DILocation(line: 3167, column: 14, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4264, file: !940, line: 3167, column: 7)
!4276 = !DILocation(line: 3167, column: 20, scope: !4275)
!4277 = !DILocation(line: 3167, column: 7, scope: !4264)
!4278 = !DILocation(line: 3168, column: 68, scope: !4275)
!4279 = !DILocation(line: 3168, column: 12, scope: !4275)
!4280 = !DILocation(line: 3168, column: 5, scope: !4275)
!4281 = !DILocation(line: 3172, column: 20, scope: !4264)
!4282 = !DILocation(line: 3171, column: 13, scope: !4264)
!4283 = !DILocation(line: 3173, column: 17, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4264, file: !940, line: 3173, column: 7)
!4285 = !DILocation(line: 3173, column: 7, scope: !4264)
!4286 = !DILocation(line: 3174, column: 5, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !940, line: 3174, column: 5)
!4288 = distinct !DILexicalBlock(scope: !4284, file: !940, line: 3174, column: 5)
!4289 = !DILocation(line: 3176, column: 10, scope: !4264)
!4290 = !DILocation(line: 3177, column: 14, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4264, file: !940, line: 3177, column: 7)
!4292 = !DILocation(line: 3177, column: 7, scope: !4264)
!4293 = !DILocation(line: 3182, column: 58, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4291, file: !940, line: 3178, column: 5)
!4295 = !DILocation(line: 3182, column: 18, scope: !4294)
!4296 = !DILocation(line: 3182, column: 46, scope: !4294)
!4297 = !DILocation(line: 3183, column: 14, scope: !4294)
!4298 = !DILocation(line: 3184, column: 5, scope: !4294)
!4299 = !DILocation(line: 3185, column: 3, scope: !4264)
!4300 = !DILocation(line: 3186, column: 3, scope: !4264)
!4301 = !DILocation(line: 3187, column: 1, scope: !4264)
!4302 = distinct !DISubprogram(name: "RemapImages", scope: !940, file: !940, line: 3217, type: !4265, scopeLine: 3219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4303)
!4303 = !{!4304, !4305, !4306, !4307, !4308, !4309}
!4304 = !DILocalVariable(name: "quantize_info", arg: 1, scope: !4302, file: !940, line: 3217, type: !1147)
!4305 = !DILocalVariable(name: "images", arg: 2, scope: !4302, file: !940, line: 3218, type: !652)
!4306 = !DILocalVariable(name: "remap_image", arg: 3, scope: !4302, file: !940, line: 3218, type: !854)
!4307 = !DILocalVariable(name: "cube_info", scope: !4302, file: !940, line: 3221, type: !938)
!4308 = !DILocalVariable(name: "image", scope: !4302, file: !940, line: 3224, type: !652)
!4309 = !DILocalVariable(name: "status", scope: !4302, file: !940, line: 3227, type: !575)
!4310 = !DILocation(line: 0, scope: !4302)
!4311 = !DILocation(line: 3231, column: 15, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4302, file: !940, line: 3231, column: 7)
!4313 = !DILocation(line: 3231, column: 21, scope: !4312)
!4314 = !DILocation(line: 3231, column: 7, scope: !4302)
!4315 = !DILocation(line: 3232, column: 69, scope: !4312)
!4316 = !DILocation(line: 3232, column: 12, scope: !4312)
!4317 = !DILocation(line: 3232, column: 5, scope: !4312)
!4318 = !DILocation(line: 3234, column: 19, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4302, file: !940, line: 3234, column: 7)
!4320 = !DILocation(line: 3234, column: 7, scope: !4302)
!4321 = !DILocation(line: 3239, column: 14, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !940, line: 3235, column: 5)
!4323 = !DILocation(line: 3240, column: 7, scope: !4322)
!4324 = !DILocation(line: 3246, column: 20, scope: !4302)
!4325 = !DILocation(line: 3245, column: 13, scope: !4302)
!4326 = !DILocation(line: 3247, column: 17, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4302, file: !940, line: 3247, column: 7)
!4328 = !DILocation(line: 3247, column: 7, scope: !4302)
!4329 = !DILocation(line: 3248, column: 5, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !940, line: 3248, column: 5)
!4331 = distinct !DILexicalBlock(scope: !4327, file: !940, line: 3248, column: 5)
!4332 = !DILocation(line: 3250, column: 10, scope: !4302)
!4333 = !DILocation(line: 3251, column: 14, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4302, file: !940, line: 3251, column: 7)
!4335 = !DILocation(line: 3251, column: 7, scope: !4302)
!4336 = !DILocation(line: 3256, column: 58, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !940, line: 3252, column: 5)
!4338 = !DILocation(line: 3256, column: 18, scope: !4337)
!4339 = !DILocation(line: 3256, column: 46, scope: !4337)
!4340 = !DILocation(line: 3258, column: 7, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4337, file: !940, line: 3258, column: 7)
!4342 = !DILocation(line: 3260, column: 16, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !940, line: 3259, column: 7)
!4344 = distinct !DILexicalBlock(scope: !4341, file: !940, line: 3258, column: 7)
!4345 = !DILocation(line: 3261, column: 20, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4343, file: !940, line: 3261, column: 13)
!4347 = !DILocation(line: 3261, column: 13, scope: !4343)
!4348 = !DILocation(line: 3258, column: 46, scope: !4344)
!4349 = !DILocation(line: 3258, column: 21, scope: !4344)
!4350 = distinct !{!4350, !4340, !4351, !1374, !1375}
!4351 = !DILocation(line: 3263, column: 7, scope: !4341)
!4352 = !DILocation(line: 3265, column: 3, scope: !4302)
!4353 = !DILocation(line: 3266, column: 3, scope: !4302)
!4354 = !DILocation(line: 3267, column: 1, scope: !4302)
!4355 = !DISubprogram(name: "FormatLocaleString", scope: !4356, file: !4356, line: 71, type: !4357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4356 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!640, !4359, !858, !4360, null}
!4359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !596)
!4360 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !758)
!4361 = !DISubprogram(name: "AcquireImageColormap", scope: !4362, file: !4362, line: 26, type: !4363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4362 = !DIFile(filename: "apps/538.imagick_r/src/magick/colormap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bbb8514638ae332109008c420bdb541")
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!575, !652, !858}
!4365 = !DISubprogram(name: "AcquireVirtualMemory", scope: !990, file: !990, line: 34, type: !4366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!988, !858, !858}
!4368 = !DISubprogram(name: "GetVirtualMemoryBlob", scope: !990, file: !990, line: 49, type: !4369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!582, !4371}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!4373 = !DISubprogram(name: "AcquireQuantumMemory", scope: !990, file: !990, line: 42, type: !4374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!582, !858, !858}
!4376 = !DISubprogram(name: "TransformImageColorspace", scope: !10, file: !10, line: 66, type: !4377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!575, !652, !2369}
!4379 = distinct !DISubprogram(name: "PruneLevel", scope: !940, file: !940, line: 2515, type: !4380, scopeLine: 2517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4382)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{null, !854, !938, !3169}
!4382 = !{!4383, !4384, !4385, !4386, !4387}
!4383 = !DILocalVariable(name: "image", arg: 1, scope: !4379, file: !940, line: 2515, type: !854)
!4384 = !DILocalVariable(name: "cube_info", arg: 2, scope: !4379, file: !940, line: 2515, type: !938)
!4385 = !DILocalVariable(name: "node_info", arg: 3, scope: !4379, file: !940, line: 2516, type: !3169)
!4386 = !DILocalVariable(name: "i", scope: !4379, file: !940, line: 2519, type: !640)
!4387 = !DILocalVariable(name: "number_children", scope: !4379, file: !940, line: 2522, type: !570)
!4388 = !DILocation(line: 0, scope: !4379)
!4389 = !DILocation(line: 2527, column: 30, scope: !4379)
!4390 = !DILocation(line: 2527, column: 46, scope: !4379)
!4391 = !DILocation(line: 2527, column: 19, scope: !4379)
!4392 = !DILocation(line: 2528, column: 3, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4379, file: !940, line: 2528, column: 3)
!4394 = !DILocation(line: 2529, column: 9, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !940, line: 2529, column: 9)
!4396 = distinct !DILexicalBlock(scope: !4393, file: !940, line: 2528, column: 3)
!4397 = !DILocation(line: 2529, column: 29, scope: !4395)
!4398 = !DILocation(line: 2529, column: 9, scope: !4396)
!4399 = !DILocation(line: 2530, column: 7, scope: !4395)
!4400 = !DILocation(line: 2528, column: 45, scope: !4396)
!4401 = !DILocation(line: 2528, column: 15, scope: !4396)
!4402 = distinct !{!4402, !4392, !4403, !1374, !1375}
!4403 = !DILocation(line: 2530, column: 53, scope: !4393)
!4404 = !DILocation(line: 2531, column: 18, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4379, file: !940, line: 2531, column: 7)
!4406 = !DILocation(line: 2531, column: 38, scope: !4405)
!4407 = !DILocation(line: 2531, column: 24, scope: !4405)
!4408 = !DILocation(line: 2531, column: 7, scope: !4379)
!4409 = !DILocation(line: 2532, column: 5, scope: !4405)
!4410 = !DILocation(line: 2533, column: 1, scope: !4379)
!4411 = distinct !DISubprogram(name: "PruneToCubeDepth", scope: !940, file: !940, line: 2562, type: !4380, scopeLine: 2564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4412)
!4412 = !{!4413, !4414, !4415, !4416, !4417}
!4413 = !DILocalVariable(name: "image", arg: 1, scope: !4411, file: !940, line: 2562, type: !854)
!4414 = !DILocalVariable(name: "cube_info", arg: 2, scope: !4411, file: !940, line: 2562, type: !938)
!4415 = !DILocalVariable(name: "node_info", arg: 3, scope: !4411, file: !940, line: 2563, type: !3169)
!4416 = !DILocalVariable(name: "i", scope: !4411, file: !940, line: 2566, type: !640)
!4417 = !DILocalVariable(name: "number_children", scope: !4411, file: !940, line: 2569, type: !570)
!4418 = !DILocation(line: 0, scope: !4411)
!4419 = !DILocation(line: 2574, column: 30, scope: !4411)
!4420 = !DILocation(line: 2574, column: 46, scope: !4411)
!4421 = !DILocation(line: 2574, column: 19, scope: !4411)
!4422 = !DILocation(line: 2575, column: 3, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4411, file: !940, line: 2575, column: 3)
!4424 = !DILocation(line: 2576, column: 9, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !940, line: 2576, column: 9)
!4426 = distinct !DILexicalBlock(scope: !4423, file: !940, line: 2575, column: 3)
!4427 = !DILocation(line: 2576, column: 29, scope: !4425)
!4428 = !DILocation(line: 2576, column: 9, scope: !4426)
!4429 = !DILocation(line: 2577, column: 7, scope: !4425)
!4430 = !DILocation(line: 2575, column: 45, scope: !4426)
!4431 = !DILocation(line: 2575, column: 15, scope: !4426)
!4432 = distinct !{!4432, !4422, !4433, !1374, !1375}
!4433 = !DILocation(line: 2577, column: 59, scope: !4423)
!4434 = !DILocation(line: 2578, column: 18, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4411, file: !940, line: 2578, column: 7)
!4436 = !DILocation(line: 2578, column: 37, scope: !4435)
!4437 = !DILocation(line: 2578, column: 24, scope: !4435)
!4438 = !DILocation(line: 2578, column: 7, scope: !4411)
!4439 = !DILocation(line: 2579, column: 5, scope: !4435)
!4440 = !DILocation(line: 2580, column: 1, scope: !4411)
!4441 = distinct !DISubprogram(name: "PruneChild", scope: !940, file: !940, line: 2455, type: !4380, scopeLine: 2457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4442)
!4442 = !{!4443, !4444, !4445, !4446, !4447, !4448}
!4443 = !DILocalVariable(name: "image", arg: 1, scope: !4441, file: !940, line: 2455, type: !854)
!4444 = !DILocalVariable(name: "cube_info", arg: 2, scope: !4441, file: !940, line: 2455, type: !938)
!4445 = !DILocalVariable(name: "node_info", arg: 3, scope: !4441, file: !940, line: 2456, type: !3169)
!4446 = !DILocalVariable(name: "parent", scope: !4441, file: !940, line: 2459, type: !944)
!4447 = !DILocalVariable(name: "i", scope: !4441, file: !940, line: 2462, type: !640)
!4448 = !DILocalVariable(name: "number_children", scope: !4441, file: !940, line: 2465, type: !570)
!4449 = !DILocation(line: 0, scope: !4441)
!4450 = !DILocation(line: 2470, column: 30, scope: !4441)
!4451 = !DILocation(line: 2470, column: 46, scope: !4441)
!4452 = !DILocation(line: 2470, column: 19, scope: !4441)
!4453 = !DILocation(line: 2471, column: 3, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4441, file: !940, line: 2471, column: 3)
!4455 = !DILocation(line: 2472, column: 9, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !940, line: 2472, column: 9)
!4457 = distinct !DILexicalBlock(scope: !4454, file: !940, line: 2471, column: 3)
!4458 = !DILocation(line: 2472, column: 29, scope: !4456)
!4459 = !DILocation(line: 2472, column: 9, scope: !4457)
!4460 = !DILocation(line: 2473, column: 7, scope: !4456)
!4461 = !DILocation(line: 2471, column: 45, scope: !4457)
!4462 = !DILocation(line: 2471, column: 15, scope: !4457)
!4463 = distinct !{!4463, !4453, !4464, !1374, !1375}
!4464 = !DILocation(line: 2473, column: 53, scope: !4454)
!4465 = !DILocation(line: 2477, column: 21, scope: !4441)
!4466 = !DILocation(line: 2478, column: 37, scope: !4441)
!4467 = !DILocation(line: 2478, column: 11, scope: !4441)
!4468 = !DILocation(line: 2478, column: 24, scope: !4441)
!4469 = !DILocation(line: 2479, column: 39, scope: !4441)
!4470 = !DILocation(line: 2479, column: 51, scope: !4441)
!4471 = !DILocation(line: 2479, column: 11, scope: !4441)
!4472 = !DILocation(line: 2479, column: 26, scope: !4441)
!4473 = !DILocation(line: 2480, column: 53, scope: !4441)
!4474 = !DILocation(line: 2480, column: 23, scope: !4441)
!4475 = !DILocation(line: 2480, column: 28, scope: !4441)
!4476 = !DILocation(line: 2481, column: 52, scope: !4441)
!4477 = !DILocation(line: 2481, column: 23, scope: !4441)
!4478 = !DILocation(line: 2481, column: 27, scope: !4441)
!4479 = !DILocation(line: 2482, column: 55, scope: !4441)
!4480 = !DILocation(line: 2482, column: 23, scope: !4441)
!4481 = !DILocation(line: 2482, column: 30, scope: !4441)
!4482 = !DILocation(line: 2483, column: 28, scope: !4441)
!4483 = !DILocation(line: 2483, column: 3, scope: !4441)
!4484 = !DILocation(line: 2483, column: 31, scope: !4441)
!4485 = !DILocation(line: 2484, column: 14, scope: !4441)
!4486 = !DILocation(line: 2484, column: 19, scope: !4441)
!4487 = !DILocation(line: 2485, column: 1, scope: !4441)
!4488 = distinct !DISubprogram(name: "DefineImageColormap", scope: !940, file: !940, line: 1203, type: !4489, scopeLine: 1205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!570, !652, !938, !944}
!4491 = !{!4492, !4493, !4494, !4495, !4496, !4497, !4500, !4501, !4504}
!4492 = !DILocalVariable(name: "image", arg: 1, scope: !4488, file: !940, line: 1203, type: !652)
!4493 = !DILocalVariable(name: "cube_info", arg: 2, scope: !4488, file: !940, line: 1203, type: !938)
!4494 = !DILocalVariable(name: "node_info", arg: 3, scope: !4488, file: !940, line: 1204, type: !944)
!4495 = !DILocalVariable(name: "i", scope: !4488, file: !940, line: 1207, type: !640)
!4496 = !DILocalVariable(name: "number_children", scope: !4488, file: !940, line: 1210, type: !570)
!4497 = !DILocalVariable(name: "alpha", scope: !4498, file: !940, line: 1222, type: !935)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !940, line: 1220, column: 5)
!4499 = distinct !DILexicalBlock(scope: !4488, file: !940, line: 1219, column: 7)
!4500 = !DILocalVariable(name: "q", scope: !4498, file: !940, line: 1225, type: !1320)
!4501 = !DILocalVariable(name: "opacity", scope: !4502, file: !940, line: 1246, type: !935)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !940, line: 1244, column: 9)
!4503 = distinct !DILexicalBlock(scope: !4498, file: !940, line: 1233, column: 11)
!4504 = !DILocalVariable(name: "gamma", scope: !4505, file: !940, line: 1263, type: !617)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !940, line: 1261, column: 13)
!4506 = distinct !DILexicalBlock(scope: !4502, file: !940, line: 1251, column: 15)
!4507 = !DILocation(line: 0, scope: !4488)
!4508 = !DILocation(line: 1215, column: 30, scope: !4488)
!4509 = !DILocation(line: 1215, column: 46, scope: !4488)
!4510 = !DILocation(line: 1215, column: 19, scope: !4488)
!4511 = !DILocation(line: 1216, column: 3, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4488, file: !940, line: 1216, column: 3)
!4513 = !DILocation(line: 1217, column: 9, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !940, line: 1217, column: 9)
!4515 = distinct !DILexicalBlock(scope: !4512, file: !940, line: 1216, column: 3)
!4516 = !DILocation(line: 1217, column: 29, scope: !4514)
!4517 = !DILocation(line: 1217, column: 9, scope: !4515)
!4518 = !DILocation(line: 1218, column: 14, scope: !4514)
!4519 = !DILocation(line: 1218, column: 7, scope: !4514)
!4520 = !DILocation(line: 1216, column: 45, scope: !4515)
!4521 = !DILocation(line: 1216, column: 15, scope: !4515)
!4522 = distinct !{!4522, !4511, !4523, !1374, !1375}
!4523 = !DILocation(line: 1218, column: 69, scope: !4512)
!4524 = !DILocation(line: 1219, column: 18, scope: !4499)
!4525 = !DILocation(line: 1219, column: 32, scope: !4499)
!4526 = !DILocation(line: 1219, column: 7, scope: !4488)
!4527 = !DILocation(line: 1230, column: 16, scope: !4498)
!4528 = !DILocation(line: 1230, column: 32, scope: !4498)
!4529 = !DILocation(line: 1230, column: 24, scope: !4498)
!4530 = !DILocation(line: 0, scope: !4498)
!4531 = !DILocation(line: 1231, column: 13, scope: !4498)
!4532 = !DILocation(line: 1232, column: 35, scope: !4498)
!4533 = !DILocation(line: 0, scope: !2254, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 1232, column: 13, scope: !4498)
!4535 = !DILocation(line: 86, column: 10, scope: !2254, inlinedAt: !4534)
!4536 = !DILocation(line: 86, column: 8, scope: !2254, inlinedAt: !4534)
!4537 = !DILocation(line: 87, column: 12, scope: !2266, inlinedAt: !4534)
!4538 = !DILocation(line: 87, column: 16, scope: !2266, inlinedAt: !4534)
!4539 = !DILocation(line: 87, column: 7, scope: !2254, inlinedAt: !4534)
!4540 = !DILocation(line: 88, column: 15, scope: !2266, inlinedAt: !4534)
!4541 = !DILocation(line: 88, column: 5, scope: !2266, inlinedAt: !4534)
!4542 = !DILocation(line: 89, column: 14, scope: !2254, inlinedAt: !4534)
!4543 = !DILocation(line: 89, column: 3, scope: !2254, inlinedAt: !4534)
!4544 = !DILocation(line: 1232, column: 13, scope: !4498)
!4545 = !DILocation(line: 1233, column: 22, scope: !4503)
!4546 = !DILocation(line: 1233, column: 38, scope: !4503)
!4547 = !DILocation(line: 0, scope: !4503)
!4548 = !DILocation(line: 1233, column: 11, scope: !4498)
!4549 = !DILocation(line: 1235, column: 11, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4503, file: !940, line: 1234, column: 9)
!4551 = !DILocalVariable(name: "value", arg: 1, scope: !4552, file: !101, line: 87, type: !2493)
!4552 = distinct !DISubprogram(name: "ClampToQuantum", scope: !101, file: !101, line: 87, type: !2491, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4553)
!4553 = !{!4551}
!4554 = !DILocation(line: 0, scope: !4552, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 1235, column: 11, scope: !4550)
!4556 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4555)
!4557 = distinct !DILexicalBlock(scope: !4552, file: !101, line: 92, column: 7)
!4558 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4555)
!4559 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4555)
!4560 = distinct !DILexicalBlock(scope: !4552, file: !101, line: 94, column: 7)
!4561 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4555)
!4562 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4555)
!4563 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4555)
!4564 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4555)
!4565 = !DILocation(line: 1237, column: 11, scope: !4550)
!4566 = !DILocation(line: 0, scope: !4552, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 1237, column: 11, scope: !4550)
!4568 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4567)
!4569 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4567)
!4570 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4567)
!4571 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4567)
!4572 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4567)
!4573 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4567)
!4574 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4567)
!4575 = !DILocation(line: 1239, column: 11, scope: !4550)
!4576 = !DILocation(line: 0, scope: !4552, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 1239, column: 11, scope: !4550)
!4578 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4577)
!4579 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4577)
!4580 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4577)
!4581 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4577)
!4582 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4577)
!4583 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4577)
!4584 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4577)
!4585 = !DILocation(line: 1241, column: 11, scope: !4550)
!4586 = !DILocation(line: 1242, column: 9, scope: !4550)
!4587 = !DILocation(line: 1249, column: 36, scope: !4502)
!4588 = !DILocation(line: 1248, column: 55, scope: !4502)
!4589 = !DILocation(line: 0, scope: !4502)
!4590 = !DILocation(line: 0, scope: !4552, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 1250, column: 11, scope: !4502)
!4592 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4591)
!4593 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4591)
!4594 = !DILocation(line: 1250, column: 11, scope: !4502)
!4595 = !DILocation(line: 1251, column: 15, scope: !4502)
!4596 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4591)
!4597 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4591)
!4598 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4591)
!4599 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4591)
!4600 = !DILocation(line: 1251, column: 26, scope: !4506)
!4601 = !DILocation(line: 1253, column: 15, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4506, file: !940, line: 1252, column: 13)
!4603 = !DILocation(line: 0, scope: !4552, inlinedAt: !4604)
!4604 = distinct !DILocation(line: 1253, column: 15, scope: !4602)
!4605 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4604)
!4606 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4604)
!4607 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4604)
!4608 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4604)
!4609 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4604)
!4610 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4604)
!4611 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4604)
!4612 = !DILocation(line: 1255, column: 15, scope: !4602)
!4613 = !DILocation(line: 0, scope: !4552, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 1255, column: 15, scope: !4602)
!4615 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4614)
!4616 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4614)
!4617 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4614)
!4618 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4614)
!4619 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4614)
!4620 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4614)
!4621 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4614)
!4622 = !DILocation(line: 1257, column: 15, scope: !4602)
!4623 = !DILocation(line: 0, scope: !4552, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 1257, column: 15, scope: !4602)
!4625 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4624)
!4626 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4624)
!4627 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4624)
!4628 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4624)
!4629 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4624)
!4630 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4624)
!4631 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4624)
!4632 = !DILocation(line: 1259, column: 13, scope: !4602)
!4633 = !DILocation(line: 1265, column: 58, scope: !4505)
!4634 = !DILocation(line: 1265, column: 57, scope: !4505)
!4635 = !DILocation(line: 1265, column: 43, scope: !4505)
!4636 = !DILocation(line: 0, scope: !4505)
!4637 = !DILocation(line: 1267, column: 25, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4505, file: !940, line: 1267, column: 19)
!4639 = !DILocation(line: 1267, column: 19, scope: !4505)
!4640 = !DILocation(line: 1267, column: 32, scope: !4638)
!4641 = !DILocation(line: 0, scope: !2254, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 1269, column: 21, scope: !4505)
!4643 = !DILocation(line: 86, column: 10, scope: !2254, inlinedAt: !4642)
!4644 = !DILocation(line: 86, column: 8, scope: !2254, inlinedAt: !4642)
!4645 = !DILocation(line: 87, column: 12, scope: !2266, inlinedAt: !4642)
!4646 = !DILocation(line: 87, column: 16, scope: !2266, inlinedAt: !4642)
!4647 = !DILocation(line: 87, column: 7, scope: !2254, inlinedAt: !4642)
!4648 = !DILocation(line: 88, column: 15, scope: !2266, inlinedAt: !4642)
!4649 = !DILocation(line: 88, column: 5, scope: !2266, inlinedAt: !4642)
!4650 = !DILocation(line: 89, column: 14, scope: !2254, inlinedAt: !4642)
!4651 = !DILocation(line: 89, column: 3, scope: !2254, inlinedAt: !4642)
!4652 = !DILocation(line: 1270, column: 15, scope: !4505)
!4653 = !DILocation(line: 0, scope: !4552, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 1270, column: 15, scope: !4505)
!4655 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4654)
!4656 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4654)
!4657 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4654)
!4658 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4654)
!4659 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4654)
!4660 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4654)
!4661 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4654)
!4662 = !DILocation(line: 1272, column: 15, scope: !4505)
!4663 = !DILocation(line: 0, scope: !4552, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 1272, column: 15, scope: !4505)
!4665 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4664)
!4666 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4664)
!4667 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4664)
!4668 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4664)
!4669 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4664)
!4670 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4664)
!4671 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4664)
!4672 = !DILocation(line: 1274, column: 15, scope: !4505)
!4673 = !DILocation(line: 0, scope: !4552, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 1274, column: 15, scope: !4505)
!4675 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !4674)
!4676 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !4674)
!4677 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !4674)
!4678 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !4674)
!4679 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !4674)
!4680 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !4674)
!4681 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !4674)
!4682 = !DILocation(line: 1276, column: 57, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4505, file: !940, line: 1276, column: 19)
!4684 = !DILocation(line: 1276, column: 44, scope: !4683)
!4685 = !DILocation(line: 1276, column: 19, scope: !4505)
!4686 = !DILocation(line: 1278, column: 48, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4683, file: !940, line: 1277, column: 17)
!4688 = !DILocation(line: 1279, column: 30, scope: !4687)
!4689 = !DILocation(line: 1279, column: 47, scope: !4687)
!4690 = !DILocation(line: 1280, column: 17, scope: !4687)
!4691 = !DILocation(line: 1283, column: 44, scope: !4498)
!4692 = !DILocation(line: 1283, column: 18, scope: !4498)
!4693 = !DILocation(line: 1283, column: 30, scope: !4498)
!4694 = !{!2225, !1052, i64 168}
!4695 = !DILocation(line: 1284, column: 5, scope: !4498)
!4696 = !DILocation(line: 1285, column: 3, scope: !4488)
!4697 = distinct !DISubprogram(name: "ClosestColor", scope: !940, file: !940, line: 1063, type: !4380, scopeLine: 1065, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4698)
!4698 = !{!4699, !4700, !4701, !4702, !4703, !4704, !4707, !4708, !4709, !4710, !4711}
!4699 = !DILocalVariable(name: "image", arg: 1, scope: !4697, file: !940, line: 1063, type: !854)
!4700 = !DILocalVariable(name: "cube_info", arg: 2, scope: !4697, file: !940, line: 1063, type: !938)
!4701 = !DILocalVariable(name: "node_info", arg: 3, scope: !4697, file: !940, line: 1064, type: !3169)
!4702 = !DILocalVariable(name: "i", scope: !4697, file: !940, line: 1067, type: !640)
!4703 = !DILocalVariable(name: "number_children", scope: !4697, file: !940, line: 1070, type: !570)
!4704 = !DILocalVariable(name: "pixel", scope: !4705, file: !940, line: 1082, type: !935)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !940, line: 1080, column: 5)
!4706 = distinct !DILexicalBlock(scope: !4697, file: !940, line: 1079, column: 7)
!4707 = !DILocalVariable(name: "alpha", scope: !4705, file: !940, line: 1085, type: !935)
!4708 = !DILocalVariable(name: "beta", scope: !4705, file: !940, line: 1086, type: !935)
!4709 = !DILocalVariable(name: "distance", scope: !4705, file: !940, line: 1087, type: !935)
!4710 = !DILocalVariable(name: "p", scope: !4705, file: !940, line: 1090, type: !1320)
!4711 = !DILocalVariable(name: "q", scope: !4705, file: !940, line: 1093, type: !4712)
!4712 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1006)
!4713 = !DILocation(line: 0, scope: !4697)
!4714 = !DILocation(line: 1075, column: 30, scope: !4697)
!4715 = !DILocation(line: 1075, column: 46, scope: !4697)
!4716 = !DILocation(line: 1075, column: 19, scope: !4697)
!4717 = !DILocation(line: 1076, column: 3, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4697, file: !940, line: 1076, column: 3)
!4719 = !DILocation(line: 1077, column: 9, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4721, file: !940, line: 1077, column: 9)
!4721 = distinct !DILexicalBlock(scope: !4718, file: !940, line: 1076, column: 3)
!4722 = !DILocation(line: 1077, column: 29, scope: !4720)
!4723 = !DILocation(line: 1077, column: 9, scope: !4721)
!4724 = !DILocation(line: 1078, column: 7, scope: !4720)
!4725 = !DILocation(line: 1076, column: 45, scope: !4721)
!4726 = !DILocation(line: 1076, column: 15, scope: !4721)
!4727 = distinct !{!4727, !4717, !4728, !1374, !1375}
!4728 = !DILocation(line: 1078, column: 55, scope: !4718)
!4729 = !DILocation(line: 1079, column: 18, scope: !4706)
!4730 = !DILocation(line: 1079, column: 32, scope: !4706)
!4731 = !DILocation(line: 1079, column: 7, scope: !4697)
!4732 = !DILocation(line: 1098, column: 16, scope: !4705)
!4733 = !DILocation(line: 1098, column: 36, scope: !4705)
!4734 = !DILocation(line: 1098, column: 24, scope: !4705)
!4735 = !DILocation(line: 0, scope: !4705)
!4736 = !DILocation(line: 1099, column: 22, scope: !4705)
!4737 = !DILocation(line: 1102, column: 22, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4705, file: !940, line: 1102, column: 11)
!4739 = !DILocation(line: 1102, column: 38, scope: !4738)
!4740 = !DILocation(line: 1102, column: 11, scope: !4705)
!4741 = !DILocation(line: 1104, column: 48, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4738, file: !940, line: 1103, column: 9)
!4743 = !DILocation(line: 1104, column: 47, scope: !4742)
!4744 = !DILocation(line: 1104, column: 17, scope: !4742)
!4745 = !DILocation(line: 1105, column: 47, scope: !4742)
!4746 = !DILocation(line: 1105, column: 46, scope: !4742)
!4747 = !DILocation(line: 1105, column: 16, scope: !4742)
!4748 = !DILocation(line: 1106, column: 9, scope: !4742)
!4749 = !DILocation(line: 1107, column: 19, scope: !4705)
!4750 = !DILocation(line: 1107, column: 39, scope: !4705)
!4751 = !DILocation(line: 1107, column: 33, scope: !4705)
!4752 = !DILocation(line: 1108, column: 21, scope: !4705)
!4753 = !DILocation(line: 1109, column: 34, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4705, file: !940, line: 1109, column: 11)
!4755 = !DILocation(line: 1109, column: 20, scope: !4754)
!4756 = !DILocation(line: 1109, column: 11, scope: !4705)
!4757 = !DILocation(line: 1111, column: 23, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4754, file: !940, line: 1110, column: 9)
!4759 = !DILocation(line: 1111, column: 45, scope: !4758)
!4760 = !DILocation(line: 1111, column: 39, scope: !4758)
!4761 = !DILocation(line: 1112, column: 19, scope: !4758)
!4762 = !DILocation(line: 1113, column: 24, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4758, file: !940, line: 1113, column: 15)
!4764 = !DILocation(line: 1113, column: 15, scope: !4758)
!4765 = !DILocation(line: 1115, column: 27, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4763, file: !940, line: 1114, column: 13)
!4767 = !DILocation(line: 1115, column: 48, scope: !4766)
!4768 = !DILocation(line: 1115, column: 42, scope: !4766)
!4769 = !DILocation(line: 1116, column: 23, scope: !4766)
!4770 = !DILocation(line: 1117, column: 28, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4766, file: !940, line: 1117, column: 19)
!4772 = !DILocation(line: 1117, column: 19, scope: !4766)
!4773 = !DILocation(line: 1119, column: 30, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4771, file: !940, line: 1118, column: 17)
!4775 = !DILocation(line: 1120, column: 27, scope: !4774)
!4776 = !DILocation(line: 1121, column: 32, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4774, file: !940, line: 1121, column: 23)
!4778 = !DILocation(line: 1121, column: 23, scope: !4774)
!4779 = !DILocation(line: 1123, column: 42, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !940, line: 1122, column: 21)
!4781 = !DILocation(line: 1124, column: 34, scope: !4780)
!4782 = !DILocation(line: 1124, column: 46, scope: !4780)
!4783 = !DILocation(line: 1125, column: 21, scope: !4780)
!4784 = !DILocation(line: 1130, column: 1, scope: !4697)
!4785 = !DISubprogram(name: "SyncImage", scope: !79, file: !79, line: 544, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4786 = distinct !DISubprogram(name: "Riemersma", scope: !940, file: !940, line: 1644, type: !4787, scopeLine: 1646, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4790)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{null, !652, !1306, !938, !858, !4789}
!4789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!4790 = !{!4791, !4792, !4793, !4794, !4795}
!4791 = !DILocalVariable(name: "image", arg: 1, scope: !4786, file: !940, line: 1644, type: !652)
!4792 = !DILocalVariable(name: "image_view", arg: 2, scope: !4786, file: !940, line: 1644, type: !1306)
!4793 = !DILocalVariable(name: "cube_info", arg: 3, scope: !4786, file: !940, line: 1644, type: !938)
!4794 = !DILocalVariable(name: "level", arg: 4, scope: !4786, file: !940, line: 1645, type: !858)
!4795 = !DILocalVariable(name: "direction", arg: 5, scope: !4786, file: !940, line: 1645, type: !4789)
!4796 = !DILocation(line: 0, scope: !4786)
!4797 = !DILocation(line: 1647, column: 13, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4786, file: !940, line: 1647, column: 7)
!4799 = !DILocation(line: 1647, column: 7, scope: !4786)
!4800 = !DILocation(line: 1648, column: 5, scope: !4798)
!4801 = !DILocation(line: 1682, column: 5, scope: !4798)
!4802 = !DILocation(line: 1686, column: 51, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !940, line: 1685, column: 7)
!4804 = distinct !DILexicalBlock(scope: !4798, file: !940, line: 1683, column: 5)
!4805 = !DILocation(line: 1686, column: 9, scope: !4803)
!4806 = !DILocation(line: 1687, column: 16, scope: !4803)
!4807 = !DILocation(line: 1688, column: 9, scope: !4803)
!4808 = !DILocation(line: 1689, column: 16, scope: !4803)
!4809 = !DILocation(line: 1690, column: 9, scope: !4803)
!4810 = !DILocation(line: 1692, column: 9, scope: !4803)
!4811 = !DILocation(line: 0, scope: !4804)
!4812 = !DILocation(line: 1697, column: 51, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4804, file: !940, line: 1696, column: 7)
!4814 = !DILocation(line: 1697, column: 9, scope: !4813)
!4815 = !DILocation(line: 1698, column: 16, scope: !4813)
!4816 = !DILocation(line: 1699, column: 9, scope: !4813)
!4817 = !DILocation(line: 1700, column: 16, scope: !4813)
!4818 = !DILocation(line: 1701, column: 9, scope: !4813)
!4819 = !DILocation(line: 1703, column: 9, scope: !4813)
!4820 = !DILocation(line: 1708, column: 51, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4804, file: !940, line: 1707, column: 7)
!4822 = !DILocation(line: 1708, column: 9, scope: !4821)
!4823 = !DILocation(line: 1709, column: 16, scope: !4821)
!4824 = !DILocation(line: 1710, column: 9, scope: !4821)
!4825 = !DILocation(line: 1711, column: 16, scope: !4821)
!4826 = !DILocation(line: 1712, column: 9, scope: !4821)
!4827 = !DILocation(line: 1714, column: 9, scope: !4821)
!4828 = !DILocation(line: 1719, column: 51, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4804, file: !940, line: 1718, column: 7)
!4830 = !DILocation(line: 1719, column: 9, scope: !4829)
!4831 = !DILocation(line: 1720, column: 16, scope: !4829)
!4832 = !DILocation(line: 1721, column: 9, scope: !4829)
!4833 = !DILocation(line: 1722, column: 16, scope: !4829)
!4834 = !DILocation(line: 1723, column: 9, scope: !4829)
!4835 = !DILocation(line: 1725, column: 9, scope: !4829)
!4836 = !DILocation(line: 0, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4798, file: !940, line: 1649, column: 5)
!4838 = !DILocation(line: 1731, column: 1, scope: !4786)
!4839 = distinct !DISubprogram(name: "RiemersmaDither", scope: !940, file: !940, line: 1733, type: !4840, scopeLine: 1735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4842)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!575, !652, !1306, !938, !4789}
!4842 = !{!4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4855, !4856, !4857, !4858, !4861}
!4843 = !DILocalVariable(name: "image", arg: 1, scope: !4839, file: !940, line: 1733, type: !652)
!4844 = !DILocalVariable(name: "image_view", arg: 2, scope: !4839, file: !940, line: 1733, type: !1306)
!4845 = !DILocalVariable(name: "cube_info", arg: 3, scope: !4839, file: !940, line: 1734, type: !938)
!4846 = !DILocalVariable(name: "direction", arg: 4, scope: !4839, file: !940, line: 1734, type: !4789)
!4847 = !DILocalVariable(name: "proceed", scope: !4839, file: !940, line: 1739, type: !575)
!4848 = !DILocalVariable(name: "color", scope: !4839, file: !940, line: 1742, type: !956)
!4849 = !DILocalVariable(name: "pixel", scope: !4839, file: !940, line: 1743, type: !956)
!4850 = !DILocalVariable(name: "p", scope: !4839, file: !940, line: 1746, type: !938)
!4851 = !DILocalVariable(name: "index", scope: !4839, file: !940, line: 1749, type: !570)
!4852 = !DILocalVariable(name: "exception", scope: !4853, file: !940, line: 1756, type: !1099)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !940, line: 1754, column: 5)
!4854 = distinct !DILexicalBlock(scope: !4839, file: !940, line: 1752, column: 7)
!4855 = !DILocalVariable(name: "indexes", scope: !4853, file: !940, line: 1759, type: !1318)
!4856 = !DILocalVariable(name: "q", scope: !4853, file: !940, line: 1762, type: !1320)
!4857 = !DILocalVariable(name: "i", scope: !4853, file: !940, line: 1765, type: !640)
!4858 = !DILocalVariable(name: "node_info", scope: !4859, file: !940, line: 1793, type: !944)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !940, line: 1791, column: 9)
!4860 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1790, column: 11)
!4861 = !DILocalVariable(name: "id", scope: !4859, file: !940, line: 1796, type: !570)
!4862 = !DILocation(line: 0, scope: !4839)
!4863 = !DILocation(line: 1752, column: 11, scope: !4854)
!4864 = !{!2168, !1052, i64 464}
!4865 = !DILocation(line: 1752, column: 13, scope: !4854)
!4866 = !DILocation(line: 1752, column: 19, scope: !4854)
!4867 = !DILocation(line: 1752, column: 47, scope: !4854)
!4868 = !DILocation(line: 1752, column: 28, scope: !4854)
!4869 = !DILocation(line: 1752, column: 56, scope: !4854)
!4870 = !DILocation(line: 1753, column: 11, scope: !4854)
!4871 = !{!2168, !1052, i64 472}
!4872 = !DILocation(line: 1753, column: 13, scope: !4854)
!4873 = !DILocation(line: 1753, column: 19, scope: !4854)
!4874 = !DILocation(line: 1753, column: 47, scope: !4854)
!4875 = !DILocation(line: 1753, column: 28, scope: !4854)
!4876 = !DILocation(line: 1752, column: 7, scope: !4839)
!4877 = !DILocation(line: 1770, column: 26, scope: !4853)
!4878 = !DILocation(line: 0, scope: !4853)
!4879 = !DILocation(line: 1771, column: 9, scope: !4853)
!4880 = !DILocation(line: 1772, column: 13, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1772, column: 11)
!4882 = !DILocation(line: 1772, column: 11, scope: !4853)
!4883 = !DILocation(line: 1774, column: 15, scope: !4853)
!4884 = !DILocation(line: 1775, column: 7, scope: !4853)
!4885 = !DILocation(line: 0, scope: !2433, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 1775, column: 7, scope: !4853)
!4887 = !DILocation(line: 440, column: 35, scope: !2432, inlinedAt: !4886)
!4888 = !DILocation(line: 0, scope: !2432, inlinedAt: !4886)
!4889 = !DILocation(line: 440, column: 51, scope: !2432, inlinedAt: !4886)
!4890 = !DILocation(line: 441, column: 23, scope: !2432, inlinedAt: !4886)
!4891 = !DILocation(line: 440, column: 7, scope: !2433, inlinedAt: !4886)
!4892 = !DILocation(line: 449, column: 53, scope: !2433, inlinedAt: !4886)
!4893 = !DILocation(line: 449, column: 40, scope: !2433, inlinedAt: !4886)
!4894 = !DILocation(line: 449, column: 39, scope: !2433, inlinedAt: !4886)
!4895 = !DILocation(line: 449, column: 9, scope: !2433, inlinedAt: !4886)
!4896 = !DILocation(line: 450, column: 26, scope: !2433, inlinedAt: !4886)
!4897 = !DILocation(line: 450, column: 25, scope: !2433, inlinedAt: !4886)
!4898 = !DILocation(line: 451, column: 28, scope: !2433, inlinedAt: !4886)
!4899 = !DILocation(line: 451, column: 27, scope: !2433, inlinedAt: !4886)
!4900 = !DILocation(line: 452, column: 27, scope: !2433, inlinedAt: !4886)
!4901 = !DILocation(line: 452, column: 26, scope: !2433, inlinedAt: !4886)
!4902 = !DILocation(line: 453, column: 24, scope: !2433, inlinedAt: !4886)
!4903 = !DILocation(line: 1781, column: 13, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !940, line: 1777, column: 7)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !940, line: 1776, column: 7)
!4906 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1776, column: 7)
!4907 = !DILocation(line: 1776, column: 7, scope: !4906)
!4908 = !DILocation(line: 443, column: 41, scope: !2452, inlinedAt: !4886)
!4909 = !DILocation(line: 443, column: 24, scope: !2452, inlinedAt: !4886)
!4910 = !DILocation(line: 444, column: 43, scope: !2452, inlinedAt: !4886)
!4911 = !DILocation(line: 444, column: 26, scope: !2452, inlinedAt: !4886)
!4912 = !DILocation(line: 445, column: 42, scope: !2452, inlinedAt: !4886)
!4913 = !DILocation(line: 445, column: 25, scope: !2452, inlinedAt: !4886)
!4914 = !DILocation(line: 1778, column: 20, scope: !4904)
!4915 = !DILocation(line: 1778, column: 34, scope: !4904)
!4916 = !DILocation(line: 1778, column: 46, scope: !4904)
!4917 = !DILocation(line: 1778, column: 18, scope: !4904)
!4918 = !DILocation(line: 1779, column: 48, scope: !4904)
!4919 = !DILocation(line: 1779, column: 20, scope: !4904)
!4920 = !DILocation(line: 1780, column: 47, scope: !4904)
!4921 = !DILocation(line: 1780, column: 19, scope: !4904)
!4922 = !DILocation(line: 1776, column: 40, scope: !4905)
!4923 = !DILocation(line: 1776, column: 19, scope: !4905)
!4924 = distinct !{!4924, !4907, !4925, !1374, !1375}
!4925 = !DILocation(line: 1783, column: 7, scope: !4906)
!4926 = !DILocation(line: 1782, column: 52, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4904, file: !940, line: 1781, column: 13)
!4928 = !DILocation(line: 1782, column: 24, scope: !4927)
!4929 = !DILocation(line: 0, scope: !2490, inlinedAt: !4930)
!4930 = distinct !DILocation(line: 1784, column: 34, scope: !4853)
!4931 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !4930)
!4932 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !4930)
!4933 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !4930)
!4934 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !4930)
!4935 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !4930)
!4936 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !4930)
!4937 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !4930)
!4938 = !DILocation(line: 1784, column: 17, scope: !4853)
!4939 = !DILocation(line: 0, scope: !2490, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 1785, column: 36, scope: !4853)
!4941 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !4940)
!4942 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !4940)
!4943 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !4940)
!4944 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !4940)
!4945 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !4940)
!4946 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !4940)
!4947 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !4940)
!4948 = !DILocation(line: 1785, column: 19, scope: !4853)
!4949 = !DILocation(line: 0, scope: !2490, inlinedAt: !4950)
!4950 = distinct !DILocation(line: 1786, column: 35, scope: !4853)
!4951 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !4950)
!4952 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !4950)
!4953 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !4950)
!4954 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !4950)
!4955 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !4950)
!4956 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !4950)
!4957 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !4950)
!4958 = !DILocation(line: 1786, column: 18, scope: !4853)
!4959 = !DILocation(line: 1787, column: 11, scope: !4853)
!4960 = !DILocation(line: 0, scope: !2490, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 1788, column: 40, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1787, column: 11)
!4963 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !4961)
!4964 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !4961)
!4965 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !4961)
!4966 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !4961)
!4967 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !4961)
!4968 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !4961)
!4969 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !4961)
!4970 = !DILocation(line: 1788, column: 23, scope: !4962)
!4971 = !DILocation(line: 1788, column: 9, scope: !4962)
!4972 = !DILocation(line: 0, scope: !3534, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 1789, column: 9, scope: !4853)
!4974 = !DILocation(line: 0, scope: !2490, inlinedAt: !4975)
!4975 = distinct !DILocation(line: 1445, column: 21, scope: !3534, inlinedAt: !4973)
!4976 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !4975)
!4977 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !4975)
!4978 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !4975)
!4979 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !4975)
!4980 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !4975)
!4981 = !DILocation(line: 0, scope: !2500, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 1445, column: 21, scope: !3534, inlinedAt: !4973)
!4983 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !4982)
!4984 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !4982)
!4985 = !DILocation(line: 1445, column: 21, scope: !3534, inlinedAt: !4973)
!4986 = !DILocation(line: 0, scope: !2490, inlinedAt: !4987)
!4987 = distinct !DILocation(line: 1446, column: 5, scope: !3534, inlinedAt: !4973)
!4988 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !4987)
!4989 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !4987)
!4990 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !4987)
!4991 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !4987)
!4992 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !4987)
!4993 = !DILocation(line: 0, scope: !2500, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 1446, column: 5, scope: !3534, inlinedAt: !4973)
!4995 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !4994)
!4996 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !4994)
!4997 = !DILocation(line: 1446, column: 5, scope: !3534, inlinedAt: !4973)
!4998 = !DILocation(line: 1445, column: 74, scope: !3534, inlinedAt: !4973)
!4999 = !DILocation(line: 0, scope: !2490, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 1447, column: 5, scope: !3534, inlinedAt: !4973)
!5001 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !5000)
!5002 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !5000)
!5003 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !5000)
!5004 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !5000)
!5005 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !5000)
!5006 = !DILocation(line: 0, scope: !2500, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 1447, column: 5, scope: !3534, inlinedAt: !4973)
!5008 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !5007)
!5009 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !5007)
!5010 = !DILocation(line: 1447, column: 5, scope: !3534, inlinedAt: !4973)
!5011 = !DILocation(line: 1446, column: 62, scope: !3534, inlinedAt: !4973)
!5012 = !DILocation(line: 1448, column: 7, scope: !3534, inlinedAt: !4973)
!5013 = !DILocation(line: 0, scope: !2490, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 1449, column: 13, scope: !3583, inlinedAt: !4973)
!5015 = !DILocation(line: 458, column: 13, scope: !3492, inlinedAt: !5014)
!5016 = !DILocation(line: 458, column: 7, scope: !2490, inlinedAt: !5014)
!5017 = !DILocation(line: 460, column: 13, scope: !2987, inlinedAt: !5014)
!5018 = !DILocation(line: 460, column: 7, scope: !2490, inlinedAt: !5014)
!5019 = !DILocation(line: 463, column: 26, scope: !2490, inlinedAt: !5014)
!5020 = !DILocation(line: 463, column: 10, scope: !2490, inlinedAt: !5014)
!5021 = !DILocation(line: 463, column: 3, scope: !2490, inlinedAt: !5014)
!5022 = !DILocation(line: 0, scope: !2500, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 1449, column: 13, scope: !3583, inlinedAt: !4973)
!5024 = !DILocation(line: 117, column: 61, scope: !2500, inlinedAt: !5023)
!5025 = !DILocation(line: 117, column: 43, scope: !2500, inlinedAt: !5023)
!5026 = !DILocation(line: 1449, column: 13, scope: !3583, inlinedAt: !4973)
!5027 = !DILocation(line: 1449, column: 11, scope: !3583, inlinedAt: !4973)
!5028 = !DILocation(line: 1449, column: 5, scope: !3583, inlinedAt: !4973)
!5029 = !DILocation(line: 1790, column: 14, scope: !4860)
!5030 = !DILocation(line: 1790, column: 11, scope: !4860)
!5031 = !DILocation(line: 1790, column: 23, scope: !4860)
!5032 = !DILocation(line: 1790, column: 11, scope: !4853)
!5033 = !DILocation(line: 1801, column: 24, scope: !4859)
!5034 = !DILocation(line: 0, scope: !4859)
!5035 = !DILocation(line: 479, column: 7, scope: !2478, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 1804, column: 16, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !940, line: 1803, column: 11)
!5038 = distinct !DILexicalBlock(scope: !5039, file: !940, line: 1802, column: 11)
!5039 = distinct !DILexicalBlock(scope: !4859, file: !940, line: 1802, column: 11)
!5040 = !DILocation(line: 1802, column: 11, scope: !5039)
!5041 = !DILocation(line: 0, scope: !2478, inlinedAt: !5036)
!5042 = !DILocation(line: 0, scope: !2490, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 475, column: 37, scope: !2478, inlinedAt: !5036)
!5044 = !DILocation(line: 0, scope: !2500, inlinedAt: !5045)
!5045 = distinct !DILocation(line: 475, column: 18, scope: !2478, inlinedAt: !5036)
!5046 = !DILocation(line: 475, column: 69, scope: !2478, inlinedAt: !5036)
!5047 = !DILocation(line: 475, column: 79, scope: !2478, inlinedAt: !5036)
!5048 = !DILocation(line: 0, scope: !2490, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 476, column: 34, scope: !2478, inlinedAt: !5036)
!5050 = !DILocation(line: 0, scope: !2500, inlinedAt: !5051)
!5051 = distinct !DILocation(line: 476, column: 15, scope: !2478, inlinedAt: !5036)
!5052 = !DILocation(line: 476, column: 68, scope: !2478, inlinedAt: !5036)
!5053 = !DILocation(line: 477, column: 11, scope: !2478, inlinedAt: !5036)
!5054 = !DILocation(line: 476, column: 11, scope: !2478, inlinedAt: !5036)
!5055 = !DILocation(line: 0, scope: !2490, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 477, column: 39, scope: !2478, inlinedAt: !5036)
!5057 = !DILocation(line: 0, scope: !2500, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 477, column: 20, scope: !2478, inlinedAt: !5036)
!5059 = !DILocation(line: 477, column: 72, scope: !2478, inlinedAt: !5036)
!5060 = !DILocation(line: 478, column: 20, scope: !2478, inlinedAt: !5036)
!5061 = !DILocation(line: 477, column: 16, scope: !2478, inlinedAt: !5036)
!5062 = !DILocation(line: 1805, column: 17, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5037, file: !940, line: 1805, column: 17)
!5064 = !DILocation(line: 1805, column: 38, scope: !5063)
!5065 = !DILocation(line: 1805, column: 17, scope: !5037)
!5066 = !DILocation(line: 1802, column: 64, scope: !5038)
!5067 = !DILocation(line: 1802, column: 54, scope: !5038)
!5068 = distinct !{!5068, !5040, !5069, !1374, !1375}
!5069 = !DILocation(line: 1808, column: 11, scope: !5039)
!5070 = !DILocation(line: 0, scope: !2490, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 480, column: 30, scope: !2540, inlinedAt: !5036)
!5072 = !DILocation(line: 0, scope: !2500, inlinedAt: !5073)
!5073 = distinct !DILocation(line: 480, column: 11, scope: !2540, inlinedAt: !5036)
!5074 = !DILocation(line: 480, column: 66, scope: !2540, inlinedAt: !5036)
!5075 = !DILocation(line: 481, column: 12, scope: !2540, inlinedAt: !5036)
!5076 = !DILocation(line: 480, column: 7, scope: !2540, inlinedAt: !5036)
!5077 = !DILocation(line: 1812, column: 14, scope: !4859)
!5078 = !DILocation(line: 1812, column: 21, scope: !4859)
!5079 = !DILocation(line: 1813, column: 14, scope: !4859)
!5080 = !DILocation(line: 1813, column: 22, scope: !4859)
!5081 = !DILocation(line: 1815, column: 43, scope: !4859)
!5082 = !DILocation(line: 1815, column: 11, scope: !4859)
!5083 = !DILocation(line: 1816, column: 36, scope: !4859)
!5084 = !DILocation(line: 1816, column: 14, scope: !4859)
!5085 = !DILocation(line: 1816, column: 11, scope: !4859)
!5086 = !DILocation(line: 1816, column: 22, scope: !4859)
!5087 = !DILocation(line: 1817, column: 9, scope: !4859)
!5088 = !DILocation(line: 1821, column: 25, scope: !4853)
!5089 = !DILocation(line: 1822, column: 18, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1822, column: 11)
!5091 = !DILocation(line: 1822, column: 32, scope: !5090)
!5092 = !DILocation(line: 1822, column: 11, scope: !4853)
!5093 = !DILocation(line: 1823, column: 18, scope: !5090)
!5094 = !DILocation(line: 1823, column: 17, scope: !5090)
!5095 = !DILocation(line: 1823, column: 9, scope: !5090)
!5096 = !DILocation(line: 1824, column: 22, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1824, column: 11)
!5098 = !DILocation(line: 1824, column: 37, scope: !5097)
!5099 = !DILocation(line: 1824, column: 51, scope: !5097)
!5100 = !DILocation(line: 1824, column: 11, scope: !4853)
!5101 = !DILocation(line: 1826, column: 11, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5103, file: !940, line: 1826, column: 11)
!5103 = distinct !DILexicalBlock(scope: !5097, file: !940, line: 1825, column: 9)
!5104 = !DILocation(line: 1827, column: 26, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5103, file: !940, line: 1827, column: 15)
!5106 = !DILocation(line: 1827, column: 42, scope: !5105)
!5107 = !DILocation(line: 1827, column: 15, scope: !5103)
!5108 = !DILocation(line: 1828, column: 13, scope: !5105)
!5109 = !DILocation(line: 1830, column: 11, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1830, column: 11)
!5111 = !DILocation(line: 1830, column: 62, scope: !5110)
!5112 = !DILocation(line: 1830, column: 11, scope: !4853)
!5113 = !DILocation(line: 1835, column: 34, scope: !4853)
!5114 = !DILocation(line: 1835, column: 48, scope: !4853)
!5115 = !DILocation(line: 1835, column: 14, scope: !4853)
!5116 = !DILocation(line: 1837, column: 44, scope: !4853)
!5117 = !DILocation(line: 1837, column: 52, scope: !4853)
!5118 = !DILocation(line: 1837, column: 7, scope: !4853)
!5119 = !DILocation(line: 0, scope: !2433, inlinedAt: !5120)
!5120 = distinct !DILocation(line: 1837, column: 7, scope: !4853)
!5121 = !DILocation(line: 440, column: 35, scope: !2432, inlinedAt: !5120)
!5122 = !DILocation(line: 0, scope: !2432, inlinedAt: !5120)
!5123 = !DILocation(line: 440, column: 51, scope: !2432, inlinedAt: !5120)
!5124 = !DILocation(line: 441, column: 23, scope: !2432, inlinedAt: !5120)
!5125 = !DILocation(line: 440, column: 7, scope: !2433, inlinedAt: !5120)
!5126 = !DILocation(line: 449, column: 53, scope: !2433, inlinedAt: !5120)
!5127 = !DILocation(line: 449, column: 40, scope: !2433, inlinedAt: !5120)
!5128 = !DILocation(line: 449, column: 39, scope: !2433, inlinedAt: !5120)
!5129 = !DILocation(line: 449, column: 9, scope: !2433, inlinedAt: !5120)
!5130 = !DILocation(line: 450, column: 26, scope: !2433, inlinedAt: !5120)
!5131 = !DILocation(line: 450, column: 25, scope: !2433, inlinedAt: !5120)
!5132 = !DILocation(line: 451, column: 28, scope: !2433, inlinedAt: !5120)
!5133 = !DILocation(line: 451, column: 27, scope: !2433, inlinedAt: !5120)
!5134 = !DILocation(line: 452, column: 27, scope: !2433, inlinedAt: !5120)
!5135 = !DILocation(line: 452, column: 26, scope: !2433, inlinedAt: !5120)
!5136 = !DILocation(line: 453, column: 24, scope: !2433, inlinedAt: !5120)
!5137 = !DILocation(line: 1838, column: 49, scope: !4853)
!5138 = !DILocation(line: 1838, column: 7, scope: !4853)
!5139 = !DILocation(line: 1838, column: 39, scope: !4853)
!5140 = !DILocation(line: 1839, column: 53, scope: !4853)
!5141 = !DILocation(line: 1839, column: 36, scope: !4853)
!5142 = !DILocation(line: 1839, column: 41, scope: !4853)
!5143 = !DILocation(line: 1840, column: 51, scope: !4853)
!5144 = !DILocation(line: 1840, column: 36, scope: !4853)
!5145 = !DILocation(line: 1840, column: 40, scope: !4853)
!5146 = !DILocation(line: 1841, column: 11, scope: !4853)
!5147 = !DILocation(line: 443, column: 41, scope: !2452, inlinedAt: !5120)
!5148 = !DILocation(line: 443, column: 24, scope: !2452, inlinedAt: !5120)
!5149 = !DILocation(line: 444, column: 43, scope: !2452, inlinedAt: !5120)
!5150 = !DILocation(line: 444, column: 26, scope: !2452, inlinedAt: !5120)
!5151 = !DILocation(line: 445, column: 42, scope: !2452, inlinedAt: !5120)
!5152 = !DILocation(line: 445, column: 25, scope: !2452, inlinedAt: !5120)
!5153 = !DILocation(line: 1842, column: 59, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1841, column: 11)
!5155 = !DILocation(line: 1842, column: 38, scope: !5154)
!5156 = !DILocation(line: 1842, column: 45, scope: !5154)
!5157 = !DILocation(line: 1842, column: 9, scope: !5154)
!5158 = !DILocation(line: 1843, column: 56, scope: !4853)
!5159 = !DILocation(line: 1843, column: 66, scope: !4853)
!5160 = !DILocation(line: 0, scope: !1387, inlinedAt: !5161)
!5161 = distinct !DILocation(line: 1843, column: 15, scope: !4853)
!5162 = !DILocation(line: 30, column: 3, scope: !1387, inlinedAt: !5161)
!5163 = !DILocation(line: 31, column: 5, scope: !1387, inlinedAt: !5161)
!5164 = !DILocation(line: 33, column: 14, scope: !1401, inlinedAt: !5161)
!5165 = !DILocation(line: 33, column: 31, scope: !1401, inlinedAt: !5161)
!5166 = !DILocation(line: 33, column: 7, scope: !1387, inlinedAt: !5161)
!5167 = !DILocation(line: 37, column: 1, scope: !1387, inlinedAt: !5161)
!5168 = !DILocation(line: 1844, column: 11, scope: !4853)
!5169 = !DILocation(line: 35, column: 70, scope: !1387, inlinedAt: !5161)
!5170 = !DILocation(line: 35, column: 10, scope: !1387, inlinedAt: !5161)
!5171 = !DILocation(line: 36, column: 17, scope: !1387, inlinedAt: !5161)
!5172 = !DILocation(line: 36, column: 63, scope: !1387, inlinedAt: !5161)
!5173 = !DILocation(line: 36, column: 10, scope: !1387, inlinedAt: !5161)
!5174 = !DILocation(line: 1844, column: 19, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !4853, file: !940, line: 1844, column: 11)
!5176 = !DILocation(line: 1846, column: 16, scope: !4853)
!5177 = !DILocation(line: 1848, column: 3, scope: !4839)
!5178 = !DILocation(line: 1851, column: 31, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !4839, file: !940, line: 1849, column: 3)
!5180 = !DILocation(line: 1852, column: 27, scope: !5179)
!5181 = !DILocation(line: 1852, column: 32, scope: !5179)
!5182 = !DILocation(line: 1853, column: 27, scope: !5179)
!5183 = !DILocation(line: 1853, column: 32, scope: !5179)
!5184 = !DILocation(line: 0, scope: !5179)
!5185 = !DILocation(line: 1856, column: 1, scope: !4839)
!5186 = !DISubprogram(name: "GetMagickResourceLimit", scope: !553, file: !553, line: 53, type: !5187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!764, !5189}
!5189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5190)
!5190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !553, line: 36, baseType: !552)
!5191 = !DISubprogram(name: "CopyMagickMemory", scope: !990, file: !990, line: 44, type: !5192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!582, !582, !856, !858}
!5194 = !DISubprogram(name: "RelinquishVirtualMemory", scope: !990, file: !990, line: 35, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!988, !988}
!5197 = distinct !DISubprogram(name: "QuantizeErrorFlatten", scope: !940, file: !940, line: 2925, type: !5198, scopeLine: 2927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5200)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!570, !854, !2436, !3169, !1886, !1007}
!5200 = !{!5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208}
!5201 = !DILocalVariable(name: "image", arg: 1, scope: !5197, file: !940, line: 2925, type: !854)
!5202 = !DILocalVariable(name: "cube_info", arg: 2, scope: !5197, file: !940, line: 2925, type: !2436)
!5203 = !DILocalVariable(name: "node_info", arg: 3, scope: !5197, file: !940, line: 2926, type: !3169)
!5204 = !DILocalVariable(name: "offset", arg: 4, scope: !5197, file: !940, line: 2926, type: !1886)
!5205 = !DILocalVariable(name: "quantize_error", arg: 5, scope: !5197, file: !940, line: 2926, type: !1007)
!5206 = !DILocalVariable(name: "i", scope: !5197, file: !940, line: 2929, type: !640)
!5207 = !DILocalVariable(name: "n", scope: !5197, file: !940, line: 2932, type: !570)
!5208 = !DILocalVariable(name: "number_children", scope: !5197, file: !940, line: 2933, type: !570)
!5209 = !DILocation(line: 0, scope: !5197)
!5210 = !DILocation(line: 2935, column: 38, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5197, file: !940, line: 2935, column: 7)
!5212 = !DILocation(line: 2935, column: 14, scope: !5211)
!5213 = !DILocation(line: 2935, column: 7, scope: !5197)
!5214 = !DILocation(line: 2937, column: 37, scope: !5197)
!5215 = !DILocation(line: 2937, column: 3, scope: !5197)
!5216 = !DILocation(line: 2937, column: 25, scope: !5197)
!5217 = !DILocation(line: 2939, column: 30, scope: !5197)
!5218 = !DILocation(line: 2939, column: 46, scope: !5197)
!5219 = !DILocation(line: 2939, column: 19, scope: !5197)
!5220 = !DILocation(line: 2940, column: 3, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5197, file: !940, line: 2940, column: 3)
!5222 = !DILocation(line: 2941, column: 9, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !940, line: 2941, column: 9)
!5224 = distinct !DILexicalBlock(scope: !5221, file: !940, line: 2940, column: 3)
!5225 = !DILocation(line: 2941, column: 29, scope: !5223)
!5226 = !DILocation(line: 2941, column: 9, scope: !5224)
!5227 = !DILocation(line: 2942, column: 73, scope: !5223)
!5228 = !DILocation(line: 2942, column: 10, scope: !5223)
!5229 = !DILocation(line: 2942, column: 8, scope: !5223)
!5230 = !DILocation(line: 2942, column: 7, scope: !5223)
!5231 = !DILocation(line: 2940, column: 46, scope: !5224)
!5232 = !DILocation(line: 2940, column: 15, scope: !5224)
!5233 = distinct !{!5233, !5220, !5234, !1374, !1375}
!5234 = !DILocation(line: 2943, column: 23, scope: !5221)
!5235 = !DILocation(line: 2945, column: 1, scope: !5197)
!5236 = !DISubprogram(name: "qsort", scope: !5237, file: !5237, line: 830, type: !5238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5237 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!5238 = !DISubroutineType(types: !5239)
!5239 = !{null, !582, !570, !570, !5240}
!5240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !5237, line: 808, baseType: !5241)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!453, !856, !856}
!5244 = distinct !DISubprogram(name: "MagickRealTypeCompare", scope: !940, file: !940, line: 3059, type: !5242, scopeLine: 3060, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5245)
!5245 = !{!5246, !5247, !5248, !5249}
!5246 = !DILocalVariable(name: "error_p", arg: 1, scope: !5244, file: !940, line: 3059, type: !856)
!5247 = !DILocalVariable(name: "error_q", arg: 2, scope: !5244, file: !940, line: 3059, type: !856)
!5248 = !DILocalVariable(name: "p", scope: !5244, file: !940, line: 3062, type: !1007)
!5249 = !DILocalVariable(name: "q", scope: !5244, file: !940, line: 3063, type: !1007)
!5250 = !DILocation(line: 0, scope: !5244)
!5251 = !DILocation(line: 3067, column: 7, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5244, file: !940, line: 3067, column: 7)
!5253 = !DILocation(line: 3067, column: 12, scope: !5252)
!5254 = !DILocation(line: 3067, column: 10, scope: !5252)
!5255 = !DILocation(line: 3067, column: 7, scope: !5244)
!5256 = !DILocation(line: 3069, column: 24, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5244, file: !940, line: 3069, column: 7)
!5258 = !DILocation(line: 3069, column: 7, scope: !5257)
!5259 = !DILocation(line: 3069, column: 30, scope: !5257)
!5260 = !DILocation(line: 3072, column: 1, scope: !5244)
!5261 = distinct !DISubprogram(name: "Reduce", scope: !940, file: !940, line: 2974, type: !4380, scopeLine: 2976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5262)
!5262 = !{!5263, !5264, !5265, !5266, !5267}
!5263 = !DILocalVariable(name: "image", arg: 1, scope: !5261, file: !940, line: 2974, type: !854)
!5264 = !DILocalVariable(name: "cube_info", arg: 2, scope: !5261, file: !940, line: 2974, type: !938)
!5265 = !DILocalVariable(name: "node_info", arg: 3, scope: !5261, file: !940, line: 2975, type: !3169)
!5266 = !DILocalVariable(name: "i", scope: !5261, file: !940, line: 2978, type: !640)
!5267 = !DILocalVariable(name: "number_children", scope: !5261, file: !940, line: 2981, type: !570)
!5268 = !DILocation(line: 0, scope: !5261)
!5269 = !DILocation(line: 2986, column: 30, scope: !5261)
!5270 = !DILocation(line: 2986, column: 46, scope: !5261)
!5271 = !DILocation(line: 2986, column: 19, scope: !5261)
!5272 = !DILocation(line: 2987, column: 3, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5261, file: !940, line: 2987, column: 3)
!5274 = !DILocation(line: 2988, column: 9, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5276, file: !940, line: 2988, column: 9)
!5276 = distinct !DILexicalBlock(scope: !5273, file: !940, line: 2987, column: 3)
!5277 = !DILocation(line: 2988, column: 29, scope: !5275)
!5278 = !DILocation(line: 2988, column: 9, scope: !5276)
!5279 = !DILocation(line: 2989, column: 7, scope: !5275)
!5280 = !DILocation(line: 2987, column: 45, scope: !5276)
!5281 = !DILocation(line: 2987, column: 15, scope: !5276)
!5282 = distinct !{!5282, !5272, !5283, !1374, !1375}
!5283 = !DILocation(line: 2989, column: 49, scope: !5273)
!5284 = !DILocation(line: 2990, column: 18, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5261, file: !940, line: 2990, column: 7)
!5286 = !DILocation(line: 2990, column: 47, scope: !5285)
!5287 = !DILocation(line: 2990, column: 33, scope: !5285)
!5288 = !DILocation(line: 2990, column: 7, scope: !5261)
!5289 = !DILocation(line: 2991, column: 5, scope: !5285)
!5290 = !DILocation(line: 2997, column: 22, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5292, file: !940, line: 2997, column: 11)
!5292 = distinct !DILexicalBlock(scope: !5285, file: !940, line: 2993, column: 5)
!5293 = !DILocation(line: 2997, column: 36, scope: !5291)
!5294 = !DILocation(line: 2997, column: 11, scope: !5292)
!5295 = !DILocation(line: 2998, column: 20, scope: !5291)
!5296 = !DILocation(line: 2998, column: 26, scope: !5291)
!5297 = !DILocation(line: 2998, column: 9, scope: !5291)
!5298 = !DILocation(line: 2999, column: 50, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5292, file: !940, line: 2999, column: 11)
!5300 = !DILocation(line: 2999, column: 37, scope: !5299)
!5301 = !DILocation(line: 2999, column: 11, scope: !5292)
!5302 = !DILocation(line: 3000, column: 34, scope: !5299)
!5303 = !DILocation(line: 3000, column: 9, scope: !5299)
!5304 = !DILocation(line: 3002, column: 1, scope: !5261)
!5305 = distinct !DISubprogram(name: "IntensityCompare", scope: !940, file: !940, line: 3296, type: !5242, scopeLine: 3297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5306)
!5306 = !{!5307, !5308, !5309, !5310, !5311}
!5307 = !DILocalVariable(name: "x", arg: 1, scope: !5305, file: !940, line: 3296, type: !856)
!5308 = !DILocalVariable(name: "y", arg: 2, scope: !5305, file: !940, line: 3296, type: !856)
!5309 = !DILocalVariable(name: "color_1", scope: !5305, file: !940, line: 3299, type: !669)
!5310 = !DILocalVariable(name: "color_2", scope: !5305, file: !940, line: 3300, type: !669)
!5311 = !DILocalVariable(name: "intensity", scope: !5305, file: !940, line: 3303, type: !453)
!5312 = !DILocation(line: 0, scope: !5305)
!5313 = !DILocalVariable(name: "pixel", arg: 1, scope: !5314, file: !4042, line: 174, type: !930)
!5314 = distinct !DISubprogram(name: "PixelPacketIntensity", scope: !4042, file: !4042, line: 174, type: !5315, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5317)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!624, !930}
!5317 = !{!5313, !5318}
!5318 = !DILocalVariable(name: "intensity", scope: !5314, file: !4042, line: 177, type: !935)
!5319 = !DILocation(line: 0, scope: !5314, inlinedAt: !5320)
!5320 = distinct !DILocation(line: 3307, column: 13, scope: !5305)
!5321 = !DILocation(line: 179, column: 15, scope: !5322, inlinedAt: !5320)
!5322 = distinct !DILexicalBlock(scope: !5314, file: !4042, line: 179, column: 7)
!5323 = !DILocation(line: 179, column: 30, scope: !5322, inlinedAt: !5320)
!5324 = !DILocation(line: 179, column: 20, scope: !5322, inlinedAt: !5320)
!5325 = !DILocation(line: 179, column: 37, scope: !5322, inlinedAt: !5320)
!5326 = !DILocation(line: 181, column: 40, scope: !5314, inlinedAt: !5320)
!5327 = !DILocation(line: 181, column: 60, scope: !5314, inlinedAt: !5320)
!5328 = !DILocation(line: 181, column: 59, scope: !5314, inlinedAt: !5320)
!5329 = !DILocation(line: 181, column: 50, scope: !5314, inlinedAt: !5320)
!5330 = !DILocation(line: 182, column: 14, scope: !5314, inlinedAt: !5320)
!5331 = !DILocation(line: 181, column: 72, scope: !5314, inlinedAt: !5320)
!5332 = !DILocation(line: 181, column: 13, scope: !5314, inlinedAt: !5320)
!5333 = !DILocation(line: 0, scope: !4552, inlinedAt: !5334)
!5334 = distinct !DILocation(line: 183, column: 10, scope: !5314, inlinedAt: !5320)
!5335 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !5334)
!5336 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !5334)
!5337 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !5334)
!5338 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !5334)
!5339 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !5334)
!5340 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !5334)
!5341 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !5334)
!5342 = !DILocation(line: 0, scope: !5314, inlinedAt: !5343)
!5343 = distinct !DILocation(line: 3307, column: 49, scope: !5305)
!5344 = !DILocation(line: 179, column: 15, scope: !5322, inlinedAt: !5343)
!5345 = !DILocation(line: 179, column: 30, scope: !5322, inlinedAt: !5343)
!5346 = !DILocation(line: 179, column: 20, scope: !5322, inlinedAt: !5343)
!5347 = !DILocation(line: 179, column: 37, scope: !5322, inlinedAt: !5343)
!5348 = !DILocation(line: 181, column: 40, scope: !5314, inlinedAt: !5343)
!5349 = !DILocation(line: 181, column: 60, scope: !5314, inlinedAt: !5343)
!5350 = !DILocation(line: 181, column: 59, scope: !5314, inlinedAt: !5343)
!5351 = !DILocation(line: 181, column: 50, scope: !5314, inlinedAt: !5343)
!5352 = !DILocation(line: 182, column: 14, scope: !5314, inlinedAt: !5343)
!5353 = !DILocation(line: 181, column: 72, scope: !5314, inlinedAt: !5343)
!5354 = !DILocation(line: 181, column: 13, scope: !5314, inlinedAt: !5343)
!5355 = !DILocation(line: 0, scope: !4552, inlinedAt: !5356)
!5356 = distinct !DILocation(line: 183, column: 10, scope: !5314, inlinedAt: !5343)
!5357 = !DILocation(line: 92, column: 13, scope: !4557, inlinedAt: !5356)
!5358 = !DILocation(line: 92, column: 7, scope: !4552, inlinedAt: !5356)
!5359 = !DILocation(line: 94, column: 13, scope: !4560, inlinedAt: !5356)
!5360 = !DILocation(line: 94, column: 7, scope: !4552, inlinedAt: !5356)
!5361 = !DILocation(line: 96, column: 26, scope: !4552, inlinedAt: !5356)
!5362 = !DILocation(line: 96, column: 10, scope: !4552, inlinedAt: !5356)
!5363 = !DILocation(line: 96, column: 3, scope: !4552, inlinedAt: !5356)
!5364 = !DILocation(line: 3307, column: 13, scope: !5305)
!5365 = !DILocation(line: 3307, column: 43, scope: !5305)
!5366 = !DILocation(line: 3307, column: 42, scope: !5305)
!5367 = !DILocation(line: 3308, column: 3, scope: !5305)
!5368 = !DISubprogram(name: "IsMonochromeImage", scope: !2145, file: !2145, line: 33, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
