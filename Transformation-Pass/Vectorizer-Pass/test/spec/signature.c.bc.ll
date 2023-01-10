; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/signature.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._SignatureInfo = type { i32, i32, ptr, ptr, ptr, i32, i32, i64, i32, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._QuantumInfo = type { i64, i64, i32, double, double, double, i64, i32, i32, i32, i64, ptr, i64, i32, %struct._QuantumState, ptr, i64 }
%struct._QuantumState = type { double, i32, i64, ptr }

@.str = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/signature.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@TransformSignature.K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireSignatureInfo() local_unnamed_addr #0 !dbg !963 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception15 = alloca %struct._ExceptionInfo, align 8
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 72) #11, !dbg !977
  call void @llvm.dbg.value(metadata ptr %call, metadata !967, metadata !DIExpression()), !dbg !978
  %cmp = icmp eq ptr %call, null, !dbg !979
  br i1 %cmp, label %if.then, label %if.end, !dbg !980

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #12, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !972, metadata !DIExpression()), !dbg !981
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #12, !dbg !981
  %call1 = tail call ptr @__errno_location() #13, !dbg !981
  %0 = load i32, ptr %call1, align 4, !dbg !981, !tbaa !982
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #12, !dbg !981
  call void @llvm.dbg.value(metadata ptr %call2, metadata !969, metadata !DIExpression()), !dbg !986
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 129, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #12, !dbg !981
  %call4 = call ptr @DestroyString(ptr noundef %call2) #12, !dbg !981
  call void @llvm.dbg.value(metadata ptr %call4, metadata !969, metadata !DIExpression()), !dbg !986
  call void @CatchException(ptr noundef nonnull %exception) #12, !dbg !981
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #12, !dbg !981
  call void @MagickCoreTerminus() #12, !dbg !981
  call void @_exit(i32 noundef 1) #14, !dbg !981
  unreachable, !dbg !981

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 72) #12, !dbg !987
  store i32 32, ptr %call, align 8, !dbg !988, !tbaa !989
  %blocksize = getelementptr inbounds %struct._SignatureInfo, ptr %call, i64 0, i32 1, !dbg !993
  store i32 64, ptr %blocksize, align 4, !dbg !994, !tbaa !995
  %call7 = tail call ptr @AcquireStringInfo(i64 noundef 32) #12, !dbg !996
  %digest = getelementptr inbounds %struct._SignatureInfo, ptr %call, i64 0, i32 2, !dbg !997
  store ptr %call7, ptr %digest, align 8, !dbg !998, !tbaa !999
  %call8 = tail call ptr @AcquireStringInfo(i64 noundef 64) #12, !dbg !1000
  %message9 = getelementptr inbounds %struct._SignatureInfo, ptr %call, i64 0, i32 3, !dbg !1001
  store ptr %call8, ptr %message9, align 8, !dbg !1002, !tbaa !1003
  %call10 = tail call ptr @AcquireQuantumMemory(i64 noundef 64, i64 noundef 4) #15, !dbg !1004
  %accumulator = getelementptr inbounds %struct._SignatureInfo, ptr %call, i64 0, i32 4, !dbg !1005
  store ptr %call10, ptr %accumulator, align 8, !dbg !1006, !tbaa !1007
  %cmp12 = icmp eq ptr %call10, null, !dbg !1008
  br i1 %cmp12, label %if.then13, label %if.end21, !dbg !1009

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception15) #12, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %exception15, metadata !976, metadata !DIExpression()), !dbg !1010
  call void @GetExceptionInfo(ptr noundef nonnull %exception15) #12, !dbg !1010
  %call16 = tail call ptr @__errno_location() #13, !dbg !1010
  %1 = load i32, ptr %call16, align 4, !dbg !1010, !tbaa !982
  %call17 = call ptr @GetExceptionMessage(i32 noundef %1) #12, !dbg !1010
  call void @llvm.dbg.value(metadata ptr %call17, metadata !973, metadata !DIExpression()), !dbg !1011
  %call18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 138, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call17) #12, !dbg !1010
  %call19 = call ptr @DestroyString(ptr noundef %call17) #12, !dbg !1010
  call void @llvm.dbg.value(metadata ptr %call19, metadata !973, metadata !DIExpression()), !dbg !1011
  call void @CatchException(ptr noundef nonnull %exception15) #12, !dbg !1010
  %call20 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception15) #12, !dbg !1010
  call void @MagickCoreTerminus() #12, !dbg !1010
  call void @_exit(i32 noundef 1) #14, !dbg !1010
  unreachable, !dbg !1010

if.end21:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8 1, metadata !968, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !978
  call void @llvm.dbg.value(metadata i24 0, metadata !968, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 24)), !dbg !978
  %lsb_first24 = getelementptr inbounds %struct._SignatureInfo, ptr %call, i64 0, i32 8, !dbg !1012
  store i32 1, ptr %lsb_first24, align 8, !dbg !1013, !tbaa !1014
  %call25 = tail call i64 @time(ptr noundef null) #12, !dbg !1015
  %timestamp = getelementptr inbounds %struct._SignatureInfo, ptr %call, i64 0, i32 9, !dbg !1016
  store i64 %call25, ptr %timestamp, align 8, !dbg !1017, !tbaa !1018
  %signature = getelementptr inbounds %struct._SignatureInfo, ptr %call, i64 0, i32 10, !dbg !1019
  store i64 2880220587, ptr %signature, align 8, !dbg !1020, !tbaa !1021
  call void @llvm.dbg.value(metadata ptr %call, metadata !1022, metadata !DIExpression()) #12, !dbg !1025
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 401, ptr noundef nonnull @.str.4) #12, !dbg !1027
  %2 = load ptr, ptr %accumulator, align 8, !dbg !1028, !tbaa !1007
  store i32 1779033703, ptr %2, align 4, !dbg !1029, !tbaa !982
  %arrayidx2.i = getelementptr inbounds i32, ptr %2, i64 1, !dbg !1030
  store i32 -1150833019, ptr %arrayidx2.i, align 4, !dbg !1031, !tbaa !982
  %arrayidx4.i = getelementptr inbounds i32, ptr %2, i64 2, !dbg !1032
  store i32 1013904242, ptr %arrayidx4.i, align 4, !dbg !1033, !tbaa !982
  %arrayidx6.i = getelementptr inbounds i32, ptr %2, i64 3, !dbg !1034
  store i32 -1521486534, ptr %arrayidx6.i, align 4, !dbg !1035, !tbaa !982
  %arrayidx8.i = getelementptr inbounds i32, ptr %2, i64 4, !dbg !1036
  store i32 1359893119, ptr %arrayidx8.i, align 4, !dbg !1037, !tbaa !982
  %arrayidx10.i = getelementptr inbounds i32, ptr %2, i64 5, !dbg !1038
  store i32 -1694144372, ptr %arrayidx10.i, align 4, !dbg !1039, !tbaa !982
  %arrayidx12.i = getelementptr inbounds i32, ptr %2, i64 6, !dbg !1040
  store i32 528734635, ptr %arrayidx12.i, align 4, !dbg !1041, !tbaa !982
  %arrayidx14.i = getelementptr inbounds i32, ptr %2, i64 7, !dbg !1042
  store i32 1541459225, ptr %arrayidx14.i, align 4, !dbg !1043, !tbaa !982
  %low_order.i = getelementptr inbounds %struct._SignatureInfo, ptr %call, i64 0, i32 5, !dbg !1044
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %low_order.i, i8 0, i64 16, i1 false) #12, !dbg !1045
  ret ptr %call, !dbg !1046
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: allocsize(0)
declare !dbg !1047 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !1052 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1056 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !1060 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1064 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !1067 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !1068 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1071 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !1075 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1078 ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare !dbg !1081 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1084 i64 @time(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @InitializeSignature(ptr nocapture noundef %signature_info) local_unnamed_addr #0 !dbg !1023 {
entry:
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !1022, metadata !DIExpression()), !dbg !1089
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 401, ptr noundef nonnull @.str.4) #12, !dbg !1090
  %accumulator = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 4, !dbg !1091
  %0 = load ptr, ptr %accumulator, align 8, !dbg !1091, !tbaa !1007
  store i32 1779033703, ptr %0, align 4, !dbg !1092, !tbaa !982
  %arrayidx2 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1093
  store i32 -1150833019, ptr %arrayidx2, align 4, !dbg !1094, !tbaa !982
  %arrayidx4 = getelementptr inbounds i32, ptr %0, i64 2, !dbg !1095
  store i32 1013904242, ptr %arrayidx4, align 4, !dbg !1096, !tbaa !982
  %arrayidx6 = getelementptr inbounds i32, ptr %0, i64 3, !dbg !1097
  store i32 -1521486534, ptr %arrayidx6, align 4, !dbg !1098, !tbaa !982
  %arrayidx8 = getelementptr inbounds i32, ptr %0, i64 4, !dbg !1099
  store i32 1359893119, ptr %arrayidx8, align 4, !dbg !1100, !tbaa !982
  %arrayidx10 = getelementptr inbounds i32, ptr %0, i64 5, !dbg !1101
  store i32 -1694144372, ptr %arrayidx10, align 4, !dbg !1102, !tbaa !982
  %arrayidx12 = getelementptr inbounds i32, ptr %0, i64 6, !dbg !1103
  store i32 528734635, ptr %arrayidx12, align 4, !dbg !1104, !tbaa !982
  %arrayidx14 = getelementptr inbounds i32, ptr %0, i64 7, !dbg !1105
  store i32 1541459225, ptr %arrayidx14, align 4, !dbg !1106, !tbaa !982
  %low_order = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 5, !dbg !1107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %low_order, i8 0, i64 16, i1 false), !dbg !1108
  ret void, !dbg !1109
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroySignatureInfo(ptr noundef %signature_info) local_unnamed_addr #0 !dbg !1110 {
entry:
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !1114, metadata !DIExpression()), !dbg !1115
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 174, ptr noundef nonnull @.str.4) #12, !dbg !1116
  %accumulator = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 4, !dbg !1117
  %0 = load ptr, ptr %accumulator, align 8, !dbg !1117, !tbaa !1007
  %cmp.not = icmp eq ptr %0, null, !dbg !1119
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1120

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #12, !dbg !1121
  store ptr %call2, ptr %accumulator, align 8, !dbg !1122, !tbaa !1007
  br label %if.end, !dbg !1123

if.end:                                           ; preds = %if.then, %entry
  %message = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 3, !dbg !1124
  %1 = load ptr, ptr %message, align 8, !dbg !1124, !tbaa !1003
  %cmp4.not = icmp eq ptr %1, null, !dbg !1126
  br i1 %cmp4.not, label %if.end9, label %if.then5, !dbg !1127

if.then5:                                         ; preds = %if.end
  %call7 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %1) #12, !dbg !1128
  store ptr %call7, ptr %message, align 8, !dbg !1129, !tbaa !1003
  br label %if.end9, !dbg !1130

if.end9:                                          ; preds = %if.then5, %if.end
  %digest = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 2, !dbg !1131
  %2 = load ptr, ptr %digest, align 8, !dbg !1131, !tbaa !999
  %cmp10.not = icmp eq ptr %2, null, !dbg !1133
  br i1 %cmp10.not, label %if.end15, label %if.then11, !dbg !1134

if.then11:                                        ; preds = %if.end9
  %call13 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %2) #12, !dbg !1135
  store ptr %call13, ptr %digest, align 8, !dbg !1136, !tbaa !999
  br label %if.end15, !dbg !1137

if.end15:                                         ; preds = %if.then11, %if.end9
  %signature = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 10, !dbg !1138
  store i64 -2880220588, ptr %signature, align 8, !dbg !1139, !tbaa !1021
  %call16 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %signature_info) #12, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1114, metadata !DIExpression()), !dbg !1115
  ret ptr %call16, !dbg !1141
}

declare !dbg !1142 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1147 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

declare !dbg !1150 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @FinalizeSignature(ptr nocapture noundef readonly %signature_info) local_unnamed_addr #0 !dbg !1153 {
entry:
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !1155, metadata !DIExpression()), !dbg !1163
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 234, ptr noundef nonnull @.str.4) #12, !dbg !1164
  %low_order1 = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 5, !dbg !1165
  %0 = load i32, ptr %low_order1, align 8, !dbg !1165, !tbaa !1166
  call void @llvm.dbg.value(metadata i32 %0, metadata !1162, metadata !DIExpression()), !dbg !1163
  %high_order2 = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 6, !dbg !1167
  %1 = load i32, ptr %high_order2, align 4, !dbg !1167, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %1, metadata !1161, metadata !DIExpression()), !dbg !1163
  %shr = lshr i32 %0, 3, !dbg !1169
  %and = and i32 %shr, 63, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %and, metadata !1160, metadata !DIExpression()), !dbg !1163
  %message = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 3, !dbg !1171
  %2 = load ptr, ptr %message, align 8, !dbg !1171, !tbaa !1003
  %call3 = tail call ptr @GetStringInfoDatum(ptr noundef %2) #12, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1159, metadata !DIExpression()), !dbg !1163
  %inc = add nuw nsw i32 %and, 1, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1160, metadata !DIExpression()), !dbg !1163
  %idxprom = zext i32 %and to i64, !dbg !1174
  %arrayidx = getelementptr inbounds i8, ptr %call3, i64 %idxprom, !dbg !1174
  store i8 -128, ptr %arrayidx, align 1, !dbg !1175, !tbaa !1176
  %3 = load ptr, ptr %message, align 8, !dbg !1177, !tbaa !1003
  %call5 = tail call i64 @GetStringInfoLength(ptr noundef %3) #12, !dbg !1179
  %4 = trunc i64 %call5 to i32, !dbg !1180
  %conv = add i32 %4, -8, !dbg !1180
  %cmp.not.not = icmp ult i32 %and, %conv, !dbg !1181
  %idx.ext = zext i32 %inc to i64, !dbg !1182
  %add.ptr = getelementptr inbounds i8, ptr %call3, i64 %idx.ext, !dbg !1182
  %5 = load ptr, ptr %message, align 8, !dbg !1182, !tbaa !1003
  %call8 = tail call i64 @GetStringInfoLength(ptr noundef %5) #12, !dbg !1182
  br i1 %cmp.not.not, label %if.then, label %if.else, !dbg !1183

if.then:                                          ; preds = %entry
  %sub9 = sub nuw nsw i64 -8, %idx.ext, !dbg !1184
  %sub11 = add i64 %sub9, %call8, !dbg !1185
  %call12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub11) #12, !dbg !1186
  br label %if.end, !dbg !1187

if.else:                                          ; preds = %entry
  %sub18 = sub i64 %call8, %idx.ext, !dbg !1188
  %call19 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub18) #12, !dbg !1190
  tail call fastcc void @TransformSignature(ptr noundef nonnull %signature_info), !dbg !1191
  %6 = load ptr, ptr %message, align 8, !dbg !1192, !tbaa !1003
  %call21 = tail call i64 @GetStringInfoLength(ptr noundef %6) #12, !dbg !1193
  %sub22 = add i64 %call21, -8, !dbg !1194
  %call23 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call3, i32 noundef 0, i64 noundef %sub22) #12, !dbg !1195
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shr24 = lshr i32 %1, 24, !dbg !1196
  %conv25 = trunc i32 %shr24 to i8, !dbg !1197
  %arrayidx26 = getelementptr inbounds i8, ptr %call3, i64 56, !dbg !1198
  store i8 %conv25, ptr %arrayidx26, align 1, !dbg !1199, !tbaa !1176
  %shr27 = lshr i32 %1, 16, !dbg !1200
  %conv28 = trunc i32 %shr27 to i8, !dbg !1201
  %arrayidx29 = getelementptr inbounds i8, ptr %call3, i64 57, !dbg !1202
  store i8 %conv28, ptr %arrayidx29, align 1, !dbg !1203, !tbaa !1176
  %shr30 = lshr i32 %1, 8, !dbg !1204
  %conv31 = trunc i32 %shr30 to i8, !dbg !1205
  %arrayidx32 = getelementptr inbounds i8, ptr %call3, i64 58, !dbg !1206
  store i8 %conv31, ptr %arrayidx32, align 1, !dbg !1207, !tbaa !1176
  %conv33 = trunc i32 %1 to i8, !dbg !1208
  %arrayidx34 = getelementptr inbounds i8, ptr %call3, i64 59, !dbg !1209
  store i8 %conv33, ptr %arrayidx34, align 1, !dbg !1210, !tbaa !1176
  %shr35 = lshr i32 %0, 24, !dbg !1211
  %conv36 = trunc i32 %shr35 to i8, !dbg !1212
  %arrayidx37 = getelementptr inbounds i8, ptr %call3, i64 60, !dbg !1213
  store i8 %conv36, ptr %arrayidx37, align 1, !dbg !1214, !tbaa !1176
  %shr38 = lshr i32 %0, 16, !dbg !1215
  %conv39 = trunc i32 %shr38 to i8, !dbg !1216
  %arrayidx40 = getelementptr inbounds i8, ptr %call3, i64 61, !dbg !1217
  store i8 %conv39, ptr %arrayidx40, align 1, !dbg !1218, !tbaa !1176
  %shr41 = lshr i32 %0, 8, !dbg !1219
  %conv42 = trunc i32 %shr41 to i8, !dbg !1220
  %arrayidx43 = getelementptr inbounds i8, ptr %call3, i64 62, !dbg !1221
  store i8 %conv42, ptr %arrayidx43, align 1, !dbg !1222, !tbaa !1176
  %conv44 = trunc i32 %0 to i8, !dbg !1223
  %arrayidx45 = getelementptr inbounds i8, ptr %call3, i64 63, !dbg !1224
  store i8 %conv44, ptr %arrayidx45, align 1, !dbg !1225, !tbaa !1176
  tail call fastcc void @TransformSignature(ptr noundef nonnull %signature_info), !dbg !1226
  %accumulator = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 4, !dbg !1227
  %7 = load ptr, ptr %accumulator, align 8, !dbg !1227, !tbaa !1007
  call void @llvm.dbg.value(metadata ptr %7, metadata !1158, metadata !DIExpression()), !dbg !1163
  %digest = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 2, !dbg !1228
  %8 = load ptr, ptr %digest, align 8, !dbg !1228, !tbaa !999
  %call46 = tail call ptr @GetStringInfoDatum(ptr noundef %8) #12, !dbg !1229
  call void @llvm.dbg.value(metadata ptr %call46, metadata !1157, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 0, metadata !1156, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %7, metadata !1158, metadata !DIExpression()), !dbg !1163
  br label %for.body, !dbg !1230

for.body:                                         ; preds = %if.end, %for.body
  %i.0108 = phi i64 [ 0, %if.end ], [ %inc64, %for.body ]
  %p.0107 = phi ptr [ %7, %if.end ], [ %incdec.ptr63, %for.body ]
  %q.0106 = phi ptr [ %call46, %if.end ], [ %incdec.ptr62, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0108, metadata !1156, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %p.0107, metadata !1158, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %q.0106, metadata !1157, metadata !DIExpression()), !dbg !1163
  %9 = load i32, ptr %p.0107, align 4, !dbg !1232, !tbaa !982
  %shr49 = lshr i32 %9, 24, !dbg !1235
  %conv51 = trunc i32 %shr49 to i8, !dbg !1236
  %incdec.ptr = getelementptr inbounds i8, ptr %q.0106, i64 1, !dbg !1237
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1157, metadata !DIExpression()), !dbg !1163
  store i8 %conv51, ptr %q.0106, align 1, !dbg !1238, !tbaa !1176
  %10 = load i32, ptr %p.0107, align 4, !dbg !1239, !tbaa !982
  %shr52 = lshr i32 %10, 16, !dbg !1240
  %conv54 = trunc i32 %shr52 to i8, !dbg !1241
  %incdec.ptr55 = getelementptr inbounds i8, ptr %q.0106, i64 2, !dbg !1242
  call void @llvm.dbg.value(metadata ptr %incdec.ptr55, metadata !1157, metadata !DIExpression()), !dbg !1163
  store i8 %conv54, ptr %incdec.ptr, align 1, !dbg !1243, !tbaa !1176
  %11 = load i32, ptr %p.0107, align 4, !dbg !1244, !tbaa !982
  %shr56 = lshr i32 %11, 8, !dbg !1245
  %conv58 = trunc i32 %shr56 to i8, !dbg !1246
  %incdec.ptr59 = getelementptr inbounds i8, ptr %q.0106, i64 3, !dbg !1247
  call void @llvm.dbg.value(metadata ptr %incdec.ptr59, metadata !1157, metadata !DIExpression()), !dbg !1163
  store i8 %conv58, ptr %incdec.ptr55, align 1, !dbg !1248, !tbaa !1176
  %12 = load i32, ptr %p.0107, align 4, !dbg !1249, !tbaa !982
  %conv61 = trunc i32 %12 to i8, !dbg !1250
  %incdec.ptr62 = getelementptr inbounds i8, ptr %q.0106, i64 4, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %incdec.ptr62, metadata !1157, metadata !DIExpression()), !dbg !1163
  store i8 %conv61, ptr %incdec.ptr59, align 1, !dbg !1252, !tbaa !1176
  %incdec.ptr63 = getelementptr inbounds i32, ptr %p.0107, i64 1, !dbg !1253
  call void @llvm.dbg.value(metadata ptr %incdec.ptr63, metadata !1158, metadata !DIExpression()), !dbg !1163
  %inc64 = add nuw nsw i64 %i.0108, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %inc64, metadata !1156, metadata !DIExpression()), !dbg !1163
  %exitcond.not = icmp eq i64 %inc64, 8, !dbg !1255
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1230, !llvm.loop !1256

for.end:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !1160, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i32 0, metadata !1161, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i32 0, metadata !1162, metadata !DIExpression()), !dbg !1163
  ret void, !dbg !1260
}

declare !dbg !1261 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #4

declare !dbg !1266 i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @TransformSignature(ptr nocapture noundef readonly %signature_info) unnamed_addr #0 !dbg !2 {
entry:
  %W = alloca [64 x i32], align 16
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !936, metadata !DIExpression()), !dbg !1269
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %W) #12, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %W, metadata !952, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 32, metadata !948, metadata !DIExpression()), !dbg !1269
  %message = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 3, !dbg !1272
  %0 = load ptr, ptr %message, align 8, !dbg !1272, !tbaa !1003
  %call = tail call ptr @GetStringInfoDatum(ptr noundef %0) #12, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %call, metadata !938, metadata !DIExpression()), !dbg !1269
  %lsb_first = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 8, !dbg !1274
  %1 = load i32, ptr %lsb_first, align 8, !dbg !1274, !tbaa !1014
  %cmp = icmp eq i32 %1, 0, !dbg !1276
  br i1 %cmp, label %for.body, label %for.body5, !dbg !1277

for.body:                                         ; preds = %entry, %for.body
  %i.0253 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %p.0252 = phi ptr [ %add.ptr, %for.body ], [ %call, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.0253, metadata !937, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata ptr %p.0252, metadata !938, metadata !DIExpression()), !dbg !1269
  %2 = load i32, ptr %p.0252, align 4, !dbg !1278, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %2, metadata !949, metadata !DIExpression()), !dbg !1269
  %add.ptr = getelementptr inbounds i8, ptr %p.0252, i64 4, !dbg !1284
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !938, metadata !DIExpression()), !dbg !1269
  %arrayidx = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 %i.0253, !dbg !1285
  store i32 %2, ptr %arrayidx, align 4, !dbg !1286, !tbaa !982
  %inc = add nuw nsw i64 %i.0253, 1, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %inc, metadata !937, metadata !DIExpression()), !dbg !1269
  %exitcond265.not = icmp eq i64 %inc, 16, !dbg !1288
  br i1 %exitcond265.not, label %if.end, label %for.body, !dbg !1289, !llvm.loop !1290

for.body5:                                        ; preds = %entry, %for.body5
  %i.1251 = phi i64 [ %inc16, %for.body5 ], [ 0, %entry ]
  %p.1250 = phi ptr [ %add.ptr6, %for.body5 ], [ %call, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.1251, metadata !937, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata ptr %p.1250, metadata !938, metadata !DIExpression()), !dbg !1269
  %3 = load i32, ptr %p.1250, align 4, !dbg !1292, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %3, metadata !949, metadata !DIExpression()), !dbg !1269
  %add.ptr6 = getelementptr inbounds i8, ptr %p.1250, i64 4, !dbg !1297
  call void @llvm.dbg.value(metadata ptr %add.ptr6, metadata !938, metadata !DIExpression()), !dbg !1269
  %or13 = tail call i32 @llvm.bswap.i32(i32 %3), !dbg !1298
  %arrayidx14 = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 %i.1251, !dbg !1299
  store i32 %or13, ptr %arrayidx14, align 4, !dbg !1300, !tbaa !982
  %inc16 = add nuw nsw i64 %i.1251, 1, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %inc16, metadata !937, metadata !DIExpression()), !dbg !1269
  %exitcond.not = icmp eq i64 %inc16, 16, !dbg !1302
  br i1 %exitcond.not, label %if.end, label %for.body5, !dbg !1303, !llvm.loop !1304

if.end:                                           ; preds = %for.body5, %for.body
  %accumulator = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 4, !dbg !1306
  %4 = load ptr, ptr %accumulator, align 8, !dbg !1306, !tbaa !1007
  %5 = load i32, ptr %4, align 4, !dbg !1307, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %5, metadata !940, metadata !DIExpression()), !dbg !1269
  %arrayidx20 = getelementptr inbounds i32, ptr %4, i64 1, !dbg !1308
  %6 = load i32, ptr %arrayidx20, align 4, !dbg !1308, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %6, metadata !941, metadata !DIExpression()), !dbg !1269
  %arrayidx22 = getelementptr inbounds i32, ptr %4, i64 2, !dbg !1309
  %7 = load i32, ptr %arrayidx22, align 4, !dbg !1309, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %7, metadata !942, metadata !DIExpression()), !dbg !1269
  %arrayidx24 = getelementptr inbounds i32, ptr %4, i64 3, !dbg !1310
  %8 = load i32, ptr %arrayidx24, align 4, !dbg !1310, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %8, metadata !943, metadata !DIExpression()), !dbg !1269
  %arrayidx26 = getelementptr inbounds i32, ptr %4, i64 4, !dbg !1311
  %9 = load i32, ptr %arrayidx26, align 4, !dbg !1311, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %9, metadata !944, metadata !DIExpression()), !dbg !1269
  %arrayidx28 = getelementptr inbounds i32, ptr %4, i64 5, !dbg !1312
  %10 = load i32, ptr %arrayidx28, align 4, !dbg !1312, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %10, metadata !945, metadata !DIExpression()), !dbg !1269
  %arrayidx30 = getelementptr inbounds i32, ptr %4, i64 6, !dbg !1313
  %11 = load i32, ptr %arrayidx30, align 4, !dbg !1313, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %11, metadata !946, metadata !DIExpression()), !dbg !1269
  %arrayidx32 = getelementptr inbounds i32, ptr %4, i64 7, !dbg !1314
  %12 = load i32, ptr %arrayidx32, align 4, !dbg !1314, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %12, metadata !947, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 16, metadata !937, metadata !DIExpression()), !dbg !1269
  %.pre = load i32, ptr %W, align 16, !dbg !1315, !tbaa !982
  br label %for.body35, !dbg !1318

for.body35:                                       ; preds = %if.end, %for.body35
  %13 = phi i32 [ %.pre, %if.end ], [ %16, %for.body35 ], !dbg !1315
  %i.2254 = phi i64 [ 16, %if.end ], [ %inc67, %for.body35 ]
  call void @llvm.dbg.value(metadata i64 %i.2254, metadata !937, metadata !DIExpression()), !dbg !1269
  %sub = add nsw i64 %i.2254, -2, !dbg !1319
  %arrayidx36 = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 %sub, !dbg !1319
  %14 = load i32, ptr %arrayidx36, align 4, !dbg !1319, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %14, metadata !1320, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 17, metadata !1325, metadata !DIExpression()), !dbg !1326
  %or.i = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 15), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %14, metadata !1320, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 19, metadata !1325, metadata !DIExpression()), !dbg !1329
  %or.i223 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13), !dbg !1331
  %xor = xor i32 %or.i, %or.i223, !dbg !1319
  %shr43 = lshr i32 %14, 10, !dbg !1319
  %xor45 = xor i32 %xor, %shr43, !dbg !1319
  %sub46 = add nsw i64 %i.2254, -7, !dbg !1332
  %arrayidx47 = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 %sub46, !dbg !1333
  %15 = load i32, ptr %arrayidx47, align 4, !dbg !1333, !tbaa !982
  %add = add i32 %xor45, %15, !dbg !1334
  %sub48 = add nsw i64 %i.2254, -15, !dbg !1335
  %arrayidx49 = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 %sub48, !dbg !1335
  %16 = load i32, ptr %arrayidx49, align 4, !dbg !1335, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %16, metadata !1320, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 7, metadata !1325, metadata !DIExpression()), !dbg !1336
  %or.i226 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 25), !dbg !1338
  call void @llvm.dbg.value(metadata i32 %16, metadata !1320, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i32 18, metadata !1325, metadata !DIExpression()), !dbg !1339
  %or.i229 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 14), !dbg !1341
  %xor54 = xor i32 %or.i226, %or.i229, !dbg !1335
  %shr57 = lshr i32 %16, 3, !dbg !1335
  %xor59 = xor i32 %xor54, %shr57, !dbg !1335
  %add60 = add i32 %add, %13, !dbg !1342
  %add63 = add i32 %add60, %xor59, !dbg !1343
  %arrayidx65 = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 %i.2254, !dbg !1344
  store i32 %add63, ptr %arrayidx65, align 4, !dbg !1345, !tbaa !982
  %inc67 = add nuw nsw i64 %i.2254, 1, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %inc67, metadata !937, metadata !DIExpression()), !dbg !1269
  %exitcond266.not = icmp eq i64 %inc67, 64, !dbg !1347
  br i1 %exitcond266.not, label %for.body71, label %for.body35, !dbg !1318, !llvm.loop !1348

for.body71:                                       ; preds = %for.body35, %for.body71.for.body71_crit_edge
  %17 = phi i32 [ %.pre268, %for.body71.for.body71_crit_edge ], [ %.pre, %for.body35 ], !dbg !1350
  %H.0263 = phi i32 [ %G.0262, %for.body71.for.body71_crit_edge ], [ %12, %for.body35 ]
  %G.0262 = phi i32 [ %F.0261, %for.body71.for.body71_crit_edge ], [ %11, %for.body35 ]
  %F.0261 = phi i32 [ %E.0260, %for.body71.for.body71_crit_edge ], [ %10, %for.body35 ]
  %E.0260 = phi i32 [ %add93, %for.body71.for.body71_crit_edge ], [ %9, %for.body35 ]
  %D.0259 = phi i32 [ %C.0258, %for.body71.for.body71_crit_edge ], [ %8, %for.body35 ]
  %C.0258 = phi i32 [ %B.0257, %for.body71.for.body71_crit_edge ], [ %7, %for.body35 ]
  %B.0257 = phi i32 [ %A.0256, %for.body71.for.body71_crit_edge ], [ %6, %for.body35 ]
  %A.0256 = phi i32 [ %add95, %for.body71.for.body71_crit_edge ], [ %5, %for.body35 ]
  %j.0255 = phi i64 [ %inc98, %for.body71.for.body71_crit_edge ], [ 0, %for.body35 ]
  call void @llvm.dbg.value(metadata i32 %H.0263, metadata !947, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %G.0262, metadata !946, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %F.0261, metadata !945, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %E.0260, metadata !944, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %D.0259, metadata !943, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %C.0258, metadata !942, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %B.0257, metadata !941, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %A.0256, metadata !940, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %j.0255, metadata !939, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %E.0260, metadata !1320, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i32 6, metadata !1325, metadata !DIExpression()), !dbg !1354
  %or.i232 = tail call i32 @llvm.fshl.i32(i32 %E.0260, i32 %E.0260, i32 26), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %E.0260, metadata !1320, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 11, metadata !1325, metadata !DIExpression()), !dbg !1357
  %or.i235 = tail call i32 @llvm.fshl.i32(i32 %E.0260, i32 %E.0260, i32 21), !dbg !1359
  %xor74 = xor i32 %or.i232, %or.i235, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %E.0260, metadata !1320, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i32 25, metadata !1325, metadata !DIExpression()), !dbg !1361
  %or.i238 = tail call i32 @llvm.fshl.i32(i32 %E.0260, i32 %E.0260, i32 7), !dbg !1363
  %xor76 = xor i32 %xor74, %or.i238, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %E.0260, metadata !1364, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %F.0261, metadata !1369, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %G.0262, metadata !1370, metadata !DIExpression()), !dbg !1371
  %and.i = and i32 %F.0261, %E.0260, !dbg !1373
  %neg.i = xor i32 %E.0260, -1, !dbg !1374
  %and1.i = and i32 %G.0262, %neg.i, !dbg !1375
  %arrayidx80 = getelementptr inbounds [64 x i32], ptr @TransformSignature.K, i64 0, i64 %j.0255, !dbg !1376
  %18 = load i32, ptr %arrayidx80, align 4, !dbg !1376, !tbaa !982
  %xor.i = add i32 %xor76, %and.i, !dbg !1377
  %add77 = add i32 %xor.i, %H.0263, !dbg !1378
  %add79 = add i32 %add77, %and1.i, !dbg !1379
  %add81 = add i32 %add79, %18, !dbg !1380
  %add83 = add i32 %add81, %17, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %add83, metadata !950, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %A.0256, metadata !1320, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i32 2, metadata !1325, metadata !DIExpression()), !dbg !1382
  %or.i241 = tail call i32 @llvm.fshl.i32(i32 %A.0256, i32 %A.0256, i32 30), !dbg !1384
  call void @llvm.dbg.value(metadata i32 %A.0256, metadata !1320, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 13, metadata !1325, metadata !DIExpression()), !dbg !1385
  %or.i244 = tail call i32 @llvm.fshl.i32(i32 %A.0256, i32 %A.0256, i32 19), !dbg !1387
  %xor87 = xor i32 %or.i241, %or.i244, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %A.0256, metadata !1320, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 22, metadata !1325, metadata !DIExpression()), !dbg !1389
  %or.i247 = tail call i32 @llvm.fshl.i32(i32 %A.0256, i32 %A.0256, i32 10), !dbg !1391
  %xor89 = xor i32 %xor87, %or.i247, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %A.0256, metadata !1392, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %B.0257, metadata !1395, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %C.0258, metadata !1396, metadata !DIExpression()), !dbg !1397
  %and17.i = xor i32 %C.0258, %B.0257, !dbg !1399
  %xor.i248 = and i32 %and17.i, %A.0256, !dbg !1399
  %and2.i = and i32 %C.0258, %B.0257, !dbg !1400
  %xor3.i = xor i32 %xor.i248, %and2.i, !dbg !1401
  %add91 = add i32 %xor3.i, %xor89, !dbg !1402
  call void @llvm.dbg.value(metadata i32 %add91, metadata !951, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %G.0262, metadata !947, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %F.0261, metadata !946, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %E.0260, metadata !945, metadata !DIExpression()), !dbg !1269
  %add93 = add i32 %add83, %D.0259, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %add93, metadata !944, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %C.0258, metadata !943, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %B.0257, metadata !942, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %A.0256, metadata !941, metadata !DIExpression()), !dbg !1269
  %add95 = add i32 %add91, %add83, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %add95, metadata !940, metadata !DIExpression()), !dbg !1269
  %inc98 = add nuw nsw i64 %j.0255, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %inc98, metadata !939, metadata !DIExpression()), !dbg !1269
  %exitcond267.not = icmp eq i64 %inc98, 64, !dbg !1406
  br i1 %exitcond267.not, label %for.end99, label %for.body71.for.body71_crit_edge, !dbg !1407, !llvm.loop !1408

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  %arrayidx82.phi.trans.insert = getelementptr inbounds [64 x i32], ptr %W, i64 0, i64 %inc98
  %.pre268 = load i32, ptr %arrayidx82.phi.trans.insert, align 4, !dbg !1350, !tbaa !982
  br label %for.body71, !dbg !1407

for.end99:                                        ; preds = %for.body71
  %19 = load i32, ptr %4, align 4, !dbg !1410, !tbaa !982
  %add102 = add i32 %19, %add95, !dbg !1411
  store i32 %add102, ptr %4, align 4, !dbg !1412, !tbaa !982
  %20 = load i32, ptr %arrayidx20, align 4, !dbg !1413, !tbaa !982
  %add108 = add i32 %20, %A.0256, !dbg !1414
  store i32 %add108, ptr %arrayidx20, align 4, !dbg !1415, !tbaa !982
  %21 = load i32, ptr %arrayidx22, align 4, !dbg !1416, !tbaa !982
  %add114 = add i32 %21, %B.0257, !dbg !1417
  store i32 %add114, ptr %arrayidx22, align 4, !dbg !1418, !tbaa !982
  %22 = load i32, ptr %arrayidx24, align 4, !dbg !1419, !tbaa !982
  %add120 = add i32 %22, %C.0258, !dbg !1420
  store i32 %add120, ptr %arrayidx24, align 4, !dbg !1421, !tbaa !982
  %23 = load i32, ptr %arrayidx26, align 4, !dbg !1422, !tbaa !982
  %add126 = add i32 %23, %add93, !dbg !1423
  store i32 %add126, ptr %arrayidx26, align 4, !dbg !1424, !tbaa !982
  %24 = load i32, ptr %arrayidx28, align 4, !dbg !1425, !tbaa !982
  %add132 = add i32 %24, %E.0260, !dbg !1426
  store i32 %add132, ptr %arrayidx28, align 4, !dbg !1427, !tbaa !982
  %25 = load i32, ptr %arrayidx30, align 4, !dbg !1428, !tbaa !982
  %add138 = add i32 %25, %F.0261, !dbg !1429
  store i32 %add138, ptr %arrayidx30, align 4, !dbg !1430, !tbaa !982
  %26 = load i32, ptr %arrayidx32, align 4, !dbg !1431, !tbaa !982
  %add144 = add i32 %26, %G.0262, !dbg !1432
  store i32 %add144, ptr %arrayidx32, align 4, !dbg !1433, !tbaa !982
  call void @llvm.dbg.value(metadata i32 0, metadata !940, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !941, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !942, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !943, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !944, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !945, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !946, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !947, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !950, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !951, metadata !DIExpression()), !dbg !1269
  %call148 = call ptr @ResetMagickMemory(ptr noundef nonnull %W, i32 noundef 0, i64 noundef 256) #12, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %W) #12, !dbg !1435
  ret void, !dbg !1435
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetSignatureBlocksize(ptr nocapture noundef readonly %signature_info) local_unnamed_addr #0 !dbg !1436 {
entry:
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !1442, metadata !DIExpression()), !dbg !1443
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 306, ptr noundef nonnull @.str.4) #12, !dbg !1444
  %blocksize = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 1, !dbg !1445
  %0 = load i32, ptr %blocksize, align 4, !dbg !1445, !tbaa !995
  ret i32 %0, !dbg !1446
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetSignatureDigest(ptr nocapture noundef readonly %signature_info) local_unnamed_addr #0 !dbg !1447 {
entry:
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !1451, metadata !DIExpression()), !dbg !1452
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.4) #12, !dbg !1453
  %digest = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 2, !dbg !1454
  %0 = load ptr, ptr %digest, align 8, !dbg !1454, !tbaa !999
  ret ptr %0, !dbg !1455
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetSignatureDigestsize(ptr nocapture noundef readonly %signature_info) local_unnamed_addr #0 !dbg !1456 {
entry:
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !1458, metadata !DIExpression()), !dbg !1459
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 370, ptr noundef nonnull @.str.4) #12, !dbg !1460
  %0 = load i32, ptr %signature_info, align 8, !dbg !1461, !tbaa !989
  ret i32 %0, !dbg !1462
}

; Function Attrs: nounwind uwtable
define dso_local void @SetSignatureDigest(ptr nocapture noundef readonly %signature_info, ptr noundef %digest) local_unnamed_addr #0 !dbg !1463 {
entry:
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr %digest, metadata !1468, metadata !DIExpression()), !dbg !1469
  %digest1 = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 2, !dbg !1470
  %0 = load ptr, ptr %digest1, align 8, !dbg !1470, !tbaa !999
  tail call void @SetStringInfo(ptr noundef %0, ptr noundef %digest) #12, !dbg !1471
  ret void, !dbg !1472
}

declare !dbg !1473 void @SetStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @SignatureImage(ptr noundef %image) local_unnamed_addr #0 !dbg !1476 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1480, metadata !DIExpression()), !dbg !1496
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1497
  %0 = load i32, ptr %debug, align 8, !dbg !1497, !tbaa !1499
  %cmp.not = icmp eq i32 %0, 0, !dbg !1513
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1514

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1515
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 521, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename) #12, !dbg !1516
  br label %if.end, !dbg !1517

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireQuantumInfo(ptr noundef null, ptr noundef nonnull %image) #12, !dbg !1518
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1487, metadata !DIExpression()), !dbg !1496
  %cmp2 = icmp eq ptr %call1, null, !dbg !1519
  br i1 %cmp2, label %if.then5, label %if.end11, !dbg !1521

if.then5:                                         ; preds = %if.end
  %exception6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1522
  %filename7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1522
  %call9 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 525, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename7) #12, !dbg !1522
  br label %cleanup, !dbg !1522

if.end11:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 18, metadata !1488, metadata !DIExpression()), !dbg !1496
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1525
  %1 = load i32, ptr %matte, align 8, !dbg !1525, !tbaa !1527
  %cmp12.not = icmp eq i32 %1, 0, !dbg !1528
  %spec.store.select = select i1 %cmp12.not, i32 18, i32 15, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %spec.store.select, metadata !1488, metadata !DIExpression()), !dbg !1496
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1530
  %2 = load i32, ptr %colorspace, align 4, !dbg !1530, !tbaa !1532
  %cmp15 = icmp eq i32 %2, 12, !dbg !1533
  %spec.store.select53 = select i1 %cmp12.not, i32 5, i32 4
  %spec.select = select i1 %cmp15, i32 %spec.store.select53, i32 %spec.store.select, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1488, metadata !DIExpression()), !dbg !1496
  %call22 = tail call ptr @AcquireSignatureInfo(), !dbg !1535
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1491, metadata !DIExpression()), !dbg !1496
  %extent = getelementptr inbounds %struct._QuantumInfo, ptr %call1, i64 0, i32 12, !dbg !1536
  %3 = load i64, ptr %extent, align 8, !dbg !1536, !tbaa !1537
  %call23 = tail call ptr @AcquireStringInfo(i64 noundef %3) #12, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %call23, metadata !1494, metadata !DIExpression()), !dbg !1496
  %call24 = tail call ptr @GetQuantumPixels(ptr noundef nonnull %call1) #12, !dbg !1541
  call void @llvm.dbg.value(metadata ptr %call24, metadata !1495, metadata !DIExpression()), !dbg !1496
  %exception25 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1542
  call void @llvm.dbg.value(metadata ptr %exception25, metadata !1486, metadata !DIExpression()), !dbg !1496
  %call26 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception25) #12, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1481, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 0, metadata !1493, metadata !DIExpression()), !dbg !1496
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1544
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1493, metadata !DIExpression()), !dbg !1496
  %4 = load i64, ptr %rows, align 8, !dbg !1548, !tbaa !1549
  %cmp2789 = icmp sgt i64 %4, 0, !dbg !1550
  br i1 %cmp2789, label %for.body, label %for.end, !dbg !1551

for.body:                                         ; preds = %if.end11, %if.end31
  %y.090 = phi i64 [ %inc, %if.end31 ], [ 0, %if.end11 ]
  call void @llvm.dbg.value(metadata i64 %y.090, metadata !1493, metadata !DIExpression()), !dbg !1496
  %5 = load i64, ptr %columns, align 8, !dbg !1544, !tbaa !1552
  %call28 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call26, i64 noundef 0, i64 noundef %y.090, i64 noundef %5, i64 noundef 1, ptr noundef nonnull %exception25) #16, !dbg !1553
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1490, metadata !DIExpression()), !dbg !1496
  %cmp29 = icmp eq ptr %call28, null, !dbg !1554
  br i1 %cmp29, label %for.end, label %if.end31, !dbg !1556

if.end31:                                         ; preds = %for.body
  %call33 = tail call i64 @ExportQuantumPixels(ptr noundef nonnull %image, ptr noundef %call26, ptr noundef nonnull %call1, i32 noundef %spec.select, ptr noundef %call24, ptr noundef nonnull %exception25) #12, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %call33, metadata !1492, metadata !DIExpression()), !dbg !1496
  tail call void @SetStringInfoLength(ptr noundef %call23, i64 noundef %call33) #12, !dbg !1558
  tail call void @SetStringInfoDatum(ptr noundef %call23, ptr noundef %call24) #12, !dbg !1559
  tail call void @UpdateSignature(ptr noundef %call22, ptr noundef %call23), !dbg !1560
  %inc = add nuw nsw i64 %y.090, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1493, metadata !DIExpression()), !dbg !1496
  %6 = load i64, ptr %rows, align 8, !dbg !1548, !tbaa !1549
  %cmp27 = icmp slt i64 %inc, %6, !dbg !1550
  br i1 %cmp27, label %for.body, label %for.end, !dbg !1551, !llvm.loop !1562

for.end:                                          ; preds = %if.end31, %for.body, %if.end11
  %call34 = tail call ptr @DestroyCacheView(ptr noundef %call26) #12, !dbg !1564
  call void @llvm.dbg.value(metadata ptr %call34, metadata !1481, metadata !DIExpression()), !dbg !1496
  %call35 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %call1) #12, !dbg !1565
  call void @llvm.dbg.value(metadata ptr %call35, metadata !1487, metadata !DIExpression()), !dbg !1496
  tail call void @FinalizeSignature(ptr noundef %call22), !dbg !1566
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1451, metadata !DIExpression()) #12, !dbg !1567
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.4) #12, !dbg !1569
  %digest.i = getelementptr inbounds %struct._SignatureInfo, ptr %call22, i64 0, i32 2, !dbg !1570
  %7 = load ptr, ptr %digest.i, align 8, !dbg !1570, !tbaa !999
  %call37 = tail call ptr @StringInfoToHexString(ptr noundef %7) #12, !dbg !1571
  call void @llvm.dbg.value(metadata ptr %call37, metadata !1485, metadata !DIExpression()), !dbg !1496
  %call38 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %image, ptr noundef nonnull @.str.6) #12, !dbg !1572
  %call39 = tail call i32 @SetImageProperty(ptr noundef nonnull %image, ptr noundef nonnull @.str.6, ptr noundef %call37) #12, !dbg !1573
  %call40 = tail call ptr @DestroyString(ptr noundef %call37) #12, !dbg !1574
  call void @llvm.dbg.value(metadata ptr %call40, metadata !1485, metadata !DIExpression()), !dbg !1496
  %call41 = tail call ptr @DestroyStringInfo(ptr noundef %call23) #12, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %call41, metadata !1494, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1114, metadata !DIExpression()) #12, !dbg !1576
  %call.i87 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 174, ptr noundef nonnull @.str.4) #12, !dbg !1578
  %accumulator.i = getelementptr inbounds %struct._SignatureInfo, ptr %call22, i64 0, i32 4, !dbg !1579
  %8 = load ptr, ptr %accumulator.i, align 8, !dbg !1579, !tbaa !1007
  %cmp.not.i = icmp eq ptr %8, null, !dbg !1580
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1581

if.then.i:                                        ; preds = %for.end
  %call2.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #12, !dbg !1582
  store ptr %call2.i, ptr %accumulator.i, align 8, !dbg !1583, !tbaa !1007
  br label %if.end.i, !dbg !1584

if.end.i:                                         ; preds = %if.then.i, %for.end
  %message.i = getelementptr inbounds %struct._SignatureInfo, ptr %call22, i64 0, i32 3, !dbg !1585
  %9 = load ptr, ptr %message.i, align 8, !dbg !1585, !tbaa !1003
  %cmp4.not.i = icmp eq ptr %9, null, !dbg !1586
  br i1 %cmp4.not.i, label %if.end9.i, label %if.then5.i, !dbg !1587

if.then5.i:                                       ; preds = %if.end.i
  %call7.i = tail call ptr @DestroyStringInfo(ptr noundef nonnull %9) #12, !dbg !1588
  store ptr %call7.i, ptr %message.i, align 8, !dbg !1589, !tbaa !1003
  br label %if.end9.i, !dbg !1590

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i
  %10 = load ptr, ptr %digest.i, align 8, !dbg !1591, !tbaa !999
  %cmp10.not.i = icmp eq ptr %10, null, !dbg !1592
  br i1 %cmp10.not.i, label %DestroySignatureInfo.exit, label %if.then11.i, !dbg !1593

if.then11.i:                                      ; preds = %if.end9.i
  %call13.i = tail call ptr @DestroyStringInfo(ptr noundef nonnull %10) #12, !dbg !1594
  store ptr %call13.i, ptr %digest.i, align 8, !dbg !1595, !tbaa !999
  br label %DestroySignatureInfo.exit, !dbg !1596

DestroySignatureInfo.exit:                        ; preds = %if.end9.i, %if.then11.i
  %signature.i = getelementptr inbounds %struct._SignatureInfo, ptr %call22, i64 0, i32 10, !dbg !1597
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !1598, !tbaa !1021
  %call16.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call22) #12, !dbg !1599
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !1114, metadata !DIExpression()) #12, !dbg !1576
  call void @llvm.dbg.value(metadata ptr undef, metadata !1491, metadata !DIExpression()), !dbg !1496
  br label %cleanup, !dbg !1600

cleanup:                                          ; preds = %if.then5, %DestroySignatureInfo.exit
  %retval.0 = phi i32 [ 1, %DestroySignatureInfo.exit ], [ 0, %if.then5 ], !dbg !1496
  ret i32 %retval.0, !dbg !1601
}

declare !dbg !1602 ptr @AcquireQuantumInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1605 ptr @GetQuantumPixels(ptr noundef) local_unnamed_addr #4

declare !dbg !1610 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1613 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !1619 i64 @ExportQuantumPixels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1623 void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1626 void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @UpdateSignature(ptr nocapture noundef %signature_info, ptr noundef %message) local_unnamed_addr #0 !dbg !1631 {
entry:
  call void @llvm.dbg.value(metadata ptr %signature_info, metadata !1633, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %message, metadata !1634, metadata !DIExpression()), !dbg !1639
  %call = tail call i64 @GetStringInfoLength(ptr noundef %message) #12, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %call, metadata !1637, metadata !DIExpression()), !dbg !1639
  %low_order = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 5, !dbg !1641
  %0 = load i32, ptr %low_order, align 8, !dbg !1641, !tbaa !1166
  %call.tr = trunc i64 %call to i32, !dbg !1642
  %1 = shl i32 %call.tr, 3, !dbg !1642
  %conv1 = add i32 %1, %0, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %conv1, metadata !1638, metadata !DIExpression()), !dbg !1639
  %cmp = icmp ult i32 %conv1, %0, !dbg !1643
  %high_order = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 6
  %2 = load i32, ptr %high_order, align 4, !dbg !1639, !tbaa !1168
  %inc = zext i1 %cmp to i32, !dbg !1645
  %spec.select = add i32 %2, %inc, !dbg !1645
  store i32 %conv1, ptr %low_order, align 8, !dbg !1646, !tbaa !1166
  %shr = lshr i64 %call, 29, !dbg !1647
  %conv6 = trunc i64 %shr to i32, !dbg !1648
  %high_order7 = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 6, !dbg !1649
  %add8 = add i32 %spec.select, %conv6, !dbg !1650
  store i32 %add8, ptr %high_order7, align 4, !dbg !1650, !tbaa !1168
  %call9 = tail call ptr @GetStringInfoDatum(ptr noundef %message) #12, !dbg !1651
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1636, metadata !DIExpression()), !dbg !1639
  %offset = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 7, !dbg !1652
  %3 = load i64, ptr %offset, align 8, !dbg !1652, !tbaa !1654
  %cmp10.not = icmp eq i64 %3, 0, !dbg !1655
  br i1 %cmp10.not, label %if.end35, label %if.then12, !dbg !1656

if.then12:                                        ; preds = %entry
  %message13 = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 3, !dbg !1657
  %4 = load ptr, ptr %message13, align 8, !dbg !1657, !tbaa !1003
  %call14 = tail call i64 @GetStringInfoLength(ptr noundef %4) #12, !dbg !1659
  %5 = load i64, ptr %offset, align 8, !dbg !1660, !tbaa !1654
  %sub = sub i64 %call14, %5, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1635, metadata !DIExpression()), !dbg !1639
  %6 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %call), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %6, metadata !1635, metadata !DIExpression()), !dbg !1639
  %7 = load ptr, ptr %message13, align 8, !dbg !1663, !tbaa !1003
  %call21 = tail call ptr @GetStringInfoDatum(ptr noundef %7) #12, !dbg !1664
  %8 = load i64, ptr %offset, align 8, !dbg !1665, !tbaa !1654
  %add.ptr = getelementptr inbounds i8, ptr %call21, i64 %8, !dbg !1666
  %call23 = tail call ptr @CopyMagickMemory(ptr noundef %add.ptr, ptr noundef %call9, i64 noundef %6) #12, !dbg !1667
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call, i64 %6), metadata !1637, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1639
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call9, i64 %6), metadata !1636, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1639
  %9 = load i64, ptr %offset, align 8, !dbg !1668, !tbaa !1654
  %add27 = add i64 %9, %6, !dbg !1668
  store i64 %add27, ptr %offset, align 8, !dbg !1668, !tbaa !1654
  %10 = load ptr, ptr %message13, align 8, !dbg !1669, !tbaa !1003
  %call30 = tail call i64 @GetStringInfoLength(ptr noundef %10) #12, !dbg !1671
  %cmp31.not = icmp eq i64 %add27, %call30, !dbg !1672
  br i1 %cmp31.not, label %if.end34, label %cleanup, !dbg !1673

if.end34:                                         ; preds = %if.then12
  %add.ptr25 = getelementptr inbounds i8, ptr %call9, i64 %6, !dbg !1674
  call void @llvm.dbg.value(metadata ptr %add.ptr25, metadata !1636, metadata !DIExpression()), !dbg !1639
  %sub24 = sub i64 %call, %6, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %sub24, metadata !1637, metadata !DIExpression()), !dbg !1639
  tail call fastcc void @TransformSignature(ptr noundef nonnull %signature_info), !dbg !1676
  br label %if.end35, !dbg !1677

if.end35:                                         ; preds = %if.end34, %entry
  %p.0 = phi ptr [ %add.ptr25, %if.end34 ], [ %call9, %entry ], !dbg !1639
  %n.0 = phi i64 [ %sub24, %if.end34 ], [ %call, %entry ], !dbg !1639
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !1637, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1636, metadata !DIExpression()), !dbg !1639
  %message36 = getelementptr inbounds %struct._SignatureInfo, ptr %signature_info, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !1637, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1636, metadata !DIExpression()), !dbg !1639
  %11 = load ptr, ptr %message36, align 8, !dbg !1678, !tbaa !1003
  %call3792 = tail call i64 @GetStringInfoLength(ptr noundef %11) #12, !dbg !1679
  %cmp38.not93 = icmp ult i64 %n.0, %call3792, !dbg !1680
  br i1 %cmp38.not93, label %while.end, label %while.body, !dbg !1681

while.body:                                       ; preds = %if.end35, %while.body
  %n.195 = phi i64 [ %sub46, %while.body ], [ %n.0, %if.end35 ]
  %p.194 = phi ptr [ %add.ptr43, %while.body ], [ %p.0, %if.end35 ]
  call void @llvm.dbg.value(metadata i64 %n.195, metadata !1637, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %p.194, metadata !1636, metadata !DIExpression()), !dbg !1639
  %12 = load ptr, ptr %message36, align 8, !dbg !1682, !tbaa !1003
  tail call void @SetStringInfoDatum(ptr noundef %12, ptr noundef %p.194) #12, !dbg !1684
  %13 = load ptr, ptr %message36, align 8, !dbg !1685, !tbaa !1003
  %call42 = tail call i64 @GetStringInfoLength(ptr noundef %13) #12, !dbg !1686
  %add.ptr43 = getelementptr inbounds i8, ptr %p.194, i64 %call42, !dbg !1687
  call void @llvm.dbg.value(metadata ptr %add.ptr43, metadata !1636, metadata !DIExpression()), !dbg !1639
  %14 = load ptr, ptr %message36, align 8, !dbg !1688, !tbaa !1003
  %call45 = tail call i64 @GetStringInfoLength(ptr noundef %14) #12, !dbg !1689
  %sub46 = sub i64 %n.195, %call45, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %sub46, metadata !1637, metadata !DIExpression()), !dbg !1639
  tail call fastcc void @TransformSignature(ptr noundef nonnull %signature_info), !dbg !1691
  %15 = load ptr, ptr %message36, align 8, !dbg !1678, !tbaa !1003
  %call37 = tail call i64 @GetStringInfoLength(ptr noundef %15) #12, !dbg !1679
  %cmp38.not = icmp ult i64 %sub46, %call37, !dbg !1680
  br i1 %cmp38.not, label %while.end, label %while.body, !dbg !1681, !llvm.loop !1692

while.end:                                        ; preds = %while.body, %if.end35
  %p.1.lcssa = phi ptr [ %p.0, %if.end35 ], [ %add.ptr43, %while.body ], !dbg !1639
  %n.1.lcssa = phi i64 [ %n.0, %if.end35 ], [ %sub46, %while.body ], !dbg !1639
  %16 = load ptr, ptr %message36, align 8, !dbg !1694, !tbaa !1003
  %call48 = tail call ptr @GetStringInfoDatum(ptr noundef %16) #12, !dbg !1695
  %call49 = tail call ptr @CopyMagickMemory(ptr noundef %call48, ptr noundef %p.1.lcssa, i64 noundef %n.1.lcssa) #12, !dbg !1696
  store i64 %n.1.lcssa, ptr %offset, align 8, !dbg !1697, !tbaa !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1635, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 0, metadata !1637, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 0, metadata !1638, metadata !DIExpression()), !dbg !1639
  br label %cleanup, !dbg !1698

cleanup:                                          ; preds = %if.then12, %while.end
  ret void, !dbg !1698
}

declare !dbg !1699 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #4

declare !dbg !1702 ptr @DestroyQuantumInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1705 ptr @StringInfoToHexString(ptr noundef) local_unnamed_addr #4

declare !dbg !1708 i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1712 i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1715 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { hot nounwind }

!llvm.dbg.cu = !{!53}
!llvm.module.flags = !{!956, !957, !958, !959, !960, !961}
!llvm.ident = !{!962}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "K", scope: !2, file: !3, line: 627, type: !953, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "TransformSignature", scope: !3, file: !3, line: 610, type: !4, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !935)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/signature.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4647103c047a7b286888a7e35b5030bc")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "SignatureInfo", file: !8, line: 30, baseType: !9)
!8 = !DIFile(filename: "apps/538.imagick_r/src/magick/signature-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f72c89ffa1995573b65986daac7c57d4")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SignatureInfo", file: !3, line: 65, size: 576, elements: !10)
!10 = !{!11, !13, !14, !33, !34, !36, !37, !38, !39, !46, !52}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "digestsize", scope: !9, file: !3, line: 68, baseType: !12, size: 32)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "blocksize", scope: !9, file: !3, line: 69, baseType: !12, size: 32, offset: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !9, file: !3, line: 72, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !17, line: 40, baseType: !18)
!17 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !17, line: 29, size: 32960, elements: !19)
!19 = !{!20, !25, !28, !32}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !18, file: !17, line: 32, baseType: !21, size: 32768)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32768, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: 4096)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !18, file: !17, line: 35, baseType: !26, size: 64, offset: 32768)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !18, file: !17, line: 38, baseType: !29, size: 64, offset: 32832)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !18, file: !17, line: 39, baseType: !29, size: 64, offset: 32896)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !9, file: !3, line: 73, baseType: !15, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "accumulator", scope: !9, file: !3, line: 76, baseType: !35, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "low_order", scope: !9, file: !3, line: 77, baseType: !12, size: 32, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "high_order", scope: !9, file: !3, line: 78, baseType: !12, size: 32, offset: 288)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !9, file: !3, line: 81, baseType: !29, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lsb_first", scope: !9, file: !3, line: 84, baseType: !40, size: 32, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !41, line: 215, baseType: !42)
!41 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 211, baseType: !12, size: 32, elements: !43)
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "MagickFalse", value: 0)
!45 = !DIEnumerator(name: "MagickTrue", value: 1)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !9, file: !3, line: 87, baseType: !47, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !48, line: 77, baseType: !49)
!48 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !50, line: 193, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!51 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !9, file: !3, line: 90, baseType: !29, size: 64, offset: 512)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !557, globals: !934, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/signature.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "4647103c047a7b286888a7e35b5030bc")
!55 = !{!42, !56, !129, !154, !159, !196, !221, !233, !241, !246, !281, !291, !297, !312, !383, !391, !397, !414, !428, !440, !446, !451, !481, !514, !536}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 28, baseType: !12, size: 32, elements: !58)
!57 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!59 = !DIEnumerator(name: "UndefinedException", value: 0)
!60 = !DIEnumerator(name: "WarningException", value: 300)
!61 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!62 = !DIEnumerator(name: "TypeWarning", value: 305)
!63 = !DIEnumerator(name: "OptionWarning", value: 310)
!64 = !DIEnumerator(name: "DelegateWarning", value: 315)
!65 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!66 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!67 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!68 = !DIEnumerator(name: "BlobWarning", value: 335)
!69 = !DIEnumerator(name: "StreamWarning", value: 340)
!70 = !DIEnumerator(name: "CacheWarning", value: 345)
!71 = !DIEnumerator(name: "CoderWarning", value: 350)
!72 = !DIEnumerator(name: "FilterWarning", value: 352)
!73 = !DIEnumerator(name: "ModuleWarning", value: 355)
!74 = !DIEnumerator(name: "DrawWarning", value: 360)
!75 = !DIEnumerator(name: "ImageWarning", value: 365)
!76 = !DIEnumerator(name: "WandWarning", value: 370)
!77 = !DIEnumerator(name: "RandomWarning", value: 375)
!78 = !DIEnumerator(name: "XServerWarning", value: 380)
!79 = !DIEnumerator(name: "MonitorWarning", value: 385)
!80 = !DIEnumerator(name: "RegistryWarning", value: 390)
!81 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!82 = !DIEnumerator(name: "PolicyWarning", value: 399)
!83 = !DIEnumerator(name: "ErrorException", value: 400)
!84 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!85 = !DIEnumerator(name: "TypeError", value: 405)
!86 = !DIEnumerator(name: "OptionError", value: 410)
!87 = !DIEnumerator(name: "DelegateError", value: 415)
!88 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!89 = !DIEnumerator(name: "CorruptImageError", value: 425)
!90 = !DIEnumerator(name: "FileOpenError", value: 430)
!91 = !DIEnumerator(name: "BlobError", value: 435)
!92 = !DIEnumerator(name: "StreamError", value: 440)
!93 = !DIEnumerator(name: "CacheError", value: 445)
!94 = !DIEnumerator(name: "CoderError", value: 450)
!95 = !DIEnumerator(name: "FilterError", value: 452)
!96 = !DIEnumerator(name: "ModuleError", value: 455)
!97 = !DIEnumerator(name: "DrawError", value: 460)
!98 = !DIEnumerator(name: "ImageError", value: 465)
!99 = !DIEnumerator(name: "WandError", value: 470)
!100 = !DIEnumerator(name: "RandomError", value: 475)
!101 = !DIEnumerator(name: "XServerError", value: 480)
!102 = !DIEnumerator(name: "MonitorError", value: 485)
!103 = !DIEnumerator(name: "RegistryError", value: 490)
!104 = !DIEnumerator(name: "ConfigureError", value: 495)
!105 = !DIEnumerator(name: "PolicyError", value: 499)
!106 = !DIEnumerator(name: "FatalErrorException", value: 700)
!107 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!108 = !DIEnumerator(name: "TypeFatalError", value: 705)
!109 = !DIEnumerator(name: "OptionFatalError", value: 710)
!110 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!111 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!112 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!113 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!114 = !DIEnumerator(name: "BlobFatalError", value: 735)
!115 = !DIEnumerator(name: "StreamFatalError", value: 740)
!116 = !DIEnumerator(name: "CacheFatalError", value: 745)
!117 = !DIEnumerator(name: "CoderFatalError", value: 750)
!118 = !DIEnumerator(name: "FilterFatalError", value: 752)
!119 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!120 = !DIEnumerator(name: "DrawFatalError", value: 760)
!121 = !DIEnumerator(name: "ImageFatalError", value: 765)
!122 = !DIEnumerator(name: "WandFatalError", value: 770)
!123 = !DIEnumerator(name: "RandomFatalError", value: 775)
!124 = !DIEnumerator(name: "XServerFatalError", value: 780)
!125 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!126 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!127 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!128 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 34, baseType: !12, size: 32, elements: !131)
!130 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!132 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!133 = !DIEnumerator(name: "NoEvents", value: 0)
!134 = !DIEnumerator(name: "TraceEvent", value: 1)
!135 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!136 = !DIEnumerator(name: "BlobEvent", value: 4)
!137 = !DIEnumerator(name: "CacheEvent", value: 8)
!138 = !DIEnumerator(name: "CoderEvent", value: 16)
!139 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!140 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!141 = !DIEnumerator(name: "DrawEvent", value: 128)
!142 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!143 = !DIEnumerator(name: "ImageEvent", value: 512)
!144 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!145 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!146 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!147 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!148 = !DIEnumerator(name: "TransformEvent", value: 16384)
!149 = !DIEnumerator(name: "UserEvent", value: 36864)
!150 = !DIEnumerator(name: "WandEvent", value: 65536)
!151 = !DIEnumerator(name: "X11Event", value: 131072)
!152 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!153 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 204, baseType: !12, size: 32, elements: !155)
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "UndefinedClass", value: 0)
!157 = !DIEnumerator(name: "DirectClass", value: 1)
!158 = !DIEnumerator(name: "PseudoClass", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 25, baseType: !12, size: 32, elements: !161)
!160 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!162 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!163 = !DIEnumerator(name: "RGBColorspace", value: 1)
!164 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!165 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!166 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!167 = !DIEnumerator(name: "LabColorspace", value: 5)
!168 = !DIEnumerator(name: "XYZColorspace", value: 6)
!169 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!170 = !DIEnumerator(name: "YCCColorspace", value: 8)
!171 = !DIEnumerator(name: "YIQColorspace", value: 9)
!172 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!173 = !DIEnumerator(name: "YUVColorspace", value: 11)
!174 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!175 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!176 = !DIEnumerator(name: "HSBColorspace", value: 14)
!177 = !DIEnumerator(name: "HSLColorspace", value: 15)
!178 = !DIEnumerator(name: "HWBColorspace", value: 16)
!179 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!180 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!181 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!182 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!183 = !DIEnumerator(name: "LogColorspace", value: 21)
!184 = !DIEnumerator(name: "CMYColorspace", value: 22)
!185 = !DIEnumerator(name: "LuvColorspace", value: 23)
!186 = !DIEnumerator(name: "HCLColorspace", value: 24)
!187 = !DIEnumerator(name: "LCHColorspace", value: 25)
!188 = !DIEnumerator(name: "LMSColorspace", value: 26)
!189 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!190 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!191 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!192 = !DIEnumerator(name: "HSIColorspace", value: 30)
!193 = !DIEnumerator(name: "HSVColorspace", value: 31)
!194 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!195 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 25, baseType: !12, size: 32, elements: !198)
!197 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!199 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!200 = !DIEnumerator(name: "NoCompression", value: 1)
!201 = !DIEnumerator(name: "BZipCompression", value: 2)
!202 = !DIEnumerator(name: "DXT1Compression", value: 3)
!203 = !DIEnumerator(name: "DXT3Compression", value: 4)
!204 = !DIEnumerator(name: "DXT5Compression", value: 5)
!205 = !DIEnumerator(name: "FaxCompression", value: 6)
!206 = !DIEnumerator(name: "Group4Compression", value: 7)
!207 = !DIEnumerator(name: "JPEGCompression", value: 8)
!208 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!209 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!210 = !DIEnumerator(name: "LZWCompression", value: 11)
!211 = !DIEnumerator(name: "RLECompression", value: 12)
!212 = !DIEnumerator(name: "ZipCompression", value: 13)
!213 = !DIEnumerator(name: "ZipSCompression", value: 14)
!214 = !DIEnumerator(name: "PizCompression", value: 15)
!215 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!216 = !DIEnumerator(name: "B44Compression", value: 17)
!217 = !DIEnumerator(name: "B44ACompression", value: 18)
!218 = !DIEnumerator(name: "LZMACompression", value: 19)
!219 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!220 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 75, baseType: !12, size: 32, elements: !223)
!222 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!225 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!226 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!227 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!228 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!229 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!230 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!231 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!232 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 42, baseType: !12, size: 32, elements: !235)
!234 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!235 = !{!236, !237, !238, !239, !240}
!236 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!237 = !DIEnumerator(name: "SaturationIntent", value: 1)
!238 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!239 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!240 = !DIEnumerator(name: "RelativeIntent", value: 4)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 88, baseType: !12, size: 32, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!244 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!245 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !247, line: 32, baseType: !12, size: 32, elements: !248)
!247 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!249 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!250 = !DIEnumerator(name: "PointFilter", value: 1)
!251 = !DIEnumerator(name: "BoxFilter", value: 2)
!252 = !DIEnumerator(name: "TriangleFilter", value: 3)
!253 = !DIEnumerator(name: "HermiteFilter", value: 4)
!254 = !DIEnumerator(name: "HanningFilter", value: 5)
!255 = !DIEnumerator(name: "HammingFilter", value: 6)
!256 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!257 = !DIEnumerator(name: "GaussianFilter", value: 8)
!258 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!259 = !DIEnumerator(name: "CubicFilter", value: 10)
!260 = !DIEnumerator(name: "CatromFilter", value: 11)
!261 = !DIEnumerator(name: "MitchellFilter", value: 12)
!262 = !DIEnumerator(name: "JincFilter", value: 13)
!263 = !DIEnumerator(name: "SincFilter", value: 14)
!264 = !DIEnumerator(name: "SincFastFilter", value: 15)
!265 = !DIEnumerator(name: "KaiserFilter", value: 16)
!266 = !DIEnumerator(name: "WelshFilter", value: 17)
!267 = !DIEnumerator(name: "ParzenFilter", value: 18)
!268 = !DIEnumerator(name: "BohmanFilter", value: 19)
!269 = !DIEnumerator(name: "BartlettFilter", value: 20)
!270 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!271 = !DIEnumerator(name: "LanczosFilter", value: 22)
!272 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!273 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!274 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!275 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!276 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!277 = !DIEnumerator(name: "CosineFilter", value: 28)
!278 = !DIEnumerator(name: "SplineFilter", value: 29)
!279 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!280 = !DIEnumerator(name: "SentinelFilter", value: 31)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 63, baseType: !12, size: 32, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290}
!283 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!284 = !DIEnumerator(name: "NoInterlace", value: 1)
!285 = !DIEnumerator(name: "LineInterlace", value: 2)
!286 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!287 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!288 = !DIEnumerator(name: "GIFInterlace", value: 5)
!289 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!290 = !DIEnumerator(name: "PNGInterlace", value: 7)
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !292, line: 30, baseType: !12, size: 32, elements: !293)
!292 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!293 = !{!294, !295, !296}
!294 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!295 = !DIEnumerator(name: "LSBEndian", value: 1)
!296 = !DIEnumerator(name: "MSBEndian", value: 2)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !298, line: 77, baseType: !12, size: 32, elements: !299)
!298 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!300 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!301 = !DIEnumerator(name: "ForgetGravity", value: 0)
!302 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!303 = !DIEnumerator(name: "NorthGravity", value: 2)
!304 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!305 = !DIEnumerator(name: "WestGravity", value: 4)
!306 = !DIEnumerator(name: "CenterGravity", value: 5)
!307 = !DIEnumerator(name: "EastGravity", value: 6)
!308 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!309 = !DIEnumerator(name: "SouthGravity", value: 8)
!310 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!311 = !DIEnumerator(name: "StaticGravity", value: 10)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !313, line: 25, baseType: !12, size: 32, elements: !314)
!313 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!315 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!316 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!317 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!318 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!319 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!320 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!321 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!322 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!323 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!324 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!325 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!326 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!327 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!328 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!329 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!330 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!331 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!332 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!333 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!334 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!335 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!336 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!337 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!338 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!339 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!340 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!341 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!342 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!343 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!344 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!345 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!346 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!347 = !DIEnumerator(name: "InCompositeOp", value: 32)
!348 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!349 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!350 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!351 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!352 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!353 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!354 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!355 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!356 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!357 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!358 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!359 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!360 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!361 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!362 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!363 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!364 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!365 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!366 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!367 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!368 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!369 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!370 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!371 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!372 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!373 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!374 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!375 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!376 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!377 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!378 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!379 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!380 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!381 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!382 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 25, baseType: !12, size: 32, elements: !385)
!384 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!385 = !{!386, !387, !388, !389, !390}
!386 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!387 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!388 = !DIEnumerator(name: "NoneDispose", value: 1)
!389 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!390 = !DIEnumerator(name: "PreviousDispose", value: 3)
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 25, baseType: !12, size: 32, elements: !393)
!392 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!393 = !{!394, !395, !396}
!394 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!395 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!396 = !DIEnumerator(name: "RunningTimerState", value: 2)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 31, baseType: !12, size: 32, elements: !399)
!398 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!400 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!401 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!402 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!403 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!404 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!405 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!406 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!407 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!408 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!409 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!410 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!411 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!412 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!413 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !222, line: 47, baseType: !12, size: 32, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}
!416 = !DIEnumerator(name: "UndefinedType", value: 0)
!417 = !DIEnumerator(name: "BilevelType", value: 1)
!418 = !DIEnumerator(name: "GrayscaleType", value: 2)
!419 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!420 = !DIEnumerator(name: "PaletteType", value: 4)
!421 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!422 = !DIEnumerator(name: "TrueColorType", value: 6)
!423 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!424 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!425 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!426 = !DIEnumerator(name: "OptimizeType", value: 10)
!427 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 67, baseType: !12, size: 32, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!430 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!431 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!432 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!433 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!434 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!435 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!436 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!437 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!438 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!439 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!440 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !292, line: 44, baseType: !12, size: 32, elements: !441)
!441 = !{!442, !443, !444, !445}
!442 = !DIEnumerator(name: "UndefinedQuantumFormat", value: 0)
!443 = !DIEnumerator(name: "FloatingPointQuantumFormat", value: 1)
!444 = !DIEnumerator(name: "SignedQuantumFormat", value: 2)
!445 = !DIEnumerator(name: "UnsignedQuantumFormat", value: 3)
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !292, line: 37, baseType: !12, size: 32, elements: !447)
!447 = !{!448, !449, !450}
!448 = !DIEnumerator(name: "UndefinedQuantumAlpha", value: 0)
!449 = !DIEnumerator(name: "AssociatedQuantumAlpha", value: 1)
!450 = !DIEnumerator(name: "DisassociatedQuantumAlpha", value: 2)
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !292, line: 52, baseType: !12, size: 32, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!453 = !DIEnumerator(name: "UndefinedQuantum", value: 0)
!454 = !DIEnumerator(name: "AlphaQuantum", value: 1)
!455 = !DIEnumerator(name: "BlackQuantum", value: 2)
!456 = !DIEnumerator(name: "BlueQuantum", value: 3)
!457 = !DIEnumerator(name: "CMYKAQuantum", value: 4)
!458 = !DIEnumerator(name: "CMYKQuantum", value: 5)
!459 = !DIEnumerator(name: "CyanQuantum", value: 6)
!460 = !DIEnumerator(name: "GrayAlphaQuantum", value: 7)
!461 = !DIEnumerator(name: "GrayQuantum", value: 8)
!462 = !DIEnumerator(name: "GreenQuantum", value: 9)
!463 = !DIEnumerator(name: "IndexAlphaQuantum", value: 10)
!464 = !DIEnumerator(name: "IndexQuantum", value: 11)
!465 = !DIEnumerator(name: "MagentaQuantum", value: 12)
!466 = !DIEnumerator(name: "OpacityQuantum", value: 13)
!467 = !DIEnumerator(name: "RedQuantum", value: 14)
!468 = !DIEnumerator(name: "RGBAQuantum", value: 15)
!469 = !DIEnumerator(name: "BGRAQuantum", value: 16)
!470 = !DIEnumerator(name: "RGBOQuantum", value: 17)
!471 = !DIEnumerator(name: "RGBQuantum", value: 18)
!472 = !DIEnumerator(name: "YellowQuantum", value: 19)
!473 = !DIEnumerator(name: "GrayPadQuantum", value: 20)
!474 = !DIEnumerator(name: "RGBPadQuantum", value: 21)
!475 = !DIEnumerator(name: "CbYCrYQuantum", value: 22)
!476 = !DIEnumerator(name: "CbYCrQuantum", value: 23)
!477 = !DIEnumerator(name: "CbYCrAQuantum", value: 24)
!478 = !DIEnumerator(name: "CMYKOQuantum", value: 25)
!479 = !DIEnumerator(name: "BGRQuantum", value: 26)
!480 = !DIEnumerator(name: "BGROQuantum", value: 27)
!481 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !482, line: 27, baseType: !12, size: 32, elements: !483)
!482 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!484 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!485 = !DIEnumerator(name: "RotatePreview", value: 1)
!486 = !DIEnumerator(name: "ShearPreview", value: 2)
!487 = !DIEnumerator(name: "RollPreview", value: 3)
!488 = !DIEnumerator(name: "HuePreview", value: 4)
!489 = !DIEnumerator(name: "SaturationPreview", value: 5)
!490 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!491 = !DIEnumerator(name: "GammaPreview", value: 7)
!492 = !DIEnumerator(name: "SpiffPreview", value: 8)
!493 = !DIEnumerator(name: "DullPreview", value: 9)
!494 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!495 = !DIEnumerator(name: "QuantizePreview", value: 11)
!496 = !DIEnumerator(name: "DespecklePreview", value: 12)
!497 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!498 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!499 = !DIEnumerator(name: "SharpenPreview", value: 15)
!500 = !DIEnumerator(name: "BlurPreview", value: 16)
!501 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!502 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!503 = !DIEnumerator(name: "SpreadPreview", value: 19)
!504 = !DIEnumerator(name: "SolarizePreview", value: 20)
!505 = !DIEnumerator(name: "ShadePreview", value: 21)
!506 = !DIEnumerator(name: "RaisePreview", value: 22)
!507 = !DIEnumerator(name: "SegmentPreview", value: 23)
!508 = !DIEnumerator(name: "SwirlPreview", value: 24)
!509 = !DIEnumerator(name: "ImplodePreview", value: 25)
!510 = !DIEnumerator(name: "WavePreview", value: 26)
!511 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!512 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!513 = !DIEnumerator(name: "JPEGPreview", value: 29)
!514 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 177, baseType: !12, size: 32, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!516 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!517 = !DIEnumerator(name: "RedChannel", value: 1)
!518 = !DIEnumerator(name: "GrayChannel", value: 1)
!519 = !DIEnumerator(name: "CyanChannel", value: 1)
!520 = !DIEnumerator(name: "GreenChannel", value: 2)
!521 = !DIEnumerator(name: "MagentaChannel", value: 2)
!522 = !DIEnumerator(name: "BlueChannel", value: 4)
!523 = !DIEnumerator(name: "YellowChannel", value: 4)
!524 = !DIEnumerator(name: "AlphaChannel", value: 8)
!525 = !DIEnumerator(name: "OpacityChannel", value: 8)
!526 = !DIEnumerator(name: "MatteChannel", value: 8)
!527 = !DIEnumerator(name: "BlackChannel", value: 32)
!528 = !DIEnumerator(name: "IndexChannel", value: 32)
!529 = !DIEnumerator(name: "CompositeChannels", value: 47)
!530 = !DIEnumerator(name: "AllChannels", value: 134217727)
!531 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!532 = !DIEnumerator(name: "RGBChannels", value: 128)
!533 = !DIEnumerator(name: "GrayChannels", value: 128)
!534 = !DIEnumerator(name: "SyncChannels", value: 256)
!535 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!536 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !537, line: 27, baseType: !12, size: 32, elements: !538)
!537 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!539 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!540 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!541 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!542 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!543 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!544 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!545 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!546 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!547 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!548 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!549 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!550 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!551 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!552 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!553 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!554 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!555 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!556 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!557 = !{!6, !558, !31, !559, !35, !560, !47, !15, !27, !12, !561, !898, !625, !932}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!559 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !41, line: 223, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !222, line: 356, size: 134336, elements: !565)
!565 = !{!566, !568, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !583, !585, !587, !588, !589, !590, !591, !592, !593, !595, !596, !606, !607, !608, !609, !610, !611, !613, !615, !617, !618, !619, !620, !621, !622, !624, !812, !813, !814, !815, !816, !827, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !895, !896, !897}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !564, file: !222, line: 359, baseType: !567, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !197, line: 49, baseType: !196)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !564, file: !222, line: 362, baseType: !569, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !222, line: 86, baseType: !221)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !564, file: !222, line: 365, baseType: !40, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !564, file: !222, line: 366, baseType: !40, size: 32, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !564, file: !222, line: 367, baseType: !40, size: 32, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !564, file: !222, line: 368, baseType: !40, size: 32, offset: 160)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !564, file: !222, line: 371, baseType: !560, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !564, file: !222, line: 372, baseType: !560, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !564, file: !222, line: 373, baseType: !560, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !564, file: !222, line: 374, baseType: !560, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !564, file: !222, line: 377, baseType: !29, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !564, file: !222, line: 378, baseType: !29, size: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !564, file: !222, line: 379, baseType: !29, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !564, file: !222, line: 382, baseType: !582, size: 32, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !222, line: 73, baseType: !281)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !564, file: !222, line: 385, baseType: !584, size: 32, offset: 672)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !292, line: 35, baseType: !291)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !564, file: !222, line: 388, baseType: !586, size: 32, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !222, line: 93, baseType: !241)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !564, file: !222, line: 391, baseType: !29, size: 64, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !564, file: !222, line: 394, baseType: !560, size: 64, offset: 832)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !564, file: !222, line: 395, baseType: !560, size: 64, offset: 896)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !564, file: !222, line: 396, baseType: !560, size: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !564, file: !222, line: 397, baseType: !560, size: 64, offset: 1024)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !564, file: !222, line: 398, baseType: !560, size: 64, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !564, file: !222, line: 401, baseType: !594, size: 64, offset: 1152)
!594 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !564, file: !222, line: 402, baseType: !594, size: 64, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !564, file: !222, line: 405, baseType: !597, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !398, line: 148, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !398, line: 131, size: 64, elements: !599)
!599 = !{!600, !603, !604, !605}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !598, file: !398, line: 143, baseType: !601, size: 16)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !41, line: 93, baseType: !602)
!602 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !598, file: !398, line: 144, baseType: !601, size: 16, offset: 16)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !598, file: !398, line: 145, baseType: !601, size: 16, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !598, file: !398, line: 146, baseType: !601, size: 16, offset: 48)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !564, file: !222, line: 406, baseType: !597, size: 64, offset: 1344)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !564, file: !222, line: 407, baseType: !597, size: 64, offset: 1408)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !564, file: !222, line: 410, baseType: !40, size: 32, offset: 1472)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !564, file: !222, line: 411, baseType: !40, size: 32, offset: 1504)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !564, file: !222, line: 414, baseType: !29, size: 64, offset: 1536)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !564, file: !222, line: 417, baseType: !612, size: 32, offset: 1600)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !160, line: 61, baseType: !159)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !564, file: !222, line: 420, baseType: !614, size: 32, offset: 1632)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !222, line: 61, baseType: !414)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !564, file: !222, line: 423, baseType: !616, size: 32, offset: 1664)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !482, line: 59, baseType: !481)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !564, file: !222, line: 426, baseType: !47, size: 64, offset: 1728)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !564, file: !222, line: 429, baseType: !40, size: 32, offset: 1792)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !564, file: !222, line: 430, baseType: !40, size: 32, offset: 1824)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !564, file: !222, line: 433, baseType: !560, size: 64, offset: 1856)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !564, file: !222, line: 434, baseType: !560, size: 64, offset: 1920)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !564, file: !222, line: 437, baseType: !623, size: 32, offset: 1984)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !41, line: 202, baseType: !514)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !564, file: !222, line: 440, baseType: !625, size: 64, offset: 2048)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !41, line: 221, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !222, line: 150, size: 105920, elements: !628)
!628 = !{!629, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !643, !644, !645, !646, !647, !661, !663, !664, !665, !666, !667, !668, !669, !670, !671, !679, !680, !681, !682, !683, !684, !686, !687, !688, !690, !692, !694, !696, !697, !698, !699, !700, !701, !702, !710, !725, !739, !740, !741, !742, !746, !750, !751, !752, !753, !754, !755, !772, !773, !775, !776, !784, !785, !787, !788, !789, !790, !791, !792, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !809, !811}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !627, file: !222, line: 153, baseType: !630, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !41, line: 209, baseType: !154)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !627, file: !222, line: 156, baseType: !612, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !627, file: !222, line: 159, baseType: !567, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !627, file: !222, line: 162, baseType: !29, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !627, file: !222, line: 165, baseType: !569, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !627, file: !222, line: 168, baseType: !40, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !627, file: !222, line: 169, baseType: !40, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !627, file: !222, line: 172, baseType: !29, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !627, file: !222, line: 173, baseType: !29, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !627, file: !222, line: 174, baseType: !29, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !627, file: !222, line: 175, baseType: !29, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !627, file: !222, line: 178, baseType: !642, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !627, file: !222, line: 179, baseType: !597, size: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !627, file: !222, line: 180, baseType: !597, size: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !627, file: !222, line: 181, baseType: !597, size: 64, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !627, file: !222, line: 184, baseType: !594, size: 64, offset: 832)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !627, file: !222, line: 187, baseType: !648, size: 768, offset: 896)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !222, line: 128, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !222, line: 121, size: 768, elements: !650)
!650 = !{!651, !658, !659, !660}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !649, file: !222, line: 124, baseType: !652, size: 192)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !222, line: 101, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !222, line: 95, size: 192, elements: !654)
!654 = !{!655, !656, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !653, file: !222, line: 98, baseType: !594, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !653, file: !222, line: 99, baseType: !594, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !653, file: !222, line: 100, baseType: !594, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !649, file: !222, line: 125, baseType: !652, size: 192, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !649, file: !222, line: 126, baseType: !652, size: 192, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !649, file: !222, line: 127, baseType: !652, size: 192, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !627, file: !222, line: 190, baseType: !662, size: 32, offset: 1664)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !234, line: 49, baseType: !233)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !627, file: !222, line: 193, baseType: !558, size: 64, offset: 1728)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !627, file: !222, line: 196, baseType: !586, size: 32, offset: 1792)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !627, file: !222, line: 199, baseType: !560, size: 64, offset: 1856)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !627, file: !222, line: 200, baseType: !560, size: 64, offset: 1920)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !627, file: !222, line: 201, baseType: !560, size: 64, offset: 1984)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !627, file: !222, line: 204, baseType: !47, size: 64, offset: 2048)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !627, file: !222, line: 207, baseType: !594, size: 64, offset: 2112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !627, file: !222, line: 208, baseType: !594, size: 64, offset: 2176)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !627, file: !222, line: 211, baseType: !672, size: 256, offset: 2240)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !298, line: 130, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !298, line: 121, size: 256, elements: !674)
!674 = !{!675, !676, !677, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !673, file: !298, line: 124, baseType: !29, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !673, file: !298, line: 125, baseType: !29, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !673, file: !298, line: 128, baseType: !47, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !673, file: !298, line: 129, baseType: !47, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !627, file: !222, line: 212, baseType: !672, size: 256, offset: 2496)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !627, file: !222, line: 213, baseType: !672, size: 256, offset: 2752)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !627, file: !222, line: 216, baseType: !594, size: 64, offset: 3008)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !627, file: !222, line: 217, baseType: !594, size: 64, offset: 3072)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !627, file: !222, line: 218, baseType: !594, size: 64, offset: 3136)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !627, file: !222, line: 221, baseType: !685, size: 32, offset: 3200)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !247, line: 66, baseType: !246)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !627, file: !222, line: 224, baseType: !582, size: 32, offset: 3232)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !627, file: !222, line: 227, baseType: !584, size: 32, offset: 3264)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !627, file: !222, line: 230, baseType: !689, size: 32, offset: 3296)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !298, line: 91, baseType: !297)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !627, file: !222, line: 233, baseType: !691, size: 32, offset: 3328)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !313, line: 99, baseType: !312)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !627, file: !222, line: 236, baseType: !693, size: 32, offset: 3360)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !384, line: 32, baseType: !383)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !627, file: !222, line: 239, baseType: !695, size: 64, offset: 3392)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !627, file: !222, line: 242, baseType: !29, size: 64, offset: 3456)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !627, file: !222, line: 243, baseType: !29, size: 64, offset: 3520)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !627, file: !222, line: 246, baseType: !47, size: 64, offset: 3584)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !627, file: !222, line: 249, baseType: !29, size: 64, offset: 3648)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !627, file: !222, line: 250, baseType: !29, size: 64, offset: 3712)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !627, file: !222, line: 253, baseType: !47, size: 64, offset: 3776)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !627, file: !222, line: 256, baseType: !703, size: 192, offset: 3840)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !704, line: 68, baseType: !705)
!704 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !704, line: 62, size: 192, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !705, file: !704, line: 65, baseType: !594, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !705, file: !704, line: 66, baseType: !594, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !705, file: !704, line: 67, baseType: !594, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !627, file: !222, line: 259, baseType: !711, size: 512, offset: 4032)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !392, line: 51, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !392, line: 40, size: 512, elements: !713)
!713 = !{!714, !721, !722, !724}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !712, file: !392, line: 43, baseType: !715, size: 192)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !392, line: 38, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !392, line: 32, size: 192, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !716, file: !392, line: 35, baseType: !594, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !716, file: !392, line: 36, baseType: !594, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !716, file: !392, line: 37, baseType: !594, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !712, file: !392, line: 44, baseType: !715, size: 192, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !712, file: !392, line: 47, baseType: !723, size: 32, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !392, line: 30, baseType: !391)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !712, file: !392, line: 50, baseType: !29, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !627, file: !222, line: 262, baseType: !726, size: 64, offset: 4544)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !727, line: 26, baseType: !728)
!727 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!40, !731, !733, !736, !558}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !41, line: 150, baseType: !735)
!735 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !41, line: 151, baseType: !738)
!738 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !627, file: !222, line: 265, baseType: !558, size: 64, offset: 4608)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !627, file: !222, line: 266, baseType: !558, size: 64, offset: 4672)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !627, file: !222, line: 267, baseType: !558, size: 64, offset: 4736)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !627, file: !222, line: 270, baseType: !743, size: 64, offset: 4800)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !197, line: 52, baseType: !745)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !197, line: 51, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !627, file: !222, line: 273, baseType: !747, size: 64, offset: 4864)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !41, line: 217, baseType: !749)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !41, line: 217, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !627, file: !222, line: 276, baseType: !21, size: 32768, offset: 4928)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !627, file: !222, line: 277, baseType: !21, size: 32768, offset: 37696)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !627, file: !222, line: 278, baseType: !21, size: 32768, offset: 70464)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !627, file: !222, line: 281, baseType: !29, size: 64, offset: 103232)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !627, file: !222, line: 282, baseType: !29, size: 64, offset: 103296)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !627, file: !222, line: 285, baseType: !756, size: 448, offset: 103360)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !41, line: 219, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !57, line: 102, size: 448, elements: !758)
!758 = !{!759, !761, !762, !763, !764, !765, !766, !771}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !757, file: !57, line: 105, baseType: !760, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !57, line: 100, baseType: !56)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !757, file: !57, line: 108, baseType: !559, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !757, file: !57, line: 111, baseType: !560, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !757, file: !57, line: 112, baseType: !560, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !757, file: !57, line: 115, baseType: !558, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !757, file: !57, line: 118, baseType: !40, size: 32, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !757, file: !57, line: 121, baseType: !767, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !769, line: 26, baseType: !770)
!769 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !769, line: 25, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !757, file: !57, line: 124, baseType: !29, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !627, file: !222, line: 288, baseType: !40, size: 32, offset: 103808)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !222, line: 291, baseType: !774, size: 64, offset: 103872)
!774 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !627, file: !222, line: 294, baseType: !767, size: 64, offset: 103936)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !627, file: !222, line: 297, baseType: !777, size: 256, offset: 104000)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !234, line: 40, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !234, line: 27, size: 256, elements: !779)
!779 = !{!780, !781, !782, !783}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !778, file: !234, line: 30, baseType: !560, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !778, file: !234, line: 33, baseType: !29, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !778, file: !234, line: 36, baseType: !26, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !778, file: !234, line: 39, baseType: !29, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !627, file: !222, line: 298, baseType: !777, size: 256, offset: 104256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !627, file: !222, line: 299, baseType: !786, size: 64, offset: 104512)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !627, file: !222, line: 302, baseType: !29, size: 64, offset: 104576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !627, file: !222, line: 305, baseType: !29, size: 64, offset: 104640)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !627, file: !222, line: 308, baseType: !695, size: 64, offset: 104704)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !627, file: !222, line: 309, baseType: !695, size: 64, offset: 104768)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !627, file: !222, line: 310, baseType: !695, size: 64, offset: 104832)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !627, file: !222, line: 313, baseType: !793, size: 32, offset: 104896)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !398, line: 47, baseType: !397)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !627, file: !222, line: 316, baseType: !40, size: 32, offset: 104928)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !627, file: !222, line: 319, baseType: !597, size: 64, offset: 104960)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !627, file: !222, line: 322, baseType: !695, size: 64, offset: 105024)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !627, file: !222, line: 325, baseType: !672, size: 256, offset: 105088)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !627, file: !222, line: 328, baseType: !558, size: 64, offset: 105344)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !627, file: !222, line: 329, baseType: !558, size: 64, offset: 105408)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !222, line: 332, baseType: !614, size: 32, offset: 105472)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !627, file: !222, line: 335, baseType: !40, size: 32, offset: 105504)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !627, file: !222, line: 338, baseType: !737, size: 64, offset: 105536)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !627, file: !222, line: 341, baseType: !40, size: 32, offset: 105600)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !627, file: !222, line: 344, baseType: !29, size: 64, offset: 105664)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !627, file: !222, line: 347, baseType: !806, size: 64, offset: 105728)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !807, line: 7, baseType: !808)
!807 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !50, line: 160, baseType: !51)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !627, file: !222, line: 350, baseType: !810, size: 32, offset: 105792)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !398, line: 79, baseType: !428)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !627, file: !222, line: 353, baseType: !29, size: 64, offset: 105856)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !564, file: !222, line: 443, baseType: !558, size: 64, offset: 2112)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !564, file: !222, line: 446, baseType: !726, size: 64, offset: 2176)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !564, file: !222, line: 449, baseType: !558, size: 64, offset: 2240)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !564, file: !222, line: 450, baseType: !558, size: 64, offset: 2304)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !564, file: !222, line: 453, baseType: !817, size: 64, offset: 2368)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !818, line: 26, baseType: !819)
!818 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!29, !822, !824, !826}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !564, file: !222, line: 456, baseType: !828, size: 64, offset: 2432)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !830, line: 7, baseType: !831)
!830 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !832, line: 49, size: 1728, elements: !833)
!832 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !849, !851, !852, !853, !855, !856, !858, !862, !865, !867, !870, !873, !874, !875, !876, !877}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !831, file: !832, line: 51, baseType: !559, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !831, file: !832, line: 54, baseType: !560, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !831, file: !832, line: 55, baseType: !560, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !831, file: !832, line: 56, baseType: !560, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !831, file: !832, line: 57, baseType: !560, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !831, file: !832, line: 58, baseType: !560, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !831, file: !832, line: 59, baseType: !560, size: 64, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !831, file: !832, line: 60, baseType: !560, size: 64, offset: 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !831, file: !832, line: 61, baseType: !560, size: 64, offset: 512)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !831, file: !832, line: 64, baseType: !560, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !831, file: !832, line: 65, baseType: !560, size: 64, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !831, file: !832, line: 66, baseType: !560, size: 64, offset: 704)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !831, file: !832, line: 68, baseType: !847, size: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !832, line: 36, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !831, file: !832, line: 70, baseType: !850, size: 64, offset: 832)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !831, file: !832, line: 72, baseType: !559, size: 32, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !831, file: !832, line: 73, baseType: !559, size: 32, offset: 928)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !831, file: !832, line: 74, baseType: !854, size: 64, offset: 960)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !50, line: 152, baseType: !51)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !831, file: !832, line: 77, baseType: !602, size: 16, offset: 1024)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !831, file: !832, line: 78, baseType: !857, size: 8, offset: 1040)
!857 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !831, file: !832, line: 79, baseType: !859, size: 8, offset: 1048)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 1)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !831, file: !832, line: 81, baseType: !863, size: 64, offset: 1088)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !832, line: 43, baseType: null)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !831, file: !832, line: 89, baseType: !866, size: 64, offset: 1152)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !50, line: 153, baseType: !51)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !831, file: !832, line: 91, baseType: !868, size: 64, offset: 1216)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !832, line: 37, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !831, file: !832, line: 92, baseType: !871, size: 64, offset: 1280)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !832, line: 38, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !831, file: !832, line: 93, baseType: !850, size: 64, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !831, file: !832, line: 94, baseType: !558, size: 64, offset: 1408)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !831, file: !832, line: 95, baseType: !29, size: 64, offset: 1472)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !831, file: !832, line: 96, baseType: !559, size: 32, offset: 1536)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !831, file: !832, line: 98, baseType: !878, size: 160, offset: 1568)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 20)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !564, file: !222, line: 459, baseType: !558, size: 64, offset: 2496)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !564, file: !222, line: 462, baseType: !29, size: 64, offset: 2560)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !564, file: !222, line: 465, baseType: !21, size: 32768, offset: 2624)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !564, file: !222, line: 466, baseType: !21, size: 32768, offset: 35392)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !564, file: !222, line: 467, baseType: !21, size: 32768, offset: 68160)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !564, file: !222, line: 468, baseType: !21, size: 32768, offset: 100928)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !564, file: !222, line: 471, baseType: !40, size: 32, offset: 133696)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !564, file: !222, line: 474, baseType: !560, size: 64, offset: 133760)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !564, file: !222, line: 477, baseType: !29, size: 64, offset: 133824)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !564, file: !222, line: 478, baseType: !29, size: 64, offset: 133888)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !564, file: !222, line: 481, baseType: !597, size: 64, offset: 133952)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !564, file: !222, line: 484, baseType: !29, size: 64, offset: 134016)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !564, file: !222, line: 487, baseType: !894, size: 32, offset: 134080)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !537, line: 47, baseType: !536)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !564, file: !222, line: 490, baseType: !597, size: 64, offset: 134112)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !564, file: !222, line: 493, baseType: !558, size: 64, offset: 134208)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !564, file: !222, line: 496, baseType: !40, size: 32, offset: 134272)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumInfo", file: !292, line: 85, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantumInfo", file: !901, line: 42, size: 1216, elements: !902)
!901 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f56ff413af29c367aaef7b4fe7af9628")
!902 = !{!903, !904, !905, !907, !908, !909, !910, !911, !912, !913, !915, !916, !918, !919, !920, !930, !931}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !900, file: !901, line: 45, baseType: !29, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "quantum", scope: !900, file: !901, line: 46, baseType: !29, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !900, file: !901, line: 49, baseType: !906, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumFormatType", file: !292, line: 50, baseType: !440)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !900, file: !901, line: 52, baseType: !594, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !900, file: !901, line: 53, baseType: !594, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !900, file: !901, line: 54, baseType: !594, size: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !900, file: !901, line: 57, baseType: !29, size: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "min_is_white", scope: !900, file: !901, line: 60, baseType: !40, size: 32, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pack", scope: !900, file: !901, line: 61, baseType: !40, size: 32, offset: 480)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_type", scope: !900, file: !901, line: 64, baseType: !914, size: 32, offset: 512)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumAlphaType", file: !292, line: 42, baseType: !446)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "number_threads", scope: !900, file: !901, line: 67, baseType: !29, size: 64, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !900, file: !901, line: 70, baseType: !917, size: 64, offset: 640)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !900, file: !901, line: 73, baseType: !29, size: 64, offset: 704)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !900, file: !901, line: 76, baseType: !584, size: 32, offset: 768)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !900, file: !901, line: 79, baseType: !921, size: 256, offset: 832)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumState", file: !901, line: 40, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantumState", file: !901, line: 27, size: 256, elements: !923)
!923 = !{!924, !925, !926, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_scale", scope: !922, file: !901, line: 30, baseType: !594, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pixel", scope: !922, file: !901, line: 33, baseType: !12, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !922, file: !901, line: 36, baseType: !29, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !922, file: !901, line: 39, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !900, file: !901, line: 82, baseType: !767, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !900, file: !901, line: 85, baseType: !29, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!934 = !{!0}
!935 = !{!936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952}
!936 = !DILocalVariable(name: "signature_info", arg: 1, scope: !2, file: !3, line: 610, type: !6)
!937 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 618, type: !47)
!938 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 621, type: !26)
!939 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 624, type: !47)
!940 = !DILocalVariable(name: "A", scope: !2, file: !3, line: 645, type: !12)
!941 = !DILocalVariable(name: "B", scope: !2, file: !3, line: 646, type: !12)
!942 = !DILocalVariable(name: "C", scope: !2, file: !3, line: 647, type: !12)
!943 = !DILocalVariable(name: "D", scope: !2, file: !3, line: 648, type: !12)
!944 = !DILocalVariable(name: "E", scope: !2, file: !3, line: 649, type: !12)
!945 = !DILocalVariable(name: "F", scope: !2, file: !3, line: 650, type: !12)
!946 = !DILocalVariable(name: "G", scope: !2, file: !3, line: 651, type: !12)
!947 = !DILocalVariable(name: "H", scope: !2, file: !3, line: 652, type: !12)
!948 = !DILocalVariable(name: "shift", scope: !2, file: !3, line: 653, type: !12)
!949 = !DILocalVariable(name: "T", scope: !2, file: !3, line: 654, type: !12)
!950 = !DILocalVariable(name: "T1", scope: !2, file: !3, line: 655, type: !12)
!951 = !DILocalVariable(name: "T2", scope: !2, file: !3, line: 656, type: !12)
!952 = !DILocalVariable(name: "W", scope: !2, file: !3, line: 657, type: !953)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !954)
!954 = !{!955}
!955 = !DISubrange(count: 64)
!956 = !{i32 7, !"Dwarf Version", i32 5}
!957 = !{i32 2, !"Debug Info Version", i32 3}
!958 = !{i32 1, !"wchar_size", i32 4}
!959 = !{i32 7, !"PIC Level", i32 2}
!960 = !{i32 7, !"PIE Level", i32 2}
!961 = !{i32 7, !"uwtable", i32 2}
!962 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!963 = distinct !DISubprogram(name: "AcquireSignatureInfo", scope: !3, file: !3, line: 119, type: !964, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{!6}
!966 = !{!967, !968, !969, !972, !973, !976}
!967 = !DILocalVariable(name: "signature_info", scope: !963, file: !3, line: 122, type: !6)
!968 = !DILocalVariable(name: "lsb_first", scope: !963, file: !3, line: 125, type: !12)
!969 = !DILocalVariable(name: "message", scope: !970, file: !3, line: 129, type: !560)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 129, column: 5)
!971 = distinct !DILexicalBlock(scope: !963, file: !3, line: 128, column: 7)
!972 = !DILocalVariable(name: "exception", scope: !970, file: !3, line: 129, type: !756)
!973 = !DILocalVariable(name: "message", scope: !974, file: !3, line: 138, type: !560)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 138, column: 5)
!975 = distinct !DILexicalBlock(scope: !963, file: !3, line: 137, column: 7)
!976 = !DILocalVariable(name: "exception", scope: !974, file: !3, line: 138, type: !756)
!977 = !DILocation(line: 127, column: 36, scope: !963)
!978 = !DILocation(line: 0, scope: !963)
!979 = !DILocation(line: 128, column: 22, scope: !971)
!980 = !DILocation(line: 128, column: 7, scope: !963)
!981 = !DILocation(line: 129, column: 5, scope: !970)
!982 = !{!983, !983, i64 0}
!983 = !{!"int", !984, i64 0}
!984 = !{!"omnipotent char", !985, i64 0}
!985 = !{!"Simple C/C++ TBAA"}
!986 = !DILocation(line: 0, scope: !970)
!987 = !DILocation(line: 130, column: 10, scope: !963)
!988 = !DILocation(line: 131, column: 29, scope: !963)
!989 = !{!990, !983, i64 0}
!990 = !{!"_SignatureInfo", !983, i64 0, !983, i64 4, !991, i64 8, !991, i64 16, !991, i64 24, !983, i64 32, !983, i64 36, !992, i64 40, !984, i64 48, !992, i64 56, !992, i64 64}
!991 = !{!"any pointer", !984, i64 0}
!992 = !{!"long", !984, i64 0}
!993 = !DILocation(line: 132, column: 19, scope: !963)
!994 = !DILocation(line: 132, column: 28, scope: !963)
!995 = !{!990, !983, i64 4}
!996 = !DILocation(line: 133, column: 26, scope: !963)
!997 = !DILocation(line: 133, column: 19, scope: !963)
!998 = !DILocation(line: 133, column: 25, scope: !963)
!999 = !{!990, !991, i64 8}
!1000 = !DILocation(line: 134, column: 27, scope: !963)
!1001 = !DILocation(line: 134, column: 19, scope: !963)
!1002 = !DILocation(line: 134, column: 26, scope: !963)
!1003 = !{!990, !991, i64 16}
!1004 = !DILocation(line: 135, column: 48, scope: !963)
!1005 = !DILocation(line: 135, column: 19, scope: !963)
!1006 = !DILocation(line: 135, column: 30, scope: !963)
!1007 = !{!990, !991, i64 24}
!1008 = !DILocation(line: 137, column: 35, scope: !975)
!1009 = !DILocation(line: 137, column: 7, scope: !963)
!1010 = !DILocation(line: 138, column: 5, scope: !974)
!1011 = !DILocation(line: 0, scope: !974)
!1012 = !DILocation(line: 140, column: 19, scope: !963)
!1013 = !DILocation(line: 140, column: 28, scope: !963)
!1014 = !{!990, !984, i64 48}
!1015 = !DILocation(line: 142, column: 39, scope: !963)
!1016 = !DILocation(line: 142, column: 19, scope: !963)
!1017 = !DILocation(line: 142, column: 28, scope: !963)
!1018 = !{!990, !992, i64 56}
!1019 = !DILocation(line: 143, column: 19, scope: !963)
!1020 = !DILocation(line: 143, column: 28, scope: !963)
!1021 = !{!990, !992, i64 64}
!1022 = !DILocalVariable(name: "signature_info", arg: 1, scope: !1023, file: !3, line: 399, type: !6)
!1023 = distinct !DISubprogram(name: "InitializeSignature", scope: !3, file: !3, line: 399, type: !4, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1024)
!1024 = !{!1022}
!1025 = !DILocation(line: 0, scope: !1023, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 144, column: 3, scope: !963)
!1027 = !DILocation(line: 401, column: 10, scope: !1023, inlinedAt: !1026)
!1028 = !DILocation(line: 404, column: 19, scope: !1023, inlinedAt: !1026)
!1029 = !DILocation(line: 404, column: 33, scope: !1023, inlinedAt: !1026)
!1030 = !DILocation(line: 405, column: 3, scope: !1023, inlinedAt: !1026)
!1031 = !DILocation(line: 405, column: 33, scope: !1023, inlinedAt: !1026)
!1032 = !DILocation(line: 406, column: 3, scope: !1023, inlinedAt: !1026)
!1033 = !DILocation(line: 406, column: 33, scope: !1023, inlinedAt: !1026)
!1034 = !DILocation(line: 407, column: 3, scope: !1023, inlinedAt: !1026)
!1035 = !DILocation(line: 407, column: 33, scope: !1023, inlinedAt: !1026)
!1036 = !DILocation(line: 408, column: 3, scope: !1023, inlinedAt: !1026)
!1037 = !DILocation(line: 408, column: 33, scope: !1023, inlinedAt: !1026)
!1038 = !DILocation(line: 409, column: 3, scope: !1023, inlinedAt: !1026)
!1039 = !DILocation(line: 409, column: 33, scope: !1023, inlinedAt: !1026)
!1040 = !DILocation(line: 410, column: 3, scope: !1023, inlinedAt: !1026)
!1041 = !DILocation(line: 410, column: 33, scope: !1023, inlinedAt: !1026)
!1042 = !DILocation(line: 411, column: 3, scope: !1023, inlinedAt: !1026)
!1043 = !DILocation(line: 411, column: 33, scope: !1023, inlinedAt: !1026)
!1044 = !DILocation(line: 412, column: 19, scope: !1023, inlinedAt: !1026)
!1045 = !DILocation(line: 413, column: 29, scope: !1023, inlinedAt: !1026)
!1046 = !DILocation(line: 145, column: 3, scope: !963)
!1047 = !DISubprogram(name: "AcquireMagickMemory", scope: !1048, file: !1048, line: 40, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1048 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!558, !826}
!1051 = !{}
!1052 = !DISubprogram(name: "GetExceptionInfo", scope: !57, file: !57, line: 166, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!1056 = !DISubprogram(name: "GetExceptionMessage", scope: !57, file: !57, line: 137, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!560, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!1060 = !DISubprogram(name: "ThrowMagickException", scope: !57, file: !57, line: 156, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!40, !1055, !731, !731, !826, !1063, !731, !731, null}
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!1064 = !DISubprogram(name: "DestroyString", scope: !17, file: !17, line: 46, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!560, !560}
!1067 = !DISubprogram(name: "CatchException", scope: !57, file: !57, line: 164, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1068 = !DISubprogram(name: "DestroyExceptionInfo", scope: !57, file: !57, line: 148, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1055, !1055}
!1071 = !DISubprogram(name: "MagickCoreTerminus", scope: !1072, file: !1072, line: 147, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1072 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null}
!1075 = !DISubprogram(name: "ResetMagickMemory", scope: !1048, file: !1048, line: 52, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!558, !558, !559, !826}
!1078 = !DISubprogram(name: "AcquireStringInfo", scope: !17, file: !17, line: 87, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!15, !826}
!1081 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1048, file: !1048, line: 42, type: !1082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!558, !826, !826}
!1084 = !DISubprogram(name: "time", scope: !1085, file: !1085, line: 75, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1085 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!806, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!1089 = !DILocation(line: 0, scope: !1023)
!1090 = !DILocation(line: 401, column: 10, scope: !1023)
!1091 = !DILocation(line: 404, column: 19, scope: !1023)
!1092 = !DILocation(line: 404, column: 33, scope: !1023)
!1093 = !DILocation(line: 405, column: 3, scope: !1023)
!1094 = !DILocation(line: 405, column: 33, scope: !1023)
!1095 = !DILocation(line: 406, column: 3, scope: !1023)
!1096 = !DILocation(line: 406, column: 33, scope: !1023)
!1097 = !DILocation(line: 407, column: 3, scope: !1023)
!1098 = !DILocation(line: 407, column: 33, scope: !1023)
!1099 = !DILocation(line: 408, column: 3, scope: !1023)
!1100 = !DILocation(line: 408, column: 33, scope: !1023)
!1101 = !DILocation(line: 409, column: 3, scope: !1023)
!1102 = !DILocation(line: 409, column: 33, scope: !1023)
!1103 = !DILocation(line: 410, column: 3, scope: !1023)
!1104 = !DILocation(line: 410, column: 33, scope: !1023)
!1105 = !DILocation(line: 411, column: 3, scope: !1023)
!1106 = !DILocation(line: 411, column: 33, scope: !1023)
!1107 = !DILocation(line: 412, column: 19, scope: !1023)
!1108 = !DILocation(line: 413, column: 29, scope: !1023)
!1109 = !DILocation(line: 415, column: 1, scope: !1023)
!1110 = distinct !DISubprogram(name: "DestroySignatureInfo", scope: !3, file: !3, line: 172, type: !1111, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!6, !6}
!1113 = !{!1114}
!1114 = !DILocalVariable(name: "signature_info", arg: 1, scope: !1110, file: !3, line: 172, type: !6)
!1115 = !DILocation(line: 0, scope: !1110)
!1116 = !DILocation(line: 174, column: 10, scope: !1110)
!1117 = !DILocation(line: 177, column: 23, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 177, column: 7)
!1119 = !DILocation(line: 177, column: 35, scope: !1118)
!1120 = !DILocation(line: 177, column: 7, scope: !1110)
!1121 = !DILocation(line: 178, column: 50, scope: !1118)
!1122 = !DILocation(line: 178, column: 32, scope: !1118)
!1123 = !DILocation(line: 178, column: 5, scope: !1118)
!1124 = !DILocation(line: 180, column: 23, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 180, column: 7)
!1126 = !DILocation(line: 180, column: 31, scope: !1125)
!1127 = !DILocation(line: 180, column: 7, scope: !1110)
!1128 = !DILocation(line: 181, column: 29, scope: !1125)
!1129 = !DILocation(line: 181, column: 28, scope: !1125)
!1130 = !DILocation(line: 181, column: 5, scope: !1125)
!1131 = !DILocation(line: 182, column: 23, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 182, column: 7)
!1133 = !DILocation(line: 182, column: 30, scope: !1132)
!1134 = !DILocation(line: 182, column: 7, scope: !1110)
!1135 = !DILocation(line: 183, column: 28, scope: !1132)
!1136 = !DILocation(line: 183, column: 27, scope: !1132)
!1137 = !DILocation(line: 183, column: 5, scope: !1132)
!1138 = !DILocation(line: 184, column: 19, scope: !1110)
!1139 = !DILocation(line: 184, column: 28, scope: !1110)
!1140 = !DILocation(line: 185, column: 36, scope: !1110)
!1141 = !DILocation(line: 186, column: 3, scope: !1110)
!1142 = !DISubprogram(name: "LogMagickEvent", scope: !130, file: !130, line: 83, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!40, !1145, !731, !731, !826, !731, null}
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !130, line: 58, baseType: !129)
!1147 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1048, file: !1048, line: 51, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!558, !558}
!1150 = !DISubprogram(name: "DestroyStringInfo", scope: !17, file: !17, line: 91, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!15, !15}
!1153 = distinct !DISubprogram(name: "FinalizeSignature", scope: !3, file: !3, line: 212, type: !4, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1155 = !DILocalVariable(name: "signature_info", arg: 1, scope: !1153, file: !3, line: 212, type: !6)
!1156 = !DILocalVariable(name: "i", scope: !1153, file: !3, line: 215, type: !47)
!1157 = !DILocalVariable(name: "q", scope: !1153, file: !3, line: 218, type: !26)
!1158 = !DILocalVariable(name: "p", scope: !1153, file: !3, line: 221, type: !35)
!1159 = !DILocalVariable(name: "datum", scope: !1153, file: !3, line: 224, type: !26)
!1160 = !DILocalVariable(name: "count", scope: !1153, file: !3, line: 227, type: !12)
!1161 = !DILocalVariable(name: "high_order", scope: !1153, file: !3, line: 228, type: !12)
!1162 = !DILocalVariable(name: "low_order", scope: !1153, file: !3, line: 229, type: !12)
!1163 = !DILocation(line: 0, scope: !1153)
!1164 = !DILocation(line: 234, column: 10, scope: !1153)
!1165 = !DILocation(line: 237, column: 29, scope: !1153)
!1166 = !{!990, !983, i64 32}
!1167 = !DILocation(line: 238, column: 30, scope: !1153)
!1168 = !{!990, !983, i64 36}
!1169 = !DILocation(line: 239, column: 21, scope: !1153)
!1170 = !DILocation(line: 239, column: 27, scope: !1153)
!1171 = !DILocation(line: 240, column: 44, scope: !1153)
!1172 = !DILocation(line: 240, column: 9, scope: !1153)
!1173 = !DILocation(line: 241, column: 14, scope: !1153)
!1174 = !DILocation(line: 241, column: 3, scope: !1153)
!1175 = !DILocation(line: 241, column: 17, scope: !1153)
!1176 = !{!984, !984, i64 0}
!1177 = !DILocation(line: 242, column: 68, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 242, column: 7)
!1179 = !DILocation(line: 242, column: 32, scope: !1178)
!1180 = !DILocation(line: 242, column: 16, scope: !1178)
!1181 = !DILocation(line: 242, column: 13, scope: !1178)
!1182 = !DILocation(line: 0, scope: !1178)
!1183 = !DILocation(line: 242, column: 7, scope: !1153)
!1184 = !DILocation(line: 244, column: 31, scope: !1178)
!1185 = !DILocation(line: 244, column: 33, scope: !1178)
!1186 = !DILocation(line: 243, column: 12, scope: !1178)
!1187 = !DILocation(line: 243, column: 5, scope: !1178)
!1188 = !DILocation(line: 248, column: 33, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 246, column: 5)
!1190 = !DILocation(line: 247, column: 14, scope: !1189)
!1191 = !DILocation(line: 249, column: 7, scope: !1189)
!1192 = !DILocation(line: 251, column: 25, scope: !1189)
!1193 = !DILocation(line: 250, column: 40, scope: !1189)
!1194 = !DILocation(line: 251, column: 33, scope: !1189)
!1195 = !DILocation(line: 250, column: 14, scope: !1189)
!1196 = !DILocation(line: 253, column: 41, scope: !1153)
!1197 = !DILocation(line: 253, column: 13, scope: !1153)
!1198 = !DILocation(line: 253, column: 3, scope: !1153)
!1199 = !DILocation(line: 253, column: 12, scope: !1153)
!1200 = !DILocation(line: 254, column: 41, scope: !1153)
!1201 = !DILocation(line: 254, column: 13, scope: !1153)
!1202 = !DILocation(line: 254, column: 3, scope: !1153)
!1203 = !DILocation(line: 254, column: 12, scope: !1153)
!1204 = !DILocation(line: 255, column: 41, scope: !1153)
!1205 = !DILocation(line: 255, column: 13, scope: !1153)
!1206 = !DILocation(line: 255, column: 3, scope: !1153)
!1207 = !DILocation(line: 255, column: 12, scope: !1153)
!1208 = !DILocation(line: 256, column: 13, scope: !1153)
!1209 = !DILocation(line: 256, column: 3, scope: !1153)
!1210 = !DILocation(line: 256, column: 12, scope: !1153)
!1211 = !DILocation(line: 257, column: 40, scope: !1153)
!1212 = !DILocation(line: 257, column: 13, scope: !1153)
!1213 = !DILocation(line: 257, column: 3, scope: !1153)
!1214 = !DILocation(line: 257, column: 12, scope: !1153)
!1215 = !DILocation(line: 258, column: 40, scope: !1153)
!1216 = !DILocation(line: 258, column: 13, scope: !1153)
!1217 = !DILocation(line: 258, column: 3, scope: !1153)
!1218 = !DILocation(line: 258, column: 12, scope: !1153)
!1219 = !DILocation(line: 259, column: 40, scope: !1153)
!1220 = !DILocation(line: 259, column: 13, scope: !1153)
!1221 = !DILocation(line: 259, column: 3, scope: !1153)
!1222 = !DILocation(line: 259, column: 12, scope: !1153)
!1223 = !DILocation(line: 260, column: 13, scope: !1153)
!1224 = !DILocation(line: 260, column: 3, scope: !1153)
!1225 = !DILocation(line: 260, column: 12, scope: !1153)
!1226 = !DILocation(line: 261, column: 3, scope: !1153)
!1227 = !DILocation(line: 262, column: 21, scope: !1153)
!1228 = !DILocation(line: 263, column: 40, scope: !1153)
!1229 = !DILocation(line: 263, column: 5, scope: !1153)
!1230 = !DILocation(line: 264, column: 3, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 264, column: 3)
!1232 = !DILocation(line: 266, column: 28, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 265, column: 3)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 264, column: 3)
!1235 = !DILocation(line: 266, column: 31, scope: !1233)
!1236 = !DILocation(line: 266, column: 10, scope: !1233)
!1237 = !DILocation(line: 266, column: 7, scope: !1233)
!1238 = !DILocation(line: 266, column: 9, scope: !1233)
!1239 = !DILocation(line: 267, column: 28, scope: !1233)
!1240 = !DILocation(line: 267, column: 31, scope: !1233)
!1241 = !DILocation(line: 267, column: 10, scope: !1233)
!1242 = !DILocation(line: 267, column: 7, scope: !1233)
!1243 = !DILocation(line: 267, column: 9, scope: !1233)
!1244 = !DILocation(line: 268, column: 28, scope: !1233)
!1245 = !DILocation(line: 268, column: 31, scope: !1233)
!1246 = !DILocation(line: 268, column: 10, scope: !1233)
!1247 = !DILocation(line: 268, column: 7, scope: !1233)
!1248 = !DILocation(line: 268, column: 9, scope: !1233)
!1249 = !DILocation(line: 269, column: 27, scope: !1233)
!1250 = !DILocation(line: 269, column: 10, scope: !1233)
!1251 = !DILocation(line: 269, column: 7, scope: !1233)
!1252 = !DILocation(line: 269, column: 9, scope: !1233)
!1253 = !DILocation(line: 270, column: 6, scope: !1233)
!1254 = !DILocation(line: 264, column: 43, scope: !1234)
!1255 = !DILocation(line: 264, column: 15, scope: !1234)
!1256 = distinct !{!1256, !1230, !1257, !1258, !1259}
!1257 = !DILocation(line: 271, column: 3, scope: !1231)
!1258 = !{!"llvm.loop.mustprogress"}
!1259 = !{!"llvm.loop.unroll.disable"}
!1260 = !DILocation(line: 278, column: 1, scope: !1153)
!1261 = !DISubprogram(name: "GetStringInfoDatum", scope: !17, file: !17, line: 97, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!26, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!1266 = !DISubprogram(name: "GetStringInfoLength", scope: !17, file: !17, line: 80, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!29, !1264}
!1269 = !DILocation(line: 0, scope: !2)
!1270 = !DILocation(line: 644, column: 3, scope: !2)
!1271 = !DILocation(line: 657, column: 5, scope: !2)
!1272 = !DILocation(line: 660, column: 40, scope: !2)
!1273 = !DILocation(line: 660, column: 5, scope: !2)
!1274 = !DILocation(line: 661, column: 23, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !2, file: !3, line: 661, column: 7)
!1276 = !DILocation(line: 661, column: 33, scope: !1275)
!1277 = !DILocation(line: 661, column: 7, scope: !2)
!1278 = !DILocation(line: 668, column: 14, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 667, column: 9)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 666, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 666, column: 9)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 664, column: 11)
!1283 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 662, column: 5)
!1284 = !DILocation(line: 669, column: 12, scope: !1279)
!1285 = !DILocation(line: 670, column: 11, scope: !1279)
!1286 = !DILocation(line: 670, column: 15, scope: !1279)
!1287 = !DILocation(line: 666, column: 28, scope: !1280)
!1288 = !DILocation(line: 666, column: 21, scope: !1280)
!1289 = !DILocation(line: 666, column: 9, scope: !1281)
!1290 = distinct !{!1290, !1289, !1291, !1258, !1259}
!1291 = !DILocation(line: 671, column: 9, scope: !1281)
!1292 = !DILocation(line: 687, column: 12, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 686, column: 7)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 685, column: 7)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 685, column: 7)
!1296 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 683, column: 9)
!1297 = !DILocation(line: 688, column: 10, scope: !1293)
!1298 = !DILocation(line: 690, column: 35, scope: !1293)
!1299 = !DILocation(line: 689, column: 9, scope: !1293)
!1300 = !DILocation(line: 689, column: 13, scope: !1293)
!1301 = !DILocation(line: 685, column: 26, scope: !1294)
!1302 = !DILocation(line: 685, column: 19, scope: !1294)
!1303 = !DILocation(line: 685, column: 7, scope: !1295)
!1304 = distinct !{!1304, !1303, !1305, !1258, !1259}
!1305 = !DILocation(line: 691, column: 7, scope: !1295)
!1306 = !DILocation(line: 706, column: 21, scope: !2)
!1307 = !DILocation(line: 706, column: 5, scope: !2)
!1308 = !DILocation(line: 707, column: 5, scope: !2)
!1309 = !DILocation(line: 708, column: 5, scope: !2)
!1310 = !DILocation(line: 709, column: 5, scope: !2)
!1311 = !DILocation(line: 710, column: 5, scope: !2)
!1312 = !DILocation(line: 711, column: 5, scope: !2)
!1313 = !DILocation(line: 712, column: 5, scope: !2)
!1314 = !DILocation(line: 713, column: 5, scope: !2)
!1315 = !DILocation(line: 715, column: 56, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 714, column: 3)
!1317 = distinct !DILexicalBlock(scope: !2, file: !3, line: 714, column: 3)
!1318 = !DILocation(line: 714, column: 3, scope: !1317)
!1319 = !DILocation(line: 715, column: 18, scope: !1316)
!1320 = !DILocalVariable(name: "x", arg: 1, scope: !1321, file: !3, line: 605, type: !12)
!1321 = distinct !DISubprogram(name: "RotateRight", scope: !3, file: !3, line: 605, type: !1322, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1324)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!12, !12, !12}
!1324 = !{!1320, !1325}
!1325 = !DILocalVariable(name: "n", arg: 2, scope: !1321, file: !3, line: 605, type: !12)
!1326 = !DILocation(line: 0, scope: !1321, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 715, column: 18, scope: !1316)
!1328 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1327)
!1329 = !DILocation(line: 0, scope: !1321, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 715, column: 18, scope: !1316)
!1331 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1330)
!1332 = !DILocation(line: 715, column: 36, scope: !1316)
!1333 = !DILocation(line: 715, column: 33, scope: !1316)
!1334 = !DILocation(line: 715, column: 32, scope: !1316)
!1335 = !DILocation(line: 715, column: 40, scope: !1316)
!1336 = !DILocation(line: 0, scope: !1321, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 715, column: 40, scope: !1316)
!1338 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1337)
!1339 = !DILocation(line: 0, scope: !1321, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 715, column: 40, scope: !1316)
!1341 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1340)
!1342 = !DILocation(line: 715, column: 39, scope: !1316)
!1343 = !DILocation(line: 715, column: 55, scope: !1316)
!1344 = !DILocation(line: 715, column: 5, scope: !1316)
!1345 = !DILocation(line: 715, column: 9, scope: !1316)
!1346 = !DILocation(line: 714, column: 23, scope: !1316)
!1347 = !DILocation(line: 714, column: 16, scope: !1316)
!1348 = distinct !{!1348, !1318, !1349, !1258, !1259}
!1349 = !DILocation(line: 715, column: 63, scope: !1317)
!1350 = !DILocation(line: 718, column: 42, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 717, column: 3)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 716, column: 3)
!1353 = distinct !DILexicalBlock(scope: !2, file: !3, line: 716, column: 3)
!1354 = !DILocation(line: 0, scope: !1321, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 718, column: 18, scope: !1351)
!1356 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1355)
!1357 = !DILocation(line: 0, scope: !1321, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 718, column: 18, scope: !1351)
!1359 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1358)
!1360 = !DILocation(line: 718, column: 18, scope: !1351)
!1361 = !DILocation(line: 0, scope: !1321, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 718, column: 18, scope: !1351)
!1363 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1362)
!1364 = !DILocalVariable(name: "x", arg: 1, scope: !1365, file: !3, line: 590, type: !12)
!1365 = distinct !DISubprogram(name: "Ch", scope: !3, file: !3, line: 590, type: !1366, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!12, !12, !12, !12}
!1368 = !{!1364, !1369, !1370}
!1369 = !DILocalVariable(name: "y", arg: 2, scope: !1365, file: !3, line: 590, type: !12)
!1370 = !DILocalVariable(name: "z", arg: 3, scope: !1365, file: !3, line: 590, type: !12)
!1371 = !DILocation(line: 0, scope: !1365, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 718, column: 27, scope: !1351)
!1373 = !DILocation(line: 592, column: 13, scope: !1365, inlinedAt: !1372)
!1374 = !DILocation(line: 592, column: 21, scope: !1365, inlinedAt: !1372)
!1375 = !DILocation(line: 592, column: 24, scope: !1365, inlinedAt: !1372)
!1376 = !DILocation(line: 718, column: 37, scope: !1351)
!1377 = !DILocation(line: 592, column: 18, scope: !1365, inlinedAt: !1372)
!1378 = !DILocation(line: 718, column: 17, scope: !1351)
!1379 = !DILocation(line: 718, column: 26, scope: !1351)
!1380 = !DILocation(line: 718, column: 36, scope: !1351)
!1381 = !DILocation(line: 718, column: 41, scope: !1351)
!1382 = !DILocation(line: 0, scope: !1321, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 719, column: 16, scope: !1351)
!1384 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1383)
!1385 = !DILocation(line: 0, scope: !1321, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 719, column: 16, scope: !1351)
!1387 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1386)
!1388 = !DILocation(line: 719, column: 16, scope: !1351)
!1389 = !DILocation(line: 0, scope: !1321, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 719, column: 16, scope: !1351)
!1391 = !DILocation(line: 607, column: 27, scope: !1321, inlinedAt: !1390)
!1392 = !DILocalVariable(name: "x", arg: 1, scope: !1393, file: !3, line: 595, type: !12)
!1393 = distinct !DISubprogram(name: "Maj", scope: !3, file: !3, line: 595, type: !1366, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1394)
!1394 = !{!1392, !1395, !1396}
!1395 = !DILocalVariable(name: "y", arg: 2, scope: !1393, file: !3, line: 595, type: !12)
!1396 = !DILocalVariable(name: "z", arg: 3, scope: !1393, file: !3, line: 595, type: !12)
!1397 = !DILocation(line: 0, scope: !1393, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 719, column: 25, scope: !1351)
!1399 = !DILocation(line: 597, column: 18, scope: !1393, inlinedAt: !1398)
!1400 = !DILocation(line: 597, column: 33, scope: !1393, inlinedAt: !1398)
!1401 = !DILocation(line: 597, column: 28, scope: !1393, inlinedAt: !1398)
!1402 = !DILocation(line: 719, column: 24, scope: !1351)
!1403 = !DILocation(line: 723, column: 16, scope: !1351)
!1404 = !DILocation(line: 727, column: 17, scope: !1351)
!1405 = !DILocation(line: 716, column: 22, scope: !1352)
!1406 = !DILocation(line: 716, column: 15, scope: !1352)
!1407 = !DILocation(line: 716, column: 3, scope: !1353)
!1408 = distinct !{!1408, !1407, !1409, !1258, !1259}
!1409 = !DILocation(line: 728, column: 3, scope: !1353)
!1410 = !DILocation(line: 732, column: 42, scope: !2)
!1411 = !DILocation(line: 732, column: 72, scope: !2)
!1412 = !DILocation(line: 732, column: 33, scope: !2)
!1413 = !DILocation(line: 733, column: 42, scope: !2)
!1414 = !DILocation(line: 733, column: 72, scope: !2)
!1415 = !DILocation(line: 733, column: 33, scope: !2)
!1416 = !DILocation(line: 734, column: 42, scope: !2)
!1417 = !DILocation(line: 734, column: 72, scope: !2)
!1418 = !DILocation(line: 734, column: 33, scope: !2)
!1419 = !DILocation(line: 735, column: 42, scope: !2)
!1420 = !DILocation(line: 735, column: 72, scope: !2)
!1421 = !DILocation(line: 735, column: 33, scope: !2)
!1422 = !DILocation(line: 736, column: 42, scope: !2)
!1423 = !DILocation(line: 736, column: 72, scope: !2)
!1424 = !DILocation(line: 736, column: 33, scope: !2)
!1425 = !DILocation(line: 737, column: 42, scope: !2)
!1426 = !DILocation(line: 737, column: 72, scope: !2)
!1427 = !DILocation(line: 737, column: 33, scope: !2)
!1428 = !DILocation(line: 738, column: 42, scope: !2)
!1429 = !DILocation(line: 738, column: 72, scope: !2)
!1430 = !DILocation(line: 738, column: 33, scope: !2)
!1431 = !DILocation(line: 739, column: 42, scope: !2)
!1432 = !DILocation(line: 739, column: 72, scope: !2)
!1433 = !DILocation(line: 739, column: 33, scope: !2)
!1434 = !DILocation(line: 754, column: 10, scope: !2)
!1435 = !DILocation(line: 755, column: 1, scope: !2)
!1436 = distinct !DISubprogram(name: "GetSignatureBlocksize", scope: !3, file: !3, line: 303, type: !1437, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1441)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!12, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "signature_info", arg: 1, scope: !1436, file: !3, line: 304, type: !1439)
!1443 = !DILocation(line: 0, scope: !1436)
!1444 = !DILocation(line: 306, column: 10, scope: !1436)
!1445 = !DILocation(line: 309, column: 26, scope: !1436)
!1446 = !DILocation(line: 309, column: 3, scope: !1436)
!1447 = distinct !DISubprogram(name: "GetSignatureDigest", scope: !3, file: !3, line: 335, type: !1448, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1264, !1439}
!1450 = !{!1451}
!1451 = !DILocalVariable(name: "signature_info", arg: 1, scope: !1447, file: !3, line: 336, type: !1439)
!1452 = !DILocation(line: 0, scope: !1447)
!1453 = !DILocation(line: 338, column: 10, scope: !1447)
!1454 = !DILocation(line: 341, column: 26, scope: !1447)
!1455 = !DILocation(line: 341, column: 3, scope: !1447)
!1456 = distinct !DISubprogram(name: "GetSignatureDigestsize", scope: !3, file: !3, line: 367, type: !1437, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1457)
!1457 = !{!1458}
!1458 = !DILocalVariable(name: "signature_info", arg: 1, scope: !1456, file: !3, line: 368, type: !1439)
!1459 = !DILocation(line: 0, scope: !1456)
!1460 = !DILocation(line: 370, column: 10, scope: !1456)
!1461 = !DILocation(line: 373, column: 26, scope: !1456)
!1462 = !DILocation(line: 373, column: 3, scope: !1456)
!1463 = distinct !DISubprogram(name: "SetSignatureDigest", scope: !3, file: !3, line: 443, type: !1464, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !6, !1264}
!1466 = !{!1467, !1468}
!1467 = !DILocalVariable(name: "signature_info", arg: 1, scope: !1463, file: !3, line: 443, type: !6)
!1468 = !DILocalVariable(name: "digest", arg: 2, scope: !1463, file: !3, line: 444, type: !1264)
!1469 = !DILocation(line: 0, scope: !1463)
!1470 = !DILocation(line: 451, column: 33, scope: !1463)
!1471 = !DILocation(line: 451, column: 3, scope: !1463)
!1472 = !DILocation(line: 452, column: 1, scope: !1463)
!1473 = !DISubprogram(name: "SetStringInfo", scope: !17, file: !17, line: 106, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !15, !1264}
!1476 = distinct !DISubprogram(name: "SignatureImage", scope: !3, file: !3, line: 480, type: !1477, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!40, !625}
!1479 = !{!1480, !1481, !1485, !1486, !1487, !1488, !1490, !1491, !1492, !1493, !1494, !1495}
!1480 = !DILocalVariable(name: "image", arg: 1, scope: !1476, file: !3, line: 480, type: !625)
!1481 = !DILocalVariable(name: "image_view", scope: !1476, file: !3, line: 483, type: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !537, line: 50, baseType: !1484)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !398, line: 160, flags: DIFlagFwdDecl)
!1485 = !DILocalVariable(name: "hex_signature", scope: !1476, file: !3, line: 486, type: !560)
!1486 = !DILocalVariable(name: "exception", scope: !1476, file: !3, line: 489, type: !1055)
!1487 = !DILocalVariable(name: "quantum_info", scope: !1476, file: !3, line: 492, type: !898)
!1488 = !DILocalVariable(name: "quantum_type", scope: !1476, file: !3, line: 495, type: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumType", file: !292, line: 82, baseType: !451)
!1490 = !DILocalVariable(name: "p", scope: !1476, file: !3, line: 498, type: !932)
!1491 = !DILocalVariable(name: "signature_info", scope: !1476, file: !3, line: 501, type: !6)
!1492 = !DILocalVariable(name: "length", scope: !1476, file: !3, line: 504, type: !29)
!1493 = !DILocalVariable(name: "y", scope: !1476, file: !3, line: 507, type: !47)
!1494 = !DILocalVariable(name: "signature", scope: !1476, file: !3, line: 510, type: !15)
!1495 = !DILocalVariable(name: "pixels", scope: !1476, file: !3, line: 513, type: !26)
!1496 = !DILocation(line: 0, scope: !1476)
!1497 = !DILocation(line: 520, column: 14, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 520, column: 7)
!1499 = !{!1500, !984, i64 12976}
!1500 = !{!"_Image", !984, i64 0, !984, i64 4, !984, i64 8, !992, i64 16, !984, i64 24, !984, i64 28, !984, i64 32, !992, i64 40, !992, i64 48, !992, i64 56, !992, i64 64, !991, i64 72, !1501, i64 80, !1501, i64 88, !1501, i64 96, !1503, i64 104, !1504, i64 112, !984, i64 208, !991, i64 216, !984, i64 224, !991, i64 232, !991, i64 240, !991, i64 248, !992, i64 256, !1503, i64 264, !1503, i64 272, !1506, i64 280, !1506, i64 312, !1506, i64 344, !1503, i64 376, !1503, i64 384, !1503, i64 392, !984, i64 400, !984, i64 404, !984, i64 408, !984, i64 412, !984, i64 416, !984, i64 420, !991, i64 424, !992, i64 432, !992, i64 440, !992, i64 448, !992, i64 456, !992, i64 464, !992, i64 472, !1507, i64 480, !1508, i64 504, !991, i64 568, !991, i64 576, !991, i64 584, !991, i64 592, !991, i64 600, !991, i64 608, !984, i64 616, !984, i64 4712, !984, i64 8808, !992, i64 12904, !992, i64 12912, !1510, i64 12920, !984, i64 12976, !992, i64 12984, !991, i64 12992, !1511, i64 13000, !1511, i64 13032, !991, i64 13064, !992, i64 13072, !992, i64 13080, !991, i64 13088, !991, i64 13096, !991, i64 13104, !984, i64 13112, !984, i64 13116, !1501, i64 13120, !991, i64 13128, !1506, i64 13136, !991, i64 13168, !991, i64 13176, !984, i64 13184, !984, i64 13188, !1512, i64 13192, !984, i64 13200, !992, i64 13208, !992, i64 13216, !984, i64 13224, !992, i64 13232}
!1501 = !{!"_PixelPacket", !1502, i64 0, !1502, i64 2, !1502, i64 4, !1502, i64 6}
!1502 = !{!"short", !984, i64 0}
!1503 = !{!"double", !984, i64 0}
!1504 = !{!"_ChromaticityInfo", !1505, i64 0, !1505, i64 24, !1505, i64 48, !1505, i64 72}
!1505 = !{!"_PrimaryInfo", !1503, i64 0, !1503, i64 8, !1503, i64 16}
!1506 = !{!"_RectangleInfo", !992, i64 0, !992, i64 8, !992, i64 16, !992, i64 24}
!1507 = !{!"_ErrorInfo", !1503, i64 0, !1503, i64 8, !1503, i64 16}
!1508 = !{!"_TimerInfo", !1509, i64 0, !1509, i64 24, !984, i64 48, !992, i64 56}
!1509 = !{!"_Timer", !1503, i64 0, !1503, i64 8, !1503, i64 16}
!1510 = !{!"_ExceptionInfo", !984, i64 0, !983, i64 4, !991, i64 8, !991, i64 16, !991, i64 24, !984, i64 32, !991, i64 40, !992, i64 48}
!1511 = !{!"_ProfileInfo", !991, i64 0, !992, i64 8, !991, i64 16, !992, i64 24}
!1512 = !{!"long long", !984, i64 0}
!1513 = !DILocation(line: 520, column: 20, scope: !1498)
!1514 = !DILocation(line: 520, column: 7, scope: !1476)
!1515 = !DILocation(line: 521, column: 68, scope: !1498)
!1516 = !DILocation(line: 521, column: 12, scope: !1498)
!1517 = !DILocation(line: 521, column: 5, scope: !1498)
!1518 = !DILocation(line: 522, column: 16, scope: !1476)
!1519 = !DILocation(line: 523, column: 20, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 523, column: 7)
!1521 = !DILocation(line: 523, column: 7, scope: !1476)
!1522 = !DILocation(line: 524, column: 5, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 524, column: 5)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 524, column: 5)
!1525 = !DILocation(line: 527, column: 14, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 527, column: 7)
!1527 = !{!1500, !984, i64 32}
!1528 = !DILocation(line: 527, column: 20, scope: !1526)
!1529 = !DILocation(line: 527, column: 7, scope: !1476)
!1530 = !DILocation(line: 529, column: 14, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 529, column: 7)
!1532 = !{!1500, !984, i64 4}
!1533 = !DILocation(line: 529, column: 25, scope: !1531)
!1534 = !DILocation(line: 529, column: 7, scope: !1476)
!1535 = !DILocation(line: 535, column: 18, scope: !1476)
!1536 = !DILocation(line: 536, column: 45, scope: !1476)
!1537 = !{!1538, !992, i64 88}
!1538 = !{!"_QuantumInfo", !992, i64 0, !992, i64 8, !984, i64 16, !1503, i64 24, !1503, i64 32, !1503, i64 40, !992, i64 48, !984, i64 56, !984, i64 60, !984, i64 64, !992, i64 72, !991, i64 80, !992, i64 88, !984, i64 96, !1539, i64 104, !991, i64 136, !992, i64 144}
!1539 = !{!"_QuantumState", !1503, i64 0, !983, i64 8, !992, i64 16, !991, i64 24}
!1540 = !DILocation(line: 536, column: 13, scope: !1476)
!1541 = !DILocation(line: 537, column: 10, scope: !1476)
!1542 = !DILocation(line: 538, column: 22, scope: !1476)
!1543 = !DILocation(line: 539, column: 14, scope: !1476)
!1544 = !DILocation(line: 542, column: 55, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 541, column: 3)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 540, column: 3)
!1547 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 540, column: 3)
!1548 = !DILocation(line: 540, column: 34, scope: !1546)
!1549 = !{!1500, !992, i64 48}
!1550 = !DILocation(line: 540, column: 15, scope: !1546)
!1551 = !DILocation(line: 540, column: 3, scope: !1547)
!1552 = !{!1500, !992, i64 40}
!1553 = !DILocation(line: 542, column: 7, scope: !1545)
!1554 = !DILocation(line: 543, column: 11, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 543, column: 9)
!1556 = !DILocation(line: 543, column: 9, scope: !1545)
!1557 = !DILocation(line: 545, column: 12, scope: !1545)
!1558 = !DILocation(line: 547, column: 5, scope: !1545)
!1559 = !DILocation(line: 548, column: 5, scope: !1545)
!1560 = !DILocation(line: 549, column: 5, scope: !1545)
!1561 = !DILocation(line: 540, column: 41, scope: !1546)
!1562 = distinct !{!1562, !1551, !1563, !1258, !1259}
!1563 = !DILocation(line: 550, column: 3, scope: !1547)
!1564 = !DILocation(line: 551, column: 14, scope: !1476)
!1565 = !DILocation(line: 552, column: 16, scope: !1476)
!1566 = !DILocation(line: 553, column: 3, scope: !1476)
!1567 = !DILocation(line: 0, scope: !1447, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 554, column: 39, scope: !1476)
!1569 = !DILocation(line: 338, column: 10, scope: !1447, inlinedAt: !1568)
!1570 = !DILocation(line: 341, column: 26, scope: !1447, inlinedAt: !1568)
!1571 = !DILocation(line: 554, column: 17, scope: !1476)
!1572 = !DILocation(line: 555, column: 10, scope: !1476)
!1573 = !DILocation(line: 556, column: 10, scope: !1476)
!1574 = !DILocation(line: 560, column: 17, scope: !1476)
!1575 = !DILocation(line: 561, column: 13, scope: !1476)
!1576 = !DILocation(line: 0, scope: !1110, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 562, column: 18, scope: !1476)
!1578 = !DILocation(line: 174, column: 10, scope: !1110, inlinedAt: !1577)
!1579 = !DILocation(line: 177, column: 23, scope: !1118, inlinedAt: !1577)
!1580 = !DILocation(line: 177, column: 35, scope: !1118, inlinedAt: !1577)
!1581 = !DILocation(line: 177, column: 7, scope: !1110, inlinedAt: !1577)
!1582 = !DILocation(line: 178, column: 50, scope: !1118, inlinedAt: !1577)
!1583 = !DILocation(line: 178, column: 32, scope: !1118, inlinedAt: !1577)
!1584 = !DILocation(line: 178, column: 5, scope: !1118, inlinedAt: !1577)
!1585 = !DILocation(line: 180, column: 23, scope: !1125, inlinedAt: !1577)
!1586 = !DILocation(line: 180, column: 31, scope: !1125, inlinedAt: !1577)
!1587 = !DILocation(line: 180, column: 7, scope: !1110, inlinedAt: !1577)
!1588 = !DILocation(line: 181, column: 29, scope: !1125, inlinedAt: !1577)
!1589 = !DILocation(line: 181, column: 28, scope: !1125, inlinedAt: !1577)
!1590 = !DILocation(line: 181, column: 5, scope: !1125, inlinedAt: !1577)
!1591 = !DILocation(line: 182, column: 23, scope: !1132, inlinedAt: !1577)
!1592 = !DILocation(line: 182, column: 30, scope: !1132, inlinedAt: !1577)
!1593 = !DILocation(line: 182, column: 7, scope: !1110, inlinedAt: !1577)
!1594 = !DILocation(line: 183, column: 28, scope: !1132, inlinedAt: !1577)
!1595 = !DILocation(line: 183, column: 27, scope: !1132, inlinedAt: !1577)
!1596 = !DILocation(line: 183, column: 5, scope: !1132, inlinedAt: !1577)
!1597 = !DILocation(line: 184, column: 19, scope: !1110, inlinedAt: !1577)
!1598 = !DILocation(line: 184, column: 28, scope: !1110, inlinedAt: !1577)
!1599 = !DILocation(line: 185, column: 36, scope: !1110, inlinedAt: !1577)
!1600 = !DILocation(line: 563, column: 3, scope: !1476)
!1601 = !DILocation(line: 564, column: 1, scope: !1476)
!1602 = !DISubprogram(name: "AcquireQuantumInfo", scope: !292, file: !292, line: 168, type: !1603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!898, !561, !625}
!1605 = !DISubprogram(name: "GetQuantumPixels", scope: !292, file: !292, line: 182, type: !1606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!26, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!1610 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !537, file: !537, line: 55, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1482, !822, !1055}
!1613 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !537, file: !537, line: 69, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!932, !1616, !1618, !1618, !826, !826, !1055}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!1619 = !DISubprogram(name: "ExportQuantumPixels", scope: !292, file: !292, line: 175, type: !1620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!29, !822, !1616, !1608, !1622, !26, !1055}
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1623 = !DISubprogram(name: "SetStringInfoLength", scope: !17, file: !17, line: 108, type: !1624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !15, !826}
!1626 = !DISubprogram(name: "SetStringInfoDatum", scope: !17, file: !17, line: 107, type: !1627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !15, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!1631 = distinct !DISubprogram(name: "UpdateSignature", scope: !3, file: !3, line: 782, type: !1464, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1638}
!1633 = !DILocalVariable(name: "signature_info", arg: 1, scope: !1631, file: !3, line: 782, type: !6)
!1634 = !DILocalVariable(name: "message", arg: 2, scope: !1631, file: !3, line: 783, type: !1264)
!1635 = !DILocalVariable(name: "i", scope: !1631, file: !3, line: 786, type: !29)
!1636 = !DILocalVariable(name: "p", scope: !1631, file: !3, line: 789, type: !26)
!1637 = !DILocalVariable(name: "n", scope: !1631, file: !3, line: 792, type: !29)
!1638 = !DILocalVariable(name: "length", scope: !1631, file: !3, line: 795, type: !12)
!1639 = !DILocation(line: 0, scope: !1631)
!1640 = !DILocation(line: 802, column: 5, scope: !1631)
!1641 = !DILocation(line: 803, column: 50, scope: !1631)
!1642 = !DILocation(line: 803, column: 18, scope: !1631)
!1643 = !DILocation(line: 804, column: 14, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 804, column: 7)
!1645 = !DILocation(line: 804, column: 7, scope: !1631)
!1646 = !DILocation(line: 806, column: 28, scope: !1631)
!1647 = !DILocation(line: 807, column: 49, scope: !1631)
!1648 = !DILocation(line: 807, column: 31, scope: !1631)
!1649 = !DILocation(line: 807, column: 19, scope: !1631)
!1650 = !DILocation(line: 807, column: 29, scope: !1631)
!1651 = !DILocation(line: 808, column: 5, scope: !1631)
!1652 = !DILocation(line: 809, column: 23, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 809, column: 7)
!1654 = !{!990, !992, i64 40}
!1655 = !DILocation(line: 809, column: 30, scope: !1653)
!1656 = !DILocation(line: 809, column: 7, scope: !1631)
!1657 = !DILocation(line: 811, column: 45, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 810, column: 5)
!1659 = !DILocation(line: 811, column: 9, scope: !1658)
!1660 = !DILocation(line: 811, column: 70, scope: !1658)
!1661 = !DILocation(line: 811, column: 53, scope: !1658)
!1662 = !DILocation(line: 812, column: 11, scope: !1658)
!1663 = !DILocation(line: 814, column: 66, scope: !1658)
!1664 = !DILocation(line: 814, column: 31, scope: !1658)
!1665 = !DILocation(line: 815, column: 25, scope: !1658)
!1666 = !DILocation(line: 814, column: 74, scope: !1658)
!1667 = !DILocation(line: 814, column: 14, scope: !1658)
!1668 = !DILocation(line: 818, column: 29, scope: !1658)
!1669 = !DILocation(line: 820, column: 47, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 819, column: 11)
!1671 = !DILocation(line: 820, column: 11, scope: !1670)
!1672 = !DILocation(line: 819, column: 34, scope: !1670)
!1673 = !DILocation(line: 819, column: 11, scope: !1658)
!1674 = !DILocation(line: 817, column: 8, scope: !1658)
!1675 = !DILocation(line: 816, column: 8, scope: !1658)
!1676 = !DILocation(line: 822, column: 7, scope: !1658)
!1677 = !DILocation(line: 823, column: 5, scope: !1658)
!1678 = !DILocation(line: 824, column: 51, scope: !1631)
!1679 = !DILocation(line: 824, column: 15, scope: !1631)
!1680 = !DILocation(line: 824, column: 12, scope: !1631)
!1681 = !DILocation(line: 824, column: 3, scope: !1631)
!1682 = !DILocation(line: 826, column: 40, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 825, column: 3)
!1684 = !DILocation(line: 826, column: 5, scope: !1683)
!1685 = !DILocation(line: 827, column: 44, scope: !1683)
!1686 = !DILocation(line: 827, column: 8, scope: !1683)
!1687 = !DILocation(line: 827, column: 6, scope: !1683)
!1688 = !DILocation(line: 828, column: 44, scope: !1683)
!1689 = !DILocation(line: 828, column: 8, scope: !1683)
!1690 = !DILocation(line: 828, column: 6, scope: !1683)
!1691 = !DILocation(line: 829, column: 5, scope: !1683)
!1692 = distinct !{!1692, !1681, !1693, !1258, !1259}
!1693 = !DILocation(line: 830, column: 3, scope: !1631)
!1694 = !DILocation(line: 831, column: 62, scope: !1631)
!1695 = !DILocation(line: 831, column: 27, scope: !1631)
!1696 = !DILocation(line: 831, column: 10, scope: !1631)
!1697 = !DILocation(line: 832, column: 25, scope: !1631)
!1698 = !DILocation(line: 839, column: 1, scope: !1631)
!1699 = !DISubprogram(name: "DestroyCacheView", scope: !537, file: !537, line: 57, type: !1700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!1482, !1482}
!1702 = !DISubprogram(name: "DestroyQuantumInfo", scope: !292, file: !292, line: 169, type: !1703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!898, !898}
!1705 = !DISubprogram(name: "StringInfoToHexString", scope: !17, file: !17, line: 51, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!560, !1264}
!1708 = !DISubprogram(name: "DeleteImageProperty", scope: !1709, file: !1709, line: 37, type: !1710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1709 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!40, !625, !731}
!1712 = !DISubprogram(name: "SetImageProperty", scope: !1709, file: !1709, line: 40, type: !1713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!40, !625, !731, !731}
!1715 = !DISubprogram(name: "CopyMagickMemory", scope: !1048, file: !1048, line: 44, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1051)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!558, !558, !824, !826}
