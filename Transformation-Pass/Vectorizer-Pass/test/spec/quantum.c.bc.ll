; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/quantum.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/quantum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._QuantumInfo = type { i64, i64, i32, double, double, double, i64, i32, i32, i32, i64, ptr, i64, i32, %struct._QuantumState, ptr, i64 }
%struct._QuantumState = type { double, i32, i64, ptr }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/quantum.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"quantum:format\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"quantum:minimum\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"quantum:maximum\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"quantum:scale\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"quantum:polarity\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"min-is-white\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ResetQuantumState.mask = internal constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireQuantumInfo(ptr noundef %image_info, ptr noundef %image) local_unnamed_addr #0 !dbg !1009 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1013, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr %image, metadata !1014, metadata !DIExpression()), !dbg !1021
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 152) #12, !dbg !1022
  call void @llvm.dbg.value(metadata ptr %call, metadata !1016, metadata !DIExpression()), !dbg !1021
  %cmp = icmp eq ptr %call, null, !dbg !1023
  br i1 %cmp, label %if.then, label %if.end, !dbg !1024

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #13, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1020, metadata !DIExpression()), !dbg !1025
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #13, !dbg !1025
  %call1 = tail call ptr @__errno_location() #14, !dbg !1025
  %0 = load i32, ptr %call1, align 4, !dbg !1025, !tbaa !1026
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #13, !dbg !1025
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1017, metadata !DIExpression()), !dbg !1030
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 125, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #13, !dbg !1025
  %call4 = call ptr @DestroyString(ptr noundef %call2) #13, !dbg !1025
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1017, metadata !DIExpression()), !dbg !1030
  call void @CatchException(ptr noundef nonnull %exception) #13, !dbg !1025
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #13, !dbg !1025
  call void @MagickCoreTerminus() #13, !dbg !1025
  call void @_exit(i32 noundef 1) #15, !dbg !1025
  unreachable, !dbg !1025

if.end:                                           ; preds = %entry
  %signature = getelementptr inbounds %struct._QuantumInfo, ptr %call, i64 0, i32 16, !dbg !1031
  store i64 2880220587, ptr %signature, align 8, !dbg !1032, !tbaa !1033
  tail call void @GetQuantumInfo(ptr noundef %image_info, ptr noundef nonnull %call), !dbg !1039
  %cmp6 = icmp eq ptr %image, null, !dbg !1040
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !1042

if.end8:                                          ; preds = %if.end
  %depth = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !1043
  %1 = load i64, ptr %depth, align 8, !dbg !1043, !tbaa !1044
  %call9 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %image, ptr noundef nonnull %call, i64 noundef %1), !dbg !1057
  call void @llvm.dbg.value(metadata i32 %call9, metadata !1015, metadata !DIExpression()), !dbg !1021
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !1058
  %2 = load i32, ptr %endian, align 8, !dbg !1058, !tbaa !1059
  %endian10 = getelementptr inbounds %struct._QuantumInfo, ptr %call, i64 0, i32 13, !dbg !1060
  store i32 %2, ptr %endian10, align 8, !dbg !1061, !tbaa !1062
  %cmp11 = icmp eq i32 %call9, 0, !dbg !1063
  br i1 %cmp11, label %if.then12, label %cleanup, !dbg !1065

if.then12:                                        ; preds = %if.end8
  call void @llvm.dbg.value(metadata ptr %call, metadata !1066, metadata !DIExpression()) #13, !dbg !1071
  %pixels.i = getelementptr inbounds %struct._QuantumInfo, ptr %call, i64 0, i32 11, !dbg !1073
  %3 = load ptr, ptr %pixels.i, align 8, !dbg !1073, !tbaa !1075
  %cmp.not.i = icmp eq ptr %3, null, !dbg !1076
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1077

if.then.i:                                        ; preds = %if.then12
  call void @llvm.dbg.value(metadata ptr %call, metadata !1078, metadata !DIExpression()) #13, !dbg !1083
  call void @llvm.dbg.value(metadata i64 undef, metadata !1082, metadata !DIExpression()) #13, !dbg !1083
  call void @llvm.dbg.value(metadata i64 0, metadata !1081, metadata !DIExpression()) #13, !dbg !1083
  %number_threads.i.i = getelementptr inbounds %struct._QuantumInfo, ptr %call, i64 0, i32 10
  call void @llvm.dbg.value(metadata i64 0, metadata !1081, metadata !DIExpression()) #13, !dbg !1083
  %4 = load i64, ptr %number_threads.i.i, align 8, !dbg !1085, !tbaa !1088
  %cmp20.i.i = icmp sgt i64 %4, 0, !dbg !1089
  br i1 %cmp20.i.i, label %for.body.i.i, label %DestroyQuantumPixels.exit.i, !dbg !1090

for.body.i.i:                                     ; preds = %if.then.i, %for.inc.i.i
  %.pre.i27 = phi ptr [ %.pre.i, %for.inc.i.i ], [ %3, %if.then.i ]
  %5 = phi i64 [ %8, %for.inc.i.i ], [ %4, %if.then.i ]
  %i.021.i.i = phi i64 [ %inc.i.i, %for.inc.i.i ], [ 0, %if.then.i ]
  call void @llvm.dbg.value(metadata i64 %i.021.i.i, metadata !1081, metadata !DIExpression()) #13, !dbg !1083
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %.pre.i27, i64 %i.021.i.i, !dbg !1091
  %6 = load ptr, ptr %arrayidx.i.i, align 8, !dbg !1091, !tbaa !1093
  %cmp2.not.i.i = icmp eq ptr %6, null, !dbg !1094
  br i1 %cmp2.not.i.i, label %for.inc.i.i, label %if.then.i.i, !dbg !1095

if.then.i.i:                                      ; preds = %for.body.i.i
  %call.i.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #13, !dbg !1096
  %7 = load ptr, ptr %pixels.i, align 8, !dbg !1098, !tbaa !1075
  %arrayidx6.i.i = getelementptr inbounds ptr, ptr %7, i64 %i.021.i.i, !dbg !1099
  store ptr %call.i.i, ptr %arrayidx6.i.i, align 8, !dbg !1100, !tbaa !1093
  %.pre.i.i = load i64, ptr %number_threads.i.i, align 8, !dbg !1085, !tbaa !1088
  %.pre.i.pre = load ptr, ptr %pixels.i, align 8, !dbg !1083, !tbaa !1075
  br label %for.inc.i.i, !dbg !1101

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i
  %.pre.i = phi ptr [ %.pre.i27, %for.body.i.i ], [ %.pre.i.pre, %if.then.i.i ], !dbg !1083
  %8 = phi i64 [ %5, %for.body.i.i ], [ %.pre.i.i, %if.then.i.i ], !dbg !1085
  %inc.i.i = add nuw nsw i64 %i.021.i.i, 1, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !1081, metadata !DIExpression()) #13, !dbg !1083
  %cmp.i.i = icmp slt i64 %inc.i.i, %8, !dbg !1089
  br i1 %cmp.i.i, label %for.body.i.i, label %DestroyQuantumPixels.exit.i, !dbg !1090, !llvm.loop !1103

DestroyQuantumPixels.exit.i:                      ; preds = %for.inc.i.i, %if.then.i
  %9 = phi ptr [ %3, %if.then.i ], [ %.pre.i, %for.inc.i.i ], !dbg !1107
  %call8.i.i = tail call ptr @RelinquishMagickMemory(ptr noundef %9) #13, !dbg !1108
  store ptr %call8.i.i, ptr %pixels.i, align 8, !dbg !1109, !tbaa !1075
  br label %if.end.i, !dbg !1110

if.end.i:                                         ; preds = %DestroyQuantumPixels.exit.i, %if.then12
  %semaphore.i = getelementptr inbounds %struct._QuantumInfo, ptr %call, i64 0, i32 15, !dbg !1111
  %10 = load ptr, ptr %semaphore.i, align 8, !dbg !1111, !tbaa !1113
  %cmp1.not.i = icmp eq ptr %10, null, !dbg !1114
  br i1 %cmp1.not.i, label %DestroyQuantumInfo.exit, label %if.then2.i, !dbg !1115

if.then2.i:                                       ; preds = %if.end.i
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore.i) #13, !dbg !1116
  br label %DestroyQuantumInfo.exit, !dbg !1116

DestroyQuantumInfo.exit:                          ; preds = %if.end.i, %if.then2.i
  store i64 -2880220588, ptr %signature, align 8, !dbg !1117, !tbaa !1033
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #13, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1066, metadata !DIExpression()) #13, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1016, metadata !DIExpression()), !dbg !1021
  br label %cleanup, !dbg !1119

cleanup:                                          ; preds = %if.end8, %DestroyQuantumInfo.exit, %if.end
  %retval.0 = phi ptr [ %call, %if.end ], [ %call.i, %DestroyQuantumInfo.exit ], [ %call, %if.end8 ], !dbg !1021
  ret ptr %retval.0, !dbg !1120
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare !dbg !1121 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !1126 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1130 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !1134 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1138 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !1142 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !1143 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1146 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @GetQuantumInfo(ptr noundef %image_info, ptr noundef %quantum_info) local_unnamed_addr #0 !dbg !1150 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1154, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1155, metadata !DIExpression()), !dbg !1157
  %call = tail call ptr @ResetMagickMemory(ptr noundef %quantum_info, i32 noundef 0, i64 noundef 152) #13, !dbg !1158
  %quantum = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 1, !dbg !1159
  store i64 8, ptr %quantum, align 8, !dbg !1160, !tbaa !1161
  %maximum = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 4, !dbg !1162
  store double 1.000000e+00, ptr %maximum, align 8, !dbg !1163, !tbaa !1164
  %scale = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 5, !dbg !1165
  store double 6.553500e+04, ptr %scale, align 8, !dbg !1166, !tbaa !1167
  %pack = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 8, !dbg !1168
  store i32 1, ptr %pack, align 4, !dbg !1169, !tbaa !1170
  %call1 = tail call ptr @AllocateSemaphoreInfo() #13, !dbg !1171
  %semaphore = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 15, !dbg !1172
  store ptr %call1, ptr %semaphore, align 8, !dbg !1173, !tbaa !1113
  %signature = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 16, !dbg !1174
  store i64 2880220587, ptr %signature, align 8, !dbg !1175, !tbaa !1033
  %cmp = icmp eq ptr %image_info, null, !dbg !1176
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1178

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.4) #13, !dbg !1179
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1156, metadata !DIExpression()), !dbg !1157
  %cmp3.not = icmp eq ptr %call2, null, !dbg !1180
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !1182

if.then4:                                         ; preds = %if.end
  %call5 = tail call i64 @ParseCommandOption(i32 noundef 57, i32 noundef 0, ptr noundef nonnull %call2) #13, !dbg !1183
  %conv = trunc i64 %call5 to i32, !dbg !1184
  %format = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 2, !dbg !1185
  store i32 %conv, ptr %format, align 8, !dbg !1186, !tbaa !1187
  br label %if.end6, !dbg !1188

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = tail call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.5) #13, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1156, metadata !DIExpression()), !dbg !1157
  %cmp8.not = icmp eq ptr %call7, null, !dbg !1190
  br i1 %cmp8.not, label %if.end12, label %if.then10, !dbg !1192

if.then10:                                        ; preds = %if.end6
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1193, metadata !DIExpression()) #13, !dbg !1202
  call void @llvm.dbg.value(metadata ptr null, metadata !1201, metadata !DIExpression()) #13, !dbg !1202
  %call.i = tail call double @InterpretLocaleValue(ptr noundef nonnull %call7, ptr noundef null) #13, !dbg !1204
  %minimum = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 3, !dbg !1205
  store double %call.i, ptr %minimum, align 8, !dbg !1206, !tbaa !1207
  br label %if.end12, !dbg !1208

if.end12:                                         ; preds = %if.then10, %if.end6
  %call13 = tail call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.6) #13, !dbg !1209
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1156, metadata !DIExpression()), !dbg !1157
  %cmp14.not = icmp eq ptr %call13, null, !dbg !1210
  br i1 %cmp14.not, label %if.end19, label %if.then16, !dbg !1212

if.then16:                                        ; preds = %if.end12
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1193, metadata !DIExpression()) #13, !dbg !1213
  call void @llvm.dbg.value(metadata ptr null, metadata !1201, metadata !DIExpression()) #13, !dbg !1213
  %call.i99 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call13, ptr noundef null) #13, !dbg !1215
  store double %call.i99, ptr %maximum, align 8, !dbg !1216, !tbaa !1164
  br label %if.end19, !dbg !1217

if.end19:                                         ; preds = %if.then16, %if.end12
  %minimum20 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 3, !dbg !1218
  %0 = load double, ptr %minimum20, align 8, !dbg !1218, !tbaa !1207
  %cmp21 = fcmp oeq double %0, 0.000000e+00, !dbg !1220
  %1 = load double, ptr %maximum, align 8, !dbg !1221, !tbaa !1164
  %cmp24 = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %cmp21, i1 %cmp24, i1 false, !dbg !1222
  br i1 %or.cond, label %if.then26, label %if.else, !dbg !1222

if.then26:                                        ; preds = %if.end19
  store double 0.000000e+00, ptr %scale, align 8, !dbg !1223, !tbaa !1167
  br label %if.end42, !dbg !1224

if.else:                                          ; preds = %if.end19
  %cmp30 = fcmp oeq double %0, %1, !dbg !1225
  br i1 %cmp30, label %if.then32, label %if.else36, !dbg !1227

if.then32:                                        ; preds = %if.else
  %div = fdiv double 6.553500e+04, %0, !dbg !1228
  store double %div, ptr %scale, align 8, !dbg !1230, !tbaa !1167
  store double 0.000000e+00, ptr %minimum20, align 8, !dbg !1231, !tbaa !1207
  br label %if.end42, !dbg !1232

if.else36:                                        ; preds = %if.else
  %sub = fsub double %1, %0, !dbg !1233
  %div39 = fdiv double 6.553500e+04, %sub, !dbg !1234
  store double %div39, ptr %scale, align 8, !dbg !1235, !tbaa !1167
  br label %if.end42

if.end42:                                         ; preds = %if.then32, %if.else36, %if.then26
  %call43 = tail call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.7) #13, !dbg !1236
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1156, metadata !DIExpression()), !dbg !1157
  %cmp44.not = icmp eq ptr %call43, null, !dbg !1237
  br i1 %cmp44.not, label %if.end49, label %if.then46, !dbg !1239

if.then46:                                        ; preds = %if.end42
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1193, metadata !DIExpression()) #13, !dbg !1240
  call void @llvm.dbg.value(metadata ptr null, metadata !1201, metadata !DIExpression()) #13, !dbg !1240
  %call.i100 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call43, ptr noundef null) #13, !dbg !1242
  store double %call.i100, ptr %scale, align 8, !dbg !1243, !tbaa !1167
  br label %if.end49, !dbg !1244

if.end49:                                         ; preds = %if.then46, %if.end42
  %call50 = tail call ptr @GetImageOption(ptr noundef nonnull %image_info, ptr noundef nonnull @.str.8) #13, !dbg !1245
  call void @llvm.dbg.value(metadata ptr %call50, metadata !1156, metadata !DIExpression()), !dbg !1157
  %cmp51.not = icmp eq ptr %call50, null, !dbg !1246
  br i1 %cmp51.not, label %if.end57, label %if.then53, !dbg !1248

if.then53:                                        ; preds = %if.end49
  %call54 = tail call i32 @LocaleCompare(ptr noundef nonnull %call50, ptr noundef nonnull @.str.9) #13, !dbg !1249
  %cmp55 = icmp eq i32 %call54, 0, !dbg !1250
  %cond = zext i1 %cmp55 to i32, !dbg !1249
  %min_is_white = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 7, !dbg !1251
  store i32 %cond, ptr %min_is_white, align 8, !dbg !1252, !tbaa !1253
  br label %if.end57, !dbg !1254

if.end57:                                         ; preds = %if.then53, %if.end49
  %endian = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 14, !dbg !1255
  %2 = load i32, ptr %endian, align 4, !dbg !1255, !tbaa !1256
  %endian58 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 13, !dbg !1258
  store i32 %2, ptr %endian58, align 8, !dbg !1259, !tbaa !1062
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !998, metadata !DIExpression()) #13, !dbg !1260
  %state.i = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 14, !dbg !1262
  store double 1.000000e+00, ptr %state.i, align 8, !dbg !1263, !tbaa !1264
  %3 = load double, ptr %scale, align 8, !dbg !1265, !tbaa !1167
  %4 = tail call double @llvm.fabs.f64(double %3) #13, !dbg !1267
  %cmp.i = fcmp ult double %4, 1.000000e-15, !dbg !1268
  br i1 %cmp.i, label %ResetQuantumState.exit, label %if.then.i, !dbg !1269

if.then.i:                                        ; preds = %if.end57
  %div.i = fdiv double 1.000000e+00, %3, !dbg !1270
  store double %div.i, ptr %state.i, align 8, !dbg !1270, !tbaa !1264
  br label %ResetQuantumState.exit, !dbg !1271

ResetQuantumState.exit:                           ; preds = %if.end57, %if.then.i
  %pixel.i = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 14, i32 1, !dbg !1272
  store i32 0, ptr %pixel.i, align 8, !dbg !1273, !tbaa !1274
  %bits.i = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 14, i32 2, !dbg !1275
  store i64 0, ptr %bits.i, align 8, !dbg !1276, !tbaa !1277
  %mask.i = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 14, i32 3, !dbg !1278
  store ptr @ResetQuantumState.mask, ptr %mask.i, align 8, !dbg !1279, !tbaa !1280
  br label %cleanup, !dbg !1281

cleanup:                                          ; preds = %entry, %ResetQuantumState.exit
  ret void, !dbg !1281
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetQuantumDepth(ptr noundef %image, ptr nocapture noundef %quantum_info, i64 noundef %depth) local_unnamed_addr #0 !dbg !1282 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1286, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1287, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1288, metadata !DIExpression()), !dbg !1290
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1291
  %0 = load i32, ptr %debug, align 8, !dbg !1291, !tbaa !1293
  %cmp.not = icmp eq i32 %0, 0, !dbg !1294
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1295

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1296
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 665, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #13, !dbg !1297
  br label %if.end, !dbg !1298

if.end:                                           ; preds = %if.then, %entry
  store i64 %depth, ptr %quantum_info, align 8, !dbg !1299, !tbaa !1300
  %format = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 2, !dbg !1301
  %1 = load i32, ptr %format, align 8, !dbg !1301, !tbaa !1187
  %cmp2 = icmp eq i32 %1, 1, !dbg !1303
  br i1 %cmp2, label %if.then3, label %if.end16, !dbg !1304

if.then3:                                         ; preds = %if.end
  %cmp5 = icmp ugt i64 %depth, 32, !dbg !1305
  br i1 %cmp5, label %if.end16.sink.split, label %if.else, !dbg !1308

if.else:                                          ; preds = %if.then3
  %cmp9 = icmp ugt i64 %depth, 16, !dbg !1309
  %. = select i1 %cmp9, i64 32, i64 16
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.else, %if.then3
  %.sink = phi i64 [ 64, %if.then3 ], [ %., %if.else ]
  store i64 %.sink, ptr %quantum_info, align 8, !dbg !1311, !tbaa !1300
  br label %if.end16, !dbg !1312

if.end16:                                         ; preds = %if.end16.sink.split, %if.end
  %2 = phi i64 [ %depth, %if.end ], [ %.sink, %if.end16.sink.split ]
  %pixels = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 11, !dbg !1312
  %3 = load ptr, ptr %pixels, align 8, !dbg !1312, !tbaa !1075
  %cmp17.not = icmp eq ptr %3, null, !dbg !1314
  br i1 %cmp17.not, label %if.end19, label %if.then18, !dbg !1315

if.then18:                                        ; preds = %if.end16
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1078, metadata !DIExpression()) #13, !dbg !1316
  call void @llvm.dbg.value(metadata i64 undef, metadata !1082, metadata !DIExpression()) #13, !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1081, metadata !DIExpression()) #13, !dbg !1316
  %number_threads.i = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 10
  call void @llvm.dbg.value(metadata i64 0, metadata !1081, metadata !DIExpression()) #13, !dbg !1316
  %4 = load i64, ptr %number_threads.i, align 8, !dbg !1318, !tbaa !1088
  %cmp20.i = icmp sgt i64 %4, 0, !dbg !1319
  br i1 %cmp20.i, label %for.body.i, label %DestroyQuantumPixels.exit, !dbg !1320

for.body.i:                                       ; preds = %if.then18, %for.inc.i
  %5 = phi ptr [ %.pre, %for.inc.i ], [ %3, %if.then18 ], !dbg !1321
  %6 = phi i64 [ %9, %for.inc.i ], [ %4, %if.then18 ]
  %i.021.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %if.then18 ]
  call void @llvm.dbg.value(metadata i64 %i.021.i, metadata !1081, metadata !DIExpression()) #13, !dbg !1316
  %arrayidx.i = getelementptr inbounds ptr, ptr %5, i64 %i.021.i, !dbg !1322
  %7 = load ptr, ptr %arrayidx.i, align 8, !dbg !1322, !tbaa !1093
  %cmp2.not.i = icmp eq ptr %7, null, !dbg !1323
  br i1 %cmp2.not.i, label %for.inc.i, label %if.then.i, !dbg !1324

if.then.i:                                        ; preds = %for.body.i
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #13, !dbg !1325
  %8 = load ptr, ptr %pixels, align 8, !dbg !1326, !tbaa !1075
  %arrayidx6.i = getelementptr inbounds ptr, ptr %8, i64 %i.021.i, !dbg !1327
  store ptr %call.i, ptr %arrayidx6.i, align 8, !dbg !1328, !tbaa !1093
  %.pre.i = load i64, ptr %number_threads.i, align 8, !dbg !1318, !tbaa !1088
  br label %for.inc.i, !dbg !1329

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %9 = phi i64 [ %6, %for.body.i ], [ %.pre.i, %if.then.i ], !dbg !1318
  %inc.i = add nuw nsw i64 %i.021.i, 1, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1081, metadata !DIExpression()) #13, !dbg !1316
  %cmp.i = icmp slt i64 %inc.i, %9, !dbg !1319
  %.pre = load ptr, ptr %pixels, align 8, !dbg !1316, !tbaa !1075
  br i1 %cmp.i, label %for.body.i, label %DestroyQuantumPixels.exit, !dbg !1320, !llvm.loop !1331

DestroyQuantumPixels.exit:                        ; preds = %for.inc.i, %if.then18
  %10 = phi ptr [ %3, %if.then18 ], [ %.pre, %for.inc.i ], !dbg !1333
  %call8.i = tail call ptr @RelinquishMagickMemory(ptr noundef %10) #13, !dbg !1334
  store ptr %call8.i, ptr %pixels, align 8, !dbg !1335, !tbaa !1075
  %.pre46 = load i64, ptr %quantum_info, align 8, !dbg !1336, !tbaa !1300
  br label %if.end19, !dbg !1337

if.end19:                                         ; preds = %DestroyQuantumPixels.exit, %if.end16
  %11 = phi i64 [ %.pre46, %DestroyQuantumPixels.exit ], [ %2, %if.end16 ], !dbg !1336
  %pad = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 6, !dbg !1338
  %12 = load i64, ptr %pad, align 8, !dbg !1338, !tbaa !1339
  %add = add i64 %12, 6, !dbg !1340
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1341
  %13 = load i64, ptr %columns, align 8, !dbg !1341, !tbaa !1342
  %mul = mul i64 %add, %13, !dbg !1343
  %add21 = add i64 %11, 7, !dbg !1344
  %div37 = lshr i64 %add21, 3, !dbg !1345
  %mul22 = mul i64 %mul, %div37, !dbg !1346
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1347, metadata !DIExpression()) #13, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %mul22, metadata !1352, metadata !DIExpression()) #13, !dbg !1354
  %call.i38 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13, !dbg !1356
  %number_threads.i39 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 10, !dbg !1357
  store i64 %call.i38, ptr %number_threads.i39, align 8, !dbg !1358, !tbaa !1088
  %call2.i = tail call ptr @AcquireQuantumMemory(i64 noundef %call.i38, i64 noundef 8) #16, !dbg !1359
  store ptr %call2.i, ptr %pixels, align 8, !dbg !1360, !tbaa !1075
  %cmp.i41 = icmp eq ptr %call2.i, null, !dbg !1361
  br i1 %cmp.i41, label %AcquireQuantumPixels.exit, label %if.end.i, !dbg !1363

if.end.i:                                         ; preds = %if.end19
  %extent4.i = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 12, !dbg !1364
  store i64 %mul22, ptr %extent4.i, align 8, !dbg !1365, !tbaa !1366
  %14 = load i64, ptr %number_threads.i39, align 8, !dbg !1367, !tbaa !1088
  %mul.i = shl i64 %14, 3, !dbg !1368
  %call7.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call2.i, i32 noundef 0, i64 noundef %mul.i) #13, !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !1353, metadata !DIExpression()) #13, !dbg !1354
  %add.i = add i64 %mul22, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 0, metadata !1353, metadata !DIExpression()) #13, !dbg !1354
  %15 = load i64, ptr %number_threads.i39, align 8, !dbg !1374, !tbaa !1088
  %cmp944.i = icmp sgt i64 %15, 0, !dbg !1375
  br i1 %cmp944.i, label %for.body.i43, label %AcquireQuantumPixels.exit, !dbg !1376

for.body.i43:                                     ; preds = %if.end.i, %if.end16.i
  %i.045.i = phi i64 [ %inc.i44, %if.end16.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata i64 %i.045.i, metadata !1353, metadata !DIExpression()) #13, !dbg !1354
  %call10.i = tail call ptr @AcquireQuantumMemory(i64 noundef %add.i, i64 noundef 1) #16, !dbg !1377
  %16 = load ptr, ptr %pixels, align 8, !dbg !1378, !tbaa !1075
  %arrayidx.i42 = getelementptr inbounds ptr, ptr %16, i64 %i.045.i, !dbg !1379
  store ptr %call10.i, ptr %arrayidx.i42, align 8, !dbg !1380, !tbaa !1093
  %17 = load ptr, ptr %pixels, align 8, !dbg !1381, !tbaa !1075
  %arrayidx13.i = getelementptr inbounds ptr, ptr %17, i64 %i.045.i, !dbg !1383
  %18 = load ptr, ptr %arrayidx13.i, align 8, !dbg !1383, !tbaa !1093
  %cmp14.i = icmp eq ptr %18, null, !dbg !1384
  br i1 %cmp14.i, label %AcquireQuantumPixels.exit, label %if.end16.i, !dbg !1385

if.end16.i:                                       ; preds = %for.body.i43
  %call21.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %18, i32 noundef 0, i64 noundef %add.i) #13, !dbg !1386
  %19 = load ptr, ptr %pixels, align 8, !dbg !1387, !tbaa !1075
  %arrayidx23.i = getelementptr inbounds ptr, ptr %19, i64 %i.045.i, !dbg !1388
  %20 = load ptr, ptr %arrayidx23.i, align 8, !dbg !1388, !tbaa !1093
  %arrayidx24.i = getelementptr inbounds i8, ptr %20, i64 %mul22, !dbg !1388
  store i8 -85, ptr %arrayidx24.i, align 1, !dbg !1389, !tbaa !1390
  %inc.i44 = add nuw nsw i64 %i.045.i, 1, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %inc.i44, metadata !1353, metadata !DIExpression()) #13, !dbg !1354
  %21 = load i64, ptr %number_threads.i39, align 8, !dbg !1374, !tbaa !1088
  %cmp9.i = icmp slt i64 %inc.i44, %21, !dbg !1375
  br i1 %cmp9.i, label %for.body.i43, label %AcquireQuantumPixels.exit, !dbg !1376, !llvm.loop !1392

AcquireQuantumPixels.exit:                        ; preds = %for.body.i43, %if.end16.i, %if.end19, %if.end.i
  %retval.0.i = phi i32 [ 0, %if.end19 ], [ 1, %if.end.i ], [ 1, %if.end16.i ], [ 0, %for.body.i43 ], !dbg !1354
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !1289, metadata !DIExpression()), !dbg !1290
  ret i32 %retval.0.i, !dbg !1394
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyQuantumInfo(ptr noundef %quantum_info) local_unnamed_addr #0 !dbg !1067 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1066, metadata !DIExpression()), !dbg !1395
  %pixels = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 11, !dbg !1396
  %0 = load ptr, ptr %pixels, align 8, !dbg !1396, !tbaa !1075
  %cmp.not = icmp eq ptr %0, null, !dbg !1397
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1398

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1078, metadata !DIExpression()) #13, !dbg !1399
  call void @llvm.dbg.value(metadata i64 undef, metadata !1082, metadata !DIExpression()) #13, !dbg !1399
  call void @llvm.dbg.value(metadata i64 0, metadata !1081, metadata !DIExpression()) #13, !dbg !1399
  %number_threads.i = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 10
  call void @llvm.dbg.value(metadata i64 0, metadata !1081, metadata !DIExpression()) #13, !dbg !1399
  %1 = load i64, ptr %number_threads.i, align 8, !dbg !1401, !tbaa !1088
  %cmp20.i = icmp sgt i64 %1, 0, !dbg !1402
  br i1 %cmp20.i, label %for.body.i, label %DestroyQuantumPixels.exit, !dbg !1403

for.body.i:                                       ; preds = %if.then, %for.inc.i
  %2 = phi ptr [ %.pre, %for.inc.i ], [ %0, %if.then ], !dbg !1404
  %3 = phi i64 [ %6, %for.inc.i ], [ %1, %if.then ]
  %i.021.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %if.then ]
  call void @llvm.dbg.value(metadata i64 %i.021.i, metadata !1081, metadata !DIExpression()) #13, !dbg !1399
  %arrayidx.i = getelementptr inbounds ptr, ptr %2, i64 %i.021.i, !dbg !1405
  %4 = load ptr, ptr %arrayidx.i, align 8, !dbg !1405, !tbaa !1093
  %cmp2.not.i = icmp eq ptr %4, null, !dbg !1406
  br i1 %cmp2.not.i, label %for.inc.i, label %if.then.i, !dbg !1407

if.then.i:                                        ; preds = %for.body.i
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #13, !dbg !1408
  %5 = load ptr, ptr %pixels, align 8, !dbg !1409, !tbaa !1075
  %arrayidx6.i = getelementptr inbounds ptr, ptr %5, i64 %i.021.i, !dbg !1410
  store ptr %call.i, ptr %arrayidx6.i, align 8, !dbg !1411, !tbaa !1093
  %.pre.i = load i64, ptr %number_threads.i, align 8, !dbg !1401, !tbaa !1088
  br label %for.inc.i, !dbg !1412

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %6 = phi i64 [ %3, %for.body.i ], [ %.pre.i, %if.then.i ], !dbg !1401
  %inc.i = add nuw nsw i64 %i.021.i, 1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1081, metadata !DIExpression()) #13, !dbg !1399
  %cmp.i = icmp slt i64 %inc.i, %6, !dbg !1402
  %.pre = load ptr, ptr %pixels, align 8, !dbg !1399, !tbaa !1075
  br i1 %cmp.i, label %for.body.i, label %DestroyQuantumPixels.exit, !dbg !1403, !llvm.loop !1414

DestroyQuantumPixels.exit:                        ; preds = %for.inc.i, %if.then
  %7 = phi ptr [ %0, %if.then ], [ %.pre, %for.inc.i ], !dbg !1416
  %call8.i = tail call ptr @RelinquishMagickMemory(ptr noundef %7) #13, !dbg !1417
  store ptr %call8.i, ptr %pixels, align 8, !dbg !1418, !tbaa !1075
  br label %if.end, !dbg !1419

if.end:                                           ; preds = %DestroyQuantumPixels.exit, %entry
  %semaphore = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 15, !dbg !1420
  %8 = load ptr, ptr %semaphore, align 8, !dbg !1420, !tbaa !1113
  %cmp1.not = icmp eq ptr %8, null, !dbg !1421
  br i1 %cmp1.not, label %if.end4, label %if.then2, !dbg !1422

if.then2:                                         ; preds = %if.end
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #13, !dbg !1423
  br label %if.end4, !dbg !1423

if.end4:                                          ; preds = %if.then2, %if.end
  %signature = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 16, !dbg !1424
  store i64 -2880220588, ptr %signature, align 8, !dbg !1425, !tbaa !1033
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %quantum_info) #13, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %call, metadata !1066, metadata !DIExpression()), !dbg !1395
  ret ptr %call, !dbg !1427
}

declare !dbg !1428 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1432 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetQuantumExtent(ptr nocapture noundef readonly %image, ptr nocapture noundef readonly %quantum_info, i32 noundef %quantum_type) local_unnamed_addr #7 !dbg !1435 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1443, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1444, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i32 %quantum_type, metadata !1445, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 1, metadata !1446, metadata !DIExpression()), !dbg !1447
  switch i32 %quantum_type, label %sw.epilog [
    i32 7, label %sw.bb
    i32 10, label %sw.bb1
    i32 18, label %sw.bb2
    i32 26, label %sw.bb3
    i32 15, label %sw.bb4
    i32 17, label %sw.bb5
    i32 16, label %sw.bb6
    i32 5, label %sw.bb7
    i32 4, label %sw.bb8
  ], !dbg !1448

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata i64 2, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1449

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 2, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1451

sw.bb2:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 3, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1452

sw.bb3:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 3, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1453

sw.bb4:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 4, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1454

sw.bb5:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 4, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1455

sw.bb6:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 4, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1456

sw.bb7:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 4, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1457

sw.bb8:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 5, metadata !1446, metadata !DIExpression()), !dbg !1447
  br label %sw.epilog, !dbg !1458

sw.epilog:                                        ; preds = %entry, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %packet_size.0 = phi i64 [ 1, %entry ], [ 5, %sw.bb8 ], [ 4, %sw.bb7 ], [ 4, %sw.bb6 ], [ 4, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 3, %sw.bb2 ], [ 2, %sw.bb1 ], [ 2, %sw.bb ], !dbg !1447
  call void @llvm.dbg.value(metadata i64 %packet_size.0, metadata !1446, metadata !DIExpression()), !dbg !1447
  %pack = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 8, !dbg !1459
  %0 = load i32, ptr %pack, align 4, !dbg !1459, !tbaa !1170
  %cmp = icmp eq i32 %0, 0, !dbg !1461
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1447
  %1 = load i64, ptr %columns, align 8, !dbg !1447, !tbaa !1342
  %mul = mul i64 %1, %packet_size.0, !dbg !1447
  %2 = load i64, ptr %quantum_info, align 8, !dbg !1447, !tbaa !1300
  br i1 %cmp, label %if.then, label %if.end, !dbg !1462

if.then:                                          ; preds = %sw.epilog
  %add = add i64 %2, 7, !dbg !1463
  %div21 = lshr i64 %add, 3, !dbg !1464
  %mul9 = mul i64 %mul, %div21, !dbg !1465
  br label %cleanup, !dbg !1466

if.end:                                           ; preds = %sw.epilog
  %mul13 = mul i64 %mul, %2, !dbg !1467
  %add14 = add i64 %mul13, 7, !dbg !1468
  %div1520 = lshr i64 %add14, 3, !dbg !1469
  br label %cleanup, !dbg !1470

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %mul9, %if.then ], [ %div1520, %if.end ], !dbg !1447
  ret i64 %retval.0, !dbg !1471
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @GetQuantumEndian(ptr nocapture noundef readonly %quantum_info) local_unnamed_addr #7 !dbg !1472 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1476, metadata !DIExpression()), !dbg !1477
  %endian = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 13, !dbg !1478
  %0 = load i32, ptr %endian, align 8, !dbg !1478, !tbaa !1062
  ret i32 %0, !dbg !1479
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @GetQuantumFormat(ptr nocapture noundef readonly %quantum_info) local_unnamed_addr #7 !dbg !1480 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1484, metadata !DIExpression()), !dbg !1485
  %format = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 2, !dbg !1486
  %0 = load i32, ptr %format, align 8, !dbg !1486, !tbaa !1187
  ret i32 %0, !dbg !1487
}

declare !dbg !1488 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1491 ptr @AllocateSemaphoreInfo() local_unnamed_addr #4

declare !dbg !1494 ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1497 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1503 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define hidden void @ResetQuantumState(ptr nocapture noundef %quantum_info) local_unnamed_addr #8 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !998, metadata !DIExpression()), !dbg !1506
  %state = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 14, !dbg !1507
  store double 1.000000e+00, ptr %state, align 8, !dbg !1508, !tbaa !1264
  %scale = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 5, !dbg !1509
  %0 = load double, ptr %scale, align 8, !dbg !1509, !tbaa !1167
  %1 = tail call double @llvm.fabs.f64(double %0), !dbg !1510
  %cmp = fcmp ult double %1, 1.000000e-15, !dbg !1511
  br i1 %cmp, label %if.end, label %if.then, !dbg !1512

if.then:                                          ; preds = %entry
  %div = fdiv double 1.000000e+00, %0, !dbg !1513
  store double %div, ptr %state, align 8, !dbg !1513, !tbaa !1264
  br label %if.end, !dbg !1514

if.end:                                           ; preds = %if.then, %entry
  %pixel = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 14, i32 1, !dbg !1515
  store i32 0, ptr %pixel, align 8, !dbg !1516, !tbaa !1274
  %bits = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 14, i32 2, !dbg !1517
  store i64 0, ptr %bits, align 8, !dbg !1518, !tbaa !1277
  %mask = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 14, i32 3, !dbg !1519
  store ptr @ResetQuantumState.mask, ptr %mask, align 8, !dbg !1520, !tbaa !1280
  ret void, !dbg !1521
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetQuantumPixels(ptr nocapture noundef readonly %quantum_info) local_unnamed_addr #9 !dbg !1522 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1526, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 0, metadata !1527, metadata !DIExpression()), !dbg !1528
  %pixels = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 11, !dbg !1529
  %0 = load ptr, ptr %pixels, align 8, !dbg !1529, !tbaa !1075
  %1 = load ptr, ptr %0, align 8, !dbg !1530, !tbaa !1093
  ret ptr %1, !dbg !1531
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetQuantumType(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1532 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1536, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1537, metadata !DIExpression()), !dbg !1539
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1540
  %0 = load i32, ptr %debug, align 8, !dbg !1540, !tbaa !1293
  %cmp.not = icmp eq i32 %0, 0, !dbg !1542
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1543

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1544
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 523, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #13, !dbg !1545
  br label %if.end, !dbg !1546

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 18, metadata !1538, metadata !DIExpression()), !dbg !1539
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1547
  %1 = load i32, ptr %matte, align 8, !dbg !1547, !tbaa !1549
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1550
  %spec.store.select = select i1 %cmp1.not, i32 18, i32 15, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %spec.store.select, metadata !1538, metadata !DIExpression()), !dbg !1539
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1552
  %2 = load i32, ptr %colorspace, align 4, !dbg !1552, !tbaa !1554
  %cmp4 = icmp eq i32 %2, 12, !dbg !1555
  %spec.store.select26 = select i1 %cmp1.not, i32 5, i32 4
  %spec.select = select i1 %cmp4, i32 %spec.store.select26, i32 %spec.store.select, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1538, metadata !DIExpression()), !dbg !1539
  %call11 = tail call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef %exception) #13, !dbg !1557
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !1559
  br i1 %cmp12.not, label %if.end18, label %if.then13, !dbg !1560

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 8, metadata !1538, metadata !DIExpression()), !dbg !1539
  %3 = load i32, ptr %matte, align 8, !dbg !1561, !tbaa !1549
  %cmp15.not = icmp eq i32 %3, 0, !dbg !1564
  %spec.store.select27 = select i1 %cmp15.not, i32 8, i32 7, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %spec.store.select27, metadata !1538, metadata !DIExpression()), !dbg !1539
  br label %if.end18, !dbg !1566

if.end18:                                         ; preds = %if.then13, %if.end
  %quantum_type.1 = phi i32 [ %spec.store.select27, %if.then13 ], [ %spec.select, %if.end ], !dbg !1539
  call void @llvm.dbg.value(metadata i32 %quantum_type.1, metadata !1538, metadata !DIExpression()), !dbg !1539
  %4 = load i32, ptr %image, align 8, !dbg !1567, !tbaa !1569
  %cmp19 = icmp eq i32 %4, 2, !dbg !1570
  br i1 %cmp19, label %if.then20, label %if.end25, !dbg !1571

if.then20:                                        ; preds = %if.end18
  call void @llvm.dbg.value(metadata i32 11, metadata !1538, metadata !DIExpression()), !dbg !1539
  %5 = load i32, ptr %matte, align 8, !dbg !1572, !tbaa !1549
  %cmp22.not = icmp eq i32 %5, 0, !dbg !1575
  %spec.store.select28 = select i1 %cmp22.not, i32 11, i32 10, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %spec.store.select28, metadata !1538, metadata !DIExpression()), !dbg !1539
  br label %if.end25, !dbg !1577

if.end25:                                         ; preds = %if.then20, %if.end18
  %quantum_type.2 = phi i32 [ %spec.store.select28, %if.then20 ], [ %quantum_type.1, %if.end18 ], !dbg !1539
  call void @llvm.dbg.value(metadata i32 %quantum_type.2, metadata !1538, metadata !DIExpression()), !dbg !1539
  ret i32 %quantum_type.2, !dbg !1578
}

declare !dbg !1579 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1584 i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetQuantumAlphaType(ptr nocapture noundef writeonly %quantum_info, i32 noundef %type) local_unnamed_addr #10 !dbg !1588 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1593, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i32 %type, metadata !1594, metadata !DIExpression()), !dbg !1595
  %alpha_type = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 9, !dbg !1596
  store i32 %type, ptr %alpha_type, align 8, !dbg !1597, !tbaa !1598
  ret void, !dbg !1599
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetQuantumEndian(ptr noundef %image, ptr nocapture noundef %quantum_info, i32 noundef %endian) local_unnamed_addr #0 !dbg !1600 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1605, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1606, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i32 %endian, metadata !1607, metadata !DIExpression()), !dbg !1608
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1609
  %0 = load i32, ptr %debug, align 8, !dbg !1609, !tbaa !1293
  %cmp.not = icmp eq i32 %0, 0, !dbg !1611
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1612

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1613
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 719, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #13, !dbg !1614
  br label %if.end, !dbg !1615

if.end:                                           ; preds = %if.then, %entry
  %endian1 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 13, !dbg !1616
  store i32 %endian, ptr %endian1, align 8, !dbg !1617, !tbaa !1062
  %1 = load i64, ptr %quantum_info, align 8, !dbg !1618, !tbaa !1300
  %call2 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %image, ptr noundef nonnull %quantum_info, i64 noundef %1), !dbg !1619
  ret i32 %call2, !dbg !1620
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetQuantumFormat(ptr noundef %image, ptr nocapture noundef %quantum_info, i32 noundef %format) local_unnamed_addr #0 !dbg !1621 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1626, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1627, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 %format, metadata !1628, metadata !DIExpression()), !dbg !1629
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1630
  %0 = load i32, ptr %debug, align 8, !dbg !1630, !tbaa !1293
  %cmp.not = icmp eq i32 %0, 0, !dbg !1632
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1633

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1634
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 759, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #13, !dbg !1635
  br label %if.end, !dbg !1636

if.end:                                           ; preds = %if.then, %entry
  %format1 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 2, !dbg !1637
  store i32 %format, ptr %format1, align 8, !dbg !1638, !tbaa !1187
  %1 = load i64, ptr %quantum_info, align 8, !dbg !1639, !tbaa !1300
  %call2 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %image, ptr noundef nonnull %quantum_info, i64 noundef %1), !dbg !1640
  ret i32 %call2, !dbg !1641
}

; Function Attrs: nounwind uwtable
define dso_local void @SetQuantumImageType(ptr noundef %image, i32 noundef %quantum_type) local_unnamed_addr #0 !dbg !1642 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1646, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 %quantum_type, metadata !1647, metadata !DIExpression()), !dbg !1648
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1649
  %0 = load i32, ptr %debug, align 8, !dbg !1649, !tbaa !1293
  %cmp.not = icmp eq i32 %0, 0, !dbg !1651
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1652

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1653
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 798, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #13, !dbg !1654
  br label %if.end, !dbg !1655

if.end:                                           ; preds = %if.then, %entry
  switch i32 %quantum_type, label %sw.default [
    i32 11, label %sw.bb
    i32 10, label %sw.bb
    i32 8, label %sw.bb1
    i32 7, label %sw.bb1
    i32 6, label %sw.bb7
    i32 12, label %sw.bb7
    i32 19, label %sw.bb7
    i32 2, label %sw.bb7
    i32 5, label %sw.bb7
    i32 4, label %sw.bb7
  ], !dbg !1656

sw.bb:                                            ; preds = %if.end, %if.end
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1657
  store i32 4, ptr %type, align 8, !dbg !1660, !tbaa !1661
  br label %sw.epilog, !dbg !1662

sw.bb1:                                           ; preds = %if.end, %if.end
  %type2 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1663
  %depth = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !1665
  %1 = load i64, ptr %depth, align 8, !dbg !1665, !tbaa !1044
  %cmp3 = icmp eq i64 %1, 1, !dbg !1667
  %spec.store.select = select i1 %cmp3, i32 1, i32 2, !dbg !1668
  store i32 %spec.store.select, ptr %type2, align 8, !dbg !1669
  br label %sw.epilog, !dbg !1668

sw.bb7:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %type8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1670
  store i32 8, ptr %type8, align 8, !dbg !1672, !tbaa !1661
  br label %sw.epilog, !dbg !1673

sw.default:                                       ; preds = %if.end
  %type9 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1674
  store i32 6, ptr %type9, align 8, !dbg !1676, !tbaa !1661
  br label %sw.epilog, !dbg !1677

sw.epilog:                                        ; preds = %sw.bb1, %sw.default, %sw.bb7, %sw.bb
  ret void, !dbg !1678
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetQuantumPack(ptr nocapture noundef writeonly %quantum_info, i32 noundef %pack) local_unnamed_addr #10 !dbg !1679 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1683, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %pack, metadata !1684, metadata !DIExpression()), !dbg !1685
  %pack1 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 8, !dbg !1686
  store i32 %pack, ptr %pack1, align 4, !dbg !1687, !tbaa !1170
  ret void, !dbg !1688
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetQuantumPad(ptr noundef %image, ptr nocapture noundef %quantum_info, i64 noundef %pad) local_unnamed_addr #0 !dbg !1689 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1691, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1692, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %pad, metadata !1693, metadata !DIExpression()), !dbg !1694
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1695
  %0 = load i32, ptr %debug, align 8, !dbg !1695, !tbaa !1293
  %cmp.not = icmp eq i32 %0, 0, !dbg !1697
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1698

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1699
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 900, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #13, !dbg !1700
  br label %if.end, !dbg !1701

if.end:                                           ; preds = %if.then, %entry
  %pad1 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 6, !dbg !1702
  store i64 %pad, ptr %pad1, align 8, !dbg !1703, !tbaa !1339
  %1 = load i64, ptr %quantum_info, align 8, !dbg !1704, !tbaa !1300
  %call2 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %image, ptr noundef nonnull %quantum_info, i64 noundef %1), !dbg !1705
  ret i32 %call2, !dbg !1706
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetQuantumMinIsWhite(ptr nocapture noundef writeonly %quantum_info, i32 noundef %min_is_white) local_unnamed_addr #10 !dbg !1707 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1709, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i32 %min_is_white, metadata !1710, metadata !DIExpression()), !dbg !1711
  %min_is_white1 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 7, !dbg !1712
  store i32 %min_is_white, ptr %min_is_white1, align 8, !dbg !1713, !tbaa !1253
  ret void, !dbg !1714
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetQuantumQuantum(ptr nocapture noundef writeonly %quantum_info, i64 noundef %quantum) local_unnamed_addr #10 !dbg !1715 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1719, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %quantum, metadata !1720, metadata !DIExpression()), !dbg !1721
  %quantum1 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 1, !dbg !1722
  store i64 %quantum, ptr %quantum1, align 8, !dbg !1723, !tbaa !1161
  ret void, !dbg !1724
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetQuantumScale(ptr nocapture noundef writeonly %quantum_info, double noundef %scale) local_unnamed_addr #10 !dbg !1725 {
entry:
  call void @llvm.dbg.value(metadata ptr %quantum_info, metadata !1730, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata double %scale, metadata !1731, metadata !DIExpression()), !dbg !1732
  %scale1 = getelementptr inbounds %struct._QuantumInfo, ptr %quantum_info, i64 0, i32 5, !dbg !1733
  store double %scale, ptr %scale1, align 8, !dbg !1734, !tbaa !1167
  ret void, !dbg !1735
}

declare !dbg !1736 double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1738 i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare !dbg !1743 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!75}
!llvm.module.flags = !{!1002, !1003, !1004, !1005, !1006, !1007}
!llvm.ident = !{!1008}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mask", scope: !2, file: !3, line: 572, type: !999, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "ResetQuantumState", scope: !3, file: !3, line: 570, type: !4, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !997)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2992c7f8f08cf858917506a7de0f08b2")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumInfo", file: !8, line: 85, baseType: !9)
!8 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantumInfo", file: !10, line: 42, size: 1216, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f56ff413af29c367aaef7b4fe7af9628")
!11 = !{!12, !16, !17, !26, !28, !29, !30, !31, !38, !39, !46, !47, !51, !52, !59, !69, !74}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !9, file: !10, line: 45, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 46, baseType: !15)
!14 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "quantum", scope: !9, file: !10, line: 46, baseType: !13, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !9, file: !10, line: 49, baseType: !18, size: 32, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumFormatType", file: !8, line: 50, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 44, baseType: !20, size: 32, elements: !21)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "UndefinedQuantumFormat", value: 0)
!23 = !DIEnumerator(name: "FloatingPointQuantumFormat", value: 1)
!24 = !DIEnumerator(name: "SignedQuantumFormat", value: 2)
!25 = !DIEnumerator(name: "UnsignedQuantumFormat", value: 3)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !9, file: !10, line: 52, baseType: !27, size: 64, offset: 192)
!27 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !9, file: !10, line: 53, baseType: !27, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !9, file: !10, line: 54, baseType: !27, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !9, file: !10, line: 57, baseType: !13, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "min_is_white", scope: !9, file: !10, line: 60, baseType: !32, size: 32, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !33, line: 215, baseType: !34)
!33 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 211, baseType: !20, size: 32, elements: !35)
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "MagickFalse", value: 0)
!37 = !DIEnumerator(name: "MagickTrue", value: 1)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "pack", scope: !9, file: !10, line: 61, baseType: !32, size: 32, offset: 480)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_type", scope: !9, file: !10, line: 64, baseType: !40, size: 32, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumAlphaType", file: !8, line: 42, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 37, baseType: !20, size: 32, elements: !42)
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "UndefinedQuantumAlpha", value: 0)
!44 = !DIEnumerator(name: "AssociatedQuantumAlpha", value: 1)
!45 = !DIEnumerator(name: "DisassociatedQuantumAlpha", value: 2)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "number_threads", scope: !9, file: !10, line: 67, baseType: !13, size: 64, offset: 576)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !9, file: !10, line: 70, baseType: !48, size: 64, offset: 640)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !9, file: !10, line: 73, baseType: !13, size: 64, offset: 704)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !9, file: !10, line: 76, baseType: !53, size: 32, offset: 768)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !8, line: 35, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 30, baseType: !20, size: 32, elements: !55)
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!57 = !DIEnumerator(name: "LSBEndian", value: 1)
!58 = !DIEnumerator(name: "MSBEndian", value: 2)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !9, file: !10, line: 79, baseType: !60, size: 256, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumState", file: !10, line: 40, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantumState", file: !10, line: 27, size: 256, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_scale", scope: !61, file: !10, line: 30, baseType: !27, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pixel", scope: !61, file: !10, line: 33, baseType: !20, size: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !61, file: !10, line: 36, baseType: !13, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !61, file: !10, line: 39, baseType: !67, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !9, file: !10, line: 82, baseType: !70, size: 64, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !72, line: 26, baseType: !73)
!72 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !72, line: 25, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !9, file: !10, line: 85, baseType: !13, size: 64, offset: 1152)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !650, globals: !996, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/quantum.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "2992c7f8f08cf858917506a7de0f08b2")
!77 = !{!19, !34, !41, !54, !78, !103, !115, !125, !130, !167, !181, !214, !236, !241, !249, !284, !299, !370, !378, !384, !457, !474, !486, !507, !537, !613, !638}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 25, baseType: !20, size: 32, elements: !80)
!79 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!81 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!82 = !DIEnumerator(name: "NoCompression", value: 1)
!83 = !DIEnumerator(name: "BZipCompression", value: 2)
!84 = !DIEnumerator(name: "DXT1Compression", value: 3)
!85 = !DIEnumerator(name: "DXT3Compression", value: 4)
!86 = !DIEnumerator(name: "DXT5Compression", value: 5)
!87 = !DIEnumerator(name: "FaxCompression", value: 6)
!88 = !DIEnumerator(name: "Group4Compression", value: 7)
!89 = !DIEnumerator(name: "JPEGCompression", value: 8)
!90 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!91 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!92 = !DIEnumerator(name: "LZWCompression", value: 11)
!93 = !DIEnumerator(name: "RLECompression", value: 12)
!94 = !DIEnumerator(name: "ZipCompression", value: 13)
!95 = !DIEnumerator(name: "ZipSCompression", value: 14)
!96 = !DIEnumerator(name: "PizCompression", value: 15)
!97 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!98 = !DIEnumerator(name: "B44Compression", value: 17)
!99 = !DIEnumerator(name: "B44ACompression", value: 18)
!100 = !DIEnumerator(name: "LZMACompression", value: 19)
!101 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!102 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 75, baseType: !20, size: 32, elements: !105)
!104 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114}
!106 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!107 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!108 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!109 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!110 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!111 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!112 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!113 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!114 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 63, baseType: !20, size: 32, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124}
!117 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!118 = !DIEnumerator(name: "NoInterlace", value: 1)
!119 = !DIEnumerator(name: "LineInterlace", value: 2)
!120 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!121 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!122 = !DIEnumerator(name: "GIFInterlace", value: 5)
!123 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!124 = !DIEnumerator(name: "PNGInterlace", value: 7)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 88, baseType: !20, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!128 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!129 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 25, baseType: !20, size: 32, elements: !132)
!131 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!133 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!134 = !DIEnumerator(name: "RGBColorspace", value: 1)
!135 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!136 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!137 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!138 = !DIEnumerator(name: "LabColorspace", value: 5)
!139 = !DIEnumerator(name: "XYZColorspace", value: 6)
!140 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!141 = !DIEnumerator(name: "YCCColorspace", value: 8)
!142 = !DIEnumerator(name: "YIQColorspace", value: 9)
!143 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!144 = !DIEnumerator(name: "YUVColorspace", value: 11)
!145 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!146 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!147 = !DIEnumerator(name: "HSBColorspace", value: 14)
!148 = !DIEnumerator(name: "HSLColorspace", value: 15)
!149 = !DIEnumerator(name: "HWBColorspace", value: 16)
!150 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!151 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!152 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!153 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!154 = !DIEnumerator(name: "LogColorspace", value: 21)
!155 = !DIEnumerator(name: "CMYColorspace", value: 22)
!156 = !DIEnumerator(name: "LuvColorspace", value: 23)
!157 = !DIEnumerator(name: "HCLColorspace", value: 24)
!158 = !DIEnumerator(name: "LCHColorspace", value: 25)
!159 = !DIEnumerator(name: "LMSColorspace", value: 26)
!160 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!161 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!162 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!163 = !DIEnumerator(name: "HSIColorspace", value: 30)
!164 = !DIEnumerator(name: "HSVColorspace", value: 31)
!165 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!166 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 47, baseType: !20, size: 32, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!169 = !DIEnumerator(name: "UndefinedType", value: 0)
!170 = !DIEnumerator(name: "BilevelType", value: 1)
!171 = !DIEnumerator(name: "GrayscaleType", value: 2)
!172 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!173 = !DIEnumerator(name: "PaletteType", value: 4)
!174 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!175 = !DIEnumerator(name: "TrueColorType", value: 6)
!176 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!177 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!178 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!179 = !DIEnumerator(name: "OptimizeType", value: 10)
!180 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 27, baseType: !20, size: 32, elements: !183)
!182 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!184 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!185 = !DIEnumerator(name: "RotatePreview", value: 1)
!186 = !DIEnumerator(name: "ShearPreview", value: 2)
!187 = !DIEnumerator(name: "RollPreview", value: 3)
!188 = !DIEnumerator(name: "HuePreview", value: 4)
!189 = !DIEnumerator(name: "SaturationPreview", value: 5)
!190 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!191 = !DIEnumerator(name: "GammaPreview", value: 7)
!192 = !DIEnumerator(name: "SpiffPreview", value: 8)
!193 = !DIEnumerator(name: "DullPreview", value: 9)
!194 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!195 = !DIEnumerator(name: "QuantizePreview", value: 11)
!196 = !DIEnumerator(name: "DespecklePreview", value: 12)
!197 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!198 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!199 = !DIEnumerator(name: "SharpenPreview", value: 15)
!200 = !DIEnumerator(name: "BlurPreview", value: 16)
!201 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!202 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!203 = !DIEnumerator(name: "SpreadPreview", value: 19)
!204 = !DIEnumerator(name: "SolarizePreview", value: 20)
!205 = !DIEnumerator(name: "ShadePreview", value: 21)
!206 = !DIEnumerator(name: "RaisePreview", value: 22)
!207 = !DIEnumerator(name: "SegmentPreview", value: 23)
!208 = !DIEnumerator(name: "SwirlPreview", value: 24)
!209 = !DIEnumerator(name: "ImplodePreview", value: 25)
!210 = !DIEnumerator(name: "WavePreview", value: 26)
!211 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!212 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!213 = !DIEnumerator(name: "JPEGPreview", value: 29)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 177, baseType: !20, size: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!216 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!217 = !DIEnumerator(name: "RedChannel", value: 1)
!218 = !DIEnumerator(name: "GrayChannel", value: 1)
!219 = !DIEnumerator(name: "CyanChannel", value: 1)
!220 = !DIEnumerator(name: "GreenChannel", value: 2)
!221 = !DIEnumerator(name: "MagentaChannel", value: 2)
!222 = !DIEnumerator(name: "BlueChannel", value: 4)
!223 = !DIEnumerator(name: "YellowChannel", value: 4)
!224 = !DIEnumerator(name: "AlphaChannel", value: 8)
!225 = !DIEnumerator(name: "OpacityChannel", value: 8)
!226 = !DIEnumerator(name: "MatteChannel", value: 8)
!227 = !DIEnumerator(name: "BlackChannel", value: 32)
!228 = !DIEnumerator(name: "IndexChannel", value: 32)
!229 = !DIEnumerator(name: "CompositeChannels", value: 47)
!230 = !DIEnumerator(name: "AllChannels", value: 134217727)
!231 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!232 = !DIEnumerator(name: "RGBChannels", value: 128)
!233 = !DIEnumerator(name: "GrayChannels", value: 128)
!234 = !DIEnumerator(name: "SyncChannels", value: 256)
!235 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 204, baseType: !20, size: 32, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIEnumerator(name: "UndefinedClass", value: 0)
!239 = !DIEnumerator(name: "DirectClass", value: 1)
!240 = !DIEnumerator(name: "PseudoClass", value: 2)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !242, line: 42, baseType: !20, size: 32, elements: !243)
!242 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!245 = !DIEnumerator(name: "SaturationIntent", value: 1)
!246 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!247 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!248 = !DIEnumerator(name: "RelativeIntent", value: 4)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !250, line: 32, baseType: !20, size: 32, elements: !251)
!250 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!252 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!253 = !DIEnumerator(name: "PointFilter", value: 1)
!254 = !DIEnumerator(name: "BoxFilter", value: 2)
!255 = !DIEnumerator(name: "TriangleFilter", value: 3)
!256 = !DIEnumerator(name: "HermiteFilter", value: 4)
!257 = !DIEnumerator(name: "HanningFilter", value: 5)
!258 = !DIEnumerator(name: "HammingFilter", value: 6)
!259 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!260 = !DIEnumerator(name: "GaussianFilter", value: 8)
!261 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!262 = !DIEnumerator(name: "CubicFilter", value: 10)
!263 = !DIEnumerator(name: "CatromFilter", value: 11)
!264 = !DIEnumerator(name: "MitchellFilter", value: 12)
!265 = !DIEnumerator(name: "JincFilter", value: 13)
!266 = !DIEnumerator(name: "SincFilter", value: 14)
!267 = !DIEnumerator(name: "SincFastFilter", value: 15)
!268 = !DIEnumerator(name: "KaiserFilter", value: 16)
!269 = !DIEnumerator(name: "WelshFilter", value: 17)
!270 = !DIEnumerator(name: "ParzenFilter", value: 18)
!271 = !DIEnumerator(name: "BohmanFilter", value: 19)
!272 = !DIEnumerator(name: "BartlettFilter", value: 20)
!273 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!274 = !DIEnumerator(name: "LanczosFilter", value: 22)
!275 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!276 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!277 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!278 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!279 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!280 = !DIEnumerator(name: "CosineFilter", value: 28)
!281 = !DIEnumerator(name: "SplineFilter", value: 29)
!282 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!283 = !DIEnumerator(name: "SentinelFilter", value: 31)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !285, line: 77, baseType: !20, size: 32, elements: !286)
!285 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!287 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!288 = !DIEnumerator(name: "ForgetGravity", value: 0)
!289 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!290 = !DIEnumerator(name: "NorthGravity", value: 2)
!291 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!292 = !DIEnumerator(name: "WestGravity", value: 4)
!293 = !DIEnumerator(name: "CenterGravity", value: 5)
!294 = !DIEnumerator(name: "EastGravity", value: 6)
!295 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!296 = !DIEnumerator(name: "SouthGravity", value: 8)
!297 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!298 = !DIEnumerator(name: "StaticGravity", value: 10)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !300, line: 25, baseType: !20, size: 32, elements: !301)
!300 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!302 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!303 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!304 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!305 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!306 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!307 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!308 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!309 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!310 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!311 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!312 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!313 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!314 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!315 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!316 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!317 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!318 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!319 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!320 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!321 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!322 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!323 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!324 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!325 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!326 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!327 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!328 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!329 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!330 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!331 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!332 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!333 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!334 = !DIEnumerator(name: "InCompositeOp", value: 32)
!335 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!336 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!337 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!338 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!339 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!340 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!341 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!342 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!343 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!344 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!345 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!346 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!347 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!348 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!349 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!350 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!351 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!352 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!353 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!354 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!355 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!356 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!357 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!358 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!359 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!360 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!361 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!362 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!363 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!364 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!365 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!366 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!367 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!368 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!369 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 25, baseType: !20, size: 32, elements: !372)
!371 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!372 = !{!373, !374, !375, !376, !377}
!373 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!374 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!375 = !DIEnumerator(name: "NoneDispose", value: 1)
!376 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!377 = !DIEnumerator(name: "PreviousDispose", value: 3)
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !379, line: 25, baseType: !20, size: 32, elements: !380)
!379 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!380 = !{!381, !382, !383}
!381 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!382 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!383 = !DIEnumerator(name: "RunningTimerState", value: 2)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !385, line: 28, baseType: !20, size: 32, elements: !386)
!385 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!387 = !DIEnumerator(name: "UndefinedException", value: 0)
!388 = !DIEnumerator(name: "WarningException", value: 300)
!389 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!390 = !DIEnumerator(name: "TypeWarning", value: 305)
!391 = !DIEnumerator(name: "OptionWarning", value: 310)
!392 = !DIEnumerator(name: "DelegateWarning", value: 315)
!393 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!394 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!395 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!396 = !DIEnumerator(name: "BlobWarning", value: 335)
!397 = !DIEnumerator(name: "StreamWarning", value: 340)
!398 = !DIEnumerator(name: "CacheWarning", value: 345)
!399 = !DIEnumerator(name: "CoderWarning", value: 350)
!400 = !DIEnumerator(name: "FilterWarning", value: 352)
!401 = !DIEnumerator(name: "ModuleWarning", value: 355)
!402 = !DIEnumerator(name: "DrawWarning", value: 360)
!403 = !DIEnumerator(name: "ImageWarning", value: 365)
!404 = !DIEnumerator(name: "WandWarning", value: 370)
!405 = !DIEnumerator(name: "RandomWarning", value: 375)
!406 = !DIEnumerator(name: "XServerWarning", value: 380)
!407 = !DIEnumerator(name: "MonitorWarning", value: 385)
!408 = !DIEnumerator(name: "RegistryWarning", value: 390)
!409 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!410 = !DIEnumerator(name: "PolicyWarning", value: 399)
!411 = !DIEnumerator(name: "ErrorException", value: 400)
!412 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!413 = !DIEnumerator(name: "TypeError", value: 405)
!414 = !DIEnumerator(name: "OptionError", value: 410)
!415 = !DIEnumerator(name: "DelegateError", value: 415)
!416 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!417 = !DIEnumerator(name: "CorruptImageError", value: 425)
!418 = !DIEnumerator(name: "FileOpenError", value: 430)
!419 = !DIEnumerator(name: "BlobError", value: 435)
!420 = !DIEnumerator(name: "StreamError", value: 440)
!421 = !DIEnumerator(name: "CacheError", value: 445)
!422 = !DIEnumerator(name: "CoderError", value: 450)
!423 = !DIEnumerator(name: "FilterError", value: 452)
!424 = !DIEnumerator(name: "ModuleError", value: 455)
!425 = !DIEnumerator(name: "DrawError", value: 460)
!426 = !DIEnumerator(name: "ImageError", value: 465)
!427 = !DIEnumerator(name: "WandError", value: 470)
!428 = !DIEnumerator(name: "RandomError", value: 475)
!429 = !DIEnumerator(name: "XServerError", value: 480)
!430 = !DIEnumerator(name: "MonitorError", value: 485)
!431 = !DIEnumerator(name: "RegistryError", value: 490)
!432 = !DIEnumerator(name: "ConfigureError", value: 495)
!433 = !DIEnumerator(name: "PolicyError", value: 499)
!434 = !DIEnumerator(name: "FatalErrorException", value: 700)
!435 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!436 = !DIEnumerator(name: "TypeFatalError", value: 705)
!437 = !DIEnumerator(name: "OptionFatalError", value: 710)
!438 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!439 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!440 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!441 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!442 = !DIEnumerator(name: "BlobFatalError", value: 735)
!443 = !DIEnumerator(name: "StreamFatalError", value: 740)
!444 = !DIEnumerator(name: "CacheFatalError", value: 745)
!445 = !DIEnumerator(name: "CoderFatalError", value: 750)
!446 = !DIEnumerator(name: "FilterFatalError", value: 752)
!447 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!448 = !DIEnumerator(name: "DrawFatalError", value: 760)
!449 = !DIEnumerator(name: "ImageFatalError", value: 765)
!450 = !DIEnumerator(name: "WandFatalError", value: 770)
!451 = !DIEnumerator(name: "RandomFatalError", value: 775)
!452 = !DIEnumerator(name: "XServerFatalError", value: 780)
!453 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!454 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!455 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!456 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!457 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !458, line: 31, baseType: !20, size: 32, elements: !459)
!458 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!460 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!461 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!462 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!463 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!464 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!465 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!466 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!467 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!468 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!469 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!470 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!471 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!472 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!473 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !458, line: 67, baseType: !20, size: 32, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485}
!476 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!477 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!478 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!479 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!480 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!481 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!482 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!483 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!484 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!485 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !487, line: 27, baseType: !20, size: 32, elements: !488)
!487 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!489 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!490 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!491 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!492 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!493 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!494 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!495 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!496 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!497 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!498 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!499 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!500 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!501 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!502 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!503 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!504 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!505 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!506 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!507 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 52, baseType: !20, size: 32, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!509 = !DIEnumerator(name: "UndefinedQuantum", value: 0)
!510 = !DIEnumerator(name: "AlphaQuantum", value: 1)
!511 = !DIEnumerator(name: "BlackQuantum", value: 2)
!512 = !DIEnumerator(name: "BlueQuantum", value: 3)
!513 = !DIEnumerator(name: "CMYKAQuantum", value: 4)
!514 = !DIEnumerator(name: "CMYKQuantum", value: 5)
!515 = !DIEnumerator(name: "CyanQuantum", value: 6)
!516 = !DIEnumerator(name: "GrayAlphaQuantum", value: 7)
!517 = !DIEnumerator(name: "GrayQuantum", value: 8)
!518 = !DIEnumerator(name: "GreenQuantum", value: 9)
!519 = !DIEnumerator(name: "IndexAlphaQuantum", value: 10)
!520 = !DIEnumerator(name: "IndexQuantum", value: 11)
!521 = !DIEnumerator(name: "MagentaQuantum", value: 12)
!522 = !DIEnumerator(name: "OpacityQuantum", value: 13)
!523 = !DIEnumerator(name: "RedQuantum", value: 14)
!524 = !DIEnumerator(name: "RGBAQuantum", value: 15)
!525 = !DIEnumerator(name: "BGRAQuantum", value: 16)
!526 = !DIEnumerator(name: "RGBOQuantum", value: 17)
!527 = !DIEnumerator(name: "RGBQuantum", value: 18)
!528 = !DIEnumerator(name: "YellowQuantum", value: 19)
!529 = !DIEnumerator(name: "GrayPadQuantum", value: 20)
!530 = !DIEnumerator(name: "RGBPadQuantum", value: 21)
!531 = !DIEnumerator(name: "CbYCrYQuantum", value: 22)
!532 = !DIEnumerator(name: "CbYCrQuantum", value: 23)
!533 = !DIEnumerator(name: "CbYCrAQuantum", value: 24)
!534 = !DIEnumerator(name: "CMYKOQuantum", value: 25)
!535 = !DIEnumerator(name: "BGRQuantum", value: 26)
!536 = !DIEnumerator(name: "BGROQuantum", value: 27)
!537 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !538, line: 25, baseType: !539, size: 32, elements: !540)
!538 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!539 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!541 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!542 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!543 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!544 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!545 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!546 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!547 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!548 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!549 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!550 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!551 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!552 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!553 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!554 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!555 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!556 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!557 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!558 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!559 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!560 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!561 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!562 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!563 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!564 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!565 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!566 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!567 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!568 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!569 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!570 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!571 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!572 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!573 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!574 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!575 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!576 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!577 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!578 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!579 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!580 = !DIEnumerator(name: "MagickListOptions", value: 38)
!581 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!582 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!583 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!584 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!585 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!586 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!587 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!588 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!589 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!590 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!591 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!592 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!593 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!594 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!595 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!596 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!597 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!598 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!599 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!600 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!601 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!602 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!603 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!604 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!605 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!606 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!607 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!608 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!609 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!610 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!611 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!612 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!613 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !614, line: 34, baseType: !20, size: 32, elements: !615)
!614 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!616 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!617 = !DIEnumerator(name: "NoEvents", value: 0)
!618 = !DIEnumerator(name: "TraceEvent", value: 1)
!619 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!620 = !DIEnumerator(name: "BlobEvent", value: 4)
!621 = !DIEnumerator(name: "CacheEvent", value: 8)
!622 = !DIEnumerator(name: "CoderEvent", value: 16)
!623 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!624 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!625 = !DIEnumerator(name: "DrawEvent", value: 128)
!626 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!627 = !DIEnumerator(name: "ImageEvent", value: 512)
!628 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!629 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!630 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!631 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!632 = !DIEnumerator(name: "TransformEvent", value: 16384)
!633 = !DIEnumerator(name: "UserEvent", value: 36864)
!634 = !DIEnumerator(name: "WandEvent", value: 65536)
!635 = !DIEnumerator(name: "X11Event", value: 131072)
!636 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!637 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!638 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !639, line: 25, baseType: !20, size: 32, elements: !640)
!639 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649}
!641 = !DIEnumerator(name: "UndefinedResource", value: 0)
!642 = !DIEnumerator(name: "AreaResource", value: 1)
!643 = !DIEnumerator(name: "DiskResource", value: 2)
!644 = !DIEnumerator(name: "FileResource", value: 3)
!645 = !DIEnumerator(name: "MapResource", value: 4)
!646 = !DIEnumerator(name: "MemoryResource", value: 5)
!647 = !DIEnumerator(name: "ThreadResource", value: 6)
!648 = !DIEnumerator(name: "TimeResource", value: 7)
!649 = !DIEnumerator(name: "ThrottleResource", value: 8)
!650 = !{!6, !651, !15, !539, !652, !48, !70, !13, !678, !861, !707, !18, !993, !994, !712, !49}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !33, line: 221, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !104, line: 150, size: 105920, elements: !656)
!656 = !{!657, !659, !661, !663, !664, !666, !667, !668, !669, !670, !671, !672, !683, !684, !685, !686, !687, !701, !703, !704, !706, !709, !710, !711, !717, !718, !719, !727, !728, !729, !730, !731, !732, !734, !736, !737, !739, !741, !743, !745, !746, !747, !748, !749, !750, !751, !759, !774, !788, !789, !790, !791, !795, !799, !803, !804, !805, !806, !807, !820, !821, !823, !824, !832, !833, !835, !836, !837, !838, !839, !840, !842, !843, !844, !845, !846, !847, !848, !850, !851, !852, !853, !854, !858, !860}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !655, file: !104, line: 153, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !33, line: 209, baseType: !236)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !655, file: !104, line: 156, baseType: !660, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !131, line: 61, baseType: !130)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !655, file: !104, line: 159, baseType: !662, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !79, line: 49, baseType: !78)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !655, file: !104, line: 162, baseType: !13, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !655, file: !104, line: 165, baseType: !665, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !104, line: 86, baseType: !103)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !655, file: !104, line: 168, baseType: !32, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !655, file: !104, line: 169, baseType: !32, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !655, file: !104, line: 172, baseType: !13, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !655, file: !104, line: 173, baseType: !13, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !655, file: !104, line: 174, baseType: !13, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !655, file: !104, line: 175, baseType: !13, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !655, file: !104, line: 178, baseType: !673, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !458, line: 148, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !458, line: 131, size: 64, elements: !676)
!676 = !{!677, !680, !681, !682}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !675, file: !458, line: 143, baseType: !678, size: 16)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !33, line: 93, baseType: !679)
!679 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !675, file: !458, line: 144, baseType: !678, size: 16, offset: 16)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !675, file: !458, line: 145, baseType: !678, size: 16, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !675, file: !458, line: 146, baseType: !678, size: 16, offset: 48)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !655, file: !104, line: 179, baseType: !674, size: 64, offset: 640)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !655, file: !104, line: 180, baseType: !674, size: 64, offset: 704)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !655, file: !104, line: 181, baseType: !674, size: 64, offset: 768)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !655, file: !104, line: 184, baseType: !27, size: 64, offset: 832)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !655, file: !104, line: 187, baseType: !688, size: 768, offset: 896)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !104, line: 128, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !104, line: 121, size: 768, elements: !690)
!690 = !{!691, !698, !699, !700}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !689, file: !104, line: 124, baseType: !692, size: 192)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !104, line: 101, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !104, line: 95, size: 192, elements: !694)
!694 = !{!695, !696, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !693, file: !104, line: 98, baseType: !27, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !693, file: !104, line: 99, baseType: !27, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !693, file: !104, line: 100, baseType: !27, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !689, file: !104, line: 125, baseType: !692, size: 192, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !689, file: !104, line: 126, baseType: !692, size: 192, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !689, file: !104, line: 127, baseType: !692, size: 192, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !655, file: !104, line: 190, baseType: !702, size: 32, offset: 1664)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !242, line: 49, baseType: !241)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !655, file: !104, line: 193, baseType: !651, size: 64, offset: 1728)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !655, file: !104, line: 196, baseType: !705, size: 32, offset: 1792)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !104, line: 93, baseType: !125)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !655, file: !104, line: 199, baseType: !707, size: 64, offset: 1856)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !655, file: !104, line: 200, baseType: !707, size: 64, offset: 1920)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !655, file: !104, line: 201, baseType: !707, size: 64, offset: 1984)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !655, file: !104, line: 204, baseType: !712, size: 64, offset: 2048)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !713, line: 77, baseType: !714)
!713 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !715, line: 193, baseType: !716)
!715 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!716 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !655, file: !104, line: 207, baseType: !27, size: 64, offset: 2112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !655, file: !104, line: 208, baseType: !27, size: 64, offset: 2176)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !655, file: !104, line: 211, baseType: !720, size: 256, offset: 2240)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !285, line: 130, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !285, line: 121, size: 256, elements: !722)
!722 = !{!723, !724, !725, !726}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !721, file: !285, line: 124, baseType: !13, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !721, file: !285, line: 125, baseType: !13, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !721, file: !285, line: 128, baseType: !712, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !721, file: !285, line: 129, baseType: !712, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !655, file: !104, line: 212, baseType: !720, size: 256, offset: 2496)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !655, file: !104, line: 213, baseType: !720, size: 256, offset: 2752)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !655, file: !104, line: 216, baseType: !27, size: 64, offset: 3008)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !655, file: !104, line: 217, baseType: !27, size: 64, offset: 3072)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !655, file: !104, line: 218, baseType: !27, size: 64, offset: 3136)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !655, file: !104, line: 221, baseType: !733, size: 32, offset: 3200)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !250, line: 66, baseType: !249)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !655, file: !104, line: 224, baseType: !735, size: 32, offset: 3232)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !104, line: 73, baseType: !115)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !655, file: !104, line: 227, baseType: !53, size: 32, offset: 3264)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !655, file: !104, line: 230, baseType: !738, size: 32, offset: 3296)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !285, line: 91, baseType: !284)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !655, file: !104, line: 233, baseType: !740, size: 32, offset: 3328)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !300, line: 99, baseType: !299)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !655, file: !104, line: 236, baseType: !742, size: 32, offset: 3360)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !371, line: 32, baseType: !370)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !655, file: !104, line: 239, baseType: !744, size: 64, offset: 3392)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !655, file: !104, line: 242, baseType: !13, size: 64, offset: 3456)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !655, file: !104, line: 243, baseType: !13, size: 64, offset: 3520)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !655, file: !104, line: 246, baseType: !712, size: 64, offset: 3584)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !655, file: !104, line: 249, baseType: !13, size: 64, offset: 3648)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !655, file: !104, line: 250, baseType: !13, size: 64, offset: 3712)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !655, file: !104, line: 253, baseType: !712, size: 64, offset: 3776)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !655, file: !104, line: 256, baseType: !752, size: 192, offset: 3840)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !753, line: 68, baseType: !754)
!753 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !753, line: 62, size: 192, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !754, file: !753, line: 65, baseType: !27, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !754, file: !753, line: 66, baseType: !27, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !754, file: !753, line: 67, baseType: !27, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !655, file: !104, line: 259, baseType: !760, size: 512, offset: 4032)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !379, line: 51, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !379, line: 40, size: 512, elements: !762)
!762 = !{!763, !770, !771, !773}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !761, file: !379, line: 43, baseType: !764, size: 192)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !379, line: 38, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !379, line: 32, size: 192, elements: !766)
!766 = !{!767, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !765, file: !379, line: 35, baseType: !27, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !765, file: !379, line: 36, baseType: !27, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !765, file: !379, line: 37, baseType: !27, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !761, file: !379, line: 44, baseType: !764, size: 192, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !761, file: !379, line: 47, baseType: !772, size: 32, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !379, line: 30, baseType: !378)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !761, file: !379, line: 50, baseType: !13, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !655, file: !104, line: 262, baseType: !775, size: 64, offset: 4544)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !776, line: 26, baseType: !777)
!776 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!32, !780, !782, !785, !651}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !33, line: 150, baseType: !784)
!784 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !33, line: 151, baseType: !787)
!787 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !655, file: !104, line: 265, baseType: !651, size: 64, offset: 4608)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !655, file: !104, line: 266, baseType: !651, size: 64, offset: 4672)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !655, file: !104, line: 267, baseType: !651, size: 64, offset: 4736)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !655, file: !104, line: 270, baseType: !792, size: 64, offset: 4800)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !79, line: 52, baseType: !794)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !79, line: 51, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !655, file: !104, line: 273, baseType: !796, size: 64, offset: 4864)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !33, line: 217, baseType: !798)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !33, line: 217, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !655, file: !104, line: 276, baseType: !800, size: 32768, offset: 4928)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 32768, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 4096)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !655, file: !104, line: 277, baseType: !800, size: 32768, offset: 37696)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !655, file: !104, line: 278, baseType: !800, size: 32768, offset: 70464)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !655, file: !104, line: 281, baseType: !13, size: 64, offset: 103232)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !655, file: !104, line: 282, baseType: !13, size: 64, offset: 103296)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !655, file: !104, line: 285, baseType: !808, size: 448, offset: 103360)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !33, line: 219, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !385, line: 102, size: 448, elements: !810)
!810 = !{!811, !813, !814, !815, !816, !817, !818, !819}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !809, file: !385, line: 105, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !385, line: 100, baseType: !384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !809, file: !385, line: 108, baseType: !539, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !809, file: !385, line: 111, baseType: !707, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !809, file: !385, line: 112, baseType: !707, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !809, file: !385, line: 115, baseType: !651, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !809, file: !385, line: 118, baseType: !32, size: 32, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !809, file: !385, line: 121, baseType: !70, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !809, file: !385, line: 124, baseType: !13, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !655, file: !104, line: 288, baseType: !32, size: 32, offset: 103808)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !104, line: 291, baseType: !822, size: 64, offset: 103872)
!822 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !712)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !655, file: !104, line: 294, baseType: !70, size: 64, offset: 103936)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !655, file: !104, line: 297, baseType: !825, size: 256, offset: 104000)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !242, line: 40, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !242, line: 27, size: 256, elements: !827)
!827 = !{!828, !829, !830, !831}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !826, file: !242, line: 30, baseType: !707, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !826, file: !242, line: 33, baseType: !13, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !826, file: !242, line: 36, baseType: !49, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !826, file: !242, line: 39, baseType: !13, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !655, file: !104, line: 298, baseType: !825, size: 256, offset: 104256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !655, file: !104, line: 299, baseType: !834, size: 64, offset: 104512)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !655, file: !104, line: 302, baseType: !13, size: 64, offset: 104576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !655, file: !104, line: 305, baseType: !13, size: 64, offset: 104640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !655, file: !104, line: 308, baseType: !744, size: 64, offset: 104704)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !655, file: !104, line: 309, baseType: !744, size: 64, offset: 104768)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !655, file: !104, line: 310, baseType: !744, size: 64, offset: 104832)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !655, file: !104, line: 313, baseType: !841, size: 32, offset: 104896)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !458, line: 47, baseType: !457)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !655, file: !104, line: 316, baseType: !32, size: 32, offset: 104928)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !655, file: !104, line: 319, baseType: !674, size: 64, offset: 104960)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !655, file: !104, line: 322, baseType: !744, size: 64, offset: 105024)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !655, file: !104, line: 325, baseType: !720, size: 256, offset: 105088)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !655, file: !104, line: 328, baseType: !651, size: 64, offset: 105344)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !655, file: !104, line: 329, baseType: !651, size: 64, offset: 105408)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !104, line: 332, baseType: !849, size: 32, offset: 105472)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !104, line: 61, baseType: !167)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !655, file: !104, line: 335, baseType: !32, size: 32, offset: 105504)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !655, file: !104, line: 338, baseType: !786, size: 64, offset: 105536)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !655, file: !104, line: 341, baseType: !32, size: 32, offset: 105600)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !655, file: !104, line: 344, baseType: !13, size: 64, offset: 105664)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !655, file: !104, line: 347, baseType: !855, size: 64, offset: 105728)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !856, line: 7, baseType: !857)
!856 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !715, line: 160, baseType: !716)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !655, file: !104, line: 350, baseType: !859, size: 32, offset: 105792)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !458, line: 79, baseType: !474)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !655, file: !104, line: 353, baseType: !13, size: 64, offset: 105856)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !33, line: 223, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !104, line: 356, size: 134336, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !900, !901, !902, !903, !904, !905, !907, !909, !910, !911, !912, !913, !922, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !990, !991, !992}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !864, file: !104, line: 359, baseType: !662, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !864, file: !104, line: 362, baseType: !665, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !864, file: !104, line: 365, baseType: !32, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !864, file: !104, line: 366, baseType: !32, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !864, file: !104, line: 367, baseType: !32, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !864, file: !104, line: 368, baseType: !32, size: 32, offset: 160)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !864, file: !104, line: 371, baseType: !707, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !864, file: !104, line: 372, baseType: !707, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !864, file: !104, line: 373, baseType: !707, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !864, file: !104, line: 374, baseType: !707, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !864, file: !104, line: 377, baseType: !13, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !864, file: !104, line: 378, baseType: !13, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !864, file: !104, line: 379, baseType: !13, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !864, file: !104, line: 382, baseType: !735, size: 32, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !864, file: !104, line: 385, baseType: !53, size: 32, offset: 672)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !864, file: !104, line: 388, baseType: !705, size: 32, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !864, file: !104, line: 391, baseType: !13, size: 64, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !864, file: !104, line: 394, baseType: !707, size: 64, offset: 832)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !864, file: !104, line: 395, baseType: !707, size: 64, offset: 896)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !864, file: !104, line: 396, baseType: !707, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !864, file: !104, line: 397, baseType: !707, size: 64, offset: 1024)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !864, file: !104, line: 398, baseType: !707, size: 64, offset: 1088)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !864, file: !104, line: 401, baseType: !27, size: 64, offset: 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !864, file: !104, line: 402, baseType: !27, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !864, file: !104, line: 405, baseType: !674, size: 64, offset: 1280)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !864, file: !104, line: 406, baseType: !674, size: 64, offset: 1344)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !864, file: !104, line: 407, baseType: !674, size: 64, offset: 1408)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !864, file: !104, line: 410, baseType: !32, size: 32, offset: 1472)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !864, file: !104, line: 411, baseType: !32, size: 32, offset: 1504)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !864, file: !104, line: 414, baseType: !13, size: 64, offset: 1536)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !864, file: !104, line: 417, baseType: !660, size: 32, offset: 1600)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !864, file: !104, line: 420, baseType: !849, size: 32, offset: 1632)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !864, file: !104, line: 423, baseType: !899, size: 32, offset: 1664)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !182, line: 59, baseType: !181)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !864, file: !104, line: 426, baseType: !712, size: 64, offset: 1728)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !864, file: !104, line: 429, baseType: !32, size: 32, offset: 1792)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !864, file: !104, line: 430, baseType: !32, size: 32, offset: 1824)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !864, file: !104, line: 433, baseType: !707, size: 64, offset: 1856)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !864, file: !104, line: 434, baseType: !707, size: 64, offset: 1920)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !864, file: !104, line: 437, baseType: !906, size: 32, offset: 1984)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !33, line: 202, baseType: !214)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !864, file: !104, line: 440, baseType: !908, size: 64, offset: 2048)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !864, file: !104, line: 443, baseType: !651, size: 64, offset: 2112)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !864, file: !104, line: 446, baseType: !775, size: 64, offset: 2176)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !864, file: !104, line: 449, baseType: !651, size: 64, offset: 2240)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !864, file: !104, line: 450, baseType: !651, size: 64, offset: 2304)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !864, file: !104, line: 453, baseType: !914, size: 64, offset: 2368)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !915, line: 26, baseType: !916)
!915 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!13, !652, !919, !921}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !864, file: !104, line: 456, baseType: !923, size: 64, offset: 2432)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !925, line: 7, baseType: !926)
!925 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !927, line: 49, size: 1728, elements: !928)
!927 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!928 = !{!929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !944, !946, !947, !948, !950, !951, !953, !957, !960, !962, !965, !968, !969, !970, !971, !972}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !926, file: !927, line: 51, baseType: !539, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !926, file: !927, line: 54, baseType: !707, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !926, file: !927, line: 55, baseType: !707, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !926, file: !927, line: 56, baseType: !707, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !926, file: !927, line: 57, baseType: !707, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !926, file: !927, line: 58, baseType: !707, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !926, file: !927, line: 59, baseType: !707, size: 64, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !926, file: !927, line: 60, baseType: !707, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !926, file: !927, line: 61, baseType: !707, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !926, file: !927, line: 64, baseType: !707, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !926, file: !927, line: 65, baseType: !707, size: 64, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !926, file: !927, line: 66, baseType: !707, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !926, file: !927, line: 68, baseType: !942, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !927, line: 36, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !926, file: !927, line: 70, baseType: !945, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !926, file: !927, line: 72, baseType: !539, size: 32, offset: 896)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !926, file: !927, line: 73, baseType: !539, size: 32, offset: 928)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !926, file: !927, line: 74, baseType: !949, size: 64, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !715, line: 152, baseType: !716)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !926, file: !927, line: 77, baseType: !679, size: 16, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !926, file: !927, line: 78, baseType: !952, size: 8, offset: 1040)
!952 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !926, file: !927, line: 79, baseType: !954, size: 8, offset: 1048)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 8, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: 1)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !926, file: !927, line: 81, baseType: !958, size: 64, offset: 1088)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !927, line: 43, baseType: null)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !926, file: !927, line: 89, baseType: !961, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !715, line: 153, baseType: !716)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !926, file: !927, line: 91, baseType: !963, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !927, line: 37, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !926, file: !927, line: 92, baseType: !966, size: 64, offset: 1280)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !927, line: 38, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !926, file: !927, line: 93, baseType: !945, size: 64, offset: 1344)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !926, file: !927, line: 94, baseType: !651, size: 64, offset: 1408)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !926, file: !927, line: 95, baseType: !13, size: 64, offset: 1472)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !926, file: !927, line: 96, baseType: !539, size: 32, offset: 1536)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !926, file: !927, line: 98, baseType: !973, size: 160, offset: 1568)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 160, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 20)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !864, file: !104, line: 459, baseType: !651, size: 64, offset: 2496)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !864, file: !104, line: 462, baseType: !13, size: 64, offset: 2560)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !864, file: !104, line: 465, baseType: !800, size: 32768, offset: 2624)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !864, file: !104, line: 466, baseType: !800, size: 32768, offset: 35392)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !864, file: !104, line: 467, baseType: !800, size: 32768, offset: 68160)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !864, file: !104, line: 468, baseType: !800, size: 32768, offset: 100928)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !864, file: !104, line: 471, baseType: !32, size: 32, offset: 133696)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !864, file: !104, line: 474, baseType: !707, size: 64, offset: 133760)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !864, file: !104, line: 477, baseType: !13, size: 64, offset: 133824)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !864, file: !104, line: 478, baseType: !13, size: 64, offset: 133888)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !864, file: !104, line: 481, baseType: !674, size: 64, offset: 133952)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !864, file: !104, line: 484, baseType: !13, size: 64, offset: 134016)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !864, file: !104, line: 487, baseType: !989, size: 32, offset: 134080)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !487, line: 47, baseType: !486)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !864, file: !104, line: 490, baseType: !674, size: 64, offset: 134112)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !864, file: !104, line: 493, baseType: !651, size: 64, offset: 134208)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !864, file: !104, line: 496, baseType: !32, size: 32, offset: 134272)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !33, line: 78, baseType: !995)
!995 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!996 = !{!0}
!997 = !{!998}
!998 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !2, file: !3, line: 570, type: !6)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 1024, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 32)
!1002 = !{i32 7, !"Dwarf Version", i32 5}
!1003 = !{i32 2, !"Debug Info Version", i32 3}
!1004 = !{i32 1, !"wchar_size", i32 4}
!1005 = !{i32 7, !"PIC Level", i32 2}
!1006 = !{i32 7, !"PIE Level", i32 2}
!1007 = !{i32 7, !"uwtable", i32 2}
!1008 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1009 = distinct !DISubprogram(name: "AcquireQuantumInfo", scope: !3, file: !3, line: 114, type: !1010, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!6, !861, !908}
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1020}
!1013 = !DILocalVariable(name: "image_info", arg: 1, scope: !1009, file: !3, line: 114, type: !861)
!1014 = !DILocalVariable(name: "image", arg: 2, scope: !1009, file: !3, line: 115, type: !908)
!1015 = !DILocalVariable(name: "status", scope: !1009, file: !3, line: 118, type: !32)
!1016 = !DILocalVariable(name: "quantum_info", scope: !1009, file: !3, line: 121, type: !6)
!1017 = !DILocalVariable(name: "message", scope: !1018, file: !3, line: 125, type: !707)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 125, column: 5)
!1019 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 124, column: 7)
!1020 = !DILocalVariable(name: "exception", scope: !1018, file: !3, line: 125, type: !808)
!1021 = !DILocation(line: 0, scope: !1009)
!1022 = !DILocation(line: 123, column: 32, scope: !1009)
!1023 = !DILocation(line: 124, column: 20, scope: !1019)
!1024 = !DILocation(line: 124, column: 7, scope: !1009)
!1025 = !DILocation(line: 125, column: 5, scope: !1018)
!1026 = !{!1027, !1027, i64 0}
!1027 = !{!"int", !1028, i64 0}
!1028 = !{!"omnipotent char", !1029, i64 0}
!1029 = !{!"Simple C/C++ TBAA"}
!1030 = !DILocation(line: 0, scope: !1018)
!1031 = !DILocation(line: 126, column: 17, scope: !1009)
!1032 = !DILocation(line: 126, column: 26, scope: !1009)
!1033 = !{!1034, !1035, i64 144}
!1034 = !{!"_QuantumInfo", !1035, i64 0, !1035, i64 8, !1028, i64 16, !1036, i64 24, !1036, i64 32, !1036, i64 40, !1035, i64 48, !1028, i64 56, !1028, i64 60, !1028, i64 64, !1035, i64 72, !1037, i64 80, !1035, i64 88, !1028, i64 96, !1038, i64 104, !1037, i64 136, !1035, i64 144}
!1035 = !{!"long", !1028, i64 0}
!1036 = !{!"double", !1028, i64 0}
!1037 = !{!"any pointer", !1028, i64 0}
!1038 = !{!"_QuantumState", !1036, i64 0, !1027, i64 8, !1035, i64 16, !1037, i64 24}
!1039 = !DILocation(line: 127, column: 3, scope: !1009)
!1040 = !DILocation(line: 128, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 128, column: 7)
!1042 = !DILocation(line: 128, column: 7, scope: !1009)
!1043 = !DILocation(line: 130, column: 52, scope: !1009)
!1044 = !{!1045, !1035, i64 56}
!1045 = !{!"_Image", !1028, i64 0, !1028, i64 4, !1028, i64 8, !1035, i64 16, !1028, i64 24, !1028, i64 28, !1028, i64 32, !1035, i64 40, !1035, i64 48, !1035, i64 56, !1035, i64 64, !1037, i64 72, !1046, i64 80, !1046, i64 88, !1046, i64 96, !1036, i64 104, !1048, i64 112, !1028, i64 208, !1037, i64 216, !1028, i64 224, !1037, i64 232, !1037, i64 240, !1037, i64 248, !1035, i64 256, !1036, i64 264, !1036, i64 272, !1050, i64 280, !1050, i64 312, !1050, i64 344, !1036, i64 376, !1036, i64 384, !1036, i64 392, !1028, i64 400, !1028, i64 404, !1028, i64 408, !1028, i64 412, !1028, i64 416, !1028, i64 420, !1037, i64 424, !1035, i64 432, !1035, i64 440, !1035, i64 448, !1035, i64 456, !1035, i64 464, !1035, i64 472, !1051, i64 480, !1052, i64 504, !1037, i64 568, !1037, i64 576, !1037, i64 584, !1037, i64 592, !1037, i64 600, !1037, i64 608, !1028, i64 616, !1028, i64 4712, !1028, i64 8808, !1035, i64 12904, !1035, i64 12912, !1054, i64 12920, !1028, i64 12976, !1035, i64 12984, !1037, i64 12992, !1055, i64 13000, !1055, i64 13032, !1037, i64 13064, !1035, i64 13072, !1035, i64 13080, !1037, i64 13088, !1037, i64 13096, !1037, i64 13104, !1028, i64 13112, !1028, i64 13116, !1046, i64 13120, !1037, i64 13128, !1050, i64 13136, !1037, i64 13168, !1037, i64 13176, !1028, i64 13184, !1028, i64 13188, !1056, i64 13192, !1028, i64 13200, !1035, i64 13208, !1035, i64 13216, !1028, i64 13224, !1035, i64 13232}
!1046 = !{!"_PixelPacket", !1047, i64 0, !1047, i64 2, !1047, i64 4, !1047, i64 6}
!1047 = !{!"short", !1028, i64 0}
!1048 = !{!"_ChromaticityInfo", !1049, i64 0, !1049, i64 24, !1049, i64 48, !1049, i64 72}
!1049 = !{!"_PrimaryInfo", !1036, i64 0, !1036, i64 8, !1036, i64 16}
!1050 = !{!"_RectangleInfo", !1035, i64 0, !1035, i64 8, !1035, i64 16, !1035, i64 24}
!1051 = !{!"_ErrorInfo", !1036, i64 0, !1036, i64 8, !1036, i64 16}
!1052 = !{!"_TimerInfo", !1053, i64 0, !1053, i64 24, !1028, i64 48, !1035, i64 56}
!1053 = !{!"_Timer", !1036, i64 0, !1036, i64 8, !1036, i64 16}
!1054 = !{!"_ExceptionInfo", !1028, i64 0, !1027, i64 4, !1037, i64 8, !1037, i64 16, !1037, i64 24, !1028, i64 32, !1037, i64 40, !1035, i64 48}
!1055 = !{!"_ProfileInfo", !1037, i64 0, !1035, i64 8, !1037, i64 16, !1035, i64 24}
!1056 = !{!"long long", !1028, i64 0}
!1057 = !DILocation(line: 130, column: 10, scope: !1009)
!1058 = !DILocation(line: 131, column: 31, scope: !1009)
!1059 = !{!1045, !1028, i64 408}
!1060 = !DILocation(line: 131, column: 17, scope: !1009)
!1061 = !DILocation(line: 131, column: 23, scope: !1009)
!1062 = !{!1034, !1028, i64 96}
!1063 = !DILocation(line: 132, column: 14, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 132, column: 7)
!1065 = !DILocation(line: 132, column: 7, scope: !1009)
!1066 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1067, file: !3, line: 214, type: !6)
!1067 = distinct !DISubprogram(name: "DestroyQuantumInfo", scope: !3, file: !3, line: 214, type: !1068, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!6, !6}
!1070 = !{!1066}
!1071 = !DILocation(line: 0, scope: !1067, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 133, column: 18, scope: !1064)
!1073 = !DILocation(line: 218, column: 21, scope: !1074, inlinedAt: !1072)
!1074 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 218, column: 7)
!1075 = !{!1034, !1037, i64 80}
!1076 = !DILocation(line: 218, column: 28, scope: !1074, inlinedAt: !1072)
!1077 = !DILocation(line: 218, column: 7, scope: !1067, inlinedAt: !1072)
!1078 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1079, file: !3, line: 249, type: !6)
!1079 = distinct !DISubprogram(name: "DestroyQuantumPixels", scope: !3, file: !3, line: 249, type: !4, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1080)
!1080 = !{!1078, !1081, !1082}
!1081 = !DILocalVariable(name: "i", scope: !1079, file: !3, line: 252, type: !712)
!1082 = !DILocalVariable(name: "extent", scope: !1079, file: !3, line: 255, type: !712)
!1083 = !DILocation(line: 0, scope: !1079, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 219, column: 5, scope: !1074, inlinedAt: !1072)
!1085 = !DILocation(line: 261, column: 41, scope: !1086, inlinedAt: !1084)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 261, column: 3)
!1087 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 261, column: 3)
!1088 = !{!1034, !1035, i64 72}
!1089 = !DILocation(line: 261, column: 15, scope: !1086, inlinedAt: !1084)
!1090 = !DILocation(line: 261, column: 3, scope: !1087, inlinedAt: !1084)
!1091 = !DILocation(line: 262, column: 9, scope: !1092, inlinedAt: !1084)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 262, column: 9)
!1093 = !{!1037, !1037, i64 0}
!1094 = !DILocation(line: 262, column: 33, scope: !1092, inlinedAt: !1084)
!1095 = !DILocation(line: 262, column: 9, scope: !1086, inlinedAt: !1084)
!1096 = !DILocation(line: 268, column: 51, scope: !1097, inlinedAt: !1084)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 263, column: 7)
!1098 = !DILocation(line: 268, column: 23, scope: !1097, inlinedAt: !1084)
!1099 = !DILocation(line: 268, column: 9, scope: !1097, inlinedAt: !1084)
!1100 = !DILocation(line: 268, column: 32, scope: !1097, inlinedAt: !1084)
!1101 = !DILocation(line: 270, column: 7, scope: !1097, inlinedAt: !1084)
!1102 = !DILocation(line: 261, column: 58, scope: !1086, inlinedAt: !1084)
!1103 = distinct !{!1103, !1090, !1104, !1105, !1106}
!1104 = !DILocation(line: 270, column: 7, scope: !1087, inlinedAt: !1084)
!1105 = !{!"llvm.loop.mustprogress"}
!1106 = !{!"llvm.loop.unroll.disable"}
!1107 = !DILocation(line: 272, column: 19, scope: !1079, inlinedAt: !1084)
!1108 = !DILocation(line: 271, column: 43, scope: !1079, inlinedAt: !1084)
!1109 = !DILocation(line: 271, column: 23, scope: !1079, inlinedAt: !1084)
!1110 = !DILocation(line: 219, column: 5, scope: !1074, inlinedAt: !1072)
!1111 = !DILocation(line: 220, column: 21, scope: !1112, inlinedAt: !1072)
!1112 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 220, column: 7)
!1113 = !{!1034, !1037, i64 136}
!1114 = !DILocation(line: 220, column: 31, scope: !1112, inlinedAt: !1072)
!1115 = !DILocation(line: 220, column: 7, scope: !1067, inlinedAt: !1072)
!1116 = !DILocation(line: 221, column: 5, scope: !1112, inlinedAt: !1072)
!1117 = !DILocation(line: 222, column: 26, scope: !1067, inlinedAt: !1072)
!1118 = !DILocation(line: 223, column: 32, scope: !1067, inlinedAt: !1072)
!1119 = !DILocation(line: 133, column: 5, scope: !1064)
!1120 = !DILocation(line: 135, column: 1, scope: !1009)
!1121 = !DISubprogram(name: "AcquireMagickMemory", scope: !1122, file: !1122, line: 40, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1122 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!651, !921}
!1125 = !{}
!1126 = !DISubprogram(name: "GetExceptionInfo", scope: !385, file: !385, line: 166, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!1130 = !DISubprogram(name: "GetExceptionMessage", scope: !385, file: !385, line: 137, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!707, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!1134 = !DISubprogram(name: "ThrowMagickException", scope: !385, file: !385, line: 156, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!32, !1129, !780, !780, !921, !1137, !780, !780, null}
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !812)
!1138 = !DISubprogram(name: "DestroyString", scope: !1139, file: !1139, line: 46, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1139 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!707, !707}
!1142 = !DISubprogram(name: "CatchException", scope: !385, file: !385, line: 164, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1143 = !DISubprogram(name: "DestroyExceptionInfo", scope: !385, file: !385, line: 148, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!1129, !1129}
!1146 = !DISubprogram(name: "MagickCoreTerminus", scope: !1147, file: !1147, line: 147, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1147 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null}
!1150 = distinct !DISubprogram(name: "GetQuantumInfo", scope: !3, file: !3, line: 412, type: !1151, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !861, !6}
!1153 = !{!1154, !1155, !1156}
!1154 = !DILocalVariable(name: "image_info", arg: 1, scope: !1150, file: !3, line: 412, type: !861)
!1155 = !DILocalVariable(name: "quantum_info", arg: 2, scope: !1150, file: !3, line: 413, type: !6)
!1156 = !DILocalVariable(name: "option", scope: !1150, file: !3, line: 416, type: !780)
!1157 = !DILocation(line: 0, scope: !1150)
!1158 = !DILocation(line: 419, column: 10, scope: !1150)
!1159 = !DILocation(line: 420, column: 17, scope: !1150)
!1160 = !DILocation(line: 420, column: 24, scope: !1150)
!1161 = !{!1034, !1035, i64 8}
!1162 = !DILocation(line: 421, column: 17, scope: !1150)
!1163 = !DILocation(line: 421, column: 24, scope: !1150)
!1164 = !{!1034, !1036, i64 32}
!1165 = !DILocation(line: 422, column: 17, scope: !1150)
!1166 = !DILocation(line: 422, column: 22, scope: !1150)
!1167 = !{!1034, !1036, i64 40}
!1168 = !DILocation(line: 423, column: 17, scope: !1150)
!1169 = !DILocation(line: 423, column: 21, scope: !1150)
!1170 = !{!1034, !1028, i64 60}
!1171 = !DILocation(line: 424, column: 27, scope: !1150)
!1172 = !DILocation(line: 424, column: 17, scope: !1150)
!1173 = !DILocation(line: 424, column: 26, scope: !1150)
!1174 = !DILocation(line: 425, column: 17, scope: !1150)
!1175 = !DILocation(line: 425, column: 26, scope: !1150)
!1176 = !DILocation(line: 426, column: 18, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 426, column: 7)
!1178 = !DILocation(line: 426, column: 7, scope: !1150)
!1179 = !DILocation(line: 428, column: 10, scope: !1150)
!1180 = !DILocation(line: 429, column: 14, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 429, column: 7)
!1182 = !DILocation(line: 429, column: 7, scope: !1150)
!1183 = !DILocation(line: 430, column: 46, scope: !1181)
!1184 = !DILocation(line: 430, column: 26, scope: !1181)
!1185 = !DILocation(line: 430, column: 19, scope: !1181)
!1186 = !DILocation(line: 430, column: 25, scope: !1181)
!1187 = !{!1034, !1028, i64 16}
!1188 = !DILocation(line: 430, column: 5, scope: !1181)
!1189 = !DILocation(line: 432, column: 10, scope: !1150)
!1190 = !DILocation(line: 433, column: 14, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 433, column: 7)
!1192 = !DILocation(line: 433, column: 7, scope: !1150)
!1193 = !DILocalVariable(name: "string", arg: 1, scope: !1194, file: !1195, line: 42, type: !1198)
!1194 = distinct !DISubprogram(name: "StringToDouble", scope: !1195, file: !1195, line: 42, type: !1196, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1200)
!1195 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!27, !1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !780)
!1199 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !993)
!1200 = !{!1193, !1201}
!1201 = !DILocalVariable(name: "sentinal", arg: 2, scope: !1194, file: !1195, line: 43, type: !1199)
!1202 = !DILocation(line: 0, scope: !1194, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 434, column: 27, scope: !1191)
!1204 = !DILocation(line: 45, column: 10, scope: !1194, inlinedAt: !1203)
!1205 = !DILocation(line: 434, column: 19, scope: !1191)
!1206 = !DILocation(line: 434, column: 26, scope: !1191)
!1207 = !{!1034, !1036, i64 24}
!1208 = !DILocation(line: 434, column: 5, scope: !1191)
!1209 = !DILocation(line: 435, column: 10, scope: !1150)
!1210 = !DILocation(line: 436, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 436, column: 7)
!1212 = !DILocation(line: 436, column: 7, scope: !1150)
!1213 = !DILocation(line: 0, scope: !1194, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 437, column: 27, scope: !1211)
!1215 = !DILocation(line: 45, column: 10, scope: !1194, inlinedAt: !1214)
!1216 = !DILocation(line: 437, column: 26, scope: !1211)
!1217 = !DILocation(line: 437, column: 5, scope: !1211)
!1218 = !DILocation(line: 438, column: 22, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 438, column: 7)
!1220 = !DILocation(line: 438, column: 30, scope: !1219)
!1221 = !DILocation(line: 0, scope: !1219)
!1222 = !DILocation(line: 438, column: 38, scope: !1219)
!1223 = !DILocation(line: 439, column: 24, scope: !1219)
!1224 = !DILocation(line: 439, column: 5, scope: !1219)
!1225 = !DILocation(line: 441, column: 31, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 441, column: 9)
!1227 = !DILocation(line: 441, column: 9, scope: !1219)
!1228 = !DILocation(line: 443, column: 58, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 442, column: 7)
!1230 = !DILocation(line: 443, column: 28, scope: !1229)
!1231 = !DILocation(line: 444, column: 30, scope: !1229)
!1232 = !DILocation(line: 445, column: 7, scope: !1229)
!1233 = !DILocation(line: 447, column: 79, scope: !1226)
!1234 = !DILocation(line: 447, column: 56, scope: !1226)
!1235 = !DILocation(line: 447, column: 26, scope: !1226)
!1236 = !DILocation(line: 449, column: 10, scope: !1150)
!1237 = !DILocation(line: 450, column: 14, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 450, column: 7)
!1239 = !DILocation(line: 450, column: 7, scope: !1150)
!1240 = !DILocation(line: 0, scope: !1194, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 451, column: 25, scope: !1238)
!1242 = !DILocation(line: 45, column: 10, scope: !1194, inlinedAt: !1241)
!1243 = !DILocation(line: 451, column: 24, scope: !1238)
!1244 = !DILocation(line: 451, column: 5, scope: !1238)
!1245 = !DILocation(line: 452, column: 10, scope: !1150)
!1246 = !DILocation(line: 453, column: 14, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 453, column: 7)
!1248 = !DILocation(line: 453, column: 7, scope: !1150)
!1249 = !DILocation(line: 454, column: 32, scope: !1247)
!1250 = !DILocation(line: 454, column: 69, scope: !1247)
!1251 = !DILocation(line: 454, column: 19, scope: !1247)
!1252 = !DILocation(line: 454, column: 31, scope: !1247)
!1253 = !{!1034, !1028, i64 56}
!1254 = !DILocation(line: 454, column: 5, scope: !1247)
!1255 = !DILocation(line: 456, column: 36, scope: !1150)
!1256 = !{!1257, !1028, i64 84}
!1257 = !{!"_ImageInfo", !1028, i64 0, !1028, i64 4, !1028, i64 8, !1028, i64 12, !1028, i64 16, !1028, i64 20, !1037, i64 24, !1037, i64 32, !1037, i64 40, !1037, i64 48, !1035, i64 56, !1035, i64 64, !1035, i64 72, !1028, i64 80, !1028, i64 84, !1028, i64 88, !1035, i64 96, !1037, i64 104, !1037, i64 112, !1037, i64 120, !1037, i64 128, !1037, i64 136, !1036, i64 144, !1036, i64 152, !1046, i64 160, !1046, i64 168, !1046, i64 176, !1028, i64 184, !1028, i64 188, !1035, i64 192, !1028, i64 200, !1028, i64 204, !1028, i64 208, !1035, i64 216, !1028, i64 224, !1028, i64 228, !1037, i64 232, !1037, i64 240, !1028, i64 248, !1037, i64 256, !1037, i64 264, !1037, i64 272, !1037, i64 280, !1037, i64 288, !1037, i64 296, !1037, i64 304, !1037, i64 312, !1035, i64 320, !1028, i64 328, !1028, i64 4424, !1028, i64 8520, !1028, i64 12616, !1028, i64 16712, !1037, i64 16720, !1035, i64 16728, !1035, i64 16736, !1046, i64 16744, !1035, i64 16752, !1028, i64 16760, !1046, i64 16764, !1037, i64 16776, !1028, i64 16784}
!1258 = !DILocation(line: 456, column: 17, scope: !1150)
!1259 = !DILocation(line: 456, column: 23, scope: !1150)
!1260 = !DILocation(line: 0, scope: !2, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 457, column: 3, scope: !1150)
!1262 = !DILocation(line: 585, column: 17, scope: !2, inlinedAt: !1261)
!1263 = !DILocation(line: 585, column: 36, scope: !2, inlinedAt: !1261)
!1264 = !{!1034, !1036, i64 104}
!1265 = !DILocation(line: 586, column: 26, scope: !1266, inlinedAt: !1261)
!1266 = distinct !DILexicalBlock(scope: !2, file: !3, line: 586, column: 7)
!1267 = !DILocation(line: 586, column: 7, scope: !1266, inlinedAt: !1261)
!1268 = !DILocation(line: 586, column: 33, scope: !1266, inlinedAt: !1261)
!1269 = !DILocation(line: 586, column: 7, scope: !2, inlinedAt: !1261)
!1270 = !DILocation(line: 587, column: 38, scope: !1266, inlinedAt: !1261)
!1271 = !DILocation(line: 587, column: 5, scope: !1266, inlinedAt: !1261)
!1272 = !DILocation(line: 588, column: 23, scope: !2, inlinedAt: !1261)
!1273 = !DILocation(line: 588, column: 28, scope: !2, inlinedAt: !1261)
!1274 = !{!1034, !1027, i64 112}
!1275 = !DILocation(line: 589, column: 23, scope: !2, inlinedAt: !1261)
!1276 = !DILocation(line: 589, column: 27, scope: !2, inlinedAt: !1261)
!1277 = !{!1034, !1035, i64 120}
!1278 = !DILocation(line: 590, column: 23, scope: !2, inlinedAt: !1261)
!1279 = !DILocation(line: 590, column: 27, scope: !2, inlinedAt: !1261)
!1280 = !{!1034, !1037, i64 128}
!1281 = !DILocation(line: 458, column: 1, scope: !1150)
!1282 = distinct !DISubprogram(name: "SetQuantumDepth", scope: !3, file: !3, line: 653, type: !1283, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!32, !652, !6, !921}
!1285 = !{!1286, !1287, !1288, !1289}
!1286 = !DILocalVariable(name: "image", arg: 1, scope: !1282, file: !3, line: 653, type: !652)
!1287 = !DILocalVariable(name: "quantum_info", arg: 2, scope: !1282, file: !3, line: 654, type: !6)
!1288 = !DILocalVariable(name: "depth", arg: 3, scope: !1282, file: !3, line: 654, type: !921)
!1289 = !DILocalVariable(name: "status", scope: !1282, file: !3, line: 657, type: !32)
!1290 = !DILocation(line: 0, scope: !1282)
!1291 = !DILocation(line: 664, column: 14, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 664, column: 7)
!1293 = !{!1045, !1028, i64 12976}
!1294 = !DILocation(line: 664, column: 20, scope: !1292)
!1295 = !DILocation(line: 664, column: 7, scope: !1282)
!1296 = !DILocation(line: 665, column: 68, scope: !1292)
!1297 = !DILocation(line: 665, column: 12, scope: !1292)
!1298 = !DILocation(line: 665, column: 5, scope: !1292)
!1299 = !DILocation(line: 668, column: 22, scope: !1282)
!1300 = !{!1034, !1035, i64 0}
!1301 = !DILocation(line: 669, column: 21, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 669, column: 7)
!1303 = !DILocation(line: 669, column: 28, scope: !1302)
!1304 = !DILocation(line: 669, column: 7, scope: !1282)
!1305 = !DILocation(line: 671, column: 31, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 671, column: 11)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 670, column: 5)
!1308 = !DILocation(line: 671, column: 11, scope: !1307)
!1309 = !DILocation(line: 674, column: 33, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 674, column: 13)
!1311 = !DILocation(line: 0, scope: !1306)
!1312 = !DILocation(line: 679, column: 21, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 679, column: 7)
!1314 = !DILocation(line: 679, column: 28, scope: !1313)
!1315 = !DILocation(line: 679, column: 7, scope: !1282)
!1316 = !DILocation(line: 0, scope: !1079, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 680, column: 5, scope: !1313)
!1318 = !DILocation(line: 261, column: 41, scope: !1086, inlinedAt: !1317)
!1319 = !DILocation(line: 261, column: 15, scope: !1086, inlinedAt: !1317)
!1320 = !DILocation(line: 261, column: 3, scope: !1087, inlinedAt: !1317)
!1321 = !DILocation(line: 262, column: 23, scope: !1092, inlinedAt: !1317)
!1322 = !DILocation(line: 262, column: 9, scope: !1092, inlinedAt: !1317)
!1323 = !DILocation(line: 262, column: 33, scope: !1092, inlinedAt: !1317)
!1324 = !DILocation(line: 262, column: 9, scope: !1086, inlinedAt: !1317)
!1325 = !DILocation(line: 268, column: 51, scope: !1097, inlinedAt: !1317)
!1326 = !DILocation(line: 268, column: 23, scope: !1097, inlinedAt: !1317)
!1327 = !DILocation(line: 268, column: 9, scope: !1097, inlinedAt: !1317)
!1328 = !DILocation(line: 268, column: 32, scope: !1097, inlinedAt: !1317)
!1329 = !DILocation(line: 270, column: 7, scope: !1097, inlinedAt: !1317)
!1330 = !DILocation(line: 261, column: 58, scope: !1086, inlinedAt: !1317)
!1331 = distinct !{!1331, !1320, !1332, !1105, !1106}
!1332 = !DILocation(line: 270, column: 7, scope: !1087, inlinedAt: !1317)
!1333 = !DILocation(line: 272, column: 19, scope: !1079, inlinedAt: !1317)
!1334 = !DILocation(line: 271, column: 43, scope: !1079, inlinedAt: !1317)
!1335 = !DILocation(line: 271, column: 23, scope: !1079, inlinedAt: !1317)
!1336 = !DILocation(line: 682, column: 21, scope: !1282)
!1337 = !DILocation(line: 680, column: 5, scope: !1313)
!1338 = !DILocation(line: 681, column: 61, scope: !1282)
!1339 = !{!1034, !1035, i64 48}
!1340 = !DILocation(line: 681, column: 46, scope: !1282)
!1341 = !DILocation(line: 681, column: 73, scope: !1282)
!1342 = !{!1045, !1035, i64 40}
!1343 = !DILocation(line: 681, column: 65, scope: !1282)
!1344 = !DILocation(line: 682, column: 26, scope: !1282)
!1345 = !DILocation(line: 682, column: 29, scope: !1282)
!1346 = !DILocation(line: 681, column: 80, scope: !1282)
!1347 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1348, file: !3, line: 162, type: !6)
!1348 = distinct !DISubprogram(name: "AcquireQuantumPixels", scope: !3, file: !3, line: 162, type: !1349, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!32, !6, !921}
!1351 = !{!1347, !1352, !1353}
!1352 = !DILocalVariable(name: "extent", arg: 2, scope: !1348, file: !3, line: 163, type: !921)
!1353 = !DILocalVariable(name: "i", scope: !1348, file: !3, line: 166, type: !712)
!1354 = !DILocation(line: 0, scope: !1348, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 681, column: 10, scope: !1282)
!1356 = !DILocation(line: 170, column: 41, scope: !1348, inlinedAt: !1355)
!1357 = !DILocation(line: 170, column: 17, scope: !1348, inlinedAt: !1355)
!1358 = !DILocation(line: 170, column: 31, scope: !1348, inlinedAt: !1355)
!1359 = !DILocation(line: 171, column: 43, scope: !1348, inlinedAt: !1355)
!1360 = !DILocation(line: 171, column: 23, scope: !1348, inlinedAt: !1355)
!1361 = !DILocation(line: 173, column: 28, scope: !1362, inlinedAt: !1355)
!1362 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 173, column: 7)
!1363 = !DILocation(line: 173, column: 7, scope: !1348, inlinedAt: !1355)
!1364 = !DILocation(line: 175, column: 17, scope: !1348, inlinedAt: !1355)
!1365 = !DILocation(line: 175, column: 23, scope: !1348, inlinedAt: !1355)
!1366 = !{!1034, !1035, i64 88}
!1367 = !DILocation(line: 176, column: 65, scope: !1348, inlinedAt: !1355)
!1368 = !DILocation(line: 176, column: 79, scope: !1348, inlinedAt: !1355)
!1369 = !DILocation(line: 176, column: 10, scope: !1348, inlinedAt: !1355)
!1370 = !DILocation(line: 180, column: 74, scope: !1371, inlinedAt: !1355)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 179, column: 3)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 178, column: 3)
!1373 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 178, column: 3)
!1374 = !DILocation(line: 178, column: 41, scope: !1372, inlinedAt: !1355)
!1375 = !DILocation(line: 178, column: 15, scope: !1372, inlinedAt: !1355)
!1376 = !DILocation(line: 178, column: 3, scope: !1373, inlinedAt: !1355)
!1377 = !DILocation(line: 180, column: 47, scope: !1371, inlinedAt: !1355)
!1378 = !DILocation(line: 180, column: 19, scope: !1371, inlinedAt: !1355)
!1379 = !DILocation(line: 180, column: 5, scope: !1371, inlinedAt: !1355)
!1380 = !DILocation(line: 180, column: 28, scope: !1371, inlinedAt: !1355)
!1381 = !DILocation(line: 182, column: 23, scope: !1382, inlinedAt: !1355)
!1382 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 182, column: 9)
!1383 = !DILocation(line: 182, column: 9, scope: !1382, inlinedAt: !1355)
!1384 = !DILocation(line: 182, column: 33, scope: !1382, inlinedAt: !1355)
!1385 = !DILocation(line: 182, column: 9, scope: !1371, inlinedAt: !1355)
!1386 = !DILocation(line: 184, column: 12, scope: !1371, inlinedAt: !1355)
!1387 = !DILocation(line: 186, column: 19, scope: !1371, inlinedAt: !1355)
!1388 = !DILocation(line: 186, column: 5, scope: !1371, inlinedAt: !1355)
!1389 = !DILocation(line: 186, column: 36, scope: !1371, inlinedAt: !1355)
!1390 = !{!1028, !1028, i64 0}
!1391 = !DILocation(line: 178, column: 58, scope: !1372, inlinedAt: !1355)
!1392 = distinct !{!1392, !1376, !1393, !1105, !1106}
!1393 = !DILocation(line: 187, column: 3, scope: !1373, inlinedAt: !1355)
!1394 = !DILocation(line: 683, column: 3, scope: !1282)
!1395 = !DILocation(line: 0, scope: !1067)
!1396 = !DILocation(line: 218, column: 21, scope: !1074)
!1397 = !DILocation(line: 218, column: 28, scope: !1074)
!1398 = !DILocation(line: 218, column: 7, scope: !1067)
!1399 = !DILocation(line: 0, scope: !1079, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 219, column: 5, scope: !1074)
!1401 = !DILocation(line: 261, column: 41, scope: !1086, inlinedAt: !1400)
!1402 = !DILocation(line: 261, column: 15, scope: !1086, inlinedAt: !1400)
!1403 = !DILocation(line: 261, column: 3, scope: !1087, inlinedAt: !1400)
!1404 = !DILocation(line: 262, column: 23, scope: !1092, inlinedAt: !1400)
!1405 = !DILocation(line: 262, column: 9, scope: !1092, inlinedAt: !1400)
!1406 = !DILocation(line: 262, column: 33, scope: !1092, inlinedAt: !1400)
!1407 = !DILocation(line: 262, column: 9, scope: !1086, inlinedAt: !1400)
!1408 = !DILocation(line: 268, column: 51, scope: !1097, inlinedAt: !1400)
!1409 = !DILocation(line: 268, column: 23, scope: !1097, inlinedAt: !1400)
!1410 = !DILocation(line: 268, column: 9, scope: !1097, inlinedAt: !1400)
!1411 = !DILocation(line: 268, column: 32, scope: !1097, inlinedAt: !1400)
!1412 = !DILocation(line: 270, column: 7, scope: !1097, inlinedAt: !1400)
!1413 = !DILocation(line: 261, column: 58, scope: !1086, inlinedAt: !1400)
!1414 = distinct !{!1414, !1403, !1415, !1105, !1106}
!1415 = !DILocation(line: 270, column: 7, scope: !1087, inlinedAt: !1400)
!1416 = !DILocation(line: 272, column: 19, scope: !1079, inlinedAt: !1400)
!1417 = !DILocation(line: 271, column: 43, scope: !1079, inlinedAt: !1400)
!1418 = !DILocation(line: 271, column: 23, scope: !1079, inlinedAt: !1400)
!1419 = !DILocation(line: 219, column: 5, scope: !1074)
!1420 = !DILocation(line: 220, column: 21, scope: !1112)
!1421 = !DILocation(line: 220, column: 31, scope: !1112)
!1422 = !DILocation(line: 220, column: 7, scope: !1067)
!1423 = !DILocation(line: 221, column: 5, scope: !1112)
!1424 = !DILocation(line: 222, column: 17, scope: !1067)
!1425 = !DILocation(line: 222, column: 26, scope: !1067)
!1426 = !DILocation(line: 223, column: 32, scope: !1067)
!1427 = !DILocation(line: 224, column: 3, scope: !1067)
!1428 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !72, file: !72, line: 36, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1432 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1122, file: !1122, line: 51, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!651, !651}
!1435 = distinct !DISubprogram(name: "GetQuantumExtent", scope: !3, file: !3, line: 303, type: !1436, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1442)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!13, !652, !1438, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumType", file: !8, line: 82, baseType: !507)
!1442 = !{!1443, !1444, !1445, !1446}
!1443 = !DILocalVariable(name: "image", arg: 1, scope: !1435, file: !3, line: 303, type: !652)
!1444 = !DILocalVariable(name: "quantum_info", arg: 2, scope: !1435, file: !3, line: 304, type: !1438)
!1445 = !DILocalVariable(name: "quantum_type", arg: 3, scope: !1435, file: !3, line: 304, type: !1440)
!1446 = !DILocalVariable(name: "packet_size", scope: !1435, file: !3, line: 307, type: !13)
!1447 = !DILocation(line: 0, scope: !1435)
!1448 = !DILocation(line: 312, column: 3, scope: !1435)
!1449 = !DILocation(line: 314, column: 43, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 313, column: 3)
!1451 = !DILocation(line: 315, column: 44, scope: !1450)
!1452 = !DILocation(line: 316, column: 37, scope: !1450)
!1453 = !DILocation(line: 317, column: 37, scope: !1450)
!1454 = !DILocation(line: 318, column: 38, scope: !1450)
!1455 = !DILocation(line: 319, column: 38, scope: !1450)
!1456 = !DILocation(line: 320, column: 38, scope: !1450)
!1457 = !DILocation(line: 321, column: 38, scope: !1450)
!1458 = !DILocation(line: 322, column: 39, scope: !1450)
!1459 = !DILocation(line: 325, column: 21, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 325, column: 7)
!1461 = !DILocation(line: 325, column: 26, scope: !1460)
!1462 = !DILocation(line: 325, column: 7, scope: !1435)
!1463 = !DILocation(line: 326, column: 70, scope: !1460)
!1464 = !DILocation(line: 326, column: 73, scope: !1460)
!1465 = !DILocation(line: 326, column: 48, scope: !1460)
!1466 = !DILocation(line: 326, column: 5, scope: !1460)
!1467 = !DILocation(line: 327, column: 47, scope: !1435)
!1468 = !DILocation(line: 327, column: 67, scope: !1435)
!1469 = !DILocation(line: 327, column: 70, scope: !1435)
!1470 = !DILocation(line: 327, column: 3, scope: !1435)
!1471 = !DILocation(line: 328, column: 1, scope: !1435)
!1472 = distinct !DISubprogram(name: "GetQuantumEndian", scope: !3, file: !3, line: 352, type: !1473, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!53, !1438}
!1475 = !{!1476}
!1476 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1472, file: !3, line: 352, type: !1438)
!1477 = !DILocation(line: 0, scope: !1472)
!1478 = !DILocation(line: 356, column: 24, scope: !1472)
!1479 = !DILocation(line: 356, column: 3, scope: !1472)
!1480 = distinct !DISubprogram(name: "GetQuantumFormat", scope: !3, file: !3, line: 381, type: !1481, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!18, !1438}
!1483 = !{!1484}
!1484 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1480, file: !3, line: 381, type: !1438)
!1485 = !DILocation(line: 0, scope: !1480)
!1486 = !DILocation(line: 385, column: 24, scope: !1480)
!1487 = !DILocation(line: 385, column: 3, scope: !1480)
!1488 = !DISubprogram(name: "ResetMagickMemory", scope: !1122, file: !1122, line: 52, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!651, !651, !539, !921}
!1491 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !72, file: !72, line: 32, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!70}
!1494 = !DISubprogram(name: "GetImageOption", scope: !538, file: !538, line: 158, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!780, !861, !780}
!1497 = !DISubprogram(name: "ParseCommandOption", scope: !538, file: !538, line: 172, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!712, !1500, !1502, !780}
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !538, line: 99, baseType: !537)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!1503 = !DISubprogram(name: "LocaleCompare", scope: !1139, file: !1139, line: 66, type: !1504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!539, !780, !780}
!1506 = !DILocation(line: 0, scope: !2)
!1507 = !DILocation(line: 585, column: 17, scope: !2)
!1508 = !DILocation(line: 585, column: 36, scope: !2)
!1509 = !DILocation(line: 586, column: 26, scope: !1266)
!1510 = !DILocation(line: 586, column: 7, scope: !1266)
!1511 = !DILocation(line: 586, column: 33, scope: !1266)
!1512 = !DILocation(line: 586, column: 7, scope: !2)
!1513 = !DILocation(line: 587, column: 38, scope: !1266)
!1514 = !DILocation(line: 587, column: 5, scope: !1266)
!1515 = !DILocation(line: 588, column: 23, scope: !2)
!1516 = !DILocation(line: 588, column: 28, scope: !2)
!1517 = !DILocation(line: 589, column: 23, scope: !2)
!1518 = !DILocation(line: 589, column: 27, scope: !2)
!1519 = !DILocation(line: 590, column: 23, scope: !2)
!1520 = !DILocation(line: 590, column: 27, scope: !2)
!1521 = !DILocation(line: 591, column: 1, scope: !2)
!1522 = distinct !DISubprogram(name: "GetQuantumPixels", scope: !3, file: !3, line: 483, type: !1523, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!49, !1438}
!1525 = !{!1526, !1527}
!1526 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1522, file: !3, line: 483, type: !1438)
!1527 = !DILocalVariable(name: "id", scope: !1522, file: !3, line: 486, type: !1133)
!1528 = !DILocation(line: 0, scope: !1522)
!1529 = !DILocation(line: 490, column: 24, scope: !1522)
!1530 = !DILocation(line: 490, column: 10, scope: !1522)
!1531 = !DILocation(line: 490, column: 3, scope: !1522)
!1532 = distinct !DISubprogram(name: "GetQuantumType", scope: !3, file: !3, line: 515, type: !1533, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1441, !908, !1129}
!1535 = !{!1536, !1537, !1538}
!1536 = !DILocalVariable(name: "image", arg: 1, scope: !1532, file: !3, line: 515, type: !908)
!1537 = !DILocalVariable(name: "exception", arg: 2, scope: !1532, file: !3, line: 515, type: !1129)
!1538 = !DILocalVariable(name: "quantum_type", scope: !1532, file: !3, line: 518, type: !1441)
!1539 = !DILocation(line: 0, scope: !1532)
!1540 = !DILocation(line: 522, column: 14, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 522, column: 7)
!1542 = !DILocation(line: 522, column: 20, scope: !1541)
!1543 = !DILocation(line: 522, column: 7, scope: !1532)
!1544 = !DILocation(line: 523, column: 68, scope: !1541)
!1545 = !DILocation(line: 523, column: 12, scope: !1541)
!1546 = !DILocation(line: 523, column: 5, scope: !1541)
!1547 = !DILocation(line: 525, column: 14, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 525, column: 7)
!1549 = !{!1045, !1028, i64 32}
!1550 = !DILocation(line: 525, column: 20, scope: !1548)
!1551 = !DILocation(line: 525, column: 7, scope: !1532)
!1552 = !DILocation(line: 527, column: 14, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 527, column: 7)
!1554 = !{!1045, !1028, i64 4}
!1555 = !DILocation(line: 527, column: 25, scope: !1553)
!1556 = !DILocation(line: 527, column: 7, scope: !1532)
!1557 = !DILocation(line: 533, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 533, column: 7)
!1559 = !DILocation(line: 533, column: 36, scope: !1558)
!1560 = !DILocation(line: 533, column: 7, scope: !1532)
!1561 = !DILocation(line: 536, column: 18, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 536, column: 11)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 534, column: 5)
!1564 = !DILocation(line: 536, column: 24, scope: !1562)
!1565 = !DILocation(line: 536, column: 11, scope: !1563)
!1566 = !DILocation(line: 538, column: 5, scope: !1563)
!1567 = !DILocation(line: 539, column: 14, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 539, column: 7)
!1569 = !{!1045, !1028, i64 0}
!1570 = !DILocation(line: 539, column: 28, scope: !1568)
!1571 = !DILocation(line: 539, column: 7, scope: !1532)
!1572 = !DILocation(line: 542, column: 18, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 542, column: 11)
!1574 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 540, column: 5)
!1575 = !DILocation(line: 542, column: 24, scope: !1573)
!1576 = !DILocation(line: 542, column: 11, scope: !1574)
!1577 = !DILocation(line: 544, column: 5, scope: !1574)
!1578 = !DILocation(line: 545, column: 3, scope: !1532)
!1579 = !DISubprogram(name: "LogMagickEvent", scope: !614, file: !614, line: 83, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!32, !1582, !780, !780, !921, !780, null}
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !614, line: 58, baseType: !613)
!1584 = !DISubprogram(name: "IsGrayImage", scope: !1585, file: !1585, line: 32, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1585 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!32, !652, !1129}
!1588 = distinct !DISubprogram(name: "SetQuantumAlphaType", scope: !3, file: !3, line: 618, type: !1589, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1592)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !6, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!1592 = !{!1593, !1594}
!1593 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1588, file: !3, line: 618, type: !6)
!1594 = !DILocalVariable(name: "type", arg: 2, scope: !1588, file: !3, line: 619, type: !1591)
!1595 = !DILocation(line: 0, scope: !1588)
!1596 = !DILocation(line: 623, column: 17, scope: !1588)
!1597 = !DILocation(line: 623, column: 27, scope: !1588)
!1598 = !{!1034, !1028, i64 64}
!1599 = !DILocation(line: 624, column: 1, scope: !1588)
!1600 = distinct !DISubprogram(name: "SetQuantumEndian", scope: !3, file: !3, line: 713, type: !1601, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1604)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!32, !652, !6, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1604 = !{!1605, !1606, !1607}
!1605 = !DILocalVariable(name: "image", arg: 1, scope: !1600, file: !3, line: 713, type: !652)
!1606 = !DILocalVariable(name: "quantum_info", arg: 2, scope: !1600, file: !3, line: 714, type: !6)
!1607 = !DILocalVariable(name: "endian", arg: 3, scope: !1600, file: !3, line: 714, type: !1603)
!1608 = !DILocation(line: 0, scope: !1600)
!1609 = !DILocation(line: 718, column: 14, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 718, column: 7)
!1611 = !DILocation(line: 718, column: 20, scope: !1610)
!1612 = !DILocation(line: 718, column: 7, scope: !1600)
!1613 = !DILocation(line: 719, column: 68, scope: !1610)
!1614 = !DILocation(line: 719, column: 12, scope: !1610)
!1615 = !DILocation(line: 719, column: 5, scope: !1610)
!1616 = !DILocation(line: 722, column: 17, scope: !1600)
!1617 = !DILocation(line: 722, column: 23, scope: !1600)
!1618 = !DILocation(line: 723, column: 59, scope: !1600)
!1619 = !DILocation(line: 723, column: 10, scope: !1600)
!1620 = !DILocation(line: 723, column: 3, scope: !1600)
!1621 = distinct !DISubprogram(name: "SetQuantumFormat", scope: !3, file: !3, line: 753, type: !1622, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1625)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!32, !652, !6, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!1625 = !{!1626, !1627, !1628}
!1626 = !DILocalVariable(name: "image", arg: 1, scope: !1621, file: !3, line: 753, type: !652)
!1627 = !DILocalVariable(name: "quantum_info", arg: 2, scope: !1621, file: !3, line: 754, type: !6)
!1628 = !DILocalVariable(name: "format", arg: 3, scope: !1621, file: !3, line: 754, type: !1624)
!1629 = !DILocation(line: 0, scope: !1621)
!1630 = !DILocation(line: 758, column: 14, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 758, column: 7)
!1632 = !DILocation(line: 758, column: 20, scope: !1631)
!1633 = !DILocation(line: 758, column: 7, scope: !1621)
!1634 = !DILocation(line: 759, column: 68, scope: !1631)
!1635 = !DILocation(line: 759, column: 12, scope: !1631)
!1636 = !DILocation(line: 759, column: 5, scope: !1631)
!1637 = !DILocation(line: 762, column: 17, scope: !1621)
!1638 = !DILocation(line: 762, column: 23, scope: !1621)
!1639 = !DILocation(line: 763, column: 59, scope: !1621)
!1640 = !DILocation(line: 763, column: 10, scope: !1621)
!1641 = !DILocation(line: 763, column: 3, scope: !1621)
!1642 = distinct !DISubprogram(name: "SetQuantumImageType", scope: !3, file: !3, line: 792, type: !1643, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1645)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !908, !1440}
!1645 = !{!1646, !1647}
!1646 = !DILocalVariable(name: "image", arg: 1, scope: !1642, file: !3, line: 792, type: !908)
!1647 = !DILocalVariable(name: "quantum_type", arg: 2, scope: !1642, file: !3, line: 793, type: !1440)
!1648 = !DILocation(line: 0, scope: !1642)
!1649 = !DILocation(line: 797, column: 14, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 797, column: 7)
!1651 = !DILocation(line: 797, column: 20, scope: !1650)
!1652 = !DILocation(line: 797, column: 7, scope: !1642)
!1653 = !DILocation(line: 798, column: 68, scope: !1650)
!1654 = !DILocation(line: 798, column: 12, scope: !1650)
!1655 = !DILocation(line: 798, column: 5, scope: !1650)
!1656 = !DILocation(line: 799, column: 3, scope: !1642)
!1657 = !DILocation(line: 804, column: 14, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 803, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 800, column: 3)
!1660 = !DILocation(line: 804, column: 18, scope: !1658)
!1661 = !{!1045, !1028, i64 13184}
!1662 = !DILocation(line: 805, column: 7, scope: !1658)
!1663 = !DILocation(line: 810, column: 14, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 809, column: 5)
!1665 = !DILocation(line: 811, column: 18, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 811, column: 11)
!1667 = !DILocation(line: 811, column: 24, scope: !1666)
!1668 = !DILocation(line: 811, column: 11, scope: !1664)
!1669 = !DILocation(line: 0, scope: !1664)
!1670 = !DILocation(line: 822, column: 14, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 821, column: 5)
!1672 = !DILocation(line: 822, column: 18, scope: !1671)
!1673 = !DILocation(line: 823, column: 7, scope: !1671)
!1674 = !DILocation(line: 827, column: 14, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 826, column: 5)
!1676 = !DILocation(line: 827, column: 18, scope: !1675)
!1677 = !DILocation(line: 828, column: 7, scope: !1675)
!1678 = !DILocation(line: 831, column: 1, scope: !1642)
!1679 = distinct !DISubprogram(name: "SetQuantumPack", scope: !3, file: !3, line: 858, type: !1680, scopeLine: 860, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !6, !1502}
!1682 = !{!1683, !1684}
!1683 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1679, file: !3, line: 858, type: !6)
!1684 = !DILocalVariable(name: "pack", arg: 2, scope: !1679, file: !3, line: 859, type: !1502)
!1685 = !DILocation(line: 0, scope: !1679)
!1686 = !DILocation(line: 863, column: 17, scope: !1679)
!1687 = !DILocation(line: 863, column: 21, scope: !1679)
!1688 = !DILocation(line: 864, column: 1, scope: !1679)
!1689 = distinct !DISubprogram(name: "SetQuantumPad", scope: !3, file: !3, line: 894, type: !1283, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1690)
!1690 = !{!1691, !1692, !1693}
!1691 = !DILocalVariable(name: "image", arg: 1, scope: !1689, file: !3, line: 894, type: !652)
!1692 = !DILocalVariable(name: "quantum_info", arg: 2, scope: !1689, file: !3, line: 895, type: !6)
!1693 = !DILocalVariable(name: "pad", arg: 3, scope: !1689, file: !3, line: 895, type: !921)
!1694 = !DILocation(line: 0, scope: !1689)
!1695 = !DILocation(line: 899, column: 14, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 899, column: 7)
!1697 = !DILocation(line: 899, column: 20, scope: !1696)
!1698 = !DILocation(line: 899, column: 7, scope: !1689)
!1699 = !DILocation(line: 900, column: 68, scope: !1696)
!1700 = !DILocation(line: 900, column: 12, scope: !1696)
!1701 = !DILocation(line: 900, column: 5, scope: !1696)
!1702 = !DILocation(line: 903, column: 17, scope: !1689)
!1703 = !DILocation(line: 903, column: 20, scope: !1689)
!1704 = !DILocation(line: 904, column: 59, scope: !1689)
!1705 = !DILocation(line: 904, column: 10, scope: !1689)
!1706 = !DILocation(line: 904, column: 3, scope: !1689)
!1707 = distinct !DISubprogram(name: "SetQuantumMinIsWhite", scope: !3, file: !3, line: 932, type: !1680, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1708)
!1708 = !{!1709, !1710}
!1709 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1707, file: !3, line: 932, type: !6)
!1710 = !DILocalVariable(name: "min_is_white", arg: 2, scope: !1707, file: !3, line: 933, type: !1502)
!1711 = !DILocation(line: 0, scope: !1707)
!1712 = !DILocation(line: 937, column: 17, scope: !1707)
!1713 = !DILocation(line: 937, column: 29, scope: !1707)
!1714 = !DILocation(line: 938, column: 1, scope: !1707)
!1715 = distinct !DISubprogram(name: "SetQuantumQuantum", scope: !3, file: !3, line: 965, type: !1716, scopeLine: 967, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !6, !921}
!1718 = !{!1719, !1720}
!1719 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1715, file: !3, line: 965, type: !6)
!1720 = !DILocalVariable(name: "quantum", arg: 2, scope: !1715, file: !3, line: 966, type: !921)
!1721 = !DILocation(line: 0, scope: !1715)
!1722 = !DILocation(line: 970, column: 17, scope: !1715)
!1723 = !DILocation(line: 970, column: 24, scope: !1715)
!1724 = !DILocation(line: 971, column: 1, scope: !1715)
!1725 = distinct !DISubprogram(name: "SetQuantumScale", scope: !3, file: !3, line: 997, type: !1726, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1729)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !6, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!1729 = !{!1730, !1731}
!1730 = !DILocalVariable(name: "quantum_info", arg: 1, scope: !1725, file: !3, line: 997, type: !6)
!1731 = !DILocalVariable(name: "scale", arg: 2, scope: !1725, file: !3, line: 997, type: !1728)
!1732 = !DILocation(line: 0, scope: !1725)
!1733 = !DILocation(line: 1001, column: 17, scope: !1725)
!1734 = !DILocation(line: 1001, column: 22, scope: !1725)
!1735 = !DILocation(line: 1002, column: 1, scope: !1725)
!1736 = !DISubprogram(name: "InterpretLocaleValue", scope: !1737, file: !1737, line: 56, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1737 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1738 = !DISubprogram(name: "GetMagickResourceLimit", scope: !639, file: !639, line: 53, type: !1739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!786, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !639, line: 36, baseType: !638)
!1743 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1122, file: !1122, line: 42, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1125)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!651, !921, !921}
