; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/blob.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._BlobInfo = type { i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, %union.FileInfo, %struct.stat, ptr, ptr, i32, ptr, i64, i64 }
%union.FileInfo = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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

@.str = private unnamed_addr constant [83 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/blob.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"UnableToWriteBlob\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ZeroLengthBlobNotPermitted\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"NoDecodeDelegateForThisImageFormat\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"UnableToOpenFile\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"UnableToReadBlob\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"UnableToOpenBlob\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [22 x i8] c"MemoryAllocationError\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"UnableToCreateTemporaryFile\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"a+b\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"NotAuthorized\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"fd:\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"%s-%.20g.%s\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"  read %.20g magic header bytes\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"UnrecognizedImageFormat\00", align 1
@switch.table.IsBlobSeekable = private unnamed_addr constant [7 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1], align 4
@reltable.OpenBlob = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.OpenBlob to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local void @AttachBlob(ptr nocapture noundef %blob_info, ptr noundef %blob, i64 noundef %length) local_unnamed_addr #0 !dbg !1017 {
entry:
  call void @llvm.dbg.value(metadata ptr %blob_info, metadata !1021, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr %blob, metadata !1022, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %length, metadata !1023, metadata !DIExpression()), !dbg !1024
  %debug = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 16, !dbg !1025
  %0 = load i32, ptr %debug, align 8, !dbg !1025, !tbaa !1027
  %cmp.not = icmp eq i32 %0, 0, !dbg !1037
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1038

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 197, ptr noundef nonnull @.str.2) #22, !dbg !1039
  br label %if.end, !dbg !1040

if.end:                                           ; preds = %if.then, %entry
  store i64 %length, ptr %blob_info, align 8, !dbg !1041, !tbaa !1042
  %extent = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 1, !dbg !1043
  store i64 %length, ptr %extent, align 8, !dbg !1044, !tbaa !1045
  %quantum = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 2, !dbg !1046
  store i64 65541, ptr %quantum, align 8, !dbg !1047, !tbaa !1048
  %offset = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 5, !dbg !1049
  store i64 0, ptr %offset, align 8, !dbg !1050, !tbaa !1051
  %type = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 11, !dbg !1052
  store i32 7, ptr %type, align 8, !dbg !1053, !tbaa !1054
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 12, !dbg !1055
  store ptr null, ptr %file_info, align 8, !dbg !1056, !tbaa !1057
  %data = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 15, !dbg !1058
  store ptr %blob, ptr %data, align 8, !dbg !1059, !tbaa !1060
  %mapped = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 3, !dbg !1061
  store i32 0, ptr %mapped, align 8, !dbg !1062, !tbaa !1063
  ret void, !dbg !1064
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !1065 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BlobToFile(ptr noundef %filename, ptr nocapture noundef readonly %blob, i64 noundef %length, ptr noundef %exception) local_unnamed_addr #0 !dbg !1071 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1075, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata ptr %blob, metadata !1076, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %length, metadata !1077, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1078, metadata !DIExpression()), !dbg !1090
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 260, ptr noundef nonnull @.str.3, ptr noundef %filename) #22, !dbg !1091
  %0 = load i8, ptr %filename, align 1, !dbg !1092, !tbaa !1057
  %cmp = icmp eq i8 %0, 0, !dbg !1094
  br i1 %cmp, label %if.then, label %if.else, !dbg !1095

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %filename) #22, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1079, metadata !DIExpression()), !dbg !1090
  br label %if.end, !dbg !1097

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1098, metadata !DIExpression()) #22, !dbg !1108
  call void @llvm.dbg.value(metadata i32 194, metadata !1106, metadata !DIExpression()) #22, !dbg !1108
  call void @llvm.dbg.value(metadata i32 384, metadata !1107, metadata !DIExpression()) #22, !dbg !1108
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %filename, i32 noundef 194, i32 noundef 384) #22, !dbg !1110
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !1079, metadata !DIExpression()), !dbg !1090
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %file.0 = phi i32 [ %call2, %if.then ], [ %call.i, %if.else ], !dbg !1111
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !1079, metadata !DIExpression()), !dbg !1090
  %cmp4 = icmp eq i32 %file.0, -1, !dbg !1112
  br i1 %cmp4, label %if.then6, label %for.cond.preheader, !dbg !1113

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1080, metadata !DIExpression()), !dbg !1090
  %cmp1261.not = icmp eq i64 %length, 0, !dbg !1114
  br i1 %cmp1261.not, label %for.end, label %for.body, !dbg !1117

if.then6:                                         ; preds = %if.end
  %call7 = tail call ptr @__errno_location() #23, !dbg !1118
  %1 = load i32, ptr %call7, align 4, !dbg !1118, !tbaa !1119
  %call8 = tail call ptr @GetExceptionMessage(i32 noundef %1) #22, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1082, metadata !DIExpression()), !dbg !1120
  %call9 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 268, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename, ptr noundef %call8) #22, !dbg !1118
  call void @llvm.dbg.value(metadata ptr undef, metadata !1082, metadata !DIExpression()), !dbg !1120
  br label %cleanup.sink.split, !dbg !1121

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.062 = phi i64 [ %add, %for.inc ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.062, metadata !1080, metadata !DIExpression()), !dbg !1090
  %add.ptr = getelementptr inbounds i8, ptr %blob, i64 %i.062, !dbg !1122
  %sub = sub i64 %length, %i.062, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1125, metadata !DIExpression()) #22, !dbg !1131
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1130, metadata !DIExpression()) #22, !dbg !1131
  %2 = tail call i64 @llvm.umin.i64(i64 %sub, i64 9223372036854775807) #22, !dbg !1131
  %call15 = tail call i64 @write(i32 noundef %file.0, ptr noundef %add.ptr, i64 noundef %2) #22, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %call15, metadata !1081, metadata !DIExpression()), !dbg !1090
  %cmp16 = icmp slt i64 %call15, 1, !dbg !1134
  br i1 %cmp16, label %if.then18, label %for.inc, !dbg !1136

if.then18:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !1081, metadata !DIExpression()), !dbg !1090
  %call19 = tail call ptr @__errno_location() #23, !dbg !1137
  %3 = load i32, ptr %call19, align 4, !dbg !1137, !tbaa !1119
  %cmp20.not = icmp eq i32 %3, 4, !dbg !1140
  br i1 %cmp20.not, label %for.inc, label %for.end.thread, !dbg !1141

for.end.thread:                                   ; preds = %if.then18
  %call2557 = tail call i32 @close(i32 noundef %file.0) #22, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %call25, metadata !1079, metadata !DIExpression()), !dbg !1090
  br label %if.then30, !dbg !1143

for.inc:                                          ; preds = %for.body, %if.then18
  %count.0 = phi i64 [ 0, %if.then18 ], [ %call15, %for.body ], !dbg !1144
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !1081, metadata !DIExpression()), !dbg !1090
  %add = add i64 %count.0, %i.062, !dbg !1145
  call void @llvm.dbg.value(metadata i64 %add, metadata !1080, metadata !DIExpression()), !dbg !1090
  %cmp12 = icmp ult i64 %add, %length, !dbg !1114
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1117, !llvm.loop !1146

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call25 = tail call i32 @close(i32 noundef %file.0) #22, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %call25, metadata !1079, metadata !DIExpression()), !dbg !1090
  %cmp26 = icmp eq i32 %call25, -1, !dbg !1150
  br i1 %cmp26, label %for.end.if.then30_crit_edge, label %cleanup, !dbg !1143

for.end.if.then30_crit_edge:                      ; preds = %for.end
  %.pre = tail call ptr @__errno_location() #23, !dbg !1151
  br label %if.then30, !dbg !1143

if.then30:                                        ; preds = %for.end.if.then30_crit_edge, %for.end.thread
  %call32.pre-phi = phi ptr [ %.pre, %for.end.if.then30_crit_edge ], [ %call19, %for.end.thread ], !dbg !1151
  %4 = load i32, ptr %call32.pre-phi, align 4, !dbg !1151, !tbaa !1119
  %call33 = tail call ptr @GetExceptionMessage(i32 noundef %4) #22, !dbg !1151
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1086, metadata !DIExpression()), !dbg !1152
  %call34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 285, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename, ptr noundef %call33) #22, !dbg !1151
  call void @llvm.dbg.value(metadata ptr %call35, metadata !1086, metadata !DIExpression()), !dbg !1152
  br label %cleanup.sink.split, !dbg !1153

cleanup.sink.split:                               ; preds = %if.then6, %if.then30
  %call33.sink = phi ptr [ %call33, %if.then30 ], [ %call8, %if.then6 ]
  %call35 = tail call ptr @DestroyString(ptr noundef %call33.sink) #22, !dbg !1090
  br label %cleanup, !dbg !1154

cleanup:                                          ; preds = %cleanup.sink.split, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %cleanup.sink.split ], !dbg !1090
  ret i32 %retval.0, !dbg !1154
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !1155 i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #2

declare !dbg !1158 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #4

declare !dbg !1162 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1166 ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree
declare !dbg !1170 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

declare !dbg !1174 i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BlobToImage(ptr noundef %image_info, ptr noundef %blob, i64 noundef %length, ptr noundef %exception) local_unnamed_addr #0 !dbg !1177 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1181, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %blob, metadata !1182, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %length, metadata !1183, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1184, metadata !DIExpression()), !dbg !1193
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1194
  %0 = load i32, ptr %debug, align 8, !dbg !1194, !tbaa !1196
  %cmp.not = icmp eq i32 %0, 0, !dbg !1201
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1202

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1203
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 341, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !1204
  br label %if.end, !dbg !1205

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %blob, null, !dbg !1206
  %cmp2 = icmp eq i64 %length, 0
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1208
  br i1 %or.cond, label %if.then3, label %if.end7, !dbg !1208

if.then3:                                         ; preds = %if.end
  %filename4 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1209
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 346, i32 noundef 435, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename4) #22, !dbg !1211
  br label %cleanup, !dbg !1212

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #22, !dbg !1213
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1187, metadata !DIExpression()), !dbg !1193
  %blob9 = getelementptr inbounds %struct._ImageInfo, ptr %call8, i64 0, i32 46, !dbg !1214
  store ptr %blob, ptr %blob9, align 8, !dbg !1215, !tbaa !1216
  %length10 = getelementptr inbounds %struct._ImageInfo, ptr %call8, i64 0, i32 47, !dbg !1217
  store i64 %length, ptr %length10, align 8, !dbg !1218, !tbaa !1219
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %call8, i64 0, i32 48, !dbg !1220
  %1 = load i8, ptr %magick, align 8, !dbg !1222, !tbaa !1057
  %cmp12 = icmp eq i8 %1, 0, !dbg !1223
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !1224

if.then14:                                        ; preds = %if.end7
  %call15 = tail call i32 @SetImageInfo(ptr noundef nonnull %call8, i32 noundef 0, ptr noundef %exception) #22, !dbg !1225
  br label %if.end16, !dbg !1226

if.end16:                                         ; preds = %if.then14, %if.end7
  %call19 = tail call ptr @GetMagickInfo(ptr noundef nonnull %magick, ptr noundef %exception) #22, !dbg !1227
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1185, metadata !DIExpression()), !dbg !1193
  %cmp20 = icmp eq ptr %call19, null, !dbg !1228
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !1230

if.then22:                                        ; preds = %if.end16
  %call25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 358, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %magick) #22, !dbg !1231
  %call26 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call8) #22, !dbg !1233
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1187, metadata !DIExpression()), !dbg !1193
  br label %cleanup, !dbg !1234

if.end27:                                         ; preds = %if.end16
  %call28 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %call19) #22, !dbg !1235
  %cmp29.not = icmp eq i32 %call28, 0, !dbg !1237
  %filename53 = getelementptr inbounds %struct._ImageInfo, ptr %call8, i64 0, i32 51, !dbg !1193
  br i1 %cmp29.not, label %if.end50, label %if.then31, !dbg !1238

if.then31:                                        ; preds = %if.end27
  %filename34 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1239
  %call36 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename53, ptr noundef nonnull %filename34, i64 noundef 4096) #22, !dbg !1241
  %magick39 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !1242
  %call41 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick39, i64 noundef 4096) #22, !dbg !1243
  %call42 = tail call ptr @ReadImage(ptr noundef nonnull %call8, ptr noundef %exception) #22, !dbg !1244
  call void @llvm.dbg.value(metadata ptr %call42, metadata !1186, metadata !DIExpression()), !dbg !1193
  %cmp43.not = icmp eq ptr %call42, null, !dbg !1245
  br i1 %cmp43.not, label %if.end48, label %if.then45, !dbg !1247

if.then45:                                        ; preds = %if.then31
  %blob46 = getelementptr inbounds %struct._Image, ptr %call42, i64 0, i32 52, !dbg !1248
  %2 = load ptr, ptr %blob46, align 8, !dbg !1248, !tbaa !1249
  call void @llvm.dbg.value(metadata ptr %2, metadata !1259, metadata !DIExpression()) #22, !dbg !1265
  %debug.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 16, !dbg !1267
  %3 = load i32, ptr %debug.i, align 8, !dbg !1267, !tbaa !1027
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !1269
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1270

if.then.i:                                        ; preds = %if.then45
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22, !dbg !1271
  br label %if.end.i, !dbg !1272

if.end.i:                                         ; preds = %if.then.i, %if.then45
  %mapped.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 3, !dbg !1273
  %4 = load i32, ptr %mapped.i, align 8, !dbg !1273, !tbaa !1063
  %cmp1.not.i = icmp eq i32 %4, 0, !dbg !1275
  br i1 %cmp1.not.i, label %DetachBlob.exit, label %if.then2.i, !dbg !1276

if.then2.i:                                       ; preds = %if.end.i
  %data3.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 15, !dbg !1277
  store ptr null, ptr %data3.i, align 8, !dbg !1279, !tbaa !1060
  %5 = load i64, ptr %2, align 8, !dbg !1280, !tbaa !1042
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %5) #22, !dbg !1281
  br label %DetachBlob.exit, !dbg !1282

DetachBlob.exit:                                  ; preds = %if.end.i, %if.then2.i
  store i64 0, ptr %2, align 8, !dbg !1283, !tbaa !1042
  %exempt.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 7, !dbg !1284
  store i32 0, ptr %exempt.i, align 8, !dbg !1285, !tbaa !1286
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 11, !dbg !1287
  store i32 0, ptr %type.i, align 8, !dbg !1288, !tbaa !1054
  %file_info.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 12, !dbg !1289
  store ptr null, ptr %file_info.i, align 8, !dbg !1290, !tbaa !1057
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %mapped.i, i8 0, i64 16, i1 false) #22, !dbg !1291
  call void @llvm.dbg.value(metadata ptr undef, metadata !1264, metadata !DIExpression()) #22, !dbg !1265
  %stream.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 14, !dbg !1292
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %stream.i, i8 0, i64 16, i1 false) #22, !dbg !1293
  br label %if.end48, !dbg !1294

if.end48:                                         ; preds = %DetachBlob.exit, %if.then31
  %call49 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call8) #22, !dbg !1295
  call void @llvm.dbg.value(metadata ptr %call49, metadata !1187, metadata !DIExpression()), !dbg !1193
  br label %cleanup, !dbg !1296

if.end50:                                         ; preds = %if.end27
  store i8 0, ptr %filename53, align 8, !dbg !1297, !tbaa !1057
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %blob9, i8 0, i64 16, i1 false), !dbg !1298
  %call57 = tail call i32 @BlobToFile(ptr noundef nonnull %filename53, ptr noundef nonnull %blob, i64 noundef %length, ptr noundef %exception), !dbg !1299
  call void @llvm.dbg.value(metadata i32 %call57, metadata !1189, metadata !DIExpression()), !dbg !1193
  %cmp58 = icmp eq i32 %call57, 0, !dbg !1300
  br i1 %cmp58, label %if.then60, label %if.end65, !dbg !1302

if.then60:                                        ; preds = %if.end50
  %call63 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename53) #22, !dbg !1303
  %call64 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call8) #22, !dbg !1305
  call void @llvm.dbg.value(metadata ptr %call64, metadata !1187, metadata !DIExpression()), !dbg !1193
  br label %cleanup, !dbg !1306

if.end65:                                         ; preds = %if.end50
  %call66 = tail call ptr @CloneImageInfo(ptr noundef nonnull %call8) #22, !dbg !1307
  call void @llvm.dbg.value(metadata ptr %call66, metadata !1188, metadata !DIExpression()), !dbg !1193
  %filename67 = getelementptr inbounds %struct._ImageInfo, ptr %call66, i64 0, i32 51, !dbg !1308
  %call73 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename67, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %magick, ptr noundef nonnull %filename53) #22, !dbg !1309
  %call74 = tail call ptr @ReadImage(ptr noundef %call66, ptr noundef %exception) #22, !dbg !1310
  call void @llvm.dbg.value(metadata ptr %call74, metadata !1186, metadata !DIExpression()), !dbg !1193
  %cmp75.not = icmp eq ptr %call74, null, !dbg !1311
  br i1 %cmp75.not, label %if.end94, label %if.then77, !dbg !1312

if.then77:                                        ; preds = %if.end65
  %call78 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %call74) #22, !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call78, metadata !1190, metadata !DIExpression()), !dbg !1315
  %cmp79.not155 = icmp eq ptr %call78, null, !dbg !1316
  br i1 %cmp79.not155, label %if.end94, label %for.body.lr.ph, !dbg !1318

for.body.lr.ph:                                   ; preds = %if.then77
  %filename83 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51
  br label %for.body, !dbg !1318

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %images.0156 = phi ptr [ %call78, %for.body.lr.ph ], [ %call93, %for.body ]
  call void @llvm.dbg.value(metadata ptr %images.0156, metadata !1190, metadata !DIExpression()), !dbg !1315
  %filename81 = getelementptr inbounds %struct._Image, ptr %images.0156, i64 0, i32 53, !dbg !1319
  %call85 = tail call i64 @CopyMagickString(ptr noundef nonnull %filename81, ptr noundef nonnull %filename83, i64 noundef 4096) #22, !dbg !1321
  %magick_filename = getelementptr inbounds %struct._Image, ptr %images.0156, i64 0, i32 54, !dbg !1322
  %call89 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick_filename, ptr noundef nonnull %filename83, i64 noundef 4096) #22, !dbg !1323
  %magick90 = getelementptr inbounds %struct._Image, ptr %images.0156, i64 0, i32 55, !dbg !1324
  %6 = load ptr, ptr %call19, align 8, !dbg !1325, !tbaa !1326
  %call92 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick90, ptr noundef %6, i64 noundef 4096) #22, !dbg !1328
  %call93 = tail call ptr @GetNextImageInList(ptr noundef nonnull %images.0156) #22, !dbg !1329
  call void @llvm.dbg.value(metadata ptr %call93, metadata !1190, metadata !DIExpression()), !dbg !1315
  %cmp79.not = icmp eq ptr %call93, null, !dbg !1316
  br i1 %cmp79.not, label %if.end94, label %for.body, !dbg !1318, !llvm.loop !1330

if.end94:                                         ; preds = %for.body, %if.then77, %if.end65
  %call95 = tail call ptr @DestroyImageInfo(ptr noundef %call66) #22, !dbg !1332
  call void @llvm.dbg.value(metadata ptr %call95, metadata !1188, metadata !DIExpression()), !dbg !1193
  %call98 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename53) #22, !dbg !1333
  %call99 = tail call ptr @DestroyImageInfo(ptr noundef %call8) #22, !dbg !1334
  call void @llvm.dbg.value(metadata ptr %call99, metadata !1187, metadata !DIExpression()), !dbg !1193
  br label %cleanup, !dbg !1335

cleanup:                                          ; preds = %if.end94, %if.then60, %if.end48, %if.then22, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %if.then22 ], [ %call42, %if.end48 ], [ null, %if.then60 ], [ %call74, %if.end94 ], !dbg !1193
  ret ptr %retval.0, !dbg !1336
}

declare !dbg !1337 ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1340 i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1344 ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1347 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1350 i32 @GetMagickBlobSupport(ptr noundef) local_unnamed_addr #2

declare !dbg !1353 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1356 ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DetachBlob(ptr nocapture noundef %blob_info) local_unnamed_addr #0 !dbg !1260 {
entry:
  call void @llvm.dbg.value(metadata ptr %blob_info, metadata !1259, metadata !DIExpression()), !dbg !1358
  %debug = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 16, !dbg !1359
  %0 = load i32, ptr %debug, align 8, !dbg !1359, !tbaa !1027
  %cmp.not = icmp eq i32 %0, 0, !dbg !1360
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1361

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22, !dbg !1362
  br label %if.end, !dbg !1363

if.end:                                           ; preds = %if.then, %entry
  %mapped = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 3, !dbg !1364
  %1 = load i32, ptr %mapped, align 8, !dbg !1364, !tbaa !1063
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1365
  br i1 %cmp1.not, label %if.end7, label %if.then2, !dbg !1366

if.then2:                                         ; preds = %if.end
  %data3 = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 15, !dbg !1367
  store ptr null, ptr %data3, align 8, !dbg !1368, !tbaa !1060
  %2 = load i64, ptr %blob_info, align 8, !dbg !1369, !tbaa !1042
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %2) #22, !dbg !1370
  br label %if.end7, !dbg !1371

if.end7:                                          ; preds = %if.then2, %if.end
  store i64 0, ptr %blob_info, align 8, !dbg !1372, !tbaa !1042
  %exempt = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 7, !dbg !1373
  store i32 0, ptr %exempt, align 8, !dbg !1374, !tbaa !1286
  %type = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 11, !dbg !1375
  store i32 0, ptr %type, align 8, !dbg !1376, !tbaa !1054
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 12, !dbg !1377
  store ptr null, ptr %file_info, align 8, !dbg !1378, !tbaa !1057
  %data10 = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 15, !dbg !1379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %mapped, i8 0, i64 16, i1 false), !dbg !1380
  %3 = load ptr, ptr %data10, align 8, !dbg !1379, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %3, metadata !1264, metadata !DIExpression()), !dbg !1358
  %stream = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 14, !dbg !1381
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %stream, i8 0, i64 16, i1 false), !dbg !1382
  ret ptr %3, !dbg !1383
}

declare !dbg !1384 i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

declare !dbg !1387 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1393 ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

declare !dbg !1397 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneBlobInfo(ptr noundef readonly %blob_info) local_unnamed_addr #0 !dbg !1398 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %blob_info, metadata !1404, metadata !DIExpression()), !dbg !1410
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 272) #24, !dbg !1411
  call void @llvm.dbg.value(metadata ptr %call, metadata !1405, metadata !DIExpression()), !dbg !1410
  %cmp = icmp eq ptr %call, null, !dbg !1412
  br i1 %cmp, label %if.then, label %if.end, !dbg !1413

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #22, !dbg !1414
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1409, metadata !DIExpression()), !dbg !1414
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #22, !dbg !1414
  %call1 = tail call ptr @__errno_location() #23, !dbg !1414
  %0 = load i32, ptr %call1, align 4, !dbg !1414, !tbaa !1119
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #22, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1406, metadata !DIExpression()), !dbg !1415
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 451, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %call2) #22, !dbg !1414
  %call4 = call ptr @DestroyString(ptr noundef %call2) #22, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1406, metadata !DIExpression()), !dbg !1415
  call void @CatchException(ptr noundef nonnull %exception) #22, !dbg !1414
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #22, !dbg !1414
  call void @MagickCoreTerminus() #22, !dbg !1414
  call void @_exit(i32 noundef 1) #25, !dbg !1414
  unreachable, !dbg !1414

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call, metadata !1416, metadata !DIExpression()) #22, !dbg !1421
  %call.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 272) #22, !dbg !1423
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 11, !dbg !1424
  store i32 0, ptr %type.i, align 8, !dbg !1425, !tbaa !1054
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 2, !dbg !1426
  store i64 65541, ptr %quantum.i, align 8, !dbg !1427, !tbaa !1048
  %call1.i = tail call i64 @time(ptr noundef null) #22, !dbg !1428
  %st_mtim.i = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 13, i32 12, !dbg !1429
  store i64 %call1.i, ptr %st_mtim.i, align 8, !dbg !1430, !tbaa !1431
  %call2.i = tail call i64 @time(ptr noundef null) #22, !dbg !1432
  %st_ctim.i = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 13, i32 13, !dbg !1433
  store i64 %call2.i, ptr %st_ctim.i, align 8, !dbg !1434, !tbaa !1435
  %call5.i = tail call i32 @IsEventLogging() #22, !dbg !1436
  %debug.i = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 16, !dbg !1437
  store i32 %call5.i, ptr %debug.i, align 8, !dbg !1438, !tbaa !1027
  %reference_count.i = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 18, !dbg !1439
  store i64 1, ptr %reference_count.i, align 8, !dbg !1440, !tbaa !1441
  %call6.i = tail call ptr @AllocateSemaphoreInfo() #22, !dbg !1442
  %semaphore.i = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 17, !dbg !1443
  store ptr %call6.i, ptr %semaphore.i, align 8, !dbg !1444, !tbaa !1445
  %signature.i = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 19, !dbg !1446
  store i64 2880220587, ptr %signature.i, align 8, !dbg !1447, !tbaa !1448
  %cmp6 = icmp eq ptr %blob_info, null, !dbg !1449
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !1451

if.end8:                                          ; preds = %if.end
  %1 = load i64, ptr %blob_info, align 8, !dbg !1452, !tbaa !1042
  store i64 %1, ptr %call, align 8, !dbg !1453, !tbaa !1042
  %extent = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 1, !dbg !1454
  %2 = load i64, ptr %extent, align 8, !dbg !1454, !tbaa !1045
  %extent10 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 1, !dbg !1455
  store i64 %2, ptr %extent10, align 8, !dbg !1456, !tbaa !1045
  %synchronize = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 8, !dbg !1457
  %3 = load i32, ptr %synchronize, align 4, !dbg !1457, !tbaa !1458
  %synchronize11 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 8, !dbg !1459
  store i32 %3, ptr %synchronize11, align 4, !dbg !1460, !tbaa !1458
  %quantum = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 2, !dbg !1461
  %4 = load i64, ptr %quantum, align 8, !dbg !1461, !tbaa !1048
  store i64 %4, ptr %quantum.i, align 8, !dbg !1462, !tbaa !1048
  %mapped = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 3, !dbg !1463
  %5 = load i32, ptr %mapped, align 8, !dbg !1463, !tbaa !1063
  %mapped13 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 3, !dbg !1464
  store i32 %5, ptr %mapped13, align 8, !dbg !1465, !tbaa !1063
  %eof = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 4, !dbg !1466
  %6 = load i32, ptr %eof, align 4, !dbg !1466, !tbaa !1467
  %eof14 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 4, !dbg !1468
  store i32 %6, ptr %eof14, align 4, !dbg !1469, !tbaa !1467
  %offset = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 5, !dbg !1470
  %7 = load i64, ptr %offset, align 8, !dbg !1470, !tbaa !1051
  %offset15 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 5, !dbg !1471
  store i64 %7, ptr %offset15, align 8, !dbg !1472, !tbaa !1051
  %size = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 6, !dbg !1473
  %8 = load i64, ptr %size, align 8, !dbg !1473, !tbaa !1474
  %size16 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 6, !dbg !1475
  store i64 %8, ptr %size16, align 8, !dbg !1476, !tbaa !1474
  %exempt = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 7, !dbg !1477
  %9 = load i32, ptr %exempt, align 8, !dbg !1477, !tbaa !1286
  %exempt17 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 7, !dbg !1478
  store i32 %9, ptr %exempt17, align 8, !dbg !1479, !tbaa !1286
  %status = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 9, !dbg !1480
  %10 = load i32, ptr %status, align 8, !dbg !1480, !tbaa !1481
  %status18 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 9, !dbg !1482
  store i32 %10, ptr %status18, align 8, !dbg !1483, !tbaa !1481
  %temporary = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 10, !dbg !1484
  %11 = load i32, ptr %temporary, align 4, !dbg !1484, !tbaa !1485
  %temporary19 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 10, !dbg !1486
  store i32 %11, ptr %temporary19, align 4, !dbg !1487, !tbaa !1485
  %type = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 11, !dbg !1488
  %12 = load i32, ptr %type, align 8, !dbg !1488, !tbaa !1054
  store i32 %12, ptr %type.i, align 8, !dbg !1489, !tbaa !1054
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 12, !dbg !1490
  %13 = load ptr, ptr %file_info, align 8, !dbg !1491, !tbaa !1057
  %file_info21 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 12, !dbg !1492
  store ptr %13, ptr %file_info21, align 8, !dbg !1493, !tbaa !1057
  %properties = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 13, !dbg !1494
  %properties22 = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 13, !dbg !1495
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %properties, ptr noundef nonnull align 8 dereferenceable(144) %properties22, i64 144, i1 false), !dbg !1495, !tbaa.struct !1496
  %stream = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 14, !dbg !1498
  %14 = load ptr, ptr %stream, align 8, !dbg !1498, !tbaa !1499
  %stream23 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 14, !dbg !1500
  store ptr %14, ptr %stream23, align 8, !dbg !1501, !tbaa !1499
  %data = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 15, !dbg !1502
  %15 = load ptr, ptr %data, align 8, !dbg !1502, !tbaa !1060
  %data24 = getelementptr inbounds %struct._BlobInfo, ptr %call, i64 0, i32 15, !dbg !1503
  store ptr %15, ptr %data24, align 8, !dbg !1504, !tbaa !1060
  %call25 = tail call i32 @IsEventLogging() #22, !dbg !1505
  store i32 %call25, ptr %debug.i, align 8, !dbg !1506, !tbaa !1027
  store i64 1, ptr %reference_count.i, align 8, !dbg !1507, !tbaa !1441
  br label %cleanup, !dbg !1508

cleanup:                                          ; preds = %if.end, %if.end8
  ret ptr %call, !dbg !1509
}

; Function Attrs: allocsize(0)
declare !dbg !1510 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #6

declare !dbg !1514 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1517 void @CatchException(ptr noundef) local_unnamed_addr #2

declare !dbg !1518 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1521 void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @GetBlobInfo(ptr noundef %blob_info) local_unnamed_addr #0 !dbg !1417 {
entry:
  call void @llvm.dbg.value(metadata ptr %blob_info, metadata !1416, metadata !DIExpression()), !dbg !1524
  %call = tail call ptr @ResetMagickMemory(ptr noundef %blob_info, i32 noundef 0, i64 noundef 272) #22, !dbg !1525
  %type = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 11, !dbg !1526
  store i32 0, ptr %type, align 8, !dbg !1527, !tbaa !1054
  %quantum = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 2, !dbg !1528
  store i64 65541, ptr %quantum, align 8, !dbg !1529, !tbaa !1048
  %call1 = tail call i64 @time(ptr noundef null) #22, !dbg !1530
  %st_mtim = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 13, i32 12, !dbg !1531
  store i64 %call1, ptr %st_mtim, align 8, !dbg !1532, !tbaa !1431
  %call2 = tail call i64 @time(ptr noundef null) #22, !dbg !1533
  %st_ctim = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 13, i32 13, !dbg !1534
  store i64 %call2, ptr %st_ctim, align 8, !dbg !1535, !tbaa !1435
  %call5 = tail call i32 @IsEventLogging() #22, !dbg !1536
  %debug = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 16, !dbg !1537
  store i32 %call5, ptr %debug, align 8, !dbg !1538, !tbaa !1027
  %reference_count = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 18, !dbg !1539
  store i64 1, ptr %reference_count, align 8, !dbg !1540, !tbaa !1441
  %call6 = tail call ptr @AllocateSemaphoreInfo() #22, !dbg !1541
  %semaphore = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 17, !dbg !1542
  store ptr %call6, ptr %semaphore, align 8, !dbg !1543, !tbaa !1445
  %signature = getelementptr inbounds %struct._BlobInfo, ptr %blob_info, i64 0, i32 19, !dbg !1544
  store i64 2880220587, ptr %signature, align 8, !dbg !1545, !tbaa !1448
  ret void, !dbg !1546
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare !dbg !1547 i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @CloseBlob(ptr noundef %image) local_unnamed_addr #0 !dbg !1550 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1554, metadata !DIExpression()), !dbg !1556
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1557
  %0 = load i32, ptr %debug, align 8, !dbg !1557, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !1560
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1561

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1562
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 509, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !1563
  br label %if.end, !dbg !1564

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !1565
  %1 = load ptr, ptr %blob, align 8, !dbg !1565, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !1567
  %2 = load i32, ptr %type, align 8, !dbg !1567, !tbaa !1054
  %cmp1 = icmp eq i32 %2, 0, !dbg !1568
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1569

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %image, metadata !1570, metadata !DIExpression()) #22, !dbg !1576
  %3 = load i32, ptr %debug, align 8, !dbg !1578, !tbaa !1559
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !1580
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1581

if.then.i:                                        ; preds = %if.end3
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1582
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #22, !dbg !1583
  %.pre = load ptr, ptr %blob, align 8, !dbg !1584, !tbaa !1249
  %type.i.phi.trans.insert = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 11
  %.pre116 = load i32, ptr %type.i.phi.trans.insert, align 8, !dbg !1585, !tbaa !1054
  br label %if.end.i, !dbg !1586

if.end.i:                                         ; preds = %if.then.i, %if.end3
  %4 = phi i32 [ %.pre116, %if.then.i ], [ %2, %if.end3 ], !dbg !1585
  %5 = phi ptr [ %.pre, %if.then.i ], [ %1, %if.end3 ], !dbg !1584
  call void @llvm.dbg.value(metadata i32 0, metadata !1575, metadata !DIExpression()) #22, !dbg !1576
  switch i32 %4, label %SyncBlob.exit [
    i32 3, label %sw.bb1.i
    i32 1, label %sw.bb1.i
  ], !dbg !1587

sw.bb1.i:                                         ; preds = %if.end.i, %if.end.i
  %file_info.i = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 12, !dbg !1588
  %6 = load ptr, ptr %file_info.i, align 8, !dbg !1591, !tbaa !1057
  %call3.i = tail call i32 @fflush(ptr noundef %6) #22, !dbg !1592
  call void @llvm.dbg.value(metadata i32 %call3.i, metadata !1575, metadata !DIExpression()) #22, !dbg !1576
  %.pre117 = load ptr, ptr %blob, align 8, !dbg !1593, !tbaa !1249
  %type6.phi.trans.insert = getelementptr inbounds %struct._BlobInfo, ptr %.pre117, i64 0, i32 11
  %.pre118 = load i32, ptr %type6.phi.trans.insert, align 8, !dbg !1594, !tbaa !1054
  br label %SyncBlob.exit, !dbg !1595

SyncBlob.exit:                                    ; preds = %if.end.i, %sw.bb1.i
  %7 = phi i32 [ %4, %if.end.i ], [ %.pre118, %sw.bb1.i ], !dbg !1594
  %8 = phi ptr [ %5, %if.end.i ], [ %.pre117, %sw.bb1.i ], !dbg !1593
  %status.0.i = phi i32 [ 0, %if.end.i ], [ %call3.i, %sw.bb1.i ], !dbg !1576
  call void @llvm.dbg.value(metadata i32 %status.0.i, metadata !1575, metadata !DIExpression()) #22, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %status.0.i, metadata !1555, metadata !DIExpression()), !dbg !1556
  switch i32 %7, label %sw.epilog [
    i32 7, label %sw.bb20
    i32 3, label %sw.bb7
    i32 1, label %sw.bb7
  ], !dbg !1596

sw.bb7:                                           ; preds = %SyncBlob.exit, %SyncBlob.exit
  %synchronize = getelementptr inbounds %struct._BlobInfo, ptr %8, i64 0, i32 8, !dbg !1597
  %9 = load i32, ptr %synchronize, align 4, !dbg !1597, !tbaa !1458
  %cmp9.not = icmp eq i32 %9, 0, !dbg !1601
  br i1 %cmp9.not, label %sw.epilog.sink.split, label %if.then10, !dbg !1602

if.then10:                                        ; preds = %sw.bb7
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %8, i64 0, i32 12, !dbg !1603
  %10 = load ptr, ptr %file_info, align 8, !dbg !1604, !tbaa !1057
  %call12 = tail call i32 @fileno(ptr noundef %10) #22, !dbg !1605
  call void @llvm.dbg.value(metadata i32 %call13, metadata !1555, metadata !DIExpression()), !dbg !1556
  br label %sw.epilog.sink.split.sink.split, !dbg !1606

sw.bb20:                                          ; preds = %SyncBlob.exit
  %file_info22 = getelementptr inbounds %struct._BlobInfo, ptr %8, i64 0, i32 12, !dbg !1607
  %11 = load ptr, ptr %file_info22, align 8, !dbg !1610, !tbaa !1057
  %cmp23.not = icmp eq ptr %11, null, !dbg !1611
  br i1 %cmp23.not, label %sw.epilog, label %land.lhs.true, !dbg !1612

land.lhs.true:                                    ; preds = %sw.bb20
  %synchronize25 = getelementptr inbounds %struct._BlobInfo, ptr %8, i64 0, i32 8, !dbg !1613
  %12 = load i32, ptr %synchronize25, align 4, !dbg !1613, !tbaa !1458
  %cmp26.not = icmp eq i32 %12, 0, !dbg !1614
  br i1 %cmp26.not, label %sw.epilog, label %if.then27, !dbg !1615

if.then27:                                        ; preds = %land.lhs.true
  %call30 = tail call i32 @fileno(ptr noundef nonnull %11) #22, !dbg !1616
  call void @llvm.dbg.value(metadata i32 %call34, metadata !1555, metadata !DIExpression()), !dbg !1556
  br label %sw.epilog.sink.split.sink.split, !dbg !1618

sw.epilog.sink.split.sink.split:                  ; preds = %if.then27, %if.then10
  %call12.sink = phi i32 [ %call12, %if.then10 ], [ %call30, %if.then27 ]
  %call13 = tail call i32 @fsync(i32 noundef %call12.sink) #22, !dbg !1619
  %.pre119 = load ptr, ptr %blob, align 8, !dbg !1619, !tbaa !1249
  br label %sw.epilog.sink.split, !dbg !1619

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb7
  %.sink = phi ptr [ %8, %sw.bb7 ], [ %.pre119, %sw.epilog.sink.split.sink.split ]
  %file_info33 = getelementptr inbounds %struct._BlobInfo, ptr %.sink, i64 0, i32 12, !dbg !1619
  %13 = load ptr, ptr %file_info33, align 8, !dbg !1619, !tbaa !1057
  %call34 = tail call i32 @ferror(ptr noundef %13) #22, !dbg !1619
  br label %sw.epilog, !dbg !1620

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb20, %land.lhs.true, %SyncBlob.exit
  %14 = phi ptr [ %8, %SyncBlob.exit ], [ %8, %land.lhs.true ], [ %8, %sw.bb20 ], [ %.sink, %sw.epilog.sink.split ], !dbg !1621
  %status.0 = phi i32 [ %status.0.i, %SyncBlob.exit ], [ %status.0.i, %land.lhs.true ], [ %status.0.i, %sw.bb20 ], [ %call34, %sw.epilog.sink.split ], !dbg !1556
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !1555, metadata !DIExpression()), !dbg !1556
  %status.0.lobit = lshr i32 %status.0, 31, !dbg !1620
  %status38 = getelementptr inbounds %struct._BlobInfo, ptr %14, i64 0, i32 9, !dbg !1622
  store i32 %status.0.lobit, ptr %status38, align 8, !dbg !1623, !tbaa !1481
  %call39 = tail call i64 @GetBlobSize(ptr noundef nonnull %image), !dbg !1624
  %15 = load ptr, ptr %blob, align 8, !dbg !1625, !tbaa !1249
  %size = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 6, !dbg !1626
  store i64 %call39, ptr %size, align 8, !dbg !1627, !tbaa !1474
  %extent = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 79, !dbg !1628
  store i64 %call39, ptr %extent, align 8, !dbg !1629, !tbaa !1630
  %eof = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 4, !dbg !1631
  store i32 0, ptr %eof, align 4, !dbg !1632, !tbaa !1467
  %exempt = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 7, !dbg !1633
  %16 = load i32, ptr %exempt, align 8, !dbg !1633, !tbaa !1286
  %cmp45.not = icmp eq i32 %16, 0, !dbg !1635
  %type53 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 11, !dbg !1556
  br i1 %cmp45.not, label %if.end51, label %if.then46, !dbg !1636

if.then46:                                        ; preds = %sw.epilog
  store i32 0, ptr %type53, align 8, !dbg !1637, !tbaa !1054
  %status50 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 9, !dbg !1639
  %17 = load i32, ptr %status50, align 8, !dbg !1639, !tbaa !1481
  br label %cleanup, !dbg !1640

if.end51:                                         ; preds = %sw.epilog
  %18 = load i32, ptr %type53, align 8, !dbg !1641, !tbaa !1054
  switch i32 %18, label %sw.epilog71 [
    i32 7, label %sw.bb62
    i32 1, label %sw.bb55
  ], !dbg !1642

sw.bb55:                                          ; preds = %if.end51
  %file_info57 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 12, !dbg !1643
  %19 = load ptr, ptr %file_info57, align 8, !dbg !1646, !tbaa !1057
  %call58 = tail call i32 @fclose(ptr noundef %19), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %call58, metadata !1555, metadata !DIExpression()), !dbg !1556
  br label %sw.epilog71, !dbg !1648

sw.bb62:                                          ; preds = %if.end51
  %file_info64 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 12, !dbg !1649
  %20 = load ptr, ptr %file_info64, align 8, !dbg !1652, !tbaa !1057
  %cmp65.not = icmp eq ptr %20, null, !dbg !1653
  br i1 %cmp65.not, label %sw.epilog71, label %if.then66, !dbg !1654

if.then66:                                        ; preds = %sw.bb62
  %call69 = tail call i32 @fclose(ptr noundef nonnull %20), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %call69, metadata !1555, metadata !DIExpression()), !dbg !1556
  br label %sw.epilog71, !dbg !1656

sw.epilog71:                                      ; preds = %sw.bb62, %if.then66, %if.end51, %sw.bb55
  %status.1 = phi i32 [ %status.0, %if.end51 ], [ %call58, %sw.bb55 ], [ %call69, %if.then66 ], [ %status.0, %sw.bb62 ], !dbg !1556
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !1555, metadata !DIExpression()), !dbg !1556
  %21 = load ptr, ptr %blob, align 8, !dbg !1657, !tbaa !1249
  call void @llvm.dbg.value(metadata ptr %21, metadata !1259, metadata !DIExpression()) #22, !dbg !1658
  %debug.i109 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 16, !dbg !1660
  %22 = load i32, ptr %debug.i109, align 8, !dbg !1660, !tbaa !1027
  %cmp.not.i110 = icmp eq i32 %22, 0, !dbg !1661
  br i1 %cmp.not.i110, label %if.end.i113, label %if.then.i112, !dbg !1662

if.then.i112:                                     ; preds = %sw.epilog71
  %call.i111 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22, !dbg !1663
  br label %if.end.i113, !dbg !1664

if.end.i113:                                      ; preds = %if.then.i112, %sw.epilog71
  %mapped.i = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 3, !dbg !1665
  %23 = load i32, ptr %mapped.i, align 8, !dbg !1665, !tbaa !1063
  %cmp1.not.i = icmp eq i32 %23, 0, !dbg !1666
  br i1 %cmp1.not.i, label %DetachBlob.exit, label %if.then2.i, !dbg !1667

if.then2.i:                                       ; preds = %if.end.i113
  %data3.i = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 15, !dbg !1668
  store ptr null, ptr %data3.i, align 8, !dbg !1669, !tbaa !1060
  %24 = load i64, ptr %21, align 8, !dbg !1670, !tbaa !1042
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %24) #22, !dbg !1671
  br label %DetachBlob.exit, !dbg !1672

DetachBlob.exit:                                  ; preds = %if.end.i113, %if.then2.i
  store i64 0, ptr %21, align 8, !dbg !1673, !tbaa !1042
  %exempt.i = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 7, !dbg !1674
  store i32 0, ptr %exempt.i, align 8, !dbg !1675, !tbaa !1286
  %type.i114 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 11, !dbg !1676
  store i32 0, ptr %type.i114, align 8, !dbg !1677, !tbaa !1054
  %file_info.i115 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 12, !dbg !1678
  store ptr null, ptr %file_info.i115, align 8, !dbg !1679, !tbaa !1057
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %mapped.i, i8 0, i64 16, i1 false) #22, !dbg !1680
  call void @llvm.dbg.value(metadata ptr undef, metadata !1264, metadata !DIExpression()) #22, !dbg !1658
  %stream.i = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 14, !dbg !1681
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %stream.i, i8 0, i64 16, i1 false) #22, !dbg !1682
  %status.1.lobit = lshr i32 %status.1, 31, !dbg !1683
  %25 = load ptr, ptr %blob, align 8, !dbg !1684, !tbaa !1249
  %status77 = getelementptr inbounds %struct._BlobInfo, ptr %25, i64 0, i32 9, !dbg !1685
  store i32 %status.1.lobit, ptr %status77, align 8, !dbg !1686, !tbaa !1481
  br label %cleanup, !dbg !1687

cleanup:                                          ; preds = %if.end, %DetachBlob.exit, %if.then46
  %retval.0 = phi i32 [ %17, %if.then46 ], [ %status.1.lobit, %DetachBlob.exit ], [ 1, %if.end ], !dbg !1556
  ret i32 %retval.0, !dbg !1688
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SyncBlob(ptr noundef %image) unnamed_addr #0 !dbg !1571 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1570, metadata !DIExpression()), !dbg !1689
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1690
  %0 = load i32, ptr %debug, align 8, !dbg !1690, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !1691
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1692

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1693
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !1694
  br label %if.end, !dbg !1695

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1575, metadata !DIExpression()), !dbg !1689
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !1696
  %1 = load ptr, ptr %blob, align 8, !dbg !1696, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !1697
  %2 = load i32, ptr %type, align 8, !dbg !1697, !tbaa !1054
  switch i32 %2, label %sw.epilog [
    i32 3, label %sw.bb1
    i32 1, label %sw.bb1
  ], !dbg !1698

sw.bb1:                                           ; preds = %if.end, %if.end
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 12, !dbg !1699
  %3 = load ptr, ptr %file_info, align 8, !dbg !1700, !tbaa !1057
  %call3 = tail call i32 @fflush(ptr noundef %3), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1575, metadata !DIExpression()), !dbg !1689
  br label %sw.epilog, !dbg !1702

sw.epilog:                                        ; preds = %if.end, %sw.bb1
  %status.0 = phi i32 [ 0, %if.end ], [ %call3, %sw.bb1 ], !dbg !1689
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !1575, metadata !DIExpression()), !dbg !1689
  ret i32 %status.0, !dbg !1703
}

declare !dbg !1704 i32 @fsync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1705 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !1708 noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i64 @GetBlobSize(ptr noundef %image) local_unnamed_addr #0 !dbg !1709 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1713, metadata !DIExpression()), !dbg !1718
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1719
  %0 = load i32, ptr %debug, align 8, !dbg !1719, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !1721
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1722

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1723
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1358, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !1724
  br label %if.end, !dbg !1725

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1714, metadata !DIExpression()), !dbg !1718
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !1726
  %1 = load ptr, ptr %blob, align 8, !dbg !1726, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !1727
  %2 = load i32, ptr %type, align 8, !dbg !1727, !tbaa !1054
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb5
    i32 3, label %sw.bb15
    i32 4, label %sw.bb18
    i32 5, label %sw.bb18
    i32 7, label %sw.epilog.sink.split
  ], !dbg !1728

sw.bb:                                            ; preds = %if.end
  %size = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 6, !dbg !1729
  call void @llvm.dbg.value(metadata i64 undef, metadata !1714, metadata !DIExpression()), !dbg !1718
  br label %sw.epilog.sink.split, !dbg !1731

sw.bb2:                                           ; preds = %if.end
  %size4 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 6, !dbg !1732
  call void @llvm.dbg.value(metadata i64 undef, metadata !1714, metadata !DIExpression()), !dbg !1718
  br label %sw.epilog.sink.split, !dbg !1734

sw.bb5:                                           ; preds = %if.end
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 12, !dbg !1735
  %3 = load ptr, ptr %file_info, align 8, !dbg !1738, !tbaa !1057
  %call7 = tail call i32 @fileno(ptr noundef %3) #22, !dbg !1739
  %4 = load ptr, ptr %blob, align 8, !dbg !1740, !tbaa !1249
  %properties = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 13, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %call7, metadata !1742, metadata !DIExpression()) #22, !dbg !1749
  call void @llvm.dbg.value(metadata ptr %properties, metadata !1748, metadata !DIExpression()) #22, !dbg !1749
  %call.i = tail call i32 @__fxstat(i32 noundef 1, i32 noundef %call7, ptr noundef nonnull %properties) #22, !dbg !1751
  %cmp10 = icmp eq i32 %call.i, 0, !dbg !1752
  br i1 %cmp10, label %if.then11, label %sw.epilog, !dbg !1753

if.then11:                                        ; preds = %sw.bb5
  %5 = load ptr, ptr %blob, align 8, !dbg !1754, !tbaa !1249
  %st_size = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 13, i32 8, !dbg !1755
  call void @llvm.dbg.value(metadata i64 undef, metadata !1714, metadata !DIExpression()), !dbg !1718
  br label %sw.epilog.sink.split, !dbg !1756

sw.bb15:                                          ; preds = %if.end
  %size17 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 6, !dbg !1757
  call void @llvm.dbg.value(metadata i64 undef, metadata !1714, metadata !DIExpression()), !dbg !1718
  br label %sw.epilog.sink.split, !dbg !1759

sw.bb18:                                          ; preds = %if.end, %if.end
  %filename19 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1760
  %properties22 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 13, !dbg !1761
  %call23 = tail call i32 @GetPathAttributes(ptr noundef nonnull %filename19, ptr noundef nonnull %properties22) #22, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %call23, metadata !1715, metadata !DIExpression()), !dbg !1763
  %cmp24.not = icmp eq i32 %call23, 0, !dbg !1764
  br i1 %cmp24.not, label %sw.epilog, label %if.then25, !dbg !1766

if.then25:                                        ; preds = %sw.bb18
  %6 = load ptr, ptr %blob, align 8, !dbg !1767, !tbaa !1249
  %st_size28 = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 13, i32 8, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %7, metadata !1714, metadata !DIExpression()), !dbg !1718
  br label %sw.epilog.sink.split, !dbg !1769

sw.epilog.sink.split:                             ; preds = %if.end, %sw.bb, %sw.bb2, %sw.bb15, %if.then11, %if.then25
  %st_size28.sink = phi ptr [ %st_size28, %if.then25 ], [ %st_size, %if.then11 ], [ %size17, %sw.bb15 ], [ %size4, %sw.bb2 ], [ %size, %sw.bb ], [ %1, %if.end ]
  %7 = load i64, ptr %st_size28.sink, align 8, !dbg !1770, !tbaa !1057
  br label %sw.epilog, !dbg !1771

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb18, %sw.bb5, %if.end
  %extent.1 = phi i64 [ 0, %if.end ], [ 0, %sw.bb5 ], [ 0, %sw.bb18 ], [ %7, %sw.epilog.sink.split ], !dbg !1718
  call void @llvm.dbg.value(metadata i64 %extent.1, metadata !1714, metadata !DIExpression()), !dbg !1718
  ret i64 %extent.1, !dbg !1771
}

; Function Attrs: nofree nounwind
declare !dbg !1772 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @DestroyBlob(ptr noundef %image) local_unnamed_addr #0 !dbg !1773 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1777, metadata !DIExpression()), !dbg !1779
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1780
  %0 = load i32, ptr %debug, align 8, !dbg !1780, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !1782
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1783

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1784
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 638, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !1785
  br label %if.end, !dbg !1786

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1778, metadata !DIExpression()), !dbg !1779
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !1787
  %1 = load ptr, ptr %blob, align 8, !dbg !1787, !tbaa !1249
  %semaphore = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 17, !dbg !1788
  %2 = load ptr, ptr %semaphore, align 8, !dbg !1788, !tbaa !1445
  tail call void @LockSemaphoreInfo(ptr noundef %2) #22, !dbg !1789
  %3 = load ptr, ptr %blob, align 8, !dbg !1790, !tbaa !1249
  %reference_count = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 18, !dbg !1791
  %4 = load i64, ptr %reference_count, align 8, !dbg !1792, !tbaa !1441
  %dec = add nsw i64 %4, -1, !dbg !1792
  store i64 %dec, ptr %reference_count, align 8, !dbg !1792, !tbaa !1441
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1793
  call void @llvm.dbg.value(metadata i32 undef, metadata !1778, metadata !DIExpression()), !dbg !1779
  %semaphore8 = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 17, !dbg !1795
  %5 = load ptr, ptr %semaphore8, align 8, !dbg !1795, !tbaa !1445
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #22, !dbg !1796
  br i1 %cmp4, label %if.end11, label %cleanup, !dbg !1797

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @CloseBlob(ptr noundef nonnull %image), !dbg !1798
  %6 = load ptr, ptr %blob, align 8, !dbg !1799, !tbaa !1249
  %mapped = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 3, !dbg !1801
  %7 = load i32, ptr %mapped, align 8, !dbg !1801, !tbaa !1063
  %cmp14.not = icmp eq i32 %7, 0, !dbg !1802
  br i1 %cmp14.not, label %if.end21, label %if.then15, !dbg !1803

if.then15:                                        ; preds = %if.end11
  %8 = load i64, ptr %6, align 8, !dbg !1804, !tbaa !1042
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %8) #22, !dbg !1806
  %.pre = load ptr, ptr %blob, align 8, !dbg !1807, !tbaa !1249
  br label %if.end21, !dbg !1809

if.end21:                                         ; preds = %if.then15, %if.end11
  %9 = phi ptr [ %.pre, %if.then15 ], [ %6, %if.end11 ], !dbg !1807
  %semaphore23 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 17, !dbg !1810
  %10 = load ptr, ptr %semaphore23, align 8, !dbg !1810, !tbaa !1445
  %cmp24.not = icmp eq ptr %10, null, !dbg !1811
  br i1 %cmp24.not, label %if.end28, label %if.then25, !dbg !1812

if.then25:                                        ; preds = %if.end21
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore23) #22, !dbg !1813
  %.pre48 = load ptr, ptr %blob, align 8, !dbg !1814, !tbaa !1249
  br label %if.end28, !dbg !1813

if.end28:                                         ; preds = %if.then25, %if.end21
  %11 = phi ptr [ %.pre48, %if.then25 ], [ %9, %if.end21 ], !dbg !1814
  %signature = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 19, !dbg !1815
  store i64 -2880220588, ptr %signature, align 8, !dbg !1816, !tbaa !1448
  %call31 = tail call ptr @RelinquishMagickMemory(ptr noundef %11) #22, !dbg !1817
  store ptr %call31, ptr %blob, align 8, !dbg !1818, !tbaa !1249
  br label %cleanup, !dbg !1819

cleanup:                                          ; preds = %if.end, %if.end28
  ret void, !dbg !1819
}

declare !dbg !1820 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1823 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @UnmapBlob(ptr nocapture readnone %map, i64 %length) local_unnamed_addr #11 !dbg !1824 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !1828, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 undef, metadata !1829, metadata !DIExpression()), !dbg !1830
  ret i32 0, !dbg !1831
}

declare !dbg !1832 void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1837 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1841 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @DiscardBlobBytes(ptr nocapture noundef readonly %image, i64 noundef %length) local_unnamed_addr #12 !dbg !1844 {
entry:
  %buffer = alloca [16384 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1848, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %length, metadata !1849, metadata !DIExpression()), !dbg !1857
  call void @llvm.lifetime.start.p0(i64 16384, ptr nonnull %buffer) #22, !dbg !1858
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1853, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 0, metadata !1852, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !1857
  %cmp16 = icmp sgt i64 %length, 0, !dbg !1860
  br i1 %cmp16, label %for.body.lr.ph, label %for.end, !dbg !1863

for.body.lr.ph:                                   ; preds = %entry
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52
  %0 = load ptr, ptr %blob.i, align 8, !dbg !1864, !tbaa !1249
  %1 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !1877
  %2 = load i32, ptr %1, align 8, !dbg !1877, !tbaa !1054
  %3 = icmp eq i32 %2, 7, !dbg !1878
  br i1 %3, label %for.body.lr.ph.split.us, label %for.body

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %offset.i.us = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %0, align 8, !tbaa !1042
  %offset.i.us.promoted = load i64, ptr %offset.i.us, align 8, !tbaa !1051
  %eof.i.us = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4
  br label %for.body.us, !dbg !1863

for.body.us:                                      ; preds = %for.inc.us, %for.body.lr.ph.split.us
  %add.i.us23 = phi i64 [ %offset.i.us.promoted, %for.body.lr.ph.split.us ], [ %add.i.us21, %for.inc.us ]
  %i.017.us = phi i64 [ 0, %for.body.lr.ph.split.us ], [ %add.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %i.017.us, metadata !1850, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata !DIArgList(i64 %length, i64 %i.017.us), metadata !1125, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #22, !dbg !1879
  call void @llvm.dbg.value(metadata i64 16384, metadata !1130, metadata !DIExpression()) #22, !dbg !1879
  call void @llvm.dbg.value(metadata i64 undef, metadata !1851, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !1881
  call void @llvm.dbg.value(metadata i64 undef, metadata !1872, metadata !DIExpression()) #22, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !1881
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !1881
  %cmp4.not.i.us = icmp sgt i64 %4, %add.i.us23, !dbg !1882
  br i1 %cmp4.not.i.us, label %if.end7.i.us, label %ReadBlobStream.exit.thread.us, !dbg !1884

ReadBlobStream.exit.thread.us:                    ; preds = %for.body.us
  store i32 1, ptr %eof.i.us, align 4, !dbg !1885, !tbaa !1467
  call void @llvm.dbg.value(metadata i64 undef, metadata !1852, metadata !DIExpression()), !dbg !1857
  br label %if.then.us, !dbg !1887

if.end7.i.us:                                     ; preds = %for.body.us
  %sub.us = sub i64 %length, %i.017.us, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %sub.us, metadata !1125, metadata !DIExpression()) #22, !dbg !1879
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.us, i64 16384) #22, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %5, metadata !1851, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64 %5, metadata !1872, metadata !DIExpression()) #22, !dbg !1881
  call void @llvm.dbg.value(metadata !DIArgList(ptr undef, i64 %add.i.us23), metadata !1873, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #22, !dbg !1881
  %sub.i.us = sub i64 %4, %add.i.us23, !dbg !1889
  call void @llvm.dbg.value(metadata i64 undef, metadata !1125, metadata !DIExpression()) #22, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %sub.i.us, metadata !1130, metadata !DIExpression()) #22, !dbg !1890
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 %sub.i.us) #22, !dbg !1890
  %add.i.us = add nsw i64 %6, %add.i.us23, !dbg !1892
  store i64 %add.i.us, ptr %offset.i.us, align 8, !dbg !1892, !tbaa !1051
  %cmp19.not.not.i.us = icmp ult i64 %sub.i.us, %5, !dbg !1893
  br i1 %cmp19.not.not.i.us, label %if.then20.i.us, label %ReadBlobStream.exit.us, !dbg !1895

if.then20.i.us:                                   ; preds = %if.end7.i.us
  store i32 1, ptr %eof.i.us, align 4, !dbg !1896, !tbaa !1467
  br label %ReadBlobStream.exit.us, !dbg !1897

ReadBlobStream.exit.us:                           ; preds = %if.then20.i.us, %if.end7.i.us
  call void @llvm.dbg.value(metadata i64 undef, metadata !1852, metadata !DIExpression()), !dbg !1857
  %cmp2.us = icmp eq i64 %6, 0, !dbg !1898
  br i1 %cmp2.us, label %if.then.us, label %for.inc.us, !dbg !1887

if.then.us:                                       ; preds = %ReadBlobStream.exit.us, %ReadBlobStream.exit.thread.us
  %add.i.us22 = phi i64 [ %add.i.us, %ReadBlobStream.exit.us ], [ %add.i.us23, %ReadBlobStream.exit.thread.us ]
  call void @llvm.dbg.value(metadata i64 0, metadata !1852, metadata !DIExpression()), !dbg !1857
  %call3.us = tail call ptr @__errno_location() #23, !dbg !1900
  %7 = load i32, ptr %call3.us, align 4, !dbg !1900, !tbaa !1119
  %cmp4.not.us = icmp eq i32 %7, 4, !dbg !1903
  br i1 %cmp4.not.us, label %for.inc.us, label %for.end, !dbg !1904

for.inc.us:                                       ; preds = %if.then.us, %ReadBlobStream.exit.us
  %add.i.us21 = phi i64 [ %add.i.us22, %if.then.us ], [ %add.i.us, %ReadBlobStream.exit.us ]
  %count.1.us = phi i64 [ 0, %if.then.us ], [ %6, %ReadBlobStream.exit.us ], !dbg !1905
  call void @llvm.dbg.value(metadata i64 %count.1.us, metadata !1852, metadata !DIExpression()), !dbg !1857
  %add.us = add nsw i64 %count.1.us, %i.017.us, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %add.us, metadata !1850, metadata !DIExpression()), !dbg !1857
  %cmp.us = icmp slt i64 %add.us, %length, !dbg !1860
  br i1 %cmp.us, label %for.body.us, label %for.end, !dbg !1863, !llvm.loop !1907

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.for.body_crit_edge
  %8 = phi i32 [ %.pre26, %for.inc.for.body_crit_edge ], [ %2, %for.body.lr.ph ], !dbg !1877
  %9 = phi ptr [ %.pre, %for.inc.for.body_crit_edge ], [ %0, %for.body.lr.ph ], !dbg !1864
  %i.017 = phi i64 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.017, metadata !1850, metadata !DIExpression()), !dbg !1857
  %sub = sub i64 %length, %i.017, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1125, metadata !DIExpression()) #22, !dbg !1879
  call void @llvm.dbg.value(metadata i64 16384, metadata !1130, metadata !DIExpression()) #22, !dbg !1879
  %10 = tail call i64 @llvm.umin.i64(i64 %sub, i64 16384) #22, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %10, metadata !1851, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %10, metadata !1872, metadata !DIExpression()) #22, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !1881
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !1881
  %cmp.not.i = icmp eq i32 %8, 7, !dbg !1878
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1909

if.then.i:                                        ; preds = %for.body
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef %10, ptr noundef nonnull %buffer) #22, !dbg !1910
  br label %ReadBlobStream.exit, !dbg !1912

if.end.i:                                         ; preds = %for.body
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 5, !dbg !1913
  %11 = load i64, ptr %offset.i, align 8, !dbg !1913, !tbaa !1051
  %12 = load i64, ptr %9, align 8, !dbg !1914, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %12, %11, !dbg !1882
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !1884

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 4, !dbg !1915
  store i32 1, ptr %eof.i, align 4, !dbg !1885, !tbaa !1467
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !1852, metadata !DIExpression()), !dbg !1857
  br label %if.then, !dbg !1887

if.end7.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata !DIArgList(ptr undef, i64 %11), metadata !1873, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #22, !dbg !1881
  %sub.i = sub i64 %12, %11, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %10, metadata !1125, metadata !DIExpression()) #22, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !1890
  %13 = tail call i64 @llvm.umin.i64(i64 %10, i64 %sub.i) #22, !dbg !1890
  %add.i = add nsw i64 %13, %11, !dbg !1892
  store i64 %add.i, ptr %offset.i, align 8, !dbg !1892, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, %10, !dbg !1893
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !1895

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 4, !dbg !1916
  store i32 1, ptr %eof22.i, align 4, !dbg !1896, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !1897

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %13, %if.then20.i ], [ %13, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !1881
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !1852, metadata !DIExpression()), !dbg !1857
  %cmp2 = icmp slt i64 %count.0, 1, !dbg !1898
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !1887

if.then:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !1852, metadata !DIExpression()), !dbg !1857
  %call3 = tail call ptr @__errno_location() #23, !dbg !1900
  %14 = load i32, ptr %call3, align 4, !dbg !1900, !tbaa !1119
  %cmp4.not = icmp eq i32 %14, 4, !dbg !1903
  br i1 %cmp4.not, label %for.inc, label %for.end, !dbg !1904

for.inc:                                          ; preds = %ReadBlobStream.exit, %if.then
  %count.1 = phi i64 [ 0, %if.then ], [ %count.0, %ReadBlobStream.exit ], !dbg !1905
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !1852, metadata !DIExpression()), !dbg !1857
  %add = add nsw i64 %count.1, %i.017, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %add, metadata !1850, metadata !DIExpression()), !dbg !1857
  %cmp = icmp slt i64 %add, %length, !dbg !1860
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end, !dbg !1863, !llvm.loop !1917

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load ptr, ptr %blob.i, align 8, !dbg !1864, !tbaa !1249
  %type.i.phi.trans.insert = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 11
  %.pre26 = load i32, ptr %type.i.phi.trans.insert, align 8, !dbg !1877, !tbaa !1054
  br label %for.body, !dbg !1863

for.end:                                          ; preds = %for.inc, %if.then, %for.inc.us, %if.then.us, %entry
  %cmp.lcssa = phi i32 [ 1, %entry ], [ 0, %if.then.us ], [ 1, %for.inc.us ], [ 0, %if.then ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0(i64 16384, ptr nonnull %buffer) #22, !dbg !1919
  ret i32 %cmp.lcssa, !dbg !1920
}

; Function Attrs: nounwind uwtable
define dso_local void @DuplicateBlob(ptr noundef %image, ptr nocapture noundef readonly %duplicate) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1925, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata ptr %duplicate, metadata !1926, metadata !DIExpression()), !dbg !1927
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1928
  %0 = load i32, ptr %debug, align 8, !dbg !1928, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !1930
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1931

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1932
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 822, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !1933
  br label %if.end, !dbg !1934

if.end:                                           ; preds = %if.then, %entry
  tail call void @DestroyBlob(ptr noundef nonnull %image), !dbg !1935
  %blob = getelementptr inbounds %struct._Image, ptr %duplicate, i64 0, i32 52, !dbg !1936
  %1 = load ptr, ptr %blob, align 8, !dbg !1936, !tbaa !1249
  call void @llvm.dbg.value(metadata ptr %1, metadata !1937, metadata !DIExpression()) #22, !dbg !1942
  %debug.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 16, !dbg !1944
  %2 = load i32, ptr %debug.i, align 8, !dbg !1944, !tbaa !1027
  %cmp.not.i = icmp eq i32 %2, 0, !dbg !1946
  br i1 %cmp.not.i, label %ReferenceBlob.exit, label %if.then.i, !dbg !1947

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3558, ptr noundef nonnull @.str.2) #22, !dbg !1948
  br label %ReferenceBlob.exit, !dbg !1949

ReferenceBlob.exit:                               ; preds = %if.end, %if.then.i
  %semaphore.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 17, !dbg !1950
  %3 = load ptr, ptr %semaphore.i, align 8, !dbg !1950, !tbaa !1445
  tail call void @LockSemaphoreInfo(ptr noundef %3) #22, !dbg !1951
  %reference_count.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 18, !dbg !1952
  %4 = load i64, ptr %reference_count.i, align 8, !dbg !1953, !tbaa !1441
  %inc.i = add nsw i64 %4, 1, !dbg !1953
  store i64 %inc.i, ptr %reference_count.i, align 8, !dbg !1953, !tbaa !1441
  %5 = load ptr, ptr %semaphore.i, align 8, !dbg !1954, !tbaa !1445
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #22, !dbg !1955
  %blob2 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !1956
  store ptr %1, ptr %blob2, align 8, !dbg !1957, !tbaa !1249
  ret void, !dbg !1958
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ReferenceBlob(ptr noundef returned %blob) local_unnamed_addr #0 !dbg !1938 {
entry:
  call void @llvm.dbg.value(metadata ptr %blob, metadata !1937, metadata !DIExpression()), !dbg !1959
  %debug = getelementptr inbounds %struct._BlobInfo, ptr %blob, i64 0, i32 16, !dbg !1960
  %0 = load i32, ptr %debug, align 8, !dbg !1960, !tbaa !1027
  %cmp.not = icmp eq i32 %0, 0, !dbg !1961
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1962

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3558, ptr noundef nonnull @.str.2) #22, !dbg !1963
  br label %if.end, !dbg !1964

if.end:                                           ; preds = %if.then, %entry
  %semaphore = getelementptr inbounds %struct._BlobInfo, ptr %blob, i64 0, i32 17, !dbg !1965
  %1 = load ptr, ptr %semaphore, align 8, !dbg !1965, !tbaa !1445
  tail call void @LockSemaphoreInfo(ptr noundef %1) #22, !dbg !1966
  %reference_count = getelementptr inbounds %struct._BlobInfo, ptr %blob, i64 0, i32 18, !dbg !1967
  %2 = load i64, ptr %reference_count, align 8, !dbg !1968, !tbaa !1441
  %inc = add nsw i64 %2, 1, !dbg !1968
  store i64 %inc, ptr %reference_count, align 8, !dbg !1968, !tbaa !1441
  %3 = load ptr, ptr %semaphore, align 8, !dbg !1969, !tbaa !1445
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #22, !dbg !1970
  ret ptr %blob, !dbg !1971
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EOFBlob(ptr nocapture noundef readonly %image) local_unnamed_addr #0 !dbg !1972 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1976, metadata !DIExpression()), !dbg !1977
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1978
  %0 = load i32, ptr %debug, align 8, !dbg !1978, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !1980
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1981

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 857, ptr noundef nonnull @.str.2) #22, !dbg !1982
  br label %if.end, !dbg !1983

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !1984
  %1 = load ptr, ptr %blob, align 8, !dbg !1984, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !1985
  %2 = load i32, ptr %type, align 8, !dbg !1985, !tbaa !1054
  switch i32 %2, label %if.end.sw.epilog_crit_edge [
    i32 6, label %sw.bb10
    i32 4, label %sw.bb6
    i32 1, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !1986

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  %eof14.phi.trans.insert = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 4
  %.pre = load i32, ptr %eof14.phi.trans.insert, align 4, !dbg !1987, !tbaa !1467
  br label %sw.epilog, !dbg !1986

sw.bb1:                                           ; preds = %if.end, %if.end
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 12, !dbg !1988
  %3 = load ptr, ptr %file_info, align 8, !dbg !1991, !tbaa !1057
  %call3 = tail call i32 @feof(ptr noundef %3) #22, !dbg !1992
  %cmp4.not = icmp ne i32 %call3, 0, !dbg !1993
  %cond = zext i1 %cmp4.not to i32, !dbg !1992
  %4 = load ptr, ptr %blob, align 8, !dbg !1994, !tbaa !1249
  %eof = getelementptr inbounds %struct._BlobInfo, ptr %4, i64 0, i32 4, !dbg !1995
  store i32 %cond, ptr %eof, align 4, !dbg !1996, !tbaa !1467
  br label %sw.epilog, !dbg !1997

sw.bb6:                                           ; preds = %if.end
  %eof8 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 4, !dbg !1998
  store i32 0, ptr %eof8, align 4, !dbg !2000, !tbaa !1467
  br label %sw.epilog, !dbg !2001

sw.bb10:                                          ; preds = %if.end
  %eof12 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 4, !dbg !2002
  store i32 0, ptr %eof12, align 4, !dbg !2004, !tbaa !1467
  br label %sw.epilog, !dbg !2005

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %sw.bb10, %sw.bb6, %sw.bb1
  %5 = phi i32 [ %.pre, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb10 ], [ 0, %sw.bb6 ], [ %cond, %sw.bb1 ], !dbg !1987
  ret i32 %5, !dbg !2006
}

; Function Attrs: nofree nounwind
declare !dbg !2007 noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @FileToBlob(ptr noundef %filename, i64 noundef %extent, ptr nocapture noundef %length, ptr noundef %exception) local_unnamed_addr #0 !dbg !2008 {
entry:
  %file_stats = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %filename, metadata !2013, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %extent, metadata !2014, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %length, metadata !2015, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2016, metadata !DIExpression()), !dbg !2045
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 957, ptr noundef nonnull @.str.3, ptr noundef %filename) #22, !dbg !2046
  store i64 0, ptr %length, align 8, !dbg !2047, !tbaa !1497
  %0 = load ptr, ptr @stdin, align 8, !dbg !2048, !tbaa !2049
  %call1 = tail call i32 @fileno(ptr noundef %0) #22, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2017, metadata !DIExpression()), !dbg !2045
  %call2 = tail call i32 @LocaleCompare(ptr noundef %filename, ptr noundef nonnull @.str.11) #22, !dbg !2051
  %cmp.not = icmp eq i32 %call2, 0, !dbg !2053
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2054

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1098, metadata !DIExpression()) #22, !dbg !2055
  call void @llvm.dbg.value(metadata i32 0, metadata !1106, metadata !DIExpression()) #22, !dbg !2055
  call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()) #22, !dbg !2055
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0, i32 noundef 0) #22, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !2017, metadata !DIExpression()), !dbg !2045
  br label %if.end, !dbg !2058

if.end:                                           ; preds = %if.then, %entry
  %file.0 = phi i32 [ %call.i, %if.then ], [ %call1, %entry ], !dbg !2045
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !2017, metadata !DIExpression()), !dbg !2045
  %cmp4 = icmp eq i32 %file.0, -1, !dbg !2059
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !2060

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @__errno_location() #23, !dbg !2061
  %1 = load i32, ptr %call6, align 4, !dbg !2061, !tbaa !1119
  %call7 = tail call ptr @GetExceptionMessage(i32 noundef %1) #22, !dbg !2061
  call void @llvm.dbg.value(metadata ptr %call7, metadata !2023, metadata !DIExpression()), !dbg !2062
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 965, i32 noundef 435, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, ptr noundef %filename, ptr noundef %call7) #22, !dbg !2061
  %call9 = tail call ptr @DestroyString(ptr noundef %call7) #22, !dbg !2061
  call void @llvm.dbg.value(metadata ptr %call9, metadata !2023, metadata !DIExpression()), !dbg !2062
  br label %cleanup130, !dbg !2063

if.end10:                                         ; preds = %if.end
  %call11 = tail call i64 @lseek(i32 noundef %file.0, i64 noundef 0, i32 noundef 2) #22, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %call11, metadata !2018, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2045
  %2 = load ptr, ptr @stdin, align 8, !dbg !2065, !tbaa !2049
  %call12 = tail call i32 @fileno(ptr noundef %2) #22, !dbg !2066
  %cmp13 = icmp eq i32 %file.0, %call12, !dbg !2067
  %cmp14 = icmp slt i64 %call11, 0
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp14, !dbg !2068
  br i1 %or.cond, label %if.then17, label %if.end69, !dbg !2068

if.then17:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %file_stats) #22, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %file_stats, metadata !2030, metadata !DIExpression()), !dbg !2070
  %call18 = tail call i64 @lseek(i32 noundef %file.0, i64 noundef 0, i32 noundef 0) #22, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %call18, metadata !2018, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 262142, metadata !2027, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !1742, metadata !DIExpression()) #22, !dbg !2073
  call void @llvm.dbg.value(metadata ptr %file_stats, metadata !1748, metadata !DIExpression()) #22, !dbg !2073
  %call.i222 = call i32 @__fxstat(i32 noundef 1, i32 noundef %file.0, ptr noundef nonnull %file_stats) #22, !dbg !2076
  %cmp20 = icmp eq i32 %call.i222, 0, !dbg !2077
  %st_size = getelementptr inbounds %struct.stat, ptr %file_stats, i64 0, i32 8
  %3 = load i64, ptr %st_size, align 8
  %cmp21 = icmp ne i64 %3, 0
  %or.cond136 = select i1 %cmp20, i1 %cmp21, i1 false, !dbg !2078
  %4 = call i64 @llvm.umin.i64(i64 %3, i64 262142) #22
  %spec.select = select i1 %or.cond136, i64 %4, i64 262142, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2027, metadata !DIExpression()), !dbg !2072
  %call26 = call ptr @AcquireQuantumMemory(i64 noundef %spec.select, i64 noundef 1) #26, !dbg !2079
  call void @llvm.dbg.value(metadata ptr %call26, metadata !2021, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2045
  %cmp27.not232 = icmp eq ptr %call26, null, !dbg !2080
  br i1 %cmp27.not232, label %for.end, label %for.body.lr.ph, !dbg !2083

for.body.lr.ph:                                   ; preds = %if.then17
  %add40 = add nuw nsw i64 %spec.select, 1
  br label %for.body, !dbg !2083

for.cond:                                         ; preds = %if.end39
  call void @llvm.dbg.value(metadata i64 %add43, metadata !2019, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !2020, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2021, metadata !DIExpression()), !dbg !2045
  %cmp27.not = icmp eq ptr %call42, null, !dbg !2080
  br i1 %cmp27.not, label %for.end, label %for.body, !dbg !2083, !llvm.loop !2084

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0235 = phi i64 [ 0, %for.body.lr.ph ], [ %add43, %for.cond ]
  %blob.0233 = phi ptr [ %call26, %for.body.lr.ph ], [ %call42, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %i.0235, metadata !2019, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %blob.0233, metadata !2021, metadata !DIExpression()), !dbg !2045
  %add.ptr = getelementptr inbounds i8, ptr %blob.0233, i64 %i.0235, !dbg !2086
  %call28 = call i64 @read(i32 noundef %file.0, ptr noundef nonnull %add.ptr, i64 noundef %spec.select) #22, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %call28, metadata !2020, metadata !DIExpression()), !dbg !2045
  %cmp29 = icmp slt i64 %call28, 1, !dbg !2089
  br i1 %cmp29, label %if.then30, label %if.end35, !dbg !2091

if.then30:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2045
  %call31 = tail call ptr @__errno_location() #23, !dbg !2092
  %5 = load i32, ptr %call31, align 4, !dbg !2092, !tbaa !1119
  %cmp32.not = icmp eq i32 %5, 4, !dbg !2095
  br i1 %cmp32.not, label %if.end35, label %for.end, !dbg !2096

if.end35:                                         ; preds = %if.then30, %for.body
  %count.1 = phi i64 [ 0, %if.then30 ], [ %call28, %for.body ], !dbg !2097
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !2020, metadata !DIExpression()), !dbg !2045
  %neg = xor i64 %i.0235, -1, !dbg !2098
  %cmp36.not = icmp ult i64 %spec.select, %neg, !dbg !2100
  br i1 %cmp36.not, label %if.end39, label %if.then37, !dbg !2101

if.then37:                                        ; preds = %if.end35
  %call38 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %blob.0233) #22, !dbg !2102
  call void @llvm.dbg.value(metadata ptr %call38, metadata !2021, metadata !DIExpression()), !dbg !2045
  br label %for.end, !dbg !2104

if.end39:                                         ; preds = %if.end35
  %add41 = add i64 %add40, %i.0235, !dbg !2105
  %call42 = call ptr @ResizeQuantumMemory(ptr noundef nonnull %blob.0233, i64 noundef %add41, i64 noundef 1) #27, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2021, metadata !DIExpression()), !dbg !2045
  %add43 = add i64 %count.1, %i.0235, !dbg !2107
  %cmp44.not = icmp ult i64 %add43, %extent, !dbg !2109
  br i1 %cmp44.not, label %for.cond, label %for.end, !dbg !2110, !llvm.loop !2084

for.end:                                          ; preds = %for.cond, %if.then30, %if.end39, %if.then17, %if.then37
  %i.0226 = phi i64 [ %i.0235, %if.then37 ], [ 0, %if.then17 ], [ %add43, %for.cond ], [ %i.0235, %if.then30 ], [ %i.0235, %if.end39 ]
  %blob.1 = phi ptr [ %call38, %if.then37 ], [ null, %if.then17 ], [ null, %for.cond ], [ %blob.0233, %if.then30 ], [ %call42, %if.end39 ], !dbg !2072
  %count.2 = phi i64 [ %count.1, %if.then37 ], [ 0, %if.then17 ], [ %count.1, %for.cond ], [ 0, %if.then30 ], [ %count.1, %if.end39 ], !dbg !2045
  call void @llvm.dbg.value(metadata i64 %count.2, metadata !2020, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %blob.1, metadata !2021, metadata !DIExpression()), !dbg !2045
  %call48 = call i32 @LocaleCompare(ptr noundef %filename, ptr noundef nonnull @.str.11) #22, !dbg !2111
  %cmp49.not = icmp eq i32 %call48, 0, !dbg !2113
  br i1 %cmp49.not, label %if.end52, label %if.then50, !dbg !2114

if.then50:                                        ; preds = %for.end
  %call51 = call i32 @close(i32 noundef %file.0) #22, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %call51, metadata !2017, metadata !DIExpression()), !dbg !2045
  br label %if.end52, !dbg !2116

if.end52:                                         ; preds = %if.then50, %for.end
  %file.1 = phi i32 [ %call51, %if.then50 ], [ %file.0, %for.end ], !dbg !2045
  call void @llvm.dbg.value(metadata i32 %file.1, metadata !2017, metadata !DIExpression()), !dbg !2045
  %cmp53 = icmp eq ptr %blob.1, null, !dbg !2117
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !2119

if.then54:                                        ; preds = %if.end52
  %call55 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1011, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %filename) #22, !dbg !2120
  br label %cleanup, !dbg !2122

if.end56:                                         ; preds = %if.end52
  %cmp57 = icmp eq i32 %file.1, -1, !dbg !2123
  br i1 %cmp57, label %if.then58, label %if.end65, !dbg !2124

if.then58:                                        ; preds = %if.end56
  %call59 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %blob.1) #22, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %call59, metadata !2021, metadata !DIExpression()), !dbg !2045
  %call61 = tail call ptr @__errno_location() #23, !dbg !2126
  %6 = load i32, ptr %call61, align 4, !dbg !2126, !tbaa !1119
  %call62 = call ptr @GetExceptionMessage(i32 noundef %6) #22, !dbg !2126
  call void @llvm.dbg.value(metadata ptr %call62, metadata !2031, metadata !DIExpression()), !dbg !2127
  %call63 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1018, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %filename, ptr noundef %call62) #22, !dbg !2126
  %call64 = call ptr @DestroyString(ptr noundef %call62) #22, !dbg !2126
  call void @llvm.dbg.value(metadata ptr %call64, metadata !2031, metadata !DIExpression()), !dbg !2127
  br label %cleanup, !dbg !2128

if.end65:                                         ; preds = %if.end56
  %add66 = add i64 %count.2, %i.0226, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %add66, metadata !1125, metadata !DIExpression()) #22, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1130, metadata !DIExpression()) #22, !dbg !2130
  %7 = call i64 @llvm.umin.i64(i64 %add66, i64 %extent) #22, !dbg !2130
  store i64 %7, ptr %length, align 8, !dbg !2132, !tbaa !1497
  %arrayidx = getelementptr inbounds i8, ptr %blob.1, i64 %7, !dbg !2133
  store i8 0, ptr %arrayidx, align 1, !dbg !2134, !tbaa !1057
  br label %cleanup, !dbg !2135

cleanup:                                          ; preds = %if.end65, %if.then58, %if.then54
  %retval.0 = phi ptr [ null, %if.then54 ], [ null, %if.then58 ], [ %blob.1, %if.end65 ], !dbg !2072
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %file_stats) #22, !dbg !2136
  br label %cleanup130

if.end69:                                         ; preds = %if.end10
  call void @llvm.dbg.value(metadata i64 %call11, metadata !1125, metadata !DIExpression()) #22, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1130, metadata !DIExpression()) #22, !dbg !2137
  %8 = tail call i64 @llvm.umin.i64(i64 %call11, i64 %extent) #22, !dbg !2137
  store i64 %8, ptr %length, align 8, !dbg !2139, !tbaa !1497
  call void @llvm.dbg.value(metadata ptr null, metadata !2021, metadata !DIExpression()), !dbg !2045
  %add74 = add nuw i64 %8, 4096, !dbg !2140
  %call75 = tail call ptr @AcquireQuantumMemory(i64 noundef %add74, i64 noundef 1) #26, !dbg !2142
  call void @llvm.dbg.value(metadata ptr %call75, metadata !2021, metadata !DIExpression()), !dbg !2045
  %cmp77 = icmp eq ptr %call75, null, !dbg !2143
  br i1 %cmp77, label %if.then78, label %if.end81, !dbg !2145

if.then78:                                        ; preds = %if.end69
  %call79 = tail call i32 @close(i32 noundef %file.0) #22, !dbg !2146
  call void @llvm.dbg.value(metadata i32 %call79, metadata !2017, metadata !DIExpression()), !dbg !2045
  %call80 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1033, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %filename) #22, !dbg !2148
  br label %cleanup130, !dbg !2149

if.end81:                                         ; preds = %if.end69
  call void @llvm.dbg.value(metadata ptr null, metadata !2022, metadata !DIExpression()), !dbg !2045
  %call86 = tail call i64 @lseek(i32 noundef %file.0, i64 noundef 0, i32 noundef 0) #22, !dbg !2150
  call void @llvm.dbg.value(metadata i64 0, metadata !2019, metadata !DIExpression()), !dbg !2045
  %9 = load i64, ptr %length, align 8, !dbg !2151, !tbaa !1497
  %cmp88228.not = icmp eq i64 %9, 0, !dbg !2154
  br i1 %cmp88228.not, label %if.end114, label %for.body89, !dbg !2155

for.body89:                                       ; preds = %if.end81, %for.inc100
  %10 = phi i64 [ %13, %for.inc100 ], [ %9, %if.end81 ]
  %i.1229 = phi i64 [ %add101, %for.inc100 ], [ 0, %if.end81 ]
  call void @llvm.dbg.value(metadata i64 %i.1229, metadata !2019, metadata !DIExpression()), !dbg !2045
  %add.ptr90 = getelementptr inbounds i8, ptr %call75, i64 %i.1229, !dbg !2156
  %sub = sub i64 %10, %i.1229, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1125, metadata !DIExpression()) #22, !dbg !2159
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1130, metadata !DIExpression()) #22, !dbg !2159
  %11 = tail call i64 @llvm.umin.i64(i64 %sub, i64 9223372036854775807) #22, !dbg !2159
  %call92 = tail call i64 @read(i32 noundef %file.0, ptr noundef nonnull %add.ptr90, i64 noundef %11) #22, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %call92, metadata !2020, metadata !DIExpression()), !dbg !2045
  %cmp93 = icmp slt i64 %call92, 1, !dbg !2162
  br i1 %cmp93, label %if.then94, label %for.inc100, !dbg !2164

if.then94:                                        ; preds = %for.body89
  call void @llvm.dbg.value(metadata i64 0, metadata !2020, metadata !DIExpression()), !dbg !2045
  %call95 = tail call ptr @__errno_location() #23, !dbg !2165
  %12 = load i32, ptr %call95, align 4, !dbg !2165, !tbaa !1119
  %cmp96.not = icmp eq i32 %12, 4, !dbg !2168
  br i1 %cmp96.not, label %for.inc100, label %if.then94.for.end102.loopexit_crit_edge, !dbg !2169

if.then94.for.end102.loopexit_crit_edge:          ; preds = %if.then94
  %.pre.pre = load i64, ptr %length, align 8, !dbg !2170, !tbaa !1497
  br label %for.end102, !dbg !2169

for.inc100:                                       ; preds = %for.body89, %if.then94
  %count.3 = phi i64 [ 0, %if.then94 ], [ %call92, %for.body89 ], !dbg !2171
  call void @llvm.dbg.value(metadata i64 %count.3, metadata !2020, metadata !DIExpression()), !dbg !2045
  %add101 = add i64 %count.3, %i.1229, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %add101, metadata !2019, metadata !DIExpression()), !dbg !2045
  %13 = load i64, ptr %length, align 8, !dbg !2151, !tbaa !1497
  %cmp88 = icmp ugt i64 %13, %add101, !dbg !2154
  br i1 %cmp88, label %for.body89, label %for.end102, !dbg !2155, !llvm.loop !2173

for.end102:                                       ; preds = %for.inc100, %if.then94.for.end102.loopexit_crit_edge
  %14 = phi i64 [ %.pre.pre, %if.then94.for.end102.loopexit_crit_edge ], [ %13, %for.inc100 ], !dbg !2170
  %i.1.lcssa = phi i64 [ %i.1229, %if.then94.for.end102.loopexit_crit_edge ], [ %add101, %for.inc100 ], !dbg !2175
  %cmp103 = icmp ult i64 %i.1.lcssa, %14, !dbg !2176
  br i1 %cmp103, label %if.then104, label %if.end114, !dbg !2177

if.then104:                                       ; preds = %for.end102
  %call105 = tail call i32 @close(i32 noundef %file.0) #22, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %call105, metadata !2017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2045
  %call107 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call75) #22, !dbg !2179
  call void @llvm.dbg.value(metadata ptr %call107, metadata !2021, metadata !DIExpression()), !dbg !2045
  %call109 = tail call ptr @__errno_location() #23, !dbg !2180
  %15 = load i32, ptr %call109, align 4, !dbg !2180, !tbaa !1119
  %call110 = tail call ptr @GetExceptionMessage(i32 noundef %15) #22, !dbg !2180
  call void @llvm.dbg.value(metadata ptr %call110, metadata !2035, metadata !DIExpression()), !dbg !2181
  %call111 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1061, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %filename, ptr noundef %call110) #22, !dbg !2180
  %call112 = tail call ptr @DestroyString(ptr noundef %call110) #22, !dbg !2180
  call void @llvm.dbg.value(metadata ptr %call112, metadata !2035, metadata !DIExpression()), !dbg !2181
  br label %cleanup130, !dbg !2182

if.end114:                                        ; preds = %if.end81, %for.end102
  %16 = phi i64 [ %14, %for.end102 ], [ 0, %if.end81 ]
  %arrayidx115 = getelementptr inbounds i8, ptr %call75, i64 %16, !dbg !2183
  store i8 0, ptr %arrayidx115, align 1, !dbg !2184, !tbaa !1057
  %call116 = tail call i32 @LocaleCompare(ptr noundef %filename, ptr noundef nonnull @.str.11) #22, !dbg !2185
  %cmp117.not = icmp eq i32 %call116, 0, !dbg !2187
  br i1 %cmp117.not, label %if.end120, label %if.then118, !dbg !2188

if.then118:                                       ; preds = %if.end114
  %call119 = tail call i32 @close(i32 noundef %file.0) #22, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %call119, metadata !2017, metadata !DIExpression()), !dbg !2045
  br label %if.end120, !dbg !2190

if.end120:                                        ; preds = %if.then118, %if.end114
  %file.2 = phi i32 [ %call119, %if.then118 ], [ %file.0, %if.end114 ], !dbg !2045
  call void @llvm.dbg.value(metadata i32 %file.2, metadata !2017, metadata !DIExpression()), !dbg !2045
  %cmp121 = icmp eq i32 %file.2, -1, !dbg !2191
  br i1 %cmp121, label %if.then122, label %cleanup130, !dbg !2192

if.then122:                                       ; preds = %if.end120
  %call123 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call75) #22, !dbg !2193
  call void @llvm.dbg.value(metadata ptr %call123, metadata !2021, metadata !DIExpression()), !dbg !2045
  %call125 = tail call ptr @__errno_location() #23, !dbg !2194
  %17 = load i32, ptr %call125, align 4, !dbg !2194, !tbaa !1119
  %call126 = tail call ptr @GetExceptionMessage(i32 noundef %17) #22, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %call126, metadata !2041, metadata !DIExpression()), !dbg !2195
  %call127 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1071, i32 noundef 435, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef %filename, ptr noundef %call126) #22, !dbg !2194
  %call128 = tail call ptr @DestroyString(ptr noundef %call126) #22, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %call128, metadata !2041, metadata !DIExpression()), !dbg !2195
  br label %cleanup130, !dbg !2196

cleanup130:                                       ; preds = %if.end120, %if.then122, %if.then104, %if.then78, %cleanup, %if.then5
  %retval.1 = phi ptr [ null, %if.then5 ], [ %retval.0, %cleanup ], [ null, %if.then78 ], [ null, %if.then104 ], [ %call123, %if.then122 ], [ %call75, %if.end120 ], !dbg !2045
  ret ptr %retval.1, !dbg !2197
}

declare !dbg !2198 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2201 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: allocsize(0,1)
declare !dbg !2204 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree
declare !dbg !2207 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: allocsize(1,2)
declare !dbg !2210 ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @MapBlob(i32 %file, i32 %mode, i64 %offset, i64 %length) local_unnamed_addr #11 !dbg !2213 {
entry:
  call void @llvm.dbg.value(metadata i32 undef, metadata !2219, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i32 undef, metadata !2220, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 undef, metadata !2221, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 undef, metadata !2222, metadata !DIExpression()), !dbg !2223
  ret ptr null, !dbg !2224
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FileToImage(ptr noundef %image, ptr noundef %filename) local_unnamed_addr #0 !dbg !2225 {
entry:
  %file_stats = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2229, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata ptr %filename, metadata !2230, metadata !DIExpression()), !dbg !2255
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %file_stats) #22, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %file_stats, metadata !2235, metadata !DIExpression()), !dbg !2257
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1152, ptr noundef nonnull @.str.3, ptr noundef %filename) #22, !dbg !2258
  %0 = load ptr, ptr @stdin, align 8, !dbg !2259, !tbaa !2049
  %call1 = tail call i32 @fileno(ptr noundef %0) #22, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2231, metadata !DIExpression()), !dbg !2255
  %call2 = tail call i32 @LocaleCompare(ptr noundef %filename, ptr noundef nonnull @.str.11) #22, !dbg !2261
  %cmp.not = icmp eq i32 %call2, 0, !dbg !2263
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2264

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1098, metadata !DIExpression()) #22, !dbg !2265
  call void @llvm.dbg.value(metadata i32 0, metadata !1106, metadata !DIExpression()) #22, !dbg !2265
  call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()) #22, !dbg !2265
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0, i32 noundef 0) #22, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !2231, metadata !DIExpression()), !dbg !2255
  br label %if.end, !dbg !2268

if.end:                                           ; preds = %if.then, %entry
  %file.0 = phi i32 [ %call.i, %if.then ], [ %call1, %entry ], !dbg !2255
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !2231, metadata !DIExpression()), !dbg !2255
  %cmp4 = icmp eq i32 %file.0, -1, !dbg !2269
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !2270

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @__errno_location() #23, !dbg !2271
  %1 = load i32, ptr %call6, align 4, !dbg !2271, !tbaa !1119
  %call7 = tail call ptr @GetExceptionMessage(i32 noundef %1) #22, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %call7, metadata !2237, metadata !DIExpression()), !dbg !2272
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2271
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1159, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef %filename, ptr noundef %call7) #22, !dbg !2271
  %call9 = tail call ptr @DestroyString(ptr noundef %call7) #22, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %call9, metadata !2237, metadata !DIExpression()), !dbg !2272
  br label %cleanup, !dbg !2273

if.end10:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 262142, metadata !2233, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !1742, metadata !DIExpression()) #22, !dbg !2274
  call void @llvm.dbg.value(metadata ptr %file_stats, metadata !1748, metadata !DIExpression()) #22, !dbg !2274
  %call.i89 = call i32 @__fxstat(i32 noundef 1, i32 noundef %file.0, ptr noundef nonnull %file_stats) #22, !dbg !2277
  %cmp12 = icmp eq i32 %call.i89, 0, !dbg !2278
  %st_size = getelementptr inbounds %struct.stat, ptr %file_stats, i64 0, i32 8
  %2 = load i64, ptr %st_size, align 8
  %cmp13 = icmp ne i64 %2, 0
  %or.cond = select i1 %cmp12, i1 %cmp13, i1 false, !dbg !2279
  %3 = call i64 @llvm.umin.i64(i64 %2, i64 262142) #22
  %spec.select = select i1 %or.cond, i64 %3, i64 262142, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2233, metadata !DIExpression()), !dbg !2255
  %call18 = call ptr @AcquireQuantumMemory(i64 noundef %spec.select, i64 noundef 1) #26, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2236, metadata !DIExpression()), !dbg !2255
  %cmp19 = icmp eq ptr %call18, null, !dbg !2281
  br i1 %cmp19, label %if.then20, label %for.cond.preheader, !dbg !2282

for.cond.preheader:                               ; preds = %if.end10
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52
  br label %for.cond, !dbg !2283

if.then20:                                        ; preds = %if.end10
  %call21 = call i32 @close(i32 noundef %file.0) #22, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %call21, metadata !2231, metadata !DIExpression()), !dbg !2255
  %call23 = tail call ptr @__errno_location() #23, !dbg !2285
  %4 = load i32, ptr %call23, align 4, !dbg !2285, !tbaa !1119
  %call24 = call ptr @GetExceptionMessage(i32 noundef %4) #22, !dbg !2285
  call void @llvm.dbg.value(metadata ptr %call24, metadata !2241, metadata !DIExpression()), !dbg !2286
  %exception25 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2285
  %call26 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1170, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, ptr noundef %filename, ptr noundef %call24) #22, !dbg !2285
  %call27 = call ptr @DestroyString(ptr noundef %call24) #22, !dbg !2285
  call void @llvm.dbg.value(metadata ptr %call27, metadata !2241, metadata !DIExpression()), !dbg !2286
  br label %cleanup, !dbg !2287

for.cond:                                         ; preds = %for.cond.preheader, %WriteBlobStream.exit
  %call29 = call i64 @read(i32 noundef %file.0, ptr noundef nonnull %call18, i64 noundef %spec.select) #22, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %call29, metadata !2234, metadata !DIExpression()), !dbg !2255
  %cmp30 = icmp slt i64 %call29, 1, !dbg !2289
  br i1 %cmp30, label %if.then31, label %if.end36, !dbg !2291

if.then31:                                        ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 0, metadata !2234, metadata !DIExpression()), !dbg !2255
  %call32 = tail call ptr @__errno_location() #23, !dbg !2292
  %5 = load i32, ptr %call32, align 4, !dbg !2292, !tbaa !1119
  %cmp33.not = icmp eq i32 %5, 4, !dbg !2295
  br i1 %cmp33.not, label %if.end36, label %for.end, !dbg !2296

if.end36:                                         ; preds = %if.then31, %for.cond
  %count.0 = phi i64 [ 0, %if.then31 ], [ %call29, %for.cond ], !dbg !2297
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2234, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2232, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2303, metadata !DIExpression()) #22, !dbg !2307
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2304, metadata !DIExpression()) #22, !dbg !2307
  %6 = load ptr, ptr %blob.i, align 8, !dbg !2309, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 11, !dbg !2311
  %7 = load i32, ptr %type.i, align 8, !dbg !2311, !tbaa !1054
  %cmp.not.i = icmp eq i32 %7, 7, !dbg !2312
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !2313

if.then.i:                                        ; preds = %if.end36
  %call.i90 = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef %count.0, ptr noundef nonnull %call18) #22, !dbg !2314
  br label %WriteBlobStream.exit, !dbg !2315

if.end.i:                                         ; preds = %if.end36
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 5, !dbg !2316
  %8 = load i64, ptr %offset.i, align 8, !dbg !2316, !tbaa !1051
  %add.i = add nsw i64 %8, %count.0, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !2307
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 1, !dbg !2318
  %9 = load i64, ptr %extent3.i, align 8, !dbg !2318, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %9, !dbg !2320
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !2321

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 2, !dbg !2322
  %10 = load i64, ptr %quantum.i, align 8, !dbg !2322, !tbaa !1048
  %add9.i = add i64 %9, %count.0, !dbg !2324
  %add10.i = add i64 %add9.i, %10, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !2307
  %shl.i = shl i64 %10, 1, !dbg !2326
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !2326, !tbaa !1048
  %call13.i = call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !2327
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !2329
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !2330

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !2331, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !2332, !tbaa !1051
  br label %if.end17.i, !dbg !2330

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %11 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %8, %if.end.i ], !dbg !2332
  %12 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %6, %if.end.i ], !dbg !2331
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 15, !dbg !2333
  %13 = load ptr, ptr %data19.i, align 8, !dbg !2333, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %13, i64 %11, !dbg !2334
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !2307
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr nonnull align 1 %call18, i64 %count.0, i1 false) #22, !dbg !2335
  %14 = load ptr, ptr %blob.i, align 8, !dbg !2336, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %14, i64 0, i32 5, !dbg !2337
  %15 = load i64, ptr %offset23.i, align 8, !dbg !2338, !tbaa !1051
  %add24.i = add i64 %15, %count.0, !dbg !2338
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !2338, !tbaa !1051
  %16 = load i64, ptr %14, align 8, !dbg !2339, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %16, !dbg !2341
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !2342

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %14, align 8, !dbg !2343, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !2344

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i90, %if.then.i ], [ 0, %if.then5.i ], [ %count.0, %if.then30.i ], [ %count.0, %if.end17.i ], !dbg !2307
  call void @llvm.dbg.value(metadata i64 %retval.0.i, metadata !2234, metadata !DIExpression()), !dbg !2255
  %cmp38.not = icmp eq i64 %retval.0.i, %count.0, !dbg !2345
  br i1 %cmp38.not, label %for.cond, label %if.then39, !dbg !2346, !llvm.loop !2347

if.then39:                                        ; preds = %WriteBlobStream.exit
  %call41 = tail call ptr @__errno_location() #23, !dbg !2349
  %17 = load i32, ptr %call41, align 4, !dbg !2349, !tbaa !1119
  %call42 = call ptr @GetExceptionMessage(i32 noundef %17) #22, !dbg !2349
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2245, metadata !DIExpression()), !dbg !2350
  %exception43 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2349
  %call44 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1187, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %filename, ptr noundef %call42) #22, !dbg !2349
  %call45 = call ptr @DestroyString(ptr noundef %call42) #22, !dbg !2349
  call void @llvm.dbg.value(metadata ptr %call45, metadata !2245, metadata !DIExpression()), !dbg !2350
  br label %for.end, !dbg !2351

for.end:                                          ; preds = %if.then31, %if.then39
  %call47 = call i32 @close(i32 noundef %file.0) #22, !dbg !2352
  call void @llvm.dbg.value(metadata i32 %call47, metadata !2231, metadata !DIExpression()), !dbg !2255
  %cmp48 = icmp eq i32 %call47, -1, !dbg !2353
  br i1 %cmp48, label %if.then49, label %if.end56, !dbg !2354

if.then49:                                        ; preds = %for.end
  %call51 = tail call ptr @__errno_location() #23, !dbg !2355
  %18 = load i32, ptr %call51, align 4, !dbg !2355, !tbaa !1119
  %call52 = call ptr @GetExceptionMessage(i32 noundef %18) #22, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %call52, metadata !2252, metadata !DIExpression()), !dbg !2356
  %exception53 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2355
  %call54 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception53, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1194, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %filename, ptr noundef %call52) #22, !dbg !2355
  %call55 = call ptr @DestroyString(ptr noundef %call52) #22, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %call55, metadata !2252, metadata !DIExpression()), !dbg !2356
  br label %if.end56, !dbg !2355

if.end56:                                         ; preds = %if.then49, %for.end
  %call57 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #22, !dbg !2357
  call void @llvm.dbg.value(metadata ptr %call57, metadata !2236, metadata !DIExpression()), !dbg !2255
  br label %cleanup, !dbg !2358

cleanup:                                          ; preds = %if.end56, %if.then20, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then20 ], [ 1, %if.end56 ], !dbg !2255
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %file_stats) #22, !dbg !2359
  ret i32 %retval.0, !dbg !2359
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetBlobError(ptr noundef %image) local_unnamed_addr #0 !dbg !2360 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2364, metadata !DIExpression()), !dbg !2365
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2366
  %0 = load i32, ptr %debug, align 8, !dbg !2366, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !2368
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2369

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2370
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1227, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !2371
  br label %if.end, !dbg !2372

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2373
  %1 = load ptr, ptr %blob, align 8, !dbg !2373, !tbaa !1249
  %status = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 9, !dbg !2374
  %2 = load i32, ptr %status, align 8, !dbg !2374, !tbaa !1481
  ret i32 %2, !dbg !2375
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetBlobFileHandle(ptr nocapture noundef readonly %image) local_unnamed_addr #16 !dbg !2376 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2380, metadata !DIExpression()), !dbg !2381
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2382
  %0 = load ptr, ptr %blob, align 8, !dbg !2382, !tbaa !1249
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12, !dbg !2383
  %1 = load ptr, ptr %file_info, align 8, !dbg !2384, !tbaa !1057
  ret ptr %1, !dbg !2385
}

declare !dbg !2386 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2389 i64 @time(ptr noundef) local_unnamed_addr #13

declare !dbg !2393 ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @GetBlobProperties(ptr noundef %image) local_unnamed_addr #0 !dbg !2396 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2402, metadata !DIExpression()), !dbg !2403
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2404
  %0 = load i32, ptr %debug, align 8, !dbg !2404, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !2406
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2407

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2408
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1323, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !2409
  br label %if.end, !dbg !2410

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2411
  %1 = load ptr, ptr %blob, align 8, !dbg !2411, !tbaa !1249
  %properties = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 13, !dbg !2412
  ret ptr %properties, !dbg !2413
}

declare !dbg !2414 i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetBlobStreamData(ptr nocapture noundef readonly %image) local_unnamed_addr #16 !dbg !2417 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2421, metadata !DIExpression()), !dbg !2422
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2423
  %0 = load ptr, ptr %blob, align 8, !dbg !2423, !tbaa !1249
  %data = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !2424
  %1 = load ptr, ptr %data, align 8, !dbg !2424, !tbaa !1060
  ret ptr %1, !dbg !2425
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetBlobStreamHandler(ptr noundef %image) local_unnamed_addr #0 !dbg !2426 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2430, metadata !DIExpression()), !dbg !2431
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2432
  %0 = load i32, ptr %debug, align 8, !dbg !2432, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !2434
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2435

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2436
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1462, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !2437
  br label %if.end, !dbg !2438

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2439
  %1 = load ptr, ptr %blob, align 8, !dbg !2439, !tbaa !1249
  %stream = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 14, !dbg !2440
  %2 = load ptr, ptr %stream, align 8, !dbg !2440, !tbaa !1499
  ret ptr %2, !dbg !2441
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ImageToBlob(ptr noundef %image_info, ptr noundef %image, ptr nocapture noundef %length, ptr noundef %exception) local_unnamed_addr #0 !dbg !2442 {
entry:
  %unique = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2446, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %image, metadata !2447, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %length, metadata !2448, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2449, metadata !DIExpression()), !dbg !2462
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !2463
  %0 = load i32, ptr %debug, align 8, !dbg !2463, !tbaa !1196
  %cmp.not = icmp eq i32 %0, 0, !dbg !2465
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2466

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2467
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1517, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !2468
  br label %if.end, !dbg !2469

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %length, align 8, !dbg !2470, !tbaa !1497
  call void @llvm.dbg.value(metadata ptr null, metadata !2453, metadata !DIExpression()), !dbg !2462
  %call1 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #22, !dbg !2471
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2451, metadata !DIExpression()), !dbg !2462
  %adjoin = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 3, !dbg !2472
  store i32 0, ptr %adjoin, align 4, !dbg !2473, !tbaa !2474
  %call2 = tail call i32 @SetImageInfo(ptr noundef %call1, i32 noundef 1, ptr noundef %exception) #22, !dbg !2475
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 48, !dbg !2476
  %1 = load i8, ptr %magick, align 8, !dbg !2478, !tbaa !1057
  %cmp4.not = icmp eq i8 %1, 0, !dbg !2479
  br i1 %cmp4.not, label %if.end12, label %if.then6, !dbg !2480

if.then6:                                         ; preds = %if.end
  %magick7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 55, !dbg !2481
  %call11 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick7, ptr noundef nonnull %magick, i64 noundef 4096) #22, !dbg !2482
  br label %if.end12, !dbg !2483

if.end12:                                         ; preds = %if.then6, %if.end
  %magick13 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 55, !dbg !2484
  %call15 = tail call ptr @GetMagickInfo(ptr noundef nonnull %magick13, ptr noundef %exception) #22, !dbg !2485
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2450, metadata !DIExpression()), !dbg !2462
  %cmp16 = icmp eq ptr %call15, null, !dbg !2486
  br i1 %cmp16, label %if.then18, label %if.end23, !dbg !2488

if.then18:                                        ; preds = %if.end12
  %call21 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1532, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %magick13) #22, !dbg !2489
  %call22 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call1) #22, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %call22, metadata !2451, metadata !DIExpression()), !dbg !2462
  br label %cleanup, !dbg !2492

if.end23:                                         ; preds = %if.end12
  %call28 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick13, i64 noundef 4096) #22, !dbg !2493
  %call29 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %call15) #22, !dbg !2494
  %cmp30.not = icmp eq i32 %call29, 0, !dbg !2495
  br i1 %cmp30.not, label %if.else61, label %if.then32, !dbg !2496

if.then32:                                        ; preds = %if.end23
  %length33 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 47, !dbg !2497
  store i64 0, ptr %length33, align 8, !dbg !2499, !tbaa !1219
  %call34 = tail call ptr @AcquireQuantumMemory(i64 noundef 65541, i64 noundef 1) #26, !dbg !2500
  %blob35 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 46, !dbg !2501
  store ptr %call34, ptr %blob35, align 8, !dbg !2502, !tbaa !1216
  %cmp37 = icmp eq ptr %call34, null, !dbg !2503
  br i1 %cmp37, label %if.then39, label %if.else, !dbg !2505

if.then39:                                        ; preds = %if.then32
  %filename40 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2506
  %call42 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1548, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename40) #22, !dbg !2507
  br label %if.end102, !dbg !2508

if.else:                                          ; preds = %if.then32
  %call43 = tail call i32 @CloseBlob(ptr noundef %image), !dbg !2509
  %blob44 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2511
  %2 = load ptr, ptr %blob44, align 8, !dbg !2511, !tbaa !1249
  %exempt = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 7, !dbg !2512
  store i32 1, ptr %exempt, align 8, !dbg !2513, !tbaa !1286
  %filename45 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2514
  store i8 0, ptr %filename45, align 8, !dbg !2515, !tbaa !1057
  %call47 = tail call i32 @WriteImage(ptr noundef nonnull %call1, ptr noundef %image) #22, !dbg !2516
  call void @llvm.dbg.value(metadata i32 %call47, metadata !2452, metadata !DIExpression()), !dbg !2462
  %exception48 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2517
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception48) #22, !dbg !2518
  %3 = load ptr, ptr %blob44, align 8, !dbg !2519, !tbaa !1249
  %4 = load i64, ptr %3, align 8, !dbg !2520, !tbaa !1042
  store i64 %4, ptr %length, align 8, !dbg !2521, !tbaa !1497
  call void @llvm.dbg.value(metadata ptr %3, metadata !1259, metadata !DIExpression()) #22, !dbg !2522
  %debug.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 16, !dbg !2524
  %5 = load i32, ptr %debug.i, align 8, !dbg !2524, !tbaa !1027
  %cmp.not.i = icmp eq i32 %5, 0, !dbg !2525
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !2526

if.then.i:                                        ; preds = %if.else
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22, !dbg !2527
  br label %if.end.i, !dbg !2528

if.end.i:                                         ; preds = %if.then.i, %if.else
  %mapped.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 3, !dbg !2529
  %6 = load i32, ptr %mapped.i, align 8, !dbg !2529, !tbaa !1063
  %cmp1.not.i = icmp eq i32 %6, 0, !dbg !2530
  br i1 %cmp1.not.i, label %DetachBlob.exit, label %if.then2.i, !dbg !2531

if.then2.i:                                       ; preds = %if.end.i
  %data3.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 15, !dbg !2532
  store ptr null, ptr %data3.i, align 8, !dbg !2533, !tbaa !1060
  %7 = load i64, ptr %3, align 8, !dbg !2534, !tbaa !1042
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %7) #22, !dbg !2535
  br label %DetachBlob.exit, !dbg !2536

DetachBlob.exit:                                  ; preds = %if.end.i, %if.then2.i
  store i64 0, ptr %3, align 8, !dbg !2537, !tbaa !1042
  %exempt.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 7, !dbg !2538
  store i32 0, ptr %exempt.i, align 8, !dbg !2539, !tbaa !1286
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 11, !dbg !2540
  store i32 0, ptr %type.i, align 8, !dbg !2541, !tbaa !1054
  %file_info.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 12, !dbg !2542
  store ptr null, ptr %file_info.i, align 8, !dbg !2543, !tbaa !1057
  %data10.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 15, !dbg !2544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %mapped.i, i8 0, i64 16, i1 false) #22, !dbg !2545
  %8 = load ptr, ptr %data10.i, align 8, !dbg !2544, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %8, metadata !1264, metadata !DIExpression()) #22, !dbg !2522
  %stream.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 14, !dbg !2546
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %stream.i, i8 0, i64 16, i1 false) #22, !dbg !2547
  call void @llvm.dbg.value(metadata ptr %8, metadata !2453, metadata !DIExpression()), !dbg !2462
  %cmp53 = icmp eq i32 %call47, 0, !dbg !2548
  br i1 %cmp53, label %if.then55, label %if.else57, !dbg !2550

if.then55:                                        ; preds = %DetachBlob.exit
  %call56 = tail call ptr @RelinquishMagickMemory(ptr noundef %8) #22, !dbg !2551
  call void @llvm.dbg.value(metadata ptr %call56, metadata !2453, metadata !DIExpression()), !dbg !2462
  br label %if.end102, !dbg !2552

if.else57:                                        ; preds = %DetachBlob.exit
  %9 = load i64, ptr %length, align 8, !dbg !2553, !tbaa !1497
  %add = add i64 %9, 1, !dbg !2554
  %call58 = tail call ptr @ResizeQuantumMemory(ptr noundef %8, i64 noundef %add, i64 noundef 1) #27, !dbg !2555
  call void @llvm.dbg.value(metadata ptr %call58, metadata !2453, metadata !DIExpression()), !dbg !2462
  br label %if.end102

if.else61:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %unique) #22, !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %unique, metadata !2454, metadata !DIExpression()), !dbg !2557
  %call63 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %unique) #22, !dbg !2558
  call void @llvm.dbg.value(metadata i32 %call63, metadata !2457, metadata !DIExpression()), !dbg !2559
  %cmp64 = icmp eq i32 %call63, -1, !dbg !2560
  br i1 %cmp64, label %if.then66, label %if.else73, !dbg !2561

if.then66:                                        ; preds = %if.else61
  %call67 = tail call ptr @__errno_location() #23, !dbg !2562
  %10 = load i32, ptr %call67, align 4, !dbg !2562, !tbaa !1119
  %call68 = call ptr @GetExceptionMessage(i32 noundef %10) #22, !dbg !2562
  call void @llvm.dbg.value(metadata ptr %call68, metadata !2458, metadata !DIExpression()), !dbg !2563
  %filename69 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2562
  %call71 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1581, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename69, ptr noundef %call68) #22, !dbg !2562
  %call72 = call ptr @DestroyString(ptr noundef %call68) #22, !dbg !2562
  call void @llvm.dbg.value(metadata ptr %call72, metadata !2458, metadata !DIExpression()), !dbg !2563
  br label %if.end101, !dbg !2564

if.else73:                                        ; preds = %if.else61
  %call74 = call ptr @fdopen(i32 noundef %call63, ptr noundef nonnull @.str.15) #22, !dbg !2565
  %file75 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 45, !dbg !2567
  store ptr %call74, ptr %file75, align 8, !dbg !2568, !tbaa !2569
  %cmp77.not = icmp eq ptr %call74, null, !dbg !2570
  br i1 %cmp77.not, label %if.end98, label %if.then79, !dbg !2572

if.then79:                                        ; preds = %if.else73
  %filename80 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2573
  %call85 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename80, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %magick13, ptr noundef nonnull %unique) #22, !dbg !2575
  %call86 = call i32 @WriteImage(ptr noundef nonnull %call1, ptr noundef %image) #22, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %call86, metadata !2452, metadata !DIExpression()), !dbg !2462
  %call87 = call i32 @CloseBlob(ptr noundef %image), !dbg !2577
  %11 = load ptr, ptr %file75, align 8, !dbg !2578, !tbaa !2569
  %call89 = call i32 @fclose(ptr noundef %11), !dbg !2579
  %cmp90 = icmp eq i32 %call86, 0, !dbg !2580
  br i1 %cmp90, label %if.then92, label %if.else94, !dbg !2582

if.then92:                                        ; preds = %if.then79
  %exception93 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2583
  call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception93) #22, !dbg !2584
  br label %if.end98, !dbg !2584

if.else94:                                        ; preds = %if.then79
  %call96 = call ptr @FileToBlob(ptr noundef nonnull %unique, i64 noundef -1, ptr noundef nonnull %length, ptr noundef %exception), !dbg !2585
  call void @llvm.dbg.value(metadata ptr %call96, metadata !2453, metadata !DIExpression()), !dbg !2462
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.else94, %if.else73
  %blob.0 = phi ptr [ null, %if.then92 ], [ %call96, %if.else94 ], [ null, %if.else73 ], !dbg !2462
  call void @llvm.dbg.value(metadata ptr %blob.0, metadata !2453, metadata !DIExpression()), !dbg !2462
  %call100 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %unique) #22, !dbg !2586
  br label %if.end101

if.end101:                                        ; preds = %if.end98, %if.then66
  %blob.1 = phi ptr [ null, %if.then66 ], [ %blob.0, %if.end98 ], !dbg !2587
  call void @llvm.dbg.value(metadata ptr %blob.1, metadata !2453, metadata !DIExpression()), !dbg !2462
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %unique) #22, !dbg !2588
  br label %if.end102

if.end102:                                        ; preds = %if.then39, %if.else57, %if.then55, %if.end101
  %blob.2 = phi ptr [ null, %if.then39 ], [ %call56, %if.then55 ], [ %call58, %if.else57 ], [ %blob.1, %if.end101 ], !dbg !2462
  call void @llvm.dbg.value(metadata ptr %blob.2, metadata !2453, metadata !DIExpression()), !dbg !2462
  %call103 = call ptr @DestroyImageInfo(ptr noundef nonnull %call1) #22, !dbg !2589
  call void @llvm.dbg.value(metadata ptr %call103, metadata !2451, metadata !DIExpression()), !dbg !2462
  br label %cleanup, !dbg !2590

cleanup:                                          ; preds = %if.end102, %if.then18
  %retval.0 = phi ptr [ null, %if.then18 ], [ %blob.2, %if.end102 ], !dbg !2462
  ret ptr %retval.0, !dbg !2591
}

declare !dbg !2592 i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2593 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !2598 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @ImageToFile(ptr nocapture noundef readonly %image, ptr noundef %filename, ptr noundef %exception) local_unnamed_addr #0 !dbg !2601 {
entry:
  %file_stats = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2605, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %filename, metadata !2606, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2607, metadata !DIExpression()), !dbg !2624
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %file_stats) #22, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %file_stats, metadata !2614, metadata !DIExpression()), !dbg !2626
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2627
  %0 = load i32, ptr %debug, align 8, !dbg !2627, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !2629
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2630

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1663, ptr noundef nonnull @.str.3, ptr noundef %filename) #22, !dbg !2631
  br label %if.end, !dbg !2632

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr %filename, align 1, !dbg !2633, !tbaa !1057
  %cmp1 = icmp eq i8 %1, 0, !dbg !2635
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !2636

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %filename) #22, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %call4, metadata !2608, metadata !DIExpression()), !dbg !2624
  br label %if.end13, !dbg !2638

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @LocaleCompare(ptr noundef nonnull %filename, ptr noundef nonnull @.str.11) #22, !dbg !2639
  %cmp6 = icmp eq i32 %call5, 0, !dbg !2641
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !2642

if.then8:                                         ; preds = %if.else
  %2 = load ptr, ptr @stdout, align 8, !dbg !2643, !tbaa !2049
  %call9 = tail call i32 @fileno(ptr noundef %2) #22, !dbg !2644
  call void @llvm.dbg.value(metadata i32 %call9, metadata !2608, metadata !DIExpression()), !dbg !2624
  br label %if.end13, !dbg !2645

if.else10:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1098, metadata !DIExpression()) #22, !dbg !2646
  call void @llvm.dbg.value(metadata i32 194, metadata !1106, metadata !DIExpression()) #22, !dbg !2646
  call void @llvm.dbg.value(metadata i32 384, metadata !1107, metadata !DIExpression()) #22, !dbg !2646
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %filename, i32 noundef 194, i32 noundef 384) #22, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !2608, metadata !DIExpression()), !dbg !2624
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.else10, %if.then3
  %file.0 = phi i32 [ %call4, %if.then3 ], [ %call9, %if.then8 ], [ %call.i, %if.else10 ], !dbg !2649
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !2608, metadata !DIExpression()), !dbg !2624
  %cmp14 = icmp eq i32 %file.0, -1, !dbg !2650
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !2651

if.then16:                                        ; preds = %if.end13
  %call17 = tail call ptr @__errno_location() #23, !dbg !2652
  %3 = load i32, ptr %call17, align 4, !dbg !2652, !tbaa !1119
  %call18 = tail call ptr @GetExceptionMessage(i32 noundef %3) #22, !dbg !2652
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2616, metadata !DIExpression()), !dbg !2653
  %call19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename, ptr noundef %call18) #22, !dbg !2652
  %call20 = tail call ptr @DestroyString(ptr noundef %call18) #22, !dbg !2652
  call void @llvm.dbg.value(metadata ptr %call20, metadata !2616, metadata !DIExpression()), !dbg !2653
  br label %cleanup, !dbg !2654

if.end21:                                         ; preds = %if.end13
  call void @llvm.dbg.value(metadata i64 262142, metadata !2612, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 %file.0, metadata !1742, metadata !DIExpression()) #22, !dbg !2655
  call void @llvm.dbg.value(metadata ptr %file_stats, metadata !1748, metadata !DIExpression()) #22, !dbg !2655
  %call.i129 = call i32 @__fxstat(i32 noundef 1, i32 noundef %file.0, ptr noundef nonnull %file_stats) #22, !dbg !2658
  %cmp23 = icmp eq i32 %call.i129, 0, !dbg !2659
  %st_size = getelementptr inbounds %struct.stat, ptr %file_stats, i64 0, i32 8
  %4 = load i64, ptr %st_size, align 8
  %cmp25 = icmp ne i64 %4, 0
  %or.cond = select i1 %cmp23, i1 %cmp25, i1 false, !dbg !2660
  %5 = call i64 @llvm.umin.i64(i64 %4, i64 262142) #22
  %spec.select = select i1 %or.cond, i64 %5, i64 262142, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2612, metadata !DIExpression()), !dbg !2624
  %call31 = call ptr @AcquireQuantumMemory(i64 noundef %spec.select, i64 noundef 1) #26, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %call31, metadata !2615, metadata !DIExpression()), !dbg !2624
  %cmp32 = icmp eq ptr %call31, null, !dbg !2662
  br i1 %cmp32, label %if.then34, label %if.end37, !dbg !2664

if.then34:                                        ; preds = %if.end21
  %call35 = call i32 @close(i32 noundef %file.0) #22, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %call35, metadata !2608, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2624
  %call36 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1685, i32 noundef 400, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename) #22, !dbg !2667
  br label %cleanup, !dbg !2668

if.end37:                                         ; preds = %if.end21
  call void @llvm.dbg.value(metadata i64 0, metadata !2611, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1872, metadata !DIExpression()) #22, !dbg !2669
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1873, metadata !DIExpression()) #22, !dbg !2669
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !2669
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !2671
  %6 = load ptr, ptr %blob.i, align 8, !dbg !2671, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 11, !dbg !2672
  %7 = load i32, ptr %type.i, align 8, !dbg !2672, !tbaa !1054
  %cmp.not.i = icmp eq i32 %7, 7, !dbg !2673
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !2674

if.then.i:                                        ; preds = %if.end37
  %call.i130 = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef %spec.select, ptr noundef nonnull %call31) #22, !dbg !2675
  br label %ReadBlobStream.exit, !dbg !2676

if.end.i:                                         ; preds = %if.end37
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 5, !dbg !2677
  %8 = load i64, ptr %offset.i, align 8, !dbg !2677, !tbaa !1051
  %9 = load i64, ptr %6, align 8, !dbg !2678, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %9, %8, !dbg !2679
  br i1 %cmp4.not.i, label %if.end7.i, label %for.end62.sink.split, !dbg !2680

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 15, !dbg !2681
  %10 = load ptr, ptr %data9.i, align 8, !dbg !2681, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %10, i64 %8, !dbg !2682
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !2669
  %sub.i = sub i64 %9, %8, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1125, metadata !DIExpression()) #22, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !2684
  %11 = call i64 @llvm.umin.i64(i64 %spec.select, i64 %sub.i) #22, !dbg !2684
  %add.i = add nsw i64 %11, %8, !dbg !2686
  store i64 %add.i, ptr %offset.i, align 8, !dbg !2686, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, %spec.select, !dbg !2687
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !2688

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 4, !dbg !2689
  store i32 1, ptr %eof22.i, align 4, !dbg !2690, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !2691

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %11, %if.then20.i ], [ %11, %if.end7.i ], [ %call.i130, %if.then.i ], !dbg !2669
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %call31, %if.then.i ], !dbg !2669
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !2609, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 0, metadata !2610, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 0, metadata !2611, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2613, metadata !DIExpression()), !dbg !2624
  %cmp39160 = icmp sgt i64 %count.0, 0, !dbg !2692
  br i1 %cmp39160, label %for.cond41.preheader, label %for.end62, !dbg !2695

for.cond41.preheader:                             ; preds = %ReadBlobStream.exit, %ReadBlobStream.exit150
  %p.0162 = phi ptr [ %retval.0.i149, %ReadBlobStream.exit150 ], [ %retval.0.i, %ReadBlobStream.exit ]
  %count.1161 = phi i64 [ %count.3, %ReadBlobStream.exit150 ], [ %count.0, %ReadBlobStream.exit ]
  call void @llvm.dbg.value(metadata ptr %p.0162, metadata !2609, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %count.1161, metadata !2613, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 0, metadata !2610, metadata !DIExpression()), !dbg !2624
  br label %for.body44, !dbg !2696

for.body44:                                       ; preds = %for.cond41.preheader, %for.inc
  %i.1158 = phi i64 [ 0, %for.cond41.preheader ], [ %add, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.1158, metadata !2610, metadata !DIExpression()), !dbg !2624
  %add.ptr = getelementptr inbounds i8, ptr %p.0162, i64 %i.1158, !dbg !2699
  %sub45 = sub i64 %count.1161, %i.1158, !dbg !2702
  %call46 = call i64 @write(i32 noundef %file.0, ptr noundef %add.ptr, i64 noundef %sub45) #22, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %call46, metadata !2613, metadata !DIExpression()), !dbg !2624
  %cmp47 = icmp slt i64 %call46, 1, !dbg !2704
  br i1 %cmp47, label %if.then49, label %for.inc, !dbg !2706

if.then49:                                        ; preds = %for.body44
  call void @llvm.dbg.value(metadata i64 0, metadata !2613, metadata !DIExpression()), !dbg !2624
  %call50 = tail call ptr @__errno_location() #23, !dbg !2707
  %12 = load i32, ptr %call50, align 4, !dbg !2707, !tbaa !1119
  %cmp51.not = icmp eq i32 %12, 4, !dbg !2710
  br i1 %cmp51.not, label %for.inc, label %for.end62, !dbg !2711

for.inc:                                          ; preds = %for.body44, %if.then49
  %count.2 = phi i64 [ 0, %if.then49 ], [ %call46, %for.body44 ], !dbg !2712
  call void @llvm.dbg.value(metadata i64 %count.2, metadata !2613, metadata !DIExpression()), !dbg !2624
  %add = add i64 %count.2, %i.1158, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %add, metadata !2610, metadata !DIExpression()), !dbg !2624
  %cmp42 = icmp ugt i64 %count.1161, %add, !dbg !2714
  br i1 %cmp42, label %for.body44, label %for.cond41.for.inc60_crit_edge, !dbg !2696, !llvm.loop !2715

for.cond41.for.inc60_crit_edge:                   ; preds = %for.inc
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1872, metadata !DIExpression()) #22, !dbg !2717
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1873, metadata !DIExpression()) #22, !dbg !2717
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !2717
  %13 = load ptr, ptr %blob.i, align 8, !dbg !2719, !tbaa !1249
  %type.i132 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 11, !dbg !2720
  %14 = load i32, ptr %type.i132, align 8, !dbg !2720, !tbaa !1054
  %cmp.not.i133 = icmp eq i32 %14, 7, !dbg !2721
  br i1 %cmp.not.i133, label %if.end.i138, label %if.then.i135, !dbg !2722

if.then.i135:                                     ; preds = %for.cond41.for.inc60_crit_edge
  %call.i134 = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef %spec.select, ptr noundef nonnull %call31) #22, !dbg !2723
  br label %ReadBlobStream.exit150, !dbg !2724

if.end.i138:                                      ; preds = %for.cond41.for.inc60_crit_edge
  %offset.i136 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 5, !dbg !2725
  %15 = load i64, ptr %offset.i136, align 8, !dbg !2725, !tbaa !1051
  %16 = load i64, ptr %13, align 8, !dbg !2726, !tbaa !1042
  %cmp4.not.i137 = icmp sgt i64 %16, %15, !dbg !2727
  br i1 %cmp4.not.i137, label %if.end7.i146, label %for.end62.sink.split, !dbg !2728

if.end7.i146:                                     ; preds = %if.end.i138
  %data9.i141 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 15, !dbg !2729
  %17 = load ptr, ptr %data9.i141, align 8, !dbg !2729, !tbaa !1060
  %add.ptr.i142 = getelementptr inbounds i8, ptr %17, i64 %15, !dbg !2730
  call void @llvm.dbg.value(metadata ptr %add.ptr.i142, metadata !1873, metadata !DIExpression()) #22, !dbg !2717
  %sub.i143 = sub i64 %16, %15, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1125, metadata !DIExpression()) #22, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %sub.i143, metadata !1130, metadata !DIExpression()) #22, !dbg !2732
  %18 = call i64 @llvm.umin.i64(i64 %spec.select, i64 %sub.i143) #22, !dbg !2732
  %add.i144 = add nsw i64 %18, %15, !dbg !2734
  store i64 %add.i144, ptr %offset.i136, align 8, !dbg !2734, !tbaa !1051
  %cmp19.not.not.i145 = icmp ult i64 %sub.i143, %spec.select, !dbg !2735
  br i1 %cmp19.not.not.i145, label %if.then20.i148, label %ReadBlobStream.exit150, !dbg !2736

if.then20.i148:                                   ; preds = %if.end7.i146
  %eof22.i147 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 4, !dbg !2737
  store i32 1, ptr %eof22.i147, align 4, !dbg !2738, !tbaa !1467
  br label %ReadBlobStream.exit150, !dbg !2739

ReadBlobStream.exit150:                           ; preds = %if.then.i135, %if.end7.i146, %if.then20.i148
  %count.3 = phi i64 [ %18, %if.then20.i148 ], [ %18, %if.end7.i146 ], [ %call.i134, %if.then.i135 ], !dbg !2717
  %retval.0.i149 = phi ptr [ %add.ptr.i142, %if.then20.i148 ], [ %add.ptr.i142, %if.end7.i146 ], [ %call31, %if.then.i135 ], !dbg !2717
  call void @llvm.dbg.value(metadata i64 %count.1161, metadata !2611, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %add, metadata !2610, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %retval.0.i149, metadata !2609, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %count.3, metadata !2613, metadata !DIExpression()), !dbg !2624
  %cmp39 = icmp sgt i64 %count.3, 0, !dbg !2692
  br i1 %cmp39, label %for.cond41.preheader, label %for.end62, !dbg !2695, !llvm.loop !2740

for.end62.sink.split:                             ; preds = %if.end.i138, %if.end.i
  %.lcssa.sink = phi ptr [ %6, %if.end.i ], [ %13, %if.end.i138 ]
  %i.2.ph = phi i64 [ 0, %if.end.i ], [ %add, %if.end.i138 ]
  %length.1.ph = phi i64 [ 0, %if.end.i ], [ %count.1161, %if.end.i138 ]
  %eof.i139 = getelementptr inbounds %struct._BlobInfo, ptr %.lcssa.sink, i64 0, i32 4, !dbg !2624
  store i32 1, ptr %eof.i139, align 4, !dbg !2624, !tbaa !1467
  br label %for.end62, !dbg !2742

for.end62:                                        ; preds = %ReadBlobStream.exit150, %if.then49, %for.end62.sink.split, %ReadBlobStream.exit
  %i.2 = phi i64 [ 0, %ReadBlobStream.exit ], [ %i.2.ph, %for.end62.sink.split ], [ %i.1158, %if.then49 ], [ %add, %ReadBlobStream.exit150 ], !dbg !2744
  %length.1 = phi i64 [ 0, %ReadBlobStream.exit ], [ %length.1.ph, %for.end62.sink.split ], [ %count.1161, %if.then49 ], [ %count.1161, %ReadBlobStream.exit150 ], !dbg !2624
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !2611, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !2610, metadata !DIExpression()), !dbg !2624
  %call63 = call i32 @LocaleCompare(ptr noundef nonnull %filename, ptr noundef nonnull @.str.11) #22, !dbg !2742
  %cmp64.not = icmp eq i32 %call63, 0, !dbg !2745
  br i1 %cmp64.not, label %if.end68, label %if.then66, !dbg !2746

if.then66:                                        ; preds = %for.end62
  %call67 = call i32 @close(i32 noundef %file.0) #22, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %call67, metadata !2608, metadata !DIExpression()), !dbg !2624
  br label %if.end68, !dbg !2748

if.end68:                                         ; preds = %if.then66, %for.end62
  %file.1 = phi i32 [ %call67, %if.then66 ], [ %file.0, %for.end62 ], !dbg !2624
  call void @llvm.dbg.value(metadata i32 %file.1, metadata !2608, metadata !DIExpression()), !dbg !2624
  %call69 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call31) #22, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %call69, metadata !2615, metadata !DIExpression()), !dbg !2624
  %cmp70 = icmp eq i32 %file.1, -1, !dbg !2750
  %cmp72 = icmp ult i64 %i.2, %length.1
  %or.cond128 = select i1 %cmp70, i1 true, i1 %cmp72, !dbg !2751
  br i1 %or.cond128, label %if.then74, label %cleanup, !dbg !2751

if.then74:                                        ; preds = %if.end68
  br i1 %cmp70, label %if.end79, label %if.then77, !dbg !2752

if.then77:                                        ; preds = %if.then74
  %call78 = call i32 @close(i32 noundef %file.1) #22, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %call78, metadata !2608, metadata !DIExpression()), !dbg !2624
  br label %if.end79, !dbg !2755

if.end79:                                         ; preds = %if.then77, %if.then74
  %call81 = tail call ptr @__errno_location() #23, !dbg !2756
  %19 = load i32, ptr %call81, align 4, !dbg !2756, !tbaa !1119
  %call82 = call ptr @GetExceptionMessage(i32 noundef %19) #22, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %call82, metadata !2620, metadata !DIExpression()), !dbg !2757
  %call83 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1714, i32 noundef 435, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename, ptr noundef %call82) #22, !dbg !2756
  %call84 = call ptr @DestroyString(ptr noundef %call82) #22, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %call84, metadata !2620, metadata !DIExpression()), !dbg !2757
  br label %cleanup, !dbg !2758

cleanup:                                          ; preds = %if.end68, %if.end79, %if.then34, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then34 ], [ 0, %if.end79 ], [ 1, %if.end68 ], !dbg !2624
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %file_stats) #22, !dbg !2759
  ret i32 %retval.0, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ImagesToBlob(ptr noundef %image_info, ptr noundef %images, ptr nocapture noundef %length, ptr noundef %exception) local_unnamed_addr #0 !dbg !2760 {
entry:
  %filename72 = alloca [4096 x i8], align 16
  %unique = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2762, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %images, metadata !2763, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %length, metadata !2764, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2765, metadata !DIExpression()), !dbg !2779
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !2780
  %0 = load i32, ptr %debug, align 8, !dbg !2780, !tbaa !1196
  %cmp.not = icmp eq i32 %0, 0, !dbg !2782
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2783

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2784
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1773, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !2785
  br label %if.end, !dbg !2786

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %length, align 8, !dbg !2787, !tbaa !1497
  call void @llvm.dbg.value(metadata ptr null, metadata !2769, metadata !DIExpression()), !dbg !2779
  %call1 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #22, !dbg !2788
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2767, metadata !DIExpression()), !dbg !2779
  %call2 = tail call i64 @GetImageListLength(ptr noundef %images) #22, !dbg !2789
  %conv = trunc i64 %call2 to i32, !dbg !2790
  %call3 = tail call i32 @SetImageInfo(ptr noundef %call1, i32 noundef %conv, ptr noundef %exception) #22, !dbg !2791
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 48, !dbg !2792
  %1 = load i8, ptr %magick, align 8, !dbg !2794, !tbaa !1057
  %cmp6.not = icmp eq i8 %1, 0, !dbg !2795
  br i1 %cmp6.not, label %if.end14, label %if.then8, !dbg !2796

if.then8:                                         ; preds = %if.end
  %magick9 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 55, !dbg !2797
  %call13 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick9, ptr noundef nonnull %magick, i64 noundef 4096) #22, !dbg !2798
  br label %if.end14, !dbg !2799

if.end14:                                         ; preds = %if.then8, %if.end
  %magick15 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 55, !dbg !2800
  %call17 = tail call ptr @GetMagickInfo(ptr noundef nonnull %magick15, ptr noundef %exception) #22, !dbg !2801
  call void @llvm.dbg.value(metadata ptr %call17, metadata !2766, metadata !DIExpression()), !dbg !2779
  %cmp18 = icmp eq ptr %call17, null, !dbg !2802
  br i1 %cmp18, label %if.then20, label %if.end25, !dbg !2804

if.then20:                                        ; preds = %if.end14
  %call23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1788, i32 noundef 420, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %magick15) #22, !dbg !2805
  %call24 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call1) #22, !dbg !2807
  call void @llvm.dbg.value(metadata ptr %call24, metadata !2767, metadata !DIExpression()), !dbg !2779
  br label %cleanup, !dbg !2808

if.end25:                                         ; preds = %if.end14
  %call26 = tail call i32 @GetMagickAdjoin(ptr noundef nonnull %call17) #22, !dbg !2809
  %cmp27 = icmp eq i32 %call26, 0, !dbg !2811
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !2812

if.then29:                                        ; preds = %if.end25
  %call30 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call1) #22, !dbg !2813
  call void @llvm.dbg.value(metadata ptr %call30, metadata !2767, metadata !DIExpression()), !dbg !2779
  %call31 = tail call ptr @ImageToBlob(ptr noundef nonnull %image_info, ptr noundef %images, ptr noundef nonnull %length, ptr noundef %exception), !dbg !2815
  br label %cleanup, !dbg !2816

if.end32:                                         ; preds = %if.end25
  %call37 = tail call i64 @CopyMagickString(ptr noundef nonnull %magick, ptr noundef nonnull %magick15, i64 noundef 4096) #22, !dbg !2817
  %call38 = tail call i32 @GetMagickBlobSupport(ptr noundef nonnull %call17) #22, !dbg !2818
  %cmp39.not = icmp eq i32 %call38, 0, !dbg !2819
  br i1 %cmp39.not, label %if.else71, label %if.then41, !dbg !2820

if.then41:                                        ; preds = %if.end32
  %length42 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 47, !dbg !2821
  store i64 0, ptr %length42, align 8, !dbg !2823, !tbaa !1219
  %call43 = tail call ptr @AcquireQuantumMemory(i64 noundef 65541, i64 noundef 1) #26, !dbg !2824
  %blob44 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 46, !dbg !2825
  store ptr %call43, ptr %blob44, align 8, !dbg !2826, !tbaa !1216
  %cmp46 = icmp eq ptr %call43, null, !dbg !2827
  br i1 %cmp46, label %if.then48, label %if.else, !dbg !2829

if.then48:                                        ; preds = %if.then41
  %filename49 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !2830
  %call51 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1809, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename49) #22, !dbg !2831
  br label %if.end113, !dbg !2832

if.else:                                          ; preds = %if.then41
  %call52 = tail call i32 @CloseBlob(ptr noundef %images), !dbg !2833
  %blob53 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 52, !dbg !2835
  %2 = load ptr, ptr %blob53, align 8, !dbg !2835, !tbaa !1249
  %exempt = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 7, !dbg !2836
  store i32 1, ptr %exempt, align 8, !dbg !2837, !tbaa !1286
  %filename54 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !2838
  store i8 0, ptr %filename54, align 8, !dbg !2839, !tbaa !1057
  %call58 = tail call i32 @WriteImages(ptr noundef nonnull %call1, ptr noundef %images, ptr noundef nonnull %filename54, ptr noundef %exception) #22, !dbg !2840
  call void @llvm.dbg.value(metadata i32 %call58, metadata !2768, metadata !DIExpression()), !dbg !2779
  %3 = load ptr, ptr %blob53, align 8, !dbg !2841, !tbaa !1249
  %4 = load i64, ptr %3, align 8, !dbg !2842, !tbaa !1042
  store i64 %4, ptr %length, align 8, !dbg !2843, !tbaa !1497
  call void @llvm.dbg.value(metadata ptr %3, metadata !1259, metadata !DIExpression()) #22, !dbg !2844
  %debug.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 16, !dbg !2846
  %5 = load i32, ptr %debug.i, align 8, !dbg !2846, !tbaa !1027
  %cmp.not.i = icmp eq i32 %5, 0, !dbg !2847
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !2848

if.then.i:                                        ; preds = %if.else
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22, !dbg !2849
  br label %if.end.i, !dbg !2850

if.end.i:                                         ; preds = %if.then.i, %if.else
  %mapped.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 3, !dbg !2851
  %6 = load i32, ptr %mapped.i, align 8, !dbg !2851, !tbaa !1063
  %cmp1.not.i = icmp eq i32 %6, 0, !dbg !2852
  br i1 %cmp1.not.i, label %DetachBlob.exit, label %if.then2.i, !dbg !2853

if.then2.i:                                       ; preds = %if.end.i
  %data3.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 15, !dbg !2854
  store ptr null, ptr %data3.i, align 8, !dbg !2855, !tbaa !1060
  %7 = load i64, ptr %3, align 8, !dbg !2856, !tbaa !1042
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %7) #22, !dbg !2857
  br label %DetachBlob.exit, !dbg !2858

DetachBlob.exit:                                  ; preds = %if.end.i, %if.then2.i
  store i64 0, ptr %3, align 8, !dbg !2859, !tbaa !1042
  %exempt.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 7, !dbg !2860
  store i32 0, ptr %exempt.i, align 8, !dbg !2861, !tbaa !1286
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 11, !dbg !2862
  store i32 0, ptr %type.i, align 8, !dbg !2863, !tbaa !1054
  %file_info.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 12, !dbg !2864
  store ptr null, ptr %file_info.i, align 8, !dbg !2865, !tbaa !1057
  %data10.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 15, !dbg !2866
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %mapped.i, i8 0, i64 16, i1 false) #22, !dbg !2867
  %8 = load ptr, ptr %data10.i, align 8, !dbg !2866, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %8, metadata !1264, metadata !DIExpression()) #22, !dbg !2844
  %stream.i = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 14, !dbg !2868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %stream.i, i8 0, i64 16, i1 false) #22, !dbg !2869
  call void @llvm.dbg.value(metadata ptr %8, metadata !2769, metadata !DIExpression()), !dbg !2779
  %cmp63 = icmp eq i32 %call58, 0, !dbg !2870
  br i1 %cmp63, label %if.then65, label %if.else67, !dbg !2872

if.then65:                                        ; preds = %DetachBlob.exit
  %call66 = tail call ptr @RelinquishMagickMemory(ptr noundef %8) #22, !dbg !2873
  call void @llvm.dbg.value(metadata ptr %call66, metadata !2769, metadata !DIExpression()), !dbg !2779
  br label %if.end113, !dbg !2874

if.else67:                                        ; preds = %DetachBlob.exit
  %9 = load i64, ptr %length, align 8, !dbg !2875, !tbaa !1497
  %add = add i64 %9, 1, !dbg !2876
  %call68 = tail call ptr @ResizeQuantumMemory(ptr noundef %8, i64 noundef %add, i64 noundef 1) #27, !dbg !2877
  call void @llvm.dbg.value(metadata ptr %call68, metadata !2769, metadata !DIExpression()), !dbg !2779
  br label %if.end113

if.else71:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename72) #22, !dbg !2878
  call void @llvm.dbg.declare(metadata ptr %filename72, metadata !2770, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %unique) #22, !dbg !2878
  call void @llvm.dbg.declare(metadata ptr %unique, metadata !2773, metadata !DIExpression()), !dbg !2880
  %call74 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %unique) #22, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %call74, metadata !2774, metadata !DIExpression()), !dbg !2882
  %cmp75 = icmp eq i32 %call74, -1, !dbg !2883
  br i1 %cmp75, label %if.then77, label %if.else84, !dbg !2884

if.then77:                                        ; preds = %if.else71
  %call78 = tail call ptr @__errno_location() #23, !dbg !2885
  %10 = load i32, ptr %call78, align 4, !dbg !2885, !tbaa !1119
  %call79 = call ptr @GetExceptionMessage(i32 noundef %10) #22, !dbg !2885
  call void @llvm.dbg.value(metadata ptr %call79, metadata !2775, metadata !DIExpression()), !dbg !2886
  %filename80 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !2885
  %call82 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1842, i32 noundef 430, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename80, ptr noundef %call79) #22, !dbg !2885
  %call83 = call ptr @DestroyString(ptr noundef %call79) #22, !dbg !2885
  call void @llvm.dbg.value(metadata ptr %call83, metadata !2775, metadata !DIExpression()), !dbg !2886
  br label %if.end112, !dbg !2887

if.else84:                                        ; preds = %if.else71
  %call85 = call ptr @fdopen(i32 noundef %call74, ptr noundef nonnull @.str.15) #22, !dbg !2888
  %file86 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 45, !dbg !2890
  store ptr %call85, ptr %file86, align 8, !dbg !2891, !tbaa !2569
  %cmp88.not = icmp eq ptr %call85, null, !dbg !2892
  br i1 %cmp88.not, label %if.end109, label %if.then90, !dbg !2894

if.then90:                                        ; preds = %if.else84
  %call95 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename72, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull %magick15, ptr noundef nonnull %unique) #22, !dbg !2895
  %call97 = call i32 @WriteImages(ptr noundef nonnull %call1, ptr noundef %images, ptr noundef nonnull %filename72, ptr noundef %exception) #22, !dbg !2897
  call void @llvm.dbg.value(metadata i32 %call97, metadata !2768, metadata !DIExpression()), !dbg !2779
  %call98 = call i32 @CloseBlob(ptr noundef %images), !dbg !2898
  %11 = load ptr, ptr %file86, align 8, !dbg !2899, !tbaa !2569
  %call100 = call i32 @fclose(ptr noundef %11), !dbg !2900
  %cmp101 = icmp eq i32 %call97, 0, !dbg !2901
  br i1 %cmp101, label %if.then103, label %if.else105, !dbg !2903

if.then103:                                       ; preds = %if.then90
  %exception104 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 58, !dbg !2904
  call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception104) #22, !dbg !2905
  br label %if.end109, !dbg !2905

if.else105:                                       ; preds = %if.then90
  %call107 = call ptr @FileToBlob(ptr noundef nonnull %unique, i64 noundef -1, ptr noundef nonnull %length, ptr noundef %exception), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %call107, metadata !2769, metadata !DIExpression()), !dbg !2779
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %if.else105, %if.else84
  %blob.0 = phi ptr [ null, %if.then103 ], [ %call107, %if.else105 ], [ null, %if.else84 ], !dbg !2779
  call void @llvm.dbg.value(metadata ptr %blob.0, metadata !2769, metadata !DIExpression()), !dbg !2779
  %call111 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %unique) #22, !dbg !2907
  br label %if.end112

if.end112:                                        ; preds = %if.end109, %if.then77
  %blob.1 = phi ptr [ null, %if.then77 ], [ %blob.0, %if.end109 ], !dbg !2908
  call void @llvm.dbg.value(metadata ptr %blob.1, metadata !2769, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %unique) #22, !dbg !2909
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename72) #22, !dbg !2909
  br label %if.end113

if.end113:                                        ; preds = %if.then48, %if.else67, %if.then65, %if.end112
  %blob.2 = phi ptr [ null, %if.then48 ], [ %call66, %if.then65 ], [ %call68, %if.else67 ], [ %blob.1, %if.end112 ], !dbg !2779
  call void @llvm.dbg.value(metadata ptr %blob.2, metadata !2769, metadata !DIExpression()), !dbg !2779
  %call114 = call ptr @DestroyImageInfo(ptr noundef nonnull %call1) #22, !dbg !2910
  call void @llvm.dbg.value(metadata ptr %call114, metadata !2767, metadata !DIExpression()), !dbg !2779
  br label %cleanup, !dbg !2911

cleanup:                                          ; preds = %if.end113, %if.then29, %if.then20
  %retval.0 = phi ptr [ null, %if.then20 ], [ %call31, %if.then29 ], [ %blob.2, %if.end113 ], !dbg !2779
  ret ptr %retval.0, !dbg !2912
}

declare !dbg !2913 i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

declare !dbg !2916 i32 @GetMagickAdjoin(ptr noundef) local_unnamed_addr #2

declare !dbg !2917 i32 @WriteImages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @InjectImageBlob(ptr noundef %image_info, ptr noundef %image, ptr noundef %inject_image, ptr noundef %format, ptr noundef %exception) local_unnamed_addr #0 !dbg !2920 {
entry:
  %filename = alloca [4096 x i8], align 16
  %file_stats = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !2924, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata ptr %image, metadata !2925, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata ptr %inject_image, metadata !2926, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata ptr %format, metadata !2927, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2928, metadata !DIExpression()), !dbg !2951
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #22, !dbg !2952
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !2929, metadata !DIExpression()), !dbg !2953
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %file_stats) #22, !dbg !2954
  call void @llvm.dbg.declare(metadata ptr %file_stats, metadata !2938, metadata !DIExpression()), !dbg !2955
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2956
  %0 = load i32, ptr %debug, align 8, !dbg !2956, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !2958
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2959

if.then:                                          ; preds = %entry
  %filename1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2960
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1942, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename1) #22, !dbg !2961
  br label %if.end, !dbg !2962

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !2930, metadata !DIExpression()), !dbg !2951
  %call3 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %filename) #22, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %call3, metadata !2933, metadata !DIExpression()), !dbg !2951
  %cmp4.not = icmp eq i32 %call3, -1, !dbg !2964
  br i1 %cmp4.not, label %if.then10, label %if.end7, !dbg !2966

if.end7:                                          ; preds = %if.end
  %call6 = call ptr @fdopen(i32 noundef %call3, ptr noundef nonnull @.str.15) #22, !dbg !2967
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2930, metadata !DIExpression()), !dbg !2951
  %cmp9 = icmp eq ptr %call6, null
  br i1 %cmp9, label %if.then10, label %if.end21, !dbg !2968

if.then10:                                        ; preds = %if.end, %if.end7
  %filename11 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2969
  %call14 = call i64 @CopyMagickString(ptr noundef nonnull %filename11, ptr noundef nonnull %filename, i64 noundef 4096) #22, !dbg !2970
  %call15 = tail call ptr @__errno_location() #23, !dbg !2971
  %1 = load i32, ptr %call15, align 4, !dbg !2971, !tbaa !1119
  %call16 = call ptr @GetExceptionMessage(i32 noundef %1) #22, !dbg !2971
  call void @llvm.dbg.value(metadata ptr %call16, metadata !2940, metadata !DIExpression()), !dbg !2972
  %call19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1954, i32 noundef 430, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename11, ptr noundef %call16) #22, !dbg !2971
  %call20 = call ptr @DestroyString(ptr noundef %call16) #22, !dbg !2971
  call void @llvm.dbg.value(metadata ptr %call20, metadata !2940, metadata !DIExpression()), !dbg !2972
  br label %cleanup, !dbg !2973

if.end21:                                         ; preds = %if.end7
  %call22 = call ptr @CloneImage(ptr noundef %inject_image, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef %exception) #22, !dbg !2974
  call void @llvm.dbg.value(metadata ptr %call22, metadata !2931, metadata !DIExpression()), !dbg !2951
  %cmp23 = icmp eq ptr %call22, null, !dbg !2975
  br i1 %cmp23, label %if.then24, label %if.end28, !dbg !2977

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @fclose(ptr noundef nonnull %call6), !dbg !2978
  %call27 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename) #22, !dbg !2980
  br label %cleanup, !dbg !2981

if.end28:                                         ; preds = %if.end21
  %filename29 = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 53, !dbg !2982
  %call32 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename29, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %format, ptr noundef nonnull %filename) #22, !dbg !2983
  call void @DestroyBlob(ptr noundef nonnull %call22), !dbg !2984
  %call33 = call ptr @CloneBlobInfo(ptr noundef null), !dbg !2985
  %blob = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 52, !dbg !2986
  store ptr %call33, ptr %blob, align 8, !dbg !2987, !tbaa !1249
  %call34 = call ptr @CloneImageInfo(ptr noundef %image_info) #22, !dbg !2988
  call void @llvm.dbg.value(metadata ptr %call34, metadata !2932, metadata !DIExpression()), !dbg !2951
  call void @SetImageInfoFile(ptr noundef %call34, ptr noundef nonnull %call6) #22, !dbg !2989
  %call35 = call i32 @WriteImage(ptr noundef %call34, ptr noundef nonnull %call22) #22, !dbg !2990
  call void @llvm.dbg.value(metadata i32 %call35, metadata !2934, metadata !DIExpression()), !dbg !2951
  %call36 = call ptr @DestroyImageInfo(ptr noundef %call34) #22, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %call36, metadata !2932, metadata !DIExpression()), !dbg !2951
  %call37 = call ptr @DestroyImage(ptr noundef nonnull %call22) #22, !dbg !2992
  call void @llvm.dbg.value(metadata ptr %call37, metadata !2931, metadata !DIExpression()), !dbg !2951
  %call38 = call i32 @fclose(ptr noundef nonnull %call6), !dbg !2993
  %cmp39 = icmp eq i32 %call35, 0, !dbg !2994
  br i1 %cmp39, label %if.then40, label %if.end43, !dbg !2996

if.then40:                                        ; preds = %if.end28
  %call42 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename) #22, !dbg !2997
  br label %cleanup, !dbg !2999

if.end43:                                         ; preds = %if.end28
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1098, metadata !DIExpression()) #22, !dbg !3000
  call void @llvm.dbg.value(metadata i32 0, metadata !1106, metadata !DIExpression()) #22, !dbg !3000
  call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()) #22, !dbg !3000
  %call.i = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %filename, i32 noundef 0, i32 noundef 0) #22, !dbg !3002
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !2933, metadata !DIExpression()), !dbg !2951
  %cmp46 = icmp eq i32 %call.i, -1, !dbg !3003
  br i1 %cmp46, label %if.then47, label %if.end57, !dbg !3004

if.then47:                                        ; preds = %if.end43
  %call49 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename) #22, !dbg !3005
  %call51 = tail call ptr @__errno_location() #23, !dbg !3006
  %2 = load i32, ptr %call51, align 4, !dbg !3006, !tbaa !1119
  %call52 = call ptr @GetExceptionMessage(i32 noundef %2) #22, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %call52, metadata !2944, metadata !DIExpression()), !dbg !3007
  %filename53 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !3006
  %call55 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1987, i32 noundef 430, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename53, ptr noundef %call52) #22, !dbg !3006
  %call56 = call ptr @DestroyString(ptr noundef %call52) #22, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %call56, metadata !2944, metadata !DIExpression()), !dbg !3007
  br label %cleanup, !dbg !3008

if.end57:                                         ; preds = %if.end43
  call void @llvm.dbg.value(metadata i64 262142, metadata !2936, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !1742, metadata !DIExpression()) #22, !dbg !3009
  call void @llvm.dbg.value(metadata ptr %file_stats, metadata !1748, metadata !DIExpression()) #22, !dbg !3009
  %call.i151 = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i, ptr noundef nonnull %file_stats) #22, !dbg !3012
  %cmp59 = icmp eq i32 %call.i151, 0, !dbg !3013
  %st_size = getelementptr inbounds %struct.stat, ptr %file_stats, i64 0, i32 8
  %3 = load i64, ptr %st_size, align 8
  %cmp60 = icmp ne i64 %3, 0
  %or.cond111 = select i1 %cmp59, i1 %cmp60, i1 false, !dbg !3014
  %4 = call i64 @llvm.umin.i64(i64 %3, i64 262142) #22
  %spec.select = select i1 %or.cond111, i64 %4, i64 262142, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2936, metadata !DIExpression()), !dbg !2951
  %call65 = call ptr @AcquireQuantumMemory(i64 noundef %spec.select, i64 noundef 1) #26, !dbg !3015
  call void @llvm.dbg.value(metadata ptr %call65, metadata !2939, metadata !DIExpression()), !dbg !2951
  %cmp66 = icmp eq ptr %call65, null, !dbg !3016
  br i1 %cmp66, label %if.then71, label %for.cond.preheader, !dbg !3018

for.cond.preheader:                               ; preds = %if.end57
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52
  br label %for.cond, !dbg !3019

if.then71:                                        ; preds = %if.end57
  %call69 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename) #22, !dbg !3021
  %exception72 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3023
  %filename73 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3023
  %call75 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception72, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1998, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename73) #22, !dbg !3023
  br label %cleanup, !dbg !3023

for.cond:                                         ; preds = %for.cond.preheader, %WriteBlobStream.exit
  %status.0 = phi i32 [ %cond, %WriteBlobStream.exit ], [ %call35, %for.cond.preheader ], !dbg !2951
  call void @llvm.dbg.value(metadata i64 poison, metadata !2935, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !2934, metadata !DIExpression()), !dbg !2951
  %call78 = call i64 @read(i32 noundef %call.i, ptr noundef nonnull %call65, i64 noundef %spec.select) #22, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %call78, metadata !2937, metadata !DIExpression()), !dbg !2951
  %cmp79 = icmp slt i64 %call78, 1, !dbg !3029
  br i1 %cmp79, label %if.then80, label %if.end85, !dbg !3031

if.then80:                                        ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 0, metadata !2937, metadata !DIExpression()), !dbg !2951
  %call81 = tail call ptr @__errno_location() #23, !dbg !3032
  %5 = load i32, ptr %call81, align 4, !dbg !3032, !tbaa !1119
  %cmp82.not = icmp eq i32 %5, 4, !dbg !3035
  br i1 %cmp82.not, label %if.end85, label %for.end, !dbg !3036

if.end85:                                         ; preds = %if.then80, %for.cond
  %count.0 = phi i64 [ 0, %if.then80 ], [ %call78, %for.cond ], !dbg !3037
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2937, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2303, metadata !DIExpression()) #22, !dbg !3038
  call void @llvm.dbg.value(metadata ptr %call65, metadata !2304, metadata !DIExpression()) #22, !dbg !3038
  %6 = load ptr, ptr %blob.i, align 8, !dbg !3040, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 11, !dbg !3041
  %7 = load i32, ptr %type.i, align 8, !dbg !3041, !tbaa !1054
  %cmp.not.i = icmp eq i32 %7, 7, !dbg !3042
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !3043

if.then.i:                                        ; preds = %if.end85
  %call.i152 = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef %count.0, ptr noundef nonnull %call65) #22, !dbg !3044
  br label %WriteBlobStream.exit, !dbg !3045

if.end.i:                                         ; preds = %if.end85
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 5, !dbg !3046
  %8 = load i64, ptr %offset.i, align 8, !dbg !3046, !tbaa !1051
  %add.i = add nsw i64 %8, %count.0, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !3038
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 1, !dbg !3048
  %9 = load i64, ptr %extent3.i, align 8, !dbg !3048, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %9, !dbg !3049
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !3050

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 2, !dbg !3051
  %10 = load i64, ptr %quantum.i, align 8, !dbg !3051, !tbaa !1048
  %add9.i = add i64 %9, %count.0, !dbg !3052
  %add10.i = add i64 %add9.i, %10, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !3038
  %shl.i = shl i64 %10, 1, !dbg !3054
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !3054, !tbaa !1048
  %call13.i = call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !3055
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !3056
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !3057

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !3058, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !3059, !tbaa !1051
  br label %if.end17.i, !dbg !3057

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %11 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %8, %if.end.i ], !dbg !3059
  %12 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %6, %if.end.i ], !dbg !3058
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 15, !dbg !3060
  %13 = load ptr, ptr %data19.i, align 8, !dbg !3060, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %13, i64 %11, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !3038
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr nonnull align 1 %call65, i64 %count.0, i1 false) #22, !dbg !3062
  %14 = load ptr, ptr %blob.i, align 8, !dbg !3063, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %14, i64 0, i32 5, !dbg !3064
  %15 = load i64, ptr %offset23.i, align 8, !dbg !3065, !tbaa !1051
  %add24.i = add i64 %15, %count.0, !dbg !3065
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !3065, !tbaa !1051
  %16 = load i64, ptr %14, align 8, !dbg !3066, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %16, !dbg !3067
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !3068

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %14, align 8, !dbg !3069, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !3070

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i152, %if.then.i ], [ 0, %if.then5.i ], [ %count.0, %if.then30.i ], [ %count.0, %if.end17.i ], !dbg !3038
  %cmp87 = icmp eq i64 %retval.0.i, %count.0, !dbg !3071
  %cond = zext i1 %cmp87 to i32, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2934, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 %count.0), metadata !2935, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !2951
  br label %for.cond, !dbg !3073, !llvm.loop !3074

for.end:                                          ; preds = %if.then80
  %call88 = call i32 @close(i32 noundef %call.i) #22, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %call88, metadata !2933, metadata !DIExpression()), !dbg !2951
  %cmp89 = icmp eq i32 %call88, -1, !dbg !3077
  br i1 %cmp89, label %if.then90, label %if.end97, !dbg !3078

if.then90:                                        ; preds = %for.end
  %17 = load i32, ptr %call81, align 4, !dbg !3079, !tbaa !1119
  %call93 = call ptr @GetExceptionMessage(i32 noundef %17) #22, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %call93, metadata !2948, metadata !DIExpression()), !dbg !3080
  %call95 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2014, i32 noundef 430, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename, ptr noundef %call93) #22, !dbg !3079
  %call96 = call ptr @DestroyString(ptr noundef %call93) #22, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %call96, metadata !2948, metadata !DIExpression()), !dbg !3080
  br label %if.end97, !dbg !3079

if.end97:                                         ; preds = %if.then90, %for.end
  %call99 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %filename) #22, !dbg !3081
  %call100 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call65) #22, !dbg !3082
  call void @llvm.dbg.value(metadata ptr %call100, metadata !2939, metadata !DIExpression()), !dbg !2951
  br label %cleanup, !dbg !3083

cleanup:                                          ; preds = %if.then71, %if.end97, %if.then47, %if.then40, %if.then24, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.then24 ], [ 0, %if.then40 ], [ 0, %if.then47 ], [ %status.0, %if.end97 ], [ 0, %if.then71 ], !dbg !2951
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %file_stats) #22, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #22, !dbg !3084
  ret i32 %retval.0, !dbg !3084
}

declare !dbg !3085 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3089 void @SetImageInfoFile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3092 ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsBlobExempt(ptr noundef %image) local_unnamed_addr #0 !dbg !3095 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3097, metadata !DIExpression()), !dbg !3098
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3099
  %0 = load i32, ptr %debug, align 8, !dbg !3099, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !3101
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3102

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3103
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2047, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !3104
  br label %if.end, !dbg !3105

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !3106
  %1 = load ptr, ptr %blob, align 8, !dbg !3106, !tbaa !1249
  %exempt = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 7, !dbg !3107
  %2 = load i32, ptr %exempt, align 8, !dbg !3107, !tbaa !1286
  ret i32 %2, !dbg !3108
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsBlobSeekable(ptr noundef %image) local_unnamed_addr #0 !dbg !3109 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3111, metadata !DIExpression()), !dbg !3113
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3114
  %0 = load i32, ptr %debug, align 8, !dbg !3114, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !3116
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3117

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3118
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2081, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !3119
  br label %if.end, !dbg !3120

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !3121
  %1 = load ptr, ptr %blob, align 8, !dbg !3121, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !3122
  %2 = load i32, ptr %type, align 8, !dbg !3122, !tbaa !1054
  %switch.tableidx = add i32 %2, -1, !dbg !3123
  %3 = icmp ult i32 %switch.tableidx, 7, !dbg !3123
  br i1 %3, label %switch.lookup, label %sw.epilog, !dbg !3123

switch.lookup:                                    ; preds = %if.end
  %4 = sext i32 %switch.tableidx to i64, !dbg !3123
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.IsBlobSeekable, i64 0, i64 %4, !dbg !3123
  %switch.load = load i32, ptr %switch.gep, align 4, !dbg !3123
  br label %sw.epilog, !dbg !3123

sw.epilog:                                        ; preds = %if.end, %switch.lookup
  %seekable.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end ], !dbg !3124
  call void @llvm.dbg.value(metadata i32 %seekable.0, metadata !3112, metadata !DIExpression()), !dbg !3113
  ret i32 %seekable.0, !dbg !3126
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsBlobTemporary(ptr noundef %image) local_unnamed_addr #0 !dbg !3127 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3129, metadata !DIExpression()), !dbg !3130
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3131
  %0 = load i32, ptr %debug, align 8, !dbg !3131, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !3133
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3134

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3135
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2127, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !3136
  br label %if.end, !dbg !3137

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !3138
  %1 = load ptr, ptr %blob, align 8, !dbg !3138, !tbaa !1249
  %temporary = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 10, !dbg !3139
  %2 = load i32, ptr %temporary, align 4, !dbg !3139, !tbaa !1485
  ret i32 %2, !dbg !3140
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @MSBOrderLong(ptr noundef %buffer, i64 noundef %length) local_unnamed_addr #17 !dbg !3141 {
entry:
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !3145, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %length, metadata !3146, metadata !DIExpression()), !dbg !3150
  %add.ptr = getelementptr inbounds i8, ptr %buffer, i64 %length, !dbg !3151
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3149, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !3145, metadata !DIExpression()), !dbg !3150
  %cmp20 = icmp sgt i64 %length, 0, !dbg !3152
  br i1 %cmp20, label %while.body, label %while.end, !dbg !3153

while.body:                                       ; preds = %entry, %while.body
  %buffer.addr.021 = phi ptr [ %add.ptr7, %while.body ], [ %buffer, %entry ]
  call void @llvm.dbg.value(metadata ptr %buffer.addr.021, metadata !3145, metadata !DIExpression()), !dbg !3150
  %add.ptr1 = getelementptr inbounds i8, ptr %buffer.addr.021, i64 3, !dbg !3154
  call void @llvm.dbg.value(metadata ptr %add.ptr1, metadata !3148, metadata !DIExpression()), !dbg !3150
  %0 = load i8, ptr %add.ptr1, align 1, !dbg !3156, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 %0, metadata !3147, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3150
  %1 = load i8, ptr %buffer.addr.021, align 1, !dbg !3157, !tbaa !1057
  store i8 %1, ptr %add.ptr1, align 1, !dbg !3158, !tbaa !1057
  %incdec.ptr = getelementptr inbounds i8, ptr %buffer.addr.021, i64 1, !dbg !3159
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3145, metadata !DIExpression()), !dbg !3150
  store i8 %0, ptr %buffer.addr.021, align 1, !dbg !3160, !tbaa !1057
  %add.ptr3 = getelementptr inbounds i8, ptr %buffer.addr.021, i64 2, !dbg !3161
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !3148, metadata !DIExpression()), !dbg !3150
  %2 = load i8, ptr %add.ptr3, align 1, !dbg !3162, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 %2, metadata !3147, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3150
  %3 = load i8, ptr %incdec.ptr, align 1, !dbg !3163, !tbaa !1057
  store i8 %3, ptr %add.ptr3, align 1, !dbg !3164, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %buffer.addr.021, metadata !3145, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3150
  store i8 %2, ptr %incdec.ptr, align 1, !dbg !3165, !tbaa !1057
  %add.ptr7 = getelementptr inbounds i8, ptr %buffer.addr.021, i64 4, !dbg !3166
  call void @llvm.dbg.value(metadata ptr %add.ptr7, metadata !3145, metadata !DIExpression()), !dbg !3150
  %cmp = icmp ult ptr %add.ptr7, %add.ptr, !dbg !3152
  br i1 %cmp, label %while.body, label %while.end, !dbg !3153, !llvm.loop !3167

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !3169
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @MSBOrderShort(ptr noundef %p, i64 noundef %length) local_unnamed_addr #17 !dbg !3170 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !3172, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %length, metadata !3173, metadata !DIExpression()), !dbg !3176
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 %length, !dbg !3177
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata ptr %p, metadata !3172, metadata !DIExpression()), !dbg !3176
  %cmp10 = icmp sgt i64 %length, 0, !dbg !3178
  br i1 %cmp10, label %while.body, label %while.end, !dbg !3179

while.body:                                       ; preds = %entry, %while.body
  %p.addr.011 = phi ptr [ %incdec.ptr3, %while.body ], [ %p, %entry ]
  call void @llvm.dbg.value(metadata ptr %p.addr.011, metadata !3172, metadata !DIExpression()), !dbg !3176
  %0 = load i8, ptr %p.addr.011, align 1, !dbg !3180, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 %0, metadata !3174, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3176
  %add.ptr1 = getelementptr inbounds i8, ptr %p.addr.011, i64 1, !dbg !3182
  %1 = load i8, ptr %add.ptr1, align 1, !dbg !3183, !tbaa !1057
  store i8 %1, ptr %p.addr.011, align 1, !dbg !3184, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %add.ptr1, metadata !3172, metadata !DIExpression()), !dbg !3176
  %incdec.ptr3 = getelementptr inbounds i8, ptr %p.addr.011, i64 2, !dbg !3185
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !3172, metadata !DIExpression()), !dbg !3176
  store i8 %0, ptr %add.ptr1, align 1, !dbg !3186, !tbaa !1057
  %cmp = icmp ult ptr %incdec.ptr3, %add.ptr, !dbg !3178
  br i1 %cmp, label %while.body, label %while.end, !dbg !3179, !llvm.loop !3187

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !3189
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OpenBlob(ptr noundef %image_info, ptr noundef %image, i32 noundef %mode, ptr noundef %exception) local_unnamed_addr #0 !dbg !3190 {
entry:
  %extension = alloca [4096 x i8], align 16
  %filename = alloca [4096 x i8], align 16
  %mode84 = alloca [4096 x i8], align 16
  %path = alloca [4096 x i8], align 16
  %magick = alloca [3 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !3196, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr %image, metadata !3197, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3198, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3199, metadata !DIExpression()), !dbg !3242
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %extension) #22, !dbg !3243
  call void @llvm.dbg.declare(metadata ptr %extension, metadata !3200, metadata !DIExpression()), !dbg !3244
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename) #22, !dbg !3243
  call void @llvm.dbg.declare(metadata ptr %filename, metadata !3201, metadata !DIExpression()), !dbg !3245
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !3246
  %0 = load i32, ptr %debug, align 8, !dbg !3246, !tbaa !1196
  %cmp.not = icmp eq i32 %0, 0, !dbg !3248
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3249

if.then:                                          ; preds = %entry
  %filename1 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !3250
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2369, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename1) #22, !dbg !3251
  br label %if.end, !dbg !3252

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 46, !dbg !3253
  %1 = load ptr, ptr %blob, align 8, !dbg !3253, !tbaa !1216
  %cmp2.not = icmp eq ptr %1, null, !dbg !3255
  br i1 %cmp2.not, label %if.end12, label %if.then3, !dbg !3256

if.then3:                                         ; preds = %if.end
  %stream = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 44, !dbg !3257
  %2 = load ptr, ptr %stream, align 8, !dbg !3257, !tbaa !3260
  %cmp4.not = icmp eq ptr %2, null, !dbg !3261
  %blob10.phi.trans.insert = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52
  %.pre = load ptr, ptr %blob10.phi.trans.insert, align 8, !dbg !3262, !tbaa !1249
  br i1 %cmp4.not, label %if.end9, label %if.then5, !dbg !3263

if.then5:                                         ; preds = %if.then3
  %stream8 = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 14, !dbg !3264
  store ptr %2, ptr %stream8, align 8, !dbg !3265, !tbaa !1499
  br label %if.end9, !dbg !3266

if.end9:                                          ; preds = %if.then3, %if.then5
  %length = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 47, !dbg !3267
  %3 = load i64, ptr %length, align 8, !dbg !3267, !tbaa !1219
  call void @llvm.dbg.value(metadata ptr %.pre, metadata !1021, metadata !DIExpression()) #22, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %1, metadata !1022, metadata !DIExpression()) #22, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %3, metadata !1023, metadata !DIExpression()) #22, !dbg !3268
  %debug.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 16, !dbg !3270
  %4 = load i32, ptr %debug.i, align 8, !dbg !3270, !tbaa !1027
  %cmp.not.i = icmp eq i32 %4, 0, !dbg !3271
  br i1 %cmp.not.i, label %AttachBlob.exit, label %if.then.i, !dbg !3272

if.then.i:                                        ; preds = %if.end9
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 197, ptr noundef nonnull @.str.2) #22, !dbg !3273
  br label %AttachBlob.exit, !dbg !3274

AttachBlob.exit:                                  ; preds = %if.end9, %if.then.i
  store i64 %3, ptr %.pre, align 8, !dbg !3275, !tbaa !1042
  %extent.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 1, !dbg !3276
  store i64 %3, ptr %extent.i, align 8, !dbg !3277, !tbaa !1045
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 2, !dbg !3278
  store i64 65541, ptr %quantum.i, align 8, !dbg !3279, !tbaa !1048
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 5, !dbg !3280
  store i64 0, ptr %offset.i, align 8, !dbg !3281, !tbaa !1051
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 11, !dbg !3282
  store i32 7, ptr %type.i, align 8, !dbg !3283, !tbaa !1054
  %file_info.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 12, !dbg !3284
  store ptr null, ptr %file_info.i, align 8, !dbg !3285, !tbaa !1057
  %data.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 15, !dbg !3286
  store ptr %1, ptr %data.i, align 8, !dbg !3287, !tbaa !1060
  %mapped.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 3, !dbg !3288
  store i32 0, ptr %mapped.i, align 8, !dbg !3289, !tbaa !1063
  br label %cleanup, !dbg !3290

if.end12:                                         ; preds = %if.end
  %blob13 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !3291
  %5 = load ptr, ptr %blob13, align 8, !dbg !3291, !tbaa !1249
  call void @llvm.dbg.value(metadata ptr %5, metadata !1259, metadata !DIExpression()) #22, !dbg !3292
  %debug.i421 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 16, !dbg !3294
  %6 = load i32, ptr %debug.i421, align 8, !dbg !3294, !tbaa !1027
  %cmp.not.i422 = icmp eq i32 %6, 0, !dbg !3295
  br i1 %cmp.not.i422, label %if.end.i, label %if.then.i424, !dbg !3296

if.then.i424:                                     ; preds = %if.end12
  %call.i423 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2) #22, !dbg !3297
  br label %if.end.i, !dbg !3298

if.end.i:                                         ; preds = %if.then.i424, %if.end12
  %mapped.i425 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 3, !dbg !3299
  %7 = load i32, ptr %mapped.i425, align 8, !dbg !3299, !tbaa !1063
  %cmp1.not.i = icmp eq i32 %7, 0, !dbg !3300
  br i1 %cmp1.not.i, label %DetachBlob.exit, label %if.then2.i, !dbg !3301

if.then2.i:                                       ; preds = %if.end.i
  %data3.i = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 15, !dbg !3302
  store ptr null, ptr %data3.i, align 8, !dbg !3303, !tbaa !1060
  %8 = load i64, ptr %5, align 8, !dbg !3304, !tbaa !1042
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %8) #22, !dbg !3305
  br label %DetachBlob.exit, !dbg !3306

DetachBlob.exit:                                  ; preds = %if.end.i, %if.then2.i
  store i64 0, ptr %5, align 8, !dbg !3307, !tbaa !1042
  %exempt.i = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 7, !dbg !3308
  store i32 0, ptr %exempt.i, align 8, !dbg !3309, !tbaa !1286
  %type.i426 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 11, !dbg !3310
  store i32 0, ptr %type.i426, align 8, !dbg !3311, !tbaa !1054
  %file_info.i427 = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 12, !dbg !3312
  store ptr null, ptr %file_info.i427, align 8, !dbg !3313, !tbaa !1057
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %mapped.i425, i8 0, i64 16, i1 false) #22, !dbg !3314
  call void @llvm.dbg.value(metadata ptr undef, metadata !1264, metadata !DIExpression()) #22, !dbg !3292
  %stream.i = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 14, !dbg !3315
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %stream.i, i8 0, i64 16, i1 false) #22, !dbg !3316
  %switch.tableidx = add i32 %mode, -2, !dbg !3317
  %9 = icmp ult i32 %switch.tableidx, 5, !dbg !3317
  br i1 %9, label %switch.lookup, label %sw.epilog, !dbg !3317

switch.lookup:                                    ; preds = %DetachBlob.exit
  %10 = sext i32 %switch.tableidx to i64, !dbg !3317
  %reltable.shift = shl i64 %10, 2, !dbg !3317
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.OpenBlob, i64 %reltable.shift), !dbg !3317
  br label %sw.epilog, !dbg !3317

sw.epilog:                                        ; preds = %switch.lookup, %DetachBlob.exit
  %type.0 = phi ptr [ @.str.18, %DetachBlob.exit ], [ %reltable.intrinsic, %switch.lookup ], !dbg !3318
  call void @llvm.dbg.value(metadata ptr %type.0, metadata !3202, metadata !DIExpression()), !dbg !3242
  %11 = load i8, ptr %type.0, align 1, !dbg !3320, !tbaa !1057
  %cmp20.not = icmp eq i8 %11, 114, !dbg !3322
  br i1 %cmp20.not, label %if.end25.thread, label %if.end25, !dbg !3323

if.end25:                                         ; preds = %sw.epilog
  %synchronize = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 61, !dbg !3324
  %12 = load i32, ptr %synchronize, align 8, !dbg !3324, !tbaa !3325
  %13 = load ptr, ptr %blob13, align 8, !dbg !3326, !tbaa !1249
  %synchronize24 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 8, !dbg !3327
  store i32 %12, ptr %synchronize24, align 4, !dbg !3328, !tbaa !1458
  %stream26 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 44, !dbg !3329
  %14 = load ptr, ptr %stream26, align 8, !dbg !3329, !tbaa !3260
  %cmp27.not = icmp eq ptr %14, null, !dbg !3331
  br i1 %cmp27.not, label %if.end40, label %if.then29, !dbg !3332

if.end25.thread:                                  ; preds = %sw.epilog
  %stream26432 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 44, !dbg !3329
  %15 = load ptr, ptr %stream26432, align 8, !dbg !3329, !tbaa !3260
  %cmp27.not433 = icmp eq ptr %15, null, !dbg !3331
  br i1 %cmp27.not433, label %if.end40, label %if.then29.thread, !dbg !3332

if.then29.thread:                                 ; preds = %if.end25.thread
  %16 = load ptr, ptr %blob13, align 8, !dbg !3333, !tbaa !1249
  %stream32434 = getelementptr inbounds %struct._BlobInfo, ptr %16, i64 0, i32 14, !dbg !3335
  store ptr %15, ptr %stream32434, align 8, !dbg !3336, !tbaa !1499
  br label %if.end40, !dbg !3337

if.then29:                                        ; preds = %if.end25
  %stream32 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 14, !dbg !3335
  store ptr %14, ptr %stream32, align 8, !dbg !3336, !tbaa !1499
  %cmp34 = icmp eq i8 %11, 119, !dbg !3338
  br i1 %cmp34, label %if.then36, label %if.end40, !dbg !3337

if.then36:                                        ; preds = %if.then29
  %type38 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 11, !dbg !3340
  store i32 6, ptr %type38, align 8, !dbg !3342, !tbaa !1054
  br label %cleanup, !dbg !3343

if.end40:                                         ; preds = %if.then29.thread, %if.end25.thread, %if.then29, %if.end25
  store i8 0, ptr %filename, align 16, !dbg !3344, !tbaa !1057
  %filename43 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3345
  %call45 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename43, i64 noundef 4096) #22, !dbg !3346
  call void @llvm.dbg.value(metadata i32 1, metadata !3204, metadata !DIExpression()), !dbg !3242
  %cmp47 = icmp eq i8 %11, 119, !dbg !3347
  %spec.store.select = select i1 %cmp47, i32 2, i32 1, !dbg !3349
  call void @llvm.dbg.value(metadata i32 %spec.store.select, metadata !3204, metadata !DIExpression()), !dbg !3242
  %call52 = call i32 @IsRightsAuthorized(i32 noundef 4, i32 noundef %spec.store.select, ptr noundef nonnull %filename) #22, !dbg !3350
  %cmp53 = icmp eq i32 %call52, 0, !dbg !3352
  br i1 %cmp53, label %if.then55, label %if.end59, !dbg !3353

if.then55:                                        ; preds = %if.end40
  %call56 = tail call ptr @__errno_location() #23, !dbg !3354
  store i32 1, ptr %call56, align 4, !dbg !3356, !tbaa !1119
  %call58 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2413, i32 noundef 499, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename) #22, !dbg !3357
  br label %cleanup, !dbg !3358

if.end59:                                         ; preds = %if.end40
  %call61 = call i32 @LocaleCompare(ptr noundef nonnull %filename, ptr noundef nonnull @.str.11) #22, !dbg !3359
  %cmp62 = icmp eq i32 %call61, 0, !dbg !3361
  br i1 %cmp62, label %if.then70, label %lor.lhs.false, !dbg !3362

lor.lhs.false:                                    ; preds = %if.end59
  %17 = load i8, ptr %filename, align 16, !dbg !3363, !tbaa !1057
  %cmp66 = icmp eq i8 %17, 0, !dbg !3364
  br i1 %cmp66, label %land.lhs.true, label %if.end78, !dbg !3365

land.lhs.true:                                    ; preds = %lor.lhs.false
  %file = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 45, !dbg !3366
  %18 = load ptr, ptr %file, align 8, !dbg !3366, !tbaa !2569
  %cmp68 = icmp eq ptr %18, null, !dbg !3367
  br i1 %cmp68, label %if.then70, label %if.end78, !dbg !3368

if.then70:                                        ; preds = %land.lhs.true, %if.end59
  %stdin.val = load ptr, ptr @stdin, align 8, !dbg !3369
  %stdout.val = load ptr, ptr @stdout, align 8, !dbg !3369
  %cond = select i1 %cmp20.not, ptr %stdin.val, ptr %stdout.val, !dbg !3369
  %19 = load ptr, ptr %blob13, align 8, !dbg !3371, !tbaa !1249
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %19, i64 0, i32 12, !dbg !3372
  store ptr %cond, ptr %file_info, align 8, !dbg !3373, !tbaa !1057
  %20 = load ptr, ptr %blob13, align 8, !dbg !3374, !tbaa !1249
  %type76 = getelementptr inbounds %struct._BlobInfo, ptr %20, i64 0, i32 11, !dbg !3375
  store i32 2, ptr %type76, align 8, !dbg !3376, !tbaa !1054
  %exempt = getelementptr inbounds %struct._BlobInfo, ptr %20, i64 0, i32 7, !dbg !3377
  store i32 1, ptr %exempt, align 8, !dbg !3378, !tbaa !1286
  br label %cleanup, !dbg !3379

if.end78:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call80 = call i32 @LocaleNCompare(ptr noundef nonnull %filename, ptr noundef nonnull @.str.25, i64 noundef 3) #22, !dbg !3380
  %cmp81 = icmp eq i32 %call80, 0, !dbg !3381
  br i1 %cmp81, label %if.then83, label %if.end97, !dbg !3382

if.then83:                                        ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %mode84) #22, !dbg !3383
  call void @llvm.dbg.declare(metadata ptr %mode84, metadata !3206, metadata !DIExpression()), !dbg !3384
  store i8 %11, ptr %mode84, align 16, !dbg !3385, !tbaa !1057
  %arrayidx = getelementptr inbounds [4096 x i8], ptr %mode84, i64 0, i64 1, !dbg !3386
  store i8 0, ptr %arrayidx, align 1, !dbg !3387, !tbaa !1057
  %add.ptr = getelementptr inbounds i8, ptr %filename, i64 3, !dbg !3388
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3389, metadata !DIExpression()) #22, !dbg !3395
  %call.i428 = call i64 @strtol(ptr nocapture noundef nonnull %add.ptr, ptr noundef null, i32 noundef 10) #22, !dbg !3397
  %conv88 = trunc i64 %call.i428 to i32, !dbg !3398
  %call90 = call ptr @fdopen(i32 noundef %conv88, ptr noundef nonnull %mode84) #22, !dbg !3399
  %21 = load ptr, ptr %blob13, align 8, !dbg !3400, !tbaa !1249
  %file_info92 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 12, !dbg !3401
  store ptr %call90, ptr %file_info92, align 8, !dbg !3402, !tbaa !1057
  %22 = load ptr, ptr %blob13, align 8, !dbg !3403, !tbaa !1249
  %type94 = getelementptr inbounds %struct._BlobInfo, ptr %22, i64 0, i32 11, !dbg !3404
  store i32 2, ptr %type94, align 8, !dbg !3405, !tbaa !1054
  %exempt96 = getelementptr inbounds %struct._BlobInfo, ptr %22, i64 0, i32 7, !dbg !3406
  store i32 1, ptr %exempt96, align 8, !dbg !3407, !tbaa !1286
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %mode84) #22, !dbg !3408
  br label %cleanup

if.end97:                                         ; preds = %if.end78
  %23 = load ptr, ptr %blob13, align 8, !dbg !3409, !tbaa !1249
  %properties = getelementptr inbounds %struct._BlobInfo, ptr %23, i64 0, i32 13, !dbg !3410
  %call100 = call i32 @GetPathAttributes(ptr noundef nonnull %filename, ptr noundef nonnull %properties) #22, !dbg !3411
  call void @llvm.dbg.value(metadata i32 %call100, metadata !3203, metadata !DIExpression()), !dbg !3242
  %cmp101.not = icmp eq i32 %call100, 0, !dbg !3412
  br i1 %cmp101.not, label %if.end128, label %land.lhs.true103, !dbg !3413

land.lhs.true103:                                 ; preds = %if.end97
  %24 = load ptr, ptr %blob13, align 8, !dbg !3414, !tbaa !1249
  %st_mode = getelementptr inbounds %struct._BlobInfo, ptr %24, i64 0, i32 13, i32 3, !dbg !3414
  %25 = load i32, ptr %st_mode, align 8, !dbg !3414, !tbaa !3415
  %and = and i32 %25, 61440, !dbg !3414
  %cmp106 = icmp eq i32 %and, 4096, !dbg !3414
  br i1 %cmp106, label %if.then108, label %if.end128, !dbg !3416

if.then108:                                       ; preds = %land.lhs.true103
  call void @llvm.dbg.value(metadata ptr %filename, metadata !3417, metadata !DIExpression()) #22, !dbg !3423
  call void @llvm.dbg.value(metadata ptr %type.0, metadata !3422, metadata !DIExpression()) #22, !dbg !3423
  %call.i429 = call ptr @fopen(ptr noundef nonnull %filename, ptr noundef nonnull %type.0) #22, !dbg !3425
  %26 = load ptr, ptr %blob13, align 8, !dbg !3426, !tbaa !1249
  %file_info112 = getelementptr inbounds %struct._BlobInfo, ptr %26, i64 0, i32 12, !dbg !3427
  store ptr %call.i429, ptr %file_info112, align 8, !dbg !3428, !tbaa !1057
  %27 = load ptr, ptr %blob13, align 8, !dbg !3429, !tbaa !1249
  %file_info114 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 12, !dbg !3430
  %28 = load ptr, ptr %file_info114, align 8, !dbg !3431, !tbaa !1057
  %cmp115 = icmp eq ptr %28, null, !dbg !3432
  br i1 %cmp115, label %if.then117, label %if.end123, !dbg !3433

if.then117:                                       ; preds = %if.then108
  %call118 = tail call ptr @__errno_location() #23, !dbg !3434
  %29 = load i32, ptr %call118, align 4, !dbg !3434, !tbaa !1119
  %call119 = call ptr @GetExceptionMessage(i32 noundef %29) #22, !dbg !3434
  call void @llvm.dbg.value(metadata ptr %call119, metadata !3209, metadata !DIExpression()), !dbg !3435
  %call121 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2478, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename, ptr noundef %call119) #22, !dbg !3434
  %call122 = call ptr @DestroyString(ptr noundef %call119) #22, !dbg !3434
  call void @llvm.dbg.value(metadata ptr %call122, metadata !3209, metadata !DIExpression()), !dbg !3435
  br label %cleanup, !dbg !3436

if.end123:                                        ; preds = %if.then108
  %type125 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 11, !dbg !3437
  store i32 1, ptr %type125, align 8, !dbg !3438, !tbaa !1054
  %exempt127 = getelementptr inbounds %struct._BlobInfo, ptr %27, i64 0, i32 7, !dbg !3439
  store i32 1, ptr %exempt127, align 8, !dbg !3440, !tbaa !1286
  br label %cleanup, !dbg !3441

if.end128:                                        ; preds = %land.lhs.true103, %if.end97
  call void @GetPathComponent(ptr noundef nonnull %filename43, i32 noundef 6, ptr noundef nonnull %extension) #22, !dbg !3442
  br i1 %cmp47, label %if.then135, label %if.end194, !dbg !3443

if.then135:                                       ; preds = %if.end128
  %call139 = call i64 @CopyMagickString(ptr noundef nonnull %filename, ptr noundef nonnull %filename43, i64 noundef 4096) #22, !dbg !3444
  %adjoin = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 3, !dbg !3445
  %30 = load i32, ptr %adjoin, align 4, !dbg !3445, !tbaa !2474
  %cmp140 = icmp eq i32 %30, 0, !dbg !3446
  br i1 %cmp140, label %if.then147, label %lor.lhs.false142, !dbg !3447

lor.lhs.false142:                                 ; preds = %if.then135
  %call144 = call ptr @strchr(ptr noundef nonnull %filename, i32 noundef 37) #28, !dbg !3448
  %cmp145.not = icmp eq ptr %call144, null, !dbg !3449
  br i1 %cmp145.not, label %if.end194, label %if.then147, !dbg !3450

if.then147:                                       ; preds = %lor.lhs.false142, %if.then135
  %scene = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 39, !dbg !3451
  %31 = load i64, ptr %scene, align 8, !dbg !3451, !tbaa !3452
  %conv150 = trunc i64 %31 to i32, !dbg !3453
  %call152 = call i64 @InterpretImageFilename(ptr noundef nonnull %image_info, ptr noundef nonnull %image, ptr noundef nonnull %filename43, i32 noundef %conv150, ptr noundef nonnull %filename) #22, !dbg !3454
  %call156 = call i32 @LocaleCompare(ptr noundef nonnull %filename, ptr noundef nonnull %filename43) #22, !dbg !3455
  %cmp157 = icmp eq i32 %call156, 0, !dbg !3456
  br i1 %cmp157, label %land.lhs.true159, label %if.end188, !dbg !3457

land.lhs.true159:                                 ; preds = %if.then147
  %call160 = call ptr @GetPreviousImageInList(ptr noundef nonnull %image) #22, !dbg !3458
  %cmp161.not = icmp eq ptr %call160, null, !dbg !3459
  br i1 %cmp161.not, label %lor.lhs.false163, label %if.then167, !dbg !3460

lor.lhs.false163:                                 ; preds = %land.lhs.true159
  %call164 = call ptr @GetNextImageInList(ptr noundef nonnull %image) #22, !dbg !3461
  %cmp165.not = icmp eq ptr %call164, null, !dbg !3462
  br i1 %cmp165.not, label %if.end188, label %if.then167, !dbg !3463

if.then167:                                       ; preds = %lor.lhs.false163, %land.lhs.true159
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #22, !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3215, metadata !DIExpression()), !dbg !3465
  call void @GetPathComponent(ptr noundef nonnull %filename43, i32 noundef 2, ptr noundef nonnull %path) #22, !dbg !3466
  %32 = load i8, ptr %extension, align 16, !dbg !3467, !tbaa !1057
  %cmp173 = icmp eq i8 %32, 0, !dbg !3469
  %33 = load i64, ptr %scene, align 8, !dbg !3470, !tbaa !3452
  %conv179 = uitofp i64 %33 to double, !dbg !3470
  br i1 %cmp173, label %if.then175, label %if.else, !dbg !3471

if.then175:                                       ; preds = %if.then167
  %call180 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename, i64 noundef 4096, ptr noundef nonnull @.str.26, ptr noundef nonnull %path, double noundef %conv179) #22, !dbg !3472
  br label %if.end187, !dbg !3473

if.else:                                          ; preds = %if.then167
  %call186 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %filename, i64 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef nonnull %path, double noundef %conv179, ptr noundef nonnull %extension) #22, !dbg !3474
  br label %if.end187

if.end187:                                        ; preds = %if.else, %if.then175
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #22, !dbg !3475
  br label %if.end188, !dbg !3476

if.end188:                                        ; preds = %if.end187, %lor.lhs.false163, %if.then147
  %call192 = call i64 @CopyMagickString(ptr noundef nonnull %filename43, ptr noundef nonnull %filename, i64 noundef 4096) #22, !dbg !3477
  br label %if.end194, !dbg !3478

if.end194:                                        ; preds = %lor.lhs.false142, %if.end188, %if.end128
  %file195 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 45, !dbg !3479
  %34 = load ptr, ptr %file195, align 8, !dbg !3479, !tbaa !2569
  %cmp196.not = icmp eq ptr %34, null, !dbg !3480
  br i1 %cmp196.not, label %if.else206, label %if.then198, !dbg !3481

if.then198:                                       ; preds = %if.end194
  %35 = load ptr, ptr %blob13, align 8, !dbg !3482, !tbaa !1249
  %file_info201 = getelementptr inbounds %struct._BlobInfo, ptr %35, i64 0, i32 12, !dbg !3484
  store ptr %34, ptr %file_info201, align 8, !dbg !3485, !tbaa !1057
  %36 = load ptr, ptr %blob13, align 8, !dbg !3486, !tbaa !1249
  %type203 = getelementptr inbounds %struct._BlobInfo, ptr %36, i64 0, i32 11, !dbg !3487
  store i32 1, ptr %type203, align 8, !dbg !3488, !tbaa !1054
  %exempt205 = getelementptr inbounds %struct._BlobInfo, ptr %36, i64 0, i32 7, !dbg !3489
  store i32 1, ptr %exempt205, align 8, !dbg !3490, !tbaa !1286
  br label %if.end305, !dbg !3491

if.else206:                                       ; preds = %if.end194
  call void @llvm.dbg.value(metadata ptr %filename, metadata !3417, metadata !DIExpression()) #22, !dbg !3492
  call void @llvm.dbg.value(metadata ptr %filename, metadata !3417, metadata !DIExpression()) #22, !dbg !3494
  call void @llvm.dbg.value(metadata ptr %type.0, metadata !3422, metadata !DIExpression()) #22, !dbg !3492
  call void @llvm.dbg.value(metadata ptr %type.0, metadata !3422, metadata !DIExpression()) #22, !dbg !3494
  %call.i430 = call ptr @fopen(ptr noundef nonnull %filename, ptr noundef nonnull %type.0) #22, !dbg !3497
  %37 = load ptr, ptr %blob13, align 8, !dbg !3497, !tbaa !1249
  %file_info214 = getelementptr inbounds %struct._BlobInfo, ptr %37, i64 0, i32 12, !dbg !3497
  store ptr %call.i430, ptr %file_info214, align 8, !dbg !3497, !tbaa !1057
  %38 = load ptr, ptr %blob13, align 8, !dbg !3497, !tbaa !1249
  %file_info216 = getelementptr inbounds %struct._BlobInfo, ptr %38, i64 0, i32 12, !dbg !3497
  %39 = load ptr, ptr %file_info216, align 8, !dbg !3497, !tbaa !1057
  %cmp217.not = icmp eq ptr %39, null, !dbg !3497
  br i1 %cmp20.not, label %if.then210, label %if.else291, !dbg !3498

if.then210:                                       ; preds = %if.else206
  br i1 %cmp217.not, label %if.end305, label %if.then219, !dbg !3499

if.then219:                                       ; preds = %if.then210
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %magick) #22, !dbg !3500
  call void @llvm.dbg.declare(metadata ptr %magick, metadata !3228, metadata !DIExpression()), !dbg !3501
  %type221 = getelementptr inbounds %struct._BlobInfo, ptr %38, i64 0, i32 11, !dbg !3502
  store i32 1, ptr %type221, align 8, !dbg !3503, !tbaa !1054
  %call223 = call ptr @ResetMagickMemory(ptr noundef nonnull %magick, i32 noundef 0, i64 noundef 3) #22, !dbg !3504
  %40 = load ptr, ptr %blob13, align 8, !dbg !3505, !tbaa !1249
  %file_info226 = getelementptr inbounds %struct._BlobInfo, ptr %40, i64 0, i32 12, !dbg !3506
  %41 = load ptr, ptr %file_info226, align 8, !dbg !3507, !tbaa !1057
  %call227 = call i64 @fread(ptr noundef nonnull %magick, i64 noundef 1, i64 noundef 3, ptr noundef %41), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %call227, metadata !3222, metadata !DIExpression()), !dbg !3509
  %42 = load ptr, ptr %blob13, align 8, !dbg !3510, !tbaa !1249
  %file_info229 = getelementptr inbounds %struct._BlobInfo, ptr %42, i64 0, i32 12, !dbg !3511
  %43 = load ptr, ptr %file_info229, align 8, !dbg !3512, !tbaa !1057
  %sub = sub nsw i64 0, %call227, !dbg !3513
  %call230 = call i32 @fseek(ptr noundef %43, i64 noundef %sub, i32 noundef 1), !dbg !3514
  %44 = load ptr, ptr %blob13, align 8, !dbg !3515, !tbaa !1249
  %file_info232 = getelementptr inbounds %struct._BlobInfo, ptr %44, i64 0, i32 12, !dbg !3516
  %45 = load ptr, ptr %file_info232, align 8, !dbg !3517, !tbaa !1057
  %call233 = call i32 @fflush(ptr noundef %45), !dbg !3518
  %conv234 = uitofp i64 %call227 to double, !dbg !3519
  %call235 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2546, ptr noundef nonnull @.str.28, double noundef %conv234) #22, !dbg !3520
  %46 = load ptr, ptr %blob13, align 8, !dbg !3521, !tbaa !1249
  %type237 = getelementptr inbounds %struct._BlobInfo, ptr %46, i64 0, i32 11, !dbg !3522
  %47 = load i32, ptr %type237, align 8, !dbg !3522, !tbaa !1054
  %cmp238 = icmp eq i32 %47, 1, !dbg !3523
  br i1 %cmp238, label %if.then240, label %if.end289, !dbg !3524

if.then240:                                       ; preds = %if.then219
  %call242 = call ptr @AcquireExceptionInfo() #22, !dbg !3525
  call void @llvm.dbg.value(metadata ptr %call242, metadata !3233, metadata !DIExpression()), !dbg !3526
  %magick243 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !3527
  %call245 = call ptr @GetMagickInfo(ptr noundef nonnull %magick243, ptr noundef %call242) #22, !dbg !3528
  call void @llvm.dbg.value(metadata ptr %call245, metadata !3230, metadata !DIExpression()), !dbg !3526
  %call246 = call ptr @DestroyExceptionInfo(ptr noundef %call242) #22, !dbg !3529
  call void @llvm.dbg.value(metadata ptr %call246, metadata !3233, metadata !DIExpression()), !dbg !3526
  %48 = load ptr, ptr %blob13, align 8, !dbg !3530, !tbaa !1249
  %st_size = getelementptr inbounds %struct._BlobInfo, ptr %48, i64 0, i32 13, i32 8, !dbg !3531
  %49 = load i64, ptr %st_size, align 8, !dbg !3531, !tbaa !3532
  call void @llvm.dbg.value(metadata i64 %49, metadata !3234, metadata !DIExpression()), !dbg !3526
  %cmp249.not = icmp eq ptr %call245, null, !dbg !3533
  br i1 %cmp249.not, label %if.end289, label %land.lhs.true251, !dbg !3534

land.lhs.true251:                                 ; preds = %if.then240
  %call252 = call i32 @GetMagickBlobSupport(ptr noundef nonnull %call245) #22, !dbg !3535
  %cmp253 = icmp ne i32 %call252, 0, !dbg !3536
  %cmp256 = icmp ult i64 %49, 262143
  %or.cond = select i1 %cmp253, i1 %cmp256, i1 false, !dbg !3537
  br i1 %or.cond, label %land.lhs.true258, label %if.end289, !dbg !3537

land.lhs.true258:                                 ; preds = %land.lhs.true251
  %call259 = call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %49) #22, !dbg !3538
  %cmp260.not = icmp eq i32 %call259, 0, !dbg !3539
  br i1 %cmp260.not, label %if.end289, label %if.then262, !dbg !3540

if.then262:                                       ; preds = %land.lhs.true258
  %50 = load ptr, ptr %blob13, align 8, !dbg !3541, !tbaa !1249
  %file_info265 = getelementptr inbounds %struct._BlobInfo, ptr %50, i64 0, i32 12, !dbg !3542
  %51 = load ptr, ptr %file_info265, align 8, !dbg !3543, !tbaa !1057
  %call266 = call i32 @fileno(ptr noundef %51) #22, !dbg !3544
  call void @llvm.dbg.value(metadata ptr null, metadata !3235, metadata !DIExpression()), !dbg !3545
  call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %49) #22, !dbg !3546
  br label %if.end289, !dbg !3548

if.end289:                                        ; preds = %if.then240, %land.lhs.true251, %land.lhs.true258, %if.then262, %if.then219
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %magick) #22, !dbg !3549
  %.pre436 = load ptr, ptr %blob13, align 8, !dbg !3550, !tbaa !1249
  br label %if.end305, !dbg !3551

if.else291:                                       ; preds = %if.else206
  br i1 %cmp217.not, label %if.end305, label %if.then300, !dbg !3552

if.then300:                                       ; preds = %if.else291
  %type302 = getelementptr inbounds %struct._BlobInfo, ptr %38, i64 0, i32 11, !dbg !3553
  store i32 1, ptr %type302, align 8, !dbg !3556, !tbaa !1054
  br label %if.end305, !dbg !3557

if.end305:                                        ; preds = %if.end289, %if.then210, %if.then300, %if.else291, %if.then198
  %52 = phi ptr [ %.pre436, %if.end289 ], [ %38, %if.then210 ], [ %38, %if.then300 ], [ %38, %if.else291 ], [ %36, %if.then198 ], !dbg !3550
  %status307 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 9, !dbg !3558
  store i32 0, ptr %status307, align 8, !dbg !3559, !tbaa !1481
  %type309 = getelementptr inbounds %struct._BlobInfo, ptr %52, i64 0, i32 11, !dbg !3560
  %53 = load i32, ptr %type309, align 8, !dbg !3560, !tbaa !1054
  %cmp310.not = icmp eq i32 %53, 0, !dbg !3561
  br i1 %cmp310.not, label %if.else315, label %if.then312, !dbg !3562

if.then312:                                       ; preds = %if.end305
  %call313 = call i64 @GetBlobSize(ptr noundef nonnull %image), !dbg !3563
  %54 = load ptr, ptr %blob13, align 8, !dbg !3564, !tbaa !1249
  %size = getelementptr inbounds %struct._BlobInfo, ptr %54, i64 0, i32 6, !dbg !3565
  store i64 %call313, ptr %size, align 8, !dbg !3566, !tbaa !1474
  br label %cleanup, !dbg !3567

if.else315:                                       ; preds = %if.end305
  %call317 = tail call ptr @__errno_location() #23, !dbg !3568
  %55 = load i32, ptr %call317, align 4, !dbg !3568, !tbaa !1119
  %call318 = call ptr @GetExceptionMessage(i32 noundef %55) #22, !dbg !3568
  call void @llvm.dbg.value(metadata ptr %call318, metadata !3238, metadata !DIExpression()), !dbg !3569
  %call320 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2657, i32 noundef 435, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename, ptr noundef %call318) #22, !dbg !3568
  %call321 = call ptr @DestroyString(ptr noundef %call318) #22, !dbg !3568
  call void @llvm.dbg.value(metadata ptr %call321, metadata !3238, metadata !DIExpression()), !dbg !3569
  br label %cleanup, !dbg !3570

cleanup:                                          ; preds = %if.then312, %if.else315, %if.end123, %if.then117, %if.then83, %if.then70, %if.then55, %if.then36, %AttachBlob.exit
  %retval.0 = phi i32 [ 1, %AttachBlob.exit ], [ 1, %if.then36 ], [ 0, %if.then55 ], [ 1, %if.then70 ], [ 1, %if.then83 ], [ 0, %if.then117 ], [ 1, %if.end123 ], [ 1, %if.then312 ], [ 0, %if.else315 ], !dbg !3242
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename) #22, !dbg !3571
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %extension) #22, !dbg !3571
  ret i32 %retval.0, !dbg !3571
}

declare !dbg !3572 i32 @IsRightsAuthorized(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3578 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !3581 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #18

declare !dbg !3585 i64 @InterpretImageFilename(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3588 ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !3589 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !3592 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #9

declare !dbg !3593 ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare !dbg !3596 i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PingBlob(ptr noundef %image_info, ptr noundef readonly %blob, i64 noundef %length, ptr noundef %exception) local_unnamed_addr #0 !dbg !3599 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !3601, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %blob, metadata !3602, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 %length, metadata !3603, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3604, metadata !DIExpression()), !dbg !3607
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !3608
  %0 = load i32, ptr %debug, align 8, !dbg !3608, !tbaa !1196
  %cmp.not = icmp eq i32 %0, 0, !dbg !3610
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3611

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !3612
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2726, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !3613
  br label %if.end, !dbg !3614

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %blob, null, !dbg !3615
  %cmp2 = icmp eq i64 %length, 0
  %or.cond = or i1 %cmp1, %cmp2, !dbg !3617
  br i1 %or.cond, label %if.then3, label %if.end6, !dbg !3617

if.then3:                                         ; preds = %if.end
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !3618
  %call5 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2731, i32 noundef 435, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.7, ptr noundef nonnull %magick) #22, !dbg !3620
  br label %cleanup, !dbg !3621

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @CloneImageInfo(ptr noundef nonnull %image_info) #22, !dbg !3622
  call void @llvm.dbg.value(metadata ptr %call7, metadata !3606, metadata !DIExpression()), !dbg !3607
  %call8 = tail call ptr @AcquireQuantumMemory(i64 noundef %length, i64 noundef 1) #26, !dbg !3623
  %blob9 = getelementptr inbounds %struct._ImageInfo, ptr %call7, i64 0, i32 46, !dbg !3624
  store ptr %call8, ptr %blob9, align 8, !dbg !3625, !tbaa !1216
  %cmp11 = icmp eq ptr %call8, null, !dbg !3626
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !3628

if.then12:                                        ; preds = %if.end6
  %call13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2739, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #22, !dbg !3629
  br label %cleanup, !dbg !3631

if.end14:                                         ; preds = %if.end6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call8, ptr nonnull align 1 %blob, i64 %length, i1 false), !dbg !3632
  %length16 = getelementptr inbounds %struct._ImageInfo, ptr %call7, i64 0, i32 47, !dbg !3633
  store i64 %length, ptr %length16, align 8, !dbg !3634, !tbaa !1219
  %ping = getelementptr inbounds %struct._ImageInfo, ptr %call7, i64 0, i32 34, !dbg !3635
  store i32 1, ptr %ping, align 8, !dbg !3636, !tbaa !3637
  %call17 = tail call ptr @ReadStream(ptr noundef nonnull %call7, ptr noundef nonnull @PingStream, ptr noundef %exception) #22, !dbg !3638
  call void @llvm.dbg.value(metadata ptr %call17, metadata !3605, metadata !DIExpression()), !dbg !3607
  %1 = load ptr, ptr %blob9, align 8, !dbg !3639, !tbaa !1216
  %call19 = tail call ptr @RelinquishMagickMemory(ptr noundef %1) #22, !dbg !3640
  store ptr %call19, ptr %blob9, align 8, !dbg !3641, !tbaa !1216
  %call21 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call7) #22, !dbg !3642
  call void @llvm.dbg.value(metadata ptr %call21, metadata !3606, metadata !DIExpression()), !dbg !3607
  br label %cleanup, !dbg !3643

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %if.then12 ], [ %call17, %if.end14 ], !dbg !3607
  ret ptr %retval.0, !dbg !3644
}

declare !dbg !3645 ptr @ReadStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal i64 @PingStream(ptr nocapture noundef readnone %image, ptr nocapture noundef readnone %pixels, i64 noundef returned %columns) #11 !dbg !3648 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3650, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !3651, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %columns, metadata !3652, metadata !DIExpression()), !dbg !3653
  ret i64 %columns, !dbg !3654
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @ReadBlob(ptr nocapture noundef readonly %image, i64 noundef %length, ptr nocapture noundef %data) local_unnamed_addr #12 !dbg !3655 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3659, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %length, metadata !3660, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %data, metadata !3661, metadata !DIExpression()), !dbg !3670
  %cmp = icmp eq i64 %length, 0, !dbg !3671
  br i1 %cmp, label %cleanup66, label %if.end, !dbg !3673

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !3664, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %data, metadata !3663, metadata !DIExpression()), !dbg !3670
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !3674
  %0 = load ptr, ptr %blob, align 8, !dbg !3674, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !3675
  %1 = load i32, ptr %type, align 8, !dbg !3675, !tbaa !1054
  switch i32 %1, label %cleanup66 [
    i32 7, label %sw.bb36
    i32 2, label %for.cond.preheader
    i32 1, label %sw.bb12
    i32 3, label %sw.bb12
  ], !dbg !3676

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !3665, metadata !DIExpression()), !dbg !3677
  %cmp1107 = icmp sgt i64 %length, 0, !dbg !3678
  br i1 %cmp1107, label %for.body, label %cleanup66, !dbg !3681

for.body:                                         ; preds = %for.cond.preheader, %for.inc.for.body_crit_edge
  %2 = phi ptr [ %.pre111, %for.inc.for.body_crit_edge ], [ %0, %for.cond.preheader ], !dbg !3682
  %i.0108 = phi i64 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0108, metadata !3665, metadata !DIExpression()), !dbg !3677
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 12, !dbg !3684
  %3 = load ptr, ptr %file_info, align 8, !dbg !3685, !tbaa !1057
  %call = tail call i32 @fileno(ptr noundef %3) #22, !dbg !3686
  %add.ptr = getelementptr inbounds i8, ptr %data, i64 %i.0108, !dbg !3687
  %sub = sub i64 %length, %i.0108, !dbg !3688
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1125, metadata !DIExpression()) #22, !dbg !3689
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1130, metadata !DIExpression()) #22, !dbg !3689
  %4 = tail call i64 @llvm.umin.i64(i64 %sub, i64 9223372036854775807) #22, !dbg !3689
  %call4 = tail call i64 @read(i32 noundef %call, ptr noundef %add.ptr, i64 noundef %4) #22, !dbg !3691
  call void @llvm.dbg.value(metadata i64 %call4, metadata !3664, metadata !DIExpression()), !dbg !3670
  %cmp5 = icmp slt i64 %call4, 1, !dbg !3692
  br i1 %cmp5, label %if.then6, label %for.inc, !dbg !3694

if.then6:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !3664, metadata !DIExpression()), !dbg !3670
  %call7 = tail call ptr @__errno_location() #23, !dbg !3695
  %5 = load i32, ptr %call7, align 4, !dbg !3695, !tbaa !1119
  %cmp8.not = icmp eq i32 %5, 4, !dbg !3698
  br i1 %cmp8.not, label %for.inc, label %cleanup66, !dbg !3699

for.inc:                                          ; preds = %for.body, %if.then6
  %count.0 = phi i64 [ 0, %if.then6 ], [ %call4, %for.body ], !dbg !3700
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !3664, metadata !DIExpression()), !dbg !3670
  %add = add nsw i64 %count.0, %i.0108, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %add, metadata !3665, metadata !DIExpression()), !dbg !3677
  %cmp1 = icmp slt i64 %add, %length, !dbg !3678
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %cleanup66, !dbg !3681, !llvm.loop !3702

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre111 = load ptr, ptr %blob, align 8, !dbg !3682, !tbaa !1249
  br label %for.body, !dbg !3681

sw.bb12:                                          ; preds = %if.end, %if.end
  switch i64 %length, label %sw.default [
    i64 2, label %sw.bb16
    i64 1, label %sw.bb23
  ], !dbg !3704

sw.default:                                       ; preds = %sw.bb12
  %file_info14 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12, !dbg !3706
  %6 = load ptr, ptr %file_info14, align 8, !dbg !3709, !tbaa !1057
  %call15 = tail call i64 @fread(ptr noundef %data, i64 noundef 1, i64 noundef %length, ptr noundef %6), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %call15, metadata !3664, metadata !DIExpression()), !dbg !3670
  br label %cleanup66, !dbg !3711

sw.bb16:                                          ; preds = %sw.bb12
  %file_info18 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12, !dbg !3712
  %7 = load ptr, ptr %file_info18, align 8, !dbg !3714, !tbaa !1057
  %call19 = tail call i32 @getc(ptr noundef %7), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %call19, metadata !3662, metadata !DIExpression()), !dbg !3670
  %cmp20 = icmp eq i32 %call19, -1, !dbg !3716
  br i1 %cmp20, label %cleanup66, label %if.end22, !dbg !3718

if.end22:                                         ; preds = %sw.bb16
  %conv = trunc i32 %call19 to i8, !dbg !3719
  %incdec.ptr = getelementptr inbounds i8, ptr %data, i64 1, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3663, metadata !DIExpression()), !dbg !3670
  store i8 %conv, ptr %data, align 1, !dbg !3721, !tbaa !1057
  call void @llvm.dbg.value(metadata i64 1, metadata !3664, metadata !DIExpression()), !dbg !3670
  %.pre = load ptr, ptr %blob, align 8, !dbg !3722, !tbaa !1249
  br label %sw.bb23, !dbg !3724

sw.bb23:                                          ; preds = %sw.bb12, %if.end22
  %8 = phi ptr [ %0, %sw.bb12 ], [ %.pre, %if.end22 ], !dbg !3722
  %q.0 = phi ptr [ %data, %sw.bb12 ], [ %incdec.ptr, %if.end22 ], !dbg !3670
  %count.1 = phi i64 [ 0, %sw.bb12 ], [ 1, %if.end22 ], !dbg !3670
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !3664, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !3663, metadata !DIExpression()), !dbg !3670
  %file_info25 = getelementptr inbounds %struct._BlobInfo, ptr %8, i64 0, i32 12, !dbg !3725
  %9 = load ptr, ptr %file_info25, align 8, !dbg !3726, !tbaa !1057
  %call26 = tail call i32 @getc(ptr noundef %9), !dbg !3727
  call void @llvm.dbg.value(metadata i32 %call26, metadata !3662, metadata !DIExpression()), !dbg !3670
  %cmp27 = icmp eq i32 %call26, -1, !dbg !3728
  br i1 %cmp27, label %cleanup66, label %if.end30, !dbg !3730

if.end30:                                         ; preds = %sw.bb23
  %conv31 = trunc i32 %call26 to i8, !dbg !3731
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !3663, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3670
  store i8 %conv31, ptr %q.0, align 1, !dbg !3732, !tbaa !1057
  %inc33 = add nuw nsw i64 %count.1, 1, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %inc33, metadata !3664, metadata !DIExpression()), !dbg !3670
  br label %cleanup66, !dbg !3734

sw.bb36:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !3735
  %10 = load i64, ptr %offset, align 8, !dbg !3735, !tbaa !1051
  %11 = load i64, ptr %0, align 8, !dbg !3737, !tbaa !1042
  %cmp40.not = icmp sgt i64 %11, %10, !dbg !3738
  br i1 %cmp40.not, label %if.end44, label %if.then42, !dbg !3739

if.then42:                                        ; preds = %sw.bb36
  %eof = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !3740
  store i32 1, ptr %eof, align 4, !dbg !3742, !tbaa !1467
  br label %cleanup66, !dbg !3743

if.end44:                                         ; preds = %sw.bb36
  %data46 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !3744
  %12 = load ptr, ptr %data46, align 8, !dbg !3744, !tbaa !1060
  %add.ptr49 = getelementptr inbounds i8, ptr %12, i64 %10, !dbg !3745
  call void @llvm.dbg.value(metadata ptr %add.ptr49, metadata !3668, metadata !DIExpression()), !dbg !3746
  %sub54 = sub i64 %11, %10, !dbg !3747
  call void @llvm.dbg.value(metadata i64 %length, metadata !1125, metadata !DIExpression()) #22, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %sub54, metadata !1130, metadata !DIExpression()) #22, !dbg !3748
  %13 = tail call i64 @llvm.umin.i64(i64 %length, i64 %sub54) #22, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %13, metadata !3664, metadata !DIExpression()), !dbg !3670
  %add58 = add nsw i64 %13, %10, !dbg !3750
  store i64 %add58, ptr %offset, align 8, !dbg !3750, !tbaa !1051
  %cmp59.not.not = icmp ult i64 %sub54, %length, !dbg !3751
  br i1 %cmp59.not.not, label %if.then61, label %if.end64, !dbg !3753

if.then61:                                        ; preds = %if.end44
  %eof63 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !3754
  store i32 1, ptr %eof63, align 4, !dbg !3755, !tbaa !1467
  br label %if.end64, !dbg !3756

if.end64:                                         ; preds = %if.then61, %if.end44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %data, ptr align 1 %add.ptr49, i64 %13, i1 false), !dbg !3757
  br label %cleanup66, !dbg !3758

cleanup66:                                        ; preds = %for.inc, %if.then6, %for.cond.preheader, %if.end, %sw.bb23, %sw.bb16, %if.end30, %sw.default, %if.end64, %if.then42, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.end ], [ %call15, %sw.default ], [ %count.1, %sw.bb23 ], [ %inc33, %if.end30 ], [ 0, %sw.bb16 ], [ 0, %if.then42 ], [ %13, %if.end64 ], [ 0, %for.cond.preheader ], [ %add, %for.inc ], [ %i.0108, %if.then6 ], !dbg !3670
  ret i64 %retval.0, !dbg !3759
}

; Function Attrs: nofree nounwind
declare !dbg !3760 noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ReadBlobByte(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !3761 {
entry:
  %buffer = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !3763, metadata !DIExpression()), !dbg !3768
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer) #22, !dbg !3769
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !3766, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !3771
  call void @llvm.dbg.value(metadata i64 1, metadata !1872, metadata !DIExpression()) #22, !dbg !3771
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !3771
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !3771
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !3773
  %0 = load ptr, ptr %blob.i, align 8, !dbg !3773, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !3774
  %1 = load i32, ptr %type.i, align 8, !dbg !3774, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !3775
  br i1 %cmp.not.i, label %if.end.i, label %ReadBlobStream.exit, !dbg !3776

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !3777
  %2 = load i64, ptr %offset.i, align 8, !dbg !3777, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !3778, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !3779
  br i1 %cmp4.not.i, label %ReadBlobStream.exit.thread6, label %ReadBlobStream.exit.thread, !dbg !3780

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !3781
  store i32 1, ptr %eof.i, align 4, !dbg !3782, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !3764, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 undef, metadata !3765, metadata !DIExpression()), !dbg !3768
  br label %cleanup, !dbg !3783

ReadBlobStream.exit.thread6:                      ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !3784
  %4 = load ptr, ptr %data9.i, align 8, !dbg !3784, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3785
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !3771
  %add.i = add nsw i64 %2, 1, !dbg !3786
  store i64 %add.i, ptr %offset.i, align 8, !dbg !3786, !tbaa !1051
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !3764, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 undef, metadata !3765, metadata !DIExpression()), !dbg !3768
  br label %if.end, !dbg !3783

ReadBlobStream.exit:                              ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 1, ptr noundef nonnull %buffer) #22, !dbg !3787
  %phi.cmp = icmp eq i64 %call.i, 1, !dbg !3788
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !3764, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 undef, metadata !3765, metadata !DIExpression()), !dbg !3768
  br i1 %phi.cmp, label %if.end, label %cleanup, !dbg !3783

if.end:                                           ; preds = %ReadBlobStream.exit.thread6, %ReadBlobStream.exit
  %retval.0.i9 = phi ptr [ %add.ptr.i, %ReadBlobStream.exit.thread6 ], [ %buffer, %ReadBlobStream.exit ]
  %5 = load i8, ptr %retval.0.i9, align 1, !dbg !3789, !tbaa !1057
  %conv = zext i8 %5 to i32, !dbg !3790
  br label %cleanup, !dbg !3791

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ -1, %ReadBlobStream.exit ], [ -1, %ReadBlobStream.exit.thread ], !dbg !3768
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer) #22, !dbg !3792
  ret i32 %retval.0, !dbg !3792
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @ReadBlobDouble(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !3793 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3797, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 0, metadata !3798, metadata !DIExpression()), !dbg !3803
  %call = tail call i64 @ReadBlobLongLong(ptr noundef %image), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %call, metadata !3798, metadata !DIExpression()), !dbg !3803
  %0 = bitcast i64 %call to double, !dbg !3805
  ret double %0, !dbg !3806
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @ReadBlobLongLong(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !3807 {
entry:
  %buffer = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !3811, metadata !DIExpression()), !dbg !3819
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer) #22, !dbg !3820
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !3815, metadata !DIExpression()), !dbg !3821
  store i8 0, ptr %buffer, align 1, !dbg !3822, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !3823
  call void @llvm.dbg.value(metadata i64 8, metadata !1872, metadata !DIExpression()) #22, !dbg !3823
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !3823
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !3823
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !3825
  %0 = load ptr, ptr %blob.i, align 8, !dbg !3825, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !3826
  %1 = load i32, ptr %type.i, align 8, !dbg !3826, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !3827
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !3828

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 8, ptr noundef nonnull %buffer) #22, !dbg !3829
  br label %ReadBlobStream.exit, !dbg !3830

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !3831
  %2 = load i64, ptr %offset.i, align 8, !dbg !3831, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !3832, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !3833
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !3834

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !3835
  store i32 1, ptr %eof.i, align 4, !dbg !3836, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !3814, metadata !DIExpression()), !dbg !3819
  br label %cleanup, !dbg !3837

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !3838
  %4 = load ptr, ptr %data9.i, align 8, !dbg !3838, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3839
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !3823
  %sub.i = sub i64 %3, %2, !dbg !3840
  call void @llvm.dbg.value(metadata i64 8, metadata !1125, metadata !DIExpression()) #22, !dbg !3841
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !3841
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 8) #22, !dbg !3841
  %add.i = add nsw i64 %5, %2, !dbg !3843
  store i64 %add.i, ptr %offset.i, align 8, !dbg !3843, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, 8, !dbg !3844
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !3845

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !3846
  store i32 1, ptr %eof22.i, align 4, !dbg !3847, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !3848

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %5, %if.then20.i ], [ %5, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !3823
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %buffer, %if.then.i ], !dbg !3823
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !3814, metadata !DIExpression()), !dbg !3819
  %cmp.not = icmp eq i64 %count.0, 8, !dbg !3849
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !3837

if.end:                                           ; preds = %ReadBlobStream.exit
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !3851
  %6 = load i32, ptr %endian, align 8, !dbg !3851, !tbaa !3853
  %cmp2 = icmp eq i32 %6, 1, !dbg !3854
  %incdec.ptr = getelementptr inbounds i8, ptr %retval.0.i, i64 1, !dbg !3819
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3813, metadata !DIExpression()), !dbg !3819
  %7 = load i8, ptr %retval.0.i, align 1, !dbg !3819, !tbaa !1057
  %conv = zext i8 %7 to i64, !dbg !3819
  br i1 %cmp2, label %if.then3, label %if.end30, !dbg !3855

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr4 = getelementptr inbounds i8, ptr %retval.0.i, i64 2, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4, metadata !3813, metadata !DIExpression()), !dbg !3819
  %8 = load i8, ptr %incdec.ptr, align 1, !dbg !3858, !tbaa !1057
  %conv5 = zext i8 %8 to i64, !dbg !3859
  %shl = shl nuw nsw i64 %conv5, 8, !dbg !3860
  %or = or i64 %shl, %conv, !dbg !3861
  call void @llvm.dbg.value(metadata i64 %or, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr6 = getelementptr inbounds i8, ptr %retval.0.i, i64 3, !dbg !3862
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !3813, metadata !DIExpression()), !dbg !3819
  %9 = load i8, ptr %incdec.ptr4, align 1, !dbg !3863, !tbaa !1057
  %conv7 = zext i8 %9 to i64, !dbg !3864
  %shl8 = shl nuw nsw i64 %conv7, 16, !dbg !3865
  %or9 = or i64 %or, %shl8, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %or9, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr10 = getelementptr inbounds i8, ptr %retval.0.i, i64 4, !dbg !3867
  call void @llvm.dbg.value(metadata ptr %incdec.ptr10, metadata !3813, metadata !DIExpression()), !dbg !3819
  %10 = load i8, ptr %incdec.ptr6, align 1, !dbg !3868, !tbaa !1057
  %conv11 = zext i8 %10 to i64, !dbg !3869
  %shl12 = shl nuw nsw i64 %conv11, 24, !dbg !3870
  %or13 = or i64 %or9, %shl12, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %or13, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr14 = getelementptr inbounds i8, ptr %retval.0.i, i64 5, !dbg !3872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr14, metadata !3813, metadata !DIExpression()), !dbg !3819
  %11 = load i8, ptr %incdec.ptr10, align 1, !dbg !3873, !tbaa !1057
  %conv15 = zext i8 %11 to i64, !dbg !3874
  %shl16 = shl nuw nsw i64 %conv15, 32, !dbg !3875
  %or17 = or i64 %or13, %shl16, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %or17, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr18 = getelementptr inbounds i8, ptr %retval.0.i, i64 6, !dbg !3877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr18, metadata !3813, metadata !DIExpression()), !dbg !3819
  %12 = load i8, ptr %incdec.ptr14, align 1, !dbg !3878, !tbaa !1057
  %conv19 = zext i8 %12 to i64, !dbg !3879
  %shl20 = shl nuw nsw i64 %conv19, 40, !dbg !3880
  %or21 = or i64 %or17, %shl20, !dbg !3881
  call void @llvm.dbg.value(metadata i64 %or21, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr22 = getelementptr inbounds i8, ptr %retval.0.i, i64 7, !dbg !3882
  call void @llvm.dbg.value(metadata ptr %incdec.ptr22, metadata !3813, metadata !DIExpression()), !dbg !3819
  %13 = load i8, ptr %incdec.ptr18, align 1, !dbg !3883, !tbaa !1057
  %conv23 = zext i8 %13 to i64, !dbg !3884
  %shl24 = shl nuw nsw i64 %conv23, 48, !dbg !3885
  %or25 = or i64 %or21, %shl24, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %or25, metadata !3812, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %incdec.ptr22, metadata !3813, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3819
  %14 = load i8, ptr %incdec.ptr22, align 1, !dbg !3887, !tbaa !1057
  %conv27 = zext i8 %14 to i64, !dbg !3888
  %shl28 = shl nuw i64 %conv27, 56, !dbg !3889
  %or29 = or i64 %or25, %shl28, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %or29, metadata !3812, metadata !DIExpression()), !dbg !3819
  br label %cleanup, !dbg !3891

if.end30:                                         ; preds = %if.end
  %shl33 = shl nuw i64 %conv, 56, !dbg !3892
  call void @llvm.dbg.value(metadata i64 %shl33, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr34 = getelementptr inbounds i8, ptr %retval.0.i, i64 2, !dbg !3893
  call void @llvm.dbg.value(metadata ptr %incdec.ptr34, metadata !3813, metadata !DIExpression()), !dbg !3819
  %15 = load i8, ptr %incdec.ptr, align 1, !dbg !3894, !tbaa !1057
  %conv35 = zext i8 %15 to i64, !dbg !3895
  %shl36 = shl nuw nsw i64 %conv35, 48, !dbg !3896
  %or37 = or i64 %shl36, %shl33, !dbg !3897
  call void @llvm.dbg.value(metadata i64 %or37, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr38 = getelementptr inbounds i8, ptr %retval.0.i, i64 3, !dbg !3898
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38, metadata !3813, metadata !DIExpression()), !dbg !3819
  %16 = load i8, ptr %incdec.ptr34, align 1, !dbg !3899, !tbaa !1057
  %conv39 = zext i8 %16 to i64, !dbg !3900
  %shl40 = shl nuw nsw i64 %conv39, 40, !dbg !3901
  %or41 = or i64 %or37, %shl40, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %or41, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr42 = getelementptr inbounds i8, ptr %retval.0.i, i64 4, !dbg !3903
  call void @llvm.dbg.value(metadata ptr %incdec.ptr42, metadata !3813, metadata !DIExpression()), !dbg !3819
  %17 = load i8, ptr %incdec.ptr38, align 1, !dbg !3904, !tbaa !1057
  %conv43 = zext i8 %17 to i64, !dbg !3905
  %shl44 = shl nuw nsw i64 %conv43, 32, !dbg !3906
  %or45 = or i64 %or41, %shl44, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %or45, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr46 = getelementptr inbounds i8, ptr %retval.0.i, i64 5, !dbg !3908
  call void @llvm.dbg.value(metadata ptr %incdec.ptr46, metadata !3813, metadata !DIExpression()), !dbg !3819
  %18 = load i8, ptr %incdec.ptr42, align 1, !dbg !3909, !tbaa !1057
  %conv47 = zext i8 %18 to i64, !dbg !3910
  %shl48 = shl nuw nsw i64 %conv47, 24, !dbg !3911
  %or49 = or i64 %or45, %shl48, !dbg !3912
  call void @llvm.dbg.value(metadata i64 %or49, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr50 = getelementptr inbounds i8, ptr %retval.0.i, i64 6, !dbg !3913
  call void @llvm.dbg.value(metadata ptr %incdec.ptr50, metadata !3813, metadata !DIExpression()), !dbg !3819
  %19 = load i8, ptr %incdec.ptr46, align 1, !dbg !3914, !tbaa !1057
  %conv51 = zext i8 %19 to i64, !dbg !3915
  %shl52 = shl nuw nsw i64 %conv51, 16, !dbg !3916
  %or53 = or i64 %or49, %shl52, !dbg !3917
  call void @llvm.dbg.value(metadata i64 %or53, metadata !3812, metadata !DIExpression()), !dbg !3819
  %incdec.ptr54 = getelementptr inbounds i8, ptr %retval.0.i, i64 7, !dbg !3918
  call void @llvm.dbg.value(metadata ptr %incdec.ptr54, metadata !3813, metadata !DIExpression()), !dbg !3819
  %20 = load i8, ptr %incdec.ptr50, align 1, !dbg !3919, !tbaa !1057
  %conv55 = zext i8 %20 to i64, !dbg !3920
  %shl56 = shl nuw nsw i64 %conv55, 8, !dbg !3921
  %or57 = or i64 %or53, %shl56, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %or57, metadata !3812, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %incdec.ptr54, metadata !3813, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3819
  %21 = load i8, ptr %incdec.ptr54, align 1, !dbg !3923, !tbaa !1057
  %conv59 = zext i8 %21 to i64, !dbg !3924
  %or60 = or i64 %or57, %conv59, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %or60, metadata !3812, metadata !DIExpression()), !dbg !3819
  br label %cleanup, !dbg !3926

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end30, %if.then3
  %retval.0 = phi i64 [ %or29, %if.then3 ], [ %or60, %if.end30 ], [ 0, %ReadBlobStream.exit ], [ 0, %ReadBlobStream.exit.thread ], !dbg !3819
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer) #22, !dbg !3927
  ret i64 %retval.0, !dbg !3927
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @ReadBlobFloat(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !3928 {
entry:
  %buffer.i = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !3933, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i32 0, metadata !3934, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata ptr %image, metadata !3940, metadata !DIExpression()) #22, !dbg !3952
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i) #22, !dbg !3954
  call void @llvm.dbg.declare(metadata ptr %buffer.i, metadata !3947, metadata !DIExpression()) #22, !dbg !3955
  store i8 0, ptr %buffer.i, align 1, !dbg !3956, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !3957
  call void @llvm.dbg.value(metadata i64 4, metadata !1872, metadata !DIExpression()) #22, !dbg !3957
  call void @llvm.dbg.value(metadata ptr %buffer.i, metadata !1873, metadata !DIExpression()) #22, !dbg !3957
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !3957
  %blob.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !3959
  %0 = load ptr, ptr %blob.i.i, align 8, !dbg !3959, !tbaa !1249
  %type.i.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !3960
  %1 = load i32, ptr %type.i.i, align 8, !dbg !3960, !tbaa !1054
  %cmp.not.i.i = icmp eq i32 %1, 7, !dbg !3961
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3962

if.then.i.i:                                      ; preds = %entry
  %call.i.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 4, ptr noundef nonnull %buffer.i) #22, !dbg !3963
  br label %ReadBlobStream.exit.i, !dbg !3964

if.end.i.i:                                       ; preds = %entry
  %offset.i.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !3965
  %2 = load i64, ptr %offset.i.i, align 8, !dbg !3965, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !3966, !tbaa !1042
  %cmp4.not.i.i = icmp sgt i64 %3, %2, !dbg !3967
  br i1 %cmp4.not.i.i, label %if.end7.i.i, label %ReadBlobStream.exit.thread.i, !dbg !3968

ReadBlobStream.exit.thread.i:                     ; preds = %if.end.i.i
  %eof.i.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !3969
  store i32 1, ptr %eof.i.i, align 4, !dbg !3970, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i.i, metadata !3945, metadata !DIExpression()) #22, !dbg !3952
  call void @llvm.dbg.value(metadata i64 %count.0.i, metadata !3946, metadata !DIExpression()) #22, !dbg !3952
  br label %ReadBlobLong.exit, !dbg !3971

if.end7.i.i:                                      ; preds = %if.end.i.i
  %data9.i.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !3972
  %4 = load ptr, ptr %data9.i.i, align 8, !dbg !3972, !tbaa !1060
  %add.ptr.i.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !3973
  call void @llvm.dbg.value(metadata ptr %add.ptr.i.i, metadata !1873, metadata !DIExpression()) #22, !dbg !3957
  %sub.i.i = sub i64 %3, %2, !dbg !3974
  call void @llvm.dbg.value(metadata i64 4, metadata !1125, metadata !DIExpression()) #22, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %sub.i.i, metadata !1130, metadata !DIExpression()) #22, !dbg !3975
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i.i, i64 4) #22, !dbg !3975
  %add.i.i = add nsw i64 %5, %2, !dbg !3977
  store i64 %add.i.i, ptr %offset.i.i, align 8, !dbg !3977, !tbaa !1051
  %cmp19.not.not.i.i = icmp ult i64 %sub.i.i, 4, !dbg !3978
  br i1 %cmp19.not.not.i.i, label %if.then20.i.i, label %ReadBlobStream.exit.i, !dbg !3979

if.then20.i.i:                                    ; preds = %if.end7.i.i
  %eof22.i.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !3980
  store i32 1, ptr %eof22.i.i, align 4, !dbg !3981, !tbaa !1467
  br label %ReadBlobStream.exit.i, !dbg !3982

ReadBlobStream.exit.i:                            ; preds = %if.then20.i.i, %if.end7.i.i, %if.then.i.i
  %count.0.i = phi i64 [ %5, %if.then20.i.i ], [ %5, %if.end7.i.i ], [ %call.i.i, %if.then.i.i ], !dbg !3957
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then20.i.i ], [ %add.ptr.i.i, %if.end7.i.i ], [ %buffer.i, %if.then.i.i ], !dbg !3957
  call void @llvm.dbg.value(metadata ptr %retval.0.i.i, metadata !3945, metadata !DIExpression()) #22, !dbg !3952
  call void @llvm.dbg.value(metadata i64 %count.0.i, metadata !3946, metadata !DIExpression()) #22, !dbg !3952
  %cmp.not.i = icmp eq i64 %count.0.i, 4, !dbg !3983
  br i1 %cmp.not.i, label %if.end.i, label %ReadBlobLong.exit, !dbg !3971

if.end.i:                                         ; preds = %ReadBlobStream.exit.i
  %endian.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !3985
  %6 = load i32, ptr %endian.i, align 8, !dbg !3985, !tbaa !3853
  %cmp2.i = icmp eq i32 %6, 1, !dbg !3987
  %incdec.ptr.i = getelementptr inbounds i8, ptr %retval.0.i.i, i64 1, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !3945, metadata !DIExpression()) #22, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !3945, metadata !DIExpression()) #22, !dbg !3952
  %7 = load i8, ptr %retval.0.i.i, align 1, !dbg !3952, !tbaa !1057
  %conv.i = zext i8 %7 to i32, !dbg !3952
  br i1 %cmp2.i, label %if.then3.i, label %if.end14.i, !dbg !3988

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !3951, metadata !DIExpression()) #22, !dbg !3952
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %retval.0.i.i, i64 2, !dbg !3989
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4.i, metadata !3945, metadata !DIExpression()) #22, !dbg !3952
  %8 = load i8, ptr %incdec.ptr.i, align 1, !dbg !3991, !tbaa !1057
  %conv5.i = zext i8 %8 to i32, !dbg !3992
  %shl.i = shl nuw nsw i32 %conv5.i, 8, !dbg !3993
  %or.i = or i32 %shl.i, %conv.i, !dbg !3994
  call void @llvm.dbg.value(metadata i32 %or.i, metadata !3951, metadata !DIExpression()) #22, !dbg !3952
  %incdec.ptr6.i = getelementptr inbounds i8, ptr %retval.0.i.i, i64 3, !dbg !3995
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6.i, metadata !3945, metadata !DIExpression()) #22, !dbg !3952
  %9 = load i8, ptr %incdec.ptr4.i, align 1, !dbg !3996, !tbaa !1057
  %conv7.i = zext i8 %9 to i32, !dbg !3997
  %shl8.i = shl nuw nsw i32 %conv7.i, 16, !dbg !3998
  %or9.i = or i32 %or.i, %shl8.i, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %or9.i, metadata !3951, metadata !DIExpression()) #22, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6.i, metadata !3945, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #22, !dbg !3952
  %10 = load i8, ptr %incdec.ptr6.i, align 1, !dbg !4000, !tbaa !1057
  %conv11.i = zext i8 %10 to i32, !dbg !4001
  %shl12.i = shl nuw i32 %conv11.i, 24, !dbg !4002
  %or13.i = or i32 %or9.i, %shl12.i, !dbg !4003
  call void @llvm.dbg.value(metadata i32 %or13.i, metadata !3951, metadata !DIExpression()) #22, !dbg !3952
  br label %ReadBlobLong.exit, !dbg !4004

if.end14.i:                                       ; preds = %if.end.i
  %shl17.i = shl nuw i32 %conv.i, 24, !dbg !4005
  call void @llvm.dbg.value(metadata i32 %shl17.i, metadata !3951, metadata !DIExpression()) #22, !dbg !3952
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %retval.0.i.i, i64 2, !dbg !4006
  call void @llvm.dbg.value(metadata ptr %incdec.ptr18.i, metadata !3945, metadata !DIExpression()) #22, !dbg !3952
  %11 = load i8, ptr %incdec.ptr.i, align 1, !dbg !4007, !tbaa !1057
  %conv19.i = zext i8 %11 to i32, !dbg !4008
  %shl20.i = shl nuw nsw i32 %conv19.i, 16, !dbg !4009
  %or21.i = or i32 %shl20.i, %shl17.i, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %or21.i, metadata !3951, metadata !DIExpression()) #22, !dbg !3952
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %retval.0.i.i, i64 3, !dbg !4011
  call void @llvm.dbg.value(metadata ptr %incdec.ptr22.i, metadata !3945, metadata !DIExpression()) #22, !dbg !3952
  %12 = load i8, ptr %incdec.ptr18.i, align 1, !dbg !4012, !tbaa !1057
  %conv23.i = zext i8 %12 to i32, !dbg !4013
  %shl24.i = shl nuw nsw i32 %conv23.i, 8, !dbg !4014
  %or25.i = or i32 %or21.i, %shl24.i, !dbg !4015
  call void @llvm.dbg.value(metadata i32 %or25.i, metadata !3951, metadata !DIExpression()) #22, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %incdec.ptr22.i, metadata !3945, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #22, !dbg !3952
  %13 = load i8, ptr %incdec.ptr22.i, align 1, !dbg !4016, !tbaa !1057
  %conv27.i = zext i8 %13 to i32, !dbg !4017
  %or28.i = or i32 %or25.i, %conv27.i, !dbg !4018
  call void @llvm.dbg.value(metadata i32 %or28.i, metadata !3951, metadata !DIExpression()) #22, !dbg !3952
  br label %ReadBlobLong.exit, !dbg !4019

ReadBlobLong.exit:                                ; preds = %ReadBlobStream.exit.thread.i, %ReadBlobStream.exit.i, %if.then3.i, %if.end14.i
  %retval.0.i = phi i32 [ %or13.i, %if.then3.i ], [ %or28.i, %if.end14.i ], [ 0, %ReadBlobStream.exit.i ], [ 0, %ReadBlobStream.exit.thread.i ], !dbg !3952
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #22, !dbg !4020
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !3934, metadata !DIExpression()), !dbg !3939
  %14 = bitcast i32 %retval.0.i to float, !dbg !4021
  ret float %14, !dbg !4022
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ReadBlobLong(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !3941 {
entry:
  %buffer = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !3940, metadata !DIExpression()), !dbg !4023
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #22, !dbg !4024
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !3947, metadata !DIExpression()), !dbg !4025
  store i8 0, ptr %buffer, align 1, !dbg !4026, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4027
  call void @llvm.dbg.value(metadata i64 4, metadata !1872, metadata !DIExpression()) #22, !dbg !4027
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4027
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4027
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4029
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4029, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4030
  %1 = load i32, ptr %type.i, align 8, !dbg !4030, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4031
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4032

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 4, ptr noundef nonnull %buffer) #22, !dbg !4033
  br label %ReadBlobStream.exit, !dbg !4034

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4035
  %2 = load i64, ptr %offset.i, align 8, !dbg !4035, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !4036, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !4037
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !4038

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4039
  store i32 1, ptr %eof.i, align 4, !dbg !4040, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !3945, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !3946, metadata !DIExpression()), !dbg !4023
  br label %cleanup, !dbg !4041

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4042
  %4 = load ptr, ptr %data9.i, align 8, !dbg !4042, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4043
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !4027
  %sub.i = sub i64 %3, %2, !dbg !4044
  call void @llvm.dbg.value(metadata i64 4, metadata !1125, metadata !DIExpression()) #22, !dbg !4045
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !4045
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 4) #22, !dbg !4045
  %add.i = add nsw i64 %5, %2, !dbg !4047
  store i64 %add.i, ptr %offset.i, align 8, !dbg !4047, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, 4, !dbg !4048
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !4049

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4050
  store i32 1, ptr %eof22.i, align 4, !dbg !4051, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !4052

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %5, %if.then20.i ], [ %5, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !4027
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %buffer, %if.then.i ], !dbg !4027
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !3945, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !3946, metadata !DIExpression()), !dbg !4023
  %cmp.not = icmp eq i64 %count.0, 4, !dbg !4053
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !4041

if.end:                                           ; preds = %ReadBlobStream.exit
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !4054
  %6 = load i32, ptr %endian, align 8, !dbg !4054, !tbaa !3853
  %cmp2 = icmp eq i32 %6, 1, !dbg !4055
  %incdec.ptr = getelementptr inbounds i8, ptr %retval.0.i, i64 1, !dbg !4023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3945, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3945, metadata !DIExpression()), !dbg !4023
  %7 = load i8, ptr %retval.0.i, align 1, !dbg !4023, !tbaa !1057
  %conv = zext i8 %7 to i32, !dbg !4023
  br i1 %cmp2, label %if.then3, label %if.end14, !dbg !4056

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3951, metadata !DIExpression()), !dbg !4023
  %incdec.ptr4 = getelementptr inbounds i8, ptr %retval.0.i, i64 2, !dbg !4057
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4, metadata !3945, metadata !DIExpression()), !dbg !4023
  %8 = load i8, ptr %incdec.ptr, align 1, !dbg !4058, !tbaa !1057
  %conv5 = zext i8 %8 to i32, !dbg !4059
  %shl = shl nuw nsw i32 %conv5, 8, !dbg !4060
  %or = or i32 %shl, %conv, !dbg !4061
  call void @llvm.dbg.value(metadata i32 %or, metadata !3951, metadata !DIExpression()), !dbg !4023
  %incdec.ptr6 = getelementptr inbounds i8, ptr %retval.0.i, i64 3, !dbg !4062
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !3945, metadata !DIExpression()), !dbg !4023
  %9 = load i8, ptr %incdec.ptr4, align 1, !dbg !4063, !tbaa !1057
  %conv7 = zext i8 %9 to i32, !dbg !4064
  %shl8 = shl nuw nsw i32 %conv7, 16, !dbg !4065
  %or9 = or i32 %or, %shl8, !dbg !4066
  call void @llvm.dbg.value(metadata i32 %or9, metadata !3951, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !3945, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4023
  %10 = load i8, ptr %incdec.ptr6, align 1, !dbg !4067, !tbaa !1057
  %conv11 = zext i8 %10 to i32, !dbg !4068
  %shl12 = shl nuw i32 %conv11, 24, !dbg !4069
  %or13 = or i32 %or9, %shl12, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %or13, metadata !3951, metadata !DIExpression()), !dbg !4023
  br label %cleanup, !dbg !4071

if.end14:                                         ; preds = %if.end
  %shl17 = shl nuw i32 %conv, 24, !dbg !4072
  call void @llvm.dbg.value(metadata i32 %shl17, metadata !3951, metadata !DIExpression()), !dbg !4023
  %incdec.ptr18 = getelementptr inbounds i8, ptr %retval.0.i, i64 2, !dbg !4073
  call void @llvm.dbg.value(metadata ptr %incdec.ptr18, metadata !3945, metadata !DIExpression()), !dbg !4023
  %11 = load i8, ptr %incdec.ptr, align 1, !dbg !4074, !tbaa !1057
  %conv19 = zext i8 %11 to i32, !dbg !4075
  %shl20 = shl nuw nsw i32 %conv19, 16, !dbg !4076
  %or21 = or i32 %shl20, %shl17, !dbg !4077
  call void @llvm.dbg.value(metadata i32 %or21, metadata !3951, metadata !DIExpression()), !dbg !4023
  %incdec.ptr22 = getelementptr inbounds i8, ptr %retval.0.i, i64 3, !dbg !4078
  call void @llvm.dbg.value(metadata ptr %incdec.ptr22, metadata !3945, metadata !DIExpression()), !dbg !4023
  %12 = load i8, ptr %incdec.ptr18, align 1, !dbg !4079, !tbaa !1057
  %conv23 = zext i8 %12 to i32, !dbg !4080
  %shl24 = shl nuw nsw i32 %conv23, 8, !dbg !4081
  %or25 = or i32 %or21, %shl24, !dbg !4082
  call void @llvm.dbg.value(metadata i32 %or25, metadata !3951, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr22, metadata !3945, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4023
  %13 = load i8, ptr %incdec.ptr22, align 1, !dbg !4083, !tbaa !1057
  %conv27 = zext i8 %13 to i32, !dbg !4084
  %or28 = or i32 %or25, %conv27, !dbg !4085
  call void @llvm.dbg.value(metadata i32 %or28, metadata !3951, metadata !DIExpression()), !dbg !4023
  br label %cleanup, !dbg !4086

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end14, %if.then3
  %retval.0 = phi i32 [ %or13, %if.then3 ], [ %or28, %if.end14 ], [ 0, %ReadBlobStream.exit ], [ 0, %ReadBlobStream.exit.thread ], !dbg !4023
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #22, !dbg !4087
  ret i32 %retval.0, !dbg !4087
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @ReadBlobShort(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !4088 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4092, metadata !DIExpression()), !dbg !4100
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #22, !dbg !4101
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4096, metadata !DIExpression()), !dbg !4102
  store i8 0, ptr %buffer, align 1, !dbg !4103, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4104
  call void @llvm.dbg.value(metadata i64 2, metadata !1872, metadata !DIExpression()) #22, !dbg !4104
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4104
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4104
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4106
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4106, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4107
  %1 = load i32, ptr %type.i, align 8, !dbg !4107, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4108
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4109

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 2, ptr noundef nonnull %buffer) #22, !dbg !4110
  br label %ReadBlobStream.exit, !dbg !4111

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4112
  %2 = load i64, ptr %offset.i, align 8, !dbg !4112, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !4113, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !4114
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !4115

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4116
  store i32 1, ptr %eof.i, align 4, !dbg !4117, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4093, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4095, metadata !DIExpression()), !dbg !4100
  br label %cleanup, !dbg !4118

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4119
  %4 = load ptr, ptr %data9.i, align 8, !dbg !4119, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4120
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !4104
  %sub.i = sub i64 %3, %2, !dbg !4121
  call void @llvm.dbg.value(metadata i64 2, metadata !1125, metadata !DIExpression()) #22, !dbg !4122
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !4122
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 2) #22, !dbg !4122
  %add.i = add nsw i64 %5, %2, !dbg !4124
  store i64 %add.i, ptr %offset.i, align 8, !dbg !4124, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, 2, !dbg !4125
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !4126

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4127
  store i32 1, ptr %eof22.i, align 4, !dbg !4128, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !4129

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %5, %if.then20.i ], [ %5, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !4104
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %buffer, %if.then.i ], !dbg !4104
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4093, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4095, metadata !DIExpression()), !dbg !4100
  %cmp.not = icmp eq i64 %count.0, 2, !dbg !4130
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !4118

if.end:                                           ; preds = %ReadBlobStream.exit
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !4132
  %6 = load i32, ptr %endian, align 8, !dbg !4132, !tbaa !3853
  %cmp2 = icmp eq i32 %6, 1, !dbg !4134
  %incdec.ptr = getelementptr inbounds i8, ptr %retval.0.i, i64 1, !dbg !4100
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4093, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4093, metadata !DIExpression()), !dbg !4100
  %7 = load i8, ptr %retval.0.i, align 1, !dbg !4100, !tbaa !1057
  %conv = zext i8 %7 to i16, !dbg !4100
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !4135

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8 %7, metadata !4094, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4093, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4100
  %8 = load i8, ptr %incdec.ptr, align 1, !dbg !4136, !tbaa !1057
  %conv5 = zext i8 %8 to i16, !dbg !4138
  %shl = shl nuw i16 %conv5, 8, !dbg !4139
  %or = or i16 %shl, %conv, !dbg !4140
  call void @llvm.dbg.value(metadata !DIArgList(i8 %8, i8 %7), metadata !4094, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !4100
  br label %cleanup, !dbg !4141

if.end7:                                          ; preds = %if.end
  %shl10 = shl nuw i16 %conv, 8, !dbg !4142
  call void @llvm.dbg.value(metadata i8 %7, metadata !4094, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_stack_value)), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4093, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4100
  %9 = load i8, ptr %incdec.ptr, align 1, !dbg !4143, !tbaa !1057
  %conv12 = zext i8 %9 to i16, !dbg !4144
  %or13 = or i16 %shl10, %conv12, !dbg !4145
  call void @llvm.dbg.value(metadata !DIArgList(i8 %7, i8 %9), metadata !4094, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !4100
  br label %cleanup, !dbg !4146

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end7, %if.then3
  %retval.0 = phi i16 [ %or, %if.then3 ], [ %or13, %if.end7 ], [ 0, %ReadBlobStream.exit ], [ 0, %ReadBlobStream.exit.thread ], !dbg !4100
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #22, !dbg !4147
  ret i16 %retval.0, !dbg !4147
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ReadBlobLSBLong(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !4148 {
entry:
  %buffer = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4150, metadata !DIExpression()), !dbg !4155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #22, !dbg !4156
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4154, metadata !DIExpression()), !dbg !4157
  store i8 0, ptr %buffer, align 1, !dbg !4158, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4159
  call void @llvm.dbg.value(metadata i64 4, metadata !1872, metadata !DIExpression()) #22, !dbg !4159
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4159
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4159
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4161
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4161, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4162
  %1 = load i32, ptr %type.i, align 8, !dbg !4162, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4163
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4164

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 4, ptr noundef nonnull %buffer) #22, !dbg !4165
  br label %ReadBlobStream.exit, !dbg !4166

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4167
  %2 = load i64, ptr %offset.i, align 8, !dbg !4167, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !4168, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !4169
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !4170

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4171
  store i32 1, ptr %eof.i, align 4, !dbg !4172, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4151, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4153, metadata !DIExpression()), !dbg !4155
  br label %cleanup, !dbg !4173

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4174
  %4 = load ptr, ptr %data9.i, align 8, !dbg !4174, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4175
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !4159
  %sub.i = sub i64 %3, %2, !dbg !4176
  call void @llvm.dbg.value(metadata i64 4, metadata !1125, metadata !DIExpression()) #22, !dbg !4177
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !4177
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 4) #22, !dbg !4177
  %add.i = add nsw i64 %5, %2, !dbg !4179
  store i64 %add.i, ptr %offset.i, align 8, !dbg !4179, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, 4, !dbg !4180
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !4181

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4182
  store i32 1, ptr %eof22.i, align 4, !dbg !4183, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !4184

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %5, %if.then20.i ], [ %5, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !4159
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %buffer, %if.then.i ], !dbg !4159
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4151, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4153, metadata !DIExpression()), !dbg !4155
  %cmp.not = icmp eq i64 %count.0, 4, !dbg !4185
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !4173

if.end:                                           ; preds = %ReadBlobStream.exit
  %incdec.ptr = getelementptr inbounds i8, ptr %retval.0.i, i64 1, !dbg !4187
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4151, metadata !DIExpression()), !dbg !4155
  %6 = load i8, ptr %retval.0.i, align 1, !dbg !4188, !tbaa !1057
  %conv = zext i8 %6 to i32, !dbg !4189
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4152, metadata !DIExpression()), !dbg !4155
  %incdec.ptr2 = getelementptr inbounds i8, ptr %retval.0.i, i64 2, !dbg !4190
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2, metadata !4151, metadata !DIExpression()), !dbg !4155
  %7 = load i8, ptr %incdec.ptr, align 1, !dbg !4191, !tbaa !1057
  %conv3 = zext i8 %7 to i32, !dbg !4192
  %shl = shl nuw nsw i32 %conv3, 8, !dbg !4193
  %or = or i32 %shl, %conv, !dbg !4194
  call void @llvm.dbg.value(metadata i32 %or, metadata !4152, metadata !DIExpression()), !dbg !4155
  %incdec.ptr4 = getelementptr inbounds i8, ptr %retval.0.i, i64 3, !dbg !4195
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4, metadata !4151, metadata !DIExpression()), !dbg !4155
  %8 = load i8, ptr %incdec.ptr2, align 1, !dbg !4196, !tbaa !1057
  %conv5 = zext i8 %8 to i32, !dbg !4197
  %shl6 = shl nuw nsw i32 %conv5, 16, !dbg !4198
  %or7 = or i32 %or, %shl6, !dbg !4199
  call void @llvm.dbg.value(metadata i32 %or7, metadata !4152, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4, metadata !4151, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4155
  %9 = load i8, ptr %incdec.ptr4, align 1, !dbg !4200, !tbaa !1057
  %conv9 = zext i8 %9 to i32, !dbg !4201
  %shl10 = shl nuw i32 %conv9, 24, !dbg !4202
  %or11 = or i32 %or7, %shl10, !dbg !4203
  call void @llvm.dbg.value(metadata i32 %or11, metadata !4152, metadata !DIExpression()), !dbg !4155
  br label %cleanup, !dbg !4204

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end
  %retval.0 = phi i32 [ %or11, %if.end ], [ 0, %ReadBlobStream.exit ], [ 0, %ReadBlobStream.exit.thread ], !dbg !4155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #22, !dbg !4205
  ret i32 %retval.0, !dbg !4205
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @ReadBlobLSBShort(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !4206 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4208, metadata !DIExpression()), !dbg !4213
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #22, !dbg !4214
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4212, metadata !DIExpression()), !dbg !4215
  store i8 0, ptr %buffer, align 1, !dbg !4216, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4217
  call void @llvm.dbg.value(metadata i64 2, metadata !1872, metadata !DIExpression()) #22, !dbg !4217
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4217
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4217
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4219
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4219, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4220
  %1 = load i32, ptr %type.i, align 8, !dbg !4220, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4221
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4222

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 2, ptr noundef nonnull %buffer) #22, !dbg !4223
  br label %ReadBlobStream.exit, !dbg !4224

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4225
  %2 = load i64, ptr %offset.i, align 8, !dbg !4225, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !4226, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !4227
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !4228

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4229
  store i32 1, ptr %eof.i, align 4, !dbg !4230, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4209, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4211, metadata !DIExpression()), !dbg !4213
  br label %cleanup, !dbg !4231

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4232
  %4 = load ptr, ptr %data9.i, align 8, !dbg !4232, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !4217
  %sub.i = sub i64 %3, %2, !dbg !4234
  call void @llvm.dbg.value(metadata i64 2, metadata !1125, metadata !DIExpression()) #22, !dbg !4235
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !4235
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 2) #22, !dbg !4235
  %add.i = add nsw i64 %5, %2, !dbg !4237
  store i64 %add.i, ptr %offset.i, align 8, !dbg !4237, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, 2, !dbg !4238
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !4239

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4240
  store i32 1, ptr %eof22.i, align 4, !dbg !4241, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !4242

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %5, %if.then20.i ], [ %5, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !4217
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %buffer, %if.then.i ], !dbg !4217
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4209, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4211, metadata !DIExpression()), !dbg !4213
  %cmp.not = icmp eq i64 %count.0, 2, !dbg !4243
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !4231

if.end:                                           ; preds = %ReadBlobStream.exit
  %incdec.ptr = getelementptr inbounds i8, ptr %retval.0.i, i64 1, !dbg !4245
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4209, metadata !DIExpression()), !dbg !4213
  %6 = load i8, ptr %retval.0.i, align 1, !dbg !4246, !tbaa !1057
  %conv = zext i8 %6 to i16, !dbg !4247
  call void @llvm.dbg.value(metadata i8 %6, metadata !4210, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4209, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4213
  %7 = load i8, ptr %incdec.ptr, align 1, !dbg !4248, !tbaa !1057
  %conv3 = zext i8 %7 to i16, !dbg !4249
  %shl = shl nuw i16 %conv3, 8, !dbg !4250
  %or = or i16 %shl, %conv, !dbg !4251
  call void @llvm.dbg.value(metadata !DIArgList(i8 %7, i8 %6), metadata !4210, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !4213
  br label %cleanup, !dbg !4252

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end
  %retval.0 = phi i16 [ %or, %if.end ], [ 0, %ReadBlobStream.exit ], [ 0, %ReadBlobStream.exit.thread ], !dbg !4213
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #22, !dbg !4253
  ret i16 %retval.0, !dbg !4253
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ReadBlobMSBLong(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !4254 {
entry:
  %buffer = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4256, metadata !DIExpression()), !dbg !4261
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #22, !dbg !4262
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4260, metadata !DIExpression()), !dbg !4263
  store i8 0, ptr %buffer, align 1, !dbg !4264, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4265
  call void @llvm.dbg.value(metadata i64 4, metadata !1872, metadata !DIExpression()) #22, !dbg !4265
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4265
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4265
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4267
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4267, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4268
  %1 = load i32, ptr %type.i, align 8, !dbg !4268, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4269
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4270

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 4, ptr noundef nonnull %buffer) #22, !dbg !4271
  br label %ReadBlobStream.exit, !dbg !4272

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4273
  %2 = load i64, ptr %offset.i, align 8, !dbg !4273, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !4274, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !4275
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !4276

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4277
  store i32 1, ptr %eof.i, align 4, !dbg !4278, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4257, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4259, metadata !DIExpression()), !dbg !4261
  br label %cleanup, !dbg !4279

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4280
  %4 = load ptr, ptr %data9.i, align 8, !dbg !4280, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4281
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !4265
  %sub.i = sub i64 %3, %2, !dbg !4282
  call void @llvm.dbg.value(metadata i64 4, metadata !1125, metadata !DIExpression()) #22, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !4283
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 4) #22, !dbg !4283
  %add.i = add nsw i64 %5, %2, !dbg !4285
  store i64 %add.i, ptr %offset.i, align 8, !dbg !4285, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, 4, !dbg !4286
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !4287

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4288
  store i32 1, ptr %eof22.i, align 4, !dbg !4289, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !4290

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %5, %if.then20.i ], [ %5, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !4265
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %buffer, %if.then.i ], !dbg !4265
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4257, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4259, metadata !DIExpression()), !dbg !4261
  %cmp.not = icmp eq i64 %count.0, 4, !dbg !4291
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !4279

if.end:                                           ; preds = %ReadBlobStream.exit
  %incdec.ptr = getelementptr inbounds i8, ptr %retval.0.i, i64 1, !dbg !4293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4257, metadata !DIExpression()), !dbg !4261
  %6 = load i8, ptr %retval.0.i, align 1, !dbg !4294, !tbaa !1057
  %conv = zext i8 %6 to i32, !dbg !4295
  %shl = shl nuw i32 %conv, 24, !dbg !4296
  call void @llvm.dbg.value(metadata i32 %shl, metadata !4258, metadata !DIExpression()), !dbg !4261
  %incdec.ptr2 = getelementptr inbounds i8, ptr %retval.0.i, i64 2, !dbg !4297
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2, metadata !4257, metadata !DIExpression()), !dbg !4261
  %7 = load i8, ptr %incdec.ptr, align 1, !dbg !4298, !tbaa !1057
  %conv3 = zext i8 %7 to i32, !dbg !4299
  %shl4 = shl nuw nsw i32 %conv3, 16, !dbg !4300
  %or = or i32 %shl4, %shl, !dbg !4301
  call void @llvm.dbg.value(metadata i32 %or, metadata !4258, metadata !DIExpression()), !dbg !4261
  %incdec.ptr5 = getelementptr inbounds i8, ptr %retval.0.i, i64 3, !dbg !4302
  call void @llvm.dbg.value(metadata ptr %incdec.ptr5, metadata !4257, metadata !DIExpression()), !dbg !4261
  %8 = load i8, ptr %incdec.ptr2, align 1, !dbg !4303, !tbaa !1057
  %conv6 = zext i8 %8 to i32, !dbg !4304
  %shl7 = shl nuw nsw i32 %conv6, 8, !dbg !4305
  %or8 = or i32 %or, %shl7, !dbg !4306
  call void @llvm.dbg.value(metadata i32 %or8, metadata !4258, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %incdec.ptr5, metadata !4257, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4261
  %9 = load i8, ptr %incdec.ptr5, align 1, !dbg !4307, !tbaa !1057
  %conv10 = zext i8 %9 to i32, !dbg !4308
  %or11 = or i32 %or8, %conv10, !dbg !4309
  call void @llvm.dbg.value(metadata i32 %or11, metadata !4258, metadata !DIExpression()), !dbg !4261
  br label %cleanup, !dbg !4310

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end
  %retval.0 = phi i32 [ %or11, %if.end ], [ 0, %ReadBlobStream.exit ], [ 0, %ReadBlobStream.exit.thread ], !dbg !4261
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #22, !dbg !4311
  ret i32 %retval.0, !dbg !4311
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @ReadBlobMSBLongLong(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !4312 {
entry:
  %buffer = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4314, metadata !DIExpression()), !dbg !4319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer) #22, !dbg !4320
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4318, metadata !DIExpression()), !dbg !4321
  store i8 0, ptr %buffer, align 1, !dbg !4322, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4323
  call void @llvm.dbg.value(metadata i64 8, metadata !1872, metadata !DIExpression()) #22, !dbg !4323
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4323
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4323
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4325
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4325, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4326
  %1 = load i32, ptr %type.i, align 8, !dbg !4326, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4327
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4328

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 8, ptr noundef nonnull %buffer) #22, !dbg !4329
  br label %ReadBlobStream.exit, !dbg !4330

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4331
  %2 = load i64, ptr %offset.i, align 8, !dbg !4331, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !4332, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !4333
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !4334

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4335
  store i32 1, ptr %eof.i, align 4, !dbg !4336, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4315, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4317, metadata !DIExpression()), !dbg !4319
  br label %cleanup, !dbg !4337

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4338
  %4 = load ptr, ptr %data9.i, align 8, !dbg !4338, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4339
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !4323
  %sub.i = sub i64 %3, %2, !dbg !4340
  call void @llvm.dbg.value(metadata i64 8, metadata !1125, metadata !DIExpression()) #22, !dbg !4341
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !4341
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 8) #22, !dbg !4341
  %add.i = add nsw i64 %5, %2, !dbg !4343
  store i64 %add.i, ptr %offset.i, align 8, !dbg !4343, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, 8, !dbg !4344
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !4345

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4346
  store i32 1, ptr %eof22.i, align 4, !dbg !4347, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !4348

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %5, %if.then20.i ], [ %5, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !4323
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %buffer, %if.then.i ], !dbg !4323
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4315, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4317, metadata !DIExpression()), !dbg !4319
  %cmp.not = icmp eq i64 %count.0, 8, !dbg !4349
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !4337

if.end:                                           ; preds = %ReadBlobStream.exit
  %incdec.ptr = getelementptr inbounds i8, ptr %retval.0.i, i64 1, !dbg !4351
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4315, metadata !DIExpression()), !dbg !4319
  %6 = load i8, ptr %retval.0.i, align 1, !dbg !4352, !tbaa !1057
  %conv = zext i8 %6 to i64, !dbg !4353
  %shl = shl nuw i64 %conv, 56, !dbg !4354
  call void @llvm.dbg.value(metadata i64 %shl, metadata !4316, metadata !DIExpression()), !dbg !4319
  %incdec.ptr2 = getelementptr inbounds i8, ptr %retval.0.i, i64 2, !dbg !4355
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2, metadata !4315, metadata !DIExpression()), !dbg !4319
  %7 = load i8, ptr %incdec.ptr, align 1, !dbg !4356, !tbaa !1057
  %conv3 = zext i8 %7 to i64, !dbg !4357
  %shl4 = shl nuw nsw i64 %conv3, 48, !dbg !4358
  %or = or i64 %shl4, %shl, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %or, metadata !4316, metadata !DIExpression()), !dbg !4319
  %incdec.ptr5 = getelementptr inbounds i8, ptr %retval.0.i, i64 3, !dbg !4360
  call void @llvm.dbg.value(metadata ptr %incdec.ptr5, metadata !4315, metadata !DIExpression()), !dbg !4319
  %8 = load i8, ptr %incdec.ptr2, align 1, !dbg !4361, !tbaa !1057
  %conv6 = zext i8 %8 to i64, !dbg !4362
  %shl7 = shl nuw nsw i64 %conv6, 40, !dbg !4363
  %or8 = or i64 %or, %shl7, !dbg !4364
  call void @llvm.dbg.value(metadata i64 %or8, metadata !4316, metadata !DIExpression()), !dbg !4319
  %incdec.ptr9 = getelementptr inbounds i8, ptr %retval.0.i, i64 4, !dbg !4365
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9, metadata !4315, metadata !DIExpression()), !dbg !4319
  %9 = load i8, ptr %incdec.ptr5, align 1, !dbg !4366, !tbaa !1057
  %conv10 = zext i8 %9 to i64, !dbg !4367
  %shl11 = shl nuw nsw i64 %conv10, 32, !dbg !4368
  %or12 = or i64 %or8, %shl11, !dbg !4369
  call void @llvm.dbg.value(metadata i64 %or12, metadata !4316, metadata !DIExpression()), !dbg !4319
  %incdec.ptr13 = getelementptr inbounds i8, ptr %retval.0.i, i64 5, !dbg !4370
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13, metadata !4315, metadata !DIExpression()), !dbg !4319
  %10 = load i8, ptr %incdec.ptr9, align 1, !dbg !4371, !tbaa !1057
  %conv14 = zext i8 %10 to i64, !dbg !4372
  %shl15 = shl nuw nsw i64 %conv14, 24, !dbg !4373
  %or16 = or i64 %or12, %shl15, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %or16, metadata !4316, metadata !DIExpression()), !dbg !4319
  %incdec.ptr17 = getelementptr inbounds i8, ptr %retval.0.i, i64 6, !dbg !4375
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17, metadata !4315, metadata !DIExpression()), !dbg !4319
  %11 = load i8, ptr %incdec.ptr13, align 1, !dbg !4376, !tbaa !1057
  %conv18 = zext i8 %11 to i64, !dbg !4377
  %shl19 = shl nuw nsw i64 %conv18, 16, !dbg !4378
  %or20 = or i64 %or16, %shl19, !dbg !4379
  call void @llvm.dbg.value(metadata i64 %or20, metadata !4316, metadata !DIExpression()), !dbg !4319
  %incdec.ptr21 = getelementptr inbounds i8, ptr %retval.0.i, i64 7, !dbg !4380
  call void @llvm.dbg.value(metadata ptr %incdec.ptr21, metadata !4315, metadata !DIExpression()), !dbg !4319
  %12 = load i8, ptr %incdec.ptr17, align 1, !dbg !4381, !tbaa !1057
  %conv22 = zext i8 %12 to i64, !dbg !4382
  %shl23 = shl nuw nsw i64 %conv22, 8, !dbg !4383
  %or24 = or i64 %or20, %shl23, !dbg !4384
  call void @llvm.dbg.value(metadata i64 %or24, metadata !4316, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata ptr %incdec.ptr21, metadata !4315, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4319
  %13 = load i8, ptr %incdec.ptr21, align 1, !dbg !4385, !tbaa !1057
  %conv26 = zext i8 %13 to i64, !dbg !4386
  %or27 = or i64 %or24, %conv26, !dbg !4387
  call void @llvm.dbg.value(metadata i64 %or27, metadata !4316, metadata !DIExpression()), !dbg !4319
  br label %cleanup, !dbg !4388

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end
  %retval.0 = phi i64 [ %or27, %if.end ], [ 0, %ReadBlobStream.exit ], [ 0, %ReadBlobStream.exit.thread ], !dbg !4319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer) #22, !dbg !4389
  ret i64 %retval.0, !dbg !4389
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @ReadBlobMSBShort(ptr nocapture noundef readonly %image) local_unnamed_addr #12 !dbg !4390 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4392, metadata !DIExpression()), !dbg !4397
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #22, !dbg !4398
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4396, metadata !DIExpression()), !dbg !4399
  store i8 0, ptr %buffer, align 1, !dbg !4400, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4401
  call void @llvm.dbg.value(metadata i64 2, metadata !1872, metadata !DIExpression()) #22, !dbg !4401
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4401
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4401
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4403
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4403, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4404
  %1 = load i32, ptr %type.i, align 8, !dbg !4404, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4405
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4406

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 2, ptr noundef nonnull %buffer) #22, !dbg !4407
  br label %ReadBlobStream.exit, !dbg !4408

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4409
  %2 = load i64, ptr %offset.i, align 8, !dbg !4409, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !4410, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !4411
  br i1 %cmp4.not.i, label %if.end7.i, label %ReadBlobStream.exit.thread, !dbg !4412

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4413
  store i32 1, ptr %eof.i, align 4, !dbg !4414, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4393, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4395, metadata !DIExpression()), !dbg !4397
  br label %cleanup, !dbg !4415

if.end7.i:                                        ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4416
  %4 = load ptr, ptr %data9.i, align 8, !dbg !4416, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4417
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !4401
  %sub.i = sub i64 %3, %2, !dbg !4418
  call void @llvm.dbg.value(metadata i64 2, metadata !1125, metadata !DIExpression()) #22, !dbg !4419
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1130, metadata !DIExpression()) #22, !dbg !4419
  %5 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 2) #22, !dbg !4419
  %add.i = add nsw i64 %5, %2, !dbg !4421
  store i64 %add.i, ptr %offset.i, align 8, !dbg !4421, !tbaa !1051
  %cmp19.not.not.i = icmp ult i64 %sub.i, 2, !dbg !4422
  br i1 %cmp19.not.not.i, label %if.then20.i, label %ReadBlobStream.exit, !dbg !4423

if.then20.i:                                      ; preds = %if.end7.i
  %eof22.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4424
  store i32 1, ptr %eof22.i, align 4, !dbg !4425, !tbaa !1467
  br label %ReadBlobStream.exit, !dbg !4426

ReadBlobStream.exit:                              ; preds = %if.then.i, %if.end7.i, %if.then20.i
  %count.0 = phi i64 [ %5, %if.then20.i ], [ %5, %if.end7.i ], [ %call.i, %if.then.i ], !dbg !4401
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then20.i ], [ %add.ptr.i, %if.end7.i ], [ %buffer, %if.then.i ], !dbg !4401
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !4393, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4395, metadata !DIExpression()), !dbg !4397
  %cmp.not = icmp eq i64 %count.0, 2, !dbg !4427
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !4415

if.end:                                           ; preds = %ReadBlobStream.exit
  %incdec.ptr = getelementptr inbounds i8, ptr %retval.0.i, i64 1, !dbg !4429
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4393, metadata !DIExpression()), !dbg !4397
  %6 = load i8, ptr %retval.0.i, align 1, !dbg !4430, !tbaa !1057
  %conv = zext i8 %6 to i16, !dbg !4431
  %shl = shl nuw i16 %conv, 8, !dbg !4432
  call void @llvm.dbg.value(metadata i8 %6, metadata !4394, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_stack_value)), !dbg !4397
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4393, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4397
  %7 = load i8, ptr %incdec.ptr, align 1, !dbg !4433, !tbaa !1057
  %conv3 = zext i8 %7 to i16, !dbg !4434
  %or = or i16 %shl, %conv3, !dbg !4435
  call void @llvm.dbg.value(metadata !DIArgList(i8 %6, i8 %7), metadata !4394, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !4397
  br label %cleanup, !dbg !4436

cleanup:                                          ; preds = %ReadBlobStream.exit.thread, %ReadBlobStream.exit, %if.end
  %retval.0 = phi i16 [ %or, %if.end ], [ 0, %ReadBlobStream.exit ], [ 0, %ReadBlobStream.exit.thread ], !dbg !4397
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #22, !dbg !4437
  ret i16 %retval.0, !dbg !4437
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @ReadBlobString(ptr nocapture noundef readonly %image, ptr noundef %string) local_unnamed_addr #12 !dbg !4438 {
entry:
  %buffer = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4442, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata ptr %string, metadata !4443, metadata !DIExpression()), !dbg !4448
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer) #22, !dbg !4449
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4447, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 0, metadata !4445, metadata !DIExpression()), !dbg !4448
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52
  br label %for.body, !dbg !4451

for.body:                                         ; preds = %entry, %for.inc
  %i.067 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.067, metadata !4445, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4453
  call void @llvm.dbg.value(metadata i64 1, metadata !1872, metadata !DIExpression()) #22, !dbg !4453
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4453
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4453
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4457, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4458
  %1 = load i32, ptr %type.i, align 8, !dbg !4458, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4459
  br i1 %cmp.not.i, label %if.end.i, label %ReadBlobStream.exit, !dbg !4460

if.end.i:                                         ; preds = %for.body
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4461
  %2 = load i64, ptr %offset.i, align 8, !dbg !4461, !tbaa !1051
  %3 = load i64, ptr %0, align 8, !dbg !4462, !tbaa !1042
  %cmp4.not.i = icmp sgt i64 %3, %2, !dbg !4463
  br i1 %cmp4.not.i, label %ReadBlobStream.exit.thread73, label %ReadBlobStream.exit.thread, !dbg !4464

ReadBlobStream.exit.thread:                       ; preds = %if.end.i
  %eof.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 4, !dbg !4465
  store i32 1, ptr %eof.i, align 4, !dbg !4466, !tbaa !1467
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !4444, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %call.i, metadata !4446, metadata !DIExpression()), !dbg !4448
  br label %if.then, !dbg !4467

ReadBlobStream.exit.thread73:                     ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4468
  %4 = load ptr, ptr %data9.i, align 8, !dbg !4468, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %2, !dbg !4469
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1873, metadata !DIExpression()) #22, !dbg !4453
  %add.i = add nsw i64 %2, 1, !dbg !4470
  store i64 %add.i, ptr %offset.i, align 8, !dbg !4470, !tbaa !1051
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !4444, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %call.i, metadata !4446, metadata !DIExpression()), !dbg !4448
  br label %if.end4, !dbg !4467

ReadBlobStream.exit:                              ; preds = %for.body
  %call.i = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 1, ptr noundef nonnull %buffer) #22, !dbg !4471
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !4444, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %call.i, metadata !4446, metadata !DIExpression()), !dbg !4448
  %cmp1.not = icmp eq i64 %call.i, 1, !dbg !4472
  br i1 %cmp1.not, label %if.end4, label %if.then, !dbg !4467

if.then:                                          ; preds = %ReadBlobStream.exit, %ReadBlobStream.exit.thread
  %cmp2 = icmp eq i64 %i.067, 0, !dbg !4474
  br i1 %cmp2, label %cleanup, label %for.end, !dbg !4477

if.end4:                                          ; preds = %ReadBlobStream.exit.thread73, %ReadBlobStream.exit
  %retval.0.i77 = phi ptr [ %add.ptr.i, %ReadBlobStream.exit.thread73 ], [ %buffer, %ReadBlobStream.exit ]
  %5 = load i8, ptr %retval.0.i77, align 1, !dbg !4478, !tbaa !1057
  %arrayidx = getelementptr inbounds i8, ptr %string, i64 %i.067, !dbg !4479
  store i8 %5, ptr %arrayidx, align 1, !dbg !4480, !tbaa !1057
  switch i8 %5, label %for.inc [
    i8 13, label %for.end
    i8 10, label %for.end
  ], !dbg !4481

for.inc:                                          ; preds = %if.end4
  %inc = add nuw nsw i64 %i.067, 1, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4445, metadata !DIExpression()), !dbg !4448
  %exitcond.not = icmp eq i64 %inc, 4095, !dbg !4484
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !4451, !llvm.loop !4485

for.end:                                          ; preds = %if.end4, %if.end4, %for.inc, %if.then
  %i.066 = phi i64 [ %i.067, %if.then ], [ 4095, %for.inc ], [ %i.067, %if.end4 ], [ %i.067, %if.end4 ]
  %arrayidx14 = getelementptr inbounds i8, ptr %string, i64 %i.066, !dbg !4487
  %6 = load i8, ptr %arrayidx14, align 1, !dbg !4487, !tbaa !1057
  %cmp16 = icmp eq i8 %6, 13, !dbg !4489
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !4490

if.then18:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %image, metadata !1871, metadata !DIExpression()) #22, !dbg !4491
  call void @llvm.dbg.value(metadata i64 1, metadata !1872, metadata !DIExpression()) #22, !dbg !4491
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !1873, metadata !DIExpression()) #22, !dbg !4491
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()) #22, !dbg !4491
  %7 = load ptr, ptr %blob.i, align 8, !dbg !4493, !tbaa !1249
  %type.i40 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 11, !dbg !4494
  %8 = load i32, ptr %type.i40, align 8, !dbg !4494, !tbaa !1054
  %cmp.not.i41 = icmp eq i32 %8, 7, !dbg !4495
  br i1 %cmp.not.i41, label %if.end.i46, label %if.then.i43, !dbg !4496

if.then.i43:                                      ; preds = %if.then18
  %call.i42 = call i64 @ReadBlob(ptr noundef nonnull %image, i64 noundef 1, ptr noundef nonnull %buffer) #22, !dbg !4497
  br label %if.end21, !dbg !4498

if.end.i46:                                       ; preds = %if.then18
  %offset.i44 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 5, !dbg !4499
  %9 = load i64, ptr %offset.i44, align 8, !dbg !4499, !tbaa !1051
  %10 = load i64, ptr %7, align 8, !dbg !4500, !tbaa !1042
  %cmp4.not.i45 = icmp sgt i64 %10, %9, !dbg !4501
  br i1 %cmp4.not.i45, label %if.end7.i54, label %if.then5.i48, !dbg !4502

if.then5.i48:                                     ; preds = %if.end.i46
  %eof.i47 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 4, !dbg !4503
  store i32 1, ptr %eof.i47, align 4, !dbg !4504, !tbaa !1467
  br label %if.end21, !dbg !4505

if.end7.i54:                                      ; preds = %if.end.i46
  call void @llvm.dbg.value(metadata !DIArgList(ptr undef, i64 %9), metadata !1873, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #22, !dbg !4491
  %add.i52 = add nsw i64 %9, 1, !dbg !4506
  store i64 %add.i52, ptr %offset.i44, align 8, !dbg !4506, !tbaa !1051
  br label %if.end21, !dbg !4507

if.end21:                                         ; preds = %if.end7.i54, %if.then5.i48, %if.then.i43, %for.end
  store i8 0, ptr %arrayidx14, align 1, !dbg !4508, !tbaa !1057
  br label %cleanup, !dbg !4509

cleanup:                                          ; preds = %if.then, %if.end21
  %retval.0 = phi ptr [ %string, %if.end21 ], [ null, %if.then ], !dbg !4448
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer) #22, !dbg !4510
  ret ptr %retval.0, !dbg !4510
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SeekBlob(ptr noundef %image, i64 noundef %offset, i32 noundef %whence) local_unnamed_addr #0 !dbg !4511 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4515, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i64 %offset, metadata !4516, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 %whence, metadata !4517, metadata !DIExpression()), !dbg !4518
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4519
  %0 = load i32, ptr %debug, align 8, !dbg !4519, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !4521
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4522

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4523
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3604, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !4524
  br label %if.end, !dbg !4525

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4526
  %1 = load ptr, ptr %blob, align 8, !dbg !4526, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !4527
  %2 = load i32, ptr %type, align 8, !dbg !4527, !tbaa !1054
  switch i32 %2, label %sw.epilog78 [
    i32 7, label %sw.bb16
    i32 2, label %return
    i32 1, label %sw.bb1
    i32 3, label %sw.bb10
    i32 4, label %sw.bb10
    i32 5, label %return
    i32 6, label %return
  ], !dbg !4528

sw.bb1:                                           ; preds = %if.end
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 12, !dbg !4529
  %3 = load ptr, ptr %file_info, align 8, !dbg !4533, !tbaa !1057
  %call3 = tail call i32 @fseek(ptr noundef %3, i64 noundef %offset, i32 noundef %whence), !dbg !4534
  %cmp4 = icmp slt i32 %call3, 0, !dbg !4535
  br i1 %cmp4, label %return, label %if.end6, !dbg !4536

if.end6:                                          ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4537, metadata !DIExpression()) #22, !dbg !4543
  %4 = load i32, ptr %debug, align 8, !dbg !4545, !tbaa !1559
  %cmp.not.i = icmp eq i32 %4, 0, !dbg !4547
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4548

if.then.i:                                        ; preds = %if.end6
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4549
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3965, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #22, !dbg !4550
  br label %if.end.i, !dbg !4551

if.end.i:                                         ; preds = %if.then.i, %if.end6
  call void @llvm.dbg.value(metadata i64 -1, metadata !4542, metadata !DIExpression()) #22, !dbg !4543
  %5 = load ptr, ptr %blob, align 8, !dbg !4552, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 11, !dbg !4553
  %6 = load i32, ptr %type.i, align 8, !dbg !4553, !tbaa !1054
  switch i32 %6, label %TellBlob.exit [
    i32 7, label %sw.bb5.i
    i32 1, label %sw.bb1.i
  ], !dbg !4554

sw.bb1.i:                                         ; preds = %if.end.i
  %file_info.i = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 12, !dbg !4555
  %7 = load ptr, ptr %file_info.i, align 8, !dbg !4558, !tbaa !1057
  %call3.i = tail call i64 @ftell(ptr noundef %7) #22, !dbg !4559
  call void @llvm.dbg.value(metadata i64 %call3.i, metadata !4542, metadata !DIExpression()) #22, !dbg !4543
  %.pre133 = load ptr, ptr %blob, align 8, !dbg !4560, !tbaa !1249
  br label %TellBlob.exit, !dbg !4561

sw.bb5.i:                                         ; preds = %if.end.i
  %offset7.i = getelementptr inbounds %struct._BlobInfo, ptr %5, i64 0, i32 5, !dbg !4562
  %8 = load i64, ptr %offset7.i, align 8, !dbg !4562, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %8, metadata !4542, metadata !DIExpression()) #22, !dbg !4543
  br label %TellBlob.exit, !dbg !4564

TellBlob.exit:                                    ; preds = %if.end.i, %sw.bb1.i, %sw.bb5.i
  %9 = phi ptr [ %5, %if.end.i ], [ %.pre133, %sw.bb1.i ], [ %5, %sw.bb5.i ], !dbg !4560
  %offset.0.i = phi i64 [ -1, %if.end.i ], [ %call3.i, %sw.bb1.i ], [ %8, %sw.bb5.i ], !dbg !4543
  call void @llvm.dbg.value(metadata i64 %offset.0.i, metadata !4542, metadata !DIExpression()) #22, !dbg !4543
  %offset9 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 5, !dbg !4565
  store i64 %offset.0.i, ptr %offset9, align 8, !dbg !4566, !tbaa !1051
  br label %sw.epilog78, !dbg !4567

sw.bb10:                                          ; preds = %if.end, %if.end
  call void @llvm.dbg.value(metadata ptr %image, metadata !4537, metadata !DIExpression()) #22, !dbg !4568
  %10 = load i32, ptr %debug, align 8, !dbg !4571, !tbaa !1559
  %cmp.not.i117 = icmp eq i32 %10, 0, !dbg !4572
  br i1 %cmp.not.i117, label %if.end.i123, label %if.then.i120, !dbg !4573

if.then.i120:                                     ; preds = %sw.bb10
  %filename.i118 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4574
  %call.i119 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3965, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i118) #22, !dbg !4575
  %.pre = load ptr, ptr %blob, align 8, !dbg !4576, !tbaa !1249
  %type.i122.phi.trans.insert = getelementptr inbounds %struct._BlobInfo, ptr %.pre, i64 0, i32 11
  %.pre131 = load i32, ptr %type.i122.phi.trans.insert, align 8, !dbg !4577, !tbaa !1054
  br label %if.end.i123, !dbg !4578

if.end.i123:                                      ; preds = %if.then.i120, %sw.bb10
  %11 = phi i32 [ %.pre131, %if.then.i120 ], [ %2, %sw.bb10 ], !dbg !4577
  %12 = phi ptr [ %.pre, %if.then.i120 ], [ %1, %sw.bb10 ], !dbg !4576
  call void @llvm.dbg.value(metadata i64 -1, metadata !4542, metadata !DIExpression()) #22, !dbg !4568
  switch i32 %11, label %TellBlob.exit130 [
    i32 7, label %sw.bb5.i128
    i32 1, label %sw.bb1.i126
  ], !dbg !4579

sw.bb1.i126:                                      ; preds = %if.end.i123
  %file_info.i124 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 12, !dbg !4580
  %13 = load ptr, ptr %file_info.i124, align 8, !dbg !4581, !tbaa !1057
  %call3.i125 = tail call i64 @ftell(ptr noundef %13) #22, !dbg !4582
  call void @llvm.dbg.value(metadata i64 %call3.i125, metadata !4542, metadata !DIExpression()) #22, !dbg !4568
  %.pre132 = load ptr, ptr %blob, align 8, !dbg !4583, !tbaa !1249
  br label %TellBlob.exit130, !dbg !4584

sw.bb5.i128:                                      ; preds = %if.end.i123
  %offset7.i127 = getelementptr inbounds %struct._BlobInfo, ptr %12, i64 0, i32 5, !dbg !4585
  %14 = load i64, ptr %offset7.i127, align 8, !dbg !4585, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %14, metadata !4542, metadata !DIExpression()) #22, !dbg !4568
  br label %TellBlob.exit130, !dbg !4586

TellBlob.exit130:                                 ; preds = %if.end.i123, %sw.bb1.i126, %sw.bb5.i128
  %15 = phi ptr [ %12, %if.end.i123 ], [ %.pre132, %sw.bb1.i126 ], [ %12, %sw.bb5.i128 ], !dbg !4583
  %offset.0.i129 = phi i64 [ -1, %if.end.i123 ], [ %call3.i125, %sw.bb1.i126 ], [ %14, %sw.bb5.i128 ], !dbg !4568
  call void @llvm.dbg.value(metadata i64 %offset.0.i129, metadata !4542, metadata !DIExpression()) #22, !dbg !4568
  %offset13 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 5, !dbg !4587
  store i64 %offset.0.i129, ptr %offset13, align 8, !dbg !4588, !tbaa !1051
  br label %sw.epilog78, !dbg !4589

sw.bb16:                                          ; preds = %if.end
  switch i32 %whence, label %sw.default [
    i32 2, label %sw.bb32
    i32 1, label %sw.bb23
  ], !dbg !4590

sw.default:                                       ; preds = %sw.bb16
  %cmp18 = icmp slt i64 %offset, 0, !dbg !4592
  br i1 %cmp18, label %return, label %if.end20, !dbg !4596

if.end20:                                         ; preds = %sw.default
  %offset22 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 5, !dbg !4597
  store i64 %offset, ptr %offset22, align 8, !dbg !4598, !tbaa !1051
  br label %sw.epilog, !dbg !4599

sw.bb23:                                          ; preds = %sw.bb16
  %offset25 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 5, !dbg !4600
  %16 = load i64, ptr %offset25, align 8, !dbg !4600, !tbaa !1051
  %add = add nsw i64 %16, %offset, !dbg !4603
  %cmp26 = icmp slt i64 %add, 0, !dbg !4604
  br i1 %cmp26, label %return, label %if.end28, !dbg !4605

if.end28:                                         ; preds = %sw.bb23
  store i64 %add, ptr %offset25, align 8, !dbg !4606, !tbaa !1051
  br label %sw.epilog, !dbg !4607

sw.bb32:                                          ; preds = %sw.bb16
  %17 = load i64, ptr %1, align 8, !dbg !4608, !tbaa !1042
  %add34 = add i64 %17, %offset, !dbg !4611
  %cmp35 = icmp slt i64 %add34, 0, !dbg !4612
  br i1 %cmp35, label %return, label %if.end37, !dbg !4613

if.end37:                                         ; preds = %sw.bb32
  %offset42 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 5, !dbg !4614
  store i64 %add34, ptr %offset42, align 8, !dbg !4615, !tbaa !1051
  br label %sw.epilog, !dbg !4616

sw.epilog:                                        ; preds = %if.end37, %if.end28, %if.end20
  %18 = phi i64 [ %add34, %if.end37 ], [ %add, %if.end28 ], [ %offset, %if.end20 ], !dbg !4617
  %19 = load i64, ptr %1, align 8, !dbg !4619, !tbaa !1042
  %cmp47.not = icmp sgt i64 %18, %19, !dbg !4620
  br i1 %cmp47.not, label %if.else, label %if.then48, !dbg !4621

if.then48:                                        ; preds = %sw.epilog
  %eof = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 4, !dbg !4622
  store i32 0, ptr %eof, align 4, !dbg !4623, !tbaa !1467
  br label %sw.epilog78, !dbg !4624

if.else:                                          ; preds = %sw.epilog
  %mapped = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 3, !dbg !4625
  %20 = load i32, ptr %mapped, align 8, !dbg !4625, !tbaa !1063
  %cmp51.not = icmp eq i32 %20, 0, !dbg !4627
  br i1 %cmp51.not, label %if.else53, label %return, !dbg !4628

if.else53:                                        ; preds = %if.else
  %quantum = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 2, !dbg !4629
  %21 = load i64, ptr %quantum, align 8, !dbg !4629, !tbaa !1048
  %add57 = add i64 %21, %18, !dbg !4631
  %extent = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 1, !dbg !4632
  store i64 %add57, ptr %extent, align 8, !dbg !4633, !tbaa !1045
  %shl = shl i64 %21, 1, !dbg !4634
  store i64 %shl, ptr %quantum, align 8, !dbg !4634, !tbaa !1048
  %data = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 15, !dbg !4635
  %22 = load ptr, ptr %data, align 8, !dbg !4635, !tbaa !1060
  %add64 = add i64 %add57, 1, !dbg !4636
  %call65 = tail call ptr @ResizeQuantumMemory(ptr noundef %22, i64 noundef %add64, i64 noundef 1) #27, !dbg !4637
  %23 = load ptr, ptr %blob, align 8, !dbg !4638, !tbaa !1249
  %data67 = getelementptr inbounds %struct._BlobInfo, ptr %23, i64 0, i32 15, !dbg !4639
  store ptr %call65, ptr %data67, align 8, !dbg !4640, !tbaa !1060
  %call68 = tail call fastcc i32 @SyncBlob(ptr noundef nonnull %image), !dbg !4641
  %24 = load ptr, ptr %blob, align 8, !dbg !4642, !tbaa !1249
  %data70 = getelementptr inbounds %struct._BlobInfo, ptr %24, i64 0, i32 15, !dbg !4644
  %25 = load ptr, ptr %data70, align 8, !dbg !4644, !tbaa !1060
  %cmp71 = icmp eq ptr %25, null, !dbg !4645
  br i1 %cmp71, label %if.then72, label %sw.epilog78, !dbg !4646

if.then72:                                        ; preds = %if.else53
  %call74 = tail call ptr @DetachBlob(ptr noundef nonnull %24), !dbg !4647
  br label %return, !dbg !4649

sw.epilog78:                                      ; preds = %if.then48, %if.else53, %if.end, %TellBlob.exit130, %TellBlob.exit
  %26 = phi ptr [ %1, %if.then48 ], [ %24, %if.else53 ], [ %1, %if.end ], [ %15, %TellBlob.exit130 ], [ %9, %TellBlob.exit ], !dbg !4650
  %offset80 = getelementptr inbounds %struct._BlobInfo, ptr %26, i64 0, i32 5, !dbg !4651
  %27 = load i64, ptr %offset80, align 8, !dbg !4651, !tbaa !1051
  br label %return, !dbg !4652

return:                                           ; preds = %if.else, %sw.bb32, %sw.bb23, %sw.default, %if.end, %if.end, %sw.bb1, %if.end, %sw.epilog78, %if.then72
  %retval.0 = phi i64 [ %27, %sw.epilog78 ], [ -1, %if.then72 ], [ -1, %if.end ], [ -1, %sw.bb1 ], [ -1, %if.end ], [ -1, %if.end ], [ -1, %sw.default ], [ -1, %sw.bb23 ], [ -1, %sw.bb32 ], [ -1, %if.else ], !dbg !4518
  ret i64 %retval.0, !dbg !4653
}

; Function Attrs: nounwind uwtable
define dso_local i64 @TellBlob(ptr noundef %image) local_unnamed_addr #0 !dbg !4538 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4537, metadata !DIExpression()), !dbg !4654
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4655
  %0 = load i32, ptr %debug, align 8, !dbg !4655, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !4656
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4657

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4658
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3965, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !4659
  br label %if.end, !dbg !4660

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 -1, metadata !4542, metadata !DIExpression()), !dbg !4654
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4661
  %1 = load ptr, ptr %blob, align 8, !dbg !4661, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !4662
  %2 = load i32, ptr %type, align 8, !dbg !4662, !tbaa !1054
  switch i32 %2, label %sw.epilog [
    i32 7, label %sw.bb5
    i32 1, label %sw.bb1
  ], !dbg !4663

sw.bb1:                                           ; preds = %if.end
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 12, !dbg !4664
  %3 = load ptr, ptr %file_info, align 8, !dbg !4665, !tbaa !1057
  %call3 = tail call i64 @ftell(ptr noundef %3), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %call3, metadata !4542, metadata !DIExpression()), !dbg !4654
  br label %sw.epilog, !dbg !4667

sw.bb5:                                           ; preds = %if.end
  %offset7 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 5, !dbg !4668
  %4 = load i64, ptr %offset7, align 8, !dbg !4668, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 %4, metadata !4542, metadata !DIExpression()), !dbg !4654
  br label %sw.epilog, !dbg !4669

sw.epilog:                                        ; preds = %if.end, %sw.bb5, %sw.bb1
  %offset.0 = phi i64 [ -1, %if.end ], [ %call3, %sw.bb1 ], [ %4, %sw.bb5 ], !dbg !4654
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !4542, metadata !DIExpression()), !dbg !4654
  ret i64 %offset.0, !dbg !4670
}

; Function Attrs: nounwind uwtable
define dso_local void @SetBlobExempt(ptr noundef %image, i32 noundef %exempt) local_unnamed_addr #0 !dbg !4671 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4675, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i32 %exempt, metadata !4676, metadata !DIExpression()), !dbg !4677
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4678
  %0 = load i32, ptr %debug, align 8, !dbg !4678, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !4680
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4681

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4682
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3718, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !4683
  br label %if.end, !dbg !4684

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4685
  %1 = load ptr, ptr %blob, align 8, !dbg !4685, !tbaa !1249
  %exempt1 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 7, !dbg !4686
  store i32 %exempt, ptr %exempt1, align 8, !dbg !4687, !tbaa !1286
  ret void, !dbg !4688
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetBlobExtent(ptr noundef %image, i64 noundef %extent) local_unnamed_addr #0 !dbg !4689 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4691, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i64 %extent, metadata !4692, metadata !DIExpression()), !dbg !4702
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4703
  %0 = load i32, ptr %debug, align 8, !dbg !4703, !tbaa !1559
  %cmp.not = icmp eq i32 %0, 0, !dbg !4705
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4706

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4707
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3754, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #22, !dbg !4708
  br label %if.end, !dbg !4709

if.end:                                           ; preds = %if.then, %entry
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4710
  %1 = load ptr, ptr %blob, align 8, !dbg !4710, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !4711
  %2 = load i32, ptr %type, align 8, !dbg !4711, !tbaa !1054
  switch i32 %2, label %sw.epilog [
    i32 7, label %if.end26
    i32 2, label %return
    i32 1, label %if.end4
    i32 3, label %return
    i32 4, label %return
    i32 5, label %return
    i32 6, label %return
  ], !dbg !4712

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @SeekBlob(ptr noundef nonnull %image, i64 noundef 0, i32 noundef 2), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %call5, metadata !4693, metadata !DIExpression()), !dbg !4714
  %cmp6 = icmp slt i64 %call5, 0, !dbg !4715
  br i1 %cmp6, label %return, label %if.end8, !dbg !4717

if.end8:                                          ; preds = %if.end4
  %cmp9.not = icmp ult i64 %call5, %extent, !dbg !4718
  br i1 %cmp9.not, label %cleanup, label %sw.epilog, !dbg !4720

cleanup:                                          ; preds = %if.end8
  %sub = add nsw i64 %extent, -1, !dbg !4721
  %call12 = tail call i64 @SeekBlob(ptr noundef nonnull %image, i64 noundef %sub, i32 noundef 0), !dbg !4722
  call void @llvm.dbg.value(metadata i64 %call12, metadata !4693, metadata !DIExpression()), !dbg !4714
  %3 = load ptr, ptr %blob, align 8, !dbg !4723, !tbaa !1249
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %3, i64 0, i32 12, !dbg !4724
  %4 = load ptr, ptr %file_info, align 8, !dbg !4725, !tbaa !1057
  %call14 = tail call i64 @fwrite(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 1, ptr noundef %4), !dbg !4726
  call void @llvm.dbg.value(metadata i64 %call14, metadata !4696, metadata !DIExpression()), !dbg !4714
  %call15 = tail call i64 @SeekBlob(ptr noundef nonnull %image, i64 noundef %call12, i32 noundef 0), !dbg !4727
  call void @llvm.dbg.value(metadata i64 %call15, metadata !4693, metadata !DIExpression()), !dbg !4714
  %cmp16.not = icmp eq i64 %call14, 1, !dbg !4728
  br i1 %cmp16.not, label %sw.epilog, label %return

if.end26:                                         ; preds = %if.end
  %mapped = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 3, !dbg !4730
  %5 = load i32, ptr %mapped, align 8, !dbg !4730, !tbaa !1063
  %cmp28.not = icmp eq i32 %5, 0, !dbg !4731
  br i1 %cmp28.not, label %if.end71, label %if.then29, !dbg !4732

if.then29:                                        ; preds = %if.end26
  %6 = load i64, ptr %1, align 8, !dbg !4733, !tbaa !1042
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %6) #22, !dbg !4734
  %call40 = tail call i64 @SeekBlob(ptr noundef nonnull %image, i64 noundef 0, i32 noundef 2), !dbg !4735
  call void @llvm.dbg.value(metadata i64 %call40, metadata !4697, metadata !DIExpression()), !dbg !4736
  %cmp41 = icmp slt i64 %call40, 0, !dbg !4737
  br i1 %cmp41, label %return, label %if.end43, !dbg !4739

if.end43:                                         ; preds = %if.then29
  %cmp44.not = icmp ult i64 %call40, %extent, !dbg !4740
  br i1 %cmp44.not, label %if.end46, label %sw.epilog, !dbg !4742

if.end46:                                         ; preds = %if.end43
  %sub47 = add nsw i64 %extent, -1, !dbg !4743
  %call48 = tail call i64 @SeekBlob(ptr noundef nonnull %image, i64 noundef %sub47, i32 noundef 0), !dbg !4744
  call void @llvm.dbg.value(metadata i64 %call48, metadata !4697, metadata !DIExpression()), !dbg !4736
  %7 = load ptr, ptr %blob, align 8, !dbg !4745, !tbaa !1249
  %file_info50 = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 12, !dbg !4746
  %8 = load ptr, ptr %file_info50, align 8, !dbg !4747, !tbaa !1057
  %call51 = tail call i64 @fwrite(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 1, ptr noundef %8), !dbg !4748
  call void @llvm.dbg.value(metadata i64 %call51, metadata !4701, metadata !DIExpression()), !dbg !4736
  %call52 = tail call i64 @SeekBlob(ptr noundef nonnull %image, i64 noundef %call48, i32 noundef 0), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %call52, metadata !4697, metadata !DIExpression()), !dbg !4736
  %cmp53.not = icmp eq i64 %call51, 1, !dbg !4750
  br i1 %cmp53.not, label %if.end55, label %return, !dbg !4752

if.end55:                                         ; preds = %if.end46
  %call56 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %extent) #22, !dbg !4753
  %9 = load ptr, ptr %blob, align 8, !dbg !4754, !tbaa !1249
  %file_info58 = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 12, !dbg !4755
  %10 = load ptr, ptr %file_info58, align 8, !dbg !4756, !tbaa !1057
  %call59 = tail call i32 @fileno(ptr noundef %10) #22, !dbg !4757
  %11 = load ptr, ptr %blob, align 8, !dbg !4758, !tbaa !1249
  %data62 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 15, !dbg !4759
  store ptr null, ptr %data62, align 8, !dbg !4760, !tbaa !1060
  %extent64 = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 1, !dbg !4761
  store i64 %extent, ptr %extent64, align 8, !dbg !4762, !tbaa !1045
  store i64 %extent, ptr %11, align 8, !dbg !4763, !tbaa !1042
  %call67 = tail call fastcc i32 @SyncBlob(ptr noundef nonnull %image), !dbg !4764
  br label %sw.epilog, !dbg !4765

if.end71:                                         ; preds = %if.end26
  %extent73 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 1, !dbg !4766
  store i64 %extent, ptr %extent73, align 8, !dbg !4767, !tbaa !1045
  %data75 = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 15, !dbg !4768
  %12 = load ptr, ptr %data75, align 8, !dbg !4768, !tbaa !1060
  %add = add i64 %extent, 1, !dbg !4769
  %call78 = tail call ptr @ResizeQuantumMemory(ptr noundef %12, i64 noundef %add, i64 noundef 1) #27, !dbg !4770
  %13 = load ptr, ptr %blob, align 8, !dbg !4771, !tbaa !1249
  %data80 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 15, !dbg !4772
  store ptr %call78, ptr %data80, align 8, !dbg !4773, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %image, metadata !1570, metadata !DIExpression()) #22, !dbg !4774
  %14 = load i32, ptr %debug, align 8, !dbg !4776, !tbaa !1559
  %cmp.not.i = icmp eq i32 %14, 0, !dbg !4777
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4778

if.then.i:                                        ; preds = %if.end71
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4779
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #22, !dbg !4780
  %.pre = load ptr, ptr %blob, align 8, !dbg !4781, !tbaa !1249
  br label %if.end.i, !dbg !4782

if.end.i:                                         ; preds = %if.then.i, %if.end71
  %15 = phi ptr [ %.pre, %if.then.i ], [ %13, %if.end71 ], !dbg !4781
  call void @llvm.dbg.value(metadata i32 0, metadata !1575, metadata !DIExpression()) #22, !dbg !4774
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 11, !dbg !4783
  %16 = load i32, ptr %type.i, align 8, !dbg !4783, !tbaa !1054
  switch i32 %16, label %SyncBlob.exit [
    i32 3, label %sw.bb1.i
    i32 1, label %sw.bb1.i
  ], !dbg !4784

sw.bb1.i:                                         ; preds = %if.end.i, %if.end.i
  %file_info.i = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 12, !dbg !4785
  %17 = load ptr, ptr %file_info.i, align 8, !dbg !4786, !tbaa !1057
  %call3.i = tail call i32 @fflush(ptr noundef %17) #22, !dbg !4787
  call void @llvm.dbg.value(metadata i32 %call3.i, metadata !1575, metadata !DIExpression()) #22, !dbg !4774
  %.pre145 = load ptr, ptr %blob, align 8, !dbg !4788, !tbaa !1249
  br label %SyncBlob.exit, !dbg !4790

SyncBlob.exit:                                    ; preds = %if.end.i, %sw.bb1.i
  %18 = phi ptr [ %15, %if.end.i ], [ %.pre145, %sw.bb1.i ], !dbg !4788
  call void @llvm.dbg.value(metadata i32 undef, metadata !1575, metadata !DIExpression()) #22, !dbg !4774
  %data83 = getelementptr inbounds %struct._BlobInfo, ptr %18, i64 0, i32 15, !dbg !4791
  %19 = load ptr, ptr %data83, align 8, !dbg !4791, !tbaa !1060
  %cmp84 = icmp eq ptr %19, null, !dbg !4792
  br i1 %cmp84, label %if.then85, label %sw.epilog, !dbg !4793

if.then85:                                        ; preds = %SyncBlob.exit
  %call87 = tail call ptr @DetachBlob(ptr noundef nonnull %18), !dbg !4794
  br label %return, !dbg !4796

sw.epilog:                                        ; preds = %if.end55, %if.end43, %if.end8, %cleanup, %SyncBlob.exit, %if.end
  br label %return, !dbg !4797

return:                                           ; preds = %if.end46, %if.then29, %if.end4, %if.end, %if.end, %if.end, %if.end, %cleanup, %if.end, %sw.epilog, %if.then85
  %retval.2 = phi i32 [ 1, %sw.epilog ], [ 0, %cleanup ], [ 0, %if.then85 ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.then29 ], [ 0, %if.end46 ], !dbg !4702
  ret i32 %retval.2, !dbg !4798
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !4799 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlob(ptr noundef %image, i64 noundef %length, ptr noundef %data) local_unnamed_addr #0 !dbg !4802 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4804, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %length, metadata !4805, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %data, metadata !4806, metadata !DIExpression()), !dbg !4813
  %cmp = icmp eq i64 %length, 0, !dbg !4814
  br i1 %cmp, label %cleanup87, label %if.end, !dbg !4816

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !4809, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %data, metadata !4808, metadata !DIExpression()), !dbg !4813
  %blob = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4817
  %0 = load ptr, ptr %blob, align 8, !dbg !4817, !tbaa !1249
  %type = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4818
  %1 = load i32, ptr %type, align 8, !dbg !4818, !tbaa !1054
  switch i32 %1, label %cleanup87 [
    i32 7, label %sw.bb31
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb3
    i32 6, label %sw.bb28
  ], !dbg !4819

sw.bb:                                            ; preds = %if.end
  %file_info = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12, !dbg !4820
  %2 = load ptr, ptr %file_info, align 8, !dbg !4822, !tbaa !1057
  %call = tail call i32 @fileno(ptr noundef %2) #22, !dbg !4823
  %call2 = tail call i64 @write(i32 noundef %call, ptr noundef %data, i64 noundef %length) #22, !dbg !4824
  call void @llvm.dbg.value(metadata i64 %call2, metadata !4809, metadata !DIExpression()), !dbg !4813
  br label %cleanup87, !dbg !4825

sw.bb3:                                           ; preds = %if.end, %if.end
  switch i64 %length, label %sw.default [
    i64 2, label %sw.bb7
    i64 1, label %sw.bb15
  ], !dbg !4826

sw.default:                                       ; preds = %sw.bb3
  %file_info5 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12, !dbg !4828
  %3 = load ptr, ptr %file_info5, align 8, !dbg !4831, !tbaa !1057
  %call6 = tail call i64 @fwrite(ptr noundef %data, i64 noundef 1, i64 noundef %length, ptr noundef %3), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %call6, metadata !4809, metadata !DIExpression()), !dbg !4813
  br label %cleanup87, !dbg !4833

sw.bb7:                                           ; preds = %sw.bb3
  call void @llvm.dbg.value(metadata ptr %data, metadata !4808, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4813
  %4 = load i8, ptr %data, align 1, !dbg !4834, !tbaa !1057
  %conv = zext i8 %4 to i32, !dbg !4836
  %file_info9 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 12, !dbg !4837
  %5 = load ptr, ptr %file_info9, align 8, !dbg !4838, !tbaa !1057
  %call10 = tail call i32 @putc(i32 noundef %conv, ptr noundef %5), !dbg !4839
  call void @llvm.dbg.value(metadata i32 %call10, metadata !4807, metadata !DIExpression()), !dbg !4813
  %cmp11 = icmp eq i32 %call10, -1, !dbg !4840
  br i1 %cmp11, label %cleanup87, label %if.end14, !dbg !4842

if.end14:                                         ; preds = %sw.bb7
  %incdec.ptr = getelementptr inbounds i8, ptr %data, i64 1, !dbg !4843
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4808, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 1, metadata !4809, metadata !DIExpression()), !dbg !4813
  %.pre = load ptr, ptr %blob, align 8, !dbg !4844, !tbaa !1249
  br label %sw.bb15, !dbg !4846

sw.bb15:                                          ; preds = %sw.bb3, %if.end14
  %6 = phi ptr [ %0, %sw.bb3 ], [ %.pre, %if.end14 ], !dbg !4844
  %p.0 = phi ptr [ %data, %sw.bb3 ], [ %incdec.ptr, %if.end14 ], !dbg !4813
  %count.0 = phi i64 [ 0, %sw.bb3 ], [ 1, %if.end14 ], !dbg !4813
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !4809, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !4808, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !4808, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4813
  %7 = load i8, ptr %p.0, align 1, !dbg !4847, !tbaa !1057
  %conv17 = zext i8 %7 to i32, !dbg !4848
  %file_info19 = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 12, !dbg !4849
  %8 = load ptr, ptr %file_info19, align 8, !dbg !4850, !tbaa !1057
  %call20 = tail call i32 @putc(i32 noundef %conv17, ptr noundef %8), !dbg !4851
  call void @llvm.dbg.value(metadata i32 %call20, metadata !4807, metadata !DIExpression()), !dbg !4813
  %cmp21 = icmp ne i32 %call20, -1, !dbg !4852
  %inc25 = zext i1 %cmp21 to i64, !dbg !4854
  %spec.select = add nuw nsw i64 %count.0, %inc25, !dbg !4854
  br label %cleanup87, !dbg !4854

sw.bb28:                                          ; preds = %if.end
  %stream = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 14, !dbg !4855
  %9 = load ptr, ptr %stream, align 8, !dbg !4855, !tbaa !1499
  %call30 = tail call i64 %9(ptr noundef nonnull %image, ptr noundef %data, i64 noundef %length) #22, !dbg !4857
  call void @llvm.dbg.value(metadata i64 %call30, metadata !4809, metadata !DIExpression()), !dbg !4813
  br label %cleanup87, !dbg !4858

sw.bb31:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4859
  %10 = load i64, ptr %offset, align 8, !dbg !4859, !tbaa !1051
  %add = add nsw i64 %10, %length, !dbg !4861
  %extent = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1, !dbg !4862
  %11 = load i64, ptr %extent, align 8, !dbg !4862, !tbaa !1045
  %cmp34.not = icmp slt i64 %add, %11, !dbg !4863
  br i1 %cmp34.not, label %sw.bb31.if.end66_crit_edge, label %if.then36, !dbg !4864

sw.bb31.if.end66_crit_edge:                       ; preds = %sw.bb31
  %data68.phi.trans.insert = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15
  %.pre137 = load ptr, ptr %data68.phi.trans.insert, align 8, !dbg !4865, !tbaa !1060
  br label %if.end66, !dbg !4864

if.then36:                                        ; preds = %sw.bb31
  %mapped = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 3, !dbg !4866
  %12 = load i32, ptr %mapped, align 8, !dbg !4866, !tbaa !1063
  %cmp38.not = icmp eq i32 %12, 0, !dbg !4869
  br i1 %cmp38.not, label %if.end41, label %cleanup87, !dbg !4870

if.end41:                                         ; preds = %if.then36
  %quantum = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2, !dbg !4871
  %13 = load i64, ptr %quantum, align 8, !dbg !4871, !tbaa !1048
  %add43 = add i64 %11, %length, !dbg !4872
  %add46 = add i64 %add43, %13, !dbg !4873
  store i64 %add46, ptr %extent, align 8, !dbg !4873, !tbaa !1045
  %shl = shl i64 %13, 1, !dbg !4874
  store i64 %shl, ptr %quantum, align 8, !dbg !4874, !tbaa !1048
  %data50 = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 15, !dbg !4875
  %14 = load ptr, ptr %data50, align 8, !dbg !4875, !tbaa !1060
  %add53 = add i64 %add46, 1, !dbg !4876
  %call54 = tail call ptr @ResizeQuantumMemory(ptr noundef %14, i64 noundef %add53, i64 noundef 1) #27, !dbg !4877
  %15 = load ptr, ptr %blob, align 8, !dbg !4878, !tbaa !1249
  %data56 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 15, !dbg !4879
  store ptr %call54, ptr %data56, align 8, !dbg !4880, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %image, metadata !1570, metadata !DIExpression()) #22, !dbg !4881
  %debug.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4883
  %16 = load i32, ptr %debug.i, align 8, !dbg !4883, !tbaa !1559
  %cmp.not.i = icmp eq i32 %16, 0, !dbg !4884
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4885

if.then.i:                                        ; preds = %if.end41
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4886
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3898, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #22, !dbg !4887
  %.pre135 = load ptr, ptr %blob, align 8, !dbg !4888, !tbaa !1249
  br label %if.end.i, !dbg !4889

if.end.i:                                         ; preds = %if.then.i, %if.end41
  %17 = phi ptr [ %.pre135, %if.then.i ], [ %15, %if.end41 ], !dbg !4888
  call void @llvm.dbg.value(metadata i32 0, metadata !1575, metadata !DIExpression()) #22, !dbg !4881
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %17, i64 0, i32 11, !dbg !4890
  %18 = load i32, ptr %type.i, align 8, !dbg !4890, !tbaa !1054
  switch i32 %18, label %SyncBlob.exit [
    i32 3, label %sw.bb1.i
    i32 1, label %sw.bb1.i
  ], !dbg !4891

sw.bb1.i:                                         ; preds = %if.end.i, %if.end.i
  %file_info.i = getelementptr inbounds %struct._BlobInfo, ptr %17, i64 0, i32 12, !dbg !4892
  %19 = load ptr, ptr %file_info.i, align 8, !dbg !4893, !tbaa !1057
  %call3.i = tail call i32 @fflush(ptr noundef %19) #22, !dbg !4894
  call void @llvm.dbg.value(metadata i32 %call3.i, metadata !1575, metadata !DIExpression()) #22, !dbg !4881
  %.pre136 = load ptr, ptr %blob, align 8, !dbg !4895, !tbaa !1249
  br label %SyncBlob.exit, !dbg !4897

SyncBlob.exit:                                    ; preds = %if.end.i, %sw.bb1.i
  %20 = phi ptr [ %17, %if.end.i ], [ %.pre136, %sw.bb1.i ], !dbg !4895
  call void @llvm.dbg.value(metadata i32 undef, metadata !1575, metadata !DIExpression()) #22, !dbg !4881
  %data59 = getelementptr inbounds %struct._BlobInfo, ptr %20, i64 0, i32 15, !dbg !4898
  %21 = load ptr, ptr %data59, align 8, !dbg !4898, !tbaa !1060
  %cmp60 = icmp eq ptr %21, null, !dbg !4899
  br i1 %cmp60, label %if.then62, label %SyncBlob.exit.if.end66_crit_edge, !dbg !4900

SyncBlob.exit.if.end66_crit_edge:                 ; preds = %SyncBlob.exit
  %offset70.phi.trans.insert = getelementptr inbounds %struct._BlobInfo, ptr %20, i64 0, i32 5
  %.pre138 = load i64, ptr %offset70.phi.trans.insert, align 8, !dbg !4901, !tbaa !1051
  br label %if.end66, !dbg !4900

if.then62:                                        ; preds = %SyncBlob.exit
  %call64 = tail call ptr @DetachBlob(ptr noundef nonnull %20), !dbg !4902
  br label %cleanup87, !dbg !4904

if.end66:                                         ; preds = %SyncBlob.exit.if.end66_crit_edge, %sw.bb31.if.end66_crit_edge
  %22 = phi i64 [ %.pre138, %SyncBlob.exit.if.end66_crit_edge ], [ %10, %sw.bb31.if.end66_crit_edge ], !dbg !4901
  %23 = phi ptr [ %21, %SyncBlob.exit.if.end66_crit_edge ], [ %.pre137, %sw.bb31.if.end66_crit_edge ], !dbg !4865
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %22, !dbg !4905
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !4810, metadata !DIExpression()), !dbg !4906
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %data, i64 %length, i1 false), !dbg !4907
  %24 = load ptr, ptr %blob, align 8, !dbg !4908, !tbaa !1249
  %offset72 = getelementptr inbounds %struct._BlobInfo, ptr %24, i64 0, i32 5, !dbg !4909
  %25 = load i64, ptr %offset72, align 8, !dbg !4910, !tbaa !1051
  %add73 = add i64 %25, %length, !dbg !4910
  store i64 %add73, ptr %offset72, align 8, !dbg !4910, !tbaa !1051
  %26 = load i64, ptr %24, align 8, !dbg !4911, !tbaa !1042
  %cmp78.not = icmp slt i64 %add73, %26, !dbg !4913
  br i1 %cmp78.not, label %cleanup87, label %if.then80, !dbg !4914

if.then80:                                        ; preds = %if.end66
  store i64 %add73, ptr %24, align 8, !dbg !4915, !tbaa !1042
  br label %cleanup87, !dbg !4916

cleanup87:                                        ; preds = %if.end66, %if.then80, %sw.bb, %sw.bb28, %if.end, %sw.bb7, %sw.default, %sw.bb15, %if.then62, %if.then36, %entry
  %retval.1 = phi i64 [ 0, %entry ], [ 0, %if.then36 ], [ 0, %if.then62 ], [ 0, %if.end ], [ %call30, %sw.bb28 ], [ %call6, %sw.default ], [ 0, %sw.bb7 ], [ %call2, %sw.bb ], [ %spec.select, %sw.bb15 ], [ %length, %if.then80 ], [ %length, %if.end66 ], !dbg !4813
  ret i64 %retval.1, !dbg !4917
}

; Function Attrs: nofree nounwind
declare !dbg !4918 noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %value) local_unnamed_addr #0 !dbg !4921 {
entry:
  %value.addr = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !4925, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i8 %value, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i8 %value, ptr %value.addr, align 1, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %value.addr, metadata !4926, metadata !DIExpression(DW_OP_deref)), !dbg !4927
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !4928
  call void @llvm.dbg.value(metadata i64 1, metadata !2303, metadata !DIExpression()) #22, !dbg !4928
  call void @llvm.dbg.value(metadata ptr %value.addr, metadata !2304, metadata !DIExpression()) #22, !dbg !4928
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !4930
  %0 = load ptr, ptr %blob.i, align 8, !dbg !4930, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !4931
  %1 = load i32, ptr %type.i, align 8, !dbg !4931, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !4932
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !4933

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 1, ptr noundef nonnull %value.addr) #22, !dbg !4934
  br label %WriteBlobStream.exit, !dbg !4935

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !4936
  %2 = load i64, ptr %offset.i, align 8, !dbg !4936, !tbaa !1051
  %add.i = add nsw i64 %2, 1, !dbg !4937
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !4928
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1, !dbg !4938
  %3 = load i64, ptr %extent3.i, align 8, !dbg !4938, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %3, !dbg !4939
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !4940

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2, !dbg !4941
  %4 = load i64, ptr %quantum.i, align 8, !dbg !4941, !tbaa !1048
  %add9.i = add i64 %3, 1, !dbg !4942
  %add10.i = add i64 %add9.i, %4, !dbg !4943
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !4928
  %shl.i = shl i64 %4, 1, !dbg !4944
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !4944, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !4945
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !4946
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !4947

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !4948, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !4949, !tbaa !1051
  br label %if.end17.i, !dbg !4947

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %5 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %2, %if.end.i ], !dbg !4949
  %6 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %0, %if.end.i ], !dbg !4948
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 15, !dbg !4950
  %7 = load ptr, ptr %data19.i, align 8, !dbg !4950, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !4951
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !4928
  store i8 %value, ptr %add.ptr.i, align 1, !dbg !4952
  %8 = load ptr, ptr %blob.i, align 8, !dbg !4953, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %8, i64 0, i32 5, !dbg !4954
  %9 = load i64, ptr %offset23.i, align 8, !dbg !4955, !tbaa !1051
  %add24.i = add i64 %9, 1, !dbg !4955
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !4955, !tbaa !1051
  %10 = load i64, ptr %8, align 8, !dbg !4956, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %10, !dbg !4957
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !4958

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %8, align 8, !dbg !4959, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !4960

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ 1, %if.then30.i ], [ 1, %if.end17.i ], !dbg !4928
  ret i64 %retval.0.i, !dbg !4961
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobFloat(ptr noundef %image, float noundef %value) local_unnamed_addr #0 !dbg !4962 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !4967, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata float %value, metadata !4968, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i32 0, metadata !4969, metadata !DIExpression()), !dbg !4974
  %0 = bitcast float %value to i32, !dbg !4975
  call void @llvm.dbg.value(metadata i32 %0, metadata !4969, metadata !DIExpression()), !dbg !4974
  %call = tail call i64 @WriteBlobLong(ptr noundef %image, i32 noundef %0), !dbg !4976
  ret i64 %call, !dbg !4977
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobLong(ptr noundef %image, i32 noundef %value) local_unnamed_addr #0 !dbg !4978 {
entry:
  %buffer = alloca [4 x i8], align 4
  call void @llvm.dbg.value(metadata ptr %image, metadata !4982, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata i32 %value, metadata !4983, metadata !DIExpression()), !dbg !4985
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #22, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !4984, metadata !DIExpression()), !dbg !4987
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !4988
  %0 = load i32, ptr %endian, align 8, !dbg !4988, !tbaa !3853
  %cmp = icmp eq i32 %0, 1, !dbg !4990
  br i1 %cmp, label %if.then, label %if.end, !dbg !4991

if.then:                                          ; preds = %entry
  %conv = trunc i32 %value to i8, !dbg !4992
  store i8 %conv, ptr %buffer, align 4, !dbg !4994, !tbaa !1057
  %shr = lshr i32 %value, 8, !dbg !4995
  %conv1 = trunc i32 %shr to i8, !dbg !4996
  %arrayidx2 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 1, !dbg !4997
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !4998, !tbaa !1057
  %shr3 = lshr i32 %value, 16, !dbg !4999
  %conv4 = trunc i32 %shr3 to i8, !dbg !5000
  %arrayidx5 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 2, !dbg !5001
  store i8 %conv4, ptr %arrayidx5, align 2, !dbg !5002, !tbaa !1057
  %shr6 = lshr i32 %value, 24, !dbg !5003
  %conv7 = trunc i32 %shr6 to i8, !dbg !5004
  %arrayidx8 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 3, !dbg !5005
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5006, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5007
  call void @llvm.dbg.value(metadata i64 4, metadata !2303, metadata !DIExpression()) #22, !dbg !5007
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5007
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5009
  %1 = load ptr, ptr %blob.i, align 8, !dbg !5009, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !5010
  %2 = load i32, ptr %type.i, align 8, !dbg !5010, !tbaa !1054
  %cmp.not.i = icmp eq i32 %2, 7, !dbg !5011
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !5012

if.then.i:                                        ; preds = %if.then
  %call.i = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 4, ptr noundef nonnull %buffer) #22, !dbg !5013
  br label %cleanup, !dbg !5014

if.end.i:                                         ; preds = %if.then
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 5, !dbg !5015
  %3 = load i64, ptr %offset.i, align 8, !dbg !5015, !tbaa !1051
  %add.i = add nsw i64 %3, 4, !dbg !5016
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5007
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 1, !dbg !5017
  %4 = load i64, ptr %extent3.i, align 8, !dbg !5017, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %4, !dbg !5018
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !5019

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 2, !dbg !5020
  %5 = load i64, ptr %quantum.i, align 8, !dbg !5020, !tbaa !1048
  %add9.i = add i64 %4, 4, !dbg !5021
  %add10.i = add i64 %add9.i, %5, !dbg !5022
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5007
  %shl.i = shl i64 %5, 1, !dbg !5023
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !5023, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !5024
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !5025
  br i1 %cmp14.i, label %cleanup, label %if.then5.if.end17_crit_edge.i, !dbg !5026

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !5027, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !5028, !tbaa !1051
  br label %if.end17.i, !dbg !5026

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %6 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %3, %if.end.i ], !dbg !5028
  %7 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %1, %if.end.i ], !dbg !5027
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15, !dbg !5029
  %8 = load ptr, ptr %data19.i, align 8, !dbg !5029, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %8, i64 %6, !dbg !5030
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !5007
  %9 = load i32, ptr %buffer, align 4, !dbg !5031
  store i32 %9, ptr %add.ptr.i, align 1, !dbg !5031
  %10 = load ptr, ptr %blob.i, align 8, !dbg !5032, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 5, !dbg !5033
  %11 = load i64, ptr %offset23.i, align 8, !dbg !5034, !tbaa !1051
  %add24.i = add i64 %11, 4, !dbg !5034
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !5034, !tbaa !1051
  %12 = load i64, ptr %10, align 8, !dbg !5035, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %12, !dbg !5036
  br i1 %cmp29.not.i, label %cleanup, label %if.then30.i, !dbg !5037

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %10, align 8, !dbg !5038, !tbaa !1042
  br label %cleanup, !dbg !5039

if.end:                                           ; preds = %entry
  %shr9 = lshr i32 %value, 24, !dbg !5040
  %conv10 = trunc i32 %shr9 to i8, !dbg !5041
  store i8 %conv10, ptr %buffer, align 4, !dbg !5042, !tbaa !1057
  %shr12 = lshr i32 %value, 16, !dbg !5043
  %conv13 = trunc i32 %shr12 to i8, !dbg !5044
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 1, !dbg !5045
  store i8 %conv13, ptr %arrayidx14, align 1, !dbg !5046, !tbaa !1057
  %shr15 = lshr i32 %value, 8, !dbg !5047
  %conv16 = trunc i32 %shr15 to i8, !dbg !5048
  %arrayidx17 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 2, !dbg !5049
  store i8 %conv16, ptr %arrayidx17, align 2, !dbg !5050, !tbaa !1057
  %conv18 = trunc i32 %value to i8, !dbg !5051
  %arrayidx19 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 3, !dbg !5052
  store i8 %conv18, ptr %arrayidx19, align 1, !dbg !5053, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5054
  call void @llvm.dbg.value(metadata i64 4, metadata !2303, metadata !DIExpression()) #22, !dbg !5054
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5054
  %blob.i31 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5056
  %13 = load ptr, ptr %blob.i31, align 8, !dbg !5056, !tbaa !1249
  %type.i32 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 11, !dbg !5057
  %14 = load i32, ptr %type.i32, align 8, !dbg !5057, !tbaa !1054
  %cmp.not.i33 = icmp eq i32 %14, 7, !dbg !5058
  br i1 %cmp.not.i33, label %if.end.i40, label %if.then.i35, !dbg !5059

if.then.i35:                                      ; preds = %if.end
  %call.i34 = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 4, ptr noundef nonnull %buffer) #22, !dbg !5060
  br label %cleanup, !dbg !5061

if.end.i40:                                       ; preds = %if.end
  %offset.i36 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 5, !dbg !5062
  %15 = load i64, ptr %offset.i36, align 8, !dbg !5062, !tbaa !1051
  %add.i37 = add nsw i64 %15, 4, !dbg !5063
  call void @llvm.dbg.value(metadata i64 %add.i37, metadata !2305, metadata !DIExpression()) #22, !dbg !5054
  %extent3.i38 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 1, !dbg !5064
  %16 = load i64, ptr %extent3.i38, align 8, !dbg !5064, !tbaa !1045
  %cmp4.not.i39 = icmp ult i64 %add.i37, %16, !dbg !5065
  br i1 %cmp4.not.i39, label %if.end17.i57, label %if.then5.i47, !dbg !5066

if.then5.i47:                                     ; preds = %if.end.i40
  %quantum.i41 = getelementptr inbounds %struct._BlobInfo, ptr %13, i64 0, i32 2, !dbg !5067
  %17 = load i64, ptr %quantum.i41, align 8, !dbg !5067, !tbaa !1048
  %add9.i42 = add i64 %16, 4, !dbg !5068
  %add10.i43 = add i64 %add9.i42, %17, !dbg !5069
  call void @llvm.dbg.value(metadata i64 %add10.i43, metadata !2305, metadata !DIExpression()) #22, !dbg !5054
  %shl.i44 = shl i64 %17, 1, !dbg !5070
  store i64 %shl.i44, ptr %quantum.i41, align 8, !dbg !5070, !tbaa !1048
  %call13.i45 = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i43) #22, !dbg !5071
  %cmp14.i46 = icmp eq i32 %call13.i45, 0, !dbg !5072
  br i1 %cmp14.i46, label %cleanup, label %if.then5.if.end17_crit_edge.i51, !dbg !5073

if.then5.if.end17_crit_edge.i51:                  ; preds = %if.then5.i47
  %.pre.i48 = load ptr, ptr %blob.i31, align 8, !dbg !5074, !tbaa !1249
  %offset21.phi.trans.insert.i49 = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i48, i64 0, i32 5
  %.pre59.i50 = load i64, ptr %offset21.phi.trans.insert.i49, align 8, !dbg !5075, !tbaa !1051
  br label %if.end17.i57, !dbg !5073

if.end17.i57:                                     ; preds = %if.then5.if.end17_crit_edge.i51, %if.end.i40
  %18 = phi i64 [ %.pre59.i50, %if.then5.if.end17_crit_edge.i51 ], [ %15, %if.end.i40 ], !dbg !5075
  %19 = phi ptr [ %.pre.i48, %if.then5.if.end17_crit_edge.i51 ], [ %13, %if.end.i40 ], !dbg !5074
  %data19.i52 = getelementptr inbounds %struct._BlobInfo, ptr %19, i64 0, i32 15, !dbg !5076
  %20 = load ptr, ptr %data19.i52, align 8, !dbg !5076, !tbaa !1060
  %add.ptr.i53 = getelementptr inbounds i8, ptr %20, i64 %18, !dbg !5077
  call void @llvm.dbg.value(metadata ptr %add.ptr.i53, metadata !2306, metadata !DIExpression()) #22, !dbg !5054
  %21 = load i32, ptr %buffer, align 4, !dbg !5078
  store i32 %21, ptr %add.ptr.i53, align 1, !dbg !5078
  %22 = load ptr, ptr %blob.i31, align 8, !dbg !5079, !tbaa !1249
  %offset23.i54 = getelementptr inbounds %struct._BlobInfo, ptr %22, i64 0, i32 5, !dbg !5080
  %23 = load i64, ptr %offset23.i54, align 8, !dbg !5081, !tbaa !1051
  %add24.i55 = add i64 %23, 4, !dbg !5081
  store i64 %add24.i55, ptr %offset23.i54, align 8, !dbg !5081, !tbaa !1051
  %24 = load i64, ptr %22, align 8, !dbg !5082, !tbaa !1042
  %cmp29.not.i56 = icmp slt i64 %add24.i55, %24, !dbg !5083
  br i1 %cmp29.not.i56, label %cleanup, label %if.then30.i58, !dbg !5084

if.then30.i58:                                    ; preds = %if.end17.i57
  store i64 %add24.i55, ptr %22, align 8, !dbg !5085, !tbaa !1042
  br label %cleanup, !dbg !5086

cleanup:                                          ; preds = %if.then30.i58, %if.end17.i57, %if.then5.i47, %if.then.i35, %if.then30.i, %if.end17.i, %if.then5.i, %if.then.i
  %retval.0 = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ 4, %if.then30.i ], [ 4, %if.end17.i ], [ %call.i34, %if.then.i35 ], [ 0, %if.then5.i47 ], [ 4, %if.then30.i58 ], [ 4, %if.end17.i57 ], !dbg !4985
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #22, !dbg !5087
  ret i64 %retval.0, !dbg !5087
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobShort(ptr noundef %image, i16 noundef zeroext %value) local_unnamed_addr #0 !dbg !5088 {
entry:
  %buffer = alloca [2 x i8], align 2
  call void @llvm.dbg.value(metadata ptr %image, metadata !5093, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i16 %value, metadata !5094, metadata !DIExpression()), !dbg !5096
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #22, !dbg !5097
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5095, metadata !DIExpression()), !dbg !5098
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !5099
  %0 = load i32, ptr %endian, align 8, !dbg !5099, !tbaa !3853
  %cmp = icmp eq i32 %0, 1, !dbg !5101
  br i1 %cmp, label %if.then, label %if.end, !dbg !5102

if.then:                                          ; preds = %entry
  %conv = trunc i16 %value to i8, !dbg !5103
  store i8 %conv, ptr %buffer, align 2, !dbg !5105, !tbaa !1057
  %1 = lshr i16 %value, 8, !dbg !5106
  %conv2 = trunc i16 %1 to i8, !dbg !5107
  %arrayidx3 = getelementptr inbounds [2 x i8], ptr %buffer, i64 0, i64 1, !dbg !5108
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !5109, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5110
  call void @llvm.dbg.value(metadata i64 2, metadata !2303, metadata !DIExpression()) #22, !dbg !5110
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5110
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5112
  %2 = load ptr, ptr %blob.i, align 8, !dbg !5112, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 11, !dbg !5113
  %3 = load i32, ptr %type.i, align 8, !dbg !5113, !tbaa !1054
  %cmp.not.i = icmp eq i32 %3, 7, !dbg !5114
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !5115

if.then.i:                                        ; preds = %if.then
  %call.i = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 2, ptr noundef nonnull %buffer) #22, !dbg !5116
  br label %cleanup, !dbg !5117

if.end.i:                                         ; preds = %if.then
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 5, !dbg !5118
  %4 = load i64, ptr %offset.i, align 8, !dbg !5118, !tbaa !1051
  %add.i = add nsw i64 %4, 2, !dbg !5119
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5110
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 1, !dbg !5120
  %5 = load i64, ptr %extent3.i, align 8, !dbg !5120, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %5, !dbg !5121
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !5122

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %2, i64 0, i32 2, !dbg !5123
  %6 = load i64, ptr %quantum.i, align 8, !dbg !5123, !tbaa !1048
  %add9.i = add i64 %5, 2, !dbg !5124
  %add10.i = add i64 %add9.i, %6, !dbg !5125
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5110
  %shl.i = shl i64 %6, 1, !dbg !5126
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !5126, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !5127
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !5128
  br i1 %cmp14.i, label %cleanup, label %if.then5.if.end17_crit_edge.i, !dbg !5129

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !5130, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !5131, !tbaa !1051
  br label %if.end17.i, !dbg !5129

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %7 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %4, %if.end.i ], !dbg !5131
  %8 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %2, %if.end.i ], !dbg !5130
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %8, i64 0, i32 15, !dbg !5132
  %9 = load ptr, ptr %data19.i, align 8, !dbg !5132, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %9, i64 %7, !dbg !5133
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !5110
  %10 = load i16, ptr %buffer, align 2, !dbg !5134
  store i16 %10, ptr %add.ptr.i, align 1, !dbg !5134
  %11 = load ptr, ptr %blob.i, align 8, !dbg !5135, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %11, i64 0, i32 5, !dbg !5136
  %12 = load i64, ptr %offset23.i, align 8, !dbg !5137, !tbaa !1051
  %add24.i = add i64 %12, 2, !dbg !5137
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !5137, !tbaa !1051
  %13 = load i64, ptr %11, align 8, !dbg !5138, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %13, !dbg !5139
  br i1 %cmp29.not.i, label %cleanup, label %if.then30.i, !dbg !5140

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %11, align 8, !dbg !5141, !tbaa !1042
  br label %cleanup, !dbg !5142

if.end:                                           ; preds = %entry
  %14 = lshr i16 %value, 8, !dbg !5143
  %conv6 = trunc i16 %14 to i8, !dbg !5144
  store i8 %conv6, ptr %buffer, align 2, !dbg !5145, !tbaa !1057
  %conv8 = trunc i16 %value to i8, !dbg !5146
  %arrayidx9 = getelementptr inbounds [2 x i8], ptr %buffer, i64 0, i64 1, !dbg !5147
  store i8 %conv8, ptr %arrayidx9, align 1, !dbg !5148, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5149
  call void @llvm.dbg.value(metadata i64 2, metadata !2303, metadata !DIExpression()) #22, !dbg !5149
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5149
  %blob.i17 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5151
  %15 = load ptr, ptr %blob.i17, align 8, !dbg !5151, !tbaa !1249
  %type.i18 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 11, !dbg !5152
  %16 = load i32, ptr %type.i18, align 8, !dbg !5152, !tbaa !1054
  %cmp.not.i19 = icmp eq i32 %16, 7, !dbg !5153
  br i1 %cmp.not.i19, label %if.end.i26, label %if.then.i21, !dbg !5154

if.then.i21:                                      ; preds = %if.end
  %call.i20 = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 2, ptr noundef nonnull %buffer) #22, !dbg !5155
  br label %cleanup, !dbg !5156

if.end.i26:                                       ; preds = %if.end
  %offset.i22 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 5, !dbg !5157
  %17 = load i64, ptr %offset.i22, align 8, !dbg !5157, !tbaa !1051
  %add.i23 = add nsw i64 %17, 2, !dbg !5158
  call void @llvm.dbg.value(metadata i64 %add.i23, metadata !2305, metadata !DIExpression()) #22, !dbg !5149
  %extent3.i24 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 1, !dbg !5159
  %18 = load i64, ptr %extent3.i24, align 8, !dbg !5159, !tbaa !1045
  %cmp4.not.i25 = icmp ult i64 %add.i23, %18, !dbg !5160
  br i1 %cmp4.not.i25, label %if.end17.i43, label %if.then5.i33, !dbg !5161

if.then5.i33:                                     ; preds = %if.end.i26
  %quantum.i27 = getelementptr inbounds %struct._BlobInfo, ptr %15, i64 0, i32 2, !dbg !5162
  %19 = load i64, ptr %quantum.i27, align 8, !dbg !5162, !tbaa !1048
  %add9.i28 = add i64 %18, 2, !dbg !5163
  %add10.i29 = add i64 %add9.i28, %19, !dbg !5164
  call void @llvm.dbg.value(metadata i64 %add10.i29, metadata !2305, metadata !DIExpression()) #22, !dbg !5149
  %shl.i30 = shl i64 %19, 1, !dbg !5165
  store i64 %shl.i30, ptr %quantum.i27, align 8, !dbg !5165, !tbaa !1048
  %call13.i31 = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i29) #22, !dbg !5166
  %cmp14.i32 = icmp eq i32 %call13.i31, 0, !dbg !5167
  br i1 %cmp14.i32, label %cleanup, label %if.then5.if.end17_crit_edge.i37, !dbg !5168

if.then5.if.end17_crit_edge.i37:                  ; preds = %if.then5.i33
  %.pre.i34 = load ptr, ptr %blob.i17, align 8, !dbg !5169, !tbaa !1249
  %offset21.phi.trans.insert.i35 = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i34, i64 0, i32 5
  %.pre59.i36 = load i64, ptr %offset21.phi.trans.insert.i35, align 8, !dbg !5170, !tbaa !1051
  br label %if.end17.i43, !dbg !5168

if.end17.i43:                                     ; preds = %if.then5.if.end17_crit_edge.i37, %if.end.i26
  %20 = phi i64 [ %.pre59.i36, %if.then5.if.end17_crit_edge.i37 ], [ %17, %if.end.i26 ], !dbg !5170
  %21 = phi ptr [ %.pre.i34, %if.then5.if.end17_crit_edge.i37 ], [ %15, %if.end.i26 ], !dbg !5169
  %data19.i38 = getelementptr inbounds %struct._BlobInfo, ptr %21, i64 0, i32 15, !dbg !5171
  %22 = load ptr, ptr %data19.i38, align 8, !dbg !5171, !tbaa !1060
  %add.ptr.i39 = getelementptr inbounds i8, ptr %22, i64 %20, !dbg !5172
  call void @llvm.dbg.value(metadata ptr %add.ptr.i39, metadata !2306, metadata !DIExpression()) #22, !dbg !5149
  %23 = load i16, ptr %buffer, align 2, !dbg !5173
  store i16 %23, ptr %add.ptr.i39, align 1, !dbg !5173
  %24 = load ptr, ptr %blob.i17, align 8, !dbg !5174, !tbaa !1249
  %offset23.i40 = getelementptr inbounds %struct._BlobInfo, ptr %24, i64 0, i32 5, !dbg !5175
  %25 = load i64, ptr %offset23.i40, align 8, !dbg !5176, !tbaa !1051
  %add24.i41 = add i64 %25, 2, !dbg !5176
  store i64 %add24.i41, ptr %offset23.i40, align 8, !dbg !5176, !tbaa !1051
  %26 = load i64, ptr %24, align 8, !dbg !5177, !tbaa !1042
  %cmp29.not.i42 = icmp slt i64 %add24.i41, %26, !dbg !5178
  br i1 %cmp29.not.i42, label %cleanup, label %if.then30.i44, !dbg !5179

if.then30.i44:                                    ; preds = %if.end17.i43
  store i64 %add24.i41, ptr %24, align 8, !dbg !5180, !tbaa !1042
  br label %cleanup, !dbg !5181

cleanup:                                          ; preds = %if.then30.i44, %if.end17.i43, %if.then5.i33, %if.then.i21, %if.then30.i, %if.end17.i, %if.then5.i, %if.then.i
  %retval.0 = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ 2, %if.then30.i ], [ 2, %if.end17.i ], [ %call.i20, %if.then.i21 ], [ 0, %if.then5.i33 ], [ 2, %if.then30.i44 ], [ 2, %if.end17.i43 ], !dbg !5096
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #22, !dbg !5182
  ret i64 %retval.0, !dbg !5182
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobLSBLong(ptr noundef %image, i32 noundef %value) local_unnamed_addr #0 !dbg !5183 {
entry:
  %buffer = alloca [4 x i8], align 4
  call void @llvm.dbg.value(metadata ptr %image, metadata !5185, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.value(metadata i32 %value, metadata !5186, metadata !DIExpression()), !dbg !5188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #22, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5187, metadata !DIExpression()), !dbg !5190
  %conv = trunc i32 %value to i8, !dbg !5191
  store i8 %conv, ptr %buffer, align 4, !dbg !5192, !tbaa !1057
  %shr = lshr i32 %value, 8, !dbg !5193
  %conv1 = trunc i32 %shr to i8, !dbg !5194
  %arrayidx2 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 1, !dbg !5195
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5196, !tbaa !1057
  %shr3 = lshr i32 %value, 16, !dbg !5197
  %conv4 = trunc i32 %shr3 to i8, !dbg !5198
  %arrayidx5 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 2, !dbg !5199
  store i8 %conv4, ptr %arrayidx5, align 2, !dbg !5200, !tbaa !1057
  %shr6 = lshr i32 %value, 24, !dbg !5201
  %conv7 = trunc i32 %shr6 to i8, !dbg !5202
  %arrayidx8 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 3, !dbg !5203
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5204, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5205
  call void @llvm.dbg.value(metadata i64 4, metadata !2303, metadata !DIExpression()) #22, !dbg !5205
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5205
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5207
  %0 = load ptr, ptr %blob.i, align 8, !dbg !5207, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !5208
  %1 = load i32, ptr %type.i, align 8, !dbg !5208, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !5209
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !5210

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 4, ptr noundef nonnull %buffer) #22, !dbg !5211
  br label %WriteBlobStream.exit, !dbg !5212

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !5213
  %2 = load i64, ptr %offset.i, align 8, !dbg !5213, !tbaa !1051
  %add.i = add nsw i64 %2, 4, !dbg !5214
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5205
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1, !dbg !5215
  %3 = load i64, ptr %extent3.i, align 8, !dbg !5215, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %3, !dbg !5216
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !5217

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2, !dbg !5218
  %4 = load i64, ptr %quantum.i, align 8, !dbg !5218, !tbaa !1048
  %add9.i = add i64 %3, 4, !dbg !5219
  %add10.i = add i64 %add9.i, %4, !dbg !5220
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5205
  %shl.i = shl i64 %4, 1, !dbg !5221
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !5221, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !5222
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !5223
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !5224

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !5225, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !5226, !tbaa !1051
  br label %if.end17.i, !dbg !5224

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %5 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %2, %if.end.i ], !dbg !5226
  %6 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %0, %if.end.i ], !dbg !5225
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 15, !dbg !5227
  %7 = load ptr, ptr %data19.i, align 8, !dbg !5227, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !5228
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !5205
  %8 = load i32, ptr %buffer, align 4, !dbg !5229
  store i32 %8, ptr %add.ptr.i, align 1, !dbg !5229
  %9 = load ptr, ptr %blob.i, align 8, !dbg !5230, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 5, !dbg !5231
  %10 = load i64, ptr %offset23.i, align 8, !dbg !5232, !tbaa !1051
  %add24.i = add i64 %10, 4, !dbg !5232
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !5232, !tbaa !1051
  %11 = load i64, ptr %9, align 8, !dbg !5233, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %11, !dbg !5234
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !5235

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %9, align 8, !dbg !5236, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !5237

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ 4, %if.then30.i ], [ 4, %if.end17.i ], !dbg !5205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #22, !dbg !5238
  ret i64 %retval.0.i, !dbg !5239
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobLSBShort(ptr noundef %image, i16 noundef zeroext %value) local_unnamed_addr #0 !dbg !5240 {
entry:
  %buffer = alloca [2 x i8], align 2
  call void @llvm.dbg.value(metadata ptr %image, metadata !5242, metadata !DIExpression()), !dbg !5245
  call void @llvm.dbg.value(metadata i16 %value, metadata !5243, metadata !DIExpression()), !dbg !5245
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #22, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5244, metadata !DIExpression()), !dbg !5247
  %conv = trunc i16 %value to i8, !dbg !5248
  store i8 %conv, ptr %buffer, align 2, !dbg !5249, !tbaa !1057
  %0 = lshr i16 %value, 8, !dbg !5250
  %conv2 = trunc i16 %0 to i8, !dbg !5251
  %arrayidx3 = getelementptr inbounds [2 x i8], ptr %buffer, i64 0, i64 1, !dbg !5252
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !5253, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5254
  call void @llvm.dbg.value(metadata i64 2, metadata !2303, metadata !DIExpression()) #22, !dbg !5254
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5254
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5256
  %1 = load ptr, ptr %blob.i, align 8, !dbg !5256, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !5257
  %2 = load i32, ptr %type.i, align 8, !dbg !5257, !tbaa !1054
  %cmp.not.i = icmp eq i32 %2, 7, !dbg !5258
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !5259

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 2, ptr noundef nonnull %buffer) #22, !dbg !5260
  br label %WriteBlobStream.exit, !dbg !5261

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 5, !dbg !5262
  %3 = load i64, ptr %offset.i, align 8, !dbg !5262, !tbaa !1051
  %add.i = add nsw i64 %3, 2, !dbg !5263
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5254
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 1, !dbg !5264
  %4 = load i64, ptr %extent3.i, align 8, !dbg !5264, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %4, !dbg !5265
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !5266

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 2, !dbg !5267
  %5 = load i64, ptr %quantum.i, align 8, !dbg !5267, !tbaa !1048
  %add9.i = add i64 %4, 2, !dbg !5268
  %add10.i = add i64 %add9.i, %5, !dbg !5269
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5254
  %shl.i = shl i64 %5, 1, !dbg !5270
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !5270, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !5271
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !5272
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !5273

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !5274, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !5275, !tbaa !1051
  br label %if.end17.i, !dbg !5273

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %6 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %3, %if.end.i ], !dbg !5275
  %7 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %1, %if.end.i ], !dbg !5274
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15, !dbg !5276
  %8 = load ptr, ptr %data19.i, align 8, !dbg !5276, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %8, i64 %6, !dbg !5277
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !5254
  %9 = load i16, ptr %buffer, align 2, !dbg !5278
  store i16 %9, ptr %add.ptr.i, align 1, !dbg !5278
  %10 = load ptr, ptr %blob.i, align 8, !dbg !5279, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 5, !dbg !5280
  %11 = load i64, ptr %offset23.i, align 8, !dbg !5281, !tbaa !1051
  %add24.i = add i64 %11, 2, !dbg !5281
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !5281, !tbaa !1051
  %12 = load i64, ptr %10, align 8, !dbg !5282, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %12, !dbg !5283
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !5284

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %10, align 8, !dbg !5285, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !5286

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ 2, %if.then30.i ], [ 2, %if.end17.i ], !dbg !5254
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #22, !dbg !5287
  ret i64 %retval.0.i, !dbg !5288
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobMSBLong(ptr noundef %image, i32 noundef %value) local_unnamed_addr #0 !dbg !5289 {
entry:
  %buffer = alloca [4 x i8], align 4
  call void @llvm.dbg.value(metadata ptr %image, metadata !5291, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.value(metadata i32 %value, metadata !5292, metadata !DIExpression()), !dbg !5294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #22, !dbg !5295
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5293, metadata !DIExpression()), !dbg !5296
  %shr = lshr i32 %value, 24, !dbg !5297
  %conv = trunc i32 %shr to i8, !dbg !5298
  store i8 %conv, ptr %buffer, align 4, !dbg !5299, !tbaa !1057
  %shr1 = lshr i32 %value, 16, !dbg !5300
  %conv2 = trunc i32 %shr1 to i8, !dbg !5301
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 1, !dbg !5302
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !5303, !tbaa !1057
  %shr4 = lshr i32 %value, 8, !dbg !5304
  %conv5 = trunc i32 %shr4 to i8, !dbg !5305
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 2, !dbg !5306
  store i8 %conv5, ptr %arrayidx6, align 2, !dbg !5307, !tbaa !1057
  %conv7 = trunc i32 %value to i8, !dbg !5308
  %arrayidx8 = getelementptr inbounds [4 x i8], ptr %buffer, i64 0, i64 3, !dbg !5309
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !5310, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5311
  call void @llvm.dbg.value(metadata i64 4, metadata !2303, metadata !DIExpression()) #22, !dbg !5311
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5311
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5313
  %0 = load ptr, ptr %blob.i, align 8, !dbg !5313, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !5314
  %1 = load i32, ptr %type.i, align 8, !dbg !5314, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !5315
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !5316

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 4, ptr noundef nonnull %buffer) #22, !dbg !5317
  br label %WriteBlobStream.exit, !dbg !5318

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !5319
  %2 = load i64, ptr %offset.i, align 8, !dbg !5319, !tbaa !1051
  %add.i = add nsw i64 %2, 4, !dbg !5320
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5311
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1, !dbg !5321
  %3 = load i64, ptr %extent3.i, align 8, !dbg !5321, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %3, !dbg !5322
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !5323

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2, !dbg !5324
  %4 = load i64, ptr %quantum.i, align 8, !dbg !5324, !tbaa !1048
  %add9.i = add i64 %3, 4, !dbg !5325
  %add10.i = add i64 %add9.i, %4, !dbg !5326
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5311
  %shl.i = shl i64 %4, 1, !dbg !5327
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !5327, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !5328
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !5329
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !5330

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !5331, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !5332, !tbaa !1051
  br label %if.end17.i, !dbg !5330

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %5 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %2, %if.end.i ], !dbg !5332
  %6 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %0, %if.end.i ], !dbg !5331
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 15, !dbg !5333
  %7 = load ptr, ptr %data19.i, align 8, !dbg !5333, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !5334
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !5311
  %8 = load i32, ptr %buffer, align 4, !dbg !5335
  store i32 %8, ptr %add.ptr.i, align 1, !dbg !5335
  %9 = load ptr, ptr %blob.i, align 8, !dbg !5336, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 5, !dbg !5337
  %10 = load i64, ptr %offset23.i, align 8, !dbg !5338, !tbaa !1051
  %add24.i = add i64 %10, 4, !dbg !5338
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !5338, !tbaa !1051
  %11 = load i64, ptr %9, align 8, !dbg !5339, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %11, !dbg !5340
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !5341

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %9, align 8, !dbg !5342, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !5343

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ 4, %if.then30.i ], [ 4, %if.end17.i ], !dbg !5311
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #22, !dbg !5344
  ret i64 %retval.0.i, !dbg !5345
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobMSBLongLong(ptr noundef %image, i64 noundef %value) local_unnamed_addr #0 !dbg !5346 {
entry:
  %buffer = alloca [8 x i8], align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !5350, metadata !DIExpression()), !dbg !5353
  call void @llvm.dbg.value(metadata i64 %value, metadata !5351, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer) #22, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5352, metadata !DIExpression()), !dbg !5355
  %shr = lshr i64 %value, 56, !dbg !5356
  %conv = trunc i64 %shr to i8, !dbg !5357
  store i8 %conv, ptr %buffer, align 8, !dbg !5358, !tbaa !1057
  %shr1 = lshr i64 %value, 48, !dbg !5359
  %conv2 = trunc i64 %shr1 to i8, !dbg !5360
  %arrayidx3 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 1, !dbg !5361
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !5362, !tbaa !1057
  %shr4 = lshr i64 %value, 40, !dbg !5363
  %conv5 = trunc i64 %shr4 to i8, !dbg !5364
  %arrayidx6 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 2, !dbg !5365
  store i8 %conv5, ptr %arrayidx6, align 2, !dbg !5366, !tbaa !1057
  %shr7 = lshr i64 %value, 32, !dbg !5367
  %conv8 = trunc i64 %shr7 to i8, !dbg !5368
  %arrayidx9 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 3, !dbg !5369
  store i8 %conv8, ptr %arrayidx9, align 1, !dbg !5370, !tbaa !1057
  %shr10 = lshr i64 %value, 24, !dbg !5371
  %conv11 = trunc i64 %shr10 to i8, !dbg !5372
  %arrayidx12 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 4, !dbg !5373
  store i8 %conv11, ptr %arrayidx12, align 4, !dbg !5374, !tbaa !1057
  %shr13 = lshr i64 %value, 16, !dbg !5375
  %conv14 = trunc i64 %shr13 to i8, !dbg !5376
  %arrayidx15 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 5, !dbg !5377
  store i8 %conv14, ptr %arrayidx15, align 1, !dbg !5378, !tbaa !1057
  %shr16 = lshr i64 %value, 8, !dbg !5379
  %conv17 = trunc i64 %shr16 to i8, !dbg !5380
  %arrayidx18 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 6, !dbg !5381
  store i8 %conv17, ptr %arrayidx18, align 2, !dbg !5382, !tbaa !1057
  %conv19 = trunc i64 %value to i8, !dbg !5383
  %arrayidx20 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 7, !dbg !5384
  store i8 %conv19, ptr %arrayidx20, align 1, !dbg !5385, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5386
  call void @llvm.dbg.value(metadata i64 8, metadata !2303, metadata !DIExpression()) #22, !dbg !5386
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5386
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5388
  %0 = load ptr, ptr %blob.i, align 8, !dbg !5388, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !5389
  %1 = load i32, ptr %type.i, align 8, !dbg !5389, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !5390
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !5391

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 8, ptr noundef nonnull %buffer) #22, !dbg !5392
  br label %WriteBlobStream.exit, !dbg !5393

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !5394
  %2 = load i64, ptr %offset.i, align 8, !dbg !5394, !tbaa !1051
  %add.i = add nsw i64 %2, 8, !dbg !5395
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5386
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1, !dbg !5396
  %3 = load i64, ptr %extent3.i, align 8, !dbg !5396, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %3, !dbg !5397
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !5398

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2, !dbg !5399
  %4 = load i64, ptr %quantum.i, align 8, !dbg !5399, !tbaa !1048
  %add9.i = add i64 %3, 8, !dbg !5400
  %add10.i = add i64 %add9.i, %4, !dbg !5401
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5386
  %shl.i = shl i64 %4, 1, !dbg !5402
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !5402, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !5403
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !5404
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !5405

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !5406, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !5407, !tbaa !1051
  br label %if.end17.i, !dbg !5405

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %5 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %2, %if.end.i ], !dbg !5407
  %6 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %0, %if.end.i ], !dbg !5406
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 15, !dbg !5408
  %7 = load ptr, ptr %data19.i, align 8, !dbg !5408, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !5409
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !5386
  %8 = load i64, ptr %buffer, align 8, !dbg !5410
  store i64 %8, ptr %add.ptr.i, align 1, !dbg !5410
  %9 = load ptr, ptr %blob.i, align 8, !dbg !5411, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %9, i64 0, i32 5, !dbg !5412
  %10 = load i64, ptr %offset23.i, align 8, !dbg !5413, !tbaa !1051
  %add24.i = add i64 %10, 8, !dbg !5413
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !5413, !tbaa !1051
  %11 = load i64, ptr %9, align 8, !dbg !5414, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %11, !dbg !5415
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !5416

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %9, align 8, !dbg !5417, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !5418

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ 8, %if.then30.i ], [ 8, %if.end17.i ], !dbg !5386
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer) #22, !dbg !5419
  ret i64 %retval.0.i, !dbg !5420
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobMSBShort(ptr noundef %image, i16 noundef zeroext %value) local_unnamed_addr #0 !dbg !5421 {
entry:
  %buffer = alloca [2 x i8], align 2
  call void @llvm.dbg.value(metadata ptr %image, metadata !5423, metadata !DIExpression()), !dbg !5426
  call void @llvm.dbg.value(metadata i16 %value, metadata !5424, metadata !DIExpression()), !dbg !5426
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #22, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5425, metadata !DIExpression()), !dbg !5428
  %0 = lshr i16 %value, 8, !dbg !5429
  %conv1 = trunc i16 %0 to i8, !dbg !5430
  store i8 %conv1, ptr %buffer, align 2, !dbg !5431, !tbaa !1057
  %conv2 = trunc i16 %value to i8, !dbg !5432
  %arrayidx3 = getelementptr inbounds [2 x i8], ptr %buffer, i64 0, i64 1, !dbg !5433
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !5434, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5435
  call void @llvm.dbg.value(metadata i64 2, metadata !2303, metadata !DIExpression()) #22, !dbg !5435
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !2304, metadata !DIExpression()) #22, !dbg !5435
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5437
  %1 = load ptr, ptr %blob.i, align 8, !dbg !5437, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 11, !dbg !5438
  %2 = load i32, ptr %type.i, align 8, !dbg !5438, !tbaa !1054
  %cmp.not.i = icmp eq i32 %2, 7, !dbg !5439
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !5440

if.then.i:                                        ; preds = %entry
  %call.i = call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef 2, ptr noundef nonnull %buffer) #22, !dbg !5441
  br label %WriteBlobStream.exit, !dbg !5442

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 5, !dbg !5443
  %3 = load i64, ptr %offset.i, align 8, !dbg !5443, !tbaa !1051
  %add.i = add nsw i64 %3, 2, !dbg !5444
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5435
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 1, !dbg !5445
  %4 = load i64, ptr %extent3.i, align 8, !dbg !5445, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %4, !dbg !5446
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !5447

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %1, i64 0, i32 2, !dbg !5448
  %5 = load i64, ptr %quantum.i, align 8, !dbg !5448, !tbaa !1048
  %add9.i = add i64 %4, 2, !dbg !5449
  %add10.i = add i64 %add9.i, %5, !dbg !5450
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5435
  %shl.i = shl i64 %5, 1, !dbg !5451
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !5451, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !5452
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !5453
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !5454

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !5455, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !5456, !tbaa !1051
  br label %if.end17.i, !dbg !5454

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %6 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %3, %if.end.i ], !dbg !5456
  %7 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %1, %if.end.i ], !dbg !5455
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %7, i64 0, i32 15, !dbg !5457
  %8 = load ptr, ptr %data19.i, align 8, !dbg !5457, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %8, i64 %6, !dbg !5458
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !5435
  %9 = load i16, ptr %buffer, align 2, !dbg !5459
  store i16 %9, ptr %add.ptr.i, align 1, !dbg !5459
  %10 = load ptr, ptr %blob.i, align 8, !dbg !5460, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %10, i64 0, i32 5, !dbg !5461
  %11 = load i64, ptr %offset23.i, align 8, !dbg !5462, !tbaa !1051
  %add24.i = add i64 %11, 2, !dbg !5462
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !5462, !tbaa !1051
  %12 = load i64, ptr %10, align 8, !dbg !5463, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %12, !dbg !5464
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !5465

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %10, align 8, !dbg !5466, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !5467

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ 2, %if.then30.i ], [ 2, %if.end17.i ], !dbg !5435
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #22, !dbg !5468
  ret i64 %retval.0.i, !dbg !5469
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteBlobString(ptr noundef %image, ptr noundef %string) local_unnamed_addr #0 !dbg !5470 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !5474, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.value(metadata ptr %string, metadata !5475, metadata !DIExpression()), !dbg !5476
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %string) #28, !dbg !5477
  call void @llvm.dbg.value(metadata ptr %image, metadata !2298, metadata !DIExpression()) #22, !dbg !5478
  call void @llvm.dbg.value(metadata i64 %call, metadata !2303, metadata !DIExpression()) #22, !dbg !5478
  call void @llvm.dbg.value(metadata ptr %string, metadata !2304, metadata !DIExpression()) #22, !dbg !5478
  %blob.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 52, !dbg !5480
  %0 = load ptr, ptr %blob.i, align 8, !dbg !5480, !tbaa !1249
  %type.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 11, !dbg !5481
  %1 = load i32, ptr %type.i, align 8, !dbg !5481, !tbaa !1054
  %cmp.not.i = icmp eq i32 %1, 7, !dbg !5482
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !5483

if.then.i:                                        ; preds = %entry
  %call.i = tail call i64 @WriteBlob(ptr noundef nonnull %image, i64 noundef %call, ptr noundef %string) #22, !dbg !5484
  br label %WriteBlobStream.exit, !dbg !5485

if.end.i:                                         ; preds = %entry
  %offset.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 5, !dbg !5486
  %2 = load i64, ptr %offset.i, align 8, !dbg !5486, !tbaa !1051
  %add.i = add nsw i64 %2, %call, !dbg !5487
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5478
  %extent3.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 1, !dbg !5488
  %3 = load i64, ptr %extent3.i, align 8, !dbg !5488, !tbaa !1045
  %cmp4.not.i = icmp ult i64 %add.i, %3, !dbg !5489
  br i1 %cmp4.not.i, label %if.end17.i, label %if.then5.i, !dbg !5490

if.then5.i:                                       ; preds = %if.end.i
  %quantum.i = getelementptr inbounds %struct._BlobInfo, ptr %0, i64 0, i32 2, !dbg !5491
  %4 = load i64, ptr %quantum.i, align 8, !dbg !5491, !tbaa !1048
  %add9.i = add i64 %3, %call, !dbg !5492
  %add10.i = add i64 %add9.i, %4, !dbg !5493
  call void @llvm.dbg.value(metadata i64 %add10.i, metadata !2305, metadata !DIExpression()) #22, !dbg !5478
  %shl.i = shl i64 %4, 1, !dbg !5494
  store i64 %shl.i, ptr %quantum.i, align 8, !dbg !5494, !tbaa !1048
  %call13.i = tail call i32 @SetBlobExtent(ptr noundef nonnull %image, i64 noundef %add10.i) #22, !dbg !5495
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !5496
  br i1 %cmp14.i, label %WriteBlobStream.exit, label %if.then5.if.end17_crit_edge.i, !dbg !5497

if.then5.if.end17_crit_edge.i:                    ; preds = %if.then5.i
  %.pre.i = load ptr, ptr %blob.i, align 8, !dbg !5498, !tbaa !1249
  %offset21.phi.trans.insert.i = getelementptr inbounds %struct._BlobInfo, ptr %.pre.i, i64 0, i32 5
  %.pre59.i = load i64, ptr %offset21.phi.trans.insert.i, align 8, !dbg !5499, !tbaa !1051
  br label %if.end17.i, !dbg !5497

if.end17.i:                                       ; preds = %if.then5.if.end17_crit_edge.i, %if.end.i
  %5 = phi i64 [ %.pre59.i, %if.then5.if.end17_crit_edge.i ], [ %2, %if.end.i ], !dbg !5499
  %6 = phi ptr [ %.pre.i, %if.then5.if.end17_crit_edge.i ], [ %0, %if.end.i ], !dbg !5498
  %data19.i = getelementptr inbounds %struct._BlobInfo, ptr %6, i64 0, i32 15, !dbg !5500
  %7 = load ptr, ptr %data19.i, align 8, !dbg !5500, !tbaa !1060
  %add.ptr.i = getelementptr inbounds i8, ptr %7, i64 %5, !dbg !5501
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2306, metadata !DIExpression()) #22, !dbg !5478
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %string, i64 %call, i1 false) #22, !dbg !5502
  %8 = load ptr, ptr %blob.i, align 8, !dbg !5503, !tbaa !1249
  %offset23.i = getelementptr inbounds %struct._BlobInfo, ptr %8, i64 0, i32 5, !dbg !5504
  %9 = load i64, ptr %offset23.i, align 8, !dbg !5505, !tbaa !1051
  %add24.i = add i64 %9, %call, !dbg !5505
  store i64 %add24.i, ptr %offset23.i, align 8, !dbg !5505, !tbaa !1051
  %10 = load i64, ptr %8, align 8, !dbg !5506, !tbaa !1042
  %cmp29.not.i = icmp slt i64 %add24.i, %10, !dbg !5507
  br i1 %cmp29.not.i, label %WriteBlobStream.exit, label %if.then30.i, !dbg !5508

if.then30.i:                                      ; preds = %if.end17.i
  store i64 %add24.i, ptr %8, align 8, !dbg !5509, !tbaa !1042
  br label %WriteBlobStream.exit, !dbg !5510

WriteBlobStream.exit:                             ; preds = %if.then.i, %if.then5.i, %if.end17.i, %if.then30.i
  %retval.0.i = phi i64 [ %call.i, %if.then.i ], [ 0, %if.then5.i ], [ %call, %if.then30.i ], [ %call, %if.end17.i ], !dbg !5478
  ret i64 %retval.0.i, !dbg !5511
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree
declare !dbg !5512 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare ptr @llvm.load.relative.i64(ptr, i64) #21

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { allocsize(1,2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { argmemonly nofree nounwind willreturn writeonly }
attributes #21 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #22 = { nounwind }
attributes #23 = { nounwind readnone willreturn }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(1,2) }
attributes #28 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1010, !1011, !1012, !1013, !1014, !1015}
!llvm.ident = !{!1016}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !542, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/blob.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "0f9f386409cae931efa8c56a790f8a58")
!2 = !{!3, !9, !20, !25, !62, !87, !99, !107, !112, !147, !157, !163, !178, !249, !257, !263, !336, !353, !367, !379, !404, !437, !459, !480, !486, !498, !504, !513, !521, !530}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 46, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19}
!12 = !DIEnumerator(name: "UndefinedStream", value: 0)
!13 = !DIEnumerator(name: "FileStream", value: 1)
!14 = !DIEnumerator(name: "StandardStream", value: 2)
!15 = !DIEnumerator(name: "PipeStream", value: 3)
!16 = !DIEnumerator(name: "ZipStream", value: 4)
!17 = !DIEnumerator(name: "BZipStream", value: 5)
!18 = !DIEnumerator(name: "FifoStream", value: 6)
!19 = !DIEnumerator(name: "BlobStream", value: 7)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, baseType: !5, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "UndefinedClass", value: 0)
!23 = !DIEnumerator(name: "DirectClass", value: 1)
!24 = !DIEnumerator(name: "PseudoClass", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 25, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!28 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!29 = !DIEnumerator(name: "RGBColorspace", value: 1)
!30 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!31 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!32 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!33 = !DIEnumerator(name: "LabColorspace", value: 5)
!34 = !DIEnumerator(name: "XYZColorspace", value: 6)
!35 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!36 = !DIEnumerator(name: "YCCColorspace", value: 8)
!37 = !DIEnumerator(name: "YIQColorspace", value: 9)
!38 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!39 = !DIEnumerator(name: "YUVColorspace", value: 11)
!40 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!41 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!42 = !DIEnumerator(name: "HSBColorspace", value: 14)
!43 = !DIEnumerator(name: "HSLColorspace", value: 15)
!44 = !DIEnumerator(name: "HWBColorspace", value: 16)
!45 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!46 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!47 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!48 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!49 = !DIEnumerator(name: "LogColorspace", value: 21)
!50 = !DIEnumerator(name: "CMYColorspace", value: 22)
!51 = !DIEnumerator(name: "LuvColorspace", value: 23)
!52 = !DIEnumerator(name: "HCLColorspace", value: 24)
!53 = !DIEnumerator(name: "LCHColorspace", value: 25)
!54 = !DIEnumerator(name: "LMSColorspace", value: 26)
!55 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!56 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!57 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!58 = !DIEnumerator(name: "HSIColorspace", value: 30)
!59 = !DIEnumerator(name: "HSVColorspace", value: 31)
!60 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!61 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 25, baseType: !5, size: 32, elements: !64)
!63 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!65 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!66 = !DIEnumerator(name: "NoCompression", value: 1)
!67 = !DIEnumerator(name: "BZipCompression", value: 2)
!68 = !DIEnumerator(name: "DXT1Compression", value: 3)
!69 = !DIEnumerator(name: "DXT3Compression", value: 4)
!70 = !DIEnumerator(name: "DXT5Compression", value: 5)
!71 = !DIEnumerator(name: "FaxCompression", value: 6)
!72 = !DIEnumerator(name: "Group4Compression", value: 7)
!73 = !DIEnumerator(name: "JPEGCompression", value: 8)
!74 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!75 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!76 = !DIEnumerator(name: "LZWCompression", value: 11)
!77 = !DIEnumerator(name: "RLECompression", value: 12)
!78 = !DIEnumerator(name: "ZipCompression", value: 13)
!79 = !DIEnumerator(name: "ZipSCompression", value: 14)
!80 = !DIEnumerator(name: "PizCompression", value: 15)
!81 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!82 = !DIEnumerator(name: "B44Compression", value: 17)
!83 = !DIEnumerator(name: "B44ACompression", value: 18)
!84 = !DIEnumerator(name: "LZMACompression", value: 19)
!85 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!86 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 75, baseType: !5, size: 32, elements: !89)
!88 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98}
!90 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!91 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!92 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!93 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!94 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!95 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!96 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!97 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!98 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 42, baseType: !5, size: 32, elements: !101)
!100 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!101 = !{!102, !103, !104, !105, !106}
!102 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!103 = !DIEnumerator(name: "SaturationIntent", value: 1)
!104 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!105 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!106 = !DIEnumerator(name: "RelativeIntent", value: 4)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 88, baseType: !5, size: 32, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!110 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!111 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 32, baseType: !5, size: 32, elements: !114)
!113 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!115 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!116 = !DIEnumerator(name: "PointFilter", value: 1)
!117 = !DIEnumerator(name: "BoxFilter", value: 2)
!118 = !DIEnumerator(name: "TriangleFilter", value: 3)
!119 = !DIEnumerator(name: "HermiteFilter", value: 4)
!120 = !DIEnumerator(name: "HanningFilter", value: 5)
!121 = !DIEnumerator(name: "HammingFilter", value: 6)
!122 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!123 = !DIEnumerator(name: "GaussianFilter", value: 8)
!124 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!125 = !DIEnumerator(name: "CubicFilter", value: 10)
!126 = !DIEnumerator(name: "CatromFilter", value: 11)
!127 = !DIEnumerator(name: "MitchellFilter", value: 12)
!128 = !DIEnumerator(name: "JincFilter", value: 13)
!129 = !DIEnumerator(name: "SincFilter", value: 14)
!130 = !DIEnumerator(name: "SincFastFilter", value: 15)
!131 = !DIEnumerator(name: "KaiserFilter", value: 16)
!132 = !DIEnumerator(name: "WelshFilter", value: 17)
!133 = !DIEnumerator(name: "ParzenFilter", value: 18)
!134 = !DIEnumerator(name: "BohmanFilter", value: 19)
!135 = !DIEnumerator(name: "BartlettFilter", value: 20)
!136 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!137 = !DIEnumerator(name: "LanczosFilter", value: 22)
!138 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!139 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!140 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!141 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!142 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!143 = !DIEnumerator(name: "CosineFilter", value: 28)
!144 = !DIEnumerator(name: "SplineFilter", value: 29)
!145 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!146 = !DIEnumerator(name: "SentinelFilter", value: 31)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 63, baseType: !5, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156}
!149 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!150 = !DIEnumerator(name: "NoInterlace", value: 1)
!151 = !DIEnumerator(name: "LineInterlace", value: 2)
!152 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!153 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!154 = !DIEnumerator(name: "GIFInterlace", value: 5)
!155 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!156 = !DIEnumerator(name: "PNGInterlace", value: 7)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 30, baseType: !5, size: 32, elements: !159)
!158 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!161 = !DIEnumerator(name: "LSBEndian", value: 1)
!162 = !DIEnumerator(name: "MSBEndian", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !164, line: 77, baseType: !5, size: 32, elements: !165)
!164 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!166 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!167 = !DIEnumerator(name: "ForgetGravity", value: 0)
!168 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!169 = !DIEnumerator(name: "NorthGravity", value: 2)
!170 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!171 = !DIEnumerator(name: "WestGravity", value: 4)
!172 = !DIEnumerator(name: "CenterGravity", value: 5)
!173 = !DIEnumerator(name: "EastGravity", value: 6)
!174 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!175 = !DIEnumerator(name: "SouthGravity", value: 8)
!176 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!177 = !DIEnumerator(name: "StaticGravity", value: 10)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 25, baseType: !5, size: 32, elements: !180)
!179 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!181 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!182 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!183 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!184 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!185 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!186 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!187 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!188 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!189 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!190 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!191 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!192 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!193 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!194 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!195 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!196 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!197 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!198 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!199 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!200 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!201 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!202 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!203 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!204 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!205 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!206 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!207 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!208 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!209 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!210 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!211 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!212 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!213 = !DIEnumerator(name: "InCompositeOp", value: 32)
!214 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!215 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!216 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!217 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!218 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!219 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!220 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!221 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!222 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!223 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!224 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!225 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!226 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!227 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!228 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!229 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!230 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!231 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!232 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!233 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!234 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!235 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!236 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!237 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!238 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!239 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!240 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!241 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!242 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!243 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!244 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!245 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!246 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!247 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!248 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !250, line: 25, baseType: !5, size: 32, elements: !251)
!250 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!251 = !{!252, !253, !254, !255, !256}
!252 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!253 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!254 = !DIEnumerator(name: "NoneDispose", value: 1)
!255 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!256 = !DIEnumerator(name: "PreviousDispose", value: 3)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !258, line: 25, baseType: !5, size: 32, elements: !259)
!258 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!259 = !{!260, !261, !262}
!260 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!261 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!262 = !DIEnumerator(name: "RunningTimerState", value: 2)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !264, line: 28, baseType: !5, size: 32, elements: !265)
!264 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!266 = !DIEnumerator(name: "UndefinedException", value: 0)
!267 = !DIEnumerator(name: "WarningException", value: 300)
!268 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!269 = !DIEnumerator(name: "TypeWarning", value: 305)
!270 = !DIEnumerator(name: "OptionWarning", value: 310)
!271 = !DIEnumerator(name: "DelegateWarning", value: 315)
!272 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!273 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!274 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!275 = !DIEnumerator(name: "BlobWarning", value: 335)
!276 = !DIEnumerator(name: "StreamWarning", value: 340)
!277 = !DIEnumerator(name: "CacheWarning", value: 345)
!278 = !DIEnumerator(name: "CoderWarning", value: 350)
!279 = !DIEnumerator(name: "FilterWarning", value: 352)
!280 = !DIEnumerator(name: "ModuleWarning", value: 355)
!281 = !DIEnumerator(name: "DrawWarning", value: 360)
!282 = !DIEnumerator(name: "ImageWarning", value: 365)
!283 = !DIEnumerator(name: "WandWarning", value: 370)
!284 = !DIEnumerator(name: "RandomWarning", value: 375)
!285 = !DIEnumerator(name: "XServerWarning", value: 380)
!286 = !DIEnumerator(name: "MonitorWarning", value: 385)
!287 = !DIEnumerator(name: "RegistryWarning", value: 390)
!288 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!289 = !DIEnumerator(name: "PolicyWarning", value: 399)
!290 = !DIEnumerator(name: "ErrorException", value: 400)
!291 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!292 = !DIEnumerator(name: "TypeError", value: 405)
!293 = !DIEnumerator(name: "OptionError", value: 410)
!294 = !DIEnumerator(name: "DelegateError", value: 415)
!295 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!296 = !DIEnumerator(name: "CorruptImageError", value: 425)
!297 = !DIEnumerator(name: "FileOpenError", value: 430)
!298 = !DIEnumerator(name: "BlobError", value: 435)
!299 = !DIEnumerator(name: "StreamError", value: 440)
!300 = !DIEnumerator(name: "CacheError", value: 445)
!301 = !DIEnumerator(name: "CoderError", value: 450)
!302 = !DIEnumerator(name: "FilterError", value: 452)
!303 = !DIEnumerator(name: "ModuleError", value: 455)
!304 = !DIEnumerator(name: "DrawError", value: 460)
!305 = !DIEnumerator(name: "ImageError", value: 465)
!306 = !DIEnumerator(name: "WandError", value: 470)
!307 = !DIEnumerator(name: "RandomError", value: 475)
!308 = !DIEnumerator(name: "XServerError", value: 480)
!309 = !DIEnumerator(name: "MonitorError", value: 485)
!310 = !DIEnumerator(name: "RegistryError", value: 490)
!311 = !DIEnumerator(name: "ConfigureError", value: 495)
!312 = !DIEnumerator(name: "PolicyError", value: 499)
!313 = !DIEnumerator(name: "FatalErrorException", value: 700)
!314 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!315 = !DIEnumerator(name: "TypeFatalError", value: 705)
!316 = !DIEnumerator(name: "OptionFatalError", value: 710)
!317 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!318 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!319 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!320 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!321 = !DIEnumerator(name: "BlobFatalError", value: 735)
!322 = !DIEnumerator(name: "StreamFatalError", value: 740)
!323 = !DIEnumerator(name: "CacheFatalError", value: 745)
!324 = !DIEnumerator(name: "CoderFatalError", value: 750)
!325 = !DIEnumerator(name: "FilterFatalError", value: 752)
!326 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!327 = !DIEnumerator(name: "DrawFatalError", value: 760)
!328 = !DIEnumerator(name: "ImageFatalError", value: 765)
!329 = !DIEnumerator(name: "WandFatalError", value: 770)
!330 = !DIEnumerator(name: "RandomFatalError", value: 775)
!331 = !DIEnumerator(name: "XServerFatalError", value: 780)
!332 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!333 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!334 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!335 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 31, baseType: !5, size: 32, elements: !338)
!337 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!339 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!340 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!341 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!342 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!343 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!344 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!345 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!346 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!347 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!348 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!349 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!350 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!351 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!352 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 47, baseType: !5, size: 32, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!355 = !DIEnumerator(name: "UndefinedType", value: 0)
!356 = !DIEnumerator(name: "BilevelType", value: 1)
!357 = !DIEnumerator(name: "GrayscaleType", value: 2)
!358 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!359 = !DIEnumerator(name: "PaletteType", value: 4)
!360 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!361 = !DIEnumerator(name: "TrueColorType", value: 6)
!362 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!363 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!364 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!365 = !DIEnumerator(name: "OptimizeType", value: 10)
!366 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 67, baseType: !5, size: 32, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!369 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!370 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!371 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!372 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!373 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!374 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!375 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!376 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!377 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!378 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
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
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !487, line: 25, baseType: !5, size: 32, elements: !488)
!487 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497}
!489 = !DIEnumerator(name: "UndefinedResource", value: 0)
!490 = !DIEnumerator(name: "AreaResource", value: 1)
!491 = !DIEnumerator(name: "DiskResource", value: 2)
!492 = !DIEnumerator(name: "FileResource", value: 3)
!493 = !DIEnumerator(name: "MapResource", value: 4)
!494 = !DIEnumerator(name: "MemoryResource", value: 5)
!495 = !DIEnumerator(name: "ThreadResource", value: 6)
!496 = !DIEnumerator(name: "TimeResource", value: 7)
!497 = !DIEnumerator(name: "ThrottleResource", value: 8)
!498 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !499, line: 30, baseType: !5, size: 32, elements: !500)
!499 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!500 = !{!501, !502, !503}
!501 = !DIEnumerator(name: "ReadMode", value: 0)
!502 = !DIEnumerator(name: "WriteMode", value: 1)
!503 = !DIEnumerator(name: "IOMode", value: 2)
!504 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 35, baseType: !5, size: 32, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512}
!506 = !DIEnumerator(name: "UndefinedBlobMode", value: 0)
!507 = !DIEnumerator(name: "ReadBlobMode", value: 1)
!508 = !DIEnumerator(name: "ReadBinaryBlobMode", value: 2)
!509 = !DIEnumerator(name: "WriteBlobMode", value: 3)
!510 = !DIEnumerator(name: "WriteBinaryBlobMode", value: 4)
!511 = !DIEnumerator(name: "AppendBlobMode", value: 5)
!512 = !DIEnumerator(name: "AppendBinaryBlobMode", value: 6)
!513 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !514, line: 39, baseType: !5, size: 32, elements: !515)
!514 = !DIFile(filename: "apps/538.imagick_r/src/magick/policy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6242d97ee47d0d7f0e3878e07f1ce5b1")
!515 = !{!516, !517, !518, !519, !520}
!516 = !DIEnumerator(name: "UndefinedPolicyRights", value: 0)
!517 = !DIEnumerator(name: "NoPolicyRights", value: 0)
!518 = !DIEnumerator(name: "ReadPolicyRights", value: 1)
!519 = !DIEnumerator(name: "WritePolicyRights", value: 2)
!520 = !DIEnumerator(name: "ExecutePolicyRights", value: 4)
!521 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !514, line: 28, baseType: !5, size: 32, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529}
!523 = !DIEnumerator(name: "UndefinedPolicyDomain", value: 0)
!524 = !DIEnumerator(name: "CoderPolicyDomain", value: 1)
!525 = !DIEnumerator(name: "DelegatePolicyDomain", value: 2)
!526 = !DIEnumerator(name: "FilterPolicyDomain", value: 3)
!527 = !DIEnumerator(name: "PathPolicyDomain", value: 4)
!528 = !DIEnumerator(name: "ResourcePolicyDomain", value: 5)
!529 = !DIEnumerator(name: "SystemPolicyDomain", value: 6)
!530 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !531, line: 25, baseType: !5, size: 32, elements: !532)
!531 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!532 = !{!533, !534, !535, !536, !537, !538, !539, !540, !541}
!533 = !DIEnumerator(name: "UndefinedPath", value: 0)
!534 = !DIEnumerator(name: "MagickPath", value: 1)
!535 = !DIEnumerator(name: "RootPath", value: 2)
!536 = !DIEnumerator(name: "HeadPath", value: 3)
!537 = !DIEnumerator(name: "TailPath", value: 4)
!538 = !DIEnumerator(name: "BasePath", value: 5)
!539 = !DIEnumerator(name: "ExtensionPath", value: 6)
!540 = !DIEnumerator(name: "SubimagePath", value: 7)
!541 = !DIEnumerator(name: "CanonicalPath", value: 8)
!542 = !{!543, !544, !546, !599, !606, !608, !610, !612, !614, !890, !751, !553, !823, !812, !740, !672, !1007, !5, !607, !555, !648, !1008, !579, !556, !988, !1009}
!543 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !545, line: 46, baseType: !543)
!545 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !548, line: 7, baseType: !549)
!548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !550, line: 49, size: 1728, elements: !551)
!550 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!551 = !{!552, !554, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !570, !572, !573, !574, !578, !580, !582, !586, !589, !591, !594, !597, !598, !600, !601, !602}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !549, file: !550, line: 51, baseType: !553, size: 32)
!553 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !549, file: !550, line: 54, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !549, file: !550, line: 55, baseType: !555, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !549, file: !550, line: 56, baseType: !555, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !549, file: !550, line: 57, baseType: !555, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !549, file: !550, line: 58, baseType: !555, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !549, file: !550, line: 59, baseType: !555, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !549, file: !550, line: 60, baseType: !555, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !549, file: !550, line: 61, baseType: !555, size: 64, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !549, file: !550, line: 64, baseType: !555, size: 64, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !549, file: !550, line: 65, baseType: !555, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !549, file: !550, line: 66, baseType: !555, size: 64, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !549, file: !550, line: 68, baseType: !568, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !550, line: 36, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !549, file: !550, line: 70, baseType: !571, size: 64, offset: 832)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !549, file: !550, line: 72, baseType: !553, size: 32, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !549, file: !550, line: 73, baseType: !553, size: 32, offset: 928)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !549, file: !550, line: 74, baseType: !575, size: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !576, line: 152, baseType: !577)
!576 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!577 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !549, file: !550, line: 77, baseType: !579, size: 16, offset: 1024)
!579 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !549, file: !550, line: 78, baseType: !581, size: 8, offset: 1040)
!581 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !549, file: !550, line: 79, baseType: !583, size: 8, offset: 1048)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 8, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 1)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !549, file: !550, line: 81, baseType: !587, size: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !550, line: 43, baseType: null)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !549, file: !550, line: 89, baseType: !590, size: 64, offset: 1152)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !576, line: 153, baseType: !577)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !549, file: !550, line: 91, baseType: !592, size: 64, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !550, line: 37, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !549, file: !550, line: 92, baseType: !595, size: 64, offset: 1280)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !550, line: 38, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !549, file: !550, line: 93, baseType: !571, size: 64, offset: 1344)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !549, file: !550, line: 94, baseType: !599, size: 64, offset: 1408)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !549, file: !550, line: 95, baseType: !544, size: 64, offset: 1472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !549, file: !550, line: 96, baseType: !553, size: 32, offset: 1536)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !549, file: !550, line: 98, baseType: !603, size: 160, offset: 1568)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 160, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 20)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !611)
!611 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !88, line: 150, size: 105920, elements: !617)
!617 = !{!618, !620, !622, !624, !625, !627, !629, !630, !631, !632, !633, !634, !644, !645, !646, !647, !649, !663, !665, !666, !668, !669, !670, !671, !675, !676, !677, !685, !686, !687, !688, !689, !690, !692, !694, !696, !698, !700, !702, !704, !705, !706, !707, !708, !709, !710, !718, !733, !743, !744, !745, !746, !750, !829, !833, !834, !835, !836, !837, !850, !851, !853, !854, !862, !863, !865, !866, !867, !868, !869, !870, !872, !873, !874, !875, !876, !877, !878, !880, !881, !882, !883, !884, !887, !889}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !616, file: !88, line: 153, baseType: !619, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !20)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !616, file: !88, line: 156, baseType: !621, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !26, line: 61, baseType: !25)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !616, file: !88, line: 159, baseType: !623, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !63, line: 49, baseType: !62)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !616, file: !88, line: 162, baseType: !544, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !616, file: !88, line: 165, baseType: !626, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !88, line: 86, baseType: !87)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !616, file: !88, line: 168, baseType: !628, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !616, file: !88, line: 169, baseType: !628, size: 32, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !616, file: !88, line: 172, baseType: !544, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !616, file: !88, line: 173, baseType: !544, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !616, file: !88, line: 174, baseType: !544, size: 64, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !616, file: !88, line: 175, baseType: !544, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !616, file: !88, line: 178, baseType: !635, size: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !337, line: 148, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !337, line: 131, size: 64, elements: !638)
!638 = !{!639, !641, !642, !643}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !637, file: !337, line: 143, baseType: !640, size: 16)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !579)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !637, file: !337, line: 144, baseType: !640, size: 16, offset: 16)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !637, file: !337, line: 145, baseType: !640, size: 16, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !637, file: !337, line: 146, baseType: !640, size: 16, offset: 48)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !616, file: !88, line: 179, baseType: !636, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !616, file: !88, line: 180, baseType: !636, size: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !616, file: !88, line: 181, baseType: !636, size: 64, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !616, file: !88, line: 184, baseType: !648, size: 64, offset: 832)
!648 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !616, file: !88, line: 187, baseType: !650, size: 768, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !88, line: 128, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !88, line: 121, size: 768, elements: !652)
!652 = !{!653, !660, !661, !662}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !651, file: !88, line: 124, baseType: !654, size: 192)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !88, line: 101, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !88, line: 95, size: 192, elements: !656)
!656 = !{!657, !658, !659}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !655, file: !88, line: 98, baseType: !648, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !655, file: !88, line: 99, baseType: !648, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !655, file: !88, line: 100, baseType: !648, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !651, file: !88, line: 125, baseType: !654, size: 192, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !651, file: !88, line: 126, baseType: !654, size: 192, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !651, file: !88, line: 127, baseType: !654, size: 192, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !616, file: !88, line: 190, baseType: !664, size: 32, offset: 1664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !100, line: 49, baseType: !99)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !616, file: !88, line: 193, baseType: !599, size: 64, offset: 1728)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !616, file: !88, line: 196, baseType: !667, size: 32, offset: 1792)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !88, line: 93, baseType: !107)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !616, file: !88, line: 199, baseType: !555, size: 64, offset: 1856)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !616, file: !88, line: 200, baseType: !555, size: 64, offset: 1920)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !616, file: !88, line: 201, baseType: !555, size: 64, offset: 1984)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !616, file: !88, line: 204, baseType: !672, size: 64, offset: 2048)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !673, line: 77, baseType: !674)
!673 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !576, line: 193, baseType: !577)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !616, file: !88, line: 207, baseType: !648, size: 64, offset: 2112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !616, file: !88, line: 208, baseType: !648, size: 64, offset: 2176)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !616, file: !88, line: 211, baseType: !678, size: 256, offset: 2240)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !164, line: 130, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !164, line: 121, size: 256, elements: !680)
!680 = !{!681, !682, !683, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !679, file: !164, line: 124, baseType: !544, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !679, file: !164, line: 125, baseType: !544, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !679, file: !164, line: 128, baseType: !672, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !679, file: !164, line: 129, baseType: !672, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !616, file: !88, line: 212, baseType: !678, size: 256, offset: 2496)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !616, file: !88, line: 213, baseType: !678, size: 256, offset: 2752)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !616, file: !88, line: 216, baseType: !648, size: 64, offset: 3008)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !616, file: !88, line: 217, baseType: !648, size: 64, offset: 3072)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !616, file: !88, line: 218, baseType: !648, size: 64, offset: 3136)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !616, file: !88, line: 221, baseType: !691, size: 32, offset: 3200)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !113, line: 66, baseType: !112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !616, file: !88, line: 224, baseType: !693, size: 32, offset: 3232)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !88, line: 73, baseType: !147)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !616, file: !88, line: 227, baseType: !695, size: 32, offset: 3264)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !158, line: 35, baseType: !157)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !616, file: !88, line: 230, baseType: !697, size: 32, offset: 3296)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !164, line: 91, baseType: !163)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !616, file: !88, line: 233, baseType: !699, size: 32, offset: 3328)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !179, line: 99, baseType: !178)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !616, file: !88, line: 236, baseType: !701, size: 32, offset: 3360)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !250, line: 32, baseType: !249)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !616, file: !88, line: 239, baseType: !703, size: 64, offset: 3392)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !616, file: !88, line: 242, baseType: !544, size: 64, offset: 3456)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !616, file: !88, line: 243, baseType: !544, size: 64, offset: 3520)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !616, file: !88, line: 246, baseType: !672, size: 64, offset: 3584)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !616, file: !88, line: 249, baseType: !544, size: 64, offset: 3648)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !616, file: !88, line: 250, baseType: !544, size: 64, offset: 3712)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !616, file: !88, line: 253, baseType: !672, size: 64, offset: 3776)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !616, file: !88, line: 256, baseType: !711, size: 192, offset: 3840)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !712, line: 68, baseType: !713)
!712 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !712, line: 62, size: 192, elements: !714)
!714 = !{!715, !716, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !713, file: !712, line: 65, baseType: !648, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !713, file: !712, line: 66, baseType: !648, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !713, file: !712, line: 67, baseType: !648, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !616, file: !88, line: 259, baseType: !719, size: 512, offset: 4032)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !258, line: 51, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !258, line: 40, size: 512, elements: !721)
!721 = !{!722, !729, !730, !732}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !720, file: !258, line: 43, baseType: !723, size: 192)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !258, line: 38, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !258, line: 32, size: 192, elements: !725)
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !724, file: !258, line: 35, baseType: !648, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !724, file: !258, line: 36, baseType: !648, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !724, file: !258, line: 37, baseType: !648, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !720, file: !258, line: 44, baseType: !723, size: 192, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !720, file: !258, line: 47, baseType: !731, size: 32, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !258, line: 30, baseType: !257)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !720, file: !258, line: 50, baseType: !544, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !616, file: !88, line: 262, baseType: !734, size: 64, offset: 4544)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !735, line: 26, baseType: !736)
!735 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!628, !608, !739, !742, !599}
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !741)
!741 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !616, file: !88, line: 265, baseType: !599, size: 64, offset: 4608)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !616, file: !88, line: 266, baseType: !599, size: 64, offset: 4672)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !616, file: !88, line: 267, baseType: !599, size: 64, offset: 4736)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !616, file: !88, line: 270, baseType: !747, size: 64, offset: 4800)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !63, line: 52, baseType: !749)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !63, line: 51, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !616, file: !88, line: 273, baseType: !751, size: 64, offset: 4864)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !754, line: 108, size: 2176, elements: !755)
!754 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0f9f386409cae931efa8c56a790f8a58")
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !769, !774, !811, !820, !821, !822, !827, !828}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !753, file: !754, line: 111, baseType: !544, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !753, file: !754, line: 112, baseType: !544, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "quantum", scope: !753, file: !754, line: 113, baseType: !544, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !753, file: !754, line: 116, baseType: !628, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !753, file: !754, line: 117, baseType: !628, size: 32, offset: 224)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !753, file: !754, line: 120, baseType: !740, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !753, file: !754, line: 123, baseType: !610, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "exempt", scope: !753, file: !754, line: 126, baseType: !628, size: 32, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !753, file: !754, line: 127, baseType: !628, size: 32, offset: 416)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !753, file: !754, line: 128, baseType: !628, size: 32, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !753, file: !754, line: 129, baseType: !628, size: 32, offset: 480)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !754, line: 132, baseType: !768, size: 32, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamType", file: !10, line: 56, baseType: !9)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "file_info", scope: !753, file: !754, line: 135, baseType: !770, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileInfo", file: !754, line: 106, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FileInfo", file: !754, line: 92, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !771, file: !754, line: 95, baseType: !546, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !753, file: !754, line: 138, baseType: !775, size: 1152, offset: 640)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !776, line: 46, size: 1152, elements: !777)
!776 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!777 = !{!778, !780, !782, !784, !786, !788, !790, !791, !792, !793, !795, !797, !805, !806, !807}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !775, file: !776, line: 48, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !576, line: 145, baseType: !543)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !775, file: !776, line: 53, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !576, line: 148, baseType: !543)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !775, file: !776, line: 61, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !576, line: 151, baseType: !543)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !775, file: !776, line: 62, baseType: !785, size: 32, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !576, line: 150, baseType: !5)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !775, file: !776, line: 64, baseType: !787, size: 32, offset: 224)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !576, line: 146, baseType: !5)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !775, file: !776, line: 65, baseType: !789, size: 32, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !576, line: 147, baseType: !5)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !775, file: !776, line: 67, baseType: !553, size: 32, offset: 288)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !775, file: !776, line: 69, baseType: !779, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !775, file: !776, line: 74, baseType: !575, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !775, file: !776, line: 78, baseType: !794, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !576, line: 174, baseType: !577)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !775, file: !776, line: 80, baseType: !796, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !576, line: 179, baseType: !577)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !775, file: !776, line: 91, baseType: !798, size: 128, offset: 576)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !799, line: 10, size: 128, elements: !800)
!799 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!800 = !{!801, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !798, file: !799, line: 12, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !576, line: 160, baseType: !577)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !798, file: !799, line: 16, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !576, line: 196, baseType: !577)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !775, file: !776, line: 92, baseType: !798, size: 128, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !775, file: !776, line: 93, baseType: !798, size: 128, offset: 832)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !775, file: !776, line: 106, baseType: !808, size: 192, offset: 960)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 192, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 3)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !753, file: !754, line: 141, baseType: !812, size: 64, offset: 1792)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !813, line: 26, baseType: !814)
!813 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!544, !817, !612, !819}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !753, file: !754, line: 144, baseType: !606, size: 64, offset: 1856)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !753, file: !754, line: 147, baseType: !628, size: 32, offset: 1920)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !753, file: !754, line: 150, baseType: !823, size: 64, offset: 1984)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !825, line: 26, baseType: !826)
!825 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !825, line: 25, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !754, line: 153, baseType: !672, size: 64, offset: 2048)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !753, file: !754, line: 156, baseType: !544, size: 64, offset: 2112)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !616, file: !88, line: 276, baseType: !830, size: 32768, offset: 4928)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 32768, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 4096)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !616, file: !88, line: 277, baseType: !830, size: 32768, offset: 37696)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !616, file: !88, line: 278, baseType: !830, size: 32768, offset: 70464)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !616, file: !88, line: 281, baseType: !544, size: 64, offset: 103232)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !616, file: !88, line: 282, baseType: !544, size: 64, offset: 103296)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !616, file: !88, line: 285, baseType: !838, size: 448, offset: 103360)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !264, line: 102, size: 448, elements: !840)
!840 = !{!841, !843, !844, !845, !846, !847, !848, !849}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !839, file: !264, line: 105, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !264, line: 100, baseType: !263)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !839, file: !264, line: 108, baseType: !553, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !839, file: !264, line: 111, baseType: !555, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !839, file: !264, line: 112, baseType: !555, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !839, file: !264, line: 115, baseType: !599, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !839, file: !264, line: 118, baseType: !628, size: 32, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !839, file: !264, line: 121, baseType: !823, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !839, file: !264, line: 124, baseType: !544, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !616, file: !88, line: 288, baseType: !628, size: 32, offset: 103808)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !88, line: 291, baseType: !852, size: 64, offset: 103872)
!852 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !672)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !616, file: !88, line: 294, baseType: !823, size: 64, offset: 103936)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !616, file: !88, line: 297, baseType: !855, size: 256, offset: 104000)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !100, line: 40, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !100, line: 27, size: 256, elements: !857)
!857 = !{!858, !859, !860, !861}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !856, file: !100, line: 30, baseType: !555, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !856, file: !100, line: 33, baseType: !544, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !856, file: !100, line: 36, baseType: !606, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !856, file: !100, line: 39, baseType: !544, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !616, file: !88, line: 298, baseType: !855, size: 256, offset: 104256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !616, file: !88, line: 299, baseType: !864, size: 64, offset: 104512)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !616, file: !88, line: 302, baseType: !544, size: 64, offset: 104576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !616, file: !88, line: 305, baseType: !544, size: 64, offset: 104640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !616, file: !88, line: 308, baseType: !703, size: 64, offset: 104704)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !616, file: !88, line: 309, baseType: !703, size: 64, offset: 104768)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !616, file: !88, line: 310, baseType: !703, size: 64, offset: 104832)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !616, file: !88, line: 313, baseType: !871, size: 32, offset: 104896)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !337, line: 47, baseType: !336)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !616, file: !88, line: 316, baseType: !628, size: 32, offset: 104928)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !616, file: !88, line: 319, baseType: !636, size: 64, offset: 104960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !616, file: !88, line: 322, baseType: !703, size: 64, offset: 105024)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !616, file: !88, line: 325, baseType: !678, size: 256, offset: 105088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !616, file: !88, line: 328, baseType: !599, size: 64, offset: 105344)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !616, file: !88, line: 329, baseType: !599, size: 64, offset: 105408)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !88, line: 332, baseType: !879, size: 32, offset: 105472)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !88, line: 61, baseType: !353)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !616, file: !88, line: 335, baseType: !628, size: 32, offset: 105504)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !616, file: !88, line: 338, baseType: !610, size: 64, offset: 105536)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !616, file: !88, line: 341, baseType: !628, size: 32, offset: 105600)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !616, file: !88, line: 344, baseType: !544, size: 64, offset: 105664)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !616, file: !88, line: 347, baseType: !885, size: 64, offset: 105728)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !886, line: 7, baseType: !802)
!886 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !616, file: !88, line: 350, baseType: !888, size: 32, offset: 105792)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !337, line: 79, baseType: !367)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !616, file: !88, line: 353, baseType: !544, size: 64, offset: 105856)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickInfo", file: !481, line: 103, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickInfo", file: !481, line: 51, size: 1216, elements: !894)
!894 = !{!895, !896, !897, !898, !899, !900, !970, !978, !983, !990, !991, !992, !993, !994, !995, !996, !998, !1000, !1001, !1003, !1004, !1005, !1006}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !893, file: !481, line: 54, baseType: !555, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !893, file: !481, line: 55, baseType: !555, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !893, file: !481, line: 56, baseType: !555, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !893, file: !481, line: 57, baseType: !555, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !893, file: !481, line: 58, baseType: !555, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !893, file: !481, line: 61, baseType: !901, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !4, line: 223, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !88, line: 356, size: 134336, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !939, !940, !941, !942, !943, !944, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !967, !968, !969}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !903, file: !88, line: 359, baseType: !623, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !903, file: !88, line: 362, baseType: !626, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !903, file: !88, line: 365, baseType: !628, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !903, file: !88, line: 366, baseType: !628, size: 32, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !903, file: !88, line: 367, baseType: !628, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !903, file: !88, line: 368, baseType: !628, size: 32, offset: 160)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !903, file: !88, line: 371, baseType: !555, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !903, file: !88, line: 372, baseType: !555, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !903, file: !88, line: 373, baseType: !555, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !903, file: !88, line: 374, baseType: !555, size: 64, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !903, file: !88, line: 377, baseType: !544, size: 64, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !903, file: !88, line: 378, baseType: !544, size: 64, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !903, file: !88, line: 379, baseType: !544, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !903, file: !88, line: 382, baseType: !693, size: 32, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !903, file: !88, line: 385, baseType: !695, size: 32, offset: 672)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !903, file: !88, line: 388, baseType: !667, size: 32, offset: 704)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !903, file: !88, line: 391, baseType: !544, size: 64, offset: 768)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !903, file: !88, line: 394, baseType: !555, size: 64, offset: 832)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !903, file: !88, line: 395, baseType: !555, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !903, file: !88, line: 396, baseType: !555, size: 64, offset: 960)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !903, file: !88, line: 397, baseType: !555, size: 64, offset: 1024)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !903, file: !88, line: 398, baseType: !555, size: 64, offset: 1088)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !903, file: !88, line: 401, baseType: !648, size: 64, offset: 1152)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !903, file: !88, line: 402, baseType: !648, size: 64, offset: 1216)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !903, file: !88, line: 405, baseType: !636, size: 64, offset: 1280)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !903, file: !88, line: 406, baseType: !636, size: 64, offset: 1344)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !903, file: !88, line: 407, baseType: !636, size: 64, offset: 1408)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !903, file: !88, line: 410, baseType: !628, size: 32, offset: 1472)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !903, file: !88, line: 411, baseType: !628, size: 32, offset: 1504)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !903, file: !88, line: 414, baseType: !544, size: 64, offset: 1536)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !903, file: !88, line: 417, baseType: !621, size: 32, offset: 1600)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !903, file: !88, line: 420, baseType: !879, size: 32, offset: 1632)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !903, file: !88, line: 423, baseType: !938, size: 32, offset: 1664)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !405, line: 59, baseType: !404)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !903, file: !88, line: 426, baseType: !672, size: 64, offset: 1728)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !903, file: !88, line: 429, baseType: !628, size: 32, offset: 1792)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !903, file: !88, line: 430, baseType: !628, size: 32, offset: 1824)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !903, file: !88, line: 433, baseType: !555, size: 64, offset: 1856)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !903, file: !88, line: 434, baseType: !555, size: 64, offset: 1920)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !903, file: !88, line: 437, baseType: !945, size: 32, offset: 1984)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !437)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !903, file: !88, line: 440, baseType: !614, size: 64, offset: 2048)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !903, file: !88, line: 443, baseType: !599, size: 64, offset: 2112)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !903, file: !88, line: 446, baseType: !734, size: 64, offset: 2176)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !903, file: !88, line: 449, baseType: !599, size: 64, offset: 2240)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !903, file: !88, line: 450, baseType: !599, size: 64, offset: 2304)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !903, file: !88, line: 453, baseType: !812, size: 64, offset: 2368)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !903, file: !88, line: 456, baseType: !546, size: 64, offset: 2432)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !903, file: !88, line: 459, baseType: !599, size: 64, offset: 2496)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !903, file: !88, line: 462, baseType: !544, size: 64, offset: 2560)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !903, file: !88, line: 465, baseType: !830, size: 32768, offset: 2624)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !903, file: !88, line: 466, baseType: !830, size: 32768, offset: 35392)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !903, file: !88, line: 467, baseType: !830, size: 32768, offset: 68160)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !903, file: !88, line: 468, baseType: !830, size: 32768, offset: 100928)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !903, file: !88, line: 471, baseType: !628, size: 32, offset: 133696)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !903, file: !88, line: 474, baseType: !555, size: 64, offset: 133760)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !903, file: !88, line: 477, baseType: !544, size: 64, offset: 133824)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !903, file: !88, line: 478, baseType: !544, size: 64, offset: 133888)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !903, file: !88, line: 481, baseType: !636, size: 64, offset: 133952)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !903, file: !88, line: 484, baseType: !544, size: 64, offset: 134016)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !903, file: !88, line: 487, baseType: !966, size: 32, offset: 134080)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !460, line: 47, baseType: !459)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !903, file: !88, line: 490, baseType: !636, size: 64, offset: 134112)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !903, file: !88, line: 493, baseType: !599, size: 64, offset: 134208)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !903, file: !88, line: 496, baseType: !628, size: 32, offset: 134272)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !893, file: !481, line: 64, baseType: !971, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodeImageHandler", file: !481, line: 43, baseType: !973)
!973 = !DISubroutineType(types: !974)
!974 = !{!614, !975, !977}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !893, file: !481, line: 67, baseType: !979, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodeImageHandler", file: !481, line: 46, baseType: !981)
!981 = !DISubroutineType(types: !982)
!982 = !{!628, !975, !614}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !893, file: !481, line: 70, baseType: !984, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "IsImageFormatHandler", file: !481, line: 49, baseType: !986)
!986 = !DISubroutineType(types: !987)
!987 = !{!628, !988, !819}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !893, file: !481, line: 73, baseType: !599, size: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !893, file: !481, line: 76, baseType: !628, size: 32, offset: 640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !893, file: !481, line: 77, baseType: !628, size: 32, offset: 672)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "endian_support", scope: !893, file: !481, line: 78, baseType: !628, size: 32, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "blob_support", scope: !893, file: !481, line: 79, baseType: !628, size: 32, offset: 736)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "seekable_stream", scope: !893, file: !481, line: 80, baseType: !628, size: 32, offset: 768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "format_type", scope: !893, file: !481, line: 83, baseType: !997, size: 32, offset: 800)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickFormatType", file: !481, line: 33, baseType: !480)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "thread_support", scope: !893, file: !481, line: 86, baseType: !999, size: 32, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !893, file: !481, line: 89, baseType: !628, size: 32, offset: 864)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !893, file: !481, line: 92, baseType: !1002, size: 64, offset: 896)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !893, file: !481, line: 93, baseType: !1002, size: 64, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !893, file: !481, line: 96, baseType: !544, size: 64, offset: 1024)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !893, file: !481, line: 99, baseType: !555, size: 64, offset: 1088)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !893, file: !481, line: 102, baseType: !823, size: 64, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !673, line: 63, baseType: !575)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!1010 = !{i32 7, !"Dwarf Version", i32 5}
!1011 = !{i32 2, !"Debug Info Version", i32 3}
!1012 = !{i32 1, !"wchar_size", i32 4}
!1013 = !{i32 7, !"PIC Level", i32 2}
!1014 = !{i32 7, !"PIE Level", i32 2}
!1015 = !{i32 7, !"uwtable", i32 2}
!1016 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1017 = distinct !DISubprogram(name: "AttachBlob", scope: !754, file: !754, line: 192, type: !1018, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !751, !612, !819}
!1020 = !{!1021, !1022, !1023}
!1021 = !DILocalVariable(name: "blob_info", arg: 1, scope: !1017, file: !754, line: 192, type: !751)
!1022 = !DILocalVariable(name: "blob", arg: 2, scope: !1017, file: !754, line: 192, type: !612)
!1023 = !DILocalVariable(name: "length", arg: 3, scope: !1017, file: !754, line: 193, type: !819)
!1024 = !DILocation(line: 0, scope: !1017)
!1025 = !DILocation(line: 196, column: 18, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1017, file: !754, line: 196, column: 7)
!1027 = !{!1028, !1030, i64 240}
!1028 = !{!"_BlobInfo", !1029, i64 0, !1029, i64 8, !1029, i64 16, !1030, i64 24, !1030, i64 28, !1032, i64 32, !1032, i64 40, !1030, i64 48, !1030, i64 52, !1030, i64 56, !1030, i64 60, !1030, i64 64, !1030, i64 72, !1033, i64 80, !1036, i64 224, !1036, i64 232, !1030, i64 240, !1036, i64 248, !1029, i64 256, !1029, i64 264}
!1029 = !{!"long", !1030, i64 0}
!1030 = !{!"omnipotent char", !1031, i64 0}
!1031 = !{!"Simple C/C++ TBAA"}
!1032 = !{!"long long", !1030, i64 0}
!1033 = !{!"stat", !1029, i64 0, !1029, i64 8, !1029, i64 16, !1034, i64 24, !1034, i64 28, !1034, i64 32, !1034, i64 36, !1029, i64 40, !1029, i64 48, !1029, i64 56, !1029, i64 64, !1035, i64 72, !1035, i64 88, !1035, i64 104, !1030, i64 120}
!1034 = !{!"int", !1030, i64 0}
!1035 = !{!"timespec", !1029, i64 0, !1029, i64 8}
!1036 = !{!"any pointer", !1030, i64 0}
!1037 = !DILocation(line: 196, column: 24, scope: !1026)
!1038 = !DILocation(line: 196, column: 7, scope: !1017)
!1039 = !DILocation(line: 197, column: 12, scope: !1026)
!1040 = !DILocation(line: 197, column: 5, scope: !1026)
!1041 = !DILocation(line: 198, column: 20, scope: !1017)
!1042 = !{!1028, !1029, i64 0}
!1043 = !DILocation(line: 199, column: 14, scope: !1017)
!1044 = !DILocation(line: 199, column: 20, scope: !1017)
!1045 = !{!1028, !1029, i64 8}
!1046 = !DILocation(line: 200, column: 14, scope: !1017)
!1047 = !DILocation(line: 200, column: 21, scope: !1017)
!1048 = !{!1028, !1029, i64 16}
!1049 = !DILocation(line: 201, column: 14, scope: !1017)
!1050 = !DILocation(line: 201, column: 20, scope: !1017)
!1051 = !{!1028, !1032, i64 32}
!1052 = !DILocation(line: 202, column: 14, scope: !1017)
!1053 = !DILocation(line: 202, column: 18, scope: !1017)
!1054 = !{!1028, !1030, i64 64}
!1055 = !DILocation(line: 203, column: 14, scope: !1017)
!1056 = !DILocation(line: 203, column: 28, scope: !1017)
!1057 = !{!1030, !1030, i64 0}
!1058 = !DILocation(line: 204, column: 14, scope: !1017)
!1059 = !DILocation(line: 204, column: 18, scope: !1017)
!1060 = !{!1028, !1036, i64 232}
!1061 = !DILocation(line: 205, column: 14, scope: !1017)
!1062 = !DILocation(line: 205, column: 20, scope: !1017)
!1063 = !{!1028, !1030, i64 24}
!1064 = !DILocation(line: 206, column: 1, scope: !1017)
!1065 = !DISubprogram(name: "LogMagickEvent", scope: !380, file: !380, line: 83, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!628, !1068, !608, !608, !819, !608, null}
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !380, line: 58, baseType: !379)
!1070 = !{}
!1071 = distinct !DISubprogram(name: "BlobToFile", scope: !754, file: !754, line: 247, type: !1072, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!628, !555, !612, !819, !977}
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1086}
!1075 = !DILocalVariable(name: "filename", arg: 1, scope: !1071, file: !754, line: 247, type: !555)
!1076 = !DILocalVariable(name: "blob", arg: 2, scope: !1071, file: !754, line: 247, type: !612)
!1077 = !DILocalVariable(name: "length", arg: 3, scope: !1071, file: !754, line: 248, type: !819)
!1078 = !DILocalVariable(name: "exception", arg: 4, scope: !1071, file: !754, line: 248, type: !977)
!1079 = !DILocalVariable(name: "file", scope: !1071, file: !754, line: 251, type: !553)
!1080 = !DILocalVariable(name: "i", scope: !1071, file: !754, line: 254, type: !544)
!1081 = !DILocalVariable(name: "count", scope: !1071, file: !754, line: 257, type: !672)
!1082 = !DILocalVariable(name: "message", scope: !1083, file: !754, line: 268, type: !555)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !754, line: 268, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !754, line: 267, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !754, line: 266, column: 7)
!1086 = !DILocalVariable(name: "message", scope: !1087, file: !754, line: 285, type: !555)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !754, line: 285, column: 7)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !754, line: 284, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1071, file: !754, line: 283, column: 7)
!1090 = !DILocation(line: 0, scope: !1071)
!1091 = !DILocation(line: 260, column: 10, scope: !1071)
!1092 = !DILocation(line: 262, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1071, file: !754, line: 262, column: 7)
!1094 = !DILocation(line: 262, column: 17, scope: !1093)
!1095 = !DILocation(line: 262, column: 7, scope: !1071)
!1096 = !DILocation(line: 263, column: 10, scope: !1093)
!1097 = !DILocation(line: 263, column: 5, scope: !1093)
!1098 = !DILocalVariable(name: "path", arg: 1, scope: !1099, file: !1100, line: 136, type: !608)
!1099 = distinct !DISubprogram(name: "open_utf8", scope: !1100, file: !1100, line: 136, type: !1101, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1105)
!1100 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f0938b0b9be15949da14cdcfd7e813d9")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!553, !608, !553, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1104, line: 59, baseType: !785)
!1104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!1105 = !{!1098, !1106, !1107}
!1106 = !DILocalVariable(name: "flags", arg: 2, scope: !1099, file: !1100, line: 136, type: !553)
!1107 = !DILocalVariable(name: "mode", arg: 3, scope: !1099, file: !1100, line: 136, type: !1103)
!1108 = !DILocation(line: 0, scope: !1099, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 265, column: 10, scope: !1093)
!1110 = !DILocation(line: 139, column: 10, scope: !1099, inlinedAt: !1109)
!1111 = !DILocation(line: 0, scope: !1093)
!1112 = !DILocation(line: 266, column: 12, scope: !1085)
!1113 = !DILocation(line: 266, column: 7, scope: !1071)
!1114 = !DILocation(line: 271, column: 15, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !754, line: 271, column: 3)
!1116 = distinct !DILexicalBlock(scope: !1071, file: !754, line: 271, column: 3)
!1117 = !DILocation(line: 271, column: 3, scope: !1116)
!1118 = !DILocation(line: 268, column: 7, scope: !1083)
!1119 = !{!1034, !1034, i64 0}
!1120 = !DILocation(line: 0, scope: !1083)
!1121 = !DILocation(line: 269, column: 7, scope: !1084)
!1122 = !DILocation(line: 273, column: 41, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1115, file: !754, line: 272, column: 3)
!1124 = !DILocation(line: 273, column: 69, scope: !1123)
!1125 = !DILocalVariable(name: "x", arg: 1, scope: !1126, file: !754, line: 239, type: !742)
!1126 = distinct !DISubprogram(name: "MagickMin", scope: !754, file: !754, line: 239, type: !1127, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!610, !742, !742}
!1129 = !{!1125, !1130}
!1130 = !DILocalVariable(name: "y", arg: 2, scope: !1126, file: !754, line: 240, type: !742)
!1131 = !DILocation(line: 0, scope: !1126, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 273, column: 53, scope: !1123)
!1133 = !DILocation(line: 273, column: 11, scope: !1123)
!1134 = !DILocation(line: 275, column: 15, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !754, line: 275, column: 9)
!1136 = !DILocation(line: 275, column: 9, scope: !1123)
!1137 = !DILocation(line: 278, column: 13, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !754, line: 278, column: 13)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !754, line: 276, column: 7)
!1140 = !DILocation(line: 278, column: 19, scope: !1138)
!1141 = !DILocation(line: 278, column: 13, scope: !1139)
!1142 = !DILocation(line: 282, column: 8, scope: !1071)
!1143 = !DILocation(line: 283, column: 20, scope: !1089)
!1144 = !DILocation(line: 0, scope: !1123)
!1145 = !DILocation(line: 271, column: 26, scope: !1115)
!1146 = distinct !{!1146, !1117, !1147, !1148, !1149}
!1147 = !DILocation(line: 281, column: 3, scope: !1116)
!1148 = !{!"llvm.loop.mustprogress"}
!1149 = !{!"llvm.loop.unroll.disable"}
!1150 = !DILocation(line: 283, column: 13, scope: !1089)
!1151 = !DILocation(line: 285, column: 7, scope: !1087)
!1152 = !DILocation(line: 0, scope: !1087)
!1153 = !DILocation(line: 286, column: 7, scope: !1088)
!1154 = !DILocation(line: 289, column: 1, scope: !1071)
!1155 = !DISubprogram(name: "AcquireUniqueFileResource", scope: !487, file: !487, line: 41, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!553, !555}
!1158 = !DISubprogram(name: "GetExceptionMessage", scope: !264, file: !264, line: 137, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!555, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!1162 = !DISubprogram(name: "ThrowMagickException", scope: !264, file: !264, line: 156, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!628, !977, !608, !608, !819, !1165, !608, !608, null}
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!1166 = !DISubprogram(name: "DestroyString", scope: !1167, file: !1167, line: 46, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1167 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!555, !555}
!1170 = !DISubprogram(name: "write", scope: !1171, file: !1171, line: 366, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1171 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!672, !553, !612, !544}
!1174 = !DISubprogram(name: "close", scope: !1171, file: !1171, line: 353, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!553, !553}
!1177 = distinct !DISubprogram(name: "BlobToImage", scope: !754, file: !754, line: 322, type: !1178, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!614, !975, !612, !819, !977}
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1181 = !DILocalVariable(name: "image_info", arg: 1, scope: !1177, file: !754, line: 322, type: !975)
!1182 = !DILocalVariable(name: "blob", arg: 2, scope: !1177, file: !754, line: 322, type: !612)
!1183 = !DILocalVariable(name: "length", arg: 3, scope: !1177, file: !754, line: 323, type: !819)
!1184 = !DILocalVariable(name: "exception", arg: 4, scope: !1177, file: !754, line: 323, type: !977)
!1185 = !DILocalVariable(name: "magick_info", scope: !1177, file: !754, line: 326, type: !890)
!1186 = !DILocalVariable(name: "image", scope: !1177, file: !754, line: 329, type: !614)
!1187 = !DILocalVariable(name: "blob_info", scope: !1177, file: !754, line: 332, type: !901)
!1188 = !DILocalVariable(name: "clone_info", scope: !1177, file: !754, line: 333, type: !901)
!1189 = !DILocalVariable(name: "status", scope: !1177, file: !754, line: 336, type: !628)
!1190 = !DILocalVariable(name: "images", scope: !1191, file: !754, line: 399, type: !614)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !754, line: 397, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1177, file: !754, line: 396, column: 7)
!1193 = !DILocation(line: 0, scope: !1177)
!1194 = !DILocation(line: 340, column: 19, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1177, file: !754, line: 340, column: 7)
!1196 = !{!1197, !1030, i64 16712}
!1197 = !{!"_ImageInfo", !1030, i64 0, !1030, i64 4, !1030, i64 8, !1030, i64 12, !1030, i64 16, !1030, i64 20, !1036, i64 24, !1036, i64 32, !1036, i64 40, !1036, i64 48, !1029, i64 56, !1029, i64 64, !1029, i64 72, !1030, i64 80, !1030, i64 84, !1030, i64 88, !1029, i64 96, !1036, i64 104, !1036, i64 112, !1036, i64 120, !1036, i64 128, !1036, i64 136, !1198, i64 144, !1198, i64 152, !1199, i64 160, !1199, i64 168, !1199, i64 176, !1030, i64 184, !1030, i64 188, !1029, i64 192, !1030, i64 200, !1030, i64 204, !1030, i64 208, !1029, i64 216, !1030, i64 224, !1030, i64 228, !1036, i64 232, !1036, i64 240, !1030, i64 248, !1036, i64 256, !1036, i64 264, !1036, i64 272, !1036, i64 280, !1036, i64 288, !1036, i64 296, !1036, i64 304, !1036, i64 312, !1029, i64 320, !1030, i64 328, !1030, i64 4424, !1030, i64 8520, !1030, i64 12616, !1030, i64 16712, !1036, i64 16720, !1029, i64 16728, !1029, i64 16736, !1199, i64 16744, !1029, i64 16752, !1030, i64 16760, !1199, i64 16764, !1036, i64 16776, !1030, i64 16784}
!1198 = !{!"double", !1030, i64 0}
!1199 = !{!"_PixelPacket", !1200, i64 0, !1200, i64 2, !1200, i64 4, !1200, i64 6}
!1200 = !{!"short", !1030, i64 0}
!1201 = !DILocation(line: 340, column: 25, scope: !1195)
!1202 = !DILocation(line: 340, column: 7, scope: !1177)
!1203 = !DILocation(line: 342, column: 19, scope: !1195)
!1204 = !DILocation(line: 341, column: 12, scope: !1195)
!1205 = !DILocation(line: 341, column: 5, scope: !1195)
!1206 = !DILocation(line: 344, column: 13, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1177, file: !754, line: 344, column: 7)
!1208 = !DILocation(line: 344, column: 37, scope: !1207)
!1209 = !DILocation(line: 347, column: 57, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !754, line: 345, column: 5)
!1211 = !DILocation(line: 346, column: 14, scope: !1210)
!1212 = !DILocation(line: 348, column: 7, scope: !1210)
!1213 = !DILocation(line: 350, column: 13, scope: !1177)
!1214 = !DILocation(line: 351, column: 14, scope: !1177)
!1215 = !DILocation(line: 351, column: 18, scope: !1177)
!1216 = !{!1197, !1036, i64 312}
!1217 = !DILocation(line: 352, column: 14, scope: !1177)
!1218 = !DILocation(line: 352, column: 20, scope: !1177)
!1219 = !{!1197, !1029, i64 320}
!1220 = !DILocation(line: 353, column: 19, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1177, file: !754, line: 353, column: 7)
!1222 = !DILocation(line: 353, column: 7, scope: !1221)
!1223 = !DILocation(line: 353, column: 26, scope: !1221)
!1224 = !DILocation(line: 353, column: 7, scope: !1177)
!1225 = !DILocation(line: 354, column: 12, scope: !1221)
!1226 = !DILocation(line: 354, column: 5, scope: !1221)
!1227 = !DILocation(line: 355, column: 15, scope: !1177)
!1228 = !DILocation(line: 356, column: 19, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1177, file: !754, line: 356, column: 7)
!1230 = !DILocation(line: 356, column: 7, scope: !1177)
!1231 = !DILocation(line: 358, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !754, line: 357, column: 5)
!1233 = !DILocation(line: 361, column: 17, scope: !1232)
!1234 = !DILocation(line: 362, column: 7, scope: !1232)
!1235 = !DILocation(line: 364, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1177, file: !754, line: 364, column: 7)
!1237 = !DILocation(line: 364, column: 41, scope: !1236)
!1238 = !DILocation(line: 364, column: 7, scope: !1177)
!1239 = !DILocation(line: 369, column: 63, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !754, line: 365, column: 5)
!1241 = !DILocation(line: 369, column: 14, scope: !1240)
!1242 = !DILocation(line: 371, column: 61, scope: !1240)
!1243 = !DILocation(line: 371, column: 14, scope: !1240)
!1244 = !DILocation(line: 373, column: 13, scope: !1240)
!1245 = !DILocation(line: 374, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !754, line: 374, column: 11)
!1247 = !DILocation(line: 374, column: 11, scope: !1240)
!1248 = !DILocation(line: 375, column: 34, scope: !1246)
!1249 = !{!1250, !1036, i64 608}
!1250 = !{!"_Image", !1030, i64 0, !1030, i64 4, !1030, i64 8, !1029, i64 16, !1030, i64 24, !1030, i64 28, !1030, i64 32, !1029, i64 40, !1029, i64 48, !1029, i64 56, !1029, i64 64, !1036, i64 72, !1199, i64 80, !1199, i64 88, !1199, i64 96, !1198, i64 104, !1251, i64 112, !1030, i64 208, !1036, i64 216, !1030, i64 224, !1036, i64 232, !1036, i64 240, !1036, i64 248, !1029, i64 256, !1198, i64 264, !1198, i64 272, !1253, i64 280, !1253, i64 312, !1253, i64 344, !1198, i64 376, !1198, i64 384, !1198, i64 392, !1030, i64 400, !1030, i64 404, !1030, i64 408, !1030, i64 412, !1030, i64 416, !1030, i64 420, !1036, i64 424, !1029, i64 432, !1029, i64 440, !1029, i64 448, !1029, i64 456, !1029, i64 464, !1029, i64 472, !1254, i64 480, !1255, i64 504, !1036, i64 568, !1036, i64 576, !1036, i64 584, !1036, i64 592, !1036, i64 600, !1036, i64 608, !1030, i64 616, !1030, i64 4712, !1030, i64 8808, !1029, i64 12904, !1029, i64 12912, !1257, i64 12920, !1030, i64 12976, !1029, i64 12984, !1036, i64 12992, !1258, i64 13000, !1258, i64 13032, !1036, i64 13064, !1029, i64 13072, !1029, i64 13080, !1036, i64 13088, !1036, i64 13096, !1036, i64 13104, !1030, i64 13112, !1030, i64 13116, !1199, i64 13120, !1036, i64 13128, !1253, i64 13136, !1036, i64 13168, !1036, i64 13176, !1030, i64 13184, !1030, i64 13188, !1032, i64 13192, !1030, i64 13200, !1029, i64 13208, !1029, i64 13216, !1030, i64 13224, !1029, i64 13232}
!1251 = !{!"_ChromaticityInfo", !1252, i64 0, !1252, i64 24, !1252, i64 48, !1252, i64 72}
!1252 = !{!"_PrimaryInfo", !1198, i64 0, !1198, i64 8, !1198, i64 16}
!1253 = !{!"_RectangleInfo", !1029, i64 0, !1029, i64 8, !1029, i64 16, !1029, i64 24}
!1254 = !{!"_ErrorInfo", !1198, i64 0, !1198, i64 8, !1198, i64 16}
!1255 = !{!"_TimerInfo", !1256, i64 0, !1256, i64 24, !1030, i64 48, !1029, i64 56}
!1256 = !{!"_Timer", !1198, i64 0, !1198, i64 8, !1198, i64 16}
!1257 = !{!"_ExceptionInfo", !1030, i64 0, !1034, i64 4, !1036, i64 8, !1036, i64 16, !1036, i64 24, !1030, i64 32, !1036, i64 40, !1029, i64 48}
!1258 = !{!"_ProfileInfo", !1036, i64 0, !1029, i64 8, !1036, i64 16, !1029, i64 24}
!1259 = !DILocalVariable(name: "blob_info", arg: 1, scope: !1260, file: !754, line: 684, type: !751)
!1260 = distinct !DISubprogram(name: "DetachBlob", scope: !754, file: !754, line: 684, type: !1261, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!606, !751}
!1263 = !{!1259, !1264}
!1264 = !DILocalVariable(name: "data", scope: !1260, file: !754, line: 687, type: !606)
!1265 = !DILocation(line: 0, scope: !1260, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 375, column: 16, scope: !1246)
!1267 = !DILocation(line: 690, column: 18, scope: !1268, inlinedAt: !1266)
!1268 = distinct !DILexicalBlock(scope: !1260, file: !754, line: 690, column: 7)
!1269 = !DILocation(line: 690, column: 24, scope: !1268, inlinedAt: !1266)
!1270 = !DILocation(line: 690, column: 7, scope: !1260, inlinedAt: !1266)
!1271 = !DILocation(line: 691, column: 12, scope: !1268, inlinedAt: !1266)
!1272 = !DILocation(line: 691, column: 5, scope: !1268, inlinedAt: !1266)
!1273 = !DILocation(line: 692, column: 18, scope: !1274, inlinedAt: !1266)
!1274 = distinct !DILexicalBlock(scope: !1260, file: !754, line: 692, column: 7)
!1275 = !DILocation(line: 692, column: 25, scope: !1274, inlinedAt: !1266)
!1276 = !DILocation(line: 692, column: 7, scope: !1260, inlinedAt: !1266)
!1277 = !DILocation(line: 694, column: 35, scope: !1278, inlinedAt: !1266)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !754, line: 693, column: 5)
!1279 = !DILocation(line: 695, column: 22, scope: !1278, inlinedAt: !1266)
!1280 = !DILocation(line: 696, column: 55, scope: !1278, inlinedAt: !1266)
!1281 = !DILocation(line: 696, column: 7, scope: !1278, inlinedAt: !1266)
!1282 = !DILocation(line: 697, column: 5, scope: !1278, inlinedAt: !1266)
!1283 = !DILocation(line: 699, column: 20, scope: !1260, inlinedAt: !1266)
!1284 = !DILocation(line: 702, column: 14, scope: !1260, inlinedAt: !1266)
!1285 = !DILocation(line: 702, column: 20, scope: !1260, inlinedAt: !1266)
!1286 = !{!1028, !1030, i64 48}
!1287 = !DILocation(line: 703, column: 14, scope: !1260, inlinedAt: !1266)
!1288 = !DILocation(line: 703, column: 18, scope: !1260, inlinedAt: !1266)
!1289 = !DILocation(line: 704, column: 14, scope: !1260, inlinedAt: !1266)
!1290 = !DILocation(line: 704, column: 28, scope: !1260, inlinedAt: !1266)
!1291 = !DILocation(line: 700, column: 20, scope: !1260, inlinedAt: !1266)
!1292 = !DILocation(line: 707, column: 14, scope: !1260, inlinedAt: !1266)
!1293 = !DILocation(line: 707, column: 20, scope: !1260, inlinedAt: !1266)
!1294 = !DILocation(line: 375, column: 9, scope: !1246)
!1295 = !DILocation(line: 376, column: 17, scope: !1240)
!1296 = !DILocation(line: 377, column: 7, scope: !1240)
!1297 = !DILocation(line: 384, column: 23, scope: !1177)
!1298 = !DILocation(line: 383, column: 20, scope: !1177)
!1299 = !DILocation(line: 385, column: 10, scope: !1177)
!1300 = !DILocation(line: 386, column: 14, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1177, file: !754, line: 386, column: 7)
!1302 = !DILocation(line: 386, column: 7, scope: !1177)
!1303 = !DILocation(line: 388, column: 14, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !754, line: 387, column: 5)
!1305 = !DILocation(line: 389, column: 17, scope: !1304)
!1306 = !DILocation(line: 390, column: 7, scope: !1304)
!1307 = !DILocation(line: 392, column: 14, scope: !1177)
!1308 = !DILocation(line: 393, column: 41, scope: !1177)
!1309 = !DILocation(line: 393, column: 10, scope: !1177)
!1310 = !DILocation(line: 395, column: 9, scope: !1177)
!1311 = !DILocation(line: 396, column: 13, scope: !1192)
!1312 = !DILocation(line: 396, column: 7, scope: !1177)
!1313 = !DILocation(line: 404, column: 19, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1191, file: !754, line: 404, column: 7)
!1315 = !DILocation(line: 0, scope: !1191)
!1316 = !DILocation(line: 404, column: 54, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !754, line: 404, column: 7)
!1318 = !DILocation(line: 404, column: 7, scope: !1314)
!1319 = !DILocation(line: 406, column: 41, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !754, line: 405, column: 7)
!1321 = !DILocation(line: 406, column: 16, scope: !1320)
!1322 = !DILocation(line: 408, column: 41, scope: !1320)
!1323 = !DILocation(line: 408, column: 16, scope: !1320)
!1324 = !DILocation(line: 410, column: 41, scope: !1320)
!1325 = !DILocation(line: 410, column: 61, scope: !1320)
!1326 = !{!1327, !1036, i64 0}
!1327 = !{!"_MagickInfo", !1036, i64 0, !1036, i64 8, !1036, i64 16, !1036, i64 24, !1036, i64 32, !1036, i64 40, !1036, i64 48, !1036, i64 56, !1036, i64 64, !1036, i64 72, !1030, i64 80, !1030, i64 84, !1030, i64 88, !1030, i64 92, !1030, i64 96, !1030, i64 100, !1034, i64 104, !1030, i64 108, !1036, i64 112, !1036, i64 120, !1029, i64 128, !1036, i64 136, !1036, i64 144}
!1328 = !DILocation(line: 410, column: 16, scope: !1320)
!1329 = !DILocation(line: 412, column: 16, scope: !1320)
!1330 = distinct !{!1330, !1318, !1331, !1148, !1149}
!1331 = !DILocation(line: 413, column: 7, scope: !1314)
!1332 = !DILocation(line: 415, column: 14, scope: !1177)
!1333 = !DILocation(line: 416, column: 10, scope: !1177)
!1334 = !DILocation(line: 417, column: 13, scope: !1177)
!1335 = !DILocation(line: 418, column: 3, scope: !1177)
!1336 = !DILocation(line: 419, column: 1, scope: !1177)
!1337 = !DISubprogram(name: "CloneImageInfo", scope: !88, file: !88, line: 521, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!901, !975}
!1340 = !DISubprogram(name: "SetImageInfo", scope: !88, file: !88, line: 538, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!628, !901, !1343, !977}
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1344 = !DISubprogram(name: "GetMagickInfo", scope: !481, file: !481, line: 134, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!890, !608, !977}
!1347 = !DISubprogram(name: "DestroyImageInfo", scope: !88, file: !88, line: 522, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!901, !901}
!1350 = !DISubprogram(name: "GetMagickBlobSupport", scope: !481, file: !481, line: 125, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!628, !890}
!1353 = !DISubprogram(name: "CopyMagickString", scope: !1167, file: !1167, line: 78, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!544, !555, !608, !819}
!1356 = !DISubprogram(name: "ReadImage", scope: !1357, file: !1357, line: 42, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1357 = !DIFile(filename: "apps/538.imagick_r/src/magick/constitute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "43cd9878a55016fc93758a53f2f400b5")
!1358 = !DILocation(line: 0, scope: !1260)
!1359 = !DILocation(line: 690, column: 18, scope: !1268)
!1360 = !DILocation(line: 690, column: 24, scope: !1268)
!1361 = !DILocation(line: 690, column: 7, scope: !1260)
!1362 = !DILocation(line: 691, column: 12, scope: !1268)
!1363 = !DILocation(line: 691, column: 5, scope: !1268)
!1364 = !DILocation(line: 692, column: 18, scope: !1274)
!1365 = !DILocation(line: 692, column: 25, scope: !1274)
!1366 = !DILocation(line: 692, column: 7, scope: !1260)
!1367 = !DILocation(line: 694, column: 35, scope: !1278)
!1368 = !DILocation(line: 695, column: 22, scope: !1278)
!1369 = !DILocation(line: 696, column: 55, scope: !1278)
!1370 = !DILocation(line: 696, column: 7, scope: !1278)
!1371 = !DILocation(line: 697, column: 5, scope: !1278)
!1372 = !DILocation(line: 699, column: 20, scope: !1260)
!1373 = !DILocation(line: 702, column: 14, scope: !1260)
!1374 = !DILocation(line: 702, column: 20, scope: !1260)
!1375 = !DILocation(line: 703, column: 14, scope: !1260)
!1376 = !DILocation(line: 703, column: 18, scope: !1260)
!1377 = !DILocation(line: 704, column: 14, scope: !1260)
!1378 = !DILocation(line: 704, column: 28, scope: !1260)
!1379 = !DILocation(line: 705, column: 19, scope: !1260)
!1380 = !DILocation(line: 700, column: 20, scope: !1260)
!1381 = !DILocation(line: 707, column: 14, scope: !1260)
!1382 = !DILocation(line: 707, column: 20, scope: !1260)
!1383 = !DILocation(line: 708, column: 3, scope: !1260)
!1384 = !DISubprogram(name: "RelinquishUniqueFileResource", scope: !487, file: !487, line: 47, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!628, !608}
!1387 = !DISubprogram(name: "FormatLocaleString", scope: !1388, file: !1388, line: 71, type: !1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1388 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!672, !1391, !819, !1392, null}
!1391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !555)
!1392 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !608)
!1393 = !DISubprogram(name: "GetFirstImageInList", scope: !1394, file: !1394, line: 30, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1394 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!614, !817}
!1397 = !DISubprogram(name: "GetNextImageInList", scope: !1394, file: !1394, line: 33, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1398 = distinct !DISubprogram(name: "CloneBlobInfo", scope: !754, file: !754, line: 444, type: !1399, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1403)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!751, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!1403 = !{!1404, !1405, !1406, !1409}
!1404 = !DILocalVariable(name: "blob_info", arg: 1, scope: !1398, file: !754, line: 444, type: !1401)
!1405 = !DILocalVariable(name: "clone_info", scope: !1398, file: !754, line: 447, type: !751)
!1406 = !DILocalVariable(name: "message", scope: !1407, file: !754, line: 451, type: !555)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !754, line: 451, column: 5)
!1408 = distinct !DILexicalBlock(scope: !1398, file: !754, line: 450, column: 7)
!1409 = !DILocalVariable(name: "exception", scope: !1407, file: !754, line: 451, type: !838)
!1410 = !DILocation(line: 0, scope: !1398)
!1411 = !DILocation(line: 449, column: 27, scope: !1398)
!1412 = !DILocation(line: 450, column: 18, scope: !1408)
!1413 = !DILocation(line: 450, column: 7, scope: !1398)
!1414 = !DILocation(line: 451, column: 5, scope: !1407)
!1415 = !DILocation(line: 0, scope: !1407)
!1416 = !DILocalVariable(name: "blob_info", arg: 1, scope: !1417, file: !754, line: 1282, type: !751)
!1417 = distinct !DISubprogram(name: "GetBlobInfo", scope: !754, file: !754, line: 1282, type: !1418, scopeLine: 1283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !751}
!1420 = !{!1416}
!1421 = !DILocation(line: 0, scope: !1417, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 452, column: 3, scope: !1398)
!1423 = !DILocation(line: 1285, column: 10, scope: !1417, inlinedAt: !1422)
!1424 = !DILocation(line: 1286, column: 14, scope: !1417, inlinedAt: !1422)
!1425 = !DILocation(line: 1286, column: 18, scope: !1417, inlinedAt: !1422)
!1426 = !DILocation(line: 1287, column: 14, scope: !1417, inlinedAt: !1422)
!1427 = !DILocation(line: 1287, column: 21, scope: !1417, inlinedAt: !1422)
!1428 = !DILocation(line: 1288, column: 34, scope: !1417, inlinedAt: !1422)
!1429 = !DILocation(line: 1288, column: 25, scope: !1417, inlinedAt: !1422)
!1430 = !DILocation(line: 1288, column: 33, scope: !1417, inlinedAt: !1422)
!1431 = !{!1028, !1029, i64 168}
!1432 = !DILocation(line: 1289, column: 34, scope: !1417, inlinedAt: !1422)
!1433 = !DILocation(line: 1289, column: 25, scope: !1417, inlinedAt: !1422)
!1434 = !DILocation(line: 1289, column: 33, scope: !1417, inlinedAt: !1422)
!1435 = !{!1028, !1029, i64 184}
!1436 = !DILocation(line: 1290, column: 20, scope: !1417, inlinedAt: !1422)
!1437 = !DILocation(line: 1290, column: 14, scope: !1417, inlinedAt: !1422)
!1438 = !DILocation(line: 1290, column: 19, scope: !1417, inlinedAt: !1422)
!1439 = !DILocation(line: 1291, column: 14, scope: !1417, inlinedAt: !1422)
!1440 = !DILocation(line: 1291, column: 29, scope: !1417, inlinedAt: !1422)
!1441 = !{!1028, !1029, i64 256}
!1442 = !DILocation(line: 1292, column: 24, scope: !1417, inlinedAt: !1422)
!1443 = !DILocation(line: 1292, column: 14, scope: !1417, inlinedAt: !1422)
!1444 = !DILocation(line: 1292, column: 23, scope: !1417, inlinedAt: !1422)
!1445 = !{!1028, !1036, i64 248}
!1446 = !DILocation(line: 1293, column: 14, scope: !1417, inlinedAt: !1422)
!1447 = !DILocation(line: 1293, column: 23, scope: !1417, inlinedAt: !1422)
!1448 = !{!1028, !1029, i64 264}
!1449 = !DILocation(line: 453, column: 17, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1398, file: !754, line: 453, column: 7)
!1451 = !DILocation(line: 453, column: 7, scope: !1398)
!1452 = !DILocation(line: 455, column: 33, scope: !1398)
!1453 = !DILocation(line: 455, column: 21, scope: !1398)
!1454 = !DILocation(line: 456, column: 33, scope: !1398)
!1455 = !DILocation(line: 456, column: 15, scope: !1398)
!1456 = !DILocation(line: 456, column: 21, scope: !1398)
!1457 = !DILocation(line: 457, column: 38, scope: !1398)
!1458 = !{!1028, !1030, i64 52}
!1459 = !DILocation(line: 457, column: 15, scope: !1398)
!1460 = !DILocation(line: 457, column: 26, scope: !1398)
!1461 = !DILocation(line: 458, column: 34, scope: !1398)
!1462 = !DILocation(line: 458, column: 22, scope: !1398)
!1463 = !DILocation(line: 459, column: 33, scope: !1398)
!1464 = !DILocation(line: 459, column: 15, scope: !1398)
!1465 = !DILocation(line: 459, column: 21, scope: !1398)
!1466 = !DILocation(line: 460, column: 30, scope: !1398)
!1467 = !{!1028, !1030, i64 28}
!1468 = !DILocation(line: 460, column: 15, scope: !1398)
!1469 = !DILocation(line: 460, column: 18, scope: !1398)
!1470 = !DILocation(line: 461, column: 33, scope: !1398)
!1471 = !DILocation(line: 461, column: 15, scope: !1398)
!1472 = !DILocation(line: 461, column: 21, scope: !1398)
!1473 = !DILocation(line: 462, column: 31, scope: !1398)
!1474 = !{!1028, !1032, i64 40}
!1475 = !DILocation(line: 462, column: 15, scope: !1398)
!1476 = !DILocation(line: 462, column: 19, scope: !1398)
!1477 = !DILocation(line: 463, column: 33, scope: !1398)
!1478 = !DILocation(line: 463, column: 15, scope: !1398)
!1479 = !DILocation(line: 463, column: 21, scope: !1398)
!1480 = !DILocation(line: 464, column: 33, scope: !1398)
!1481 = !{!1028, !1030, i64 56}
!1482 = !DILocation(line: 464, column: 15, scope: !1398)
!1483 = !DILocation(line: 464, column: 21, scope: !1398)
!1484 = !DILocation(line: 465, column: 36, scope: !1398)
!1485 = !{!1028, !1030, i64 60}
!1486 = !DILocation(line: 465, column: 15, scope: !1398)
!1487 = !DILocation(line: 465, column: 24, scope: !1398)
!1488 = !DILocation(line: 466, column: 31, scope: !1398)
!1489 = !DILocation(line: 466, column: 19, scope: !1398)
!1490 = !DILocation(line: 467, column: 41, scope: !1398)
!1491 = !DILocation(line: 467, column: 51, scope: !1398)
!1492 = !DILocation(line: 467, column: 15, scope: !1398)
!1493 = !DILocation(line: 467, column: 29, scope: !1398)
!1494 = !DILocation(line: 468, column: 15, scope: !1398)
!1495 = !DILocation(line: 468, column: 37, scope: !1398)
!1496 = !{i64 0, i64 8, !1497, i64 8, i64 8, !1497, i64 16, i64 8, !1497, i64 24, i64 4, !1119, i64 28, i64 4, !1119, i64 32, i64 4, !1119, i64 36, i64 4, !1119, i64 40, i64 8, !1497, i64 48, i64 8, !1497, i64 56, i64 8, !1497, i64 64, i64 8, !1497, i64 72, i64 8, !1497, i64 80, i64 8, !1497, i64 88, i64 8, !1497, i64 96, i64 8, !1497, i64 104, i64 8, !1497, i64 112, i64 8, !1497, i64 120, i64 24, !1057}
!1497 = !{!1029, !1029, i64 0}
!1498 = !DILocation(line: 469, column: 33, scope: !1398)
!1499 = !{!1028, !1036, i64 224}
!1500 = !DILocation(line: 469, column: 15, scope: !1398)
!1501 = !DILocation(line: 469, column: 21, scope: !1398)
!1502 = !DILocation(line: 470, column: 31, scope: !1398)
!1503 = !DILocation(line: 470, column: 15, scope: !1398)
!1504 = !DILocation(line: 470, column: 19, scope: !1398)
!1505 = !DILocation(line: 471, column: 21, scope: !1398)
!1506 = !DILocation(line: 471, column: 20, scope: !1398)
!1507 = !DILocation(line: 472, column: 30, scope: !1398)
!1508 = !DILocation(line: 473, column: 3, scope: !1398)
!1509 = !DILocation(line: 474, column: 1, scope: !1398)
!1510 = !DISubprogram(name: "AcquireMagickMemory", scope: !1511, file: !1511, line: 40, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1511 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!599, !819}
!1514 = !DISubprogram(name: "GetExceptionInfo", scope: !264, file: !264, line: 166, type: !1515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !977}
!1517 = !DISubprogram(name: "CatchException", scope: !264, file: !264, line: 164, type: !1515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1518 = !DISubprogram(name: "DestroyExceptionInfo", scope: !264, file: !264, line: 148, type: !1519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!977, !977}
!1521 = !DISubprogram(name: "MagickCoreTerminus", scope: !481, file: !481, line: 147, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null}
!1524 = !DILocation(line: 0, scope: !1417)
!1525 = !DILocation(line: 1285, column: 10, scope: !1417)
!1526 = !DILocation(line: 1286, column: 14, scope: !1417)
!1527 = !DILocation(line: 1286, column: 18, scope: !1417)
!1528 = !DILocation(line: 1287, column: 14, scope: !1417)
!1529 = !DILocation(line: 1287, column: 21, scope: !1417)
!1530 = !DILocation(line: 1288, column: 34, scope: !1417)
!1531 = !DILocation(line: 1288, column: 25, scope: !1417)
!1532 = !DILocation(line: 1288, column: 33, scope: !1417)
!1533 = !DILocation(line: 1289, column: 34, scope: !1417)
!1534 = !DILocation(line: 1289, column: 25, scope: !1417)
!1535 = !DILocation(line: 1289, column: 33, scope: !1417)
!1536 = !DILocation(line: 1290, column: 20, scope: !1417)
!1537 = !DILocation(line: 1290, column: 14, scope: !1417)
!1538 = !DILocation(line: 1290, column: 19, scope: !1417)
!1539 = !DILocation(line: 1291, column: 14, scope: !1417)
!1540 = !DILocation(line: 1291, column: 29, scope: !1417)
!1541 = !DILocation(line: 1292, column: 24, scope: !1417)
!1542 = !DILocation(line: 1292, column: 14, scope: !1417)
!1543 = !DILocation(line: 1292, column: 23, scope: !1417)
!1544 = !DILocation(line: 1293, column: 14, scope: !1417)
!1545 = !DILocation(line: 1293, column: 23, scope: !1417)
!1546 = !DILocation(line: 1294, column: 1, scope: !1417)
!1547 = !DISubprogram(name: "IsEventLogging", scope: !380, file: !380, line: 80, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!628}
!1550 = distinct !DISubprogram(name: "CloseBlob", scope: !754, file: !754, line: 498, type: !1551, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!628, !614}
!1553 = !{!1554, !1555}
!1554 = !DILocalVariable(name: "image", arg: 1, scope: !1550, file: !754, line: 498, type: !614)
!1555 = !DILocalVariable(name: "status", scope: !1550, file: !754, line: 501, type: !553)
!1556 = !DILocation(line: 0, scope: !1550)
!1557 = !DILocation(line: 508, column: 14, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1550, file: !754, line: 508, column: 7)
!1559 = !{!1250, !1030, i64 12976}
!1560 = !DILocation(line: 508, column: 20, scope: !1558)
!1561 = !DILocation(line: 508, column: 7, scope: !1550)
!1562 = !DILocation(line: 509, column: 68, scope: !1558)
!1563 = !DILocation(line: 509, column: 12, scope: !1558)
!1564 = !DILocation(line: 509, column: 5, scope: !1558)
!1565 = !DILocation(line: 511, column: 14, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1550, file: !754, line: 511, column: 7)
!1567 = !DILocation(line: 511, column: 20, scope: !1566)
!1568 = !DILocation(line: 511, column: 25, scope: !1566)
!1569 = !DILocation(line: 511, column: 7, scope: !1550)
!1570 = !DILocalVariable(name: "image", arg: 1, scope: !1571, file: !754, line: 3890, type: !614)
!1571 = distinct !DISubprogram(name: "SyncBlob", scope: !754, file: !754, line: 3890, type: !1572, scopeLine: 3891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!553, !614}
!1574 = !{!1570, !1575}
!1575 = !DILocalVariable(name: "status", scope: !1571, file: !754, line: 3893, type: !553)
!1576 = !DILocation(line: 0, scope: !1571, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 513, column: 10, scope: !1550)
!1578 = !DILocation(line: 3897, column: 14, scope: !1579, inlinedAt: !1577)
!1579 = distinct !DILexicalBlock(scope: !1571, file: !754, line: 3897, column: 7)
!1580 = !DILocation(line: 3897, column: 20, scope: !1579, inlinedAt: !1577)
!1581 = !DILocation(line: 3897, column: 7, scope: !1571, inlinedAt: !1577)
!1582 = !DILocation(line: 3898, column: 68, scope: !1579, inlinedAt: !1577)
!1583 = !DILocation(line: 3898, column: 12, scope: !1579, inlinedAt: !1577)
!1584 = !DILocation(line: 3902, column: 18, scope: !1571, inlinedAt: !1577)
!1585 = !DILocation(line: 3902, column: 24, scope: !1571, inlinedAt: !1577)
!1586 = !DILocation(line: 3898, column: 5, scope: !1579, inlinedAt: !1577)
!1587 = !DILocation(line: 3902, column: 3, scope: !1571, inlinedAt: !1577)
!1588 = !DILocation(line: 3910, column: 34, scope: !1589, inlinedAt: !1577)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !754, line: 3909, column: 5)
!1590 = distinct !DILexicalBlock(scope: !1571, file: !754, line: 3903, column: 3)
!1591 = !DILocation(line: 3910, column: 44, scope: !1589, inlinedAt: !1577)
!1592 = !DILocation(line: 3910, column: 14, scope: !1589, inlinedAt: !1577)
!1593 = !DILocation(line: 514, column: 18, scope: !1550)
!1594 = !DILocation(line: 514, column: 24, scope: !1550)
!1595 = !DILocation(line: 3911, column: 7, scope: !1589, inlinedAt: !1577)
!1596 = !DILocation(line: 514, column: 3, scope: !1550)
!1597 = !DILocation(line: 522, column: 24, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !754, line: 522, column: 11)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !754, line: 521, column: 5)
!1600 = distinct !DILexicalBlock(scope: !1550, file: !754, line: 515, column: 3)
!1601 = !DILocation(line: 522, column: 36, scope: !1598)
!1602 = !DILocation(line: 522, column: 11, scope: !1599)
!1603 = !DILocation(line: 523, column: 42, scope: !1598)
!1604 = !DILocation(line: 523, column: 52, scope: !1598)
!1605 = !DILocation(line: 523, column: 22, scope: !1598)
!1606 = !DILocation(line: 523, column: 9, scope: !1598)
!1607 = !DILocation(line: 545, column: 25, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !754, line: 545, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1600, file: !754, line: 544, column: 5)
!1610 = !DILocation(line: 545, column: 35, scope: !1608)
!1611 = !DILocation(line: 545, column: 40, scope: !1608)
!1612 = !DILocation(line: 545, column: 58, scope: !1608)
!1613 = !DILocation(line: 546, column: 25, scope: !1608)
!1614 = !DILocation(line: 546, column: 37, scope: !1608)
!1615 = !DILocation(line: 545, column: 11, scope: !1609)
!1616 = !DILocation(line: 548, column: 24, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1608, file: !754, line: 547, column: 9)
!1618 = !DILocation(line: 550, column: 9, scope: !1617)
!1619 = !DILocation(line: 0, scope: !1600)
!1620 = !DILocation(line: 554, column: 23, scope: !1550)
!1621 = !DILocation(line: 554, column: 10, scope: !1550)
!1622 = !DILocation(line: 554, column: 16, scope: !1550)
!1623 = !DILocation(line: 554, column: 22, scope: !1550)
!1624 = !DILocation(line: 555, column: 21, scope: !1550)
!1625 = !DILocation(line: 555, column: 10, scope: !1550)
!1626 = !DILocation(line: 555, column: 16, scope: !1550)
!1627 = !DILocation(line: 555, column: 20, scope: !1550)
!1628 = !DILocation(line: 556, column: 10, scope: !1550)
!1629 = !DILocation(line: 556, column: 16, scope: !1550)
!1630 = !{!1250, !1032, i64 13192}
!1631 = !DILocation(line: 557, column: 16, scope: !1550)
!1632 = !DILocation(line: 557, column: 19, scope: !1550)
!1633 = !DILocation(line: 558, column: 20, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1550, file: !754, line: 558, column: 7)
!1635 = !DILocation(line: 558, column: 27, scope: !1634)
!1636 = !DILocation(line: 558, column: 7, scope: !1550)
!1637 = !DILocation(line: 560, column: 24, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !754, line: 559, column: 5)
!1639 = !DILocation(line: 561, column: 27, scope: !1638)
!1640 = !DILocation(line: 561, column: 7, scope: !1638)
!1641 = !DILocation(line: 563, column: 24, scope: !1550)
!1642 = !DILocation(line: 563, column: 3, scope: !1550)
!1643 = !DILocation(line: 570, column: 34, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !754, line: 569, column: 5)
!1645 = distinct !DILexicalBlock(scope: !1550, file: !754, line: 564, column: 3)
!1646 = !DILocation(line: 570, column: 44, scope: !1644)
!1647 = !DILocation(line: 570, column: 14, scope: !1644)
!1648 = !DILocation(line: 571, column: 7, scope: !1644)
!1649 = !DILocation(line: 598, column: 24, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !754, line: 598, column: 11)
!1651 = distinct !DILexicalBlock(scope: !1645, file: !754, line: 597, column: 5)
!1652 = !DILocation(line: 598, column: 34, scope: !1650)
!1653 = !DILocation(line: 598, column: 39, scope: !1650)
!1654 = !DILocation(line: 598, column: 11, scope: !1651)
!1655 = !DILocation(line: 599, column: 16, scope: !1650)
!1656 = !DILocation(line: 599, column: 9, scope: !1650)
!1657 = !DILocation(line: 603, column: 28, scope: !1550)
!1658 = !DILocation(line: 0, scope: !1260, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 603, column: 10, scope: !1550)
!1660 = !DILocation(line: 690, column: 18, scope: !1268, inlinedAt: !1659)
!1661 = !DILocation(line: 690, column: 24, scope: !1268, inlinedAt: !1659)
!1662 = !DILocation(line: 690, column: 7, scope: !1260, inlinedAt: !1659)
!1663 = !DILocation(line: 691, column: 12, scope: !1268, inlinedAt: !1659)
!1664 = !DILocation(line: 691, column: 5, scope: !1268, inlinedAt: !1659)
!1665 = !DILocation(line: 692, column: 18, scope: !1274, inlinedAt: !1659)
!1666 = !DILocation(line: 692, column: 25, scope: !1274, inlinedAt: !1659)
!1667 = !DILocation(line: 692, column: 7, scope: !1260, inlinedAt: !1659)
!1668 = !DILocation(line: 694, column: 35, scope: !1278, inlinedAt: !1659)
!1669 = !DILocation(line: 695, column: 22, scope: !1278, inlinedAt: !1659)
!1670 = !DILocation(line: 696, column: 55, scope: !1278, inlinedAt: !1659)
!1671 = !DILocation(line: 696, column: 7, scope: !1278, inlinedAt: !1659)
!1672 = !DILocation(line: 697, column: 5, scope: !1278, inlinedAt: !1659)
!1673 = !DILocation(line: 699, column: 20, scope: !1260, inlinedAt: !1659)
!1674 = !DILocation(line: 702, column: 14, scope: !1260, inlinedAt: !1659)
!1675 = !DILocation(line: 702, column: 20, scope: !1260, inlinedAt: !1659)
!1676 = !DILocation(line: 703, column: 14, scope: !1260, inlinedAt: !1659)
!1677 = !DILocation(line: 703, column: 18, scope: !1260, inlinedAt: !1659)
!1678 = !DILocation(line: 704, column: 14, scope: !1260, inlinedAt: !1659)
!1679 = !DILocation(line: 704, column: 28, scope: !1260, inlinedAt: !1659)
!1680 = !DILocation(line: 700, column: 20, scope: !1260, inlinedAt: !1659)
!1681 = !DILocation(line: 707, column: 14, scope: !1260, inlinedAt: !1659)
!1682 = !DILocation(line: 707, column: 20, scope: !1260, inlinedAt: !1659)
!1683 = !DILocation(line: 604, column: 23, scope: !1550)
!1684 = !DILocation(line: 604, column: 10, scope: !1550)
!1685 = !DILocation(line: 604, column: 16, scope: !1550)
!1686 = !DILocation(line: 604, column: 22, scope: !1550)
!1687 = !DILocation(line: 605, column: 3, scope: !1550)
!1688 = !DILocation(line: 606, column: 1, scope: !1550)
!1689 = !DILocation(line: 0, scope: !1571)
!1690 = !DILocation(line: 3897, column: 14, scope: !1579)
!1691 = !DILocation(line: 3897, column: 20, scope: !1579)
!1692 = !DILocation(line: 3897, column: 7, scope: !1571)
!1693 = !DILocation(line: 3898, column: 68, scope: !1579)
!1694 = !DILocation(line: 3898, column: 12, scope: !1579)
!1695 = !DILocation(line: 3898, column: 5, scope: !1579)
!1696 = !DILocation(line: 3902, column: 18, scope: !1571)
!1697 = !DILocation(line: 3902, column: 24, scope: !1571)
!1698 = !DILocation(line: 3902, column: 3, scope: !1571)
!1699 = !DILocation(line: 3910, column: 34, scope: !1589)
!1700 = !DILocation(line: 3910, column: 44, scope: !1589)
!1701 = !DILocation(line: 3910, column: 14, scope: !1589)
!1702 = !DILocation(line: 3911, column: 7, scope: !1589)
!1703 = !DILocation(line: 3932, column: 3, scope: !1571)
!1704 = !DISubprogram(name: "fsync", scope: !1171, file: !1171, line: 954, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1705 = !DISubprogram(name: "fileno", scope: !673, file: !673, line: 786, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!553, !546}
!1708 = !DISubprogram(name: "ferror", scope: !673, file: !673, line: 761, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1709 = distinct !DISubprogram(name: "GetBlobSize", scope: !754, file: !754, line: 1350, type: !1710, scopeLine: 1351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1712)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!610, !817}
!1712 = !{!1713, !1714, !1715}
!1713 = !DILocalVariable(name: "image", arg: 1, scope: !1709, file: !754, line: 1350, type: !817)
!1714 = !DILocalVariable(name: "extent", scope: !1709, file: !754, line: 1353, type: !610)
!1715 = !DILocalVariable(name: "status", scope: !1716, file: !754, line: 1388, type: !628)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !754, line: 1386, column: 5)
!1717 = distinct !DILexicalBlock(scope: !1709, file: !754, line: 1362, column: 3)
!1718 = !DILocation(line: 0, scope: !1709)
!1719 = !DILocation(line: 1357, column: 14, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !754, line: 1357, column: 7)
!1721 = !DILocation(line: 1357, column: 20, scope: !1720)
!1722 = !DILocation(line: 1357, column: 7, scope: !1709)
!1723 = !DILocation(line: 1358, column: 68, scope: !1720)
!1724 = !DILocation(line: 1358, column: 12, scope: !1720)
!1725 = !DILocation(line: 1358, column: 5, scope: !1720)
!1726 = !DILocation(line: 1361, column: 18, scope: !1709)
!1727 = !DILocation(line: 1361, column: 24, scope: !1709)
!1728 = !DILocation(line: 1361, column: 3, scope: !1709)
!1729 = !DILocation(line: 1365, column: 27, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1717, file: !754, line: 1364, column: 5)
!1731 = !DILocation(line: 1366, column: 7, scope: !1730)
!1732 = !DILocation(line: 1370, column: 27, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1717, file: !754, line: 1369, column: 5)
!1734 = !DILocation(line: 1371, column: 7, scope: !1733)
!1735 = !DILocation(line: 1375, column: 37, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !754, line: 1375, column: 11)
!1737 = distinct !DILexicalBlock(scope: !1717, file: !754, line: 1374, column: 5)
!1738 = !DILocation(line: 1375, column: 47, scope: !1736)
!1739 = !DILocation(line: 1375, column: 17, scope: !1736)
!1740 = !DILocation(line: 1375, column: 61, scope: !1736)
!1741 = !DILocation(line: 1375, column: 67, scope: !1736)
!1742 = !DILocalVariable(name: "__fd", arg: 1, scope: !1743, file: !1104, line: 467, type: !553)
!1743 = distinct !DISubprogram(name: "fstat", scope: !1104, file: !1104, line: 467, type: !1744, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1747)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!553, !553, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!1747 = !{!1742, !1748}
!1748 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1743, file: !1104, line: 467, type: !1746)
!1749 = !DILocation(line: 0, scope: !1743, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 1375, column: 11, scope: !1736)
!1751 = !DILocation(line: 469, column: 10, scope: !1743, inlinedAt: !1750)
!1752 = !DILocation(line: 1375, column: 79, scope: !1736)
!1753 = !DILocation(line: 1375, column: 11, scope: !1737)
!1754 = !DILocation(line: 1376, column: 40, scope: !1736)
!1755 = !DILocation(line: 1376, column: 57, scope: !1736)
!1756 = !DILocation(line: 1376, column: 9, scope: !1736)
!1757 = !DILocation(line: 1381, column: 27, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1717, file: !754, line: 1380, column: 5)
!1759 = !DILocation(line: 1382, column: 7, scope: !1758)
!1760 = !DILocation(line: 1390, column: 39, scope: !1716)
!1761 = !DILocation(line: 1390, column: 62, scope: !1716)
!1762 = !DILocation(line: 1390, column: 14, scope: !1716)
!1763 = !DILocation(line: 0, scope: !1716)
!1764 = !DILocation(line: 1391, column: 18, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1716, file: !754, line: 1391, column: 11)
!1766 = !DILocation(line: 1391, column: 11, scope: !1716)
!1767 = !DILocation(line: 1392, column: 40, scope: !1765)
!1768 = !DILocation(line: 1392, column: 57, scope: !1765)
!1769 = !DILocation(line: 1392, column: 9, scope: !1765)
!1770 = !DILocation(line: 0, scope: !1717)
!1771 = !DILocation(line: 1403, column: 3, scope: !1709)
!1772 = !DISubprogram(name: "fclose", scope: !673, file: !673, line: 213, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1773 = distinct !DISubprogram(name: "DestroyBlob", scope: !754, file: !754, line: 630, type: !1774, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !614}
!1776 = !{!1777, !1778}
!1777 = !DILocalVariable(name: "image", arg: 1, scope: !1773, file: !754, line: 630, type: !614)
!1778 = !DILocalVariable(name: "destroy", scope: !1773, file: !754, line: 633, type: !628)
!1779 = !DILocation(line: 0, scope: !1773)
!1780 = !DILocation(line: 637, column: 14, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1773, file: !754, line: 637, column: 7)
!1782 = !DILocation(line: 637, column: 20, scope: !1781)
!1783 = !DILocation(line: 637, column: 7, scope: !1773)
!1784 = !DILocation(line: 638, column: 68, scope: !1781)
!1785 = !DILocation(line: 638, column: 12, scope: !1781)
!1786 = !DILocation(line: 638, column: 5, scope: !1781)
!1787 = !DILocation(line: 642, column: 28, scope: !1773)
!1788 = !DILocation(line: 642, column: 34, scope: !1773)
!1789 = !DILocation(line: 642, column: 3, scope: !1773)
!1790 = !DILocation(line: 643, column: 10, scope: !1773)
!1791 = !DILocation(line: 643, column: 16, scope: !1773)
!1792 = !DILocation(line: 643, column: 31, scope: !1773)
!1793 = !DILocation(line: 645, column: 36, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1773, file: !754, line: 645, column: 7)
!1795 = !DILocation(line: 647, column: 36, scope: !1773)
!1796 = !DILocation(line: 647, column: 3, scope: !1773)
!1797 = !DILocation(line: 648, column: 7, scope: !1773)
!1798 = !DILocation(line: 650, column: 10, scope: !1773)
!1799 = !DILocation(line: 651, column: 14, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1773, file: !754, line: 651, column: 7)
!1801 = !DILocation(line: 651, column: 20, scope: !1800)
!1802 = !DILocation(line: 651, column: 27, scope: !1800)
!1803 = !DILocation(line: 651, column: 7, scope: !1773)
!1804 = !DILocation(line: 654, column: 57, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1800, file: !754, line: 652, column: 5)
!1806 = !DILocation(line: 654, column: 7, scope: !1805)
!1807 = !DILocation(line: 656, column: 14, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1773, file: !754, line: 656, column: 7)
!1809 = !DILocation(line: 655, column: 5, scope: !1805)
!1810 = !DILocation(line: 656, column: 20, scope: !1808)
!1811 = !DILocation(line: 656, column: 30, scope: !1808)
!1812 = !DILocation(line: 656, column: 7, scope: !1773)
!1813 = !DILocation(line: 657, column: 5, scope: !1808)
!1814 = !DILocation(line: 658, column: 10, scope: !1773)
!1815 = !DILocation(line: 658, column: 16, scope: !1773)
!1816 = !DILocation(line: 658, column: 25, scope: !1773)
!1817 = !DILocation(line: 659, column: 28, scope: !1773)
!1818 = !DILocation(line: 659, column: 14, scope: !1773)
!1819 = !DILocation(line: 660, column: 1, scope: !1773)
!1820 = !DISubprogram(name: "LockSemaphoreInfo", scope: !825, file: !825, line: 37, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !823}
!1823 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !825, file: !825, line: 39, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1824 = distinct !DISubprogram(name: "UnmapBlob", scope: !754, file: !754, line: 4026, type: !1825, scopeLine: 4027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!628, !599, !819}
!1827 = !{!1828, !1829}
!1828 = !DILocalVariable(name: "map", arg: 1, scope: !1824, file: !754, line: 4026, type: !599)
!1829 = !DILocalVariable(name: "length", arg: 2, scope: !1824, file: !754, line: 4026, type: !819)
!1830 = !DILocation(line: 0, scope: !1824)
!1831 = !DILocation(line: 4037, column: 3, scope: !1824)
!1832 = !DISubprogram(name: "RelinquishMagickResource", scope: !487, file: !487, line: 57, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1835, !742}
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !487, line: 36, baseType: !486)
!1837 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !825, file: !825, line: 36, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!1841 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1511, file: !1511, line: 51, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!599, !599}
!1844 = distinct !DISubprogram(name: "DiscardBlobBytes", scope: !754, file: !754, line: 761, type: !1845, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!628, !614, !742}
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853}
!1848 = !DILocalVariable(name: "image", arg: 1, scope: !1844, file: !754, line: 761, type: !614)
!1849 = !DILocalVariable(name: "length", arg: 2, scope: !1844, file: !754, line: 762, type: !742)
!1850 = !DILocalVariable(name: "i", scope: !1844, file: !754, line: 765, type: !740)
!1851 = !DILocalVariable(name: "quantum", scope: !1844, file: !754, line: 768, type: !544)
!1852 = !DILocalVariable(name: "count", scope: !1844, file: !754, line: 771, type: !672)
!1853 = !DILocalVariable(name: "buffer", scope: !1844, file: !754, line: 774, type: !1854)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 131072, elements: !1855)
!1855 = !{!1856}
!1856 = !DISubrange(count: 16384)
!1857 = !DILocation(line: 0, scope: !1844)
!1858 = !DILocation(line: 773, column: 3, scope: !1844)
!1859 = !DILocation(line: 774, column: 5, scope: !1844)
!1860 = !DILocation(line: 779, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !754, line: 779, column: 3)
!1862 = distinct !DILexicalBlock(scope: !1844, file: !754, line: 779, column: 3)
!1863 = !DILocation(line: 779, column: 3, scope: !1862)
!1864 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !1875)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !754, line: 741, column: 7)
!1866 = distinct !DISubprogram(name: "ReadBlobStream", scope: !754, file: !754, line: 736, type: !1867, scopeLine: 738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1870)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!988, !614, !819, !606, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!1870 = !{!1871, !1872, !1873, !1874}
!1871 = !DILocalVariable(name: "image", arg: 1, scope: !1866, file: !754, line: 736, type: !614)
!1872 = !DILocalVariable(name: "length", arg: 2, scope: !1866, file: !754, line: 737, type: !819)
!1873 = !DILocalVariable(name: "data", arg: 3, scope: !1866, file: !754, line: 737, type: !606)
!1874 = !DILocalVariable(name: "count", arg: 4, scope: !1866, file: !754, line: 737, type: !1869)
!1875 = distinct !DILocation(line: 782, column: 12, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1861, file: !754, line: 780, column: 3)
!1877 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !1875)
!1878 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !1875)
!1879 = !DILocation(line: 0, scope: !1126, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 781, column: 22, scope: !1876)
!1881 = !DILocation(line: 0, scope: !1866, inlinedAt: !1875)
!1882 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !1875)
!1883 = distinct !DILexicalBlock(scope: !1866, file: !754, line: 746, column: 7)
!1884 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !1875)
!1885 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !1875)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !754, line: 747, column: 5)
!1887 = !DILocation(line: 783, column: 9, scope: !1876)
!1888 = !DILocation(line: 781, column: 38, scope: !1876)
!1889 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !1875)
!1890 = !DILocation(line: 0, scope: !1126, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !1875)
!1892 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !1875)
!1893 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !1875)
!1894 = distinct !DILexicalBlock(scope: !1866, file: !754, line: 756, column: 7)
!1895 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !1875)
!1896 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !1875)
!1897 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !1875)
!1898 = !DILocation(line: 783, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1876, file: !754, line: 783, column: 9)
!1900 = !DILocation(line: 786, column: 13, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !754, line: 786, column: 13)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !754, line: 784, column: 7)
!1903 = !DILocation(line: 786, column: 19, scope: !1901)
!1904 = !DILocation(line: 786, column: 13, scope: !1902)
!1905 = !DILocation(line: 0, scope: !1876)
!1906 = !DILocation(line: 779, column: 45, scope: !1861)
!1907 = distinct !{!1907, !1863, !1908, !1148, !1149}
!1908 = !DILocation(line: 789, column: 3, scope: !1862)
!1909 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !1875)
!1910 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !1875)
!1911 = distinct !DILexicalBlock(scope: !1865, file: !754, line: 742, column: 5)
!1912 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !1875)
!1913 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !1875)
!1914 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !1875)
!1915 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !1875)
!1916 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !1875)
!1917 = distinct !{!1917, !1863, !1908, !1148, !1149, !1918}
!1918 = !{!"llvm.loop.unswitch.partial.disable"}
!1919 = !DILocation(line: 791, column: 1, scope: !1844)
!1920 = !DILocation(line: 790, column: 3, scope: !1844)
!1921 = distinct !DISubprogram(name: "DuplicateBlob", scope: !754, file: !754, line: 817, type: !1922, scopeLine: 818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !614, !817}
!1924 = !{!1925, !1926}
!1925 = !DILocalVariable(name: "image", arg: 1, scope: !1921, file: !754, line: 817, type: !614)
!1926 = !DILocalVariable(name: "duplicate", arg: 2, scope: !1921, file: !754, line: 817, type: !817)
!1927 = !DILocation(line: 0, scope: !1921)
!1928 = !DILocation(line: 821, column: 14, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1921, file: !754, line: 821, column: 7)
!1930 = !DILocation(line: 821, column: 20, scope: !1929)
!1931 = !DILocation(line: 821, column: 7, scope: !1921)
!1932 = !DILocation(line: 822, column: 68, scope: !1929)
!1933 = !DILocation(line: 822, column: 12, scope: !1929)
!1934 = !DILocation(line: 822, column: 5, scope: !1929)
!1935 = !DILocation(line: 825, column: 3, scope: !1921)
!1936 = !DILocation(line: 826, column: 40, scope: !1921)
!1937 = !DILocalVariable(name: "blob", arg: 1, scope: !1938, file: !754, line: 3553, type: !751)
!1938 = distinct !DISubprogram(name: "ReferenceBlob", scope: !754, file: !754, line: 3553, type: !1939, scopeLine: 3554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!751, !751}
!1941 = !{!1937}
!1942 = !DILocation(line: 0, scope: !1938, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 826, column: 15, scope: !1921)
!1944 = !DILocation(line: 3557, column: 13, scope: !1945, inlinedAt: !1943)
!1945 = distinct !DILexicalBlock(scope: !1938, file: !754, line: 3557, column: 7)
!1946 = !DILocation(line: 3557, column: 19, scope: !1945, inlinedAt: !1943)
!1947 = !DILocation(line: 3557, column: 7, scope: !1938, inlinedAt: !1943)
!1948 = !DILocation(line: 3558, column: 12, scope: !1945, inlinedAt: !1943)
!1949 = !DILocation(line: 3558, column: 5, scope: !1945, inlinedAt: !1943)
!1950 = !DILocation(line: 3559, column: 27, scope: !1938, inlinedAt: !1943)
!1951 = !DILocation(line: 3559, column: 3, scope: !1938, inlinedAt: !1943)
!1952 = !DILocation(line: 3560, column: 9, scope: !1938, inlinedAt: !1943)
!1953 = !DILocation(line: 3560, column: 24, scope: !1938, inlinedAt: !1943)
!1954 = !DILocation(line: 3561, column: 29, scope: !1938, inlinedAt: !1943)
!1955 = !DILocation(line: 3561, column: 3, scope: !1938, inlinedAt: !1943)
!1956 = !DILocation(line: 826, column: 10, scope: !1921)
!1957 = !DILocation(line: 826, column: 14, scope: !1921)
!1958 = !DILocation(line: 827, column: 1, scope: !1921)
!1959 = !DILocation(line: 0, scope: !1938)
!1960 = !DILocation(line: 3557, column: 13, scope: !1945)
!1961 = !DILocation(line: 3557, column: 19, scope: !1945)
!1962 = !DILocation(line: 3557, column: 7, scope: !1938)
!1963 = !DILocation(line: 3558, column: 12, scope: !1945)
!1964 = !DILocation(line: 3558, column: 5, scope: !1945)
!1965 = !DILocation(line: 3559, column: 27, scope: !1938)
!1966 = !DILocation(line: 3559, column: 3, scope: !1938)
!1967 = !DILocation(line: 3560, column: 9, scope: !1938)
!1968 = !DILocation(line: 3560, column: 24, scope: !1938)
!1969 = !DILocation(line: 3561, column: 29, scope: !1938)
!1970 = !DILocation(line: 3561, column: 3, scope: !1938)
!1971 = !DILocation(line: 3562, column: 3, scope: !1938)
!1972 = distinct !DISubprogram(name: "EOFBlob", scope: !754, file: !754, line: 852, type: !1973, scopeLine: 853, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1975)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!553, !817}
!1975 = !{!1976}
!1976 = !DILocalVariable(name: "image", arg: 1, scope: !1972, file: !754, line: 852, type: !817)
!1977 = !DILocation(line: 0, scope: !1972)
!1978 = !DILocation(line: 856, column: 14, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1972, file: !754, line: 856, column: 7)
!1980 = !DILocation(line: 856, column: 20, scope: !1979)
!1981 = !DILocation(line: 856, column: 7, scope: !1972)
!1982 = !DILocation(line: 857, column: 12, scope: !1979)
!1983 = !DILocation(line: 857, column: 5, scope: !1979)
!1984 = !DILocation(line: 860, column: 18, scope: !1972)
!1985 = !DILocation(line: 860, column: 24, scope: !1972)
!1986 = !DILocation(line: 860, column: 3, scope: !1972)
!1987 = !DILocation(line: 897, column: 29, scope: !1972)
!1988 = !DILocation(line: 868, column: 42, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !754, line: 867, column: 5)
!1990 = distinct !DILexicalBlock(scope: !1972, file: !754, line: 861, column: 3)
!1991 = !DILocation(line: 868, column: 52, scope: !1989)
!1992 = !DILocation(line: 868, column: 24, scope: !1989)
!1993 = !DILocation(line: 868, column: 58, scope: !1989)
!1994 = !DILocation(line: 868, column: 14, scope: !1989)
!1995 = !DILocation(line: 868, column: 20, scope: !1989)
!1996 = !DILocation(line: 868, column: 23, scope: !1989)
!1997 = !DILocation(line: 870, column: 7, scope: !1989)
!1998 = !DILocation(line: 874, column: 20, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1990, file: !754, line: 873, column: 5)
!2000 = !DILocation(line: 874, column: 23, scope: !1999)
!2001 = !DILocation(line: 875, column: 7, scope: !1999)
!2002 = !DILocation(line: 891, column: 20, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1990, file: !754, line: 890, column: 5)
!2004 = !DILocation(line: 891, column: 23, scope: !2003)
!2005 = !DILocation(line: 892, column: 7, scope: !2003)
!2006 = !DILocation(line: 897, column: 3, scope: !1972)
!2007 = !DISubprogram(name: "feof", scope: !673, file: !673, line: 759, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2008 = distinct !DISubprogram(name: "FileToBlob", scope: !754, file: !754, line: 935, type: !2009, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2012)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!606, !608, !819, !2011, !977}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2027, !2030, !2031, !2035, !2041}
!2013 = !DILocalVariable(name: "filename", arg: 1, scope: !2008, file: !754, line: 935, type: !608)
!2014 = !DILocalVariable(name: "extent", arg: 2, scope: !2008, file: !754, line: 935, type: !819)
!2015 = !DILocalVariable(name: "length", arg: 3, scope: !2008, file: !754, line: 936, type: !2011)
!2016 = !DILocalVariable(name: "exception", arg: 4, scope: !2008, file: !754, line: 936, type: !977)
!2017 = !DILocalVariable(name: "file", scope: !2008, file: !754, line: 939, type: !553)
!2018 = !DILocalVariable(name: "offset", scope: !2008, file: !754, line: 942, type: !740)
!2019 = !DILocalVariable(name: "i", scope: !2008, file: !754, line: 945, type: !544)
!2020 = !DILocalVariable(name: "count", scope: !2008, file: !754, line: 948, type: !672)
!2021 = !DILocalVariable(name: "blob", scope: !2008, file: !754, line: 951, type: !606)
!2022 = !DILocalVariable(name: "map", scope: !2008, file: !754, line: 954, type: !599)
!2023 = !DILocalVariable(name: "message", scope: !2024, file: !754, line: 965, type: !555)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !754, line: 965, column: 7)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !754, line: 964, column: 5)
!2026 = distinct !DILexicalBlock(scope: !2008, file: !754, line: 963, column: 7)
!2027 = !DILocalVariable(name: "quantum", scope: !2028, file: !754, line: 974, type: !544)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !754, line: 972, column: 5)
!2029 = distinct !DILexicalBlock(scope: !2008, file: !754, line: 970, column: 7)
!2030 = !DILocalVariable(name: "file_stats", scope: !2028, file: !754, line: 977, type: !775)
!2031 = !DILocalVariable(name: "message", scope: !2032, file: !754, line: 1018, type: !555)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !754, line: 1018, column: 11)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !754, line: 1016, column: 9)
!2034 = distinct !DILexicalBlock(scope: !2028, file: !754, line: 1015, column: 11)
!2035 = !DILocalVariable(name: "message", scope: !2036, file: !754, line: 1061, type: !555)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !754, line: 1061, column: 11)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !754, line: 1058, column: 9)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !754, line: 1057, column: 11)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !754, line: 1044, column: 5)
!2040 = distinct !DILexicalBlock(scope: !2008, file: !754, line: 1038, column: 7)
!2041 = !DILocalVariable(name: "message", scope: !2042, file: !754, line: 1071, type: !555)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !754, line: 1071, column: 7)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !754, line: 1069, column: 5)
!2044 = distinct !DILexicalBlock(scope: !2008, file: !754, line: 1068, column: 7)
!2045 = !DILocation(line: 0, scope: !2008)
!2046 = !DILocation(line: 957, column: 10, scope: !2008)
!2047 = !DILocation(line: 959, column: 10, scope: !2008)
!2048 = !DILocation(line: 960, column: 15, scope: !2008)
!2049 = !{!1036, !1036, i64 0}
!2050 = !DILocation(line: 960, column: 8, scope: !2008)
!2051 = !DILocation(line: 961, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2008, file: !754, line: 961, column: 7)
!2053 = !DILocation(line: 961, column: 35, scope: !2052)
!2054 = !DILocation(line: 961, column: 7, scope: !2008)
!2055 = !DILocation(line: 0, scope: !1099, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 962, column: 10, scope: !2052)
!2057 = !DILocation(line: 139, column: 10, scope: !1099, inlinedAt: !2056)
!2058 = !DILocation(line: 962, column: 5, scope: !2052)
!2059 = !DILocation(line: 963, column: 12, scope: !2026)
!2060 = !DILocation(line: 963, column: 7, scope: !2008)
!2061 = !DILocation(line: 965, column: 7, scope: !2024)
!2062 = !DILocation(line: 0, scope: !2024)
!2063 = !DILocation(line: 966, column: 7, scope: !2025)
!2064 = !DILocation(line: 968, column: 29, scope: !2008)
!2065 = !DILocation(line: 970, column: 23, scope: !2029)
!2066 = !DILocation(line: 970, column: 16, scope: !2029)
!2067 = !DILocation(line: 970, column: 13, scope: !2029)
!2068 = !DILocation(line: 970, column: 31, scope: !2029)
!2069 = !DILocation(line: 976, column: 7, scope: !2028)
!2070 = !DILocation(line: 977, column: 9, scope: !2028)
!2071 = !DILocation(line: 982, column: 33, scope: !2028)
!2072 = !DILocation(line: 0, scope: !2028)
!2073 = !DILocation(line: 0, scope: !1743, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 984, column: 12, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2028, file: !754, line: 984, column: 11)
!2076 = !DILocation(line: 469, column: 10, scope: !1743, inlinedAt: !2074)
!2077 = !DILocation(line: 984, column: 36, scope: !2075)
!2078 = !DILocation(line: 984, column: 42, scope: !2075)
!2079 = !DILocation(line: 987, column: 30, scope: !2028)
!2080 = !DILocation(line: 988, column: 22, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !754, line: 988, column: 7)
!2082 = distinct !DILexicalBlock(scope: !2028, file: !754, line: 988, column: 7)
!2083 = !DILocation(line: 988, column: 7, scope: !2082)
!2084 = distinct !{!2084, !2083, !2085, !1148, !1149}
!2085 = !DILocation(line: 1006, column: 7, scope: !2082)
!2086 = !DILocation(line: 990, column: 29, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2081, file: !754, line: 989, column: 7)
!2088 = !DILocation(line: 990, column: 15, scope: !2087)
!2089 = !DILocation(line: 991, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2087, file: !754, line: 991, column: 13)
!2091 = !DILocation(line: 991, column: 13, scope: !2087)
!2092 = !DILocation(line: 994, column: 17, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !754, line: 994, column: 17)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !754, line: 992, column: 11)
!2095 = !DILocation(line: 994, column: 23, scope: !2093)
!2096 = !DILocation(line: 994, column: 17, scope: !2094)
!2097 = !DILocation(line: 0, scope: !2087)
!2098 = !DILocation(line: 997, column: 13, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2087, file: !754, line: 997, column: 13)
!2100 = !DILocation(line: 997, column: 27, scope: !2099)
!2101 = !DILocation(line: 997, column: 13, scope: !2087)
!2102 = !DILocation(line: 999, column: 36, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !754, line: 998, column: 11)
!2104 = !DILocation(line: 1000, column: 13, scope: !2103)
!2105 = !DILocation(line: 1002, column: 66, scope: !2087)
!2106 = !DILocation(line: 1002, column: 32, scope: !2087)
!2107 = !DILocation(line: 1004, column: 24, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2087, file: !754, line: 1004, column: 13)
!2109 = !DILocation(line: 1004, column: 32, scope: !2108)
!2110 = !DILocation(line: 1004, column: 13, scope: !2087)
!2111 = !DILocation(line: 1007, column: 11, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2028, file: !754, line: 1007, column: 11)
!2113 = !DILocation(line: 1007, column: 39, scope: !2112)
!2114 = !DILocation(line: 1007, column: 11, scope: !2028)
!2115 = !DILocation(line: 1008, column: 14, scope: !2112)
!2116 = !DILocation(line: 1008, column: 9, scope: !2112)
!2117 = !DILocation(line: 1009, column: 16, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2028, file: !754, line: 1009, column: 11)
!2119 = !DILocation(line: 1009, column: 11, scope: !2028)
!2120 = !DILocation(line: 1011, column: 18, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !754, line: 1010, column: 9)
!2122 = !DILocation(line: 1013, column: 11, scope: !2121)
!2123 = !DILocation(line: 1015, column: 16, scope: !2034)
!2124 = !DILocation(line: 1015, column: 11, scope: !2028)
!2125 = !DILocation(line: 1017, column: 34, scope: !2033)
!2126 = !DILocation(line: 1018, column: 11, scope: !2032)
!2127 = !DILocation(line: 0, scope: !2032)
!2128 = !DILocation(line: 1019, column: 11, scope: !2033)
!2129 = !DILocation(line: 1021, column: 35, scope: !2028)
!2130 = !DILocation(line: 0, scope: !1126, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 1021, column: 24, scope: !2028)
!2132 = !DILocation(line: 1021, column: 14, scope: !2028)
!2133 = !DILocation(line: 1022, column: 7, scope: !2028)
!2134 = !DILocation(line: 1022, column: 20, scope: !2028)
!2135 = !DILocation(line: 1023, column: 7, scope: !2028)
!2136 = !DILocation(line: 1024, column: 5, scope: !2029)
!2137 = !DILocation(line: 0, scope: !1126, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 1025, column: 20, scope: !2008)
!2139 = !DILocation(line: 1025, column: 10, scope: !2008)
!2140 = !DILocation(line: 1028, column: 56, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2008, file: !754, line: 1027, column: 7)
!2142 = !DILocation(line: 1028, column: 28, scope: !2141)
!2143 = !DILocation(line: 1030, column: 12, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2008, file: !754, line: 1030, column: 7)
!2145 = !DILocation(line: 1030, column: 7, scope: !2008)
!2146 = !DILocation(line: 1032, column: 12, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !754, line: 1031, column: 5)
!2148 = !DILocation(line: 1033, column: 14, scope: !2147)
!2149 = !DILocation(line: 1035, column: 7, scope: !2147)
!2150 = !DILocation(line: 1045, column: 14, scope: !2039)
!2151 = !DILocation(line: 1046, column: 21, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !754, line: 1046, column: 7)
!2153 = distinct !DILexicalBlock(scope: !2039, file: !754, line: 1046, column: 7)
!2154 = !DILocation(line: 1046, column: 19, scope: !2152)
!2155 = !DILocation(line: 1046, column: 7, scope: !2153)
!2156 = !DILocation(line: 1048, column: 29, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2152, file: !754, line: 1047, column: 7)
!2158 = !DILocation(line: 1048, column: 58, scope: !2157)
!2159 = !DILocation(line: 0, scope: !1126, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 1048, column: 41, scope: !2157)
!2161 = !DILocation(line: 1048, column: 15, scope: !2157)
!2162 = !DILocation(line: 1050, column: 19, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2157, file: !754, line: 1050, column: 13)
!2164 = !DILocation(line: 1050, column: 13, scope: !2157)
!2165 = !DILocation(line: 1053, column: 17, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !754, line: 1053, column: 17)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !754, line: 1051, column: 11)
!2168 = !DILocation(line: 1053, column: 23, scope: !2166)
!2169 = !DILocation(line: 1053, column: 17, scope: !2167)
!2170 = !DILocation(line: 1057, column: 15, scope: !2038)
!2171 = !DILocation(line: 0, scope: !2157)
!2172 = !DILocation(line: 1046, column: 31, scope: !2152)
!2173 = distinct !{!2173, !2155, !2174, !1148, !1149}
!2174 = !DILocation(line: 1056, column: 7, scope: !2153)
!2175 = !DILocation(line: 0, scope: !2153)
!2176 = !DILocation(line: 1057, column: 13, scope: !2038)
!2177 = !DILocation(line: 1057, column: 11, scope: !2039)
!2178 = !DILocation(line: 1059, column: 16, scope: !2037)
!2179 = !DILocation(line: 1060, column: 34, scope: !2037)
!2180 = !DILocation(line: 1061, column: 11, scope: !2036)
!2181 = !DILocation(line: 0, scope: !2036)
!2182 = !DILocation(line: 1062, column: 11, scope: !2037)
!2183 = !DILocation(line: 1065, column: 3, scope: !2008)
!2184 = !DILocation(line: 1065, column: 16, scope: !2008)
!2185 = !DILocation(line: 1066, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2008, file: !754, line: 1066, column: 7)
!2187 = !DILocation(line: 1066, column: 35, scope: !2186)
!2188 = !DILocation(line: 1066, column: 7, scope: !2008)
!2189 = !DILocation(line: 1067, column: 10, scope: !2186)
!2190 = !DILocation(line: 1067, column: 5, scope: !2186)
!2191 = !DILocation(line: 1068, column: 12, scope: !2044)
!2192 = !DILocation(line: 1068, column: 7, scope: !2008)
!2193 = !DILocation(line: 1070, column: 30, scope: !2043)
!2194 = !DILocation(line: 1071, column: 7, scope: !2042)
!2195 = !DILocation(line: 0, scope: !2042)
!2196 = !DILocation(line: 1072, column: 5, scope: !2043)
!2197 = !DILocation(line: 1074, column: 1, scope: !2008)
!2198 = !DISubprogram(name: "LocaleCompare", scope: !1167, file: !1167, line: 66, type: !2199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!553, !608, !608}
!2201 = !DISubprogram(name: "lseek", scope: !1171, file: !1171, line: 334, type: !2202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!575, !553, !575, !553}
!2204 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1511, file: !1511, line: 42, type: !2205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!599, !819, !819}
!2207 = !DISubprogram(name: "read", scope: !1171, file: !1171, line: 360, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!672, !553, !599, !544}
!2210 = !DISubprogram(name: "ResizeQuantumMemory", scope: !1511, file: !1511, line: 55, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!599, !599, !819, !819}
!2213 = distinct !DISubprogram(name: "MapBlob", scope: !754, file: !754, line: 2160, type: !2214, scopeLine: 2162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2218)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!606, !553, !2216, !739, !819}
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "MapMode", file: !499, line: 35, baseType: !498)
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DILocalVariable(name: "file", arg: 1, scope: !2213, file: !754, line: 2160, type: !553)
!2220 = !DILocalVariable(name: "mode", arg: 2, scope: !2213, file: !754, line: 2160, type: !2216)
!2221 = !DILocalVariable(name: "offset", arg: 3, scope: !2213, file: !754, line: 2161, type: !739)
!2222 = !DILocalVariable(name: "length", arg: 4, scope: !2213, file: !754, line: 2161, type: !819)
!2223 = !DILocation(line: 0, scope: !2213)
!2224 = !DILocation(line: 2221, column: 3, scope: !2213)
!2225 = distinct !DISubprogram(name: "FileToImage", scope: !754, file: !754, line: 1131, type: !2226, scopeLine: 1132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!628, !614, !608}
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2241, !2245, !2252}
!2229 = !DILocalVariable(name: "image", arg: 1, scope: !2225, file: !754, line: 1131, type: !614)
!2230 = !DILocalVariable(name: "filename", arg: 2, scope: !2225, file: !754, line: 1131, type: !608)
!2231 = !DILocalVariable(name: "file", scope: !2225, file: !754, line: 1134, type: !553)
!2232 = !DILocalVariable(name: "length", scope: !2225, file: !754, line: 1137, type: !544)
!2233 = !DILocalVariable(name: "quantum", scope: !2225, file: !754, line: 1138, type: !544)
!2234 = !DILocalVariable(name: "count", scope: !2225, file: !754, line: 1141, type: !672)
!2235 = !DILocalVariable(name: "file_stats", scope: !2225, file: !754, line: 1144, type: !775)
!2236 = !DILocalVariable(name: "blob", scope: !2225, file: !754, line: 1147, type: !606)
!2237 = !DILocalVariable(name: "message", scope: !2238, file: !754, line: 1158, type: !555)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !754, line: 1158, column: 7)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !754, line: 1157, column: 5)
!2240 = distinct !DILexicalBlock(scope: !2225, file: !754, line: 1156, column: 7)
!2241 = !DILocalVariable(name: "message", scope: !2242, file: !754, line: 1169, type: !555)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !754, line: 1169, column: 7)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !754, line: 1167, column: 5)
!2244 = distinct !DILexicalBlock(scope: !2225, file: !754, line: 1166, column: 7)
!2245 = !DILocalVariable(name: "message", scope: !2246, file: !754, line: 1186, type: !555)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !754, line: 1186, column: 9)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !754, line: 1185, column: 7)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !754, line: 1184, column: 9)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !754, line: 1174, column: 3)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !754, line: 1173, column: 3)
!2251 = distinct !DILexicalBlock(scope: !2225, file: !754, line: 1173, column: 3)
!2252 = !DILocalVariable(name: "message", scope: !2253, file: !754, line: 1193, type: !555)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !754, line: 1193, column: 5)
!2254 = distinct !DILexicalBlock(scope: !2225, file: !754, line: 1192, column: 7)
!2255 = !DILocation(line: 0, scope: !2225)
!2256 = !DILocation(line: 1143, column: 3, scope: !2225)
!2257 = !DILocation(line: 1144, column: 5, scope: !2225)
!2258 = !DILocation(line: 1152, column: 10, scope: !2225)
!2259 = !DILocation(line: 1153, column: 15, scope: !2225)
!2260 = !DILocation(line: 1153, column: 8, scope: !2225)
!2261 = !DILocation(line: 1154, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2225, file: !754, line: 1154, column: 7)
!2263 = !DILocation(line: 1154, column: 35, scope: !2262)
!2264 = !DILocation(line: 1154, column: 7, scope: !2225)
!2265 = !DILocation(line: 0, scope: !1099, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 1155, column: 10, scope: !2262)
!2267 = !DILocation(line: 139, column: 10, scope: !1099, inlinedAt: !2266)
!2268 = !DILocation(line: 1155, column: 5, scope: !2262)
!2269 = !DILocation(line: 1156, column: 12, scope: !2240)
!2270 = !DILocation(line: 1156, column: 7, scope: !2225)
!2271 = !DILocation(line: 1158, column: 7, scope: !2238)
!2272 = !DILocation(line: 0, scope: !2238)
!2273 = !DILocation(line: 1160, column: 7, scope: !2239)
!2274 = !DILocation(line: 0, scope: !1743, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 1163, column: 8, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2225, file: !754, line: 1163, column: 7)
!2277 = !DILocation(line: 469, column: 10, scope: !1743, inlinedAt: !2275)
!2278 = !DILocation(line: 1163, column: 32, scope: !2276)
!2279 = !DILocation(line: 1163, column: 38, scope: !2276)
!2280 = !DILocation(line: 1165, column: 26, scope: !2225)
!2281 = !DILocation(line: 1166, column: 12, scope: !2244)
!2282 = !DILocation(line: 1166, column: 7, scope: !2225)
!2283 = !DILocation(line: 1173, column: 3, scope: !2251)
!2284 = !DILocation(line: 1168, column: 12, scope: !2243)
!2285 = !DILocation(line: 1169, column: 7, scope: !2242)
!2286 = !DILocation(line: 0, scope: !2242)
!2287 = !DILocation(line: 1171, column: 7, scope: !2243)
!2288 = !DILocation(line: 1175, column: 11, scope: !2249)
!2289 = !DILocation(line: 1176, column: 15, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2249, file: !754, line: 1176, column: 9)
!2291 = !DILocation(line: 1176, column: 9, scope: !2249)
!2292 = !DILocation(line: 1179, column: 13, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !754, line: 1179, column: 13)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !754, line: 1177, column: 7)
!2295 = !DILocation(line: 1179, column: 19, scope: !2293)
!2296 = !DILocation(line: 1179, column: 13, scope: !2294)
!2297 = !DILocation(line: 0, scope: !2249)
!2298 = !DILocalVariable(name: "image", arg: 1, scope: !2299, file: !754, line: 1101, type: !614)
!2299 = distinct !DISubprogram(name: "WriteBlobStream", scope: !754, file: !754, line: 1101, type: !2300, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!672, !614, !819, !988}
!2302 = !{!2298, !2303, !2304, !2305, !2306}
!2303 = !DILocalVariable(name: "length", arg: 2, scope: !2299, file: !754, line: 1101, type: !819)
!2304 = !DILocalVariable(name: "data", arg: 3, scope: !2299, file: !754, line: 1102, type: !988)
!2305 = !DILocalVariable(name: "extent", scope: !2299, file: !754, line: 1105, type: !610)
!2306 = !DILocalVariable(name: "q", scope: !2299, file: !754, line: 1108, type: !606)
!2307 = !DILocation(line: 0, scope: !2299, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 1183, column: 11, scope: !2249)
!2309 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !2308)
!2310 = distinct !DILexicalBlock(scope: !2299, file: !754, line: 1111, column: 7)
!2311 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !2308)
!2312 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !2308)
!2313 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !2308)
!2314 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !2308)
!2315 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !2308)
!2316 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !2308)
!2317 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !2308)
!2318 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !2308)
!2319 = distinct !DILexicalBlock(scope: !2299, file: !754, line: 1116, column: 7)
!2320 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !2308)
!2321 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !2308)
!2322 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !2308)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !754, line: 1117, column: 5)
!2324 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !2308)
!2325 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !2308)
!2326 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !2308)
!2327 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !2308)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !754, line: 1120, column: 11)
!2329 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !2308)
!2330 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !2308)
!2331 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !2308)
!2332 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !2308)
!2333 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !2308)
!2334 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !2308)
!2335 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !2308)
!2336 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !2308)
!2337 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !2308)
!2338 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !2308)
!2339 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !2308)
!2340 = distinct !DILexicalBlock(scope: !2299, file: !754, line: 1126, column: 7)
!2341 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !2308)
!2342 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !2308)
!2343 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !2308)
!2344 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !2308)
!2345 = !DILocation(line: 1184, column: 15, scope: !2248)
!2346 = !DILocation(line: 1184, column: 9, scope: !2249)
!2347 = distinct !{!2347, !2283, !2348, !1149}
!2348 = !DILocation(line: 1190, column: 3, scope: !2251)
!2349 = !DILocation(line: 1186, column: 9, scope: !2246)
!2350 = !DILocation(line: 0, scope: !2246)
!2351 = !DILocation(line: 1188, column: 9, scope: !2247)
!2352 = !DILocation(line: 1191, column: 8, scope: !2225)
!2353 = !DILocation(line: 1192, column: 12, scope: !2254)
!2354 = !DILocation(line: 1192, column: 7, scope: !2225)
!2355 = !DILocation(line: 1193, column: 5, scope: !2253)
!2356 = !DILocation(line: 0, scope: !2253)
!2357 = !DILocation(line: 1195, column: 26, scope: !2225)
!2358 = !DILocation(line: 1196, column: 3, scope: !2225)
!2359 = !DILocation(line: 1197, column: 1, scope: !2225)
!2360 = distinct !DISubprogram(name: "GetBlobError", scope: !754, file: !754, line: 1222, type: !2361, scopeLine: 1223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!628, !817}
!2363 = !{!2364}
!2364 = !DILocalVariable(name: "image", arg: 1, scope: !2360, file: !754, line: 1222, type: !817)
!2365 = !DILocation(line: 0, scope: !2360)
!2366 = !DILocation(line: 1226, column: 14, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2360, file: !754, line: 1226, column: 7)
!2368 = !DILocation(line: 1226, column: 20, scope: !2367)
!2369 = !DILocation(line: 1226, column: 7, scope: !2360)
!2370 = !DILocation(line: 1227, column: 68, scope: !2367)
!2371 = !DILocation(line: 1227, column: 12, scope: !2367)
!2372 = !DILocation(line: 1227, column: 5, scope: !2367)
!2373 = !DILocation(line: 1228, column: 17, scope: !2360)
!2374 = !DILocation(line: 1228, column: 23, scope: !2360)
!2375 = !DILocation(line: 1228, column: 3, scope: !2360)
!2376 = distinct !DISubprogram(name: "GetBlobFileHandle", scope: !754, file: !754, line: 1253, type: !2377, scopeLine: 1254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!546, !817}
!2379 = !{!2380}
!2380 = !DILocalVariable(name: "image", arg: 1, scope: !2376, file: !754, line: 1253, type: !817)
!2381 = !DILocation(line: 0, scope: !2376)
!2382 = !DILocation(line: 1257, column: 17, scope: !2376)
!2383 = !DILocation(line: 1257, column: 23, scope: !2376)
!2384 = !DILocation(line: 1257, column: 33, scope: !2376)
!2385 = !DILocation(line: 1257, column: 3, scope: !2376)
!2386 = !DISubprogram(name: "ResetMagickMemory", scope: !1511, file: !1511, line: 52, type: !2387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!599, !599, !553, !819}
!2389 = !DISubprogram(name: "time", scope: !2390, file: !2390, line: 75, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2390 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!885, !1007}
!2393 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !825, file: !825, line: 32, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!823}
!2396 = distinct !DISubprogram(name: "GetBlobProperties", scope: !754, file: !754, line: 1318, type: !2397, scopeLine: 1319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2401)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!2399, !817}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!2401 = !{!2402}
!2402 = !DILocalVariable(name: "image", arg: 1, scope: !2396, file: !754, line: 1318, type: !817)
!2403 = !DILocation(line: 0, scope: !2396)
!2404 = !DILocation(line: 1322, column: 14, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2396, file: !754, line: 1322, column: 7)
!2406 = !DILocation(line: 1322, column: 20, scope: !2405)
!2407 = !DILocation(line: 1322, column: 7, scope: !2396)
!2408 = !DILocation(line: 1323, column: 68, scope: !2405)
!2409 = !DILocation(line: 1323, column: 12, scope: !2405)
!2410 = !DILocation(line: 1323, column: 5, scope: !2405)
!2411 = !DILocation(line: 1324, column: 18, scope: !2396)
!2412 = !DILocation(line: 1324, column: 24, scope: !2396)
!2413 = !DILocation(line: 1324, column: 3, scope: !2396)
!2414 = !DISubprogram(name: "GetPathAttributes", scope: !531, file: !531, line: 51, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!628, !608, !599}
!2417 = distinct !DISubprogram(name: "GetBlobStreamData", scope: !754, file: !754, line: 1428, type: !2418, scopeLine: 1429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!606, !817}
!2420 = !{!2421}
!2421 = !DILocalVariable(name: "image", arg: 1, scope: !2417, file: !754, line: 1428, type: !817)
!2422 = !DILocation(line: 0, scope: !2417)
!2423 = !DILocation(line: 1432, column: 17, scope: !2417)
!2424 = !DILocation(line: 1432, column: 23, scope: !2417)
!2425 = !DILocation(line: 1432, column: 3, scope: !2417)
!2426 = distinct !DISubprogram(name: "GetBlobStreamHandler", scope: !754, file: !754, line: 1457, type: !2427, scopeLine: 1458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!812, !817}
!2429 = !{!2430}
!2430 = !DILocalVariable(name: "image", arg: 1, scope: !2426, file: !754, line: 1457, type: !817)
!2431 = !DILocation(line: 0, scope: !2426)
!2432 = !DILocation(line: 1461, column: 14, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !754, line: 1461, column: 7)
!2434 = !DILocation(line: 1461, column: 20, scope: !2433)
!2435 = !DILocation(line: 1461, column: 7, scope: !2426)
!2436 = !DILocation(line: 1462, column: 68, scope: !2433)
!2437 = !DILocation(line: 1462, column: 12, scope: !2433)
!2438 = !DILocation(line: 1462, column: 5, scope: !2433)
!2439 = !DILocation(line: 1463, column: 17, scope: !2426)
!2440 = !DILocation(line: 1463, column: 23, scope: !2426)
!2441 = !DILocation(line: 1463, column: 3, scope: !2426)
!2442 = distinct !DISubprogram(name: "ImageToBlob", scope: !754, file: !754, line: 1499, type: !2443, scopeLine: 1501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!606, !975, !614, !2011, !977}
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2457, !2458}
!2446 = !DILocalVariable(name: "image_info", arg: 1, scope: !2442, file: !754, line: 1499, type: !975)
!2447 = !DILocalVariable(name: "image", arg: 2, scope: !2442, file: !754, line: 1500, type: !614)
!2448 = !DILocalVariable(name: "length", arg: 3, scope: !2442, file: !754, line: 1500, type: !2011)
!2449 = !DILocalVariable(name: "exception", arg: 4, scope: !2442, file: !754, line: 1500, type: !977)
!2450 = !DILocalVariable(name: "magick_info", scope: !2442, file: !754, line: 1503, type: !890)
!2451 = !DILocalVariable(name: "blob_info", scope: !2442, file: !754, line: 1506, type: !901)
!2452 = !DILocalVariable(name: "status", scope: !2442, file: !754, line: 1509, type: !628)
!2453 = !DILocalVariable(name: "blob", scope: !2442, file: !754, line: 1512, type: !606)
!2454 = !DILocalVariable(name: "unique", scope: !2455, file: !754, line: 1569, type: !830)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !754, line: 1567, column: 5)
!2456 = distinct !DILexicalBlock(scope: !2442, file: !754, line: 1539, column: 7)
!2457 = !DILocalVariable(name: "file", scope: !2455, file: !754, line: 1572, type: !553)
!2458 = !DILocalVariable(name: "message", scope: !2459, file: !754, line: 1580, type: !555)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !754, line: 1580, column: 11)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !754, line: 1579, column: 9)
!2461 = distinct !DILexicalBlock(scope: !2455, file: !754, line: 1578, column: 11)
!2462 = !DILocation(line: 0, scope: !2442)
!2463 = !DILocation(line: 1516, column: 19, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2442, file: !754, line: 1516, column: 7)
!2465 = !DILocation(line: 1516, column: 25, scope: !2464)
!2466 = !DILocation(line: 1516, column: 7, scope: !2442)
!2467 = !DILocation(line: 1518, column: 19, scope: !2464)
!2468 = !DILocation(line: 1517, column: 12, scope: !2464)
!2469 = !DILocation(line: 1517, column: 5, scope: !2464)
!2470 = !DILocation(line: 1522, column: 10, scope: !2442)
!2471 = !DILocation(line: 1524, column: 13, scope: !2442)
!2472 = !DILocation(line: 1525, column: 14, scope: !2442)
!2473 = !DILocation(line: 1525, column: 20, scope: !2442)
!2474 = !{!1197, !1030, i64 12}
!2475 = !DILocation(line: 1526, column: 10, scope: !2442)
!2476 = !DILocation(line: 1527, column: 19, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2442, file: !754, line: 1527, column: 7)
!2478 = !DILocation(line: 1527, column: 7, scope: !2477)
!2479 = !DILocation(line: 1527, column: 26, scope: !2477)
!2480 = !DILocation(line: 1527, column: 7, scope: !2442)
!2481 = !DILocation(line: 1528, column: 36, scope: !2477)
!2482 = !DILocation(line: 1528, column: 12, scope: !2477)
!2483 = !DILocation(line: 1528, column: 5, scope: !2477)
!2484 = !DILocation(line: 1529, column: 36, scope: !2442)
!2485 = !DILocation(line: 1529, column: 15, scope: !2442)
!2486 = !DILocation(line: 1530, column: 19, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2442, file: !754, line: 1530, column: 7)
!2488 = !DILocation(line: 1530, column: 7, scope: !2442)
!2489 = !DILocation(line: 1532, column: 14, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !754, line: 1531, column: 5)
!2491 = !DILocation(line: 1535, column: 17, scope: !2490)
!2492 = !DILocation(line: 1536, column: 7, scope: !2490)
!2493 = !DILocation(line: 1538, column: 10, scope: !2442)
!2494 = !DILocation(line: 1539, column: 7, scope: !2456)
!2495 = !DILocation(line: 1539, column: 41, scope: !2456)
!2496 = !DILocation(line: 1539, column: 7, scope: !2442)
!2497 = !DILocation(line: 1544, column: 18, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2456, file: !754, line: 1540, column: 5)
!2499 = !DILocation(line: 1544, column: 24, scope: !2498)
!2500 = !DILocation(line: 1545, column: 32, scope: !2498)
!2501 = !DILocation(line: 1545, column: 18, scope: !2498)
!2502 = !DILocation(line: 1545, column: 22, scope: !2498)
!2503 = !DILocation(line: 1547, column: 27, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2498, file: !754, line: 1547, column: 11)
!2505 = !DILocation(line: 1547, column: 11, scope: !2498)
!2506 = !DILocation(line: 1549, column: 69, scope: !2504)
!2507 = !DILocation(line: 1548, column: 16, scope: !2504)
!2508 = !DILocation(line: 1548, column: 9, scope: !2504)
!2509 = !DILocation(line: 1552, column: 18, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2504, file: !754, line: 1551, column: 9)
!2511 = !DILocation(line: 1553, column: 18, scope: !2510)
!2512 = !DILocation(line: 1553, column: 24, scope: !2510)
!2513 = !DILocation(line: 1553, column: 30, scope: !2510)
!2514 = !DILocation(line: 1554, column: 19, scope: !2510)
!2515 = !DILocation(line: 1554, column: 27, scope: !2510)
!2516 = !DILocation(line: 1555, column: 18, scope: !2510)
!2517 = !DILocation(line: 1556, column: 46, scope: !2510)
!2518 = !DILocation(line: 1556, column: 11, scope: !2510)
!2519 = !DILocation(line: 1557, column: 26, scope: !2510)
!2520 = !DILocation(line: 1557, column: 32, scope: !2510)
!2521 = !DILocation(line: 1557, column: 18, scope: !2510)
!2522 = !DILocation(line: 0, scope: !1260, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 1558, column: 16, scope: !2510)
!2524 = !DILocation(line: 690, column: 18, scope: !1268, inlinedAt: !2523)
!2525 = !DILocation(line: 690, column: 24, scope: !1268, inlinedAt: !2523)
!2526 = !DILocation(line: 690, column: 7, scope: !1260, inlinedAt: !2523)
!2527 = !DILocation(line: 691, column: 12, scope: !1268, inlinedAt: !2523)
!2528 = !DILocation(line: 691, column: 5, scope: !1268, inlinedAt: !2523)
!2529 = !DILocation(line: 692, column: 18, scope: !1274, inlinedAt: !2523)
!2530 = !DILocation(line: 692, column: 25, scope: !1274, inlinedAt: !2523)
!2531 = !DILocation(line: 692, column: 7, scope: !1260, inlinedAt: !2523)
!2532 = !DILocation(line: 694, column: 35, scope: !1278, inlinedAt: !2523)
!2533 = !DILocation(line: 695, column: 22, scope: !1278, inlinedAt: !2523)
!2534 = !DILocation(line: 696, column: 55, scope: !1278, inlinedAt: !2523)
!2535 = !DILocation(line: 696, column: 7, scope: !1278, inlinedAt: !2523)
!2536 = !DILocation(line: 697, column: 5, scope: !1278, inlinedAt: !2523)
!2537 = !DILocation(line: 699, column: 20, scope: !1260, inlinedAt: !2523)
!2538 = !DILocation(line: 702, column: 14, scope: !1260, inlinedAt: !2523)
!2539 = !DILocation(line: 702, column: 20, scope: !1260, inlinedAt: !2523)
!2540 = !DILocation(line: 703, column: 14, scope: !1260, inlinedAt: !2523)
!2541 = !DILocation(line: 703, column: 18, scope: !1260, inlinedAt: !2523)
!2542 = !DILocation(line: 704, column: 14, scope: !1260, inlinedAt: !2523)
!2543 = !DILocation(line: 704, column: 28, scope: !1260, inlinedAt: !2523)
!2544 = !DILocation(line: 705, column: 19, scope: !1260, inlinedAt: !2523)
!2545 = !DILocation(line: 700, column: 20, scope: !1260, inlinedAt: !2523)
!2546 = !DILocation(line: 707, column: 14, scope: !1260, inlinedAt: !2523)
!2547 = !DILocation(line: 707, column: 20, scope: !1260, inlinedAt: !2523)
!2548 = !DILocation(line: 1559, column: 22, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2510, file: !754, line: 1559, column: 15)
!2550 = !DILocation(line: 1559, column: 15, scope: !2510)
!2551 = !DILocation(line: 1560, column: 36, scope: !2549)
!2552 = !DILocation(line: 1560, column: 13, scope: !2549)
!2553 = !DILocation(line: 1562, column: 61, scope: !2549)
!2554 = !DILocation(line: 1562, column: 68, scope: !2549)
!2555 = !DILocation(line: 1562, column: 36, scope: !2549)
!2556 = !DILocation(line: 1568, column: 7, scope: !2455)
!2557 = !DILocation(line: 1569, column: 9, scope: !2455)
!2558 = !DILocation(line: 1577, column: 12, scope: !2455)
!2559 = !DILocation(line: 0, scope: !2455)
!2560 = !DILocation(line: 1578, column: 16, scope: !2461)
!2561 = !DILocation(line: 1578, column: 11, scope: !2455)
!2562 = !DILocation(line: 1580, column: 11, scope: !2459)
!2563 = !DILocation(line: 0, scope: !2459)
!2564 = !DILocation(line: 1582, column: 9, scope: !2460)
!2565 = !DILocation(line: 1585, column: 27, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2461, file: !754, line: 1584, column: 9)
!2567 = !DILocation(line: 1585, column: 22, scope: !2566)
!2568 = !DILocation(line: 1585, column: 26, scope: !2566)
!2569 = !{!1197, !1036, i64 304}
!2570 = !DILocation(line: 1586, column: 31, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2566, file: !754, line: 1586, column: 15)
!2572 = !DILocation(line: 1586, column: 15, scope: !2566)
!2573 = !DILocation(line: 1588, column: 48, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2571, file: !754, line: 1587, column: 13)
!2575 = !DILocation(line: 1588, column: 22, scope: !2574)
!2576 = !DILocation(line: 1590, column: 22, scope: !2574)
!2577 = !DILocation(line: 1591, column: 22, scope: !2574)
!2578 = !DILocation(line: 1592, column: 40, scope: !2574)
!2579 = !DILocation(line: 1592, column: 22, scope: !2574)
!2580 = !DILocation(line: 1593, column: 26, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2574, file: !754, line: 1593, column: 19)
!2582 = !DILocation(line: 1593, column: 19, scope: !2574)
!2583 = !DILocation(line: 1594, column: 52, scope: !2581)
!2584 = !DILocation(line: 1594, column: 17, scope: !2581)
!2585 = !DILocation(line: 1596, column: 22, scope: !2581)
!2586 = !DILocation(line: 1598, column: 18, scope: !2566)
!2587 = !DILocation(line: 1523, column: 7, scope: !2442)
!2588 = !DILocation(line: 1600, column: 5, scope: !2456)
!2589 = !DILocation(line: 1601, column: 13, scope: !2442)
!2590 = !DILocation(line: 1602, column: 3, scope: !2442)
!2591 = !DILocation(line: 1603, column: 1, scope: !2442)
!2592 = !DISubprogram(name: "WriteImage", scope: !1357, file: !1357, line: 47, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2593 = !DISubprogram(name: "InheritException", scope: !264, file: !264, line: 167, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !977, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!2598 = !DISubprogram(name: "fdopen", scope: !673, file: !673, line: 279, type: !2599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!546, !553, !608}
!2601 = distinct !DISubprogram(name: "ImageToFile", scope: !754, file: !754, line: 1633, type: !2602, scopeLine: 1635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!628, !614, !555, !977}
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2620}
!2605 = !DILocalVariable(name: "image", arg: 1, scope: !2601, file: !754, line: 1633, type: !614)
!2606 = !DILocalVariable(name: "filename", arg: 2, scope: !2601, file: !754, line: 1633, type: !555)
!2607 = !DILocalVariable(name: "exception", arg: 3, scope: !2601, file: !754, line: 1634, type: !977)
!2608 = !DILocalVariable(name: "file", scope: !2601, file: !754, line: 1637, type: !553)
!2609 = !DILocalVariable(name: "p", scope: !2601, file: !754, line: 1640, type: !988)
!2610 = !DILocalVariable(name: "i", scope: !2601, file: !754, line: 1643, type: !544)
!2611 = !DILocalVariable(name: "length", scope: !2601, file: !754, line: 1646, type: !544)
!2612 = !DILocalVariable(name: "quantum", scope: !2601, file: !754, line: 1647, type: !544)
!2613 = !DILocalVariable(name: "count", scope: !2601, file: !754, line: 1650, type: !672)
!2614 = !DILocalVariable(name: "file_stats", scope: !2601, file: !754, line: 1653, type: !775)
!2615 = !DILocalVariable(name: "buffer", scope: !2601, file: !754, line: 1656, type: !606)
!2616 = !DILocalVariable(name: "message", scope: !2617, file: !754, line: 1674, type: !555)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !754, line: 1674, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !754, line: 1673, column: 5)
!2619 = distinct !DILexicalBlock(scope: !2601, file: !754, line: 1672, column: 7)
!2620 = !DILocalVariable(name: "message", scope: !2621, file: !754, line: 1714, type: !555)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !754, line: 1714, column: 7)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !754, line: 1711, column: 5)
!2623 = distinct !DILexicalBlock(scope: !2601, file: !754, line: 1710, column: 7)
!2624 = !DILocation(line: 0, scope: !2601)
!2625 = !DILocation(line: 1652, column: 3, scope: !2601)
!2626 = !DILocation(line: 1653, column: 5, scope: !2601)
!2627 = !DILocation(line: 1662, column: 14, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2601, file: !754, line: 1662, column: 7)
!2629 = !DILocation(line: 1662, column: 20, scope: !2628)
!2630 = !DILocation(line: 1662, column: 7, scope: !2601)
!2631 = !DILocation(line: 1663, column: 12, scope: !2628)
!2632 = !DILocation(line: 1663, column: 5, scope: !2628)
!2633 = !DILocation(line: 1665, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2601, file: !754, line: 1665, column: 7)
!2635 = !DILocation(line: 1665, column: 17, scope: !2634)
!2636 = !DILocation(line: 1665, column: 7, scope: !2601)
!2637 = !DILocation(line: 1666, column: 10, scope: !2634)
!2638 = !DILocation(line: 1666, column: 5, scope: !2634)
!2639 = !DILocation(line: 1668, column: 9, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2634, file: !754, line: 1668, column: 9)
!2641 = !DILocation(line: 1668, column: 37, scope: !2640)
!2642 = !DILocation(line: 1668, column: 9, scope: !2634)
!2643 = !DILocation(line: 1669, column: 19, scope: !2640)
!2644 = !DILocation(line: 1669, column: 12, scope: !2640)
!2645 = !DILocation(line: 1669, column: 7, scope: !2640)
!2646 = !DILocation(line: 0, scope: !1099, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1671, column: 12, scope: !2640)
!2648 = !DILocation(line: 139, column: 10, scope: !1099, inlinedAt: !2647)
!2649 = !DILocation(line: 0, scope: !2634)
!2650 = !DILocation(line: 1672, column: 12, scope: !2619)
!2651 = !DILocation(line: 1672, column: 7, scope: !2601)
!2652 = !DILocation(line: 1674, column: 7, scope: !2617)
!2653 = !DILocation(line: 0, scope: !2617)
!2654 = !DILocation(line: 1675, column: 7, scope: !2618)
!2655 = !DILocation(line: 0, scope: !1743, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1678, column: 8, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2601, file: !754, line: 1678, column: 7)
!2658 = !DILocation(line: 469, column: 10, scope: !1743, inlinedAt: !2656)
!2659 = !DILocation(line: 1678, column: 32, scope: !2657)
!2660 = !DILocation(line: 1678, column: 38, scope: !2657)
!2661 = !DILocation(line: 1681, column: 28, scope: !2601)
!2662 = !DILocation(line: 1682, column: 14, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2601, file: !754, line: 1682, column: 7)
!2664 = !DILocation(line: 1682, column: 7, scope: !2601)
!2665 = !DILocation(line: 1684, column: 12, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !754, line: 1683, column: 5)
!2667 = !DILocation(line: 1685, column: 14, scope: !2666)
!2668 = !DILocation(line: 1687, column: 7, scope: !2666)
!2669 = !DILocation(line: 0, scope: !1866, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 1690, column: 5, scope: !2601)
!2671 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !2670)
!2672 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !2670)
!2673 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !2670)
!2674 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !2670)
!2675 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !2670)
!2676 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !2670)
!2677 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !2670)
!2678 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !2670)
!2679 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !2670)
!2680 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !2670)
!2681 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !2670)
!2682 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !2670)
!2683 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !2670)
!2684 = !DILocation(line: 0, scope: !1126, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !2670)
!2686 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !2670)
!2687 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !2670)
!2688 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !2670)
!2689 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !2670)
!2690 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !2670)
!2691 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !2670)
!2692 = !DILocation(line: 1691, column: 19, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !754, line: 1691, column: 3)
!2694 = distinct !DILexicalBlock(scope: !2601, file: !754, line: 1691, column: 3)
!2695 = !DILocation(line: 1691, column: 3, scope: !2694)
!2696 = !DILocation(line: 1694, column: 5, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !754, line: 1694, column: 5)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !754, line: 1692, column: 3)
!2699 = !DILocation(line: 1696, column: 25, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !754, line: 1695, column: 5)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !754, line: 1694, column: 5)
!2702 = !DILocation(line: 1696, column: 44, scope: !2700)
!2703 = !DILocation(line: 1696, column: 13, scope: !2700)
!2704 = !DILocation(line: 1697, column: 17, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2700, file: !754, line: 1697, column: 11)
!2706 = !DILocation(line: 1697, column: 11, scope: !2700)
!2707 = !DILocation(line: 1700, column: 15, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !754, line: 1700, column: 15)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !754, line: 1698, column: 9)
!2710 = !DILocation(line: 1700, column: 21, scope: !2708)
!2711 = !DILocation(line: 1700, column: 15, scope: !2709)
!2712 = !DILocation(line: 0, scope: !2700)
!2713 = !DILocation(line: 1694, column: 28, scope: !2701)
!2714 = !DILocation(line: 1694, column: 17, scope: !2701)
!2715 = distinct !{!2715, !2696, !2716, !1148, !1149}
!2716 = !DILocation(line: 1703, column: 5, scope: !2697)
!2717 = !DILocation(line: 0, scope: !1866, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1691, column: 26, scope: !2693)
!2719 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !2718)
!2720 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !2718)
!2721 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !2718)
!2722 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !2718)
!2723 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !2718)
!2724 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !2718)
!2725 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !2718)
!2726 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !2718)
!2727 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !2718)
!2728 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !2718)
!2729 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !2718)
!2730 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !2718)
!2731 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !2718)
!2732 = !DILocation(line: 0, scope: !1126, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !2718)
!2734 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !2718)
!2735 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !2718)
!2736 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !2718)
!2737 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !2718)
!2738 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !2718)
!2739 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !2718)
!2740 = distinct !{!2740, !2695, !2741, !1148, !1149}
!2741 = !DILocation(line: 1706, column: 3, scope: !2694)
!2742 = !DILocation(line: 1707, column: 7, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2601, file: !754, line: 1707, column: 7)
!2744 = !DILocation(line: 0, scope: !2694)
!2745 = !DILocation(line: 1707, column: 35, scope: !2743)
!2746 = !DILocation(line: 1707, column: 7, scope: !2601)
!2747 = !DILocation(line: 1708, column: 10, scope: !2743)
!2748 = !DILocation(line: 1708, column: 5, scope: !2743)
!2749 = !DILocation(line: 1709, column: 28, scope: !2601)
!2750 = !DILocation(line: 1710, column: 13, scope: !2623)
!2751 = !DILocation(line: 1710, column: 20, scope: !2623)
!2752 = !DILocation(line: 1712, column: 11, scope: !2622)
!2753 = !DILocation(line: 1713, column: 14, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2622, file: !754, line: 1712, column: 11)
!2755 = !DILocation(line: 1713, column: 9, scope: !2754)
!2756 = !DILocation(line: 1714, column: 7, scope: !2621)
!2757 = !DILocation(line: 0, scope: !2621)
!2758 = !DILocation(line: 1715, column: 7, scope: !2622)
!2759 = !DILocation(line: 1718, column: 1, scope: !2601)
!2760 = distinct !DISubprogram(name: "ImagesToBlob", scope: !754, file: !754, line: 1755, type: !2443, scopeLine: 1757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2761)
!2761 = !{!2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2773, !2774, !2775}
!2762 = !DILocalVariable(name: "image_info", arg: 1, scope: !2760, file: !754, line: 1755, type: !975)
!2763 = !DILocalVariable(name: "images", arg: 2, scope: !2760, file: !754, line: 1756, type: !614)
!2764 = !DILocalVariable(name: "length", arg: 3, scope: !2760, file: !754, line: 1756, type: !2011)
!2765 = !DILocalVariable(name: "exception", arg: 4, scope: !2760, file: !754, line: 1756, type: !977)
!2766 = !DILocalVariable(name: "magick_info", scope: !2760, file: !754, line: 1759, type: !890)
!2767 = !DILocalVariable(name: "blob_info", scope: !2760, file: !754, line: 1762, type: !901)
!2768 = !DILocalVariable(name: "status", scope: !2760, file: !754, line: 1765, type: !628)
!2769 = !DILocalVariable(name: "blob", scope: !2760, file: !754, line: 1768, type: !606)
!2770 = !DILocalVariable(name: "filename", scope: !2771, file: !754, line: 1829, type: !830)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !754, line: 1827, column: 5)
!2772 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 1800, column: 7)
!2773 = !DILocalVariable(name: "unique", scope: !2771, file: !754, line: 1830, type: !830)
!2774 = !DILocalVariable(name: "file", scope: !2771, file: !754, line: 1833, type: !553)
!2775 = !DILocalVariable(name: "message", scope: !2776, file: !754, line: 1841, type: !555)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !754, line: 1841, column: 11)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !754, line: 1840, column: 9)
!2778 = distinct !DILexicalBlock(scope: !2771, file: !754, line: 1839, column: 11)
!2779 = !DILocation(line: 0, scope: !2760)
!2780 = !DILocation(line: 1772, column: 19, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 1772, column: 7)
!2782 = !DILocation(line: 1772, column: 25, scope: !2781)
!2783 = !DILocation(line: 1772, column: 7, scope: !2760)
!2784 = !DILocation(line: 1774, column: 19, scope: !2781)
!2785 = !DILocation(line: 1773, column: 12, scope: !2781)
!2786 = !DILocation(line: 1773, column: 5, scope: !2781)
!2787 = !DILocation(line: 1778, column: 10, scope: !2760)
!2788 = !DILocation(line: 1780, column: 13, scope: !2760)
!2789 = !DILocation(line: 1781, column: 48, scope: !2760)
!2790 = !DILocation(line: 1781, column: 33, scope: !2760)
!2791 = !DILocation(line: 1781, column: 10, scope: !2760)
!2792 = !DILocation(line: 1783, column: 19, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 1783, column: 7)
!2794 = !DILocation(line: 1783, column: 7, scope: !2793)
!2795 = !DILocation(line: 1783, column: 26, scope: !2793)
!2796 = !DILocation(line: 1783, column: 7, scope: !2760)
!2797 = !DILocation(line: 1784, column: 37, scope: !2793)
!2798 = !DILocation(line: 1784, column: 12, scope: !2793)
!2799 = !DILocation(line: 1784, column: 5, scope: !2793)
!2800 = !DILocation(line: 1785, column: 37, scope: !2760)
!2801 = !DILocation(line: 1785, column: 15, scope: !2760)
!2802 = !DILocation(line: 1786, column: 19, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 1786, column: 7)
!2804 = !DILocation(line: 1786, column: 7, scope: !2760)
!2805 = !DILocation(line: 1788, column: 14, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !754, line: 1787, column: 5)
!2807 = !DILocation(line: 1791, column: 17, scope: !2806)
!2808 = !DILocation(line: 1792, column: 7, scope: !2806)
!2809 = !DILocation(line: 1794, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 1794, column: 7)
!2811 = !DILocation(line: 1794, column: 36, scope: !2810)
!2812 = !DILocation(line: 1794, column: 7, scope: !2760)
!2813 = !DILocation(line: 1796, column: 17, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !754, line: 1795, column: 5)
!2815 = !DILocation(line: 1797, column: 14, scope: !2814)
!2816 = !DILocation(line: 1797, column: 7, scope: !2814)
!2817 = !DILocation(line: 1799, column: 10, scope: !2760)
!2818 = !DILocation(line: 1800, column: 7, scope: !2772)
!2819 = !DILocation(line: 1800, column: 41, scope: !2772)
!2820 = !DILocation(line: 1800, column: 7, scope: !2760)
!2821 = !DILocation(line: 1805, column: 18, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2772, file: !754, line: 1801, column: 5)
!2823 = !DILocation(line: 1805, column: 24, scope: !2822)
!2824 = !DILocation(line: 1806, column: 32, scope: !2822)
!2825 = !DILocation(line: 1806, column: 18, scope: !2822)
!2826 = !DILocation(line: 1806, column: 22, scope: !2822)
!2827 = !DILocation(line: 1808, column: 27, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2822, file: !754, line: 1808, column: 11)
!2829 = !DILocation(line: 1808, column: 11, scope: !2822)
!2830 = !DILocation(line: 1810, column: 70, scope: !2828)
!2831 = !DILocation(line: 1809, column: 16, scope: !2828)
!2832 = !DILocation(line: 1809, column: 9, scope: !2828)
!2833 = !DILocation(line: 1813, column: 18, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2828, file: !754, line: 1812, column: 9)
!2835 = !DILocation(line: 1814, column: 19, scope: !2834)
!2836 = !DILocation(line: 1814, column: 25, scope: !2834)
!2837 = !DILocation(line: 1814, column: 31, scope: !2834)
!2838 = !DILocation(line: 1815, column: 20, scope: !2834)
!2839 = !DILocation(line: 1815, column: 28, scope: !2834)
!2840 = !DILocation(line: 1816, column: 18, scope: !2834)
!2841 = !DILocation(line: 1817, column: 27, scope: !2834)
!2842 = !DILocation(line: 1817, column: 33, scope: !2834)
!2843 = !DILocation(line: 1817, column: 18, scope: !2834)
!2844 = !DILocation(line: 0, scope: !1260, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 1818, column: 16, scope: !2834)
!2846 = !DILocation(line: 690, column: 18, scope: !1268, inlinedAt: !2845)
!2847 = !DILocation(line: 690, column: 24, scope: !1268, inlinedAt: !2845)
!2848 = !DILocation(line: 690, column: 7, scope: !1260, inlinedAt: !2845)
!2849 = !DILocation(line: 691, column: 12, scope: !1268, inlinedAt: !2845)
!2850 = !DILocation(line: 691, column: 5, scope: !1268, inlinedAt: !2845)
!2851 = !DILocation(line: 692, column: 18, scope: !1274, inlinedAt: !2845)
!2852 = !DILocation(line: 692, column: 25, scope: !1274, inlinedAt: !2845)
!2853 = !DILocation(line: 692, column: 7, scope: !1260, inlinedAt: !2845)
!2854 = !DILocation(line: 694, column: 35, scope: !1278, inlinedAt: !2845)
!2855 = !DILocation(line: 695, column: 22, scope: !1278, inlinedAt: !2845)
!2856 = !DILocation(line: 696, column: 55, scope: !1278, inlinedAt: !2845)
!2857 = !DILocation(line: 696, column: 7, scope: !1278, inlinedAt: !2845)
!2858 = !DILocation(line: 697, column: 5, scope: !1278, inlinedAt: !2845)
!2859 = !DILocation(line: 699, column: 20, scope: !1260, inlinedAt: !2845)
!2860 = !DILocation(line: 702, column: 14, scope: !1260, inlinedAt: !2845)
!2861 = !DILocation(line: 702, column: 20, scope: !1260, inlinedAt: !2845)
!2862 = !DILocation(line: 703, column: 14, scope: !1260, inlinedAt: !2845)
!2863 = !DILocation(line: 703, column: 18, scope: !1260, inlinedAt: !2845)
!2864 = !DILocation(line: 704, column: 14, scope: !1260, inlinedAt: !2845)
!2865 = !DILocation(line: 704, column: 28, scope: !1260, inlinedAt: !2845)
!2866 = !DILocation(line: 705, column: 19, scope: !1260, inlinedAt: !2845)
!2867 = !DILocation(line: 700, column: 20, scope: !1260, inlinedAt: !2845)
!2868 = !DILocation(line: 707, column: 14, scope: !1260, inlinedAt: !2845)
!2869 = !DILocation(line: 707, column: 20, scope: !1260, inlinedAt: !2845)
!2870 = !DILocation(line: 1819, column: 22, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2834, file: !754, line: 1819, column: 15)
!2872 = !DILocation(line: 1819, column: 15, scope: !2834)
!2873 = !DILocation(line: 1820, column: 36, scope: !2871)
!2874 = !DILocation(line: 1820, column: 13, scope: !2871)
!2875 = !DILocation(line: 1822, column: 61, scope: !2871)
!2876 = !DILocation(line: 1822, column: 68, scope: !2871)
!2877 = !DILocation(line: 1822, column: 36, scope: !2871)
!2878 = !DILocation(line: 1828, column: 7, scope: !2771)
!2879 = !DILocation(line: 1829, column: 9, scope: !2771)
!2880 = !DILocation(line: 1830, column: 9, scope: !2771)
!2881 = !DILocation(line: 1838, column: 12, scope: !2771)
!2882 = !DILocation(line: 0, scope: !2771)
!2883 = !DILocation(line: 1839, column: 16, scope: !2778)
!2884 = !DILocation(line: 1839, column: 11, scope: !2771)
!2885 = !DILocation(line: 1841, column: 11, scope: !2776)
!2886 = !DILocation(line: 0, scope: !2776)
!2887 = !DILocation(line: 1843, column: 9, scope: !2777)
!2888 = !DILocation(line: 1846, column: 27, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2778, file: !754, line: 1845, column: 9)
!2890 = !DILocation(line: 1846, column: 22, scope: !2889)
!2891 = !DILocation(line: 1846, column: 26, scope: !2889)
!2892 = !DILocation(line: 1847, column: 31, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2889, file: !754, line: 1847, column: 15)
!2894 = !DILocation(line: 1847, column: 15, scope: !2889)
!2895 = !DILocation(line: 1849, column: 22, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !754, line: 1848, column: 13)
!2897 = !DILocation(line: 1851, column: 22, scope: !2896)
!2898 = !DILocation(line: 1852, column: 22, scope: !2896)
!2899 = !DILocation(line: 1853, column: 40, scope: !2896)
!2900 = !DILocation(line: 1853, column: 22, scope: !2896)
!2901 = !DILocation(line: 1854, column: 26, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2896, file: !754, line: 1854, column: 19)
!2903 = !DILocation(line: 1854, column: 19, scope: !2896)
!2904 = !DILocation(line: 1855, column: 53, scope: !2902)
!2905 = !DILocation(line: 1855, column: 17, scope: !2902)
!2906 = !DILocation(line: 1857, column: 22, scope: !2902)
!2907 = !DILocation(line: 1859, column: 18, scope: !2889)
!2908 = !DILocation(line: 1779, column: 7, scope: !2760)
!2909 = !DILocation(line: 1861, column: 5, scope: !2772)
!2910 = !DILocation(line: 1862, column: 13, scope: !2760)
!2911 = !DILocation(line: 1863, column: 3, scope: !2760)
!2912 = !DILocation(line: 1864, column: 1, scope: !2760)
!2913 = !DISubprogram(name: "GetImageListLength", scope: !1394, file: !1394, line: 45, type: !2914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!544, !817}
!2916 = !DISubprogram(name: "GetMagickAdjoin", scope: !481, file: !481, line: 124, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2917 = !DISubprogram(name: "WriteImages", scope: !1357, file: !1357, line: 48, type: !2918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!628, !975, !614, !608, !977}
!2920 = distinct !DISubprogram(name: "InjectImageBlob", scope: !754, file: !754, line: 1898, type: !2921, scopeLine: 1900, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!628, !975, !614, !614, !608, !977}
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2944, !2948}
!2924 = !DILocalVariable(name: "image_info", arg: 1, scope: !2920, file: !754, line: 1898, type: !975)
!2925 = !DILocalVariable(name: "image", arg: 2, scope: !2920, file: !754, line: 1899, type: !614)
!2926 = !DILocalVariable(name: "inject_image", arg: 3, scope: !2920, file: !754, line: 1899, type: !614)
!2927 = !DILocalVariable(name: "format", arg: 4, scope: !2920, file: !754, line: 1899, type: !608)
!2928 = !DILocalVariable(name: "exception", arg: 5, scope: !2920, file: !754, line: 1899, type: !977)
!2929 = !DILocalVariable(name: "filename", scope: !2920, file: !754, line: 1902, type: !830)
!2930 = !DILocalVariable(name: "unique_file", scope: !2920, file: !754, line: 1905, type: !546)
!2931 = !DILocalVariable(name: "byte_image", scope: !2920, file: !754, line: 1908, type: !614)
!2932 = !DILocalVariable(name: "write_info", scope: !2920, file: !754, line: 1911, type: !901)
!2933 = !DILocalVariable(name: "file", scope: !2920, file: !754, line: 1914, type: !553)
!2934 = !DILocalVariable(name: "status", scope: !2920, file: !754, line: 1917, type: !628)
!2935 = !DILocalVariable(name: "i", scope: !2920, file: !754, line: 1920, type: !672)
!2936 = !DILocalVariable(name: "quantum", scope: !2920, file: !754, line: 1923, type: !544)
!2937 = !DILocalVariable(name: "count", scope: !2920, file: !754, line: 1926, type: !672)
!2938 = !DILocalVariable(name: "file_stats", scope: !2920, file: !754, line: 1929, type: !775)
!2939 = !DILocalVariable(name: "buffer", scope: !2920, file: !754, line: 1932, type: !606)
!2940 = !DILocalVariable(name: "message", scope: !2941, file: !754, line: 1953, type: !555)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !754, line: 1953, column: 7)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !754, line: 1951, column: 5)
!2943 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 1950, column: 7)
!2944 = !DILocalVariable(name: "message", scope: !2945, file: !754, line: 1986, type: !555)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !754, line: 1986, column: 7)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !754, line: 1984, column: 5)
!2947 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 1983, column: 7)
!2948 = !DILocalVariable(name: "message", scope: !2949, file: !754, line: 2014, type: !555)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !754, line: 2014, column: 5)
!2950 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 2013, column: 7)
!2951 = !DILocation(line: 0, scope: !2920)
!2952 = !DILocation(line: 1901, column: 3, scope: !2920)
!2953 = !DILocation(line: 1902, column: 5, scope: !2920)
!2954 = !DILocation(line: 1928, column: 3, scope: !2920)
!2955 = !DILocation(line: 1929, column: 5, scope: !2920)
!2956 = !DILocation(line: 1941, column: 14, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 1941, column: 7)
!2958 = !DILocation(line: 1941, column: 20, scope: !2957)
!2959 = !DILocation(line: 1941, column: 7, scope: !2920)
!2960 = !DILocation(line: 1942, column: 68, scope: !2957)
!2961 = !DILocation(line: 1942, column: 12, scope: !2957)
!2962 = !DILocation(line: 1942, column: 5, scope: !2957)
!2963 = !DILocation(line: 1947, column: 8, scope: !2920)
!2964 = !DILocation(line: 1948, column: 12, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 1948, column: 7)
!2966 = !DILocation(line: 1948, column: 7, scope: !2920)
!2967 = !DILocation(line: 1949, column: 17, scope: !2965)
!2968 = !DILocation(line: 1950, column: 20, scope: !2943)
!2969 = !DILocation(line: 1952, column: 38, scope: !2942)
!2970 = !DILocation(line: 1952, column: 14, scope: !2942)
!2971 = !DILocation(line: 1953, column: 7, scope: !2941)
!2972 = !DILocation(line: 0, scope: !2941)
!2973 = !DILocation(line: 1955, column: 7, scope: !2942)
!2974 = !DILocation(line: 1957, column: 14, scope: !2920)
!2975 = !DILocation(line: 1958, column: 18, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 1958, column: 7)
!2977 = !DILocation(line: 1958, column: 7, scope: !2920)
!2978 = !DILocation(line: 1960, column: 14, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2976, file: !754, line: 1959, column: 5)
!2980 = !DILocation(line: 1961, column: 14, scope: !2979)
!2981 = !DILocation(line: 1962, column: 7, scope: !2979)
!2982 = !DILocation(line: 1964, column: 41, scope: !2920)
!2983 = !DILocation(line: 1964, column: 10, scope: !2920)
!2984 = !DILocation(line: 1966, column: 3, scope: !2920)
!2985 = !DILocation(line: 1967, column: 20, scope: !2920)
!2986 = !DILocation(line: 1967, column: 15, scope: !2920)
!2987 = !DILocation(line: 1967, column: 19, scope: !2920)
!2988 = !DILocation(line: 1968, column: 14, scope: !2920)
!2989 = !DILocation(line: 1969, column: 3, scope: !2920)
!2990 = !DILocation(line: 1970, column: 10, scope: !2920)
!2991 = !DILocation(line: 1971, column: 14, scope: !2920)
!2992 = !DILocation(line: 1972, column: 14, scope: !2920)
!2993 = !DILocation(line: 1973, column: 10, scope: !2920)
!2994 = !DILocation(line: 1974, column: 14, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 1974, column: 7)
!2996 = !DILocation(line: 1974, column: 7, scope: !2920)
!2997 = !DILocation(line: 1976, column: 14, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !754, line: 1975, column: 5)
!2999 = !DILocation(line: 1977, column: 7, scope: !2998)
!3000 = !DILocation(line: 0, scope: !1099, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1982, column: 8, scope: !2920)
!3002 = !DILocation(line: 139, column: 10, scope: !1099, inlinedAt: !3001)
!3003 = !DILocation(line: 1983, column: 12, scope: !2947)
!3004 = !DILocation(line: 1983, column: 7, scope: !2920)
!3005 = !DILocation(line: 1985, column: 14, scope: !2946)
!3006 = !DILocation(line: 1986, column: 7, scope: !2945)
!3007 = !DILocation(line: 0, scope: !2945)
!3008 = !DILocation(line: 1988, column: 7, scope: !2946)
!3009 = !DILocation(line: 0, scope: !1743, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 1991, column: 8, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 1991, column: 7)
!3012 = !DILocation(line: 469, column: 10, scope: !1743, inlinedAt: !3010)
!3013 = !DILocation(line: 1991, column: 32, scope: !3011)
!3014 = !DILocation(line: 1991, column: 38, scope: !3011)
!3015 = !DILocation(line: 1993, column: 28, scope: !2920)
!3016 = !DILocation(line: 1994, column: 14, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 1994, column: 7)
!3018 = !DILocation(line: 1994, column: 7, scope: !2920)
!3019 = !DILocation(line: 2000, column: 3, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2920, file: !754, line: 2000, column: 3)
!3021 = !DILocation(line: 1996, column: 14, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !754, line: 1995, column: 5)
!3023 = !DILocation(line: 1997, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !754, line: 1997, column: 7)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !754, line: 1997, column: 7)
!3026 = !DILocation(line: 2002, column: 11, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !754, line: 2001, column: 3)
!3028 = distinct !DILexicalBlock(scope: !3020, file: !754, line: 2000, column: 3)
!3029 = !DILocation(line: 2003, column: 15, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3027, file: !754, line: 2003, column: 9)
!3031 = !DILocation(line: 2003, column: 9, scope: !3027)
!3032 = !DILocation(line: 2006, column: 13, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !754, line: 2006, column: 13)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !754, line: 2004, column: 7)
!3035 = !DILocation(line: 2006, column: 19, scope: !3033)
!3036 = !DILocation(line: 2006, column: 13, scope: !3034)
!3037 = !DILocation(line: 0, scope: !3027)
!3038 = !DILocation(line: 0, scope: !2299, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 2009, column: 12, scope: !3027)
!3040 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !3039)
!3041 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !3039)
!3042 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !3039)
!3043 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !3039)
!3044 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !3039)
!3045 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !3039)
!3046 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !3039)
!3047 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !3039)
!3048 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !3039)
!3049 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !3039)
!3050 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !3039)
!3051 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !3039)
!3052 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !3039)
!3053 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !3039)
!3054 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !3039)
!3055 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !3039)
!3056 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !3039)
!3057 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !3039)
!3058 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !3039)
!3059 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !3039)
!3060 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !3039)
!3061 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !3039)
!3062 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !3039)
!3063 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !3039)
!3064 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !3039)
!3065 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !3039)
!3066 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !3039)
!3067 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !3039)
!3068 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !3039)
!3069 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !3039)
!3070 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !3039)
!3071 = !DILocation(line: 2009, column: 57, scope: !3027)
!3072 = !DILocation(line: 2009, column: 12, scope: !3027)
!3073 = !DILocation(line: 2000, column: 3, scope: !3028)
!3074 = distinct !{!3074, !3019, !3075, !1149}
!3075 = !DILocation(line: 2011, column: 3, scope: !3020)
!3076 = !DILocation(line: 2012, column: 8, scope: !2920)
!3077 = !DILocation(line: 2013, column: 12, scope: !2950)
!3078 = !DILocation(line: 2013, column: 7, scope: !2920)
!3079 = !DILocation(line: 2014, column: 5, scope: !2949)
!3080 = !DILocation(line: 0, scope: !2949)
!3081 = !DILocation(line: 2015, column: 10, scope: !2920)
!3082 = !DILocation(line: 2016, column: 28, scope: !2920)
!3083 = !DILocation(line: 2017, column: 3, scope: !2920)
!3084 = !DILocation(line: 2018, column: 1, scope: !2920)
!3085 = !DISubprogram(name: "CloneImage", scope: !88, file: !88, line: 508, type: !3086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!614, !817, !819, !819, !3088, !977}
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!3089 = !DISubprogram(name: "SetImageInfoFile", scope: !88, file: !88, line: 568, type: !3090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !901, !546}
!3092 = !DISubprogram(name: "DestroyImage", scope: !88, file: !88, line: 510, type: !3093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!614, !614}
!3095 = distinct !DISubprogram(name: "IsBlobExempt", scope: !754, file: !754, line: 2042, type: !2361, scopeLine: 2043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3096)
!3096 = !{!3097}
!3097 = !DILocalVariable(name: "image", arg: 1, scope: !3095, file: !754, line: 2042, type: !817)
!3098 = !DILocation(line: 0, scope: !3095)
!3099 = !DILocation(line: 2046, column: 14, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3095, file: !754, line: 2046, column: 7)
!3101 = !DILocation(line: 2046, column: 20, scope: !3100)
!3102 = !DILocation(line: 2046, column: 7, scope: !3095)
!3103 = !DILocation(line: 2047, column: 68, scope: !3100)
!3104 = !DILocation(line: 2047, column: 12, scope: !3100)
!3105 = !DILocation(line: 2047, column: 5, scope: !3100)
!3106 = !DILocation(line: 2048, column: 17, scope: !3095)
!3107 = !DILocation(line: 2048, column: 23, scope: !3095)
!3108 = !DILocation(line: 2048, column: 3, scope: !3095)
!3109 = distinct !DISubprogram(name: "IsBlobSeekable", scope: !754, file: !754, line: 2073, type: !2361, scopeLine: 2074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3110)
!3110 = !{!3111, !3112}
!3111 = !DILocalVariable(name: "image", arg: 1, scope: !3109, file: !754, line: 2073, type: !817)
!3112 = !DILocalVariable(name: "seekable", scope: !3109, file: !754, line: 2076, type: !628)
!3113 = !DILocation(line: 0, scope: !3109)
!3114 = !DILocation(line: 2080, column: 14, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3109, file: !754, line: 2080, column: 7)
!3116 = !DILocation(line: 2080, column: 20, scope: !3115)
!3117 = !DILocation(line: 2080, column: 7, scope: !3109)
!3118 = !DILocation(line: 2081, column: 68, scope: !3115)
!3119 = !DILocation(line: 2081, column: 12, scope: !3115)
!3120 = !DILocation(line: 2081, column: 5, scope: !3115)
!3121 = !DILocation(line: 2082, column: 18, scope: !3109)
!3122 = !DILocation(line: 2082, column: 24, scope: !3109)
!3123 = !DILocation(line: 2082, column: 3, scope: !3109)
!3124 = !DILocation(line: 0, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3109, file: !754, line: 2083, column: 3)
!3126 = !DILocation(line: 2097, column: 3, scope: !3109)
!3127 = distinct !DISubprogram(name: "IsBlobTemporary", scope: !754, file: !754, line: 2122, type: !2361, scopeLine: 2123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3128)
!3128 = !{!3129}
!3129 = !DILocalVariable(name: "image", arg: 1, scope: !3127, file: !754, line: 2122, type: !817)
!3130 = !DILocation(line: 0, scope: !3127)
!3131 = !DILocation(line: 2126, column: 14, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3127, file: !754, line: 2126, column: 7)
!3133 = !DILocation(line: 2126, column: 20, scope: !3132)
!3134 = !DILocation(line: 2126, column: 7, scope: !3127)
!3135 = !DILocation(line: 2127, column: 68, scope: !3132)
!3136 = !DILocation(line: 2127, column: 12, scope: !3132)
!3137 = !DILocation(line: 2127, column: 5, scope: !3132)
!3138 = !DILocation(line: 2128, column: 17, scope: !3127)
!3139 = !DILocation(line: 2128, column: 23, scope: !3127)
!3140 = !DILocation(line: 2128, column: 3, scope: !3127)
!3141 = distinct !DISubprogram(name: "MSBOrderLong", scope: !754, file: !754, line: 2250, type: !3142, scopeLine: 2251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !606, !819}
!3144 = !{!3145, !3146, !3147, !3148, !3149}
!3145 = !DILocalVariable(name: "buffer", arg: 1, scope: !3141, file: !754, line: 2250, type: !606)
!3146 = !DILocalVariable(name: "length", arg: 2, scope: !3141, file: !754, line: 2250, type: !819)
!3147 = !DILocalVariable(name: "c", scope: !3141, file: !754, line: 2253, type: !553)
!3148 = !DILocalVariable(name: "p", scope: !3141, file: !754, line: 2256, type: !606)
!3149 = !DILocalVariable(name: "q", scope: !3141, file: !754, line: 2257, type: !606)
!3150 = !DILocation(line: 0, scope: !3141)
!3151 = !DILocation(line: 2260, column: 11, scope: !3141)
!3152 = !DILocation(line: 2261, column: 17, scope: !3141)
!3153 = !DILocation(line: 2261, column: 3, scope: !3141)
!3154 = !DILocation(line: 2263, column: 13, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3141, file: !754, line: 2262, column: 3)
!3156 = !DILocation(line: 2264, column: 14, scope: !3155)
!3157 = !DILocation(line: 2265, column: 9, scope: !3155)
!3158 = !DILocation(line: 2265, column: 7, scope: !3155)
!3159 = !DILocation(line: 2266, column: 12, scope: !3155)
!3160 = !DILocation(line: 2266, column: 14, scope: !3155)
!3161 = !DILocation(line: 2267, column: 13, scope: !3155)
!3162 = !DILocation(line: 2268, column: 14, scope: !3155)
!3163 = !DILocation(line: 2269, column: 9, scope: !3155)
!3164 = !DILocation(line: 2269, column: 7, scope: !3155)
!3165 = !DILocation(line: 2270, column: 14, scope: !3155)
!3166 = !DILocation(line: 2271, column: 11, scope: !3155)
!3167 = distinct !{!3167, !3153, !3168, !1148, !1149}
!3168 = !DILocation(line: 2272, column: 3, scope: !3141)
!3169 = !DILocation(line: 2273, column: 1, scope: !3141)
!3170 = distinct !DISubprogram(name: "MSBOrderShort", scope: !754, file: !754, line: 2300, type: !3142, scopeLine: 2301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3171)
!3171 = !{!3172, !3173, !3174, !3175}
!3172 = !DILocalVariable(name: "p", arg: 1, scope: !3170, file: !754, line: 2300, type: !606)
!3173 = !DILocalVariable(name: "length", arg: 2, scope: !3170, file: !754, line: 2300, type: !819)
!3174 = !DILocalVariable(name: "c", scope: !3170, file: !754, line: 2303, type: !553)
!3175 = !DILocalVariable(name: "q", scope: !3170, file: !754, line: 2306, type: !606)
!3176 = !DILocation(line: 0, scope: !3170)
!3177 = !DILocation(line: 2309, column: 6, scope: !3170)
!3178 = !DILocation(line: 2310, column: 12, scope: !3170)
!3179 = !DILocation(line: 2310, column: 3, scope: !3170)
!3180 = !DILocation(line: 2312, column: 14, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3170, file: !754, line: 2311, column: 3)
!3182 = !DILocation(line: 2313, column: 12, scope: !3181)
!3183 = !DILocation(line: 2313, column: 9, scope: !3181)
!3184 = !DILocation(line: 2313, column: 7, scope: !3181)
!3185 = !DILocation(line: 2315, column: 7, scope: !3181)
!3186 = !DILocation(line: 2315, column: 9, scope: !3181)
!3187 = distinct !{!3187, !3179, !3188, !1148, !1149}
!3188 = !DILocation(line: 2316, column: 3, scope: !3170)
!3189 = !DILocation(line: 2317, column: 1, scope: !3170)
!3190 = distinct !DISubprogram(name: "OpenBlob", scope: !754, file: !754, line: 2350, type: !3191, scopeLine: 2352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3195)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!628, !975, !614, !3193, !977}
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobMode", file: !10, line: 44, baseType: !504)
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3206, !3209, !3215, !3222, !3228, !3230, !3233, !3234, !3235, !3238}
!3196 = !DILocalVariable(name: "image_info", arg: 1, scope: !3190, file: !754, line: 2350, type: !975)
!3197 = !DILocalVariable(name: "image", arg: 2, scope: !3190, file: !754, line: 2351, type: !614)
!3198 = !DILocalVariable(name: "mode", arg: 3, scope: !3190, file: !754, line: 2351, type: !3193)
!3199 = !DILocalVariable(name: "exception", arg: 4, scope: !3190, file: !754, line: 2351, type: !977)
!3200 = !DILocalVariable(name: "extension", scope: !3190, file: !754, line: 2354, type: !830)
!3201 = !DILocalVariable(name: "filename", scope: !3190, file: !754, line: 2355, type: !830)
!3202 = !DILocalVariable(name: "type", scope: !3190, file: !754, line: 2358, type: !608)
!3203 = !DILocalVariable(name: "status", scope: !3190, file: !754, line: 2361, type: !628)
!3204 = !DILocalVariable(name: "rights", scope: !3190, file: !754, line: 2364, type: !3205)
!3205 = !DIDerivedType(tag: DW_TAG_typedef, name: "PolicyRights", file: !514, line: 46, baseType: !513)
!3206 = !DILocalVariable(name: "mode", scope: !3207, file: !754, line: 2432, type: !830)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !754, line: 2430, column: 5)
!3208 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2429, column: 7)
!3209 = !DILocalVariable(name: "message", scope: !3210, file: !754, line: 2478, type: !555)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !754, line: 2478, column: 11)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !754, line: 2477, column: 9)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !754, line: 2476, column: 11)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !754, line: 2474, column: 5)
!3214 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2473, column: 7)
!3215 = !DILocalVariable(name: "path", scope: !3216, file: !754, line: 2503, type: !830)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !754, line: 2501, column: 13)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !754, line: 2498, column: 15)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !754, line: 2492, column: 9)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !754, line: 2490, column: 11)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !754, line: 2488, column: 5)
!3221 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2487, column: 7)
!3222 = !DILocalVariable(name: "count", scope: !3223, file: !754, line: 2532, type: !544)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !754, line: 2530, column: 11)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !754, line: 2529, column: 13)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !754, line: 2527, column: 7)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !754, line: 2526, column: 9)
!3227 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2519, column: 7)
!3228 = !DILocalVariable(name: "magick", scope: !3223, file: !754, line: 2535, type: !3229)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 24, elements: !809)
!3230 = !DILocalVariable(name: "magick_info", scope: !3231, file: !754, line: 2574, type: !890)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !754, line: 2572, column: 15)
!3232 = distinct !DILexicalBlock(scope: !3223, file: !754, line: 2571, column: 17)
!3233 = !DILocalVariable(name: "sans_exception", scope: !3231, file: !754, line: 2577, type: !977)
!3234 = !DILocalVariable(name: "length", scope: !3231, file: !754, line: 2580, type: !544)
!3235 = !DILocalVariable(name: "blob", scope: !3236, file: !754, line: 2592, type: !599)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !754, line: 2590, column: 19)
!3237 = distinct !DILexicalBlock(scope: !3231, file: !754, line: 2586, column: 21)
!3238 = !DILocalVariable(name: "message", scope: !3239, file: !754, line: 2657, type: !555)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !754, line: 2657, column: 7)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !754, line: 2656, column: 5)
!3241 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2653, column: 7)
!3242 = !DILocation(line: 0, scope: !3190)
!3243 = !DILocation(line: 2353, column: 3, scope: !3190)
!3244 = !DILocation(line: 2354, column: 5, scope: !3190)
!3245 = !DILocation(line: 2355, column: 5, scope: !3190)
!3246 = !DILocation(line: 2368, column: 19, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2368, column: 7)
!3248 = !DILocation(line: 2368, column: 25, scope: !3247)
!3249 = !DILocation(line: 2368, column: 7, scope: !3190)
!3250 = !DILocation(line: 2370, column: 19, scope: !3247)
!3251 = !DILocation(line: 2369, column: 12, scope: !3247)
!3252 = !DILocation(line: 2369, column: 5, scope: !3247)
!3253 = !DILocation(line: 2373, column: 19, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2373, column: 7)
!3255 = !DILocation(line: 2373, column: 24, scope: !3254)
!3256 = !DILocation(line: 2373, column: 7, scope: !3190)
!3257 = !DILocation(line: 2375, column: 23, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !754, line: 2375, column: 11)
!3259 = distinct !DILexicalBlock(scope: !3254, file: !754, line: 2374, column: 5)
!3260 = !{!1197, !1036, i64 296}
!3261 = !DILocation(line: 2375, column: 30, scope: !3258)
!3262 = !DILocation(line: 0, scope: !3259)
!3263 = !DILocation(line: 2375, column: 11, scope: !3259)
!3264 = !DILocation(line: 2376, column: 22, scope: !3258)
!3265 = !DILocation(line: 2376, column: 28, scope: !3258)
!3266 = !DILocation(line: 2376, column: 9, scope: !3258)
!3267 = !DILocation(line: 2377, column: 59, scope: !3259)
!3268 = !DILocation(line: 0, scope: !1017, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 2377, column: 7, scope: !3259)
!3270 = !DILocation(line: 196, column: 18, scope: !1026, inlinedAt: !3269)
!3271 = !DILocation(line: 196, column: 24, scope: !1026, inlinedAt: !3269)
!3272 = !DILocation(line: 196, column: 7, scope: !1017, inlinedAt: !3269)
!3273 = !DILocation(line: 197, column: 12, scope: !1026, inlinedAt: !3269)
!3274 = !DILocation(line: 197, column: 5, scope: !1026, inlinedAt: !3269)
!3275 = !DILocation(line: 198, column: 20, scope: !1017, inlinedAt: !3269)
!3276 = !DILocation(line: 199, column: 14, scope: !1017, inlinedAt: !3269)
!3277 = !DILocation(line: 199, column: 20, scope: !1017, inlinedAt: !3269)
!3278 = !DILocation(line: 200, column: 14, scope: !1017, inlinedAt: !3269)
!3279 = !DILocation(line: 200, column: 21, scope: !1017, inlinedAt: !3269)
!3280 = !DILocation(line: 201, column: 14, scope: !1017, inlinedAt: !3269)
!3281 = !DILocation(line: 201, column: 20, scope: !1017, inlinedAt: !3269)
!3282 = !DILocation(line: 202, column: 14, scope: !1017, inlinedAt: !3269)
!3283 = !DILocation(line: 202, column: 18, scope: !1017, inlinedAt: !3269)
!3284 = !DILocation(line: 203, column: 14, scope: !1017, inlinedAt: !3269)
!3285 = !DILocation(line: 203, column: 28, scope: !1017, inlinedAt: !3269)
!3286 = !DILocation(line: 204, column: 14, scope: !1017, inlinedAt: !3269)
!3287 = !DILocation(line: 204, column: 18, scope: !1017, inlinedAt: !3269)
!3288 = !DILocation(line: 205, column: 14, scope: !1017, inlinedAt: !3269)
!3289 = !DILocation(line: 205, column: 20, scope: !1017, inlinedAt: !3269)
!3290 = !DILocation(line: 2378, column: 7, scope: !3259)
!3291 = !DILocation(line: 2380, column: 28, scope: !3190)
!3292 = !DILocation(line: 0, scope: !1260, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 2380, column: 10, scope: !3190)
!3294 = !DILocation(line: 690, column: 18, scope: !1268, inlinedAt: !3293)
!3295 = !DILocation(line: 690, column: 24, scope: !1268, inlinedAt: !3293)
!3296 = !DILocation(line: 690, column: 7, scope: !1260, inlinedAt: !3293)
!3297 = !DILocation(line: 691, column: 12, scope: !1268, inlinedAt: !3293)
!3298 = !DILocation(line: 691, column: 5, scope: !1268, inlinedAt: !3293)
!3299 = !DILocation(line: 692, column: 18, scope: !1274, inlinedAt: !3293)
!3300 = !DILocation(line: 692, column: 25, scope: !1274, inlinedAt: !3293)
!3301 = !DILocation(line: 692, column: 7, scope: !1260, inlinedAt: !3293)
!3302 = !DILocation(line: 694, column: 35, scope: !1278, inlinedAt: !3293)
!3303 = !DILocation(line: 695, column: 22, scope: !1278, inlinedAt: !3293)
!3304 = !DILocation(line: 696, column: 55, scope: !1278, inlinedAt: !3293)
!3305 = !DILocation(line: 696, column: 7, scope: !1278, inlinedAt: !3293)
!3306 = !DILocation(line: 697, column: 5, scope: !1278, inlinedAt: !3293)
!3307 = !DILocation(line: 699, column: 20, scope: !1260, inlinedAt: !3293)
!3308 = !DILocation(line: 702, column: 14, scope: !1260, inlinedAt: !3293)
!3309 = !DILocation(line: 702, column: 20, scope: !1260, inlinedAt: !3293)
!3310 = !DILocation(line: 703, column: 14, scope: !1260, inlinedAt: !3293)
!3311 = !DILocation(line: 703, column: 18, scope: !1260, inlinedAt: !3293)
!3312 = !DILocation(line: 704, column: 14, scope: !1260, inlinedAt: !3293)
!3313 = !DILocation(line: 704, column: 28, scope: !1260, inlinedAt: !3293)
!3314 = !DILocation(line: 700, column: 20, scope: !1260, inlinedAt: !3293)
!3315 = !DILocation(line: 707, column: 14, scope: !1260, inlinedAt: !3293)
!3316 = !DILocation(line: 707, column: 20, scope: !1260, inlinedAt: !3293)
!3317 = !DILocation(line: 2381, column: 3, scope: !3190)
!3318 = !DILocation(line: 0, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2382, column: 3)
!3320 = !DILocation(line: 2391, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2391, column: 7)
!3322 = !DILocation(line: 2391, column: 13, scope: !3321)
!3323 = !DILocation(line: 2391, column: 7, scope: !3190)
!3324 = !DILocation(line: 2392, column: 42, scope: !3321)
!3325 = !{!1197, !1030, i64 16784}
!3326 = !DILocation(line: 2392, column: 12, scope: !3321)
!3327 = !DILocation(line: 2392, column: 18, scope: !3321)
!3328 = !DILocation(line: 2392, column: 29, scope: !3321)
!3329 = !DILocation(line: 2393, column: 19, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2393, column: 7)
!3331 = !DILocation(line: 2393, column: 26, scope: !3330)
!3332 = !DILocation(line: 2393, column: 7, scope: !3190)
!3333 = !DILocation(line: 2395, column: 14, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !754, line: 2394, column: 5)
!3335 = !DILocation(line: 2395, column: 20, scope: !3334)
!3336 = !DILocation(line: 2395, column: 26, scope: !3334)
!3337 = !DILocation(line: 2396, column: 11, scope: !3334)
!3338 = !DILocation(line: 2396, column: 17, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3334, file: !754, line: 2396, column: 11)
!3340 = !DILocation(line: 2398, column: 24, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3339, file: !754, line: 2397, column: 9)
!3342 = !DILocation(line: 2398, column: 28, scope: !3341)
!3343 = !DILocation(line: 2399, column: 11, scope: !3341)
!3344 = !DILocation(line: 2405, column: 12, scope: !3190)
!3345 = !DILocation(line: 2406, column: 43, scope: !3190)
!3346 = !DILocation(line: 2406, column: 10, scope: !3190)
!3347 = !DILocation(line: 2408, column: 13, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2408, column: 7)
!3349 = !DILocation(line: 2408, column: 7, scope: !3190)
!3350 = !DILocation(line: 2410, column: 7, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2410, column: 7)
!3352 = !DILocation(line: 2410, column: 60, scope: !3351)
!3353 = !DILocation(line: 2410, column: 7, scope: !3190)
!3354 = !DILocation(line: 2412, column: 7, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3351, file: !754, line: 2411, column: 5)
!3356 = !DILocation(line: 2412, column: 12, scope: !3355)
!3357 = !DILocation(line: 2413, column: 14, scope: !3355)
!3358 = !DILocation(line: 2415, column: 7, scope: !3355)
!3359 = !DILocation(line: 2417, column: 8, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3190, file: !754, line: 2417, column: 7)
!3361 = !DILocation(line: 2417, column: 36, scope: !3360)
!3362 = !DILocation(line: 2417, column: 42, scope: !3360)
!3363 = !DILocation(line: 2418, column: 9, scope: !3360)
!3364 = !DILocation(line: 2418, column: 19, scope: !3360)
!3365 = !DILocation(line: 2418, column: 28, scope: !3360)
!3366 = !DILocation(line: 2418, column: 44, scope: !3360)
!3367 = !DILocation(line: 2418, column: 49, scope: !3360)
!3368 = !DILocation(line: 2417, column: 7, scope: !3190)
!3369 = !DILocation(line: 2420, column: 35, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3360, file: !754, line: 2419, column: 5)
!3371 = !DILocation(line: 2420, column: 14, scope: !3370)
!3372 = !DILocation(line: 2420, column: 20, scope: !3370)
!3373 = !DILocation(line: 2420, column: 34, scope: !3370)
!3374 = !DILocation(line: 2425, column: 14, scope: !3370)
!3375 = !DILocation(line: 2425, column: 20, scope: !3370)
!3376 = !DILocation(line: 2425, column: 24, scope: !3370)
!3377 = !DILocation(line: 2426, column: 20, scope: !3370)
!3378 = !DILocation(line: 2426, column: 26, scope: !3370)
!3379 = !DILocation(line: 2427, column: 7, scope: !3370)
!3380 = !DILocation(line: 2429, column: 7, scope: !3208)
!3381 = !DILocation(line: 2429, column: 40, scope: !3208)
!3382 = !DILocation(line: 2429, column: 7, scope: !3190)
!3383 = !DILocation(line: 2431, column: 7, scope: !3207)
!3384 = !DILocation(line: 2432, column: 9, scope: !3207)
!3385 = !DILocation(line: 2434, column: 12, scope: !3207)
!3386 = !DILocation(line: 2435, column: 7, scope: !3207)
!3387 = !DILocation(line: 2435, column: 14, scope: !3207)
!3388 = !DILocation(line: 2436, column: 63, scope: !3207)
!3389 = !DILocalVariable(name: "value", arg: 1, scope: !3390, file: !3391, line: 68, type: !1392)
!3390 = distinct !DISubprogram(name: "StringToLong", scope: !3391, file: !3391, line: 68, type: !3392, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3394)
!3391 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!577, !1392}
!3394 = !{!3389}
!3395 = !DILocation(line: 0, scope: !3390, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 2436, column: 42, scope: !3207)
!3397 = !DILocation(line: 70, column: 10, scope: !3390, inlinedAt: !3396)
!3398 = !DILocation(line: 2436, column: 42, scope: !3207)
!3399 = !DILocation(line: 2436, column: 35, scope: !3207)
!3400 = !DILocation(line: 2436, column: 14, scope: !3207)
!3401 = !DILocation(line: 2436, column: 20, scope: !3207)
!3402 = !DILocation(line: 2436, column: 34, scope: !3207)
!3403 = !DILocation(line: 2441, column: 14, scope: !3207)
!3404 = !DILocation(line: 2441, column: 20, scope: !3207)
!3405 = !DILocation(line: 2441, column: 24, scope: !3207)
!3406 = !DILocation(line: 2442, column: 20, scope: !3207)
!3407 = !DILocation(line: 2442, column: 26, scope: !3207)
!3408 = !DILocation(line: 2444, column: 5, scope: !3208)
!3409 = !DILocation(line: 2471, column: 45, scope: !3190)
!3410 = !DILocation(line: 2471, column: 51, scope: !3190)
!3411 = !DILocation(line: 2471, column: 10, scope: !3190)
!3412 = !DILocation(line: 2473, column: 15, scope: !3214)
!3413 = !DILocation(line: 2473, column: 31, scope: !3214)
!3414 = !DILocation(line: 2473, column: 34, scope: !3214)
!3415 = !{!1028, !1034, i64 104}
!3416 = !DILocation(line: 2473, column: 7, scope: !3190)
!3417 = !DILocalVariable(name: "path", arg: 1, scope: !3418, file: !1100, line: 103, type: !608)
!3418 = distinct !DISubprogram(name: "fopen_utf8", scope: !1100, file: !1100, line: 103, type: !3419, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!546, !608, !608}
!3421 = !{!3417, !3422}
!3422 = !DILocalVariable(name: "mode", arg: 2, scope: !3418, file: !1100, line: 103, type: !608)
!3423 = !DILocation(line: 0, scope: !3418, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 2475, column: 44, scope: !3213)
!3425 = !DILocation(line: 106, column: 10, scope: !3418, inlinedAt: !3424)
!3426 = !DILocation(line: 2475, column: 14, scope: !3213)
!3427 = !DILocation(line: 2475, column: 20, scope: !3213)
!3428 = !DILocation(line: 2475, column: 34, scope: !3213)
!3429 = !DILocation(line: 2476, column: 18, scope: !3212)
!3430 = !DILocation(line: 2476, column: 24, scope: !3212)
!3431 = !DILocation(line: 2476, column: 34, scope: !3212)
!3432 = !DILocation(line: 2476, column: 39, scope: !3212)
!3433 = !DILocation(line: 2476, column: 11, scope: !3213)
!3434 = !DILocation(line: 2478, column: 11, scope: !3210)
!3435 = !DILocation(line: 0, scope: !3210)
!3436 = !DILocation(line: 2479, column: 11, scope: !3211)
!3437 = !DILocation(line: 2481, column: 20, scope: !3213)
!3438 = !DILocation(line: 2481, column: 24, scope: !3213)
!3439 = !DILocation(line: 2482, column: 20, scope: !3213)
!3440 = !DILocation(line: 2482, column: 26, scope: !3213)
!3441 = !DILocation(line: 2483, column: 7, scope: !3213)
!3442 = !DILocation(line: 2486, column: 3, scope: !3190)
!3443 = !DILocation(line: 2487, column: 7, scope: !3190)
!3444 = !DILocation(line: 2489, column: 14, scope: !3220)
!3445 = !DILocation(line: 2490, column: 24, scope: !3219)
!3446 = !DILocation(line: 2490, column: 31, scope: !3219)
!3447 = !DILocation(line: 2490, column: 47, scope: !3219)
!3448 = !DILocation(line: 2491, column: 12, scope: !3219)
!3449 = !DILocation(line: 2491, column: 33, scope: !3219)
!3450 = !DILocation(line: 2490, column: 11, scope: !3220)
!3451 = !DILocation(line: 2497, column: 20, scope: !3218)
!3452 = !{!1250, !1029, i64 432}
!3453 = !DILocation(line: 2496, column: 74, scope: !3218)
!3454 = !DILocation(line: 2496, column: 18, scope: !3218)
!3455 = !DILocation(line: 2498, column: 16, scope: !3217)
!3456 = !DILocation(line: 2498, column: 56, scope: !3217)
!3457 = !DILocation(line: 2498, column: 62, scope: !3217)
!3458 = !DILocation(line: 2499, column: 17, scope: !3217)
!3459 = !DILocation(line: 2499, column: 47, scope: !3217)
!3460 = !DILocation(line: 2499, column: 66, scope: !3217)
!3461 = !DILocation(line: 2500, column: 17, scope: !3217)
!3462 = !DILocation(line: 2500, column: 43, scope: !3217)
!3463 = !DILocation(line: 2498, column: 15, scope: !3218)
!3464 = !DILocation(line: 2502, column: 15, scope: !3216)
!3465 = !DILocation(line: 2503, column: 17, scope: !3216)
!3466 = !DILocation(line: 2505, column: 15, scope: !3216)
!3467 = !DILocation(line: 2506, column: 19, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3216, file: !754, line: 2506, column: 19)
!3469 = !DILocation(line: 2506, column: 30, scope: !3468)
!3470 = !DILocation(line: 0, scope: !3468)
!3471 = !DILocation(line: 2506, column: 19, scope: !3216)
!3472 = !DILocation(line: 2507, column: 24, scope: !3468)
!3473 = !DILocation(line: 2507, column: 17, scope: !3468)
!3474 = !DILocation(line: 2510, column: 24, scope: !3468)
!3475 = !DILocation(line: 2512, column: 13, scope: !3217)
!3476 = !DILocation(line: 2512, column: 13, scope: !3216)
!3477 = !DILocation(line: 2513, column: 18, scope: !3218)
!3478 = !DILocation(line: 2517, column: 9, scope: !3218)
!3479 = !DILocation(line: 2519, column: 19, scope: !3227)
!3480 = !DILocation(line: 2519, column: 24, scope: !3227)
!3481 = !DILocation(line: 2519, column: 7, scope: !3190)
!3482 = !DILocation(line: 2521, column: 14, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3227, file: !754, line: 2520, column: 5)
!3484 = !DILocation(line: 2521, column: 20, scope: !3483)
!3485 = !DILocation(line: 2521, column: 34, scope: !3483)
!3486 = !DILocation(line: 2522, column: 14, scope: !3483)
!3487 = !DILocation(line: 2522, column: 20, scope: !3483)
!3488 = !DILocation(line: 2522, column: 24, scope: !3483)
!3489 = !DILocation(line: 2523, column: 20, scope: !3483)
!3490 = !DILocation(line: 2523, column: 26, scope: !3483)
!3491 = !DILocation(line: 2524, column: 5, scope: !3483)
!3492 = !DILocation(line: 0, scope: !3418, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 2528, column: 46, scope: !3225)
!3494 = !DILocation(line: 0, scope: !3418, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 2642, column: 52, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3226, file: !754, line: 2641, column: 13)
!3497 = !DILocation(line: 0, scope: !3226)
!3498 = !DILocation(line: 2526, column: 9, scope: !3227)
!3499 = !DILocation(line: 2529, column: 13, scope: !3225)
!3500 = !DILocation(line: 2534, column: 13, scope: !3223)
!3501 = !DILocation(line: 2535, column: 15, scope: !3223)
!3502 = !DILocation(line: 2537, column: 26, scope: !3223)
!3503 = !DILocation(line: 2537, column: 30, scope: !3223)
!3504 = !DILocation(line: 2542, column: 20, scope: !3223)
!3505 = !DILocation(line: 2543, column: 56, scope: !3223)
!3506 = !DILocation(line: 2543, column: 62, scope: !3223)
!3507 = !DILocation(line: 2543, column: 72, scope: !3223)
!3508 = !DILocation(line: 2543, column: 19, scope: !3223)
!3509 = !DILocation(line: 0, scope: !3223)
!3510 = !DILocation(line: 2544, column: 33, scope: !3223)
!3511 = !DILocation(line: 2544, column: 39, scope: !3223)
!3512 = !DILocation(line: 2544, column: 49, scope: !3223)
!3513 = !DILocation(line: 2544, column: 54, scope: !3223)
!3514 = !DILocation(line: 2544, column: 20, scope: !3223)
!3515 = !DILocation(line: 2545, column: 34, scope: !3223)
!3516 = !DILocation(line: 2545, column: 40, scope: !3223)
!3517 = !DILocation(line: 2545, column: 50, scope: !3223)
!3518 = !DILocation(line: 2545, column: 20, scope: !3223)
!3519 = !DILocation(line: 2547, column: 50, scope: !3223)
!3520 = !DILocation(line: 2546, column: 20, scope: !3223)
!3521 = !DILocation(line: 2571, column: 24, scope: !3232)
!3522 = !DILocation(line: 2571, column: 30, scope: !3232)
!3523 = !DILocation(line: 2571, column: 35, scope: !3232)
!3524 = !DILocation(line: 2571, column: 17, scope: !3223)
!3525 = !DILocation(line: 2582, column: 32, scope: !3231)
!3526 = !DILocation(line: 0, scope: !3231)
!3527 = !DILocation(line: 2583, column: 55, scope: !3231)
!3528 = !DILocation(line: 2583, column: 29, scope: !3231)
!3529 = !DILocation(line: 2584, column: 32, scope: !3231)
!3530 = !DILocation(line: 2585, column: 40, scope: !3231)
!3531 = !DILocation(line: 2585, column: 57, scope: !3231)
!3532 = !{!1028, !1029, i64 128}
!3533 = !DILocation(line: 2586, column: 34, scope: !3237)
!3534 = !DILocation(line: 2586, column: 64, scope: !3237)
!3535 = !DILocation(line: 2587, column: 22, scope: !3237)
!3536 = !DILocation(line: 2587, column: 56, scope: !3237)
!3537 = !DILocation(line: 2587, column: 72, scope: !3237)
!3538 = !DILocation(line: 2589, column: 22, scope: !3237)
!3539 = !DILocation(line: 2589, column: 64, scope: !3237)
!3540 = !DILocation(line: 2586, column: 21, scope: !3231)
!3541 = !DILocation(line: 2594, column: 48, scope: !3236)
!3542 = !DILocation(line: 2594, column: 54, scope: !3236)
!3543 = !DILocation(line: 2594, column: 64, scope: !3236)
!3544 = !DILocation(line: 2594, column: 34, scope: !3236)
!3545 = !DILocation(line: 0, scope: !3236)
!3546 = !DILocation(line: 2597, column: 23, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3236, file: !754, line: 2596, column: 25)
!3548 = !DILocation(line: 2613, column: 19, scope: !3236)
!3549 = !DILocation(line: 2615, column: 11, scope: !3224)
!3550 = !DILocation(line: 2652, column: 10, scope: !3190)
!3551 = !DILocation(line: 2615, column: 11, scope: !3223)
!3552 = !DILocation(line: 2643, column: 19, scope: !3496)
!3553 = !DILocation(line: 2645, column: 32, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !754, line: 2644, column: 17)
!3555 = distinct !DILexicalBlock(scope: !3496, file: !754, line: 2643, column: 19)
!3556 = !DILocation(line: 2645, column: 36, scope: !3554)
!3557 = !DILocation(line: 2650, column: 17, scope: !3554)
!3558 = !DILocation(line: 2652, column: 16, scope: !3190)
!3559 = !DILocation(line: 2652, column: 22, scope: !3190)
!3560 = !DILocation(line: 2653, column: 20, scope: !3241)
!3561 = !DILocation(line: 2653, column: 25, scope: !3241)
!3562 = !DILocation(line: 2653, column: 7, scope: !3190)
!3563 = !DILocation(line: 2654, column: 23, scope: !3241)
!3564 = !DILocation(line: 2654, column: 12, scope: !3241)
!3565 = !DILocation(line: 2654, column: 18, scope: !3241)
!3566 = !DILocation(line: 2654, column: 22, scope: !3241)
!3567 = !DILocation(line: 2660, column: 3, scope: !3190)
!3568 = !DILocation(line: 2657, column: 7, scope: !3239)
!3569 = !DILocation(line: 0, scope: !3239)
!3570 = !DILocation(line: 2658, column: 7, scope: !3240)
!3571 = !DILocation(line: 2661, column: 1, scope: !3190)
!3572 = !DISubprogram(name: "IsRightsAuthorized", scope: !514, file: !514, line: 59, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!628, !3575, !3577, !608}
!3575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3576)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "PolicyDomain", file: !514, line: 37, baseType: !521)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3205)
!3578 = !DISubprogram(name: "LocaleNCompare", scope: !1167, file: !1167, line: 67, type: !3579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!553, !608, !608, !819}
!3581 = !DISubprogram(name: "GetPathComponent", scope: !531, file: !531, line: 68, type: !3582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{null, !608, !3584, !555}
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !531, line: 36, baseType: !530)
!3585 = !DISubprogram(name: "InterpretImageFilename", scope: !88, file: !88, line: 549, type: !3586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!544, !975, !614, !608, !553, !555}
!3588 = !DISubprogram(name: "GetPreviousImageInList", scope: !1394, file: !1394, line: 34, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3589 = !DISubprogram(name: "fseek", scope: !673, file: !673, line: 684, type: !3590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!553, !546, !577, !553}
!3592 = !DISubprogram(name: "fflush", scope: !673, file: !673, line: 218, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3593 = !DISubprogram(name: "AcquireExceptionInfo", scope: !264, file: !264, line: 146, type: !3594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!977}
!3596 = !DISubprogram(name: "AcquireMagickResource", scope: !487, file: !487, line: 44, type: !3597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!628, !1835, !742}
!3599 = distinct !DISubprogram(name: "PingBlob", scope: !754, file: !754, line: 2714, type: !1178, scopeLine: 2716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606}
!3601 = !DILocalVariable(name: "image_info", arg: 1, scope: !3599, file: !754, line: 2714, type: !975)
!3602 = !DILocalVariable(name: "blob", arg: 2, scope: !3599, file: !754, line: 2714, type: !612)
!3603 = !DILocalVariable(name: "length", arg: 3, scope: !3599, file: !754, line: 2715, type: !819)
!3604 = !DILocalVariable(name: "exception", arg: 4, scope: !3599, file: !754, line: 2715, type: !977)
!3605 = !DILocalVariable(name: "image", scope: !3599, file: !754, line: 2718, type: !614)
!3606 = !DILocalVariable(name: "ping_info", scope: !3599, file: !754, line: 2721, type: !901)
!3607 = !DILocation(line: 0, scope: !3599)
!3608 = !DILocation(line: 2725, column: 19, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3599, file: !754, line: 2725, column: 7)
!3610 = !DILocation(line: 2725, column: 25, scope: !3609)
!3611 = !DILocation(line: 2725, column: 7, scope: !3599)
!3612 = !DILocation(line: 2727, column: 19, scope: !3609)
!3613 = !DILocation(line: 2726, column: 12, scope: !3609)
!3614 = !DILocation(line: 2726, column: 5, scope: !3609)
!3615 = !DILocation(line: 2729, column: 13, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3599, file: !754, line: 2729, column: 7)
!3617 = !DILocation(line: 2729, column: 37, scope: !3616)
!3618 = !DILocation(line: 2732, column: 54, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !754, line: 2730, column: 5)
!3620 = !DILocation(line: 2731, column: 14, scope: !3619)
!3621 = !DILocation(line: 2733, column: 7, scope: !3619)
!3622 = !DILocation(line: 2735, column: 13, scope: !3599)
!3623 = !DILocation(line: 2736, column: 28, scope: !3599)
!3624 = !DILocation(line: 2736, column: 14, scope: !3599)
!3625 = !DILocation(line: 2736, column: 18, scope: !3599)
!3626 = !DILocation(line: 2737, column: 23, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3599, file: !754, line: 2737, column: 7)
!3628 = !DILocation(line: 2737, column: 7, scope: !3599)
!3629 = !DILocation(line: 2739, column: 14, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3627, file: !754, line: 2738, column: 5)
!3631 = !DILocation(line: 2741, column: 7, scope: !3630)
!3632 = !DILocation(line: 2743, column: 10, scope: !3599)
!3633 = !DILocation(line: 2744, column: 14, scope: !3599)
!3634 = !DILocation(line: 2744, column: 20, scope: !3599)
!3635 = !DILocation(line: 2745, column: 14, scope: !3599)
!3636 = !DILocation(line: 2745, column: 18, scope: !3599)
!3637 = !{!1197, !1030, i64 224}
!3638 = !DILocation(line: 2746, column: 9, scope: !3599)
!3639 = !DILocation(line: 2747, column: 62, scope: !3599)
!3640 = !DILocation(line: 2747, column: 28, scope: !3599)
!3641 = !DILocation(line: 2747, column: 18, scope: !3599)
!3642 = !DILocation(line: 2748, column: 13, scope: !3599)
!3643 = !DILocation(line: 2749, column: 3, scope: !3599)
!3644 = !DILocation(line: 2750, column: 1, scope: !3599)
!3645 = !DISubprogram(name: "ReadStream", scope: !813, file: !813, line: 29, type: !3646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!614, !975, !812, !977}
!3648 = distinct !DISubprogram(name: "PingStream", scope: !754, file: !754, line: 2701, type: !815, scopeLine: 2703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3649)
!3649 = !{!3650, !3651, !3652}
!3650 = !DILocalVariable(name: "image", arg: 1, scope: !3648, file: !754, line: 2701, type: !817)
!3651 = !DILocalVariable(name: "pixels", arg: 2, scope: !3648, file: !754, line: 2702, type: !612)
!3652 = !DILocalVariable(name: "columns", arg: 3, scope: !3648, file: !754, line: 2702, type: !819)
!3653 = !DILocation(line: 0, scope: !3648)
!3654 = !DILocation(line: 2707, column: 3, scope: !3648)
!3655 = distinct !DISubprogram(name: "ReadBlob", scope: !754, file: !754, line: 2783, type: !3656, scopeLine: 2785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!672, !614, !819, !606}
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665, !3668}
!3659 = !DILocalVariable(name: "image", arg: 1, scope: !3655, file: !754, line: 2783, type: !614)
!3660 = !DILocalVariable(name: "length", arg: 2, scope: !3655, file: !754, line: 2783, type: !819)
!3661 = !DILocalVariable(name: "data", arg: 3, scope: !3655, file: !754, line: 2784, type: !606)
!3662 = !DILocalVariable(name: "c", scope: !3655, file: !754, line: 2787, type: !553)
!3663 = !DILocalVariable(name: "q", scope: !3655, file: !754, line: 2790, type: !606)
!3664 = !DILocalVariable(name: "count", scope: !3655, file: !754, line: 2793, type: !672)
!3665 = !DILocalVariable(name: "i", scope: !3666, file: !754, line: 2811, type: !672)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !754, line: 2809, column: 5)
!3667 = distinct !DILexicalBlock(scope: !3655, file: !754, line: 2805, column: 3)
!3668 = !DILocalVariable(name: "p", scope: !3669, file: !754, line: 2903, type: !988)
!3669 = distinct !DILexicalBlock(scope: !3667, file: !754, line: 2901, column: 5)
!3670 = !DILocation(line: 0, scope: !3655)
!3671 = !DILocation(line: 2799, column: 14, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3655, file: !754, line: 2799, column: 7)
!3673 = !DILocation(line: 2799, column: 7, scope: !3655)
!3674 = !DILocation(line: 2804, column: 18, scope: !3655)
!3675 = !DILocation(line: 2804, column: 24, scope: !3655)
!3676 = !DILocation(line: 2804, column: 3, scope: !3655)
!3677 = !DILocation(line: 0, scope: !3666)
!3678 = !DILocation(line: 2813, column: 19, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !754, line: 2813, column: 7)
!3680 = distinct !DILexicalBlock(scope: !3666, file: !754, line: 2813, column: 7)
!3681 = !DILocation(line: 2813, column: 7, scope: !3680)
!3682 = !DILocation(line: 2815, column: 34, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !754, line: 2814, column: 7)
!3684 = !DILocation(line: 2815, column: 40, scope: !3683)
!3685 = !DILocation(line: 2815, column: 50, scope: !3683)
!3686 = !DILocation(line: 2815, column: 20, scope: !3683)
!3687 = !DILocation(line: 2815, column: 57, scope: !3683)
!3688 = !DILocation(line: 2816, column: 27, scope: !3683)
!3689 = !DILocation(line: 0, scope: !1126, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 2816, column: 11, scope: !3683)
!3691 = !DILocation(line: 2815, column: 15, scope: !3683)
!3692 = !DILocation(line: 2817, column: 19, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3683, file: !754, line: 2817, column: 13)
!3694 = !DILocation(line: 2817, column: 13, scope: !3683)
!3695 = !DILocation(line: 2820, column: 17, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !754, line: 2820, column: 17)
!3697 = distinct !DILexicalBlock(scope: !3693, file: !754, line: 2818, column: 11)
!3698 = !DILocation(line: 2820, column: 23, scope: !3696)
!3699 = !DILocation(line: 2820, column: 17, scope: !3697)
!3700 = !DILocation(line: 0, scope: !3683)
!3701 = !DILocation(line: 2813, column: 40, scope: !3679)
!3702 = distinct !{!3702, !3681, !3703, !1148, !1149}
!3703 = !DILocation(line: 2823, column: 7, scope: !3680)
!3704 = !DILocation(line: 2830, column: 7, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3667, file: !754, line: 2829, column: 5)
!3706 = !DILocation(line: 2834, column: 57, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !754, line: 2833, column: 9)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !754, line: 2831, column: 7)
!3709 = !DILocation(line: 2834, column: 67, scope: !3707)
!3710 = !DILocation(line: 2834, column: 27, scope: !3707)
!3711 = !DILocation(line: 2835, column: 11, scope: !3707)
!3712 = !DILocation(line: 2839, column: 31, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3708, file: !754, line: 2838, column: 9)
!3714 = !DILocation(line: 2839, column: 41, scope: !3713)
!3715 = !DILocation(line: 2839, column: 13, scope: !3713)
!3716 = !DILocation(line: 2840, column: 17, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !754, line: 2840, column: 15)
!3718 = !DILocation(line: 2840, column: 15, scope: !3713)
!3719 = !DILocation(line: 2842, column: 16, scope: !3713)
!3720 = !DILocation(line: 2842, column: 13, scope: !3713)
!3721 = !DILocation(line: 2842, column: 15, scope: !3713)
!3722 = !DILocation(line: 2847, column: 25, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3708, file: !754, line: 2846, column: 9)
!3724 = !DILocation(line: 2844, column: 9, scope: !3713)
!3725 = !DILocation(line: 2847, column: 31, scope: !3723)
!3726 = !DILocation(line: 2847, column: 41, scope: !3723)
!3727 = !DILocation(line: 2847, column: 13, scope: !3723)
!3728 = !DILocation(line: 2848, column: 17, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3723, file: !754, line: 2848, column: 15)
!3730 = !DILocation(line: 2848, column: 15, scope: !3723)
!3731 = !DILocation(line: 2850, column: 16, scope: !3723)
!3732 = !DILocation(line: 2850, column: 15, scope: !3723)
!3733 = !DILocation(line: 2851, column: 16, scope: !3723)
!3734 = !DILocation(line: 2852, column: 9, scope: !3723)
!3735 = !DILocation(line: 2905, column: 24, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3669, file: !754, line: 2905, column: 11)
!3737 = !DILocation(line: 2905, column: 66, scope: !3736)
!3738 = !DILocation(line: 2905, column: 31, scope: !3736)
!3739 = !DILocation(line: 2905, column: 11, scope: !3669)
!3740 = !DILocation(line: 2907, column: 24, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3736, file: !754, line: 2906, column: 9)
!3742 = !DILocation(line: 2907, column: 27, scope: !3741)
!3743 = !DILocation(line: 2908, column: 11, scope: !3741)
!3744 = !DILocation(line: 2910, column: 22, scope: !3669)
!3745 = !DILocation(line: 2910, column: 26, scope: !3669)
!3746 = !DILocation(line: 0, scope: !3669)
!3747 = !DILocation(line: 2911, column: 77, scope: !3669)
!3748 = !DILocation(line: 0, scope: !1126, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 2911, column: 23, scope: !3669)
!3750 = !DILocation(line: 2913, column: 26, scope: !3669)
!3751 = !DILocation(line: 2914, column: 17, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3669, file: !754, line: 2914, column: 11)
!3753 = !DILocation(line: 2914, column: 11, scope: !3669)
!3754 = !DILocation(line: 2915, column: 22, scope: !3752)
!3755 = !DILocation(line: 2915, column: 25, scope: !3752)
!3756 = !DILocation(line: 2915, column: 9, scope: !3752)
!3757 = !DILocation(line: 2916, column: 14, scope: !3669)
!3758 = !DILocation(line: 2917, column: 7, scope: !3669)
!3759 = !DILocation(line: 2921, column: 1, scope: !3655)
!3760 = !DISubprogram(name: "getc", scope: !673, file: !673, line: 486, type: !1706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!3761 = distinct !DISubprogram(name: "ReadBlobByte", scope: !754, file: !754, line: 2945, type: !1572, scopeLine: 2946, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3762)
!3762 = !{!3763, !3764, !3765, !3766}
!3763 = !DILocalVariable(name: "image", arg: 1, scope: !3761, file: !754, line: 2945, type: !614)
!3764 = !DILocalVariable(name: "p", scope: !3761, file: !754, line: 2948, type: !988)
!3765 = !DILocalVariable(name: "count", scope: !3761, file: !754, line: 2951, type: !672)
!3766 = !DILocalVariable(name: "buffer", scope: !3761, file: !754, line: 2954, type: !3767)
!3767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 8, elements: !584)
!3768 = !DILocation(line: 0, scope: !3761)
!3769 = !DILocation(line: 2953, column: 3, scope: !3761)
!3770 = !DILocation(line: 2954, column: 5, scope: !3761)
!3771 = !DILocation(line: 0, scope: !1866, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 2958, column: 5, scope: !3761)
!3773 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !3772)
!3774 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !3772)
!3775 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !3772)
!3776 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !3772)
!3777 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !3772)
!3778 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !3772)
!3779 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !3772)
!3780 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !3772)
!3781 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !3772)
!3782 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !3772)
!3783 = !DILocation(line: 2959, column: 7, scope: !3761)
!3784 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !3772)
!3785 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !3772)
!3786 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !3772)
!3787 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !3772)
!3788 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !3772)
!3789 = !DILocation(line: 2961, column: 17, scope: !3761)
!3790 = !DILocation(line: 2961, column: 10, scope: !3761)
!3791 = !DILocation(line: 2961, column: 3, scope: !3761)
!3792 = !DILocation(line: 2962, column: 1, scope: !3761)
!3793 = distinct !DISubprogram(name: "ReadBlobDouble", scope: !754, file: !754, line: 2987, type: !3794, scopeLine: 2988, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!648, !614}
!3796 = !{!3797, !3798}
!3797 = !DILocalVariable(name: "image", arg: 1, scope: !3793, file: !754, line: 2987, type: !614)
!3798 = !DILocalVariable(name: "quantum", scope: !3793, file: !754, line: 2996, type: !3799)
!3799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3793, file: !754, line: 2989, size: 64, elements: !3800)
!3800 = !{!3801, !3802}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_value", scope: !3799, file: !754, line: 2992, baseType: !610, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "double_value", scope: !3799, file: !754, line: 2995, baseType: !648, size: 64)
!3803 = !DILocation(line: 0, scope: !3793)
!3804 = !DILocation(line: 2999, column: 26, scope: !3793)
!3805 = !DILocation(line: 3000, column: 18, scope: !3793)
!3806 = !DILocation(line: 3000, column: 3, scope: !3793)
!3807 = distinct !DISubprogram(name: "ReadBlobLongLong", scope: !754, file: !754, line: 3123, type: !3808, scopeLine: 3124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!610, !614}
!3810 = !{!3811, !3812, !3813, !3814, !3815}
!3811 = !DILocalVariable(name: "image", arg: 1, scope: !3807, file: !754, line: 3123, type: !614)
!3812 = !DILocalVariable(name: "value", scope: !3807, file: !754, line: 3126, type: !610)
!3813 = !DILocalVariable(name: "p", scope: !3807, file: !754, line: 3129, type: !988)
!3814 = !DILocalVariable(name: "count", scope: !3807, file: !754, line: 3132, type: !672)
!3815 = !DILocalVariable(name: "buffer", scope: !3807, file: !754, line: 3135, type: !3816)
!3816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 64, elements: !3817)
!3817 = !{!3818}
!3818 = !DISubrange(count: 8)
!3819 = !DILocation(line: 0, scope: !3807)
!3820 = !DILocation(line: 3134, column: 3, scope: !3807)
!3821 = !DILocation(line: 3135, column: 5, scope: !3807)
!3822 = !DILocation(line: 3139, column: 10, scope: !3807)
!3823 = !DILocation(line: 0, scope: !1866, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 3140, column: 5, scope: !3807)
!3825 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !3824)
!3826 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !3824)
!3827 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !3824)
!3828 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !3824)
!3829 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !3824)
!3830 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !3824)
!3831 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !3824)
!3832 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !3824)
!3833 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !3824)
!3834 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !3824)
!3835 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !3824)
!3836 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !3824)
!3837 = !DILocation(line: 3141, column: 7, scope: !3807)
!3838 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !3824)
!3839 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !3824)
!3840 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !3824)
!3841 = !DILocation(line: 0, scope: !1126, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !3824)
!3843 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !3824)
!3844 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !3824)
!3845 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !3824)
!3846 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !3824)
!3847 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !3824)
!3848 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !3824)
!3849 = !DILocation(line: 3141, column: 13, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3807, file: !754, line: 3141, column: 7)
!3851 = !DILocation(line: 3143, column: 14, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3807, file: !754, line: 3143, column: 7)
!3853 = !{!1250, !1030, i64 408}
!3854 = !DILocation(line: 3143, column: 21, scope: !3852)
!3855 = !DILocation(line: 3143, column: 7, scope: !3807)
!3856 = !DILocation(line: 3146, column: 35, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3852, file: !754, line: 3144, column: 5)
!3858 = !DILocation(line: 3146, column: 33, scope: !3857)
!3859 = !DILocation(line: 3146, column: 15, scope: !3857)
!3860 = !DILocation(line: 3146, column: 40, scope: !3857)
!3861 = !DILocation(line: 3146, column: 12, scope: !3857)
!3862 = !DILocation(line: 3147, column: 35, scope: !3857)
!3863 = !DILocation(line: 3147, column: 33, scope: !3857)
!3864 = !DILocation(line: 3147, column: 15, scope: !3857)
!3865 = !DILocation(line: 3147, column: 40, scope: !3857)
!3866 = !DILocation(line: 3147, column: 12, scope: !3857)
!3867 = !DILocation(line: 3148, column: 35, scope: !3857)
!3868 = !DILocation(line: 3148, column: 33, scope: !3857)
!3869 = !DILocation(line: 3148, column: 15, scope: !3857)
!3870 = !DILocation(line: 3148, column: 40, scope: !3857)
!3871 = !DILocation(line: 3148, column: 12, scope: !3857)
!3872 = !DILocation(line: 3149, column: 35, scope: !3857)
!3873 = !DILocation(line: 3149, column: 33, scope: !3857)
!3874 = !DILocation(line: 3149, column: 15, scope: !3857)
!3875 = !DILocation(line: 3149, column: 40, scope: !3857)
!3876 = !DILocation(line: 3149, column: 12, scope: !3857)
!3877 = !DILocation(line: 3150, column: 35, scope: !3857)
!3878 = !DILocation(line: 3150, column: 33, scope: !3857)
!3879 = !DILocation(line: 3150, column: 15, scope: !3857)
!3880 = !DILocation(line: 3150, column: 40, scope: !3857)
!3881 = !DILocation(line: 3150, column: 12, scope: !3857)
!3882 = !DILocation(line: 3151, column: 35, scope: !3857)
!3883 = !DILocation(line: 3151, column: 33, scope: !3857)
!3884 = !DILocation(line: 3151, column: 15, scope: !3857)
!3885 = !DILocation(line: 3151, column: 40, scope: !3857)
!3886 = !DILocation(line: 3151, column: 12, scope: !3857)
!3887 = !DILocation(line: 3152, column: 33, scope: !3857)
!3888 = !DILocation(line: 3152, column: 15, scope: !3857)
!3889 = !DILocation(line: 3152, column: 40, scope: !3857)
!3890 = !DILocation(line: 3152, column: 12, scope: !3857)
!3891 = !DILocation(line: 3153, column: 7, scope: !3857)
!3892 = !DILocation(line: 3155, column: 35, scope: !3807)
!3893 = !DILocation(line: 3156, column: 31, scope: !3807)
!3894 = !DILocation(line: 3156, column: 29, scope: !3807)
!3895 = !DILocation(line: 3156, column: 11, scope: !3807)
!3896 = !DILocation(line: 3156, column: 36, scope: !3807)
!3897 = !DILocation(line: 3156, column: 8, scope: !3807)
!3898 = !DILocation(line: 3157, column: 31, scope: !3807)
!3899 = !DILocation(line: 3157, column: 29, scope: !3807)
!3900 = !DILocation(line: 3157, column: 11, scope: !3807)
!3901 = !DILocation(line: 3157, column: 36, scope: !3807)
!3902 = !DILocation(line: 3157, column: 8, scope: !3807)
!3903 = !DILocation(line: 3158, column: 31, scope: !3807)
!3904 = !DILocation(line: 3158, column: 29, scope: !3807)
!3905 = !DILocation(line: 3158, column: 11, scope: !3807)
!3906 = !DILocation(line: 3158, column: 36, scope: !3807)
!3907 = !DILocation(line: 3158, column: 8, scope: !3807)
!3908 = !DILocation(line: 3159, column: 31, scope: !3807)
!3909 = !DILocation(line: 3159, column: 29, scope: !3807)
!3910 = !DILocation(line: 3159, column: 11, scope: !3807)
!3911 = !DILocation(line: 3159, column: 36, scope: !3807)
!3912 = !DILocation(line: 3159, column: 8, scope: !3807)
!3913 = !DILocation(line: 3160, column: 31, scope: !3807)
!3914 = !DILocation(line: 3160, column: 29, scope: !3807)
!3915 = !DILocation(line: 3160, column: 11, scope: !3807)
!3916 = !DILocation(line: 3160, column: 36, scope: !3807)
!3917 = !DILocation(line: 3160, column: 8, scope: !3807)
!3918 = !DILocation(line: 3161, column: 31, scope: !3807)
!3919 = !DILocation(line: 3161, column: 29, scope: !3807)
!3920 = !DILocation(line: 3161, column: 11, scope: !3807)
!3921 = !DILocation(line: 3161, column: 36, scope: !3807)
!3922 = !DILocation(line: 3161, column: 8, scope: !3807)
!3923 = !DILocation(line: 3162, column: 29, scope: !3807)
!3924 = !DILocation(line: 3162, column: 11, scope: !3807)
!3925 = !DILocation(line: 3162, column: 8, scope: !3807)
!3926 = !DILocation(line: 3163, column: 3, scope: !3807)
!3927 = !DILocation(line: 3164, column: 1, scope: !3807)
!3928 = distinct !DISubprogram(name: "ReadBlobFloat", scope: !754, file: !754, line: 3026, type: !3929, scopeLine: 3027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3932)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!3931, !614}
!3931 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!3932 = !{!3933, !3934}
!3933 = !DILocalVariable(name: "image", arg: 1, scope: !3928, file: !754, line: 3026, type: !614)
!3934 = !DILocalVariable(name: "quantum", scope: !3928, file: !754, line: 3035, type: !3935)
!3935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3928, file: !754, line: 3028, size: 32, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_value", scope: !3935, file: !754, line: 3031, baseType: !5, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "float_value", scope: !3935, file: !754, line: 3034, baseType: !3931, size: 32)
!3939 = !DILocation(line: 0, scope: !3928)
!3940 = !DILocalVariable(name: "image", arg: 1, scope: !3941, file: !754, line: 3065, type: !614)
!3941 = distinct !DISubprogram(name: "ReadBlobLong", scope: !754, file: !754, line: 3065, type: !3942, scopeLine: 3066, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!5, !614}
!3944 = !{!3940, !3945, !3946, !3947, !3951}
!3945 = !DILocalVariable(name: "p", scope: !3941, file: !754, line: 3068, type: !988)
!3946 = !DILocalVariable(name: "count", scope: !3941, file: !754, line: 3071, type: !672)
!3947 = !DILocalVariable(name: "buffer", scope: !3941, file: !754, line: 3074, type: !3948)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 32, elements: !3949)
!3949 = !{!3950}
!3950 = !DISubrange(count: 4)
!3951 = !DILocalVariable(name: "value", scope: !3941, file: !754, line: 3077, type: !5)
!3952 = !DILocation(line: 0, scope: !3941, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 3038, column: 26, scope: !3928)
!3954 = !DILocation(line: 3073, column: 3, scope: !3941, inlinedAt: !3953)
!3955 = !DILocation(line: 3074, column: 5, scope: !3941, inlinedAt: !3953)
!3956 = !DILocation(line: 3081, column: 10, scope: !3941, inlinedAt: !3953)
!3957 = !DILocation(line: 0, scope: !1866, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 3082, column: 5, scope: !3941, inlinedAt: !3953)
!3959 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !3958)
!3960 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !3958)
!3961 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !3958)
!3962 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !3958)
!3963 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !3958)
!3964 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !3958)
!3965 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !3958)
!3966 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !3958)
!3967 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !3958)
!3968 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !3958)
!3969 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !3958)
!3970 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !3958)
!3971 = !DILocation(line: 3083, column: 7, scope: !3941, inlinedAt: !3953)
!3972 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !3958)
!3973 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !3958)
!3974 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !3958)
!3975 = !DILocation(line: 0, scope: !1126, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !3958)
!3977 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !3958)
!3978 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !3958)
!3979 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !3958)
!3980 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !3958)
!3981 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !3958)
!3982 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !3958)
!3983 = !DILocation(line: 3083, column: 13, scope: !3984, inlinedAt: !3953)
!3984 = distinct !DILexicalBlock(scope: !3941, file: !754, line: 3083, column: 7)
!3985 = !DILocation(line: 3085, column: 14, scope: !3986, inlinedAt: !3953)
!3986 = distinct !DILexicalBlock(scope: !3941, file: !754, line: 3085, column: 7)
!3987 = !DILocation(line: 3085, column: 21, scope: !3986, inlinedAt: !3953)
!3988 = !DILocation(line: 3085, column: 7, scope: !3941, inlinedAt: !3953)
!3989 = !DILocation(line: 3088, column: 33, scope: !3990, inlinedAt: !3953)
!3990 = distinct !DILexicalBlock(scope: !3986, file: !754, line: 3086, column: 5)
!3991 = !DILocation(line: 3088, column: 31, scope: !3990, inlinedAt: !3953)
!3992 = !DILocation(line: 3088, column: 15, scope: !3990, inlinedAt: !3953)
!3993 = !DILocation(line: 3088, column: 38, scope: !3990, inlinedAt: !3953)
!3994 = !DILocation(line: 3088, column: 12, scope: !3990, inlinedAt: !3953)
!3995 = !DILocation(line: 3089, column: 33, scope: !3990, inlinedAt: !3953)
!3996 = !DILocation(line: 3089, column: 31, scope: !3990, inlinedAt: !3953)
!3997 = !DILocation(line: 3089, column: 15, scope: !3990, inlinedAt: !3953)
!3998 = !DILocation(line: 3089, column: 38, scope: !3990, inlinedAt: !3953)
!3999 = !DILocation(line: 3089, column: 12, scope: !3990, inlinedAt: !3953)
!4000 = !DILocation(line: 3090, column: 31, scope: !3990, inlinedAt: !3953)
!4001 = !DILocation(line: 3090, column: 15, scope: !3990, inlinedAt: !3953)
!4002 = !DILocation(line: 3090, column: 38, scope: !3990, inlinedAt: !3953)
!4003 = !DILocation(line: 3090, column: 12, scope: !3990, inlinedAt: !3953)
!4004 = !DILocation(line: 3091, column: 7, scope: !3990, inlinedAt: !3953)
!4005 = !DILocation(line: 3093, column: 33, scope: !3941, inlinedAt: !3953)
!4006 = !DILocation(line: 3094, column: 29, scope: !3941, inlinedAt: !3953)
!4007 = !DILocation(line: 3094, column: 27, scope: !3941, inlinedAt: !3953)
!4008 = !DILocation(line: 3094, column: 11, scope: !3941, inlinedAt: !3953)
!4009 = !DILocation(line: 3094, column: 34, scope: !3941, inlinedAt: !3953)
!4010 = !DILocation(line: 3094, column: 8, scope: !3941, inlinedAt: !3953)
!4011 = !DILocation(line: 3095, column: 29, scope: !3941, inlinedAt: !3953)
!4012 = !DILocation(line: 3095, column: 27, scope: !3941, inlinedAt: !3953)
!4013 = !DILocation(line: 3095, column: 11, scope: !3941, inlinedAt: !3953)
!4014 = !DILocation(line: 3095, column: 34, scope: !3941, inlinedAt: !3953)
!4015 = !DILocation(line: 3095, column: 8, scope: !3941, inlinedAt: !3953)
!4016 = !DILocation(line: 3096, column: 27, scope: !3941, inlinedAt: !3953)
!4017 = !DILocation(line: 3096, column: 11, scope: !3941, inlinedAt: !3953)
!4018 = !DILocation(line: 3096, column: 8, scope: !3941, inlinedAt: !3953)
!4019 = !DILocation(line: 3097, column: 3, scope: !3941, inlinedAt: !3953)
!4020 = !DILocation(line: 3098, column: 1, scope: !3941, inlinedAt: !3953)
!4021 = !DILocation(line: 3039, column: 18, scope: !3928)
!4022 = !DILocation(line: 3039, column: 3, scope: !3928)
!4023 = !DILocation(line: 0, scope: !3941)
!4024 = !DILocation(line: 3073, column: 3, scope: !3941)
!4025 = !DILocation(line: 3074, column: 5, scope: !3941)
!4026 = !DILocation(line: 3081, column: 10, scope: !3941)
!4027 = !DILocation(line: 0, scope: !1866, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 3082, column: 5, scope: !3941)
!4029 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4028)
!4030 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4028)
!4031 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4028)
!4032 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4028)
!4033 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4028)
!4034 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !4028)
!4035 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4028)
!4036 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4028)
!4037 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4028)
!4038 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4028)
!4039 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4028)
!4040 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4028)
!4041 = !DILocation(line: 3083, column: 7, scope: !3941)
!4042 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !4028)
!4043 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !4028)
!4044 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !4028)
!4045 = !DILocation(line: 0, scope: !1126, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !4028)
!4047 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4028)
!4048 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !4028)
!4049 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !4028)
!4050 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !4028)
!4051 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !4028)
!4052 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !4028)
!4053 = !DILocation(line: 3083, column: 13, scope: !3984)
!4054 = !DILocation(line: 3085, column: 14, scope: !3986)
!4055 = !DILocation(line: 3085, column: 21, scope: !3986)
!4056 = !DILocation(line: 3085, column: 7, scope: !3941)
!4057 = !DILocation(line: 3088, column: 33, scope: !3990)
!4058 = !DILocation(line: 3088, column: 31, scope: !3990)
!4059 = !DILocation(line: 3088, column: 15, scope: !3990)
!4060 = !DILocation(line: 3088, column: 38, scope: !3990)
!4061 = !DILocation(line: 3088, column: 12, scope: !3990)
!4062 = !DILocation(line: 3089, column: 33, scope: !3990)
!4063 = !DILocation(line: 3089, column: 31, scope: !3990)
!4064 = !DILocation(line: 3089, column: 15, scope: !3990)
!4065 = !DILocation(line: 3089, column: 38, scope: !3990)
!4066 = !DILocation(line: 3089, column: 12, scope: !3990)
!4067 = !DILocation(line: 3090, column: 31, scope: !3990)
!4068 = !DILocation(line: 3090, column: 15, scope: !3990)
!4069 = !DILocation(line: 3090, column: 38, scope: !3990)
!4070 = !DILocation(line: 3090, column: 12, scope: !3990)
!4071 = !DILocation(line: 3091, column: 7, scope: !3990)
!4072 = !DILocation(line: 3093, column: 33, scope: !3941)
!4073 = !DILocation(line: 3094, column: 29, scope: !3941)
!4074 = !DILocation(line: 3094, column: 27, scope: !3941)
!4075 = !DILocation(line: 3094, column: 11, scope: !3941)
!4076 = !DILocation(line: 3094, column: 34, scope: !3941)
!4077 = !DILocation(line: 3094, column: 8, scope: !3941)
!4078 = !DILocation(line: 3095, column: 29, scope: !3941)
!4079 = !DILocation(line: 3095, column: 27, scope: !3941)
!4080 = !DILocation(line: 3095, column: 11, scope: !3941)
!4081 = !DILocation(line: 3095, column: 34, scope: !3941)
!4082 = !DILocation(line: 3095, column: 8, scope: !3941)
!4083 = !DILocation(line: 3096, column: 27, scope: !3941)
!4084 = !DILocation(line: 3096, column: 11, scope: !3941)
!4085 = !DILocation(line: 3096, column: 8, scope: !3941)
!4086 = !DILocation(line: 3097, column: 3, scope: !3941)
!4087 = !DILocation(line: 3098, column: 1, scope: !3941)
!4088 = distinct !DISubprogram(name: "ReadBlobShort", scope: !754, file: !754, line: 3189, type: !4089, scopeLine: 3190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!579, !614}
!4091 = !{!4092, !4093, !4094, !4095, !4096}
!4092 = !DILocalVariable(name: "image", arg: 1, scope: !4088, file: !754, line: 3189, type: !614)
!4093 = !DILocalVariable(name: "p", scope: !4088, file: !754, line: 3192, type: !988)
!4094 = !DILocalVariable(name: "value", scope: !4088, file: !754, line: 3195, type: !5)
!4095 = !DILocalVariable(name: "count", scope: !4088, file: !754, line: 3198, type: !672)
!4096 = !DILocalVariable(name: "buffer", scope: !4088, file: !754, line: 3201, type: !4097)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 16, elements: !4098)
!4098 = !{!4099}
!4099 = !DISubrange(count: 2)
!4100 = !DILocation(line: 0, scope: !4088)
!4101 = !DILocation(line: 3200, column: 3, scope: !4088)
!4102 = !DILocation(line: 3201, column: 5, scope: !4088)
!4103 = !DILocation(line: 3205, column: 10, scope: !4088)
!4104 = !DILocation(line: 0, scope: !1866, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 3206, column: 5, scope: !4088)
!4106 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4105)
!4107 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4105)
!4108 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4105)
!4109 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4105)
!4110 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4105)
!4111 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !4105)
!4112 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4105)
!4113 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4105)
!4114 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4105)
!4115 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4105)
!4116 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4105)
!4117 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4105)
!4118 = !DILocation(line: 3207, column: 7, scope: !4088)
!4119 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !4105)
!4120 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !4105)
!4121 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !4105)
!4122 = !DILocation(line: 0, scope: !1126, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !4105)
!4124 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4105)
!4125 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !4105)
!4126 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !4105)
!4127 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !4105)
!4128 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !4105)
!4129 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !4105)
!4130 = !DILocation(line: 3207, column: 13, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4088, file: !754, line: 3207, column: 7)
!4132 = !DILocation(line: 3209, column: 14, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4088, file: !754, line: 3209, column: 7)
!4134 = !DILocation(line: 3209, column: 21, scope: !4133)
!4135 = !DILocation(line: 3209, column: 7, scope: !4088)
!4136 = !DILocation(line: 3212, column: 31, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4133, file: !754, line: 3210, column: 5)
!4138 = !DILocation(line: 3212, column: 15, scope: !4137)
!4139 = !DILocation(line: 3212, column: 38, scope: !4137)
!4140 = !DILocation(line: 3212, column: 12, scope: !4137)
!4141 = !DILocation(line: 3213, column: 7, scope: !4137)
!4142 = !DILocation(line: 3215, column: 32, scope: !4088)
!4143 = !DILocation(line: 3216, column: 26, scope: !4088)
!4144 = !DILocation(line: 3216, column: 10, scope: !4088)
!4145 = !DILocation(line: 3216, column: 8, scope: !4088)
!4146 = !DILocation(line: 3217, column: 3, scope: !4088)
!4147 = !DILocation(line: 3218, column: 1, scope: !4088)
!4148 = distinct !DISubprogram(name: "ReadBlobLSBLong", scope: !754, file: !754, line: 3243, type: !3942, scopeLine: 3244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4149)
!4149 = !{!4150, !4151, !4152, !4153, !4154}
!4150 = !DILocalVariable(name: "image", arg: 1, scope: !4148, file: !754, line: 3243, type: !614)
!4151 = !DILocalVariable(name: "p", scope: !4148, file: !754, line: 3246, type: !988)
!4152 = !DILocalVariable(name: "value", scope: !4148, file: !754, line: 3249, type: !5)
!4153 = !DILocalVariable(name: "count", scope: !4148, file: !754, line: 3252, type: !672)
!4154 = !DILocalVariable(name: "buffer", scope: !4148, file: !754, line: 3255, type: !3948)
!4155 = !DILocation(line: 0, scope: !4148)
!4156 = !DILocation(line: 3254, column: 3, scope: !4148)
!4157 = !DILocation(line: 3255, column: 5, scope: !4148)
!4158 = !DILocation(line: 3259, column: 10, scope: !4148)
!4159 = !DILocation(line: 0, scope: !1866, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 3260, column: 5, scope: !4148)
!4161 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4160)
!4162 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4160)
!4163 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4160)
!4164 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4160)
!4165 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4160)
!4166 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !4160)
!4167 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4160)
!4168 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4160)
!4169 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4160)
!4170 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4160)
!4171 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4160)
!4172 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4160)
!4173 = !DILocation(line: 3261, column: 7, scope: !4148)
!4174 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !4160)
!4175 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !4160)
!4176 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !4160)
!4177 = !DILocation(line: 0, scope: !1126, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !4160)
!4179 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4160)
!4180 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !4160)
!4181 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !4160)
!4182 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !4160)
!4183 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !4160)
!4184 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !4160)
!4185 = !DILocation(line: 3261, column: 13, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4148, file: !754, line: 3261, column: 7)
!4187 = !DILocation(line: 3263, column: 27, scope: !4148)
!4188 = !DILocation(line: 3263, column: 25, scope: !4148)
!4189 = !DILocation(line: 3263, column: 9, scope: !4148)
!4190 = !DILocation(line: 3264, column: 29, scope: !4148)
!4191 = !DILocation(line: 3264, column: 27, scope: !4148)
!4192 = !DILocation(line: 3264, column: 11, scope: !4148)
!4193 = !DILocation(line: 3264, column: 34, scope: !4148)
!4194 = !DILocation(line: 3264, column: 8, scope: !4148)
!4195 = !DILocation(line: 3265, column: 29, scope: !4148)
!4196 = !DILocation(line: 3265, column: 27, scope: !4148)
!4197 = !DILocation(line: 3265, column: 11, scope: !4148)
!4198 = !DILocation(line: 3265, column: 34, scope: !4148)
!4199 = !DILocation(line: 3265, column: 8, scope: !4148)
!4200 = !DILocation(line: 3266, column: 27, scope: !4148)
!4201 = !DILocation(line: 3266, column: 11, scope: !4148)
!4202 = !DILocation(line: 3266, column: 34, scope: !4148)
!4203 = !DILocation(line: 3266, column: 8, scope: !4148)
!4204 = !DILocation(line: 3267, column: 3, scope: !4148)
!4205 = !DILocation(line: 3268, column: 1, scope: !4148)
!4206 = distinct !DISubprogram(name: "ReadBlobLSBShort", scope: !754, file: !754, line: 3293, type: !4089, scopeLine: 3294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212}
!4208 = !DILocalVariable(name: "image", arg: 1, scope: !4206, file: !754, line: 3293, type: !614)
!4209 = !DILocalVariable(name: "p", scope: !4206, file: !754, line: 3296, type: !988)
!4210 = !DILocalVariable(name: "value", scope: !4206, file: !754, line: 3299, type: !5)
!4211 = !DILocalVariable(name: "count", scope: !4206, file: !754, line: 3302, type: !672)
!4212 = !DILocalVariable(name: "buffer", scope: !4206, file: !754, line: 3305, type: !4097)
!4213 = !DILocation(line: 0, scope: !4206)
!4214 = !DILocation(line: 3304, column: 3, scope: !4206)
!4215 = !DILocation(line: 3305, column: 5, scope: !4206)
!4216 = !DILocation(line: 3309, column: 10, scope: !4206)
!4217 = !DILocation(line: 0, scope: !1866, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 3310, column: 5, scope: !4206)
!4219 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4218)
!4220 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4218)
!4221 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4218)
!4222 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4218)
!4223 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4218)
!4224 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !4218)
!4225 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4218)
!4226 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4218)
!4227 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4218)
!4228 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4218)
!4229 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4218)
!4230 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4218)
!4231 = !DILocation(line: 3311, column: 7, scope: !4206)
!4232 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !4218)
!4233 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !4218)
!4234 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !4218)
!4235 = !DILocation(line: 0, scope: !1126, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !4218)
!4237 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4218)
!4238 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !4218)
!4239 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !4218)
!4240 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !4218)
!4241 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !4218)
!4242 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !4218)
!4243 = !DILocation(line: 3311, column: 13, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4206, file: !754, line: 3311, column: 7)
!4245 = !DILocation(line: 3313, column: 27, scope: !4206)
!4246 = !DILocation(line: 3313, column: 25, scope: !4206)
!4247 = !DILocation(line: 3313, column: 9, scope: !4206)
!4248 = !DILocation(line: 3314, column: 28, scope: !4206)
!4249 = !DILocation(line: 3314, column: 11, scope: !4206)
!4250 = !DILocation(line: 3314, column: 35, scope: !4206)
!4251 = !DILocation(line: 3314, column: 8, scope: !4206)
!4252 = !DILocation(line: 3315, column: 3, scope: !4206)
!4253 = !DILocation(line: 3316, column: 1, scope: !4206)
!4254 = distinct !DISubprogram(name: "ReadBlobMSBLong", scope: !754, file: !754, line: 3341, type: !3942, scopeLine: 3342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4255)
!4255 = !{!4256, !4257, !4258, !4259, !4260}
!4256 = !DILocalVariable(name: "image", arg: 1, scope: !4254, file: !754, line: 3341, type: !614)
!4257 = !DILocalVariable(name: "p", scope: !4254, file: !754, line: 3344, type: !988)
!4258 = !DILocalVariable(name: "value", scope: !4254, file: !754, line: 3347, type: !5)
!4259 = !DILocalVariable(name: "count", scope: !4254, file: !754, line: 3350, type: !672)
!4260 = !DILocalVariable(name: "buffer", scope: !4254, file: !754, line: 3353, type: !3948)
!4261 = !DILocation(line: 0, scope: !4254)
!4262 = !DILocation(line: 3352, column: 3, scope: !4254)
!4263 = !DILocation(line: 3353, column: 5, scope: !4254)
!4264 = !DILocation(line: 3357, column: 10, scope: !4254)
!4265 = !DILocation(line: 0, scope: !1866, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 3358, column: 5, scope: !4254)
!4267 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4266)
!4268 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4266)
!4269 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4266)
!4270 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4266)
!4271 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4266)
!4272 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !4266)
!4273 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4266)
!4274 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4266)
!4275 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4266)
!4276 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4266)
!4277 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4266)
!4278 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4266)
!4279 = !DILocation(line: 3359, column: 7, scope: !4254)
!4280 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !4266)
!4281 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !4266)
!4282 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !4266)
!4283 = !DILocation(line: 0, scope: !1126, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !4266)
!4285 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4266)
!4286 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !4266)
!4287 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !4266)
!4288 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !4266)
!4289 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !4266)
!4290 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !4266)
!4291 = !DILocation(line: 3359, column: 13, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4254, file: !754, line: 3359, column: 7)
!4293 = !DILocation(line: 3361, column: 28, scope: !4254)
!4294 = !DILocation(line: 3361, column: 26, scope: !4254)
!4295 = !DILocation(line: 3361, column: 10, scope: !4254)
!4296 = !DILocation(line: 3361, column: 32, scope: !4254)
!4297 = !DILocation(line: 3362, column: 29, scope: !4254)
!4298 = !DILocation(line: 3362, column: 27, scope: !4254)
!4299 = !DILocation(line: 3362, column: 11, scope: !4254)
!4300 = !DILocation(line: 3362, column: 33, scope: !4254)
!4301 = !DILocation(line: 3362, column: 8, scope: !4254)
!4302 = !DILocation(line: 3363, column: 29, scope: !4254)
!4303 = !DILocation(line: 3363, column: 27, scope: !4254)
!4304 = !DILocation(line: 3363, column: 11, scope: !4254)
!4305 = !DILocation(line: 3363, column: 33, scope: !4254)
!4306 = !DILocation(line: 3363, column: 8, scope: !4254)
!4307 = !DILocation(line: 3364, column: 26, scope: !4254)
!4308 = !DILocation(line: 3364, column: 10, scope: !4254)
!4309 = !DILocation(line: 3364, column: 8, scope: !4254)
!4310 = !DILocation(line: 3365, column: 3, scope: !4254)
!4311 = !DILocation(line: 3366, column: 1, scope: !4254)
!4312 = distinct !DISubprogram(name: "ReadBlobMSBLongLong", scope: !754, file: !754, line: 3391, type: !3808, scopeLine: 3392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4313)
!4313 = !{!4314, !4315, !4316, !4317, !4318}
!4314 = !DILocalVariable(name: "image", arg: 1, scope: !4312, file: !754, line: 3391, type: !614)
!4315 = !DILocalVariable(name: "p", scope: !4312, file: !754, line: 3394, type: !988)
!4316 = !DILocalVariable(name: "value", scope: !4312, file: !754, line: 3397, type: !610)
!4317 = !DILocalVariable(name: "count", scope: !4312, file: !754, line: 3400, type: !672)
!4318 = !DILocalVariable(name: "buffer", scope: !4312, file: !754, line: 3403, type: !3816)
!4319 = !DILocation(line: 0, scope: !4312)
!4320 = !DILocation(line: 3402, column: 3, scope: !4312)
!4321 = !DILocation(line: 3403, column: 5, scope: !4312)
!4322 = !DILocation(line: 3407, column: 10, scope: !4312)
!4323 = !DILocation(line: 0, scope: !1866, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 3408, column: 5, scope: !4312)
!4325 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4324)
!4326 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4324)
!4327 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4324)
!4328 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4324)
!4329 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4324)
!4330 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !4324)
!4331 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4324)
!4332 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4324)
!4333 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4324)
!4334 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4324)
!4335 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4324)
!4336 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4324)
!4337 = !DILocation(line: 3409, column: 7, scope: !4312)
!4338 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !4324)
!4339 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !4324)
!4340 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !4324)
!4341 = !DILocation(line: 0, scope: !1126, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !4324)
!4343 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4324)
!4344 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !4324)
!4345 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !4324)
!4346 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !4324)
!4347 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !4324)
!4348 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !4324)
!4349 = !DILocation(line: 3409, column: 13, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4312, file: !754, line: 3409, column: 7)
!4351 = !DILocation(line: 3411, column: 30, scope: !4312)
!4352 = !DILocation(line: 3411, column: 28, scope: !4312)
!4353 = !DILocation(line: 3411, column: 10, scope: !4312)
!4354 = !DILocation(line: 3411, column: 35, scope: !4312)
!4355 = !DILocation(line: 3412, column: 31, scope: !4312)
!4356 = !DILocation(line: 3412, column: 29, scope: !4312)
!4357 = !DILocation(line: 3412, column: 11, scope: !4312)
!4358 = !DILocation(line: 3412, column: 36, scope: !4312)
!4359 = !DILocation(line: 3412, column: 8, scope: !4312)
!4360 = !DILocation(line: 3413, column: 31, scope: !4312)
!4361 = !DILocation(line: 3413, column: 29, scope: !4312)
!4362 = !DILocation(line: 3413, column: 11, scope: !4312)
!4363 = !DILocation(line: 3413, column: 36, scope: !4312)
!4364 = !DILocation(line: 3413, column: 8, scope: !4312)
!4365 = !DILocation(line: 3414, column: 31, scope: !4312)
!4366 = !DILocation(line: 3414, column: 29, scope: !4312)
!4367 = !DILocation(line: 3414, column: 11, scope: !4312)
!4368 = !DILocation(line: 3414, column: 36, scope: !4312)
!4369 = !DILocation(line: 3414, column: 8, scope: !4312)
!4370 = !DILocation(line: 3415, column: 31, scope: !4312)
!4371 = !DILocation(line: 3415, column: 29, scope: !4312)
!4372 = !DILocation(line: 3415, column: 11, scope: !4312)
!4373 = !DILocation(line: 3415, column: 36, scope: !4312)
!4374 = !DILocation(line: 3415, column: 8, scope: !4312)
!4375 = !DILocation(line: 3416, column: 31, scope: !4312)
!4376 = !DILocation(line: 3416, column: 29, scope: !4312)
!4377 = !DILocation(line: 3416, column: 11, scope: !4312)
!4378 = !DILocation(line: 3416, column: 36, scope: !4312)
!4379 = !DILocation(line: 3416, column: 8, scope: !4312)
!4380 = !DILocation(line: 3417, column: 31, scope: !4312)
!4381 = !DILocation(line: 3417, column: 29, scope: !4312)
!4382 = !DILocation(line: 3417, column: 11, scope: !4312)
!4383 = !DILocation(line: 3417, column: 36, scope: !4312)
!4384 = !DILocation(line: 3417, column: 8, scope: !4312)
!4385 = !DILocation(line: 3418, column: 29, scope: !4312)
!4386 = !DILocation(line: 3418, column: 11, scope: !4312)
!4387 = !DILocation(line: 3418, column: 8, scope: !4312)
!4388 = !DILocation(line: 3419, column: 3, scope: !4312)
!4389 = !DILocation(line: 3420, column: 1, scope: !4312)
!4390 = distinct !DISubprogram(name: "ReadBlobMSBShort", scope: !754, file: !754, line: 3445, type: !4089, scopeLine: 3446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4391)
!4391 = !{!4392, !4393, !4394, !4395, !4396}
!4392 = !DILocalVariable(name: "image", arg: 1, scope: !4390, file: !754, line: 3445, type: !614)
!4393 = !DILocalVariable(name: "p", scope: !4390, file: !754, line: 3448, type: !988)
!4394 = !DILocalVariable(name: "value", scope: !4390, file: !754, line: 3451, type: !5)
!4395 = !DILocalVariable(name: "count", scope: !4390, file: !754, line: 3454, type: !672)
!4396 = !DILocalVariable(name: "buffer", scope: !4390, file: !754, line: 3457, type: !4097)
!4397 = !DILocation(line: 0, scope: !4390)
!4398 = !DILocation(line: 3456, column: 3, scope: !4390)
!4399 = !DILocation(line: 3457, column: 5, scope: !4390)
!4400 = !DILocation(line: 3461, column: 10, scope: !4390)
!4401 = !DILocation(line: 0, scope: !1866, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 3462, column: 5, scope: !4390)
!4403 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4402)
!4404 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4402)
!4405 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4402)
!4406 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4402)
!4407 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4402)
!4408 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !4402)
!4409 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4402)
!4410 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4402)
!4411 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4402)
!4412 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4402)
!4413 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4402)
!4414 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4402)
!4415 = !DILocation(line: 3463, column: 7, scope: !4390)
!4416 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !4402)
!4417 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !4402)
!4418 = !DILocation(line: 753, column: 74, scope: !1866, inlinedAt: !4402)
!4419 = !DILocation(line: 0, scope: !1126, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 753, column: 20, scope: !1866, inlinedAt: !4402)
!4421 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4402)
!4422 = !DILocation(line: 756, column: 14, scope: !1894, inlinedAt: !4402)
!4423 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !4402)
!4424 = !DILocation(line: 757, column: 18, scope: !1894, inlinedAt: !4402)
!4425 = !DILocation(line: 757, column: 21, scope: !1894, inlinedAt: !4402)
!4426 = !DILocation(line: 757, column: 5, scope: !1894, inlinedAt: !4402)
!4427 = !DILocation(line: 3463, column: 13, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4390, file: !754, line: 3463, column: 7)
!4429 = !DILocation(line: 3465, column: 28, scope: !4390)
!4430 = !DILocation(line: 3465, column: 26, scope: !4390)
!4431 = !DILocation(line: 3465, column: 25, scope: !4390)
!4432 = !DILocation(line: 3465, column: 32, scope: !4390)
!4433 = !DILocation(line: 3466, column: 26, scope: !4390)
!4434 = !DILocation(line: 3466, column: 10, scope: !4390)
!4435 = !DILocation(line: 3466, column: 8, scope: !4390)
!4436 = !DILocation(line: 3467, column: 3, scope: !4390)
!4437 = !DILocation(line: 3468, column: 1, scope: !4390)
!4438 = distinct !DISubprogram(name: "ReadBlobString", scope: !754, file: !754, line: 3495, type: !4439, scopeLine: 3496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!555, !614, !555}
!4441 = !{!4442, !4443, !4444, !4445, !4446, !4447}
!4442 = !DILocalVariable(name: "image", arg: 1, scope: !4438, file: !754, line: 3495, type: !614)
!4443 = !DILocalVariable(name: "string", arg: 2, scope: !4438, file: !754, line: 3495, type: !555)
!4444 = !DILocalVariable(name: "p", scope: !4438, file: !754, line: 3498, type: !988)
!4445 = !DILocalVariable(name: "i", scope: !4438, file: !754, line: 3501, type: !672)
!4446 = !DILocalVariable(name: "count", scope: !4438, file: !754, line: 3504, type: !672)
!4447 = !DILocalVariable(name: "buffer", scope: !4438, file: !754, line: 3507, type: !3767)
!4448 = !DILocation(line: 0, scope: !4438)
!4449 = !DILocation(line: 3506, column: 3, scope: !4438)
!4450 = !DILocation(line: 3507, column: 5, scope: !4438)
!4451 = !DILocation(line: 3511, column: 3, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4438, file: !754, line: 3511, column: 3)
!4453 = !DILocation(line: 0, scope: !1866, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 3513, column: 7, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !754, line: 3512, column: 3)
!4456 = distinct !DILexicalBlock(scope: !4452, file: !754, line: 3511, column: 3)
!4457 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4454)
!4458 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4454)
!4459 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4454)
!4460 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4454)
!4461 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4454)
!4462 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4454)
!4463 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4454)
!4464 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4454)
!4465 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4454)
!4466 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4454)
!4467 = !DILocation(line: 3514, column: 9, scope: !4455)
!4468 = !DILocation(line: 752, column: 21, scope: !1866, inlinedAt: !4454)
!4469 = !DILocation(line: 752, column: 25, scope: !1866, inlinedAt: !4454)
!4470 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4454)
!4471 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4454)
!4472 = !DILocation(line: 3514, column: 15, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4455, file: !754, line: 3514, column: 9)
!4474 = !DILocation(line: 3516, column: 15, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !754, line: 3516, column: 13)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !754, line: 3515, column: 7)
!4477 = !DILocation(line: 3516, column: 13, scope: !4476)
!4478 = !DILocation(line: 3520, column: 23, scope: !4455)
!4479 = !DILocation(line: 3520, column: 5, scope: !4455)
!4480 = !DILocation(line: 3520, column: 14, scope: !4455)
!4481 = !DILocation(line: 3521, column: 29, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4455, file: !754, line: 3521, column: 9)
!4483 = !DILocation(line: 3511, column: 38, scope: !4456)
!4484 = !DILocation(line: 3511, column: 15, scope: !4456)
!4485 = distinct !{!4485, !4451, !4486, !1148, !1149}
!4486 = !DILocation(line: 3523, column: 3, scope: !4452)
!4487 = !DILocation(line: 3524, column: 7, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4438, file: !754, line: 3524, column: 7)
!4489 = !DILocation(line: 3524, column: 17, scope: !4488)
!4490 = !DILocation(line: 3524, column: 7, scope: !4438)
!4491 = !DILocation(line: 0, scope: !1866, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 3525, column: 12, scope: !4488)
!4493 = !DILocation(line: 741, column: 14, scope: !1865, inlinedAt: !4492)
!4494 = !DILocation(line: 741, column: 20, scope: !1865, inlinedAt: !4492)
!4495 = !DILocation(line: 741, column: 25, scope: !1865, inlinedAt: !4492)
!4496 = !DILocation(line: 741, column: 7, scope: !1866, inlinedAt: !4492)
!4497 = !DILocation(line: 743, column: 14, scope: !1911, inlinedAt: !4492)
!4498 = !DILocation(line: 744, column: 7, scope: !1911, inlinedAt: !4492)
!4499 = !DILocation(line: 746, column: 20, scope: !1883, inlinedAt: !4492)
!4500 = !DILocation(line: 746, column: 62, scope: !1883, inlinedAt: !4492)
!4501 = !DILocation(line: 746, column: 27, scope: !1883, inlinedAt: !4492)
!4502 = !DILocation(line: 746, column: 7, scope: !1866, inlinedAt: !4492)
!4503 = !DILocation(line: 749, column: 20, scope: !1886, inlinedAt: !4492)
!4504 = !DILocation(line: 749, column: 23, scope: !1886, inlinedAt: !4492)
!4505 = !DILocation(line: 750, column: 7, scope: !1886, inlinedAt: !4492)
!4506 = !DILocation(line: 755, column: 22, scope: !1866, inlinedAt: !4492)
!4507 = !DILocation(line: 756, column: 7, scope: !1866, inlinedAt: !4492)
!4508 = !DILocation(line: 3526, column: 12, scope: !4438)
!4509 = !DILocation(line: 3527, column: 3, scope: !4438)
!4510 = !DILocation(line: 3528, column: 1, scope: !4438)
!4511 = distinct !DISubprogram(name: "SeekBlob", scope: !754, file: !754, line: 3598, type: !4512, scopeLine: 3600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!740, !614, !739, !1161}
!4514 = !{!4515, !4516, !4517}
!4515 = !DILocalVariable(name: "image", arg: 1, scope: !4511, file: !754, line: 3598, type: !614)
!4516 = !DILocalVariable(name: "offset", arg: 2, scope: !4511, file: !754, line: 3599, type: !739)
!4517 = !DILocalVariable(name: "whence", arg: 3, scope: !4511, file: !754, line: 3599, type: !1161)
!4518 = !DILocation(line: 0, scope: !4511)
!4519 = !DILocation(line: 3603, column: 14, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4511, file: !754, line: 3603, column: 7)
!4521 = !DILocation(line: 3603, column: 20, scope: !4520)
!4522 = !DILocation(line: 3603, column: 7, scope: !4511)
!4523 = !DILocation(line: 3604, column: 68, scope: !4520)
!4524 = !DILocation(line: 3604, column: 12, scope: !4520)
!4525 = !DILocation(line: 3604, column: 5, scope: !4520)
!4526 = !DILocation(line: 3607, column: 18, scope: !4511)
!4527 = !DILocation(line: 3607, column: 24, scope: !4511)
!4528 = !DILocation(line: 3607, column: 3, scope: !4511)
!4529 = !DILocation(line: 3615, column: 30, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !754, line: 3615, column: 11)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !754, line: 3614, column: 5)
!4532 = distinct !DILexicalBlock(scope: !4511, file: !754, line: 3608, column: 3)
!4533 = !DILocation(line: 3615, column: 40, scope: !4530)
!4534 = !DILocation(line: 3615, column: 11, scope: !4530)
!4535 = !DILocation(line: 3615, column: 60, scope: !4530)
!4536 = !DILocation(line: 3615, column: 11, scope: !4531)
!4537 = !DILocalVariable(name: "image", arg: 1, scope: !4538, file: !754, line: 3957, type: !817)
!4538 = distinct !DISubprogram(name: "TellBlob", scope: !754, file: !754, line: 3957, type: !4539, scopeLine: 3958, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!740, !817}
!4541 = !{!4537, !4542}
!4542 = !DILocalVariable(name: "offset", scope: !4538, file: !754, line: 3960, type: !740)
!4543 = !DILocation(line: 0, scope: !4538, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 3617, column: 27, scope: !4531)
!4545 = !DILocation(line: 3964, column: 14, scope: !4546, inlinedAt: !4544)
!4546 = distinct !DILexicalBlock(scope: !4538, file: !754, line: 3964, column: 7)
!4547 = !DILocation(line: 3964, column: 20, scope: !4546, inlinedAt: !4544)
!4548 = !DILocation(line: 3964, column: 7, scope: !4538, inlinedAt: !4544)
!4549 = !DILocation(line: 3965, column: 68, scope: !4546, inlinedAt: !4544)
!4550 = !DILocation(line: 3965, column: 12, scope: !4546, inlinedAt: !4544)
!4551 = !DILocation(line: 3965, column: 5, scope: !4546, inlinedAt: !4544)
!4552 = !DILocation(line: 3969, column: 18, scope: !4538, inlinedAt: !4544)
!4553 = !DILocation(line: 3969, column: 24, scope: !4538, inlinedAt: !4544)
!4554 = !DILocation(line: 3969, column: 3, scope: !4538, inlinedAt: !4544)
!4555 = !DILocation(line: 3976, column: 33, scope: !4556, inlinedAt: !4544)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !754, line: 3975, column: 5)
!4557 = distinct !DILexicalBlock(scope: !4538, file: !754, line: 3970, column: 3)
!4558 = !DILocation(line: 3976, column: 43, scope: !4556, inlinedAt: !4544)
!4559 = !DILocation(line: 3976, column: 14, scope: !4556, inlinedAt: !4544)
!4560 = !DILocation(line: 3617, column: 14, scope: !4531)
!4561 = !DILocation(line: 3977, column: 7, scope: !4556, inlinedAt: !4544)
!4562 = !DILocation(line: 3994, column: 27, scope: !4563, inlinedAt: !4544)
!4563 = distinct !DILexicalBlock(scope: !4557, file: !754, line: 3993, column: 5)
!4564 = !DILocation(line: 3995, column: 7, scope: !4563, inlinedAt: !4544)
!4565 = !DILocation(line: 3617, column: 20, scope: !4531)
!4566 = !DILocation(line: 3617, column: 26, scope: !4531)
!4567 = !DILocation(line: 3618, column: 7, scope: !4531)
!4568 = !DILocation(line: 0, scope: !4538, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 3627, column: 27, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4532, file: !754, line: 3622, column: 5)
!4571 = !DILocation(line: 3964, column: 14, scope: !4546, inlinedAt: !4569)
!4572 = !DILocation(line: 3964, column: 20, scope: !4546, inlinedAt: !4569)
!4573 = !DILocation(line: 3964, column: 7, scope: !4538, inlinedAt: !4569)
!4574 = !DILocation(line: 3965, column: 68, scope: !4546, inlinedAt: !4569)
!4575 = !DILocation(line: 3965, column: 12, scope: !4546, inlinedAt: !4569)
!4576 = !DILocation(line: 3969, column: 18, scope: !4538, inlinedAt: !4569)
!4577 = !DILocation(line: 3969, column: 24, scope: !4538, inlinedAt: !4569)
!4578 = !DILocation(line: 3965, column: 5, scope: !4546, inlinedAt: !4569)
!4579 = !DILocation(line: 3969, column: 3, scope: !4538, inlinedAt: !4569)
!4580 = !DILocation(line: 3976, column: 33, scope: !4556, inlinedAt: !4569)
!4581 = !DILocation(line: 3976, column: 43, scope: !4556, inlinedAt: !4569)
!4582 = !DILocation(line: 3976, column: 14, scope: !4556, inlinedAt: !4569)
!4583 = !DILocation(line: 3627, column: 14, scope: !4570)
!4584 = !DILocation(line: 3977, column: 7, scope: !4556, inlinedAt: !4569)
!4585 = !DILocation(line: 3994, column: 27, scope: !4563, inlinedAt: !4569)
!4586 = !DILocation(line: 3995, column: 7, scope: !4563, inlinedAt: !4569)
!4587 = !DILocation(line: 3627, column: 20, scope: !4570)
!4588 = !DILocation(line: 3627, column: 26, scope: !4570)
!4589 = !DILocation(line: 3628, column: 7, scope: !4570)
!4590 = !DILocation(line: 3636, column: 7, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4532, file: !754, line: 3635, column: 5)
!4592 = !DILocation(line: 3641, column: 22, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !754, line: 3641, column: 15)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !754, line: 3640, column: 9)
!4595 = distinct !DILexicalBlock(scope: !4591, file: !754, line: 3637, column: 7)
!4596 = !DILocation(line: 3641, column: 15, scope: !4594)
!4597 = !DILocation(line: 3643, column: 24, scope: !4594)
!4598 = !DILocation(line: 3643, column: 30, scope: !4594)
!4599 = !DILocation(line: 3644, column: 11, scope: !4594)
!4600 = !DILocation(line: 3648, column: 29, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !754, line: 3648, column: 15)
!4602 = distinct !DILexicalBlock(scope: !4595, file: !754, line: 3647, column: 9)
!4603 = !DILocation(line: 3648, column: 35, scope: !4601)
!4604 = !DILocation(line: 3648, column: 44, scope: !4601)
!4605 = !DILocation(line: 3648, column: 15, scope: !4602)
!4606 = !DILocation(line: 3650, column: 30, scope: !4602)
!4607 = !DILocation(line: 3651, column: 11, scope: !4602)
!4608 = !DILocation(line: 3655, column: 48, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4610, file: !754, line: 3655, column: 15)
!4610 = distinct !DILexicalBlock(scope: !4595, file: !754, line: 3654, column: 9)
!4611 = !DILocation(line: 3655, column: 54, scope: !4609)
!4612 = !DILocation(line: 3655, column: 63, scope: !4609)
!4613 = !DILocation(line: 3655, column: 15, scope: !4610)
!4614 = !DILocation(line: 3657, column: 24, scope: !4610)
!4615 = !DILocation(line: 3657, column: 30, scope: !4610)
!4616 = !DILocation(line: 3658, column: 11, scope: !4610)
!4617 = !DILocation(line: 3661, column: 24, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4591, file: !754, line: 3661, column: 11)
!4619 = !DILocation(line: 3662, column: 33, scope: !4618)
!4620 = !DILocation(line: 3661, column: 31, scope: !4618)
!4621 = !DILocation(line: 3661, column: 11, scope: !4591)
!4622 = !DILocation(line: 3663, column: 22, scope: !4618)
!4623 = !DILocation(line: 3663, column: 25, scope: !4618)
!4624 = !DILocation(line: 3663, column: 9, scope: !4618)
!4625 = !DILocation(line: 3665, column: 26, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4618, file: !754, line: 3665, column: 13)
!4627 = !DILocation(line: 3665, column: 33, scope: !4626)
!4628 = !DILocation(line: 3665, column: 13, scope: !4618)
!4629 = !DILocation(line: 3670, column: 28, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4626, file: !754, line: 3668, column: 11)
!4631 = !DILocation(line: 3669, column: 62, scope: !4630)
!4632 = !DILocation(line: 3669, column: 26, scope: !4630)
!4633 = !DILocation(line: 3669, column: 32, scope: !4630)
!4634 = !DILocation(line: 3671, column: 33, scope: !4630)
!4635 = !DILocation(line: 3673, column: 28, scope: !4630)
!4636 = !DILocation(line: 3673, column: 52, scope: !4630)
!4637 = !DILocation(line: 3672, column: 49, scope: !4630)
!4638 = !DILocation(line: 3672, column: 20, scope: !4630)
!4639 = !DILocation(line: 3672, column: 26, scope: !4630)
!4640 = !DILocation(line: 3672, column: 30, scope: !4630)
!4641 = !DILocation(line: 3675, column: 20, scope: !4630)
!4642 = !DILocation(line: 3676, column: 24, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4630, file: !754, line: 3676, column: 17)
!4644 = !DILocation(line: 3676, column: 30, scope: !4643)
!4645 = !DILocation(line: 3676, column: 35, scope: !4643)
!4646 = !DILocation(line: 3676, column: 17, scope: !4630)
!4647 = !DILocation(line: 3678, column: 24, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4643, file: !754, line: 3677, column: 15)
!4649 = !DILocation(line: 3679, column: 17, scope: !4648)
!4650 = !DILocation(line: 3685, column: 17, scope: !4511)
!4651 = !DILocation(line: 3685, column: 23, scope: !4511)
!4652 = !DILocation(line: 3685, column: 3, scope: !4511)
!4653 = !DILocation(line: 3686, column: 1, scope: !4511)
!4654 = !DILocation(line: 0, scope: !4538)
!4655 = !DILocation(line: 3964, column: 14, scope: !4546)
!4656 = !DILocation(line: 3964, column: 20, scope: !4546)
!4657 = !DILocation(line: 3964, column: 7, scope: !4538)
!4658 = !DILocation(line: 3965, column: 68, scope: !4546)
!4659 = !DILocation(line: 3965, column: 12, scope: !4546)
!4660 = !DILocation(line: 3965, column: 5, scope: !4546)
!4661 = !DILocation(line: 3969, column: 18, scope: !4538)
!4662 = !DILocation(line: 3969, column: 24, scope: !4538)
!4663 = !DILocation(line: 3969, column: 3, scope: !4538)
!4664 = !DILocation(line: 3976, column: 33, scope: !4556)
!4665 = !DILocation(line: 3976, column: 43, scope: !4556)
!4666 = !DILocation(line: 3976, column: 14, scope: !4556)
!4667 = !DILocation(line: 3977, column: 7, scope: !4556)
!4668 = !DILocation(line: 3994, column: 27, scope: !4563)
!4669 = !DILocation(line: 3995, column: 7, scope: !4563)
!4670 = !DILocation(line: 3998, column: 3, scope: !4538)
!4671 = distinct !DISubprogram(name: "SetBlobExempt", scope: !754, file: !754, line: 3713, type: !4672, scopeLine: 3714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4674)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !614, !3088}
!4674 = !{!4675, !4676}
!4675 = !DILocalVariable(name: "image", arg: 1, scope: !4671, file: !754, line: 3713, type: !614)
!4676 = !DILocalVariable(name: "exempt", arg: 2, scope: !4671, file: !754, line: 3713, type: !3088)
!4677 = !DILocation(line: 0, scope: !4671)
!4678 = !DILocation(line: 3717, column: 14, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4671, file: !754, line: 3717, column: 7)
!4680 = !DILocation(line: 3717, column: 20, scope: !4679)
!4681 = !DILocation(line: 3717, column: 7, scope: !4671)
!4682 = !DILocation(line: 3718, column: 68, scope: !4679)
!4683 = !DILocation(line: 3718, column: 12, scope: !4679)
!4684 = !DILocation(line: 3718, column: 5, scope: !4679)
!4685 = !DILocation(line: 3719, column: 10, scope: !4671)
!4686 = !DILocation(line: 3719, column: 16, scope: !4671)
!4687 = !DILocation(line: 3719, column: 22, scope: !4671)
!4688 = !DILocation(line: 3720, column: 1, scope: !4671)
!4689 = distinct !DISubprogram(name: "SetBlobExtent", scope: !754, file: !754, line: 3748, type: !1845, scopeLine: 3750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4690)
!4690 = !{!4691, !4692, !4693, !4696, !4697, !4701}
!4691 = !DILocalVariable(name: "image", arg: 1, scope: !4689, file: !754, line: 3748, type: !614)
!4692 = !DILocalVariable(name: "extent", arg: 2, scope: !4689, file: !754, line: 3749, type: !742)
!4693 = !DILocalVariable(name: "offset", scope: !4694, file: !754, line: 3766, type: !740)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !754, line: 3764, column: 5)
!4695 = distinct !DILexicalBlock(scope: !4689, file: !754, line: 3758, column: 3)
!4696 = !DILocalVariable(name: "count", scope: !4694, file: !754, line: 3769, type: !672)
!4697 = !DILocalVariable(name: "offset", scope: !4698, file: !754, line: 3812, type: !740)
!4698 = distinct !DILexicalBlock(scope: !4699, file: !754, line: 3810, column: 9)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !754, line: 3809, column: 11)
!4700 = distinct !DILexicalBlock(scope: !4695, file: !754, line: 3806, column: 5)
!4701 = !DILocalVariable(name: "count", scope: !4698, file: !754, line: 3815, type: !672)
!4702 = !DILocation(line: 0, scope: !4689)
!4703 = !DILocation(line: 3753, column: 14, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4689, file: !754, line: 3753, column: 7)
!4705 = !DILocation(line: 3753, column: 20, scope: !4704)
!4706 = !DILocation(line: 3753, column: 7, scope: !4689)
!4707 = !DILocation(line: 3754, column: 68, scope: !4704)
!4708 = !DILocation(line: 3754, column: 12, scope: !4704)
!4709 = !DILocation(line: 3754, column: 5, scope: !4704)
!4710 = !DILocation(line: 3757, column: 18, scope: !4689)
!4711 = !DILocation(line: 3757, column: 24, scope: !4689)
!4712 = !DILocation(line: 3757, column: 3, scope: !4689)
!4713 = !DILocation(line: 3773, column: 14, scope: !4694)
!4714 = !DILocation(line: 0, scope: !4694)
!4715 = !DILocation(line: 3774, column: 18, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4694, file: !754, line: 3774, column: 11)
!4717 = !DILocation(line: 3774, column: 11, scope: !4694)
!4718 = !DILocation(line: 3776, column: 35, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4694, file: !754, line: 3776, column: 11)
!4720 = !DILocation(line: 3776, column: 11, scope: !4694)
!4721 = !DILocation(line: 3778, column: 54, scope: !4694)
!4722 = !DILocation(line: 3778, column: 14, scope: !4694)
!4723 = !DILocation(line: 3780, column: 16, scope: !4694)
!4724 = !DILocation(line: 3780, column: 22, scope: !4694)
!4725 = !DILocation(line: 3780, column: 32, scope: !4694)
!4726 = !DILocation(line: 3779, column: 23, scope: !4694)
!4727 = !DILocation(line: 3793, column: 14, scope: !4694)
!4728 = !DILocation(line: 3794, column: 17, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4694, file: !754, line: 3794, column: 11)
!4730 = !DILocation(line: 3809, column: 24, scope: !4699)
!4731 = !DILocation(line: 3809, column: 31, scope: !4699)
!4732 = !DILocation(line: 3809, column: 11, scope: !4700)
!4733 = !DILocation(line: 3818, column: 61, scope: !4698)
!4734 = !DILocation(line: 3818, column: 11, scope: !4698)
!4735 = !DILocation(line: 3821, column: 18, scope: !4698)
!4736 = !DILocation(line: 0, scope: !4698)
!4737 = !DILocation(line: 3822, column: 22, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4698, file: !754, line: 3822, column: 15)
!4739 = !DILocation(line: 3822, column: 15, scope: !4698)
!4740 = !DILocation(line: 3824, column: 39, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4698, file: !754, line: 3824, column: 15)
!4742 = !DILocation(line: 3824, column: 15, scope: !4698)
!4743 = !DILocation(line: 3826, column: 58, scope: !4698)
!4744 = !DILocation(line: 3826, column: 18, scope: !4698)
!4745 = !DILocation(line: 3828, column: 20, scope: !4698)
!4746 = !DILocation(line: 3828, column: 26, scope: !4698)
!4747 = !DILocation(line: 3828, column: 36, scope: !4698)
!4748 = !DILocation(line: 3827, column: 27, scope: !4698)
!4749 = !DILocation(line: 3841, column: 18, scope: !4698)
!4750 = !DILocation(line: 3842, column: 21, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4698, file: !754, line: 3842, column: 15)
!4752 = !DILocation(line: 3842, column: 15, scope: !4698)
!4753 = !DILocation(line: 3844, column: 18, scope: !4698)
!4754 = !DILocation(line: 3846, column: 20, scope: !4698)
!4755 = !DILocation(line: 3846, column: 26, scope: !4698)
!4756 = !DILocation(line: 3846, column: 36, scope: !4698)
!4757 = !DILocation(line: 3845, column: 54, scope: !4698)
!4758 = !DILocation(line: 3845, column: 18, scope: !4698)
!4759 = !DILocation(line: 3845, column: 24, scope: !4698)
!4760 = !DILocation(line: 3845, column: 28, scope: !4698)
!4761 = !DILocation(line: 3847, column: 24, scope: !4698)
!4762 = !DILocation(line: 3847, column: 30, scope: !4698)
!4763 = !DILocation(line: 3848, column: 30, scope: !4698)
!4764 = !DILocation(line: 3849, column: 18, scope: !4698)
!4765 = !DILocation(line: 3850, column: 11, scope: !4698)
!4766 = !DILocation(line: 3852, column: 20, scope: !4700)
!4767 = !DILocation(line: 3852, column: 26, scope: !4700)
!4768 = !DILocation(line: 3853, column: 76, scope: !4700)
!4769 = !DILocation(line: 3854, column: 28, scope: !4700)
!4770 = !DILocation(line: 3853, column: 43, scope: !4700)
!4771 = !DILocation(line: 3853, column: 14, scope: !4700)
!4772 = !DILocation(line: 3853, column: 20, scope: !4700)
!4773 = !DILocation(line: 3853, column: 24, scope: !4700)
!4774 = !DILocation(line: 0, scope: !1571, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 3855, column: 14, scope: !4700)
!4776 = !DILocation(line: 3897, column: 14, scope: !1579, inlinedAt: !4775)
!4777 = !DILocation(line: 3897, column: 20, scope: !1579, inlinedAt: !4775)
!4778 = !DILocation(line: 3897, column: 7, scope: !1571, inlinedAt: !4775)
!4779 = !DILocation(line: 3898, column: 68, scope: !1579, inlinedAt: !4775)
!4780 = !DILocation(line: 3898, column: 12, scope: !1579, inlinedAt: !4775)
!4781 = !DILocation(line: 3902, column: 18, scope: !1571, inlinedAt: !4775)
!4782 = !DILocation(line: 3898, column: 5, scope: !1579, inlinedAt: !4775)
!4783 = !DILocation(line: 3902, column: 24, scope: !1571, inlinedAt: !4775)
!4784 = !DILocation(line: 3902, column: 3, scope: !1571, inlinedAt: !4775)
!4785 = !DILocation(line: 3910, column: 34, scope: !1589, inlinedAt: !4775)
!4786 = !DILocation(line: 3910, column: 44, scope: !1589, inlinedAt: !4775)
!4787 = !DILocation(line: 3910, column: 14, scope: !1589, inlinedAt: !4775)
!4788 = !DILocation(line: 3856, column: 18, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4700, file: !754, line: 3856, column: 11)
!4790 = !DILocation(line: 3911, column: 7, scope: !1589, inlinedAt: !4775)
!4791 = !DILocation(line: 3856, column: 24, scope: !4789)
!4792 = !DILocation(line: 3856, column: 29, scope: !4789)
!4793 = !DILocation(line: 3856, column: 11, scope: !4700)
!4794 = !DILocation(line: 3858, column: 18, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4789, file: !754, line: 3857, column: 9)
!4796 = !DILocation(line: 3859, column: 11, scope: !4795)
!4797 = !DILocation(line: 3864, column: 3, scope: !4689)
!4798 = !DILocation(line: 3865, column: 1, scope: !4689)
!4799 = !DISubprogram(name: "ftell", scope: !673, file: !673, line: 689, type: !4800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!577, !546}
!4802 = distinct !DISubprogram(name: "WriteBlob", scope: !754, file: !754, line: 4070, type: !2300, scopeLine: 4072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4803)
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4809, !4810}
!4804 = !DILocalVariable(name: "image", arg: 1, scope: !4802, file: !754, line: 4070, type: !614)
!4805 = !DILocalVariable(name: "length", arg: 2, scope: !4802, file: !754, line: 4070, type: !819)
!4806 = !DILocalVariable(name: "data", arg: 3, scope: !4802, file: !754, line: 4071, type: !988)
!4807 = !DILocalVariable(name: "c", scope: !4802, file: !754, line: 4074, type: !553)
!4808 = !DILocalVariable(name: "p", scope: !4802, file: !754, line: 4077, type: !988)
!4809 = !DILocalVariable(name: "count", scope: !4802, file: !754, line: 4080, type: !672)
!4810 = !DILocalVariable(name: "q", scope: !4811, file: !754, line: 4177, type: !606)
!4811 = distinct !DILexicalBlock(scope: !4812, file: !754, line: 4175, column: 5)
!4812 = distinct !DILexicalBlock(scope: !4802, file: !754, line: 4092, column: 3)
!4813 = !DILocation(line: 0, scope: !4802)
!4814 = !DILocation(line: 4087, column: 14, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4802, file: !754, line: 4087, column: 7)
!4816 = !DILocation(line: 4087, column: 7, scope: !4802)
!4817 = !DILocation(line: 4091, column: 18, scope: !4802)
!4818 = !DILocation(line: 4091, column: 24, scope: !4802)
!4819 = !DILocation(line: 4091, column: 3, scope: !4802)
!4820 = !DILocation(line: 4097, column: 39, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4812, file: !754, line: 4096, column: 5)
!4822 = !DILocation(line: 4097, column: 49, scope: !4821)
!4823 = !DILocation(line: 4097, column: 19, scope: !4821)
!4824 = !DILocation(line: 4097, column: 13, scope: !4821)
!4825 = !DILocation(line: 4098, column: 7, scope: !4821)
!4826 = !DILocation(line: 4103, column: 7, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4812, file: !754, line: 4102, column: 5)
!4828 = !DILocation(line: 4108, column: 26, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !754, line: 4106, column: 9)
!4830 = distinct !DILexicalBlock(scope: !4827, file: !754, line: 4104, column: 7)
!4831 = !DILocation(line: 4108, column: 36, scope: !4829)
!4832 = !DILocation(line: 4107, column: 27, scope: !4829)
!4833 = !DILocation(line: 4109, column: 11, scope: !4829)
!4834 = !DILocation(line: 4113, column: 24, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4830, file: !754, line: 4112, column: 9)
!4836 = !DILocation(line: 4113, column: 18, scope: !4835)
!4837 = !DILocation(line: 4113, column: 42, scope: !4835)
!4838 = !DILocation(line: 4113, column: 52, scope: !4835)
!4839 = !DILocation(line: 4113, column: 13, scope: !4835)
!4840 = !DILocation(line: 4114, column: 17, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4835, file: !754, line: 4114, column: 15)
!4842 = !DILocation(line: 4114, column: 15, scope: !4835)
!4843 = !DILocation(line: 4113, column: 26, scope: !4835)
!4844 = !DILocation(line: 4120, column: 36, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4830, file: !754, line: 4119, column: 9)
!4846 = !DILocation(line: 4117, column: 9, scope: !4835)
!4847 = !DILocation(line: 4120, column: 24, scope: !4845)
!4848 = !DILocation(line: 4120, column: 18, scope: !4845)
!4849 = !DILocation(line: 4120, column: 42, scope: !4845)
!4850 = !DILocation(line: 4120, column: 52, scope: !4845)
!4851 = !DILocation(line: 4120, column: 13, scope: !4845)
!4852 = !DILocation(line: 4121, column: 17, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4845, file: !754, line: 4121, column: 15)
!4854 = !DILocation(line: 4121, column: 15, scope: !4845)
!4855 = !DILocation(line: 4171, column: 36, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4812, file: !754, line: 4170, column: 5)
!4857 = !DILocation(line: 4171, column: 23, scope: !4856)
!4858 = !DILocation(line: 4172, column: 7, scope: !4856)
!4859 = !DILocation(line: 4179, column: 25, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4811, file: !754, line: 4179, column: 11)
!4861 = !DILocation(line: 4179, column: 31, scope: !4860)
!4862 = !DILocation(line: 4180, column: 43, scope: !4860)
!4863 = !DILocation(line: 4179, column: 59, scope: !4860)
!4864 = !DILocation(line: 4179, column: 11, scope: !4811)
!4865 = !DILocation(line: 4195, column: 22, scope: !4811)
!4866 = !DILocation(line: 4182, column: 28, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !754, line: 4182, column: 15)
!4868 = distinct !DILexicalBlock(scope: !4860, file: !754, line: 4181, column: 9)
!4869 = !DILocation(line: 4182, column: 35, scope: !4867)
!4870 = !DILocation(line: 4182, column: 15, scope: !4868)
!4871 = !DILocation(line: 4184, column: 52, scope: !4868)
!4872 = !DILocation(line: 4184, column: 38, scope: !4868)
!4873 = !DILocation(line: 4184, column: 30, scope: !4868)
!4874 = !DILocation(line: 4185, column: 31, scope: !4868)
!4875 = !DILocation(line: 4187, column: 26, scope: !4868)
!4876 = !DILocation(line: 4187, column: 50, scope: !4868)
!4877 = !DILocation(line: 4186, column: 47, scope: !4868)
!4878 = !DILocation(line: 4186, column: 18, scope: !4868)
!4879 = !DILocation(line: 4186, column: 24, scope: !4868)
!4880 = !DILocation(line: 4186, column: 28, scope: !4868)
!4881 = !DILocation(line: 0, scope: !1571, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 4188, column: 18, scope: !4868)
!4883 = !DILocation(line: 3897, column: 14, scope: !1579, inlinedAt: !4882)
!4884 = !DILocation(line: 3897, column: 20, scope: !1579, inlinedAt: !4882)
!4885 = !DILocation(line: 3897, column: 7, scope: !1571, inlinedAt: !4882)
!4886 = !DILocation(line: 3898, column: 68, scope: !1579, inlinedAt: !4882)
!4887 = !DILocation(line: 3898, column: 12, scope: !1579, inlinedAt: !4882)
!4888 = !DILocation(line: 3902, column: 18, scope: !1571, inlinedAt: !4882)
!4889 = !DILocation(line: 3898, column: 5, scope: !1579, inlinedAt: !4882)
!4890 = !DILocation(line: 3902, column: 24, scope: !1571, inlinedAt: !4882)
!4891 = !DILocation(line: 3902, column: 3, scope: !1571, inlinedAt: !4882)
!4892 = !DILocation(line: 3910, column: 34, scope: !1589, inlinedAt: !4882)
!4893 = !DILocation(line: 3910, column: 44, scope: !1589, inlinedAt: !4882)
!4894 = !DILocation(line: 3910, column: 14, scope: !1589, inlinedAt: !4882)
!4895 = !DILocation(line: 4189, column: 22, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4868, file: !754, line: 4189, column: 15)
!4897 = !DILocation(line: 3911, column: 7, scope: !1589, inlinedAt: !4882)
!4898 = !DILocation(line: 4189, column: 28, scope: !4896)
!4899 = !DILocation(line: 4189, column: 33, scope: !4896)
!4900 = !DILocation(line: 4189, column: 15, scope: !4868)
!4901 = !DILocation(line: 4195, column: 40, scope: !4811)
!4902 = !DILocation(line: 4191, column: 22, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4896, file: !754, line: 4190, column: 13)
!4904 = !DILocation(line: 4192, column: 15, scope: !4903)
!4905 = !DILocation(line: 4195, column: 26, scope: !4811)
!4906 = !DILocation(line: 0, scope: !4811)
!4907 = !DILocation(line: 4196, column: 14, scope: !4811)
!4908 = !DILocation(line: 4197, column: 14, scope: !4811)
!4909 = !DILocation(line: 4197, column: 20, scope: !4811)
!4910 = !DILocation(line: 4197, column: 26, scope: !4811)
!4911 = !DILocation(line: 4198, column: 66, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4811, file: !754, line: 4198, column: 11)
!4913 = !DILocation(line: 4198, column: 31, scope: !4912)
!4914 = !DILocation(line: 4198, column: 11, scope: !4811)
!4915 = !DILocation(line: 4199, column: 28, scope: !4912)
!4916 = !DILocation(line: 4199, column: 9, scope: !4912)
!4917 = !DILocation(line: 4204, column: 1, scope: !4802)
!4918 = !DISubprogram(name: "putc", scope: !673, file: !673, line: 522, type: !4919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!553, !553, !546}
!4921 = distinct !DISubprogram(name: "WriteBlobByte", scope: !754, file: !754, line: 4231, type: !4922, scopeLine: 4232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4924)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!672, !614, !989}
!4924 = !{!4925, !4926}
!4925 = !DILocalVariable(name: "image", arg: 1, scope: !4921, file: !754, line: 4231, type: !614)
!4926 = !DILocalVariable(name: "value", arg: 2, scope: !4921, file: !754, line: 4231, type: !989)
!4927 = !DILocation(line: 0, scope: !4921)
!4928 = !DILocation(line: 0, scope: !2299, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 4235, column: 10, scope: !4921)
!4930 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !4929)
!4931 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !4929)
!4932 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !4929)
!4933 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !4929)
!4934 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !4929)
!4935 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !4929)
!4936 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !4929)
!4937 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !4929)
!4938 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !4929)
!4939 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !4929)
!4940 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !4929)
!4941 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !4929)
!4942 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !4929)
!4943 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !4929)
!4944 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !4929)
!4945 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !4929)
!4946 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !4929)
!4947 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !4929)
!4948 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !4929)
!4949 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !4929)
!4950 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !4929)
!4951 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !4929)
!4952 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !4929)
!4953 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !4929)
!4954 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !4929)
!4955 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !4929)
!4956 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !4929)
!4957 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !4929)
!4958 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !4929)
!4959 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !4929)
!4960 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !4929)
!4961 = !DILocation(line: 4235, column: 3, scope: !4921)
!4962 = distinct !DISubprogram(name: "WriteBlobFloat", scope: !754, file: !754, line: 4263, type: !4963, scopeLine: 4264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4966)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!672, !614, !4965}
!4965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3931)
!4966 = !{!4967, !4968, !4969}
!4967 = !DILocalVariable(name: "image", arg: 1, scope: !4962, file: !754, line: 4263, type: !614)
!4968 = !DILocalVariable(name: "value", arg: 2, scope: !4962, file: !754, line: 4263, type: !4965)
!4969 = !DILocalVariable(name: "quantum", scope: !4962, file: !754, line: 4272, type: !4970)
!4970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4962, file: !754, line: 4265, size: 32, elements: !4971)
!4971 = !{!4972, !4973}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_value", scope: !4970, file: !754, line: 4268, baseType: !5, size: 32)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "float_value", scope: !4970, file: !754, line: 4271, baseType: !3931, size: 32)
!4974 = !DILocation(line: 0, scope: !4962)
!4975 = !DILocation(line: 4275, column: 22, scope: !4962)
!4976 = !DILocation(line: 4276, column: 10, scope: !4962)
!4977 = !DILocation(line: 4276, column: 3, scope: !4962)
!4978 = distinct !DISubprogram(name: "WriteBlobLong", scope: !754, file: !754, line: 4304, type: !4979, scopeLine: 4305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4981)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!672, !614, !1343}
!4981 = !{!4982, !4983, !4984}
!4982 = !DILocalVariable(name: "image", arg: 1, scope: !4978, file: !754, line: 4304, type: !614)
!4983 = !DILocalVariable(name: "value", arg: 2, scope: !4978, file: !754, line: 4304, type: !1343)
!4984 = !DILocalVariable(name: "buffer", scope: !4978, file: !754, line: 4307, type: !3948)
!4985 = !DILocation(line: 0, scope: !4978)
!4986 = !DILocation(line: 4306, column: 3, scope: !4978)
!4987 = !DILocation(line: 4307, column: 5, scope: !4978)
!4988 = !DILocation(line: 4311, column: 14, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4978, file: !754, line: 4311, column: 7)
!4990 = !DILocation(line: 4311, column: 21, scope: !4989)
!4991 = !DILocation(line: 4311, column: 7, scope: !4978)
!4992 = !DILocation(line: 4313, column: 17, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4989, file: !754, line: 4312, column: 5)
!4994 = !DILocation(line: 4313, column: 16, scope: !4993)
!4995 = !DILocation(line: 4314, column: 40, scope: !4993)
!4996 = !DILocation(line: 4314, column: 17, scope: !4993)
!4997 = !DILocation(line: 4314, column: 7, scope: !4993)
!4998 = !DILocation(line: 4314, column: 16, scope: !4993)
!4999 = !DILocation(line: 4315, column: 40, scope: !4993)
!5000 = !DILocation(line: 4315, column: 17, scope: !4993)
!5001 = !DILocation(line: 4315, column: 7, scope: !4993)
!5002 = !DILocation(line: 4315, column: 16, scope: !4993)
!5003 = !DILocation(line: 4316, column: 40, scope: !4993)
!5004 = !DILocation(line: 4316, column: 17, scope: !4993)
!5005 = !DILocation(line: 4316, column: 7, scope: !4993)
!5006 = !DILocation(line: 4316, column: 16, scope: !4993)
!5007 = !DILocation(line: 0, scope: !2299, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 4317, column: 14, scope: !4993)
!5009 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5008)
!5010 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5008)
!5011 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5008)
!5012 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5008)
!5013 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5008)
!5014 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5008)
!5015 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5008)
!5016 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5008)
!5017 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5008)
!5018 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5008)
!5019 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5008)
!5020 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5008)
!5021 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5008)
!5022 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5008)
!5023 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5008)
!5024 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5008)
!5025 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5008)
!5026 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5008)
!5027 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5008)
!5028 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5008)
!5029 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5008)
!5030 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5008)
!5031 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5008)
!5032 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5008)
!5033 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5008)
!5034 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5008)
!5035 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5008)
!5036 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5008)
!5037 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5008)
!5038 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5008)
!5039 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5008)
!5040 = !DILocation(line: 4319, column: 36, scope: !4978)
!5041 = !DILocation(line: 4319, column: 13, scope: !4978)
!5042 = !DILocation(line: 4319, column: 12, scope: !4978)
!5043 = !DILocation(line: 4320, column: 36, scope: !4978)
!5044 = !DILocation(line: 4320, column: 13, scope: !4978)
!5045 = !DILocation(line: 4320, column: 3, scope: !4978)
!5046 = !DILocation(line: 4320, column: 12, scope: !4978)
!5047 = !DILocation(line: 4321, column: 36, scope: !4978)
!5048 = !DILocation(line: 4321, column: 13, scope: !4978)
!5049 = !DILocation(line: 4321, column: 3, scope: !4978)
!5050 = !DILocation(line: 4321, column: 12, scope: !4978)
!5051 = !DILocation(line: 4322, column: 13, scope: !4978)
!5052 = !DILocation(line: 4322, column: 3, scope: !4978)
!5053 = !DILocation(line: 4322, column: 12, scope: !4978)
!5054 = !DILocation(line: 0, scope: !2299, inlinedAt: !5055)
!5055 = distinct !DILocation(line: 4323, column: 10, scope: !4978)
!5056 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5055)
!5057 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5055)
!5058 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5055)
!5059 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5055)
!5060 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5055)
!5061 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5055)
!5062 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5055)
!5063 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5055)
!5064 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5055)
!5065 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5055)
!5066 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5055)
!5067 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5055)
!5068 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5055)
!5069 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5055)
!5070 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5055)
!5071 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5055)
!5072 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5055)
!5073 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5055)
!5074 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5055)
!5075 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5055)
!5076 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5055)
!5077 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5055)
!5078 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5055)
!5079 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5055)
!5080 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5055)
!5081 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5055)
!5082 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5055)
!5083 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5055)
!5084 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5055)
!5085 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5055)
!5086 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5055)
!5087 = !DILocation(line: 4324, column: 1, scope: !4978)
!5088 = distinct !DISubprogram(name: "WriteBlobShort", scope: !754, file: !754, line: 4351, type: !5089, scopeLine: 4352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5092)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!672, !614, !5091}
!5091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!5092 = !{!5093, !5094, !5095}
!5093 = !DILocalVariable(name: "image", arg: 1, scope: !5088, file: !754, line: 4351, type: !614)
!5094 = !DILocalVariable(name: "value", arg: 2, scope: !5088, file: !754, line: 4351, type: !5091)
!5095 = !DILocalVariable(name: "buffer", scope: !5088, file: !754, line: 4354, type: !4097)
!5096 = !DILocation(line: 0, scope: !5088)
!5097 = !DILocation(line: 4353, column: 3, scope: !5088)
!5098 = !DILocation(line: 4354, column: 5, scope: !5088)
!5099 = !DILocation(line: 4358, column: 14, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5088, file: !754, line: 4358, column: 7)
!5101 = !DILocation(line: 4358, column: 21, scope: !5100)
!5102 = !DILocation(line: 4358, column: 7, scope: !5088)
!5103 = !DILocation(line: 4360, column: 17, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5100, file: !754, line: 4359, column: 5)
!5105 = !DILocation(line: 4360, column: 16, scope: !5104)
!5106 = !DILocation(line: 4361, column: 40, scope: !5104)
!5107 = !DILocation(line: 4361, column: 17, scope: !5104)
!5108 = !DILocation(line: 4361, column: 7, scope: !5104)
!5109 = !DILocation(line: 4361, column: 16, scope: !5104)
!5110 = !DILocation(line: 0, scope: !2299, inlinedAt: !5111)
!5111 = distinct !DILocation(line: 4362, column: 14, scope: !5104)
!5112 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5111)
!5113 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5111)
!5114 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5111)
!5115 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5111)
!5116 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5111)
!5117 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5111)
!5118 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5111)
!5119 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5111)
!5120 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5111)
!5121 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5111)
!5122 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5111)
!5123 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5111)
!5124 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5111)
!5125 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5111)
!5126 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5111)
!5127 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5111)
!5128 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5111)
!5129 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5111)
!5130 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5111)
!5131 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5111)
!5132 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5111)
!5133 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5111)
!5134 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5111)
!5135 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5111)
!5136 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5111)
!5137 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5111)
!5138 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5111)
!5139 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5111)
!5140 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5111)
!5141 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5111)
!5142 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5111)
!5143 = !DILocation(line: 4364, column: 36, scope: !5088)
!5144 = !DILocation(line: 4364, column: 13, scope: !5088)
!5145 = !DILocation(line: 4364, column: 12, scope: !5088)
!5146 = !DILocation(line: 4365, column: 13, scope: !5088)
!5147 = !DILocation(line: 4365, column: 3, scope: !5088)
!5148 = !DILocation(line: 4365, column: 12, scope: !5088)
!5149 = !DILocation(line: 0, scope: !2299, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 4366, column: 10, scope: !5088)
!5151 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5150)
!5152 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5150)
!5153 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5150)
!5154 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5150)
!5155 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5150)
!5156 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5150)
!5157 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5150)
!5158 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5150)
!5159 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5150)
!5160 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5150)
!5161 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5150)
!5162 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5150)
!5163 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5150)
!5164 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5150)
!5165 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5150)
!5166 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5150)
!5167 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5150)
!5168 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5150)
!5169 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5150)
!5170 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5150)
!5171 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5150)
!5172 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5150)
!5173 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5150)
!5174 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5150)
!5175 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5150)
!5176 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5150)
!5177 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5150)
!5178 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5150)
!5179 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5150)
!5180 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5150)
!5181 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5150)
!5182 = !DILocation(line: 4367, column: 1, scope: !5088)
!5183 = distinct !DISubprogram(name: "WriteBlobLSBLong", scope: !754, file: !754, line: 4394, type: !4979, scopeLine: 4395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5184)
!5184 = !{!5185, !5186, !5187}
!5185 = !DILocalVariable(name: "image", arg: 1, scope: !5183, file: !754, line: 4394, type: !614)
!5186 = !DILocalVariable(name: "value", arg: 2, scope: !5183, file: !754, line: 4394, type: !1343)
!5187 = !DILocalVariable(name: "buffer", scope: !5183, file: !754, line: 4397, type: !3948)
!5188 = !DILocation(line: 0, scope: !5183)
!5189 = !DILocation(line: 4396, column: 3, scope: !5183)
!5190 = !DILocation(line: 4397, column: 5, scope: !5183)
!5191 = !DILocation(line: 4401, column: 13, scope: !5183)
!5192 = !DILocation(line: 4401, column: 12, scope: !5183)
!5193 = !DILocation(line: 4402, column: 36, scope: !5183)
!5194 = !DILocation(line: 4402, column: 13, scope: !5183)
!5195 = !DILocation(line: 4402, column: 3, scope: !5183)
!5196 = !DILocation(line: 4402, column: 12, scope: !5183)
!5197 = !DILocation(line: 4403, column: 36, scope: !5183)
!5198 = !DILocation(line: 4403, column: 13, scope: !5183)
!5199 = !DILocation(line: 4403, column: 3, scope: !5183)
!5200 = !DILocation(line: 4403, column: 12, scope: !5183)
!5201 = !DILocation(line: 4404, column: 36, scope: !5183)
!5202 = !DILocation(line: 4404, column: 13, scope: !5183)
!5203 = !DILocation(line: 4404, column: 3, scope: !5183)
!5204 = !DILocation(line: 4404, column: 12, scope: !5183)
!5205 = !DILocation(line: 0, scope: !2299, inlinedAt: !5206)
!5206 = distinct !DILocation(line: 4405, column: 10, scope: !5183)
!5207 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5206)
!5208 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5206)
!5209 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5206)
!5210 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5206)
!5211 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5206)
!5212 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5206)
!5213 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5206)
!5214 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5206)
!5215 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5206)
!5216 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5206)
!5217 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5206)
!5218 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5206)
!5219 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5206)
!5220 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5206)
!5221 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5206)
!5222 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5206)
!5223 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5206)
!5224 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5206)
!5225 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5206)
!5226 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5206)
!5227 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5206)
!5228 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5206)
!5229 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5206)
!5230 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5206)
!5231 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5206)
!5232 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5206)
!5233 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5206)
!5234 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5206)
!5235 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5206)
!5236 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5206)
!5237 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5206)
!5238 = !DILocation(line: 4406, column: 1, scope: !5183)
!5239 = !DILocation(line: 4405, column: 3, scope: !5183)
!5240 = distinct !DISubprogram(name: "WriteBlobLSBShort", scope: !754, file: !754, line: 4433, type: !5089, scopeLine: 4434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5241)
!5241 = !{!5242, !5243, !5244}
!5242 = !DILocalVariable(name: "image", arg: 1, scope: !5240, file: !754, line: 4433, type: !614)
!5243 = !DILocalVariable(name: "value", arg: 2, scope: !5240, file: !754, line: 4433, type: !5091)
!5244 = !DILocalVariable(name: "buffer", scope: !5240, file: !754, line: 4436, type: !4097)
!5245 = !DILocation(line: 0, scope: !5240)
!5246 = !DILocation(line: 4435, column: 3, scope: !5240)
!5247 = !DILocation(line: 4436, column: 5, scope: !5240)
!5248 = !DILocation(line: 4440, column: 13, scope: !5240)
!5249 = !DILocation(line: 4440, column: 12, scope: !5240)
!5250 = !DILocation(line: 4441, column: 36, scope: !5240)
!5251 = !DILocation(line: 4441, column: 13, scope: !5240)
!5252 = !DILocation(line: 4441, column: 3, scope: !5240)
!5253 = !DILocation(line: 4441, column: 12, scope: !5240)
!5254 = !DILocation(line: 0, scope: !2299, inlinedAt: !5255)
!5255 = distinct !DILocation(line: 4442, column: 10, scope: !5240)
!5256 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5255)
!5257 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5255)
!5258 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5255)
!5259 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5255)
!5260 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5255)
!5261 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5255)
!5262 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5255)
!5263 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5255)
!5264 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5255)
!5265 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5255)
!5266 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5255)
!5267 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5255)
!5268 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5255)
!5269 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5255)
!5270 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5255)
!5271 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5255)
!5272 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5255)
!5273 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5255)
!5274 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5255)
!5275 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5255)
!5276 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5255)
!5277 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5255)
!5278 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5255)
!5279 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5255)
!5280 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5255)
!5281 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5255)
!5282 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5255)
!5283 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5255)
!5284 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5255)
!5285 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5255)
!5286 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5255)
!5287 = !DILocation(line: 4443, column: 1, scope: !5240)
!5288 = !DILocation(line: 4442, column: 3, scope: !5240)
!5289 = distinct !DISubprogram(name: "WriteBlobMSBLong", scope: !754, file: !754, line: 4470, type: !4979, scopeLine: 4471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5290)
!5290 = !{!5291, !5292, !5293}
!5291 = !DILocalVariable(name: "image", arg: 1, scope: !5289, file: !754, line: 4470, type: !614)
!5292 = !DILocalVariable(name: "value", arg: 2, scope: !5289, file: !754, line: 4470, type: !1343)
!5293 = !DILocalVariable(name: "buffer", scope: !5289, file: !754, line: 4473, type: !3948)
!5294 = !DILocation(line: 0, scope: !5289)
!5295 = !DILocation(line: 4472, column: 3, scope: !5289)
!5296 = !DILocation(line: 4473, column: 5, scope: !5289)
!5297 = !DILocation(line: 4477, column: 36, scope: !5289)
!5298 = !DILocation(line: 4477, column: 13, scope: !5289)
!5299 = !DILocation(line: 4477, column: 12, scope: !5289)
!5300 = !DILocation(line: 4478, column: 36, scope: !5289)
!5301 = !DILocation(line: 4478, column: 13, scope: !5289)
!5302 = !DILocation(line: 4478, column: 3, scope: !5289)
!5303 = !DILocation(line: 4478, column: 12, scope: !5289)
!5304 = !DILocation(line: 4479, column: 36, scope: !5289)
!5305 = !DILocation(line: 4479, column: 13, scope: !5289)
!5306 = !DILocation(line: 4479, column: 3, scope: !5289)
!5307 = !DILocation(line: 4479, column: 12, scope: !5289)
!5308 = !DILocation(line: 4480, column: 13, scope: !5289)
!5309 = !DILocation(line: 4480, column: 3, scope: !5289)
!5310 = !DILocation(line: 4480, column: 12, scope: !5289)
!5311 = !DILocation(line: 0, scope: !2299, inlinedAt: !5312)
!5312 = distinct !DILocation(line: 4481, column: 10, scope: !5289)
!5313 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5312)
!5314 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5312)
!5315 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5312)
!5316 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5312)
!5317 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5312)
!5318 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5312)
!5319 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5312)
!5320 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5312)
!5321 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5312)
!5322 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5312)
!5323 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5312)
!5324 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5312)
!5325 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5312)
!5326 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5312)
!5327 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5312)
!5328 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5312)
!5329 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5312)
!5330 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5312)
!5331 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5312)
!5332 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5312)
!5333 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5312)
!5334 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5312)
!5335 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5312)
!5336 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5312)
!5337 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5312)
!5338 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5312)
!5339 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5312)
!5340 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5312)
!5341 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5312)
!5342 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5312)
!5343 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5312)
!5344 = !DILocation(line: 4482, column: 1, scope: !5289)
!5345 = !DILocation(line: 4481, column: 3, scope: !5289)
!5346 = distinct !DISubprogram(name: "WriteBlobMSBLongLong", scope: !754, file: !754, line: 4509, type: !5347, scopeLine: 4511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5349)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!672, !614, !742}
!5349 = !{!5350, !5351, !5352}
!5350 = !DILocalVariable(name: "image", arg: 1, scope: !5346, file: !754, line: 4509, type: !614)
!5351 = !DILocalVariable(name: "value", arg: 2, scope: !5346, file: !754, line: 4510, type: !742)
!5352 = !DILocalVariable(name: "buffer", scope: !5346, file: !754, line: 4513, type: !3816)
!5353 = !DILocation(line: 0, scope: !5346)
!5354 = !DILocation(line: 4512, column: 3, scope: !5346)
!5355 = !DILocation(line: 4513, column: 5, scope: !5346)
!5356 = !DILocation(line: 4517, column: 36, scope: !5346)
!5357 = !DILocation(line: 4517, column: 13, scope: !5346)
!5358 = !DILocation(line: 4517, column: 12, scope: !5346)
!5359 = !DILocation(line: 4518, column: 36, scope: !5346)
!5360 = !DILocation(line: 4518, column: 13, scope: !5346)
!5361 = !DILocation(line: 4518, column: 3, scope: !5346)
!5362 = !DILocation(line: 4518, column: 12, scope: !5346)
!5363 = !DILocation(line: 4519, column: 36, scope: !5346)
!5364 = !DILocation(line: 4519, column: 13, scope: !5346)
!5365 = !DILocation(line: 4519, column: 3, scope: !5346)
!5366 = !DILocation(line: 4519, column: 12, scope: !5346)
!5367 = !DILocation(line: 4520, column: 36, scope: !5346)
!5368 = !DILocation(line: 4520, column: 13, scope: !5346)
!5369 = !DILocation(line: 4520, column: 3, scope: !5346)
!5370 = !DILocation(line: 4520, column: 12, scope: !5346)
!5371 = !DILocation(line: 4521, column: 36, scope: !5346)
!5372 = !DILocation(line: 4521, column: 13, scope: !5346)
!5373 = !DILocation(line: 4521, column: 3, scope: !5346)
!5374 = !DILocation(line: 4521, column: 12, scope: !5346)
!5375 = !DILocation(line: 4522, column: 36, scope: !5346)
!5376 = !DILocation(line: 4522, column: 13, scope: !5346)
!5377 = !DILocation(line: 4522, column: 3, scope: !5346)
!5378 = !DILocation(line: 4522, column: 12, scope: !5346)
!5379 = !DILocation(line: 4523, column: 36, scope: !5346)
!5380 = !DILocation(line: 4523, column: 13, scope: !5346)
!5381 = !DILocation(line: 4523, column: 3, scope: !5346)
!5382 = !DILocation(line: 4523, column: 12, scope: !5346)
!5383 = !DILocation(line: 4524, column: 13, scope: !5346)
!5384 = !DILocation(line: 4524, column: 3, scope: !5346)
!5385 = !DILocation(line: 4524, column: 12, scope: !5346)
!5386 = !DILocation(line: 0, scope: !2299, inlinedAt: !5387)
!5387 = distinct !DILocation(line: 4525, column: 10, scope: !5346)
!5388 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5387)
!5389 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5387)
!5390 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5387)
!5391 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5387)
!5392 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5387)
!5393 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5387)
!5394 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5387)
!5395 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5387)
!5396 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5387)
!5397 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5387)
!5398 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5387)
!5399 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5387)
!5400 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5387)
!5401 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5387)
!5402 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5387)
!5403 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5387)
!5404 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5387)
!5405 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5387)
!5406 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5387)
!5407 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5387)
!5408 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5387)
!5409 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5387)
!5410 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5387)
!5411 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5387)
!5412 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5387)
!5413 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5387)
!5414 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5387)
!5415 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5387)
!5416 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5387)
!5417 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5387)
!5418 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5387)
!5419 = !DILocation(line: 4526, column: 1, scope: !5346)
!5420 = !DILocation(line: 4525, column: 3, scope: !5346)
!5421 = distinct !DISubprogram(name: "WriteBlobMSBShort", scope: !754, file: !754, line: 4553, type: !5089, scopeLine: 4554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5422)
!5422 = !{!5423, !5424, !5425}
!5423 = !DILocalVariable(name: "image", arg: 1, scope: !5421, file: !754, line: 4553, type: !614)
!5424 = !DILocalVariable(name: "value", arg: 2, scope: !5421, file: !754, line: 4553, type: !5091)
!5425 = !DILocalVariable(name: "buffer", scope: !5421, file: !754, line: 4556, type: !4097)
!5426 = !DILocation(line: 0, scope: !5421)
!5427 = !DILocation(line: 4555, column: 3, scope: !5421)
!5428 = !DILocation(line: 4556, column: 5, scope: !5421)
!5429 = !DILocation(line: 4560, column: 36, scope: !5421)
!5430 = !DILocation(line: 4560, column: 13, scope: !5421)
!5431 = !DILocation(line: 4560, column: 12, scope: !5421)
!5432 = !DILocation(line: 4561, column: 13, scope: !5421)
!5433 = !DILocation(line: 4561, column: 3, scope: !5421)
!5434 = !DILocation(line: 4561, column: 12, scope: !5421)
!5435 = !DILocation(line: 0, scope: !2299, inlinedAt: !5436)
!5436 = distinct !DILocation(line: 4562, column: 10, scope: !5421)
!5437 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5436)
!5438 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5436)
!5439 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5436)
!5440 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5436)
!5441 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5436)
!5442 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5436)
!5443 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5436)
!5444 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5436)
!5445 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5436)
!5446 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5436)
!5447 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5436)
!5448 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5436)
!5449 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5436)
!5450 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5436)
!5451 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5436)
!5452 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5436)
!5453 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5436)
!5454 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5436)
!5455 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5436)
!5456 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5436)
!5457 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5436)
!5458 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5436)
!5459 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5436)
!5460 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5436)
!5461 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5436)
!5462 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5436)
!5463 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5436)
!5464 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5436)
!5465 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5436)
!5466 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5436)
!5467 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5436)
!5468 = !DILocation(line: 4563, column: 1, scope: !5421)
!5469 = !DILocation(line: 4562, column: 3, scope: !5421)
!5470 = distinct !DISubprogram(name: "WriteBlobString", scope: !754, file: !754, line: 4590, type: !5471, scopeLine: 4591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5473)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!672, !614, !608}
!5473 = !{!5474, !5475}
!5474 = !DILocalVariable(name: "image", arg: 1, scope: !5470, file: !754, line: 4590, type: !614)
!5475 = !DILocalVariable(name: "string", arg: 2, scope: !5470, file: !754, line: 4590, type: !608)
!5476 = !DILocation(line: 0, scope: !5470)
!5477 = !DILocation(line: 4595, column: 32, scope: !5470)
!5478 = !DILocation(line: 0, scope: !2299, inlinedAt: !5479)
!5479 = distinct !DILocation(line: 4595, column: 10, scope: !5470)
!5480 = !DILocation(line: 1111, column: 14, scope: !2310, inlinedAt: !5479)
!5481 = !DILocation(line: 1111, column: 20, scope: !2310, inlinedAt: !5479)
!5482 = !DILocation(line: 1111, column: 25, scope: !2310, inlinedAt: !5479)
!5483 = !DILocation(line: 1111, column: 7, scope: !2299, inlinedAt: !5479)
!5484 = !DILocation(line: 1112, column: 12, scope: !2310, inlinedAt: !5479)
!5485 = !DILocation(line: 1112, column: 5, scope: !2310, inlinedAt: !5479)
!5486 = !DILocation(line: 1115, column: 41, scope: !2299, inlinedAt: !5479)
!5487 = !DILocation(line: 1115, column: 47, scope: !2299, inlinedAt: !5479)
!5488 = !DILocation(line: 1116, column: 30, scope: !2319, inlinedAt: !5479)
!5489 = !DILocation(line: 1116, column: 14, scope: !2319, inlinedAt: !5479)
!5490 = !DILocation(line: 1116, column: 7, scope: !2299, inlinedAt: !5479)
!5491 = !DILocation(line: 1118, column: 47, scope: !2323, inlinedAt: !5479)
!5492 = !DILocation(line: 1118, column: 33, scope: !2323, inlinedAt: !5479)
!5493 = !DILocation(line: 1118, column: 54, scope: !2323, inlinedAt: !5479)
!5494 = !DILocation(line: 1119, column: 27, scope: !2323, inlinedAt: !5479)
!5495 = !DILocation(line: 1120, column: 11, scope: !2328, inlinedAt: !5479)
!5496 = !DILocation(line: 1120, column: 39, scope: !2328, inlinedAt: !5479)
!5497 = !DILocation(line: 1120, column: 11, scope: !2323, inlinedAt: !5479)
!5498 = !DILocation(line: 1123, column: 12, scope: !2299, inlinedAt: !5479)
!5499 = !DILocation(line: 1123, column: 36, scope: !2299, inlinedAt: !5479)
!5500 = !DILocation(line: 1123, column: 18, scope: !2299, inlinedAt: !5479)
!5501 = !DILocation(line: 1123, column: 22, scope: !2299, inlinedAt: !5479)
!5502 = !DILocation(line: 1124, column: 10, scope: !2299, inlinedAt: !5479)
!5503 = !DILocation(line: 1125, column: 10, scope: !2299, inlinedAt: !5479)
!5504 = !DILocation(line: 1125, column: 16, scope: !2299, inlinedAt: !5479)
!5505 = !DILocation(line: 1125, column: 22, scope: !2299, inlinedAt: !5479)
!5506 = !DILocation(line: 1126, column: 62, scope: !2340, inlinedAt: !5479)
!5507 = !DILocation(line: 1126, column: 27, scope: !2340, inlinedAt: !5479)
!5508 = !DILocation(line: 1126, column: 7, scope: !2299, inlinedAt: !5479)
!5509 = !DILocation(line: 1127, column: 24, scope: !2340, inlinedAt: !5479)
!5510 = !DILocation(line: 1127, column: 5, scope: !2340, inlinedAt: !5479)
!5511 = !DILocation(line: 4595, column: 3, scope: !5470)
!5512 = !DISubprogram(name: "open", scope: !5513, file: !5513, line: 168, type: !5514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1070)
!5513 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!553, !608, !553, null}
