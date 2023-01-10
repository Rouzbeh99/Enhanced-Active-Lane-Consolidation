; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/histogram.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CubeInfo = type { ptr, i64, i64, i64, i64, ptr, ptr }
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
%struct._Nodes = type { [1536 x %struct._NodeInfo], ptr }
%struct._NodeInfo = type { [16 x ptr], ptr, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ColorPacket = type { %struct._PixelPacket, i16, i64 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/histogram.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%10.20g\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c": %s %s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Histogram/Image\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"  Compute image colors...  \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"UniqueColors/Image\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageHistogram(ptr noundef %image, ptr nocapture noundef writeonly %number_colors, ptr noundef %exception) local_unnamed_addr #0 !dbg !897 {
entry:
  %root = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !903, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %number_colors, metadata !904, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %exception, metadata !905, metadata !DIExpression()), !dbg !913
  store i64 0, ptr %number_colors, align 8, !dbg !914, !tbaa !915
  call void @llvm.dbg.value(metadata ptr null, metadata !906, metadata !DIExpression()), !dbg !913
  %call = tail call fastcc ptr @ClassifyImageColors(ptr noundef %image, ptr noundef %exception), !dbg !919
  call void @llvm.dbg.value(metadata ptr %call, metadata !907, metadata !DIExpression()), !dbg !913
  %cmp.not = icmp eq ptr %call, null, !dbg !920
  br i1 %cmp.not, label %if.end7, label %if.then, !dbg !921

if.then:                                          ; preds = %entry
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 3, !dbg !922
  %0 = load i64, ptr %colors, align 8, !dbg !922, !tbaa !923
  %call1 = tail call ptr @AcquireQuantumMemory(i64 noundef %0, i64 noundef 24) #14, !dbg !927
  call void @llvm.dbg.value(metadata ptr %call1, metadata !906, metadata !DIExpression()), !dbg !913
  %cmp2 = icmp eq ptr %call1, null, !dbg !928
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !929

if.then3:                                         ; preds = %if.then
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !930
  %call4 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 543, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #15, !dbg !931
  br label %if.end7, !dbg !932

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root) #15, !dbg !933
  %1 = load i64, ptr %colors, align 8, !dbg !934, !tbaa !923
  store i64 %1, ptr %number_colors, align 8, !dbg !935, !tbaa !915
  call void @llvm.dbg.value(metadata ptr %call1, metadata !908, metadata !DIExpression()), !dbg !936
  store ptr %call1, ptr %root, align 8, !dbg !937, !tbaa !938
  %2 = load ptr, ptr %call, align 8, !dbg !939, !tbaa !940
  call void @llvm.dbg.value(metadata ptr %root, metadata !908, metadata !DIExpression(DW_OP_deref)), !dbg !936
  call fastcc void @DefineImageHistogram(ptr noundef %image, ptr noundef %2, ptr noundef nonnull %root), !dbg !941
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root) #15, !dbg !942
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else, %entry
  %histogram.0 = phi ptr [ null, %if.then3 ], [ %call1, %if.else ], [ null, %entry ], !dbg !913
  call void @llvm.dbg.value(metadata ptr %histogram.0, metadata !906, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr %image, metadata !943, metadata !DIExpression()) #15, !dbg !950
  call void @llvm.dbg.value(metadata ptr %call, metadata !948, metadata !DIExpression()) #15, !dbg !950
  %3 = load ptr, ptr %call, align 8, !dbg !952, !tbaa !940
  tail call fastcc void @DestroyColorCube(ptr noundef %image, ptr noundef %3) #15, !dbg !953
  %node_queue.i = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 6
  %.pre.i = load ptr, ptr %node_queue.i, align 8, !dbg !954, !tbaa !956
  br label %do.body.i, !dbg !957

do.body.i:                                        ; preds = %do.body.i, %if.end7
  %4 = phi ptr [ %5, %do.body.i ], [ %.pre.i, %if.end7 ], !dbg !954
  %next.i = getelementptr inbounds %struct._Nodes, ptr %4, i64 0, i32 1, !dbg !958
  %5 = load ptr, ptr %next.i, align 8, !dbg !958, !tbaa !959
  call void @llvm.dbg.value(metadata ptr %5, metadata !949, metadata !DIExpression()) #15, !dbg !950
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef %4) #15, !dbg !961
  store ptr %5, ptr %node_queue.i, align 8, !dbg !962, !tbaa !956
  %cmp.not.i = icmp eq ptr %5, null, !dbg !963
  br i1 %cmp.not.i, label %DestroyCubeInfo.exit, label %do.body.i, !dbg !964, !llvm.loop !965

DestroyCubeInfo.exit:                             ; preds = %do.body.i
  %call5.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #15, !dbg !969
  call void @llvm.dbg.value(metadata ptr undef, metadata !907, metadata !DIExpression()), !dbg !913
  ret ptr %histogram.0, !dbg !970
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ClassifyImageColors(ptr noundef %image, ptr noundef %exception) unnamed_addr #0 !dbg !971 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %target = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !975, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr %exception, metadata !976, metadata !DIExpression()), !dbg !1007
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #15, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !983, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %target) #15, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %target, metadata !997, metadata !DIExpression()), !dbg !1010
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1011
  %0 = load i32, ptr %debug, align 8, !dbg !1011, !tbaa !1013
  %cmp.not = icmp eq i32 %0, 0, !dbg !1027
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1028

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1029
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 220, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #15, !dbg !1030
  br label %if.end, !dbg !1031

if.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @AcquireMagickMemory(i64 noundef 56) #16, !dbg !1032
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1037, metadata !DIExpression()) #15, !dbg !1039
  %cmp.i = icmp eq ptr %call.i, null, !dbg !1040
  br i1 %cmp.i, label %if.then3, label %if.end.i, !dbg !1042

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call.i, i32 noundef 0, i64 noundef 56) #15, !dbg !1043
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1044, metadata !DIExpression()) #15, !dbg !1054
  call void @llvm.dbg.value(metadata i64 0, metadata !1049, metadata !DIExpression()) #15, !dbg !1054
  %free_nodes.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 4, !dbg !1056
  %1 = load i64, ptr %free_nodes.i.i, align 8, !dbg !1056, !tbaa !1057
  %cmp.i.i = icmp eq i64 %1, 0, !dbg !1058
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !1059

entry.if.end7_crit_edge.i.i:                      ; preds = %if.end.i
  %node_info9.phi.trans.insert.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %node_info9.phi.trans.insert.i.i, align 8, !dbg !1060, !tbaa !1061
  %phi.bo.i.i = add i64 %1, -1, !dbg !1059
  br label %if.end7, !dbg !1059

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call ptr @AcquireMagickMemory(i64 noundef 233480) #16, !dbg !1062
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1051, metadata !DIExpression()) #15, !dbg !1063
  %cmp1.i.i = icmp eq ptr %call.i.i, null, !dbg !1064
  br i1 %cmp1.i.i, label %select.unfold, label %if.end.i.i, !dbg !1066

if.end.i.i:                                       ; preds = %if.then.i.i
  %node_queue.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 6, !dbg !1067
  %2 = load ptr, ptr %node_queue.i.i, align 8, !dbg !1067, !tbaa !956
  %next.i.i = getelementptr inbounds %struct._Nodes, ptr %call.i.i, i64 0, i32 1, !dbg !1068
  store ptr %2, ptr %next.i.i, align 8, !dbg !1069, !tbaa !959
  store ptr %call.i.i, ptr %node_queue.i.i, align 8, !dbg !1070, !tbaa !956
  br label %if.end7

select.unfold:                                    ; preds = %if.then.i.i
  store ptr null, ptr %call.i, align 8, !dbg !1071, !tbaa !940
  br label %if.then3, !dbg !1039

if.then3:                                         ; preds = %if.end, %select.unfold
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !981, metadata !DIExpression()), !dbg !1007
  %filename4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1072
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 224, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename4) #15, !dbg !1075
  br label %cleanup, !dbg !1076

if.end7:                                          ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi ptr [ %call.i.i, %if.end.i.i ], [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], !dbg !1060
  %4 = phi i64 [ 1535, %if.end.i.i ], [ %phi.bo.i.i, %entry.if.end7_crit_edge.i.i ]
  store i64 %4, ptr %free_nodes.i.i, align 8, !dbg !1077, !tbaa !1057
  %node_info9.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 5, !dbg !1078
  %incdec.ptr.i.i = getelementptr inbounds %struct._NodeInfo, ptr %3, i64 1, !dbg !1060
  store ptr %incdec.ptr.i.i, ptr %node_info9.i.i, align 8, !dbg !1060, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %3, metadata !1050, metadata !DIExpression()) #15, !dbg !1054
  %call10.i.i = tail call ptr @ResetMagickMemory(ptr noundef %3, i32 noundef 0, i64 noundef 152) #15, !dbg !1079
  %level11.i.i = getelementptr inbounds %struct._NodeInfo, ptr %3, i64 0, i32 3, !dbg !1080
  store i64 0, ptr %level11.i.i, align 8, !dbg !1081, !tbaa !1082
  store ptr %3, ptr %call.i, align 8, !dbg !1071, !tbaa !940
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !981, metadata !DIExpression()), !dbg !1007
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel) #15, !dbg !1084
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %target) #15, !dbg !1085
  %call8 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #15, !dbg !1086
  call void @llvm.dbg.value(metadata ptr %call8, metadata !977, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 0, metadata !1006, metadata !DIExpression()), !dbg !1007
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1006, metadata !DIExpression()), !dbg !1007
  %5 = load i64, ptr %rows, align 8, !dbg !1087, !tbaa !1090
  %cmp9283 = icmp sgt i64 %5, 0, !dbg !1091
  br i1 %cmp9283, label %for.body.lr.ph, label %for.end109, !dbg !1092

for.body.lr.ph:                                   ; preds = %if.end7
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %6 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %node_queue.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 6
  %red1.i216 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 5
  %green3.i219 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 6
  %blue5.i221 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 7
  %opacity7.i224 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 8
  %index15.i227 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 9
  %matte.i231 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 2
  %matte694.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 2
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 3
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !1092

for.body:                                         ; preds = %for.body.lr.ph, %for.inc107
  %y.0284 = phi i64 [ 0, %for.body.lr.ph ], [ %inc108, %for.inc107 ]
  call void @llvm.dbg.value(metadata i64 %y.0284, metadata !1006, metadata !DIExpression()), !dbg !1007
  %7 = load i64, ptr %columns, align 8, !dbg !1093, !tbaa !1095
  %call10 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call8, i64 noundef 0, i64 noundef %y.0284, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #17, !dbg !1096
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1000, metadata !DIExpression()), !dbg !1007
  %cmp11 = icmp eq ptr %call10, null, !dbg !1097
  br i1 %cmp11, label %for.end109, label %if.end13, !dbg !1099

if.end13:                                         ; preds = %for.body
  %call14 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call8) #15, !dbg !1100
  call void @llvm.dbg.value(metadata ptr %call14, metadata !999, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 0, metadata !1005, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1000, metadata !DIExpression()), !dbg !1007
  %8 = load i64, ptr %columns, align 8, !dbg !1101, !tbaa !1095
  %cmp17278 = icmp sgt i64 %8, 0, !dbg !1104
  br i1 %cmp17278, label %for.cond19.preheader.lr.ph, label %for.end100, !dbg !1105

for.cond19.preheader.lr.ph:                       ; preds = %if.end13
  %cmp9.i = icmp ne ptr %call14, null
  %cmp84 = icmp eq ptr %call14, null
  br label %for.cond19.preheader, !dbg !1105

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %if.end97
  %x.0282 = phi i64 [ 0, %for.cond19.preheader.lr.ph ], [ %inc99, %if.end97 ]
  %p.0279 = phi ptr [ %call10, %for.cond19.preheader.lr.ph ], [ %incdec.ptr, %if.end97 ]
  call void @llvm.dbg.value(metadata i64 %x.0282, metadata !1005, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr %p.0279, metadata !1000, metadata !DIExpression()), !dbg !1007
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0279, i64 0, i32 2
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0279, i64 0, i32 1
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0279, i64 0, i32 3
  %node_info.0261 = load ptr, ptr %call.i, align 8, !dbg !1106, !tbaa !938
  call void @llvm.dbg.value(metadata i64 1, metadata !1003, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 poison, metadata !1002, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr %node_info.0261, metadata !998, metadata !DIExpression()), !dbg !1007
  %add.ptr = getelementptr inbounds i16, ptr %call14, i64 %x.0282
  br label %for.body21, !dbg !1108

for.cond39.preheader:                             ; preds = %if.end36
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 2
  %9 = load i64, ptr %number_unique, align 8, !tbaa !1110
  call void @llvm.dbg.value(metadata i64 0, metadata !1004, metadata !DIExpression()), !dbg !1007
  %cmp40267 = icmp sgt i64 %9, 0, !dbg !1111
  br i1 %cmp40267, label %for.body41.lr.ph, label %if.else, !dbg !1114

for.body41.lr.ph:                                 ; preds = %for.cond39.preheader
  %list = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1
  %10 = load ptr, ptr %list, align 8, !tbaa !1115
  %image.val = load i32, ptr %6, align 4, !tbaa !1116
  %cmp.i225 = icmp eq i32 %image.val, 12
  %11 = load i32, ptr %matte.i231, align 8, !tbaa !1117
  %cmp.not.i232 = icmp eq i32 %11, 0
  %12 = load i32, ptr %matte694.i, align 8, !tbaa !1117
  %cmp7.not95.i = icmp eq i32 %12, 0
  %13 = load float, ptr %opacity7.i, align 4
  %sub38.i = fadd float %13, -6.553500e+04
  %14 = call float @llvm.fabs.f32(float %sub38.i) #15, !dbg !1007
  %15 = fpext float %14 to double
  %cmp40.i = fcmp olt double %15, 1.000000e-15
  %16 = call float @llvm.fabs.f32(float %13) #15, !dbg !1007
  %17 = fpext float %16 to double
  %cmp4.i234 = fcmp ult double %17, 1.000000e-15
  %18 = load float, ptr %red1.i, align 8
  %19 = load float, ptr %green3.i, align 4
  %20 = load float, ptr %blue5.i, align 8
  %21 = load i32, ptr %colorspace.i, align 4
  %cmp66.i = icmp eq i32 %21, 12
  %22 = load float, ptr %index15.i, align 8
  %index15.i227.promoted = load float, ptr %index15.i227, align 8, !tbaa !1120
  br label %for.body41, !dbg !1114

for.body21:                                       ; preds = %for.cond19.preheader, %if.end36
  %node_info.0266 = phi ptr [ %node_info.0261, %for.cond19.preheader ], [ %node_info.0, %if.end36 ]
  %level.0264 = phi i64 [ 1, %for.cond19.preheader ], [ %inc, %if.end36 ]
  %index.0262 = phi i32 [ 7, %for.cond19.preheader ], [ %dec, %if.end36 ]
  call void @llvm.dbg.value(metadata i64 %level.0264, metadata !1003, metadata !DIExpression()), !dbg !1007
  %image.val197 = load i32, ptr %6, align 4, !dbg !1121, !tbaa !1116
  call void @llvm.dbg.value(metadata ptr undef, metadata !1124, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %p.0279, metadata !1131, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call14, i64 %x.0282), metadata !1132, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1134
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1133, metadata !DIExpression()), !dbg !1134
  %23 = load i16, ptr %red.i, align 2, !dbg !1136, !tbaa !1137
  %conv.i = uitofp i16 %23 to float, !dbg !1138
  store float %conv.i, ptr %red1.i, align 8, !dbg !1139, !tbaa !1140
  %24 = load i16, ptr %green.i, align 2, !dbg !1141, !tbaa !1142
  %conv2.i = uitofp i16 %24 to float, !dbg !1143
  store float %conv2.i, ptr %green3.i, align 4, !dbg !1144, !tbaa !1145
  %25 = load i16, ptr %p.0279, align 2, !dbg !1146, !tbaa !1147
  %conv4.i = uitofp i16 %25 to float, !dbg !1148
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1149, !tbaa !1150
  %26 = load i16, ptr %opacity.i, align 2, !dbg !1151, !tbaa !1152
  %conv6.i = uitofp i16 %26 to float, !dbg !1153
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !1154, !tbaa !1155
  %cmp.i198 = icmp eq i32 %image.val197, 12, !dbg !1156
  %or.cond.i = and i1 %cmp9.i, %cmp.i198, !dbg !1158
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !1158

cond.end.i:                                       ; preds = %for.body21
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1132, metadata !DIExpression()), !dbg !1134
  %27 = load i16, ptr %add.ptr, align 2, !dbg !1159, !tbaa !1160
  %conv14.i = uitofp i16 %27 to float, !dbg !1161
  store float %conv14.i, ptr %index15.i, align 8, !dbg !1162, !tbaa !1120
  br label %SetMagickPixelPacket.exit, !dbg !1163

SetMagickPixelPacket.exit:                        ; preds = %for.body21, %cond.end.i
  call void @llvm.dbg.value(metadata ptr %image, metadata !1164, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1171, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 poison, metadata !1172, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata float %conv.i, metadata !1176, metadata !DIExpression()), !dbg !1182
  switch i16 %23, label %if.end3.i.i [
    i16 0, label %ClampToQuantum.exit.i
    i16 -1, label %ClampToQuantum.exit.i.fold.split
  ], !dbg !1184

if.end3.i.i:                                      ; preds = %SetMagickPixelPacket.exit
  %add.i.i = fadd float %conv.i, 5.000000e-01, !dbg !1185
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !1186
  %phi.cast.i = zext i16 %conv.i.i to i64, !dbg !1187
  %phi.bo.i = add nuw nsw i64 %phi.cast.i, 128, !dbg !1187
  br label %ClampToQuantum.exit.i, !dbg !1187

ClampToQuantum.exit.i.fold.split:                 ; preds = %SetMagickPixelPacket.exit
  br label %ClampToQuantum.exit.i, !dbg !1188

ClampToQuantum.exit.i:                            ; preds = %SetMagickPixelPacket.exit, %ClampToQuantum.exit.i.fold.split, %if.end3.i.i
  %retval.0.i.i = phi i64 [ %phi.bo.i, %if.end3.i.i ], [ 128, %SetMagickPixelPacket.exit ], [ 65663, %ClampToQuantum.exit.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !1196
  %shr.i.i = lshr i64 %retval.0.i.i, 8, !dbg !1188
  %sub.i.i = sub nsw i64 %retval.0.i.i, %shr.i.i, !dbg !1197
  %28 = trunc i64 %sub.i.i to i32, !dbg !1198
  %29 = lshr i32 %28, 8, !dbg !1198
  %conv.i204 = and i32 %29, 255, !dbg !1199
  %shr.i = lshr i32 %conv.i204, %index.0262, !dbg !1200
  %and.i = and i32 %shr.i, 1, !dbg !1201
  call void @llvm.dbg.value(metadata float %conv2.i, metadata !1176, metadata !DIExpression()), !dbg !1202
  switch i16 %24, label %if.end3.i42.i [
    i16 0, label %ClampToQuantum.exit44.i
    i16 -1, label %ClampToQuantum.exit44.i.fold.split
  ], !dbg !1204

if.end3.i42.i:                                    ; preds = %ClampToQuantum.exit.i
  %add.i40.i = fadd float %conv2.i, 5.000000e-01, !dbg !1205
  %conv.i41.i = fptoui float %add.i40.i to i16, !dbg !1206
  %phi.cast79.i = zext i16 %conv.i41.i to i64, !dbg !1207
  %phi.bo80.i = add nuw nsw i64 %phi.cast79.i, 128, !dbg !1207
  br label %ClampToQuantum.exit44.i, !dbg !1207

ClampToQuantum.exit44.i.fold.split:               ; preds = %ClampToQuantum.exit.i
  br label %ClampToQuantum.exit44.i, !dbg !1208

ClampToQuantum.exit44.i:                          ; preds = %ClampToQuantum.exit.i, %ClampToQuantum.exit44.i.fold.split, %if.end3.i42.i
  %retval.0.i43.i = phi i64 [ %phi.bo80.i, %if.end3.i42.i ], [ 128, %ClampToQuantum.exit.i ], [ 65663, %ClampToQuantum.exit44.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !1210
  %shr.i47.i = lshr i64 %retval.0.i43.i, 8, !dbg !1208
  %sub.i48.i = sub nsw i64 %retval.0.i43.i, %shr.i47.i, !dbg !1211
  %30 = trunc i64 %sub.i48.i to i32, !dbg !1212
  %31 = lshr i32 %30, 8, !dbg !1212
  %conv4.i206 = and i32 %31, 255, !dbg !1213
  %shr6.i = lshr i32 %conv4.i206, %index.0262, !dbg !1214
  %and7.i = shl nuw nsw i32 %shr6.i, 1, !dbg !1215
  %shl.i = and i32 %and7.i, 2, !dbg !1215
  %or.i = or i32 %shl.i, %and.i, !dbg !1216
  call void @llvm.dbg.value(metadata float %conv4.i, metadata !1176, metadata !DIExpression()), !dbg !1217
  switch i16 %25, label %if.end3.i56.i [
    i16 0, label %ClampToQuantum.exit58.i
    i16 -1, label %ClampToQuantum.exit58.i.fold.split
  ], !dbg !1219

if.end3.i56.i:                                    ; preds = %ClampToQuantum.exit44.i
  %add.i54.i = fadd float %conv4.i, 5.000000e-01, !dbg !1220
  %conv.i55.i = fptoui float %add.i54.i to i16, !dbg !1221
  %phi.cast81.i = zext i16 %conv.i55.i to i64, !dbg !1222
  %phi.bo82.i = add nuw nsw i64 %phi.cast81.i, 128, !dbg !1222
  br label %ClampToQuantum.exit58.i, !dbg !1222

ClampToQuantum.exit58.i.fold.split:               ; preds = %ClampToQuantum.exit44.i
  br label %ClampToQuantum.exit58.i, !dbg !1223

ClampToQuantum.exit58.i:                          ; preds = %ClampToQuantum.exit44.i, %ClampToQuantum.exit58.i.fold.split, %if.end3.i56.i
  %retval.0.i57.i = phi i64 [ %phi.bo82.i, %if.end3.i56.i ], [ 128, %ClampToQuantum.exit44.i ], [ 65663, %ClampToQuantum.exit58.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !1225
  %shr.i61.i = lshr i64 %retval.0.i57.i, 8, !dbg !1223
  %sub.i62.i = sub nsw i64 %retval.0.i57.i, %shr.i61.i, !dbg !1226
  %32 = trunc i64 %sub.i62.i to i32, !dbg !1227
  %33 = lshr i32 %32, 8, !dbg !1227
  %conv10.i = and i32 %33, 255, !dbg !1228
  %shr12.i = lshr i32 %conv10.i, %index.0262, !dbg !1229
  %and13.i = shl nuw nsw i32 %shr12.i, 2, !dbg !1230
  %shl14.i = and i32 %and13.i, 4, !dbg !1230
  %or15.i = or i32 %or.i, %shl14.i, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %or15.i, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1174
  %34 = load i32, ptr %matte.i, align 8, !dbg !1232, !tbaa !1234
  %cmp.not.i = icmp eq i32 %34, 0, !dbg !1235
  br i1 %cmp.not.i, label %ColorToNodeId.exit, label %if.then.i, !dbg !1236

if.then.i:                                        ; preds = %ClampToQuantum.exit58.i
  call void @llvm.dbg.value(metadata float %conv6.i, metadata !1176, metadata !DIExpression()), !dbg !1237
  switch i16 %26, label %if.end3.i70.i [
    i16 0, label %ClampToQuantum.exit72.i
    i16 -1, label %ClampToQuantum.exit72.i.fold.split
  ], !dbg !1239

if.end3.i70.i:                                    ; preds = %if.then.i
  %add.i68.i = fadd float %conv6.i, 5.000000e-01, !dbg !1240
  %conv.i69.i = fptoui float %add.i68.i to i16, !dbg !1241
  %phi.cast83.i = zext i16 %conv.i69.i to i64, !dbg !1242
  %phi.bo84.i = add nuw nsw i64 %phi.cast83.i, 128, !dbg !1242
  br label %ClampToQuantum.exit72.i, !dbg !1242

ClampToQuantum.exit72.i.fold.split:               ; preds = %if.then.i
  br label %ClampToQuantum.exit72.i, !dbg !1243

ClampToQuantum.exit72.i:                          ; preds = %if.then.i, %ClampToQuantum.exit72.i.fold.split, %if.end3.i70.i
  %retval.0.i71.i = phi i64 [ %phi.bo84.i, %if.end3.i70.i ], [ 128, %if.then.i ], [ 65663, %ClampToQuantum.exit72.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !1245
  %shr.i75.i = lshr i64 %retval.0.i71.i, 8, !dbg !1243
  %sub.i76.i = sub nsw i64 %retval.0.i71.i, %shr.i75.i, !dbg !1246
  %35 = trunc i64 %sub.i76.i to i32, !dbg !1247
  %36 = lshr i32 %35, 8, !dbg !1247
  %conv20.i = and i32 %36, 255, !dbg !1248
  %shr22.i = lshr i32 %conv20.i, %index.0262, !dbg !1249
  %and23.i = shl nuw nsw i32 %shr22.i, 3, !dbg !1250
  %shl24.i = and i32 %and23.i, 8, !dbg !1250
  %or2634.i = or i32 %shl24.i, %or15.i, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %or2634.i, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1174
  br label %ColorToNodeId.exit, !dbg !1252

ColorToNodeId.exit:                               ; preds = %ClampToQuantum.exit58.i, %ClampToQuantum.exit72.i
  %id.0.in.i = phi i32 [ %or2634.i, %ClampToQuantum.exit72.i ], [ %or15.i, %ClampToQuantum.exit58.i ]
  %id.0.i = zext i32 %id.0.in.i to i64, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !1173, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !1001, metadata !DIExpression()), !dbg !1007
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %node_info.0266, i64 0, i64 %id.0.i, !dbg !1253
  %37 = load ptr, ptr %arrayidx, align 8, !dbg !1253, !tbaa !938
  %cmp23 = icmp eq ptr %37, null, !dbg !1255
  br i1 %cmp23, label %if.then24, label %if.end36, !dbg !1256

if.then24:                                        ; preds = %ColorToNodeId.exit
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1044, metadata !DIExpression()) #15, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %level.0264, metadata !1049, metadata !DIExpression()) #15, !dbg !1257
  %38 = load i64, ptr %free_nodes.i.i, align 8, !dbg !1260, !tbaa !1057
  %cmp.i209 = icmp eq i64 %38, 0, !dbg !1261
  br i1 %cmp.i209, label %if.then.i212, label %entry.if.end7_crit_edge.i, !dbg !1262

entry.if.end7_crit_edge.i:                        ; preds = %if.then24
  %.pre.i = load ptr, ptr %node_info9.i.i, align 8, !dbg !1263, !tbaa !1061
  %phi.bo.i210 = add i64 %38, -1, !dbg !1262
  br label %GetNodeInfo.exit, !dbg !1262

if.then.i212:                                     ; preds = %if.then24
  %call.i211 = call ptr @AcquireMagickMemory(i64 noundef 233480) #16, !dbg !1264
  call void @llvm.dbg.value(metadata ptr %call.i211, metadata !1051, metadata !DIExpression()) #15, !dbg !1265
  %cmp1.i = icmp eq ptr %call.i211, null, !dbg !1266
  br i1 %cmp1.i, label %if.then31, label %if.end.i213, !dbg !1267

if.end.i213:                                      ; preds = %if.then.i212
  %39 = load ptr, ptr %node_queue.i, align 8, !dbg !1268, !tbaa !956
  %next.i = getelementptr inbounds %struct._Nodes, ptr %call.i211, i64 0, i32 1, !dbg !1269
  store ptr %39, ptr %next.i, align 8, !dbg !1270, !tbaa !959
  store ptr %call.i211, ptr %node_queue.i, align 8, !dbg !1271, !tbaa !956
  br label %GetNodeInfo.exit

GetNodeInfo.exit:                                 ; preds = %entry.if.end7_crit_edge.i, %if.end.i213
  %40 = phi ptr [ %call.i211, %if.end.i213 ], [ %.pre.i, %entry.if.end7_crit_edge.i ], !dbg !1263
  %41 = phi i64 [ 1535, %if.end.i213 ], [ %phi.bo.i210, %entry.if.end7_crit_edge.i ]
  store i64 %41, ptr %free_nodes.i.i, align 8, !dbg !1272, !tbaa !1057
  %incdec.ptr.i = getelementptr inbounds %struct._NodeInfo, ptr %40, i64 1, !dbg !1263
  store ptr %incdec.ptr.i, ptr %node_info9.i.i, align 8, !dbg !1263, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %40, metadata !1050, metadata !DIExpression()) #15, !dbg !1257
  %call10.i = call ptr @ResetMagickMemory(ptr noundef %40, i32 noundef 0, i64 noundef 152) #15, !dbg !1273
  %level11.i = getelementptr inbounds %struct._NodeInfo, ptr %40, i64 0, i32 3, !dbg !1274
  store i64 %level.0264, ptr %level11.i, align 8, !dbg !1275, !tbaa !1082
  store ptr %40, ptr %arrayidx, align 8, !dbg !1276, !tbaa !938
  br label %if.end36, !dbg !1277

if.then31:                                        ; preds = %if.then.i212
  store ptr null, ptr %arrayidx, align 8, !dbg !1276, !tbaa !938
  %call34 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 253, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #15, !dbg !1278
  br label %cleanup, !dbg !1281

if.end36:                                         ; preds = %GetNodeInfo.exit, %ColorToNodeId.exit
  %node_info.0 = phi ptr [ %40, %GetNodeInfo.exit ], [ %37, %ColorToNodeId.exit ], !dbg !1106
  call void @llvm.dbg.value(metadata ptr undef, metadata !998, metadata !DIExpression()), !dbg !1007
  %dec = add nsw i32 %index.0262, -1, !dbg !1282
  call void @llvm.dbg.value(metadata i64 undef, metadata !1002, metadata !DIExpression()), !dbg !1007
  %inc = add nuw nsw i64 %level.0264, 1, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1003, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 poison, metadata !1002, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr %node_info.0, metadata !998, metadata !DIExpression()), !dbg !1007
  %exitcond.not = icmp eq i64 %inc, 8, !dbg !1284
  br i1 %exitcond.not, label %for.cond39.preheader, label %for.body21, !dbg !1108, !llvm.loop !1285

for.body41:                                       ; preds = %for.body41.lr.ph, %for.inc51
  %conv14.i226276 = phi float [ %index15.i227.promoted, %for.body41.lr.ph ], [ %conv14.i226277, %for.inc51 ]
  %i.0268 = phi i64 [ 0, %for.body41.lr.ph ], [ %inc52, %for.inc51 ]
  call void @llvm.dbg.value(metadata i64 %i.0268, metadata !1004, metadata !DIExpression()), !dbg !1007
  %arrayidx42 = getelementptr inbounds %struct._ColorPacket, ptr %10, i64 %i.0268, !dbg !1287
  call void @llvm.dbg.value(metadata ptr undef, metadata !1124, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %arrayidx42, metadata !1131, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata !DIArgList(ptr %10, i64 %i.0268), metadata !1132, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %target, metadata !1133, metadata !DIExpression()), !dbg !1289
  %red.i214 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx42, i64 0, i32 2, !dbg !1291
  %42 = load i16, ptr %red.i214, align 2, !dbg !1291, !tbaa !1137
  %conv.i215 = uitofp i16 %42 to float, !dbg !1292
  %green.i217 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx42, i64 0, i32 1, !dbg !1293
  %43 = load i16, ptr %green.i217, align 2, !dbg !1293, !tbaa !1142
  %conv2.i218 = uitofp i16 %43 to float, !dbg !1294
  %44 = load i16, ptr %arrayidx42, align 2, !dbg !1295, !tbaa !1147
  %conv4.i220 = uitofp i16 %44 to float, !dbg !1296
  %opacity.i222 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx42, i64 0, i32 3, !dbg !1297
  %45 = load i16, ptr %opacity.i222, align 2, !dbg !1297, !tbaa !1152
  %conv6.i223 = uitofp i16 %45 to float, !dbg !1298
  br i1 %cmp.i225, label %cond.end.i228, label %SetMagickPixelPacket.exit230, !dbg !1299

cond.end.i228:                                    ; preds = %for.body41
  %index46 = getelementptr inbounds %struct._ColorPacket, ptr %10, i64 %i.0268, i32 1, !dbg !1300
  call void @llvm.dbg.value(metadata ptr %index46, metadata !1132, metadata !DIExpression()), !dbg !1289
  %46 = load i16, ptr %index46, align 2, !dbg !1301, !tbaa !1160
  %conv14.i226 = uitofp i16 %46 to float, !dbg !1302
  store float %conv14.i226, ptr %index15.i227, align 8, !dbg !1303, !tbaa !1120
  br label %SetMagickPixelPacket.exit230, !dbg !1304

SetMagickPixelPacket.exit230:                     ; preds = %for.body41, %cond.end.i228
  %conv14.i226277 = phi float [ %conv14.i226276, %for.body41 ], [ %conv14.i226, %cond.end.i228 ]
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1305, metadata !DIExpression()) #15, !dbg !1312
  call void @llvm.dbg.value(metadata ptr %target, metadata !1311, metadata !DIExpression()) #15, !dbg !1312
  br i1 %cmp.not.i232, label %if.end.thread.i, label %land.lhs.true.i, !dbg !1315

land.lhs.true.i:                                  ; preds = %SetMagickPixelPacket.exit230
  br i1 %cmp7.not95.i, label %land.lhs.true3.i, label %if.then28.i, !dbg !1317

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  br i1 %cmp4.i234, label %if.end44.i, label %for.inc51, !dbg !1318

if.end.thread.i:                                  ; preds = %SetMagickPixelPacket.exit230
  %cmp17.i = icmp eq i16 %45, 0
  %or.cond = select i1 %cmp7.not95.i, i1 true, i1 %cmp17.i, !dbg !1319
  br i1 %or.cond, label %if.end44.i, label %for.inc51, !dbg !1319

if.then28.i:                                      ; preds = %land.lhs.true.i
  %sub31.i = fsub float %13, %conv6.i223, !dbg !1321
  %47 = call float @llvm.fabs.f32(float %sub31.i) #15, !dbg !1325
  %48 = fpext float %47 to double, !dbg !1325
  %cmp33.i = fcmp ult double %48, 1.000000e-15, !dbg !1326
  br i1 %cmp33.i, label %if.end36.i, label %for.inc51, !dbg !1327

if.end36.i:                                       ; preds = %if.then28.i
  br i1 %cmp40.i, label %if.then56, label %if.end44.i, !dbg !1328

if.end44.i:                                       ; preds = %if.end36.i, %if.end.thread.i, %land.lhs.true3.i
  %sub46.i = fsub float %18, %conv.i215, !dbg !1329
  %49 = call float @llvm.fabs.f32(float %sub46.i) #15, !dbg !1331
  %50 = fpext float %49 to double, !dbg !1331
  %cmp48.i = fcmp ult double %50, 1.000000e-15, !dbg !1332
  br i1 %cmp48.i, label %if.end51.i, label %for.inc51, !dbg !1333

if.end51.i:                                       ; preds = %if.end44.i
  %sub53.i = fsub float %19, %conv2.i218, !dbg !1334
  %51 = call float @llvm.fabs.f32(float %sub53.i) #15, !dbg !1336
  %52 = fpext float %51 to double, !dbg !1336
  %cmp55.i = fcmp ult double %52, 1.000000e-15, !dbg !1337
  br i1 %cmp55.i, label %if.end58.i, label %for.inc51, !dbg !1338

if.end58.i:                                       ; preds = %if.end51.i
  %sub60.i = fsub float %20, %conv4.i220, !dbg !1339
  %53 = call float @llvm.fabs.f32(float %sub60.i) #15, !dbg !1341
  %54 = fpext float %53 to double, !dbg !1341
  %cmp62.i = fcmp ult double %54, 1.000000e-15, !dbg !1342
  br i1 %cmp62.i, label %if.end65.i, label %for.inc51, !dbg !1343

if.end65.i:                                       ; preds = %if.end58.i
  br i1 %cmp66.i, label %land.lhs.true68.i, label %if.then56, !dbg !1344

land.lhs.true68.i:                                ; preds = %if.end65.i
  %sub70.i = fsub float %22, %conv14.i226277, !dbg !1346
  %55 = call float @llvm.fabs.f32(float %sub70.i) #15, !dbg !1347
  %56 = fpext float %55 to double, !dbg !1347
  %cmp72.i = fcmp ult double %56, 1.000000e-15, !dbg !1348
  br i1 %cmp72.i, label %if.then56, label %for.inc51, !dbg !1349

for.inc51:                                        ; preds = %if.end.thread.i, %land.lhs.true3.i, %if.then28.i, %if.end44.i, %if.end51.i, %if.end58.i, %land.lhs.true68.i
  %inc52 = add nuw nsw i64 %i.0268, 1, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %inc52, metadata !1004, metadata !DIExpression()), !dbg !1007
  %exitcond292.not = icmp eq i64 %inc52, %9, !dbg !1111
  br i1 %exitcond292.not, label %for.cond39.if.else_crit_edge, label %for.body41, !dbg !1114, !llvm.loop !1351

if.then56:                                        ; preds = %if.end65.i, %land.lhs.true68.i, %if.end36.i
  store float %conv.i215, ptr %red1.i216, align 8, !dbg !1353, !tbaa !1140
  store float %conv2.i218, ptr %green3.i219, align 4, !dbg !1354, !tbaa !1145
  store float %conv4.i220, ptr %blue5.i221, align 8, !dbg !1355, !tbaa !1150
  store float %conv6.i223, ptr %opacity7.i224, align 4, !dbg !1356, !tbaa !1155
  %count = getelementptr inbounds %struct._ColorPacket, ptr %10, i64 %i.0268, i32 2, !dbg !1357
  br label %if.end97, !dbg !1359

for.cond39.if.else_crit_edge:                     ; preds = %for.inc51
  store float %conv.i215, ptr %red1.i216, align 8, !dbg !1353, !tbaa !1140
  store float %conv2.i218, ptr %green3.i219, align 4, !dbg !1354, !tbaa !1145
  store float %conv4.i220, ptr %blue5.i221, align 8, !dbg !1355, !tbaa !1150
  store float %conv6.i223, ptr %opacity7.i224, align 4, !dbg !1356, !tbaa !1155
  br label %if.else, !dbg !1114

if.else:                                          ; preds = %for.cond39.if.else_crit_edge, %for.cond39.preheader
  %i.0.lcssa = phi i64 [ %9, %for.cond39.if.else_crit_edge ], [ 0, %for.cond39.preheader ], !dbg !1360
  %cmp61 = icmp eq i64 %9, 0, !dbg !1361
  br i1 %cmp61, label %if.then62, label %if.else65, !dbg !1364

if.then62:                                        ; preds = %if.else
  %call63 = call ptr @AcquireMagickMemory(i64 noundef 24) #16, !dbg !1365
  %list64 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !1366
  store ptr %call63, ptr %list64, align 8, !dbg !1367, !tbaa !1115
  br label %if.end69, !dbg !1368

if.else65:                                        ; preds = %if.else
  %list66 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !1369
  %57 = load ptr, ptr %list66, align 8, !dbg !1369, !tbaa !1115
  %add = add nuw nsw i64 %i.0.lcssa, 1, !dbg !1370
  %call67 = call ptr @ResizeQuantumMemory(ptr noundef %57, i64 noundef %add, i64 noundef 24) #18, !dbg !1371
  store ptr %call67, ptr %list66, align 8, !dbg !1372, !tbaa !1115
  br label %if.end69

if.end69:                                         ; preds = %if.else65, %if.then62
  %58 = phi ptr [ %call67, %if.else65 ], [ %call63, %if.then62 ], !dbg !1373
  %list70 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !1373
  %cmp71 = icmp eq ptr %58, null, !dbg !1375
  br i1 %cmp71, label %if.then72, label %if.end76, !dbg !1376

if.then72:                                        ; preds = %if.end69
  %call75 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 281, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename.i) #15, !dbg !1377
  br label %cleanup, !dbg !1379

if.end76:                                         ; preds = %if.end69
  %arrayidx78 = getelementptr inbounds %struct._ColorPacket, ptr %58, i64 %i.0.lcssa, !dbg !1380
  %59 = load i64, ptr %p.0279, align 2, !dbg !1381
  store i64 %59, ptr %arrayidx78, align 8, !dbg !1381
  %60 = load i32, ptr %colorspace, align 4, !dbg !1382, !tbaa !1116
  %cmp80 = icmp eq i32 %60, 12, !dbg !1384
  br i1 %cmp80, label %if.then82, label %lor.lhs.false, !dbg !1385

lor.lhs.false:                                    ; preds = %if.end76
  %61 = load i32, ptr %image, align 8, !dbg !1386, !tbaa !1387
  %cmp81 = icmp eq i32 %61, 2, !dbg !1388
  br i1 %cmp81, label %if.then82, label %lor.lhs.false.if.end90_crit_edge, !dbg !1389

lor.lhs.false.if.end90_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %list70, align 8, !dbg !1390, !tbaa !1115
  br label %if.end90, !dbg !1389

if.then82:                                        ; preds = %lor.lhs.false, %if.end76
  br i1 %cmp84, label %cond.end, label %cond.false, !dbg !1391

cond.false:                                       ; preds = %if.then82
  %62 = load i16, ptr %add.ptr, align 2, !dbg !1391, !tbaa !1160
  br label %cond.end, !dbg !1391

cond.end:                                         ; preds = %if.then82, %cond.false
  %cond = phi i16 [ %62, %cond.false ], [ 0, %if.then82 ], !dbg !1391
  %63 = load ptr, ptr %list70, align 8, !dbg !1392, !tbaa !1115
  %index89 = getelementptr inbounds %struct._ColorPacket, ptr %63, i64 %i.0.lcssa, i32 1, !dbg !1393
  store i16 %cond, ptr %index89, align 8, !dbg !1394, !tbaa !1395
  br label %if.end90, !dbg !1397

if.end90:                                         ; preds = %lor.lhs.false.if.end90_crit_edge, %cond.end
  %64 = phi ptr [ %.pre, %lor.lhs.false.if.end90_crit_edge ], [ %63, %cond.end ], !dbg !1390
  %count93 = getelementptr inbounds %struct._ColorPacket, ptr %64, i64 %i.0.lcssa, i32 2, !dbg !1398
  store i64 1, ptr %count93, align 8, !dbg !1399, !tbaa !1400
  %65 = load i64, ptr %number_unique, align 8, !dbg !1401, !tbaa !1110
  %inc95 = add i64 %65, 1, !dbg !1401
  store i64 %inc95, ptr %number_unique, align 8, !dbg !1401, !tbaa !1110
  br label %if.end97

if.end97:                                         ; preds = %if.end90, %if.then56
  %colors.sink301 = phi ptr [ %colors, %if.end90 ], [ %count, %if.then56 ]
  %66 = load i64, ptr %colors.sink301, align 8, !dbg !1402, !tbaa !1403
  %inc96 = add i64 %66, 1, !dbg !1402
  store i64 %inc96, ptr %colors.sink301, align 8, !dbg !1402, !tbaa !1403
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0279, i64 1, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1000, metadata !DIExpression()), !dbg !1007
  %inc99 = add nuw nsw i64 %x.0282, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %inc99, metadata !1005, metadata !DIExpression()), !dbg !1007
  %67 = load i64, ptr %columns, align 8, !dbg !1101, !tbaa !1095
  %cmp17 = icmp slt i64 %inc99, %67, !dbg !1104
  br i1 %cmp17, label %for.cond19.preheader, label %for.end100, !dbg !1105, !llvm.loop !1406

for.end100:                                       ; preds = %if.end97, %if.end13
  %68 = load i64, ptr %rows, align 8, !dbg !1408, !tbaa !1090
  call void @llvm.dbg.value(metadata ptr %image, metadata !1409, metadata !DIExpression()) #15, !dbg !1419
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !1415, metadata !DIExpression()) #15, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %y.0284, metadata !1416, metadata !DIExpression()) #15, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %68, metadata !1417, metadata !DIExpression()) #15, !dbg !1419
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #15, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1418, metadata !DIExpression()) #15, !dbg !1422
  %69 = load ptr, ptr %progress_monitor.i, align 8, !dbg !1423, !tbaa !1425
  %cmp.i239 = icmp eq ptr %69, null, !dbg !1426
  br i1 %cmp.i239, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !1427

SetImageProgress.exit.thread:                     ; preds = %for.end100
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #15, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !982, metadata !DIExpression()), !dbg !1007
  br label %for.inc107, !dbg !1429

SetImageProgress.exit:                            ; preds = %for.end100
  %call.i240 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef nonnull %filename.i) #15, !dbg !1430
  %70 = load ptr, ptr %progress_monitor.i, align 8, !dbg !1431, !tbaa !1425
  %71 = load ptr, ptr %client_data.i, align 8, !dbg !1432, !tbaa !1433
  %call4.i = call i32 %70(ptr noundef nonnull %message.i, i64 noundef %y.0284, i64 noundef %68, ptr noundef %71) #15, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #15, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !982, metadata !DIExpression()), !dbg !1007
  %cmp103 = icmp eq i32 %call4.i, 0, !dbg !1435
  br i1 %cmp103, label %for.end109, label %SetImageProgress.exit.for.inc107_crit_edge, !dbg !1429

SetImageProgress.exit.for.inc107_crit_edge:       ; preds = %SetImageProgress.exit
  %.pre294 = load i64, ptr %rows, align 8, !dbg !1087, !tbaa !1090
  br label %for.inc107, !dbg !1429

for.inc107:                                       ; preds = %SetImageProgress.exit.for.inc107_crit_edge, %SetImageProgress.exit.thread
  %72 = phi i64 [ %.pre294, %SetImageProgress.exit.for.inc107_crit_edge ], [ %68, %SetImageProgress.exit.thread ], !dbg !1087
  %inc108 = add nuw nsw i64 %y.0284, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %inc108, metadata !1006, metadata !DIExpression()), !dbg !1007
  %cmp9 = icmp slt i64 %inc108, %72, !dbg !1091
  br i1 %cmp9, label %for.body, label %for.end109, !dbg !1092, !llvm.loop !1438

for.end109:                                       ; preds = %for.inc107, %for.body, %SetImageProgress.exit, %if.end7
  %call110 = call ptr @DestroyCacheView(ptr noundef %call8) #15, !dbg !1440
  call void @llvm.dbg.value(metadata ptr %call110, metadata !977, metadata !DIExpression()), !dbg !1007
  br label %cleanup, !dbg !1441

cleanup:                                          ; preds = %for.end109, %if.then72, %if.then31, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call.i, %for.end109 ], [ null, %if.then31 ], [ null, %if.then72 ], !dbg !1007
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %target) #15, !dbg !1442
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #15, !dbg !1442
  ret ptr %retval.0, !dbg !1442
}

; Function Attrs: allocsize(0,1)
declare !dbg !1443 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1448 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @DefineImageHistogram(ptr nocapture noundef readonly %image, ptr nocapture noundef readonly %node_info, ptr nocapture noundef %histogram) unnamed_addr #5 !dbg !1452 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1457, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !1458, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata ptr %histogram, metadata !1459, metadata !DIExpression()), !dbg !1465
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1466
  %0 = load i32, ptr %matte, align 8, !dbg !1466, !tbaa !1234
  %cmp = icmp eq i32 %0, 0, !dbg !1467
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %cond, metadata !1461, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 0, metadata !1460, metadata !DIExpression()), !dbg !1465
  br label %for.body, !dbg !1469

for.body:                                         ; preds = %entry, %for.inc
  %i.035 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !1460, metadata !DIExpression()), !dbg !1465
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %node_info, i64 0, i64 %i.035, !dbg !1471
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !1471, !tbaa !938
  %cmp2.not = icmp eq ptr %1, null, !dbg !1474
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !1475

if.then:                                          ; preds = %for.body
  tail call fastcc void @DefineImageHistogram(ptr noundef %image, ptr noundef nonnull %1, ptr noundef %histogram), !dbg !1476
  br label %for.inc, !dbg !1476

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.035, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1460, metadata !DIExpression()), !dbg !1465
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !1478
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1469, !llvm.loop !1479

for.end:                                          ; preds = %for.inc
  %level = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, !dbg !1481
  %2 = load i64, ptr %level, align 8, !dbg !1481, !tbaa !1082
  %cmp5 = icmp eq i64 %2, 7, !dbg !1482
  br i1 %cmp5, label %if.then6, label %if.end17, !dbg !1483

if.then6:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr undef, metadata !1462, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 0, metadata !1460, metadata !DIExpression()), !dbg !1465
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 2
  call void @llvm.dbg.value(metadata ptr undef, metadata !1462, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 0, metadata !1460, metadata !DIExpression()), !dbg !1465
  %3 = load i64, ptr %number_unique, align 8, !dbg !1485, !tbaa !1110
  %cmp836 = icmp sgt i64 %3, 0, !dbg !1488
  br i1 %cmp836, label %for.body9.preheader, label %if.end17, !dbg !1489

for.body9.preheader:                              ; preds = %if.then6
  %list = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, !dbg !1490
  %4 = load ptr, ptr %list, align 8, !dbg !1490, !tbaa !1115
  call void @llvm.dbg.value(metadata ptr %4, metadata !1462, metadata !DIExpression()), !dbg !1484
  %.pre = load ptr, ptr %histogram, align 8, !dbg !1491, !tbaa !938
  br label %for.body9, !dbg !1489

for.body9:                                        ; preds = %for.body9.preheader, %for.body9
  %5 = phi ptr [ %incdec.ptr, %for.body9 ], [ %.pre, %for.body9.preheader ], !dbg !1491
  %p.038 = phi ptr [ %incdec.ptr13, %for.body9 ], [ %4, %for.body9.preheader ]
  %i.137 = phi i64 [ %inc15, %for.body9 ], [ 0, %for.body9.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.038, metadata !1462, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %i.137, metadata !1460, metadata !DIExpression()), !dbg !1465
  %6 = load i64, ptr %p.038, align 8, !dbg !1493
  store i64 %6, ptr %5, align 8, !dbg !1493
  %index = getelementptr inbounds %struct._ColorPacket, ptr %p.038, i64 0, i32 1, !dbg !1494
  %7 = load i16, ptr %index, align 8, !dbg !1494, !tbaa !1395
  %8 = load ptr, ptr %histogram, align 8, !dbg !1495, !tbaa !938
  %index11 = getelementptr inbounds %struct._ColorPacket, ptr %8, i64 0, i32 1, !dbg !1496
  store i16 %7, ptr %index11, align 8, !dbg !1497, !tbaa !1395
  %count = getelementptr inbounds %struct._ColorPacket, ptr %p.038, i64 0, i32 2, !dbg !1498
  %9 = load i64, ptr %count, align 8, !dbg !1498, !tbaa !1400
  %count12 = getelementptr inbounds %struct._ColorPacket, ptr %8, i64 0, i32 2, !dbg !1499
  store i64 %9, ptr %count12, align 8, !dbg !1500, !tbaa !1400
  %incdec.ptr = getelementptr inbounds %struct._ColorPacket, ptr %8, i64 1, !dbg !1501
  store ptr %incdec.ptr, ptr %histogram, align 8, !dbg !1501, !tbaa !938
  %incdec.ptr13 = getelementptr inbounds %struct._ColorPacket, ptr %p.038, i64 1, !dbg !1502
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13, metadata !1462, metadata !DIExpression()), !dbg !1484
  %inc15 = add nuw nsw i64 %i.137, 1, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %inc15, metadata !1460, metadata !DIExpression()), !dbg !1465
  %10 = load i64, ptr %number_unique, align 8, !dbg !1485, !tbaa !1110
  %cmp8 = icmp slt i64 %inc15, %10, !dbg !1488
  br i1 %cmp8, label %for.body9, label %if.end17, !dbg !1489, !llvm.loop !1504

if.end17:                                         ; preds = %for.body9, %if.then6, %for.end
  ret void, !dbg !1506
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsHistogramImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1507 {
entry:
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %target = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1511, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1512, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #15, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !1515, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %target) #15, !dbg !1527
  call void @llvm.dbg.declare(metadata ptr %target, metadata !1516, metadata !DIExpression()), !dbg !1529
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1530
  %0 = load i32, ptr %debug, align 8, !dbg !1530, !tbaa !1013
  %cmp.not = icmp eq i32 %0, 0, !dbg !1532
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1533

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1534
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 679, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #15, !dbg !1535
  br label %if.end, !dbg !1536

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %image, align 8, !dbg !1537, !tbaa !1387
  %cmp1 = icmp eq i32 %1, 2, !dbg !1539
  br i1 %cmp1, label %land.lhs.true, label %if.end8, !dbg !1540

land.lhs.true:                                    ; preds = %if.end
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1541
  %2 = load i64, ptr %colors, align 8, !dbg !1541, !tbaa !1542
  %cmp2 = icmp ult i64 %2, 257, !dbg !1543
  br label %cleanup, !dbg !1544

if.end8:                                          ; preds = %if.end
  %call.i = tail call ptr @AcquireMagickMemory(i64 noundef 56) #16, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1037, metadata !DIExpression()) #15, !dbg !1547
  %cmp.i = icmp eq ptr %call.i, null, !dbg !1548
  br i1 %cmp.i, label %if.then11, label %if.end.i, !dbg !1549

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call.i, i32 noundef 0, i64 noundef 56) #15, !dbg !1550
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1044, metadata !DIExpression()) #15, !dbg !1551
  call void @llvm.dbg.value(metadata i64 0, metadata !1049, metadata !DIExpression()) #15, !dbg !1551
  %free_nodes.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 4, !dbg !1553
  %3 = load i64, ptr %free_nodes.i.i, align 8, !dbg !1553, !tbaa !1057
  %cmp.i.i = icmp eq i64 %3, 0, !dbg !1554
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !1555

entry.if.end7_crit_edge.i.i:                      ; preds = %if.end.i
  %node_info9.phi.trans.insert.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %node_info9.phi.trans.insert.i.i, align 8, !dbg !1556, !tbaa !1061
  %phi.bo.i.i = add i64 %3, -1, !dbg !1555
  br label %if.end15, !dbg !1555

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call ptr @AcquireMagickMemory(i64 noundef 233480) #16, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1051, metadata !DIExpression()) #15, !dbg !1558
  %cmp1.i.i = icmp eq ptr %call.i.i, null, !dbg !1559
  br i1 %cmp1.i.i, label %select.unfold, label %if.end.i.i, !dbg !1560

if.end.i.i:                                       ; preds = %if.then.i.i
  %node_queue.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 6, !dbg !1561
  %4 = load ptr, ptr %node_queue.i.i, align 8, !dbg !1561, !tbaa !956
  %next.i.i = getelementptr inbounds %struct._Nodes, ptr %call.i.i, i64 0, i32 1, !dbg !1562
  store ptr %4, ptr %next.i.i, align 8, !dbg !1563, !tbaa !959
  store ptr %call.i.i, ptr %node_queue.i.i, align 8, !dbg !1564, !tbaa !956
  br label %if.end15

select.unfold:                                    ; preds = %if.then.i.i
  store ptr null, ptr %call.i, align 8, !dbg !1565, !tbaa !940
  br label %if.then11, !dbg !1547

if.then11:                                        ; preds = %if.end8, %select.unfold
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1514, metadata !DIExpression()), !dbg !1526
  %filename12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1566
  %call14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 690, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename12) #15, !dbg !1569
  br label %cleanup, !dbg !1570

if.end15:                                         ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %5 = phi ptr [ %call.i.i, %if.end.i.i ], [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], !dbg !1556
  %6 = phi i64 [ 1535, %if.end.i.i ], [ %phi.bo.i.i, %entry.if.end7_crit_edge.i.i ]
  store i64 %6, ptr %free_nodes.i.i, align 8, !dbg !1571, !tbaa !1057
  %node_info9.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 5, !dbg !1572
  %incdec.ptr.i.i = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 1, !dbg !1556
  store ptr %incdec.ptr.i.i, ptr %node_info9.i.i, align 8, !dbg !1556, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %5, metadata !1050, metadata !DIExpression()) #15, !dbg !1551
  %call10.i.i = tail call ptr @ResetMagickMemory(ptr noundef %5, i32 noundef 0, i64 noundef 152) #15, !dbg !1573
  %level11.i.i = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 3, !dbg !1574
  store i64 0, ptr %level11.i.i, align 8, !dbg !1575, !tbaa !1082
  store ptr %5, ptr %call.i, align 8, !dbg !1565, !tbaa !940
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1514, metadata !DIExpression()), !dbg !1526
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel) #15, !dbg !1576
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %target) #15, !dbg !1577
  %call16 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #15, !dbg !1578
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1513, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !1525, metadata !DIExpression()), !dbg !1526
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1579
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1525, metadata !DIExpression()), !dbg !1526
  %7 = load i64, ptr %rows, align 8, !dbg !1583, !tbaa !1090
  %cmp17316 = icmp sgt i64 %7, 0, !dbg !1584
  br i1 %cmp17316, label %for.body.lr.ph, label %for.end126, !dbg !1585

for.body.lr.ph:                                   ; preds = %if.end15
  %8 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %node_queue.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 6
  %red1.i243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 5
  %green3.i246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 6
  %blue5.i248 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 7
  %opacity7.i251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 8
  %index15.i254 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 9
  %matte.i258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 2
  %matte694.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 2
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colors108 = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 3
  %filename84 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %.pre = load i64, ptr %columns, align 8, !dbg !1579, !tbaa !1095
  br label %for.body, !dbg !1585

for.body:                                         ; preds = %for.body.lr.ph, %for.inc124
  %9 = phi i64 [ %.pre, %for.body.lr.ph ], [ %71, %for.inc124 ], !dbg !1579
  %y.0317 = phi i64 [ 0, %for.body.lr.ph ], [ %inc125, %for.inc124 ]
  call void @llvm.dbg.value(metadata i64 %y.0317, metadata !1525, metadata !DIExpression()), !dbg !1526
  %call18 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call16, i64 noundef 0, i64 noundef %y.0317, i64 noundef %9, i64 noundef 1, ptr noundef %exception) #17, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1518, metadata !DIExpression()), !dbg !1526
  %cmp19 = icmp eq ptr %call18, null, !dbg !1587
  br i1 %cmp19, label %for.end126, label %if.end21, !dbg !1589

if.end21:                                         ; preds = %for.body
  %call22 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call16) #15, !dbg !1590
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1517, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 0, metadata !1519, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1518, metadata !DIExpression()), !dbg !1526
  %10 = load i64, ptr %columns, align 8, !dbg !1591, !tbaa !1095
  %cmp25307 = icmp sgt i64 %10, 0, !dbg !1594
  br i1 %cmp25307, label %for.cond27.preheader.lr.ph, label %for.end118, !dbg !1595

for.cond27.preheader.lr.ph:                       ; preds = %if.end21
  %cmp9.i = icmp ne ptr %call22, null
  %cmp96 = icmp eq ptr %call22, null
  br label %for.cond27.preheader, !dbg !1595

for.cond27.preheader:                             ; preds = %for.cond27.preheader.lr.ph, %if.end115
  %x.0311 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %inc117, %if.end115 ]
  %p.0308 = phi ptr [ %call18, %for.cond27.preheader.lr.ph ], [ %incdec.ptr, %if.end115 ]
  call void @llvm.dbg.value(metadata i64 %x.0311, metadata !1519, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %p.0308, metadata !1518, metadata !DIExpression()), !dbg !1526
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0308, i64 0, i32 2
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0308, i64 0, i32 1
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0308, i64 0, i32 3
  %node_info.0290 = load ptr, ptr %call.i, align 8, !dbg !1596, !tbaa !938
  call void @llvm.dbg.value(metadata i64 1, metadata !1524, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 poison, metadata !1523, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %node_info.0290, metadata !1520, metadata !DIExpression()), !dbg !1526
  %add.ptr = getelementptr inbounds i16, ptr %call22, i64 %x.0311
  br label %for.body29, !dbg !1598

for.cond50.preheader:                             ; preds = %if.end44
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 2
  %11 = load i64, ptr %number_unique, align 8, !tbaa !1110
  call void @llvm.dbg.value(metadata i64 0, metadata !1521, metadata !DIExpression()), !dbg !1526
  %cmp51296 = icmp sgt i64 %11, 0, !dbg !1600
  br i1 %cmp51296, label %for.body52.lr.ph, label %if.else, !dbg !1603

for.body52.lr.ph:                                 ; preds = %for.cond50.preheader
  %list = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1
  %12 = load ptr, ptr %list, align 8, !tbaa !1115
  %image.val = load i32, ptr %8, align 4, !tbaa !1116
  %cmp.i252 = icmp eq i32 %image.val, 12
  %13 = load i32, ptr %matte.i258, align 8, !tbaa !1117
  %cmp.not.i259 = icmp eq i32 %13, 0
  %14 = load i32, ptr %matte694.i, align 8, !tbaa !1117
  %cmp7.not95.i = icmp eq i32 %14, 0
  %15 = load float, ptr %opacity7.i, align 4
  %sub38.i = fadd float %15, -6.553500e+04
  %16 = call float @llvm.fabs.f32(float %sub38.i) #15, !dbg !1526
  %17 = fpext float %16 to double
  %cmp40.i = fcmp olt double %17, 1.000000e-15
  %18 = call float @llvm.fabs.f32(float %15) #15, !dbg !1526
  %19 = fpext float %18 to double
  %cmp4.i261 = fcmp ult double %19, 1.000000e-15
  %20 = load float, ptr %red1.i, align 8
  %21 = load float, ptr %green3.i, align 4
  %22 = load float, ptr %blue5.i, align 8
  %23 = load i32, ptr %colorspace.i, align 4
  %cmp66.i = icmp eq i32 %23, 12
  %24 = load float, ptr %index15.i, align 8
  %index15.i254.promoted = load float, ptr %index15.i254, align 8, !tbaa !1120
  br label %for.body52, !dbg !1603

for.body29:                                       ; preds = %for.cond27.preheader, %if.end44
  %node_info.0295 = phi ptr [ %node_info.0290, %for.cond27.preheader ], [ %node_info.0, %if.end44 ]
  %level.0293 = phi i64 [ 1, %for.cond27.preheader ], [ %inc, %if.end44 ]
  %index.0291 = phi i32 [ 7, %for.cond27.preheader ], [ %dec, %if.end44 ]
  call void @llvm.dbg.value(metadata i64 %level.0293, metadata !1524, metadata !DIExpression()), !dbg !1526
  %image.val224 = load i32, ptr %8, align 4, !dbg !1604, !tbaa !1116
  call void @llvm.dbg.value(metadata ptr undef, metadata !1124, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata ptr %p.0308, metadata !1131, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call22, i64 %x.0311), metadata !1132, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1607
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1133, metadata !DIExpression()), !dbg !1607
  %25 = load i16, ptr %red.i, align 2, !dbg !1609, !tbaa !1137
  %conv.i = uitofp i16 %25 to float, !dbg !1610
  store float %conv.i, ptr %red1.i, align 8, !dbg !1611, !tbaa !1140
  %26 = load i16, ptr %green.i, align 2, !dbg !1612, !tbaa !1142
  %conv2.i = uitofp i16 %26 to float, !dbg !1613
  store float %conv2.i, ptr %green3.i, align 4, !dbg !1614, !tbaa !1145
  %27 = load i16, ptr %p.0308, align 2, !dbg !1615, !tbaa !1147
  %conv4.i = uitofp i16 %27 to float, !dbg !1616
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1617, !tbaa !1150
  %28 = load i16, ptr %opacity.i, align 2, !dbg !1618, !tbaa !1152
  %conv6.i = uitofp i16 %28 to float, !dbg !1619
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !1620, !tbaa !1155
  %cmp.i225 = icmp eq i32 %image.val224, 12, !dbg !1621
  %or.cond.i = and i1 %cmp9.i, %cmp.i225, !dbg !1622
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !1622

cond.end.i:                                       ; preds = %for.body29
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1132, metadata !DIExpression()), !dbg !1607
  %29 = load i16, ptr %add.ptr, align 2, !dbg !1623, !tbaa !1160
  %conv14.i = uitofp i16 %29 to float, !dbg !1624
  store float %conv14.i, ptr %index15.i, align 8, !dbg !1625, !tbaa !1120
  br label %SetMagickPixelPacket.exit, !dbg !1626

SetMagickPixelPacket.exit:                        ; preds = %for.body29, %cond.end.i
  call void @llvm.dbg.value(metadata ptr %image, metadata !1164, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1171, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 poison, metadata !1172, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata float %conv.i, metadata !1176, metadata !DIExpression()), !dbg !1629
  switch i16 %25, label %if.end3.i.i [
    i16 0, label %ClampToQuantum.exit.i
    i16 -1, label %ClampToQuantum.exit.i.fold.split
  ], !dbg !1631

if.end3.i.i:                                      ; preds = %SetMagickPixelPacket.exit
  %add.i.i = fadd float %conv.i, 5.000000e-01, !dbg !1632
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !1633
  %phi.cast.i = zext i16 %conv.i.i to i64, !dbg !1634
  %phi.bo.i = add nuw nsw i64 %phi.cast.i, 128, !dbg !1634
  br label %ClampToQuantum.exit.i, !dbg !1634

ClampToQuantum.exit.i.fold.split:                 ; preds = %SetMagickPixelPacket.exit
  br label %ClampToQuantum.exit.i, !dbg !1635

ClampToQuantum.exit.i:                            ; preds = %SetMagickPixelPacket.exit, %ClampToQuantum.exit.i.fold.split, %if.end3.i.i
  %retval.0.i.i = phi i64 [ %phi.bo.i, %if.end3.i.i ], [ 128, %SetMagickPixelPacket.exit ], [ 65663, %ClampToQuantum.exit.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !1637
  %shr.i.i = lshr i64 %retval.0.i.i, 8, !dbg !1635
  %sub.i.i = sub nsw i64 %retval.0.i.i, %shr.i.i, !dbg !1638
  %30 = trunc i64 %sub.i.i to i32, !dbg !1639
  %31 = lshr i32 %30, 8, !dbg !1639
  %conv.i231 = and i32 %31, 255, !dbg !1640
  %shr.i = lshr i32 %conv.i231, %index.0291, !dbg !1641
  %and.i = and i32 %shr.i, 1, !dbg !1642
  call void @llvm.dbg.value(metadata float %conv2.i, metadata !1176, metadata !DIExpression()), !dbg !1643
  switch i16 %26, label %if.end3.i42.i [
    i16 0, label %ClampToQuantum.exit44.i
    i16 -1, label %ClampToQuantum.exit44.i.fold.split
  ], !dbg !1645

if.end3.i42.i:                                    ; preds = %ClampToQuantum.exit.i
  %add.i40.i = fadd float %conv2.i, 5.000000e-01, !dbg !1646
  %conv.i41.i = fptoui float %add.i40.i to i16, !dbg !1647
  %phi.cast79.i = zext i16 %conv.i41.i to i64, !dbg !1648
  %phi.bo80.i = add nuw nsw i64 %phi.cast79.i, 128, !dbg !1648
  br label %ClampToQuantum.exit44.i, !dbg !1648

ClampToQuantum.exit44.i.fold.split:               ; preds = %ClampToQuantum.exit.i
  br label %ClampToQuantum.exit44.i, !dbg !1649

ClampToQuantum.exit44.i:                          ; preds = %ClampToQuantum.exit.i, %ClampToQuantum.exit44.i.fold.split, %if.end3.i42.i
  %retval.0.i43.i = phi i64 [ %phi.bo80.i, %if.end3.i42.i ], [ 128, %ClampToQuantum.exit.i ], [ 65663, %ClampToQuantum.exit44.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !1651
  %shr.i47.i = lshr i64 %retval.0.i43.i, 8, !dbg !1649
  %sub.i48.i = sub nsw i64 %retval.0.i43.i, %shr.i47.i, !dbg !1652
  %32 = trunc i64 %sub.i48.i to i32, !dbg !1653
  %33 = lshr i32 %32, 8, !dbg !1653
  %conv4.i233 = and i32 %33, 255, !dbg !1654
  %shr6.i = lshr i32 %conv4.i233, %index.0291, !dbg !1655
  %and7.i = shl nuw nsw i32 %shr6.i, 1, !dbg !1656
  %shl.i = and i32 %and7.i, 2, !dbg !1656
  %or.i = or i32 %shl.i, %and.i, !dbg !1657
  call void @llvm.dbg.value(metadata float %conv4.i, metadata !1176, metadata !DIExpression()), !dbg !1658
  switch i16 %27, label %if.end3.i56.i [
    i16 0, label %ClampToQuantum.exit58.i
    i16 -1, label %ClampToQuantum.exit58.i.fold.split
  ], !dbg !1660

if.end3.i56.i:                                    ; preds = %ClampToQuantum.exit44.i
  %add.i54.i = fadd float %conv4.i, 5.000000e-01, !dbg !1661
  %conv.i55.i = fptoui float %add.i54.i to i16, !dbg !1662
  %phi.cast81.i = zext i16 %conv.i55.i to i64, !dbg !1663
  %phi.bo82.i = add nuw nsw i64 %phi.cast81.i, 128, !dbg !1663
  br label %ClampToQuantum.exit58.i, !dbg !1663

ClampToQuantum.exit58.i.fold.split:               ; preds = %ClampToQuantum.exit44.i
  br label %ClampToQuantum.exit58.i, !dbg !1664

ClampToQuantum.exit58.i:                          ; preds = %ClampToQuantum.exit44.i, %ClampToQuantum.exit58.i.fold.split, %if.end3.i56.i
  %retval.0.i57.i = phi i64 [ %phi.bo82.i, %if.end3.i56.i ], [ 128, %ClampToQuantum.exit44.i ], [ 65663, %ClampToQuantum.exit58.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !1666
  %shr.i61.i = lshr i64 %retval.0.i57.i, 8, !dbg !1664
  %sub.i62.i = sub nsw i64 %retval.0.i57.i, %shr.i61.i, !dbg !1667
  %34 = trunc i64 %sub.i62.i to i32, !dbg !1668
  %35 = lshr i32 %34, 8, !dbg !1668
  %conv10.i = and i32 %35, 255, !dbg !1669
  %shr12.i = lshr i32 %conv10.i, %index.0291, !dbg !1670
  %and13.i = shl nuw nsw i32 %shr12.i, 2, !dbg !1671
  %shl14.i = and i32 %and13.i, 4, !dbg !1671
  %or15.i = or i32 %or.i, %shl14.i, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %or15.i, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1627
  %36 = load i32, ptr %matte.i, align 8, !dbg !1673, !tbaa !1234
  %cmp.not.i = icmp eq i32 %36, 0, !dbg !1674
  br i1 %cmp.not.i, label %ColorToNodeId.exit, label %if.then.i, !dbg !1675

if.then.i:                                        ; preds = %ClampToQuantum.exit58.i
  call void @llvm.dbg.value(metadata float %conv6.i, metadata !1176, metadata !DIExpression()), !dbg !1676
  switch i16 %28, label %if.end3.i70.i [
    i16 0, label %ClampToQuantum.exit72.i
    i16 -1, label %ClampToQuantum.exit72.i.fold.split
  ], !dbg !1678

if.end3.i70.i:                                    ; preds = %if.then.i
  %add.i68.i = fadd float %conv6.i, 5.000000e-01, !dbg !1679
  %conv.i69.i = fptoui float %add.i68.i to i16, !dbg !1680
  %phi.cast83.i = zext i16 %conv.i69.i to i64, !dbg !1681
  %phi.bo84.i = add nuw nsw i64 %phi.cast83.i, 128, !dbg !1681
  br label %ClampToQuantum.exit72.i, !dbg !1681

ClampToQuantum.exit72.i.fold.split:               ; preds = %if.then.i
  br label %ClampToQuantum.exit72.i, !dbg !1682

ClampToQuantum.exit72.i:                          ; preds = %if.then.i, %ClampToQuantum.exit72.i.fold.split, %if.end3.i70.i
  %retval.0.i71.i = phi i64 [ %phi.bo84.i, %if.end3.i70.i ], [ 128, %if.then.i ], [ 65663, %ClampToQuantum.exit72.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !1684
  %shr.i75.i = lshr i64 %retval.0.i71.i, 8, !dbg !1682
  %sub.i76.i = sub nsw i64 %retval.0.i71.i, %shr.i75.i, !dbg !1685
  %37 = trunc i64 %sub.i76.i to i32, !dbg !1686
  %38 = lshr i32 %37, 8, !dbg !1686
  %conv20.i = and i32 %38, 255, !dbg !1687
  %shr22.i = lshr i32 %conv20.i, %index.0291, !dbg !1688
  %and23.i = shl nuw nsw i32 %shr22.i, 3, !dbg !1689
  %shl24.i = and i32 %and23.i, 8, !dbg !1689
  %or2634.i = or i32 %shl24.i, %or15.i, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %or2634.i, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1627
  br label %ColorToNodeId.exit, !dbg !1691

ColorToNodeId.exit:                               ; preds = %ClampToQuantum.exit58.i, %ClampToQuantum.exit72.i
  %id.0.in.i = phi i32 [ %or2634.i, %ClampToQuantum.exit72.i ], [ %or15.i, %ClampToQuantum.exit58.i ]
  %id.0.i = zext i32 %id.0.in.i to i64, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !1173, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !1522, metadata !DIExpression()), !dbg !1526
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %node_info.0295, i64 0, i64 %id.0.i, !dbg !1692
  %39 = load ptr, ptr %arrayidx, align 8, !dbg !1692, !tbaa !938
  %cmp31 = icmp eq ptr %39, null, !dbg !1694
  br i1 %cmp31, label %if.then32, label %if.end44, !dbg !1695

if.then32:                                        ; preds = %ColorToNodeId.exit
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1044, metadata !DIExpression()) #15, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %level.0293, metadata !1049, metadata !DIExpression()) #15, !dbg !1696
  %40 = load i64, ptr %free_nodes.i.i, align 8, !dbg !1699, !tbaa !1057
  %cmp.i236 = icmp eq i64 %40, 0, !dbg !1700
  br i1 %cmp.i236, label %if.then.i239, label %entry.if.end7_crit_edge.i, !dbg !1701

entry.if.end7_crit_edge.i:                        ; preds = %if.then32
  %.pre.i = load ptr, ptr %node_info9.i.i, align 8, !dbg !1702, !tbaa !1061
  %phi.bo.i237 = add i64 %40, -1, !dbg !1701
  br label %GetNodeInfo.exit, !dbg !1701

if.then.i239:                                     ; preds = %if.then32
  %call.i238 = call ptr @AcquireMagickMemory(i64 noundef 233480) #16, !dbg !1703
  call void @llvm.dbg.value(metadata ptr %call.i238, metadata !1051, metadata !DIExpression()) #15, !dbg !1704
  %cmp1.i = icmp eq ptr %call.i238, null, !dbg !1705
  br i1 %cmp1.i, label %if.then39, label %if.end.i240, !dbg !1706

if.end.i240:                                      ; preds = %if.then.i239
  %41 = load ptr, ptr %node_queue.i, align 8, !dbg !1707, !tbaa !956
  %next.i = getelementptr inbounds %struct._Nodes, ptr %call.i238, i64 0, i32 1, !dbg !1708
  store ptr %41, ptr %next.i, align 8, !dbg !1709, !tbaa !959
  store ptr %call.i238, ptr %node_queue.i, align 8, !dbg !1710, !tbaa !956
  br label %GetNodeInfo.exit

GetNodeInfo.exit:                                 ; preds = %entry.if.end7_crit_edge.i, %if.end.i240
  %42 = phi ptr [ %call.i238, %if.end.i240 ], [ %.pre.i, %entry.if.end7_crit_edge.i ], !dbg !1702
  %43 = phi i64 [ 1535, %if.end.i240 ], [ %phi.bo.i237, %entry.if.end7_crit_edge.i ]
  store i64 %43, ptr %free_nodes.i.i, align 8, !dbg !1711, !tbaa !1057
  %incdec.ptr.i = getelementptr inbounds %struct._NodeInfo, ptr %42, i64 1, !dbg !1702
  store ptr %incdec.ptr.i, ptr %node_info9.i.i, align 8, !dbg !1702, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %42, metadata !1050, metadata !DIExpression()) #15, !dbg !1696
  %call10.i = call ptr @ResetMagickMemory(ptr noundef %42, i32 noundef 0, i64 noundef 152) #15, !dbg !1712
  %level11.i = getelementptr inbounds %struct._NodeInfo, ptr %42, i64 0, i32 3, !dbg !1713
  store i64 %level.0293, ptr %level11.i, align 8, !dbg !1714, !tbaa !1082
  store ptr %42, ptr %arrayidx, align 8, !dbg !1715, !tbaa !938
  br label %if.end44, !dbg !1716

if.then39:                                        ; preds = %if.then.i239
  store ptr null, ptr %arrayidx, align 8, !dbg !1715, !tbaa !938
  br label %for.end118.sink.split, !dbg !1717

if.end44:                                         ; preds = %GetNodeInfo.exit, %ColorToNodeId.exit
  %node_info.0 = phi ptr [ %42, %GetNodeInfo.exit ], [ %39, %ColorToNodeId.exit ], !dbg !1596
  call void @llvm.dbg.value(metadata ptr undef, metadata !1520, metadata !DIExpression()), !dbg !1526
  %dec = add nsw i32 %index.0291, -1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 undef, metadata !1523, metadata !DIExpression()), !dbg !1526
  %inc = add nuw nsw i64 %level.0293, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1524, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i64 poison, metadata !1523, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %node_info.0, metadata !1520, metadata !DIExpression()), !dbg !1526
  %exitcond.not = icmp eq i64 %inc, 8, !dbg !1720
  br i1 %exitcond.not, label %for.cond50.preheader, label %for.body29, !dbg !1598, !llvm.loop !1721

for.body52:                                       ; preds = %for.body52.lr.ph, %for.inc62
  %conv14.i253305 = phi float [ %index15.i254.promoted, %for.body52.lr.ph ], [ %conv14.i253306, %for.inc62 ]
  %i.0297 = phi i64 [ 0, %for.body52.lr.ph ], [ %inc63, %for.inc62 ]
  call void @llvm.dbg.value(metadata i64 %i.0297, metadata !1521, metadata !DIExpression()), !dbg !1526
  %arrayidx53 = getelementptr inbounds %struct._ColorPacket, ptr %12, i64 %i.0297, !dbg !1723
  call void @llvm.dbg.value(metadata ptr undef, metadata !1124, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata ptr %arrayidx53, metadata !1131, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata !DIArgList(ptr %12, i64 %i.0297), metadata !1132, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1725
  call void @llvm.dbg.value(metadata ptr %target, metadata !1133, metadata !DIExpression()), !dbg !1725
  %red.i241 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx53, i64 0, i32 2, !dbg !1727
  %44 = load i16, ptr %red.i241, align 2, !dbg !1727, !tbaa !1137
  %conv.i242 = uitofp i16 %44 to float, !dbg !1728
  %green.i244 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx53, i64 0, i32 1, !dbg !1729
  %45 = load i16, ptr %green.i244, align 2, !dbg !1729, !tbaa !1142
  %conv2.i245 = uitofp i16 %45 to float, !dbg !1730
  %46 = load i16, ptr %arrayidx53, align 2, !dbg !1731, !tbaa !1147
  %conv4.i247 = uitofp i16 %46 to float, !dbg !1732
  %opacity.i249 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx53, i64 0, i32 3, !dbg !1733
  %47 = load i16, ptr %opacity.i249, align 2, !dbg !1733, !tbaa !1152
  %conv6.i250 = uitofp i16 %47 to float, !dbg !1734
  br i1 %cmp.i252, label %cond.end.i255, label %SetMagickPixelPacket.exit257, !dbg !1735

cond.end.i255:                                    ; preds = %for.body52
  %index57 = getelementptr inbounds %struct._ColorPacket, ptr %12, i64 %i.0297, i32 1, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %index57, metadata !1132, metadata !DIExpression()), !dbg !1725
  %48 = load i16, ptr %index57, align 2, !dbg !1737, !tbaa !1160
  %conv14.i253 = uitofp i16 %48 to float, !dbg !1738
  store float %conv14.i253, ptr %index15.i254, align 8, !dbg !1739, !tbaa !1120
  br label %SetMagickPixelPacket.exit257, !dbg !1740

SetMagickPixelPacket.exit257:                     ; preds = %for.body52, %cond.end.i255
  %conv14.i253306 = phi float [ %conv14.i253305, %for.body52 ], [ %conv14.i253, %cond.end.i255 ]
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1305, metadata !DIExpression()) #15, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %target, metadata !1311, metadata !DIExpression()) #15, !dbg !1741
  br i1 %cmp.not.i259, label %if.end.thread.i, label %land.lhs.true.i, !dbg !1744

land.lhs.true.i:                                  ; preds = %SetMagickPixelPacket.exit257
  br i1 %cmp7.not95.i, label %land.lhs.true3.i, label %if.then28.i, !dbg !1745

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  br i1 %cmp4.i261, label %if.end44.i, label %for.inc62, !dbg !1746

if.end.thread.i:                                  ; preds = %SetMagickPixelPacket.exit257
  %cmp17.i = icmp eq i16 %47, 0
  %or.cond = select i1 %cmp7.not95.i, i1 true, i1 %cmp17.i, !dbg !1747
  br i1 %or.cond, label %if.end44.i, label %for.inc62, !dbg !1747

if.then28.i:                                      ; preds = %land.lhs.true.i
  %sub31.i = fsub float %15, %conv6.i250, !dbg !1748
  %49 = call float @llvm.fabs.f32(float %sub31.i) #15, !dbg !1749
  %50 = fpext float %49 to double, !dbg !1749
  %cmp33.i = fcmp ult double %50, 1.000000e-15, !dbg !1750
  br i1 %cmp33.i, label %if.end36.i, label %for.inc62, !dbg !1751

if.end36.i:                                       ; preds = %if.then28.i
  br i1 %cmp40.i, label %if.then67, label %if.end44.i, !dbg !1752

if.end44.i:                                       ; preds = %if.end36.i, %if.end.thread.i, %land.lhs.true3.i
  %sub46.i = fsub float %20, %conv.i242, !dbg !1753
  %51 = call float @llvm.fabs.f32(float %sub46.i) #15, !dbg !1754
  %52 = fpext float %51 to double, !dbg !1754
  %cmp48.i = fcmp ult double %52, 1.000000e-15, !dbg !1755
  br i1 %cmp48.i, label %if.end51.i, label %for.inc62, !dbg !1756

if.end51.i:                                       ; preds = %if.end44.i
  %sub53.i = fsub float %21, %conv2.i245, !dbg !1757
  %53 = call float @llvm.fabs.f32(float %sub53.i) #15, !dbg !1758
  %54 = fpext float %53 to double, !dbg !1758
  %cmp55.i = fcmp ult double %54, 1.000000e-15, !dbg !1759
  br i1 %cmp55.i, label %if.end58.i, label %for.inc62, !dbg !1760

if.end58.i:                                       ; preds = %if.end51.i
  %sub60.i = fsub float %22, %conv4.i247, !dbg !1761
  %55 = call float @llvm.fabs.f32(float %sub60.i) #15, !dbg !1762
  %56 = fpext float %55 to double, !dbg !1762
  %cmp62.i = fcmp ult double %56, 1.000000e-15, !dbg !1763
  br i1 %cmp62.i, label %if.end65.i, label %for.inc62, !dbg !1764

if.end65.i:                                       ; preds = %if.end58.i
  br i1 %cmp66.i, label %land.lhs.true68.i, label %if.then67, !dbg !1765

land.lhs.true68.i:                                ; preds = %if.end65.i
  %sub70.i = fsub float %24, %conv14.i253306, !dbg !1766
  %57 = call float @llvm.fabs.f32(float %sub70.i) #15, !dbg !1767
  %58 = fpext float %57 to double, !dbg !1767
  %cmp72.i = fcmp ult double %58, 1.000000e-15, !dbg !1768
  br i1 %cmp72.i, label %if.then67, label %for.inc62, !dbg !1769

for.inc62:                                        ; preds = %if.end.thread.i, %land.lhs.true3.i, %if.then28.i, %if.end44.i, %if.end51.i, %if.end58.i, %land.lhs.true68.i
  %inc63 = add nuw nsw i64 %i.0297, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %inc63, metadata !1521, metadata !DIExpression()), !dbg !1526
  %exitcond329.not = icmp eq i64 %inc63, %11, !dbg !1600
  br i1 %exitcond329.not, label %for.cond50.if.else_crit_edge, label %for.body52, !dbg !1603, !llvm.loop !1771

if.then67:                                        ; preds = %if.end65.i, %land.lhs.true68.i, %if.end36.i
  store float %conv.i242, ptr %red1.i243, align 8, !dbg !1773, !tbaa !1140
  store float %conv2.i245, ptr %green3.i246, align 4, !dbg !1774, !tbaa !1145
  store float %conv4.i247, ptr %blue5.i248, align 8, !dbg !1775, !tbaa !1150
  store float %conv6.i250, ptr %opacity7.i251, align 4, !dbg !1776, !tbaa !1155
  %count = getelementptr inbounds %struct._ColorPacket, ptr %12, i64 %i.0297, i32 2, !dbg !1777
  %59 = load i64, ptr %count, align 8, !dbg !1779, !tbaa !1400
  %inc70 = add i64 %59, 1, !dbg !1779
  store i64 %inc70, ptr %count, align 8, !dbg !1779, !tbaa !1400
  br label %if.end115, !dbg !1780

for.cond50.if.else_crit_edge:                     ; preds = %for.inc62
  store float %conv.i242, ptr %red1.i243, align 8, !dbg !1773, !tbaa !1140
  store float %conv2.i245, ptr %green3.i246, align 4, !dbg !1774, !tbaa !1145
  store float %conv4.i247, ptr %blue5.i248, align 8, !dbg !1775, !tbaa !1150
  store float %conv6.i250, ptr %opacity7.i251, align 4, !dbg !1776, !tbaa !1155
  br label %if.else, !dbg !1603

if.else:                                          ; preds = %for.cond50.if.else_crit_edge, %for.cond50.preheader
  %i.0.lcssa = phi i64 [ %11, %for.cond50.if.else_crit_edge ], [ 0, %for.cond50.preheader ], !dbg !1781
  %cmp72 = icmp eq i64 %11, 0, !dbg !1782
  br i1 %cmp72, label %if.then73, label %if.else76, !dbg !1785

if.then73:                                        ; preds = %if.else
  %call74 = call ptr @AcquireMagickMemory(i64 noundef 24) #16, !dbg !1786
  %list75 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !1787
  store ptr %call74, ptr %list75, align 8, !dbg !1788, !tbaa !1115
  br label %if.end80, !dbg !1789

if.else76:                                        ; preds = %if.else
  %list77 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !1790
  %60 = load ptr, ptr %list77, align 8, !dbg !1790, !tbaa !1115
  %add = add nuw nsw i64 %i.0.lcssa, 1, !dbg !1791
  %call78 = call ptr @ResizeQuantumMemory(ptr noundef %60, i64 noundef %add, i64 noundef 24) #18, !dbg !1792
  store ptr %call78, ptr %list77, align 8, !dbg !1793, !tbaa !1115
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then73
  %61 = phi ptr [ %call78, %if.else76 ], [ %call74, %if.then73 ], !dbg !1794
  %list81 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !1794
  %cmp82 = icmp eq ptr %61, null, !dbg !1796
  br i1 %cmp82, label %for.end118.sink.split, label %if.end87, !dbg !1797

if.end87:                                         ; preds = %if.end80
  %arrayidx89 = getelementptr inbounds %struct._ColorPacket, ptr %61, i64 %i.0.lcssa, !dbg !1798
  %62 = load i64, ptr %p.0308, align 2, !dbg !1799
  store i64 %62, ptr %arrayidx89, align 8, !dbg !1799
  %63 = load i32, ptr %colorspace, align 4, !dbg !1800, !tbaa !1116
  %cmp91 = icmp eq i32 %63, 12, !dbg !1802
  br i1 %cmp91, label %if.then94, label %lor.lhs.false, !dbg !1803

lor.lhs.false:                                    ; preds = %if.end87
  %64 = load i32, ptr %image, align 8, !dbg !1804, !tbaa !1387
  %cmp93 = icmp eq i32 %64, 2, !dbg !1805
  br i1 %cmp93, label %if.then94, label %lor.lhs.false.if.end102_crit_edge, !dbg !1806

lor.lhs.false.if.end102_crit_edge:                ; preds = %lor.lhs.false
  %.pre331 = load ptr, ptr %list81, align 8, !dbg !1807, !tbaa !1115
  br label %if.end102, !dbg !1806

if.then94:                                        ; preds = %lor.lhs.false, %if.end87
  br i1 %cmp96, label %cond.end, label %cond.false, !dbg !1808

cond.false:                                       ; preds = %if.then94
  %65 = load i16, ptr %add.ptr, align 2, !dbg !1808, !tbaa !1160
  br label %cond.end, !dbg !1808

cond.end:                                         ; preds = %if.then94, %cond.false
  %cond = phi i16 [ %65, %cond.false ], [ 0, %if.then94 ], !dbg !1808
  %66 = load ptr, ptr %list81, align 8, !dbg !1809, !tbaa !1115
  %index101 = getelementptr inbounds %struct._ColorPacket, ptr %66, i64 %i.0.lcssa, i32 1, !dbg !1810
  store i16 %cond, ptr %index101, align 8, !dbg !1811, !tbaa !1395
  br label %if.end102, !dbg !1812

if.end102:                                        ; preds = %lor.lhs.false.if.end102_crit_edge, %cond.end
  %67 = phi ptr [ %.pre331, %lor.lhs.false.if.end102_crit_edge ], [ %66, %cond.end ], !dbg !1807
  %count105 = getelementptr inbounds %struct._ColorPacket, ptr %67, i64 %i.0.lcssa, i32 2, !dbg !1813
  store i64 1, ptr %count105, align 8, !dbg !1814, !tbaa !1400
  %68 = load i64, ptr %number_unique, align 8, !dbg !1815, !tbaa !1110
  %inc107 = add i64 %68, 1, !dbg !1815
  store i64 %inc107, ptr %number_unique, align 8, !dbg !1815, !tbaa !1110
  %69 = load i64, ptr %colors108, align 8, !dbg !1816, !tbaa !923
  %inc109 = add i64 %69, 1, !dbg !1816
  store i64 %inc109, ptr %colors108, align 8, !dbg !1816, !tbaa !923
  %cmp111 = icmp ugt i64 %inc109, 1024, !dbg !1817
  br i1 %cmp111, label %for.end118, label %if.end115, !dbg !1819

if.end115:                                        ; preds = %if.end102, %if.then67
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0308, i64 1, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1518, metadata !DIExpression()), !dbg !1526
  %inc117 = add nuw nsw i64 %x.0311, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %inc117, metadata !1519, metadata !DIExpression()), !dbg !1526
  %70 = load i64, ptr %columns, align 8, !dbg !1591, !tbaa !1095
  %cmp25 = icmp slt i64 %inc117, %70, !dbg !1594
  br i1 %cmp25, label %for.cond27.preheader, label %for.end118, !dbg !1595, !llvm.loop !1822

for.end118.sink.split:                            ; preds = %if.end80, %if.then39
  %.sink = phi i64 [ 719, %if.then39 ], [ 752, %if.end80 ]
  %call42 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %.sink, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename84) #15, !dbg !1596
  br label %for.end118, !dbg !1824

for.end118:                                       ; preds = %if.end115, %if.end102, %for.end118.sink.split, %if.end21
  %x.0289 = phi i64 [ 0, %if.end21 ], [ %x.0311, %for.end118.sink.split ], [ %inc117, %if.end115 ], [ %x.0311, %if.end102 ]
  %71 = load i64, ptr %columns, align 8, !dbg !1824, !tbaa !1095
  %cmp120 = icmp slt i64 %x.0289, %71, !dbg !1826
  br i1 %cmp120, label %for.end126, label %for.inc124, !dbg !1827

for.inc124:                                       ; preds = %for.end118
  %inc125 = add nuw nsw i64 %y.0317, 1, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %inc125, metadata !1525, metadata !DIExpression()), !dbg !1526
  %72 = load i64, ptr %rows, align 8, !dbg !1583, !tbaa !1090
  %cmp17 = icmp slt i64 %inc125, %72, !dbg !1584
  br i1 %cmp17, label %for.body, label %for.end126, !dbg !1585, !llvm.loop !1829

for.end126:                                       ; preds = %for.inc124, %for.body, %for.end118, %if.end15
  %y.0.lcssa = phi i64 [ 0, %if.end15 ], [ %y.0317, %for.end118 ], [ %y.0317, %for.body ], [ %inc125, %for.inc124 ], !dbg !1831
  %call127 = call ptr @DestroyCacheView(ptr noundef %call16) #15, !dbg !1832
  call void @llvm.dbg.value(metadata ptr %call127, metadata !1513, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata ptr %image, metadata !943, metadata !DIExpression()) #15, !dbg !1833
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !948, metadata !DIExpression()) #15, !dbg !1833
  %73 = load ptr, ptr %call.i, align 8, !dbg !1835, !tbaa !940
  call fastcc void @DestroyColorCube(ptr noundef nonnull %image, ptr noundef %73) #15, !dbg !1836
  %node_queue.i266 = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 6
  %.pre.i267 = load ptr, ptr %node_queue.i266, align 8, !dbg !1837, !tbaa !956
  br label %do.body.i, !dbg !1838

do.body.i:                                        ; preds = %do.body.i, %for.end126
  %74 = phi ptr [ %75, %do.body.i ], [ %.pre.i267, %for.end126 ], !dbg !1837
  %next.i268 = getelementptr inbounds %struct._Nodes, ptr %74, i64 0, i32 1, !dbg !1839
  %75 = load ptr, ptr %next.i268, align 8, !dbg !1839, !tbaa !959
  call void @llvm.dbg.value(metadata ptr %75, metadata !949, metadata !DIExpression()) #15, !dbg !1833
  %call.i269 = call ptr @RelinquishMagickMemory(ptr noundef %74) #15, !dbg !1840
  store ptr %75, ptr %node_queue.i266, align 8, !dbg !1841, !tbaa !956
  %cmp.not.i270 = icmp eq ptr %75, null, !dbg !1842
  br i1 %cmp.not.i270, label %DestroyCubeInfo.exit, label %do.body.i, !dbg !1843, !llvm.loop !1844

DestroyCubeInfo.exit:                             ; preds = %do.body.i
  %call5.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call.i) #15, !dbg !1846
  call void @llvm.dbg.value(metadata ptr undef, metadata !1514, metadata !DIExpression()), !dbg !1526
  %76 = load i64, ptr %rows, align 8, !dbg !1847, !tbaa !1090
  %cmp130 = icmp sge i64 %y.0.lcssa, %76, !dbg !1848
  br label %cleanup, !dbg !1849

cleanup:                                          ; preds = %land.lhs.true, %DestroyCubeInfo.exit, %if.then11
  %retval.0.shrunk = phi i1 [ false, %if.then11 ], [ %cmp130, %DestroyCubeInfo.exit ], [ %cmp2, %land.lhs.true ]
  %retval.0 = zext i1 %retval.0.shrunk to i32, !dbg !1526
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %target) #15, !dbg !1850
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #15, !dbg !1850
  ret i32 %retval.0, !dbg !1850
}

declare !dbg !1851 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1856 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1859 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1862 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !1868 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare !dbg !1871 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #7

; Function Attrs: allocsize(1,2)
declare !dbg !1874 ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare !dbg !1877 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @IsPaletteImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1880 {
entry:
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %target = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1882, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1883, metadata !DIExpression()), !dbg !1897
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #15, !dbg !1898
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !1886, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %target) #15, !dbg !1898
  call void @llvm.dbg.declare(metadata ptr %target, metadata !1887, metadata !DIExpression()), !dbg !1900
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1901
  %0 = load i32, ptr %debug, align 8, !dbg !1901, !tbaa !1013
  %cmp.not = icmp eq i32 %0, 0, !dbg !1903
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1904

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1905
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #15, !dbg !1906
  br label %if.end, !dbg !1907

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %image, align 8, !dbg !1908, !tbaa !1387
  %cmp1 = icmp eq i32 %1, 2, !dbg !1910
  br i1 %cmp1, label %land.lhs.true, label %if.end8, !dbg !1911

land.lhs.true:                                    ; preds = %if.end
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1912
  %2 = load i64, ptr %colors, align 8, !dbg !1912, !tbaa !1542
  %cmp2 = icmp ult i64 %2, 257, !dbg !1913
  br label %cleanup, !dbg !1914

if.end8:                                          ; preds = %if.end
  %call.i = tail call ptr @AcquireMagickMemory(i64 noundef 56) #16, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1037, metadata !DIExpression()) #15, !dbg !1917
  %cmp.i = icmp eq ptr %call.i, null, !dbg !1918
  br i1 %cmp.i, label %if.then11, label %if.end.i, !dbg !1919

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call.i, i32 noundef 0, i64 noundef 56) #15, !dbg !1920
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1044, metadata !DIExpression()) #15, !dbg !1921
  call void @llvm.dbg.value(metadata i64 0, metadata !1049, metadata !DIExpression()) #15, !dbg !1921
  %free_nodes.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 4, !dbg !1923
  %3 = load i64, ptr %free_nodes.i.i, align 8, !dbg !1923, !tbaa !1057
  %cmp.i.i = icmp eq i64 %3, 0, !dbg !1924
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !1925

entry.if.end7_crit_edge.i.i:                      ; preds = %if.end.i
  %node_info9.phi.trans.insert.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 5
  %.pre.i.i = load ptr, ptr %node_info9.phi.trans.insert.i.i, align 8, !dbg !1926, !tbaa !1061
  %phi.bo.i.i = add i64 %3, -1, !dbg !1925
  br label %if.end15, !dbg !1925

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call ptr @AcquireMagickMemory(i64 noundef 233480) #16, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1051, metadata !DIExpression()) #15, !dbg !1928
  %cmp1.i.i = icmp eq ptr %call.i.i, null, !dbg !1929
  br i1 %cmp1.i.i, label %select.unfold, label %if.end.i.i, !dbg !1930

if.end.i.i:                                       ; preds = %if.then.i.i
  %node_queue.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 6, !dbg !1931
  %4 = load ptr, ptr %node_queue.i.i, align 8, !dbg !1931, !tbaa !956
  %next.i.i = getelementptr inbounds %struct._Nodes, ptr %call.i.i, i64 0, i32 1, !dbg !1932
  store ptr %4, ptr %next.i.i, align 8, !dbg !1933, !tbaa !959
  store ptr %call.i.i, ptr %node_queue.i.i, align 8, !dbg !1934, !tbaa !956
  br label %if.end15

select.unfold:                                    ; preds = %if.then.i.i
  store ptr null, ptr %call.i, align 8, !dbg !1935, !tbaa !940
  br label %if.then11, !dbg !1917

if.then11:                                        ; preds = %if.end8, %select.unfold
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1885, metadata !DIExpression()), !dbg !1897
  %filename12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1936
  %call14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 853, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename12) #15, !dbg !1939
  br label %cleanup, !dbg !1940

if.end15:                                         ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %5 = phi ptr [ %call.i.i, %if.end.i.i ], [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], !dbg !1926
  %6 = phi i64 [ 1535, %if.end.i.i ], [ %phi.bo.i.i, %entry.if.end7_crit_edge.i.i ]
  store i64 %6, ptr %free_nodes.i.i, align 8, !dbg !1941, !tbaa !1057
  %node_info9.i.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 5, !dbg !1942
  %incdec.ptr.i.i = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 1, !dbg !1926
  store ptr %incdec.ptr.i.i, ptr %node_info9.i.i, align 8, !dbg !1926, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %5, metadata !1050, metadata !DIExpression()) #15, !dbg !1921
  %call10.i.i = tail call ptr @ResetMagickMemory(ptr noundef %5, i32 noundef 0, i64 noundef 152) #15, !dbg !1943
  %level11.i.i = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 3, !dbg !1944
  store i64 0, ptr %level11.i.i, align 8, !dbg !1945, !tbaa !1082
  store ptr %5, ptr %call.i, align 8, !dbg !1935, !tbaa !940
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1885, metadata !DIExpression()), !dbg !1897
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel) #15, !dbg !1946
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %target) #15, !dbg !1947
  %call16 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #15, !dbg !1948
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1884, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, metadata !1896, metadata !DIExpression()), !dbg !1897
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1949
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1896, metadata !DIExpression()), !dbg !1897
  %7 = load i64, ptr %rows, align 8, !dbg !1953, !tbaa !1090
  %cmp17316 = icmp sgt i64 %7, 0, !dbg !1954
  br i1 %cmp17316, label %for.body.lr.ph, label %for.end126, !dbg !1955

for.body.lr.ph:                                   ; preds = %if.end15
  %8 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %node_queue.i = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 6
  %red1.i243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 5
  %green3.i246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 6
  %blue5.i248 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 7
  %opacity7.i251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 8
  %index15.i254 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 9
  %matte.i258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 2
  %matte694.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 2
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colors108 = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 3
  %filename84 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %.pre = load i64, ptr %columns, align 8, !dbg !1949, !tbaa !1095
  br label %for.body, !dbg !1955

for.body:                                         ; preds = %for.body.lr.ph, %for.inc124
  %9 = phi i64 [ %.pre, %for.body.lr.ph ], [ %71, %for.inc124 ], !dbg !1949
  %y.0317 = phi i64 [ 0, %for.body.lr.ph ], [ %inc125, %for.inc124 ]
  call void @llvm.dbg.value(metadata i64 %y.0317, metadata !1896, metadata !DIExpression()), !dbg !1897
  %call18 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call16, i64 noundef 0, i64 noundef %y.0317, i64 noundef %9, i64 noundef 1, ptr noundef %exception) #17, !dbg !1956
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1889, metadata !DIExpression()), !dbg !1897
  %cmp19 = icmp eq ptr %call18, null, !dbg !1957
  br i1 %cmp19, label %for.end126, label %if.end21, !dbg !1959

if.end21:                                         ; preds = %for.body
  %call22 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call16) #15, !dbg !1960
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1888, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, metadata !1890, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1889, metadata !DIExpression()), !dbg !1897
  %10 = load i64, ptr %columns, align 8, !dbg !1961, !tbaa !1095
  %cmp25307 = icmp sgt i64 %10, 0, !dbg !1964
  br i1 %cmp25307, label %for.cond27.preheader.lr.ph, label %for.end118, !dbg !1965

for.cond27.preheader.lr.ph:                       ; preds = %if.end21
  %cmp9.i = icmp ne ptr %call22, null
  %cmp96 = icmp eq ptr %call22, null
  br label %for.cond27.preheader, !dbg !1965

for.cond27.preheader:                             ; preds = %for.cond27.preheader.lr.ph, %if.end115
  %x.0311 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %inc117, %if.end115 ]
  %p.0308 = phi ptr [ %call18, %for.cond27.preheader.lr.ph ], [ %incdec.ptr, %if.end115 ]
  call void @llvm.dbg.value(metadata i64 %x.0311, metadata !1890, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %p.0308, metadata !1889, metadata !DIExpression()), !dbg !1897
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0308, i64 0, i32 2
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0308, i64 0, i32 1
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0308, i64 0, i32 3
  %node_info.0290 = load ptr, ptr %call.i, align 8, !dbg !1966, !tbaa !938
  call void @llvm.dbg.value(metadata i64 1, metadata !1895, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 poison, metadata !1894, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %node_info.0290, metadata !1891, metadata !DIExpression()), !dbg !1897
  %add.ptr = getelementptr inbounds i16, ptr %call22, i64 %x.0311
  br label %for.body29, !dbg !1968

for.cond50.preheader:                             ; preds = %if.end44
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 2
  %11 = load i64, ptr %number_unique, align 8, !tbaa !1110
  call void @llvm.dbg.value(metadata i64 0, metadata !1892, metadata !DIExpression()), !dbg !1897
  %cmp51296 = icmp sgt i64 %11, 0, !dbg !1970
  br i1 %cmp51296, label %for.body52.lr.ph, label %if.else, !dbg !1973

for.body52.lr.ph:                                 ; preds = %for.cond50.preheader
  %list = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1
  %12 = load ptr, ptr %list, align 8, !tbaa !1115
  %image.val = load i32, ptr %8, align 4, !tbaa !1116
  %cmp.i252 = icmp eq i32 %image.val, 12
  %13 = load i32, ptr %matte.i258, align 8, !tbaa !1117
  %cmp.not.i259 = icmp eq i32 %13, 0
  %14 = load i32, ptr %matte694.i, align 8, !tbaa !1117
  %cmp7.not95.i = icmp eq i32 %14, 0
  %15 = load float, ptr %opacity7.i, align 4
  %sub38.i = fadd float %15, -6.553500e+04
  %16 = call float @llvm.fabs.f32(float %sub38.i) #15, !dbg !1897
  %17 = fpext float %16 to double
  %cmp40.i = fcmp olt double %17, 1.000000e-15
  %18 = call float @llvm.fabs.f32(float %15) #15, !dbg !1897
  %19 = fpext float %18 to double
  %cmp4.i261 = fcmp ult double %19, 1.000000e-15
  %20 = load float, ptr %red1.i, align 8
  %21 = load float, ptr %green3.i, align 4
  %22 = load float, ptr %blue5.i, align 8
  %23 = load i32, ptr %colorspace.i, align 4
  %cmp66.i = icmp eq i32 %23, 12
  %24 = load float, ptr %index15.i, align 8
  %index15.i254.promoted = load float, ptr %index15.i254, align 8, !tbaa !1120
  br label %for.body52, !dbg !1973

for.body29:                                       ; preds = %for.cond27.preheader, %if.end44
  %node_info.0295 = phi ptr [ %node_info.0290, %for.cond27.preheader ], [ %node_info.0, %if.end44 ]
  %level.0293 = phi i64 [ 1, %for.cond27.preheader ], [ %inc, %if.end44 ]
  %index.0291 = phi i32 [ 7, %for.cond27.preheader ], [ %dec, %if.end44 ]
  call void @llvm.dbg.value(metadata i64 %level.0293, metadata !1895, metadata !DIExpression()), !dbg !1897
  %image.val224 = load i32, ptr %8, align 4, !dbg !1974, !tbaa !1116
  call void @llvm.dbg.value(metadata ptr undef, metadata !1124, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata ptr %p.0308, metadata !1131, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call22, i64 %x.0311), metadata !1132, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1977
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1133, metadata !DIExpression()), !dbg !1977
  %25 = load i16, ptr %red.i, align 2, !dbg !1979, !tbaa !1137
  %conv.i = uitofp i16 %25 to float, !dbg !1980
  store float %conv.i, ptr %red1.i, align 8, !dbg !1981, !tbaa !1140
  %26 = load i16, ptr %green.i, align 2, !dbg !1982, !tbaa !1142
  %conv2.i = uitofp i16 %26 to float, !dbg !1983
  store float %conv2.i, ptr %green3.i, align 4, !dbg !1984, !tbaa !1145
  %27 = load i16, ptr %p.0308, align 2, !dbg !1985, !tbaa !1147
  %conv4.i = uitofp i16 %27 to float, !dbg !1986
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1987, !tbaa !1150
  %28 = load i16, ptr %opacity.i, align 2, !dbg !1988, !tbaa !1152
  %conv6.i = uitofp i16 %28 to float, !dbg !1989
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !1990, !tbaa !1155
  %cmp.i225 = icmp eq i32 %image.val224, 12, !dbg !1991
  %or.cond.i = and i1 %cmp9.i, %cmp.i225, !dbg !1992
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !1992

cond.end.i:                                       ; preds = %for.body29
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1132, metadata !DIExpression()), !dbg !1977
  %29 = load i16, ptr %add.ptr, align 2, !dbg !1993, !tbaa !1160
  %conv14.i = uitofp i16 %29 to float, !dbg !1994
  store float %conv14.i, ptr %index15.i, align 8, !dbg !1995, !tbaa !1120
  br label %SetMagickPixelPacket.exit, !dbg !1996

SetMagickPixelPacket.exit:                        ; preds = %for.body29, %cond.end.i
  call void @llvm.dbg.value(metadata ptr %image, metadata !1164, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1171, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i64 poison, metadata !1172, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata float %conv.i, metadata !1176, metadata !DIExpression()), !dbg !1999
  switch i16 %25, label %if.end3.i.i [
    i16 0, label %ClampToQuantum.exit.i
    i16 -1, label %ClampToQuantum.exit.i.fold.split
  ], !dbg !2001

if.end3.i.i:                                      ; preds = %SetMagickPixelPacket.exit
  %add.i.i = fadd float %conv.i, 5.000000e-01, !dbg !2002
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !2003
  %phi.cast.i = zext i16 %conv.i.i to i64, !dbg !2004
  %phi.bo.i = add nuw nsw i64 %phi.cast.i, 128, !dbg !2004
  br label %ClampToQuantum.exit.i, !dbg !2004

ClampToQuantum.exit.i.fold.split:                 ; preds = %SetMagickPixelPacket.exit
  br label %ClampToQuantum.exit.i, !dbg !2005

ClampToQuantum.exit.i:                            ; preds = %SetMagickPixelPacket.exit, %ClampToQuantum.exit.i.fold.split, %if.end3.i.i
  %retval.0.i.i = phi i64 [ %phi.bo.i, %if.end3.i.i ], [ 128, %SetMagickPixelPacket.exit ], [ 65663, %ClampToQuantum.exit.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !2007
  %shr.i.i = lshr i64 %retval.0.i.i, 8, !dbg !2005
  %sub.i.i = sub nsw i64 %retval.0.i.i, %shr.i.i, !dbg !2008
  %30 = trunc i64 %sub.i.i to i32, !dbg !2009
  %31 = lshr i32 %30, 8, !dbg !2009
  %conv.i231 = and i32 %31, 255, !dbg !2010
  %shr.i = lshr i32 %conv.i231, %index.0291, !dbg !2011
  %and.i = and i32 %shr.i, 1, !dbg !2012
  call void @llvm.dbg.value(metadata float %conv2.i, metadata !1176, metadata !DIExpression()), !dbg !2013
  switch i16 %26, label %if.end3.i42.i [
    i16 0, label %ClampToQuantum.exit44.i
    i16 -1, label %ClampToQuantum.exit44.i.fold.split
  ], !dbg !2015

if.end3.i42.i:                                    ; preds = %ClampToQuantum.exit.i
  %add.i40.i = fadd float %conv2.i, 5.000000e-01, !dbg !2016
  %conv.i41.i = fptoui float %add.i40.i to i16, !dbg !2017
  %phi.cast79.i = zext i16 %conv.i41.i to i64, !dbg !2018
  %phi.bo80.i = add nuw nsw i64 %phi.cast79.i, 128, !dbg !2018
  br label %ClampToQuantum.exit44.i, !dbg !2018

ClampToQuantum.exit44.i.fold.split:               ; preds = %ClampToQuantum.exit.i
  br label %ClampToQuantum.exit44.i, !dbg !2019

ClampToQuantum.exit44.i:                          ; preds = %ClampToQuantum.exit.i, %ClampToQuantum.exit44.i.fold.split, %if.end3.i42.i
  %retval.0.i43.i = phi i64 [ %phi.bo80.i, %if.end3.i42.i ], [ 128, %ClampToQuantum.exit.i ], [ 65663, %ClampToQuantum.exit44.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !2021
  %shr.i47.i = lshr i64 %retval.0.i43.i, 8, !dbg !2019
  %sub.i48.i = sub nsw i64 %retval.0.i43.i, %shr.i47.i, !dbg !2022
  %32 = trunc i64 %sub.i48.i to i32, !dbg !2023
  %33 = lshr i32 %32, 8, !dbg !2023
  %conv4.i233 = and i32 %33, 255, !dbg !2024
  %shr6.i = lshr i32 %conv4.i233, %index.0291, !dbg !2025
  %and7.i = shl nuw nsw i32 %shr6.i, 1, !dbg !2026
  %shl.i = and i32 %and7.i, 2, !dbg !2026
  %or.i = or i32 %shl.i, %and.i, !dbg !2027
  call void @llvm.dbg.value(metadata float %conv4.i, metadata !1176, metadata !DIExpression()), !dbg !2028
  switch i16 %27, label %if.end3.i56.i [
    i16 0, label %ClampToQuantum.exit58.i
    i16 -1, label %ClampToQuantum.exit58.i.fold.split
  ], !dbg !2030

if.end3.i56.i:                                    ; preds = %ClampToQuantum.exit44.i
  %add.i54.i = fadd float %conv4.i, 5.000000e-01, !dbg !2031
  %conv.i55.i = fptoui float %add.i54.i to i16, !dbg !2032
  %phi.cast81.i = zext i16 %conv.i55.i to i64, !dbg !2033
  %phi.bo82.i = add nuw nsw i64 %phi.cast81.i, 128, !dbg !2033
  br label %ClampToQuantum.exit58.i, !dbg !2033

ClampToQuantum.exit58.i.fold.split:               ; preds = %ClampToQuantum.exit44.i
  br label %ClampToQuantum.exit58.i, !dbg !2034

ClampToQuantum.exit58.i:                          ; preds = %ClampToQuantum.exit44.i, %ClampToQuantum.exit58.i.fold.split, %if.end3.i56.i
  %retval.0.i57.i = phi i64 [ %phi.bo82.i, %if.end3.i56.i ], [ 128, %ClampToQuantum.exit44.i ], [ 65663, %ClampToQuantum.exit58.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !2036
  %shr.i61.i = lshr i64 %retval.0.i57.i, 8, !dbg !2034
  %sub.i62.i = sub nsw i64 %retval.0.i57.i, %shr.i61.i, !dbg !2037
  %34 = trunc i64 %sub.i62.i to i32, !dbg !2038
  %35 = lshr i32 %34, 8, !dbg !2038
  %conv10.i = and i32 %35, 255, !dbg !2039
  %shr12.i = lshr i32 %conv10.i, %index.0291, !dbg !2040
  %and13.i = shl nuw nsw i32 %shr12.i, 2, !dbg !2041
  %shl14.i = and i32 %and13.i, 4, !dbg !2041
  %or15.i = or i32 %or.i, %shl14.i, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %or15.i, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1997
  %36 = load i32, ptr %matte.i, align 8, !dbg !2043, !tbaa !1234
  %cmp.not.i = icmp eq i32 %36, 0, !dbg !2044
  br i1 %cmp.not.i, label %ColorToNodeId.exit, label %if.then.i, !dbg !2045

if.then.i:                                        ; preds = %ClampToQuantum.exit58.i
  call void @llvm.dbg.value(metadata float %conv6.i, metadata !1176, metadata !DIExpression()), !dbg !2046
  switch i16 %28, label %if.end3.i70.i [
    i16 0, label %ClampToQuantum.exit72.i
    i16 -1, label %ClampToQuantum.exit72.i.fold.split
  ], !dbg !2048

if.end3.i70.i:                                    ; preds = %if.then.i
  %add.i68.i = fadd float %conv6.i, 5.000000e-01, !dbg !2049
  %conv.i69.i = fptoui float %add.i68.i to i16, !dbg !2050
  %phi.cast83.i = zext i16 %conv.i69.i to i64, !dbg !2051
  %phi.bo84.i = add nuw nsw i64 %phi.cast83.i, 128, !dbg !2051
  br label %ClampToQuantum.exit72.i, !dbg !2051

ClampToQuantum.exit72.i.fold.split:               ; preds = %if.then.i
  br label %ClampToQuantum.exit72.i, !dbg !2052

ClampToQuantum.exit72.i:                          ; preds = %if.then.i, %ClampToQuantum.exit72.i.fold.split, %if.end3.i70.i
  %retval.0.i71.i = phi i64 [ %phi.bo84.i, %if.end3.i70.i ], [ 128, %if.then.i ], [ 65663, %ClampToQuantum.exit72.i.fold.split ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1194, metadata !DIExpression()), !dbg !2054
  %shr.i75.i = lshr i64 %retval.0.i71.i, 8, !dbg !2052
  %sub.i76.i = sub nsw i64 %retval.0.i71.i, %shr.i75.i, !dbg !2055
  %37 = trunc i64 %sub.i76.i to i32, !dbg !2056
  %38 = lshr i32 %37, 8, !dbg !2056
  %conv20.i = and i32 %38, 255, !dbg !2057
  %shr22.i = lshr i32 %conv20.i, %index.0291, !dbg !2058
  %and23.i = shl nuw nsw i32 %shr22.i, 3, !dbg !2059
  %shl24.i = and i32 %and23.i, 8, !dbg !2059
  %or2634.i = or i32 %shl24.i, %or15.i, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %or2634.i, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1997
  br label %ColorToNodeId.exit, !dbg !2061

ColorToNodeId.exit:                               ; preds = %ClampToQuantum.exit58.i, %ClampToQuantum.exit72.i
  %id.0.in.i = phi i32 [ %or2634.i, %ClampToQuantum.exit72.i ], [ %or15.i, %ClampToQuantum.exit58.i ]
  %id.0.i = zext i32 %id.0.in.i to i64, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !1173, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %id.0.i, metadata !1893, metadata !DIExpression()), !dbg !1897
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %node_info.0295, i64 0, i64 %id.0.i, !dbg !2062
  %39 = load ptr, ptr %arrayidx, align 8, !dbg !2062, !tbaa !938
  %cmp31 = icmp eq ptr %39, null, !dbg !2064
  br i1 %cmp31, label %if.then32, label %if.end44, !dbg !2065

if.then32:                                        ; preds = %ColorToNodeId.exit
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1044, metadata !DIExpression()) #15, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %level.0293, metadata !1049, metadata !DIExpression()) #15, !dbg !2066
  %40 = load i64, ptr %free_nodes.i.i, align 8, !dbg !2069, !tbaa !1057
  %cmp.i236 = icmp eq i64 %40, 0, !dbg !2070
  br i1 %cmp.i236, label %if.then.i239, label %entry.if.end7_crit_edge.i, !dbg !2071

entry.if.end7_crit_edge.i:                        ; preds = %if.then32
  %.pre.i = load ptr, ptr %node_info9.i.i, align 8, !dbg !2072, !tbaa !1061
  %phi.bo.i237 = add i64 %40, -1, !dbg !2071
  br label %GetNodeInfo.exit, !dbg !2071

if.then.i239:                                     ; preds = %if.then32
  %call.i238 = call ptr @AcquireMagickMemory(i64 noundef 233480) #16, !dbg !2073
  call void @llvm.dbg.value(metadata ptr %call.i238, metadata !1051, metadata !DIExpression()) #15, !dbg !2074
  %cmp1.i = icmp eq ptr %call.i238, null, !dbg !2075
  br i1 %cmp1.i, label %if.then39, label %if.end.i240, !dbg !2076

if.end.i240:                                      ; preds = %if.then.i239
  %41 = load ptr, ptr %node_queue.i, align 8, !dbg !2077, !tbaa !956
  %next.i = getelementptr inbounds %struct._Nodes, ptr %call.i238, i64 0, i32 1, !dbg !2078
  store ptr %41, ptr %next.i, align 8, !dbg !2079, !tbaa !959
  store ptr %call.i238, ptr %node_queue.i, align 8, !dbg !2080, !tbaa !956
  br label %GetNodeInfo.exit

GetNodeInfo.exit:                                 ; preds = %entry.if.end7_crit_edge.i, %if.end.i240
  %42 = phi ptr [ %call.i238, %if.end.i240 ], [ %.pre.i, %entry.if.end7_crit_edge.i ], !dbg !2072
  %43 = phi i64 [ 1535, %if.end.i240 ], [ %phi.bo.i237, %entry.if.end7_crit_edge.i ]
  store i64 %43, ptr %free_nodes.i.i, align 8, !dbg !2081, !tbaa !1057
  %incdec.ptr.i = getelementptr inbounds %struct._NodeInfo, ptr %42, i64 1, !dbg !2072
  store ptr %incdec.ptr.i, ptr %node_info9.i.i, align 8, !dbg !2072, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %42, metadata !1050, metadata !DIExpression()) #15, !dbg !2066
  %call10.i = call ptr @ResetMagickMemory(ptr noundef %42, i32 noundef 0, i64 noundef 152) #15, !dbg !2082
  %level11.i = getelementptr inbounds %struct._NodeInfo, ptr %42, i64 0, i32 3, !dbg !2083
  store i64 %level.0293, ptr %level11.i, align 8, !dbg !2084, !tbaa !1082
  store ptr %42, ptr %arrayidx, align 8, !dbg !2085, !tbaa !938
  br label %if.end44, !dbg !2086

if.then39:                                        ; preds = %if.then.i239
  store ptr null, ptr %arrayidx, align 8, !dbg !2085, !tbaa !938
  br label %for.end118.sink.split, !dbg !2087

if.end44:                                         ; preds = %GetNodeInfo.exit, %ColorToNodeId.exit
  %node_info.0 = phi ptr [ %42, %GetNodeInfo.exit ], [ %39, %ColorToNodeId.exit ], !dbg !1966
  call void @llvm.dbg.value(metadata ptr undef, metadata !1891, metadata !DIExpression()), !dbg !1897
  %dec = add nsw i32 %index.0291, -1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 undef, metadata !1894, metadata !DIExpression()), !dbg !1897
  %inc = add nuw nsw i64 %level.0293, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1895, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 poison, metadata !1894, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %node_info.0, metadata !1891, metadata !DIExpression()), !dbg !1897
  %exitcond.not = icmp eq i64 %inc, 8, !dbg !2090
  br i1 %exitcond.not, label %for.cond50.preheader, label %for.body29, !dbg !1968, !llvm.loop !2091

for.body52:                                       ; preds = %for.body52.lr.ph, %for.inc62
  %conv14.i253305 = phi float [ %index15.i254.promoted, %for.body52.lr.ph ], [ %conv14.i253306, %for.inc62 ]
  %i.0297 = phi i64 [ 0, %for.body52.lr.ph ], [ %inc63, %for.inc62 ]
  call void @llvm.dbg.value(metadata i64 %i.0297, metadata !1892, metadata !DIExpression()), !dbg !1897
  %arrayidx53 = getelementptr inbounds %struct._ColorPacket, ptr %12, i64 %i.0297, !dbg !2093
  call void @llvm.dbg.value(metadata ptr undef, metadata !1124, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata ptr %arrayidx53, metadata !1131, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata !DIArgList(ptr %12, i64 %i.0297), metadata !1132, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2095
  call void @llvm.dbg.value(metadata ptr %target, metadata !1133, metadata !DIExpression()), !dbg !2095
  %red.i241 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx53, i64 0, i32 2, !dbg !2097
  %44 = load i16, ptr %red.i241, align 2, !dbg !2097, !tbaa !1137
  %conv.i242 = uitofp i16 %44 to float, !dbg !2098
  %green.i244 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx53, i64 0, i32 1, !dbg !2099
  %45 = load i16, ptr %green.i244, align 2, !dbg !2099, !tbaa !1142
  %conv2.i245 = uitofp i16 %45 to float, !dbg !2100
  %46 = load i16, ptr %arrayidx53, align 2, !dbg !2101, !tbaa !1147
  %conv4.i247 = uitofp i16 %46 to float, !dbg !2102
  %opacity.i249 = getelementptr inbounds %struct._PixelPacket, ptr %arrayidx53, i64 0, i32 3, !dbg !2103
  %47 = load i16, ptr %opacity.i249, align 2, !dbg !2103, !tbaa !1152
  %conv6.i250 = uitofp i16 %47 to float, !dbg !2104
  br i1 %cmp.i252, label %cond.end.i255, label %SetMagickPixelPacket.exit257, !dbg !2105

cond.end.i255:                                    ; preds = %for.body52
  %index57 = getelementptr inbounds %struct._ColorPacket, ptr %12, i64 %i.0297, i32 1, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %index57, metadata !1132, metadata !DIExpression()), !dbg !2095
  %48 = load i16, ptr %index57, align 2, !dbg !2107, !tbaa !1160
  %conv14.i253 = uitofp i16 %48 to float, !dbg !2108
  store float %conv14.i253, ptr %index15.i254, align 8, !dbg !2109, !tbaa !1120
  br label %SetMagickPixelPacket.exit257, !dbg !2110

SetMagickPixelPacket.exit257:                     ; preds = %for.body52, %cond.end.i255
  %conv14.i253306 = phi float [ %conv14.i253305, %for.body52 ], [ %conv14.i253, %cond.end.i255 ]
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1305, metadata !DIExpression()) #15, !dbg !2111
  call void @llvm.dbg.value(metadata ptr %target, metadata !1311, metadata !DIExpression()) #15, !dbg !2111
  br i1 %cmp.not.i259, label %if.end.thread.i, label %land.lhs.true.i, !dbg !2114

land.lhs.true.i:                                  ; preds = %SetMagickPixelPacket.exit257
  br i1 %cmp7.not95.i, label %land.lhs.true3.i, label %if.then28.i, !dbg !2115

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  br i1 %cmp4.i261, label %if.end44.i, label %for.inc62, !dbg !2116

if.end.thread.i:                                  ; preds = %SetMagickPixelPacket.exit257
  %cmp17.i = icmp eq i16 %47, 0
  %or.cond = select i1 %cmp7.not95.i, i1 true, i1 %cmp17.i, !dbg !2117
  br i1 %or.cond, label %if.end44.i, label %for.inc62, !dbg !2117

if.then28.i:                                      ; preds = %land.lhs.true.i
  %sub31.i = fsub float %15, %conv6.i250, !dbg !2118
  %49 = call float @llvm.fabs.f32(float %sub31.i) #15, !dbg !2119
  %50 = fpext float %49 to double, !dbg !2119
  %cmp33.i = fcmp ult double %50, 1.000000e-15, !dbg !2120
  br i1 %cmp33.i, label %if.end36.i, label %for.inc62, !dbg !2121

if.end36.i:                                       ; preds = %if.then28.i
  br i1 %cmp40.i, label %if.then67, label %if.end44.i, !dbg !2122

if.end44.i:                                       ; preds = %if.end36.i, %if.end.thread.i, %land.lhs.true3.i
  %sub46.i = fsub float %20, %conv.i242, !dbg !2123
  %51 = call float @llvm.fabs.f32(float %sub46.i) #15, !dbg !2124
  %52 = fpext float %51 to double, !dbg !2124
  %cmp48.i = fcmp ult double %52, 1.000000e-15, !dbg !2125
  br i1 %cmp48.i, label %if.end51.i, label %for.inc62, !dbg !2126

if.end51.i:                                       ; preds = %if.end44.i
  %sub53.i = fsub float %21, %conv2.i245, !dbg !2127
  %53 = call float @llvm.fabs.f32(float %sub53.i) #15, !dbg !2128
  %54 = fpext float %53 to double, !dbg !2128
  %cmp55.i = fcmp ult double %54, 1.000000e-15, !dbg !2129
  br i1 %cmp55.i, label %if.end58.i, label %for.inc62, !dbg !2130

if.end58.i:                                       ; preds = %if.end51.i
  %sub60.i = fsub float %22, %conv4.i247, !dbg !2131
  %55 = call float @llvm.fabs.f32(float %sub60.i) #15, !dbg !2132
  %56 = fpext float %55 to double, !dbg !2132
  %cmp62.i = fcmp ult double %56, 1.000000e-15, !dbg !2133
  br i1 %cmp62.i, label %if.end65.i, label %for.inc62, !dbg !2134

if.end65.i:                                       ; preds = %if.end58.i
  br i1 %cmp66.i, label %land.lhs.true68.i, label %if.then67, !dbg !2135

land.lhs.true68.i:                                ; preds = %if.end65.i
  %sub70.i = fsub float %24, %conv14.i253306, !dbg !2136
  %57 = call float @llvm.fabs.f32(float %sub70.i) #15, !dbg !2137
  %58 = fpext float %57 to double, !dbg !2137
  %cmp72.i = fcmp ult double %58, 1.000000e-15, !dbg !2138
  br i1 %cmp72.i, label %if.then67, label %for.inc62, !dbg !2139

for.inc62:                                        ; preds = %if.end.thread.i, %land.lhs.true3.i, %if.then28.i, %if.end44.i, %if.end51.i, %if.end58.i, %land.lhs.true68.i
  %inc63 = add nuw nsw i64 %i.0297, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %inc63, metadata !1892, metadata !DIExpression()), !dbg !1897
  %exitcond329.not = icmp eq i64 %inc63, %11, !dbg !1970
  br i1 %exitcond329.not, label %for.cond50.if.else_crit_edge, label %for.body52, !dbg !1973, !llvm.loop !2141

if.then67:                                        ; preds = %if.end65.i, %land.lhs.true68.i, %if.end36.i
  store float %conv.i242, ptr %red1.i243, align 8, !dbg !2143, !tbaa !1140
  store float %conv2.i245, ptr %green3.i246, align 4, !dbg !2144, !tbaa !1145
  store float %conv4.i247, ptr %blue5.i248, align 8, !dbg !2145, !tbaa !1150
  store float %conv6.i250, ptr %opacity7.i251, align 4, !dbg !2146, !tbaa !1155
  %count = getelementptr inbounds %struct._ColorPacket, ptr %12, i64 %i.0297, i32 2, !dbg !2147
  %59 = load i64, ptr %count, align 8, !dbg !2149, !tbaa !1400
  %inc70 = add i64 %59, 1, !dbg !2149
  store i64 %inc70, ptr %count, align 8, !dbg !2149, !tbaa !1400
  br label %if.end115, !dbg !2150

for.cond50.if.else_crit_edge:                     ; preds = %for.inc62
  store float %conv.i242, ptr %red1.i243, align 8, !dbg !2143, !tbaa !1140
  store float %conv2.i245, ptr %green3.i246, align 4, !dbg !2144, !tbaa !1145
  store float %conv4.i247, ptr %blue5.i248, align 8, !dbg !2145, !tbaa !1150
  store float %conv6.i250, ptr %opacity7.i251, align 4, !dbg !2146, !tbaa !1155
  br label %if.else, !dbg !1973

if.else:                                          ; preds = %for.cond50.if.else_crit_edge, %for.cond50.preheader
  %i.0.lcssa = phi i64 [ %11, %for.cond50.if.else_crit_edge ], [ 0, %for.cond50.preheader ], !dbg !2151
  %cmp72 = icmp eq i64 %11, 0, !dbg !2152
  br i1 %cmp72, label %if.then73, label %if.else76, !dbg !2155

if.then73:                                        ; preds = %if.else
  %call74 = call ptr @AcquireMagickMemory(i64 noundef 24) #16, !dbg !2156
  %list75 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !2157
  store ptr %call74, ptr %list75, align 8, !dbg !2158, !tbaa !1115
  br label %if.end80, !dbg !2159

if.else76:                                        ; preds = %if.else
  %list77 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !2160
  %60 = load ptr, ptr %list77, align 8, !dbg !2160, !tbaa !1115
  %add = add nuw nsw i64 %i.0.lcssa, 1, !dbg !2161
  %call78 = call ptr @ResizeQuantumMemory(ptr noundef %60, i64 noundef %add, i64 noundef 24) #18, !dbg !2162
  store ptr %call78, ptr %list77, align 8, !dbg !2163, !tbaa !1115
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then73
  %61 = phi ptr [ %call78, %if.else76 ], [ %call74, %if.then73 ], !dbg !2164
  %list81 = getelementptr inbounds %struct._NodeInfo, ptr %node_info.0, i64 0, i32 1, !dbg !2164
  %cmp82 = icmp eq ptr %61, null, !dbg !2166
  br i1 %cmp82, label %for.end118.sink.split, label %if.end87, !dbg !2167

if.end87:                                         ; preds = %if.end80
  %arrayidx89 = getelementptr inbounds %struct._ColorPacket, ptr %61, i64 %i.0.lcssa, !dbg !2168
  %62 = load i64, ptr %p.0308, align 2, !dbg !2169
  store i64 %62, ptr %arrayidx89, align 8, !dbg !2169
  %63 = load i32, ptr %colorspace, align 4, !dbg !2170, !tbaa !1116
  %cmp91 = icmp eq i32 %63, 12, !dbg !2172
  br i1 %cmp91, label %if.then94, label %lor.lhs.false, !dbg !2173

lor.lhs.false:                                    ; preds = %if.end87
  %64 = load i32, ptr %image, align 8, !dbg !2174, !tbaa !1387
  %cmp93 = icmp eq i32 %64, 2, !dbg !2175
  br i1 %cmp93, label %if.then94, label %lor.lhs.false.if.end102_crit_edge, !dbg !2176

lor.lhs.false.if.end102_crit_edge:                ; preds = %lor.lhs.false
  %.pre331 = load ptr, ptr %list81, align 8, !dbg !2177, !tbaa !1115
  br label %if.end102, !dbg !2176

if.then94:                                        ; preds = %lor.lhs.false, %if.end87
  br i1 %cmp96, label %cond.end, label %cond.false, !dbg !2178

cond.false:                                       ; preds = %if.then94
  %65 = load i16, ptr %add.ptr, align 2, !dbg !2178, !tbaa !1160
  br label %cond.end, !dbg !2178

cond.end:                                         ; preds = %if.then94, %cond.false
  %cond = phi i16 [ %65, %cond.false ], [ 0, %if.then94 ], !dbg !2178
  %66 = load ptr, ptr %list81, align 8, !dbg !2179, !tbaa !1115
  %index101 = getelementptr inbounds %struct._ColorPacket, ptr %66, i64 %i.0.lcssa, i32 1, !dbg !2180
  store i16 %cond, ptr %index101, align 8, !dbg !2181, !tbaa !1395
  br label %if.end102, !dbg !2182

if.end102:                                        ; preds = %lor.lhs.false.if.end102_crit_edge, %cond.end
  %67 = phi ptr [ %.pre331, %lor.lhs.false.if.end102_crit_edge ], [ %66, %cond.end ], !dbg !2177
  %count105 = getelementptr inbounds %struct._ColorPacket, ptr %67, i64 %i.0.lcssa, i32 2, !dbg !2183
  store i64 1, ptr %count105, align 8, !dbg !2184, !tbaa !1400
  %68 = load i64, ptr %number_unique, align 8, !dbg !2185, !tbaa !1110
  %inc107 = add i64 %68, 1, !dbg !2185
  store i64 %inc107, ptr %number_unique, align 8, !dbg !2185, !tbaa !1110
  %69 = load i64, ptr %colors108, align 8, !dbg !2186, !tbaa !923
  %inc109 = add i64 %69, 1, !dbg !2186
  store i64 %inc109, ptr %colors108, align 8, !dbg !2186, !tbaa !923
  %cmp111 = icmp ugt i64 %inc109, 256, !dbg !2187
  br i1 %cmp111, label %for.end118, label %if.end115, !dbg !2189

if.end115:                                        ; preds = %if.end102, %if.then67
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0308, i64 1, !dbg !2190
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1889, metadata !DIExpression()), !dbg !1897
  %inc117 = add nuw nsw i64 %x.0311, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %inc117, metadata !1890, metadata !DIExpression()), !dbg !1897
  %70 = load i64, ptr %columns, align 8, !dbg !1961, !tbaa !1095
  %cmp25 = icmp slt i64 %inc117, %70, !dbg !1964
  br i1 %cmp25, label %for.cond27.preheader, label %for.end118, !dbg !1965, !llvm.loop !2192

for.end118.sink.split:                            ; preds = %if.end80, %if.then39
  %.sink = phi i64 [ 882, %if.then39 ], [ 915, %if.end80 ]
  %call42 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %.sink, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename84) #15, !dbg !1966
  br label %for.end118, !dbg !2194

for.end118:                                       ; preds = %if.end115, %if.end102, %for.end118.sink.split, %if.end21
  %x.0289 = phi i64 [ 0, %if.end21 ], [ %x.0311, %for.end118.sink.split ], [ %inc117, %if.end115 ], [ %x.0311, %if.end102 ]
  %71 = load i64, ptr %columns, align 8, !dbg !2194, !tbaa !1095
  %cmp120 = icmp slt i64 %x.0289, %71, !dbg !2196
  br i1 %cmp120, label %for.end126, label %for.inc124, !dbg !2197

for.inc124:                                       ; preds = %for.end118
  %inc125 = add nuw nsw i64 %y.0317, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %inc125, metadata !1896, metadata !DIExpression()), !dbg !1897
  %72 = load i64, ptr %rows, align 8, !dbg !1953, !tbaa !1090
  %cmp17 = icmp slt i64 %inc125, %72, !dbg !1954
  br i1 %cmp17, label %for.body, label %for.end126, !dbg !1955, !llvm.loop !2199

for.end126:                                       ; preds = %for.inc124, %for.body, %for.end118, %if.end15
  %y.0.lcssa = phi i64 [ 0, %if.end15 ], [ %y.0317, %for.end118 ], [ %y.0317, %for.body ], [ %inc125, %for.inc124 ], !dbg !2201
  %call127 = call ptr @DestroyCacheView(ptr noundef %call16) #15, !dbg !2202
  call void @llvm.dbg.value(metadata ptr %call127, metadata !1884, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %image, metadata !943, metadata !DIExpression()) #15, !dbg !2203
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !948, metadata !DIExpression()) #15, !dbg !2203
  %73 = load ptr, ptr %call.i, align 8, !dbg !2205, !tbaa !940
  call fastcc void @DestroyColorCube(ptr noundef nonnull %image, ptr noundef %73) #15, !dbg !2206
  %node_queue.i266 = getelementptr inbounds %struct._CubeInfo, ptr %call.i, i64 0, i32 6
  %.pre.i267 = load ptr, ptr %node_queue.i266, align 8, !dbg !2207, !tbaa !956
  br label %do.body.i, !dbg !2208

do.body.i:                                        ; preds = %do.body.i, %for.end126
  %74 = phi ptr [ %75, %do.body.i ], [ %.pre.i267, %for.end126 ], !dbg !2207
  %next.i268 = getelementptr inbounds %struct._Nodes, ptr %74, i64 0, i32 1, !dbg !2209
  %75 = load ptr, ptr %next.i268, align 8, !dbg !2209, !tbaa !959
  call void @llvm.dbg.value(metadata ptr %75, metadata !949, metadata !DIExpression()) #15, !dbg !2203
  %call.i269 = call ptr @RelinquishMagickMemory(ptr noundef %74) #15, !dbg !2210
  store ptr %75, ptr %node_queue.i266, align 8, !dbg !2211, !tbaa !956
  %cmp.not.i270 = icmp eq ptr %75, null, !dbg !2212
  br i1 %cmp.not.i270, label %DestroyCubeInfo.exit, label %do.body.i, !dbg !2213, !llvm.loop !2214

DestroyCubeInfo.exit:                             ; preds = %do.body.i
  %call5.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call.i) #15, !dbg !2216
  call void @llvm.dbg.value(metadata ptr undef, metadata !1885, metadata !DIExpression()), !dbg !1897
  %76 = load i64, ptr %rows, align 8, !dbg !2217, !tbaa !1090
  %cmp130 = icmp sge i64 %y.0.lcssa, %76, !dbg !2218
  br label %cleanup, !dbg !2219

cleanup:                                          ; preds = %land.lhs.true, %DestroyCubeInfo.exit, %if.then11
  %retval.0.shrunk = phi i1 [ false, %if.then11 ], [ %cmp130, %DestroyCubeInfo.exit ], [ %cmp2, %land.lhs.true ]
  %retval.0 = zext i1 %retval.0.shrunk to i32, !dbg !1897
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %target) #15, !dbg !2220
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #15, !dbg !2220
  ret i32 %retval.0, !dbg !2220
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MinMaxStretchImage(ptr noundef %image, i32 noundef %channel, double noundef %black_value, double noundef %white_value) local_unnamed_addr #0 !dbg !2221 {
entry:
  %min = alloca double, align 8
  %max = alloca double, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2227, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2228, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata double %black_value, metadata !2229, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata double %white_value, metadata !2230, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min) #15, !dbg !2236
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max) #15, !dbg !2236
  call void @llvm.dbg.value(metadata i32 1, metadata !2233, metadata !DIExpression()), !dbg !2235
  %and = and i32 %channel, 256, !dbg !2237
  %cmp.not = icmp eq i32 %and, 0, !dbg !2239
  br i1 %cmp.not, label %if.end7, label %if.then, !dbg !2240

if.then:                                          ; preds = %entry
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2241
  call void @llvm.dbg.value(metadata ptr %min, metadata !2231, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  call void @llvm.dbg.value(metadata ptr %max, metadata !2232, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %call = call i32 @GetImageChannelRange(ptr noundef %image, i32 noundef %channel, ptr noundef nonnull %min, ptr noundef nonnull %max, ptr noundef nonnull %exception) #15, !dbg !2243
  %0 = load double, ptr %min, align 8, !dbg !2244, !tbaa !2245
  call void @llvm.dbg.value(metadata double %0, metadata !2231, metadata !DIExpression()), !dbg !2235
  %add = fadd double %0, %black_value, !dbg !2244
  call void @llvm.dbg.value(metadata double %add, metadata !2231, metadata !DIExpression()), !dbg !2235
  store double %add, ptr %min, align 8, !dbg !2244, !tbaa !2245
  %1 = load double, ptr %max, align 8, !dbg !2246, !tbaa !2245
  call void @llvm.dbg.value(metadata double %1, metadata !2232, metadata !DIExpression()), !dbg !2235
  %sub = fsub double %1, %white_value, !dbg !2246
  call void @llvm.dbg.value(metadata double %sub, metadata !2232, metadata !DIExpression()), !dbg !2235
  store double %sub, ptr %max, align 8, !dbg !2246, !tbaa !2245
  call void @llvm.dbg.value(metadata double %add, metadata !2231, metadata !DIExpression()), !dbg !2235
  %sub1 = fsub double %add, %sub, !dbg !2247
  %2 = call double @llvm.fabs.f64(double %sub1), !dbg !2249
  %cmp2 = fcmp ult double %2, 1.000000e-15, !dbg !2250
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2251

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @LevelImageChannel(ptr noundef %image, i32 noundef %channel, double noundef %add, double noundef %sub, double noundef 1.000000e+00) #15, !dbg !2252
  %and5 = and i32 %call4, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %and5, metadata !2233, metadata !DIExpression()), !dbg !2235
  br label %cleanup, !dbg !2254

if.end7:                                          ; preds = %entry
  %and8 = and i32 %channel, 1, !dbg !2255
  %cmp9.not = icmp eq i32 %and8, 0, !dbg !2257
  br i1 %cmp9.not, label %if.end21, label %if.then10, !dbg !2258

if.then10:                                        ; preds = %if.end7
  %exception11 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2259
  call void @llvm.dbg.value(metadata ptr %min, metadata !2231, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  call void @llvm.dbg.value(metadata ptr %max, metadata !2232, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %call12 = call i32 @GetImageChannelRange(ptr noundef %image, i32 noundef 1, ptr noundef nonnull %min, ptr noundef nonnull %max, ptr noundef nonnull %exception11) #15, !dbg !2261
  %3 = load double, ptr %min, align 8, !dbg !2262, !tbaa !2245
  call void @llvm.dbg.value(metadata double %3, metadata !2231, metadata !DIExpression()), !dbg !2235
  %add13 = fadd double %3, %black_value, !dbg !2262
  call void @llvm.dbg.value(metadata double %add13, metadata !2231, metadata !DIExpression()), !dbg !2235
  store double %add13, ptr %min, align 8, !dbg !2262, !tbaa !2245
  %4 = load double, ptr %max, align 8, !dbg !2263, !tbaa !2245
  call void @llvm.dbg.value(metadata double %4, metadata !2232, metadata !DIExpression()), !dbg !2235
  %sub14 = fsub double %4, %white_value, !dbg !2263
  call void @llvm.dbg.value(metadata double %sub14, metadata !2232, metadata !DIExpression()), !dbg !2235
  store double %sub14, ptr %max, align 8, !dbg !2263, !tbaa !2245
  call void @llvm.dbg.value(metadata double %add13, metadata !2231, metadata !DIExpression()), !dbg !2235
  %sub15 = fsub double %add13, %sub14, !dbg !2264
  %5 = call double @llvm.fabs.f64(double %sub15), !dbg !2266
  %cmp16 = fcmp ult double %5, 1.000000e-15, !dbg !2267
  br i1 %cmp16, label %if.end21, label %if.then17, !dbg !2268

if.then17:                                        ; preds = %if.then10
  %call18 = call i32 @LevelImageChannel(ptr noundef %image, i32 noundef 1, double noundef %add13, double noundef %sub14, double noundef 1.000000e+00) #15, !dbg !2269
  %and19 = and i32 %call18, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %and19, metadata !2233, metadata !DIExpression()), !dbg !2235
  br label %if.end21, !dbg !2271

if.end21:                                         ; preds = %if.then10, %if.then17, %if.end7
  %status.1 = phi i32 [ %and19, %if.then17 ], [ 1, %if.then10 ], [ 1, %if.end7 ], !dbg !2235
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !2233, metadata !DIExpression()), !dbg !2235
  %and22 = and i32 %channel, 2, !dbg !2272
  %cmp23.not = icmp eq i32 %and22, 0, !dbg !2274
  br i1 %cmp23.not, label %if.end35, label %if.then24, !dbg !2275

if.then24:                                        ; preds = %if.end21
  %exception25 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2276
  call void @llvm.dbg.value(metadata ptr %min, metadata !2231, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  call void @llvm.dbg.value(metadata ptr %max, metadata !2232, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %call26 = call i32 @GetImageChannelRange(ptr noundef %image, i32 noundef 2, ptr noundef nonnull %min, ptr noundef nonnull %max, ptr noundef nonnull %exception25) #15, !dbg !2278
  %6 = load double, ptr %min, align 8, !dbg !2279, !tbaa !2245
  call void @llvm.dbg.value(metadata double %6, metadata !2231, metadata !DIExpression()), !dbg !2235
  %add27 = fadd double %6, %black_value, !dbg !2279
  call void @llvm.dbg.value(metadata double %add27, metadata !2231, metadata !DIExpression()), !dbg !2235
  store double %add27, ptr %min, align 8, !dbg !2279, !tbaa !2245
  %7 = load double, ptr %max, align 8, !dbg !2280, !tbaa !2245
  call void @llvm.dbg.value(metadata double %7, metadata !2232, metadata !DIExpression()), !dbg !2235
  %sub28 = fsub double %7, %white_value, !dbg !2280
  call void @llvm.dbg.value(metadata double %sub28, metadata !2232, metadata !DIExpression()), !dbg !2235
  store double %sub28, ptr %max, align 8, !dbg !2280, !tbaa !2245
  call void @llvm.dbg.value(metadata double %add27, metadata !2231, metadata !DIExpression()), !dbg !2235
  %sub29 = fsub double %add27, %sub28, !dbg !2281
  %8 = call double @llvm.fabs.f64(double %sub29), !dbg !2283
  %cmp30 = fcmp ult double %8, 1.000000e-15, !dbg !2284
  br i1 %cmp30, label %if.end35, label %if.then31, !dbg !2285

if.then31:                                        ; preds = %if.then24
  %call32 = call i32 @LevelImageChannel(ptr noundef %image, i32 noundef 2, double noundef %add27, double noundef %sub28, double noundef 1.000000e+00) #15, !dbg !2286
  %and33 = and i32 %call32, %status.1, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %and33, metadata !2233, metadata !DIExpression()), !dbg !2235
  br label %if.end35, !dbg !2288

if.end35:                                         ; preds = %if.then24, %if.then31, %if.end21
  %status.2 = phi i32 [ %and33, %if.then31 ], [ %status.1, %if.then24 ], [ %status.1, %if.end21 ], !dbg !2235
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2233, metadata !DIExpression()), !dbg !2235
  %and36 = and i32 %channel, 4, !dbg !2289
  %cmp37.not = icmp eq i32 %and36, 0, !dbg !2291
  br i1 %cmp37.not, label %if.end49, label %if.then38, !dbg !2292

if.then38:                                        ; preds = %if.end35
  %exception39 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2293
  call void @llvm.dbg.value(metadata ptr %min, metadata !2231, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  call void @llvm.dbg.value(metadata ptr %max, metadata !2232, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %call40 = call i32 @GetImageChannelRange(ptr noundef %image, i32 noundef 4, ptr noundef nonnull %min, ptr noundef nonnull %max, ptr noundef nonnull %exception39) #15, !dbg !2295
  %9 = load double, ptr %min, align 8, !dbg !2296, !tbaa !2245
  call void @llvm.dbg.value(metadata double %9, metadata !2231, metadata !DIExpression()), !dbg !2235
  %add41 = fadd double %9, %black_value, !dbg !2296
  call void @llvm.dbg.value(metadata double %add41, metadata !2231, metadata !DIExpression()), !dbg !2235
  store double %add41, ptr %min, align 8, !dbg !2296, !tbaa !2245
  %10 = load double, ptr %max, align 8, !dbg !2297, !tbaa !2245
  call void @llvm.dbg.value(metadata double %10, metadata !2232, metadata !DIExpression()), !dbg !2235
  %sub42 = fsub double %10, %white_value, !dbg !2297
  call void @llvm.dbg.value(metadata double %sub42, metadata !2232, metadata !DIExpression()), !dbg !2235
  store double %sub42, ptr %max, align 8, !dbg !2297, !tbaa !2245
  call void @llvm.dbg.value(metadata double %add41, metadata !2231, metadata !DIExpression()), !dbg !2235
  %sub43 = fsub double %add41, %sub42, !dbg !2298
  %11 = call double @llvm.fabs.f64(double %sub43), !dbg !2300
  %cmp44 = fcmp ult double %11, 1.000000e-15, !dbg !2301
  br i1 %cmp44, label %if.end49, label %if.then45, !dbg !2302

if.then45:                                        ; preds = %if.then38
  %call46 = call i32 @LevelImageChannel(ptr noundef %image, i32 noundef 4, double noundef %add41, double noundef %sub42, double noundef 1.000000e+00) #15, !dbg !2303
  %and47 = and i32 %call46, %status.2, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %and47, metadata !2233, metadata !DIExpression()), !dbg !2235
  br label %if.end49, !dbg !2305

if.end49:                                         ; preds = %if.then38, %if.then45, %if.end35
  %status.3 = phi i32 [ %and47, %if.then45 ], [ %status.2, %if.then38 ], [ %status.2, %if.end35 ], !dbg !2235
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !2233, metadata !DIExpression()), !dbg !2235
  %and50 = and i32 %channel, 8, !dbg !2306
  %cmp51.not = icmp eq i32 %and50, 0, !dbg !2308
  br i1 %cmp51.not, label %if.end64, label %land.lhs.true, !dbg !2309

land.lhs.true:                                    ; preds = %if.end49
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2310
  %12 = load i32, ptr %matte, align 8, !dbg !2310, !tbaa !1234
  %cmp52.not = icmp eq i32 %12, 0, !dbg !2311
  br i1 %cmp52.not, label %if.end64, label %if.then53, !dbg !2312

if.then53:                                        ; preds = %land.lhs.true
  %exception54 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2313
  call void @llvm.dbg.value(metadata ptr %min, metadata !2231, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  call void @llvm.dbg.value(metadata ptr %max, metadata !2232, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %call55 = call i32 @GetImageChannelRange(ptr noundef nonnull %image, i32 noundef 8, ptr noundef nonnull %min, ptr noundef nonnull %max, ptr noundef nonnull %exception54) #15, !dbg !2315
  %13 = load double, ptr %min, align 8, !dbg !2316, !tbaa !2245
  call void @llvm.dbg.value(metadata double %13, metadata !2231, metadata !DIExpression()), !dbg !2235
  %add56 = fadd double %13, %black_value, !dbg !2316
  call void @llvm.dbg.value(metadata double %add56, metadata !2231, metadata !DIExpression()), !dbg !2235
  store double %add56, ptr %min, align 8, !dbg !2316, !tbaa !2245
  %14 = load double, ptr %max, align 8, !dbg !2317, !tbaa !2245
  call void @llvm.dbg.value(metadata double %14, metadata !2232, metadata !DIExpression()), !dbg !2235
  %sub57 = fsub double %14, %white_value, !dbg !2317
  call void @llvm.dbg.value(metadata double %sub57, metadata !2232, metadata !DIExpression()), !dbg !2235
  store double %sub57, ptr %max, align 8, !dbg !2317, !tbaa !2245
  call void @llvm.dbg.value(metadata double %add56, metadata !2231, metadata !DIExpression()), !dbg !2235
  %sub58 = fsub double %add56, %sub57, !dbg !2318
  %15 = call double @llvm.fabs.f64(double %sub58), !dbg !2320
  %cmp59 = fcmp ult double %15, 1.000000e-15, !dbg !2321
  br i1 %cmp59, label %if.end64, label %if.then60, !dbg !2322

if.then60:                                        ; preds = %if.then53
  %call61 = call i32 @LevelImageChannel(ptr noundef nonnull %image, i32 noundef 8, double noundef %add56, double noundef %sub57, double noundef 1.000000e+00) #15, !dbg !2323
  %and62 = and i32 %call61, %status.3, !dbg !2324
  call void @llvm.dbg.value(metadata i32 %and62, metadata !2233, metadata !DIExpression()), !dbg !2235
  br label %if.end64, !dbg !2325

if.end64:                                         ; preds = %if.then53, %if.then60, %land.lhs.true, %if.end49
  %status.4 = phi i32 [ %and62, %if.then60 ], [ %status.3, %if.then53 ], [ %status.3, %land.lhs.true ], [ %status.3, %if.end49 ], !dbg !2235
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2233, metadata !DIExpression()), !dbg !2235
  %and65 = and i32 %channel, 32, !dbg !2326
  %cmp66.not = icmp eq i32 %and65, 0, !dbg !2328
  br i1 %cmp66.not, label %if.end80, label %land.lhs.true67, !dbg !2329

land.lhs.true67:                                  ; preds = %if.end64
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2330
  %16 = load i32, ptr %colorspace, align 4, !dbg !2330, !tbaa !1116
  %cmp68 = icmp eq i32 %16, 12, !dbg !2331
  br i1 %cmp68, label %if.then69, label %if.end80, !dbg !2332

if.then69:                                        ; preds = %land.lhs.true67
  %exception70 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2333
  call void @llvm.dbg.value(metadata ptr %min, metadata !2231, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  call void @llvm.dbg.value(metadata ptr %max, metadata !2232, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %call71 = call i32 @GetImageChannelRange(ptr noundef nonnull %image, i32 noundef 32, ptr noundef nonnull %min, ptr noundef nonnull %max, ptr noundef nonnull %exception70) #15, !dbg !2335
  %17 = load double, ptr %min, align 8, !dbg !2336, !tbaa !2245
  call void @llvm.dbg.value(metadata double %17, metadata !2231, metadata !DIExpression()), !dbg !2235
  %add72 = fadd double %17, %black_value, !dbg !2336
  call void @llvm.dbg.value(metadata double %add72, metadata !2231, metadata !DIExpression()), !dbg !2235
  store double %add72, ptr %min, align 8, !dbg !2336, !tbaa !2245
  %18 = load double, ptr %max, align 8, !dbg !2337, !tbaa !2245
  call void @llvm.dbg.value(metadata double %18, metadata !2232, metadata !DIExpression()), !dbg !2235
  %sub73 = fsub double %18, %white_value, !dbg !2337
  call void @llvm.dbg.value(metadata double %sub73, metadata !2232, metadata !DIExpression()), !dbg !2235
  store double %sub73, ptr %max, align 8, !dbg !2337, !tbaa !2245
  call void @llvm.dbg.value(metadata double %add72, metadata !2231, metadata !DIExpression()), !dbg !2235
  %sub74 = fsub double %add72, %sub73, !dbg !2338
  %19 = call double @llvm.fabs.f64(double %sub74), !dbg !2340
  %cmp75 = fcmp ult double %19, 1.000000e-15, !dbg !2341
  br i1 %cmp75, label %if.end80, label %if.then76, !dbg !2342

if.then76:                                        ; preds = %if.then69
  %call77 = call i32 @LevelImageChannel(ptr noundef nonnull %image, i32 noundef 32, double noundef %add72, double noundef %sub73, double noundef 1.000000e+00) #15, !dbg !2343
  %and78 = and i32 %call77, %status.4, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %and78, metadata !2233, metadata !DIExpression()), !dbg !2235
  br label %if.end80, !dbg !2345

if.end80:                                         ; preds = %if.then69, %if.then76, %land.lhs.true67, %if.end64
  %status.5 = phi i32 [ %and78, %if.then76 ], [ %status.4, %if.then69 ], [ %status.4, %land.lhs.true67 ], [ %status.4, %if.end64 ], !dbg !2235
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !2233, metadata !DIExpression()), !dbg !2235
  %cmp81.not = icmp ne i32 %status.5, 0, !dbg !2346
  %cond82 = zext i1 %cmp81.not to i32, !dbg !2347
  br label %cleanup, !dbg !2348

cleanup:                                          ; preds = %if.then, %if.then3, %if.end80
  %retval.0 = phi i32 [ %cond82, %if.end80 ], [ %and5, %if.then3 ], [ 1, %if.then ], !dbg !2235
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max) #15, !dbg !2349
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min) #15, !dbg !2349
  ret i32 %retval.0, !dbg !2349
}

declare !dbg !2350 i32 @GetImageChannelRange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare !dbg !2355 i32 @LevelImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @GetNumberColors(ptr noundef %image, ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !2359 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %color = alloca [4096 x i8], align 16
  %hex = alloca [4096 x i8], align 16
  %tuple = alloca [4096 x i8], align 16
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %number_colors = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2363, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr %file, metadata !2364, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2365, metadata !DIExpression()), !dbg !2384
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %color) #15, !dbg !2385
  call void @llvm.dbg.declare(metadata ptr %color, metadata !2366, metadata !DIExpression()), !dbg !2386
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %hex) #15, !dbg !2385
  call void @llvm.dbg.declare(metadata ptr %hex, metadata !2367, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tuple) #15, !dbg !2385
  call void @llvm.dbg.declare(metadata ptr %tuple, metadata !2368, metadata !DIExpression()), !dbg !2388
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #15, !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !2371, metadata !DIExpression()), !dbg !2390
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_colors) #15, !dbg !2391
  call void @llvm.dbg.value(metadata i64 0, metadata !2374, metadata !DIExpression()), !dbg !2384
  store i64 0, ptr %number_colors, align 8, !dbg !2392, !tbaa !915
  %cmp = icmp eq ptr %file, null, !dbg !2393
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2394

if.then:                                          ; preds = %entry
  %call = tail call fastcc ptr @ClassifyImageColors(ptr noundef %image, ptr noundef %exception), !dbg !2395
  call void @llvm.dbg.value(metadata ptr %call, metadata !2375, metadata !DIExpression()), !dbg !2396
  %cmp1.not = icmp ne ptr %call, null, !dbg !2397
  call void @llvm.assume(i1 %cmp1.not), !dbg !2399
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 3, !dbg !2400
  %0 = load i64, ptr %colors, align 8, !dbg !2400, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %0, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr %image, metadata !943, metadata !DIExpression()) #15, !dbg !2401
  call void @llvm.dbg.value(metadata ptr %call, metadata !948, metadata !DIExpression()) #15, !dbg !2401
  %1 = load ptr, ptr %call, align 8, !dbg !2403, !tbaa !940
  tail call fastcc void @DestroyColorCube(ptr noundef %image, ptr noundef %1) #15, !dbg !2404
  %node_queue.i = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 6
  %.pre.i89 = load ptr, ptr %node_queue.i, align 8, !dbg !2405, !tbaa !956
  br label %do.body.i93, !dbg !2406

do.body.i93:                                      ; preds = %do.body.i93, %if.then
  %2 = phi ptr [ %3, %do.body.i93 ], [ %.pre.i89, %if.then ], !dbg !2405
  %next.i90 = getelementptr inbounds %struct._Nodes, ptr %2, i64 0, i32 1, !dbg !2407
  %3 = load ptr, ptr %next.i90, align 8, !dbg !2407, !tbaa !959
  call void @llvm.dbg.value(metadata ptr %3, metadata !949, metadata !DIExpression()) #15, !dbg !2401
  %call.i91 = tail call ptr @RelinquishMagickMemory(ptr noundef %2) #15, !dbg !2408
  store ptr %3, ptr %node_queue.i, align 8, !dbg !2409, !tbaa !956
  %cmp.not.i92 = icmp eq ptr %3, null, !dbg !2410
  br i1 %cmp.not.i92, label %DestroyCubeInfo.exit95, label %do.body.i93, !dbg !2411, !llvm.loop !2412

DestroyCubeInfo.exit95:                           ; preds = %do.body.i93
  %call5.i94 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #15, !dbg !2414
  call void @llvm.dbg.value(metadata ptr undef, metadata !2375, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 %0, metadata !2374, metadata !DIExpression()), !dbg !2384
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %number_colors, metadata !2374, metadata !DIExpression(DW_OP_deref)), !dbg !2384
  %call5 = call ptr @GetImageHistogram(ptr noundef %image, ptr noundef nonnull %number_colors, ptr noundef %exception), !dbg !2415
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2369, metadata !DIExpression()), !dbg !2384
  %cmp6 = icmp eq ptr %call5, null, !dbg !2416
  %4 = load i64, ptr %number_colors, align 8, !dbg !2384, !tbaa !915
  call void @llvm.dbg.value(metadata i64 %4, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %4, metadata !2374, metadata !DIExpression()), !dbg !2384
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !2418

if.end8:                                          ; preds = %if.end4
  tail call void @qsort(ptr noundef nonnull %call5, i64 noundef %4, i64 noundef 24, ptr noundef nonnull @HistogramCompare) #15, !dbg !2419
  call void @GetMagickPixelPacket(ptr noundef %image, ptr noundef nonnull %pixel) #15, !dbg !2420
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2372, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 1, metadata !2370, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %4, metadata !2374, metadata !DIExpression()), !dbg !2384
  %cmp998 = icmp sgt i64 %4, 0, !dbg !2421
  br i1 %cmp998, label %for.body.lr.ph, label %for.end, !dbg !2422

for.body.lr.ph:                                   ; preds = %if.end8
  %5 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1
  %matte = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 2
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2422

for.body:                                         ; preds = %for.body.lr.ph, %if.end49
  %i.0101 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end49 ]
  %p.0100 = phi ptr [ %call5, %for.body.lr.ph ], [ %incdec.ptr, %if.end49 ]
  %status.099 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %if.end49 ]
  call void @llvm.dbg.value(metadata i64 %i.0101, metadata !2373, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr %p.0100, metadata !2372, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 %status.099, metadata !2370, metadata !DIExpression()), !dbg !2384
  %image.val = load i32, ptr %5, align 4, !dbg !2423, !tbaa !1116
  call void @llvm.dbg.value(metadata ptr undef, metadata !1124, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %p.0100, metadata !1131, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %p.0100, metadata !1132, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1133, metadata !DIExpression()), !dbg !2424
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0100, i64 0, i32 2, !dbg !2426
  %6 = load i16, ptr %red.i, align 2, !dbg !2426, !tbaa !1137
  %conv.i = uitofp i16 %6 to float, !dbg !2427
  store float %conv.i, ptr %red1.i, align 8, !dbg !2428, !tbaa !1140
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0100, i64 0, i32 1, !dbg !2429
  %7 = load i16, ptr %green.i, align 2, !dbg !2429, !tbaa !1142
  %conv2.i = uitofp i16 %7 to float, !dbg !2430
  store float %conv2.i, ptr %green3.i, align 4, !dbg !2431, !tbaa !1145
  %8 = load i16, ptr %p.0100, align 2, !dbg !2432, !tbaa !1147
  %conv4.i = uitofp i16 %8 to float, !dbg !2433
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !2434, !tbaa !1150
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0100, i64 0, i32 3, !dbg !2435
  %9 = load i16, ptr %opacity.i, align 2, !dbg !2435, !tbaa !1152
  %conv6.i = uitofp i16 %9 to float, !dbg !2436
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !2437, !tbaa !1155
  %cmp.i = icmp eq i32 %image.val, 12, !dbg !2438
  br i1 %cmp.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !2439

cond.end.i:                                       ; preds = %for.body
  %index = getelementptr inbounds %struct._ColorPacket, ptr %p.0100, i64 0, i32 1, !dbg !2440
  call void @llvm.dbg.value(metadata ptr %index, metadata !1132, metadata !DIExpression()), !dbg !2424
  %10 = load i16, ptr %index, align 2, !dbg !2441, !tbaa !1160
  %conv14.i = uitofp i16 %10 to float, !dbg !2442
  store float %conv14.i, ptr %index15.i, align 8, !dbg !2443, !tbaa !1120
  br label %SetMagickPixelPacket.exit, !dbg !2444

SetMagickPixelPacket.exit:                        ; preds = %for.body, %cond.end.i
  %call11 = call i64 @CopyMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.5, i64 noundef 4096) #15, !dbg !2445
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tuple) #15, !dbg !2446
  %call14 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.6, i64 noundef 4096) #15, !dbg !2447
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tuple) #15, !dbg !2448
  %call17 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.6, i64 noundef 4096) #15, !dbg !2449
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tuple) #15, !dbg !2450
  %11 = load i32, ptr %colorspace, align 4, !dbg !2451, !tbaa !2453
  %cmp19 = icmp eq i32 %11, 12, !dbg !2454
  br i1 %cmp19, label %if.then20, label %if.end24, !dbg !2455

if.then20:                                        ; preds = %SetMagickPixelPacket.exit
  %call22 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.6, i64 noundef 4096) #15, !dbg !2456
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %tuple) #15, !dbg !2458
  br label %if.end24, !dbg !2459

if.end24:                                         ; preds = %if.then20, %SetMagickPixelPacket.exit
  %12 = load i32, ptr %matte, align 8, !dbg !2460, !tbaa !1117
  %cmp25.not = icmp eq i32 %12, 0, !dbg !2462
  br i1 %cmp25.not, label %if.end30, label %if.then26, !dbg !2463

if.then26:                                        ; preds = %if.end24
  %call28 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.6, i64 noundef 4096) #15, !dbg !2464
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %tuple) #15, !dbg !2466
  br label %if.end30, !dbg !2467

if.end30:                                         ; preds = %if.then26, %if.end24
  %call32 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.7, i64 noundef 4096) #15, !dbg !2468
  %call34 = call i32 @QueryMagickColorname(ptr noundef nonnull %image, ptr noundef nonnull %pixel, i32 noundef 1, ptr noundef nonnull %color, ptr noundef %exception) #15, !dbg !2469
  call void @GetColorTuple(ptr noundef nonnull %pixel, i32 noundef 1, ptr noundef nonnull %hex) #15, !dbg !2470
  %count = getelementptr inbounds %struct._ColorPacket, ptr %p.0100, i64 0, i32 2, !dbg !2471
  %13 = load i64, ptr %count, align 8, !dbg !2471, !tbaa !1400
  %conv = sitofp i64 %13 to double, !dbg !2472
  %call36 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %file, ptr noundef nonnull @.str.8, double noundef %conv) #15, !dbg !2473
  %call40 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %file, ptr noundef nonnull @.str.9, ptr noundef nonnull %tuple, ptr noundef nonnull %hex, ptr noundef nonnull %color) #15, !dbg !2474
  %14 = load ptr, ptr %progress_monitor, align 8, !dbg !2475, !tbaa !1425
  %cmp41.not = icmp eq ptr %14, null, !dbg !2476
  br i1 %cmp41.not, label %if.end49, label %SetImageProgress.exit, !dbg !2477

SetImageProgress.exit:                            ; preds = %if.end30
  call void @llvm.dbg.value(metadata i64 %4, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr %image, metadata !1409, metadata !DIExpression()) #15, !dbg !2478
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !1415, metadata !DIExpression()) #15, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %i.0101, metadata !1416, metadata !DIExpression()) #15, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %4, metadata !1417, metadata !DIExpression()) #15, !dbg !2478
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #15, !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1418, metadata !DIExpression()) #15, !dbg !2481
  %call.i97 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename.i) #15, !dbg !2482
  %15 = load ptr, ptr %progress_monitor, align 8, !dbg !2483, !tbaa !1425
  %16 = load ptr, ptr %client_data.i, align 8, !dbg !2484, !tbaa !1433
  %call4.i = call i32 %15(ptr noundef nonnull %message.i, i64 noundef %i.0101, i64 noundef %4, ptr noundef %16) #15, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #15, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2378, metadata !DIExpression()), !dbg !2487
  %cmp45 = icmp eq i32 %call4.i, 0, !dbg !2488
  %spec.select = select i1 %cmp45, i32 0, i32 %status.099, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2370, metadata !DIExpression()), !dbg !2384
  br label %if.end49, !dbg !2491

if.end49:                                         ; preds = %SetImageProgress.exit, %if.end30
  %status.2 = phi i32 [ %spec.select, %SetImageProgress.exit ], [ %status.099, %if.end30 ], !dbg !2384
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2370, metadata !DIExpression()), !dbg !2384
  %incdec.ptr = getelementptr inbounds %struct._ColorPacket, ptr %p.0100, i64 1, !dbg !2492
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2372, metadata !DIExpression()), !dbg !2384
  %inc = add nuw nsw i64 %i.0101, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2373, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %4, metadata !2374, metadata !DIExpression()), !dbg !2384
  %exitcond.not = icmp eq i64 %inc, %4, !dbg !2421
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2422, !llvm.loop !2494

for.end:                                          ; preds = %if.end49, %if.end8
  %status.0.lcssa = phi i32 [ 1, %if.end8 ], [ %status.2, %if.end49 ], !dbg !2384
  %call50 = call i32 @fflush(ptr noundef nonnull %file), !dbg !2496
  %call51 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call5) #15, !dbg !2497
  call void @llvm.dbg.value(metadata ptr %call51, metadata !2369, metadata !DIExpression()), !dbg !2384
  %cmp52 = icmp eq i32 %status.0.lcssa, 0, !dbg !2498
  %spec.select103 = select i1 %cmp52, i64 0, i64 %4, !dbg !2500
  br label %cleanup, !dbg !2500

cleanup:                                          ; preds = %for.end, %if.end4, %DestroyCubeInfo.exit95
  %retval.0 = phi i64 [ %0, %DestroyCubeInfo.exit95 ], [ %4, %if.end4 ], [ %spec.select103, %for.end ], !dbg !2384
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_colors) #15, !dbg !2501
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #15, !dbg !2501
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tuple) #15, !dbg !2501
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %hex) #15, !dbg !2501
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %color) #15, !dbg !2501
  ret i64 %retval.0, !dbg !2501
}

; Function Attrs: nofree
declare !dbg !2502 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @HistogramCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #10 !dbg !2510 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !2512, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %y, metadata !2513, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %x, metadata !2514, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata ptr %y, metadata !2515, metadata !DIExpression()), !dbg !2516
  %red = getelementptr inbounds %struct._PixelPacket, ptr %y, i64 0, i32 2, !dbg !2517
  %0 = load i16, ptr %red, align 4, !dbg !2517, !tbaa !2519
  %red2 = getelementptr inbounds %struct._PixelPacket, ptr %x, i64 0, i32 2, !dbg !2520
  %1 = load i16, ptr %red2, align 4, !dbg !2520, !tbaa !2519
  %cmp.not = icmp eq i16 %1, %0, !dbg !2521
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2522

if.then:                                          ; preds = %entry
  %conv = zext i16 %0 to i32, !dbg !2523
  %conv3 = zext i16 %1 to i32, !dbg !2524
  %sub = sub nsw i32 %conv3, %conv, !dbg !2525
  br label %cleanup, !dbg !2526

if.end:                                           ; preds = %entry
  %green = getelementptr inbounds %struct._PixelPacket, ptr %y, i64 0, i32 1, !dbg !2527
  %2 = load i16, ptr %green, align 2, !dbg !2527, !tbaa !2529
  %green14 = getelementptr inbounds %struct._PixelPacket, ptr %x, i64 0, i32 1, !dbg !2530
  %3 = load i16, ptr %green14, align 2, !dbg !2530, !tbaa !2529
  %cmp16.not = icmp eq i16 %3, %2, !dbg !2531
  br i1 %cmp16.not, label %if.end26, label %if.then18, !dbg !2532

if.then18:                                        ; preds = %if.end
  %conv12 = zext i16 %2 to i32, !dbg !2533
  %conv15 = zext i16 %3 to i32, !dbg !2534
  %sub25 = sub nsw i32 %conv15, %conv12, !dbg !2535
  br label %cleanup, !dbg !2536

if.end26:                                         ; preds = %if.end
  %4 = load i16, ptr %y, align 8, !dbg !2537, !tbaa !2539
  %5 = load i16, ptr %x, align 8, !dbg !2540, !tbaa !2539
  %cmp32.not = icmp eq i16 %5, %4, !dbg !2541
  br i1 %cmp32.not, label %if.end42, label %if.then34, !dbg !2542

if.then34:                                        ; preds = %if.end26
  %conv28 = zext i16 %4 to i32, !dbg !2543
  %conv31 = zext i16 %5 to i32, !dbg !2544
  %sub41 = sub nsw i32 %conv31, %conv28, !dbg !2545
  br label %cleanup, !dbg !2546

if.end42:                                         ; preds = %if.end26
  %count = getelementptr inbounds %struct._ColorPacket, ptr %y, i64 0, i32 2, !dbg !2547
  %6 = load i64, ptr %count, align 8, !dbg !2547, !tbaa !1400
  %conv43 = trunc i64 %6 to i32, !dbg !2548
  %count44 = getelementptr inbounds %struct._ColorPacket, ptr %x, i64 0, i32 2, !dbg !2549
  %7 = load i64, ptr %count44, align 8, !dbg !2549, !tbaa !1400
  %conv45 = trunc i64 %7 to i32, !dbg !2550
  %sub46 = sub nsw i32 %conv43, %conv45, !dbg !2551
  br label %cleanup, !dbg !2552

cleanup:                                          ; preds = %if.end42, %if.then34, %if.then18, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub25, %if.then18 ], [ %sub41, %if.then34 ], [ %sub46, %if.end42 ], !dbg !2516
  ret i32 %retval.0, !dbg !2553
}

declare !dbg !2554 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2558 void @ConcatenateColorComponent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2563 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2564 i32 @QueryMagickColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2567 void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2571 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %image, ptr noundef %tag, i64 noundef %offset, i64 noundef %extent) unnamed_addr #11 !dbg !1410 {
entry:
  %message = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1409, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %tag, metadata !1415, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1416, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1417, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message) #15, !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %message, metadata !1418, metadata !DIExpression()), !dbg !2578
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47, !dbg !2579
  %0 = load ptr, ptr %progress_monitor, align 8, !dbg !2579, !tbaa !1425
  %cmp = icmp eq ptr %0, null, !dbg !2580
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2581

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2582
  %call = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %tag, ptr noundef nonnull %filename) #15, !dbg !2583
  %1 = load ptr, ptr %progress_monitor, align 8, !dbg !2584, !tbaa !1425
  %client_data = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !2585
  %2 = load ptr, ptr %client_data, align 8, !dbg !2585, !tbaa !1433
  %call4 = call i32 %1(ptr noundef nonnull %message, i64 noundef %offset, i64 noundef %extent, ptr noundef %2) #15, !dbg !2586
  br label %cleanup, !dbg !2587

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 1, %entry ], !dbg !2576
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message) #15, !dbg !2588
  ret i32 %retval.0, !dbg !2588
}

; Function Attrs: nofree nounwind
declare !dbg !2589 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #12

declare !dbg !2592 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @UniqueImageColors(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !2595 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2599, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2600, metadata !DIExpression()), !dbg !2619
  %call = tail call fastcc ptr @ClassifyImageColors(ptr noundef %image, ptr noundef %exception), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %call, metadata !2602, metadata !DIExpression()), !dbg !2619
  %cmp = icmp eq ptr %call, null, !dbg !2621
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2623

if.end:                                           ; preds = %entry
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 3, !dbg !2624
  %0 = load i64, ptr %colors, align 8, !dbg !2624, !tbaa !923
  %call1 = tail call ptr @CloneImage(ptr noundef %image, i64 noundef %0, i64 noundef 1, i32 noundef 1, ptr noundef %exception) #15, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2603, metadata !DIExpression()), !dbg !2619
  %cmp2 = icmp eq ptr %call1, null, !dbg !2626
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !2628

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call1, i32 noundef 1) #15, !dbg !2629
  %cmp6 = icmp eq i32 %call5, 0, !dbg !2631
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !2632

if.then7:                                         ; preds = %if.end4
  %exception8 = getelementptr inbounds %struct._Image, ptr %call1, i64 0, i32 58, !dbg !2633
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception8) #15, !dbg !2635
  %call9 = tail call ptr @DestroyImage(ptr noundef nonnull %call1) #15, !dbg !2636
  call void @llvm.dbg.value(metadata ptr %call9, metadata !2603, metadata !DIExpression()), !dbg !2619
  br label %cleanup, !dbg !2637

if.end10:                                         ; preds = %if.end4
  %call11 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call1, ptr noundef %exception) #15, !dbg !2638
  call void @llvm.dbg.value(metadata ptr %call11, metadata !2601, metadata !DIExpression()), !dbg !2619
  %1 = load ptr, ptr %call, align 8, !dbg !2639, !tbaa !940
  tail call fastcc void @UniqueColorsToImage(ptr noundef nonnull %call1, ptr noundef %call11, ptr noundef nonnull %call, ptr noundef %1, ptr noundef %exception), !dbg !2640
  %call12 = tail call ptr @DestroyCacheView(ptr noundef %call11) #15, !dbg !2641
  call void @llvm.dbg.value(metadata ptr %call12, metadata !2601, metadata !DIExpression()), !dbg !2619
  %2 = load i64, ptr %colors, align 8, !dbg !2642, !tbaa !923
  %cmp14 = icmp ult i64 %2, 65536, !dbg !2643
  br i1 %cmp14, label %if.then15, label %if.end19, !dbg !2644

if.then15:                                        ; preds = %if.end10
  %call16 = tail call ptr @AcquireQuantizeInfo(ptr noundef null) #15, !dbg !2645
  call void @llvm.dbg.value(metadata ptr %call16, metadata !2604, metadata !DIExpression()), !dbg !2646
  store i64 65536, ptr %call16, align 8, !dbg !2647, !tbaa !2648
  %dither = getelementptr inbounds %struct._QuantizeInfo, ptr %call16, i64 0, i32 2, !dbg !2650
  store i32 0, ptr %dither, align 8, !dbg !2651, !tbaa !2652
  %tree_depth = getelementptr inbounds %struct._QuantizeInfo, ptr %call16, i64 0, i32 1, !dbg !2653
  store i64 8, ptr %tree_depth, align 8, !dbg !2654, !tbaa !2655
  %call17 = tail call i32 @QuantizeImage(ptr noundef nonnull %call16, ptr noundef nonnull %call1) #15, !dbg !2656
  %call18 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %call16) #15, !dbg !2657
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2604, metadata !DIExpression()), !dbg !2646
  br label %if.end19, !dbg !2658

if.end19:                                         ; preds = %if.then15, %if.end10
  call void @llvm.dbg.value(metadata ptr %image, metadata !943, metadata !DIExpression()) #15, !dbg !2659
  call void @llvm.dbg.value(metadata ptr %call, metadata !948, metadata !DIExpression()) #15, !dbg !2659
  %3 = load ptr, ptr %call, align 8, !dbg !2661, !tbaa !940
  tail call fastcc void @DestroyColorCube(ptr noundef %image, ptr noundef %3) #15, !dbg !2662
  %node_queue.i = getelementptr inbounds %struct._CubeInfo, ptr %call, i64 0, i32 6
  %.pre.i = load ptr, ptr %node_queue.i, align 8, !dbg !2663, !tbaa !956
  br label %do.body.i, !dbg !2664

do.body.i:                                        ; preds = %do.body.i, %if.end19
  %4 = phi ptr [ %5, %do.body.i ], [ %.pre.i, %if.end19 ], !dbg !2663
  %next.i = getelementptr inbounds %struct._Nodes, ptr %4, i64 0, i32 1, !dbg !2665
  %5 = load ptr, ptr %next.i, align 8, !dbg !2665, !tbaa !959
  call void @llvm.dbg.value(metadata ptr %5, metadata !949, metadata !DIExpression()) #15, !dbg !2659
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef %4) #15, !dbg !2666
  store ptr %5, ptr %node_queue.i, align 8, !dbg !2667, !tbaa !956
  %cmp.not.i = icmp eq ptr %5, null, !dbg !2668
  br i1 %cmp.not.i, label %DestroyCubeInfo.exit, label %do.body.i, !dbg !2669, !llvm.loop !2670

DestroyCubeInfo.exit:                             ; preds = %do.body.i
  %call5.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #15, !dbg !2672
  call void @llvm.dbg.value(metadata ptr undef, metadata !2602, metadata !DIExpression()), !dbg !2619
  br label %cleanup, !dbg !2673

cleanup:                                          ; preds = %if.end, %entry, %DestroyCubeInfo.exit, %if.then7
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call1, %DestroyCubeInfo.exit ], [ null, %entry ], [ null, %if.end ], !dbg !2619
  ret ptr %retval.0, !dbg !2674
}

declare !dbg !2675 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2678 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2682 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2687 ptr @DestroyImage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @UniqueColorsToImage(ptr noundef %unique_image, ptr noundef %unique_view, ptr nocapture noundef %cube_info, ptr nocapture noundef readonly %node_info, ptr noundef %exception) unnamed_addr #0 !dbg !2690 {
entry:
  call void @llvm.dbg.value(metadata ptr %unique_image, metadata !2696, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %unique_view, metadata !2697, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %cube_info, metadata !2698, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !2699, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2700, metadata !DIExpression()), !dbg !2715
  %matte = getelementptr inbounds %struct._Image, ptr %unique_image, i64 0, i32 6, !dbg !2716
  %0 = load i32, ptr %matte, align 8, !dbg !2716, !tbaa !1234
  %cmp = icmp eq i32 %0, 0, !dbg !2717
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %cond, metadata !2703, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 0, metadata !2702, metadata !DIExpression()), !dbg !2715
  br label %for.body, !dbg !2719

for.body:                                         ; preds = %entry, %for.inc
  %i.073 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.073, metadata !2702, metadata !DIExpression()), !dbg !2715
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %node_info, i64 0, i64 %i.073, !dbg !2721
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !2721, !tbaa !938
  %cmp2.not = icmp eq ptr %1, null, !dbg !2724
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !2725

if.then:                                          ; preds = %for.body
  tail call fastcc void @UniqueColorsToImage(ptr noundef %unique_image, ptr noundef %unique_view, ptr noundef %cube_info, ptr noundef nonnull %1, ptr noundef %exception), !dbg !2726
  br label %for.inc, !dbg !2726

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.073, 1, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2702, metadata !DIExpression()), !dbg !2715
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !2728
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2719, !llvm.loop !2729

for.end:                                          ; preds = %for.inc
  %level = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 3, !dbg !2731
  %2 = load i64, ptr %level, align 8, !dbg !2731, !tbaa !1082
  %cmp5 = icmp eq i64 %2, 7, !dbg !2732
  br i1 %cmp5, label %if.then6, label %cleanup41, !dbg !2733

if.then6:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 1, metadata !2701, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr undef, metadata !2704, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 0, metadata !2702, metadata !DIExpression()), !dbg !2715
  %number_unique = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2702, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr undef, metadata !2704, metadata !DIExpression()), !dbg !2734
  %3 = load i64, ptr %number_unique, align 8, !dbg !2735, !tbaa !1110
  %cmp874 = icmp sgt i64 %3, 0, !dbg !2738
  br i1 %cmp874, label %for.body9.lr.ph, label %for.end25, !dbg !2739

for.body9.lr.ph:                                  ; preds = %if.then6
  %list = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, !dbg !2740
  %4 = load ptr, ptr %list, align 8, !dbg !2740, !tbaa !1115
  call void @llvm.dbg.value(metadata ptr %4, metadata !2704, metadata !DIExpression()), !dbg !2734
  %x = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 1
  %colorspace = getelementptr inbounds %struct._Image, ptr %unique_image, i64 0, i32 1
  br label %for.body9, !dbg !2739

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc23
  %i.176 = phi i64 [ 0, %for.body9.lr.ph ], [ %inc24, %for.inc23 ]
  %p.075 = phi ptr [ %4, %for.body9.lr.ph ], [ %p.1, %for.inc23 ]
  call void @llvm.dbg.value(metadata i64 %i.176, metadata !2702, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %p.075, metadata !2704, metadata !DIExpression()), !dbg !2734
  %5 = load i64, ptr %x, align 8, !dbg !2741, !tbaa !2743
  %call = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %unique_view, i64 noundef %5, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #17, !dbg !2744
  call void @llvm.dbg.value(metadata ptr %call, metadata !2710, metadata !DIExpression()), !dbg !2734
  %cmp10 = icmp eq ptr %call, null, !dbg !2745
  br i1 %cmp10, label %for.inc23, label %if.end12, !dbg !2747

if.end12:                                         ; preds = %for.body9
  %call13 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %unique_view) #15, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2707, metadata !DIExpression()), !dbg !2734
  %6 = load i64, ptr %p.075, align 8, !dbg !2749
  store i64 %6, ptr %call, align 2, !dbg !2749
  %7 = load i32, ptr %colorspace, align 4, !dbg !2750, !tbaa !1116
  %cmp14 = icmp eq i32 %7, 12, !dbg !2752
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2753

if.then15:                                        ; preds = %if.end12
  %index = getelementptr inbounds %struct._ColorPacket, ptr %p.075, i64 0, i32 1, !dbg !2754
  %8 = load i16, ptr %index, align 8, !dbg !2754, !tbaa !1395
  store i16 %8, ptr %call13, align 2, !dbg !2755, !tbaa !1160
  br label %if.end16, !dbg !2756

if.end16:                                         ; preds = %if.then15, %if.end12
  %call17 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %unique_view, ptr noundef %exception) #17, !dbg !2757
  %cmp18 = icmp eq i32 %call17, 0, !dbg !2759
  br i1 %cmp18, label %for.end25, label %if.end20, !dbg !2760

if.end20:                                         ; preds = %if.end16
  %9 = load i64, ptr %x, align 8, !dbg !2761, !tbaa !2743
  %inc22 = add nsw i64 %9, 1, !dbg !2761
  store i64 %inc22, ptr %x, align 8, !dbg !2761, !tbaa !2743
  %incdec.ptr = getelementptr inbounds %struct._ColorPacket, ptr %p.075, i64 1, !dbg !2762
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2704, metadata !DIExpression()), !dbg !2734
  br label %for.inc23, !dbg !2763

for.inc23:                                        ; preds = %for.body9, %if.end20
  %p.1 = phi ptr [ %p.075, %for.body9 ], [ %incdec.ptr, %if.end20 ], !dbg !2734
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2704, metadata !DIExpression()), !dbg !2734
  %inc24 = add nuw nsw i64 %i.176, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %inc24, metadata !2702, metadata !DIExpression()), !dbg !2715
  %10 = load i64, ptr %number_unique, align 8, !dbg !2735, !tbaa !1110
  %cmp8 = icmp slt i64 %inc24, %10, !dbg !2738
  br i1 %cmp8, label %for.body9, label %for.end25, !dbg !2739, !llvm.loop !2765

for.end25:                                        ; preds = %for.inc23, %if.end16, %if.then6
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %unique_image, i64 0, i32 47, !dbg !2767
  %11 = load ptr, ptr %progress_monitor, align 8, !dbg !2767, !tbaa !1425
  %cmp26.not = icmp eq ptr %11, null, !dbg !2768
  br i1 %cmp26.not, label %if.end32, label %if.then27, !dbg !2769

if.then27:                                        ; preds = %for.end25
  %progress = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 2, !dbg !2770
  %12 = load i64, ptr %progress, align 8, !dbg !2770, !tbaa !2771
  %colors = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 3, !dbg !2772
  %13 = load i64, ptr %colors, align 8, !dbg !2772, !tbaa !923
  %call28 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %unique_image, ptr noundef nonnull @.str.13, i64 noundef %12, i64 noundef %13), !dbg !2773
  call void @llvm.dbg.value(metadata i32 %call28, metadata !2712, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 undef, metadata !2701, metadata !DIExpression()), !dbg !2715
  br label %if.end32, !dbg !2775

if.end32:                                         ; preds = %if.then27, %for.end25
  call void @llvm.dbg.value(metadata i32 undef, metadata !2701, metadata !DIExpression()), !dbg !2715
  %progress33 = getelementptr inbounds %struct._CubeInfo, ptr %cube_info, i64 0, i32 2, !dbg !2776
  %14 = load i64, ptr %progress33, align 8, !dbg !2777, !tbaa !2771
  %inc34 = add nsw i64 %14, 1, !dbg !2777
  store i64 %inc34, ptr %progress33, align 8, !dbg !2777, !tbaa !2771
  br label %cleanup41

cleanup41:                                        ; preds = %if.end32, %for.end
  ret void, !dbg !2778
}

declare !dbg !2779 ptr @AcquireQuantizeInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !2784 i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2789 ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @DestroyColorCube(ptr nocapture noundef readonly %image, ptr nocapture noundef %node_info) unnamed_addr #0 !dbg !2792 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2796, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %node_info, metadata !2797, metadata !DIExpression()), !dbg !2800
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2801
  %0 = load i32, ptr %matte, align 8, !dbg !2801, !tbaa !1234
  %cmp = icmp eq i32 %0, 0, !dbg !2802
  %cond = select i1 %cmp, i64 8, i64 16, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %cond, metadata !2799, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 0, metadata !2798, metadata !DIExpression()), !dbg !2800
  br label %for.body, !dbg !2804

for.body:                                         ; preds = %entry, %for.inc
  %i.019 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.019, metadata !2798, metadata !DIExpression()), !dbg !2800
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %node_info, i64 0, i64 %i.019, !dbg !2806
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !2806, !tbaa !938
  %cmp2.not = icmp eq ptr %1, null, !dbg !2809
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !2810

if.then:                                          ; preds = %for.body
  tail call fastcc void @DestroyColorCube(ptr noundef %image, ptr noundef nonnull %1), !dbg !2811
  br label %for.inc, !dbg !2811

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.019, 1, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2798, metadata !DIExpression()), !dbg !2800
  %exitcond.not = icmp eq i64 %inc, %cond, !dbg !2813
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2804, !llvm.loop !2814

for.end:                                          ; preds = %for.inc
  %list = getelementptr inbounds %struct._NodeInfo, ptr %node_info, i64 0, i32 1, !dbg !2816
  %2 = load ptr, ptr %list, align 8, !dbg !2816, !tbaa !1115
  %cmp5.not = icmp eq ptr %2, null, !dbg !2818
  br i1 %cmp5.not, label %if.end9, label %if.then6, !dbg !2819

if.then6:                                         ; preds = %for.end
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %2) #15, !dbg !2820
  store ptr %call, ptr %list, align 8, !dbg !2821, !tbaa !1115
  br label %if.end9, !dbg !2822

if.end9:                                          ; preds = %if.then6, %for.end
  ret void, !dbg !2823
}

declare !dbg !2824 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2827 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !2831 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !2834 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !2837 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(1,2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { hot nounwind }
attributes #18 = { nounwind allocsize(1,2) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!890, !891, !892, !893, !894, !895}
!llvm.ident = !{!896}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !485, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/histogram.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "192f1c1d25bbae3b61876438f2ce56cf")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !393, !415, !424, !431, !464}
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
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !369, line: 34, baseType: !5, size: 32, elements: !370)
!369 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!371 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!372 = !DIEnumerator(name: "NoEvents", value: 0)
!373 = !DIEnumerator(name: "TraceEvent", value: 1)
!374 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!375 = !DIEnumerator(name: "BlobEvent", value: 4)
!376 = !DIEnumerator(name: "CacheEvent", value: 8)
!377 = !DIEnumerator(name: "CoderEvent", value: 16)
!378 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!379 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!380 = !DIEnumerator(name: "DrawEvent", value: 128)
!381 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!382 = !DIEnumerator(name: "ImageEvent", value: 512)
!383 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!384 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!385 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!386 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!387 = !DIEnumerator(name: "TransformEvent", value: 16384)
!388 = !DIEnumerator(name: "UserEvent", value: 36864)
!389 = !DIEnumerator(name: "WandEvent", value: 65536)
!390 = !DIEnumerator(name: "X11Event", value: 131072)
!391 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!392 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!395 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!396 = !DIEnumerator(name: "RedChannel", value: 1)
!397 = !DIEnumerator(name: "GrayChannel", value: 1)
!398 = !DIEnumerator(name: "CyanChannel", value: 1)
!399 = !DIEnumerator(name: "GreenChannel", value: 2)
!400 = !DIEnumerator(name: "MagentaChannel", value: 2)
!401 = !DIEnumerator(name: "BlueChannel", value: 4)
!402 = !DIEnumerator(name: "YellowChannel", value: 4)
!403 = !DIEnumerator(name: "AlphaChannel", value: 8)
!404 = !DIEnumerator(name: "OpacityChannel", value: 8)
!405 = !DIEnumerator(name: "MatteChannel", value: 8)
!406 = !DIEnumerator(name: "BlackChannel", value: 32)
!407 = !DIEnumerator(name: "IndexChannel", value: 32)
!408 = !DIEnumerator(name: "CompositeChannels", value: 47)
!409 = !DIEnumerator(name: "AllChannels", value: 134217727)
!410 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!411 = !DIEnumerator(name: "RGBChannels", value: 128)
!412 = !DIEnumerator(name: "GrayChannels", value: 128)
!413 = !DIEnumerator(name: "SyncChannels", value: 256)
!414 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!415 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !416, line: 28, baseType: !5, size: 32, elements: !417)
!416 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!417 = !{!418, !419, !420, !421, !422, !423}
!418 = !DIEnumerator(name: "UndefinedCompliance", value: 0)
!419 = !DIEnumerator(name: "NoCompliance", value: 0)
!420 = !DIEnumerator(name: "SVGCompliance", value: 1)
!421 = !DIEnumerator(name: "X11Compliance", value: 2)
!422 = !DIEnumerator(name: "XPMCompliance", value: 4)
!423 = !DIEnumerator(name: "AllCompliance", value: 2147483647)
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !425, line: 27, baseType: !5, size: 32, elements: !426)
!425 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3eab4066ac81fc10b9d90b7cb7db1009")
!426 = !{!427, !428, !429, !430}
!427 = !DIEnumerator(name: "UndefinedDitherMethod", value: 0)
!428 = !DIEnumerator(name: "NoDitherMethod", value: 1)
!429 = !DIEnumerator(name: "RiemersmaDitherMethod", value: 2)
!430 = !DIEnumerator(name: "FloydSteinbergDitherMethod", value: 3)
!431 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !432, line: 27, baseType: !5, size: 32, elements: !433)
!432 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!434 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!435 = !DIEnumerator(name: "RotatePreview", value: 1)
!436 = !DIEnumerator(name: "ShearPreview", value: 2)
!437 = !DIEnumerator(name: "RollPreview", value: 3)
!438 = !DIEnumerator(name: "HuePreview", value: 4)
!439 = !DIEnumerator(name: "SaturationPreview", value: 5)
!440 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!441 = !DIEnumerator(name: "GammaPreview", value: 7)
!442 = !DIEnumerator(name: "SpiffPreview", value: 8)
!443 = !DIEnumerator(name: "DullPreview", value: 9)
!444 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!445 = !DIEnumerator(name: "QuantizePreview", value: 11)
!446 = !DIEnumerator(name: "DespecklePreview", value: 12)
!447 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!448 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!449 = !DIEnumerator(name: "SharpenPreview", value: 15)
!450 = !DIEnumerator(name: "BlurPreview", value: 16)
!451 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!452 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!453 = !DIEnumerator(name: "SpreadPreview", value: 19)
!454 = !DIEnumerator(name: "SolarizePreview", value: 20)
!455 = !DIEnumerator(name: "ShadePreview", value: 21)
!456 = !DIEnumerator(name: "RaisePreview", value: 22)
!457 = !DIEnumerator(name: "SegmentPreview", value: 23)
!458 = !DIEnumerator(name: "SwirlPreview", value: 24)
!459 = !DIEnumerator(name: "ImplodePreview", value: 25)
!460 = !DIEnumerator(name: "WavePreview", value: 26)
!461 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!462 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!463 = !DIEnumerator(name: "JPEGPreview", value: 29)
!464 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !465, line: 27, baseType: !5, size: 32, elements: !466)
!465 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!467 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!468 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!469 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!470 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!471 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!472 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!473 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!474 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!475 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!476 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!477 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!478 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!479 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!480 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!481 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!482 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!483 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!484 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!485 = !{!486, !506, !507, !525, !527, !529, !551, !513, !553, !555, !611, !535, !612, !622, !807, !541, !886, !776, !496, !888, !562, !642}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPacket", file: !488, line: 35, baseType: !489)
!488 = !DIFile(filename: "apps/538.imagick_r/src/magick/histogram.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2cf116c94f52893f7dbbcaa9072de9d3")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ColorPacket", file: !488, line: 25, size: 192, elements: !490)
!490 = !{!491, !501, !503}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pixel", scope: !489, file: !488, line: 28, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !494)
!494 = !{!495, !498, !499, !500}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !493, file: !326, line: 143, baseType: !496, size: 16)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !497)
!497 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !493, file: !326, line: 144, baseType: !496, size: 16, offset: 16)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !493, file: !326, line: 145, baseType: !496, size: 16, offset: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !493, file: !326, line: 146, baseType: !496, size: 16, offset: 48)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !489, file: !488, line: 31, baseType: !502, size: 16, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !496)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !489, file: !488, line: 34, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !505)
!505 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "CubeInfo", file: !509, line: 117, baseType: !510)
!509 = !DIFile(filename: "apps/538.imagick_r/src/magick/histogram.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "192f1c1d25bbae3b61876438f2ce56cf")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CubeInfo", file: !509, line: 97, size: 448, elements: !511)
!511 = !{!512, !528, !534, !537, !538, !539, !540}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !510, file: !509, line: 100, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "NodeInfo", file: !509, line: 86, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NodeInfo", file: !509, line: 73, size: 1216, elements: !516)
!516 = !{!517, !522, !523, !524}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !515, file: !509, line: 76, baseType: !518, size: 1024)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 1024, elements: !520)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!520 = !{!521}
!521 = !DISubrange(count: 16)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !515, file: !509, line: 79, baseType: !486, size: 64, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "number_unique", scope: !515, file: !509, line: 82, baseType: !504, size: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !515, file: !509, line: 85, baseType: !525, size: 64, offset: 1152)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !526, line: 46, baseType: !527)
!526 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!527 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !510, file: !509, line: 103, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !530, line: 77, baseType: !531)
!530 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !532, line: 193, baseType: !533)
!532 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!533 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !510, file: !509, line: 106, baseType: !535, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !536)
!536 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !510, file: !509, line: 109, baseType: !525, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "free_nodes", scope: !510, file: !509, line: 110, baseType: !525, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "node_info", scope: !510, file: !509, line: 113, baseType: !513, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "node_queue", scope: !510, file: !509, line: 116, baseType: !541, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "Nodes", file: !509, line: 95, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nodes", file: !509, line: 88, size: 1867840, elements: !544)
!544 = !{!545, !549}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !543, file: !509, line: 91, baseType: !546, size: 1867776)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 1867776, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 1536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !509, line: 94, baseType: !550, size: 64, offset: 1867776)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !557, line: 7, baseType: !558)
!557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !559, line: 49, size: 1728, elements: !560)
!559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!560 = !{!561, !563, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !579, !581, !582, !583, !585, !586, !588, !592, !595, !597, !600, !603, !604, !605, !606, !607}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !558, file: !559, line: 51, baseType: !562, size: 32)
!562 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !558, file: !559, line: 54, baseType: !564, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !558, file: !559, line: 55, baseType: !564, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !558, file: !559, line: 56, baseType: !564, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !558, file: !559, line: 57, baseType: !564, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !558, file: !559, line: 58, baseType: !564, size: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !558, file: !559, line: 59, baseType: !564, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !558, file: !559, line: 60, baseType: !564, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !558, file: !559, line: 61, baseType: !564, size: 64, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !558, file: !559, line: 64, baseType: !564, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !558, file: !559, line: 65, baseType: !564, size: 64, offset: 640)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !558, file: !559, line: 66, baseType: !564, size: 64, offset: 704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !558, file: !559, line: 68, baseType: !577, size: 64, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !559, line: 36, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !558, file: !559, line: 70, baseType: !580, size: 64, offset: 832)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !558, file: !559, line: 72, baseType: !562, size: 32, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !558, file: !559, line: 73, baseType: !562, size: 32, offset: 928)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !558, file: !559, line: 74, baseType: !584, size: 64, offset: 960)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !532, line: 152, baseType: !533)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !558, file: !559, line: 77, baseType: !497, size: 16, offset: 1024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !558, file: !559, line: 78, baseType: !587, size: 8, offset: 1040)
!587 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !558, file: !559, line: 79, baseType: !589, size: 8, offset: 1048)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 8, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 1)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !558, file: !559, line: 81, baseType: !593, size: 64, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !559, line: 43, baseType: null)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !558, file: !559, line: 89, baseType: !596, size: 64, offset: 1152)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !532, line: 153, baseType: !533)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !558, file: !559, line: 91, baseType: !598, size: 64, offset: 1216)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !559, line: 37, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !558, file: !559, line: 92, baseType: !601, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !559, line: 38, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !558, file: !559, line: 93, baseType: !580, size: 64, offset: 1344)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !558, file: !559, line: 94, baseType: !506, size: 64, offset: 1408)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !558, file: !559, line: 95, baseType: !525, size: 64, offset: 1472)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !558, file: !559, line: 96, baseType: !562, size: 32, offset: 1536)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !558, file: !559, line: 98, baseType: !608, size: 160, offset: 1568)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 160, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 20)
!611 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !613, line: 26, baseType: !614)
!613 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!617, !618, !620, !621, !506}
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !625)
!625 = !{!626, !628, !630, !632, !633, !635, !636, !637, !638, !639, !640, !641, !643, !644, !645, !646, !647, !661, !663, !664, !666, !667, !668, !669, !670, !671, !672, !680, !681, !682, !683, !684, !685, !687, !689, !691, !693, !695, !697, !699, !700, !701, !702, !703, !704, !705, !712, !727, !728, !729, !730, !731, !735, !739, !743, !744, !745, !746, !747, !764, !765, !767, !768, !778, !779, !781, !782, !783, !784, !785, !786, !788, !789, !790, !791, !792, !793, !794, !796, !797, !798, !799, !800, !804, !806}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !624, file: !73, line: 153, baseType: !627, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !624, file: !73, line: 156, baseType: !629, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !624, file: !73, line: 159, baseType: !631, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !624, file: !73, line: 162, baseType: !525, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !624, file: !73, line: 165, baseType: !634, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !624, file: !73, line: 168, baseType: !617, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !624, file: !73, line: 169, baseType: !617, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !624, file: !73, line: 172, baseType: !525, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !624, file: !73, line: 173, baseType: !525, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !624, file: !73, line: 174, baseType: !525, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !624, file: !73, line: 175, baseType: !525, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !624, file: !73, line: 178, baseType: !642, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !624, file: !73, line: 179, baseType: !492, size: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !624, file: !73, line: 180, baseType: !492, size: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !624, file: !73, line: 181, baseType: !492, size: 64, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !624, file: !73, line: 184, baseType: !611, size: 64, offset: 832)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !624, file: !73, line: 187, baseType: !648, size: 768, offset: 896)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !650)
!650 = !{!651, !658, !659, !660}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !649, file: !73, line: 124, baseType: !652, size: 192)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !654)
!654 = !{!655, !656, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !653, file: !73, line: 98, baseType: !611, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !653, file: !73, line: 99, baseType: !611, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !653, file: !73, line: 100, baseType: !611, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !649, file: !73, line: 125, baseType: !652, size: 192, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !649, file: !73, line: 126, baseType: !652, size: 192, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !649, file: !73, line: 127, baseType: !652, size: 192, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !624, file: !73, line: 190, baseType: !662, size: 32, offset: 1664)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !624, file: !73, line: 193, baseType: !506, size: 64, offset: 1728)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !624, file: !73, line: 196, baseType: !665, size: 32, offset: 1792)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !624, file: !73, line: 199, baseType: !564, size: 64, offset: 1856)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !624, file: !73, line: 200, baseType: !564, size: 64, offset: 1920)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !624, file: !73, line: 201, baseType: !564, size: 64, offset: 1984)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !624, file: !73, line: 204, baseType: !529, size: 64, offset: 2048)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !624, file: !73, line: 207, baseType: !611, size: 64, offset: 2112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !624, file: !73, line: 208, baseType: !611, size: 64, offset: 2176)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !624, file: !73, line: 211, baseType: !673, size: 256, offset: 2240)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !675)
!675 = !{!676, !677, !678, !679}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !674, file: !153, line: 124, baseType: !525, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !674, file: !153, line: 125, baseType: !525, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !674, file: !153, line: 128, baseType: !529, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !674, file: !153, line: 129, baseType: !529, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !624, file: !73, line: 212, baseType: !673, size: 256, offset: 2496)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !624, file: !73, line: 213, baseType: !673, size: 256, offset: 2752)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !624, file: !73, line: 216, baseType: !611, size: 64, offset: 3008)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !624, file: !73, line: 217, baseType: !611, size: 64, offset: 3072)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !624, file: !73, line: 218, baseType: !611, size: 64, offset: 3136)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !624, file: !73, line: 221, baseType: !686, size: 32, offset: 3200)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !624, file: !73, line: 224, baseType: !688, size: 32, offset: 3232)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !624, file: !73, line: 227, baseType: !690, size: 32, offset: 3264)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !624, file: !73, line: 230, baseType: !692, size: 32, offset: 3296)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !624, file: !73, line: 233, baseType: !694, size: 32, offset: 3328)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !624, file: !73, line: 236, baseType: !696, size: 32, offset: 3360)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !624, file: !73, line: 239, baseType: !698, size: 64, offset: 3392)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !624, file: !73, line: 242, baseType: !525, size: 64, offset: 3456)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !624, file: !73, line: 243, baseType: !525, size: 64, offset: 3520)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !624, file: !73, line: 246, baseType: !529, size: 64, offset: 3584)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !624, file: !73, line: 249, baseType: !525, size: 64, offset: 3648)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !624, file: !73, line: 250, baseType: !525, size: 64, offset: 3712)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !624, file: !73, line: 253, baseType: !529, size: 64, offset: 3776)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !624, file: !73, line: 256, baseType: !706, size: 192, offset: 3840)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !416, line: 68, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !416, line: 62, size: 192, elements: !708)
!708 = !{!709, !710, !711}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !707, file: !416, line: 65, baseType: !611, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !707, file: !416, line: 66, baseType: !611, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !707, file: !416, line: 67, baseType: !611, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !624, file: !73, line: 259, baseType: !713, size: 512, offset: 4032)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !715)
!715 = !{!716, !723, !724, !726}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !714, file: !247, line: 43, baseType: !717, size: 192)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !719)
!719 = !{!720, !721, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !718, file: !247, line: 35, baseType: !611, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !718, file: !247, line: 36, baseType: !611, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !718, file: !247, line: 37, baseType: !611, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !714, file: !247, line: 44, baseType: !717, size: 192, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !714, file: !247, line: 47, baseType: !725, size: 32, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !714, file: !247, line: 50, baseType: !525, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !624, file: !73, line: 262, baseType: !612, size: 64, offset: 4544)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !624, file: !73, line: 265, baseType: !506, size: 64, offset: 4608)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !624, file: !73, line: 266, baseType: !506, size: 64, offset: 4672)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !624, file: !73, line: 267, baseType: !506, size: 64, offset: 4736)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !624, file: !73, line: 270, baseType: !732, size: 64, offset: 4800)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !734)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !624, file: !73, line: 273, baseType: !736, size: 64, offset: 4864)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !738)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !624, file: !73, line: 276, baseType: !740, size: 32768, offset: 4928)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 32768, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 4096)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !624, file: !73, line: 277, baseType: !740, size: 32768, offset: 37696)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !624, file: !73, line: 278, baseType: !740, size: 32768, offset: 70464)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !624, file: !73, line: 281, baseType: !525, size: 64, offset: 103232)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !624, file: !73, line: 282, baseType: !525, size: 64, offset: 103296)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !624, file: !73, line: 285, baseType: !748, size: 448, offset: 103360)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !750)
!750 = !{!751, !753, !754, !755, !756, !757, !758, !763}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !749, file: !253, line: 105, baseType: !752, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !749, file: !253, line: 108, baseType: !562, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !749, file: !253, line: 111, baseType: !564, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !749, file: !253, line: 112, baseType: !564, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !749, file: !253, line: 115, baseType: !506, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !749, file: !253, line: 118, baseType: !617, size: 32, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !749, file: !253, line: 121, baseType: !759, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !761, line: 26, baseType: !762)
!761 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !761, line: 25, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !749, file: !253, line: 124, baseType: !525, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !624, file: !73, line: 288, baseType: !617, size: 32, offset: 103808)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !624, file: !73, line: 291, baseType: !766, size: 64, offset: 103872)
!766 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !529)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !624, file: !73, line: 294, baseType: !759, size: 64, offset: 103936)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !624, file: !73, line: 297, baseType: !769, size: 256, offset: 104000)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !771)
!771 = !{!772, !773, !774, !777}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !770, file: !89, line: 30, baseType: !564, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !770, file: !89, line: 33, baseType: !525, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !770, file: !89, line: 36, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !770, file: !89, line: 39, baseType: !525, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !624, file: !73, line: 298, baseType: !769, size: 256, offset: 104256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !624, file: !73, line: 299, baseType: !780, size: 64, offset: 104512)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !624, file: !73, line: 302, baseType: !525, size: 64, offset: 104576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !624, file: !73, line: 305, baseType: !525, size: 64, offset: 104640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !624, file: !73, line: 308, baseType: !698, size: 64, offset: 104704)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !624, file: !73, line: 309, baseType: !698, size: 64, offset: 104768)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !73, line: 310, baseType: !698, size: 64, offset: 104832)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !624, file: !73, line: 313, baseType: !787, size: 32, offset: 104896)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !624, file: !73, line: 316, baseType: !617, size: 32, offset: 104928)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !624, file: !73, line: 319, baseType: !492, size: 64, offset: 104960)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !624, file: !73, line: 322, baseType: !698, size: 64, offset: 105024)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !624, file: !73, line: 325, baseType: !673, size: 256, offset: 105088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !624, file: !73, line: 328, baseType: !506, size: 64, offset: 105344)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !624, file: !73, line: 329, baseType: !506, size: 64, offset: 105408)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !624, file: !73, line: 332, baseType: !795, size: 32, offset: 105472)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !624, file: !73, line: 335, baseType: !617, size: 32, offset: 105504)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !624, file: !73, line: 338, baseType: !504, size: 64, offset: 105536)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !624, file: !73, line: 341, baseType: !617, size: 32, offset: 105600)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !624, file: !73, line: 344, baseType: !525, size: 64, offset: 105664)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !624, file: !73, line: 347, baseType: !801, size: 64, offset: 105728)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !802, line: 7, baseType: !803)
!802 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !532, line: 160, baseType: !533)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !624, file: !73, line: 350, baseType: !805, size: 32, offset: 105792)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !624, file: !73, line: 353, baseType: !525, size: 64, offset: 105856)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !4, line: 223, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !73, line: 356, size: 134336, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !845, !846, !847, !848, !849, !850, !852, !853, !854, !855, !856, !857, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !883, !884, !885}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !809, file: !73, line: 359, baseType: !631, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !809, file: !73, line: 362, baseType: !634, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !809, file: !73, line: 365, baseType: !617, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !809, file: !73, line: 366, baseType: !617, size: 32, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !809, file: !73, line: 367, baseType: !617, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !809, file: !73, line: 368, baseType: !617, size: 32, offset: 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !809, file: !73, line: 371, baseType: !564, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !809, file: !73, line: 372, baseType: !564, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !809, file: !73, line: 373, baseType: !564, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !809, file: !73, line: 374, baseType: !564, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !809, file: !73, line: 377, baseType: !525, size: 64, offset: 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !809, file: !73, line: 378, baseType: !525, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !809, file: !73, line: 379, baseType: !525, size: 64, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !809, file: !73, line: 382, baseType: !688, size: 32, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !809, file: !73, line: 385, baseType: !690, size: 32, offset: 672)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !809, file: !73, line: 388, baseType: !665, size: 32, offset: 704)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !809, file: !73, line: 391, baseType: !525, size: 64, offset: 768)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !809, file: !73, line: 394, baseType: !564, size: 64, offset: 832)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !809, file: !73, line: 395, baseType: !564, size: 64, offset: 896)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !809, file: !73, line: 396, baseType: !564, size: 64, offset: 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !809, file: !73, line: 397, baseType: !564, size: 64, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !809, file: !73, line: 398, baseType: !564, size: 64, offset: 1088)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !809, file: !73, line: 401, baseType: !611, size: 64, offset: 1152)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !809, file: !73, line: 402, baseType: !611, size: 64, offset: 1216)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !809, file: !73, line: 405, baseType: !492, size: 64, offset: 1280)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !809, file: !73, line: 406, baseType: !492, size: 64, offset: 1344)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !809, file: !73, line: 407, baseType: !492, size: 64, offset: 1408)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !809, file: !73, line: 410, baseType: !617, size: 32, offset: 1472)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !809, file: !73, line: 411, baseType: !617, size: 32, offset: 1504)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !809, file: !73, line: 414, baseType: !525, size: 64, offset: 1536)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !809, file: !73, line: 417, baseType: !629, size: 32, offset: 1600)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !809, file: !73, line: 420, baseType: !795, size: 32, offset: 1632)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !809, file: !73, line: 423, baseType: !844, size: 32, offset: 1664)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !432, line: 59, baseType: !431)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !809, file: !73, line: 426, baseType: !529, size: 64, offset: 1728)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !809, file: !73, line: 429, baseType: !617, size: 32, offset: 1792)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !809, file: !73, line: 430, baseType: !617, size: 32, offset: 1824)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !809, file: !73, line: 433, baseType: !564, size: 64, offset: 1856)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !809, file: !73, line: 434, baseType: !564, size: 64, offset: 1920)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !809, file: !73, line: 437, baseType: !851, size: 32, offset: 1984)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !393)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !809, file: !73, line: 440, baseType: !622, size: 64, offset: 2048)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !809, file: !73, line: 443, baseType: !506, size: 64, offset: 2112)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !809, file: !73, line: 446, baseType: !612, size: 64, offset: 2176)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !809, file: !73, line: 449, baseType: !506, size: 64, offset: 2240)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !809, file: !73, line: 450, baseType: !506, size: 64, offset: 2304)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !809, file: !73, line: 453, baseType: !858, size: 64, offset: 2368)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !859, line: 26, baseType: !860)
!859 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!525, !863, !865, !867}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !809, file: !73, line: 456, baseType: !555, size: 64, offset: 2432)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !809, file: !73, line: 459, baseType: !506, size: 64, offset: 2496)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !809, file: !73, line: 462, baseType: !525, size: 64, offset: 2560)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !809, file: !73, line: 465, baseType: !740, size: 32768, offset: 2624)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !809, file: !73, line: 466, baseType: !740, size: 32768, offset: 35392)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !809, file: !73, line: 467, baseType: !740, size: 32768, offset: 68160)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !809, file: !73, line: 468, baseType: !740, size: 32768, offset: 100928)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !809, file: !73, line: 471, baseType: !617, size: 32, offset: 133696)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !809, file: !73, line: 474, baseType: !564, size: 64, offset: 133760)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !809, file: !73, line: 477, baseType: !525, size: 64, offset: 133824)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !809, file: !73, line: 478, baseType: !525, size: 64, offset: 133888)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !809, file: !73, line: 481, baseType: !492, size: 64, offset: 133952)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !809, file: !73, line: 484, baseType: !525, size: 64, offset: 134016)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !809, file: !73, line: 487, baseType: !882, size: 32, offset: 134080)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !465, line: 47, baseType: !464)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !809, file: !73, line: 490, baseType: !492, size: 64, offset: 134112)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !809, file: !73, line: 493, baseType: !506, size: 64, offset: 134208)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !809, file: !73, line: 496, baseType: !617, size: 32, offset: 134272)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !887)
!887 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!890 = !{i32 7, !"Dwarf Version", i32 5}
!891 = !{i32 2, !"Debug Info Version", i32 3}
!892 = !{i32 1, !"wchar_size", i32 4}
!893 = !{i32 7, !"PIC Level", i32 2}
!894 = !{i32 7, !"PIE Level", i32 2}
!895 = !{i32 7, !"uwtable", i32 2}
!896 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!897 = distinct !DISubprogram(name: "GetImageHistogram", scope: !509, file: !509, line: 526, type: !898, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !902)
!898 = !DISubroutineType(types: !899)
!899 = !{!486, !863, !900, !901}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!902 = !{!903, !904, !905, !906, !907, !908}
!903 = !DILocalVariable(name: "image", arg: 1, scope: !897, file: !509, line: 526, type: !863)
!904 = !DILocalVariable(name: "number_colors", arg: 2, scope: !897, file: !509, line: 527, type: !900)
!905 = !DILocalVariable(name: "exception", arg: 3, scope: !897, file: !509, line: 527, type: !901)
!906 = !DILocalVariable(name: "histogram", scope: !897, file: !509, line: 530, type: !486)
!907 = !DILocalVariable(name: "cube_info", scope: !897, file: !509, line: 533, type: !507)
!908 = !DILocalVariable(name: "root", scope: !909, file: !509, line: 548, type: !486)
!909 = distinct !DILexicalBlock(scope: !910, file: !509, line: 546, column: 9)
!910 = distinct !DILexicalBlock(scope: !911, file: !509, line: 542, column: 11)
!911 = distinct !DILexicalBlock(scope: !912, file: !509, line: 539, column: 5)
!912 = distinct !DILexicalBlock(scope: !897, file: !509, line: 538, column: 7)
!913 = !DILocation(line: 0, scope: !897)
!914 = !DILocation(line: 535, column: 17, scope: !897)
!915 = !{!916, !916, i64 0}
!916 = !{!"long", !917, i64 0}
!917 = !{!"omnipotent char", !918, i64 0}
!918 = !{!"Simple C/C++ TBAA"}
!919 = !DILocation(line: 537, column: 13, scope: !897)
!920 = !DILocation(line: 538, column: 17, scope: !912)
!921 = !DILocation(line: 538, column: 7, scope: !897)
!922 = !DILocation(line: 540, column: 74, scope: !911)
!923 = !{!924, !916, i64 24}
!924 = !{!"_CubeInfo", !925, i64 0, !916, i64 8, !926, i64 16, !916, i64 24, !916, i64 32, !925, i64 40, !925, i64 48}
!925 = !{!"any pointer", !917, i64 0}
!926 = !{!"long long", !917, i64 0}
!927 = !DILocation(line: 540, column: 33, scope: !911)
!928 = !DILocation(line: 542, column: 21, scope: !910)
!929 = !DILocation(line: 542, column: 11, scope: !911)
!930 = !DILocation(line: 544, column: 69, scope: !910)
!931 = !DILocation(line: 543, column: 16, scope: !910)
!932 = !DILocation(line: 543, column: 9, scope: !910)
!933 = !DILocation(line: 547, column: 11, scope: !909)
!934 = !DILocation(line: 550, column: 37, scope: !909)
!935 = !DILocation(line: 550, column: 25, scope: !909)
!936 = !DILocation(line: 0, scope: !909)
!937 = !DILocation(line: 551, column: 15, scope: !909)
!938 = !{!925, !925, i64 0}
!939 = !DILocation(line: 552, column: 49, scope: !909)
!940 = !{!924, !925, i64 0}
!941 = !DILocation(line: 552, column: 11, scope: !909)
!942 = !DILocation(line: 553, column: 9, scope: !910)
!943 = !DILocalVariable(name: "image", arg: 1, scope: !944, file: !509, line: 392, type: !863)
!944 = distinct !DISubprogram(name: "DestroyCubeInfo", scope: !509, file: !509, line: 392, type: !945, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!507, !863, !507}
!947 = !{!943, !948, !949}
!948 = !DILocalVariable(name: "cube_info", arg: 2, scope: !944, file: !509, line: 392, type: !507)
!949 = !DILocalVariable(name: "nodes", scope: !944, file: !509, line: 395, type: !541)
!950 = !DILocation(line: 0, scope: !944, inlinedAt: !951)
!951 = distinct !DILocation(line: 555, column: 13, scope: !897)
!952 = !DILocation(line: 400, column: 37, scope: !944, inlinedAt: !951)
!953 = !DILocation(line: 400, column: 3, scope: !944, inlinedAt: !951)
!954 = !DILocation(line: 403, column: 22, scope: !955, inlinedAt: !951)
!955 = distinct !DILexicalBlock(scope: !944, file: !509, line: 402, column: 3)
!956 = !{!924, !925, i64 48}
!957 = !DILocation(line: 401, column: 3, scope: !944, inlinedAt: !951)
!958 = !DILocation(line: 403, column: 34, scope: !955, inlinedAt: !951)
!959 = !{!960, !925, i64 233472}
!960 = !{!"_Nodes", !917, i64 0, !925, i64 233472}
!961 = !DILocation(line: 405, column: 7, scope: !955, inlinedAt: !951)
!962 = !DILocation(line: 406, column: 26, scope: !955, inlinedAt: !951)
!963 = !DILocation(line: 407, column: 34, scope: !944, inlinedAt: !951)
!964 = !DILocation(line: 407, column: 3, scope: !955, inlinedAt: !951)
!965 = distinct !{!965, !957, !966, !967, !968}
!966 = !DILocation(line: 407, column: 51, scope: !944, inlinedAt: !951)
!967 = !{!"llvm.loop.mustprogress"}
!968 = !{!"llvm.loop.unroll.disable"}
!969 = !DILocation(line: 408, column: 23, scope: !944, inlinedAt: !951)
!970 = !DILocation(line: 556, column: 3, scope: !897)
!971 = distinct !DISubprogram(name: "ClassifyImageColors", scope: !509, file: !509, line: 175, type: !972, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!507, !863, !901}
!974 = !{!975, !976, !977, !981, !982, !983, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!975 = !DILocalVariable(name: "image", arg: 1, scope: !971, file: !509, line: 175, type: !863)
!976 = !DILocalVariable(name: "exception", arg: 2, scope: !971, file: !509, line: 176, type: !901)
!977 = !DILocalVariable(name: "image_view", scope: !971, file: !509, line: 181, type: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !465, line: 50, baseType: !980)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!981 = !DILocalVariable(name: "cube_info", scope: !971, file: !509, line: 184, type: !507)
!982 = !DILocalVariable(name: "proceed", scope: !971, file: !509, line: 187, type: !617)
!983 = !DILocalVariable(name: "pixel", scope: !971, file: !509, line: 190, type: !984)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !986)
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !995, !996}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !985, file: !326, line: 107, baseType: !627, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !985, file: !326, line: 110, baseType: !629, size: 32, offset: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !985, file: !326, line: 113, baseType: !617, size: 32, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !985, file: !326, line: 116, baseType: !611, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !985, file: !326, line: 119, baseType: !525, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !985, file: !326, line: 122, baseType: !886, size: 32, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !985, file: !326, line: 123, baseType: !886, size: 32, offset: 288)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !985, file: !326, line: 124, baseType: !886, size: 32, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !985, file: !326, line: 125, baseType: !886, size: 32, offset: 352)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !985, file: !326, line: 126, baseType: !886, size: 32, offset: 384)
!997 = !DILocalVariable(name: "target", scope: !971, file: !509, line: 191, type: !984)
!998 = !DILocalVariable(name: "node_info", scope: !971, file: !509, line: 194, type: !513)
!999 = !DILocalVariable(name: "indexes", scope: !971, file: !509, line: 197, type: !553)
!1000 = !DILocalVariable(name: "p", scope: !971, file: !509, line: 200, type: !551)
!1001 = !DILocalVariable(name: "id", scope: !971, file: !509, line: 203, type: !525)
!1002 = !DILocalVariable(name: "index", scope: !971, file: !509, line: 204, type: !525)
!1003 = !DILocalVariable(name: "level", scope: !971, file: !509, line: 205, type: !525)
!1004 = !DILocalVariable(name: "i", scope: !971, file: !509, line: 208, type: !529)
!1005 = !DILocalVariable(name: "x", scope: !971, file: !509, line: 209, type: !529)
!1006 = !DILocalVariable(name: "y", scope: !971, file: !509, line: 212, type: !529)
!1007 = !DILocation(line: 0, scope: !971)
!1008 = !DILocation(line: 189, column: 3, scope: !971)
!1009 = !DILocation(line: 190, column: 5, scope: !971)
!1010 = !DILocation(line: 191, column: 5, scope: !971)
!1011 = !DILocation(line: 219, column: 14, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !971, file: !509, line: 219, column: 7)
!1013 = !{!1014, !917, i64 12976}
!1014 = !{!"_Image", !917, i64 0, !917, i64 4, !917, i64 8, !916, i64 16, !917, i64 24, !917, i64 28, !917, i64 32, !916, i64 40, !916, i64 48, !916, i64 56, !916, i64 64, !925, i64 72, !1015, i64 80, !1015, i64 88, !1015, i64 96, !1017, i64 104, !1018, i64 112, !917, i64 208, !925, i64 216, !917, i64 224, !925, i64 232, !925, i64 240, !925, i64 248, !916, i64 256, !1017, i64 264, !1017, i64 272, !1020, i64 280, !1020, i64 312, !1020, i64 344, !1017, i64 376, !1017, i64 384, !1017, i64 392, !917, i64 400, !917, i64 404, !917, i64 408, !917, i64 412, !917, i64 416, !917, i64 420, !925, i64 424, !916, i64 432, !916, i64 440, !916, i64 448, !916, i64 456, !916, i64 464, !916, i64 472, !1021, i64 480, !1022, i64 504, !925, i64 568, !925, i64 576, !925, i64 584, !925, i64 592, !925, i64 600, !925, i64 608, !917, i64 616, !917, i64 4712, !917, i64 8808, !916, i64 12904, !916, i64 12912, !1024, i64 12920, !917, i64 12976, !916, i64 12984, !925, i64 12992, !1026, i64 13000, !1026, i64 13032, !925, i64 13064, !916, i64 13072, !916, i64 13080, !925, i64 13088, !925, i64 13096, !925, i64 13104, !917, i64 13112, !917, i64 13116, !1015, i64 13120, !925, i64 13128, !1020, i64 13136, !925, i64 13168, !925, i64 13176, !917, i64 13184, !917, i64 13188, !926, i64 13192, !917, i64 13200, !916, i64 13208, !916, i64 13216, !917, i64 13224, !916, i64 13232}
!1015 = !{!"_PixelPacket", !1016, i64 0, !1016, i64 2, !1016, i64 4, !1016, i64 6}
!1016 = !{!"short", !917, i64 0}
!1017 = !{!"double", !917, i64 0}
!1018 = !{!"_ChromaticityInfo", !1019, i64 0, !1019, i64 24, !1019, i64 48, !1019, i64 72}
!1019 = !{!"_PrimaryInfo", !1017, i64 0, !1017, i64 8, !1017, i64 16}
!1020 = !{!"_RectangleInfo", !916, i64 0, !916, i64 8, !916, i64 16, !916, i64 24}
!1021 = !{!"_ErrorInfo", !1017, i64 0, !1017, i64 8, !1017, i64 16}
!1022 = !{!"_TimerInfo", !1023, i64 0, !1023, i64 24, !917, i64 48, !916, i64 56}
!1023 = !{!"_Timer", !1017, i64 0, !1017, i64 8, !1017, i64 16}
!1024 = !{!"_ExceptionInfo", !917, i64 0, !1025, i64 4, !925, i64 8, !925, i64 16, !925, i64 24, !917, i64 32, !925, i64 40, !916, i64 48}
!1025 = !{!"int", !917, i64 0}
!1026 = !{!"_ProfileInfo", !925, i64 0, !916, i64 8, !925, i64 16, !916, i64 24}
!1027 = !DILocation(line: 219, column: 20, scope: !1012)
!1028 = !DILocation(line: 219, column: 7, scope: !971)
!1029 = !DILocation(line: 220, column: 68, scope: !1012)
!1030 = !DILocation(line: 220, column: 12, scope: !1012)
!1031 = !DILocation(line: 220, column: 5, scope: !1012)
!1032 = !DILocation(line: 486, column: 26, scope: !1033, inlinedAt: !1038)
!1033 = distinct !DISubprogram(name: "GetCubeInfo", scope: !509, file: !509, line: 478, type: !1034, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!507}
!1036 = !{!1037}
!1037 = !DILocalVariable(name: "cube_info", scope: !1033, file: !509, line: 481, type: !507)
!1038 = distinct !DILocation(line: 221, column: 13, scope: !971)
!1039 = !DILocation(line: 0, scope: !1033, inlinedAt: !1038)
!1040 = !DILocation(line: 487, column: 17, scope: !1041, inlinedAt: !1038)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !509, line: 487, column: 7)
!1042 = !DILocation(line: 487, column: 7, scope: !1033, inlinedAt: !1038)
!1043 = !DILocation(line: 489, column: 10, scope: !1033, inlinedAt: !1038)
!1044 = !DILocalVariable(name: "cube_info", arg: 1, scope: !1045, file: !509, line: 584, type: !507)
!1045 = distinct !DISubprogram(name: "GetNodeInfo", scope: !509, file: !509, line: 584, type: !1046, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!513, !507, !867}
!1048 = !{!1044, !1049, !1050, !1051}
!1049 = !DILocalVariable(name: "level", arg: 2, scope: !1045, file: !509, line: 584, type: !867)
!1050 = !DILocalVariable(name: "node_info", scope: !1045, file: !509, line: 587, type: !513)
!1051 = !DILocalVariable(name: "nodes", scope: !1052, file: !509, line: 592, type: !541)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !509, line: 590, column: 5)
!1053 = distinct !DILexicalBlock(scope: !1045, file: !509, line: 589, column: 7)
!1054 = !DILocation(line: 0, scope: !1045, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 493, column: 19, scope: !1033, inlinedAt: !1038)
!1056 = !DILocation(line: 589, column: 18, scope: !1053, inlinedAt: !1055)
!1057 = !{!924, !916, i64 32}
!1058 = !DILocation(line: 589, column: 29, scope: !1053, inlinedAt: !1055)
!1059 = !DILocation(line: 589, column: 7, scope: !1045, inlinedAt: !1055)
!1060 = !DILocation(line: 606, column: 33, scope: !1045, inlinedAt: !1055)
!1061 = !{!924, !925, i64 40}
!1062 = !DILocation(line: 597, column: 23, scope: !1052, inlinedAt: !1055)
!1063 = !DILocation(line: 0, scope: !1052, inlinedAt: !1055)
!1064 = !DILocation(line: 598, column: 17, scope: !1065, inlinedAt: !1055)
!1065 = distinct !DILexicalBlock(scope: !1052, file: !509, line: 598, column: 11)
!1066 = !DILocation(line: 598, column: 11, scope: !1052, inlinedAt: !1055)
!1067 = !DILocation(line: 600, column: 30, scope: !1052, inlinedAt: !1055)
!1068 = !DILocation(line: 600, column: 14, scope: !1052, inlinedAt: !1055)
!1069 = !DILocation(line: 600, column: 18, scope: !1052, inlinedAt: !1055)
!1070 = !DILocation(line: 601, column: 28, scope: !1052, inlinedAt: !1055)
!1071 = !DILocation(line: 493, column: 18, scope: !1033, inlinedAt: !1038)
!1072 = !DILocation(line: 225, column: 67, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !509, line: 223, column: 5)
!1074 = distinct !DILexicalBlock(scope: !971, file: !509, line: 222, column: 7)
!1075 = !DILocation(line: 224, column: 14, scope: !1073)
!1076 = !DILocation(line: 226, column: 7, scope: !1073)
!1077 = !DILocation(line: 605, column: 24, scope: !1045, inlinedAt: !1055)
!1078 = !DILocation(line: 606, column: 24, scope: !1045, inlinedAt: !1055)
!1079 = !DILocation(line: 607, column: 10, scope: !1045, inlinedAt: !1055)
!1080 = !DILocation(line: 608, column: 14, scope: !1045, inlinedAt: !1055)
!1081 = !DILocation(line: 608, column: 19, scope: !1045, inlinedAt: !1055)
!1082 = !{!1083, !916, i64 144}
!1083 = !{!"_NodeInfo", !917, i64 0, !925, i64 128, !926, i64 136, !916, i64 144}
!1084 = !DILocation(line: 228, column: 3, scope: !971)
!1085 = !DILocation(line: 229, column: 3, scope: !971)
!1086 = !DILocation(line: 230, column: 14, scope: !971)
!1087 = !DILocation(line: 231, column: 34, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !509, line: 231, column: 3)
!1089 = distinct !DILexicalBlock(scope: !971, file: !509, line: 231, column: 3)
!1090 = !{!1014, !916, i64 48}
!1091 = !DILocation(line: 231, column: 15, scope: !1088)
!1092 = !DILocation(line: 231, column: 3, scope: !1089)
!1093 = !DILocation(line: 233, column: 55, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1088, file: !509, line: 232, column: 3)
!1095 = !{!1014, !916, i64 40}
!1096 = !DILocation(line: 233, column: 7, scope: !1094)
!1097 = !DILocation(line: 234, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !509, line: 234, column: 9)
!1099 = !DILocation(line: 234, column: 9, scope: !1094)
!1100 = !DILocation(line: 236, column: 13, scope: !1094)
!1101 = !DILocation(line: 237, column: 36, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !509, line: 237, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1094, file: !509, line: 237, column: 5)
!1104 = !DILocation(line: 237, column: 17, scope: !1102)
!1105 = !DILocation(line: 237, column: 5, scope: !1103)
!1106 = !DILocation(line: 0, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !509, line: 238, column: 5)
!1108 = !DILocation(line: 244, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1107, file: !509, line: 244, column: 7)
!1110 = !{!1083, !926, i64 136}
!1111 = !DILocation(line: 262, column: 19, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !509, line: 262, column: 7)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !509, line: 262, column: 7)
!1114 = !DILocation(line: 262, column: 7, scope: !1113)
!1115 = !{!1083, !925, i64 128}
!1116 = !{!1014, !917, i64 4}
!1117 = !{!1118, !917, i64 8}
!1118 = !{!"_MagickPixelPacket", !917, i64 0, !917, i64 4, !917, i64 8, !1017, i64 16, !916, i64 24, !1119, i64 32, !1119, i64 36, !1119, i64 40, !1119, i64 44, !1119, i64 48}
!1119 = !{!"float", !917, i64 0}
!1120 = !{!1118, !1119, i64 48}
!1121 = !DILocation(line: 246, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !509, line: 245, column: 7)
!1123 = distinct !DILexicalBlock(scope: !1109, file: !509, line: 244, column: 7)
!1124 = !DILocalVariable(name: "image", arg: 1, scope: !1125, file: !1126, line: 92, type: !863)
!1125 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !1126, file: !1126, line: 92, type: !1127, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1130)
!1126 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !863, !551, !553, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!1130 = !{!1124, !1131, !1132, !1133}
!1131 = !DILocalVariable(name: "color", arg: 2, scope: !1125, file: !1126, line: 93, type: !551)
!1132 = !DILocalVariable(name: "index", arg: 3, scope: !1125, file: !1126, line: 93, type: !553)
!1133 = !DILocalVariable(name: "pixel", arg: 4, scope: !1125, file: !1126, line: 93, type: !1129)
!1134 = !DILocation(line: 0, scope: !1125, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 246, column: 9, scope: !1122)
!1136 = !DILocation(line: 95, column: 31, scope: !1125, inlinedAt: !1135)
!1137 = !{!1015, !1016, i64 4}
!1138 = !DILocation(line: 95, column: 14, scope: !1125, inlinedAt: !1135)
!1139 = !DILocation(line: 95, column: 13, scope: !1125, inlinedAt: !1135)
!1140 = !{!1118, !1119, i64 32}
!1141 = !DILocation(line: 96, column: 33, scope: !1125, inlinedAt: !1135)
!1142 = !{!1015, !1016, i64 2}
!1143 = !DILocation(line: 96, column: 16, scope: !1125, inlinedAt: !1135)
!1144 = !DILocation(line: 96, column: 15, scope: !1125, inlinedAt: !1135)
!1145 = !{!1118, !1119, i64 36}
!1146 = !DILocation(line: 97, column: 32, scope: !1125, inlinedAt: !1135)
!1147 = !{!1015, !1016, i64 0}
!1148 = !DILocation(line: 97, column: 15, scope: !1125, inlinedAt: !1135)
!1149 = !DILocation(line: 97, column: 14, scope: !1125, inlinedAt: !1135)
!1150 = !{!1118, !1119, i64 40}
!1151 = !DILocation(line: 98, column: 35, scope: !1125, inlinedAt: !1135)
!1152 = !{!1015, !1016, i64 6}
!1153 = !DILocation(line: 98, column: 18, scope: !1125, inlinedAt: !1135)
!1154 = !DILocation(line: 98, column: 17, scope: !1125, inlinedAt: !1135)
!1155 = !{!1118, !1119, i64 44}
!1156 = !DILocation(line: 99, column: 26, scope: !1157, inlinedAt: !1135)
!1157 = distinct !DILexicalBlock(scope: !1125, file: !1126, line: 99, column: 7)
!1158 = !DILocation(line: 99, column: 45, scope: !1157, inlinedAt: !1135)
!1159 = !DILocation(line: 101, column: 35, scope: !1157, inlinedAt: !1135)
!1160 = !{!1016, !1016, i64 0}
!1161 = !DILocation(line: 101, column: 18, scope: !1157, inlinedAt: !1135)
!1162 = !DILocation(line: 101, column: 17, scope: !1157, inlinedAt: !1135)
!1163 = !DILocation(line: 101, column: 5, scope: !1157, inlinedAt: !1135)
!1164 = !DILocalVariable(name: "image", arg: 1, scope: !1165, file: !509, line: 159, type: !863)
!1165 = distinct !DISubprogram(name: "ColorToNodeId", scope: !509, file: !509, line: 159, type: !1166, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1170)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!525, !863, !1168, !525}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!1170 = !{!1164, !1171, !1172, !1173}
!1171 = !DILocalVariable(name: "pixel", arg: 2, scope: !1165, file: !509, line: 160, type: !1168)
!1172 = !DILocalVariable(name: "index", arg: 3, scope: !1165, file: !509, line: 160, type: !525)
!1173 = !DILocalVariable(name: "id", scope: !1165, file: !509, line: 163, type: !525)
!1174 = !DILocation(line: 0, scope: !1165, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 247, column: 12, scope: !1122)
!1176 = !DILocalVariable(name: "value", arg: 1, scope: !1177, file: !147, line: 87, type: !1180)
!1177 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !1178, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1181)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!496, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!1181 = !{!1176}
!1182 = !DILocation(line: 0, scope: !1177, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 166, column: 26, scope: !1165, inlinedAt: !1175)
!1184 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !1183)
!1185 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !1183)
!1186 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !1183)
!1187 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !1183)
!1188 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !1195)
!1189 = distinct !DISubprogram(name: "ScaleQuantumToChar", scope: !147, file: !147, line: 114, type: !1190, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1193)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!776, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!1193 = !{!1194}
!1194 = !DILocalVariable(name: "quantum", arg: 1, scope: !1189, file: !147, line: 114, type: !1192)
!1195 = distinct !DILocation(line: 166, column: 7, scope: !1165, inlinedAt: !1175)
!1196 = !DILocation(line: 0, scope: !1189, inlinedAt: !1195)
!1197 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !1195)
!1198 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !1195)
!1199 = !DILocation(line: 166, column: 7, scope: !1165, inlinedAt: !1175)
!1200 = !DILocation(line: 166, column: 54, scope: !1165, inlinedAt: !1175)
!1201 = !DILocation(line: 166, column: 64, scope: !1165, inlinedAt: !1175)
!1202 = !DILocation(line: 0, scope: !1177, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 167, column: 26, scope: !1165, inlinedAt: !1175)
!1204 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !1203)
!1205 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !1203)
!1206 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !1203)
!1207 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !1203)
!1208 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 167, column: 7, scope: !1165, inlinedAt: !1175)
!1210 = !DILocation(line: 0, scope: !1189, inlinedAt: !1209)
!1211 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !1209)
!1212 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !1209)
!1213 = !DILocation(line: 167, column: 7, scope: !1165, inlinedAt: !1175)
!1214 = !DILocation(line: 167, column: 56, scope: !1165, inlinedAt: !1175)
!1215 = !DILocation(line: 167, column: 74, scope: !1165, inlinedAt: !1175)
!1216 = !DILocation(line: 166, column: 72, scope: !1165, inlinedAt: !1175)
!1217 = !DILocation(line: 0, scope: !1177, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 168, column: 26, scope: !1165, inlinedAt: !1175)
!1219 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !1218)
!1220 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !1218)
!1221 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !1218)
!1222 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !1218)
!1223 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 168, column: 7, scope: !1165, inlinedAt: !1175)
!1225 = !DILocation(line: 0, scope: !1189, inlinedAt: !1224)
!1226 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !1224)
!1227 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !1224)
!1228 = !DILocation(line: 168, column: 7, scope: !1165, inlinedAt: !1175)
!1229 = !DILocation(line: 168, column: 55, scope: !1165, inlinedAt: !1175)
!1230 = !DILocation(line: 168, column: 73, scope: !1165, inlinedAt: !1175)
!1231 = !DILocation(line: 167, column: 79, scope: !1165, inlinedAt: !1175)
!1232 = !DILocation(line: 169, column: 14, scope: !1233, inlinedAt: !1175)
!1233 = distinct !DILexicalBlock(scope: !1165, file: !509, line: 169, column: 7)
!1234 = !{!1014, !917, i64 32}
!1235 = !DILocation(line: 169, column: 20, scope: !1233, inlinedAt: !1175)
!1236 = !DILocation(line: 169, column: 7, scope: !1165, inlinedAt: !1175)
!1237 = !DILocation(line: 0, scope: !1177, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 170, column: 30, scope: !1233, inlinedAt: !1175)
!1239 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !1238)
!1240 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !1238)
!1241 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !1238)
!1242 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !1238)
!1243 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 170, column: 11, scope: !1233, inlinedAt: !1175)
!1245 = !DILocation(line: 0, scope: !1189, inlinedAt: !1244)
!1246 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !1244)
!1247 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !1244)
!1248 = !DILocation(line: 170, column: 11, scope: !1233, inlinedAt: !1175)
!1249 = !DILocation(line: 170, column: 62, scope: !1233, inlinedAt: !1175)
!1250 = !DILocation(line: 171, column: 13, scope: !1233, inlinedAt: !1175)
!1251 = !DILocation(line: 170, column: 7, scope: !1233, inlinedAt: !1175)
!1252 = !DILocation(line: 170, column: 5, scope: !1233, inlinedAt: !1175)
!1253 = !DILocation(line: 248, column: 13, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1122, file: !509, line: 248, column: 13)
!1255 = !DILocation(line: 248, column: 34, scope: !1254)
!1256 = !DILocation(line: 248, column: 13, scope: !1122)
!1257 = !DILocation(line: 0, scope: !1045, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 250, column: 34, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !509, line: 249, column: 11)
!1260 = !DILocation(line: 589, column: 18, scope: !1053, inlinedAt: !1258)
!1261 = !DILocation(line: 589, column: 29, scope: !1053, inlinedAt: !1258)
!1262 = !DILocation(line: 589, column: 7, scope: !1045, inlinedAt: !1258)
!1263 = !DILocation(line: 606, column: 33, scope: !1045, inlinedAt: !1258)
!1264 = !DILocation(line: 597, column: 23, scope: !1052, inlinedAt: !1258)
!1265 = !DILocation(line: 0, scope: !1052, inlinedAt: !1258)
!1266 = !DILocation(line: 598, column: 17, scope: !1065, inlinedAt: !1258)
!1267 = !DILocation(line: 598, column: 11, scope: !1052, inlinedAt: !1258)
!1268 = !DILocation(line: 600, column: 30, scope: !1052, inlinedAt: !1258)
!1269 = !DILocation(line: 600, column: 14, scope: !1052, inlinedAt: !1258)
!1270 = !DILocation(line: 600, column: 18, scope: !1052, inlinedAt: !1258)
!1271 = !DILocation(line: 601, column: 28, scope: !1052, inlinedAt: !1258)
!1272 = !DILocation(line: 605, column: 24, scope: !1045, inlinedAt: !1258)
!1273 = !DILocation(line: 607, column: 10, scope: !1045, inlinedAt: !1258)
!1274 = !DILocation(line: 608, column: 14, scope: !1045, inlinedAt: !1258)
!1275 = !DILocation(line: 608, column: 19, scope: !1045, inlinedAt: !1258)
!1276 = !DILocation(line: 250, column: 33, scope: !1259)
!1277 = !DILocation(line: 251, column: 17, scope: !1259)
!1278 = !DILocation(line: 253, column: 24, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !509, line: 252, column: 15)
!1280 = distinct !DILexicalBlock(scope: !1259, file: !509, line: 251, column: 17)
!1281 = !DILocation(line: 256, column: 17, scope: !1279)
!1282 = !DILocation(line: 260, column: 14, scope: !1122)
!1283 = !DILocation(line: 244, column: 48, scope: !1123)
!1284 = !DILocation(line: 244, column: 27, scope: !1123)
!1285 = distinct !{!1285, !1108, !1286, !967, !968}
!1286 = !DILocation(line: 261, column: 7, scope: !1109)
!1287 = !DILocation(line: 264, column: 37, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1112, file: !509, line: 263, column: 7)
!1289 = !DILocation(line: 0, scope: !1125, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 264, column: 9, scope: !1288)
!1291 = !DILocation(line: 95, column: 31, scope: !1125, inlinedAt: !1290)
!1292 = !DILocation(line: 95, column: 14, scope: !1125, inlinedAt: !1290)
!1293 = !DILocation(line: 96, column: 33, scope: !1125, inlinedAt: !1290)
!1294 = !DILocation(line: 96, column: 16, scope: !1125, inlinedAt: !1290)
!1295 = !DILocation(line: 97, column: 32, scope: !1125, inlinedAt: !1290)
!1296 = !DILocation(line: 97, column: 15, scope: !1125, inlinedAt: !1290)
!1297 = !DILocation(line: 98, column: 35, scope: !1125, inlinedAt: !1290)
!1298 = !DILocation(line: 98, column: 18, scope: !1125, inlinedAt: !1290)
!1299 = !DILocation(line: 99, column: 45, scope: !1157, inlinedAt: !1290)
!1300 = !DILocation(line: 265, column: 31, scope: !1288)
!1301 = !DILocation(line: 101, column: 35, scope: !1157, inlinedAt: !1290)
!1302 = !DILocation(line: 101, column: 18, scope: !1157, inlinedAt: !1290)
!1303 = !DILocation(line: 101, column: 17, scope: !1157, inlinedAt: !1290)
!1304 = !DILocation(line: 101, column: 5, scope: !1157, inlinedAt: !1290)
!1305 = !DILocalVariable(name: "p", arg: 1, scope: !1306, file: !1307, line: 48, type: !1168)
!1306 = distinct !DISubprogram(name: "IsMagickColorEqual", scope: !1307, file: !1307, line: 48, type: !1308, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1310)
!1307 = !DIFile(filename: "apps/538.imagick_r/src/magick/color-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1d5db1c576095b1d3349b678b2a970e8")
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!617, !1168, !1168}
!1310 = !{!1305, !1311}
!1311 = !DILocalVariable(name: "q", arg: 2, scope: !1306, file: !1307, line: 49, type: !1168)
!1312 = !DILocation(line: 0, scope: !1306, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 266, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1288, file: !509, line: 266, column: 13)
!1315 = !DILocation(line: 51, column: 33, scope: !1316, inlinedAt: !1313)
!1316 = distinct !DILexicalBlock(scope: !1306, file: !1307, line: 51, column: 7)
!1317 = !DILocation(line: 51, column: 62, scope: !1316, inlinedAt: !1313)
!1318 = !DILocation(line: 51, column: 7, scope: !1306, inlinedAt: !1313)
!1319 = !DILocation(line: 54, column: 33, scope: !1320, inlinedAt: !1313)
!1320 = distinct !DILexicalBlock(scope: !1306, file: !1307, line: 54, column: 7)
!1321 = !DILocation(line: 59, column: 26, scope: !1322, inlinedAt: !1313)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !1307, line: 59, column: 11)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !1307, line: 58, column: 5)
!1324 = distinct !DILexicalBlock(scope: !1306, file: !1307, line: 57, column: 7)
!1325 = !DILocation(line: 59, column: 11, scope: !1322, inlinedAt: !1313)
!1326 = !DILocation(line: 59, column: 39, scope: !1322, inlinedAt: !1313)
!1327 = !DILocation(line: 59, column: 11, scope: !1323, inlinedAt: !1313)
!1328 = !DILocation(line: 61, column: 11, scope: !1323, inlinedAt: !1313)
!1329 = !DILocation(line: 64, column: 18, scope: !1330, inlinedAt: !1313)
!1330 = distinct !DILexicalBlock(scope: !1306, file: !1307, line: 64, column: 7)
!1331 = !DILocation(line: 64, column: 7, scope: !1330, inlinedAt: !1313)
!1332 = !DILocation(line: 64, column: 27, scope: !1330, inlinedAt: !1313)
!1333 = !DILocation(line: 64, column: 7, scope: !1306, inlinedAt: !1313)
!1334 = !DILocation(line: 66, column: 20, scope: !1335, inlinedAt: !1313)
!1335 = distinct !DILexicalBlock(scope: !1306, file: !1307, line: 66, column: 7)
!1336 = !DILocation(line: 66, column: 7, scope: !1335, inlinedAt: !1313)
!1337 = !DILocation(line: 66, column: 31, scope: !1335, inlinedAt: !1313)
!1338 = !DILocation(line: 66, column: 7, scope: !1306, inlinedAt: !1313)
!1339 = !DILocation(line: 68, column: 19, scope: !1340, inlinedAt: !1313)
!1340 = distinct !DILexicalBlock(scope: !1306, file: !1307, line: 68, column: 7)
!1341 = !DILocation(line: 68, column: 7, scope: !1340, inlinedAt: !1313)
!1342 = !DILocation(line: 68, column: 29, scope: !1340, inlinedAt: !1313)
!1343 = !DILocation(line: 68, column: 7, scope: !1306, inlinedAt: !1313)
!1344 = !DILocation(line: 70, column: 41, scope: !1345, inlinedAt: !1313)
!1345 = distinct !DILexicalBlock(scope: !1306, file: !1307, line: 70, column: 7)
!1346 = !DILocation(line: 71, column: 21, scope: !1345, inlinedAt: !1313)
!1347 = !DILocation(line: 71, column: 8, scope: !1345, inlinedAt: !1313)
!1348 = !DILocation(line: 71, column: 32, scope: !1345, inlinedAt: !1313)
!1349 = !DILocation(line: 70, column: 7, scope: !1306, inlinedAt: !1313)
!1350 = !DILocation(line: 262, column: 58, scope: !1112)
!1351 = distinct !{!1351, !1114, !1352, !967, !968}
!1352 = !DILocation(line: 268, column: 7, scope: !1113)
!1353 = !DILocation(line: 95, column: 13, scope: !1125, inlinedAt: !1290)
!1354 = !DILocation(line: 96, column: 15, scope: !1125, inlinedAt: !1290)
!1355 = !DILocation(line: 97, column: 14, scope: !1125, inlinedAt: !1290)
!1356 = !DILocation(line: 98, column: 17, scope: !1125, inlinedAt: !1290)
!1357 = !DILocation(line: 270, column: 28, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1107, file: !509, line: 269, column: 11)
!1359 = !DILocation(line: 270, column: 9, scope: !1358)
!1360 = !DILocation(line: 0, scope: !1113)
!1361 = !DILocation(line: 273, column: 40, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !509, line: 273, column: 15)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !509, line: 272, column: 9)
!1364 = !DILocation(line: 273, column: 15, scope: !1363)
!1365 = !DILocation(line: 274, column: 45, scope: !1362)
!1366 = !DILocation(line: 274, column: 24, scope: !1362)
!1367 = !DILocation(line: 274, column: 28, scope: !1362)
!1368 = !DILocation(line: 274, column: 13, scope: !1362)
!1369 = !DILocation(line: 277, column: 76, scope: !1362)
!1370 = !DILocation(line: 278, column: 26, scope: !1362)
!1371 = !DILocation(line: 277, column: 45, scope: !1362)
!1372 = !DILocation(line: 277, column: 28, scope: !1362)
!1373 = !DILocation(line: 279, column: 26, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1363, file: !509, line: 279, column: 15)
!1375 = !DILocation(line: 279, column: 31, scope: !1374)
!1376 = !DILocation(line: 279, column: 15, scope: !1363)
!1377 = !DILocation(line: 281, column: 22, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !509, line: 280, column: 13)
!1379 = !DILocation(line: 284, column: 15, scope: !1378)
!1380 = !DILocation(line: 286, column: 11, scope: !1363)
!1381 = !DILocation(line: 286, column: 37, scope: !1363)
!1382 = !DILocation(line: 287, column: 23, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1363, file: !509, line: 287, column: 15)
!1384 = !DILocation(line: 287, column: 34, scope: !1383)
!1385 = !DILocation(line: 287, column: 53, scope: !1383)
!1386 = !DILocation(line: 288, column: 23, scope: !1383)
!1387 = !{!1014, !917, i64 0}
!1388 = !DILocation(line: 288, column: 37, scope: !1383)
!1389 = !DILocation(line: 287, column: 15, scope: !1363)
!1390 = !DILocation(line: 290, column: 22, scope: !1363)
!1391 = !DILocation(line: 289, column: 38, scope: !1383)
!1392 = !DILocation(line: 289, column: 24, scope: !1383)
!1393 = !DILocation(line: 289, column: 32, scope: !1383)
!1394 = !DILocation(line: 289, column: 37, scope: !1383)
!1395 = !{!1396, !1016, i64 8}
!1396 = !{!"_ColorPacket", !1015, i64 0, !1016, i64 8, !926, i64 16}
!1397 = !DILocation(line: 289, column: 13, scope: !1383)
!1398 = !DILocation(line: 290, column: 30, scope: !1363)
!1399 = !DILocation(line: 290, column: 35, scope: !1363)
!1400 = !{!1396, !926, i64 16}
!1401 = !DILocation(line: 291, column: 35, scope: !1363)
!1402 = !DILocation(line: 0, scope: !1358)
!1403 = !{!917, !917, i64 0}
!1404 = !DILocation(line: 294, column: 8, scope: !1107)
!1405 = !DILocation(line: 237, column: 46, scope: !1102)
!1406 = distinct !{!1406, !1105, !1407, !967, !968}
!1407 = !DILocation(line: 295, column: 5, scope: !1103)
!1408 = !DILocation(line: 297, column: 14, scope: !1094)
!1409 = !DILocalVariable(name: "image", arg: 1, scope: !1410, file: !1411, line: 27, type: !863)
!1410 = distinct !DISubprogram(name: "SetImageProgress", scope: !1411, file: !1411, line: 27, type: !1412, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1414)
!1411 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!617, !863, !618, !620, !621}
!1414 = !{!1409, !1415, !1416, !1417, !1418}
!1415 = !DILocalVariable(name: "tag", arg: 2, scope: !1410, file: !1411, line: 28, type: !618)
!1416 = !DILocalVariable(name: "offset", arg: 3, scope: !1410, file: !1411, line: 28, type: !620)
!1417 = !DILocalVariable(name: "extent", arg: 4, scope: !1410, file: !1411, line: 28, type: !621)
!1418 = !DILocalVariable(name: "message", scope: !1410, file: !1411, line: 31, type: !740)
!1419 = !DILocation(line: 0, scope: !1410, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 296, column: 13, scope: !1094)
!1421 = !DILocation(line: 30, column: 3, scope: !1410, inlinedAt: !1420)
!1422 = !DILocation(line: 31, column: 5, scope: !1410, inlinedAt: !1420)
!1423 = !DILocation(line: 33, column: 14, scope: !1424, inlinedAt: !1420)
!1424 = distinct !DILexicalBlock(scope: !1410, file: !1411, line: 33, column: 7)
!1425 = !{!1014, !925, i64 568}
!1426 = !DILocation(line: 33, column: 31, scope: !1424, inlinedAt: !1420)
!1427 = !DILocation(line: 33, column: 7, scope: !1410, inlinedAt: !1420)
!1428 = !DILocation(line: 37, column: 1, scope: !1410, inlinedAt: !1420)
!1429 = !DILocation(line: 298, column: 9, scope: !1094)
!1430 = !DILocation(line: 35, column: 10, scope: !1410, inlinedAt: !1420)
!1431 = !DILocation(line: 36, column: 17, scope: !1410, inlinedAt: !1420)
!1432 = !DILocation(line: 36, column: 63, scope: !1410, inlinedAt: !1420)
!1433 = !{!1014, !925, i64 576}
!1434 = !DILocation(line: 36, column: 10, scope: !1410, inlinedAt: !1420)
!1435 = !DILocation(line: 298, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1094, file: !509, line: 298, column: 9)
!1437 = !DILocation(line: 231, column: 41, scope: !1088)
!1438 = distinct !{!1438, !1092, !1439, !967, !968}
!1439 = !DILocation(line: 300, column: 3, scope: !1089)
!1440 = !DILocation(line: 301, column: 14, scope: !971)
!1441 = !DILocation(line: 302, column: 3, scope: !971)
!1442 = !DILocation(line: 303, column: 1, scope: !971)
!1443 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1444, file: !1444, line: 42, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1444 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!506, !867, !867}
!1447 = !{}
!1448 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!617, !901, !618, !618, !867, !1451, !618, !618, null}
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!1452 = distinct !DISubprogram(name: "DefineImageHistogram", scope: !509, file: !509, line: 335, type: !1453, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1456)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !863, !513, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462}
!1457 = !DILocalVariable(name: "image", arg: 1, scope: !1452, file: !509, line: 335, type: !863)
!1458 = !DILocalVariable(name: "node_info", arg: 2, scope: !1452, file: !509, line: 335, type: !513)
!1459 = !DILocalVariable(name: "histogram", arg: 3, scope: !1452, file: !509, line: 336, type: !1455)
!1460 = !DILocalVariable(name: "i", scope: !1452, file: !509, line: 339, type: !529)
!1461 = !DILocalVariable(name: "number_children", scope: !1452, file: !509, line: 342, type: !525)
!1462 = !DILocalVariable(name: "p", scope: !1463, file: !509, line: 354, type: !486)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !509, line: 352, column: 5)
!1464 = distinct !DILexicalBlock(scope: !1452, file: !509, line: 351, column: 7)
!1465 = !DILocation(line: 0, scope: !1452)
!1466 = !DILocation(line: 347, column: 26, scope: !1452)
!1467 = !DILocation(line: 347, column: 32, scope: !1452)
!1468 = !DILocation(line: 347, column: 19, scope: !1452)
!1469 = !DILocation(line: 348, column: 3, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1452, file: !509, line: 348, column: 3)
!1471 = !DILocation(line: 349, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !509, line: 349, column: 9)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !509, line: 348, column: 3)
!1474 = !DILocation(line: 349, column: 29, scope: !1472)
!1475 = !DILocation(line: 349, column: 9, scope: !1473)
!1476 = !DILocation(line: 350, column: 7, scope: !1472)
!1477 = !DILocation(line: 348, column: 45, scope: !1473)
!1478 = !DILocation(line: 348, column: 15, scope: !1473)
!1479 = distinct !{!1479, !1469, !1480, !967, !968}
!1480 = !DILocation(line: 350, column: 63, scope: !1470)
!1481 = !DILocation(line: 351, column: 18, scope: !1464)
!1482 = !DILocation(line: 351, column: 24, scope: !1464)
!1483 = !DILocation(line: 351, column: 7, scope: !1452)
!1484 = !DILocation(line: 0, scope: !1463)
!1485 = !DILocation(line: 357, column: 42, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !509, line: 357, column: 7)
!1487 = distinct !DILexicalBlock(scope: !1463, file: !509, line: 357, column: 7)
!1488 = !DILocation(line: 357, column: 19, scope: !1486)
!1489 = !DILocation(line: 357, column: 7, scope: !1487)
!1490 = !DILocation(line: 356, column: 20, scope: !1463)
!1491 = !DILocation(line: 359, column: 10, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !509, line: 358, column: 7)
!1493 = !DILocation(line: 359, column: 32, scope: !1492)
!1494 = !DILocation(line: 360, column: 32, scope: !1492)
!1495 = !DILocation(line: 360, column: 10, scope: !1492)
!1496 = !DILocation(line: 360, column: 23, scope: !1492)
!1497 = !DILocation(line: 360, column: 28, scope: !1492)
!1498 = !DILocation(line: 361, column: 32, scope: !1492)
!1499 = !DILocation(line: 361, column: 23, scope: !1492)
!1500 = !DILocation(line: 361, column: 28, scope: !1492)
!1501 = !DILocation(line: 362, column: 21, scope: !1492)
!1502 = !DILocation(line: 363, column: 10, scope: !1492)
!1503 = !DILocation(line: 357, column: 58, scope: !1486)
!1504 = distinct !{!1504, !1489, !1505, !967, !968}
!1505 = !DILocation(line: 364, column: 7, scope: !1487)
!1506 = !DILocation(line: 366, column: 1, scope: !1452)
!1507 = distinct !DISubprogram(name: "IsHistogramImage", scope: !509, file: !509, line: 638, type: !1508, scopeLine: 640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1510)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!617, !863, !901}
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1511 = !DILocalVariable(name: "image", arg: 1, scope: !1507, file: !509, line: 638, type: !863)
!1512 = !DILocalVariable(name: "exception", arg: 2, scope: !1507, file: !509, line: 639, type: !901)
!1513 = !DILocalVariable(name: "image_view", scope: !1507, file: !509, line: 644, type: !978)
!1514 = !DILocalVariable(name: "cube_info", scope: !1507, file: !509, line: 647, type: !507)
!1515 = !DILocalVariable(name: "pixel", scope: !1507, file: !509, line: 650, type: !984)
!1516 = !DILocalVariable(name: "target", scope: !1507, file: !509, line: 651, type: !984)
!1517 = !DILocalVariable(name: "indexes", scope: !1507, file: !509, line: 654, type: !553)
!1518 = !DILocalVariable(name: "p", scope: !1507, file: !509, line: 657, type: !551)
!1519 = !DILocalVariable(name: "x", scope: !1507, file: !509, line: 660, type: !529)
!1520 = !DILocalVariable(name: "node_info", scope: !1507, file: !509, line: 663, type: !513)
!1521 = !DILocalVariable(name: "i", scope: !1507, file: !509, line: 666, type: !529)
!1522 = !DILocalVariable(name: "id", scope: !1507, file: !509, line: 669, type: !525)
!1523 = !DILocalVariable(name: "index", scope: !1507, file: !509, line: 670, type: !525)
!1524 = !DILocalVariable(name: "level", scope: !1507, file: !509, line: 671, type: !525)
!1525 = !DILocalVariable(name: "y", scope: !1507, file: !509, line: 674, type: !529)
!1526 = !DILocation(line: 0, scope: !1507)
!1527 = !DILocation(line: 649, column: 3, scope: !1507)
!1528 = !DILocation(line: 650, column: 5, scope: !1507)
!1529 = !DILocation(line: 651, column: 5, scope: !1507)
!1530 = !DILocation(line: 678, column: 14, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1507, file: !509, line: 678, column: 7)
!1532 = !DILocation(line: 678, column: 20, scope: !1531)
!1533 = !DILocation(line: 678, column: 7, scope: !1507)
!1534 = !DILocation(line: 679, column: 68, scope: !1531)
!1535 = !DILocation(line: 679, column: 12, scope: !1531)
!1536 = !DILocation(line: 679, column: 5, scope: !1531)
!1537 = !DILocation(line: 680, column: 15, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1507, file: !509, line: 680, column: 7)
!1539 = !DILocation(line: 680, column: 29, scope: !1538)
!1540 = !DILocation(line: 680, column: 45, scope: !1538)
!1541 = !DILocation(line: 680, column: 56, scope: !1538)
!1542 = !{!1014, !916, i64 64}
!1543 = !DILocation(line: 680, column: 63, scope: !1538)
!1544 = !DILocation(line: 680, column: 7, scope: !1507)
!1545 = !DILocation(line: 486, column: 26, scope: !1033, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 687, column: 13, scope: !1507)
!1547 = !DILocation(line: 0, scope: !1033, inlinedAt: !1546)
!1548 = !DILocation(line: 487, column: 17, scope: !1041, inlinedAt: !1546)
!1549 = !DILocation(line: 487, column: 7, scope: !1033, inlinedAt: !1546)
!1550 = !DILocation(line: 489, column: 10, scope: !1033, inlinedAt: !1546)
!1551 = !DILocation(line: 0, scope: !1045, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 493, column: 19, scope: !1033, inlinedAt: !1546)
!1553 = !DILocation(line: 589, column: 18, scope: !1053, inlinedAt: !1552)
!1554 = !DILocation(line: 589, column: 29, scope: !1053, inlinedAt: !1552)
!1555 = !DILocation(line: 589, column: 7, scope: !1045, inlinedAt: !1552)
!1556 = !DILocation(line: 606, column: 33, scope: !1045, inlinedAt: !1552)
!1557 = !DILocation(line: 597, column: 23, scope: !1052, inlinedAt: !1552)
!1558 = !DILocation(line: 0, scope: !1052, inlinedAt: !1552)
!1559 = !DILocation(line: 598, column: 17, scope: !1065, inlinedAt: !1552)
!1560 = !DILocation(line: 598, column: 11, scope: !1052, inlinedAt: !1552)
!1561 = !DILocation(line: 600, column: 30, scope: !1052, inlinedAt: !1552)
!1562 = !DILocation(line: 600, column: 14, scope: !1052, inlinedAt: !1552)
!1563 = !DILocation(line: 600, column: 18, scope: !1052, inlinedAt: !1552)
!1564 = !DILocation(line: 601, column: 28, scope: !1052, inlinedAt: !1552)
!1565 = !DILocation(line: 493, column: 18, scope: !1033, inlinedAt: !1546)
!1566 = !DILocation(line: 691, column: 67, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !509, line: 689, column: 5)
!1568 = distinct !DILexicalBlock(scope: !1507, file: !509, line: 688, column: 7)
!1569 = !DILocation(line: 690, column: 14, scope: !1567)
!1570 = !DILocation(line: 692, column: 7, scope: !1567)
!1571 = !DILocation(line: 605, column: 24, scope: !1045, inlinedAt: !1552)
!1572 = !DILocation(line: 606, column: 24, scope: !1045, inlinedAt: !1552)
!1573 = !DILocation(line: 607, column: 10, scope: !1045, inlinedAt: !1552)
!1574 = !DILocation(line: 608, column: 14, scope: !1045, inlinedAt: !1552)
!1575 = !DILocation(line: 608, column: 19, scope: !1045, inlinedAt: !1552)
!1576 = !DILocation(line: 694, column: 3, scope: !1507)
!1577 = !DILocation(line: 695, column: 3, scope: !1507)
!1578 = !DILocation(line: 696, column: 14, scope: !1507)
!1579 = !DILocation(line: 699, column: 55, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !509, line: 698, column: 3)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !509, line: 697, column: 3)
!1582 = distinct !DILexicalBlock(scope: !1507, file: !509, line: 697, column: 3)
!1583 = !DILocation(line: 697, column: 34, scope: !1581)
!1584 = !DILocation(line: 697, column: 15, scope: !1581)
!1585 = !DILocation(line: 697, column: 3, scope: !1582)
!1586 = !DILocation(line: 699, column: 7, scope: !1580)
!1587 = !DILocation(line: 700, column: 11, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1580, file: !509, line: 700, column: 9)
!1589 = !DILocation(line: 700, column: 9, scope: !1580)
!1590 = !DILocation(line: 702, column: 13, scope: !1580)
!1591 = !DILocation(line: 703, column: 36, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !509, line: 703, column: 5)
!1593 = distinct !DILexicalBlock(scope: !1580, file: !509, line: 703, column: 5)
!1594 = !DILocation(line: 703, column: 17, scope: !1592)
!1595 = !DILocation(line: 703, column: 5, scope: !1593)
!1596 = !DILocation(line: 0, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !509, line: 704, column: 5)
!1598 = !DILocation(line: 710, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1597, file: !509, line: 710, column: 7)
!1600 = !DILocation(line: 730, column: 19, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !509, line: 730, column: 7)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !509, line: 730, column: 7)
!1603 = !DILocation(line: 730, column: 7, scope: !1602)
!1604 = !DILocation(line: 712, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !509, line: 711, column: 7)
!1606 = distinct !DILexicalBlock(scope: !1599, file: !509, line: 710, column: 7)
!1607 = !DILocation(line: 0, scope: !1125, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 712, column: 9, scope: !1605)
!1609 = !DILocation(line: 95, column: 31, scope: !1125, inlinedAt: !1608)
!1610 = !DILocation(line: 95, column: 14, scope: !1125, inlinedAt: !1608)
!1611 = !DILocation(line: 95, column: 13, scope: !1125, inlinedAt: !1608)
!1612 = !DILocation(line: 96, column: 33, scope: !1125, inlinedAt: !1608)
!1613 = !DILocation(line: 96, column: 16, scope: !1125, inlinedAt: !1608)
!1614 = !DILocation(line: 96, column: 15, scope: !1125, inlinedAt: !1608)
!1615 = !DILocation(line: 97, column: 32, scope: !1125, inlinedAt: !1608)
!1616 = !DILocation(line: 97, column: 15, scope: !1125, inlinedAt: !1608)
!1617 = !DILocation(line: 97, column: 14, scope: !1125, inlinedAt: !1608)
!1618 = !DILocation(line: 98, column: 35, scope: !1125, inlinedAt: !1608)
!1619 = !DILocation(line: 98, column: 18, scope: !1125, inlinedAt: !1608)
!1620 = !DILocation(line: 98, column: 17, scope: !1125, inlinedAt: !1608)
!1621 = !DILocation(line: 99, column: 26, scope: !1157, inlinedAt: !1608)
!1622 = !DILocation(line: 99, column: 45, scope: !1157, inlinedAt: !1608)
!1623 = !DILocation(line: 101, column: 35, scope: !1157, inlinedAt: !1608)
!1624 = !DILocation(line: 101, column: 18, scope: !1157, inlinedAt: !1608)
!1625 = !DILocation(line: 101, column: 17, scope: !1157, inlinedAt: !1608)
!1626 = !DILocation(line: 101, column: 5, scope: !1157, inlinedAt: !1608)
!1627 = !DILocation(line: 0, scope: !1165, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 713, column: 12, scope: !1605)
!1629 = !DILocation(line: 0, scope: !1177, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 166, column: 26, scope: !1165, inlinedAt: !1628)
!1631 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !1630)
!1632 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !1630)
!1633 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !1630)
!1634 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !1630)
!1635 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 166, column: 7, scope: !1165, inlinedAt: !1628)
!1637 = !DILocation(line: 0, scope: !1189, inlinedAt: !1636)
!1638 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !1636)
!1639 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !1636)
!1640 = !DILocation(line: 166, column: 7, scope: !1165, inlinedAt: !1628)
!1641 = !DILocation(line: 166, column: 54, scope: !1165, inlinedAt: !1628)
!1642 = !DILocation(line: 166, column: 64, scope: !1165, inlinedAt: !1628)
!1643 = !DILocation(line: 0, scope: !1177, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 167, column: 26, scope: !1165, inlinedAt: !1628)
!1645 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !1644)
!1646 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !1644)
!1647 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !1644)
!1648 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !1644)
!1649 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 167, column: 7, scope: !1165, inlinedAt: !1628)
!1651 = !DILocation(line: 0, scope: !1189, inlinedAt: !1650)
!1652 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !1650)
!1653 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !1650)
!1654 = !DILocation(line: 167, column: 7, scope: !1165, inlinedAt: !1628)
!1655 = !DILocation(line: 167, column: 56, scope: !1165, inlinedAt: !1628)
!1656 = !DILocation(line: 167, column: 74, scope: !1165, inlinedAt: !1628)
!1657 = !DILocation(line: 166, column: 72, scope: !1165, inlinedAt: !1628)
!1658 = !DILocation(line: 0, scope: !1177, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 168, column: 26, scope: !1165, inlinedAt: !1628)
!1660 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !1659)
!1661 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !1659)
!1662 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !1659)
!1663 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !1659)
!1664 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 168, column: 7, scope: !1165, inlinedAt: !1628)
!1666 = !DILocation(line: 0, scope: !1189, inlinedAt: !1665)
!1667 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !1665)
!1668 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !1665)
!1669 = !DILocation(line: 168, column: 7, scope: !1165, inlinedAt: !1628)
!1670 = !DILocation(line: 168, column: 55, scope: !1165, inlinedAt: !1628)
!1671 = !DILocation(line: 168, column: 73, scope: !1165, inlinedAt: !1628)
!1672 = !DILocation(line: 167, column: 79, scope: !1165, inlinedAt: !1628)
!1673 = !DILocation(line: 169, column: 14, scope: !1233, inlinedAt: !1628)
!1674 = !DILocation(line: 169, column: 20, scope: !1233, inlinedAt: !1628)
!1675 = !DILocation(line: 169, column: 7, scope: !1165, inlinedAt: !1628)
!1676 = !DILocation(line: 0, scope: !1177, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 170, column: 30, scope: !1233, inlinedAt: !1628)
!1678 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !1677)
!1679 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !1677)
!1680 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !1677)
!1681 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !1677)
!1682 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 170, column: 11, scope: !1233, inlinedAt: !1628)
!1684 = !DILocation(line: 0, scope: !1189, inlinedAt: !1683)
!1685 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !1683)
!1686 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !1683)
!1687 = !DILocation(line: 170, column: 11, scope: !1233, inlinedAt: !1628)
!1688 = !DILocation(line: 170, column: 62, scope: !1233, inlinedAt: !1628)
!1689 = !DILocation(line: 171, column: 13, scope: !1233, inlinedAt: !1628)
!1690 = !DILocation(line: 170, column: 7, scope: !1233, inlinedAt: !1628)
!1691 = !DILocation(line: 170, column: 5, scope: !1233, inlinedAt: !1628)
!1692 = !DILocation(line: 714, column: 13, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1605, file: !509, line: 714, column: 13)
!1694 = !DILocation(line: 714, column: 34, scope: !1693)
!1695 = !DILocation(line: 714, column: 13, scope: !1605)
!1696 = !DILocation(line: 0, scope: !1045, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 716, column: 34, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !509, line: 715, column: 11)
!1699 = !DILocation(line: 589, column: 18, scope: !1053, inlinedAt: !1697)
!1700 = !DILocation(line: 589, column: 29, scope: !1053, inlinedAt: !1697)
!1701 = !DILocation(line: 589, column: 7, scope: !1045, inlinedAt: !1697)
!1702 = !DILocation(line: 606, column: 33, scope: !1045, inlinedAt: !1697)
!1703 = !DILocation(line: 597, column: 23, scope: !1052, inlinedAt: !1697)
!1704 = !DILocation(line: 0, scope: !1052, inlinedAt: !1697)
!1705 = !DILocation(line: 598, column: 17, scope: !1065, inlinedAt: !1697)
!1706 = !DILocation(line: 598, column: 11, scope: !1052, inlinedAt: !1697)
!1707 = !DILocation(line: 600, column: 30, scope: !1052, inlinedAt: !1697)
!1708 = !DILocation(line: 600, column: 14, scope: !1052, inlinedAt: !1697)
!1709 = !DILocation(line: 600, column: 18, scope: !1052, inlinedAt: !1697)
!1710 = !DILocation(line: 601, column: 28, scope: !1052, inlinedAt: !1697)
!1711 = !DILocation(line: 605, column: 24, scope: !1045, inlinedAt: !1697)
!1712 = !DILocation(line: 607, column: 10, scope: !1045, inlinedAt: !1697)
!1713 = !DILocation(line: 608, column: 14, scope: !1045, inlinedAt: !1697)
!1714 = !DILocation(line: 608, column: 19, scope: !1045, inlinedAt: !1697)
!1715 = !DILocation(line: 716, column: 33, scope: !1698)
!1716 = !DILocation(line: 717, column: 17, scope: !1698)
!1717 = !DILocation(line: 728, column: 11, scope: !1597)
!1718 = !DILocation(line: 726, column: 14, scope: !1605)
!1719 = !DILocation(line: 710, column: 48, scope: !1606)
!1720 = !DILocation(line: 710, column: 27, scope: !1606)
!1721 = distinct !{!1721, !1598, !1722, !967, !968}
!1722 = !DILocation(line: 727, column: 7, scope: !1599)
!1723 = !DILocation(line: 732, column: 37, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1601, file: !509, line: 731, column: 7)
!1725 = !DILocation(line: 0, scope: !1125, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 732, column: 9, scope: !1724)
!1727 = !DILocation(line: 95, column: 31, scope: !1125, inlinedAt: !1726)
!1728 = !DILocation(line: 95, column: 14, scope: !1125, inlinedAt: !1726)
!1729 = !DILocation(line: 96, column: 33, scope: !1125, inlinedAt: !1726)
!1730 = !DILocation(line: 96, column: 16, scope: !1125, inlinedAt: !1726)
!1731 = !DILocation(line: 97, column: 32, scope: !1125, inlinedAt: !1726)
!1732 = !DILocation(line: 97, column: 15, scope: !1125, inlinedAt: !1726)
!1733 = !DILocation(line: 98, column: 35, scope: !1125, inlinedAt: !1726)
!1734 = !DILocation(line: 98, column: 18, scope: !1125, inlinedAt: !1726)
!1735 = !DILocation(line: 99, column: 45, scope: !1157, inlinedAt: !1726)
!1736 = !DILocation(line: 733, column: 31, scope: !1724)
!1737 = !DILocation(line: 101, column: 35, scope: !1157, inlinedAt: !1726)
!1738 = !DILocation(line: 101, column: 18, scope: !1157, inlinedAt: !1726)
!1739 = !DILocation(line: 101, column: 17, scope: !1157, inlinedAt: !1726)
!1740 = !DILocation(line: 101, column: 5, scope: !1157, inlinedAt: !1726)
!1741 = !DILocation(line: 0, scope: !1306, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 734, column: 13, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1724, file: !509, line: 734, column: 13)
!1744 = !DILocation(line: 51, column: 33, scope: !1316, inlinedAt: !1742)
!1745 = !DILocation(line: 51, column: 62, scope: !1316, inlinedAt: !1742)
!1746 = !DILocation(line: 51, column: 7, scope: !1306, inlinedAt: !1742)
!1747 = !DILocation(line: 54, column: 33, scope: !1320, inlinedAt: !1742)
!1748 = !DILocation(line: 59, column: 26, scope: !1322, inlinedAt: !1742)
!1749 = !DILocation(line: 59, column: 11, scope: !1322, inlinedAt: !1742)
!1750 = !DILocation(line: 59, column: 39, scope: !1322, inlinedAt: !1742)
!1751 = !DILocation(line: 59, column: 11, scope: !1323, inlinedAt: !1742)
!1752 = !DILocation(line: 61, column: 11, scope: !1323, inlinedAt: !1742)
!1753 = !DILocation(line: 64, column: 18, scope: !1330, inlinedAt: !1742)
!1754 = !DILocation(line: 64, column: 7, scope: !1330, inlinedAt: !1742)
!1755 = !DILocation(line: 64, column: 27, scope: !1330, inlinedAt: !1742)
!1756 = !DILocation(line: 64, column: 7, scope: !1306, inlinedAt: !1742)
!1757 = !DILocation(line: 66, column: 20, scope: !1335, inlinedAt: !1742)
!1758 = !DILocation(line: 66, column: 7, scope: !1335, inlinedAt: !1742)
!1759 = !DILocation(line: 66, column: 31, scope: !1335, inlinedAt: !1742)
!1760 = !DILocation(line: 66, column: 7, scope: !1306, inlinedAt: !1742)
!1761 = !DILocation(line: 68, column: 19, scope: !1340, inlinedAt: !1742)
!1762 = !DILocation(line: 68, column: 7, scope: !1340, inlinedAt: !1742)
!1763 = !DILocation(line: 68, column: 29, scope: !1340, inlinedAt: !1742)
!1764 = !DILocation(line: 68, column: 7, scope: !1306, inlinedAt: !1742)
!1765 = !DILocation(line: 70, column: 41, scope: !1345, inlinedAt: !1742)
!1766 = !DILocation(line: 71, column: 21, scope: !1345, inlinedAt: !1742)
!1767 = !DILocation(line: 71, column: 8, scope: !1345, inlinedAt: !1742)
!1768 = !DILocation(line: 71, column: 32, scope: !1345, inlinedAt: !1742)
!1769 = !DILocation(line: 70, column: 7, scope: !1306, inlinedAt: !1742)
!1770 = !DILocation(line: 730, column: 58, scope: !1601)
!1771 = distinct !{!1771, !1603, !1772, !967, !968}
!1772 = !DILocation(line: 736, column: 7, scope: !1602)
!1773 = !DILocation(line: 95, column: 13, scope: !1125, inlinedAt: !1726)
!1774 = !DILocation(line: 96, column: 15, scope: !1125, inlinedAt: !1726)
!1775 = !DILocation(line: 97, column: 14, scope: !1125, inlinedAt: !1726)
!1776 = !DILocation(line: 98, column: 17, scope: !1125, inlinedAt: !1726)
!1777 = !DILocation(line: 738, column: 28, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1597, file: !509, line: 737, column: 11)
!1779 = !DILocation(line: 738, column: 33, scope: !1778)
!1780 = !DILocation(line: 738, column: 9, scope: !1778)
!1781 = !DILocation(line: 0, scope: !1602)
!1782 = !DILocation(line: 744, column: 40, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !509, line: 744, column: 15)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !509, line: 740, column: 9)
!1785 = !DILocation(line: 744, column: 15, scope: !1784)
!1786 = !DILocation(line: 745, column: 45, scope: !1783)
!1787 = !DILocation(line: 745, column: 24, scope: !1783)
!1788 = !DILocation(line: 745, column: 28, scope: !1783)
!1789 = !DILocation(line: 745, column: 13, scope: !1783)
!1790 = !DILocation(line: 748, column: 76, scope: !1783)
!1791 = !DILocation(line: 749, column: 26, scope: !1783)
!1792 = !DILocation(line: 748, column: 45, scope: !1783)
!1793 = !DILocation(line: 748, column: 28, scope: !1783)
!1794 = !DILocation(line: 750, column: 26, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1784, file: !509, line: 750, column: 15)
!1796 = !DILocation(line: 750, column: 31, scope: !1795)
!1797 = !DILocation(line: 750, column: 15, scope: !1784)
!1798 = !DILocation(line: 757, column: 11, scope: !1784)
!1799 = !DILocation(line: 757, column: 37, scope: !1784)
!1800 = !DILocation(line: 758, column: 23, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1784, file: !509, line: 758, column: 15)
!1802 = !DILocation(line: 758, column: 34, scope: !1801)
!1803 = !DILocation(line: 758, column: 53, scope: !1801)
!1804 = !DILocation(line: 759, column: 23, scope: !1801)
!1805 = !DILocation(line: 759, column: 37, scope: !1801)
!1806 = !DILocation(line: 758, column: 15, scope: !1784)
!1807 = !DILocation(line: 761, column: 22, scope: !1784)
!1808 = !DILocation(line: 760, column: 38, scope: !1801)
!1809 = !DILocation(line: 760, column: 24, scope: !1801)
!1810 = !DILocation(line: 760, column: 32, scope: !1801)
!1811 = !DILocation(line: 760, column: 37, scope: !1801)
!1812 = !DILocation(line: 760, column: 13, scope: !1801)
!1813 = !DILocation(line: 761, column: 30, scope: !1784)
!1814 = !DILocation(line: 761, column: 35, scope: !1784)
!1815 = !DILocation(line: 762, column: 35, scope: !1784)
!1816 = !DILocation(line: 763, column: 28, scope: !1784)
!1817 = !DILocation(line: 764, column: 33, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1784, file: !509, line: 764, column: 15)
!1819 = !DILocation(line: 764, column: 15, scope: !1784)
!1820 = !DILocation(line: 767, column: 8, scope: !1597)
!1821 = !DILocation(line: 703, column: 46, scope: !1592)
!1822 = distinct !{!1822, !1595, !1823, !967, !968}
!1823 = !DILocation(line: 768, column: 5, scope: !1593)
!1824 = !DILocation(line: 769, column: 30, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1580, file: !509, line: 769, column: 9)
!1826 = !DILocation(line: 769, column: 11, scope: !1825)
!1827 = !DILocation(line: 769, column: 9, scope: !1580)
!1828 = !DILocation(line: 697, column: 41, scope: !1581)
!1829 = distinct !{!1829, !1585, !1830, !967, !968}
!1830 = !DILocation(line: 771, column: 3, scope: !1582)
!1831 = !DILocation(line: 0, scope: !1582)
!1832 = !DILocation(line: 772, column: 14, scope: !1507)
!1833 = !DILocation(line: 0, scope: !944, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 773, column: 13, scope: !1507)
!1835 = !DILocation(line: 400, column: 37, scope: !944, inlinedAt: !1834)
!1836 = !DILocation(line: 400, column: 3, scope: !944, inlinedAt: !1834)
!1837 = !DILocation(line: 403, column: 22, scope: !955, inlinedAt: !1834)
!1838 = !DILocation(line: 401, column: 3, scope: !944, inlinedAt: !1834)
!1839 = !DILocation(line: 403, column: 34, scope: !955, inlinedAt: !1834)
!1840 = !DILocation(line: 405, column: 7, scope: !955, inlinedAt: !1834)
!1841 = !DILocation(line: 406, column: 26, scope: !955, inlinedAt: !1834)
!1842 = !DILocation(line: 407, column: 34, scope: !944, inlinedAt: !1834)
!1843 = !DILocation(line: 407, column: 3, scope: !955, inlinedAt: !1834)
!1844 = distinct !{!1844, !1838, !1845, !967, !968}
!1845 = !DILocation(line: 407, column: 51, scope: !944, inlinedAt: !1834)
!1846 = !DILocation(line: 408, column: 23, scope: !944, inlinedAt: !1834)
!1847 = !DILocation(line: 774, column: 31, scope: !1507)
!1848 = !DILocation(line: 774, column: 12, scope: !1507)
!1849 = !DILocation(line: 774, column: 3, scope: !1507)
!1850 = !DILocation(line: 775, column: 1, scope: !1507)
!1851 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !1852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!617, !1854, !618, !618, !867, !618, null}
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!1856 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !863, !1129}
!1859 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !465, file: !465, line: 55, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!978, !863, !901}
!1862 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !465, file: !465, line: 69, type: !1863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!551, !1865, !1867, !1867, !867, !867, !901}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!1868 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !465, file: !465, line: 66, type: !1869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!553, !1865}
!1871 = !DISubprogram(name: "AcquireMagickMemory", scope: !1444, file: !1444, line: 40, type: !1872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!506, !867}
!1874 = !DISubprogram(name: "ResizeQuantumMemory", scope: !1444, file: !1444, line: 55, type: !1875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!506, !506, !867, !867}
!1877 = !DISubprogram(name: "DestroyCacheView", scope: !465, file: !465, line: 57, type: !1878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!978, !978}
!1880 = distinct !DISubprogram(name: "IsPaletteImage", scope: !509, file: !509, line: 803, type: !1508, scopeLine: 805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1882 = !DILocalVariable(name: "image", arg: 1, scope: !1880, file: !509, line: 803, type: !863)
!1883 = !DILocalVariable(name: "exception", arg: 2, scope: !1880, file: !509, line: 804, type: !901)
!1884 = !DILocalVariable(name: "image_view", scope: !1880, file: !509, line: 807, type: !978)
!1885 = !DILocalVariable(name: "cube_info", scope: !1880, file: !509, line: 810, type: !507)
!1886 = !DILocalVariable(name: "pixel", scope: !1880, file: !509, line: 813, type: !984)
!1887 = !DILocalVariable(name: "target", scope: !1880, file: !509, line: 814, type: !984)
!1888 = !DILocalVariable(name: "indexes", scope: !1880, file: !509, line: 817, type: !553)
!1889 = !DILocalVariable(name: "p", scope: !1880, file: !509, line: 820, type: !551)
!1890 = !DILocalVariable(name: "x", scope: !1880, file: !509, line: 823, type: !529)
!1891 = !DILocalVariable(name: "node_info", scope: !1880, file: !509, line: 826, type: !513)
!1892 = !DILocalVariable(name: "i", scope: !1880, file: !509, line: 829, type: !529)
!1893 = !DILocalVariable(name: "id", scope: !1880, file: !509, line: 832, type: !525)
!1894 = !DILocalVariable(name: "index", scope: !1880, file: !509, line: 833, type: !525)
!1895 = !DILocalVariable(name: "level", scope: !1880, file: !509, line: 834, type: !525)
!1896 = !DILocalVariable(name: "y", scope: !1880, file: !509, line: 837, type: !529)
!1897 = !DILocation(line: 0, scope: !1880)
!1898 = !DILocation(line: 812, column: 3, scope: !1880)
!1899 = !DILocation(line: 813, column: 5, scope: !1880)
!1900 = !DILocation(line: 814, column: 5, scope: !1880)
!1901 = !DILocation(line: 841, column: 14, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1880, file: !509, line: 841, column: 7)
!1903 = !DILocation(line: 841, column: 20, scope: !1902)
!1904 = !DILocation(line: 841, column: 7, scope: !1880)
!1905 = !DILocation(line: 842, column: 68, scope: !1902)
!1906 = !DILocation(line: 842, column: 12, scope: !1902)
!1907 = !DILocation(line: 842, column: 5, scope: !1902)
!1908 = !DILocation(line: 843, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1880, file: !509, line: 843, column: 7)
!1910 = !DILocation(line: 843, column: 29, scope: !1909)
!1911 = !DILocation(line: 843, column: 45, scope: !1909)
!1912 = !DILocation(line: 843, column: 56, scope: !1909)
!1913 = !DILocation(line: 843, column: 63, scope: !1909)
!1914 = !DILocation(line: 843, column: 7, scope: !1880)
!1915 = !DILocation(line: 486, column: 26, scope: !1033, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 850, column: 13, scope: !1880)
!1917 = !DILocation(line: 0, scope: !1033, inlinedAt: !1916)
!1918 = !DILocation(line: 487, column: 17, scope: !1041, inlinedAt: !1916)
!1919 = !DILocation(line: 487, column: 7, scope: !1033, inlinedAt: !1916)
!1920 = !DILocation(line: 489, column: 10, scope: !1033, inlinedAt: !1916)
!1921 = !DILocation(line: 0, scope: !1045, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 493, column: 19, scope: !1033, inlinedAt: !1916)
!1923 = !DILocation(line: 589, column: 18, scope: !1053, inlinedAt: !1922)
!1924 = !DILocation(line: 589, column: 29, scope: !1053, inlinedAt: !1922)
!1925 = !DILocation(line: 589, column: 7, scope: !1045, inlinedAt: !1922)
!1926 = !DILocation(line: 606, column: 33, scope: !1045, inlinedAt: !1922)
!1927 = !DILocation(line: 597, column: 23, scope: !1052, inlinedAt: !1922)
!1928 = !DILocation(line: 0, scope: !1052, inlinedAt: !1922)
!1929 = !DILocation(line: 598, column: 17, scope: !1065, inlinedAt: !1922)
!1930 = !DILocation(line: 598, column: 11, scope: !1052, inlinedAt: !1922)
!1931 = !DILocation(line: 600, column: 30, scope: !1052, inlinedAt: !1922)
!1932 = !DILocation(line: 600, column: 14, scope: !1052, inlinedAt: !1922)
!1933 = !DILocation(line: 600, column: 18, scope: !1052, inlinedAt: !1922)
!1934 = !DILocation(line: 601, column: 28, scope: !1052, inlinedAt: !1922)
!1935 = !DILocation(line: 493, column: 18, scope: !1033, inlinedAt: !1916)
!1936 = !DILocation(line: 854, column: 67, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !509, line: 852, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1880, file: !509, line: 851, column: 7)
!1939 = !DILocation(line: 853, column: 14, scope: !1937)
!1940 = !DILocation(line: 855, column: 7, scope: !1937)
!1941 = !DILocation(line: 605, column: 24, scope: !1045, inlinedAt: !1922)
!1942 = !DILocation(line: 606, column: 24, scope: !1045, inlinedAt: !1922)
!1943 = !DILocation(line: 607, column: 10, scope: !1045, inlinedAt: !1922)
!1944 = !DILocation(line: 608, column: 14, scope: !1045, inlinedAt: !1922)
!1945 = !DILocation(line: 608, column: 19, scope: !1045, inlinedAt: !1922)
!1946 = !DILocation(line: 857, column: 3, scope: !1880)
!1947 = !DILocation(line: 858, column: 3, scope: !1880)
!1948 = !DILocation(line: 859, column: 14, scope: !1880)
!1949 = !DILocation(line: 862, column: 55, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !509, line: 861, column: 3)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !509, line: 860, column: 3)
!1952 = distinct !DILexicalBlock(scope: !1880, file: !509, line: 860, column: 3)
!1953 = !DILocation(line: 860, column: 34, scope: !1951)
!1954 = !DILocation(line: 860, column: 15, scope: !1951)
!1955 = !DILocation(line: 860, column: 3, scope: !1952)
!1956 = !DILocation(line: 862, column: 7, scope: !1950)
!1957 = !DILocation(line: 863, column: 11, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1950, file: !509, line: 863, column: 9)
!1959 = !DILocation(line: 863, column: 9, scope: !1950)
!1960 = !DILocation(line: 865, column: 13, scope: !1950)
!1961 = !DILocation(line: 866, column: 36, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !509, line: 866, column: 5)
!1963 = distinct !DILexicalBlock(scope: !1950, file: !509, line: 866, column: 5)
!1964 = !DILocation(line: 866, column: 17, scope: !1962)
!1965 = !DILocation(line: 866, column: 5, scope: !1963)
!1966 = !DILocation(line: 0, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !509, line: 867, column: 5)
!1968 = !DILocation(line: 873, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1967, file: !509, line: 873, column: 7)
!1970 = !DILocation(line: 893, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !509, line: 893, column: 7)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !509, line: 893, column: 7)
!1973 = !DILocation(line: 893, column: 7, scope: !1972)
!1974 = !DILocation(line: 875, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !509, line: 874, column: 7)
!1976 = distinct !DILexicalBlock(scope: !1969, file: !509, line: 873, column: 7)
!1977 = !DILocation(line: 0, scope: !1125, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 875, column: 9, scope: !1975)
!1979 = !DILocation(line: 95, column: 31, scope: !1125, inlinedAt: !1978)
!1980 = !DILocation(line: 95, column: 14, scope: !1125, inlinedAt: !1978)
!1981 = !DILocation(line: 95, column: 13, scope: !1125, inlinedAt: !1978)
!1982 = !DILocation(line: 96, column: 33, scope: !1125, inlinedAt: !1978)
!1983 = !DILocation(line: 96, column: 16, scope: !1125, inlinedAt: !1978)
!1984 = !DILocation(line: 96, column: 15, scope: !1125, inlinedAt: !1978)
!1985 = !DILocation(line: 97, column: 32, scope: !1125, inlinedAt: !1978)
!1986 = !DILocation(line: 97, column: 15, scope: !1125, inlinedAt: !1978)
!1987 = !DILocation(line: 97, column: 14, scope: !1125, inlinedAt: !1978)
!1988 = !DILocation(line: 98, column: 35, scope: !1125, inlinedAt: !1978)
!1989 = !DILocation(line: 98, column: 18, scope: !1125, inlinedAt: !1978)
!1990 = !DILocation(line: 98, column: 17, scope: !1125, inlinedAt: !1978)
!1991 = !DILocation(line: 99, column: 26, scope: !1157, inlinedAt: !1978)
!1992 = !DILocation(line: 99, column: 45, scope: !1157, inlinedAt: !1978)
!1993 = !DILocation(line: 101, column: 35, scope: !1157, inlinedAt: !1978)
!1994 = !DILocation(line: 101, column: 18, scope: !1157, inlinedAt: !1978)
!1995 = !DILocation(line: 101, column: 17, scope: !1157, inlinedAt: !1978)
!1996 = !DILocation(line: 101, column: 5, scope: !1157, inlinedAt: !1978)
!1997 = !DILocation(line: 0, scope: !1165, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 876, column: 12, scope: !1975)
!1999 = !DILocation(line: 0, scope: !1177, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 166, column: 26, scope: !1165, inlinedAt: !1998)
!2001 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !2000)
!2002 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !2000)
!2003 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !2000)
!2004 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !2000)
!2005 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 166, column: 7, scope: !1165, inlinedAt: !1998)
!2007 = !DILocation(line: 0, scope: !1189, inlinedAt: !2006)
!2008 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !2006)
!2009 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !2006)
!2010 = !DILocation(line: 166, column: 7, scope: !1165, inlinedAt: !1998)
!2011 = !DILocation(line: 166, column: 54, scope: !1165, inlinedAt: !1998)
!2012 = !DILocation(line: 166, column: 64, scope: !1165, inlinedAt: !1998)
!2013 = !DILocation(line: 0, scope: !1177, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 167, column: 26, scope: !1165, inlinedAt: !1998)
!2015 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !2014)
!2016 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !2014)
!2017 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !2014)
!2018 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !2014)
!2019 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 167, column: 7, scope: !1165, inlinedAt: !1998)
!2021 = !DILocation(line: 0, scope: !1189, inlinedAt: !2020)
!2022 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !2020)
!2023 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !2020)
!2024 = !DILocation(line: 167, column: 7, scope: !1165, inlinedAt: !1998)
!2025 = !DILocation(line: 167, column: 56, scope: !1165, inlinedAt: !1998)
!2026 = !DILocation(line: 167, column: 74, scope: !1165, inlinedAt: !1998)
!2027 = !DILocation(line: 166, column: 72, scope: !1165, inlinedAt: !1998)
!2028 = !DILocation(line: 0, scope: !1177, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 168, column: 26, scope: !1165, inlinedAt: !1998)
!2030 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !2029)
!2031 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !2029)
!2032 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !2029)
!2033 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !2029)
!2034 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 168, column: 7, scope: !1165, inlinedAt: !1998)
!2036 = !DILocation(line: 0, scope: !1189, inlinedAt: !2035)
!2037 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !2035)
!2038 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !2035)
!2039 = !DILocation(line: 168, column: 7, scope: !1165, inlinedAt: !1998)
!2040 = !DILocation(line: 168, column: 55, scope: !1165, inlinedAt: !1998)
!2041 = !DILocation(line: 168, column: 73, scope: !1165, inlinedAt: !1998)
!2042 = !DILocation(line: 167, column: 79, scope: !1165, inlinedAt: !1998)
!2043 = !DILocation(line: 169, column: 14, scope: !1233, inlinedAt: !1998)
!2044 = !DILocation(line: 169, column: 20, scope: !1233, inlinedAt: !1998)
!2045 = !DILocation(line: 169, column: 7, scope: !1165, inlinedAt: !1998)
!2046 = !DILocation(line: 0, scope: !1177, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 170, column: 30, scope: !1233, inlinedAt: !1998)
!2048 = !DILocation(line: 92, column: 7, scope: !1177, inlinedAt: !2047)
!2049 = !DILocation(line: 96, column: 26, scope: !1177, inlinedAt: !2047)
!2050 = !DILocation(line: 96, column: 10, scope: !1177, inlinedAt: !2047)
!2051 = !DILocation(line: 96, column: 3, scope: !1177, inlinedAt: !2047)
!2052 = !DILocation(line: 117, column: 61, scope: !1189, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 170, column: 11, scope: !1233, inlinedAt: !1998)
!2054 = !DILocation(line: 0, scope: !1189, inlinedAt: !2053)
!2055 = !DILocation(line: 117, column: 43, scope: !1189, inlinedAt: !2053)
!2056 = !DILocation(line: 117, column: 10, scope: !1189, inlinedAt: !2053)
!2057 = !DILocation(line: 170, column: 11, scope: !1233, inlinedAt: !1998)
!2058 = !DILocation(line: 170, column: 62, scope: !1233, inlinedAt: !1998)
!2059 = !DILocation(line: 171, column: 13, scope: !1233, inlinedAt: !1998)
!2060 = !DILocation(line: 170, column: 7, scope: !1233, inlinedAt: !1998)
!2061 = !DILocation(line: 170, column: 5, scope: !1233, inlinedAt: !1998)
!2062 = !DILocation(line: 877, column: 13, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1975, file: !509, line: 877, column: 13)
!2064 = !DILocation(line: 877, column: 34, scope: !2063)
!2065 = !DILocation(line: 877, column: 13, scope: !1975)
!2066 = !DILocation(line: 0, scope: !1045, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 879, column: 34, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !509, line: 878, column: 11)
!2069 = !DILocation(line: 589, column: 18, scope: !1053, inlinedAt: !2067)
!2070 = !DILocation(line: 589, column: 29, scope: !1053, inlinedAt: !2067)
!2071 = !DILocation(line: 589, column: 7, scope: !1045, inlinedAt: !2067)
!2072 = !DILocation(line: 606, column: 33, scope: !1045, inlinedAt: !2067)
!2073 = !DILocation(line: 597, column: 23, scope: !1052, inlinedAt: !2067)
!2074 = !DILocation(line: 0, scope: !1052, inlinedAt: !2067)
!2075 = !DILocation(line: 598, column: 17, scope: !1065, inlinedAt: !2067)
!2076 = !DILocation(line: 598, column: 11, scope: !1052, inlinedAt: !2067)
!2077 = !DILocation(line: 600, column: 30, scope: !1052, inlinedAt: !2067)
!2078 = !DILocation(line: 600, column: 14, scope: !1052, inlinedAt: !2067)
!2079 = !DILocation(line: 600, column: 18, scope: !1052, inlinedAt: !2067)
!2080 = !DILocation(line: 601, column: 28, scope: !1052, inlinedAt: !2067)
!2081 = !DILocation(line: 605, column: 24, scope: !1045, inlinedAt: !2067)
!2082 = !DILocation(line: 607, column: 10, scope: !1045, inlinedAt: !2067)
!2083 = !DILocation(line: 608, column: 14, scope: !1045, inlinedAt: !2067)
!2084 = !DILocation(line: 608, column: 19, scope: !1045, inlinedAt: !2067)
!2085 = !DILocation(line: 879, column: 33, scope: !2068)
!2086 = !DILocation(line: 880, column: 17, scope: !2068)
!2087 = !DILocation(line: 891, column: 11, scope: !1967)
!2088 = !DILocation(line: 889, column: 14, scope: !1975)
!2089 = !DILocation(line: 873, column: 48, scope: !1976)
!2090 = !DILocation(line: 873, column: 27, scope: !1976)
!2091 = distinct !{!2091, !1968, !2092, !967, !968}
!2092 = !DILocation(line: 890, column: 7, scope: !1969)
!2093 = !DILocation(line: 895, column: 37, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1971, file: !509, line: 894, column: 7)
!2095 = !DILocation(line: 0, scope: !1125, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 895, column: 9, scope: !2094)
!2097 = !DILocation(line: 95, column: 31, scope: !1125, inlinedAt: !2096)
!2098 = !DILocation(line: 95, column: 14, scope: !1125, inlinedAt: !2096)
!2099 = !DILocation(line: 96, column: 33, scope: !1125, inlinedAt: !2096)
!2100 = !DILocation(line: 96, column: 16, scope: !1125, inlinedAt: !2096)
!2101 = !DILocation(line: 97, column: 32, scope: !1125, inlinedAt: !2096)
!2102 = !DILocation(line: 97, column: 15, scope: !1125, inlinedAt: !2096)
!2103 = !DILocation(line: 98, column: 35, scope: !1125, inlinedAt: !2096)
!2104 = !DILocation(line: 98, column: 18, scope: !1125, inlinedAt: !2096)
!2105 = !DILocation(line: 99, column: 45, scope: !1157, inlinedAt: !2096)
!2106 = !DILocation(line: 896, column: 31, scope: !2094)
!2107 = !DILocation(line: 101, column: 35, scope: !1157, inlinedAt: !2096)
!2108 = !DILocation(line: 101, column: 18, scope: !1157, inlinedAt: !2096)
!2109 = !DILocation(line: 101, column: 17, scope: !1157, inlinedAt: !2096)
!2110 = !DILocation(line: 101, column: 5, scope: !1157, inlinedAt: !2096)
!2111 = !DILocation(line: 0, scope: !1306, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 897, column: 13, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2094, file: !509, line: 897, column: 13)
!2114 = !DILocation(line: 51, column: 33, scope: !1316, inlinedAt: !2112)
!2115 = !DILocation(line: 51, column: 62, scope: !1316, inlinedAt: !2112)
!2116 = !DILocation(line: 51, column: 7, scope: !1306, inlinedAt: !2112)
!2117 = !DILocation(line: 54, column: 33, scope: !1320, inlinedAt: !2112)
!2118 = !DILocation(line: 59, column: 26, scope: !1322, inlinedAt: !2112)
!2119 = !DILocation(line: 59, column: 11, scope: !1322, inlinedAt: !2112)
!2120 = !DILocation(line: 59, column: 39, scope: !1322, inlinedAt: !2112)
!2121 = !DILocation(line: 59, column: 11, scope: !1323, inlinedAt: !2112)
!2122 = !DILocation(line: 61, column: 11, scope: !1323, inlinedAt: !2112)
!2123 = !DILocation(line: 64, column: 18, scope: !1330, inlinedAt: !2112)
!2124 = !DILocation(line: 64, column: 7, scope: !1330, inlinedAt: !2112)
!2125 = !DILocation(line: 64, column: 27, scope: !1330, inlinedAt: !2112)
!2126 = !DILocation(line: 64, column: 7, scope: !1306, inlinedAt: !2112)
!2127 = !DILocation(line: 66, column: 20, scope: !1335, inlinedAt: !2112)
!2128 = !DILocation(line: 66, column: 7, scope: !1335, inlinedAt: !2112)
!2129 = !DILocation(line: 66, column: 31, scope: !1335, inlinedAt: !2112)
!2130 = !DILocation(line: 66, column: 7, scope: !1306, inlinedAt: !2112)
!2131 = !DILocation(line: 68, column: 19, scope: !1340, inlinedAt: !2112)
!2132 = !DILocation(line: 68, column: 7, scope: !1340, inlinedAt: !2112)
!2133 = !DILocation(line: 68, column: 29, scope: !1340, inlinedAt: !2112)
!2134 = !DILocation(line: 68, column: 7, scope: !1306, inlinedAt: !2112)
!2135 = !DILocation(line: 70, column: 41, scope: !1345, inlinedAt: !2112)
!2136 = !DILocation(line: 71, column: 21, scope: !1345, inlinedAt: !2112)
!2137 = !DILocation(line: 71, column: 8, scope: !1345, inlinedAt: !2112)
!2138 = !DILocation(line: 71, column: 32, scope: !1345, inlinedAt: !2112)
!2139 = !DILocation(line: 70, column: 7, scope: !1306, inlinedAt: !2112)
!2140 = !DILocation(line: 893, column: 58, scope: !1971)
!2141 = distinct !{!2141, !1973, !2142, !967, !968}
!2142 = !DILocation(line: 899, column: 7, scope: !1972)
!2143 = !DILocation(line: 95, column: 13, scope: !1125, inlinedAt: !2096)
!2144 = !DILocation(line: 96, column: 15, scope: !1125, inlinedAt: !2096)
!2145 = !DILocation(line: 97, column: 14, scope: !1125, inlinedAt: !2096)
!2146 = !DILocation(line: 98, column: 17, scope: !1125, inlinedAt: !2096)
!2147 = !DILocation(line: 901, column: 28, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1967, file: !509, line: 900, column: 11)
!2149 = !DILocation(line: 901, column: 33, scope: !2148)
!2150 = !DILocation(line: 901, column: 9, scope: !2148)
!2151 = !DILocation(line: 0, scope: !1972)
!2152 = !DILocation(line: 907, column: 40, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !509, line: 907, column: 15)
!2154 = distinct !DILexicalBlock(scope: !2148, file: !509, line: 903, column: 9)
!2155 = !DILocation(line: 907, column: 15, scope: !2154)
!2156 = !DILocation(line: 908, column: 45, scope: !2153)
!2157 = !DILocation(line: 908, column: 24, scope: !2153)
!2158 = !DILocation(line: 908, column: 28, scope: !2153)
!2159 = !DILocation(line: 908, column: 13, scope: !2153)
!2160 = !DILocation(line: 911, column: 76, scope: !2153)
!2161 = !DILocation(line: 912, column: 26, scope: !2153)
!2162 = !DILocation(line: 911, column: 45, scope: !2153)
!2163 = !DILocation(line: 911, column: 28, scope: !2153)
!2164 = !DILocation(line: 913, column: 26, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2154, file: !509, line: 913, column: 15)
!2166 = !DILocation(line: 913, column: 31, scope: !2165)
!2167 = !DILocation(line: 913, column: 15, scope: !2154)
!2168 = !DILocation(line: 920, column: 11, scope: !2154)
!2169 = !DILocation(line: 920, column: 37, scope: !2154)
!2170 = !DILocation(line: 921, column: 23, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2154, file: !509, line: 921, column: 15)
!2172 = !DILocation(line: 921, column: 34, scope: !2171)
!2173 = !DILocation(line: 921, column: 53, scope: !2171)
!2174 = !DILocation(line: 922, column: 23, scope: !2171)
!2175 = !DILocation(line: 922, column: 37, scope: !2171)
!2176 = !DILocation(line: 921, column: 15, scope: !2154)
!2177 = !DILocation(line: 924, column: 22, scope: !2154)
!2178 = !DILocation(line: 923, column: 38, scope: !2171)
!2179 = !DILocation(line: 923, column: 24, scope: !2171)
!2180 = !DILocation(line: 923, column: 32, scope: !2171)
!2181 = !DILocation(line: 923, column: 37, scope: !2171)
!2182 = !DILocation(line: 923, column: 13, scope: !2171)
!2183 = !DILocation(line: 924, column: 30, scope: !2154)
!2184 = !DILocation(line: 924, column: 35, scope: !2154)
!2185 = !DILocation(line: 925, column: 35, scope: !2154)
!2186 = !DILocation(line: 926, column: 28, scope: !2154)
!2187 = !DILocation(line: 927, column: 33, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2154, file: !509, line: 927, column: 15)
!2189 = !DILocation(line: 927, column: 15, scope: !2154)
!2190 = !DILocation(line: 930, column: 8, scope: !1967)
!2191 = !DILocation(line: 866, column: 46, scope: !1962)
!2192 = distinct !{!2192, !1965, !2193, !967, !968}
!2193 = !DILocation(line: 931, column: 5, scope: !1963)
!2194 = !DILocation(line: 932, column: 30, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !1950, file: !509, line: 932, column: 9)
!2196 = !DILocation(line: 932, column: 11, scope: !2195)
!2197 = !DILocation(line: 932, column: 9, scope: !1950)
!2198 = !DILocation(line: 860, column: 41, scope: !1951)
!2199 = distinct !{!2199, !1955, !2200, !967, !968}
!2200 = !DILocation(line: 934, column: 3, scope: !1952)
!2201 = !DILocation(line: 0, scope: !1952)
!2202 = !DILocation(line: 935, column: 14, scope: !1880)
!2203 = !DILocation(line: 0, scope: !944, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 936, column: 13, scope: !1880)
!2205 = !DILocation(line: 400, column: 37, scope: !944, inlinedAt: !2204)
!2206 = !DILocation(line: 400, column: 3, scope: !944, inlinedAt: !2204)
!2207 = !DILocation(line: 403, column: 22, scope: !955, inlinedAt: !2204)
!2208 = !DILocation(line: 401, column: 3, scope: !944, inlinedAt: !2204)
!2209 = !DILocation(line: 403, column: 34, scope: !955, inlinedAt: !2204)
!2210 = !DILocation(line: 405, column: 7, scope: !955, inlinedAt: !2204)
!2211 = !DILocation(line: 406, column: 26, scope: !955, inlinedAt: !2204)
!2212 = !DILocation(line: 407, column: 34, scope: !944, inlinedAt: !2204)
!2213 = !DILocation(line: 407, column: 3, scope: !955, inlinedAt: !2204)
!2214 = distinct !{!2214, !2208, !2215, !967, !968}
!2215 = !DILocation(line: 407, column: 51, scope: !944, inlinedAt: !2204)
!2216 = !DILocation(line: 408, column: 23, scope: !944, inlinedAt: !2204)
!2217 = !DILocation(line: 937, column: 31, scope: !1880)
!2218 = !DILocation(line: 937, column: 12, scope: !1880)
!2219 = !DILocation(line: 937, column: 3, scope: !1880)
!2220 = !DILocation(line: 938, column: 1, scope: !1880)
!2221 = distinct !DISubprogram(name: "MinMaxStretchImage", scope: !509, file: !509, line: 989, type: !2222, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2226)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!617, !622, !2224, !2225, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!2225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!2226 = !{!2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2227 = !DILocalVariable(name: "image", arg: 1, scope: !2221, file: !509, line: 989, type: !622)
!2228 = !DILocalVariable(name: "channel", arg: 2, scope: !2221, file: !509, line: 990, type: !2224)
!2229 = !DILocalVariable(name: "black_value", arg: 3, scope: !2221, file: !509, line: 990, type: !2225)
!2230 = !DILocalVariable(name: "white_value", arg: 4, scope: !2221, file: !509, line: 990, type: !2225)
!2231 = !DILocalVariable(name: "min", scope: !2221, file: !509, line: 993, type: !611)
!2232 = !DILocalVariable(name: "max", scope: !2221, file: !509, line: 994, type: !611)
!2233 = !DILocalVariable(name: "status", scope: !2221, file: !509, line: 997, type: !2234)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!2235 = !DILocation(line: 0, scope: !2221)
!2236 = !DILocation(line: 992, column: 3, scope: !2221)
!2237 = !DILocation(line: 1000, column: 16, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2221, file: !509, line: 1000, column: 7)
!2239 = !DILocation(line: 1000, column: 32, scope: !2238)
!2240 = !DILocation(line: 1000, column: 7, scope: !2221)
!2241 = !DILocation(line: 1005, column: 67, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !509, line: 1001, column: 5)
!2243 = !DILocation(line: 1005, column: 14, scope: !2242)
!2244 = !DILocation(line: 1006, column: 10, scope: !2242)
!2245 = !{!1017, !1017, i64 0}
!2246 = !DILocation(line: 1007, column: 10, scope: !2242)
!2247 = !DILocation(line: 1008, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2242, file: !509, line: 1008, column: 11)
!2249 = !DILocation(line: 1008, column: 11, scope: !2248)
!2250 = !DILocation(line: 1008, column: 25, scope: !2248)
!2251 = !DILocation(line: 1008, column: 11, scope: !2242)
!2252 = !DILocation(line: 1009, column: 17, scope: !2248)
!2253 = !DILocation(line: 1009, column: 15, scope: !2248)
!2254 = !DILocation(line: 1009, column: 9, scope: !2248)
!2255 = !DILocation(line: 1015, column: 16, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2221, file: !509, line: 1015, column: 7)
!2257 = !DILocation(line: 1015, column: 30, scope: !2256)
!2258 = !DILocation(line: 1015, column: 7, scope: !2221)
!2259 = !DILocation(line: 1017, column: 70, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !509, line: 1016, column: 5)
!2261 = !DILocation(line: 1017, column: 14, scope: !2260)
!2262 = !DILocation(line: 1018, column: 10, scope: !2260)
!2263 = !DILocation(line: 1019, column: 10, scope: !2260)
!2264 = !DILocation(line: 1020, column: 19, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2260, file: !509, line: 1020, column: 11)
!2266 = !DILocation(line: 1020, column: 11, scope: !2265)
!2267 = !DILocation(line: 1020, column: 25, scope: !2265)
!2268 = !DILocation(line: 1020, column: 11, scope: !2260)
!2269 = !DILocation(line: 1021, column: 17, scope: !2265)
!2270 = !DILocation(line: 1021, column: 15, scope: !2265)
!2271 = !DILocation(line: 1021, column: 9, scope: !2265)
!2272 = !DILocation(line: 1023, column: 16, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2221, file: !509, line: 1023, column: 7)
!2274 = !DILocation(line: 1023, column: 32, scope: !2273)
!2275 = !DILocation(line: 1023, column: 7, scope: !2221)
!2276 = !DILocation(line: 1026, column: 17, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !509, line: 1024, column: 5)
!2278 = !DILocation(line: 1025, column: 14, scope: !2277)
!2279 = !DILocation(line: 1027, column: 10, scope: !2277)
!2280 = !DILocation(line: 1028, column: 10, scope: !2277)
!2281 = !DILocation(line: 1029, column: 19, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !509, line: 1029, column: 11)
!2283 = !DILocation(line: 1029, column: 11, scope: !2282)
!2284 = !DILocation(line: 1029, column: 25, scope: !2282)
!2285 = !DILocation(line: 1029, column: 11, scope: !2277)
!2286 = !DILocation(line: 1030, column: 17, scope: !2282)
!2287 = !DILocation(line: 1030, column: 15, scope: !2282)
!2288 = !DILocation(line: 1030, column: 9, scope: !2282)
!2289 = !DILocation(line: 1032, column: 16, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2221, file: !509, line: 1032, column: 7)
!2291 = !DILocation(line: 1032, column: 31, scope: !2290)
!2292 = !DILocation(line: 1032, column: 7, scope: !2221)
!2293 = !DILocation(line: 1035, column: 17, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !509, line: 1033, column: 5)
!2295 = !DILocation(line: 1034, column: 14, scope: !2294)
!2296 = !DILocation(line: 1036, column: 10, scope: !2294)
!2297 = !DILocation(line: 1037, column: 10, scope: !2294)
!2298 = !DILocation(line: 1038, column: 19, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !509, line: 1038, column: 11)
!2300 = !DILocation(line: 1038, column: 11, scope: !2299)
!2301 = !DILocation(line: 1038, column: 25, scope: !2299)
!2302 = !DILocation(line: 1038, column: 11, scope: !2294)
!2303 = !DILocation(line: 1039, column: 17, scope: !2299)
!2304 = !DILocation(line: 1039, column: 15, scope: !2299)
!2305 = !DILocation(line: 1039, column: 9, scope: !2299)
!2306 = !DILocation(line: 1041, column: 17, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2221, file: !509, line: 1041, column: 7)
!2308 = !DILocation(line: 1041, column: 35, scope: !2307)
!2309 = !DILocation(line: 1041, column: 41, scope: !2307)
!2310 = !DILocation(line: 1042, column: 16, scope: !2307)
!2311 = !DILocation(line: 1042, column: 22, scope: !2307)
!2312 = !DILocation(line: 1041, column: 7, scope: !2221)
!2313 = !DILocation(line: 1045, column: 17, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2307, file: !509, line: 1043, column: 5)
!2315 = !DILocation(line: 1044, column: 14, scope: !2314)
!2316 = !DILocation(line: 1046, column: 10, scope: !2314)
!2317 = !DILocation(line: 1047, column: 10, scope: !2314)
!2318 = !DILocation(line: 1048, column: 19, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !509, line: 1048, column: 11)
!2320 = !DILocation(line: 1048, column: 11, scope: !2319)
!2321 = !DILocation(line: 1048, column: 25, scope: !2319)
!2322 = !DILocation(line: 1048, column: 11, scope: !2314)
!2323 = !DILocation(line: 1049, column: 17, scope: !2319)
!2324 = !DILocation(line: 1049, column: 15, scope: !2319)
!2325 = !DILocation(line: 1049, column: 9, scope: !2319)
!2326 = !DILocation(line: 1051, column: 17, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2221, file: !509, line: 1051, column: 7)
!2328 = !DILocation(line: 1051, column: 33, scope: !2327)
!2329 = !DILocation(line: 1051, column: 39, scope: !2327)
!2330 = !DILocation(line: 1052, column: 16, scope: !2327)
!2331 = !DILocation(line: 1052, column: 27, scope: !2327)
!2332 = !DILocation(line: 1051, column: 7, scope: !2221)
!2333 = !DILocation(line: 1055, column: 17, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2327, file: !509, line: 1053, column: 5)
!2335 = !DILocation(line: 1054, column: 14, scope: !2334)
!2336 = !DILocation(line: 1056, column: 10, scope: !2334)
!2337 = !DILocation(line: 1057, column: 10, scope: !2334)
!2338 = !DILocation(line: 1058, column: 19, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2334, file: !509, line: 1058, column: 11)
!2340 = !DILocation(line: 1058, column: 11, scope: !2339)
!2341 = !DILocation(line: 1058, column: 25, scope: !2339)
!2342 = !DILocation(line: 1058, column: 11, scope: !2334)
!2343 = !DILocation(line: 1059, column: 17, scope: !2339)
!2344 = !DILocation(line: 1059, column: 15, scope: !2339)
!2345 = !DILocation(line: 1059, column: 9, scope: !2339)
!2346 = !DILocation(line: 1061, column: 17, scope: !2221)
!2347 = !DILocation(line: 1061, column: 10, scope: !2221)
!2348 = !DILocation(line: 1061, column: 3, scope: !2221)
!2349 = !DILocation(line: 1062, column: 1, scope: !2221)
!2350 = !DISubprogram(name: "GetImageChannelRange", scope: !2351, file: !2351, line: 160, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2351 = !DIFile(filename: "apps/538.imagick_r/src/magick/statistic.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cc0a772b8e2f514bf6d24321fcc65365")
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!617, !863, !2224, !2354, !2354, !901}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!2355 = !DISubprogram(name: "LevelImageChannel", scope: !2356, file: !2356, line: 50, type: !2357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2356 = !DIFile(filename: "apps/538.imagick_r/src/magick/enhance.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6a9430b6e6c4409433b996fd04287515")
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!617, !622, !2224, !2225, !2225, !2225}
!2359 = distinct !DISubprogram(name: "GetNumberColors", scope: !509, file: !509, line: 1117, type: !2360, scopeLine: 1119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!525, !863, !555, !901}
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2378}
!2363 = !DILocalVariable(name: "image", arg: 1, scope: !2359, file: !509, line: 1117, type: !863)
!2364 = !DILocalVariable(name: "file", arg: 2, scope: !2359, file: !509, line: 1117, type: !555)
!2365 = !DILocalVariable(name: "exception", arg: 3, scope: !2359, file: !509, line: 1118, type: !901)
!2366 = !DILocalVariable(name: "color", scope: !2359, file: !509, line: 1123, type: !740)
!2367 = !DILocalVariable(name: "hex", scope: !2359, file: !509, line: 1124, type: !740)
!2368 = !DILocalVariable(name: "tuple", scope: !2359, file: !509, line: 1125, type: !740)
!2369 = !DILocalVariable(name: "histogram", scope: !2359, file: !509, line: 1128, type: !486)
!2370 = !DILocalVariable(name: "status", scope: !2359, file: !509, line: 1131, type: !617)
!2371 = !DILocalVariable(name: "pixel", scope: !2359, file: !509, line: 1134, type: !984)
!2372 = !DILocalVariable(name: "p", scope: !2359, file: !509, line: 1137, type: !486)
!2373 = !DILocalVariable(name: "i", scope: !2359, file: !509, line: 1140, type: !529)
!2374 = !DILocalVariable(name: "number_colors", scope: !2359, file: !509, line: 1143, type: !525)
!2375 = !DILocalVariable(name: "cube_info", scope: !2376, file: !509, line: 1149, type: !507)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !509, line: 1147, column: 5)
!2377 = distinct !DILexicalBlock(scope: !2359, file: !509, line: 1146, column: 7)
!2378 = !DILocalVariable(name: "proceed", scope: !2379, file: !509, line: 1193, type: !617)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !509, line: 1191, column: 7)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !509, line: 1190, column: 9)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !509, line: 1166, column: 3)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !509, line: 1165, column: 3)
!2383 = distinct !DILexicalBlock(scope: !2359, file: !509, line: 1165, column: 3)
!2384 = !DILocation(line: 0, scope: !2359)
!2385 = !DILocation(line: 1122, column: 3, scope: !2359)
!2386 = !DILocation(line: 1123, column: 5, scope: !2359)
!2387 = !DILocation(line: 1124, column: 5, scope: !2359)
!2388 = !DILocation(line: 1125, column: 5, scope: !2359)
!2389 = !DILocation(line: 1133, column: 3, scope: !2359)
!2390 = !DILocation(line: 1134, column: 5, scope: !2359)
!2391 = !DILocation(line: 1142, column: 3, scope: !2359)
!2392 = !DILocation(line: 1145, column: 16, scope: !2359)
!2393 = !DILocation(line: 1146, column: 12, scope: !2377)
!2394 = !DILocation(line: 1146, column: 7, scope: !2359)
!2395 = !DILocation(line: 1151, column: 17, scope: !2376)
!2396 = !DILocation(line: 0, scope: !2376)
!2397 = !DILocation(line: 1152, column: 21, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2376, file: !509, line: 1152, column: 11)
!2399 = !DILocation(line: 1152, column: 11, scope: !2376)
!2400 = !DILocation(line: 1153, column: 34, scope: !2398)
!2401 = !DILocation(line: 0, scope: !944, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1154, column: 17, scope: !2376)
!2403 = !DILocation(line: 400, column: 37, scope: !944, inlinedAt: !2402)
!2404 = !DILocation(line: 400, column: 3, scope: !944, inlinedAt: !2402)
!2405 = !DILocation(line: 403, column: 22, scope: !955, inlinedAt: !2402)
!2406 = !DILocation(line: 401, column: 3, scope: !944, inlinedAt: !2402)
!2407 = !DILocation(line: 403, column: 34, scope: !955, inlinedAt: !2402)
!2408 = !DILocation(line: 405, column: 7, scope: !955, inlinedAt: !2402)
!2409 = !DILocation(line: 406, column: 26, scope: !955, inlinedAt: !2402)
!2410 = !DILocation(line: 407, column: 34, scope: !944, inlinedAt: !2402)
!2411 = !DILocation(line: 407, column: 3, scope: !955, inlinedAt: !2402)
!2412 = distinct !{!2412, !2406, !2413, !967, !968}
!2413 = !DILocation(line: 407, column: 51, scope: !944, inlinedAt: !2402)
!2414 = !DILocation(line: 408, column: 23, scope: !944, inlinedAt: !2402)
!2415 = !DILocation(line: 1157, column: 13, scope: !2359)
!2416 = !DILocation(line: 1158, column: 17, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2359, file: !509, line: 1158, column: 7)
!2418 = !DILocation(line: 1158, column: 7, scope: !2359)
!2419 = !DILocation(line: 1160, column: 3, scope: !2359)
!2420 = !DILocation(line: 1162, column: 3, scope: !2359)
!2421 = !DILocation(line: 1165, column: 15, scope: !2382)
!2422 = !DILocation(line: 1165, column: 3, scope: !2383)
!2423 = !DILocation(line: 1167, column: 5, scope: !2381)
!2424 = !DILocation(line: 0, scope: !1125, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 1167, column: 5, scope: !2381)
!2426 = !DILocation(line: 95, column: 31, scope: !1125, inlinedAt: !2425)
!2427 = !DILocation(line: 95, column: 14, scope: !1125, inlinedAt: !2425)
!2428 = !DILocation(line: 95, column: 13, scope: !1125, inlinedAt: !2425)
!2429 = !DILocation(line: 96, column: 33, scope: !1125, inlinedAt: !2425)
!2430 = !DILocation(line: 96, column: 16, scope: !1125, inlinedAt: !2425)
!2431 = !DILocation(line: 96, column: 15, scope: !1125, inlinedAt: !2425)
!2432 = !DILocation(line: 97, column: 32, scope: !1125, inlinedAt: !2425)
!2433 = !DILocation(line: 97, column: 15, scope: !1125, inlinedAt: !2425)
!2434 = !DILocation(line: 97, column: 14, scope: !1125, inlinedAt: !2425)
!2435 = !DILocation(line: 98, column: 35, scope: !1125, inlinedAt: !2425)
!2436 = !DILocation(line: 98, column: 18, scope: !1125, inlinedAt: !2425)
!2437 = !DILocation(line: 98, column: 17, scope: !1125, inlinedAt: !2425)
!2438 = !DILocation(line: 99, column: 26, scope: !1157, inlinedAt: !2425)
!2439 = !DILocation(line: 99, column: 45, scope: !1157, inlinedAt: !2425)
!2440 = !DILocation(line: 1167, column: 46, scope: !2381)
!2441 = !DILocation(line: 101, column: 35, scope: !1157, inlinedAt: !2425)
!2442 = !DILocation(line: 101, column: 18, scope: !1157, inlinedAt: !2425)
!2443 = !DILocation(line: 101, column: 17, scope: !1157, inlinedAt: !2425)
!2444 = !DILocation(line: 101, column: 5, scope: !1157, inlinedAt: !2425)
!2445 = !DILocation(line: 1168, column: 12, scope: !2381)
!2446 = !DILocation(line: 1169, column: 5, scope: !2381)
!2447 = !DILocation(line: 1170, column: 12, scope: !2381)
!2448 = !DILocation(line: 1171, column: 5, scope: !2381)
!2449 = !DILocation(line: 1172, column: 12, scope: !2381)
!2450 = !DILocation(line: 1173, column: 5, scope: !2381)
!2451 = !DILocation(line: 1174, column: 15, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2381, file: !509, line: 1174, column: 9)
!2453 = !{!1118, !917, i64 4}
!2454 = !DILocation(line: 1174, column: 26, scope: !2452)
!2455 = !DILocation(line: 1174, column: 9, scope: !2381)
!2456 = !DILocation(line: 1176, column: 16, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !509, line: 1175, column: 7)
!2458 = !DILocation(line: 1177, column: 9, scope: !2457)
!2459 = !DILocation(line: 1178, column: 7, scope: !2457)
!2460 = !DILocation(line: 1179, column: 15, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2381, file: !509, line: 1179, column: 9)
!2462 = !DILocation(line: 1179, column: 21, scope: !2461)
!2463 = !DILocation(line: 1179, column: 9, scope: !2381)
!2464 = !DILocation(line: 1181, column: 16, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !509, line: 1180, column: 7)
!2466 = !DILocation(line: 1182, column: 9, scope: !2465)
!2467 = !DILocation(line: 1183, column: 7, scope: !2465)
!2468 = !DILocation(line: 1184, column: 12, scope: !2381)
!2469 = !DILocation(line: 1185, column: 12, scope: !2381)
!2470 = !DILocation(line: 1186, column: 5, scope: !2381)
!2471 = !DILocation(line: 1188, column: 10, scope: !2381)
!2472 = !DILocation(line: 1187, column: 44, scope: !2381)
!2473 = !DILocation(line: 1187, column: 12, scope: !2381)
!2474 = !DILocation(line: 1189, column: 12, scope: !2381)
!2475 = !DILocation(line: 1190, column: 16, scope: !2380)
!2476 = !DILocation(line: 1190, column: 33, scope: !2380)
!2477 = !DILocation(line: 1190, column: 9, scope: !2381)
!2478 = !DILocation(line: 0, scope: !1410, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1195, column: 17, scope: !2379)
!2480 = !DILocation(line: 30, column: 3, scope: !1410, inlinedAt: !2479)
!2481 = !DILocation(line: 31, column: 5, scope: !1410, inlinedAt: !2479)
!2482 = !DILocation(line: 35, column: 10, scope: !1410, inlinedAt: !2479)
!2483 = !DILocation(line: 36, column: 17, scope: !1410, inlinedAt: !2479)
!2484 = !DILocation(line: 36, column: 63, scope: !1410, inlinedAt: !2479)
!2485 = !DILocation(line: 36, column: 10, scope: !1410, inlinedAt: !2479)
!2486 = !DILocation(line: 37, column: 1, scope: !1410, inlinedAt: !2479)
!2487 = !DILocation(line: 0, scope: !2379)
!2488 = !DILocation(line: 1197, column: 21, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2379, file: !509, line: 1197, column: 13)
!2490 = !DILocation(line: 1197, column: 13, scope: !2379)
!2491 = !DILocation(line: 1199, column: 7, scope: !2379)
!2492 = !DILocation(line: 1200, column: 6, scope: !2381)
!2493 = !DILocation(line: 1165, column: 43, scope: !2382)
!2494 = distinct !{!2494, !2422, !2495, !967, !968}
!2495 = !DILocation(line: 1201, column: 3, scope: !2383)
!2496 = !DILocation(line: 1202, column: 10, scope: !2359)
!2497 = !DILocation(line: 1203, column: 29, scope: !2359)
!2498 = !DILocation(line: 1204, column: 14, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2359, file: !509, line: 1204, column: 7)
!2500 = !DILocation(line: 1204, column: 7, scope: !2359)
!2501 = !DILocation(line: 1207, column: 1, scope: !2359)
!2502 = !DISubprogram(name: "qsort", scope: !2503, file: !2503, line: 830, type: !2504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2503 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !506, !525, !525, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2503, line: 808, baseType: !2507)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!562, !865, !865}
!2510 = distinct !DISubprogram(name: "HistogramCompare", scope: !509, file: !509, line: 1096, type: !2508, scopeLine: 1097, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2511)
!2511 = !{!2512, !2513, !2514, !2515}
!2512 = !DILocalVariable(name: "x", arg: 1, scope: !2510, file: !509, line: 1096, type: !865)
!2513 = !DILocalVariable(name: "y", arg: 2, scope: !2510, file: !509, line: 1096, type: !865)
!2514 = !DILocalVariable(name: "color_1", scope: !2510, file: !509, line: 1099, type: !888)
!2515 = !DILocalVariable(name: "color_2", scope: !2510, file: !509, line: 1100, type: !888)
!2516 = !DILocation(line: 0, scope: !2510)
!2517 = !DILocation(line: 1104, column: 22, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2510, file: !509, line: 1104, column: 7)
!2519 = !{!1396, !1016, i64 4}
!2520 = !DILocation(line: 1104, column: 44, scope: !2518)
!2521 = !DILocation(line: 1104, column: 26, scope: !2518)
!2522 = !DILocation(line: 1104, column: 7, scope: !2510)
!2523 = !DILocation(line: 1104, column: 7, scope: !2518)
!2524 = !DILocation(line: 1104, column: 29, scope: !2518)
!2525 = !DILocation(line: 1105, column: 36, scope: !2518)
!2526 = !DILocation(line: 1105, column: 5, scope: !2518)
!2527 = !DILocation(line: 1106, column: 22, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2510, file: !509, line: 1106, column: 7)
!2529 = !{!1396, !1016, i64 2}
!2530 = !DILocation(line: 1106, column: 46, scope: !2528)
!2531 = !DILocation(line: 1106, column: 28, scope: !2528)
!2532 = !DILocation(line: 1106, column: 7, scope: !2510)
!2533 = !DILocation(line: 1106, column: 7, scope: !2528)
!2534 = !DILocation(line: 1106, column: 31, scope: !2528)
!2535 = !DILocation(line: 1107, column: 38, scope: !2528)
!2536 = !DILocation(line: 1107, column: 5, scope: !2528)
!2537 = !DILocation(line: 1108, column: 22, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2510, file: !509, line: 1108, column: 7)
!2539 = !{!1396, !1016, i64 0}
!2540 = !DILocation(line: 1108, column: 45, scope: !2538)
!2541 = !DILocation(line: 1108, column: 27, scope: !2538)
!2542 = !DILocation(line: 1108, column: 7, scope: !2510)
!2543 = !DILocation(line: 1108, column: 7, scope: !2538)
!2544 = !DILocation(line: 1108, column: 30, scope: !2538)
!2545 = !DILocation(line: 1109, column: 37, scope: !2538)
!2546 = !DILocation(line: 1109, column: 5, scope: !2538)
!2547 = !DILocation(line: 1110, column: 25, scope: !2510)
!2548 = !DILocation(line: 1110, column: 10, scope: !2510)
!2549 = !DILocation(line: 1110, column: 46, scope: !2510)
!2550 = !DILocation(line: 1110, column: 31, scope: !2510)
!2551 = !DILocation(line: 1110, column: 30, scope: !2510)
!2552 = !DILocation(line: 1110, column: 3, scope: !2510)
!2553 = !DILocation(line: 1111, column: 1, scope: !2510)
!2554 = !DISubprogram(name: "CopyMagickString", scope: !2555, file: !2555, line: 78, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2555 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!525, !564, !618, !867}
!2558 = !DISubprogram(name: "ConcatenateColorComponent", scope: !416, file: !416, line: 98, type: !2559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !1168, !2224, !2561, !564}
!2561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2562)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "ComplianceType", file: !416, line: 36, baseType: !415)
!2563 = !DISubprogram(name: "ConcatenateMagickString", scope: !2555, file: !2555, line: 76, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2564 = !DISubprogram(name: "QueryMagickColorname", scope: !416, file: !416, line: 93, type: !2565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!617, !863, !1168, !2561, !564, !901}
!2567 = !DISubprogram(name: "GetColorTuple", scope: !416, file: !416, line: 100, type: !2568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !1168, !2570, !564}
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!2571 = !DISubprogram(name: "FormatLocaleFile", scope: !2572, file: !2572, line: 67, type: !2573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2572 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!529, !555, !2575, null}
!2575 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !618)
!2576 = !DILocation(line: 0, scope: !1410)
!2577 = !DILocation(line: 30, column: 3, scope: !1410)
!2578 = !DILocation(line: 31, column: 5, scope: !1410)
!2579 = !DILocation(line: 33, column: 14, scope: !1424)
!2580 = !DILocation(line: 33, column: 31, scope: !1424)
!2581 = !DILocation(line: 33, column: 7, scope: !1410)
!2582 = !DILocation(line: 35, column: 70, scope: !1410)
!2583 = !DILocation(line: 35, column: 10, scope: !1410)
!2584 = !DILocation(line: 36, column: 17, scope: !1410)
!2585 = !DILocation(line: 36, column: 63, scope: !1410)
!2586 = !DILocation(line: 36, column: 10, scope: !1410)
!2587 = !DILocation(line: 36, column: 3, scope: !1410)
!2588 = !DILocation(line: 37, column: 1, scope: !1410)
!2589 = !DISubprogram(name: "fflush", scope: !530, file: !530, line: 218, type: !2590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!562, !555}
!2592 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1444, file: !1444, line: 51, type: !2593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!506, !506}
!2595 = distinct !DISubprogram(name: "UniqueImageColors", scope: !509, file: !509, line: 1300, type: !2596, scopeLine: 1302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!622, !863, !901}
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604}
!2599 = !DILocalVariable(name: "image", arg: 1, scope: !2595, file: !509, line: 1300, type: !863)
!2600 = !DILocalVariable(name: "exception", arg: 2, scope: !2595, file: !509, line: 1301, type: !901)
!2601 = !DILocalVariable(name: "unique_view", scope: !2595, file: !509, line: 1304, type: !978)
!2602 = !DILocalVariable(name: "cube_info", scope: !2595, file: !509, line: 1307, type: !507)
!2603 = !DILocalVariable(name: "unique_image", scope: !2595, file: !509, line: 1310, type: !622)
!2604 = !DILocalVariable(name: "quantize_info", scope: !2605, file: !509, line: 1331, type: !2607)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !509, line: 1329, column: 5)
!2606 = distinct !DILexicalBlock(scope: !2595, file: !509, line: 1328, column: 7)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantizeInfo", file: !425, line: 57, baseType: !2609)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantizeInfo", file: !425, line: 35, size: 384, elements: !2610)
!2610 = !{!2611, !2612, !2613, !2614, !2615, !2616, !2617}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "number_colors", scope: !2609, file: !425, line: 38, baseType: !525, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "tree_depth", scope: !2609, file: !425, line: 41, baseType: !525, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !2609, file: !425, line: 44, baseType: !617, size: 32, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !2609, file: !425, line: 47, baseType: !629, size: 32, offset: 160)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "measure_error", scope: !2609, file: !425, line: 50, baseType: !617, size: 32, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !2609, file: !425, line: 53, baseType: !525, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dither_method", scope: !2609, file: !425, line: 56, baseType: !2618, size: 32, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "DitherMethod", file: !425, line: 33, baseType: !424)
!2619 = !DILocation(line: 0, scope: !2595)
!2620 = !DILocation(line: 1312, column: 13, scope: !2595)
!2621 = !DILocation(line: 1313, column: 17, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2595, file: !509, line: 1313, column: 7)
!2623 = !DILocation(line: 1313, column: 7, scope: !2595)
!2624 = !DILocation(line: 1315, column: 44, scope: !2595)
!2625 = !DILocation(line: 1315, column: 16, scope: !2595)
!2626 = !DILocation(line: 1316, column: 20, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2595, file: !509, line: 1316, column: 7)
!2628 = !DILocation(line: 1316, column: 7, scope: !2595)
!2629 = !DILocation(line: 1318, column: 7, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2595, file: !509, line: 1318, column: 7)
!2631 = !DILocation(line: 1318, column: 54, scope: !2630)
!2632 = !DILocation(line: 1318, column: 7, scope: !2595)
!2633 = !DILocation(line: 1320, column: 49, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !509, line: 1319, column: 5)
!2635 = !DILocation(line: 1320, column: 7, scope: !2634)
!2636 = !DILocation(line: 1321, column: 20, scope: !2634)
!2637 = !DILocation(line: 1322, column: 7, scope: !2634)
!2638 = !DILocation(line: 1324, column: 15, scope: !2595)
!2639 = !DILocation(line: 1325, column: 69, scope: !2595)
!2640 = !DILocation(line: 1325, column: 3, scope: !2595)
!2641 = !DILocation(line: 1327, column: 15, scope: !2595)
!2642 = !DILocation(line: 1328, column: 18, scope: !2606)
!2643 = !DILocation(line: 1328, column: 25, scope: !2606)
!2644 = !DILocation(line: 1328, column: 7, scope: !2595)
!2645 = !DILocation(line: 1333, column: 21, scope: !2605)
!2646 = !DILocation(line: 0, scope: !2605)
!2647 = !DILocation(line: 1334, column: 35, scope: !2605)
!2648 = !{!2649, !916, i64 0}
!2649 = !{!"_QuantizeInfo", !916, i64 0, !916, i64 8, !917, i64 16, !917, i64 20, !917, i64 24, !916, i64 32, !917, i64 40}
!2650 = !DILocation(line: 1335, column: 22, scope: !2605)
!2651 = !DILocation(line: 1335, column: 28, scope: !2605)
!2652 = !{!2649, !917, i64 16}
!2653 = !DILocation(line: 1336, column: 22, scope: !2605)
!2654 = !DILocation(line: 1336, column: 32, scope: !2605)
!2655 = !{!2649, !916, i64 8}
!2656 = !DILocation(line: 1337, column: 14, scope: !2605)
!2657 = !DILocation(line: 1338, column: 21, scope: !2605)
!2658 = !DILocation(line: 1339, column: 5, scope: !2605)
!2659 = !DILocation(line: 0, scope: !944, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1340, column: 13, scope: !2595)
!2661 = !DILocation(line: 400, column: 37, scope: !944, inlinedAt: !2660)
!2662 = !DILocation(line: 400, column: 3, scope: !944, inlinedAt: !2660)
!2663 = !DILocation(line: 403, column: 22, scope: !955, inlinedAt: !2660)
!2664 = !DILocation(line: 401, column: 3, scope: !944, inlinedAt: !2660)
!2665 = !DILocation(line: 403, column: 34, scope: !955, inlinedAt: !2660)
!2666 = !DILocation(line: 405, column: 7, scope: !955, inlinedAt: !2660)
!2667 = !DILocation(line: 406, column: 26, scope: !955, inlinedAt: !2660)
!2668 = !DILocation(line: 407, column: 34, scope: !944, inlinedAt: !2660)
!2669 = !DILocation(line: 407, column: 3, scope: !955, inlinedAt: !2660)
!2670 = distinct !{!2670, !2664, !2671, !967, !968}
!2671 = !DILocation(line: 407, column: 51, scope: !944, inlinedAt: !2660)
!2672 = !DILocation(line: 408, column: 23, scope: !944, inlinedAt: !2660)
!2673 = !DILocation(line: 1341, column: 3, scope: !2595)
!2674 = !DILocation(line: 1342, column: 1, scope: !2595)
!2675 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !2676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!622, !863, !867, !867, !2570, !901}
!2678 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !2679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!617, !622, !2681}
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!2682 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !2683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{null, !901, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!2687 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !2688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!622, !622}
!2690 = distinct !DISubprogram(name: "UniqueColorsToImage", scope: !509, file: !509, line: 1234, type: !2691, scopeLine: 1236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2695)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !622, !978, !507, !2693, !901}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!2695 = !{!2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2707, !2710, !2712}
!2696 = !DILocalVariable(name: "unique_image", arg: 1, scope: !2690, file: !509, line: 1234, type: !622)
!2697 = !DILocalVariable(name: "unique_view", arg: 2, scope: !2690, file: !509, line: 1234, type: !978)
!2698 = !DILocalVariable(name: "cube_info", arg: 3, scope: !2690, file: !509, line: 1235, type: !507)
!2699 = !DILocalVariable(name: "node_info", arg: 4, scope: !2690, file: !509, line: 1235, type: !2693)
!2700 = !DILocalVariable(name: "exception", arg: 5, scope: !2690, file: !509, line: 1235, type: !901)
!2701 = !DILocalVariable(name: "status", scope: !2690, file: !509, line: 1240, type: !617)
!2702 = !DILocalVariable(name: "i", scope: !2690, file: !509, line: 1243, type: !529)
!2703 = !DILocalVariable(name: "number_children", scope: !2690, file: !509, line: 1246, type: !525)
!2704 = !DILocalVariable(name: "p", scope: !2705, file: !509, line: 1259, type: !486)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !509, line: 1257, column: 5)
!2706 = distinct !DILexicalBlock(scope: !2690, file: !509, line: 1256, column: 7)
!2707 = !DILocalVariable(name: "indexes", scope: !2705, file: !509, line: 1262, type: !2708)
!2708 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2709)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!2710 = !DILocalVariable(name: "q", scope: !2705, file: !509, line: 1265, type: !2711)
!2711 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !642)
!2712 = !DILocalVariable(name: "proceed", scope: !2713, file: !509, line: 1287, type: !617)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !509, line: 1285, column: 9)
!2714 = distinct !DILexicalBlock(scope: !2705, file: !509, line: 1284, column: 11)
!2715 = !DILocation(line: 0, scope: !2690)
!2716 = !DILocation(line: 1251, column: 33, scope: !2690)
!2717 = !DILocation(line: 1251, column: 39, scope: !2690)
!2718 = !DILocation(line: 1251, column: 19, scope: !2690)
!2719 = !DILocation(line: 1252, column: 3, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2690, file: !509, line: 1252, column: 3)
!2721 = !DILocation(line: 1253, column: 9, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !509, line: 1253, column: 9)
!2723 = distinct !DILexicalBlock(scope: !2720, file: !509, line: 1252, column: 3)
!2724 = !DILocation(line: 1253, column: 29, scope: !2722)
!2725 = !DILocation(line: 1253, column: 9, scope: !2723)
!2726 = !DILocation(line: 1254, column: 7, scope: !2722)
!2727 = !DILocation(line: 1252, column: 45, scope: !2723)
!2728 = !DILocation(line: 1252, column: 15, scope: !2723)
!2729 = distinct !{!2729, !2719, !2730, !967, !968}
!2730 = !DILocation(line: 1255, column: 38, scope: !2720)
!2731 = !DILocation(line: 1256, column: 18, scope: !2706)
!2732 = !DILocation(line: 1256, column: 24, scope: !2706)
!2733 = !DILocation(line: 1256, column: 7, scope: !2690)
!2734 = !DILocation(line: 0, scope: !2705)
!2735 = !DILocation(line: 1269, column: 42, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !509, line: 1269, column: 7)
!2737 = distinct !DILexicalBlock(scope: !2705, file: !509, line: 1269, column: 7)
!2738 = !DILocation(line: 1269, column: 19, scope: !2736)
!2739 = !DILocation(line: 1269, column: 7, scope: !2737)
!2740 = !DILocation(line: 1268, column: 20, scope: !2705)
!2741 = !DILocation(line: 1271, column: 64, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2736, file: !509, line: 1270, column: 7)
!2743 = !{!924, !916, i64 8}
!2744 = !DILocation(line: 1271, column: 11, scope: !2742)
!2745 = !DILocation(line: 1273, column: 15, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !509, line: 1273, column: 13)
!2747 = !DILocation(line: 1273, column: 13, scope: !2742)
!2748 = !DILocation(line: 1275, column: 17, scope: !2742)
!2749 = !DILocation(line: 1276, column: 15, scope: !2742)
!2750 = !DILocation(line: 1277, column: 27, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2742, file: !509, line: 1277, column: 13)
!2752 = !DILocation(line: 1277, column: 38, scope: !2751)
!2753 = !DILocation(line: 1277, column: 13, scope: !2742)
!2754 = !DILocation(line: 1278, column: 23, scope: !2751)
!2755 = !DILocation(line: 1278, column: 19, scope: !2751)
!2756 = !DILocation(line: 1278, column: 11, scope: !2751)
!2757 = !DILocation(line: 1279, column: 13, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2742, file: !509, line: 1279, column: 13)
!2759 = !DILocation(line: 1279, column: 65, scope: !2758)
!2760 = !DILocation(line: 1279, column: 13, scope: !2742)
!2761 = !DILocation(line: 1281, column: 21, scope: !2742)
!2762 = !DILocation(line: 1282, column: 10, scope: !2742)
!2763 = !DILocation(line: 1283, column: 7, scope: !2742)
!2764 = !DILocation(line: 1269, column: 58, scope: !2736)
!2765 = distinct !{!2765, !2739, !2766, !967, !968}
!2766 = !DILocation(line: 1283, column: 7, scope: !2737)
!2767 = !DILocation(line: 1284, column: 25, scope: !2714)
!2768 = !DILocation(line: 1284, column: 42, scope: !2714)
!2769 = !DILocation(line: 1284, column: 11, scope: !2705)
!2770 = !DILocation(line: 1290, column: 24, scope: !2713)
!2771 = !{!924, !926, i64 16}
!2772 = !DILocation(line: 1290, column: 44, scope: !2713)
!2773 = !DILocation(line: 1289, column: 19, scope: !2713)
!2774 = !DILocation(line: 0, scope: !2713)
!2775 = !DILocation(line: 1293, column: 9, scope: !2713)
!2776 = !DILocation(line: 1294, column: 18, scope: !2705)
!2777 = !DILocation(line: 1294, column: 26, scope: !2705)
!2778 = !DILocation(line: 1298, column: 1, scope: !2690)
!2779 = !DISubprogram(name: "AcquireQuantizeInfo", scope: !425, file: !425, line: 71, type: !2780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!2607, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!2784 = !DISubprogram(name: "QuantizeImage", scope: !425, file: !425, line: 65, type: !2785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!617, !2787, !622}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2608)
!2789 = !DISubprogram(name: "DestroyQuantizeInfo", scope: !425, file: !425, line: 73, type: !2790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!2607, !2607}
!2792 = distinct !DISubprogram(name: "DestroyColorCube", scope: !509, file: !509, line: 437, type: !2793, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !863, !513}
!2795 = !{!2796, !2797, !2798, !2799}
!2796 = !DILocalVariable(name: "image", arg: 1, scope: !2792, file: !509, line: 437, type: !863)
!2797 = !DILocalVariable(name: "node_info", arg: 2, scope: !2792, file: !509, line: 437, type: !513)
!2798 = !DILocalVariable(name: "i", scope: !2792, file: !509, line: 440, type: !529)
!2799 = !DILocalVariable(name: "number_children", scope: !2792, file: !509, line: 443, type: !525)
!2800 = !DILocation(line: 0, scope: !2792)
!2801 = !DILocation(line: 448, column: 26, scope: !2792)
!2802 = !DILocation(line: 448, column: 32, scope: !2792)
!2803 = !DILocation(line: 448, column: 19, scope: !2792)
!2804 = !DILocation(line: 449, column: 3, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2792, file: !509, line: 449, column: 3)
!2806 = !DILocation(line: 450, column: 9, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !509, line: 450, column: 9)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !509, line: 449, column: 3)
!2809 = !DILocation(line: 450, column: 29, scope: !2807)
!2810 = !DILocation(line: 450, column: 9, scope: !2808)
!2811 = !DILocation(line: 451, column: 7, scope: !2807)
!2812 = !DILocation(line: 449, column: 45, scope: !2808)
!2813 = !DILocation(line: 449, column: 15, scope: !2808)
!2814 = distinct !{!2814, !2804, !2815, !967, !968}
!2815 = !DILocation(line: 451, column: 49, scope: !2805)
!2816 = !DILocation(line: 452, column: 18, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2792, file: !509, line: 452, column: 7)
!2818 = !DILocation(line: 452, column: 23, scope: !2817)
!2819 = !DILocation(line: 452, column: 7, scope: !2792)
!2820 = !DILocation(line: 453, column: 37, scope: !2817)
!2821 = !DILocation(line: 453, column: 20, scope: !2817)
!2822 = !DILocation(line: 453, column: 5, scope: !2817)
!2823 = !DILocation(line: 454, column: 1, scope: !2792)
!2824 = !DISubprogram(name: "ResetMagickMemory", scope: !1444, file: !1444, line: 52, type: !2825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!506, !506, !562, !867}
!2827 = !DISubprogram(name: "FormatLocaleString", scope: !2572, file: !2572, line: 71, type: !2828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!529, !2830, !867, !2575, null}
!2830 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !564)
!2831 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !465, file: !465, line: 101, type: !2832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!642, !978, !1867, !1867, !867, !867, !901}
!2834 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !465, file: !465, line: 77, type: !2835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!2709, !978}
!2837 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !465, file: !465, line: 89, type: !2838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1447)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!617, !978, !901}
