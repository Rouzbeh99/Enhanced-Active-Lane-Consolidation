; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/compare.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
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
%struct._ChannelStatistics = type { i64, double, double, double, double, double, double, double, double, double, double, double }
%struct._ChannelPerceptualHash = type { [32 x double], [32 x double] }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/compare.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ImageSizeDiffers\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"#f1001ecc\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"highlight-color\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"#ffffffcc\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"lowlight-color\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"distortion\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"compare:similarity-threshold\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Similarity/Image\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @CompareImages(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %metric, ptr nocapture noundef %distortion, ptr noundef %exception) local_unnamed_addr #0 !dbg !711 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !721, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !722, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32 %metric, metadata !723, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata ptr %exception, metadata !725, metadata !DIExpression()), !dbg !727
  %call = tail call ptr @CompareImageChannels(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef 47, i32 noundef %metric, ptr noundef %distortion, ptr noundef %exception), !dbg !728
  call void @llvm.dbg.value(metadata ptr %call, metadata !726, metadata !DIExpression()), !dbg !727
  ret ptr %call, !dbg !729
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CompareImageChannels(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, i32 noundef %metric, ptr nocapture noundef %distortion, ptr noundef %exception) local_unnamed_addr #0 !dbg !730 {
entry:
  %highlight = alloca %struct._MagickPixelPacket, align 8
  %lowlight = alloca %struct._MagickPixelPacket, align 8
  %zero = alloca %struct._MagickPixelPacket, align 8
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %reconstruct_pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !736, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !737, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 %channel, metadata !738, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 %metric, metadata !739, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !740, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata ptr %exception, metadata !741, metadata !DIExpression()), !dbg !792
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %highlight) #11, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %highlight, metadata !753, metadata !DIExpression()), !dbg !794
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %lowlight) #11, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %lowlight, metadata !767, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #11, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !768, metadata !DIExpression()), !dbg !796
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !797
  %0 = load i32, ptr %debug, align 8, !dbg !797, !tbaa !799
  %cmp.not = icmp eq i32 %0, 0, !dbg !818
  br i1 %cmp.not, label %if.end.thread, label %if.end, !dbg !819

if.end.thread:                                    ; preds = %entry
  store double 0.000000e+00, ptr %distortion, align 8, !dbg !820, !tbaa !821
  br label %if.end7, !dbg !822

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !823
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !824
  %.pr = load i32, ptr %debug, align 8, !dbg !825, !tbaa !799
  store double 0.000000e+00, ptr %distortion, align 8, !dbg !820, !tbaa !821
  %cmp2.not = icmp eq i32 %.pr, 0, !dbg !827
  br i1 %cmp2.not, label %if.end7, label %if.then3, !dbg !822

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 158, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !828
  br label %if.end7, !dbg !829

if.end7:                                          ; preds = %if.end.thread, %if.then3, %if.end
  %cmp8.not = icmp eq i32 %metric, 255, !dbg !830
  br i1 %cmp8.not, label %if.end7.split, label %if.then9, !dbg !832

if.end7.split:                                    ; preds = %if.end7
  %call20329 = tail call i32 @GetImageChannelDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, i32 noundef 255, ptr noundef nonnull %distortion, ptr noundef %exception), !dbg !833
  br label %if.end19, !dbg !832

if.then9:                                         ; preds = %if.end7
  %columns = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7, !dbg !834
  %1 = load i64, ptr %columns, align 8, !dbg !834, !tbaa !836
  %columns10 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !837
  %2 = load i64, ptr %columns10, align 8, !dbg !837, !tbaa !836
  %cmp11.not = icmp eq i64 %1, %2, !dbg !838
  br i1 %cmp11.not, label %lor.lhs.false, label %if.then14, !dbg !839

lor.lhs.false:                                    ; preds = %if.then9
  %rows = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 8, !dbg !840
  %3 = load i64, ptr %rows, align 8, !dbg !840, !tbaa !841
  %rows12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !842
  %4 = load i64, ptr %rows12, align 8, !dbg !842, !tbaa !841
  %cmp13.not = icmp eq i64 %3, %4, !dbg !843
  br i1 %cmp13.not, label %lor.lhs.false.split, label %if.then14, !dbg !844

lor.lhs.false.split:                              ; preds = %lor.lhs.false
  %call20330 = tail call i32 @GetImageChannelDistortion(ptr noundef nonnull %image, ptr noundef nonnull %reconstruct_image, i32 noundef %channel, i32 noundef %metric, ptr noundef nonnull %distortion, ptr noundef %exception), !dbg !833
  br label %if.end19, !dbg !844

if.then14:                                        ; preds = %lor.lhs.false, %if.then9
  %filename15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !845
  %call17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 162, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename15) #11, !dbg !845
  br label %cleanup204, !dbg !845

if.end19:                                         ; preds = %lor.lhs.false.split, %if.end7.split
  %phi.call = phi i32 [ %call20329, %if.end7.split ], [ %call20330, %lor.lhs.false.split ], !dbg !833
  call void @llvm.dbg.value(metadata i32 %phi.call, metadata !752, metadata !DIExpression()), !dbg !792
  %cmp21 = icmp eq i32 %phi.call, 0, !dbg !847
  br i1 %cmp21, label %cleanup204, label %if.end23, !dbg !849

if.end23:                                         ; preds = %if.end19
  %call24 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #11, !dbg !850
  call void @llvm.dbg.value(metadata ptr %call24, metadata !750, metadata !DIExpression()), !dbg !792
  %cmp25 = icmp eq ptr %call24, null, !dbg !851
  br i1 %cmp25, label %cleanup204, label %if.end27, !dbg !853

if.end27:                                         ; preds = %if.end23
  %call28 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call24, i32 noundef 6) #11, !dbg !854
  %columns29 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !855
  %5 = load i64, ptr %columns29, align 8, !dbg !855, !tbaa !836
  %rows30 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !856
  %6 = load i64, ptr %rows30, align 8, !dbg !856, !tbaa !841
  %call31 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %5, i64 noundef %6, i32 noundef 1, ptr noundef %exception) #11, !dbg !857
  call void @llvm.dbg.value(metadata ptr %call31, metadata !751, metadata !DIExpression()), !dbg !792
  %cmp32 = icmp eq ptr %call31, null, !dbg !858
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !860

if.then33:                                        ; preds = %if.end27
  %call34 = tail call ptr @DestroyImage(ptr noundef nonnull %call24) #11, !dbg !861
  call void @llvm.dbg.value(metadata ptr %call34, metadata !750, metadata !DIExpression()), !dbg !792
  br label %cleanup204, !dbg !863

if.end35:                                         ; preds = %if.end27
  %call36 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call31, i32 noundef 1) #11, !dbg !864
  %cmp37 = icmp eq i32 %call36, 0, !dbg !866
  br i1 %cmp37, label %if.then38, label %if.end42, !dbg !867

if.then38:                                        ; preds = %if.end35
  %exception39 = getelementptr inbounds %struct._Image, ptr %call31, i64 0, i32 58, !dbg !868
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception39) #11, !dbg !870
  %call40 = tail call ptr @DestroyImage(ptr noundef nonnull %call24) #11, !dbg !871
  call void @llvm.dbg.value(metadata ptr %call40, metadata !750, metadata !DIExpression()), !dbg !792
  %call41 = tail call ptr @DestroyImage(ptr noundef nonnull %call31) #11, !dbg !872
  call void @llvm.dbg.value(metadata ptr %call41, metadata !751, metadata !DIExpression()), !dbg !792
  br label %cleanup204, !dbg !873

if.end42:                                         ; preds = %if.end35
  %call43 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call31, i32 noundef 6) #11, !dbg !874
  %call44 = call i32 @QueryMagickColor(ptr noundef nonnull @.str.5, ptr noundef nonnull %highlight, ptr noundef %exception) #11, !dbg !875
  %call45 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.6) #11, !dbg !876
  call void @llvm.dbg.value(metadata ptr %call45, metadata !749, metadata !DIExpression()), !dbg !792
  %cmp46.not = icmp eq ptr %call45, null, !dbg !877
  br i1 %cmp46.not, label %if.end49, label %if.then47, !dbg !879

if.then47:                                        ; preds = %if.end42
  %call48 = call i32 @QueryMagickColor(ptr noundef nonnull %call45, ptr noundef nonnull %highlight, ptr noundef %exception) #11, !dbg !880
  br label %if.end49, !dbg !881

if.end49:                                         ; preds = %if.then47, %if.end42
  %call50 = call i32 @QueryMagickColor(ptr noundef nonnull @.str.7, ptr noundef nonnull %lowlight, ptr noundef %exception) #11, !dbg !882
  %call51 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.8) #11, !dbg !883
  call void @llvm.dbg.value(metadata ptr %call51, metadata !749, metadata !DIExpression()), !dbg !792
  %cmp52.not = icmp eq ptr %call51, null, !dbg !884
  br i1 %cmp52.not, label %if.end55, label %if.then53, !dbg !886

if.then53:                                        ; preds = %if.end49
  %call54 = call i32 @QueryMagickColor(ptr noundef nonnull %call51, ptr noundef nonnull %lowlight, ptr noundef %exception) #11, !dbg !887
  br label %if.end55, !dbg !888

if.end55:                                         ; preds = %if.then53, %if.end49
  %colorspace = getelementptr inbounds %struct._Image, ptr %call31, i64 0, i32 1, !dbg !889
  %7 = load i32, ptr %colorspace, align 4, !dbg !889, !tbaa !891
  %cmp56 = icmp eq i32 %7, 12, !dbg !892
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !893

if.then57:                                        ; preds = %if.end55
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !894, metadata !DIExpression()) #11, !dbg !908
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 1, !dbg !911
  %8 = load i32, ptr %colorspace.i, align 4, !dbg !911, !tbaa !913
  %cmp.not.i = icmp eq i32 %8, 13, !dbg !916
  %red11.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 5, !dbg !917
  %9 = load float, ptr %red11.i, align 8, !dbg !917, !tbaa !918
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !dbg !919

if.then.i:                                        ; preds = %if.then57
  %conv.i = fpext float %9 to double, !dbg !920
  %mul.i = fmul double %conv.i, 0x3EF0001000100010, !dbg !922
  %conv2.i = fptrunc double %mul.i to float, !dbg !923
  call void @llvm.dbg.value(metadata float %conv2.i, metadata !906, metadata !DIExpression()) #11, !dbg !908
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 6, !dbg !924
  %10 = load float, ptr %green3.i, align 4, !dbg !924, !tbaa !925
  %conv4.i = fpext float %10 to double, !dbg !926
  %mul5.i = fmul double %conv4.i, 0x3EF0001000100010, !dbg !927
  %conv6.i = fptrunc double %mul5.i to float, !dbg !928
  call void @llvm.dbg.value(metadata float %conv6.i, metadata !904, metadata !DIExpression()) #11, !dbg !908
  %blue7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 7, !dbg !929
  %11 = load float, ptr %blue7.i, align 8, !dbg !929, !tbaa !930
  %conv8.i = fpext float %11 to double, !dbg !931
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !932
  %conv10.i = fptrunc double %mul9.i to float, !dbg !933
  call void @llvm.dbg.value(metadata float %conv10.i, metadata !902, metadata !DIExpression()) #11, !dbg !908
  br label %if.end.i, !dbg !934

if.else.i:                                        ; preds = %if.then57
  %call.i = call float @DecodePixelGamma(float noundef %9) #12, !dbg !935
  call void @llvm.dbg.value(metadata float %call.i, metadata !906, metadata !DIExpression()) #11, !dbg !908
  %green12.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 6, !dbg !937
  %12 = load float, ptr %green12.i, align 4, !dbg !937, !tbaa !925
  %call13.i = call float @DecodePixelGamma(float noundef %12) #12, !dbg !938
  call void @llvm.dbg.value(metadata float %call13.i, metadata !904, metadata !DIExpression()) #11, !dbg !908
  %blue14.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 7, !dbg !939
  %13 = load float, ptr %blue14.i, align 8, !dbg !939, !tbaa !930
  %call15.i = call float @DecodePixelGamma(float noundef %13) #12, !dbg !940
  call void @llvm.dbg.value(metadata float %call15.i, metadata !902, metadata !DIExpression()) #11, !dbg !908
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blue.0.i = phi float [ %conv10.i, %if.then.i ], [ %call15.i, %if.else.i ], !dbg !917
  %green.0.i = phi float [ %conv6.i, %if.then.i ], [ %call13.i, %if.else.i ], !dbg !917
  %red.0.i = phi float [ %conv2.i, %if.then.i ], [ %call.i, %if.else.i ], !dbg !917
  call void @llvm.dbg.value(metadata float %red.0.i, metadata !906, metadata !DIExpression()) #11, !dbg !908
  call void @llvm.dbg.value(metadata float %green.0.i, metadata !904, metadata !DIExpression()) #11, !dbg !908
  call void @llvm.dbg.value(metadata float %blue.0.i, metadata !902, metadata !DIExpression()) #11, !dbg !908
  %14 = call float @llvm.fabs.f32(float %red.0.i) #11, !dbg !941
  %15 = fpext float %14 to double, !dbg !941
  %cmp17.i = fcmp olt double %15, 1.000000e-15, !dbg !943
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end27.i, !dbg !944

land.lhs.true.i:                                  ; preds = %if.end.i
  %16 = call float @llvm.fabs.f32(float %green.0.i) #11, !dbg !945
  %17 = fpext float %16 to double, !dbg !945
  %cmp20.i = fcmp olt double %17, 1.000000e-15, !dbg !946
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end27.i, !dbg !947

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %18 = call float @llvm.fabs.f32(float %blue.0.i) #11, !dbg !948
  %19 = fpext float %18 to double, !dbg !948
  %cmp24.i = fcmp olt double %19, 1.000000e-15, !dbg !949
  br i1 %cmp24.i, label %ConvertRGBToCMYK.exit, label %if.end27.i, !dbg !950

if.end27.i:                                       ; preds = %land.lhs.true22.i, %land.lhs.true.i, %if.end.i
  %conv29.i = fsub float 1.000000e+00, %red.0.i, !dbg !951
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !903, metadata !DIExpression()) #11, !dbg !908
  %conv32.i = fsub float 1.000000e+00, %green.0.i, !dbg !952
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !905, metadata !DIExpression()) #11, !dbg !908
  %conv35.i = fsub float 1.000000e+00, %blue.0.i, !dbg !953
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !907, metadata !DIExpression()) #11, !dbg !908
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !901, metadata !DIExpression()) #11, !dbg !908
  %cmp36.i = fcmp olt float %conv32.i, %conv29.i, !dbg !954
  br i1 %cmp36.i, label %if.then38.i, label %if.end39.i, !dbg !956

if.then38.i:                                      ; preds = %if.end27.i
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !901, metadata !DIExpression()) #11, !dbg !908
  br label %if.end39.i, !dbg !957

if.end39.i:                                       ; preds = %if.then38.i, %if.end27.i
  %black.0.i = phi float [ %conv32.i, %if.then38.i ], [ %conv29.i, %if.end27.i ], !dbg !908
  call void @llvm.dbg.value(metadata float %black.0.i, metadata !901, metadata !DIExpression()) #11, !dbg !908
  %cmp40.i = fcmp olt float %conv35.i, %black.0.i, !dbg !958
  br i1 %cmp40.i, label %if.then42.i, label %if.end43.i, !dbg !960

if.then42.i:                                      ; preds = %if.end39.i
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !901, metadata !DIExpression()) #11, !dbg !908
  br label %if.end43.i, !dbg !961

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i
  %black.1.i = phi float [ %conv35.i, %if.then42.i ], [ %black.0.i, %if.end39.i ], !dbg !908
  call void @llvm.dbg.value(metadata float %black.1.i, metadata !901, metadata !DIExpression()) #11, !dbg !908
  %sub44.i = fsub float %conv29.i, %black.1.i, !dbg !962
  %conv45.i = fpext float %sub44.i to double, !dbg !963
  %conv46.i = fpext float %black.1.i to double, !dbg !964
  %sub47.i = fsub double 1.000000e+00, %conv46.i, !dbg !965
  %div.i = fdiv double %conv45.i, %sub47.i, !dbg !966
  %conv48.i = fptrunc double %div.i to float, !dbg !967
  call void @llvm.dbg.value(metadata float %conv48.i, metadata !903, metadata !DIExpression()) #11, !dbg !908
  %sub49.i = fsub float %conv32.i, %black.1.i, !dbg !968
  %conv50.i = fpext float %sub49.i to double, !dbg !969
  %div53.i = fdiv double %conv50.i, %sub47.i, !dbg !970
  %conv54.i = fptrunc double %div53.i to float, !dbg !971
  call void @llvm.dbg.value(metadata float %conv54.i, metadata !905, metadata !DIExpression()) #11, !dbg !908
  %sub55.i = fsub float %conv35.i, %black.1.i, !dbg !972
  %conv56.i = fpext float %sub55.i to double, !dbg !973
  %div59.i = fdiv double %conv56.i, %sub47.i, !dbg !974
  %conv60.i = fptrunc double %div59.i to float, !dbg !975
  call void @llvm.dbg.value(metadata float %conv60.i, metadata !907, metadata !DIExpression()) #11, !dbg !908
  store i32 12, ptr %colorspace.i, align 4, !dbg !976, !tbaa !913
  %mul62.i = fmul float %conv48.i, 6.553500e+04, !dbg !977
  store float %mul62.i, ptr %red11.i, align 8, !dbg !978, !tbaa !918
  %mul64.i = fmul float %conv54.i, 6.553500e+04, !dbg !979
  %green65.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 6, !dbg !980
  store float %mul64.i, ptr %green65.i, align 4, !dbg !981, !tbaa !925
  %mul66.i = fmul float %conv60.i, 6.553500e+04, !dbg !982
  %blue67.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 7, !dbg !983
  store float %mul66.i, ptr %blue67.i, align 8, !dbg !984, !tbaa !930
  %mul68.i = fmul float %black.1.i, 6.553500e+04, !dbg !985
  br label %ConvertRGBToCMYK.exit, !dbg !986

ConvertRGBToCMYK.exit:                            ; preds = %land.lhs.true22.i, %if.end43.i
  %mul68.sink.i = phi float [ %mul68.i, %if.end43.i ], [ 6.553500e+04, %land.lhs.true22.i ]
  %index69.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9, !dbg !908
  store float %mul68.sink.i, ptr %index69.i, align 8, !dbg !908, !tbaa !987
  call void @llvm.dbg.value(metadata ptr %lowlight, metadata !894, metadata !DIExpression()) #11, !dbg !988
  %colorspace.i337 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 1, !dbg !990
  %20 = load i32, ptr %colorspace.i337, align 4, !dbg !990, !tbaa !913
  %cmp.not.i338 = icmp eq i32 %20, 13, !dbg !991
  %red11.i339 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 5, !dbg !992
  %21 = load float, ptr %red11.i339, align 8, !dbg !992, !tbaa !918
  br i1 %cmp.not.i338, label %if.else.i357, label %if.then.i351, !dbg !993

if.then.i351:                                     ; preds = %ConvertRGBToCMYK.exit
  %conv.i340 = fpext float %21 to double, !dbg !994
  %mul.i341 = fmul double %conv.i340, 0x3EF0001000100010, !dbg !995
  %conv2.i342 = fptrunc double %mul.i341 to float, !dbg !996
  call void @llvm.dbg.value(metadata float %conv2.i342, metadata !906, metadata !DIExpression()) #11, !dbg !988
  %green3.i343 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 6, !dbg !997
  %22 = load float, ptr %green3.i343, align 4, !dbg !997, !tbaa !925
  %conv4.i344 = fpext float %22 to double, !dbg !998
  %mul5.i345 = fmul double %conv4.i344, 0x3EF0001000100010, !dbg !999
  %conv6.i346 = fptrunc double %mul5.i345 to float, !dbg !1000
  call void @llvm.dbg.value(metadata float %conv6.i346, metadata !904, metadata !DIExpression()) #11, !dbg !988
  %blue7.i347 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 7, !dbg !1001
  %23 = load float, ptr %blue7.i347, align 8, !dbg !1001, !tbaa !930
  %conv8.i348 = fpext float %23 to double, !dbg !1002
  %mul9.i349 = fmul double %conv8.i348, 0x3EF0001000100010, !dbg !1003
  %conv10.i350 = fptrunc double %mul9.i349 to float, !dbg !1004
  call void @llvm.dbg.value(metadata float %conv10.i350, metadata !902, metadata !DIExpression()) #11, !dbg !988
  br label %if.end.i362, !dbg !1005

if.else.i357:                                     ; preds = %ConvertRGBToCMYK.exit
  %call.i352 = call float @DecodePixelGamma(float noundef %21) #12, !dbg !1006
  call void @llvm.dbg.value(metadata float %call.i352, metadata !906, metadata !DIExpression()) #11, !dbg !988
  %green12.i353 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 6, !dbg !1007
  %24 = load float, ptr %green12.i353, align 4, !dbg !1007, !tbaa !925
  %call13.i354 = call float @DecodePixelGamma(float noundef %24) #12, !dbg !1008
  call void @llvm.dbg.value(metadata float %call13.i354, metadata !904, metadata !DIExpression()) #11, !dbg !988
  %blue14.i355 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 7, !dbg !1009
  %25 = load float, ptr %blue14.i355, align 8, !dbg !1009, !tbaa !930
  %call15.i356 = call float @DecodePixelGamma(float noundef %25) #12, !dbg !1010
  call void @llvm.dbg.value(metadata float %call15.i356, metadata !902, metadata !DIExpression()) #11, !dbg !988
  br label %if.end.i362

if.end.i362:                                      ; preds = %if.else.i357, %if.then.i351
  %blue.0.i358 = phi float [ %conv10.i350, %if.then.i351 ], [ %call15.i356, %if.else.i357 ], !dbg !992
  %green.0.i359 = phi float [ %conv6.i346, %if.then.i351 ], [ %call13.i354, %if.else.i357 ], !dbg !992
  %red.0.i360 = phi float [ %conv2.i342, %if.then.i351 ], [ %call.i352, %if.else.i357 ], !dbg !992
  call void @llvm.dbg.value(metadata float %red.0.i360, metadata !906, metadata !DIExpression()) #11, !dbg !988
  call void @llvm.dbg.value(metadata float %green.0.i359, metadata !904, metadata !DIExpression()) #11, !dbg !988
  call void @llvm.dbg.value(metadata float %blue.0.i358, metadata !902, metadata !DIExpression()) #11, !dbg !988
  %26 = call float @llvm.fabs.f32(float %red.0.i360) #11, !dbg !1011
  %27 = fpext float %26 to double, !dbg !1011
  %cmp17.i361 = fcmp olt double %27, 1.000000e-15, !dbg !1012
  br i1 %cmp17.i361, label %land.lhs.true.i364, label %if.end27.i371, !dbg !1013

land.lhs.true.i364:                               ; preds = %if.end.i362
  %28 = call float @llvm.fabs.f32(float %green.0.i359) #11, !dbg !1014
  %29 = fpext float %28 to double, !dbg !1014
  %cmp20.i363 = fcmp olt double %29, 1.000000e-15, !dbg !1015
  br i1 %cmp20.i363, label %land.lhs.true22.i366, label %if.end27.i371, !dbg !1016

land.lhs.true22.i366:                             ; preds = %land.lhs.true.i364
  %30 = call float @llvm.fabs.f32(float %blue.0.i358) #11, !dbg !1017
  %31 = fpext float %30 to double, !dbg !1017
  %cmp24.i365 = fcmp olt double %31, 1.000000e-15, !dbg !1018
  br i1 %cmp24.i365, label %ConvertRGBToCMYK.exit402, label %if.end27.i371, !dbg !1019

if.end27.i371:                                    ; preds = %land.lhs.true22.i366, %land.lhs.true.i364, %if.end.i362
  %conv29.i367 = fsub float 1.000000e+00, %red.0.i360, !dbg !1020
  call void @llvm.dbg.value(metadata float %conv29.i367, metadata !903, metadata !DIExpression()) #11, !dbg !988
  %conv32.i368 = fsub float 1.000000e+00, %green.0.i359, !dbg !1021
  call void @llvm.dbg.value(metadata float %conv32.i368, metadata !905, metadata !DIExpression()) #11, !dbg !988
  %conv35.i369 = fsub float 1.000000e+00, %blue.0.i358, !dbg !1022
  call void @llvm.dbg.value(metadata float %conv35.i369, metadata !907, metadata !DIExpression()) #11, !dbg !988
  call void @llvm.dbg.value(metadata float %conv29.i367, metadata !901, metadata !DIExpression()) #11, !dbg !988
  %cmp36.i370 = fcmp olt float %conv32.i368, %conv29.i367, !dbg !1023
  br i1 %cmp36.i370, label %if.then38.i372, label %if.end39.i375, !dbg !1024

if.then38.i372:                                   ; preds = %if.end27.i371
  call void @llvm.dbg.value(metadata float %conv32.i368, metadata !901, metadata !DIExpression()) #11, !dbg !988
  br label %if.end39.i375, !dbg !1025

if.end39.i375:                                    ; preds = %if.then38.i372, %if.end27.i371
  %black.0.i373 = phi float [ %conv32.i368, %if.then38.i372 ], [ %conv29.i367, %if.end27.i371 ], !dbg !988
  call void @llvm.dbg.value(metadata float %black.0.i373, metadata !901, metadata !DIExpression()) #11, !dbg !988
  %cmp40.i374 = fcmp olt float %conv35.i369, %black.0.i373, !dbg !1026
  br i1 %cmp40.i374, label %if.then42.i376, label %if.end43.i399, !dbg !1027

if.then42.i376:                                   ; preds = %if.end39.i375
  call void @llvm.dbg.value(metadata float %conv35.i369, metadata !901, metadata !DIExpression()) #11, !dbg !988
  br label %if.end43.i399, !dbg !1028

if.end43.i399:                                    ; preds = %if.then42.i376, %if.end39.i375
  %black.1.i377 = phi float [ %conv35.i369, %if.then42.i376 ], [ %black.0.i373, %if.end39.i375 ], !dbg !988
  call void @llvm.dbg.value(metadata float %black.1.i377, metadata !901, metadata !DIExpression()) #11, !dbg !988
  %sub44.i378 = fsub float %conv29.i367, %black.1.i377, !dbg !1029
  %conv45.i379 = fpext float %sub44.i378 to double, !dbg !1030
  %conv46.i380 = fpext float %black.1.i377 to double, !dbg !1031
  %sub47.i381 = fsub double 1.000000e+00, %conv46.i380, !dbg !1032
  %div.i382 = fdiv double %conv45.i379, %sub47.i381, !dbg !1033
  %conv48.i383 = fptrunc double %div.i382 to float, !dbg !1034
  call void @llvm.dbg.value(metadata float %conv48.i383, metadata !903, metadata !DIExpression()) #11, !dbg !988
  %sub49.i384 = fsub float %conv32.i368, %black.1.i377, !dbg !1035
  %conv50.i385 = fpext float %sub49.i384 to double, !dbg !1036
  %div53.i386 = fdiv double %conv50.i385, %sub47.i381, !dbg !1037
  %conv54.i387 = fptrunc double %div53.i386 to float, !dbg !1038
  call void @llvm.dbg.value(metadata float %conv54.i387, metadata !905, metadata !DIExpression()) #11, !dbg !988
  %sub55.i388 = fsub float %conv35.i369, %black.1.i377, !dbg !1039
  %conv56.i389 = fpext float %sub55.i388 to double, !dbg !1040
  %div59.i390 = fdiv double %conv56.i389, %sub47.i381, !dbg !1041
  %conv60.i391 = fptrunc double %div59.i390 to float, !dbg !1042
  call void @llvm.dbg.value(metadata float %conv60.i391, metadata !907, metadata !DIExpression()) #11, !dbg !988
  store i32 12, ptr %colorspace.i337, align 4, !dbg !1043, !tbaa !913
  %mul62.i392 = fmul float %conv48.i383, 6.553500e+04, !dbg !1044
  store float %mul62.i392, ptr %red11.i339, align 8, !dbg !1045, !tbaa !918
  %mul64.i394 = fmul float %conv54.i387, 6.553500e+04, !dbg !1046
  %green65.i395 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 6, !dbg !1047
  store float %mul64.i394, ptr %green65.i395, align 4, !dbg !1048, !tbaa !925
  %mul66.i396 = fmul float %conv60.i391, 6.553500e+04, !dbg !1049
  %blue67.i397 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 7, !dbg !1050
  store float %mul66.i396, ptr %blue67.i397, align 8, !dbg !1051, !tbaa !930
  %mul68.i398 = fmul float %black.1.i377, 6.553500e+04, !dbg !1052
  br label %ConvertRGBToCMYK.exit402, !dbg !1053

ConvertRGBToCMYK.exit402:                         ; preds = %land.lhs.true22.i366, %if.end43.i399
  %mul68.sink.i400 = phi float [ %mul68.i398, %if.end43.i399 ], [ 6.553500e+04, %land.lhs.true22.i366 ]
  %index69.i401 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 9, !dbg !988
  store float %mul68.sink.i400, ptr %index69.i401, align 8, !dbg !988, !tbaa !987
  br label %if.end58, !dbg !1054

if.end58:                                         ; preds = %ConvertRGBToCMYK.exit402, %if.end55
  call void @llvm.dbg.value(metadata i32 1, metadata !752, metadata !DIExpression()), !dbg !792
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %zero) #11, !dbg !1055
  %call59 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1056
  call void @llvm.dbg.value(metadata ptr %call59, metadata !747, metadata !DIExpression()), !dbg !792
  %call60 = call ptr @AcquireVirtualCacheView(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !1057
  call void @llvm.dbg.value(metadata ptr %call60, metadata !748, metadata !DIExpression()), !dbg !792
  %call61 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call31, ptr noundef %exception) #11, !dbg !1058
  call void @llvm.dbg.value(metadata ptr %call61, metadata !742, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i64 0, metadata !769, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 1, metadata !752, metadata !DIExpression()), !dbg !792
  %32 = load i64, ptr %rows30, align 8, !dbg !1059, !tbaa !841
  %cmp63514 = icmp sgt i64 %32, 0, !dbg !1060
  br i1 %cmp63514, label %for.body.lr.ph, label %for.end193, !dbg !1061

for.body.lr.ph:                                   ; preds = %if.end58
  %columns71 = getelementptr inbounds %struct._Image, ptr %call31, i64 0, i32 7
  %33 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i405 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %34 = getelementptr i8, ptr %reconstruct_image, i64 4
  %red1.i411 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 5
  %green3.i414 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 6
  %blue5.i416 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 7
  %opacity7.i419 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 8
  %index15.i424 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 9
  %cmp88 = icmp eq i32 %channel, 47
  %and = and i32 %channel, 1
  %cmp94.not = icmp eq i32 %and, 0
  %and101 = and i32 %channel, 2
  %cmp102.not = icmp eq i32 %and101, 0
  %and112 = and i32 %channel, 4
  %cmp113.not = icmp eq i32 %and112, 0
  %and123 = and i32 %channel, 8
  %cmp124.not = icmp eq i32 %and123, 0
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %and137 = and i32 %channel, 32
  %cmp138.not = icmp eq i32 %and137, 0
  %red.i439 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 5
  %green.i448 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 6
  %blue.i458 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 7
  %opacity.i467 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 8
  %index11.i486 = getelementptr inbounds %struct._MagickPixelPacket, ptr %lowlight, i64 0, i32 9
  %red.i428 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 5
  %green.i430 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 6
  %blue.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 7
  %opacity.i432 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 8
  %index11.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9
  br label %for.body, !dbg !1061

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0516 = phi i64 [ 0, %for.body.lr.ph ], [ %inc192, %cleanup ]
  %status.0515 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0516, metadata !769, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 %status.0515, metadata !752, metadata !DIExpression()), !dbg !792
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #11, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !774, metadata !DIExpression()), !dbg !1063
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reconstruct_pixel) #11, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %reconstruct_pixel, metadata !775, metadata !DIExpression()), !dbg !1064
  %cmp64 = icmp eq i32 %status.0515, 0, !dbg !1065
  br i1 %cmp64, label %cleanup, label %if.end66, !dbg !1067

if.end66:                                         ; preds = %for.body
  %35 = load i64, ptr %columns29, align 8, !dbg !1068, !tbaa !836
  %call68 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call59, i64 noundef 0, i64 noundef %y.0516, i64 noundef %35, i64 noundef 1, ptr noundef %exception) #12, !dbg !1069
  call void @llvm.dbg.value(metadata ptr %call68, metadata !779, metadata !DIExpression()), !dbg !1070
  %36 = load i64, ptr %columns29, align 8, !dbg !1071, !tbaa !836
  %call70 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call60, i64 noundef 0, i64 noundef %y.0516, i64 noundef %36, i64 noundef 1, ptr noundef %exception) #12, !dbg !1072
  call void @llvm.dbg.value(metadata ptr %call70, metadata !781, metadata !DIExpression()), !dbg !1070
  %37 = load i64, ptr %columns71, align 8, !dbg !1073, !tbaa !836
  %call72 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call61, i64 noundef 0, i64 noundef %y.0516, i64 noundef %37, i64 noundef 1, ptr noundef %exception) #12, !dbg !1074
  call void @llvm.dbg.value(metadata ptr %call72, metadata !784, metadata !DIExpression()), !dbg !1070
  %cmp73 = icmp eq ptr %call68, null, !dbg !1075
  %cmp75 = icmp eq ptr %call70, null
  %or.cond = select i1 %cmp73, i1 true, i1 %cmp75, !dbg !1077
  %cmp77 = icmp eq ptr %call72, null
  %or.cond215 = select i1 %or.cond, i1 true, i1 %cmp77, !dbg !1077
  br i1 %or.cond215, label %cleanup, label %if.end79, !dbg !1077

if.end79:                                         ; preds = %if.end66
  %call80 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call59) #11, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %call80, metadata !776, metadata !DIExpression()), !dbg !1070
  %call81 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call60) #11, !dbg !1079
  call void @llvm.dbg.value(metadata ptr %call81, metadata !778, metadata !DIExpression()), !dbg !1070
  %call82 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call61) #11, !dbg !1080
  call void @llvm.dbg.value(metadata ptr %call82, metadata !782, metadata !DIExpression()), !dbg !1070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !1081, !tbaa.struct !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %reconstruct_pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !1086, !tbaa.struct !1082
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %call72, metadata !784, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %call70, metadata !781, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %call68, metadata !779, metadata !DIExpression()), !dbg !1070
  %38 = load i64, ptr %columns29, align 8, !dbg !1087, !tbaa !836
  %cmp85505 = icmp sgt i64 %38, 0, !dbg !1088
  br i1 %cmp85505, label %for.body86.lr.ph, label %for.end, !dbg !1089

for.body86.lr.ph:                                 ; preds = %if.end79
  %cmp9.i = icmp ne ptr %call80, null
  %cmp9.i421 = icmp ne ptr %call81, null
  %cmp150 = icmp eq ptr %call80, null
  %cmp155 = icmp eq ptr %call81, null
  %cmp9.i481 = icmp ne ptr %call82, null
  %cmp9.old.not.i484 = icmp eq ptr %call82, null
  br label %for.body86, !dbg !1089

for.body86:                                       ; preds = %for.body86.lr.ph, %if.end174
  %x.0511 = phi i64 [ 0, %for.body86.lr.ph ], [ %inc, %if.end174 ]
  %r.0508 = phi ptr [ %call72, %for.body86.lr.ph ], [ %incdec.ptr176, %if.end174 ]
  %q.0507 = phi ptr [ %call70, %for.body86.lr.ph ], [ %incdec.ptr175, %if.end174 ]
  %p.0506 = phi ptr [ %call68, %for.body86.lr.ph ], [ %incdec.ptr, %if.end174 ]
  call void @llvm.dbg.value(metadata i64 %x.0511, metadata !786, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %r.0508, metadata !784, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %q.0507, metadata !781, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr %p.0506, metadata !779, metadata !DIExpression()), !dbg !1070
  %add.ptr = getelementptr inbounds i16, ptr %call80, i64 %x.0511, !dbg !1090
  %image.val = load i32, ptr %33, align 4, !dbg !1091, !tbaa !891
  call void @llvm.dbg.value(metadata ptr undef, metadata !1092, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr %p.0506, metadata !1098, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1099, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1100, metadata !DIExpression()), !dbg !1101
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0506, i64 0, i32 2, !dbg !1103
  %39 = load i16, ptr %red.i, align 2, !dbg !1103, !tbaa !1104
  %conv.i403 = uitofp i16 %39 to float, !dbg !1105
  store float %conv.i403, ptr %red1.i, align 8, !dbg !1106, !tbaa !918
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0506, i64 0, i32 1, !dbg !1107
  %40 = load i16, ptr %green.i, align 2, !dbg !1107, !tbaa !1108
  %conv2.i404 = uitofp i16 %40 to float, !dbg !1109
  store float %conv2.i404, ptr %green3.i405, align 4, !dbg !1110, !tbaa !925
  %41 = load i16, ptr %p.0506, align 2, !dbg !1111, !tbaa !1112
  %conv4.i406 = uitofp i16 %41 to float, !dbg !1113
  store float %conv4.i406, ptr %blue5.i, align 8, !dbg !1114, !tbaa !930
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0506, i64 0, i32 3, !dbg !1115
  %42 = load i16, ptr %opacity.i, align 2, !dbg !1115, !tbaa !1116
  %conv6.i407 = uitofp i16 %42 to float, !dbg !1117
  store float %conv6.i407, ptr %opacity7.i, align 4, !dbg !1118, !tbaa !1119
  %cmp.i = icmp eq i32 %image.val, 12, !dbg !1120
  %or.cond.i = and i1 %cmp9.i, %cmp.i, !dbg !1122
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !1122

cond.end.i:                                       ; preds = %for.body86
  %43 = load i16, ptr %add.ptr, align 2, !dbg !1123, !tbaa !1124
  %conv14.i = uitofp i16 %43 to float, !dbg !1125
  store float %conv14.i, ptr %index15.i, align 8, !dbg !1126, !tbaa !987
  br label %SetMagickPixelPacket.exit, !dbg !1127

SetMagickPixelPacket.exit:                        ; preds = %for.body86, %cond.end.i
  %add.ptr87 = getelementptr inbounds i16, ptr %call81, i64 %x.0511, !dbg !1128
  %reconstruct_image.val = load i32, ptr %34, align 4, !dbg !1129, !tbaa !891
  call void @llvm.dbg.value(metadata ptr undef, metadata !1092, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr %q.0507, metadata !1098, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr %add.ptr87, metadata !1099, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr %reconstruct_pixel, metadata !1100, metadata !DIExpression()), !dbg !1130
  %red.i409 = getelementptr inbounds %struct._PixelPacket, ptr %q.0507, i64 0, i32 2, !dbg !1132
  %44 = load i16, ptr %red.i409, align 2, !dbg !1132, !tbaa !1104
  %conv.i410 = uitofp i16 %44 to float, !dbg !1133
  store float %conv.i410, ptr %red1.i411, align 8, !dbg !1134, !tbaa !918
  %green.i412 = getelementptr inbounds %struct._PixelPacket, ptr %q.0507, i64 0, i32 1, !dbg !1135
  %45 = load i16, ptr %green.i412, align 2, !dbg !1135, !tbaa !1108
  %conv2.i413 = uitofp i16 %45 to float, !dbg !1136
  store float %conv2.i413, ptr %green3.i414, align 4, !dbg !1137, !tbaa !925
  %46 = load i16, ptr %q.0507, align 2, !dbg !1138, !tbaa !1112
  %conv4.i415 = uitofp i16 %46 to float, !dbg !1139
  store float %conv4.i415, ptr %blue5.i416, align 8, !dbg !1140, !tbaa !930
  %opacity.i417 = getelementptr inbounds %struct._PixelPacket, ptr %q.0507, i64 0, i32 3, !dbg !1141
  %47 = load i16, ptr %opacity.i417, align 2, !dbg !1141, !tbaa !1116
  %conv6.i418 = uitofp i16 %47 to float, !dbg !1142
  store float %conv6.i418, ptr %opacity7.i419, align 4, !dbg !1143, !tbaa !1119
  %cmp.i420 = icmp eq i32 %reconstruct_image.val, 12, !dbg !1144
  %or.cond.i422 = and i1 %cmp9.i421, %cmp.i420, !dbg !1145
  br i1 %or.cond.i422, label %cond.end.i425, label %SetMagickPixelPacket.exit427, !dbg !1145

cond.end.i425:                                    ; preds = %SetMagickPixelPacket.exit
  %48 = load i16, ptr %add.ptr87, align 2, !dbg !1146, !tbaa !1124
  %conv14.i423 = uitofp i16 %48 to float, !dbg !1147
  store float %conv14.i423, ptr %index15.i424, align 8, !dbg !1148, !tbaa !987
  br label %SetMagickPixelPacket.exit427, !dbg !1149

SetMagickPixelPacket.exit427:                     ; preds = %SetMagickPixelPacket.exit, %cond.end.i425
  call void @llvm.dbg.value(metadata i32 0, metadata !787, metadata !DIExpression()), !dbg !1150
  br i1 %cmp88, label %if.then89, label %if.else, !dbg !1151

if.then89:                                        ; preds = %SetMagickPixelPacket.exit427
  %call90 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef nonnull %reconstruct_pixel) #11, !dbg !1152
  %cmp91 = icmp eq i32 %call90, 0, !dbg !1156
  br i1 %cmp91, label %if.then170, label %if.else172, !dbg !1157

if.else:                                          ; preds = %SetMagickPixelPacket.exit427
  br i1 %cmp94.not, label %if.end100, label %land.lhs.true, !dbg !1158

land.lhs.true:                                    ; preds = %if.else
  %cmp97.not = icmp ne i16 %39, %44, !dbg !1161
  %spec.select331 = zext i1 %cmp97.not to i32, !dbg !1162
  br label %if.end100, !dbg !1162

if.end100:                                        ; preds = %land.lhs.true, %if.else
  %difference.0 = phi i32 [ 0, %if.else ], [ %spec.select331, %land.lhs.true ], !dbg !1150
  call void @llvm.dbg.value(metadata i32 %difference.0, metadata !787, metadata !DIExpression()), !dbg !1150
  br i1 %cmp102.not, label %if.end111, label %land.lhs.true104, !dbg !1163

land.lhs.true104:                                 ; preds = %if.end100
  %cmp108.not = icmp eq i16 %40, %45, !dbg !1165
  %spec.select332 = select i1 %cmp108.not, i32 %difference.0, i32 1, !dbg !1166
  br label %if.end111, !dbg !1166

if.end111:                                        ; preds = %land.lhs.true104, %if.end100
  %difference.1 = phi i32 [ %difference.0, %if.end100 ], [ %spec.select332, %land.lhs.true104 ], !dbg !1167
  call void @llvm.dbg.value(metadata i32 %difference.1, metadata !787, metadata !DIExpression()), !dbg !1150
  br i1 %cmp113.not, label %if.end122, label %land.lhs.true115, !dbg !1168

land.lhs.true115:                                 ; preds = %if.end111
  %cmp119.not = icmp eq i16 %41, %46, !dbg !1170
  %spec.select333 = select i1 %cmp119.not, i32 %difference.1, i32 1, !dbg !1171
  br label %if.end122, !dbg !1171

if.end122:                                        ; preds = %land.lhs.true115, %if.end111
  %difference.2 = phi i32 [ %difference.1, %if.end111 ], [ %spec.select333, %land.lhs.true115 ], !dbg !1167
  call void @llvm.dbg.value(metadata i32 %difference.2, metadata !787, metadata !DIExpression()), !dbg !1150
  br i1 %cmp124.not, label %if.end136, label %land.lhs.true126, !dbg !1172

land.lhs.true126:                                 ; preds = %if.end122
  %49 = load i32, ptr %matte, align 8, !dbg !1174, !tbaa !1175
  %cmp127.not = icmp eq i32 %49, 0, !dbg !1176
  br i1 %cmp127.not, label %if.end136, label %land.lhs.true129, !dbg !1177

land.lhs.true129:                                 ; preds = %land.lhs.true126
  %cmp133.not = icmp eq i16 %42, %47, !dbg !1178
  %spec.select334 = select i1 %cmp133.not, i32 %difference.2, i32 1, !dbg !1179
  br label %if.end136, !dbg !1179

if.end136:                                        ; preds = %land.lhs.true129, %land.lhs.true126, %if.end122
  %difference.3 = phi i32 [ %difference.2, %land.lhs.true126 ], [ %difference.2, %if.end122 ], [ %spec.select334, %land.lhs.true129 ], !dbg !1167
  call void @llvm.dbg.value(metadata i32 %difference.3, metadata !787, metadata !DIExpression()), !dbg !1150
  %cmp.i.not = xor i1 %cmp.i, true, !dbg !1180
  %brmerge = select i1 %cmp138.not, i1 true, i1 %cmp.i.not, !dbg !1180
  %cmp.i420.not = xor i1 %cmp.i420, true, !dbg !1180
  %brmerge517 = select i1 %brmerge, i1 true, i1 %cmp.i420.not, !dbg !1180
  br i1 %brmerge517, label %if.end167, label %land.lhs.true148, !dbg !1180

land.lhs.true148:                                 ; preds = %if.end136
  br i1 %cmp150, label %cond.end, label %cond.false, !dbg !1182

cond.false:                                       ; preds = %land.lhs.true148
  %50 = load i16, ptr %add.ptr, align 2, !dbg !1182, !tbaa !1124
  %conv153 = zext i16 %50 to i32, !dbg !1182
  br label %cond.end, !dbg !1182

cond.end:                                         ; preds = %land.lhs.true148, %cond.false
  %cond = phi i32 [ %conv153, %cond.false ], [ 0, %land.lhs.true148 ], !dbg !1182
  br i1 %cmp155, label %cond.end161, label %cond.false158, !dbg !1183

cond.false158:                                    ; preds = %cond.end
  %51 = load i16, ptr %add.ptr87, align 2, !dbg !1183, !tbaa !1124
  %conv160 = zext i16 %51 to i32, !dbg !1183
  br label %cond.end161, !dbg !1183

cond.end161:                                      ; preds = %cond.end, %cond.false158
  %cond162 = phi i32 [ %conv160, %cond.false158 ], [ 0, %cond.end ], !dbg !1183
  %cmp163.not = icmp eq i32 %cond, %cond162, !dbg !1184
  %cmp168.not = icmp eq i32 %difference.3, 0
  %or.cond504 = select i1 %cmp163.not, i1 %cmp168.not, i1 false, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %difference.3, metadata !787, metadata !DIExpression()), !dbg !1150
  br i1 %or.cond504, label %if.else172, label %if.then170, !dbg !1185

if.end167:                                        ; preds = %if.end136
  call void @llvm.dbg.value(metadata i32 %difference.3, metadata !787, metadata !DIExpression()), !dbg !1150
  %cmp168.not.old = icmp eq i32 %difference.3, 0, !dbg !1186
  br i1 %cmp168.not.old, label %if.else172, label %if.then170, !dbg !1188

if.then170:                                       ; preds = %if.then89, %cond.end161, %if.end167
  %add.ptr171 = getelementptr inbounds i16, ptr %call82, i64 %x.0511, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1190, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1197, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %r.0508, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %add.ptr171, metadata !1199, metadata !DIExpression()), !dbg !1200
  %52 = load float, ptr %red.i428, align 8, !dbg !1202, !tbaa !918
  call void @llvm.dbg.value(metadata float %52, metadata !1203, metadata !DIExpression()), !dbg !1209
  %cmp.i.i = fcmp ugt float %52, 0.000000e+00, !dbg !1211
  br i1 %cmp.i.i, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !1213

if.end.i.i:                                       ; preds = %if.then170
  %cmp1.i.i = fcmp ult float %52, 6.553500e+04, !dbg !1214
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !1216

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %52, 5.000000e-01, !dbg !1217
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !1218
  br label %ClampToQuantum.exit.i, !dbg !1219

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %if.then170
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %if.then170 ], [ -1, %if.end.i.i ], !dbg !1209
  %red1.i429 = getelementptr inbounds %struct._PixelPacket, ptr %r.0508, i64 0, i32 2, !dbg !1202
  store i16 %retval.0.i.i, ptr %red1.i429, align 2, !dbg !1202, !tbaa !1104
  %53 = load float, ptr %green.i430, align 4, !dbg !1220, !tbaa !925
  call void @llvm.dbg.value(metadata float %53, metadata !1203, metadata !DIExpression()), !dbg !1221
  %cmp.i23.i = fcmp ugt float %53, 0.000000e+00, !dbg !1223
  br i1 %cmp.i23.i, label %if.end.i25.i, label %ClampToQuantum.exit30.i, !dbg !1224

if.end.i25.i:                                     ; preds = %ClampToQuantum.exit.i
  %cmp1.i24.i = fcmp ult float %53, 6.553500e+04, !dbg !1225
  br i1 %cmp1.i24.i, label %if.end3.i28.i, label %ClampToQuantum.exit30.i, !dbg !1226

if.end3.i28.i:                                    ; preds = %if.end.i25.i
  %add.i26.i = fadd float %53, 5.000000e-01, !dbg !1227
  %conv.i27.i = fptoui float %add.i26.i to i16, !dbg !1228
  br label %ClampToQuantum.exit30.i, !dbg !1229

ClampToQuantum.exit30.i:                          ; preds = %if.end3.i28.i, %if.end.i25.i, %ClampToQuantum.exit.i
  %retval.0.i29.i = phi i16 [ %conv.i27.i, %if.end3.i28.i ], [ 0, %ClampToQuantum.exit.i ], [ -1, %if.end.i25.i ], !dbg !1221
  %green3.i431 = getelementptr inbounds %struct._PixelPacket, ptr %r.0508, i64 0, i32 1, !dbg !1220
  store i16 %retval.0.i29.i, ptr %green3.i431, align 2, !dbg !1220, !tbaa !1108
  %54 = load float, ptr %blue.i, align 8, !dbg !1230, !tbaa !930
  call void @llvm.dbg.value(metadata float %54, metadata !1203, metadata !DIExpression()), !dbg !1231
  %cmp.i31.i = fcmp ugt float %54, 0.000000e+00, !dbg !1233
  br i1 %cmp.i31.i, label %if.end.i33.i, label %ClampToQuantum.exit38.i, !dbg !1234

if.end.i33.i:                                     ; preds = %ClampToQuantum.exit30.i
  %cmp1.i32.i = fcmp ult float %54, 6.553500e+04, !dbg !1235
  br i1 %cmp1.i32.i, label %if.end3.i36.i, label %ClampToQuantum.exit38.i, !dbg !1236

if.end3.i36.i:                                    ; preds = %if.end.i33.i
  %add.i34.i = fadd float %54, 5.000000e-01, !dbg !1237
  %conv.i35.i = fptoui float %add.i34.i to i16, !dbg !1238
  br label %ClampToQuantum.exit38.i, !dbg !1239

ClampToQuantum.exit38.i:                          ; preds = %if.end3.i36.i, %if.end.i33.i, %ClampToQuantum.exit30.i
  %retval.0.i37.i = phi i16 [ %conv.i35.i, %if.end3.i36.i ], [ 0, %ClampToQuantum.exit30.i ], [ -1, %if.end.i33.i ], !dbg !1231
  store i16 %retval.0.i37.i, ptr %r.0508, align 2, !dbg !1230, !tbaa !1112
  %55 = load float, ptr %opacity.i432, align 4, !dbg !1240, !tbaa !1119
  call void @llvm.dbg.value(metadata float %55, metadata !1203, metadata !DIExpression()), !dbg !1241
  %cmp.i39.i = fcmp ugt float %55, 0.000000e+00, !dbg !1243
  br i1 %cmp.i39.i, label %if.end.i41.i, label %ClampToQuantum.exit46.i, !dbg !1244

if.end.i41.i:                                     ; preds = %ClampToQuantum.exit38.i
  %cmp1.i40.i = fcmp ult float %55, 6.553500e+04, !dbg !1245
  br i1 %cmp1.i40.i, label %if.end3.i44.i, label %ClampToQuantum.exit46.i, !dbg !1246

if.end3.i44.i:                                    ; preds = %if.end.i41.i
  %add.i42.i = fadd float %55, 5.000000e-01, !dbg !1247
  %conv.i43.i = fptoui float %add.i42.i to i16, !dbg !1248
  br label %ClampToQuantum.exit46.i, !dbg !1249

ClampToQuantum.exit46.i:                          ; preds = %if.end3.i44.i, %if.end.i41.i, %ClampToQuantum.exit38.i
  %retval.0.i45.i = phi i16 [ %conv.i43.i, %if.end3.i44.i ], [ 0, %ClampToQuantum.exit38.i ], [ -1, %if.end.i41.i ], !dbg !1241
  %opacity7.i433 = getelementptr inbounds %struct._PixelPacket, ptr %r.0508, i64 0, i32 3, !dbg !1240
  store i16 %retval.0.i45.i, ptr %opacity7.i433, align 2, !dbg !1240, !tbaa !1116
  %56 = load i32, ptr %colorspace, align 4, !dbg !1250, !tbaa !891
  %cmp.i435 = icmp eq i32 %56, 12, !dbg !1252
  br i1 %cmp.i435, label %if.then.i438, label %lor.lhs.false.i, !dbg !1253

lor.lhs.false.i:                                  ; preds = %ClampToQuantum.exit46.i
  %57 = load i32, ptr %call31, align 8, !dbg !1254, !tbaa !1255
  %cmp8.i = icmp eq i32 %57, 2, !dbg !1256
  %or.cond.i437 = and i1 %cmp9.i481, %cmp8.i, !dbg !1257
  br i1 %or.cond.i437, label %if.then10.i, label %if.end174, !dbg !1257

if.then.i438:                                     ; preds = %ClampToQuantum.exit46.i
  br i1 %cmp9.old.not.i484, label %if.end174, label %if.then10.i, !dbg !1258

if.then10.i:                                      ; preds = %if.then.i438, %lor.lhs.false.i
  %58 = load float, ptr %index11.i, align 8, !dbg !1260, !tbaa !987
  call void @llvm.dbg.value(metadata float %58, metadata !1203, metadata !DIExpression()), !dbg !1262
  %cmp.i47.i = fcmp ugt float %58, 0.000000e+00, !dbg !1264
  br i1 %cmp.i47.i, label %if.end.i49.i, label %ClampToQuantum.exit54.i, !dbg !1265

if.end.i49.i:                                     ; preds = %if.then10.i
  %cmp1.i48.i = fcmp ult float %58, 6.553500e+04, !dbg !1266
  br i1 %cmp1.i48.i, label %if.end3.i52.i, label %ClampToQuantum.exit54.i, !dbg !1267

if.end3.i52.i:                                    ; preds = %if.end.i49.i
  %add.i50.i = fadd float %58, 5.000000e-01, !dbg !1268
  %conv.i51.i = fptoui float %add.i50.i to i16, !dbg !1269
  br label %ClampToQuantum.exit54.i, !dbg !1270

ClampToQuantum.exit54.i:                          ; preds = %if.end3.i52.i, %if.end.i49.i, %if.then10.i
  %retval.0.i53.i = phi i16 [ %conv.i51.i, %if.end3.i52.i ], [ 0, %if.then10.i ], [ -1, %if.end.i49.i ], !dbg !1262
  store i16 %retval.0.i53.i, ptr %add.ptr171, align 2, !dbg !1260, !tbaa !1124
  br label %if.end174, !dbg !1260

if.else172:                                       ; preds = %cond.end161, %if.then89, %if.end167
  %add.ptr173 = getelementptr inbounds i16, ptr %call82, i64 %x.0511, !dbg !1271
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1190, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %lowlight, metadata !1197, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %r.0508, metadata !1198, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %add.ptr173, metadata !1199, metadata !DIExpression()), !dbg !1272
  %59 = load float, ptr %red.i439, align 8, !dbg !1274, !tbaa !918
  call void @llvm.dbg.value(metadata float %59, metadata !1203, metadata !DIExpression()), !dbg !1275
  %cmp.i.i440 = fcmp ugt float %59, 0.000000e+00, !dbg !1277
  br i1 %cmp.i.i440, label %if.end.i.i442, label %ClampToQuantum.exit.i450, !dbg !1278

if.end.i.i442:                                    ; preds = %if.else172
  %cmp1.i.i441 = fcmp ult float %59, 6.553500e+04, !dbg !1279
  br i1 %cmp1.i.i441, label %if.end3.i.i445, label %ClampToQuantum.exit.i450, !dbg !1280

if.end3.i.i445:                                   ; preds = %if.end.i.i442
  %add.i.i443 = fadd float %59, 5.000000e-01, !dbg !1281
  %conv.i.i444 = fptoui float %add.i.i443 to i16, !dbg !1282
  br label %ClampToQuantum.exit.i450, !dbg !1283

ClampToQuantum.exit.i450:                         ; preds = %if.end3.i.i445, %if.end.i.i442, %if.else172
  %retval.0.i.i446 = phi i16 [ %conv.i.i444, %if.end3.i.i445 ], [ 0, %if.else172 ], [ -1, %if.end.i.i442 ], !dbg !1275
  %red1.i447 = getelementptr inbounds %struct._PixelPacket, ptr %r.0508, i64 0, i32 2, !dbg !1274
  store i16 %retval.0.i.i446, ptr %red1.i447, align 2, !dbg !1274, !tbaa !1104
  %60 = load float, ptr %green.i448, align 4, !dbg !1284, !tbaa !925
  call void @llvm.dbg.value(metadata float %60, metadata !1203, metadata !DIExpression()), !dbg !1285
  %cmp.i23.i449 = fcmp ugt float %60, 0.000000e+00, !dbg !1287
  br i1 %cmp.i23.i449, label %if.end.i25.i452, label %ClampToQuantum.exit30.i460, !dbg !1288

if.end.i25.i452:                                  ; preds = %ClampToQuantum.exit.i450
  %cmp1.i24.i451 = fcmp ult float %60, 6.553500e+04, !dbg !1289
  br i1 %cmp1.i24.i451, label %if.end3.i28.i455, label %ClampToQuantum.exit30.i460, !dbg !1290

if.end3.i28.i455:                                 ; preds = %if.end.i25.i452
  %add.i26.i453 = fadd float %60, 5.000000e-01, !dbg !1291
  %conv.i27.i454 = fptoui float %add.i26.i453 to i16, !dbg !1292
  br label %ClampToQuantum.exit30.i460, !dbg !1293

ClampToQuantum.exit30.i460:                       ; preds = %if.end3.i28.i455, %if.end.i25.i452, %ClampToQuantum.exit.i450
  %retval.0.i29.i456 = phi i16 [ %conv.i27.i454, %if.end3.i28.i455 ], [ 0, %ClampToQuantum.exit.i450 ], [ -1, %if.end.i25.i452 ], !dbg !1285
  %green3.i457 = getelementptr inbounds %struct._PixelPacket, ptr %r.0508, i64 0, i32 1, !dbg !1284
  store i16 %retval.0.i29.i456, ptr %green3.i457, align 2, !dbg !1284, !tbaa !1108
  %61 = load float, ptr %blue.i458, align 8, !dbg !1294, !tbaa !930
  call void @llvm.dbg.value(metadata float %61, metadata !1203, metadata !DIExpression()), !dbg !1295
  %cmp.i31.i459 = fcmp ugt float %61, 0.000000e+00, !dbg !1297
  br i1 %cmp.i31.i459, label %if.end.i33.i462, label %ClampToQuantum.exit38.i469, !dbg !1298

if.end.i33.i462:                                  ; preds = %ClampToQuantum.exit30.i460
  %cmp1.i32.i461 = fcmp ult float %61, 6.553500e+04, !dbg !1299
  br i1 %cmp1.i32.i461, label %if.end3.i36.i465, label %ClampToQuantum.exit38.i469, !dbg !1300

if.end3.i36.i465:                                 ; preds = %if.end.i33.i462
  %add.i34.i463 = fadd float %61, 5.000000e-01, !dbg !1301
  %conv.i35.i464 = fptoui float %add.i34.i463 to i16, !dbg !1302
  br label %ClampToQuantum.exit38.i469, !dbg !1303

ClampToQuantum.exit38.i469:                       ; preds = %if.end3.i36.i465, %if.end.i33.i462, %ClampToQuantum.exit30.i460
  %retval.0.i37.i466 = phi i16 [ %conv.i35.i464, %if.end3.i36.i465 ], [ 0, %ClampToQuantum.exit30.i460 ], [ -1, %if.end.i33.i462 ], !dbg !1295
  store i16 %retval.0.i37.i466, ptr %r.0508, align 2, !dbg !1294, !tbaa !1112
  %62 = load float, ptr %opacity.i467, align 4, !dbg !1304, !tbaa !1119
  call void @llvm.dbg.value(metadata float %62, metadata !1203, metadata !DIExpression()), !dbg !1305
  %cmp.i39.i468 = fcmp ugt float %62, 0.000000e+00, !dbg !1307
  br i1 %cmp.i39.i468, label %if.end.i41.i471, label %ClampToQuantum.exit46.i479, !dbg !1308

if.end.i41.i471:                                  ; preds = %ClampToQuantum.exit38.i469
  %cmp1.i40.i470 = fcmp ult float %62, 6.553500e+04, !dbg !1309
  br i1 %cmp1.i40.i470, label %if.end3.i44.i474, label %ClampToQuantum.exit46.i479, !dbg !1310

if.end3.i44.i474:                                 ; preds = %if.end.i41.i471
  %add.i42.i472 = fadd float %62, 5.000000e-01, !dbg !1311
  %conv.i43.i473 = fptoui float %add.i42.i472 to i16, !dbg !1312
  br label %ClampToQuantum.exit46.i479, !dbg !1313

ClampToQuantum.exit46.i479:                       ; preds = %if.end3.i44.i474, %if.end.i41.i471, %ClampToQuantum.exit38.i469
  %retval.0.i45.i475 = phi i16 [ %conv.i43.i473, %if.end3.i44.i474 ], [ 0, %ClampToQuantum.exit38.i469 ], [ -1, %if.end.i41.i471 ], !dbg !1305
  %opacity7.i476 = getelementptr inbounds %struct._PixelPacket, ptr %r.0508, i64 0, i32 3, !dbg !1304
  store i16 %retval.0.i45.i475, ptr %opacity7.i476, align 2, !dbg !1304, !tbaa !1116
  %63 = load i32, ptr %colorspace, align 4, !dbg !1314, !tbaa !891
  %cmp.i478 = icmp eq i32 %63, 12, !dbg !1315
  br i1 %cmp.i478, label %if.then.i485, label %lor.lhs.false.i483, !dbg !1316

lor.lhs.false.i483:                               ; preds = %ClampToQuantum.exit46.i479
  %64 = load i32, ptr %call31, align 8, !dbg !1317, !tbaa !1255
  %cmp8.i480 = icmp eq i32 %64, 2, !dbg !1318
  %or.cond.i482 = and i1 %cmp9.i481, %cmp8.i480, !dbg !1319
  br i1 %or.cond.i482, label %if.then10.i488, label %if.end174, !dbg !1319

if.then.i485:                                     ; preds = %ClampToQuantum.exit46.i479
  br i1 %cmp9.old.not.i484, label %if.end174, label %if.then10.i488, !dbg !1320

if.then10.i488:                                   ; preds = %if.then.i485, %lor.lhs.false.i483
  %65 = load float, ptr %index11.i486, align 8, !dbg !1321, !tbaa !987
  call void @llvm.dbg.value(metadata float %65, metadata !1203, metadata !DIExpression()), !dbg !1322
  %cmp.i47.i487 = fcmp ugt float %65, 0.000000e+00, !dbg !1324
  br i1 %cmp.i47.i487, label %if.end.i49.i490, label %ClampToQuantum.exit54.i495, !dbg !1325

if.end.i49.i490:                                  ; preds = %if.then10.i488
  %cmp1.i48.i489 = fcmp ult float %65, 6.553500e+04, !dbg !1326
  br i1 %cmp1.i48.i489, label %if.end3.i52.i493, label %ClampToQuantum.exit54.i495, !dbg !1327

if.end3.i52.i493:                                 ; preds = %if.end.i49.i490
  %add.i50.i491 = fadd float %65, 5.000000e-01, !dbg !1328
  %conv.i51.i492 = fptoui float %add.i50.i491 to i16, !dbg !1329
  br label %ClampToQuantum.exit54.i495, !dbg !1330

ClampToQuantum.exit54.i495:                       ; preds = %if.end3.i52.i493, %if.end.i49.i490, %if.then10.i488
  %retval.0.i53.i494 = phi i16 [ %conv.i51.i492, %if.end3.i52.i493 ], [ 0, %if.then10.i488 ], [ -1, %if.end.i49.i490 ], !dbg !1322
  store i16 %retval.0.i53.i494, ptr %add.ptr173, align 2, !dbg !1321, !tbaa !1124
  br label %if.end174, !dbg !1321

if.end174:                                        ; preds = %ClampToQuantum.exit54.i495, %if.then.i485, %lor.lhs.false.i483, %ClampToQuantum.exit54.i, %if.then.i438, %lor.lhs.false.i
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0506, i64 1, !dbg !1331
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !779, metadata !DIExpression()), !dbg !1070
  %incdec.ptr175 = getelementptr inbounds %struct._PixelPacket, ptr %q.0507, i64 1, !dbg !1332
  call void @llvm.dbg.value(metadata ptr %incdec.ptr175, metadata !781, metadata !DIExpression()), !dbg !1070
  %incdec.ptr176 = getelementptr inbounds %struct._PixelPacket, ptr %r.0508, i64 1, !dbg !1333
  call void @llvm.dbg.value(metadata ptr %incdec.ptr176, metadata !784, metadata !DIExpression()), !dbg !1070
  %inc = add nuw nsw i64 %x.0511, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %inc, metadata !786, metadata !DIExpression()), !dbg !1070
  %66 = load i64, ptr %columns29, align 8, !dbg !1087, !tbaa !836
  %cmp85 = icmp slt i64 %inc, %66, !dbg !1088
  br i1 %cmp85, label %for.body86, label %for.end, !dbg !1089, !llvm.loop !1335

for.end:                                          ; preds = %if.end174, %if.end79
  %call177 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call61, ptr noundef %exception) #12, !dbg !1339
  call void @llvm.dbg.value(metadata i32 %call177, metadata !770, metadata !DIExpression()), !dbg !1070
  %cmp178 = icmp ne i32 %call177, 0, !dbg !1340
  %spec.select336 = zext i1 %cmp178 to i32, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %spec.select336, metadata !752, metadata !DIExpression()), !dbg !792
  br label %cleanup, !dbg !1343

cleanup:                                          ; preds = %if.end66, %for.body, %for.end
  %status.2 = phi i32 [ %spec.select336, %for.end ], [ 0, %for.body ], [ 0, %if.end66 ], !dbg !792
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !752, metadata !DIExpression()), !dbg !792
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reconstruct_pixel) #11, !dbg !1343
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #11, !dbg !1343
  %inc192 = add nuw nsw i64 %y.0516, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %inc192, metadata !769, metadata !DIExpression()), !dbg !792
  %67 = load i64, ptr %rows30, align 8, !dbg !1059, !tbaa !841
  %cmp63 = icmp slt i64 %inc192, %67, !dbg !1060
  br i1 %cmp63, label %for.body, label %for.end193, !dbg !1061, !llvm.loop !1345

for.end193:                                       ; preds = %cleanup, %if.end58
  %status.0.lcssa = phi i32 [ 1, %if.end58 ], [ %status.2, %cleanup ], !dbg !1347
  %call194 = call ptr @DestroyCacheView(ptr noundef %call61) #11, !dbg !1348
  call void @llvm.dbg.value(metadata ptr %call194, metadata !742, metadata !DIExpression()), !dbg !792
  %call195 = call ptr @DestroyCacheView(ptr noundef %call60) #11, !dbg !1349
  call void @llvm.dbg.value(metadata ptr %call195, metadata !748, metadata !DIExpression()), !dbg !792
  %call196 = call ptr @DestroyCacheView(ptr noundef %call59) #11, !dbg !1350
  call void @llvm.dbg.value(metadata ptr %call196, metadata !747, metadata !DIExpression()), !dbg !792
  %compose = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 36, !dbg !1351
  %68 = load i32, ptr %compose, align 8, !dbg !1351, !tbaa !1352
  %call197 = call i32 @CompositeImage(ptr noundef nonnull %call24, i32 noundef %68, ptr noundef nonnull %call31, i64 noundef 0, i64 noundef 0) #11, !dbg !1353
  %call198 = call ptr @DestroyImage(ptr noundef nonnull %call31) #11, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %call198, metadata !751, metadata !DIExpression()), !dbg !792
  %cmp199 = icmp eq i32 %status.0.lcssa, 0, !dbg !1355
  br i1 %cmp199, label %if.then201, label %cleanup204, !dbg !1357

if.then201:                                       ; preds = %for.end193
  %call202 = call ptr @DestroyImage(ptr noundef nonnull %call24) #11, !dbg !1358
  call void @llvm.dbg.value(metadata ptr %call202, metadata !750, metadata !DIExpression()), !dbg !792
  br label %cleanup204, !dbg !1359

cleanup204:                                       ; preds = %for.end193, %if.then201, %if.end23, %if.end19, %if.then38, %if.then33, %if.then14
  %retval.0 = phi ptr [ null, %if.then14 ], [ null, %if.then33 ], [ null, %if.then38 ], [ null, %if.end19 ], [ null, %if.end23 ], [ %call202, %if.then201 ], [ %call24, %for.end193 ], !dbg !792
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #11, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %lowlight) #11, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %highlight) #11, !dbg !1360
  ret ptr %retval.0, !dbg !1360
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1361 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1368 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageChannelDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, i32 noundef %metric, ptr nocapture noundef %distortion, ptr noundef %exception) local_unnamed_addr #0 !dbg !1372 {
entry:
  %exception27 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1376, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !1377, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1378, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %metric, metadata !1379, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !1380, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1381, metadata !DIExpression()), !dbg !1389
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1390
  %0 = load i32, ptr %debug, align 8, !dbg !1390, !tbaa !799
  %cmp.not = icmp eq i32 %0, 0, !dbg !1392
  br i1 %cmp.not, label %if.end.thread, label %if.end, !dbg !1393

if.end.thread:                                    ; preds = %entry
  store double 0.000000e+00, ptr %distortion, align 8, !dbg !1394, !tbaa !821
  br label %if.end7, !dbg !1395

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1396
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1466, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1397
  %.pr = load i32, ptr %debug, align 8, !dbg !1398, !tbaa !799
  store double 0.000000e+00, ptr %distortion, align 8, !dbg !1394, !tbaa !821
  %cmp2.not = icmp eq i32 %.pr, 0, !dbg !1400
  br i1 %cmp2.not, label %if.end7, label %if.then3, !dbg !1395

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1472, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1401
  br label %if.end7, !dbg !1402

if.end7:                                          ; preds = %if.end.thread, %if.then3, %if.end
  %cmp8.not = icmp eq i32 %metric, 255, !dbg !1403
  br i1 %cmp8.not, label %if.end23, label %if.then9, !dbg !1405

if.then9:                                         ; preds = %if.end7
  %columns = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7, !dbg !1406
  %1 = load i64, ptr %columns, align 8, !dbg !1406, !tbaa !836
  %columns10 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1408
  %2 = load i64, ptr %columns10, align 8, !dbg !1408, !tbaa !836
  %cmp11.not = icmp eq i64 %1, %2, !dbg !1409
  br i1 %cmp11.not, label %lor.lhs.false, label %if.then16, !dbg !1410

lor.lhs.false:                                    ; preds = %if.then9
  %rows = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 8, !dbg !1411
  %3 = load i64, ptr %rows, align 8, !dbg !1411, !tbaa !841
  %rows12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1412
  %4 = load i64, ptr %rows12, align 8, !dbg !1412, !tbaa !841
  %cmp13.not = icmp eq i64 %3, %4, !dbg !1413
  br i1 %cmp13.not, label %if.end23, label %if.then16, !dbg !1414

if.then16:                                        ; preds = %if.then9, %lor.lhs.false
  %exception17 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1415
  %filename18 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1415
  %call20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1476, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename18) #11, !dbg !1415
  br label %cleanup, !dbg !1415

if.end23:                                         ; preds = %lor.lhs.false, %if.end7
  call void @llvm.dbg.value(metadata i64 48, metadata !1384, metadata !DIExpression()), !dbg !1389
  %call24 = tail call ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 8) #13, !dbg !1418
  call void @llvm.dbg.value(metadata ptr %call24, metadata !1382, metadata !DIExpression()), !dbg !1389
  %cmp25 = icmp eq ptr %call24, null, !dbg !1419
  br i1 %cmp25, label %if.then26, label %if.end33, !dbg !1420

if.then26:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception27) #11, !dbg !1421
  call void @llvm.dbg.declare(metadata ptr %exception27, metadata !1388, metadata !DIExpression()), !dbg !1421
  call void @GetExceptionInfo(ptr noundef nonnull %exception27) #11, !dbg !1421
  %call28 = tail call ptr @__errno_location() #14, !dbg !1421
  %5 = load i32, ptr %call28, align 4, !dbg !1421, !tbaa !1422
  %call29 = call ptr @GetExceptionMessage(i32 noundef %5) #11, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %call29, metadata !1385, metadata !DIExpression()), !dbg !1423
  %call30 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1484, i32 noundef 700, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %call29) #11, !dbg !1421
  %call31 = call ptr @DestroyString(ptr noundef %call29) #11, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1385, metadata !DIExpression()), !dbg !1423
  call void @CatchException(ptr noundef nonnull %exception27) #11, !dbg !1421
  %call32 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception27) #11, !dbg !1421
  call void @MagickCoreTerminus() #11, !dbg !1421
  call void @_exit(i32 noundef 1) #15, !dbg !1421
  unreachable, !dbg !1421

if.end33:                                         ; preds = %if.end23
  %call34 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call24, i32 noundef 0, i64 noundef 384) #11, !dbg !1424
  switch i32 %metric, label %sw.default [
    i32 1, label %sw.bb
    i32 9, label %sw.bb36
    i32 2, label %sw.bb38
    i32 3, label %sw.bb40
    i32 4, label %sw.bb42
    i32 7, label %sw.bb52
    i32 5, label %sw.bb46
    i32 6, label %sw.bb48
    i32 255, label %sw.bb50
  ], !dbg !1425

sw.bb:                                            ; preds = %if.end33
  %call35 = tail call fastcc i32 @GetAbsoluteDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %call35, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1429

sw.bb36:                                          ; preds = %if.end33
  %call37 = tail call fastcc i32 @GetFuzzDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %call37, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1432

sw.bb38:                                          ; preds = %if.end33
  %call39 = tail call fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1433
  call void @llvm.dbg.value(metadata i32 %call39, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1435

sw.bb40:                                          ; preds = %if.end33
  %call41 = tail call fastcc i32 @GetMeanErrorPerPixel(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %call41, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1438

sw.bb42:                                          ; preds = %if.end33
  %call43 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %call43, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1441

sw.default:                                       ; preds = %if.end33
  %call45 = tail call fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1442
  call void @llvm.dbg.value(metadata i32 %call45, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1444

sw.bb46:                                          ; preds = %if.end33
  %call47 = tail call fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1445
  call void @llvm.dbg.value(metadata i32 %call47, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1447

sw.bb48:                                          ; preds = %if.end33
  %call49 = tail call fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %call49, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1450

sw.bb50:                                          ; preds = %if.end33
  %call51 = tail call fastcc i32 @GetPerceptualHashDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception), !dbg !1451
  call void @llvm.dbg.value(metadata i32 %call51, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1453

sw.bb52:                                          ; preds = %if.end33
  call void @llvm.dbg.value(metadata ptr %image, metadata !1454, metadata !DIExpression()) #11, !dbg !1464
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !1459, metadata !DIExpression()) #11, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1460, metadata !DIExpression()) #11, !dbg !1464
  call void @llvm.dbg.value(metadata ptr %call24, metadata !1461, metadata !DIExpression()) #11, !dbg !1464
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1462, metadata !DIExpression()) #11, !dbg !1464
  %call.i = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef nonnull %call24, ptr noundef %exception) #11, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !1463, metadata !DIExpression()) #11, !dbg !1464
  %and.i = and i32 %channel, 1, !dbg !1468
  %cmp.not.i = icmp eq i32 %and.i, 0, !dbg !1470
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1471

if.then.i:                                        ; preds = %sw.bb52
  %arrayidx.i = getelementptr inbounds double, ptr %call24, i64 1, !dbg !1472
  %6 = load double, ptr %arrayidx.i, align 8, !dbg !1472, !tbaa !821
  %call1.i = tail call double @sqrt(double noundef %6) #11, !dbg !1473
  store double %call1.i, ptr %arrayidx.i, align 8, !dbg !1474, !tbaa !821
  br label %if.end.i, !dbg !1475

if.end.i:                                         ; preds = %if.then.i, %sw.bb52
  %and3.i = and i32 %channel, 2, !dbg !1476
  %cmp4.not.i = icmp eq i32 %and3.i, 0, !dbg !1478
  br i1 %cmp4.not.i, label %if.end9.i, label %if.then5.i, !dbg !1479

if.then5.i:                                       ; preds = %if.end.i
  %arrayidx6.i = getelementptr inbounds double, ptr %call24, i64 2, !dbg !1480
  %7 = load double, ptr %arrayidx6.i, align 8, !dbg !1480, !tbaa !821
  %call7.i = tail call double @sqrt(double noundef %7) #11, !dbg !1481
  store double %call7.i, ptr %arrayidx6.i, align 8, !dbg !1482, !tbaa !821
  br label %if.end9.i, !dbg !1483

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i
  %and10.i = and i32 %channel, 4, !dbg !1484
  %cmp11.not.i = icmp eq i32 %and10.i, 0, !dbg !1486
  br i1 %cmp11.not.i, label %if.end16.i, label %if.then12.i, !dbg !1487

if.then12.i:                                      ; preds = %if.end9.i
  %arrayidx13.i = getelementptr inbounds double, ptr %call24, i64 4, !dbg !1488
  %8 = load double, ptr %arrayidx13.i, align 8, !dbg !1488, !tbaa !821
  %call14.i = tail call double @sqrt(double noundef %8) #11, !dbg !1489
  store double %call14.i, ptr %arrayidx13.i, align 8, !dbg !1490, !tbaa !821
  br label %if.end16.i, !dbg !1491

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i
  %and17.i = and i32 %channel, 8, !dbg !1492
  %cmp18.not.i = icmp eq i32 %and17.i, 0, !dbg !1494
  br i1 %cmp18.not.i, label %if.end24.i, label %land.lhs.true.i, !dbg !1495

land.lhs.true.i:                                  ; preds = %if.end16.i
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1496
  %9 = load i32, ptr %matte.i, align 8, !dbg !1496, !tbaa !1175
  %cmp19.not.i = icmp eq i32 %9, 0, !dbg !1497
  br i1 %cmp19.not.i, label %if.end24.i, label %if.then20.i, !dbg !1498

if.then20.i:                                      ; preds = %land.lhs.true.i
  %arrayidx21.i = getelementptr inbounds double, ptr %call24, i64 8, !dbg !1499
  %10 = load double, ptr %arrayidx21.i, align 8, !dbg !1499, !tbaa !821
  %call22.i = tail call double @sqrt(double noundef %10) #11, !dbg !1500
  store double %call22.i, ptr %arrayidx21.i, align 8, !dbg !1501, !tbaa !821
  br label %if.end24.i, !dbg !1502

if.end24.i:                                       ; preds = %if.then20.i, %land.lhs.true.i, %if.end16.i
  %and25.i = and i32 %channel, 32, !dbg !1503
  %cmp26.not.i = icmp eq i32 %and25.i, 0, !dbg !1505
  br i1 %cmp26.not.i, label %GetRootMeanSquaredDistortion.exit, label %land.lhs.true27.i, !dbg !1506

land.lhs.true27.i:                                ; preds = %if.end24.i
  %colorspace.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1507
  %11 = load i32, ptr %colorspace.i, align 4, !dbg !1507, !tbaa !891
  %cmp28.i = icmp eq i32 %11, 12, !dbg !1508
  br i1 %cmp28.i, label %if.then29.i, label %GetRootMeanSquaredDistortion.exit, !dbg !1509

if.then29.i:                                      ; preds = %land.lhs.true27.i
  %arrayidx30.i = getelementptr inbounds double, ptr %call24, i64 32, !dbg !1510
  %12 = load double, ptr %arrayidx30.i, align 8, !dbg !1510, !tbaa !821
  %call31.i = tail call double @sqrt(double noundef %12) #11, !dbg !1511
  store double %call31.i, ptr %arrayidx30.i, align 8, !dbg !1512, !tbaa !821
  br label %GetRootMeanSquaredDistortion.exit, !dbg !1513

GetRootMeanSquaredDistortion.exit:                ; preds = %if.end24.i, %land.lhs.true27.i, %if.then29.i
  %arrayidx34.i = getelementptr inbounds double, ptr %call24, i64 47, !dbg !1514
  %13 = load double, ptr %arrayidx34.i, align 8, !dbg !1514, !tbaa !821
  %call35.i = tail call double @sqrt(double noundef %13) #11, !dbg !1515
  store double %call35.i, ptr %arrayidx34.i, align 8, !dbg !1516, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !1383, metadata !DIExpression()), !dbg !1389
  br label %sw.epilog, !dbg !1517

sw.epilog:                                        ; preds = %GetRootMeanSquaredDistortion.exit, %sw.bb50, %sw.bb48, %sw.bb46, %sw.default, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb
  %status.0 = phi i32 [ %call45, %sw.default ], [ %call51, %sw.bb50 ], [ %call49, %sw.bb48 ], [ %call47, %sw.bb46 ], [ %call.i, %GetRootMeanSquaredDistortion.exit ], [ %call43, %sw.bb42 ], [ %call41, %sw.bb40 ], [ %call39, %sw.bb38 ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb ], !dbg !1518
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !1383, metadata !DIExpression()), !dbg !1389
  %arrayidx = getelementptr inbounds double, ptr %call24, i64 47, !dbg !1519
  %14 = load double, ptr %arrayidx, align 8, !dbg !1519, !tbaa !821
  store double %14, ptr %distortion, align 8, !dbg !1520, !tbaa !821
  %call54 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call24) #11, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %call54, metadata !1382, metadata !DIExpression()), !dbg !1389
  %call55 = tail call i32 @GetMagickPrecision() #11, !dbg !1522
  %15 = load double, ptr %distortion, align 8, !dbg !1523, !tbaa !821
  %call56 = tail call i32 (ptr, ptr, ptr, ...) @FormatImageProperty(ptr noundef nonnull %image, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call55, double noundef %15) #11, !dbg !1524
  br label %cleanup, !dbg !1525

cleanup:                                          ; preds = %if.then16, %sw.epilog
  %retval.0 = phi i32 [ %status.0, %sw.epilog ], [ 0, %if.then16 ], !dbg !1389
  ret i32 %retval.0, !dbg !1526
}

declare !dbg !1527 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1531 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1537 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !1540 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1544 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1549 i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1552 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1556 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1559 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1562 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1563 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1569 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1572 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !1575 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !1578 i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1581 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1584 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !1587 i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %metric, ptr nocapture noundef %distortion, ptr noundef %exception) local_unnamed_addr #0 !dbg !1591 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1595, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !1596, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %metric, metadata !1597, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1599, metadata !DIExpression()), !dbg !1601
  %call = tail call i32 @GetImageChannelDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef 47, i32 noundef %metric, ptr noundef %distortion, ptr noundef %exception), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %call, metadata !1600, metadata !DIExpression()), !dbg !1601
  ret i32 %call, !dbg !1603
}

; Function Attrs: allocsize(0,1)
declare !dbg !1604 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare !dbg !1608 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1611 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !1615 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1619 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1620 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1623 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare !dbg !1627 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetAbsoluteDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !1630 {
entry:
  %zero = alloca %struct._MagickPixelPacket, align 8
  %channel_distortion = alloca [48 x double], align 16
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %reconstruct_pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1632, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !1633, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1634, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !1635, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1636, metadata !DIExpression()), !dbg !1657
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #11, !dbg !1658
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !1640, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 1, metadata !1639, metadata !DIExpression()), !dbg !1657
  call void @GetMagickPixelPacket(ptr noundef %image, ptr noundef nonnull %zero) #11, !dbg !1660
  %call = call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #11, !dbg !1661
  call void @llvm.dbg.value(metadata ptr %call, metadata !1637, metadata !DIExpression()), !dbg !1657
  %call1 = call ptr @AcquireVirtualCacheView(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1638, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1657
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 1, metadata !1639, metadata !DIExpression()), !dbg !1657
  %0 = load i64, ptr %rows, align 8, !dbg !1663, !tbaa !841
  %cmp141 = icmp sgt i64 %0, 0, !dbg !1664
  br i1 %cmp141, label %for.body.lr.ph, label %for.end74, !dbg !1665

for.body.lr.ph:                                   ; preds = %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %columns4 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7
  %1 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %2 = getelementptr i8, ptr %reconstruct_image, i64 4
  %red1.i118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 5
  %green3.i121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 6
  %blue5.i123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 7
  %opacity7.i126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 8
  %index15.i131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %reconstruct_pixel, i64 0, i32 9
  %and = and i32 %channel, 1
  %cmp21.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 1
  %and24 = and i32 %channel, 2
  %cmp25.not = icmp eq i32 %and24, 0
  %arrayidx27 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 2
  %and30 = and i32 %channel, 4
  %cmp31.not = icmp eq i32 %and30, 0
  %arrayidx33 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 4
  %and36 = and i32 %channel, 8
  %cmp37.not = icmp eq i32 %and36, 0
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %arrayidx40 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 8
  %and43 = and i32 %channel, 32
  %cmp44.not = icmp eq i32 %and43, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %arrayidx48 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 32
  %arrayidx51 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 47
  br label %for.body, !dbg !1665

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0143 = phi i64 [ 0, %for.body.lr.ph ], [ %inc73, %cleanup ]
  %status.0142 = phi i32 [ 1, %for.body.lr.ph ], [ %status.1, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0143, metadata !1641, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 %status.0142, metadata !1639, metadata !DIExpression()), !dbg !1657
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !1666
  call void @llvm.dbg.declare(metadata ptr %channel_distortion, metadata !1642, metadata !DIExpression()), !dbg !1667
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #11, !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !1649, metadata !DIExpression()), !dbg !1669
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reconstruct_pixel) #11, !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %reconstruct_pixel, metadata !1650, metadata !DIExpression()), !dbg !1670
  %cmp2 = icmp eq i32 %status.0142, 0, !dbg !1671
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !1673

if.end:                                           ; preds = %for.body
  %3 = load i64, ptr %columns, align 8, !dbg !1674, !tbaa !836
  %call3 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call, i64 noundef 0, i64 noundef %y.0143, i64 noundef %3, i64 noundef 1, ptr noundef %exception) #12, !dbg !1675
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1653, metadata !DIExpression()), !dbg !1676
  %4 = load i64, ptr %columns4, align 8, !dbg !1677, !tbaa !836
  %call5 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call1, i64 noundef 0, i64 noundef %y.0143, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #12, !dbg !1678
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1654, metadata !DIExpression()), !dbg !1676
  %cmp6 = icmp eq ptr %call3, null, !dbg !1679
  %cmp7 = icmp eq ptr %call5, null
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp7, !dbg !1681
  br i1 %or.cond, label %cleanup, label %if.end9, !dbg !1681

if.end9:                                          ; preds = %if.end
  %call10 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call) #11, !dbg !1682
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1651, metadata !DIExpression()), !dbg !1676
  %call11 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call1) #11, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1652, metadata !DIExpression()), !dbg !1676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !1684, !tbaa.struct !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %reconstruct_pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !1685
  %call12 = call ptr @ResetMagickMemory(ptr noundef nonnull %channel_distortion, i32 noundef 0, i64 noundef 384) #11, !dbg !1686
  call void @llvm.dbg.value(metadata i64 0, metadata !1656, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1654, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1653, metadata !DIExpression()), !dbg !1676
  %5 = load i64, ptr %columns, align 8, !dbg !1687, !tbaa !836
  %cmp15134 = icmp sgt i64 %5, 0, !dbg !1690
  br i1 %cmp15134, label %for.body16.lr.ph, label %for.body58.preheader, !dbg !1691

for.body16.lr.ph:                                 ; preds = %if.end9
  %cmp9.i = icmp ne ptr %call10, null
  %cmp9.i128 = icmp ne ptr %call11, null
  br label %for.body16, !dbg !1691

for.body16:                                       ; preds = %for.body16.lr.ph, %if.end53
  %x.0137 = phi i64 [ 0, %for.body16.lr.ph ], [ %inc55, %if.end53 ]
  %q.0136 = phi ptr [ %call5, %for.body16.lr.ph ], [ %incdec.ptr54, %if.end53 ]
  %p.0135 = phi ptr [ %call3, %for.body16.lr.ph ], [ %incdec.ptr, %if.end53 ]
  call void @llvm.dbg.value(metadata i64 %x.0137, metadata !1656, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %q.0136, metadata !1654, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %p.0135, metadata !1653, metadata !DIExpression()), !dbg !1676
  %image.val = load i32, ptr %1, align 4, !dbg !1692, !tbaa !891
  call void @llvm.dbg.value(metadata ptr undef, metadata !1092, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %p.0135, metadata !1098, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call10, i64 %x.0137), metadata !1099, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1100, metadata !DIExpression()), !dbg !1694
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0135, i64 0, i32 2, !dbg !1696
  %6 = load i16, ptr %red.i, align 2, !dbg !1696, !tbaa !1104
  %conv.i = uitofp i16 %6 to float, !dbg !1697
  store float %conv.i, ptr %red1.i, align 8, !dbg !1698, !tbaa !918
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0135, i64 0, i32 1, !dbg !1699
  %7 = load i16, ptr %green.i, align 2, !dbg !1699, !tbaa !1108
  %conv2.i = uitofp i16 %7 to float, !dbg !1700
  store float %conv2.i, ptr %green3.i, align 4, !dbg !1701, !tbaa !925
  %8 = load i16, ptr %p.0135, align 2, !dbg !1702, !tbaa !1112
  %conv4.i = uitofp i16 %8 to float, !dbg !1703
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1704, !tbaa !930
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0135, i64 0, i32 3, !dbg !1705
  %9 = load i16, ptr %opacity.i, align 2, !dbg !1705, !tbaa !1116
  %conv6.i = uitofp i16 %9 to float, !dbg !1706
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !1707, !tbaa !1119
  %cmp.i = icmp eq i32 %image.val, 12, !dbg !1708
  %or.cond.i = and i1 %cmp9.i, %cmp.i, !dbg !1709
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !1709

cond.end.i:                                       ; preds = %for.body16
  %add.ptr = getelementptr inbounds i16, ptr %call10, i64 %x.0137, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1099, metadata !DIExpression()), !dbg !1694
  %10 = load i16, ptr %add.ptr, align 2, !dbg !1711, !tbaa !1124
  %conv14.i = uitofp i16 %10 to float, !dbg !1712
  store float %conv14.i, ptr %index15.i, align 8, !dbg !1713, !tbaa !987
  br label %SetMagickPixelPacket.exit, !dbg !1714

SetMagickPixelPacket.exit:                        ; preds = %for.body16, %cond.end.i
  %reconstruct_image.val = load i32, ptr %2, align 4, !dbg !1715, !tbaa !891
  call void @llvm.dbg.value(metadata ptr undef, metadata !1092, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata ptr %q.0136, metadata !1098, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call11, i64 %x.0137), metadata !1099, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1716
  call void @llvm.dbg.value(metadata ptr %reconstruct_pixel, metadata !1100, metadata !DIExpression()), !dbg !1716
  %red.i116 = getelementptr inbounds %struct._PixelPacket, ptr %q.0136, i64 0, i32 2, !dbg !1718
  %11 = load i16, ptr %red.i116, align 2, !dbg !1718, !tbaa !1104
  %conv.i117 = uitofp i16 %11 to float, !dbg !1719
  store float %conv.i117, ptr %red1.i118, align 8, !dbg !1720, !tbaa !918
  %green.i119 = getelementptr inbounds %struct._PixelPacket, ptr %q.0136, i64 0, i32 1, !dbg !1721
  %12 = load i16, ptr %green.i119, align 2, !dbg !1721, !tbaa !1108
  %conv2.i120 = uitofp i16 %12 to float, !dbg !1722
  store float %conv2.i120, ptr %green3.i121, align 4, !dbg !1723, !tbaa !925
  %13 = load i16, ptr %q.0136, align 2, !dbg !1724, !tbaa !1112
  %conv4.i122 = uitofp i16 %13 to float, !dbg !1725
  store float %conv4.i122, ptr %blue5.i123, align 8, !dbg !1726, !tbaa !930
  %opacity.i124 = getelementptr inbounds %struct._PixelPacket, ptr %q.0136, i64 0, i32 3, !dbg !1727
  %14 = load i16, ptr %opacity.i124, align 2, !dbg !1727, !tbaa !1116
  %conv6.i125 = uitofp i16 %14 to float, !dbg !1728
  store float %conv6.i125, ptr %opacity7.i126, align 4, !dbg !1729, !tbaa !1119
  %cmp.i127 = icmp eq i32 %reconstruct_image.val, 12, !dbg !1730
  %or.cond.i129 = and i1 %cmp9.i128, %cmp.i127, !dbg !1731
  br i1 %or.cond.i129, label %cond.end.i132, label %SetMagickPixelPacket.exit133, !dbg !1731

cond.end.i132:                                    ; preds = %SetMagickPixelPacket.exit
  %add.ptr17 = getelementptr inbounds i16, ptr %call11, i64 %x.0137, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %add.ptr17, metadata !1099, metadata !DIExpression()), !dbg !1716
  %15 = load i16, ptr %add.ptr17, align 2, !dbg !1733, !tbaa !1124
  %conv14.i130 = uitofp i16 %15 to float, !dbg !1734
  store float %conv14.i130, ptr %index15.i131, align 8, !dbg !1735, !tbaa !987
  br label %SetMagickPixelPacket.exit133, !dbg !1736

SetMagickPixelPacket.exit133:                     ; preds = %SetMagickPixelPacket.exit, %cond.end.i132
  %call18 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef nonnull %reconstruct_pixel) #11, !dbg !1737
  %cmp19 = icmp eq i32 %call18, 0, !dbg !1739
  br i1 %cmp19, label %if.then20, label %if.end53, !dbg !1740

if.then20:                                        ; preds = %SetMagickPixelPacket.exit133
  br i1 %cmp21.not, label %if.end23, label %if.then22, !dbg !1741

if.then22:                                        ; preds = %if.then20
  %16 = load double, ptr %arrayidx, align 8, !dbg !1743, !tbaa !821
  %inc = fadd double %16, 1.000000e+00, !dbg !1743
  store double %inc, ptr %arrayidx, align 8, !dbg !1743, !tbaa !821
  br label %if.end23, !dbg !1745

if.end23:                                         ; preds = %if.then22, %if.then20
  br i1 %cmp25.not, label %if.end29, label %if.then26, !dbg !1746

if.then26:                                        ; preds = %if.end23
  %17 = load double, ptr %arrayidx27, align 16, !dbg !1747, !tbaa !821
  %inc28 = fadd double %17, 1.000000e+00, !dbg !1747
  store double %inc28, ptr %arrayidx27, align 16, !dbg !1747, !tbaa !821
  br label %if.end29, !dbg !1749

if.end29:                                         ; preds = %if.then26, %if.end23
  br i1 %cmp31.not, label %if.end35, label %if.then32, !dbg !1750

if.then32:                                        ; preds = %if.end29
  %18 = load double, ptr %arrayidx33, align 16, !dbg !1751, !tbaa !821
  %inc34 = fadd double %18, 1.000000e+00, !dbg !1751
  store double %inc34, ptr %arrayidx33, align 16, !dbg !1751, !tbaa !821
  br label %if.end35, !dbg !1753

if.end35:                                         ; preds = %if.then32, %if.end29
  br i1 %cmp37.not, label %if.end42, label %land.lhs.true, !dbg !1754

land.lhs.true:                                    ; preds = %if.end35
  %19 = load i32, ptr %matte, align 8, !dbg !1756, !tbaa !1175
  %cmp38.not = icmp eq i32 %19, 0, !dbg !1757
  br i1 %cmp38.not, label %if.end42, label %if.then39, !dbg !1758

if.then39:                                        ; preds = %land.lhs.true
  %20 = load double, ptr %arrayidx40, align 16, !dbg !1759, !tbaa !821
  %inc41 = fadd double %20, 1.000000e+00, !dbg !1759
  store double %inc41, ptr %arrayidx40, align 16, !dbg !1759, !tbaa !821
  br label %if.end42, !dbg !1760

if.end42:                                         ; preds = %if.then39, %land.lhs.true, %if.end35
  br i1 %cmp44.not, label %if.end50, label %land.lhs.true45, !dbg !1761

land.lhs.true45:                                  ; preds = %if.end42
  %21 = load i32, ptr %colorspace, align 4, !dbg !1763, !tbaa !891
  %cmp46 = icmp eq i32 %21, 12, !dbg !1764
  br i1 %cmp46, label %if.then47, label %if.end50, !dbg !1765

if.then47:                                        ; preds = %land.lhs.true45
  %22 = load double, ptr %arrayidx48, align 16, !dbg !1766, !tbaa !821
  %inc49 = fadd double %22, 1.000000e+00, !dbg !1766
  store double %inc49, ptr %arrayidx48, align 16, !dbg !1766, !tbaa !821
  br label %if.end50, !dbg !1767

if.end50:                                         ; preds = %if.then47, %land.lhs.true45, %if.end42
  %23 = load double, ptr %arrayidx51, align 8, !dbg !1768, !tbaa !821
  %inc52 = fadd double %23, 1.000000e+00, !dbg !1768
  store double %inc52, ptr %arrayidx51, align 8, !dbg !1768, !tbaa !821
  br label %if.end53, !dbg !1769

if.end53:                                         ; preds = %if.end50, %SetMagickPixelPacket.exit133
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0135, i64 1, !dbg !1770
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1653, metadata !DIExpression()), !dbg !1676
  %incdec.ptr54 = getelementptr inbounds %struct._PixelPacket, ptr %q.0136, i64 1, !dbg !1771
  call void @llvm.dbg.value(metadata ptr %incdec.ptr54, metadata !1654, metadata !DIExpression()), !dbg !1676
  %inc55 = add nuw nsw i64 %x.0137, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %inc55, metadata !1656, metadata !DIExpression()), !dbg !1676
  %24 = load i64, ptr %columns, align 8, !dbg !1687, !tbaa !836
  %cmp15 = icmp slt i64 %inc55, %24, !dbg !1690
  br i1 %cmp15, label %for.body16, label %for.body58.preheader, !dbg !1691, !llvm.loop !1773

for.body58.preheader:                             ; preds = %if.end53, %if.end9
  br label %for.body58, !dbg !1775

for.body58:                                       ; preds = %for.body58.preheader, %for.body58
  %i.0140 = phi i64 [ %inc62, %for.body58 ], [ 0, %for.body58.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0140, metadata !1655, metadata !DIExpression()), !dbg !1676
  %arrayidx59 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 %i.0140, !dbg !1777
  %25 = load double, ptr %arrayidx59, align 8, !dbg !1777, !tbaa !821
  %arrayidx60 = getelementptr inbounds double, ptr %distortion, i64 %i.0140, !dbg !1779
  %26 = load double, ptr %arrayidx60, align 8, !dbg !1780, !tbaa !821
  %add = fadd double %25, %26, !dbg !1780
  store double %add, ptr %arrayidx60, align 8, !dbg !1780, !tbaa !821
  %inc62 = add nuw nsw i64 %i.0140, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !1655, metadata !DIExpression()), !dbg !1676
  %exitcond.not = icmp eq i64 %inc62, 48, !dbg !1782
  br i1 %exitcond.not, label %cleanup, label %for.body58, !dbg !1775, !llvm.loop !1783

cleanup:                                          ; preds = %for.body58, %if.end, %for.body
  %status.1 = phi i32 [ 0, %for.body ], [ 0, %if.end ], [ 1, %for.body58 ], !dbg !1657
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !1639, metadata !DIExpression()), !dbg !1657
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reconstruct_pixel) #11, !dbg !1785
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #11, !dbg !1785
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !1785
  %inc73 = add nuw nsw i64 %y.0143, 1, !dbg !1786
  call void @llvm.dbg.value(metadata i64 %inc73, metadata !1641, metadata !DIExpression()), !dbg !1657
  %27 = load i64, ptr %rows, align 8, !dbg !1663, !tbaa !841
  %cmp = icmp slt i64 %inc73, %27, !dbg !1664
  br i1 %cmp, label %for.body, label %for.end74, !dbg !1665, !llvm.loop !1787

for.end74:                                        ; preds = %cleanup, %entry
  %status.0.lcssa = phi i32 [ 1, %entry ], [ %status.1, %cleanup ], !dbg !1789
  %call75 = call ptr @DestroyCacheView(ptr noundef %call1) #11, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %call75, metadata !1638, metadata !DIExpression()), !dbg !1657
  %call76 = call ptr @DestroyCacheView(ptr noundef %call) #11, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1637, metadata !DIExpression()), !dbg !1657
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #11, !dbg !1792
  ret i32 %status.0.lcssa, !dbg !1793
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetFuzzDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !1794 {
entry:
  %channel_distortion = alloca [48 x double], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1796, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !1797, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1798, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !1799, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1800, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i32 1, metadata !1803, metadata !DIExpression()), !dbg !1822
  %call = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #11, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %call, metadata !1801, metadata !DIExpression()), !dbg !1822
  %call1 = tail call ptr @AcquireVirtualCacheView(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !1824
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1802, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 0, metadata !1805, metadata !DIExpression()), !dbg !1822
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !1803, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 0, metadata !1805, metadata !DIExpression()), !dbg !1822
  %0 = load i64, ptr %rows, align 8, !dbg !1825, !tbaa !841
  %cmp401 = icmp sgt i64 %0, 0, !dbg !1826
  br i1 %cmp401, label %for.body.lr.ph, label %for.end208, !dbg !1827

for.body.lr.ph:                                   ; preds = %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %columns5 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %matte21 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 6
  %and = and i32 %channel, 1
  %cmp34.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 1
  %arrayidx51 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 47
  %and54 = and i32 %channel, 2
  %cmp55.not = icmp eq i32 %and54, 0
  %arrayidx71 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 2
  %and78 = and i32 %channel, 4
  %cmp79.not = icmp eq i32 %and78, 0
  %arrayidx95 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 4
  %and102 = and i32 %channel, 8
  %cmp103.not = icmp eq i32 %and102, 0
  %arrayidx137 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 8
  %and144 = and i32 %channel, 32
  %cmp145.not = icmp eq i32 %and144, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace151 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 1
  %arrayidx182 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 32
  br label %for.body, !dbg !1827

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0403 = phi i32 [ 1, %for.body.lr.ph ], [ %status.1, %cleanup ]
  %y.0402 = phi i64 [ 0, %for.body.lr.ph ], [ %inc207, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0403, metadata !1803, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 %y.0402, metadata !1805, metadata !DIExpression()), !dbg !1822
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !1828
  call void @llvm.dbg.declare(metadata ptr %channel_distortion, metadata !1806, metadata !DIExpression()), !dbg !1829
  %cmp3 = icmp eq i32 %status.0403, 0, !dbg !1830
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !1832

if.end:                                           ; preds = %for.body
  %1 = load i64, ptr %columns, align 8, !dbg !1833, !tbaa !836
  %call4 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call, i64 noundef 0, i64 noundef %y.0402, i64 noundef %1, i64 noundef 1, ptr noundef %exception) #12, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1812, metadata !DIExpression()), !dbg !1835
  %2 = load i64, ptr %columns5, align 8, !dbg !1836, !tbaa !836
  %call6 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call1, i64 noundef 0, i64 noundef %y.0402, i64 noundef %2, i64 noundef 1, ptr noundef %exception) #12, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1813, metadata !DIExpression()), !dbg !1835
  %cmp7 = icmp eq ptr %call4, null, !dbg !1838
  %cmp8 = icmp eq ptr %call6, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8, !dbg !1840
  br i1 %or.cond, label %cleanup, label %if.end10, !dbg !1840

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call) #11, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1810, metadata !DIExpression()), !dbg !1835
  %call12 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call1) #11, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1811, metadata !DIExpression()), !dbg !1835
  %call13 = call ptr @ResetMagickMemory(ptr noundef nonnull %channel_distortion, i32 noundef 0, i64 noundef 384) #11, !dbg !1843
  call void @llvm.dbg.value(metadata i64 0, metadata !1815, metadata !DIExpression()), !dbg !1835
  %3 = load i64, ptr %columns, align 8, !tbaa !836
  call void @llvm.dbg.value(metadata i64 0, metadata !1815, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1813, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1812, metadata !DIExpression()), !dbg !1835
  %cmp16373 = icmp sgt i64 %3, 0, !dbg !1844
  br i1 %cmp16373, label %for.body17.lr.ph, label %for.body193.preheader, !dbg !1845

for.body17.lr.ph:                                 ; preds = %if.end10
  %4 = load i32, ptr %matte, align 8, !tbaa !1175
  %cmp18.not = icmp eq i32 %4, 0
  %5 = load i32, ptr %matte21, align 8, !tbaa !1175
  %cmp22.not = icmp eq i32 %5, 0
  %cmp155 = icmp eq ptr %call11, null
  %cmp166 = icmp eq ptr %call12, null
  %arrayidx.promoted = load double, ptr %arrayidx, align 8, !tbaa !821
  %arrayidx51.promoted = load double, ptr %arrayidx51, align 8, !tbaa !821
  %arrayidx71.promoted = load double, ptr %arrayidx71, align 16, !tbaa !821
  %arrayidx95.promoted = load double, ptr %arrayidx95, align 16, !tbaa !821
  %arrayidx137.promoted = load double, ptr %arrayidx137, align 16, !tbaa !821
  %arrayidx182.promoted = load double, ptr %arrayidx182, align 16, !tbaa !821
  br label %for.body17, !dbg !1845

for.body17:                                       ; preds = %for.body17.lr.ph, %if.end188
  %add183399 = phi double [ %arrayidx182.promoted, %for.body17.lr.ph ], [ %add183398, %if.end188 ]
  %add138397 = phi double [ %arrayidx137.promoted, %for.body17.lr.ph ], [ %add138396, %if.end188 ]
  %add96395 = phi double [ %arrayidx95.promoted, %for.body17.lr.ph ], [ %add96394, %if.end188 ]
  %add72393 = phi double [ %arrayidx71.promoted, %for.body17.lr.ph ], [ %add72392, %if.end188 ]
  %add52389 = phi double [ %arrayidx51.promoted, %for.body17.lr.ph ], [ %add52384, %if.end188 ]
  %add383 = phi double [ %arrayidx.promoted, %for.body17.lr.ph ], [ %add382, %if.end188 ]
  %x.0378 = phi i64 [ 0, %for.body17.lr.ph ], [ %inc, %if.end188 ]
  %q.0376 = phi ptr [ %call6, %for.body17.lr.ph ], [ %incdec.ptr189, %if.end188 ]
  %p.0374 = phi ptr [ %call4, %for.body17.lr.ph ], [ %incdec.ptr, %if.end188 ]
  call void @llvm.dbg.value(metadata i64 %x.0378, metadata !1815, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata ptr %q.0376, metadata !1813, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata ptr %p.0374, metadata !1812, metadata !DIExpression()), !dbg !1835
  br i1 %cmp18.not, label %cond.end, label %cond.true, !dbg !1846

cond.true:                                        ; preds = %for.body17
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0374, i64 0, i32 3, !dbg !1847
  %6 = load i16, ptr %opacity, align 2, !dbg !1847, !tbaa !1116
  %7 = xor i16 %6, -1, !dbg !1847
  %sub = zext i16 %7 to i32, !dbg !1847
  br label %cond.end, !dbg !1846

cond.end:                                         ; preds = %for.body17, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 65535, %for.body17 ], !dbg !1846
  %conv19 = sitofp i32 %cond to double, !dbg !1848
  %mul = fmul double %conv19, 0x3EF0001000100010, !dbg !1849
  %conv20 = fptrunc double %mul to float, !dbg !1850
  call void @llvm.dbg.value(metadata float %conv20, metadata !1821, metadata !DIExpression()), !dbg !1851
  br i1 %cmp22.not, label %cond.end29, label %cond.true24, !dbg !1852

cond.true24:                                      ; preds = %cond.end
  %opacity25 = getelementptr inbounds %struct._PixelPacket, ptr %q.0376, i64 0, i32 3, !dbg !1853
  %8 = load i16, ptr %opacity25, align 2, !dbg !1853, !tbaa !1116
  %9 = xor i16 %8, -1, !dbg !1853
  %sub27 = zext i16 %9 to i32, !dbg !1853
  br label %cond.end29, !dbg !1852

cond.end29:                                       ; preds = %cond.end, %cond.true24
  %cond30 = phi i32 [ %sub27, %cond.true24 ], [ 65535, %cond.end ], !dbg !1852
  %conv31 = sitofp i32 %cond30 to double, !dbg !1854
  %mul32 = fmul double %conv31, 0x3EF0001000100010, !dbg !1855
  %conv33 = fptrunc double %mul32 to float, !dbg !1856
  call void @llvm.dbg.value(metadata float %conv33, metadata !1820, metadata !DIExpression()), !dbg !1851
  br i1 %cmp34.not, label %if.end53, label %if.then36, !dbg !1857

if.then36:                                        ; preds = %cond.end29
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0374, i64 0, i32 2, !dbg !1858
  %10 = load i16, ptr %red, align 2, !dbg !1858, !tbaa !1104
  %conv38 = uitofp i16 %10 to float, !dbg !1858
  %red40 = getelementptr inbounds %struct._PixelPacket, ptr %q.0376, i64 0, i32 2, !dbg !1861
  %11 = load i16, ptr %red40, align 2, !dbg !1861, !tbaa !1104
  %conv42 = uitofp i16 %11 to float, !dbg !1861
  %12 = fneg float %conv33, !dbg !1862
  %neg = fmul float %12, %conv42, !dbg !1862
  %13 = call float @llvm.fmuladd.f32(float %conv20, float %conv38, float %neg), !dbg !1862
  %conv44 = fpext float %13 to double, !dbg !1863
  %mul45 = fmul double %conv44, 0x3EF0001000100010, !dbg !1864
  %conv46 = fptrunc double %mul45 to float, !dbg !1865
  call void @llvm.dbg.value(metadata float %conv46, metadata !1816, metadata !DIExpression()), !dbg !1851
  %mul47 = fmul float %conv46, %conv46, !dbg !1866
  %conv48 = fpext float %mul47 to double, !dbg !1867
  %add = fadd double %add383, %conv48, !dbg !1868
  store double %add, ptr %arrayidx, align 8, !dbg !1868, !tbaa !821
  %add52 = fadd double %add52389, %conv48, !dbg !1869
  store double %add52, ptr %arrayidx51, align 8, !dbg !1869, !tbaa !821
  br label %if.end53, !dbg !1870

if.end53:                                         ; preds = %if.then36, %cond.end29
  %add52388 = phi double [ %add52, %if.then36 ], [ %add52389, %cond.end29 ]
  %add382 = phi double [ %add, %if.then36 ], [ %add383, %cond.end29 ]
  br i1 %cmp55.not, label %if.end77, label %if.then57, !dbg !1871

if.then57:                                        ; preds = %if.end53
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0374, i64 0, i32 1, !dbg !1872
  %14 = load i16, ptr %green, align 2, !dbg !1872, !tbaa !1108
  %conv59 = uitofp i16 %14 to float, !dbg !1872
  %green61 = getelementptr inbounds %struct._PixelPacket, ptr %q.0376, i64 0, i32 1, !dbg !1875
  %15 = load i16, ptr %green61, align 2, !dbg !1875, !tbaa !1108
  %conv63 = uitofp i16 %15 to float, !dbg !1875
  %16 = fneg float %conv33, !dbg !1876
  %neg65 = fmul float %16, %conv63, !dbg !1876
  %17 = call float @llvm.fmuladd.f32(float %conv20, float %conv59, float %neg65), !dbg !1876
  %conv66 = fpext float %17 to double, !dbg !1877
  %mul67 = fmul double %conv66, 0x3EF0001000100010, !dbg !1878
  %conv68 = fptrunc double %mul67 to float, !dbg !1879
  call void @llvm.dbg.value(metadata float %conv68, metadata !1816, metadata !DIExpression()), !dbg !1851
  %mul69 = fmul float %conv68, %conv68, !dbg !1880
  %conv70 = fpext float %mul69 to double, !dbg !1881
  %add72 = fadd double %add72393, %conv70, !dbg !1882
  store double %add72, ptr %arrayidx71, align 16, !dbg !1882, !tbaa !821
  %add76 = fadd double %add52388, %conv70, !dbg !1883
  store double %add76, ptr %arrayidx51, align 8, !dbg !1883, !tbaa !821
  br label %if.end77, !dbg !1884

if.end77:                                         ; preds = %if.then57, %if.end53
  %add72392 = phi double [ %add72, %if.then57 ], [ %add72393, %if.end53 ]
  %add52387 = phi double [ %add76, %if.then57 ], [ %add52388, %if.end53 ]
  br i1 %cmp79.not, label %if.end101, label %if.then81, !dbg !1885

if.then81:                                        ; preds = %if.end77
  %18 = load i16, ptr %p.0374, align 2, !dbg !1886, !tbaa !1112
  %conv83 = uitofp i16 %18 to float, !dbg !1886
  %19 = load i16, ptr %q.0376, align 2, !dbg !1889, !tbaa !1112
  %conv87 = uitofp i16 %19 to float, !dbg !1889
  %20 = fneg float %conv33, !dbg !1890
  %neg89 = fmul float %20, %conv87, !dbg !1890
  %21 = call float @llvm.fmuladd.f32(float %conv20, float %conv83, float %neg89), !dbg !1890
  %conv90 = fpext float %21 to double, !dbg !1891
  %mul91 = fmul double %conv90, 0x3EF0001000100010, !dbg !1892
  %conv92 = fptrunc double %mul91 to float, !dbg !1893
  call void @llvm.dbg.value(metadata float %conv92, metadata !1816, metadata !DIExpression()), !dbg !1851
  %mul93 = fmul float %conv92, %conv92, !dbg !1894
  %conv94 = fpext float %mul93 to double, !dbg !1895
  %add96 = fadd double %add96395, %conv94, !dbg !1896
  store double %add96, ptr %arrayidx95, align 16, !dbg !1896, !tbaa !821
  %add100 = fadd double %add52387, %conv94, !dbg !1897
  store double %add100, ptr %arrayidx51, align 8, !dbg !1897, !tbaa !821
  br label %if.end101, !dbg !1898

if.end101:                                        ; preds = %if.then81, %if.end77
  %add96394 = phi double [ %add96, %if.then81 ], [ %add96395, %if.end77 ]
  %add52386 = phi double [ %add100, %if.then81 ], [ %add52387, %if.end77 ]
  br i1 %cmp103.not, label %if.end143, label %land.lhs.true, !dbg !1899

land.lhs.true:                                    ; preds = %if.end101
  br i1 %cmp18.not, label %lor.lhs.false108, label %cond.end120, !dbg !1901

lor.lhs.false108:                                 ; preds = %land.lhs.true
  br i1 %cmp22.not, label %if.end143, label %cond.true125, !dbg !1902

cond.end120:                                      ; preds = %land.lhs.true
  %opacity117 = getelementptr inbounds %struct._PixelPacket, ptr %p.0374, i64 0, i32 3, !dbg !1903
  %22 = load i16, ptr %opacity117, align 2, !dbg !1903, !tbaa !1116
  %conv118 = zext i16 %22 to i32, !dbg !1903
  br i1 %cmp22.not, label %cond.end129, label %cond.true125, !dbg !1905

cond.true125:                                     ; preds = %lor.lhs.false108, %cond.end120
  %cond121371 = phi i32 [ %conv118, %cond.end120 ], [ 0, %lor.lhs.false108 ]
  %opacity126 = getelementptr inbounds %struct._PixelPacket, ptr %q.0376, i64 0, i32 3, !dbg !1906
  %23 = load i16, ptr %opacity126, align 2, !dbg !1906, !tbaa !1116
  %conv127 = zext i16 %23 to i32, !dbg !1906
  br label %cond.end129, !dbg !1905

cond.end129:                                      ; preds = %cond.end120, %cond.true125
  %cond121372 = phi i32 [ %cond121371, %cond.true125 ], [ %conv118, %cond.end120 ]
  %cond130 = phi i32 [ %conv127, %cond.true125 ], [ 0, %cond.end120 ], !dbg !1905
  %sub131 = sub nsw i32 %cond121372, %cond130, !dbg !1907
  %conv132 = sitofp i32 %sub131 to double, !dbg !1908
  %mul133 = fmul double %conv132, 0x3EF0001000100010, !dbg !1909
  %conv134 = fptrunc double %mul133 to float, !dbg !1910
  call void @llvm.dbg.value(metadata float %conv134, metadata !1816, metadata !DIExpression()), !dbg !1851
  %mul135 = fmul float %conv134, %conv134, !dbg !1911
  %conv136 = fpext float %mul135 to double, !dbg !1912
  %add138 = fadd double %add138397, %conv136, !dbg !1913
  store double %add138, ptr %arrayidx137, align 16, !dbg !1913, !tbaa !821
  %add142 = fadd double %add52386, %conv136, !dbg !1914
  store double %add142, ptr %arrayidx51, align 8, !dbg !1914, !tbaa !821
  br label %if.end143, !dbg !1915

if.end143:                                        ; preds = %cond.end129, %lor.lhs.false108, %if.end101
  %add138396 = phi double [ %add138, %cond.end129 ], [ %add138397, %lor.lhs.false108 ], [ %add138397, %if.end101 ]
  %add52385 = phi double [ %add142, %cond.end129 ], [ %add52386, %lor.lhs.false108 ], [ %add52386, %if.end101 ]
  br i1 %cmp145.not, label %if.end188, label %land.lhs.true147, !dbg !1916

land.lhs.true147:                                 ; preds = %if.end143
  %24 = load i32, ptr %colorspace, align 4, !dbg !1918, !tbaa !891
  %cmp148 = icmp eq i32 %24, 12, !dbg !1919
  br i1 %cmp148, label %land.lhs.true150, label %if.end188, !dbg !1920

land.lhs.true150:                                 ; preds = %land.lhs.true147
  %25 = load i32, ptr %colorspace151, align 4, !dbg !1921, !tbaa !891
  %cmp152 = icmp eq i32 %25, 12, !dbg !1922
  br i1 %cmp152, label %if.then154, label %if.end188, !dbg !1923

if.then154:                                       ; preds = %land.lhs.true150
  br i1 %cmp155, label %cond.end161, label %cond.false158, !dbg !1924

cond.false158:                                    ; preds = %if.then154
  %add.ptr = getelementptr inbounds i16, ptr %call11, i64 %x.0378, !dbg !1924
  %26 = load i16, ptr %add.ptr, align 2, !dbg !1924, !tbaa !1124
  %conv160 = zext i16 %26 to i32, !dbg !1924
  br label %cond.end161, !dbg !1924

cond.end161:                                      ; preds = %if.then154, %cond.false158
  %cond162 = phi i32 [ %conv160, %cond.false158 ], [ 0, %if.then154 ], !dbg !1924
  %conv163 = sitofp i32 %cond162 to float, !dbg !1924
  br i1 %cmp166, label %cond.end172, label %cond.false169, !dbg !1926

cond.false169:                                    ; preds = %cond.end161
  %add.ptr165 = getelementptr inbounds i16, ptr %call12, i64 %x.0378, !dbg !1926
  %27 = load i16, ptr %add.ptr165, align 2, !dbg !1926, !tbaa !1124
  %conv171 = zext i16 %27 to i32, !dbg !1926
  br label %cond.end172, !dbg !1926

cond.end172:                                      ; preds = %cond.end161, %cond.false169
  %cond173 = phi i32 [ %conv171, %cond.false169 ], [ 0, %cond.end161 ], !dbg !1926
  %conv174 = sitofp i32 %cond173 to float, !dbg !1926
  %28 = fneg float %conv33, !dbg !1927
  %neg176 = fmul float %28, %conv174, !dbg !1927
  %29 = call float @llvm.fmuladd.f32(float %conv20, float %conv163, float %neg176), !dbg !1927
  %conv177 = fpext float %29 to double, !dbg !1928
  %mul178 = fmul double %conv177, 0x3EF0001000100010, !dbg !1929
  %conv179 = fptrunc double %mul178 to float, !dbg !1930
  call void @llvm.dbg.value(metadata float %conv179, metadata !1816, metadata !DIExpression()), !dbg !1851
  %mul180 = fmul float %conv179, %conv179, !dbg !1931
  %conv181 = fpext float %mul180 to double, !dbg !1932
  %add183 = fadd double %add183399, %conv181, !dbg !1933
  store double %add183, ptr %arrayidx182, align 16, !dbg !1933, !tbaa !821
  %add187 = fadd double %add52385, %conv181, !dbg !1934
  store double %add187, ptr %arrayidx51, align 8, !dbg !1934, !tbaa !821
  br label %if.end188, !dbg !1935

if.end188:                                        ; preds = %cond.end172, %land.lhs.true150, %land.lhs.true147, %if.end143
  %add183398 = phi double [ %add183, %cond.end172 ], [ %add183399, %land.lhs.true150 ], [ %add183399, %land.lhs.true147 ], [ %add183399, %if.end143 ]
  %add52384 = phi double [ %add187, %cond.end172 ], [ %add52385, %land.lhs.true150 ], [ %add52385, %land.lhs.true147 ], [ %add52385, %if.end143 ]
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0374, i64 1, !dbg !1936
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1812, metadata !DIExpression()), !dbg !1835
  %incdec.ptr189 = getelementptr inbounds %struct._PixelPacket, ptr %q.0376, i64 1, !dbg !1937
  call void @llvm.dbg.value(metadata ptr %incdec.ptr189, metadata !1813, metadata !DIExpression()), !dbg !1835
  %inc = add nuw nsw i64 %x.0378, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1815, metadata !DIExpression()), !dbg !1835
  %exitcond.not = icmp eq i64 %inc, %3, !dbg !1844
  br i1 %exitcond.not, label %for.body193.preheader, label %for.body17, !dbg !1845, !llvm.loop !1939

for.body193.preheader:                            ; preds = %if.end188, %if.end10
  br label %for.body193, !dbg !1941

for.body193:                                      ; preds = %for.body193.preheader, %for.body193
  %i2.0400 = phi i64 [ %inc198, %for.body193 ], [ 0, %for.body193.preheader ]
  call void @llvm.dbg.value(metadata i64 %i2.0400, metadata !1814, metadata !DIExpression()), !dbg !1835
  %arrayidx194 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 %i2.0400, !dbg !1943
  %30 = load double, ptr %arrayidx194, align 8, !dbg !1943, !tbaa !821
  %arrayidx195 = getelementptr inbounds double, ptr %distortion, i64 %i2.0400, !dbg !1945
  %31 = load double, ptr %arrayidx195, align 8, !dbg !1946, !tbaa !821
  %add196 = fadd double %30, %31, !dbg !1946
  store double %add196, ptr %arrayidx195, align 8, !dbg !1946, !tbaa !821
  %inc198 = add nuw nsw i64 %i2.0400, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %inc198, metadata !1814, metadata !DIExpression()), !dbg !1835
  %exitcond405.not = icmp eq i64 %inc198, 48, !dbg !1948
  br i1 %exitcond405.not, label %cleanup, label %for.body193, !dbg !1941, !llvm.loop !1949

cleanup:                                          ; preds = %for.body193, %if.end, %for.body
  %status.1 = phi i32 [ 0, %for.body ], [ 0, %if.end ], [ 1, %for.body193 ], !dbg !1822
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !1803, metadata !DIExpression()), !dbg !1822
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !1951
  %inc207 = add nuw nsw i64 %y.0402, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %inc207, metadata !1805, metadata !DIExpression()), !dbg !1822
  %32 = load i64, ptr %rows, align 8, !dbg !1825, !tbaa !841
  %cmp = icmp slt i64 %inc207, %32, !dbg !1826
  br i1 %cmp, label %for.body, label %for.end208, !dbg !1827, !llvm.loop !1953

for.end208:                                       ; preds = %cleanup, %entry
  %status.0.lcssa = phi i32 [ 1, %entry ], [ %status.1, %cleanup ], !dbg !1955
  %call209 = call ptr @DestroyCacheView(ptr noundef %call1) #11, !dbg !1956
  call void @llvm.dbg.value(metadata ptr %call209, metadata !1802, metadata !DIExpression()), !dbg !1822
  %call210 = call ptr @DestroyCacheView(ptr noundef %call) #11, !dbg !1957
  call void @llvm.dbg.value(metadata ptr %call210, metadata !1801, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1822
  %columns215 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %33 = load i64, ptr %columns215, align 8, !tbaa !836
  %conv216 = uitofp i64 %33 to double
  %34 = load i64, ptr %rows, align 8, !tbaa !841
  %conv218 = uitofp i64 %34 to double
  %mul219 = fmul double %conv216, %conv218
  br label %for.body214, !dbg !1958

for.body214:                                      ; preds = %for.end208, %for.body214
  %i.0404 = phi i64 [ 0, %for.end208 ], [ %inc222, %for.body214 ]
  call void @llvm.dbg.value(metadata i64 %i.0404, metadata !1804, metadata !DIExpression()), !dbg !1822
  %arrayidx220 = getelementptr inbounds double, ptr %distortion, i64 %i.0404, !dbg !1960
  %35 = load double, ptr %arrayidx220, align 8, !dbg !1962, !tbaa !821
  %div = fdiv double %35, %mul219, !dbg !1962
  store double %div, ptr %arrayidx220, align 8, !dbg !1962, !tbaa !821
  %inc222 = add nuw nsw i64 %i.0404, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %inc222, metadata !1804, metadata !DIExpression()), !dbg !1822
  %exitcond406.not = icmp eq i64 %inc222, 48, !dbg !1964
  br i1 %exitcond406.not, label %for.end223, label %for.body214, !dbg !1958, !llvm.loop !1965

for.end223:                                       ; preds = %for.body214
  %and224 = and i32 %channel, 8, !dbg !1967
  %cmp225.not = icmp eq i32 %and224, 0, !dbg !1969
  br i1 %cmp225.not, label %if.else, label %land.lhs.true227, !dbg !1970

land.lhs.true227:                                 ; preds = %for.end223
  %matte228 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1971
  %36 = load i32, ptr %matte228, align 8, !dbg !1971, !tbaa !1175
  %cmp229.not = icmp eq i32 %36, 0, !dbg !1972
  br i1 %cmp229.not, label %lor.lhs.false231, label %if.end16.i, !dbg !1973

lor.lhs.false231:                                 ; preds = %land.lhs.true227
  %matte232 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 6, !dbg !1974
  %37 = load i32, ptr %matte232, align 8, !dbg !1974, !tbaa !1175
  %cmp233.not = icmp eq i32 %37, 0, !dbg !1975
  br i1 %cmp233.not, label %if.else, label %if.end16.i, !dbg !1976

if.end16.i:                                       ; preds = %lor.lhs.false231, %land.lhs.true227
  call void @llvm.dbg.value(metadata ptr %image, metadata !1977, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1982, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i64 0, metadata !1983, metadata !DIExpression()), !dbg !1984
  %and.i = and i32 %channel, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1984
  %and1.i = lshr i32 %channel, 1, !dbg !1988
  %and1.lobit.i = and i32 %and1.i, 1, !dbg !1988
  %narrow.i = add nuw nsw i32 %and1.lobit.i, %and.i, !dbg !1988
  call void @llvm.dbg.value(metadata i32 %narrow.i, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1984
  %and6.i = lshr i32 %channel, 2, !dbg !1989
  %and6.lobit.i = and i32 %and6.i, 1, !dbg !1989
  %narrow38.i = add nuw nsw i32 %narrow.i, %and6.lobit.i, !dbg !1989
  %spec.select34.i = zext i32 %narrow38.i to i64, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %spec.select34.i, metadata !1983, metadata !DIExpression()), !dbg !1984
  %cmp13.not.i = icmp ne i32 %36, 0, !dbg !1990
  %inc15.i = zext i1 %cmp13.not.i to i64, !dbg !1992
  %spec.select35.i = add nuw nsw i64 %inc15.i, %spec.select34.i, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %spec.select35.i, metadata !1983, metadata !DIExpression()), !dbg !1984
  %and17.i = and i32 %channel, 32, !dbg !1993
  %cmp18.not.i = icmp eq i32 %and17.i, 0, !dbg !1995
  br i1 %cmp18.not.i, label %GetNumberChannels.exit, label %land.lhs.true19.i, !dbg !1996

land.lhs.true19.i:                                ; preds = %if.end16.i
  %colorspace.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1997
  %38 = load i32, ptr %colorspace.i, align 4, !dbg !1997, !tbaa !891
  %cmp20.i = icmp eq i32 %38, 12, !dbg !1998
  %inc22.i = zext i1 %cmp20.i to i64, !dbg !1999
  %spec.select36.i = add nuw nsw i64 %spec.select35.i, %inc22.i, !dbg !1999
  br label %GetNumberChannels.exit, !dbg !1999

GetNumberChannels.exit:                           ; preds = %if.end16.i, %land.lhs.true19.i
  %channels.4.i = phi i64 [ %spec.select35.i, %if.end16.i ], [ %spec.select36.i, %land.lhs.true19.i ], !dbg !1984
  call void @llvm.dbg.value(metadata i64 %channels.4.i, metadata !1983, metadata !DIExpression()), !dbg !1984
  %sub237 = add nsw i64 %channels.4.i, -1, !dbg !2000
  br label %if.end245, !dbg !2001

if.else:                                          ; preds = %lor.lhs.false231, %for.end223
  call void @llvm.dbg.value(metadata ptr %image, metadata !1977, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1982, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i64 0, metadata !1983, metadata !DIExpression()), !dbg !2002
  %and.i344 = and i32 %channel, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %and.i344, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2002
  %and1.i345 = lshr i32 %channel, 1, !dbg !2005
  %and1.lobit.i346 = and i32 %and1.i345, 1, !dbg !2005
  %narrow.i347 = add nuw nsw i32 %and1.lobit.i346, %and.i344, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %narrow.i347, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2002
  %and6.i348 = lshr i32 %channel, 2, !dbg !2006
  %and6.lobit.i349 = and i32 %and6.i348, 1, !dbg !2006
  %narrow38.i350 = add nuw nsw i32 %narrow.i347, %and6.lobit.i349, !dbg !2006
  %spec.select34.i351 = zext i32 %narrow38.i350 to i64, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %spec.select34.i351, metadata !1983, metadata !DIExpression()), !dbg !2002
  br i1 %cmp225.not, label %if.end16.i362, label %land.lhs.true.i358, !dbg !2007

land.lhs.true.i358:                               ; preds = %if.else
  %matte.i354 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2008
  %39 = load i32, ptr %matte.i354, align 8, !dbg !2008, !tbaa !1175
  %cmp13.not.i355 = icmp ne i32 %39, 0, !dbg !2009
  %inc15.i356 = zext i1 %cmp13.not.i355 to i64, !dbg !2010
  %spec.select35.i357 = add nuw nsw i64 %inc15.i356, %spec.select34.i351, !dbg !2010
  br label %if.end16.i362, !dbg !2010

if.end16.i362:                                    ; preds = %land.lhs.true.i358, %if.else
  %channels.3.i359 = phi i64 [ %spec.select34.i351, %if.else ], [ %spec.select35.i357, %land.lhs.true.i358 ], !dbg !2002
  call void @llvm.dbg.value(metadata i64 %channels.3.i359, metadata !1983, metadata !DIExpression()), !dbg !2002
  %and17.i360 = and i32 %channel, 32, !dbg !2011
  %cmp18.not.i361 = icmp eq i32 %and17.i360, 0, !dbg !2012
  br i1 %cmp18.not.i361, label %if.end245, label %land.lhs.true19.i367, !dbg !2013

land.lhs.true19.i367:                             ; preds = %if.end16.i362
  %colorspace.i363 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2014
  %40 = load i32, ptr %colorspace.i363, align 4, !dbg !2014, !tbaa !891
  %cmp20.i364 = icmp eq i32 %40, 12, !dbg !2015
  %inc22.i365 = zext i1 %cmp20.i364 to i64, !dbg !2016
  %spec.select36.i366 = add nuw nsw i64 %channels.3.i359, %inc22.i365, !dbg !2016
  br label %if.end245, !dbg !2016

if.end245:                                        ; preds = %land.lhs.true19.i367, %if.end16.i362, %GetNumberChannels.exit
  %channels.4.i368.sink = phi i64 [ %sub237, %GetNumberChannels.exit ], [ %channels.3.i359, %if.end16.i362 ], [ %spec.select36.i366, %land.lhs.true19.i367 ]
  %conv242 = uitofp i64 %channels.4.i368.sink to double, !dbg !2017
  %arrayidx243 = getelementptr inbounds double, ptr %distortion, i64 47, !dbg !2017
  %41 = load double, ptr %arrayidx243, align 8, !dbg !2017, !tbaa !821
  %div244 = fdiv double %41, %conv242, !dbg !2017
  %arrayidx246 = getelementptr inbounds double, ptr %distortion, i64 47, !dbg !2018
  %call247 = call double @sqrt(double noundef %div244) #11, !dbg !2019
  store double %call247, ptr %arrayidx246, align 8, !dbg !2020, !tbaa !821
  ret i32 %status.0.lcssa, !dbg !2021
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !2022 {
entry:
  %channel_distortion = alloca [48 x double], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2024, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !2025, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2026, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !2027, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2028, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 1, metadata !2031, metadata !DIExpression()), !dbg !2050
  %call = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #11, !dbg !2051
  call void @llvm.dbg.value(metadata ptr %call, metadata !2029, metadata !DIExpression()), !dbg !2050
  %call1 = tail call ptr @AcquireVirtualCacheView(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !2052
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2030, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2050
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2031, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2050
  %0 = load i64, ptr %rows, align 8, !dbg !2053, !tbaa !841
  %cmp295 = icmp sgt i64 %0, 0, !dbg !2054
  br i1 %cmp295, label %for.body.lr.ph, label %for.end176, !dbg !2055

for.body.lr.ph:                                   ; preds = %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %columns5 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %matte21 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 6
  %and = and i32 %channel, 1
  %cmp34.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 1
  %arrayidx49 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 47
  %and52 = and i32 %channel, 2
  %cmp53.not = icmp eq i32 %and52, 0
  %arrayidx68 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 2
  %and74 = and i32 %channel, 4
  %cmp75.not = icmp eq i32 %and74, 0
  %arrayidx90 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 4
  %and96 = and i32 %channel, 8
  %cmp97.not = icmp eq i32 %and96, 0
  %arrayidx112 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 8
  %and118 = and i32 %channel, 32
  %cmp119.not = icmp eq i32 %and118, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %arrayidx151 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 32
  br label %for.body, !dbg !2055

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0297 = phi i32 [ 1, %for.body.lr.ph ], [ %status.1, %cleanup ]
  %y.0296 = phi i64 [ 0, %for.body.lr.ph ], [ %inc175, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0297, metadata !2031, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %y.0296, metadata !2033, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %channel_distortion, metadata !2034, metadata !DIExpression()), !dbg !2057
  %cmp3 = icmp eq i32 %status.0297, 0, !dbg !2058
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !2060

if.end:                                           ; preds = %for.body
  %1 = load i64, ptr %columns, align 8, !dbg !2061, !tbaa !836
  %call4 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call, i64 noundef 0, i64 noundef %y.0296, i64 noundef %1, i64 noundef 1, ptr noundef %exception) #12, !dbg !2062
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2040, metadata !DIExpression()), !dbg !2063
  %2 = load i64, ptr %columns5, align 8, !dbg !2064, !tbaa !836
  %call6 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call1, i64 noundef 0, i64 noundef %y.0296, i64 noundef %2, i64 noundef 1, ptr noundef %exception) #12, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2041, metadata !DIExpression()), !dbg !2063
  %cmp7 = icmp eq ptr %call4, null, !dbg !2066
  %cmp8 = icmp eq ptr %call6, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8, !dbg !2068
  br i1 %or.cond, label %cleanup, label %if.end10, !dbg !2068

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call) #11, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %call11, metadata !2038, metadata !DIExpression()), !dbg !2063
  %call12 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call1) #11, !dbg !2070
  call void @llvm.dbg.value(metadata ptr %call12, metadata !2039, metadata !DIExpression()), !dbg !2063
  %call13 = call ptr @ResetMagickMemory(ptr noundef nonnull %channel_distortion, i32 noundef 0, i64 noundef 384) #11, !dbg !2071
  call void @llvm.dbg.value(metadata i64 0, metadata !2043, metadata !DIExpression()), !dbg !2063
  %3 = load i64, ptr %columns, align 8, !tbaa !836
  call void @llvm.dbg.value(metadata i64 0, metadata !2043, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2041, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2040, metadata !DIExpression()), !dbg !2063
  %cmp16269 = icmp sgt i64 %3, 0, !dbg !2072
  br i1 %cmp16269, label %for.body17.lr.ph, label %for.body161.preheader, !dbg !2073

for.body17.lr.ph:                                 ; preds = %if.end10
  %4 = load i32, ptr %matte, align 8, !tbaa !1175
  %cmp18.not = icmp eq i32 %4, 0
  %5 = load i32, ptr %matte21, align 8, !tbaa !1175
  %cmp22.not = icmp eq i32 %5, 0
  %brmerge = select i1 %cmp97.not, i1 true, i1 %cmp18.not
  %cmp125 = icmp eq ptr %call11, null
  %cmp136 = icmp eq ptr %call12, null
  %arrayidx.promoted = load double, ptr %arrayidx, align 8, !tbaa !821
  %arrayidx49.promoted = load double, ptr %arrayidx49, align 8, !tbaa !821
  %arrayidx68.promoted = load double, ptr %arrayidx68, align 16, !tbaa !821
  %arrayidx90.promoted = load double, ptr %arrayidx90, align 16, !tbaa !821
  %arrayidx112.promoted = load double, ptr %arrayidx112, align 16, !tbaa !821
  %arrayidx151.promoted = load double, ptr %arrayidx151, align 16, !tbaa !821
  br label %for.body17, !dbg !2073

for.body17:                                       ; preds = %for.body17.lr.ph, %if.end156
  %add152293 = phi double [ %arrayidx151.promoted, %for.body17.lr.ph ], [ %add152292, %if.end156 ]
  %add113291 = phi double [ %arrayidx112.promoted, %for.body17.lr.ph ], [ %add113290, %if.end156 ]
  %add91289 = phi double [ %arrayidx90.promoted, %for.body17.lr.ph ], [ %add91288, %if.end156 ]
  %add69287 = phi double [ %arrayidx68.promoted, %for.body17.lr.ph ], [ %add69286, %if.end156 ]
  %add50285 = phi double [ %arrayidx49.promoted, %for.body17.lr.ph ], [ %add50280, %if.end156 ]
  %add279 = phi double [ %arrayidx.promoted, %for.body17.lr.ph ], [ %add278, %if.end156 ]
  %x.0274 = phi i64 [ 0, %for.body17.lr.ph ], [ %inc, %if.end156 ]
  %q.0272 = phi ptr [ %call6, %for.body17.lr.ph ], [ %incdec.ptr157, %if.end156 ]
  %p.0270 = phi ptr [ %call4, %for.body17.lr.ph ], [ %incdec.ptr, %if.end156 ]
  call void @llvm.dbg.value(metadata i64 %x.0274, metadata !2043, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata ptr %q.0272, metadata !2041, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata ptr %p.0270, metadata !2040, metadata !DIExpression()), !dbg !2063
  br i1 %cmp18.not, label %cond.end, label %cond.true, !dbg !2074

cond.true:                                        ; preds = %for.body17
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0270, i64 0, i32 3, !dbg !2075
  %6 = load i16, ptr %opacity, align 2, !dbg !2075, !tbaa !1116
  %7 = xor i16 %6, -1, !dbg !2075
  %sub = zext i16 %7 to i32, !dbg !2075
  br label %cond.end, !dbg !2074

cond.end:                                         ; preds = %for.body17, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 65535, %for.body17 ], !dbg !2074
  %conv19 = sitofp i32 %cond to double, !dbg !2076
  %mul = fmul double %conv19, 0x3EF0001000100010, !dbg !2077
  %conv20 = fptrunc double %mul to float, !dbg !2078
  call void @llvm.dbg.value(metadata float %conv20, metadata !2049, metadata !DIExpression()), !dbg !2079
  br i1 %cmp22.not, label %cond.end29, label %cond.true24, !dbg !2080

cond.true24:                                      ; preds = %cond.end
  %opacity25 = getelementptr inbounds %struct._PixelPacket, ptr %q.0272, i64 0, i32 3, !dbg !2081
  %8 = load i16, ptr %opacity25, align 2, !dbg !2081, !tbaa !1116
  %9 = xor i16 %8, -1, !dbg !2081
  %sub27 = zext i16 %9 to i32, !dbg !2081
  br label %cond.end29, !dbg !2080

cond.end29:                                       ; preds = %cond.end, %cond.true24
  %cond30 = phi i32 [ %sub27, %cond.true24 ], [ 65535, %cond.end ], !dbg !2080
  %conv31 = sitofp i32 %cond30 to double, !dbg !2082
  %mul32 = fmul double %conv31, 0x3EF0001000100010, !dbg !2083
  %conv33 = fptrunc double %mul32 to float, !dbg !2084
  call void @llvm.dbg.value(metadata float %conv33, metadata !2048, metadata !DIExpression()), !dbg !2079
  br i1 %cmp34.not, label %if.end51, label %if.then36, !dbg !2085

if.then36:                                        ; preds = %cond.end29
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0270, i64 0, i32 2, !dbg !2086
  %10 = load i16, ptr %red, align 2, !dbg !2086, !tbaa !1104
  %conv38 = uitofp i16 %10 to float, !dbg !2086
  %red40 = getelementptr inbounds %struct._PixelPacket, ptr %q.0272, i64 0, i32 2, !dbg !2089
  %11 = load i16, ptr %red40, align 2, !dbg !2089, !tbaa !1104
  %conv42 = uitofp i16 %11 to float, !dbg !2089
  %12 = fneg float %conv33, !dbg !2090
  %neg = fmul float %12, %conv42, !dbg !2090
  %13 = call float @llvm.fmuladd.f32(float %conv20, float %conv38, float %neg), !dbg !2090
  %14 = call float @llvm.fabs.f32(float %13), !dbg !2091
  %15 = fpext float %14 to double, !dbg !2091
  %mul45 = fmul double %15, 0x3EF0001000100010, !dbg !2092
  %conv46 = fptrunc double %mul45 to float, !dbg !2093
  call void @llvm.dbg.value(metadata float %conv46, metadata !2044, metadata !DIExpression()), !dbg !2079
  %conv47 = fpext float %conv46 to double, !dbg !2094
  %add = fadd double %add279, %conv47, !dbg !2095
  store double %add, ptr %arrayidx, align 8, !dbg !2095, !tbaa !821
  %add50 = fadd double %add50285, %conv47, !dbg !2096
  store double %add50, ptr %arrayidx49, align 8, !dbg !2096, !tbaa !821
  br label %if.end51, !dbg !2097

if.end51:                                         ; preds = %if.then36, %cond.end29
  %add50284 = phi double [ %add50, %if.then36 ], [ %add50285, %cond.end29 ]
  %add278 = phi double [ %add, %if.then36 ], [ %add279, %cond.end29 ]
  br i1 %cmp53.not, label %if.end73, label %if.then55, !dbg !2098

if.then55:                                        ; preds = %if.end51
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0270, i64 0, i32 1, !dbg !2099
  %16 = load i16, ptr %green, align 2, !dbg !2099, !tbaa !1108
  %conv57 = uitofp i16 %16 to float, !dbg !2099
  %green59 = getelementptr inbounds %struct._PixelPacket, ptr %q.0272, i64 0, i32 1, !dbg !2102
  %17 = load i16, ptr %green59, align 2, !dbg !2102, !tbaa !1108
  %conv61 = uitofp i16 %17 to float, !dbg !2102
  %18 = fneg float %conv33, !dbg !2103
  %neg63 = fmul float %18, %conv61, !dbg !2103
  %19 = call float @llvm.fmuladd.f32(float %conv20, float %conv57, float %neg63), !dbg !2103
  %20 = call float @llvm.fabs.f32(float %19), !dbg !2104
  %21 = fpext float %20 to double, !dbg !2104
  %mul65 = fmul double %21, 0x3EF0001000100010, !dbg !2105
  %conv66 = fptrunc double %mul65 to float, !dbg !2106
  call void @llvm.dbg.value(metadata float %conv66, metadata !2044, metadata !DIExpression()), !dbg !2079
  %conv67 = fpext float %conv66 to double, !dbg !2107
  %add69 = fadd double %add69287, %conv67, !dbg !2108
  store double %add69, ptr %arrayidx68, align 16, !dbg !2108, !tbaa !821
  %add72 = fadd double %add50284, %conv67, !dbg !2109
  store double %add72, ptr %arrayidx49, align 8, !dbg !2109, !tbaa !821
  br label %if.end73, !dbg !2110

if.end73:                                         ; preds = %if.then55, %if.end51
  %add69286 = phi double [ %add69, %if.then55 ], [ %add69287, %if.end51 ]
  %add50283 = phi double [ %add72, %if.then55 ], [ %add50284, %if.end51 ]
  br i1 %cmp75.not, label %if.end95, label %if.then77, !dbg !2111

if.then77:                                        ; preds = %if.end73
  %22 = load i16, ptr %p.0270, align 2, !dbg !2112, !tbaa !1112
  %conv79 = uitofp i16 %22 to float, !dbg !2112
  %23 = load i16, ptr %q.0272, align 2, !dbg !2115, !tbaa !1112
  %conv83 = uitofp i16 %23 to float, !dbg !2115
  %24 = fneg float %conv33, !dbg !2116
  %neg85 = fmul float %24, %conv83, !dbg !2116
  %25 = call float @llvm.fmuladd.f32(float %conv20, float %conv79, float %neg85), !dbg !2116
  %26 = call float @llvm.fabs.f32(float %25), !dbg !2117
  %27 = fpext float %26 to double, !dbg !2117
  %mul87 = fmul double %27, 0x3EF0001000100010, !dbg !2118
  %conv88 = fptrunc double %mul87 to float, !dbg !2119
  call void @llvm.dbg.value(metadata float %conv88, metadata !2044, metadata !DIExpression()), !dbg !2079
  %conv89 = fpext float %conv88 to double, !dbg !2120
  %add91 = fadd double %add91289, %conv89, !dbg !2121
  store double %add91, ptr %arrayidx90, align 16, !dbg !2121, !tbaa !821
  %add94 = fadd double %add50283, %conv89, !dbg !2122
  store double %add94, ptr %arrayidx49, align 8, !dbg !2122, !tbaa !821
  br label %if.end95, !dbg !2123

if.end95:                                         ; preds = %if.then77, %if.end73
  %add91288 = phi double [ %add91, %if.then77 ], [ %add91289, %if.end73 ]
  %add50282 = phi double [ %add94, %if.then77 ], [ %add50283, %if.end73 ]
  br i1 %brmerge, label %if.end117, label %if.then102, !dbg !2124

if.then102:                                       ; preds = %if.end95
  %opacity103 = getelementptr inbounds %struct._PixelPacket, ptr %p.0270, i64 0, i32 3, !dbg !2126
  %28 = load i16, ptr %opacity103, align 2, !dbg !2126, !tbaa !1116
  %conv105 = uitofp i16 %28 to double, !dbg !2126
  %opacity106 = getelementptr inbounds %struct._PixelPacket, ptr %q.0272, i64 0, i32 3, !dbg !2128
  %29 = load i16, ptr %opacity106, align 2, !dbg !2128, !tbaa !1116
  %conv107 = uitofp i16 %29 to double, !dbg !2129
  %sub108 = fsub double %conv105, %conv107, !dbg !2130
  %30 = call double @llvm.fabs.f64(double %sub108), !dbg !2131
  %mul109 = fmul double %30, 0x3EF0001000100010, !dbg !2132
  %conv110 = fptrunc double %mul109 to float, !dbg !2133
  call void @llvm.dbg.value(metadata float %conv110, metadata !2044, metadata !DIExpression()), !dbg !2079
  %conv111 = fpext float %conv110 to double, !dbg !2134
  %add113 = fadd double %add113291, %conv111, !dbg !2135
  store double %add113, ptr %arrayidx112, align 16, !dbg !2135, !tbaa !821
  %add116 = fadd double %add50282, %conv111, !dbg !2136
  store double %add116, ptr %arrayidx49, align 8, !dbg !2136, !tbaa !821
  br label %if.end117, !dbg !2137

if.end117:                                        ; preds = %if.end95, %if.then102
  %add113290 = phi double [ %add113291, %if.end95 ], [ %add113, %if.then102 ]
  %add50281 = phi double [ %add50282, %if.end95 ], [ %add116, %if.then102 ]
  br i1 %cmp119.not, label %if.end156, label %land.lhs.true121, !dbg !2138

land.lhs.true121:                                 ; preds = %if.end117
  %31 = load i32, ptr %colorspace, align 4, !dbg !2140, !tbaa !891
  %cmp122 = icmp eq i32 %31, 12, !dbg !2141
  br i1 %cmp122, label %if.then124, label %if.end156, !dbg !2142

if.then124:                                       ; preds = %land.lhs.true121
  br i1 %cmp125, label %cond.end131, label %cond.false128, !dbg !2143

cond.false128:                                    ; preds = %if.then124
  %add.ptr = getelementptr inbounds i16, ptr %call11, i64 %x.0274, !dbg !2143
  %32 = load i16, ptr %add.ptr, align 2, !dbg !2143, !tbaa !1124
  %conv130 = zext i16 %32 to i32, !dbg !2143
  br label %cond.end131, !dbg !2143

cond.end131:                                      ; preds = %if.then124, %cond.false128
  %cond132 = phi i32 [ %conv130, %cond.false128 ], [ 0, %if.then124 ], !dbg !2143
  %conv133 = sitofp i32 %cond132 to float, !dbg !2143
  br i1 %cmp136, label %cond.end142, label %cond.false139, !dbg !2145

cond.false139:                                    ; preds = %cond.end131
  %add.ptr135 = getelementptr inbounds i16, ptr %call12, i64 %x.0274, !dbg !2145
  %33 = load i16, ptr %add.ptr135, align 2, !dbg !2145, !tbaa !1124
  %conv141 = zext i16 %33 to i32, !dbg !2145
  br label %cond.end142, !dbg !2145

cond.end142:                                      ; preds = %cond.end131, %cond.false139
  %cond143 = phi i32 [ %conv141, %cond.false139 ], [ 0, %cond.end131 ], !dbg !2145
  %conv144 = sitofp i32 %cond143 to float, !dbg !2145
  %34 = fneg float %conv33, !dbg !2146
  %neg146 = fmul float %34, %conv144, !dbg !2146
  %35 = call float @llvm.fmuladd.f32(float %conv20, float %conv133, float %neg146), !dbg !2146
  %36 = call float @llvm.fabs.f32(float %35), !dbg !2147
  %37 = fpext float %36 to double, !dbg !2147
  %mul148 = fmul double %37, 0x3EF0001000100010, !dbg !2148
  %conv149 = fptrunc double %mul148 to float, !dbg !2149
  call void @llvm.dbg.value(metadata float %conv149, metadata !2044, metadata !DIExpression()), !dbg !2079
  %conv150 = fpext float %conv149 to double, !dbg !2150
  %add152 = fadd double %add152293, %conv150, !dbg !2151
  store double %add152, ptr %arrayidx151, align 16, !dbg !2151, !tbaa !821
  %add155 = fadd double %add50281, %conv150, !dbg !2152
  store double %add155, ptr %arrayidx49, align 8, !dbg !2152, !tbaa !821
  br label %if.end156, !dbg !2153

if.end156:                                        ; preds = %cond.end142, %land.lhs.true121, %if.end117
  %add152292 = phi double [ %add152, %cond.end142 ], [ %add152293, %land.lhs.true121 ], [ %add152293, %if.end117 ]
  %add50280 = phi double [ %add155, %cond.end142 ], [ %add50281, %land.lhs.true121 ], [ %add50281, %if.end117 ]
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0270, i64 1, !dbg !2154
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2040, metadata !DIExpression()), !dbg !2063
  %incdec.ptr157 = getelementptr inbounds %struct._PixelPacket, ptr %q.0272, i64 1, !dbg !2155
  call void @llvm.dbg.value(metadata ptr %incdec.ptr157, metadata !2041, metadata !DIExpression()), !dbg !2063
  %inc = add nuw nsw i64 %x.0274, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2043, metadata !DIExpression()), !dbg !2063
  %exitcond.not = icmp eq i64 %inc, %3, !dbg !2072
  br i1 %exitcond.not, label %for.body161.preheader, label %for.body17, !dbg !2073, !llvm.loop !2157

for.body161.preheader:                            ; preds = %if.end156, %if.end10
  br label %for.body161, !dbg !2159

for.body161:                                      ; preds = %for.body161.preheader, %for.body161
  %i2.0294 = phi i64 [ %inc166, %for.body161 ], [ 0, %for.body161.preheader ]
  call void @llvm.dbg.value(metadata i64 %i2.0294, metadata !2042, metadata !DIExpression()), !dbg !2063
  %arrayidx162 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 %i2.0294, !dbg !2161
  %38 = load double, ptr %arrayidx162, align 8, !dbg !2161, !tbaa !821
  %arrayidx163 = getelementptr inbounds double, ptr %distortion, i64 %i2.0294, !dbg !2163
  %39 = load double, ptr %arrayidx163, align 8, !dbg !2164, !tbaa !821
  %add164 = fadd double %38, %39, !dbg !2164
  store double %add164, ptr %arrayidx163, align 8, !dbg !2164, !tbaa !821
  %inc166 = add nuw nsw i64 %i2.0294, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %inc166, metadata !2042, metadata !DIExpression()), !dbg !2063
  %exitcond299.not = icmp eq i64 %inc166, 48, !dbg !2166
  br i1 %exitcond299.not, label %cleanup, label %for.body161, !dbg !2159, !llvm.loop !2167

cleanup:                                          ; preds = %for.body161, %if.end, %for.body
  %status.1 = phi i32 [ 0, %for.body ], [ 0, %if.end ], [ 1, %for.body161 ], !dbg !2050
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !2031, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !2169
  %inc175 = add nuw nsw i64 %y.0296, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %inc175, metadata !2033, metadata !DIExpression()), !dbg !2050
  %40 = load i64, ptr %rows, align 8, !dbg !2053, !tbaa !841
  %cmp = icmp slt i64 %inc175, %40, !dbg !2054
  br i1 %cmp, label %for.body, label %for.end176, !dbg !2055, !llvm.loop !2171

for.end176:                                       ; preds = %cleanup, %entry
  %status.0.lcssa = phi i32 [ 1, %entry ], [ %status.1, %cleanup ], !dbg !2173
  %call177 = call ptr @DestroyCacheView(ptr noundef %call1) #11, !dbg !2174
  call void @llvm.dbg.value(metadata ptr %call177, metadata !2030, metadata !DIExpression()), !dbg !2050
  %call178 = call ptr @DestroyCacheView(ptr noundef %call) #11, !dbg !2175
  call void @llvm.dbg.value(metadata ptr %call178, metadata !2029, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !2032, metadata !DIExpression()), !dbg !2050
  %columns183 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %41 = load i64, ptr %columns183, align 8, !tbaa !836
  %conv184 = uitofp i64 %41 to double
  %42 = load i64, ptr %rows, align 8, !tbaa !841
  %conv186 = uitofp i64 %42 to double
  %mul187 = fmul double %conv184, %conv186
  br label %for.body182, !dbg !2176

for.body182:                                      ; preds = %for.end176, %for.body182
  %i.0298 = phi i64 [ 0, %for.end176 ], [ %inc190, %for.body182 ]
  call void @llvm.dbg.value(metadata i64 %i.0298, metadata !2032, metadata !DIExpression()), !dbg !2050
  %arrayidx188 = getelementptr inbounds double, ptr %distortion, i64 %i.0298, !dbg !2178
  %43 = load double, ptr %arrayidx188, align 8, !dbg !2180, !tbaa !821
  %div = fdiv double %43, %mul187, !dbg !2180
  store double %div, ptr %arrayidx188, align 8, !dbg !2180, !tbaa !821
  %inc190 = add nuw nsw i64 %i.0298, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %inc190, metadata !2032, metadata !DIExpression()), !dbg !2050
  %exitcond300.not = icmp eq i64 %inc190, 48, !dbg !2182
  br i1 %exitcond300.not, label %for.end191, label %for.body182, !dbg !2176, !llvm.loop !2183

for.end191:                                       ; preds = %for.body182
  call void @llvm.dbg.value(metadata ptr %image, metadata !1977, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1982, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 0, metadata !1983, metadata !DIExpression()), !dbg !2185
  %and.i = and i32 %channel, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2185
  %and1.i = lshr i32 %channel, 1, !dbg !2188
  %and1.lobit.i = and i32 %and1.i, 1, !dbg !2188
  %narrow.i = add nuw nsw i32 %and1.lobit.i, %and.i, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %narrow.i, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2185
  %and6.i = lshr i32 %channel, 2, !dbg !2189
  %and6.lobit.i = and i32 %and6.i, 1, !dbg !2189
  %narrow38.i = add nuw nsw i32 %narrow.i, %and6.lobit.i, !dbg !2189
  %spec.select34.i = zext i32 %narrow38.i to i64, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %spec.select34.i, metadata !1983, metadata !DIExpression()), !dbg !2185
  %and11.i = and i32 %channel, 8, !dbg !2190
  %cmp12.not.i = icmp eq i32 %and11.i, 0, !dbg !2191
  br i1 %cmp12.not.i, label %if.end16.i, label %land.lhs.true.i, !dbg !2192

land.lhs.true.i:                                  ; preds = %for.end191
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2193
  %44 = load i32, ptr %matte.i, align 8, !dbg !2193, !tbaa !1175
  %cmp13.not.i = icmp ne i32 %44, 0, !dbg !2194
  %inc15.i = zext i1 %cmp13.not.i to i64, !dbg !2195
  %spec.select35.i = add nuw nsw i64 %inc15.i, %spec.select34.i, !dbg !2195
  br label %if.end16.i, !dbg !2195

if.end16.i:                                       ; preds = %land.lhs.true.i, %for.end191
  %channels.3.i = phi i64 [ %spec.select34.i, %for.end191 ], [ %spec.select35.i, %land.lhs.true.i ], !dbg !2185
  call void @llvm.dbg.value(metadata i64 %channels.3.i, metadata !1983, metadata !DIExpression()), !dbg !2185
  %and17.i = and i32 %channel, 32, !dbg !2196
  %cmp18.not.i = icmp eq i32 %and17.i, 0, !dbg !2197
  br i1 %cmp18.not.i, label %GetNumberChannels.exit, label %land.lhs.true19.i, !dbg !2198

land.lhs.true19.i:                                ; preds = %if.end16.i
  %colorspace.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2199
  %45 = load i32, ptr %colorspace.i, align 4, !dbg !2199, !tbaa !891
  %cmp20.i = icmp eq i32 %45, 12, !dbg !2200
  %inc22.i = zext i1 %cmp20.i to i64, !dbg !2201
  %spec.select36.i = add nuw nsw i64 %channels.3.i, %inc22.i, !dbg !2201
  br label %GetNumberChannels.exit, !dbg !2201

GetNumberChannels.exit:                           ; preds = %if.end16.i, %land.lhs.true19.i
  %channels.4.i = phi i64 [ %channels.3.i, %if.end16.i ], [ %spec.select36.i, %land.lhs.true19.i ], !dbg !2185
  call void @llvm.dbg.value(metadata i64 %channels.4.i, metadata !1983, metadata !DIExpression()), !dbg !2185
  %conv193 = uitofp i64 %channels.4.i to double, !dbg !2202
  %arrayidx194 = getelementptr inbounds double, ptr %distortion, i64 47, !dbg !2203
  %46 = load double, ptr %arrayidx194, align 8, !dbg !2204, !tbaa !821
  %div195 = fdiv double %46, %conv193, !dbg !2204
  store double %div195, ptr %arrayidx194, align 8, !dbg !2204, !tbaa !821
  ret i32 %status.0.lcssa, !dbg !2205
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetMeanErrorPerPixel(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !2206 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2210, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !2211, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2212, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !2213, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2214, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 1, metadata !2217, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2219, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2220, metadata !DIExpression()), !dbg !2236
  %call = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #11, !dbg !2237
  call void @llvm.dbg.value(metadata ptr %call, metadata !2215, metadata !DIExpression()), !dbg !2236
  %call1 = tail call ptr @AcquireVirtualCacheView(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !2238
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2216, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 0, metadata !2221, metadata !DIExpression()), !dbg !2236
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2217, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 0, metadata !2221, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2219, metadata !DIExpression()), !dbg !2236
  %0 = load i64, ptr %rows, align 8, !dbg !2239, !tbaa !841
  %cmp338 = icmp sgt i64 %0, 0, !dbg !2240
  br i1 %cmp338, label %for.body.lr.ph, label %for.end188, !dbg !2241

for.body.lr.ph:                                   ; preds = %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %columns3 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %matte16 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 6
  %and = and i32 %channel, 1
  %cmp29.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr inbounds double, ptr %distortion, i64 1
  %arrayidx43 = getelementptr inbounds double, ptr %distortion, i64 47
  %and51 = and i32 %channel, 2
  %cmp52.not = icmp eq i32 %and51, 0
  %arrayidx66 = getelementptr inbounds double, ptr %distortion, i64 2
  %and78 = and i32 %channel, 4
  %cmp79.not = icmp eq i32 %and78, 0
  %arrayidx93 = getelementptr inbounds double, ptr %distortion, i64 4
  %and105 = and i32 %channel, 8
  %cmp106.not = icmp eq i32 %and105, 0
  %arrayidx120 = getelementptr inbounds double, ptr %distortion, i64 8
  %and132 = and i32 %channel, 32
  %cmp133.not = icmp eq i32 %and132, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace139 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 1
  %arrayidx168 = getelementptr inbounds double, ptr %distortion, i64 32
  %.pre = load i64, ptr %columns, align 8, !dbg !2242, !tbaa !836
  br label %for.body, !dbg !2241

for.body:                                         ; preds = %for.body.lr.ph, %for.inc186
  %1 = phi i64 [ %.pre, %for.body.lr.ph ], [ %3, %for.inc186 ], !dbg !2242
  %area.0342 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %area.1.lcssa, %for.inc186 ]
  %y.0341 = phi i64 [ 0, %for.body.lr.ph ], [ %inc187, %for.inc186 ]
  %mean_error.0340 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %mean_error.1.lcssa, %for.inc186 ]
  %maximum_error.0339 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %maximum_error.1.lcssa, %for.inc186 ]
  call void @llvm.dbg.value(metadata float %area.0342, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %y.0341, metadata !2221, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.0340, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.0339, metadata !2219, metadata !DIExpression()), !dbg !2236
  %call2 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call, i64 noundef 0, i64 noundef %y.0341, i64 noundef %1, i64 noundef 1, ptr noundef %exception) #12, !dbg !2243
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2227, metadata !DIExpression()), !dbg !2244
  %2 = load i64, ptr %columns3, align 8, !dbg !2245, !tbaa !836
  %call4 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call1, i64 noundef 0, i64 noundef %y.0341, i64 noundef %2, i64 noundef 1, ptr noundef %exception) #12, !dbg !2246
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2228, metadata !DIExpression()), !dbg !2244
  %cmp5 = icmp eq ptr %call2, null, !dbg !2247
  %cmp6 = icmp eq ptr %call4, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6, !dbg !2249
  br i1 %or.cond, label %for.end188, label %if.end, !dbg !2249

if.end:                                           ; preds = %for.body
  %call7 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call) #11, !dbg !2250
  call void @llvm.dbg.value(metadata ptr %call7, metadata !2222, metadata !DIExpression()), !dbg !2244
  %call8 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call1) #11, !dbg !2251
  call void @llvm.dbg.value(metadata ptr %call8, metadata !2226, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 0, metadata !2229, metadata !DIExpression()), !dbg !2244
  %3 = load i64, ptr %columns, align 8, !tbaa !836
  call void @llvm.dbg.value(metadata i64 0, metadata !2229, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2228, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2227, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata float %area.0342, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.0340, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.0339, metadata !2219, metadata !DIExpression()), !dbg !2236
  %cmp11324 = icmp sgt i64 %3, 0, !dbg !2252
  br i1 %cmp11324, label %for.body12.lr.ph, label %for.inc186, !dbg !2253

for.body12.lr.ph:                                 ; preds = %if.end
  %4 = load i32, ptr %matte, align 8, !tbaa !1175
  %cmp13.not = icmp eq i32 %4, 0
  %5 = load i32, ptr %matte16, align 8, !tbaa !1175
  %cmp17.not = icmp eq i32 %5, 0
  %brmerge = select i1 %cmp106.not, i1 true, i1 %cmp13.not
  %cmp143 = icmp eq ptr %call7, null
  %cmp154 = icmp eq ptr %call8, null
  br label %for.body12, !dbg !2253

for.body12:                                       ; preds = %for.body12.lr.ph, %if.end179
  %x.0332 = phi i64 [ 0, %for.body12.lr.ph ], [ %inc181, %if.end179 ]
  %q.0330 = phi ptr [ %call4, %for.body12.lr.ph ], [ %incdec.ptr180, %if.end179 ]
  %p.0328 = phi ptr [ %call2, %for.body12.lr.ph ], [ %incdec.ptr, %if.end179 ]
  %area.1327 = phi float [ %area.0342, %for.body12.lr.ph ], [ %area.6, %if.end179 ]
  %mean_error.1326 = phi float [ %mean_error.0340, %for.body12.lr.ph ], [ %mean_error.6, %if.end179 ]
  %maximum_error.1325 = phi float [ %maximum_error.0339, %for.body12.lr.ph ], [ %maximum_error.11, %if.end179 ]
  call void @llvm.dbg.value(metadata i64 %x.0332, metadata !2229, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %q.0330, metadata !2228, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata ptr %p.0328, metadata !2227, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata float %area.1327, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.1326, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.1325, metadata !2219, metadata !DIExpression()), !dbg !2236
  br i1 %cmp13.not, label %cond.end, label %cond.true, !dbg !2254

cond.true:                                        ; preds = %for.body12
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0328, i64 0, i32 3, !dbg !2255
  %6 = load i16, ptr %opacity, align 2, !dbg !2255, !tbaa !1116
  %7 = xor i16 %6, -1, !dbg !2255
  %sub = zext i16 %7 to i32, !dbg !2255
  br label %cond.end, !dbg !2254

cond.end:                                         ; preds = %for.body12, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 65535, %for.body12 ], !dbg !2254
  %conv14 = sitofp i32 %cond to double, !dbg !2256
  %mul = fmul double %conv14, 0x3EF0001000100010, !dbg !2257
  %conv15 = fptrunc double %mul to float, !dbg !2258
  call void @llvm.dbg.value(metadata float %conv15, metadata !2235, metadata !DIExpression()), !dbg !2259
  br i1 %cmp17.not, label %cond.end24, label %cond.true19, !dbg !2260

cond.true19:                                      ; preds = %cond.end
  %opacity20 = getelementptr inbounds %struct._PixelPacket, ptr %q.0330, i64 0, i32 3, !dbg !2261
  %8 = load i16, ptr %opacity20, align 2, !dbg !2261, !tbaa !1116
  %9 = xor i16 %8, -1, !dbg !2261
  %sub22 = zext i16 %9 to i32, !dbg !2261
  br label %cond.end24, !dbg !2260

cond.end24:                                       ; preds = %cond.end, %cond.true19
  %cond25 = phi i32 [ %sub22, %cond.true19 ], [ 65535, %cond.end ], !dbg !2260
  %conv26 = sitofp i32 %cond25 to double, !dbg !2262
  %mul27 = fmul double %conv26, 0x3EF0001000100010, !dbg !2263
  %conv28 = fptrunc double %mul27 to float, !dbg !2264
  call void @llvm.dbg.value(metadata float %conv28, metadata !2234, metadata !DIExpression()), !dbg !2259
  br i1 %cmp29.not, label %if.end50, label %if.then31, !dbg !2265

if.then31:                                        ; preds = %cond.end24
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0328, i64 0, i32 2, !dbg !2266
  %10 = load i16, ptr %red, align 2, !dbg !2266, !tbaa !1104
  %conv33 = uitofp i16 %10 to float, !dbg !2266
  %red35 = getelementptr inbounds %struct._PixelPacket, ptr %q.0330, i64 0, i32 2, !dbg !2269
  %11 = load i16, ptr %red35, align 2, !dbg !2269, !tbaa !1104
  %conv37 = uitofp i16 %11 to float, !dbg !2269
  %12 = fneg float %conv28, !dbg !2270
  %neg = fmul float %12, %conv37, !dbg !2270
  %13 = tail call float @llvm.fmuladd.f32(float %conv15, float %conv33, float %neg), !dbg !2270
  %14 = tail call float @llvm.fabs.f32(float %13), !dbg !2271
  call void @llvm.dbg.value(metadata float %14, metadata !2230, metadata !DIExpression()), !dbg !2259
  %conv41 = fpext float %14 to double, !dbg !2272
  %15 = load double, ptr %arrayidx, align 8, !dbg !2273, !tbaa !821
  %add = fadd double %15, %conv41, !dbg !2273
  store double %add, ptr %arrayidx, align 8, !dbg !2273, !tbaa !821
  %16 = load double, ptr %arrayidx43, align 8, !dbg !2274, !tbaa !821
  %add44 = fadd double %16, %conv41, !dbg !2274
  store double %add44, ptr %arrayidx43, align 8, !dbg !2274, !tbaa !821
  %17 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %mean_error.1326), !dbg !2275
  call void @llvm.dbg.value(metadata float %17, metadata !2220, metadata !DIExpression()), !dbg !2236
  %cmp46 = fcmp ogt float %14, %maximum_error.1325, !dbg !2276
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !2278

if.then48:                                        ; preds = %if.then31
  call void @llvm.dbg.value(metadata float %14, metadata !2219, metadata !DIExpression()), !dbg !2236
  br label %if.end49, !dbg !2279

if.end49:                                         ; preds = %if.then48, %if.then31
  %maximum_error.2 = phi float [ %14, %if.then48 ], [ %maximum_error.1325, %if.then31 ], !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.2, metadata !2219, metadata !DIExpression()), !dbg !2236
  %inc = fadd float %area.1327, 1.000000e+00, !dbg !2280
  call void @llvm.dbg.value(metadata float %inc, metadata !2218, metadata !DIExpression()), !dbg !2236
  br label %if.end50, !dbg !2281

if.end50:                                         ; preds = %if.end49, %cond.end24
  %maximum_error.3 = phi float [ %maximum_error.2, %if.end49 ], [ %maximum_error.1325, %cond.end24 ], !dbg !2236
  %mean_error.2 = phi float [ %17, %if.end49 ], [ %mean_error.1326, %cond.end24 ], !dbg !2236
  %area.2 = phi float [ %inc, %if.end49 ], [ %area.1327, %cond.end24 ], !dbg !2236
  call void @llvm.dbg.value(metadata float %area.2, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.2, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.3, metadata !2219, metadata !DIExpression()), !dbg !2236
  br i1 %cmp52.not, label %if.end77, label %if.then54, !dbg !2282

if.then54:                                        ; preds = %if.end50
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0328, i64 0, i32 1, !dbg !2283
  %18 = load i16, ptr %green, align 2, !dbg !2283, !tbaa !1108
  %conv56 = uitofp i16 %18 to float, !dbg !2283
  %green58 = getelementptr inbounds %struct._PixelPacket, ptr %q.0330, i64 0, i32 1, !dbg !2286
  %19 = load i16, ptr %green58, align 2, !dbg !2286, !tbaa !1108
  %conv60 = uitofp i16 %19 to float, !dbg !2286
  %20 = fneg float %conv28, !dbg !2287
  %neg62 = fmul float %20, %conv60, !dbg !2287
  %21 = tail call float @llvm.fmuladd.f32(float %conv15, float %conv56, float %neg62), !dbg !2287
  %22 = tail call float @llvm.fabs.f32(float %21), !dbg !2288
  call void @llvm.dbg.value(metadata float %22, metadata !2230, metadata !DIExpression()), !dbg !2259
  %conv65 = fpext float %22 to double, !dbg !2289
  %23 = load double, ptr %arrayidx66, align 8, !dbg !2290, !tbaa !821
  %add67 = fadd double %23, %conv65, !dbg !2290
  store double %add67, ptr %arrayidx66, align 8, !dbg !2290, !tbaa !821
  %24 = load double, ptr %arrayidx43, align 8, !dbg !2291, !tbaa !821
  %add70 = fadd double %24, %conv65, !dbg !2291
  store double %add70, ptr %arrayidx43, align 8, !dbg !2291, !tbaa !821
  %25 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %mean_error.2), !dbg !2292
  call void @llvm.dbg.value(metadata float %25, metadata !2220, metadata !DIExpression()), !dbg !2236
  %cmp72 = fcmp ogt float %22, %maximum_error.3, !dbg !2293
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !2295

if.then74:                                        ; preds = %if.then54
  call void @llvm.dbg.value(metadata float %22, metadata !2219, metadata !DIExpression()), !dbg !2236
  br label %if.end75, !dbg !2296

if.end75:                                         ; preds = %if.then74, %if.then54
  %maximum_error.4 = phi float [ %22, %if.then74 ], [ %maximum_error.3, %if.then54 ], !dbg !2259
  call void @llvm.dbg.value(metadata float %maximum_error.4, metadata !2219, metadata !DIExpression()), !dbg !2236
  %inc76 = fadd float %area.2, 1.000000e+00, !dbg !2297
  call void @llvm.dbg.value(metadata float %inc76, metadata !2218, metadata !DIExpression()), !dbg !2236
  br label %if.end77, !dbg !2298

if.end77:                                         ; preds = %if.end75, %if.end50
  %maximum_error.5 = phi float [ %maximum_error.4, %if.end75 ], [ %maximum_error.3, %if.end50 ], !dbg !2259
  %mean_error.3 = phi float [ %25, %if.end75 ], [ %mean_error.2, %if.end50 ], !dbg !2259
  %area.3 = phi float [ %inc76, %if.end75 ], [ %area.2, %if.end50 ], !dbg !2259
  call void @llvm.dbg.value(metadata float %area.3, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.3, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.5, metadata !2219, metadata !DIExpression()), !dbg !2236
  br i1 %cmp79.not, label %if.end104, label %if.then81, !dbg !2299

if.then81:                                        ; preds = %if.end77
  %26 = load i16, ptr %p.0328, align 2, !dbg !2300, !tbaa !1112
  %conv83 = uitofp i16 %26 to float, !dbg !2300
  %27 = load i16, ptr %q.0330, align 2, !dbg !2303, !tbaa !1112
  %conv87 = uitofp i16 %27 to float, !dbg !2303
  %28 = fneg float %conv28, !dbg !2304
  %neg89 = fmul float %28, %conv87, !dbg !2304
  %29 = tail call float @llvm.fmuladd.f32(float %conv15, float %conv83, float %neg89), !dbg !2304
  %30 = tail call float @llvm.fabs.f32(float %29), !dbg !2305
  call void @llvm.dbg.value(metadata float %30, metadata !2230, metadata !DIExpression()), !dbg !2259
  %conv92 = fpext float %30 to double, !dbg !2306
  %31 = load double, ptr %arrayidx93, align 8, !dbg !2307, !tbaa !821
  %add94 = fadd double %31, %conv92, !dbg !2307
  store double %add94, ptr %arrayidx93, align 8, !dbg !2307, !tbaa !821
  %32 = load double, ptr %arrayidx43, align 8, !dbg !2308, !tbaa !821
  %add97 = fadd double %32, %conv92, !dbg !2308
  store double %add97, ptr %arrayidx43, align 8, !dbg !2308, !tbaa !821
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %mean_error.3), !dbg !2309
  call void @llvm.dbg.value(metadata float %33, metadata !2220, metadata !DIExpression()), !dbg !2236
  %cmp99 = fcmp ogt float %30, %maximum_error.5, !dbg !2310
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !2312

if.then101:                                       ; preds = %if.then81
  call void @llvm.dbg.value(metadata float %30, metadata !2219, metadata !DIExpression()), !dbg !2236
  br label %if.end102, !dbg !2313

if.end102:                                        ; preds = %if.then101, %if.then81
  %maximum_error.6 = phi float [ %30, %if.then101 ], [ %maximum_error.5, %if.then81 ], !dbg !2259
  call void @llvm.dbg.value(metadata float %maximum_error.6, metadata !2219, metadata !DIExpression()), !dbg !2236
  %inc103 = fadd float %area.3, 1.000000e+00, !dbg !2314
  call void @llvm.dbg.value(metadata float %inc103, metadata !2218, metadata !DIExpression()), !dbg !2236
  br label %if.end104, !dbg !2315

if.end104:                                        ; preds = %if.end102, %if.end77
  %maximum_error.7 = phi float [ %maximum_error.6, %if.end102 ], [ %maximum_error.5, %if.end77 ], !dbg !2259
  %mean_error.4 = phi float [ %33, %if.end102 ], [ %mean_error.3, %if.end77 ], !dbg !2259
  %area.4 = phi float [ %inc103, %if.end102 ], [ %area.3, %if.end77 ], !dbg !2259
  call void @llvm.dbg.value(metadata float %area.4, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.4, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.7, metadata !2219, metadata !DIExpression()), !dbg !2236
  br i1 %brmerge, label %if.end131, label %if.then111, !dbg !2316

if.then111:                                       ; preds = %if.end104
  %opacity112 = getelementptr inbounds %struct._PixelPacket, ptr %p.0328, i64 0, i32 3, !dbg !2318
  %34 = load i16, ptr %opacity112, align 2, !dbg !2318, !tbaa !1116
  %conv113 = uitofp i16 %34 to double, !dbg !2320
  %opacity114 = getelementptr inbounds %struct._PixelPacket, ptr %q.0330, i64 0, i32 3, !dbg !2321
  %35 = load i16, ptr %opacity114, align 2, !dbg !2321, !tbaa !1116
  %conv116 = uitofp i16 %35 to double, !dbg !2321
  %sub117 = fsub double %conv113, %conv116, !dbg !2322
  %36 = fptrunc double %sub117 to float, !dbg !2323
  %conv118 = tail call float @llvm.fabs.f32(float %36), !dbg !2323
  call void @llvm.dbg.value(metadata float %conv118, metadata !2230, metadata !DIExpression()), !dbg !2259
  %conv119 = fpext float %conv118 to double, !dbg !2324
  %37 = load double, ptr %arrayidx120, align 8, !dbg !2325, !tbaa !821
  %add121 = fadd double %37, %conv119, !dbg !2325
  store double %add121, ptr %arrayidx120, align 8, !dbg !2325, !tbaa !821
  %38 = load double, ptr %arrayidx43, align 8, !dbg !2326, !tbaa !821
  %add124 = fadd double %38, %conv119, !dbg !2326
  store double %add124, ptr %arrayidx43, align 8, !dbg !2326, !tbaa !821
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %mean_error.4), !dbg !2327
  call void @llvm.dbg.value(metadata float %39, metadata !2220, metadata !DIExpression()), !dbg !2236
  %cmp126 = fcmp ogt float %conv118, %maximum_error.7, !dbg !2328
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !2330

if.then128:                                       ; preds = %if.then111
  call void @llvm.dbg.value(metadata float %conv118, metadata !2219, metadata !DIExpression()), !dbg !2236
  br label %if.end129, !dbg !2331

if.end129:                                        ; preds = %if.then128, %if.then111
  %maximum_error.8 = phi float [ %conv118, %if.then128 ], [ %maximum_error.7, %if.then111 ], !dbg !2259
  call void @llvm.dbg.value(metadata float %maximum_error.8, metadata !2219, metadata !DIExpression()), !dbg !2236
  %inc130 = fadd float %area.4, 1.000000e+00, !dbg !2332
  call void @llvm.dbg.value(metadata float %inc130, metadata !2218, metadata !DIExpression()), !dbg !2236
  br label %if.end131, !dbg !2333

if.end131:                                        ; preds = %if.end104, %if.end129
  %maximum_error.9 = phi float [ %maximum_error.8, %if.end129 ], [ %maximum_error.7, %if.end104 ], !dbg !2259
  %mean_error.5 = phi float [ %39, %if.end129 ], [ %mean_error.4, %if.end104 ], !dbg !2259
  %area.5 = phi float [ %inc130, %if.end129 ], [ %area.4, %if.end104 ], !dbg !2259
  call void @llvm.dbg.value(metadata float %area.5, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.5, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.9, metadata !2219, metadata !DIExpression()), !dbg !2236
  br i1 %cmp133.not, label %if.end179, label %land.lhs.true135, !dbg !2334

land.lhs.true135:                                 ; preds = %if.end131
  %40 = load i32, ptr %colorspace, align 4, !dbg !2336, !tbaa !891
  %cmp136 = icmp eq i32 %40, 12, !dbg !2337
  br i1 %cmp136, label %land.lhs.true138, label %if.end179, !dbg !2338

land.lhs.true138:                                 ; preds = %land.lhs.true135
  %41 = load i32, ptr %colorspace139, align 4, !dbg !2339, !tbaa !891
  %cmp140 = icmp eq i32 %41, 12, !dbg !2340
  br i1 %cmp140, label %if.then142, label %if.end179, !dbg !2341

if.then142:                                       ; preds = %land.lhs.true138
  br i1 %cmp143, label %cond.end149, label %cond.false146, !dbg !2342

cond.false146:                                    ; preds = %if.then142
  %add.ptr = getelementptr inbounds i16, ptr %call7, i64 %x.0332, !dbg !2342
  %42 = load i16, ptr %add.ptr, align 2, !dbg !2342, !tbaa !1124
  %conv148 = zext i16 %42 to i32, !dbg !2342
  br label %cond.end149, !dbg !2342

cond.end149:                                      ; preds = %if.then142, %cond.false146
  %cond150 = phi i32 [ %conv148, %cond.false146 ], [ 0, %if.then142 ], !dbg !2342
  %conv151 = sitofp i32 %cond150 to float, !dbg !2342
  br i1 %cmp154, label %cond.end160, label %cond.false157, !dbg !2344

cond.false157:                                    ; preds = %cond.end149
  %add.ptr153 = getelementptr inbounds i16, ptr %call8, i64 %x.0332, !dbg !2344
  %43 = load i16, ptr %add.ptr153, align 2, !dbg !2344, !tbaa !1124
  %conv159 = zext i16 %43 to i32, !dbg !2344
  br label %cond.end160, !dbg !2344

cond.end160:                                      ; preds = %cond.end149, %cond.false157
  %cond161 = phi i32 [ %conv159, %cond.false157 ], [ 0, %cond.end149 ], !dbg !2344
  %conv162 = sitofp i32 %cond161 to float, !dbg !2344
  %44 = fneg float %conv28, !dbg !2345
  %neg164 = fmul float %44, %conv162, !dbg !2345
  %45 = tail call float @llvm.fmuladd.f32(float %conv15, float %conv151, float %neg164), !dbg !2345
  %46 = tail call float @llvm.fabs.f32(float %45), !dbg !2346
  call void @llvm.dbg.value(metadata float %46, metadata !2230, metadata !DIExpression()), !dbg !2259
  %conv167 = fpext float %46 to double, !dbg !2347
  %47 = load double, ptr %arrayidx168, align 8, !dbg !2348, !tbaa !821
  %add169 = fadd double %47, %conv167, !dbg !2348
  store double %add169, ptr %arrayidx168, align 8, !dbg !2348, !tbaa !821
  %48 = load double, ptr %arrayidx43, align 8, !dbg !2349, !tbaa !821
  %add172 = fadd double %48, %conv167, !dbg !2349
  store double %add172, ptr %arrayidx43, align 8, !dbg !2349, !tbaa !821
  %49 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %mean_error.5), !dbg !2350
  call void @llvm.dbg.value(metadata float %49, metadata !2220, metadata !DIExpression()), !dbg !2236
  %cmp174 = fcmp ogt float %46, %maximum_error.9, !dbg !2351
  br i1 %cmp174, label %if.then176, label %if.end177, !dbg !2353

if.then176:                                       ; preds = %cond.end160
  call void @llvm.dbg.value(metadata float %46, metadata !2219, metadata !DIExpression()), !dbg !2236
  br label %if.end177, !dbg !2354

if.end177:                                        ; preds = %if.then176, %cond.end160
  %maximum_error.10 = phi float [ %46, %if.then176 ], [ %maximum_error.9, %cond.end160 ], !dbg !2259
  call void @llvm.dbg.value(metadata float %maximum_error.10, metadata !2219, metadata !DIExpression()), !dbg !2236
  %inc178 = fadd float %area.5, 1.000000e+00, !dbg !2355
  call void @llvm.dbg.value(metadata float %inc178, metadata !2218, metadata !DIExpression()), !dbg !2236
  br label %if.end179, !dbg !2356

if.end179:                                        ; preds = %if.end177, %land.lhs.true138, %land.lhs.true135, %if.end131
  %maximum_error.11 = phi float [ %maximum_error.10, %if.end177 ], [ %maximum_error.9, %land.lhs.true138 ], [ %maximum_error.9, %land.lhs.true135 ], [ %maximum_error.9, %if.end131 ], !dbg !2259
  %mean_error.6 = phi float [ %49, %if.end177 ], [ %mean_error.5, %land.lhs.true138 ], [ %mean_error.5, %land.lhs.true135 ], [ %mean_error.5, %if.end131 ], !dbg !2259
  %area.6 = phi float [ %inc178, %if.end177 ], [ %area.5, %land.lhs.true138 ], [ %area.5, %land.lhs.true135 ], [ %area.5, %if.end131 ], !dbg !2259
  call void @llvm.dbg.value(metadata float %area.6, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.6, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.11, metadata !2219, metadata !DIExpression()), !dbg !2236
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0328, i64 1, !dbg !2357
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2227, metadata !DIExpression()), !dbg !2244
  %incdec.ptr180 = getelementptr inbounds %struct._PixelPacket, ptr %q.0330, i64 1, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %incdec.ptr180, metadata !2228, metadata !DIExpression()), !dbg !2244
  %inc181 = add nuw nsw i64 %x.0332, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %inc181, metadata !2229, metadata !DIExpression()), !dbg !2244
  %exitcond.not = icmp eq i64 %inc181, %3, !dbg !2252
  br i1 %exitcond.not, label %for.inc186, label %for.body12, !dbg !2253, !llvm.loop !2360

for.inc186:                                       ; preds = %if.end179, %if.end
  %maximum_error.1.lcssa = phi float [ %maximum_error.0339, %if.end ], [ %maximum_error.11, %if.end179 ], !dbg !2236
  %mean_error.1.lcssa = phi float [ %mean_error.0340, %if.end ], [ %mean_error.6, %if.end179 ], !dbg !2236
  %area.1.lcssa = phi float [ %area.0342, %if.end ], [ %area.6, %if.end179 ], !dbg !2236
  call void @llvm.dbg.value(metadata i32 undef, metadata !2217, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float undef, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float undef, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float undef, metadata !2219, metadata !DIExpression()), !dbg !2236
  %inc187 = add nuw nsw i64 %y.0341, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i32 1, metadata !2217, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %area.1.lcssa, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %inc187, metadata !2221, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.1.lcssa, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.1.lcssa, metadata !2219, metadata !DIExpression()), !dbg !2236
  %50 = load i64, ptr %rows, align 8, !dbg !2239, !tbaa !841
  %cmp = icmp slt i64 %inc187, %50, !dbg !2240
  br i1 %cmp, label %for.body, label %for.end188, !dbg !2241, !llvm.loop !2363

for.end188:                                       ; preds = %for.inc186, %for.body, %entry
  %maximum_error.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %maximum_error.0339, %for.body ], [ %maximum_error.1.lcssa, %for.inc186 ], !dbg !2365
  %mean_error.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %mean_error.0340, %for.body ], [ %mean_error.1.lcssa, %for.inc186 ], !dbg !2366
  %area.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %area.0342, %for.body ], [ %area.1.lcssa, %for.inc186 ], !dbg !2367
  %status.2 = phi i32 [ 1, %entry ], [ 0, %for.body ], [ 1, %for.inc186 ], !dbg !2236
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2217, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %area.0.lcssa, metadata !2218, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %mean_error.0.lcssa, metadata !2220, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata float %maximum_error.0.lcssa, metadata !2219, metadata !DIExpression()), !dbg !2236
  %call189 = tail call ptr @DestroyCacheView(ptr noundef %call1) #11, !dbg !2368
  call void @llvm.dbg.value(metadata ptr %call189, metadata !2216, metadata !DIExpression()), !dbg !2236
  %call190 = tail call ptr @DestroyCacheView(ptr noundef %call) #11, !dbg !2369
  call void @llvm.dbg.value(metadata ptr %call190, metadata !2215, metadata !DIExpression()), !dbg !2236
  %arrayidx191 = getelementptr inbounds double, ptr %distortion, i64 47, !dbg !2370
  %51 = load double, ptr %arrayidx191, align 8, !dbg !2370, !tbaa !821
  %conv192 = fpext float %area.0.lcssa to double, !dbg !2371
  %div = fdiv double %51, %conv192, !dbg !2372
  %error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, !dbg !2373
  store double %div, ptr %error, align 8, !dbg !2374, !tbaa !2375
  %conv193 = fpext float %mean_error.0.lcssa to double, !dbg !2376
  %mul194 = fmul double %conv193, 0x3DF0002000300040, !dbg !2377
  %div196 = fdiv double %mul194, %conv192, !dbg !2378
  %normalized_mean_error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 1, !dbg !2379
  store double %div196, ptr %normalized_mean_error, align 8, !dbg !2380, !tbaa !2381
  %conv198 = fpext float %maximum_error.0.lcssa to double, !dbg !2382
  %mul199 = fmul double %conv198, 0x3EF0001000100010, !dbg !2383
  %normalized_maximum_error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 2, !dbg !2384
  store double %mul199, ptr %normalized_maximum_error, align 8, !dbg !2385, !tbaa !2386
  ret i32 %status.2, !dbg !2387
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetMeanSquaredDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !2388 {
entry:
  %channel_distortion = alloca [48 x double], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2390, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !2391, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2392, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !2393, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2394, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 1, metadata !2397, metadata !DIExpression()), !dbg !2416
  %call = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #11, !dbg !2417
  call void @llvm.dbg.value(metadata ptr %call, metadata !2395, metadata !DIExpression()), !dbg !2416
  %call1 = tail call ptr @AcquireVirtualCacheView(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2396, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 0, metadata !2399, metadata !DIExpression()), !dbg !2416
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2397, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 0, metadata !2399, metadata !DIExpression()), !dbg !2416
  %0 = load i64, ptr %rows, align 8, !dbg !2419, !tbaa !841
  %cmp321 = icmp sgt i64 %0, 0, !dbg !2420
  br i1 %cmp321, label %for.body.lr.ph, label %for.end191, !dbg !2421

for.body.lr.ph:                                   ; preds = %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %columns5 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %matte21 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 6
  %and = and i32 %channel, 1
  %cmp34.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 1
  %arrayidx51 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 47
  %and54 = and i32 %channel, 2
  %cmp55.not = icmp eq i32 %and54, 0
  %arrayidx71 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 2
  %and78 = and i32 %channel, 4
  %cmp79.not = icmp eq i32 %and78, 0
  %arrayidx95 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 4
  %and102 = and i32 %channel, 8
  %cmp103.not = icmp eq i32 %and102, 0
  %arrayidx120 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 8
  %and127 = and i32 %channel, 32
  %cmp128.not = icmp eq i32 %and127, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace134 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 1
  %arrayidx165 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 32
  br label %for.body, !dbg !2421

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0323 = phi i32 [ 1, %for.body.lr.ph ], [ %status.1, %cleanup ]
  %y.0322 = phi i64 [ 0, %for.body.lr.ph ], [ %inc190, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0323, metadata !2397, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %y.0322, metadata !2399, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %channel_distortion, metadata !2400, metadata !DIExpression()), !dbg !2423
  %cmp3 = icmp eq i32 %status.0323, 0, !dbg !2424
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !2426

if.end:                                           ; preds = %for.body
  %1 = load i64, ptr %columns, align 8, !dbg !2427, !tbaa !836
  %call4 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call, i64 noundef 0, i64 noundef %y.0322, i64 noundef %1, i64 noundef 1, ptr noundef %exception) #12, !dbg !2428
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2406, metadata !DIExpression()), !dbg !2429
  %2 = load i64, ptr %columns5, align 8, !dbg !2430, !tbaa !836
  %call6 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call1, i64 noundef 0, i64 noundef %y.0322, i64 noundef %2, i64 noundef 1, ptr noundef %exception) #12, !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2407, metadata !DIExpression()), !dbg !2429
  %cmp7 = icmp eq ptr %call4, null, !dbg !2432
  %cmp8 = icmp eq ptr %call6, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8, !dbg !2434
  br i1 %or.cond, label %cleanup, label %if.end10, !dbg !2434

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call) #11, !dbg !2435
  call void @llvm.dbg.value(metadata ptr %call11, metadata !2404, metadata !DIExpression()), !dbg !2429
  %call12 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call1) #11, !dbg !2436
  call void @llvm.dbg.value(metadata ptr %call12, metadata !2405, metadata !DIExpression()), !dbg !2429
  %call13 = call ptr @ResetMagickMemory(ptr noundef nonnull %channel_distortion, i32 noundef 0, i64 noundef 384) #11, !dbg !2437
  call void @llvm.dbg.value(metadata i64 0, metadata !2409, metadata !DIExpression()), !dbg !2429
  %3 = load i64, ptr %columns, align 8, !tbaa !836
  call void @llvm.dbg.value(metadata i64 0, metadata !2409, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2407, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata ptr %call4, metadata !2406, metadata !DIExpression()), !dbg !2429
  %cmp16295 = icmp sgt i64 %3, 0, !dbg !2438
  br i1 %cmp16295, label %for.body17.lr.ph, label %for.body176.preheader, !dbg !2439

for.body17.lr.ph:                                 ; preds = %if.end10
  %4 = load i32, ptr %matte, align 8, !tbaa !1175
  %cmp18.not = icmp eq i32 %4, 0
  %5 = load i32, ptr %matte21, align 8, !tbaa !1175
  %cmp22.not = icmp eq i32 %5, 0
  %brmerge = select i1 %cmp103.not, i1 true, i1 %cmp18.not
  %cmp138 = icmp eq ptr %call11, null
  %cmp149 = icmp eq ptr %call12, null
  %arrayidx.promoted = load double, ptr %arrayidx, align 8, !tbaa !821
  %arrayidx51.promoted = load double, ptr %arrayidx51, align 8, !tbaa !821
  %arrayidx71.promoted = load double, ptr %arrayidx71, align 16, !tbaa !821
  %arrayidx95.promoted = load double, ptr %arrayidx95, align 16, !tbaa !821
  %arrayidx120.promoted = load double, ptr %arrayidx120, align 16, !tbaa !821
  %arrayidx165.promoted = load double, ptr %arrayidx165, align 16, !tbaa !821
  br label %for.body17, !dbg !2439

for.body17:                                       ; preds = %for.body17.lr.ph, %if.end171
  %add166319 = phi double [ %arrayidx165.promoted, %for.body17.lr.ph ], [ %add166318, %if.end171 ]
  %add121317 = phi double [ %arrayidx120.promoted, %for.body17.lr.ph ], [ %add121316, %if.end171 ]
  %add96315 = phi double [ %arrayidx95.promoted, %for.body17.lr.ph ], [ %add96314, %if.end171 ]
  %add72313 = phi double [ %arrayidx71.promoted, %for.body17.lr.ph ], [ %add72312, %if.end171 ]
  %add52311 = phi double [ %arrayidx51.promoted, %for.body17.lr.ph ], [ %add52306, %if.end171 ]
  %add305 = phi double [ %arrayidx.promoted, %for.body17.lr.ph ], [ %add304, %if.end171 ]
  %x.0300 = phi i64 [ 0, %for.body17.lr.ph ], [ %inc, %if.end171 ]
  %q.0298 = phi ptr [ %call6, %for.body17.lr.ph ], [ %incdec.ptr172, %if.end171 ]
  %p.0296 = phi ptr [ %call4, %for.body17.lr.ph ], [ %incdec.ptr, %if.end171 ]
  call void @llvm.dbg.value(metadata i64 %x.0300, metadata !2409, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata ptr %q.0298, metadata !2407, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata ptr %p.0296, metadata !2406, metadata !DIExpression()), !dbg !2429
  br i1 %cmp18.not, label %cond.end, label %cond.true, !dbg !2440

cond.true:                                        ; preds = %for.body17
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0296, i64 0, i32 3, !dbg !2441
  %6 = load i16, ptr %opacity, align 2, !dbg !2441, !tbaa !1116
  %7 = xor i16 %6, -1, !dbg !2441
  %sub = zext i16 %7 to i32, !dbg !2441
  br label %cond.end, !dbg !2440

cond.end:                                         ; preds = %for.body17, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 65535, %for.body17 ], !dbg !2440
  %conv19 = sitofp i32 %cond to double, !dbg !2442
  %mul = fmul double %conv19, 0x3EF0001000100010, !dbg !2443
  %conv20 = fptrunc double %mul to float, !dbg !2444
  call void @llvm.dbg.value(metadata float %conv20, metadata !2415, metadata !DIExpression()), !dbg !2445
  br i1 %cmp22.not, label %cond.end29, label %cond.true24, !dbg !2446

cond.true24:                                      ; preds = %cond.end
  %opacity25 = getelementptr inbounds %struct._PixelPacket, ptr %q.0298, i64 0, i32 3, !dbg !2447
  %8 = load i16, ptr %opacity25, align 2, !dbg !2447, !tbaa !1116
  %9 = xor i16 %8, -1, !dbg !2447
  %sub27 = zext i16 %9 to i32, !dbg !2447
  br label %cond.end29, !dbg !2446

cond.end29:                                       ; preds = %cond.end, %cond.true24
  %cond30 = phi i32 [ %sub27, %cond.true24 ], [ 65535, %cond.end ], !dbg !2446
  %conv31 = sitofp i32 %cond30 to double, !dbg !2448
  %mul32 = fmul double %conv31, 0x3EF0001000100010, !dbg !2449
  %conv33 = fptrunc double %mul32 to float, !dbg !2450
  call void @llvm.dbg.value(metadata float %conv33, metadata !2414, metadata !DIExpression()), !dbg !2445
  br i1 %cmp34.not, label %if.end53, label %if.then36, !dbg !2451

if.then36:                                        ; preds = %cond.end29
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0296, i64 0, i32 2, !dbg !2452
  %10 = load i16, ptr %red, align 2, !dbg !2452, !tbaa !1104
  %conv38 = uitofp i16 %10 to float, !dbg !2452
  %red40 = getelementptr inbounds %struct._PixelPacket, ptr %q.0298, i64 0, i32 2, !dbg !2455
  %11 = load i16, ptr %red40, align 2, !dbg !2455, !tbaa !1104
  %conv42 = uitofp i16 %11 to float, !dbg !2455
  %12 = fneg float %conv33, !dbg !2456
  %neg = fmul float %12, %conv42, !dbg !2456
  %13 = call float @llvm.fmuladd.f32(float %conv20, float %conv38, float %neg), !dbg !2456
  %conv44 = fpext float %13 to double, !dbg !2457
  %mul45 = fmul double %conv44, 0x3EF0001000100010, !dbg !2458
  %conv46 = fptrunc double %mul45 to float, !dbg !2459
  call void @llvm.dbg.value(metadata float %conv46, metadata !2410, metadata !DIExpression()), !dbg !2445
  %mul47 = fmul float %conv46, %conv46, !dbg !2460
  %conv48 = fpext float %mul47 to double, !dbg !2461
  %add = fadd double %add305, %conv48, !dbg !2462
  store double %add, ptr %arrayidx, align 8, !dbg !2462, !tbaa !821
  %add52 = fadd double %add52311, %conv48, !dbg !2463
  store double %add52, ptr %arrayidx51, align 8, !dbg !2463, !tbaa !821
  br label %if.end53, !dbg !2464

if.end53:                                         ; preds = %if.then36, %cond.end29
  %add52310 = phi double [ %add52, %if.then36 ], [ %add52311, %cond.end29 ]
  %add304 = phi double [ %add, %if.then36 ], [ %add305, %cond.end29 ]
  br i1 %cmp55.not, label %if.end77, label %if.then57, !dbg !2465

if.then57:                                        ; preds = %if.end53
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0296, i64 0, i32 1, !dbg !2466
  %14 = load i16, ptr %green, align 2, !dbg !2466, !tbaa !1108
  %conv59 = uitofp i16 %14 to float, !dbg !2466
  %green61 = getelementptr inbounds %struct._PixelPacket, ptr %q.0298, i64 0, i32 1, !dbg !2469
  %15 = load i16, ptr %green61, align 2, !dbg !2469, !tbaa !1108
  %conv63 = uitofp i16 %15 to float, !dbg !2469
  %16 = fneg float %conv33, !dbg !2470
  %neg65 = fmul float %16, %conv63, !dbg !2470
  %17 = call float @llvm.fmuladd.f32(float %conv20, float %conv59, float %neg65), !dbg !2470
  %conv66 = fpext float %17 to double, !dbg !2471
  %mul67 = fmul double %conv66, 0x3EF0001000100010, !dbg !2472
  %conv68 = fptrunc double %mul67 to float, !dbg !2473
  call void @llvm.dbg.value(metadata float %conv68, metadata !2410, metadata !DIExpression()), !dbg !2445
  %mul69 = fmul float %conv68, %conv68, !dbg !2474
  %conv70 = fpext float %mul69 to double, !dbg !2475
  %add72 = fadd double %add72313, %conv70, !dbg !2476
  store double %add72, ptr %arrayidx71, align 16, !dbg !2476, !tbaa !821
  %add76 = fadd double %add52310, %conv70, !dbg !2477
  store double %add76, ptr %arrayidx51, align 8, !dbg !2477, !tbaa !821
  br label %if.end77, !dbg !2478

if.end77:                                         ; preds = %if.then57, %if.end53
  %add72312 = phi double [ %add72, %if.then57 ], [ %add72313, %if.end53 ]
  %add52309 = phi double [ %add76, %if.then57 ], [ %add52310, %if.end53 ]
  br i1 %cmp79.not, label %if.end101, label %if.then81, !dbg !2479

if.then81:                                        ; preds = %if.end77
  %18 = load i16, ptr %p.0296, align 2, !dbg !2480, !tbaa !1112
  %conv83 = uitofp i16 %18 to float, !dbg !2480
  %19 = load i16, ptr %q.0298, align 2, !dbg !2483, !tbaa !1112
  %conv87 = uitofp i16 %19 to float, !dbg !2483
  %20 = fneg float %conv33, !dbg !2484
  %neg89 = fmul float %20, %conv87, !dbg !2484
  %21 = call float @llvm.fmuladd.f32(float %conv20, float %conv83, float %neg89), !dbg !2484
  %conv90 = fpext float %21 to double, !dbg !2485
  %mul91 = fmul double %conv90, 0x3EF0001000100010, !dbg !2486
  %conv92 = fptrunc double %mul91 to float, !dbg !2487
  call void @llvm.dbg.value(metadata float %conv92, metadata !2410, metadata !DIExpression()), !dbg !2445
  %mul93 = fmul float %conv92, %conv92, !dbg !2488
  %conv94 = fpext float %mul93 to double, !dbg !2489
  %add96 = fadd double %add96315, %conv94, !dbg !2490
  store double %add96, ptr %arrayidx95, align 16, !dbg !2490, !tbaa !821
  %add100 = fadd double %add52309, %conv94, !dbg !2491
  store double %add100, ptr %arrayidx51, align 8, !dbg !2491, !tbaa !821
  br label %if.end101, !dbg !2492

if.end101:                                        ; preds = %if.then81, %if.end77
  %add96314 = phi double [ %add96, %if.then81 ], [ %add96315, %if.end77 ]
  %add52308 = phi double [ %add100, %if.then81 ], [ %add52309, %if.end77 ]
  br i1 %brmerge, label %if.end126, label %if.then108, !dbg !2493

if.then108:                                       ; preds = %if.end101
  %opacity109 = getelementptr inbounds %struct._PixelPacket, ptr %p.0296, i64 0, i32 3, !dbg !2495
  %22 = load i16, ptr %opacity109, align 2, !dbg !2495, !tbaa !1116
  %conv111 = uitofp i16 %22 to float, !dbg !2495
  %opacity112 = getelementptr inbounds %struct._PixelPacket, ptr %q.0298, i64 0, i32 3, !dbg !2497
  %23 = load i16, ptr %opacity112, align 2, !dbg !2497, !tbaa !1116
  %conv113 = uitofp i16 %23 to float, !dbg !2498
  %sub114 = fsub float %conv111, %conv113, !dbg !2499
  %conv115 = fpext float %sub114 to double, !dbg !2500
  %mul116 = fmul double %conv115, 0x3EF0001000100010, !dbg !2501
  %conv117 = fptrunc double %mul116 to float, !dbg !2502
  call void @llvm.dbg.value(metadata float %conv117, metadata !2410, metadata !DIExpression()), !dbg !2445
  %mul118 = fmul float %conv117, %conv117, !dbg !2503
  %conv119 = fpext float %mul118 to double, !dbg !2504
  %add121 = fadd double %add121317, %conv119, !dbg !2505
  store double %add121, ptr %arrayidx120, align 16, !dbg !2505, !tbaa !821
  %add125 = fadd double %add52308, %conv119, !dbg !2506
  store double %add125, ptr %arrayidx51, align 8, !dbg !2506, !tbaa !821
  br label %if.end126, !dbg !2507

if.end126:                                        ; preds = %if.end101, %if.then108
  %add121316 = phi double [ %add121317, %if.end101 ], [ %add121, %if.then108 ]
  %add52307 = phi double [ %add52308, %if.end101 ], [ %add125, %if.then108 ]
  br i1 %cmp128.not, label %if.end171, label %land.lhs.true130, !dbg !2508

land.lhs.true130:                                 ; preds = %if.end126
  %24 = load i32, ptr %colorspace, align 4, !dbg !2510, !tbaa !891
  %cmp131 = icmp eq i32 %24, 12, !dbg !2511
  br i1 %cmp131, label %land.lhs.true133, label %if.end171, !dbg !2512

land.lhs.true133:                                 ; preds = %land.lhs.true130
  %25 = load i32, ptr %colorspace134, align 4, !dbg !2513, !tbaa !891
  %cmp135 = icmp eq i32 %25, 12, !dbg !2514
  br i1 %cmp135, label %if.then137, label %if.end171, !dbg !2515

if.then137:                                       ; preds = %land.lhs.true133
  br i1 %cmp138, label %cond.end144, label %cond.false141, !dbg !2516

cond.false141:                                    ; preds = %if.then137
  %add.ptr = getelementptr inbounds i16, ptr %call11, i64 %x.0300, !dbg !2516
  %26 = load i16, ptr %add.ptr, align 2, !dbg !2516, !tbaa !1124
  %conv143 = zext i16 %26 to i32, !dbg !2516
  br label %cond.end144, !dbg !2516

cond.end144:                                      ; preds = %if.then137, %cond.false141
  %cond145 = phi i32 [ %conv143, %cond.false141 ], [ 0, %if.then137 ], !dbg !2516
  %conv146 = sitofp i32 %cond145 to float, !dbg !2516
  br i1 %cmp149, label %cond.end155, label %cond.false152, !dbg !2518

cond.false152:                                    ; preds = %cond.end144
  %add.ptr148 = getelementptr inbounds i16, ptr %call12, i64 %x.0300, !dbg !2518
  %27 = load i16, ptr %add.ptr148, align 2, !dbg !2518, !tbaa !1124
  %conv154 = zext i16 %27 to i32, !dbg !2518
  br label %cond.end155, !dbg !2518

cond.end155:                                      ; preds = %cond.end144, %cond.false152
  %cond156 = phi i32 [ %conv154, %cond.false152 ], [ 0, %cond.end144 ], !dbg !2518
  %conv157 = sitofp i32 %cond156 to float, !dbg !2518
  %28 = fneg float %conv33, !dbg !2519
  %neg159 = fmul float %28, %conv157, !dbg !2519
  %29 = call float @llvm.fmuladd.f32(float %conv20, float %conv146, float %neg159), !dbg !2519
  %conv160 = fpext float %29 to double, !dbg !2520
  %mul161 = fmul double %conv160, 0x3EF0001000100010, !dbg !2521
  %conv162 = fptrunc double %mul161 to float, !dbg !2522
  call void @llvm.dbg.value(metadata float %conv162, metadata !2410, metadata !DIExpression()), !dbg !2445
  %mul163 = fmul float %conv162, %conv162, !dbg !2523
  %conv164 = fpext float %mul163 to double, !dbg !2524
  %add166 = fadd double %add166319, %conv164, !dbg !2525
  store double %add166, ptr %arrayidx165, align 16, !dbg !2525, !tbaa !821
  %add170 = fadd double %add52307, %conv164, !dbg !2526
  store double %add170, ptr %arrayidx51, align 8, !dbg !2526, !tbaa !821
  br label %if.end171, !dbg !2527

if.end171:                                        ; preds = %cond.end155, %land.lhs.true133, %land.lhs.true130, %if.end126
  %add166318 = phi double [ %add166, %cond.end155 ], [ %add166319, %land.lhs.true133 ], [ %add166319, %land.lhs.true130 ], [ %add166319, %if.end126 ]
  %add52306 = phi double [ %add170, %cond.end155 ], [ %add52307, %land.lhs.true133 ], [ %add52307, %land.lhs.true130 ], [ %add52307, %if.end126 ]
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0296, i64 1, !dbg !2528
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2406, metadata !DIExpression()), !dbg !2429
  %incdec.ptr172 = getelementptr inbounds %struct._PixelPacket, ptr %q.0298, i64 1, !dbg !2529
  call void @llvm.dbg.value(metadata ptr %incdec.ptr172, metadata !2407, metadata !DIExpression()), !dbg !2429
  %inc = add nuw nsw i64 %x.0300, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2409, metadata !DIExpression()), !dbg !2429
  %exitcond.not = icmp eq i64 %inc, %3, !dbg !2438
  br i1 %exitcond.not, label %for.body176.preheader, label %for.body17, !dbg !2439, !llvm.loop !2531

for.body176.preheader:                            ; preds = %if.end171, %if.end10
  br label %for.body176, !dbg !2533

for.body176:                                      ; preds = %for.body176.preheader, %for.body176
  %i2.0320 = phi i64 [ %inc181, %for.body176 ], [ 0, %for.body176.preheader ]
  call void @llvm.dbg.value(metadata i64 %i2.0320, metadata !2408, metadata !DIExpression()), !dbg !2429
  %arrayidx177 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 %i2.0320, !dbg !2535
  %30 = load double, ptr %arrayidx177, align 8, !dbg !2535, !tbaa !821
  %arrayidx178 = getelementptr inbounds double, ptr %distortion, i64 %i2.0320, !dbg !2537
  %31 = load double, ptr %arrayidx178, align 8, !dbg !2538, !tbaa !821
  %add179 = fadd double %30, %31, !dbg !2538
  store double %add179, ptr %arrayidx178, align 8, !dbg !2538, !tbaa !821
  %inc181 = add nuw nsw i64 %i2.0320, 1, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %inc181, metadata !2408, metadata !DIExpression()), !dbg !2429
  %exitcond325.not = icmp eq i64 %inc181, 48, !dbg !2540
  br i1 %exitcond325.not, label %cleanup, label %for.body176, !dbg !2533, !llvm.loop !2541

cleanup:                                          ; preds = %for.body176, %if.end, %for.body
  %status.1 = phi i32 [ 0, %for.body ], [ 0, %if.end ], [ 1, %for.body176 ], !dbg !2416
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !2397, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !2543
  %inc190 = add nuw nsw i64 %y.0322, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %inc190, metadata !2399, metadata !DIExpression()), !dbg !2416
  %32 = load i64, ptr %rows, align 8, !dbg !2419, !tbaa !841
  %cmp = icmp slt i64 %inc190, %32, !dbg !2420
  br i1 %cmp, label %for.body, label %for.end191, !dbg !2421, !llvm.loop !2545

for.end191:                                       ; preds = %cleanup, %entry
  %status.0.lcssa = phi i32 [ 1, %entry ], [ %status.1, %cleanup ], !dbg !2547
  %call192 = call ptr @DestroyCacheView(ptr noundef %call1) #11, !dbg !2548
  call void @llvm.dbg.value(metadata ptr %call192, metadata !2396, metadata !DIExpression()), !dbg !2416
  %call193 = call ptr @DestroyCacheView(ptr noundef %call) #11, !dbg !2549
  call void @llvm.dbg.value(metadata ptr %call193, metadata !2395, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 0, metadata !2398, metadata !DIExpression()), !dbg !2416
  %columns198 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %33 = load i64, ptr %columns198, align 8, !tbaa !836
  %conv199 = uitofp i64 %33 to double
  %34 = load i64, ptr %rows, align 8, !tbaa !841
  %conv201 = uitofp i64 %34 to double
  %mul202 = fmul double %conv199, %conv201
  br label %for.body197, !dbg !2550

for.body197:                                      ; preds = %for.end191, %for.body197
  %i.0324 = phi i64 [ 0, %for.end191 ], [ %inc205, %for.body197 ]
  call void @llvm.dbg.value(metadata i64 %i.0324, metadata !2398, metadata !DIExpression()), !dbg !2416
  %arrayidx203 = getelementptr inbounds double, ptr %distortion, i64 %i.0324, !dbg !2552
  %35 = load double, ptr %arrayidx203, align 8, !dbg !2554, !tbaa !821
  %div = fdiv double %35, %mul202, !dbg !2554
  store double %div, ptr %arrayidx203, align 8, !dbg !2554, !tbaa !821
  %inc205 = add nuw nsw i64 %i.0324, 1, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %inc205, metadata !2398, metadata !DIExpression()), !dbg !2416
  %exitcond326.not = icmp eq i64 %inc205, 48, !dbg !2556
  br i1 %exitcond326.not, label %for.end206, label %for.body197, !dbg !2550, !llvm.loop !2557

for.end206:                                       ; preds = %for.body197
  call void @llvm.dbg.value(metadata ptr %image, metadata !1977, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1982, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i64 0, metadata !1983, metadata !DIExpression()), !dbg !2559
  %and.i = and i32 %channel, 1, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2559
  %and1.i = lshr i32 %channel, 1, !dbg !2562
  %and1.lobit.i = and i32 %and1.i, 1, !dbg !2562
  %narrow.i = add nuw nsw i32 %and1.lobit.i, %and.i, !dbg !2562
  call void @llvm.dbg.value(metadata i32 %narrow.i, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2559
  %and6.i = lshr i32 %channel, 2, !dbg !2563
  %and6.lobit.i = and i32 %and6.i, 1, !dbg !2563
  %narrow38.i = add nuw nsw i32 %narrow.i, %and6.lobit.i, !dbg !2563
  %spec.select34.i = zext i32 %narrow38.i to i64, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %spec.select34.i, metadata !1983, metadata !DIExpression()), !dbg !2559
  %and11.i = and i32 %channel, 8, !dbg !2564
  %cmp12.not.i = icmp eq i32 %and11.i, 0, !dbg !2565
  br i1 %cmp12.not.i, label %if.end16.i, label %land.lhs.true.i, !dbg !2566

land.lhs.true.i:                                  ; preds = %for.end206
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2567
  %36 = load i32, ptr %matte.i, align 8, !dbg !2567, !tbaa !1175
  %cmp13.not.i = icmp ne i32 %36, 0, !dbg !2568
  %inc15.i = zext i1 %cmp13.not.i to i64, !dbg !2569
  %spec.select35.i = add nuw nsw i64 %inc15.i, %spec.select34.i, !dbg !2569
  br label %if.end16.i, !dbg !2569

if.end16.i:                                       ; preds = %land.lhs.true.i, %for.end206
  %channels.3.i = phi i64 [ %spec.select34.i, %for.end206 ], [ %spec.select35.i, %land.lhs.true.i ], !dbg !2559
  call void @llvm.dbg.value(metadata i64 %channels.3.i, metadata !1983, metadata !DIExpression()), !dbg !2559
  %and17.i = and i32 %channel, 32, !dbg !2570
  %cmp18.not.i = icmp eq i32 %and17.i, 0, !dbg !2571
  br i1 %cmp18.not.i, label %GetNumberChannels.exit, label %land.lhs.true19.i, !dbg !2572

land.lhs.true19.i:                                ; preds = %if.end16.i
  %colorspace.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2573
  %37 = load i32, ptr %colorspace.i, align 4, !dbg !2573, !tbaa !891
  %cmp20.i = icmp eq i32 %37, 12, !dbg !2574
  %inc22.i = zext i1 %cmp20.i to i64, !dbg !2575
  %spec.select36.i = add nuw nsw i64 %channels.3.i, %inc22.i, !dbg !2575
  br label %GetNumberChannels.exit, !dbg !2575

GetNumberChannels.exit:                           ; preds = %if.end16.i, %land.lhs.true19.i
  %channels.4.i = phi i64 [ %channels.3.i, %if.end16.i ], [ %spec.select36.i, %land.lhs.true19.i ], !dbg !2559
  call void @llvm.dbg.value(metadata i64 %channels.4.i, metadata !1983, metadata !DIExpression()), !dbg !2559
  %conv208 = uitofp i64 %channels.4.i to double, !dbg !2576
  %arrayidx209 = getelementptr inbounds double, ptr %distortion, i64 47, !dbg !2577
  %38 = load double, ptr %arrayidx209, align 8, !dbg !2578, !tbaa !821
  %div210 = fdiv double %38, %conv208, !dbg !2578
  store double %div210, ptr %arrayidx209, align 8, !dbg !2578, !tbaa !821
  ret i32 %status.0.lcssa, !dbg !2579
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !2580 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2582, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !2583, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2584, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !2585, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2586, metadata !DIExpression()), !dbg !2616
  %call = tail call ptr @GetImageChannelStatistics(ptr noundef %image, ptr noundef %exception) #11, !dbg !2617
  call void @llvm.dbg.value(metadata ptr %call, metadata !2589, metadata !DIExpression()), !dbg !2616
  %call1 = tail call ptr @GetImageChannelStatistics(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !2618
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2590, metadata !DIExpression()), !dbg !2616
  %cmp = icmp eq ptr %call, null, !dbg !2619
  %cmp2 = icmp eq ptr %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2, !dbg !2621
  br i1 %or.cond, label %if.then, label %for.body.preheader, !dbg !2621

for.body.preheader:                               ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %distortion, i8 0, i64 384, i1 false), !dbg !2622, !tbaa !821
  call void @llvm.dbg.value(metadata i32 undef, metadata !2594, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 undef, metadata !2594, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2616
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2625
  %0 = load i64, ptr %columns, align 8, !dbg !2625, !tbaa !836
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2626
  %1 = load i64, ptr %rows, align 8, !dbg !2626, !tbaa !841
  call void @llvm.dbg.value(metadata float undef, metadata !2593, metadata !DIExpression()), !dbg !2616
  %call15 = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #11, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2587, metadata !DIExpression()), !dbg !2616
  %call16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !2628
  call void @llvm.dbg.value(metadata ptr %call16, metadata !2588, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 0, metadata !2595, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 1, metadata !2591, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 0, metadata !2592, metadata !DIExpression()), !dbg !2616
  %2 = load i64, ptr %rows, align 8, !dbg !2629, !tbaa !841
  %cmp19459 = icmp sgt i64 %2, 0, !dbg !2630
  br i1 %cmp19459, label %for.body21.lr.ph, label %for.end227, !dbg !2631

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.end, label %if.then4, !dbg !2632

if.then4:                                         ; preds = %if.then
  %call5 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #11, !dbg !2634
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2589, metadata !DIExpression()), !dbg !2616
  br label %if.end, !dbg !2636

if.end:                                           ; preds = %if.then4, %if.then
  br i1 %cmp2, label %cleanup312, label %if.then7, !dbg !2637

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #11, !dbg !2638
  call void @llvm.dbg.value(metadata ptr %call8, metadata !2590, metadata !DIExpression()), !dbg !2616
  br label %cleanup312, !dbg !2640

for.body21.lr.ph:                                 ; preds = %for.body.preheader
  %conv = uitofp i64 %0 to float, !dbg !2641
  %conv12 = uitofp i64 %1 to float, !dbg !2642
  %3 = tail call float @llvm.fmuladd.f32(float %conv, float %conv12, float -1.000000e+00), !dbg !2643
  %conv14 = fdiv float 1.000000e+00, %3, !dbg !2644
  call void @llvm.dbg.value(metadata float %conv14, metadata !2593, metadata !DIExpression()), !dbg !2616
  %columns28 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %matte49 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 6
  %and = and i32 %channel, 1
  %cmp62.not = icmp eq i32 %and, 0
  %conv65 = fpext float %conv14 to double
  %mul66 = fmul double %conv65, 0x3EF0001000100010
  %mean = getelementptr inbounds %struct._ChannelStatistics, ptr %call, i64 1, i32 7
  %mean80 = getelementptr inbounds %struct._ChannelStatistics, ptr %call1, i64 1, i32 7
  %arrayidx83 = getelementptr inbounds double, ptr %distortion, i64 1
  %and85 = and i32 %channel, 2
  %cmp86.not = icmp eq i32 %and85, 0
  %mean96 = getelementptr inbounds %struct._ChannelStatistics, ptr %call, i64 2, i32 7
  %mean105 = getelementptr inbounds %struct._ChannelStatistics, ptr %call1, i64 2, i32 7
  %arrayidx108 = getelementptr inbounds double, ptr %distortion, i64 2
  %and110 = and i32 %channel, 4
  %cmp111.not = icmp eq i32 %and110, 0
  %mean121 = getelementptr inbounds %struct._ChannelStatistics, ptr %call, i64 4, i32 7
  %mean130 = getelementptr inbounds %struct._ChannelStatistics, ptr %call1, i64 4, i32 7
  %arrayidx133 = getelementptr inbounds double, ptr %distortion, i64 4
  %and135 = and i32 %channel, 8
  %cmp136.not = icmp eq i32 %and135, 0
  %mean148 = getelementptr inbounds %struct._ChannelStatistics, ptr %call, i64 8, i32 7
  %mean155 = getelementptr inbounds %struct._ChannelStatistics, ptr %call1, i64 8, i32 7
  %arrayidx158 = getelementptr inbounds double, ptr %distortion, i64 8
  %and160 = and i32 %channel, 32
  %cmp161.not = icmp eq i32 %and160, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace167 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 1
  %mean185 = getelementptr inbounds %struct._ChannelStatistics, ptr %call, i64 32, i32 7
  %mean201 = getelementptr inbounds %struct._ChannelStatistics, ptr %call1, i64 32, i32 7
  %arrayidx204 = getelementptr inbounds double, ptr %distortion, i64 32
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body21, !dbg !2631

for.body21:                                       ; preds = %for.body21.lr.ph, %cleanup
  %y.0462 = phi i64 [ 0, %for.body21.lr.ph ], [ %inc226, %cleanup ]
  %status.0461 = phi i32 [ 1, %for.body21.lr.ph ], [ %status.3, %cleanup ]
  %progress.0460 = phi i64 [ 0, %for.body21.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0462, metadata !2595, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %status.0461, metadata !2591, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %progress.0460, metadata !2592, metadata !DIExpression()), !dbg !2616
  %cmp22 = icmp eq i32 %status.0461, 0, !dbg !2645
  br i1 %cmp22, label %cleanup, label %if.end25, !dbg !2647

if.end25:                                         ; preds = %for.body21
  %4 = load i64, ptr %columns, align 8, !dbg !2648, !tbaa !836
  %call27 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call15, i64 noundef 0, i64 noundef %y.0462, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #12, !dbg !2649
  call void @llvm.dbg.value(metadata ptr %call27, metadata !2601, metadata !DIExpression()), !dbg !2650
  %5 = load i64, ptr %columns28, align 8, !dbg !2651, !tbaa !836
  %call29 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call16, i64 noundef 0, i64 noundef %y.0462, i64 noundef %5, i64 noundef 1, ptr noundef %exception) #12, !dbg !2652
  call void @llvm.dbg.value(metadata ptr %call29, metadata !2602, metadata !DIExpression()), !dbg !2650
  %cmp30 = icmp eq ptr %call27, null, !dbg !2653
  %cmp33 = icmp eq ptr %call29, null
  %or.cond321 = select i1 %cmp30, i1 true, i1 %cmp33, !dbg !2655
  br i1 %or.cond321, label %cleanup, label %if.end36, !dbg !2655

if.end36:                                         ; preds = %if.end25
  %call37 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call15) #11, !dbg !2656
  call void @llvm.dbg.value(metadata ptr %call37, metadata !2596, metadata !DIExpression()), !dbg !2650
  %call38 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call16) #11, !dbg !2657
  call void @llvm.dbg.value(metadata ptr %call38, metadata !2600, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 0, metadata !2603, metadata !DIExpression()), !dbg !2650
  %6 = load i64, ptr %columns, align 8, !tbaa !836
  call void @llvm.dbg.value(metadata i64 0, metadata !2603, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %call29, metadata !2602, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %call27, metadata !2601, metadata !DIExpression()), !dbg !2650
  %cmp41450 = icmp sgt i64 %6, 0, !dbg !2658
  br i1 %cmp41450, label %for.body43.lr.ph, label %for.end209, !dbg !2659

for.body43.lr.ph:                                 ; preds = %if.end36
  %7 = load i32, ptr %matte, align 8, !tbaa !1175
  %cmp44.not = icmp eq i32 %7, 0
  %8 = load i32, ptr %matte49, align 8, !tbaa !1175
  %cmp50.not = icmp eq i32 %8, 0
  %brmerge = select i1 %cmp136.not, i1 true, i1 %cmp44.not
  %cmp173 = icmp eq ptr %call37, null
  %cmp189 = icmp eq ptr %call38, null
  br label %for.body43, !dbg !2659

for.body43:                                       ; preds = %for.body43.lr.ph, %if.end205
  %x.0455 = phi i64 [ 0, %for.body43.lr.ph ], [ %inc208, %if.end205 ]
  %q.0453 = phi ptr [ %call29, %for.body43.lr.ph ], [ %incdec.ptr206, %if.end205 ]
  %p.0451 = phi ptr [ %call27, %for.body43.lr.ph ], [ %incdec.ptr, %if.end205 ]
  call void @llvm.dbg.value(metadata i64 %x.0455, metadata !2603, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %q.0453, metadata !2602, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %p.0451, metadata !2601, metadata !DIExpression()), !dbg !2650
  br i1 %cmp44.not, label %cond.end, label %cond.true, !dbg !2660

cond.true:                                        ; preds = %for.body43
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0451, i64 0, i32 3, !dbg !2661
  %9 = load i16, ptr %opacity, align 2, !dbg !2661, !tbaa !1116
  %10 = xor i16 %9, -1, !dbg !2661
  %sub = zext i16 %10 to i32, !dbg !2661
  br label %cond.end, !dbg !2660

cond.end:                                         ; preds = %for.body43, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 65535, %for.body43 ], !dbg !2660
  %conv47 = sitofp i32 %cond to double, !dbg !2662
  %mul = fmul double %conv47, 0x3EF0001000100010, !dbg !2663
  %conv48 = fptrunc double %mul to float, !dbg !2664
  call void @llvm.dbg.value(metadata float %conv48, metadata !2608, metadata !DIExpression()), !dbg !2665
  br i1 %cmp50.not, label %cond.end57, label %cond.true52, !dbg !2666

cond.true52:                                      ; preds = %cond.end
  %opacity53 = getelementptr inbounds %struct._PixelPacket, ptr %q.0453, i64 0, i32 3, !dbg !2667
  %11 = load i16, ptr %opacity53, align 2, !dbg !2667, !tbaa !1116
  %12 = xor i16 %11, -1, !dbg !2667
  %sub55 = zext i16 %12 to i32, !dbg !2667
  br label %cond.end57, !dbg !2666

cond.end57:                                       ; preds = %cond.end, %cond.true52
  %cond58 = phi i32 [ %sub55, %cond.true52 ], [ 65535, %cond.end ], !dbg !2666
  %conv59 = sitofp i32 %cond58 to double, !dbg !2668
  %mul60 = fmul double %conv59, 0x3EF0001000100010, !dbg !2669
  %conv61 = fptrunc double %mul60 to float, !dbg !2670
  call void @llvm.dbg.value(metadata float %conv61, metadata !2604, metadata !DIExpression()), !dbg !2665
  br i1 %cmp62.not, label %if.end84, label %if.then64, !dbg !2671

if.then64:                                        ; preds = %cond.end57
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0451, i64 0, i32 2, !dbg !2672
  %13 = load i16, ptr %red, align 2, !dbg !2672, !tbaa !1104
  %conv68 = uitofp i16 %13 to float, !dbg !2672
  %mul69 = fmul float %conv48, %conv68, !dbg !2674
  %conv70 = fpext float %mul69 to double, !dbg !2675
  %14 = load double, ptr %mean, align 8, !dbg !2676, !tbaa !2677
  %sub72 = fsub double %conv70, %14, !dbg !2679
  %mul73 = fmul double %mul66, %sub72, !dbg !2680
  %red74 = getelementptr inbounds %struct._PixelPacket, ptr %q.0453, i64 0, i32 2, !dbg !2681
  %15 = load i16, ptr %red74, align 2, !dbg !2681, !tbaa !1104
  %conv76 = uitofp i16 %15 to float, !dbg !2681
  %mul77 = fmul float %conv61, %conv76, !dbg !2682
  %conv78 = fpext float %mul77 to double, !dbg !2683
  %16 = load double, ptr %mean80, align 8, !dbg !2684, !tbaa !2677
  %sub81 = fsub double %conv78, %16, !dbg !2685
  %17 = load double, ptr %arrayidx83, align 8, !dbg !2686, !tbaa !821
  %18 = call double @llvm.fmuladd.f64(double %mul73, double %sub81, double %17), !dbg !2686
  store double %18, ptr %arrayidx83, align 8, !dbg !2686, !tbaa !821
  br label %if.end84, !dbg !2687

if.end84:                                         ; preds = %if.then64, %cond.end57
  br i1 %cmp86.not, label %if.end109, label %if.then88, !dbg !2688

if.then88:                                        ; preds = %if.end84
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0451, i64 0, i32 1, !dbg !2689
  %19 = load i16, ptr %green, align 2, !dbg !2689, !tbaa !1108
  %conv92 = uitofp i16 %19 to float, !dbg !2689
  %mul93 = fmul float %conv48, %conv92, !dbg !2691
  %conv94 = fpext float %mul93 to double, !dbg !2692
  %20 = load double, ptr %mean96, align 8, !dbg !2693, !tbaa !2677
  %sub97 = fsub double %conv94, %20, !dbg !2694
  %mul98 = fmul double %mul66, %sub97, !dbg !2695
  %green99 = getelementptr inbounds %struct._PixelPacket, ptr %q.0453, i64 0, i32 1, !dbg !2696
  %21 = load i16, ptr %green99, align 2, !dbg !2696, !tbaa !1108
  %conv101 = uitofp i16 %21 to float, !dbg !2696
  %mul102 = fmul float %conv61, %conv101, !dbg !2697
  %conv103 = fpext float %mul102 to double, !dbg !2698
  %22 = load double, ptr %mean105, align 8, !dbg !2699, !tbaa !2677
  %sub106 = fsub double %conv103, %22, !dbg !2700
  %23 = load double, ptr %arrayidx108, align 8, !dbg !2701, !tbaa !821
  %24 = call double @llvm.fmuladd.f64(double %mul98, double %sub106, double %23), !dbg !2701
  store double %24, ptr %arrayidx108, align 8, !dbg !2701, !tbaa !821
  br label %if.end109, !dbg !2702

if.end109:                                        ; preds = %if.then88, %if.end84
  br i1 %cmp111.not, label %if.end134, label %if.then113, !dbg !2703

if.then113:                                       ; preds = %if.end109
  %25 = load i16, ptr %p.0451, align 2, !dbg !2704, !tbaa !1112
  %conv117 = uitofp i16 %25 to float, !dbg !2704
  %mul118 = fmul float %conv48, %conv117, !dbg !2706
  %conv119 = fpext float %mul118 to double, !dbg !2707
  %26 = load double, ptr %mean121, align 8, !dbg !2708, !tbaa !2677
  %sub122 = fsub double %conv119, %26, !dbg !2709
  %mul123 = fmul double %mul66, %sub122, !dbg !2710
  %27 = load i16, ptr %q.0453, align 2, !dbg !2711, !tbaa !1112
  %conv126 = uitofp i16 %27 to float, !dbg !2711
  %mul127 = fmul float %conv61, %conv126, !dbg !2712
  %conv128 = fpext float %mul127 to double, !dbg !2713
  %28 = load double, ptr %mean130, align 8, !dbg !2714, !tbaa !2677
  %sub131 = fsub double %conv128, %28, !dbg !2715
  %29 = load double, ptr %arrayidx133, align 8, !dbg !2716, !tbaa !821
  %30 = call double @llvm.fmuladd.f64(double %mul123, double %sub131, double %29), !dbg !2716
  store double %30, ptr %arrayidx133, align 8, !dbg !2716, !tbaa !821
  br label %if.end134, !dbg !2717

if.end134:                                        ; preds = %if.then113, %if.end109
  br i1 %brmerge, label %if.end159, label %if.then141, !dbg !2718

if.then141:                                       ; preds = %if.end134
  %opacity144 = getelementptr inbounds %struct._PixelPacket, ptr %p.0451, i64 0, i32 3, !dbg !2720
  %31 = load i16, ptr %opacity144, align 2, !dbg !2720, !tbaa !1116
  %conv146 = uitofp i16 %31 to double, !dbg !2720
  %32 = load double, ptr %mean148, align 8, !dbg !2721, !tbaa !2677
  %sub149 = fsub double %conv146, %32, !dbg !2722
  %mul150 = fmul double %mul66, %sub149, !dbg !2723
  %opacity151 = getelementptr inbounds %struct._PixelPacket, ptr %q.0453, i64 0, i32 3, !dbg !2724
  %33 = load i16, ptr %opacity151, align 2, !dbg !2724, !tbaa !1116
  %conv153 = uitofp i16 %33 to double, !dbg !2724
  %34 = load double, ptr %mean155, align 8, !dbg !2725, !tbaa !2677
  %sub156 = fsub double %conv153, %34, !dbg !2726
  %35 = load double, ptr %arrayidx158, align 8, !dbg !2727, !tbaa !821
  %36 = call double @llvm.fmuladd.f64(double %mul150, double %sub156, double %35), !dbg !2727
  store double %36, ptr %arrayidx158, align 8, !dbg !2727, !tbaa !821
  br label %if.end159, !dbg !2728

if.end159:                                        ; preds = %if.end134, %if.then141
  br i1 %cmp161.not, label %if.end205, label %land.lhs.true163, !dbg !2729

land.lhs.true163:                                 ; preds = %if.end159
  %37 = load i32, ptr %colorspace, align 4, !dbg !2731, !tbaa !891
  %cmp164 = icmp eq i32 %37, 12, !dbg !2732
  br i1 %cmp164, label %land.lhs.true166, label %if.end205, !dbg !2733

land.lhs.true166:                                 ; preds = %land.lhs.true163
  %38 = load i32, ptr %colorspace167, align 4, !dbg !2734, !tbaa !891
  %cmp168 = icmp eq i32 %38, 12, !dbg !2735
  br i1 %cmp168, label %if.then170, label %if.end205, !dbg !2736

if.then170:                                       ; preds = %land.lhs.true166
  br i1 %cmp173, label %cond.end179, label %cond.false176, !dbg !2737

cond.false176:                                    ; preds = %if.then170
  %add.ptr = getelementptr inbounds i16, ptr %call37, i64 %x.0455, !dbg !2737
  %39 = load i16, ptr %add.ptr, align 2, !dbg !2737, !tbaa !1124
  %conv178 = zext i16 %39 to i32, !dbg !2737
  br label %cond.end179, !dbg !2737

cond.end179:                                      ; preds = %if.then170, %cond.false176
  %cond180 = phi i32 [ %conv178, %cond.false176 ], [ 0, %if.then170 ], !dbg !2737
  %conv181 = sitofp i32 %cond180 to float, !dbg !2737
  %mul182 = fmul float %conv48, %conv181, !dbg !2738
  %conv183 = fpext float %mul182 to double, !dbg !2739
  %40 = load double, ptr %mean185, align 8, !dbg !2740, !tbaa !2677
  %sub186 = fsub double %conv183, %40, !dbg !2741
  %mul187 = fmul double %mul66, %sub186, !dbg !2742
  br i1 %cmp189, label %cond.end195, label %cond.false192, !dbg !2743

cond.false192:                                    ; preds = %cond.end179
  %add.ptr188 = getelementptr inbounds i16, ptr %call38, i64 %x.0455, !dbg !2743
  %41 = load i16, ptr %add.ptr188, align 2, !dbg !2743, !tbaa !1124
  %conv194 = zext i16 %41 to i32, !dbg !2743
  br label %cond.end195, !dbg !2743

cond.end195:                                      ; preds = %cond.end179, %cond.false192
  %cond196 = phi i32 [ %conv194, %cond.false192 ], [ 0, %cond.end179 ], !dbg !2743
  %conv197 = sitofp i32 %cond196 to float, !dbg !2743
  %mul198 = fmul float %conv61, %conv197, !dbg !2744
  %conv199 = fpext float %mul198 to double, !dbg !2745
  %42 = load double, ptr %mean201, align 8, !dbg !2746, !tbaa !2677
  %sub202 = fsub double %conv199, %42, !dbg !2747
  %43 = load double, ptr %arrayidx204, align 8, !dbg !2748, !tbaa !821
  %44 = call double @llvm.fmuladd.f64(double %mul187, double %sub202, double %43), !dbg !2748
  store double %44, ptr %arrayidx204, align 8, !dbg !2748, !tbaa !821
  br label %if.end205, !dbg !2749

if.end205:                                        ; preds = %cond.end195, %land.lhs.true166, %land.lhs.true163, %if.end159
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0451, i64 1, !dbg !2750
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2601, metadata !DIExpression()), !dbg !2650
  %incdec.ptr206 = getelementptr inbounds %struct._PixelPacket, ptr %q.0453, i64 1, !dbg !2751
  call void @llvm.dbg.value(metadata ptr %incdec.ptr206, metadata !2602, metadata !DIExpression()), !dbg !2650
  %inc208 = add nuw nsw i64 %x.0455, 1, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %inc208, metadata !2603, metadata !DIExpression()), !dbg !2650
  %exitcond.not = icmp eq i64 %inc208, %6, !dbg !2658
  br i1 %exitcond.not, label %for.end209, label %for.body43, !dbg !2659, !llvm.loop !2753

for.end209:                                       ; preds = %if.end205, %if.end36
  %45 = load ptr, ptr %progress_monitor, align 8, !dbg !2755, !tbaa !2756
  %cmp210.not = icmp eq ptr %45, null, !dbg !2757
  br i1 %cmp210.not, label %cleanup, label %SetImageProgress.exit, !dbg !2758

SetImageProgress.exit:                            ; preds = %for.end209
  %inc213 = add nsw i64 %progress.0460, 1, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %inc213, metadata !2592, metadata !DIExpression()), !dbg !2616
  %46 = load i64, ptr %rows, align 8, !dbg !2760, !tbaa !841
  call void @llvm.dbg.value(metadata ptr %image, metadata !2761, metadata !DIExpression()) #11, !dbg !2771
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !2767, metadata !DIExpression()) #11, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %progress.0460, metadata !2768, metadata !DIExpression()) #11, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %46, metadata !2769, metadata !DIExpression()) #11, !dbg !2771
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !2773
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2770, metadata !DIExpression()) #11, !dbg !2774
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef nonnull %filename.i) #11, !dbg !2775
  %47 = load ptr, ptr %progress_monitor, align 8, !dbg !2776, !tbaa !2756
  %48 = load ptr, ptr %client_data.i, align 8, !dbg !2777, !tbaa !2778
  %call4.i = call i32 %47(ptr noundef nonnull %message.i, i64 noundef %progress.0460, i64 noundef %46, ptr noundef %48) #11, !dbg !2779
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !2780
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2609, metadata !DIExpression()), !dbg !2781
  %cmp216 = icmp ne i32 %call4.i, 0, !dbg !2782
  %spec.select = zext i1 %cmp216 to i32, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2591, metadata !DIExpression()), !dbg !2616
  br label %cleanup, !dbg !2785

cleanup:                                          ; preds = %for.end209, %SetImageProgress.exit, %if.end25, %for.body21
  %progress.2 = phi i64 [ %progress.0460, %for.body21 ], [ %progress.0460, %if.end25 ], [ %inc213, %SetImageProgress.exit ], [ %progress.0460, %for.end209 ], !dbg !2616
  %status.3 = phi i32 [ 0, %for.body21 ], [ 0, %if.end25 ], [ %spec.select, %SetImageProgress.exit ], [ 1, %for.end209 ], !dbg !2616
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !2591, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2592, metadata !DIExpression()), !dbg !2616
  %inc226 = add nuw nsw i64 %y.0462, 1, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %inc226, metadata !2595, metadata !DIExpression()), !dbg !2616
  %49 = load i64, ptr %rows, align 8, !dbg !2629, !tbaa !841
  %cmp19 = icmp slt i64 %inc226, %49, !dbg !2630
  br i1 %cmp19, label %for.body21, label %for.end227, !dbg !2631, !llvm.loop !2787

for.end227:                                       ; preds = %cleanup, %for.body.preheader
  %status.0.lcssa = phi i32 [ 1, %for.body.preheader ], [ %status.3, %cleanup ], !dbg !2789
  %call228 = call ptr @DestroyCacheView(ptr noundef %call16) #11, !dbg !2790
  call void @llvm.dbg.value(metadata ptr %call228, metadata !2588, metadata !DIExpression()), !dbg !2616
  %call229 = call ptr @DestroyCacheView(ptr noundef %call15) #11, !dbg !2791
  call void @llvm.dbg.value(metadata ptr %call229, metadata !2587, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 0, metadata !2594, metadata !DIExpression()), !dbg !2616
  br label %for.body233, !dbg !2792

for.body233:                                      ; preds = %for.end227, %PerceptibleReciprocal.exit
  %i.1463 = phi i64 [ 0, %for.end227 ], [ %inc248, %PerceptibleReciprocal.exit ]
  call void @llvm.dbg.value(metadata i64 %i.1463, metadata !2594, metadata !DIExpression()), !dbg !2616
  %standard_deviation = getelementptr inbounds %struct._ChannelStatistics, ptr %call, i64 %i.1463, i32 9, !dbg !2793
  %50 = load double, ptr %standard_deviation, align 8, !dbg !2793, !tbaa !2794
  %standard_deviation236 = getelementptr inbounds %struct._ChannelStatistics, ptr %call1, i64 %i.1463, i32 9, !dbg !2795
  %51 = load double, ptr %standard_deviation236, align 8, !dbg !2795, !tbaa !2794
  %mul237 = fmul double %50, %51, !dbg !2796
  call void @llvm.dbg.value(metadata double %mul237, metadata !2612, metadata !DIExpression()), !dbg !2797
  %cmp238 = fcmp olt double %mul237, 0.000000e+00, !dbg !2798
  br i1 %cmp238, label %if.then240, label %if.end241, !dbg !2800

if.then240:                                       ; preds = %for.body233
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2612, metadata !DIExpression()), !dbg !2797
  br label %if.end241, !dbg !2801

if.end241:                                        ; preds = %if.then240, %for.body233
  %gamma.0 = phi double [ 0.000000e+00, %if.then240 ], [ %mul237, %for.body233 ], !dbg !2797
  call void @llvm.dbg.value(metadata double %gamma.0, metadata !2612, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double %gamma.0, metadata !2802, metadata !DIExpression()), !dbg !2809
  %cmp.i446 = fcmp olt double %gamma.0, 0.000000e+00, !dbg !2811
  %cond.i = select i1 %cmp.i446, double -1.000000e+00, double 1.000000e+00, !dbg !2812
  call void @llvm.dbg.value(metadata double %cond.i, metadata !2808, metadata !DIExpression()), !dbg !2809
  %mul.i = fmul double %gamma.0, %cond.i, !dbg !2813
  %cmp1.i = fcmp ult double %mul.i, 1.000000e-15, !dbg !2815
  br i1 %cmp1.i, label %if.end.i447, label %if.then.i, !dbg !2816

if.then.i:                                        ; preds = %if.end241
  %div.i = fdiv double 1.000000e+00, %gamma.0, !dbg !2817
  br label %PerceptibleReciprocal.exit, !dbg !2818

if.end.i447:                                      ; preds = %if.end241
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !2819
  br label %PerceptibleReciprocal.exit, !dbg !2820

PerceptibleReciprocal.exit:                       ; preds = %if.then.i, %if.end.i447
  %retval.0.i448 = phi double [ %div.i, %if.then.i ], [ %div2.i, %if.end.i447 ], !dbg !2809
  call void @llvm.dbg.value(metadata double %retval.0.i448, metadata !2612, metadata !DIExpression()), !dbg !2797
  %mul243 = fmul double %retval.0.i448, 6.553500e+04, !dbg !2821
  %arrayidx244 = getelementptr inbounds double, ptr %distortion, i64 %i.1463, !dbg !2822
  %52 = load double, ptr %arrayidx244, align 8, !dbg !2822, !tbaa !821
  %mul245 = fmul double %mul243, %52, !dbg !2823
  store double %mul245, ptr %arrayidx244, align 8, !dbg !2824, !tbaa !821
  %inc248 = add nuw nsw i64 %i.1463, 1, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %inc248, metadata !2594, metadata !DIExpression()), !dbg !2616
  %exitcond464.not = icmp eq i64 %inc248, 47, !dbg !2826
  br i1 %exitcond464.not, label %for.end249, label %for.body233, !dbg !2792, !llvm.loop !2827

for.end249:                                       ; preds = %PerceptibleReciprocal.exit
  %arrayidx250 = getelementptr inbounds double, ptr %distortion, i64 47, !dbg !2829
  %and251 = and i32 %channel, 1, !dbg !2830
  %cmp252.not = icmp eq i32 %and251, 0, !dbg !2832
  br i1 %cmp252.not, label %if.end259, label %if.then254, !dbg !2833

if.then254:                                       ; preds = %for.end249
  %arrayidx255 = getelementptr inbounds double, ptr %distortion, i64 1, !dbg !2834
  %53 = load double, ptr %arrayidx255, align 8, !dbg !2834, !tbaa !821
  %54 = call double @llvm.fmuladd.f64(double %53, double %53, double 0.000000e+00), !dbg !2835
  br label %if.end259, !dbg !2836

if.end259:                                        ; preds = %if.then254, %for.end249
  %55 = phi double [ %54, %if.then254 ], [ 0.000000e+00, %for.end249 ]
  %and260 = and i32 %channel, 2, !dbg !2837
  %cmp261.not = icmp eq i32 %and260, 0, !dbg !2839
  br i1 %cmp261.not, label %if.end268, label %if.then263, !dbg !2840

if.then263:                                       ; preds = %if.end259
  %arrayidx264 = getelementptr inbounds double, ptr %distortion, i64 2, !dbg !2841
  %56 = load double, ptr %arrayidx264, align 8, !dbg !2841, !tbaa !821
  %57 = call double @llvm.fmuladd.f64(double %56, double %56, double %55), !dbg !2842
  br label %if.end268, !dbg !2843

if.end268:                                        ; preds = %if.then263, %if.end259
  %58 = phi double [ %57, %if.then263 ], [ %55, %if.end259 ]
  %and269 = and i32 %channel, 4, !dbg !2844
  %cmp270.not = icmp eq i32 %and269, 0, !dbg !2846
  br i1 %cmp270.not, label %if.end277, label %if.then272, !dbg !2847

if.then272:                                       ; preds = %if.end268
  %arrayidx273 = getelementptr inbounds double, ptr %distortion, i64 4, !dbg !2848
  %59 = load double, ptr %arrayidx273, align 8, !dbg !2848, !tbaa !821
  %60 = call double @llvm.fmuladd.f64(double %59, double %59, double %58), !dbg !2849
  br label %if.end277, !dbg !2850

if.end277:                                        ; preds = %if.then272, %if.end268
  %61 = phi double [ %60, %if.then272 ], [ %58, %if.end268 ]
  %and278 = and i32 %channel, 8, !dbg !2851
  %cmp279.not = icmp eq i32 %and278, 0, !dbg !2853
  br i1 %cmp279.not, label %if.end290, label %land.lhs.true281, !dbg !2854

land.lhs.true281:                                 ; preds = %if.end277
  %matte282 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2855
  %62 = load i32, ptr %matte282, align 8, !dbg !2855, !tbaa !1175
  %cmp283.not = icmp eq i32 %62, 0, !dbg !2856
  br i1 %cmp283.not, label %if.end290, label %if.then285, !dbg !2857

if.then285:                                       ; preds = %land.lhs.true281
  %arrayidx286 = getelementptr inbounds double, ptr %distortion, i64 8, !dbg !2858
  %63 = load double, ptr %arrayidx286, align 8, !dbg !2858, !tbaa !821
  %64 = call double @llvm.fmuladd.f64(double %63, double %63, double %61), !dbg !2859
  br label %if.end290, !dbg !2860

if.end290:                                        ; preds = %if.then285, %land.lhs.true281, %if.end277
  %65 = phi double [ %64, %if.then285 ], [ %61, %land.lhs.true281 ], [ %61, %if.end277 ]
  %and291 = and i32 %channel, 32, !dbg !2861
  %cmp292.not = icmp eq i32 %and291, 0, !dbg !2863
  br i1 %cmp292.not, label %if.end303, label %land.lhs.true294, !dbg !2864

land.lhs.true294:                                 ; preds = %if.end290
  %colorspace295 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2865
  %66 = load i32, ptr %colorspace295, align 4, !dbg !2865, !tbaa !891
  %cmp296 = icmp eq i32 %66, 12, !dbg !2866
  br i1 %cmp296, label %if.then298, label %if.end303, !dbg !2867

if.then298:                                       ; preds = %land.lhs.true294
  %arrayidx299 = getelementptr inbounds double, ptr %distortion, i64 32, !dbg !2868
  %67 = load double, ptr %arrayidx299, align 8, !dbg !2868, !tbaa !821
  %68 = call double @llvm.fmuladd.f64(double %67, double %67, double %65), !dbg !2869
  br label %if.end303, !dbg !2870

if.end303:                                        ; preds = %if.then298, %land.lhs.true294, %if.end290
  %69 = phi double [ %68, %if.then298 ], [ %65, %land.lhs.true294 ], [ %65, %if.end290 ], !dbg !2871
  call void @llvm.dbg.value(metadata ptr %image, metadata !1977, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1982, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %and251, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2872
  %and1.i = lshr i32 %channel, 1, !dbg !2874
  %and1.lobit.i = and i32 %and1.i, 1, !dbg !2874
  %narrow.i = add nuw nsw i32 %and1.lobit.i, %and251, !dbg !2874
  call void @llvm.dbg.value(metadata i32 %narrow.i, metadata !1983, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2872
  %and6.i = lshr i32 %channel, 2, !dbg !2875
  %and6.lobit.i = and i32 %and6.i, 1, !dbg !2875
  %narrow38.i = add nuw nsw i32 %narrow.i, %and6.lobit.i, !dbg !2875
  %spec.select34.i = zext i32 %narrow38.i to i64, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %spec.select34.i, metadata !1983, metadata !DIExpression()), !dbg !2872
  br i1 %cmp279.not, label %if.end16.i, label %land.lhs.true.i, !dbg !2876

land.lhs.true.i:                                  ; preds = %if.end303
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2877
  %70 = load i32, ptr %matte.i, align 8, !dbg !2877, !tbaa !1175
  %cmp13.not.i = icmp ne i32 %70, 0, !dbg !2878
  %inc15.i = zext i1 %cmp13.not.i to i64, !dbg !2879
  %spec.select35.i = add nuw nsw i64 %inc15.i, %spec.select34.i, !dbg !2879
  br label %if.end16.i, !dbg !2879

if.end16.i:                                       ; preds = %land.lhs.true.i, %if.end303
  %channels.3.i = phi i64 [ %spec.select34.i, %if.end303 ], [ %spec.select35.i, %land.lhs.true.i ], !dbg !2872
  call void @llvm.dbg.value(metadata i64 %channels.3.i, metadata !1983, metadata !DIExpression()), !dbg !2872
  br i1 %cmp292.not, label %GetNumberChannels.exit, label %land.lhs.true19.i, !dbg !2880

land.lhs.true19.i:                                ; preds = %if.end16.i
  %colorspace.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2881
  %71 = load i32, ptr %colorspace.i, align 4, !dbg !2881, !tbaa !891
  %cmp20.i = icmp eq i32 %71, 12, !dbg !2882
  %inc22.i = zext i1 %cmp20.i to i64, !dbg !2883
  %spec.select36.i = add nuw nsw i64 %channels.3.i, %inc22.i, !dbg !2883
  br label %GetNumberChannels.exit, !dbg !2883

GetNumberChannels.exit:                           ; preds = %if.end16.i, %land.lhs.true19.i
  %channels.4.i = phi i64 [ %channels.3.i, %if.end16.i ], [ %spec.select36.i, %land.lhs.true19.i ], !dbg !2872
  call void @llvm.dbg.value(metadata i64 %channels.4.i, metadata !1983, metadata !DIExpression()), !dbg !2872
  %conv306 = uitofp i64 %channels.4.i to double, !dbg !2884
  %div307 = fdiv double %69, %conv306, !dbg !2885
  %call308 = call double @sqrt(double noundef %div307) #11, !dbg !2886
  store double %call308, ptr %arrayidx250, align 8, !dbg !2887, !tbaa !821
  %call310 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #11, !dbg !2888
  call void @llvm.dbg.value(metadata ptr %call310, metadata !2590, metadata !DIExpression()), !dbg !2616
  %call311 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #11, !dbg !2889
  call void @llvm.dbg.value(metadata ptr %call311, metadata !2589, metadata !DIExpression()), !dbg !2616
  br label %cleanup312, !dbg !2890

cleanup312:                                       ; preds = %if.end, %if.then7, %GetNumberChannels.exit
  %retval.0 = phi i32 [ %status.0.lcssa, %GetNumberChannels.exit ], [ 0, %if.then7 ], [ 0, %if.end ], !dbg !2616
  ret i32 %retval.0, !dbg !2891
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !2892 {
entry:
  %channel_distortion = alloca [48 x double], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2894, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !2895, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 %channel, metadata !2896, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !2897, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2898, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 1, metadata !2901, metadata !DIExpression()), !dbg !2919
  %call = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #11, !dbg !2920
  call void @llvm.dbg.value(metadata ptr %call, metadata !2899, metadata !DIExpression()), !dbg !2919
  %call1 = tail call ptr @AcquireVirtualCacheView(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !2921
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2900, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !2919
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2901, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !2919
  %0 = load i64, ptr %rows, align 8, !dbg !2922, !tbaa !841
  %cmp347 = icmp sgt i64 %0, 0, !dbg !2923
  br i1 %cmp347, label %for.body.lr.ph, label %for.end235, !dbg !2924

for.body.lr.ph:                                   ; preds = %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %columns4 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %matte20 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 6
  %and = and i32 %channel, 1
  %cmp33.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 1
  %arrayidx54 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 47
  %and62 = and i32 %channel, 2
  %cmp63.not = icmp eq i32 %and62, 0
  %arrayidx78 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 2
  %and94 = and i32 %channel, 4
  %cmp95.not = icmp eq i32 %and94, 0
  %arrayidx110 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 4
  %and126 = and i32 %channel, 8
  %cmp127.not = icmp eq i32 %and126, 0
  %arrayidx142 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 8
  %and158 = and i32 %channel, 32
  %cmp159.not = icmp eq i32 %and158, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace165 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 1
  %arrayidx195 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 32
  br label %for.body, !dbg !2924

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0349 = phi i32 [ 1, %for.body.lr.ph ], [ %status.1, %cleanup ]
  %y.0348 = phi i64 [ 0, %for.body.lr.ph ], [ %inc234, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0349, metadata !2901, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 %y.0348, metadata !2902, metadata !DIExpression()), !dbg !2919
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !2925
  call void @llvm.dbg.declare(metadata ptr %channel_distortion, metadata !2903, metadata !DIExpression()), !dbg !2926
  %cmp2 = icmp eq i32 %status.0349, 0, !dbg !2927
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !2929

if.end:                                           ; preds = %for.body
  %1 = load i64, ptr %columns, align 8, !dbg !2930, !tbaa !836
  %call3 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call, i64 noundef 0, i64 noundef %y.0348, i64 noundef %1, i64 noundef 1, ptr noundef %exception) #12, !dbg !2931
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2909, metadata !DIExpression()), !dbg !2932
  %2 = load i64, ptr %columns4, align 8, !dbg !2933, !tbaa !836
  %call5 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call1, i64 noundef 0, i64 noundef %y.0348, i64 noundef %2, i64 noundef 1, ptr noundef %exception) #12, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2910, metadata !DIExpression()), !dbg !2932
  %cmp6 = icmp eq ptr %call3, null, !dbg !2935
  %cmp7 = icmp eq ptr %call5, null
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp7, !dbg !2937
  br i1 %or.cond, label %cleanup, label %if.end9, !dbg !2937

if.end9:                                          ; preds = %if.end
  %call10 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call) #11, !dbg !2938
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2907, metadata !DIExpression()), !dbg !2932
  %call11 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call1) #11, !dbg !2939
  call void @llvm.dbg.value(metadata ptr %call11, metadata !2908, metadata !DIExpression()), !dbg !2932
  %call12 = call ptr @ResetMagickMemory(ptr noundef nonnull %channel_distortion, i32 noundef 0, i64 noundef 384) #11, !dbg !2940
  call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2932
  %3 = load i64, ptr %columns, align 8, !tbaa !836
  call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %call5, metadata !2910, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2909, metadata !DIExpression()), !dbg !2932
  %cmp15316 = icmp sgt i64 %3, 0, !dbg !2941
  br i1 %cmp15316, label %for.body16.lr.ph, label %for.body215.preheader, !dbg !2942

for.body16.lr.ph:                                 ; preds = %if.end9
  %4 = load i32, ptr %matte, align 8, !tbaa !1175
  %cmp17.not = icmp eq i32 %4, 0
  %5 = load i32, ptr %matte20, align 8, !tbaa !1175
  %cmp21.not = icmp eq i32 %5, 0
  %brmerge = select i1 %cmp127.not, i1 true, i1 %cmp17.not
  %cmp169 = icmp eq ptr %call10, null
  %cmp180 = icmp eq ptr %call11, null
  %arrayidx.promoted = load double, ptr %arrayidx, align 8, !tbaa !821
  %arrayidx54.promoted = load double, ptr %arrayidx54, align 8, !tbaa !821
  %arrayidx78.promoted = load double, ptr %arrayidx78, align 16, !tbaa !821
  %arrayidx110.promoted = load double, ptr %arrayidx110, align 16, !tbaa !821
  %arrayidx142.promoted = load double, ptr %arrayidx142, align 16, !tbaa !821
  %arrayidx195.promoted = load double, ptr %arrayidx195, align 16, !tbaa !821
  br label %for.body16, !dbg !2942

for.body16:                                       ; preds = %for.body16.lr.ph, %if.end210
  %conv194345 = phi double [ %arrayidx195.promoted, %for.body16.lr.ph ], [ %conv194344, %if.end210 ]
  %conv141342 = phi double [ %arrayidx142.promoted, %for.body16.lr.ph ], [ %conv141341, %if.end210 ]
  %conv109339 = phi double [ %arrayidx110.promoted, %for.body16.lr.ph ], [ %conv109338, %if.end210 ]
  %conv77336 = phi double [ %arrayidx78.promoted, %for.body16.lr.ph ], [ %conv77335, %if.end210 ]
  %conv46333 = phi double [ %arrayidx54.promoted, %for.body16.lr.ph ], [ %conv46328, %if.end210 ]
  %conv46327 = phi double [ %arrayidx.promoted, %for.body16.lr.ph ], [ %conv46326, %if.end210 ]
  %x.0321 = phi i64 [ 0, %for.body16.lr.ph ], [ %inc, %if.end210 ]
  %q.0319 = phi ptr [ %call5, %for.body16.lr.ph ], [ %incdec.ptr211, %if.end210 ]
  %p.0317 = phi ptr [ %call3, %for.body16.lr.ph ], [ %incdec.ptr, %if.end210 ]
  call void @llvm.dbg.value(metadata i64 %x.0321, metadata !2912, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %q.0319, metadata !2910, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %p.0317, metadata !2909, metadata !DIExpression()), !dbg !2932
  br i1 %cmp17.not, label %cond.end, label %cond.true, !dbg !2943

cond.true:                                        ; preds = %for.body16
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0317, i64 0, i32 3, !dbg !2944
  %6 = load i16, ptr %opacity, align 2, !dbg !2944, !tbaa !1116
  %7 = xor i16 %6, -1, !dbg !2944
  %sub = zext i16 %7 to i32, !dbg !2944
  br label %cond.end, !dbg !2943

cond.end:                                         ; preds = %for.body16, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 65535, %for.body16 ], !dbg !2943
  %conv18 = sitofp i32 %cond to double, !dbg !2945
  %mul = fmul double %conv18, 0x3EF0001000100010, !dbg !2946
  %conv19 = fptrunc double %mul to float, !dbg !2947
  call void @llvm.dbg.value(metadata float %conv19, metadata !2918, metadata !DIExpression()), !dbg !2948
  br i1 %cmp21.not, label %cond.end28, label %cond.true23, !dbg !2949

cond.true23:                                      ; preds = %cond.end
  %opacity24 = getelementptr inbounds %struct._PixelPacket, ptr %q.0319, i64 0, i32 3, !dbg !2950
  %8 = load i16, ptr %opacity24, align 2, !dbg !2950, !tbaa !1116
  %9 = xor i16 %8, -1, !dbg !2950
  %sub26 = zext i16 %9 to i32, !dbg !2950
  br label %cond.end28, !dbg !2949

cond.end28:                                       ; preds = %cond.end, %cond.true23
  %cond29 = phi i32 [ %sub26, %cond.true23 ], [ 65535, %cond.end ], !dbg !2949
  %conv30 = sitofp i32 %cond29 to double, !dbg !2951
  %mul31 = fmul double %conv30, 0x3EF0001000100010, !dbg !2952
  %conv32 = fptrunc double %mul31 to float, !dbg !2953
  call void @llvm.dbg.value(metadata float %conv32, metadata !2917, metadata !DIExpression()), !dbg !2948
  br i1 %cmp33.not, label %if.end61, label %if.then35, !dbg !2954

if.then35:                                        ; preds = %cond.end28
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0317, i64 0, i32 2, !dbg !2955
  %10 = load i16, ptr %red, align 2, !dbg !2955, !tbaa !1104
  %conv37 = uitofp i16 %10 to float, !dbg !2955
  %red39 = getelementptr inbounds %struct._PixelPacket, ptr %q.0319, i64 0, i32 2, !dbg !2958
  %11 = load i16, ptr %red39, align 2, !dbg !2958, !tbaa !1104
  %conv41 = uitofp i16 %11 to float, !dbg !2958
  %12 = fneg float %conv32, !dbg !2959
  %neg = fmul float %12, %conv41, !dbg !2959
  %13 = call float @llvm.fmuladd.f32(float %conv19, float %conv37, float %neg), !dbg !2959
  %14 = call float @llvm.fabs.f32(float %13), !dbg !2960
  %15 = fpext float %14 to double, !dbg !2960
  %mul44 = fmul double %15, 0x3EF0001000100010, !dbg !2961
  %conv45 = fptrunc double %mul44 to float, !dbg !2962
  call void @llvm.dbg.value(metadata float %conv45, metadata !2913, metadata !DIExpression()), !dbg !2948
  %conv46 = fpext float %conv45 to double, !dbg !2963
  %cmp47 = fcmp olt double %conv46327, %conv46, !dbg !2965
  br i1 %cmp47, label %if.then49, label %if.end52, !dbg !2966

if.then49:                                        ; preds = %if.then35
  store double %conv46, ptr %arrayidx, align 8, !dbg !2967, !tbaa !821
  br label %if.end52, !dbg !2968

if.end52:                                         ; preds = %if.then49, %if.then35
  %conv46325 = phi double [ %conv46, %if.then49 ], [ %conv46327, %if.then35 ]
  %cmp55 = fcmp olt double %conv46333, %conv46, !dbg !2969
  br i1 %cmp55, label %if.then57, label %if.end61, !dbg !2971

if.then57:                                        ; preds = %if.end52
  store double %conv46, ptr %arrayidx54, align 8, !dbg !2972, !tbaa !821
  br label %if.end61, !dbg !2973

if.end61:                                         ; preds = %if.end52, %if.then57, %cond.end28
  %conv46332 = phi double [ %conv46333, %if.end52 ], [ %conv46, %if.then57 ], [ %conv46333, %cond.end28 ]
  %conv46326 = phi double [ %conv46325, %if.end52 ], [ %conv46325, %if.then57 ], [ %conv46327, %cond.end28 ]
  br i1 %cmp63.not, label %if.end93, label %if.then65, !dbg !2974

if.then65:                                        ; preds = %if.end61
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0317, i64 0, i32 1, !dbg !2975
  %16 = load i16, ptr %green, align 2, !dbg !2975, !tbaa !1108
  %conv67 = uitofp i16 %16 to float, !dbg !2975
  %green69 = getelementptr inbounds %struct._PixelPacket, ptr %q.0319, i64 0, i32 1, !dbg !2978
  %17 = load i16, ptr %green69, align 2, !dbg !2978, !tbaa !1108
  %conv71 = uitofp i16 %17 to float, !dbg !2978
  %18 = fneg float %conv32, !dbg !2979
  %neg73 = fmul float %18, %conv71, !dbg !2979
  %19 = call float @llvm.fmuladd.f32(float %conv19, float %conv67, float %neg73), !dbg !2979
  %20 = call float @llvm.fabs.f32(float %19), !dbg !2980
  %21 = fpext float %20 to double, !dbg !2980
  %mul75 = fmul double %21, 0x3EF0001000100010, !dbg !2981
  %conv76 = fptrunc double %mul75 to float, !dbg !2982
  call void @llvm.dbg.value(metadata float %conv76, metadata !2913, metadata !DIExpression()), !dbg !2948
  %conv77 = fpext float %conv76 to double, !dbg !2983
  %cmp79 = fcmp olt double %conv77336, %conv77, !dbg !2985
  br i1 %cmp79, label %if.then81, label %if.end84, !dbg !2986

if.then81:                                        ; preds = %if.then65
  store double %conv77, ptr %arrayidx78, align 16, !dbg !2987, !tbaa !821
  br label %if.end84, !dbg !2988

if.end84:                                         ; preds = %if.then81, %if.then65
  %conv77334 = phi double [ %conv77, %if.then81 ], [ %conv77336, %if.then65 ]
  %cmp87 = fcmp olt double %conv46332, %conv77, !dbg !2989
  br i1 %cmp87, label %if.then89, label %if.end93, !dbg !2991

if.then89:                                        ; preds = %if.end84
  store double %conv77, ptr %arrayidx54, align 8, !dbg !2992, !tbaa !821
  br label %if.end93, !dbg !2993

if.end93:                                         ; preds = %if.end84, %if.then89, %if.end61
  %conv77335 = phi double [ %conv77334, %if.end84 ], [ %conv77334, %if.then89 ], [ %conv77336, %if.end61 ]
  %conv46331 = phi double [ %conv46332, %if.end84 ], [ %conv77, %if.then89 ], [ %conv46332, %if.end61 ]
  br i1 %cmp95.not, label %if.end125, label %if.then97, !dbg !2994

if.then97:                                        ; preds = %if.end93
  %22 = load i16, ptr %p.0317, align 2, !dbg !2995, !tbaa !1112
  %conv99 = uitofp i16 %22 to float, !dbg !2995
  %23 = load i16, ptr %q.0319, align 2, !dbg !2998, !tbaa !1112
  %conv103 = uitofp i16 %23 to float, !dbg !2998
  %24 = fneg float %conv32, !dbg !2999
  %neg105 = fmul float %24, %conv103, !dbg !2999
  %25 = call float @llvm.fmuladd.f32(float %conv19, float %conv99, float %neg105), !dbg !2999
  %26 = call float @llvm.fabs.f32(float %25), !dbg !3000
  %27 = fpext float %26 to double, !dbg !3000
  %mul107 = fmul double %27, 0x3EF0001000100010, !dbg !3001
  %conv108 = fptrunc double %mul107 to float, !dbg !3002
  call void @llvm.dbg.value(metadata float %conv108, metadata !2913, metadata !DIExpression()), !dbg !2948
  %conv109 = fpext float %conv108 to double, !dbg !3003
  %cmp111 = fcmp olt double %conv109339, %conv109, !dbg !3005
  br i1 %cmp111, label %if.then113, label %if.end116, !dbg !3006

if.then113:                                       ; preds = %if.then97
  store double %conv109, ptr %arrayidx110, align 16, !dbg !3007, !tbaa !821
  br label %if.end116, !dbg !3008

if.end116:                                        ; preds = %if.then113, %if.then97
  %conv109337 = phi double [ %conv109, %if.then113 ], [ %conv109339, %if.then97 ]
  %cmp119 = fcmp olt double %conv46331, %conv109, !dbg !3009
  br i1 %cmp119, label %if.then121, label %if.end125, !dbg !3011

if.then121:                                       ; preds = %if.end116
  store double %conv109, ptr %arrayidx54, align 8, !dbg !3012, !tbaa !821
  br label %if.end125, !dbg !3013

if.end125:                                        ; preds = %if.end116, %if.then121, %if.end93
  %conv109338 = phi double [ %conv109337, %if.end116 ], [ %conv109337, %if.then121 ], [ %conv109339, %if.end93 ]
  %conv46330 = phi double [ %conv46331, %if.end116 ], [ %conv109, %if.then121 ], [ %conv46331, %if.end93 ]
  br i1 %brmerge, label %if.end157, label %if.then132, !dbg !3014

if.then132:                                       ; preds = %if.end125
  %opacity133 = getelementptr inbounds %struct._PixelPacket, ptr %p.0317, i64 0, i32 3, !dbg !3016
  %28 = load i16, ptr %opacity133, align 2, !dbg !3016, !tbaa !1116
  %conv135 = uitofp i16 %28 to double, !dbg !3016
  %opacity136 = getelementptr inbounds %struct._PixelPacket, ptr %q.0319, i64 0, i32 3, !dbg !3018
  %29 = load i16, ptr %opacity136, align 2, !dbg !3018, !tbaa !1116
  %conv137 = uitofp i16 %29 to double, !dbg !3019
  %sub138 = fsub double %conv135, %conv137, !dbg !3020
  %30 = call double @llvm.fabs.f64(double %sub138), !dbg !3021
  %mul139 = fmul double %30, 0x3EF0001000100010, !dbg !3022
  %conv140 = fptrunc double %mul139 to float, !dbg !3023
  call void @llvm.dbg.value(metadata float %conv140, metadata !2913, metadata !DIExpression()), !dbg !2948
  %conv141 = fpext float %conv140 to double, !dbg !3024
  %cmp143 = fcmp olt double %conv141342, %conv141, !dbg !3026
  br i1 %cmp143, label %if.then145, label %if.end148, !dbg !3027

if.then145:                                       ; preds = %if.then132
  store double %conv141, ptr %arrayidx142, align 16, !dbg !3028, !tbaa !821
  br label %if.end148, !dbg !3029

if.end148:                                        ; preds = %if.then145, %if.then132
  %conv141340 = phi double [ %conv141, %if.then145 ], [ %conv141342, %if.then132 ]
  %cmp151 = fcmp olt double %conv46330, %conv141, !dbg !3030
  br i1 %cmp151, label %if.then153, label %if.end157, !dbg !3032

if.then153:                                       ; preds = %if.end148
  store double %conv141, ptr %arrayidx54, align 8, !dbg !3033, !tbaa !821
  br label %if.end157, !dbg !3034

if.end157:                                        ; preds = %if.end125, %if.end148, %if.then153
  %conv141341 = phi double [ %conv141342, %if.end125 ], [ %conv141340, %if.end148 ], [ %conv141340, %if.then153 ]
  %conv46329 = phi double [ %conv46330, %if.end125 ], [ %conv46330, %if.end148 ], [ %conv141, %if.then153 ]
  br i1 %cmp159.not, label %if.end210, label %land.lhs.true161, !dbg !3035

land.lhs.true161:                                 ; preds = %if.end157
  %31 = load i32, ptr %colorspace, align 4, !dbg !3037, !tbaa !891
  %cmp162 = icmp eq i32 %31, 12, !dbg !3038
  br i1 %cmp162, label %land.lhs.true164, label %if.end210, !dbg !3039

land.lhs.true164:                                 ; preds = %land.lhs.true161
  %32 = load i32, ptr %colorspace165, align 4, !dbg !3040, !tbaa !891
  %cmp166 = icmp eq i32 %32, 12, !dbg !3041
  br i1 %cmp166, label %if.then168, label %if.end210, !dbg !3042

if.then168:                                       ; preds = %land.lhs.true164
  br i1 %cmp169, label %cond.end175, label %cond.false172, !dbg !3043

cond.false172:                                    ; preds = %if.then168
  %add.ptr = getelementptr inbounds i16, ptr %call10, i64 %x.0321, !dbg !3043
  %33 = load i16, ptr %add.ptr, align 2, !dbg !3043, !tbaa !1124
  %conv174 = zext i16 %33 to i32, !dbg !3043
  br label %cond.end175, !dbg !3043

cond.end175:                                      ; preds = %if.then168, %cond.false172
  %cond176 = phi i32 [ %conv174, %cond.false172 ], [ 0, %if.then168 ], !dbg !3043
  %conv177 = sitofp i32 %cond176 to float, !dbg !3043
  br i1 %cmp180, label %cond.end186, label %cond.false183, !dbg !3045

cond.false183:                                    ; preds = %cond.end175
  %add.ptr179 = getelementptr inbounds i16, ptr %call11, i64 %x.0321, !dbg !3045
  %34 = load i16, ptr %add.ptr179, align 2, !dbg !3045, !tbaa !1124
  %conv185 = zext i16 %34 to i32, !dbg !3045
  br label %cond.end186, !dbg !3045

cond.end186:                                      ; preds = %cond.end175, %cond.false183
  %cond187 = phi i32 [ %conv185, %cond.false183 ], [ 0, %cond.end175 ], !dbg !3045
  %conv188 = sitofp i32 %cond187 to float, !dbg !3045
  %35 = fneg float %conv32, !dbg !3046
  %neg190 = fmul float %35, %conv188, !dbg !3046
  %36 = call float @llvm.fmuladd.f32(float %conv19, float %conv177, float %neg190), !dbg !3046
  %37 = call float @llvm.fabs.f32(float %36), !dbg !3047
  %38 = fpext float %37 to double, !dbg !3047
  %mul192 = fmul double %38, 0x3EF0001000100010, !dbg !3048
  %conv193 = fptrunc double %mul192 to float, !dbg !3049
  call void @llvm.dbg.value(metadata float %conv193, metadata !2913, metadata !DIExpression()), !dbg !2948
  %conv194 = fpext float %conv193 to double, !dbg !3050
  %cmp196 = fcmp olt double %conv194345, %conv194, !dbg !3052
  br i1 %cmp196, label %if.then198, label %if.end201, !dbg !3053

if.then198:                                       ; preds = %cond.end186
  store double %conv194, ptr %arrayidx195, align 16, !dbg !3054, !tbaa !821
  br label %if.end201, !dbg !3055

if.end201:                                        ; preds = %if.then198, %cond.end186
  %conv194343 = phi double [ %conv194, %if.then198 ], [ %conv194345, %cond.end186 ]
  %cmp204 = fcmp olt double %conv46329, %conv194, !dbg !3056
  br i1 %cmp204, label %if.then206, label %if.end210, !dbg !3058

if.then206:                                       ; preds = %if.end201
  store double %conv194, ptr %arrayidx54, align 8, !dbg !3059, !tbaa !821
  br label %if.end210, !dbg !3060

if.end210:                                        ; preds = %if.end201, %if.then206, %land.lhs.true164, %land.lhs.true161, %if.end157
  %conv194344 = phi double [ %conv194343, %if.end201 ], [ %conv194343, %if.then206 ], [ %conv194345, %land.lhs.true164 ], [ %conv194345, %land.lhs.true161 ], [ %conv194345, %if.end157 ]
  %conv46328 = phi double [ %conv46329, %if.end201 ], [ %conv194, %if.then206 ], [ %conv46329, %land.lhs.true164 ], [ %conv46329, %land.lhs.true161 ], [ %conv46329, %if.end157 ]
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0317, i64 1, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2909, metadata !DIExpression()), !dbg !2932
  %incdec.ptr211 = getelementptr inbounds %struct._PixelPacket, ptr %q.0319, i64 1, !dbg !3062
  call void @llvm.dbg.value(metadata ptr %incdec.ptr211, metadata !2910, metadata !DIExpression()), !dbg !2932
  %inc = add nuw nsw i64 %x.0321, 1, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2912, metadata !DIExpression()), !dbg !2932
  %exitcond.not = icmp eq i64 %inc, %3, !dbg !2941
  br i1 %exitcond.not, label %for.body215.preheader, label %for.body16, !dbg !2942, !llvm.loop !3064

for.body215.preheader:                            ; preds = %if.end210, %if.end9
  br label %for.body215, !dbg !3066

for.body215:                                      ; preds = %for.body215.preheader, %for.inc224
  %i.0346 = phi i64 [ %inc225, %for.inc224 ], [ 0, %for.body215.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0346, metadata !2911, metadata !DIExpression()), !dbg !2932
  %arrayidx216 = getelementptr inbounds [48 x double], ptr %channel_distortion, i64 0, i64 %i.0346, !dbg !3068
  %39 = load double, ptr %arrayidx216, align 8, !dbg !3068, !tbaa !821
  %arrayidx217 = getelementptr inbounds double, ptr %distortion, i64 %i.0346, !dbg !3071
  %40 = load double, ptr %arrayidx217, align 8, !dbg !3071, !tbaa !821
  %cmp218 = fcmp ogt double %39, %40, !dbg !3072
  br i1 %cmp218, label %if.then220, label %for.inc224, !dbg !3073

if.then220:                                       ; preds = %for.body215
  store double %39, ptr %arrayidx217, align 8, !dbg !3074, !tbaa !821
  br label %for.inc224, !dbg !3075

for.inc224:                                       ; preds = %for.body215, %if.then220
  %inc225 = add nuw nsw i64 %i.0346, 1, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %inc225, metadata !2911, metadata !DIExpression()), !dbg !2932
  %exitcond350.not = icmp eq i64 %inc225, 48, !dbg !3077
  br i1 %exitcond350.not, label %cleanup, label %for.body215, !dbg !3066, !llvm.loop !3078

cleanup:                                          ; preds = %for.inc224, %if.end, %for.body
  %status.1 = phi i32 [ 0, %for.body ], [ 0, %if.end ], [ 1, %for.inc224 ], !dbg !2919
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !2901, metadata !DIExpression()), !dbg !2919
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %channel_distortion) #11, !dbg !3080
  %inc234 = add nuw nsw i64 %y.0348, 1, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %inc234, metadata !2902, metadata !DIExpression()), !dbg !2919
  %41 = load i64, ptr %rows, align 8, !dbg !2922, !tbaa !841
  %cmp = icmp slt i64 %inc234, %41, !dbg !2923
  br i1 %cmp, label %for.body, label %for.end235, !dbg !2924, !llvm.loop !3082

for.end235:                                       ; preds = %cleanup, %entry
  %status.0.lcssa = phi i32 [ 1, %entry ], [ %status.1, %cleanup ], !dbg !3084
  %call236 = call ptr @DestroyCacheView(ptr noundef %call1) #11, !dbg !3085
  call void @llvm.dbg.value(metadata ptr %call236, metadata !2900, metadata !DIExpression()), !dbg !2919
  %call237 = call ptr @DestroyCacheView(ptr noundef %call) #11, !dbg !3086
  call void @llvm.dbg.value(metadata ptr %call237, metadata !2899, metadata !DIExpression()), !dbg !2919
  ret i32 %status.0.lcssa, !dbg !3087
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !3088 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3090, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !3091, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 %channel, metadata !3092, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3094, metadata !DIExpression()), !dbg !3096
  %call = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr noundef %distortion, ptr noundef %exception), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %call, metadata !3095, metadata !DIExpression()), !dbg !3096
  %and = and i32 %channel, 1, !dbg !3098
  %cmp.not = icmp eq i32 %and, 0, !dbg !3100
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3101

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds double, ptr %distortion, i64 1, !dbg !3102
  %0 = load double, ptr %arrayidx, align 8, !dbg !3102, !tbaa !821
  %call1 = tail call double @sqrt(double noundef %0) #11, !dbg !3103
  %div = fdiv double 1.000000e+00, %call1, !dbg !3104
  call void @llvm.dbg.value(metadata double %div, metadata !3105, metadata !DIExpression()) #11, !dbg !3108
  %1 = tail call double @llvm.fabs.f64(double %div) #11, !dbg !3110
  %cmp.i = fcmp olt double %1, 0x3DA5FD7FE1796495, !dbg !3112
  br i1 %cmp.i, label %MagickLog10.exit, label %if.end.i, !dbg !3113

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call double @log10(double noundef %1) #11, !dbg !3114
  %phi.bo = fmul double %call1.i, 2.000000e+01, !dbg !3115
  br label %MagickLog10.exit, !dbg !3115

MagickLog10.exit:                                 ; preds = %if.then, %if.end.i
  %retval.0.i = phi double [ %phi.bo, %if.end.i ], [ -2.200000e+02, %if.then ]
  store double %retval.0.i, ptr %arrayidx, align 8, !dbg !3116, !tbaa !821
  br label %if.end, !dbg !3117

if.end:                                           ; preds = %MagickLog10.exit, %entry
  %and4 = and i32 %channel, 2, !dbg !3118
  %cmp5.not = icmp eq i32 %and4, 0, !dbg !3120
  br i1 %cmp5.not, label %if.end13, label %if.then6, !dbg !3121

if.then6:                                         ; preds = %if.end
  %arrayidx7 = getelementptr inbounds double, ptr %distortion, i64 2, !dbg !3122
  %2 = load double, ptr %arrayidx7, align 8, !dbg !3122, !tbaa !821
  %call8 = tail call double @sqrt(double noundef %2) #11, !dbg !3123
  %div9 = fdiv double 1.000000e+00, %call8, !dbg !3124
  call void @llvm.dbg.value(metadata double %div9, metadata !3105, metadata !DIExpression()) #11, !dbg !3125
  %3 = tail call double @llvm.fabs.f64(double %div9) #11, !dbg !3127
  %cmp.i72 = fcmp olt double %3, 0x3DA5FD7FE1796495, !dbg !3128
  br i1 %cmp.i72, label %MagickLog10.exit76, label %if.end.i74, !dbg !3129

if.end.i74:                                       ; preds = %if.then6
  %call1.i73 = tail call double @log10(double noundef %3) #11, !dbg !3130
  %phi.bo97 = fmul double %call1.i73, 2.000000e+01, !dbg !3131
  br label %MagickLog10.exit76, !dbg !3131

MagickLog10.exit76:                               ; preds = %if.then6, %if.end.i74
  %retval.0.i75 = phi double [ %phi.bo97, %if.end.i74 ], [ -2.200000e+02, %if.then6 ]
  store double %retval.0.i75, ptr %arrayidx7, align 8, !dbg !3132, !tbaa !821
  br label %if.end13, !dbg !3133

if.end13:                                         ; preds = %MagickLog10.exit76, %if.end
  %and14 = and i32 %channel, 4, !dbg !3134
  %cmp15.not = icmp eq i32 %and14, 0, !dbg !3136
  br i1 %cmp15.not, label %if.end23, label %if.then16, !dbg !3137

if.then16:                                        ; preds = %if.end13
  %arrayidx17 = getelementptr inbounds double, ptr %distortion, i64 4, !dbg !3138
  %4 = load double, ptr %arrayidx17, align 8, !dbg !3138, !tbaa !821
  %call18 = tail call double @sqrt(double noundef %4) #11, !dbg !3139
  %div19 = fdiv double 1.000000e+00, %call18, !dbg !3140
  call void @llvm.dbg.value(metadata double %div19, metadata !3105, metadata !DIExpression()) #11, !dbg !3141
  %5 = tail call double @llvm.fabs.f64(double %div19) #11, !dbg !3143
  %cmp.i77 = fcmp olt double %5, 0x3DA5FD7FE1796495, !dbg !3144
  br i1 %cmp.i77, label %MagickLog10.exit81, label %if.end.i79, !dbg !3145

if.end.i79:                                       ; preds = %if.then16
  %call1.i78 = tail call double @log10(double noundef %5) #11, !dbg !3146
  %phi.bo98 = fmul double %call1.i78, 2.000000e+01, !dbg !3147
  br label %MagickLog10.exit81, !dbg !3147

MagickLog10.exit81:                               ; preds = %if.then16, %if.end.i79
  %retval.0.i80 = phi double [ %phi.bo98, %if.end.i79 ], [ -2.200000e+02, %if.then16 ]
  store double %retval.0.i80, ptr %arrayidx17, align 8, !dbg !3148, !tbaa !821
  br label %if.end23, !dbg !3149

if.end23:                                         ; preds = %MagickLog10.exit81, %if.end13
  %and24 = and i32 %channel, 8, !dbg !3150
  %cmp25.not = icmp eq i32 %and24, 0, !dbg !3152
  br i1 %cmp25.not, label %if.end34, label %land.lhs.true, !dbg !3153

land.lhs.true:                                    ; preds = %if.end23
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !3154
  %6 = load i32, ptr %matte, align 8, !dbg !3154, !tbaa !1175
  %cmp26.not = icmp eq i32 %6, 0, !dbg !3155
  br i1 %cmp26.not, label %if.end34, label %if.then27, !dbg !3156

if.then27:                                        ; preds = %land.lhs.true
  %arrayidx28 = getelementptr inbounds double, ptr %distortion, i64 8, !dbg !3157
  %7 = load double, ptr %arrayidx28, align 8, !dbg !3157, !tbaa !821
  %call29 = tail call double @sqrt(double noundef %7) #11, !dbg !3158
  %div30 = fdiv double 1.000000e+00, %call29, !dbg !3159
  call void @llvm.dbg.value(metadata double %div30, metadata !3105, metadata !DIExpression()) #11, !dbg !3160
  %8 = tail call double @llvm.fabs.f64(double %div30) #11, !dbg !3162
  %cmp.i82 = fcmp olt double %8, 0x3DA5FD7FE1796495, !dbg !3163
  br i1 %cmp.i82, label %MagickLog10.exit86, label %if.end.i84, !dbg !3164

if.end.i84:                                       ; preds = %if.then27
  %call1.i83 = tail call double @log10(double noundef %8) #11, !dbg !3165
  %phi.bo99 = fmul double %call1.i83, 2.000000e+01, !dbg !3166
  br label %MagickLog10.exit86, !dbg !3166

MagickLog10.exit86:                               ; preds = %if.then27, %if.end.i84
  %retval.0.i85 = phi double [ %phi.bo99, %if.end.i84 ], [ -2.200000e+02, %if.then27 ]
  store double %retval.0.i85, ptr %arrayidx28, align 8, !dbg !3167, !tbaa !821
  br label %if.end34, !dbg !3168

if.end34:                                         ; preds = %MagickLog10.exit86, %land.lhs.true, %if.end23
  %and35 = and i32 %channel, 32, !dbg !3169
  %cmp36.not = icmp eq i32 %and35, 0, !dbg !3171
  br i1 %cmp36.not, label %if.end46, label %land.lhs.true37, !dbg !3172

land.lhs.true37:                                  ; preds = %if.end34
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !3173
  %9 = load i32, ptr %colorspace, align 4, !dbg !3173, !tbaa !891
  %cmp38 = icmp eq i32 %9, 12, !dbg !3174
  br i1 %cmp38, label %if.then39, label %if.end46, !dbg !3175

if.then39:                                        ; preds = %land.lhs.true37
  %arrayidx40 = getelementptr inbounds double, ptr %distortion, i64 32, !dbg !3176
  %10 = load double, ptr %arrayidx40, align 8, !dbg !3176, !tbaa !821
  %call41 = tail call double @sqrt(double noundef %10) #11, !dbg !3177
  %div42 = fdiv double 1.000000e+00, %call41, !dbg !3178
  call void @llvm.dbg.value(metadata double %div42, metadata !3105, metadata !DIExpression()) #11, !dbg !3179
  %11 = tail call double @llvm.fabs.f64(double %div42) #11, !dbg !3181
  %cmp.i87 = fcmp olt double %11, 0x3DA5FD7FE1796495, !dbg !3182
  br i1 %cmp.i87, label %MagickLog10.exit91, label %if.end.i89, !dbg !3183

if.end.i89:                                       ; preds = %if.then39
  %call1.i88 = tail call double @log10(double noundef %11) #11, !dbg !3184
  %phi.bo101 = fmul double %call1.i88, 2.000000e+01, !dbg !3185
  br label %MagickLog10.exit91, !dbg !3185

MagickLog10.exit91:                               ; preds = %if.then39, %if.end.i89
  %retval.0.i90 = phi double [ %phi.bo101, %if.end.i89 ], [ -2.200000e+02, %if.then39 ]
  store double %retval.0.i90, ptr %arrayidx40, align 8, !dbg !3186, !tbaa !821
  br label %if.end46, !dbg !3187

if.end46:                                         ; preds = %MagickLog10.exit91, %land.lhs.true37, %if.end34
  %arrayidx47 = getelementptr inbounds double, ptr %distortion, i64 47, !dbg !3188
  %12 = load double, ptr %arrayidx47, align 8, !dbg !3188, !tbaa !821
  %call48 = tail call double @sqrt(double noundef %12) #11, !dbg !3189
  %div49 = fdiv double 1.000000e+00, %call48, !dbg !3190
  call void @llvm.dbg.value(metadata double %div49, metadata !3105, metadata !DIExpression()) #11, !dbg !3191
  %13 = tail call double @llvm.fabs.f64(double %div49) #11, !dbg !3193
  %cmp.i92 = fcmp olt double %13, 0x3DA5FD7FE1796495, !dbg !3194
  br i1 %cmp.i92, label %MagickLog10.exit96, label %if.end.i94, !dbg !3195

if.end.i94:                                       ; preds = %if.end46
  %call1.i93 = tail call double @log10(double noundef %13) #11, !dbg !3196
  %phi.bo100 = fmul double %call1.i93, 2.000000e+01, !dbg !3197
  br label %MagickLog10.exit96, !dbg !3197

MagickLog10.exit96:                               ; preds = %if.end46, %if.end.i94
  %retval.0.i95 = phi double [ %phi.bo100, %if.end.i94 ], [ -2.200000e+02, %if.end46 ]
  store double %retval.0.i95, ptr %arrayidx47, align 8, !dbg !3198, !tbaa !821
  ret i32 %call, !dbg !3199
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @GetPerceptualHashDistortion(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %channel, ptr nocapture noundef %distortion, ptr noundef %exception) unnamed_addr #0 !dbg !3200 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3202, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !3203, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 %channel, metadata !3204, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %distortion, metadata !3205, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3206, metadata !DIExpression()), !dbg !3211
  %call = tail call ptr @GetImageChannelPerceptualHash(ptr noundef %image, ptr noundef %exception) #11, !dbg !3212
  call void @llvm.dbg.value(metadata ptr %call, metadata !3207, metadata !DIExpression()), !dbg !3211
  %cmp = icmp eq ptr %call, null, !dbg !3213
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3215

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @GetImageChannelPerceptualHash(ptr noundef %reconstruct_image, ptr noundef %exception) #11, !dbg !3216
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3208, metadata !DIExpression()), !dbg !3211
  %cmp2 = icmp eq ptr %call1, null, !dbg !3217
  br i1 %cmp2, label %cleanup.sink.split, label %for.cond.preheader, !dbg !3219

for.cond.preheader:                               ; preds = %if.end
  %and = and i32 %channel, 1
  %cmp7.not = icmp eq i32 %and, 0
  %and16 = and i32 %channel, 2
  %cmp17.not = icmp eq i32 %and16, 0
  %and29 = and i32 %channel, 4
  %cmp30.not = icmp eq i32 %and29, 0
  %and42 = and i32 %channel, 8
  %cmp43.not = icmp eq i32 %and42, 0
  %and59 = and i32 %channel, 32
  %cmp60.not = icmp eq i32 %and59, 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3210, metadata !DIExpression()), !dbg !3211
  %arrayidx = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 1
  %arrayidx10 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 1
  %arrayidx13 = getelementptr inbounds double, ptr %distortion, i64 1
  %arrayidx14 = getelementptr inbounds double, ptr %distortion, i64 47
  %arrayidx19 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 2
  %arrayidx22 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 2
  %arrayidx26 = getelementptr inbounds double, ptr %distortion, i64 2
  %arrayidx32 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 4
  %arrayidx35 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 4
  %arrayidx39 = getelementptr inbounds double, ptr %distortion, i64 4
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %matte46 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 6
  %arrayidx49 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 8
  %arrayidx52 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 8
  %arrayidx56 = getelementptr inbounds double, ptr %distortion, i64 8
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace64 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 1
  %arrayidx67 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 32
  %arrayidx70 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 32
  %arrayidx74 = getelementptr inbounds double, ptr %distortion, i64 32
  br label %for.body, !dbg !3220

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0286 = phi i64 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.0286, metadata !3210, metadata !DIExpression()), !dbg !3211
  br i1 %cmp7.not, label %if.end15, label %if.then8, !dbg !3222

if.then8:                                         ; preds = %for.body
  %arrayidx9 = getelementptr inbounds [32 x double], ptr %arrayidx, i64 0, i64 %i.0286, !dbg !3225
  %0 = load double, ptr %arrayidx9, align 8, !dbg !3225, !tbaa !821
  %arrayidx12 = getelementptr inbounds [32 x double], ptr %arrayidx10, i64 0, i64 %i.0286, !dbg !3228
  %1 = load double, ptr %arrayidx12, align 8, !dbg !3228, !tbaa !821
  %sub = fsub double %0, %1, !dbg !3229
  call void @llvm.dbg.value(metadata double %sub, metadata !3209, metadata !DIExpression()), !dbg !3211
  %2 = load double, ptr %arrayidx13, align 8, !dbg !3230, !tbaa !821
  %3 = tail call double @llvm.fmuladd.f64(double %sub, double %sub, double %2), !dbg !3230
  store double %3, ptr %arrayidx13, align 8, !dbg !3230, !tbaa !821
  %4 = load double, ptr %arrayidx14, align 8, !dbg !3231, !tbaa !821
  %5 = tail call double @llvm.fmuladd.f64(double %sub, double %sub, double %4), !dbg !3231
  store double %5, ptr %arrayidx14, align 8, !dbg !3231, !tbaa !821
  br label %if.end15, !dbg !3232

if.end15:                                         ; preds = %if.then8, %for.body
  br i1 %cmp17.not, label %if.end28, label %if.then18, !dbg !3233

if.then18:                                        ; preds = %if.end15
  %arrayidx21 = getelementptr inbounds [32 x double], ptr %arrayidx19, i64 0, i64 %i.0286, !dbg !3234
  %6 = load double, ptr %arrayidx21, align 8, !dbg !3234, !tbaa !821
  %arrayidx24 = getelementptr inbounds [32 x double], ptr %arrayidx22, i64 0, i64 %i.0286, !dbg !3237
  %7 = load double, ptr %arrayidx24, align 8, !dbg !3237, !tbaa !821
  %sub25 = fsub double %6, %7, !dbg !3238
  call void @llvm.dbg.value(metadata double %sub25, metadata !3209, metadata !DIExpression()), !dbg !3211
  %8 = load double, ptr %arrayidx26, align 8, !dbg !3239, !tbaa !821
  %9 = tail call double @llvm.fmuladd.f64(double %sub25, double %sub25, double %8), !dbg !3239
  store double %9, ptr %arrayidx26, align 8, !dbg !3239, !tbaa !821
  %10 = load double, ptr %arrayidx14, align 8, !dbg !3240, !tbaa !821
  %11 = tail call double @llvm.fmuladd.f64(double %sub25, double %sub25, double %10), !dbg !3240
  store double %11, ptr %arrayidx14, align 8, !dbg !3240, !tbaa !821
  br label %if.end28, !dbg !3241

if.end28:                                         ; preds = %if.then18, %if.end15
  br i1 %cmp30.not, label %if.end41, label %if.then31, !dbg !3242

if.then31:                                        ; preds = %if.end28
  %arrayidx34 = getelementptr inbounds [32 x double], ptr %arrayidx32, i64 0, i64 %i.0286, !dbg !3243
  %12 = load double, ptr %arrayidx34, align 8, !dbg !3243, !tbaa !821
  %arrayidx37 = getelementptr inbounds [32 x double], ptr %arrayidx35, i64 0, i64 %i.0286, !dbg !3246
  %13 = load double, ptr %arrayidx37, align 8, !dbg !3246, !tbaa !821
  %sub38 = fsub double %12, %13, !dbg !3247
  call void @llvm.dbg.value(metadata double %sub38, metadata !3209, metadata !DIExpression()), !dbg !3211
  %14 = load double, ptr %arrayidx39, align 8, !dbg !3248, !tbaa !821
  %15 = tail call double @llvm.fmuladd.f64(double %sub38, double %sub38, double %14), !dbg !3248
  store double %15, ptr %arrayidx39, align 8, !dbg !3248, !tbaa !821
  %16 = load double, ptr %arrayidx14, align 8, !dbg !3249, !tbaa !821
  %17 = tail call double @llvm.fmuladd.f64(double %sub38, double %sub38, double %16), !dbg !3249
  store double %17, ptr %arrayidx14, align 8, !dbg !3249, !tbaa !821
  br label %if.end41, !dbg !3250

if.end41:                                         ; preds = %if.then31, %if.end28
  br i1 %cmp43.not, label %if.end58, label %land.lhs.true, !dbg !3251

land.lhs.true:                                    ; preds = %if.end41
  %18 = load i32, ptr %matte, align 8, !dbg !3253, !tbaa !1175
  %cmp44.not = icmp eq i32 %18, 0, !dbg !3254
  br i1 %cmp44.not, label %if.end58, label %land.lhs.true45, !dbg !3255

land.lhs.true45:                                  ; preds = %land.lhs.true
  %19 = load i32, ptr %matte46, align 8, !dbg !3256, !tbaa !1175
  %cmp47.not = icmp eq i32 %19, 0, !dbg !3257
  br i1 %cmp47.not, label %if.end58, label %if.then48, !dbg !3258

if.then48:                                        ; preds = %land.lhs.true45
  %arrayidx51 = getelementptr inbounds [32 x double], ptr %arrayidx49, i64 0, i64 %i.0286, !dbg !3259
  %20 = load double, ptr %arrayidx51, align 8, !dbg !3259, !tbaa !821
  %arrayidx54 = getelementptr inbounds [32 x double], ptr %arrayidx52, i64 0, i64 %i.0286, !dbg !3261
  %21 = load double, ptr %arrayidx54, align 8, !dbg !3261, !tbaa !821
  %sub55 = fsub double %20, %21, !dbg !3262
  call void @llvm.dbg.value(metadata double %sub55, metadata !3209, metadata !DIExpression()), !dbg !3211
  %22 = load double, ptr %arrayidx56, align 8, !dbg !3263, !tbaa !821
  %23 = tail call double @llvm.fmuladd.f64(double %sub55, double %sub55, double %22), !dbg !3263
  store double %23, ptr %arrayidx56, align 8, !dbg !3263, !tbaa !821
  %24 = load double, ptr %arrayidx14, align 8, !dbg !3264, !tbaa !821
  %25 = tail call double @llvm.fmuladd.f64(double %sub55, double %sub55, double %24), !dbg !3264
  store double %25, ptr %arrayidx14, align 8, !dbg !3264, !tbaa !821
  br label %if.end58, !dbg !3265

if.end58:                                         ; preds = %if.then48, %land.lhs.true45, %land.lhs.true, %if.end41
  br i1 %cmp60.not, label %for.inc, label %land.lhs.true61, !dbg !3266

land.lhs.true61:                                  ; preds = %if.end58
  %26 = load i32, ptr %colorspace, align 4, !dbg !3268, !tbaa !891
  %cmp62 = icmp eq i32 %26, 12, !dbg !3269
  br i1 %cmp62, label %land.lhs.true63, label %for.inc, !dbg !3270

land.lhs.true63:                                  ; preds = %land.lhs.true61
  %27 = load i32, ptr %colorspace64, align 4, !dbg !3271, !tbaa !891
  %cmp65 = icmp eq i32 %27, 12, !dbg !3272
  br i1 %cmp65, label %if.then66, label %for.inc, !dbg !3273

if.then66:                                        ; preds = %land.lhs.true63
  %arrayidx69 = getelementptr inbounds [32 x double], ptr %arrayidx67, i64 0, i64 %i.0286, !dbg !3274
  %28 = load double, ptr %arrayidx69, align 8, !dbg !3274, !tbaa !821
  %arrayidx72 = getelementptr inbounds [32 x double], ptr %arrayidx70, i64 0, i64 %i.0286, !dbg !3276
  %29 = load double, ptr %arrayidx72, align 8, !dbg !3276, !tbaa !821
  %sub73 = fsub double %28, %29, !dbg !3277
  call void @llvm.dbg.value(metadata double %sub73, metadata !3209, metadata !DIExpression()), !dbg !3211
  %30 = load double, ptr %arrayidx74, align 8, !dbg !3278, !tbaa !821
  %31 = tail call double @llvm.fmuladd.f64(double %sub73, double %sub73, double %30), !dbg !3278
  store double %31, ptr %arrayidx74, align 8, !dbg !3278, !tbaa !821
  %32 = load double, ptr %arrayidx14, align 8, !dbg !3279, !tbaa !821
  %33 = tail call double @llvm.fmuladd.f64(double %sub73, double %sub73, double %32), !dbg !3279
  store double %33, ptr %arrayidx14, align 8, !dbg !3279, !tbaa !821
  br label %for.inc, !dbg !3280

for.inc:                                          ; preds = %if.end58, %land.lhs.true61, %land.lhs.true63, %if.then66
  %inc = add nuw nsw i64 %i.0286, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3210, metadata !DIExpression()), !dbg !3211
  %exitcond.not = icmp eq i64 %inc, 7, !dbg !3282
  br i1 %exitcond.not, label %for.body79, label %for.body, !dbg !3220, !llvm.loop !3283

for.body79:                                       ; preds = %for.inc, %for.inc156
  %i.1292 = phi i64 [ %inc157, %for.inc156 ], [ 0, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.1292, metadata !3210, metadata !DIExpression()), !dbg !3211
  br i1 %cmp7.not, label %if.end91, label %if.then82, !dbg !3285

if.then82:                                        ; preds = %for.body79
  %arrayidx84 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 1, i32 1, i64 %i.1292, !dbg !3289
  %34 = load double, ptr %arrayidx84, align 8, !dbg !3289, !tbaa !821
  %arrayidx87 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 1, i32 1, i64 %i.1292, !dbg !3292
  %35 = load double, ptr %arrayidx87, align 8, !dbg !3292, !tbaa !821
  %sub88 = fsub double %34, %35, !dbg !3293
  call void @llvm.dbg.value(metadata double %sub88, metadata !3209, metadata !DIExpression()), !dbg !3211
  %36 = load double, ptr %arrayidx13, align 8, !dbg !3294, !tbaa !821
  %37 = tail call double @llvm.fmuladd.f64(double %sub88, double %sub88, double %36), !dbg !3294
  store double %37, ptr %arrayidx13, align 8, !dbg !3294, !tbaa !821
  %38 = load double, ptr %arrayidx14, align 8, !dbg !3295, !tbaa !821
  %39 = tail call double @llvm.fmuladd.f64(double %sub88, double %sub88, double %38), !dbg !3295
  store double %39, ptr %arrayidx14, align 8, !dbg !3295, !tbaa !821
  br label %if.end91, !dbg !3296

if.end91:                                         ; preds = %if.then82, %for.body79
  br i1 %cmp17.not, label %if.end104, label %if.then94, !dbg !3297

if.then94:                                        ; preds = %if.end91
  %arrayidx97 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 2, i32 1, i64 %i.1292, !dbg !3298
  %40 = load double, ptr %arrayidx97, align 8, !dbg !3298, !tbaa !821
  %arrayidx100 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 2, i32 1, i64 %i.1292, !dbg !3301
  %41 = load double, ptr %arrayidx100, align 8, !dbg !3301, !tbaa !821
  %sub101 = fsub double %40, %41, !dbg !3302
  call void @llvm.dbg.value(metadata double %sub101, metadata !3209, metadata !DIExpression()), !dbg !3211
  %42 = load double, ptr %arrayidx26, align 8, !dbg !3303, !tbaa !821
  %43 = tail call double @llvm.fmuladd.f64(double %sub101, double %sub101, double %42), !dbg !3303
  store double %43, ptr %arrayidx26, align 8, !dbg !3303, !tbaa !821
  %44 = load double, ptr %arrayidx14, align 8, !dbg !3304, !tbaa !821
  %45 = tail call double @llvm.fmuladd.f64(double %sub101, double %sub101, double %44), !dbg !3304
  store double %45, ptr %arrayidx14, align 8, !dbg !3304, !tbaa !821
  br label %if.end104, !dbg !3305

if.end104:                                        ; preds = %if.then94, %if.end91
  br i1 %cmp30.not, label %if.end117, label %if.then107, !dbg !3306

if.then107:                                       ; preds = %if.end104
  %arrayidx110 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 4, i32 1, i64 %i.1292, !dbg !3307
  %46 = load double, ptr %arrayidx110, align 8, !dbg !3307, !tbaa !821
  %arrayidx113 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 4, i32 1, i64 %i.1292, !dbg !3310
  %47 = load double, ptr %arrayidx113, align 8, !dbg !3310, !tbaa !821
  %sub114 = fsub double %46, %47, !dbg !3311
  call void @llvm.dbg.value(metadata double %sub114, metadata !3209, metadata !DIExpression()), !dbg !3211
  %48 = load double, ptr %arrayidx39, align 8, !dbg !3312, !tbaa !821
  %49 = tail call double @llvm.fmuladd.f64(double %sub114, double %sub114, double %48), !dbg !3312
  store double %49, ptr %arrayidx39, align 8, !dbg !3312, !tbaa !821
  %50 = load double, ptr %arrayidx14, align 8, !dbg !3313, !tbaa !821
  %51 = tail call double @llvm.fmuladd.f64(double %sub114, double %sub114, double %50), !dbg !3313
  store double %51, ptr %arrayidx14, align 8, !dbg !3313, !tbaa !821
  br label %if.end117, !dbg !3314

if.end117:                                        ; preds = %if.then107, %if.end104
  br i1 %cmp43.not, label %if.end136, label %land.lhs.true120, !dbg !3315

land.lhs.true120:                                 ; preds = %if.end117
  %52 = load i32, ptr %matte, align 8, !dbg !3317, !tbaa !1175
  %cmp122.not = icmp eq i32 %52, 0, !dbg !3318
  br i1 %cmp122.not, label %if.end136, label %land.lhs.true123, !dbg !3319

land.lhs.true123:                                 ; preds = %land.lhs.true120
  %53 = load i32, ptr %matte46, align 8, !dbg !3320, !tbaa !1175
  %cmp125.not = icmp eq i32 %53, 0, !dbg !3321
  br i1 %cmp125.not, label %if.end136, label %if.then126, !dbg !3322

if.then126:                                       ; preds = %land.lhs.true123
  %arrayidx129 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 8, i32 1, i64 %i.1292, !dbg !3323
  %54 = load double, ptr %arrayidx129, align 8, !dbg !3323, !tbaa !821
  %arrayidx132 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 8, i32 1, i64 %i.1292, !dbg !3325
  %55 = load double, ptr %arrayidx132, align 8, !dbg !3325, !tbaa !821
  %sub133 = fsub double %54, %55, !dbg !3326
  call void @llvm.dbg.value(metadata double %sub133, metadata !3209, metadata !DIExpression()), !dbg !3211
  %56 = load double, ptr %arrayidx56, align 8, !dbg !3327, !tbaa !821
  %57 = tail call double @llvm.fmuladd.f64(double %sub133, double %sub133, double %56), !dbg !3327
  store double %57, ptr %arrayidx56, align 8, !dbg !3327, !tbaa !821
  %58 = load double, ptr %arrayidx14, align 8, !dbg !3328, !tbaa !821
  %59 = tail call double @llvm.fmuladd.f64(double %sub133, double %sub133, double %58), !dbg !3328
  store double %59, ptr %arrayidx14, align 8, !dbg !3328, !tbaa !821
  br label %if.end136, !dbg !3329

if.end136:                                        ; preds = %if.then126, %land.lhs.true123, %land.lhs.true120, %if.end117
  br i1 %cmp60.not, label %for.inc156, label %land.lhs.true139, !dbg !3330

land.lhs.true139:                                 ; preds = %if.end136
  %60 = load i32, ptr %colorspace, align 4, !dbg !3332, !tbaa !891
  %cmp141 = icmp eq i32 %60, 12, !dbg !3333
  br i1 %cmp141, label %land.lhs.true142, label %for.inc156, !dbg !3334

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %61 = load i32, ptr %colorspace64, align 4, !dbg !3335, !tbaa !891
  %cmp144 = icmp eq i32 %61, 12, !dbg !3336
  br i1 %cmp144, label %if.then145, label %for.inc156, !dbg !3337

if.then145:                                       ; preds = %land.lhs.true142
  %arrayidx148 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call1, i64 32, i32 1, i64 %i.1292, !dbg !3338
  %62 = load double, ptr %arrayidx148, align 8, !dbg !3338, !tbaa !821
  %arrayidx151 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %call, i64 32, i32 1, i64 %i.1292, !dbg !3340
  %63 = load double, ptr %arrayidx151, align 8, !dbg !3340, !tbaa !821
  %sub152 = fsub double %62, %63, !dbg !3341
  call void @llvm.dbg.value(metadata double %sub152, metadata !3209, metadata !DIExpression()), !dbg !3211
  %64 = load double, ptr %arrayidx74, align 8, !dbg !3342, !tbaa !821
  %65 = tail call double @llvm.fmuladd.f64(double %sub152, double %sub152, double %64), !dbg !3342
  store double %65, ptr %arrayidx74, align 8, !dbg !3342, !tbaa !821
  %66 = load double, ptr %arrayidx14, align 8, !dbg !3343, !tbaa !821
  %67 = tail call double @llvm.fmuladd.f64(double %sub152, double %sub152, double %66), !dbg !3343
  store double %67, ptr %arrayidx14, align 8, !dbg !3343, !tbaa !821
  br label %for.inc156, !dbg !3344

for.inc156:                                       ; preds = %if.end136, %land.lhs.true139, %land.lhs.true142, %if.then145
  %inc157 = add nuw nsw i64 %i.1292, 1, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %inc157, metadata !3210, metadata !DIExpression()), !dbg !3211
  %exitcond298.not = icmp eq i64 %inc157, 7, !dbg !3346
  br i1 %exitcond298.not, label %for.end158, label %for.body79, !dbg !3347, !llvm.loop !3348

for.end158:                                       ; preds = %for.inc156
  %call159 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #11, !dbg !3350
  call void @llvm.dbg.value(metadata ptr %call159, metadata !3208, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata ptr %call160, metadata !3207, metadata !DIExpression()), !dbg !3211
  br label %cleanup.sink.split, !dbg !3351

cleanup.sink.split:                               ; preds = %if.end, %for.end158
  %retval.0.ph = phi i32 [ 1, %for.end158 ], [ 0, %if.end ]
  %call160 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #11, !dbg !3211
  br label %cleanup, !dbg !3352

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !3211
  ret i32 %retval.0, !dbg !3352
}

declare !dbg !3353 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare !dbg !3356 i32 @FormatImageProperty(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3360 i32 @GetMagickPrecision() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageChannelDistortions(ptr noundef %image, ptr noundef %reconstruct_image, i32 noundef %metric, ptr noundef %exception) local_unnamed_addr #0 !dbg !3363 {
entry:
  %exception24 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3367, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !3368, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %metric, metadata !3369, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3370, metadata !DIExpression()), !dbg !3378
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3379
  %0 = load i32, ptr %debug, align 8, !dbg !3379, !tbaa !799
  %cmp.not = icmp eq i32 %0, 0, !dbg !3381
  br i1 %cmp.not, label %if.end7, label %if.end, !dbg !3382

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3383
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1606, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !3384
  %.pr = load i32, ptr %debug, align 8, !dbg !3385, !tbaa !799
  %cmp2.not = icmp eq i32 %.pr, 0, !dbg !3387
  br i1 %cmp2.not, label %if.end7, label %if.then3, !dbg !3388

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1610, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !3389
  br label %if.end7, !dbg !3390

if.end7:                                          ; preds = %entry, %if.then3, %if.end
  %cmp8.not = icmp eq i32 %metric, 255, !dbg !3391
  br i1 %cmp8.not, label %if.end20, label %if.then9, !dbg !3393

if.then9:                                         ; preds = %if.end7
  %columns = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7, !dbg !3394
  %1 = load i64, ptr %columns, align 8, !dbg !3394, !tbaa !836
  %columns10 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3396
  %2 = load i64, ptr %columns10, align 8, !dbg !3396, !tbaa !836
  %cmp11.not = icmp eq i64 %1, %2, !dbg !3397
  br i1 %cmp11.not, label %lor.lhs.false, label %if.then14, !dbg !3398

lor.lhs.false:                                    ; preds = %if.then9
  %rows = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 8, !dbg !3399
  %3 = load i64, ptr %rows, align 8, !dbg !3399, !tbaa !841
  %rows12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !3400
  %4 = load i64, ptr %rows12, align 8, !dbg !3400, !tbaa !841
  %cmp13.not = icmp eq i64 %3, %4, !dbg !3401
  br i1 %cmp13.not, label %if.end20, label %if.then14, !dbg !3402

if.then14:                                        ; preds = %lor.lhs.false, %if.then9
  %exception15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3403
  %filename16 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3405
  %call18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1615, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename16) #11, !dbg !3406
  br label %cleanup, !dbg !3407

if.end20:                                         ; preds = %lor.lhs.false, %if.end7
  call void @llvm.dbg.value(metadata i64 48, metadata !3373, metadata !DIExpression()), !dbg !3378
  %call21 = tail call ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 8) #13, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %call21, metadata !3371, metadata !DIExpression()), !dbg !3378
  %cmp22 = icmp eq ptr %call21, null, !dbg !3409
  br i1 %cmp22, label %if.then23, label %if.end30, !dbg !3410

if.then23:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception24) #11, !dbg !3411
  call void @llvm.dbg.declare(metadata ptr %exception24, metadata !3377, metadata !DIExpression()), !dbg !3411
  call void @GetExceptionInfo(ptr noundef nonnull %exception24) #11, !dbg !3411
  %call25 = tail call ptr @__errno_location() #14, !dbg !3411
  %5 = load i32, ptr %call25, align 4, !dbg !3411, !tbaa !1422
  %call26 = call ptr @GetExceptionMessage(i32 noundef %5) #11, !dbg !3411
  call void @llvm.dbg.value(metadata ptr %call26, metadata !3374, metadata !DIExpression()), !dbg !3412
  %call27 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1626, i32 noundef 700, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %call26) #11, !dbg !3411
  %call28 = call ptr @DestroyString(ptr noundef %call26) #11, !dbg !3411
  call void @llvm.dbg.value(metadata ptr %call28, metadata !3374, metadata !DIExpression()), !dbg !3412
  call void @CatchException(ptr noundef nonnull %exception24) #11, !dbg !3411
  %call29 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception24) #11, !dbg !3411
  call void @MagickCoreTerminus() #11, !dbg !3411
  call void @_exit(i32 noundef 1) #15, !dbg !3411
  unreachable, !dbg !3411

if.end30:                                         ; preds = %if.end20
  %call31 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call21, i32 noundef 0, i64 noundef 384) #11, !dbg !3413
  call void @llvm.dbg.value(metadata i32 1, metadata !3372, metadata !DIExpression()), !dbg !3378
  switch i32 %metric, label %sw.default [
    i32 1, label %sw.bb
    i32 9, label %sw.bb33
    i32 2, label %sw.bb35
    i32 3, label %sw.bb37
    i32 4, label %sw.bb39
    i32 7, label %sw.bb49
    i32 5, label %sw.bb43
    i32 6, label %sw.bb45
    i32 255, label %sw.bb47
  ], !dbg !3414

sw.bb:                                            ; preds = %if.end30
  %call32 = tail call fastcc i32 @GetAbsoluteDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3415
  call void @llvm.dbg.value(metadata i32 %call32, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3418

sw.bb33:                                          ; preds = %if.end30
  %call34 = tail call fastcc i32 @GetFuzzDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3419
  call void @llvm.dbg.value(metadata i32 %call34, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3421

sw.bb35:                                          ; preds = %if.end30
  %call36 = tail call fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %call36, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3424

sw.bb37:                                          ; preds = %if.end30
  %call38 = tail call fastcc i32 @GetMeanErrorPerPixel(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3425
  call void @llvm.dbg.value(metadata i32 %call38, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3427

sw.bb39:                                          ; preds = %if.end30
  %call40 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3428
  call void @llvm.dbg.value(metadata i32 %call40, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3430

sw.default:                                       ; preds = %if.end30
  %call42 = tail call fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3431
  call void @llvm.dbg.value(metadata i32 %call42, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3433

sw.bb43:                                          ; preds = %if.end30
  %call44 = tail call fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3434
  call void @llvm.dbg.value(metadata i32 %call44, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3436

sw.bb45:                                          ; preds = %if.end30
  %call46 = tail call fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %call46, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3439

sw.bb47:                                          ; preds = %if.end30
  %call48 = tail call fastcc i32 @GetPerceptualHashDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %call48, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3442

sw.bb49:                                          ; preds = %if.end30
  call void @llvm.dbg.value(metadata ptr %image, metadata !1454, metadata !DIExpression()) #11, !dbg !3443
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !1459, metadata !DIExpression()) #11, !dbg !3443
  call void @llvm.dbg.value(metadata i32 47, metadata !1460, metadata !DIExpression()) #11, !dbg !3443
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1461, metadata !DIExpression()) #11, !dbg !3443
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1462, metadata !DIExpression()) #11, !dbg !3443
  %call.i = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef nonnull %image, ptr noundef %reconstruct_image, i32 noundef 47, ptr noundef nonnull %call21, ptr noundef %exception) #11, !dbg !3446
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !1463, metadata !DIExpression()) #11, !dbg !3443
  %arrayidx.i = getelementptr inbounds double, ptr %call21, i64 1, !dbg !3447
  %6 = load double, ptr %arrayidx.i, align 8, !dbg !3447, !tbaa !821
  %call1.i = tail call double @sqrt(double noundef %6) #11, !dbg !3448
  store double %call1.i, ptr %arrayidx.i, align 8, !dbg !3449, !tbaa !821
  %arrayidx6.i = getelementptr inbounds double, ptr %call21, i64 2, !dbg !3450
  %7 = load double, ptr %arrayidx6.i, align 8, !dbg !3450, !tbaa !821
  %call7.i = tail call double @sqrt(double noundef %7) #11, !dbg !3451
  store double %call7.i, ptr %arrayidx6.i, align 8, !dbg !3452, !tbaa !821
  %arrayidx13.i = getelementptr inbounds double, ptr %call21, i64 4, !dbg !3453
  %8 = load double, ptr %arrayidx13.i, align 8, !dbg !3453, !tbaa !821
  %call14.i = tail call double @sqrt(double noundef %8) #11, !dbg !3454
  store double %call14.i, ptr %arrayidx13.i, align 8, !dbg !3455, !tbaa !821
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !3456
  %9 = load i32, ptr %matte.i, align 8, !dbg !3456, !tbaa !1175
  %cmp19.not.i = icmp eq i32 %9, 0, !dbg !3457
  br i1 %cmp19.not.i, label %if.end24.i, label %if.then20.i, !dbg !3458

if.then20.i:                                      ; preds = %sw.bb49
  %arrayidx21.i = getelementptr inbounds double, ptr %call21, i64 8, !dbg !3459
  %10 = load double, ptr %arrayidx21.i, align 8, !dbg !3459, !tbaa !821
  %call22.i = tail call double @sqrt(double noundef %10) #11, !dbg !3460
  store double %call22.i, ptr %arrayidx21.i, align 8, !dbg !3461, !tbaa !821
  br label %if.end24.i, !dbg !3462

if.end24.i:                                       ; preds = %if.then20.i, %sw.bb49
  %colorspace.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !3463
  %11 = load i32, ptr %colorspace.i, align 4, !dbg !3463, !tbaa !891
  %cmp28.i = icmp eq i32 %11, 12, !dbg !3464
  br i1 %cmp28.i, label %if.then29.i, label %GetRootMeanSquaredDistortion.exit, !dbg !3465

if.then29.i:                                      ; preds = %if.end24.i
  %arrayidx30.i = getelementptr inbounds double, ptr %call21, i64 32, !dbg !3466
  %12 = load double, ptr %arrayidx30.i, align 8, !dbg !3466, !tbaa !821
  %call31.i = tail call double @sqrt(double noundef %12) #11, !dbg !3467
  store double %call31.i, ptr %arrayidx30.i, align 8, !dbg !3468, !tbaa !821
  br label %GetRootMeanSquaredDistortion.exit, !dbg !3469

GetRootMeanSquaredDistortion.exit:                ; preds = %if.end24.i, %if.then29.i
  %arrayidx34.i = getelementptr inbounds double, ptr %call21, i64 47, !dbg !3470
  %13 = load double, ptr %arrayidx34.i, align 8, !dbg !3470, !tbaa !821
  %call35.i = tail call double @sqrt(double noundef %13) #11, !dbg !3471
  store double %call35.i, ptr %arrayidx34.i, align 8, !dbg !3472, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !3372, metadata !DIExpression()), !dbg !3378
  br label %sw.epilog, !dbg !3473

sw.epilog:                                        ; preds = %GetRootMeanSquaredDistortion.exit, %sw.bb47, %sw.bb45, %sw.bb43, %sw.default, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb
  %status.0 = phi i32 [ %call42, %sw.default ], [ %call48, %sw.bb47 ], [ %call46, %sw.bb45 ], [ %call44, %sw.bb43 ], [ %call.i, %GetRootMeanSquaredDistortion.exit ], [ %call40, %sw.bb39 ], [ %call38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %call32, %sw.bb ], !dbg !3474
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !3372, metadata !DIExpression()), !dbg !3378
  %cmp51 = icmp eq i32 %status.0, 0, !dbg !3475
  br i1 %cmp51, label %if.then52, label %cleanup, !dbg !3477

if.then52:                                        ; preds = %sw.epilog
  %call53 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call21) #11, !dbg !3478
  call void @llvm.dbg.value(metadata ptr %call53, metadata !3371, metadata !DIExpression()), !dbg !3378
  br label %cleanup, !dbg !3480

cleanup:                                          ; preds = %sw.epilog, %if.then52, %if.then14
  %retval.0 = phi ptr [ null, %if.then14 ], [ null, %if.then52 ], [ %call21, %sw.epilog ], !dbg !3378
  ret ptr %retval.0, !dbg !3481
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsImagesEqual(ptr noundef %image, ptr noundef %reconstruct_image) local_unnamed_addr #0 !dbg !3482 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3486, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata ptr %reconstruct_image, metadata !3487, metadata !DIExpression()), !dbg !3509
  %columns = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 7, !dbg !3510
  %0 = load i64, ptr %columns, align 8, !dbg !3510, !tbaa !836
  %columns1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3512
  %1 = load i64, ptr %columns1, align 8, !dbg !3512, !tbaa !836
  %cmp.not = icmp eq i64 %0, %1, !dbg !3513
  br i1 %cmp.not, label %lor.lhs.false, label %if.then5, !dbg !3514

lor.lhs.false:                                    ; preds = %entry
  %rows = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 8, !dbg !3515
  %2 = load i64, ptr %rows, align 8, !dbg !3515, !tbaa !841
  %rows2 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !3516
  %3 = load i64, ptr %rows2, align 8, !dbg !3516, !tbaa !841
  %cmp3.not = icmp eq i64 %2, %3, !dbg !3517
  br i1 %cmp3.not, label %if.end7, label %if.then5, !dbg !3518

if.then5:                                         ; preds = %entry, %lor.lhs.false
  %exception6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3519
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3519
  %call = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1777, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #11, !dbg !3519
  br label %cleanup131, !dbg !3519

if.end7:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3492, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3494, metadata !DIExpression()), !dbg !3509
  %exception8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3522
  call void @llvm.dbg.value(metadata ptr %exception8, metadata !3490, metadata !DIExpression()), !dbg !3509
  %call9 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception8) #11, !dbg !3523
  call void @llvm.dbg.value(metadata ptr %call9, metadata !3488, metadata !DIExpression()), !dbg !3509
  %call10 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %reconstruct_image, ptr noundef nonnull %exception8) #11, !dbg !3524
  call void @llvm.dbg.value(metadata ptr %call10, metadata !3489, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 0, metadata !3496, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3492, metadata !DIExpression()), !dbg !3509
  %4 = load i64, ptr %rows2, align 8, !dbg !3525, !tbaa !841
  %cmp12255 = icmp sgt i64 %4, 0, !dbg !3526
  br i1 %cmp12255, label %for.body.lr.ph, label %for.end114, !dbg !3527

for.body.lr.ph:                                   ; preds = %if.end7
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace78 = getelementptr inbounds %struct._Image, ptr %reconstruct_image, i64 0, i32 1
  %.pre = load i64, ptr %columns1, align 8, !dbg !3528, !tbaa !836
  br label %for.body, !dbg !3527

for.body:                                         ; preds = %for.body.lr.ph, %for.inc112
  %5 = phi i64 [ %.pre, %for.body.lr.ph ], [ %7, %for.inc112 ], !dbg !3528
  %y.0260 = phi i64 [ 0, %for.body.lr.ph ], [ %inc113, %for.inc112 ]
  %mean_error_per_pixel.0259 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %mean_error_per_pixel.1.lcssa, %for.inc112 ]
  %mean_error.0258 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %mean_error.1.lcssa, %for.inc112 ]
  %maximum_error.0257 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %maximum_error.1.lcssa, %for.inc112 ]
  %area.0256 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %area.1.lcssa, %for.inc112 ]
  call void @llvm.dbg.value(metadata i64 %y.0260, metadata !3496, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.0259, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error.0258, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %maximum_error.0257, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %area.0256, metadata !3492, metadata !DIExpression()), !dbg !3509
  %call14 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call9, i64 noundef 0, i64 noundef %y.0260, i64 noundef %5, i64 noundef 1, ptr noundef nonnull %exception8) #12, !dbg !3529
  call void @llvm.dbg.value(metadata ptr %call14, metadata !3502, metadata !DIExpression()), !dbg !3530
  %6 = load i64, ptr %columns, align 8, !dbg !3531, !tbaa !836
  %call16 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call10, i64 noundef 0, i64 noundef %y.0260, i64 noundef %6, i64 noundef 1, ptr noundef nonnull %exception8) #12, !dbg !3532
  call void @llvm.dbg.value(metadata ptr %call16, metadata !3503, metadata !DIExpression()), !dbg !3530
  %cmp17 = icmp eq ptr %call14, null, !dbg !3533
  %cmp19 = icmp eq ptr %call16, null
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp19, !dbg !3535
  br i1 %or.cond, label %for.end114, label %if.end21, !dbg !3535

if.end21:                                         ; preds = %for.body
  %call22 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call9) #11, !dbg !3536
  call void @llvm.dbg.value(metadata ptr %call22, metadata !3497, metadata !DIExpression()), !dbg !3530
  %call23 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call10) #11, !dbg !3537
  call void @llvm.dbg.value(metadata ptr %call23, metadata !3501, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 0, metadata !3504, metadata !DIExpression()), !dbg !3530
  %7 = load i64, ptr %columns1, align 8, !tbaa !836
  call void @llvm.dbg.value(metadata i64 0, metadata !3504, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %call16, metadata !3503, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %call14, metadata !3502, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.0259, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error.0258, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %maximum_error.0257, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %area.0256, metadata !3492, metadata !DIExpression()), !dbg !3509
  %cmp26241 = icmp sgt i64 %7, 0, !dbg !3538
  br i1 %cmp26241, label %for.body27.lr.ph, label %for.inc112, !dbg !3539

for.body27.lr.ph:                                 ; preds = %if.end21
  %8 = load i32, ptr %matte, align 8, !tbaa !1175
  %cmp60.not = icmp eq i32 %8, 0
  %9 = load i32, ptr %colorspace, align 4, !tbaa !891
  %cmp76 = icmp eq i32 %9, 12
  %cmp82 = icmp eq ptr %call22, null
  %cmp88 = icmp eq ptr %call23, null
  br label %for.body27, !dbg !3539

for.body27:                                       ; preds = %for.body27.lr.ph, %if.end105
  %x.0248 = phi i64 [ 0, %for.body27.lr.ph ], [ %inc107, %if.end105 ]
  %q.0247 = phi ptr [ %call16, %for.body27.lr.ph ], [ %incdec.ptr106, %if.end105 ]
  %p.0246 = phi ptr [ %call14, %for.body27.lr.ph ], [ %incdec.ptr, %if.end105 ]
  %mean_error_per_pixel.1245 = phi float [ %mean_error_per_pixel.0259, %for.body27.lr.ph ], [ %mean_error_per_pixel.3, %if.end105 ]
  %mean_error.1244 = phi float [ %mean_error.0258, %for.body27.lr.ph ], [ %mean_error.3, %if.end105 ]
  %maximum_error.1243 = phi float [ %maximum_error.0257, %for.body27.lr.ph ], [ %maximum_error.8, %if.end105 ]
  %area.1242 = phi float [ %area.0256, %for.body27.lr.ph ], [ %area.3, %if.end105 ]
  call void @llvm.dbg.value(metadata i64 %x.0248, metadata !3504, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %q.0247, metadata !3503, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %p.0246, metadata !3502, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.1245, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error.1244, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %maximum_error.1243, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %area.1242, metadata !3492, metadata !DIExpression()), !dbg !3509
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0246, i64 0, i32 2, !dbg !3540
  %10 = load i16, ptr %red, align 2, !dbg !3540, !tbaa !1104
  %conv28 = uitofp i16 %10 to double, !dbg !3540
  %red29 = getelementptr inbounds %struct._PixelPacket, ptr %q.0247, i64 0, i32 2, !dbg !3541
  %11 = load i16, ptr %red29, align 2, !dbg !3541, !tbaa !1104
  %conv30 = uitofp i16 %11 to double, !dbg !3542
  %sub = fsub double %conv28, %conv30, !dbg !3543
  %12 = fptrunc double %sub to float, !dbg !3544
  %conv31 = tail call float @llvm.fabs.f32(float %12), !dbg !3544
  call void @llvm.dbg.value(metadata float %conv31, metadata !3505, metadata !DIExpression()), !dbg !3545
  %add = fadd float %mean_error_per_pixel.1245, %conv31, !dbg !3546
  call void @llvm.dbg.value(metadata float %add, metadata !3495, metadata !DIExpression()), !dbg !3509
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %mean_error.1244), !dbg !3547
  call void @llvm.dbg.value(metadata float %13, metadata !3494, metadata !DIExpression()), !dbg !3509
  %cmp32 = fcmp ogt float %conv31, %maximum_error.1243, !dbg !3548
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !3550

if.then34:                                        ; preds = %for.body27
  call void @llvm.dbg.value(metadata float %conv31, metadata !3493, metadata !DIExpression()), !dbg !3509
  br label %if.end35, !dbg !3551

if.end35:                                         ; preds = %if.then34, %for.body27
  %maximum_error.2 = phi float [ %conv31, %if.then34 ], [ %maximum_error.1243, %for.body27 ], !dbg !3509
  call void @llvm.dbg.value(metadata float %maximum_error.2, metadata !3493, metadata !DIExpression()), !dbg !3509
  %inc = fadd float %area.1242, 1.000000e+00, !dbg !3552
  call void @llvm.dbg.value(metadata float %inc, metadata !3492, metadata !DIExpression()), !dbg !3509
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0246, i64 0, i32 1, !dbg !3553
  %14 = load i16, ptr %green, align 2, !dbg !3553, !tbaa !1108
  %conv37 = uitofp i16 %14 to double, !dbg !3553
  %green38 = getelementptr inbounds %struct._PixelPacket, ptr %q.0247, i64 0, i32 1, !dbg !3554
  %15 = load i16, ptr %green38, align 2, !dbg !3554, !tbaa !1108
  %conv39 = uitofp i16 %15 to double, !dbg !3555
  %sub40 = fsub double %conv37, %conv39, !dbg !3556
  %16 = fptrunc double %sub40 to float, !dbg !3557
  %conv41 = tail call float @llvm.fabs.f32(float %16), !dbg !3557
  call void @llvm.dbg.value(metadata float %conv41, metadata !3505, metadata !DIExpression()), !dbg !3545
  %add42 = fadd float %add, %conv41, !dbg !3558
  call void @llvm.dbg.value(metadata float %add42, metadata !3495, metadata !DIExpression()), !dbg !3509
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %13), !dbg !3559
  call void @llvm.dbg.value(metadata float %17, metadata !3494, metadata !DIExpression()), !dbg !3509
  %cmp43 = fcmp ogt float %conv41, %maximum_error.2, !dbg !3560
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !3562

if.then45:                                        ; preds = %if.end35
  call void @llvm.dbg.value(metadata float %conv41, metadata !3493, metadata !DIExpression()), !dbg !3509
  br label %if.end46, !dbg !3563

if.end46:                                         ; preds = %if.then45, %if.end35
  %maximum_error.3 = phi float [ %conv41, %if.then45 ], [ %maximum_error.2, %if.end35 ], !dbg !3545
  call void @llvm.dbg.value(metadata float %maximum_error.3, metadata !3493, metadata !DIExpression()), !dbg !3509
  %inc47 = fadd float %inc, 1.000000e+00, !dbg !3564
  call void @llvm.dbg.value(metadata float %inc47, metadata !3492, metadata !DIExpression()), !dbg !3509
  %18 = load i16, ptr %p.0246, align 2, !dbg !3565, !tbaa !1112
  %conv49 = uitofp i16 %18 to double, !dbg !3565
  %19 = load i16, ptr %q.0247, align 2, !dbg !3566, !tbaa !1112
  %conv51 = uitofp i16 %19 to double, !dbg !3567
  %sub52 = fsub double %conv49, %conv51, !dbg !3568
  %20 = fptrunc double %sub52 to float, !dbg !3569
  %conv53 = tail call float @llvm.fabs.f32(float %20), !dbg !3569
  call void @llvm.dbg.value(metadata float %conv53, metadata !3505, metadata !DIExpression()), !dbg !3545
  %add54 = fadd float %add42, %conv53, !dbg !3570
  call void @llvm.dbg.value(metadata float %add54, metadata !3495, metadata !DIExpression()), !dbg !3509
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %17), !dbg !3571
  call void @llvm.dbg.value(metadata float %21, metadata !3494, metadata !DIExpression()), !dbg !3509
  %cmp55 = fcmp ogt float %conv53, %maximum_error.3, !dbg !3572
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !3574

if.then57:                                        ; preds = %if.end46
  call void @llvm.dbg.value(metadata float %conv53, metadata !3493, metadata !DIExpression()), !dbg !3509
  br label %if.end58, !dbg !3575

if.end58:                                         ; preds = %if.then57, %if.end46
  %maximum_error.4 = phi float [ %conv53, %if.then57 ], [ %maximum_error.3, %if.end46 ], !dbg !3545
  call void @llvm.dbg.value(metadata float %maximum_error.4, metadata !3493, metadata !DIExpression()), !dbg !3509
  %inc59 = fadd float %inc47, 1.000000e+00, !dbg !3576
  call void @llvm.dbg.value(metadata float %inc59, metadata !3492, metadata !DIExpression()), !dbg !3509
  br i1 %cmp60.not, label %if.end75, label %if.then62, !dbg !3577

if.then62:                                        ; preds = %if.end58
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0246, i64 0, i32 3, !dbg !3578
  %22 = load i16, ptr %opacity, align 2, !dbg !3578, !tbaa !1116
  %conv64 = uitofp i16 %22 to double, !dbg !3578
  %opacity65 = getelementptr inbounds %struct._PixelPacket, ptr %q.0247, i64 0, i32 3, !dbg !3581
  %23 = load i16, ptr %opacity65, align 2, !dbg !3581, !tbaa !1116
  %conv66 = uitofp i16 %23 to double, !dbg !3582
  %sub67 = fsub double %conv64, %conv66, !dbg !3583
  %24 = fptrunc double %sub67 to float, !dbg !3584
  %conv68 = tail call float @llvm.fabs.f32(float %24), !dbg !3584
  call void @llvm.dbg.value(metadata float %conv68, metadata !3505, metadata !DIExpression()), !dbg !3545
  %add69 = fadd float %add54, %conv68, !dbg !3585
  call void @llvm.dbg.value(metadata float %add69, metadata !3495, metadata !DIExpression()), !dbg !3509
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %21), !dbg !3586
  call void @llvm.dbg.value(metadata float %25, metadata !3494, metadata !DIExpression()), !dbg !3509
  %cmp70 = fcmp ogt float %conv68, %maximum_error.4, !dbg !3587
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !3589

if.then72:                                        ; preds = %if.then62
  call void @llvm.dbg.value(metadata float %conv68, metadata !3493, metadata !DIExpression()), !dbg !3509
  br label %if.end73, !dbg !3590

if.end73:                                         ; preds = %if.then72, %if.then62
  %maximum_error.5 = phi float [ %conv68, %if.then72 ], [ %maximum_error.4, %if.then62 ], !dbg !3545
  call void @llvm.dbg.value(metadata float %maximum_error.5, metadata !3493, metadata !DIExpression()), !dbg !3509
  %inc74 = fadd float %inc59, 1.000000e+00, !dbg !3591
  call void @llvm.dbg.value(metadata float %inc74, metadata !3492, metadata !DIExpression()), !dbg !3509
  br label %if.end75, !dbg !3592

if.end75:                                         ; preds = %if.end73, %if.end58
  %area.2 = phi float [ %inc74, %if.end73 ], [ %inc59, %if.end58 ], !dbg !3545
  %maximum_error.6 = phi float [ %maximum_error.5, %if.end73 ], [ %maximum_error.4, %if.end58 ], !dbg !3545
  %mean_error.2 = phi float [ %25, %if.end73 ], [ %21, %if.end58 ], !dbg !3545
  %mean_error_per_pixel.2 = phi float [ %add69, %if.end73 ], [ %add54, %if.end58 ], !dbg !3545
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.2, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error.2, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %maximum_error.6, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %area.2, metadata !3492, metadata !DIExpression()), !dbg !3509
  br i1 %cmp76, label %land.lhs.true, label %if.end105, !dbg !3593

land.lhs.true:                                    ; preds = %if.end75
  %26 = load i32, ptr %colorspace78, align 4, !dbg !3595, !tbaa !891
  %cmp79 = icmp eq i32 %26, 12, !dbg !3596
  br i1 %cmp79, label %if.then81, label %if.end105, !dbg !3597

if.then81:                                        ; preds = %land.lhs.true
  br i1 %cmp82, label %cond.end, label %cond.false, !dbg !3598

cond.false:                                       ; preds = %if.then81
  %add.ptr = getelementptr inbounds i16, ptr %call22, i64 %x.0248, !dbg !3598
  %27 = load i16, ptr %add.ptr, align 2, !dbg !3598, !tbaa !1124
  %conv85 = zext i16 %27 to i32, !dbg !3598
  br label %cond.end, !dbg !3598

cond.end:                                         ; preds = %if.then81, %cond.false
  %cond = phi i32 [ %conv85, %cond.false ], [ 0, %if.then81 ], !dbg !3598
  %conv86 = sitofp i32 %cond to double, !dbg !3598
  br i1 %cmp88, label %cond.end94, label %cond.false91, !dbg !3600

cond.false91:                                     ; preds = %cond.end
  %add.ptr87 = getelementptr inbounds i16, ptr %call23, i64 %x.0248, !dbg !3600
  %28 = load i16, ptr %add.ptr87, align 2, !dbg !3600, !tbaa !1124
  %conv93 = zext i16 %28 to i32, !dbg !3600
  br label %cond.end94, !dbg !3600

cond.end94:                                       ; preds = %cond.end, %cond.false91
  %cond95 = phi i32 [ %conv93, %cond.false91 ], [ 0, %cond.end ], !dbg !3600
  %conv96 = sitofp i32 %cond95 to double, !dbg !3601
  %sub97 = fsub double %conv86, %conv96, !dbg !3602
  %29 = fptrunc double %sub97 to float, !dbg !3603
  %conv98 = tail call float @llvm.fabs.f32(float %29), !dbg !3603
  call void @llvm.dbg.value(metadata float %conv98, metadata !3505, metadata !DIExpression()), !dbg !3545
  %add99 = fadd float %mean_error_per_pixel.2, %conv98, !dbg !3604
  call void @llvm.dbg.value(metadata float %add99, metadata !3495, metadata !DIExpression()), !dbg !3509
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %mean_error.2), !dbg !3605
  call void @llvm.dbg.value(metadata float %30, metadata !3494, metadata !DIExpression()), !dbg !3509
  %cmp100 = fcmp ogt float %conv98, %maximum_error.6, !dbg !3606
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !3608

if.then102:                                       ; preds = %cond.end94
  call void @llvm.dbg.value(metadata float %conv98, metadata !3493, metadata !DIExpression()), !dbg !3509
  br label %if.end103, !dbg !3609

if.end103:                                        ; preds = %if.then102, %cond.end94
  %maximum_error.7 = phi float [ %conv98, %if.then102 ], [ %maximum_error.6, %cond.end94 ], !dbg !3545
  call void @llvm.dbg.value(metadata float %maximum_error.7, metadata !3493, metadata !DIExpression()), !dbg !3509
  %inc104 = fadd float %area.2, 1.000000e+00, !dbg !3610
  call void @llvm.dbg.value(metadata float %inc104, metadata !3492, metadata !DIExpression()), !dbg !3509
  br label %if.end105, !dbg !3611

if.end105:                                        ; preds = %if.end103, %land.lhs.true, %if.end75
  %area.3 = phi float [ %inc104, %if.end103 ], [ %area.2, %land.lhs.true ], [ %area.2, %if.end75 ], !dbg !3545
  %maximum_error.8 = phi float [ %maximum_error.7, %if.end103 ], [ %maximum_error.6, %land.lhs.true ], [ %maximum_error.6, %if.end75 ], !dbg !3545
  %mean_error.3 = phi float [ %30, %if.end103 ], [ %mean_error.2, %land.lhs.true ], [ %mean_error.2, %if.end75 ], !dbg !3545
  %mean_error_per_pixel.3 = phi float [ %add99, %if.end103 ], [ %mean_error_per_pixel.2, %land.lhs.true ], [ %mean_error_per_pixel.2, %if.end75 ], !dbg !3545
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.3, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error.3, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %maximum_error.8, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %area.3, metadata !3492, metadata !DIExpression()), !dbg !3509
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0246, i64 1, !dbg !3612
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3502, metadata !DIExpression()), !dbg !3530
  %incdec.ptr106 = getelementptr inbounds %struct._PixelPacket, ptr %q.0247, i64 1, !dbg !3613
  call void @llvm.dbg.value(metadata ptr %incdec.ptr106, metadata !3503, metadata !DIExpression()), !dbg !3530
  %inc107 = add nuw nsw i64 %x.0248, 1, !dbg !3614
  call void @llvm.dbg.value(metadata i64 %inc107, metadata !3504, metadata !DIExpression()), !dbg !3530
  %exitcond.not = icmp eq i64 %inc107, %7, !dbg !3538
  br i1 %exitcond.not, label %for.inc112, label %for.body27, !dbg !3539, !llvm.loop !3615

for.inc112:                                       ; preds = %if.end105, %if.end21
  %area.1.lcssa = phi float [ %area.0256, %if.end21 ], [ %area.3, %if.end105 ], !dbg !3509
  %maximum_error.1.lcssa = phi float [ %maximum_error.0257, %if.end21 ], [ %maximum_error.8, %if.end105 ], !dbg !3509
  %mean_error.1.lcssa = phi float [ %mean_error.0258, %if.end21 ], [ %mean_error.3, %if.end105 ], !dbg !3509
  %mean_error_per_pixel.1.lcssa = phi float [ %mean_error_per_pixel.0259, %if.end21 ], [ %mean_error_per_pixel.3, %if.end105 ], !dbg !3509
  call void @llvm.dbg.value(metadata float undef, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float undef, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float undef, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float undef, metadata !3492, metadata !DIExpression()), !dbg !3509
  %inc113 = add nuw nsw i64 %y.0260, 1, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %inc113, metadata !3496, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.1.lcssa, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error.1.lcssa, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %maximum_error.1.lcssa, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %area.1.lcssa, metadata !3492, metadata !DIExpression()), !dbg !3509
  %31 = load i64, ptr %rows2, align 8, !dbg !3525, !tbaa !841
  %cmp12 = icmp slt i64 %inc113, %31, !dbg !3526
  br i1 %cmp12, label %for.body, label %for.end114, !dbg !3527, !llvm.loop !3618

for.end114:                                       ; preds = %for.inc112, %for.body, %if.end7
  %area.0.lcssa = phi float [ 0.000000e+00, %if.end7 ], [ %area.0256, %for.body ], [ %area.1.lcssa, %for.inc112 ], !dbg !3620
  %maximum_error.0.lcssa = phi float [ 0.000000e+00, %if.end7 ], [ %maximum_error.0257, %for.body ], [ %maximum_error.1.lcssa, %for.inc112 ], !dbg !3621
  %mean_error.0.lcssa = phi float [ 0.000000e+00, %if.end7 ], [ %mean_error.0258, %for.body ], [ %mean_error.1.lcssa, %for.inc112 ], !dbg !3622
  %mean_error_per_pixel.0.lcssa = phi float [ 0.000000e+00, %if.end7 ], [ %mean_error_per_pixel.0259, %for.body ], [ %mean_error_per_pixel.1.lcssa, %for.inc112 ], !dbg !3623
  call void @llvm.dbg.value(metadata float %mean_error_per_pixel.0.lcssa, metadata !3495, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %mean_error.0.lcssa, metadata !3494, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %maximum_error.0.lcssa, metadata !3493, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata float %area.0.lcssa, metadata !3492, metadata !DIExpression()), !dbg !3509
  %call115 = tail call ptr @DestroyCacheView(ptr noundef %call10) #11, !dbg !3624
  call void @llvm.dbg.value(metadata ptr %call115, metadata !3489, metadata !DIExpression()), !dbg !3509
  %call116 = tail call ptr @DestroyCacheView(ptr noundef %call9) #11, !dbg !3625
  call void @llvm.dbg.value(metadata ptr %call116, metadata !3488, metadata !DIExpression()), !dbg !3509
  %div = fdiv float %mean_error_per_pixel.0.lcssa, %area.0.lcssa, !dbg !3626
  %conv117 = fpext float %div to double, !dbg !3627
  %error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, !dbg !3628
  store double %conv117, ptr %error, align 8, !dbg !3629, !tbaa !2375
  %conv119 = fpext float %mean_error.0.lcssa to double, !dbg !3630
  %mul = fmul double %conv119, 0x3DF0002000300040, !dbg !3631
  %conv120 = fpext float %area.0.lcssa to double, !dbg !3632
  %div121 = fdiv double %mul, %conv120, !dbg !3633
  %normalized_mean_error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 1, !dbg !3634
  store double %div121, ptr %normalized_mean_error, align 8, !dbg !3635, !tbaa !2381
  %conv123 = fpext float %maximum_error.0.lcssa to double, !dbg !3636
  %mul124 = fmul double %conv123, 0x3EF0001000100010, !dbg !3637
  %normalized_maximum_error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 2, !dbg !3638
  store double %mul124, ptr %normalized_maximum_error, align 8, !dbg !3639, !tbaa !2386
  %cmp128 = fcmp oeq float %div, 0.000000e+00, !dbg !3640
  %cond130 = zext i1 %cmp128 to i32, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %cond130, metadata !3491, metadata !DIExpression()), !dbg !3509
  br label %cleanup131, !dbg !3642

cleanup131:                                       ; preds = %if.then5, %for.end114
  %retval.0 = phi i32 [ %cond130, %for.end114 ], [ 0, %if.then5 ], !dbg !3509
  ret i32 %retval.0, !dbg !3643
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @SimilarityImage(ptr noundef %image, ptr noundef %reference, ptr noundef %offset, ptr nocapture noundef %similarity_metric, ptr noundef %exception) local_unnamed_addr #0 !dbg !3644 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !3649, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %reference, metadata !3650, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %offset, metadata !3651, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %similarity_metric, metadata !3652, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3653, metadata !DIExpression()), !dbg !3655
  %call = tail call ptr @SimilarityMetricImage(ptr noundef %image, ptr noundef %reference, i32 noundef 7, ptr noundef %offset, ptr noundef %similarity_metric, ptr noundef %exception), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %call, metadata !3654, metadata !DIExpression()), !dbg !3655
  ret ptr %call, !dbg !3657
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SimilarityMetricImage(ptr noundef %image, ptr noundef %reference, i32 noundef %metric, ptr noundef %offset, ptr nocapture noundef %similarity_metric, ptr noundef %exception) local_unnamed_addr #0 !dbg !3658 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %distortion.i = alloca double, align 8
  %geometry.i = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3662, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %reference, metadata !3663, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %metric, metadata !3664, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %offset, metadata !3665, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %similarity_metric, metadata !3666, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3667, metadata !DIExpression()), !dbg !3684
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3685
  %0 = load i32, ptr %debug, align 8, !dbg !3685, !tbaa !799
  %cmp.not = icmp eq i32 %0, 0, !dbg !3687
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3688

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3689
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1975, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !3690
  br label %if.end, !dbg !3691

if.end:                                           ; preds = %if.then, %entry
  tail call void @SetGeometry(ptr noundef %reference, ptr noundef %offset) #11, !dbg !3692
  store double 0x7FEFFFFFFFFFFFFF, ptr %similarity_metric, align 8, !dbg !3693, !tbaa !821
  %columns = getelementptr inbounds %struct._Image, ptr %reference, i64 0, i32 7, !dbg !3694
  %1 = load i64, ptr %columns, align 8, !dbg !3694, !tbaa !836
  %columns1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3696
  %2 = load i64, ptr %columns1, align 8, !dbg !3696, !tbaa !836
  %cmp2 = icmp ult i64 %2, %1, !dbg !3697
  br i1 %cmp2, label %if.then5, label %lor.lhs.false, !dbg !3698

lor.lhs.false:                                    ; preds = %if.end
  %rows = getelementptr inbounds %struct._Image, ptr %reference, i64 0, i32 8, !dbg !3699
  %3 = load i64, ptr %rows, align 8, !dbg !3699, !tbaa !841
  %rows3 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !3700
  %4 = load i64, ptr %rows3, align 8, !dbg !3700, !tbaa !841
  %cmp4 = icmp ult i64 %4, %3, !dbg !3701
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !3702

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %filename6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3703
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1982, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename6) #11, !dbg !3703
  br label %cleanup100, !dbg !3703

if.end9:                                          ; preds = %lor.lhs.false
  %sub = sub i64 1, %1, !dbg !3705
  %add = add i64 %sub, %2, !dbg !3706
  %sub14 = sub i64 1, %3, !dbg !3707
  %add15 = add i64 %sub14, %4, !dbg !3708
  %call16 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %add, i64 noundef %add15, i32 noundef 1, ptr noundef %exception) #11, !dbg !3709
  call void @llvm.dbg.value(metadata ptr %call16, metadata !3671, metadata !DIExpression()), !dbg !3684
  %cmp17 = icmp eq ptr %call16, null, !dbg !3710
  br i1 %cmp17, label %cleanup100, label %if.end19, !dbg !3712

if.end19:                                         ; preds = %if.end9
  %call20 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call16, i32 noundef 1) #11, !dbg !3713
  %cmp21 = icmp eq i32 %call20, 0, !dbg !3715
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !3716

if.then22:                                        ; preds = %if.end19
  %exception23 = getelementptr inbounds %struct._Image, ptr %call16, i64 0, i32 58, !dbg !3717
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception23) #11, !dbg !3719
  %call24 = tail call ptr @DestroyImage(ptr noundef nonnull %call16) #11, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %call24, metadata !3671, metadata !DIExpression()), !dbg !3684
  br label %cleanup100, !dbg !3721

if.end25:                                         ; preds = %if.end19
  %call26 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call16, i32 noundef 4) #11, !dbg !3722
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !3670, metadata !DIExpression()), !dbg !3684
  %call27 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.12) #11, !dbg !3723
  call void @llvm.dbg.value(metadata ptr %call27, metadata !3669, metadata !DIExpression()), !dbg !3684
  %cmp28.not = icmp eq ptr %call27, null, !dbg !3724
  br i1 %cmp28.not, label %if.end31, label %if.then29, !dbg !3726

if.then29:                                        ; preds = %if.end25
  call void @llvm.dbg.value(metadata ptr %call27, metadata !3727, metadata !DIExpression()) #11, !dbg !3736
  call void @llvm.dbg.value(metadata ptr null, metadata !3735, metadata !DIExpression()) #11, !dbg !3736
  %call.i = tail call double @InterpretLocaleValue(ptr noundef nonnull %call27, ptr noundef null) #11, !dbg !3738
  call void @llvm.dbg.value(metadata double %call.i, metadata !3670, metadata !DIExpression()), !dbg !3684
  br label %if.end31, !dbg !3739

if.end31:                                         ; preds = %if.then29, %if.end25
  %similarity_threshold.0 = phi double [ %call.i, %if.then29 ], [ -1.000000e+00, %if.end25 ], !dbg !3684
  call void @llvm.dbg.value(metadata double %similarity_threshold.0, metadata !3670, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 0, metadata !3673, metadata !DIExpression()), !dbg !3684
  %call32 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call16, ptr noundef %exception) #11, !dbg !3740
  call void @llvm.dbg.value(metadata ptr %call32, metadata !3668, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 0, metadata !3674, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 0, metadata !3673, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 1, metadata !3672, metadata !DIExpression()), !dbg !3684
  %5 = load i64, ptr %rows3, align 8, !dbg !3741, !tbaa !841
  %6 = load i64, ptr %rows, align 8, !dbg !3742, !tbaa !841
  %sub35194 = add i64 %5, 1, !dbg !3743
  %add36195 = sub i64 %sub35194, %6, !dbg !3744
  %cmp37196 = icmp sgt i64 %add36195, 0, !dbg !3745
  br i1 %cmp37196, label %for.body.lr.ph, label %for.end93.thread, !dbg !3746

for.end93.thread:                                 ; preds = %if.end31
  %call94203 = call ptr @DestroyCacheView(ptr noundef %call32) #11, !dbg !3747
  call void @llvm.dbg.value(metadata ptr %call94, metadata !3668, metadata !DIExpression()), !dbg !3684
  br label %cleanup100, !dbg !3748

for.body.lr.ph:                                   ; preds = %if.end31
  %columns44 = getelementptr inbounds %struct._Image, ptr %call16, i64 0, i32 7
  %x.i = getelementptr inbounds %struct._RectangleInfo, ptr %geometry.i, i64 0, i32 2
  %y.i = getelementptr inbounds %struct._RectangleInfo, ptr %geometry.i, i64 0, i32 3
  %x62 = getelementptr inbounds %struct._RectangleInfo, ptr %offset, i64 0, i32 2
  %y63 = getelementptr inbounds %struct._RectangleInfo, ptr %offset, i64 0, i32 3
  %cmp65 = icmp eq i32 %metric, 255
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !3746

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0199 = phi i64 [ 0, %for.body.lr.ph ], [ %inc92, %cleanup ]
  %progress.0198 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %status.0197 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0199, metadata !3674, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %progress.0198, metadata !3673, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %status.0197, metadata !3672, metadata !DIExpression()), !dbg !3684
  %cmp38 = icmp eq i32 %status.0197, 0, !dbg !3749
  br i1 %cmp38, label %cleanup, label %if.end40, !dbg !3751

if.end40:                                         ; preds = %for.body
  %7 = load double, ptr %similarity_metric, align 8, !dbg !3752, !tbaa !821
  %cmp41 = fcmp ugt double %7, %similarity_threshold.0, !dbg !3754
  br i1 %cmp41, label %if.end43, label %cleanup, !dbg !3755

if.end43:                                         ; preds = %if.end40
  %8 = load i64, ptr %columns44, align 8, !dbg !3756, !tbaa !836
  %call45 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call32, i64 noundef 0, i64 noundef %y.0199, i64 noundef %8, i64 noundef 1, ptr noundef %exception) #12, !dbg !3757
  call void @llvm.dbg.value(metadata ptr %call45, metadata !3680, metadata !DIExpression()), !dbg !3758
  %cmp46 = icmp eq ptr %call45, null, !dbg !3759
  br i1 %cmp46, label %cleanup, label %for.cond49.preheader, !dbg !3761

for.cond49.preheader:                             ; preds = %if.end43
  call void @llvm.dbg.value(metadata ptr %call45, metadata !3680, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 0, metadata !3679, metadata !DIExpression()), !dbg !3758
  %9 = load i64, ptr %columns1, align 8, !dbg !3762, !tbaa !836
  %10 = load i64, ptr %columns, align 8, !dbg !3765, !tbaa !836
  %sub52187 = add i64 %9, 1, !dbg !3766
  %add53188 = sub i64 %sub52187, %10, !dbg !3767
  %cmp54189 = icmp sgt i64 %add53188, 0, !dbg !3768
  br i1 %cmp54189, label %for.body55.preheader, label %for.end, !dbg !3769

for.body55.preheader:                             ; preds = %for.cond49.preheader
  %.pre = load double, ptr %similarity_metric, align 8, !dbg !3770, !tbaa !821
  br label %for.body55, !dbg !3769

for.body55:                                       ; preds = %for.body55.preheader, %ClampToQuantum.exit
  %11 = phi double [ %14, %ClampToQuantum.exit ], [ %.pre, %for.body55.preheader ], !dbg !3770
  %q.0192 = phi ptr [ %incdec.ptr, %ClampToQuantum.exit ], [ %call45, %for.body55.preheader ]
  %x.0190 = phi i64 [ %inc, %ClampToQuantum.exit ], [ 0, %for.body55.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.0192, metadata !3680, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %x.0190, metadata !3679, metadata !DIExpression()), !dbg !3758
  %cmp56 = fcmp ugt double %11, %similarity_threshold.0, !dbg !3773
  br i1 %cmp56, label %if.end58, label %for.end, !dbg !3774

if.end58:                                         ; preds = %for.body55
  call void @llvm.dbg.value(metadata ptr %image, metadata !3775, metadata !DIExpression()) #11, !dbg !3789
  call void @llvm.dbg.value(metadata ptr %reference, metadata !3780, metadata !DIExpression()) #11, !dbg !3789
  call void @llvm.dbg.value(metadata i32 %metric, metadata !3781, metadata !DIExpression()) #11, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %x.0190, metadata !3782, metadata !DIExpression()) #11, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %y.0199, metadata !3783, metadata !DIExpression()) #11, !dbg !3789
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3784, metadata !DIExpression()) #11, !dbg !3789
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %distortion.i) #11, !dbg !3791
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry.i) #11, !dbg !3792
  call void @llvm.dbg.declare(metadata ptr %geometry.i, metadata !3788, metadata !DIExpression()) #11, !dbg !3793
  call void @SetGeometry(ptr noundef nonnull %reference, ptr noundef nonnull %geometry.i) #11, !dbg !3794
  store i64 %x.0190, ptr %x.i, align 8, !dbg !3795, !tbaa !3796
  store i64 %y.0199, ptr %y.i, align 8, !dbg !3797, !tbaa !3798
  %call.i174 = call ptr @CropImage(ptr noundef nonnull %image, ptr noundef nonnull %geometry.i, ptr noundef %exception) #11, !dbg !3799
  call void @llvm.dbg.value(metadata ptr %call.i174, metadata !3786, metadata !DIExpression()) #11, !dbg !3789
  %cmp.i = icmp eq ptr %call.i174, null, !dbg !3800
  br i1 %cmp.i, label %GetSimilarityMetric.exit, label %if.end.i, !dbg !3802

if.end.i:                                         ; preds = %if.end58
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3785, metadata !DIExpression()) #11, !dbg !3789
  store double 0.000000e+00, ptr %distortion.i, align 8, !dbg !3803, !tbaa !821
  call void @llvm.dbg.value(metadata ptr %distortion.i, metadata !3785, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3789
  call void @llvm.dbg.value(metadata ptr %call.i174, metadata !1595, metadata !DIExpression()) #11, !dbg !3804
  call void @llvm.dbg.value(metadata ptr %reference, metadata !1596, metadata !DIExpression()) #11, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %metric, metadata !1597, metadata !DIExpression()) #11, !dbg !3804
  call void @llvm.dbg.value(metadata ptr %distortion.i, metadata !1598, metadata !DIExpression()) #11, !dbg !3804
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1599, metadata !DIExpression()) #11, !dbg !3804
  %call.i.i = call i32 @GetImageChannelDistortion(ptr noundef nonnull %call.i174, ptr noundef nonnull %reference, i32 noundef 47, i32 noundef %metric, ptr noundef nonnull %distortion.i, ptr noundef %exception) #11, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %call.i.i, metadata !1600, metadata !DIExpression()) #11, !dbg !3804
  call void @llvm.dbg.value(metadata i32 undef, metadata !3787, metadata !DIExpression()) #11, !dbg !3789
  %call2.i = call ptr @DestroyImage(ptr noundef nonnull %call.i174) #11, !dbg !3807
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !3786, metadata !DIExpression()) #11, !dbg !3789
  %12 = load double, ptr %distortion.i, align 8, !dbg !3808, !tbaa !821
  call void @llvm.dbg.value(metadata double %12, metadata !3785, metadata !DIExpression()) #11, !dbg !3789
  br label %GetSimilarityMetric.exit, !dbg !3809

GetSimilarityMetric.exit:                         ; preds = %if.end58, %if.end.i
  %retval.0.i = phi double [ %12, %if.end.i ], [ 0.000000e+00, %if.end58 ], !dbg !3789
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry.i) #11, !dbg !3810
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %distortion.i) #11, !dbg !3810
  call void @llvm.dbg.value(metadata double %retval.0.i, metadata !3675, metadata !DIExpression()), !dbg !3758
  %13 = load double, ptr %similarity_metric, align 8, !dbg !3811, !tbaa !821
  %cmp60 = fcmp olt double %retval.0.i, %13, !dbg !3813
  br i1 %cmp60, label %if.then61, label %if.end64, !dbg !3814

if.then61:                                        ; preds = %GetSimilarityMetric.exit
  store double %retval.0.i, ptr %similarity_metric, align 8, !dbg !3815, !tbaa !821
  store i64 %x.0190, ptr %x62, align 8, !dbg !3817, !tbaa !3796
  store i64 %y.0199, ptr %y63, align 8, !dbg !3818, !tbaa !3798
  br label %if.end64, !dbg !3819

if.end64:                                         ; preds = %if.then61, %GetSimilarityMetric.exit
  %14 = phi double [ %retval.0.i, %if.then61 ], [ %13, %GetSimilarityMetric.exit ]
  br i1 %cmp65, label %if.then66, label %if.end68, !dbg !3820

if.then66:                                        ; preds = %if.end64
  %mul = fmul double %retval.0.i, 1.000000e-02, !dbg !3821
  call void @llvm.dbg.value(metadata double %mul, metadata !3823, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3828, metadata !DIExpression()), !dbg !3829
  %cmp.i175 = fcmp olt double %mul, 1.000000e+00, !dbg !3831
  %x..i = select i1 %cmp.i175, double %mul, double 1.000000e+00, !dbg !3829
  call void @llvm.dbg.value(metadata double %x..i, metadata !3675, metadata !DIExpression()), !dbg !3758
  br label %if.end68, !dbg !3833

if.end68:                                         ; preds = %if.then66, %if.end64
  %similarity.0 = phi double [ %x..i, %if.then66 ], [ %retval.0.i, %if.end64 ], !dbg !3834
  call void @llvm.dbg.value(metadata double %similarity.0, metadata !3675, metadata !DIExpression()), !dbg !3758
  %15 = call double @llvm.fmuladd.f64(double %similarity.0, double -6.553500e+04, double 6.553500e+04), !dbg !3835
  %conv = fptrunc double %15 to float, !dbg !3835
  call void @llvm.dbg.value(metadata float %conv, metadata !1203, metadata !DIExpression()), !dbg !3836
  %cmp.i176 = fcmp ugt float %conv, 0.000000e+00, !dbg !3838
  br i1 %cmp.i176, label %if.end.i177, label %ClampToQuantum.exit, !dbg !3839

if.end.i177:                                      ; preds = %if.end68
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !3840
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !3841

if.end3.i:                                        ; preds = %if.end.i177
  %add.i = fadd float %conv, 5.000000e-01, !dbg !3842
  %conv.i = fptoui float %add.i to i16, !dbg !3843
  br label %ClampToQuantum.exit, !dbg !3844

ClampToQuantum.exit:                              ; preds = %if.end68, %if.end.i177, %if.end3.i
  %retval.0.i178 = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end68 ], [ -1, %if.end.i177 ], !dbg !3836
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.0192, i64 0, i32 2, !dbg !3835
  store i16 %retval.0.i178, ptr %red, align 2, !dbg !3835, !tbaa !1104
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q.0192, i64 0, i32 1, !dbg !3845
  store i16 %retval.0.i178, ptr %green, align 2, !dbg !3845, !tbaa !1108
  store i16 %retval.0.i178, ptr %q.0192, align 2, !dbg !3846, !tbaa !1112
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0192, i64 1, !dbg !3847
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3680, metadata !DIExpression()), !dbg !3758
  %inc = add nuw nsw i64 %x.0190, 1, !dbg !3848
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3679, metadata !DIExpression()), !dbg !3758
  %16 = load i64, ptr %columns1, align 8, !dbg !3762, !tbaa !836
  %17 = load i64, ptr %columns, align 8, !dbg !3765, !tbaa !836
  %sub52 = add i64 %16, 1, !dbg !3766
  %add53 = sub i64 %sub52, %17, !dbg !3767
  %cmp54 = icmp slt i64 %inc, %add53, !dbg !3768
  br i1 %cmp54, label %for.body55, label %for.end, !dbg !3769, !llvm.loop !3849

for.end:                                          ; preds = %ClampToQuantum.exit, %for.body55, %for.cond49.preheader
  %call73 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call32, ptr noundef %exception) #12, !dbg !3851
  %cmp74 = icmp ne i32 %call73, 0, !dbg !3853
  %spec.select = zext i1 %cmp74 to i32, !dbg !3854
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3672, metadata !DIExpression()), !dbg !3684
  %18 = load ptr, ptr %progress_monitor, align 8, !dbg !3855, !tbaa !2756
  %cmp78.not = icmp eq ptr %18, null, !dbg !3856
  br i1 %cmp78.not, label %cleanup, label %SetImageProgress.exit, !dbg !3857

SetImageProgress.exit:                            ; preds = %for.end
  %inc81 = add nsw i64 %progress.0198, 1, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %inc81, metadata !3673, metadata !DIExpression()), !dbg !3684
  %19 = load i64, ptr %rows3, align 8, !dbg !3859, !tbaa !841
  call void @llvm.dbg.value(metadata ptr %image, metadata !2761, metadata !DIExpression()) #11, !dbg !3860
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !2767, metadata !DIExpression()) #11, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %progress.0198, metadata !2768, metadata !DIExpression()) #11, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %19, metadata !2769, metadata !DIExpression()) #11, !dbg !3860
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !3862
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2770, metadata !DIExpression()) #11, !dbg !3863
  %call.i180 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef nonnull %filename.i) #11, !dbg !3864
  %20 = load ptr, ptr %progress_monitor, align 8, !dbg !3865, !tbaa !2756
  %21 = load ptr, ptr %client_data.i, align 8, !dbg !3866, !tbaa !2778
  %call4.i = call i32 %20(ptr noundef nonnull %message.i, i64 noundef %progress.0198, i64 noundef %19, ptr noundef %21) #11, !dbg !3867
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !3868
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !3681, metadata !DIExpression()), !dbg !3869
  %cmp84 = icmp eq i32 %call4.i, 0, !dbg !3870
  %spec.select173 = select i1 %cmp84, i32 0, i32 %spec.select, !dbg !3872
  call void @llvm.dbg.value(metadata i32 %spec.select173, metadata !3672, metadata !DIExpression()), !dbg !3684
  br label %cleanup, !dbg !3873

cleanup:                                          ; preds = %for.end, %SetImageProgress.exit, %if.end43, %if.end40, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 1, %if.end40 ], [ 0, %if.end43 ], [ %spec.select173, %SetImageProgress.exit ], [ %spec.select, %for.end ], !dbg !3684
  %progress.2 = phi i64 [ %progress.0198, %for.body ], [ %progress.0198, %if.end40 ], [ %progress.0198, %if.end43 ], [ %inc81, %SetImageProgress.exit ], [ %progress.0198, %for.end ], !dbg !3684
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !3673, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !3672, metadata !DIExpression()), !dbg !3684
  %inc92 = add nuw nsw i64 %y.0199, 1, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %inc92, metadata !3674, metadata !DIExpression()), !dbg !3684
  %22 = load i64, ptr %rows3, align 8, !dbg !3741, !tbaa !841
  %23 = load i64, ptr %rows, align 8, !dbg !3742, !tbaa !841
  %sub35 = add i64 %22, 1, !dbg !3743
  %add36 = sub i64 %sub35, %23, !dbg !3744
  %cmp37 = icmp slt i64 %inc92, %add36, !dbg !3745
  br i1 %cmp37, label %for.body, label %for.end93, !dbg !3746, !llvm.loop !3875

for.end93:                                        ; preds = %cleanup
  %call94 = call ptr @DestroyCacheView(ptr noundef %call32) #11, !dbg !3747
  call void @llvm.dbg.value(metadata ptr %call94, metadata !3668, metadata !DIExpression()), !dbg !3684
  %cmp95 = icmp eq i32 %status.4, 0, !dbg !3877
  br i1 %cmp95, label %if.then97, label %cleanup100, !dbg !3748

if.then97:                                        ; preds = %for.end93
  %call98 = call ptr @DestroyImage(ptr noundef nonnull %call16) #11, !dbg !3879
  call void @llvm.dbg.value(metadata ptr %call98, metadata !3671, metadata !DIExpression()), !dbg !3684
  br label %cleanup100, !dbg !3880

cleanup100:                                       ; preds = %for.end93.thread, %for.end93, %if.then97, %if.end9, %if.then22, %if.then5
  %retval.0 = phi ptr [ null, %if.then5 ], [ null, %if.then22 ], [ null, %if.end9 ], [ %call98, %if.then97 ], [ %call16, %for.end93 ], [ %call16, %for.end93.thread ], !dbg !3684
  ret ptr %retval.0, !dbg !3881
}

declare !dbg !3882 void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !3885 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: hot
declare !dbg !3886 float @DecodePixelGamma(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #9

declare !dbg !3889 ptr @GetImageChannelStatistics(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log10(double noundef) local_unnamed_addr #9

declare !dbg !3892 ptr @GetImageChannelPerceptualHash(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3895 double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3897 ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3903 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { hot nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!704, !705, !706, !707, !708, !709}
!llvm.ident = !{!710}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !445, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/compare.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "94c722aeea5787f775792b3bc032c58d")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !383, !405, !430}
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
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !369, line: 27, baseType: !5, size: 32, elements: !370)
!369 = !DIFile(filename: "apps/538.imagick_r/src/magick/compare.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "37e6814dab4462930323c9bb8e04246c")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!371 = !DIEnumerator(name: "UndefinedMetric", value: 0)
!372 = !DIEnumerator(name: "AbsoluteErrorMetric", value: 1)
!373 = !DIEnumerator(name: "MeanAbsoluteErrorMetric", value: 2)
!374 = !DIEnumerator(name: "MeanErrorPerPixelMetric", value: 3)
!375 = !DIEnumerator(name: "MeanSquaredErrorMetric", value: 4)
!376 = !DIEnumerator(name: "PeakAbsoluteErrorMetric", value: 5)
!377 = !DIEnumerator(name: "PeakSignalToNoiseRatioMetric", value: 6)
!378 = !DIEnumerator(name: "RootMeanSquaredErrorMetric", value: 7)
!379 = !DIEnumerator(name: "NormalizedCrossCorrelationErrorMetric", value: 8)
!380 = !DIEnumerator(name: "FuzzErrorMetric", value: 9)
!381 = !DIEnumerator(name: "UndefinedErrorMetric", value: 0)
!382 = !DIEnumerator(name: "PerceptualHashErrorMetric", value: 255)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404}
!385 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!386 = !DIEnumerator(name: "RedChannel", value: 1)
!387 = !DIEnumerator(name: "GrayChannel", value: 1)
!388 = !DIEnumerator(name: "CyanChannel", value: 1)
!389 = !DIEnumerator(name: "GreenChannel", value: 2)
!390 = !DIEnumerator(name: "MagentaChannel", value: 2)
!391 = !DIEnumerator(name: "BlueChannel", value: 4)
!392 = !DIEnumerator(name: "YellowChannel", value: 4)
!393 = !DIEnumerator(name: "AlphaChannel", value: 8)
!394 = !DIEnumerator(name: "OpacityChannel", value: 8)
!395 = !DIEnumerator(name: "MatteChannel", value: 8)
!396 = !DIEnumerator(name: "BlackChannel", value: 32)
!397 = !DIEnumerator(name: "IndexChannel", value: 32)
!398 = !DIEnumerator(name: "CompositeChannels", value: 47)
!399 = !DIEnumerator(name: "AllChannels", value: 134217727)
!400 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!401 = !DIEnumerator(name: "RGBChannels", value: 128)
!402 = !DIEnumerator(name: "GrayChannels", value: 128)
!403 = !DIEnumerator(name: "SyncChannels", value: 256)
!404 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!405 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !406, line: 34, baseType: !5, size: 32, elements: !407)
!406 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!408 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!409 = !DIEnumerator(name: "NoEvents", value: 0)
!410 = !DIEnumerator(name: "TraceEvent", value: 1)
!411 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!412 = !DIEnumerator(name: "BlobEvent", value: 4)
!413 = !DIEnumerator(name: "CacheEvent", value: 8)
!414 = !DIEnumerator(name: "CoderEvent", value: 16)
!415 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!416 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!417 = !DIEnumerator(name: "DrawEvent", value: 128)
!418 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!419 = !DIEnumerator(name: "ImageEvent", value: 512)
!420 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!421 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!422 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!423 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!424 = !DIEnumerator(name: "TransformEvent", value: 16384)
!425 = !DIEnumerator(name: "UserEvent", value: 36864)
!426 = !DIEnumerator(name: "WandEvent", value: 65536)
!427 = !DIEnumerator(name: "X11Event", value: 131072)
!428 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!429 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!430 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 30, baseType: !5, size: 32, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!432 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!433 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!434 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!435 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!436 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!437 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!438 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!439 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!440 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!441 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!442 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!443 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!444 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!445 = !{!446, !447, !502, !580, !511, !668, !470, !670, !673, !614, !484, !475, !674, !575, !675, !677, !672, !678, !695}
!446 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !450)
!450 = !{!451, !453, !455, !457, !460, !462, !464, !465, !466, !467, !468, !469, !480, !481, !482, !483, !485, !499, !501, !503, !505, !508, !509, !510, !516, !517, !518, !526, !527, !528, !529, !530, !531, !533, !535, !537, !539, !541, !543, !545, !546, !547, !548, !549, !550, !551, !559, !574, !588, !589, !590, !591, !595, !599, !603, !604, !605, !606, !607, !625, !626, !628, !629, !639, !640, !642, !643, !644, !645, !646, !647, !649, !650, !651, !652, !653, !654, !655, !657, !658, !659, !660, !661, !665, !667}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !449, file: !73, line: 153, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !449, file: !73, line: 156, baseType: !454, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !449, file: !73, line: 159, baseType: !456, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !449, file: !73, line: 162, baseType: !458, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !459, line: 46, baseType: !446)
!459 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!460 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !449, file: !73, line: 165, baseType: !461, size: 32, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !449, file: !73, line: 168, baseType: !463, size: 32, offset: 224)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !449, file: !73, line: 169, baseType: !463, size: 32, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !449, file: !73, line: 172, baseType: !458, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !449, file: !73, line: 173, baseType: !458, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !449, file: !73, line: 174, baseType: !458, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !449, file: !73, line: 175, baseType: !458, size: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !449, file: !73, line: 178, baseType: !470, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !473)
!473 = !{!474, !477, !478, !479}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !472, file: !326, line: 143, baseType: !475, size: 16)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !476)
!476 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !472, file: !326, line: 144, baseType: !475, size: 16, offset: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !472, file: !326, line: 145, baseType: !475, size: 16, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !472, file: !326, line: 146, baseType: !475, size: 16, offset: 48)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !449, file: !73, line: 179, baseType: !471, size: 64, offset: 640)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !449, file: !73, line: 180, baseType: !471, size: 64, offset: 704)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !449, file: !73, line: 181, baseType: !471, size: 64, offset: 768)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !449, file: !73, line: 184, baseType: !484, size: 64, offset: 832)
!484 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !449, file: !73, line: 187, baseType: !486, size: 768, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !488)
!488 = !{!489, !496, !497, !498}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !487, file: !73, line: 124, baseType: !490, size: 192)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !492)
!492 = !{!493, !494, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !491, file: !73, line: 98, baseType: !484, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !491, file: !73, line: 99, baseType: !484, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !491, file: !73, line: 100, baseType: !484, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !487, file: !73, line: 125, baseType: !490, size: 192, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !487, file: !73, line: 126, baseType: !490, size: 192, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !487, file: !73, line: 127, baseType: !490, size: 192, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !449, file: !73, line: 190, baseType: !500, size: 32, offset: 1664)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !449, file: !73, line: 193, baseType: !502, size: 64, offset: 1728)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !449, file: !73, line: 196, baseType: !504, size: 32, offset: 1792)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !449, file: !73, line: 199, baseType: !506, size: 64, offset: 1856)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !449, file: !73, line: 200, baseType: !506, size: 64, offset: 1920)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !449, file: !73, line: 201, baseType: !506, size: 64, offset: 1984)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !449, file: !73, line: 204, baseType: !511, size: 64, offset: 2048)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !512, line: 77, baseType: !513)
!512 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !514, line: 193, baseType: !515)
!514 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!515 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !449, file: !73, line: 207, baseType: !484, size: 64, offset: 2112)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !449, file: !73, line: 208, baseType: !484, size: 64, offset: 2176)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !449, file: !73, line: 211, baseType: !519, size: 256, offset: 2240)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !521)
!521 = !{!522, !523, !524, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !520, file: !153, line: 124, baseType: !458, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !520, file: !153, line: 125, baseType: !458, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !520, file: !153, line: 128, baseType: !511, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !520, file: !153, line: 129, baseType: !511, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !449, file: !73, line: 212, baseType: !519, size: 256, offset: 2496)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !449, file: !73, line: 213, baseType: !519, size: 256, offset: 2752)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !449, file: !73, line: 216, baseType: !484, size: 64, offset: 3008)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !449, file: !73, line: 217, baseType: !484, size: 64, offset: 3072)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !449, file: !73, line: 218, baseType: !484, size: 64, offset: 3136)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !449, file: !73, line: 221, baseType: !532, size: 32, offset: 3200)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !449, file: !73, line: 224, baseType: !534, size: 32, offset: 3232)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !449, file: !73, line: 227, baseType: !536, size: 32, offset: 3264)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !449, file: !73, line: 230, baseType: !538, size: 32, offset: 3296)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !449, file: !73, line: 233, baseType: !540, size: 32, offset: 3328)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !449, file: !73, line: 236, baseType: !542, size: 32, offset: 3360)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !449, file: !73, line: 239, baseType: !544, size: 64, offset: 3392)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !449, file: !73, line: 242, baseType: !458, size: 64, offset: 3456)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !449, file: !73, line: 243, baseType: !458, size: 64, offset: 3520)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !449, file: !73, line: 246, baseType: !511, size: 64, offset: 3584)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !449, file: !73, line: 249, baseType: !458, size: 64, offset: 3648)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !449, file: !73, line: 250, baseType: !458, size: 64, offset: 3712)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !449, file: !73, line: 253, baseType: !511, size: 64, offset: 3776)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !449, file: !73, line: 256, baseType: !552, size: 192, offset: 3840)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !553, line: 68, baseType: !554)
!553 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !553, line: 62, size: 192, elements: !555)
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !554, file: !553, line: 65, baseType: !484, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !554, file: !553, line: 66, baseType: !484, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !554, file: !553, line: 67, baseType: !484, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !449, file: !73, line: 259, baseType: !560, size: 512, offset: 4032)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !562)
!562 = !{!563, !570, !571, !573}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !561, file: !247, line: 43, baseType: !564, size: 192)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !566)
!566 = !{!567, !568, !569}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !565, file: !247, line: 35, baseType: !484, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !565, file: !247, line: 36, baseType: !484, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !565, file: !247, line: 37, baseType: !484, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !561, file: !247, line: 44, baseType: !564, size: 192, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !561, file: !247, line: 47, baseType: !572, size: 32, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !561, file: !247, line: 50, baseType: !458, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !449, file: !73, line: 262, baseType: !575, size: 64, offset: 4544)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !576, line: 26, baseType: !577)
!576 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!463, !580, !582, !585, !502}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !584)
!584 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !587)
!587 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !449, file: !73, line: 265, baseType: !502, size: 64, offset: 4608)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !449, file: !73, line: 266, baseType: !502, size: 64, offset: 4672)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !449, file: !73, line: 267, baseType: !502, size: 64, offset: 4736)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !449, file: !73, line: 270, baseType: !592, size: 64, offset: 4800)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !449, file: !73, line: 273, baseType: !596, size: 64, offset: 4864)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !449, file: !73, line: 276, baseType: !600, size: 32768, offset: 4928)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 32768, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 4096)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !449, file: !73, line: 277, baseType: !600, size: 32768, offset: 37696)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !449, file: !73, line: 278, baseType: !600, size: 32768, offset: 70464)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !449, file: !73, line: 281, baseType: !458, size: 64, offset: 103232)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !449, file: !73, line: 282, baseType: !458, size: 64, offset: 103296)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !449, file: !73, line: 285, baseType: !608, size: 448, offset: 103360)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !610)
!610 = !{!611, !613, !615, !616, !617, !618, !619, !624}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !609, file: !253, line: 105, baseType: !612, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !609, file: !253, line: 108, baseType: !614, size: 32, offset: 32)
!614 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !609, file: !253, line: 111, baseType: !506, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !609, file: !253, line: 112, baseType: !506, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !609, file: !253, line: 115, baseType: !502, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !609, file: !253, line: 118, baseType: !463, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !609, file: !253, line: 121, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !622, line: 26, baseType: !623)
!622 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !622, line: 25, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !609, file: !253, line: 124, baseType: !458, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !449, file: !73, line: 288, baseType: !463, size: 32, offset: 103808)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !449, file: !73, line: 291, baseType: !627, size: 64, offset: 103872)
!627 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !511)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !449, file: !73, line: 294, baseType: !620, size: 64, offset: 103936)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !449, file: !73, line: 297, baseType: !630, size: 256, offset: 104000)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !632)
!632 = !{!633, !634, !635, !638}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !89, line: 30, baseType: !506, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !631, file: !89, line: 33, baseType: !458, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !631, file: !89, line: 36, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !631, file: !89, line: 39, baseType: !458, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !449, file: !73, line: 298, baseType: !630, size: 256, offset: 104256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !449, file: !73, line: 299, baseType: !641, size: 64, offset: 104512)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !449, file: !73, line: 302, baseType: !458, size: 64, offset: 104576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !449, file: !73, line: 305, baseType: !458, size: 64, offset: 104640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !449, file: !73, line: 308, baseType: !544, size: 64, offset: 104704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !449, file: !73, line: 309, baseType: !544, size: 64, offset: 104768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !73, line: 310, baseType: !544, size: 64, offset: 104832)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !449, file: !73, line: 313, baseType: !648, size: 32, offset: 104896)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !449, file: !73, line: 316, baseType: !463, size: 32, offset: 104928)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !449, file: !73, line: 319, baseType: !471, size: 64, offset: 104960)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !449, file: !73, line: 322, baseType: !544, size: 64, offset: 105024)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !449, file: !73, line: 325, baseType: !519, size: 256, offset: 105088)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !449, file: !73, line: 328, baseType: !502, size: 64, offset: 105344)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !449, file: !73, line: 329, baseType: !502, size: 64, offset: 105408)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !73, line: 332, baseType: !656, size: 32, offset: 105472)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !449, file: !73, line: 335, baseType: !463, size: 32, offset: 105504)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !449, file: !73, line: 338, baseType: !586, size: 64, offset: 105536)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !449, file: !73, line: 341, baseType: !463, size: 32, offset: 105600)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !449, file: !73, line: 344, baseType: !458, size: 64, offset: 105664)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !449, file: !73, line: 347, baseType: !662, size: 64, offset: 105728)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !663, line: 7, baseType: !664)
!663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !514, line: 160, baseType: !515)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !449, file: !73, line: 350, baseType: !666, size: 32, offset: 105792)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !449, file: !73, line: 353, baseType: !458, size: 64, offset: 105856)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !475)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !676)
!676 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelStatistics", file: !680, line: 44, baseType: !681)
!680 = !DIFile(filename: "apps/538.imagick_r/src/magick/statistic.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cc0a772b8e2f514bf6d24321fcc65365")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChannelStatistics", file: !680, line: 27, size: 768, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !681, file: !680, line: 30, baseType: !458, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "minima", scope: !681, file: !680, line: 33, baseType: !484, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "maxima", scope: !681, file: !680, line: 34, baseType: !484, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sum", scope: !681, file: !680, line: 35, baseType: !484, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sum_squared", scope: !681, file: !680, line: 36, baseType: !484, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sum_cubed", scope: !681, file: !680, line: 37, baseType: !484, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sum_fourth_power", scope: !681, file: !680, line: 38, baseType: !484, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !681, file: !680, line: 39, baseType: !484, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "variance", scope: !681, file: !680, line: 40, baseType: !484, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "standard_deviation", scope: !681, file: !680, line: 41, baseType: !484, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "kurtosis", scope: !681, file: !680, line: 42, baseType: !484, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "skewness", scope: !681, file: !680, line: 43, baseType: !484, size: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelPerceptualHash", file: !680, line: 66, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChannelPerceptualHash", file: !680, line: 61, size: 4096, elements: !698)
!698 = !{!699, !703}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !697, file: !680, line: 64, baseType: !700, size: 2048)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 2048, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "Q", scope: !697, file: !680, line: 65, baseType: !700, size: 2048, offset: 2048)
!704 = !{i32 7, !"Dwarf Version", i32 5}
!705 = !{i32 2, !"Debug Info Version", i32 3}
!706 = !{i32 1, !"wchar_size", i32 4}
!707 = !{i32 7, !"PIC Level", i32 2}
!708 = !{i32 7, !"PIE Level", i32 2}
!709 = !{i32 7, !"uwtable", i32 2}
!710 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!711 = distinct !DISubprogram(name: "CompareImages", scope: !712, file: !712, line: 111, type: !713, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !720)
!712 = !DIFile(filename: "apps/538.imagick_r/src/magick/compare.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "94c722aeea5787f775792b3bc032c58d")
!713 = !DISubroutineType(types: !714)
!714 = !{!447, !447, !715, !717, !673, !719}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "MetricType", file: !369, line: 41, baseType: !368)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!720 = !{!721, !722, !723, !724, !725, !726}
!721 = !DILocalVariable(name: "image", arg: 1, scope: !711, file: !712, line: 111, type: !447)
!722 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !711, file: !712, line: 111, type: !715)
!723 = !DILocalVariable(name: "metric", arg: 3, scope: !711, file: !712, line: 112, type: !717)
!724 = !DILocalVariable(name: "distortion", arg: 4, scope: !711, file: !712, line: 112, type: !673)
!725 = !DILocalVariable(name: "exception", arg: 5, scope: !711, file: !712, line: 112, type: !719)
!726 = !DILocalVariable(name: "highlight_image", scope: !711, file: !712, line: 115, type: !447)
!727 = !DILocation(line: 0, scope: !711)
!728 = !DILocation(line: 117, column: 19, scope: !711)
!729 = !DILocation(line: 119, column: 3, scope: !711)
!730 = distinct !DISubprogram(name: "CompareImageChannels", scope: !712, file: !712, line: 122, type: !731, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !735)
!731 = !DISubroutineType(types: !732)
!732 = !{!447, !447, !715, !733, !717, !673, !719}
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !383)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !747, !748, !749, !750, !751, !752, !753, !767, !768, !769, !770, !774, !775, !776, !778, !779, !781, !782, !784, !786, !787}
!736 = !DILocalVariable(name: "image", arg: 1, scope: !730, file: !712, line: 122, type: !447)
!737 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !730, file: !712, line: 123, type: !715)
!738 = !DILocalVariable(name: "channel", arg: 3, scope: !730, file: !712, line: 123, type: !733)
!739 = !DILocalVariable(name: "metric", arg: 4, scope: !730, file: !712, line: 124, type: !717)
!740 = !DILocalVariable(name: "distortion", arg: 5, scope: !730, file: !712, line: 124, type: !673)
!741 = !DILocalVariable(name: "exception", arg: 6, scope: !730, file: !712, line: 124, type: !719)
!742 = !DILocalVariable(name: "highlight_view", scope: !730, file: !712, line: 127, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !745, line: 50, baseType: !746)
!745 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!747 = !DILocalVariable(name: "image_view", scope: !730, file: !712, line: 128, type: !743)
!748 = !DILocalVariable(name: "reconstruct_view", scope: !730, file: !712, line: 129, type: !743)
!749 = !DILocalVariable(name: "artifact", scope: !730, file: !712, line: 132, type: !580)
!750 = !DILocalVariable(name: "difference_image", scope: !730, file: !712, line: 135, type: !447)
!751 = !DILocalVariable(name: "highlight_image", scope: !730, file: !712, line: 136, type: !447)
!752 = !DILocalVariable(name: "status", scope: !730, file: !712, line: 139, type: !463)
!753 = !DILocalVariable(name: "highlight", scope: !730, file: !712, line: 142, type: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !755, file: !326, line: 107, baseType: !452, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !755, file: !326, line: 110, baseType: !454, size: 32, offset: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !755, file: !326, line: 113, baseType: !463, size: 32, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !755, file: !326, line: 116, baseType: !484, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !755, file: !326, line: 119, baseType: !458, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !755, file: !326, line: 122, baseType: !675, size: 32, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !755, file: !326, line: 123, baseType: !675, size: 32, offset: 288)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !755, file: !326, line: 124, baseType: !675, size: 32, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !755, file: !326, line: 125, baseType: !675, size: 32, offset: 352)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !755, file: !326, line: 126, baseType: !675, size: 32, offset: 384)
!767 = !DILocalVariable(name: "lowlight", scope: !730, file: !712, line: 143, type: !754)
!768 = !DILocalVariable(name: "zero", scope: !730, file: !712, line: 144, type: !754)
!769 = !DILocalVariable(name: "y", scope: !730, file: !712, line: 147, type: !511)
!770 = !DILocalVariable(name: "sync", scope: !771, file: !712, line: 214, type: !463)
!771 = distinct !DILexicalBlock(scope: !772, file: !712, line: 212, column: 3)
!772 = distinct !DILexicalBlock(scope: !773, file: !712, line: 211, column: 3)
!773 = distinct !DILexicalBlock(scope: !730, file: !712, line: 211, column: 3)
!774 = !DILocalVariable(name: "pixel", scope: !771, file: !712, line: 217, type: !754)
!775 = !DILocalVariable(name: "reconstruct_pixel", scope: !771, file: !712, line: 218, type: !754)
!776 = !DILocalVariable(name: "indexes", scope: !771, file: !712, line: 221, type: !777)
!777 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !670)
!778 = !DILocalVariable(name: "reconstruct_indexes", scope: !771, file: !712, line: 222, type: !777)
!779 = !DILocalVariable(name: "p", scope: !771, file: !712, line: 225, type: !780)
!780 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !668)
!781 = !DILocalVariable(name: "q", scope: !771, file: !712, line: 226, type: !780)
!782 = !DILocalVariable(name: "highlight_indexes", scope: !771, file: !712, line: 229, type: !783)
!783 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !677)
!784 = !DILocalVariable(name: "r", scope: !771, file: !712, line: 232, type: !785)
!785 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !470)
!786 = !DILocalVariable(name: "x", scope: !771, file: !712, line: 235, type: !511)
!787 = !DILocalVariable(name: "difference", scope: !788, file: !712, line: 258, type: !791)
!788 = distinct !DILexicalBlock(scope: !789, file: !712, line: 256, column: 5)
!789 = distinct !DILexicalBlock(scope: !790, file: !712, line: 255, column: 5)
!790 = distinct !DILexicalBlock(scope: !771, file: !712, line: 255, column: 5)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!792 = !DILocation(line: 0, scope: !730)
!793 = !DILocation(line: 141, column: 3, scope: !730)
!794 = !DILocation(line: 142, column: 5, scope: !730)
!795 = !DILocation(line: 143, column: 5, scope: !730)
!796 = !DILocation(line: 144, column: 5, scope: !730)
!797 = !DILocation(line: 151, column: 14, scope: !798)
!798 = distinct !DILexicalBlock(scope: !730, file: !712, line: 151, column: 7)
!799 = !{!800, !801, i64 12976}
!800 = !{!"_Image", !801, i64 0, !801, i64 4, !801, i64 8, !803, i64 16, !801, i64 24, !801, i64 28, !801, i64 32, !803, i64 40, !803, i64 48, !803, i64 56, !803, i64 64, !804, i64 72, !805, i64 80, !805, i64 88, !805, i64 96, !807, i64 104, !808, i64 112, !801, i64 208, !804, i64 216, !801, i64 224, !804, i64 232, !804, i64 240, !804, i64 248, !803, i64 256, !807, i64 264, !807, i64 272, !810, i64 280, !810, i64 312, !810, i64 344, !807, i64 376, !807, i64 384, !807, i64 392, !801, i64 400, !801, i64 404, !801, i64 408, !801, i64 412, !801, i64 416, !801, i64 420, !804, i64 424, !803, i64 432, !803, i64 440, !803, i64 448, !803, i64 456, !803, i64 464, !803, i64 472, !811, i64 480, !812, i64 504, !804, i64 568, !804, i64 576, !804, i64 584, !804, i64 592, !804, i64 600, !804, i64 608, !801, i64 616, !801, i64 4712, !801, i64 8808, !803, i64 12904, !803, i64 12912, !814, i64 12920, !801, i64 12976, !803, i64 12984, !804, i64 12992, !816, i64 13000, !816, i64 13032, !804, i64 13064, !803, i64 13072, !803, i64 13080, !804, i64 13088, !804, i64 13096, !804, i64 13104, !801, i64 13112, !801, i64 13116, !805, i64 13120, !804, i64 13128, !810, i64 13136, !804, i64 13168, !804, i64 13176, !801, i64 13184, !801, i64 13188, !817, i64 13192, !801, i64 13200, !803, i64 13208, !803, i64 13216, !801, i64 13224, !803, i64 13232}
!801 = !{!"omnipotent char", !802, i64 0}
!802 = !{!"Simple C/C++ TBAA"}
!803 = !{!"long", !801, i64 0}
!804 = !{!"any pointer", !801, i64 0}
!805 = !{!"_PixelPacket", !806, i64 0, !806, i64 2, !806, i64 4, !806, i64 6}
!806 = !{!"short", !801, i64 0}
!807 = !{!"double", !801, i64 0}
!808 = !{!"_ChromaticityInfo", !809, i64 0, !809, i64 24, !809, i64 48, !809, i64 72}
!809 = !{!"_PrimaryInfo", !807, i64 0, !807, i64 8, !807, i64 16}
!810 = !{!"_RectangleInfo", !803, i64 0, !803, i64 8, !803, i64 16, !803, i64 24}
!811 = !{!"_ErrorInfo", !807, i64 0, !807, i64 8, !807, i64 16}
!812 = !{!"_TimerInfo", !813, i64 0, !813, i64 24, !801, i64 48, !803, i64 56}
!813 = !{!"_Timer", !807, i64 0, !807, i64 8, !807, i64 16}
!814 = !{!"_ExceptionInfo", !801, i64 0, !815, i64 4, !804, i64 8, !804, i64 16, !804, i64 24, !801, i64 32, !804, i64 40, !803, i64 48}
!815 = !{!"int", !801, i64 0}
!816 = !{!"_ProfileInfo", !804, i64 0, !803, i64 8, !804, i64 16, !803, i64 24}
!817 = !{!"long long", !801, i64 0}
!818 = !DILocation(line: 151, column: 20, scope: !798)
!819 = !DILocation(line: 151, column: 7, scope: !730)
!820 = !DILocation(line: 156, column: 14, scope: !730)
!821 = !{!807, !807, i64 0}
!822 = !DILocation(line: 157, column: 7, scope: !730)
!823 = !DILocation(line: 152, column: 68, scope: !798)
!824 = !DILocation(line: 152, column: 12, scope: !798)
!825 = !DILocation(line: 157, column: 14, scope: !826)
!826 = distinct !DILexicalBlock(scope: !730, file: !712, line: 157, column: 7)
!827 = !DILocation(line: 157, column: 20, scope: !826)
!828 = !DILocation(line: 158, column: 12, scope: !826)
!829 = !DILocation(line: 158, column: 5, scope: !826)
!830 = !DILocation(line: 159, column: 14, scope: !831)
!831 = distinct !DILexicalBlock(scope: !730, file: !712, line: 159, column: 7)
!832 = !DILocation(line: 159, column: 7, scope: !730)
!833 = !DILocation(line: 163, column: 10, scope: !730)
!834 = !DILocation(line: 160, column: 29, scope: !835)
!835 = distinct !DILexicalBlock(scope: !831, file: !712, line: 160, column: 9)
!836 = !{!800, !803, i64 40}
!837 = !DILocation(line: 160, column: 47, scope: !835)
!838 = !DILocation(line: 160, column: 37, scope: !835)
!839 = !DILocation(line: 160, column: 56, scope: !835)
!840 = !DILocation(line: 161, column: 29, scope: !835)
!841 = !{!800, !803, i64 48}
!842 = !DILocation(line: 161, column: 44, scope: !835)
!843 = !DILocation(line: 161, column: 34, scope: !835)
!844 = !DILocation(line: 160, column: 9, scope: !831)
!845 = !DILocation(line: 162, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !835, file: !712, line: 162, column: 7)
!847 = !DILocation(line: 165, column: 14, scope: !848)
!848 = distinct !DILexicalBlock(scope: !730, file: !712, line: 165, column: 7)
!849 = !DILocation(line: 165, column: 7, scope: !730)
!850 = !DILocation(line: 167, column: 20, scope: !730)
!851 = !DILocation(line: 168, column: 24, scope: !852)
!852 = distinct !DILexicalBlock(scope: !730, file: !712, line: 168, column: 7)
!853 = !DILocation(line: 168, column: 7, scope: !730)
!854 = !DILocation(line: 170, column: 10, scope: !730)
!855 = !DILocation(line: 171, column: 43, scope: !730)
!856 = !DILocation(line: 171, column: 58, scope: !730)
!857 = !DILocation(line: 171, column: 19, scope: !730)
!858 = !DILocation(line: 173, column: 23, scope: !859)
!859 = distinct !DILexicalBlock(scope: !730, file: !712, line: 173, column: 7)
!860 = !DILocation(line: 173, column: 7, scope: !730)
!861 = !DILocation(line: 175, column: 24, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !712, line: 174, column: 5)
!863 = !DILocation(line: 176, column: 7, scope: !862)
!864 = !DILocation(line: 178, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !730, file: !712, line: 178, column: 7)
!866 = !DILocation(line: 178, column: 57, scope: !865)
!867 = !DILocation(line: 178, column: 7, scope: !730)
!868 = !DILocation(line: 180, column: 52, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !712, line: 179, column: 5)
!870 = !DILocation(line: 180, column: 7, scope: !869)
!871 = !DILocation(line: 181, column: 24, scope: !869)
!872 = !DILocation(line: 182, column: 23, scope: !869)
!873 = !DILocation(line: 183, column: 7, scope: !869)
!874 = !DILocation(line: 185, column: 10, scope: !730)
!875 = !DILocation(line: 186, column: 10, scope: !730)
!876 = !DILocation(line: 187, column: 12, scope: !730)
!877 = !DILocation(line: 188, column: 16, scope: !878)
!878 = distinct !DILexicalBlock(scope: !730, file: !712, line: 188, column: 7)
!879 = !DILocation(line: 188, column: 7, scope: !730)
!880 = !DILocation(line: 189, column: 12, scope: !878)
!881 = !DILocation(line: 189, column: 5, scope: !878)
!882 = !DILocation(line: 190, column: 10, scope: !730)
!883 = !DILocation(line: 191, column: 12, scope: !730)
!884 = !DILocation(line: 192, column: 16, scope: !885)
!885 = distinct !DILexicalBlock(scope: !730, file: !712, line: 192, column: 7)
!886 = !DILocation(line: 192, column: 7, scope: !730)
!887 = !DILocation(line: 193, column: 12, scope: !885)
!888 = !DILocation(line: 193, column: 5, scope: !885)
!889 = !DILocation(line: 194, column: 24, scope: !890)
!890 = distinct !DILexicalBlock(scope: !730, file: !712, line: 194, column: 7)
!891 = !{!800, !801, i64 4}
!892 = !DILocation(line: 194, column: 35, scope: !890)
!893 = !DILocation(line: 194, column: 7, scope: !730)
!894 = !DILocalVariable(name: "pixel", arg: 1, scope: !895, file: !896, line: 30, type: !899)
!895 = distinct !DISubprogram(name: "ConvertRGBToCMYK", scope: !896, file: !896, line: 30, type: !897, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !900)
!896 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!897 = !DISubroutineType(types: !898)
!898 = !{null, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!900 = !{!894, !901, !902, !903, !904, !905, !906, !907}
!901 = !DILocalVariable(name: "black", scope: !895, file: !896, line: 33, type: !675)
!902 = !DILocalVariable(name: "blue", scope: !895, file: !896, line: 34, type: !675)
!903 = !DILocalVariable(name: "cyan", scope: !895, file: !896, line: 35, type: !675)
!904 = !DILocalVariable(name: "green", scope: !895, file: !896, line: 36, type: !675)
!905 = !DILocalVariable(name: "magenta", scope: !895, file: !896, line: 37, type: !675)
!906 = !DILocalVariable(name: "red", scope: !895, file: !896, line: 38, type: !675)
!907 = !DILocalVariable(name: "yellow", scope: !895, file: !896, line: 39, type: !675)
!908 = !DILocation(line: 0, scope: !895, inlinedAt: !909)
!909 = distinct !DILocation(line: 196, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !890, file: !712, line: 195, column: 5)
!911 = !DILocation(line: 41, column: 14, scope: !912, inlinedAt: !909)
!912 = distinct !DILexicalBlock(scope: !895, file: !896, line: 41, column: 7)
!913 = !{!914, !801, i64 4}
!914 = !{!"_MagickPixelPacket", !801, i64 0, !801, i64 4, !801, i64 8, !807, i64 16, !803, i64 24, !915, i64 32, !915, i64 36, !915, i64 40, !915, i64 44, !915, i64 48}
!915 = !{!"float", !801, i64 0}
!916 = !DILocation(line: 41, column: 25, scope: !912, inlinedAt: !909)
!917 = !DILocation(line: 0, scope: !912, inlinedAt: !909)
!918 = !{!914, !915, i64 32}
!919 = !DILocation(line: 41, column: 7, scope: !895, inlinedAt: !909)
!920 = !DILocation(line: 43, column: 24, scope: !921, inlinedAt: !909)
!921 = distinct !DILexicalBlock(scope: !912, file: !896, line: 42, column: 5)
!922 = !DILocation(line: 43, column: 23, scope: !921, inlinedAt: !909)
!923 = !DILocation(line: 43, column: 11, scope: !921, inlinedAt: !909)
!924 = !DILocation(line: 44, column: 33, scope: !921, inlinedAt: !909)
!925 = !{!914, !915, i64 36}
!926 = !DILocation(line: 44, column: 26, scope: !921, inlinedAt: !909)
!927 = !DILocation(line: 44, column: 25, scope: !921, inlinedAt: !909)
!928 = !DILocation(line: 44, column: 13, scope: !921, inlinedAt: !909)
!929 = !DILocation(line: 45, column: 32, scope: !921, inlinedAt: !909)
!930 = !{!914, !915, i64 40}
!931 = !DILocation(line: 45, column: 25, scope: !921, inlinedAt: !909)
!932 = !DILocation(line: 45, column: 24, scope: !921, inlinedAt: !909)
!933 = !DILocation(line: 45, column: 12, scope: !921, inlinedAt: !909)
!934 = !DILocation(line: 46, column: 5, scope: !921, inlinedAt: !909)
!935 = !DILocation(line: 49, column: 11, scope: !936, inlinedAt: !909)
!936 = distinct !DILexicalBlock(scope: !912, file: !896, line: 48, column: 5)
!937 = !DILocation(line: 50, column: 37, scope: !936, inlinedAt: !909)
!938 = !DILocation(line: 50, column: 13, scope: !936, inlinedAt: !909)
!939 = !DILocation(line: 51, column: 36, scope: !936, inlinedAt: !909)
!940 = !DILocation(line: 51, column: 12, scope: !936, inlinedAt: !909)
!941 = !DILocation(line: 53, column: 8, scope: !942, inlinedAt: !909)
!942 = distinct !DILexicalBlock(scope: !895, file: !896, line: 53, column: 7)
!943 = !DILocation(line: 53, column: 18, scope: !942, inlinedAt: !909)
!944 = !DILocation(line: 53, column: 35, scope: !942, inlinedAt: !909)
!945 = !DILocation(line: 53, column: 39, scope: !942, inlinedAt: !909)
!946 = !DILocation(line: 53, column: 51, scope: !942, inlinedAt: !909)
!947 = !DILocation(line: 53, column: 68, scope: !942, inlinedAt: !909)
!948 = !DILocation(line: 54, column: 8, scope: !942, inlinedAt: !909)
!949 = !DILocation(line: 54, column: 19, scope: !942, inlinedAt: !909)
!950 = !DILocation(line: 53, column: 7, scope: !895, inlinedAt: !909)
!951 = !DILocation(line: 59, column: 8, scope: !895, inlinedAt: !909)
!952 = !DILocation(line: 60, column: 11, scope: !895, inlinedAt: !909)
!953 = !DILocation(line: 61, column: 10, scope: !895, inlinedAt: !909)
!954 = !DILocation(line: 63, column: 15, scope: !955, inlinedAt: !909)
!955 = distinct !DILexicalBlock(scope: !895, file: !896, line: 63, column: 7)
!956 = !DILocation(line: 63, column: 7, scope: !895, inlinedAt: !909)
!957 = !DILocation(line: 64, column: 5, scope: !955, inlinedAt: !909)
!958 = !DILocation(line: 65, column: 14, scope: !959, inlinedAt: !909)
!959 = distinct !DILexicalBlock(scope: !895, file: !896, line: 65, column: 7)
!960 = !DILocation(line: 65, column: 7, scope: !895, inlinedAt: !909)
!961 = !DILocation(line: 66, column: 5, scope: !959, inlinedAt: !909)
!962 = !DILocation(line: 67, column: 31, scope: !895, inlinedAt: !909)
!963 = !DILocation(line: 67, column: 26, scope: !895, inlinedAt: !909)
!964 = !DILocation(line: 67, column: 44, scope: !895, inlinedAt: !909)
!965 = !DILocation(line: 67, column: 43, scope: !895, inlinedAt: !909)
!966 = !DILocation(line: 67, column: 38, scope: !895, inlinedAt: !909)
!967 = !DILocation(line: 67, column: 8, scope: !895, inlinedAt: !909)
!968 = !DILocation(line: 68, column: 37, scope: !895, inlinedAt: !909)
!969 = !DILocation(line: 68, column: 29, scope: !895, inlinedAt: !909)
!970 = !DILocation(line: 68, column: 44, scope: !895, inlinedAt: !909)
!971 = !DILocation(line: 68, column: 11, scope: !895, inlinedAt: !909)
!972 = !DILocation(line: 69, column: 35, scope: !895, inlinedAt: !909)
!973 = !DILocation(line: 69, column: 28, scope: !895, inlinedAt: !909)
!974 = !DILocation(line: 69, column: 42, scope: !895, inlinedAt: !909)
!975 = !DILocation(line: 69, column: 10, scope: !895, inlinedAt: !909)
!976 = !DILocation(line: 70, column: 20, scope: !895, inlinedAt: !909)
!977 = !DILocation(line: 71, column: 26, scope: !895, inlinedAt: !909)
!978 = !DILocation(line: 71, column: 13, scope: !895, inlinedAt: !909)
!979 = !DILocation(line: 72, column: 28, scope: !895, inlinedAt: !909)
!980 = !DILocation(line: 72, column: 10, scope: !895, inlinedAt: !909)
!981 = !DILocation(line: 72, column: 15, scope: !895, inlinedAt: !909)
!982 = !DILocation(line: 73, column: 27, scope: !895, inlinedAt: !909)
!983 = !DILocation(line: 73, column: 10, scope: !895, inlinedAt: !909)
!984 = !DILocation(line: 73, column: 14, scope: !895, inlinedAt: !909)
!985 = !DILocation(line: 74, column: 28, scope: !895, inlinedAt: !909)
!986 = !DILocation(line: 75, column: 1, scope: !895, inlinedAt: !909)
!987 = !{!914, !915, i64 48}
!988 = !DILocation(line: 0, scope: !895, inlinedAt: !989)
!989 = distinct !DILocation(line: 197, column: 7, scope: !910)
!990 = !DILocation(line: 41, column: 14, scope: !912, inlinedAt: !989)
!991 = !DILocation(line: 41, column: 25, scope: !912, inlinedAt: !989)
!992 = !DILocation(line: 0, scope: !912, inlinedAt: !989)
!993 = !DILocation(line: 41, column: 7, scope: !895, inlinedAt: !989)
!994 = !DILocation(line: 43, column: 24, scope: !921, inlinedAt: !989)
!995 = !DILocation(line: 43, column: 23, scope: !921, inlinedAt: !989)
!996 = !DILocation(line: 43, column: 11, scope: !921, inlinedAt: !989)
!997 = !DILocation(line: 44, column: 33, scope: !921, inlinedAt: !989)
!998 = !DILocation(line: 44, column: 26, scope: !921, inlinedAt: !989)
!999 = !DILocation(line: 44, column: 25, scope: !921, inlinedAt: !989)
!1000 = !DILocation(line: 44, column: 13, scope: !921, inlinedAt: !989)
!1001 = !DILocation(line: 45, column: 32, scope: !921, inlinedAt: !989)
!1002 = !DILocation(line: 45, column: 25, scope: !921, inlinedAt: !989)
!1003 = !DILocation(line: 45, column: 24, scope: !921, inlinedAt: !989)
!1004 = !DILocation(line: 45, column: 12, scope: !921, inlinedAt: !989)
!1005 = !DILocation(line: 46, column: 5, scope: !921, inlinedAt: !989)
!1006 = !DILocation(line: 49, column: 11, scope: !936, inlinedAt: !989)
!1007 = !DILocation(line: 50, column: 37, scope: !936, inlinedAt: !989)
!1008 = !DILocation(line: 50, column: 13, scope: !936, inlinedAt: !989)
!1009 = !DILocation(line: 51, column: 36, scope: !936, inlinedAt: !989)
!1010 = !DILocation(line: 51, column: 12, scope: !936, inlinedAt: !989)
!1011 = !DILocation(line: 53, column: 8, scope: !942, inlinedAt: !989)
!1012 = !DILocation(line: 53, column: 18, scope: !942, inlinedAt: !989)
!1013 = !DILocation(line: 53, column: 35, scope: !942, inlinedAt: !989)
!1014 = !DILocation(line: 53, column: 39, scope: !942, inlinedAt: !989)
!1015 = !DILocation(line: 53, column: 51, scope: !942, inlinedAt: !989)
!1016 = !DILocation(line: 53, column: 68, scope: !942, inlinedAt: !989)
!1017 = !DILocation(line: 54, column: 8, scope: !942, inlinedAt: !989)
!1018 = !DILocation(line: 54, column: 19, scope: !942, inlinedAt: !989)
!1019 = !DILocation(line: 53, column: 7, scope: !895, inlinedAt: !989)
!1020 = !DILocation(line: 59, column: 8, scope: !895, inlinedAt: !989)
!1021 = !DILocation(line: 60, column: 11, scope: !895, inlinedAt: !989)
!1022 = !DILocation(line: 61, column: 10, scope: !895, inlinedAt: !989)
!1023 = !DILocation(line: 63, column: 15, scope: !955, inlinedAt: !989)
!1024 = !DILocation(line: 63, column: 7, scope: !895, inlinedAt: !989)
!1025 = !DILocation(line: 64, column: 5, scope: !955, inlinedAt: !989)
!1026 = !DILocation(line: 65, column: 14, scope: !959, inlinedAt: !989)
!1027 = !DILocation(line: 65, column: 7, scope: !895, inlinedAt: !989)
!1028 = !DILocation(line: 66, column: 5, scope: !959, inlinedAt: !989)
!1029 = !DILocation(line: 67, column: 31, scope: !895, inlinedAt: !989)
!1030 = !DILocation(line: 67, column: 26, scope: !895, inlinedAt: !989)
!1031 = !DILocation(line: 67, column: 44, scope: !895, inlinedAt: !989)
!1032 = !DILocation(line: 67, column: 43, scope: !895, inlinedAt: !989)
!1033 = !DILocation(line: 67, column: 38, scope: !895, inlinedAt: !989)
!1034 = !DILocation(line: 67, column: 8, scope: !895, inlinedAt: !989)
!1035 = !DILocation(line: 68, column: 37, scope: !895, inlinedAt: !989)
!1036 = !DILocation(line: 68, column: 29, scope: !895, inlinedAt: !989)
!1037 = !DILocation(line: 68, column: 44, scope: !895, inlinedAt: !989)
!1038 = !DILocation(line: 68, column: 11, scope: !895, inlinedAt: !989)
!1039 = !DILocation(line: 69, column: 35, scope: !895, inlinedAt: !989)
!1040 = !DILocation(line: 69, column: 28, scope: !895, inlinedAt: !989)
!1041 = !DILocation(line: 69, column: 42, scope: !895, inlinedAt: !989)
!1042 = !DILocation(line: 69, column: 10, scope: !895, inlinedAt: !989)
!1043 = !DILocation(line: 70, column: 20, scope: !895, inlinedAt: !989)
!1044 = !DILocation(line: 71, column: 26, scope: !895, inlinedAt: !989)
!1045 = !DILocation(line: 71, column: 13, scope: !895, inlinedAt: !989)
!1046 = !DILocation(line: 72, column: 28, scope: !895, inlinedAt: !989)
!1047 = !DILocation(line: 72, column: 10, scope: !895, inlinedAt: !989)
!1048 = !DILocation(line: 72, column: 15, scope: !895, inlinedAt: !989)
!1049 = !DILocation(line: 73, column: 27, scope: !895, inlinedAt: !989)
!1050 = !DILocation(line: 73, column: 10, scope: !895, inlinedAt: !989)
!1051 = !DILocation(line: 73, column: 14, scope: !895, inlinedAt: !989)
!1052 = !DILocation(line: 74, column: 28, scope: !895, inlinedAt: !989)
!1053 = !DILocation(line: 75, column: 1, scope: !895, inlinedAt: !989)
!1054 = !DILocation(line: 198, column: 5, scope: !910)
!1055 = !DILocation(line: 203, column: 3, scope: !730)
!1056 = !DILocation(line: 204, column: 14, scope: !730)
!1057 = !DILocation(line: 205, column: 20, scope: !730)
!1058 = !DILocation(line: 206, column: 18, scope: !730)
!1059 = !DILocation(line: 211, column: 34, scope: !772)
!1060 = !DILocation(line: 211, column: 15, scope: !772)
!1061 = !DILocation(line: 211, column: 3, scope: !773)
!1062 = !DILocation(line: 216, column: 5, scope: !771)
!1063 = !DILocation(line: 217, column: 7, scope: !771)
!1064 = !DILocation(line: 218, column: 7, scope: !771)
!1065 = !DILocation(line: 237, column: 16, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !771, file: !712, line: 237, column: 9)
!1067 = !DILocation(line: 237, column: 9, scope: !771)
!1068 = !DILocation(line: 239, column: 55, scope: !771)
!1069 = !DILocation(line: 239, column: 7, scope: !771)
!1070 = !DILocation(line: 0, scope: !771)
!1071 = !DILocation(line: 240, column: 61, scope: !771)
!1072 = !DILocation(line: 240, column: 7, scope: !771)
!1073 = !DILocation(line: 242, column: 73, scope: !771)
!1074 = !DILocation(line: 242, column: 7, scope: !771)
!1075 = !DILocation(line: 244, column: 12, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !771, file: !712, line: 244, column: 9)
!1077 = !DILocation(line: 244, column: 43, scope: !1076)
!1078 = !DILocation(line: 250, column: 13, scope: !771)
!1079 = !DILocation(line: 251, column: 25, scope: !771)
!1080 = !DILocation(line: 252, column: 23, scope: !771)
!1081 = !DILocation(line: 253, column: 11, scope: !771)
!1082 = !{i64 0, i64 4, !1083, i64 4, i64 4, !1083, i64 8, i64 4, !1083, i64 16, i64 8, !821, i64 24, i64 8, !1084, i64 32, i64 4, !1085, i64 36, i64 4, !1085, i64 40, i64 4, !1085, i64 44, i64 4, !1085, i64 48, i64 4, !1085}
!1083 = !{!801, !801, i64 0}
!1084 = !{!803, !803, i64 0}
!1085 = !{!915, !915, i64 0}
!1086 = !DILocation(line: 254, column: 23, scope: !771)
!1087 = !DILocation(line: 255, column: 36, scope: !789)
!1088 = !DILocation(line: 255, column: 17, scope: !789)
!1089 = !DILocation(line: 255, column: 5, scope: !790)
!1090 = !DILocation(line: 260, column: 43, scope: !788)
!1091 = !DILocation(line: 260, column: 7, scope: !788)
!1092 = !DILocalVariable(name: "image", arg: 1, scope: !1093, file: !1094, line: 92, type: !715)
!1093 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !1094, file: !1094, line: 92, type: !1095, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1097)
!1094 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !715, !668, !670, !899}
!1097 = !{!1092, !1098, !1099, !1100}
!1098 = !DILocalVariable(name: "color", arg: 2, scope: !1093, file: !1094, line: 93, type: !668)
!1099 = !DILocalVariable(name: "index", arg: 3, scope: !1093, file: !1094, line: 93, type: !670)
!1100 = !DILocalVariable(name: "pixel", arg: 4, scope: !1093, file: !1094, line: 93, type: !899)
!1101 = !DILocation(line: 0, scope: !1093, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 260, column: 7, scope: !788)
!1103 = !DILocation(line: 95, column: 31, scope: !1093, inlinedAt: !1102)
!1104 = !{!805, !806, i64 4}
!1105 = !DILocation(line: 95, column: 14, scope: !1093, inlinedAt: !1102)
!1106 = !DILocation(line: 95, column: 13, scope: !1093, inlinedAt: !1102)
!1107 = !DILocation(line: 96, column: 33, scope: !1093, inlinedAt: !1102)
!1108 = !{!805, !806, i64 2}
!1109 = !DILocation(line: 96, column: 16, scope: !1093, inlinedAt: !1102)
!1110 = !DILocation(line: 96, column: 15, scope: !1093, inlinedAt: !1102)
!1111 = !DILocation(line: 97, column: 32, scope: !1093, inlinedAt: !1102)
!1112 = !{!805, !806, i64 0}
!1113 = !DILocation(line: 97, column: 15, scope: !1093, inlinedAt: !1102)
!1114 = !DILocation(line: 97, column: 14, scope: !1093, inlinedAt: !1102)
!1115 = !DILocation(line: 98, column: 35, scope: !1093, inlinedAt: !1102)
!1116 = !{!805, !806, i64 6}
!1117 = !DILocation(line: 98, column: 18, scope: !1093, inlinedAt: !1102)
!1118 = !DILocation(line: 98, column: 17, scope: !1093, inlinedAt: !1102)
!1119 = !{!914, !915, i64 44}
!1120 = !DILocation(line: 99, column: 26, scope: !1121, inlinedAt: !1102)
!1121 = distinct !DILexicalBlock(scope: !1093, file: !1094, line: 99, column: 7)
!1122 = !DILocation(line: 99, column: 45, scope: !1121, inlinedAt: !1102)
!1123 = !DILocation(line: 101, column: 35, scope: !1121, inlinedAt: !1102)
!1124 = !{!806, !806, i64 0}
!1125 = !DILocation(line: 101, column: 18, scope: !1121, inlinedAt: !1102)
!1126 = !DILocation(line: 101, column: 17, scope: !1121, inlinedAt: !1102)
!1127 = !DILocation(line: 101, column: 5, scope: !1121, inlinedAt: !1102)
!1128 = !DILocation(line: 261, column: 67, scope: !788)
!1129 = !DILocation(line: 261, column: 7, scope: !788)
!1130 = !DILocation(line: 0, scope: !1093, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 261, column: 7, scope: !788)
!1132 = !DILocation(line: 95, column: 31, scope: !1093, inlinedAt: !1131)
!1133 = !DILocation(line: 95, column: 14, scope: !1093, inlinedAt: !1131)
!1134 = !DILocation(line: 95, column: 13, scope: !1093, inlinedAt: !1131)
!1135 = !DILocation(line: 96, column: 33, scope: !1093, inlinedAt: !1131)
!1136 = !DILocation(line: 96, column: 16, scope: !1093, inlinedAt: !1131)
!1137 = !DILocation(line: 96, column: 15, scope: !1093, inlinedAt: !1131)
!1138 = !DILocation(line: 97, column: 32, scope: !1093, inlinedAt: !1131)
!1139 = !DILocation(line: 97, column: 15, scope: !1093, inlinedAt: !1131)
!1140 = !DILocation(line: 97, column: 14, scope: !1093, inlinedAt: !1131)
!1141 = !DILocation(line: 98, column: 35, scope: !1093, inlinedAt: !1131)
!1142 = !DILocation(line: 98, column: 18, scope: !1093, inlinedAt: !1131)
!1143 = !DILocation(line: 98, column: 17, scope: !1093, inlinedAt: !1131)
!1144 = !DILocation(line: 99, column: 26, scope: !1121, inlinedAt: !1131)
!1145 = !DILocation(line: 99, column: 45, scope: !1121, inlinedAt: !1131)
!1146 = !DILocation(line: 101, column: 35, scope: !1121, inlinedAt: !1131)
!1147 = !DILocation(line: 101, column: 18, scope: !1121, inlinedAt: !1131)
!1148 = !DILocation(line: 101, column: 17, scope: !1121, inlinedAt: !1131)
!1149 = !DILocation(line: 101, column: 5, scope: !1121, inlinedAt: !1131)
!1150 = !DILocation(line: 0, scope: !788)
!1151 = !DILocation(line: 264, column: 11, scope: !788)
!1152 = !DILocation(line: 266, column: 15, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !712, line: 266, column: 15)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !712, line: 265, column: 9)
!1155 = distinct !DILexicalBlock(scope: !788, file: !712, line: 264, column: 11)
!1156 = !DILocation(line: 266, column: 63, scope: !1153)
!1157 = !DILocation(line: 266, column: 15, scope: !1154)
!1158 = !DILocation(line: 271, column: 45, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !712, line: 271, column: 15)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !712, line: 270, column: 9)
!1161 = !DILocation(line: 272, column: 31, scope: !1159)
!1162 = !DILocation(line: 271, column: 15, scope: !1160)
!1163 = !DILocation(line: 274, column: 47, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !712, line: 274, column: 15)
!1165 = !DILocation(line: 275, column: 33, scope: !1164)
!1166 = !DILocation(line: 274, column: 15, scope: !1160)
!1167 = !DILocation(line: 0, scope: !1160)
!1168 = !DILocation(line: 277, column: 46, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !712, line: 277, column: 15)
!1170 = !DILocation(line: 278, column: 32, scope: !1169)
!1171 = !DILocation(line: 277, column: 15, scope: !1160)
!1172 = !DILocation(line: 280, column: 49, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1160, file: !712, line: 280, column: 15)
!1174 = !DILocation(line: 281, column: 23, scope: !1173)
!1175 = !{!800, !801, i64 32}
!1176 = !DILocation(line: 281, column: 29, scope: !1173)
!1177 = !DILocation(line: 281, column: 45, scope: !1173)
!1178 = !DILocation(line: 282, column: 35, scope: !1173)
!1179 = !DILocation(line: 280, column: 15, scope: !1160)
!1180 = !DILocation(line: 284, column: 48, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1160, file: !712, line: 284, column: 15)
!1182 = !DILocation(line: 287, column: 16, scope: !1181)
!1183 = !DILocation(line: 288, column: 16, scope: !1181)
!1184 = !DILocation(line: 287, column: 41, scope: !1181)
!1185 = !DILocation(line: 284, column: 15, scope: !1160)
!1186 = !DILocation(line: 291, column: 22, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !788, file: !712, line: 291, column: 11)
!1188 = !DILocation(line: 291, column: 11, scope: !788)
!1189 = !DILocation(line: 292, column: 70, scope: !1187)
!1190 = !DILocalVariable(name: "image", arg: 1, scope: !1191, file: !1094, line: 117, type: !715)
!1191 = distinct !DISubprogram(name: "SetPixelPacket", scope: !1094, file: !1094, line: 117, type: !1192, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1196)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !715, !1194, !470, !677}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!1196 = !{!1190, !1197, !1198, !1199}
!1197 = !DILocalVariable(name: "pixel", arg: 2, scope: !1191, file: !1094, line: 118, type: !1194)
!1198 = !DILocalVariable(name: "color", arg: 3, scope: !1191, file: !1094, line: 118, type: !470)
!1199 = !DILocalVariable(name: "index", arg: 4, scope: !1191, file: !1094, line: 118, type: !677)
!1200 = !DILocation(line: 0, scope: !1191, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 292, column: 9, scope: !1187)
!1202 = !DILocation(line: 120, column: 3, scope: !1191, inlinedAt: !1201)
!1203 = !DILocalVariable(name: "value", arg: 1, scope: !1204, file: !147, line: 87, type: !1207)
!1204 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !1205, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1208)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!475, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!1208 = !{!1203}
!1209 = !DILocation(line: 0, scope: !1204, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 120, column: 3, scope: !1191, inlinedAt: !1201)
!1211 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1210)
!1212 = distinct !DILexicalBlock(scope: !1204, file: !147, line: 92, column: 7)
!1213 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1210)
!1214 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1210)
!1215 = distinct !DILexicalBlock(scope: !1204, file: !147, line: 94, column: 7)
!1216 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1210)
!1217 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1210)
!1218 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1210)
!1219 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1210)
!1220 = !DILocation(line: 121, column: 3, scope: !1191, inlinedAt: !1201)
!1221 = !DILocation(line: 0, scope: !1204, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 121, column: 3, scope: !1191, inlinedAt: !1201)
!1223 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1222)
!1224 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1222)
!1225 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1222)
!1226 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1222)
!1227 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1222)
!1228 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1222)
!1229 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1222)
!1230 = !DILocation(line: 122, column: 3, scope: !1191, inlinedAt: !1201)
!1231 = !DILocation(line: 0, scope: !1204, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 122, column: 3, scope: !1191, inlinedAt: !1201)
!1233 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1232)
!1234 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1232)
!1235 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1232)
!1236 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1232)
!1237 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1232)
!1238 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1232)
!1239 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1232)
!1240 = !DILocation(line: 123, column: 3, scope: !1191, inlinedAt: !1201)
!1241 = !DILocation(line: 0, scope: !1204, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 123, column: 3, scope: !1191, inlinedAt: !1201)
!1243 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1242)
!1244 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1242)
!1245 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1242)
!1246 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1242)
!1247 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1242)
!1248 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1242)
!1249 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1242)
!1250 = !DILocation(line: 124, column: 15, scope: !1251, inlinedAt: !1201)
!1251 = distinct !DILexicalBlock(scope: !1191, file: !1094, line: 124, column: 7)
!1252 = !DILocation(line: 124, column: 26, scope: !1251, inlinedAt: !1201)
!1253 = !DILocation(line: 124, column: 45, scope: !1251, inlinedAt: !1201)
!1254 = !DILocation(line: 125, column: 15, scope: !1251, inlinedAt: !1201)
!1255 = !{!800, !801, i64 0}
!1256 = !DILocation(line: 125, column: 29, scope: !1251, inlinedAt: !1201)
!1257 = !DILocation(line: 124, column: 7, scope: !1191, inlinedAt: !1201)
!1258 = !DILocation(line: 126, column: 5, scope: !1259, inlinedAt: !1201)
!1259 = distinct !DILexicalBlock(scope: !1251, file: !1094, line: 126, column: 5)
!1260 = !DILocation(line: 126, column: 5, scope: !1261, inlinedAt: !1201)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !1094, line: 126, column: 5)
!1262 = !DILocation(line: 0, scope: !1204, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 126, column: 5, scope: !1261, inlinedAt: !1201)
!1264 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1263)
!1265 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1263)
!1266 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1263)
!1267 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1263)
!1268 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1263)
!1269 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1263)
!1270 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1263)
!1271 = !DILocation(line: 294, column: 69, scope: !1187)
!1272 = !DILocation(line: 0, scope: !1191, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 294, column: 9, scope: !1187)
!1274 = !DILocation(line: 120, column: 3, scope: !1191, inlinedAt: !1273)
!1275 = !DILocation(line: 0, scope: !1204, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 120, column: 3, scope: !1191, inlinedAt: !1273)
!1277 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1276)
!1278 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1276)
!1279 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1276)
!1280 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1276)
!1281 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1276)
!1282 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1276)
!1283 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1276)
!1284 = !DILocation(line: 121, column: 3, scope: !1191, inlinedAt: !1273)
!1285 = !DILocation(line: 0, scope: !1204, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 121, column: 3, scope: !1191, inlinedAt: !1273)
!1287 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1286)
!1288 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1286)
!1289 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1286)
!1290 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1286)
!1291 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1286)
!1292 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1286)
!1293 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1286)
!1294 = !DILocation(line: 122, column: 3, scope: !1191, inlinedAt: !1273)
!1295 = !DILocation(line: 0, scope: !1204, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 122, column: 3, scope: !1191, inlinedAt: !1273)
!1297 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1296)
!1298 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1296)
!1299 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1296)
!1300 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1296)
!1301 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1296)
!1302 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1296)
!1303 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1296)
!1304 = !DILocation(line: 123, column: 3, scope: !1191, inlinedAt: !1273)
!1305 = !DILocation(line: 0, scope: !1204, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 123, column: 3, scope: !1191, inlinedAt: !1273)
!1307 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1306)
!1308 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1306)
!1309 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1306)
!1310 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1306)
!1311 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1306)
!1312 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1306)
!1313 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1306)
!1314 = !DILocation(line: 124, column: 15, scope: !1251, inlinedAt: !1273)
!1315 = !DILocation(line: 124, column: 26, scope: !1251, inlinedAt: !1273)
!1316 = !DILocation(line: 124, column: 45, scope: !1251, inlinedAt: !1273)
!1317 = !DILocation(line: 125, column: 15, scope: !1251, inlinedAt: !1273)
!1318 = !DILocation(line: 125, column: 29, scope: !1251, inlinedAt: !1273)
!1319 = !DILocation(line: 124, column: 7, scope: !1191, inlinedAt: !1273)
!1320 = !DILocation(line: 126, column: 5, scope: !1259, inlinedAt: !1273)
!1321 = !DILocation(line: 126, column: 5, scope: !1261, inlinedAt: !1273)
!1322 = !DILocation(line: 0, scope: !1204, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 126, column: 5, scope: !1261, inlinedAt: !1273)
!1324 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !1323)
!1325 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !1323)
!1326 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !1323)
!1327 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !1323)
!1328 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !1323)
!1329 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !1323)
!1330 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !1323)
!1331 = !DILocation(line: 295, column: 8, scope: !788)
!1332 = !DILocation(line: 296, column: 8, scope: !788)
!1333 = !DILocation(line: 297, column: 8, scope: !788)
!1334 = !DILocation(line: 255, column: 46, scope: !789)
!1335 = distinct !{!1335, !1089, !1336, !1337, !1338}
!1336 = !DILocation(line: 298, column: 5, scope: !790)
!1337 = !{!"llvm.loop.mustprogress"}
!1338 = !{!"llvm.loop.unroll.disable"}
!1339 = !DILocation(line: 299, column: 10, scope: !771)
!1340 = !DILocation(line: 300, column: 14, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !771, file: !712, line: 300, column: 9)
!1342 = !DILocation(line: 300, column: 9, scope: !771)
!1343 = !DILocation(line: 302, column: 3, scope: !772)
!1344 = !DILocation(line: 211, column: 41, scope: !772)
!1345 = distinct !{!1345, !1061, !1346, !1337, !1338}
!1346 = !DILocation(line: 302, column: 3, scope: !773)
!1347 = !DILocation(line: 202, column: 9, scope: !730)
!1348 = !DILocation(line: 303, column: 18, scope: !730)
!1349 = !DILocation(line: 304, column: 20, scope: !730)
!1350 = !DILocation(line: 305, column: 14, scope: !730)
!1351 = !DILocation(line: 306, column: 49, scope: !730)
!1352 = !{!800, !801, i64 416}
!1353 = !DILocation(line: 306, column: 10, scope: !730)
!1354 = !DILocation(line: 307, column: 19, scope: !730)
!1355 = !DILocation(line: 308, column: 14, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !730, file: !712, line: 308, column: 7)
!1357 = !DILocation(line: 308, column: 7, scope: !730)
!1358 = !DILocation(line: 309, column: 22, scope: !1356)
!1359 = !DILocation(line: 309, column: 5, scope: !1356)
!1360 = !DILocation(line: 311, column: 1, scope: !730)
!1361 = !DISubprogram(name: "LogMagickEvent", scope: !406, file: !406, line: 83, type: !1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!463, !1364, !580, !580, !1366, !580, null}
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !406, line: 58, baseType: !405)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!1367 = !{}
!1368 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!463, !719, !580, !580, !1366, !1371, !580, !580, null}
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!1372 = distinct !DISubprogram(name: "GetImageChannelDistortion", scope: !712, file: !712, line: 1450, type: !1373, scopeLine: 1453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!463, !447, !715, !733, !717, !673, !719}
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1388}
!1376 = !DILocalVariable(name: "image", arg: 1, scope: !1372, file: !712, line: 1450, type: !447)
!1377 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !1372, file: !712, line: 1451, type: !715)
!1378 = !DILocalVariable(name: "channel", arg: 3, scope: !1372, file: !712, line: 1451, type: !733)
!1379 = !DILocalVariable(name: "metric", arg: 4, scope: !1372, file: !712, line: 1452, type: !717)
!1380 = !DILocalVariable(name: "distortion", arg: 5, scope: !1372, file: !712, line: 1452, type: !673)
!1381 = !DILocalVariable(name: "exception", arg: 6, scope: !1372, file: !712, line: 1452, type: !719)
!1382 = !DILocalVariable(name: "channel_distortion", scope: !1372, file: !712, line: 1455, type: !673)
!1383 = !DILocalVariable(name: "status", scope: !1372, file: !712, line: 1458, type: !463)
!1384 = !DILocalVariable(name: "length", scope: !1372, file: !712, line: 1461, type: !458)
!1385 = !DILocalVariable(name: "message", scope: !1386, file: !712, line: 1484, type: !506)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !712, line: 1484, column: 5)
!1387 = distinct !DILexicalBlock(scope: !1372, file: !712, line: 1483, column: 7)
!1388 = !DILocalVariable(name: "exception", scope: !1386, file: !712, line: 1484, type: !608)
!1389 = !DILocation(line: 0, scope: !1372)
!1390 = !DILocation(line: 1465, column: 14, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1372, file: !712, line: 1465, column: 7)
!1392 = !DILocation(line: 1465, column: 20, scope: !1391)
!1393 = !DILocation(line: 1465, column: 7, scope: !1372)
!1394 = !DILocation(line: 1470, column: 14, scope: !1372)
!1395 = !DILocation(line: 1471, column: 7, scope: !1372)
!1396 = !DILocation(line: 1466, column: 68, scope: !1391)
!1397 = !DILocation(line: 1466, column: 12, scope: !1391)
!1398 = !DILocation(line: 1471, column: 14, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1372, file: !712, line: 1471, column: 7)
!1400 = !DILocation(line: 1471, column: 20, scope: !1399)
!1401 = !DILocation(line: 1472, column: 12, scope: !1399)
!1402 = !DILocation(line: 1472, column: 5, scope: !1399)
!1403 = !DILocation(line: 1473, column: 14, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1372, file: !712, line: 1473, column: 7)
!1405 = !DILocation(line: 1473, column: 7, scope: !1372)
!1406 = !DILocation(line: 1474, column: 29, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !712, line: 1474, column: 9)
!1408 = !DILocation(line: 1474, column: 47, scope: !1407)
!1409 = !DILocation(line: 1474, column: 37, scope: !1407)
!1410 = !DILocation(line: 1474, column: 56, scope: !1407)
!1411 = !DILocation(line: 1475, column: 29, scope: !1407)
!1412 = !DILocation(line: 1475, column: 44, scope: !1407)
!1413 = !DILocation(line: 1475, column: 34, scope: !1407)
!1414 = !DILocation(line: 1474, column: 9, scope: !1404)
!1415 = !DILocation(line: 1476, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !712, line: 1476, column: 7)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !712, line: 1476, column: 7)
!1418 = !DILocation(line: 1481, column: 33, scope: !1372)
!1419 = !DILocation(line: 1483, column: 26, scope: !1387)
!1420 = !DILocation(line: 1483, column: 7, scope: !1372)
!1421 = !DILocation(line: 1484, column: 5, scope: !1386)
!1422 = !{!815, !815, i64 0}
!1423 = !DILocation(line: 0, scope: !1386)
!1424 = !DILocation(line: 1485, column: 10, scope: !1372)
!1425 = !DILocation(line: 1487, column: 3, scope: !1372)
!1426 = !DILocation(line: 1491, column: 14, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1490, column: 5)
!1428 = distinct !DILexicalBlock(scope: !1372, file: !712, line: 1488, column: 3)
!1429 = !DILocation(line: 1493, column: 7, scope: !1427)
!1430 = !DILocation(line: 1497, column: 14, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1496, column: 5)
!1432 = !DILocation(line: 1499, column: 7, scope: !1431)
!1433 = !DILocation(line: 1503, column: 14, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1502, column: 5)
!1435 = !DILocation(line: 1505, column: 7, scope: !1434)
!1436 = !DILocation(line: 1509, column: 14, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1508, column: 5)
!1438 = !DILocation(line: 1511, column: 7, scope: !1437)
!1439 = !DILocation(line: 1515, column: 14, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1514, column: 5)
!1441 = !DILocation(line: 1517, column: 7, scope: !1440)
!1442 = !DILocation(line: 1522, column: 14, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1521, column: 5)
!1444 = !DILocation(line: 1524, column: 7, scope: !1443)
!1445 = !DILocation(line: 1528, column: 14, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1527, column: 5)
!1447 = !DILocation(line: 1530, column: 7, scope: !1446)
!1448 = !DILocation(line: 1534, column: 14, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1533, column: 5)
!1450 = !DILocation(line: 1536, column: 7, scope: !1449)
!1451 = !DILocation(line: 1540, column: 14, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1539, column: 5)
!1453 = !DILocation(line: 1542, column: 7, scope: !1452)
!1454 = !DILocalVariable(name: "image", arg: 1, scope: !1455, file: !712, line: 1425, type: !715)
!1455 = distinct !DISubprogram(name: "GetRootMeanSquaredDistortion", scope: !712, file: !712, line: 1425, type: !1456, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1458)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!463, !715, !715, !733, !673, !719}
!1458 = !{!1454, !1459, !1460, !1461, !1462, !1463}
!1459 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !1455, file: !712, line: 1426, type: !715)
!1460 = !DILocalVariable(name: "channel", arg: 3, scope: !1455, file: !712, line: 1426, type: !733)
!1461 = !DILocalVariable(name: "distortion", arg: 4, scope: !1455, file: !712, line: 1426, type: !673)
!1462 = !DILocalVariable(name: "exception", arg: 5, scope: !1455, file: !712, line: 1427, type: !719)
!1463 = !DILocalVariable(name: "status", scope: !1455, file: !712, line: 1430, type: !463)
!1464 = !DILocation(line: 0, scope: !1455, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 1546, column: 14, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1428, file: !712, line: 1545, column: 5)
!1467 = !DILocation(line: 1432, column: 10, scope: !1455, inlinedAt: !1465)
!1468 = !DILocation(line: 1434, column: 16, scope: !1469, inlinedAt: !1465)
!1469 = distinct !DILexicalBlock(scope: !1455, file: !712, line: 1434, column: 7)
!1470 = !DILocation(line: 1434, column: 30, scope: !1469, inlinedAt: !1465)
!1471 = !DILocation(line: 1434, column: 7, scope: !1455, inlinedAt: !1465)
!1472 = !DILocation(line: 1435, column: 33, scope: !1469, inlinedAt: !1465)
!1473 = !DILocation(line: 1435, column: 28, scope: !1469, inlinedAt: !1465)
!1474 = !DILocation(line: 1435, column: 27, scope: !1469, inlinedAt: !1465)
!1475 = !DILocation(line: 1435, column: 5, scope: !1469, inlinedAt: !1465)
!1476 = !DILocation(line: 1436, column: 16, scope: !1477, inlinedAt: !1465)
!1477 = distinct !DILexicalBlock(scope: !1455, file: !712, line: 1436, column: 7)
!1478 = !DILocation(line: 1436, column: 32, scope: !1477, inlinedAt: !1465)
!1479 = !DILocation(line: 1436, column: 7, scope: !1455, inlinedAt: !1465)
!1480 = !DILocation(line: 1437, column: 35, scope: !1477, inlinedAt: !1465)
!1481 = !DILocation(line: 1437, column: 30, scope: !1477, inlinedAt: !1465)
!1482 = !DILocation(line: 1437, column: 29, scope: !1477, inlinedAt: !1465)
!1483 = !DILocation(line: 1437, column: 5, scope: !1477, inlinedAt: !1465)
!1484 = !DILocation(line: 1438, column: 16, scope: !1485, inlinedAt: !1465)
!1485 = distinct !DILexicalBlock(scope: !1455, file: !712, line: 1438, column: 7)
!1486 = !DILocation(line: 1438, column: 31, scope: !1485, inlinedAt: !1465)
!1487 = !DILocation(line: 1438, column: 7, scope: !1455, inlinedAt: !1465)
!1488 = !DILocation(line: 1439, column: 34, scope: !1485, inlinedAt: !1465)
!1489 = !DILocation(line: 1439, column: 29, scope: !1485, inlinedAt: !1465)
!1490 = !DILocation(line: 1439, column: 28, scope: !1485, inlinedAt: !1465)
!1491 = !DILocation(line: 1439, column: 5, scope: !1485, inlinedAt: !1465)
!1492 = !DILocation(line: 1440, column: 17, scope: !1493, inlinedAt: !1465)
!1493 = distinct !DILexicalBlock(scope: !1455, file: !712, line: 1440, column: 7)
!1494 = !DILocation(line: 1440, column: 35, scope: !1493, inlinedAt: !1465)
!1495 = !DILocation(line: 1440, column: 41, scope: !1493, inlinedAt: !1465)
!1496 = !DILocation(line: 1441, column: 15, scope: !1493, inlinedAt: !1465)
!1497 = !DILocation(line: 1441, column: 21, scope: !1493, inlinedAt: !1465)
!1498 = !DILocation(line: 1440, column: 7, scope: !1455, inlinedAt: !1465)
!1499 = !DILocation(line: 1442, column: 37, scope: !1493, inlinedAt: !1465)
!1500 = !DILocation(line: 1442, column: 32, scope: !1493, inlinedAt: !1465)
!1501 = !DILocation(line: 1442, column: 31, scope: !1493, inlinedAt: !1465)
!1502 = !DILocation(line: 1442, column: 5, scope: !1493, inlinedAt: !1465)
!1503 = !DILocation(line: 1443, column: 17, scope: !1504, inlinedAt: !1465)
!1504 = distinct !DILexicalBlock(scope: !1455, file: !712, line: 1443, column: 7)
!1505 = !DILocation(line: 1443, column: 33, scope: !1504, inlinedAt: !1465)
!1506 = !DILocation(line: 1443, column: 39, scope: !1504, inlinedAt: !1465)
!1507 = !DILocation(line: 1444, column: 15, scope: !1504, inlinedAt: !1465)
!1508 = !DILocation(line: 1444, column: 26, scope: !1504, inlinedAt: !1465)
!1509 = !DILocation(line: 1443, column: 7, scope: !1455, inlinedAt: !1465)
!1510 = !DILocation(line: 1445, column: 35, scope: !1504, inlinedAt: !1465)
!1511 = !DILocation(line: 1445, column: 30, scope: !1504, inlinedAt: !1465)
!1512 = !DILocation(line: 1445, column: 29, scope: !1504, inlinedAt: !1465)
!1513 = !DILocation(line: 1445, column: 5, scope: !1504, inlinedAt: !1465)
!1514 = !DILocation(line: 1446, column: 38, scope: !1455, inlinedAt: !1465)
!1515 = !DILocation(line: 1446, column: 33, scope: !1455, inlinedAt: !1465)
!1516 = !DILocation(line: 1446, column: 32, scope: !1455, inlinedAt: !1465)
!1517 = !DILocation(line: 1548, column: 7, scope: !1466)
!1518 = !DILocation(line: 0, scope: !1428)
!1519 = !DILocation(line: 1551, column: 15, scope: !1372)
!1520 = !DILocation(line: 1551, column: 14, scope: !1372)
!1521 = !DILocation(line: 1552, column: 33, scope: !1372)
!1522 = !DILocation(line: 1553, column: 56, scope: !1372)
!1523 = !DILocation(line: 1554, column: 5, scope: !1372)
!1524 = !DILocation(line: 1553, column: 10, scope: !1372)
!1525 = !DILocation(line: 1555, column: 3, scope: !1372)
!1526 = !DILocation(line: 1556, column: 1, scope: !1372)
!1527 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!447, !715, !1366, !1366, !1530, !719}
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!1531 = !DISubprogram(name: "SetImageAlphaChannel", scope: !1532, file: !1532, line: 35, type: !1533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1532 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!463, !447, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !73, line: 45, baseType: !430)
!1537 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !1538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!447, !447}
!1540 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !1541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!463, !447, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!1544 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !719, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!1549 = !DISubprogram(name: "QueryMagickColor", scope: !553, file: !553, line: 92, type: !1550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!463, !580, !899, !719}
!1552 = !DISubprogram(name: "GetImageArtifact", scope: !1553, file: !1553, line: 30, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1553 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!580, !715, !580}
!1556 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !1557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !715, !899}
!1559 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !745, file: !745, line: 55, type: !1560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!743, !715, !719}
!1562 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !745, file: !745, line: 53, type: !1560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1563 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !745, file: !745, line: 69, type: !1564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!668, !1566, !1568, !1568, !1366, !1366, !719}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!1569 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !745, file: !745, line: 101, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!470, !743, !1568, !1568, !1366, !1366, !719}
!1572 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !745, file: !745, line: 66, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!670, !1566}
!1575 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !745, file: !745, line: 77, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!677, !743}
!1578 = !DISubprogram(name: "IsMagickColorSimilar", scope: !553, file: !553, line: 82, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!463, !1194, !1194}
!1581 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !745, file: !745, line: 89, type: !1582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!463, !743, !719}
!1584 = !DISubprogram(name: "DestroyCacheView", scope: !745, file: !745, line: 57, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!743, !743}
!1587 = !DISubprogram(name: "CompositeImage", scope: !168, file: !168, line: 110, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!463, !447, !1590, !715, !1568, !1568}
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!1591 = distinct !DISubprogram(name: "GetImageDistortion", scope: !712, file: !712, line: 349, type: !1592, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1594)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!463, !447, !715, !717, !673, !719}
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600}
!1595 = !DILocalVariable(name: "image", arg: 1, scope: !1591, file: !712, line: 349, type: !447)
!1596 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !1591, file: !712, line: 350, type: !715)
!1597 = !DILocalVariable(name: "metric", arg: 3, scope: !1591, file: !712, line: 350, type: !717)
!1598 = !DILocalVariable(name: "distortion", arg: 4, scope: !1591, file: !712, line: 350, type: !673)
!1599 = !DILocalVariable(name: "exception", arg: 5, scope: !1591, file: !712, line: 351, type: !719)
!1600 = !DILocalVariable(name: "status", scope: !1591, file: !712, line: 354, type: !463)
!1601 = !DILocation(line: 0, scope: !1591)
!1602 = !DILocation(line: 356, column: 10, scope: !1591)
!1603 = !DILocation(line: 358, column: 3, scope: !1591)
!1604 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1605, file: !1605, line: 42, type: !1606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1605 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!502, !1366, !1366}
!1608 = !DISubprogram(name: "GetExceptionInfo", scope: !253, file: !253, line: 166, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !719}
!1611 = !DISubprogram(name: "GetExceptionMessage", scope: !253, file: !253, line: 137, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!506, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!1615 = !DISubprogram(name: "DestroyString", scope: !1616, file: !1616, line: 46, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1616 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!506, !506}
!1619 = !DISubprogram(name: "CatchException", scope: !253, file: !253, line: 164, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1620 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!719, !719}
!1623 = !DISubprogram(name: "MagickCoreTerminus", scope: !1624, file: !1624, line: 147, type: !1625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1624 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null}
!1627 = !DISubprogram(name: "ResetMagickMemory", scope: !1605, file: !1605, line: 52, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!502, !502, !614, !1366}
!1630 = distinct !DISubprogram(name: "GetAbsoluteDistortion", scope: !712, file: !712, line: 361, type: !1456, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656}
!1632 = !DILocalVariable(name: "image", arg: 1, scope: !1630, file: !712, line: 361, type: !715)
!1633 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !1630, file: !712, line: 362, type: !715)
!1634 = !DILocalVariable(name: "channel", arg: 3, scope: !1630, file: !712, line: 362, type: !733)
!1635 = !DILocalVariable(name: "distortion", arg: 4, scope: !1630, file: !712, line: 362, type: !673)
!1636 = !DILocalVariable(name: "exception", arg: 5, scope: !1630, file: !712, line: 363, type: !719)
!1637 = !DILocalVariable(name: "image_view", scope: !1630, file: !712, line: 366, type: !743)
!1638 = !DILocalVariable(name: "reconstruct_view", scope: !1630, file: !712, line: 367, type: !743)
!1639 = !DILocalVariable(name: "status", scope: !1630, file: !712, line: 370, type: !463)
!1640 = !DILocalVariable(name: "zero", scope: !1630, file: !712, line: 373, type: !754)
!1641 = !DILocalVariable(name: "y", scope: !1630, file: !712, line: 376, type: !511)
!1642 = !DILocalVariable(name: "channel_distortion", scope: !1643, file: !712, line: 392, type: !1646)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !712, line: 390, column: 3)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !712, line: 389, column: 3)
!1645 = distinct !DILexicalBlock(scope: !1630, file: !712, line: 389, column: 3)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 3072, elements: !1647)
!1647 = !{!1648}
!1648 = !DISubrange(count: 48)
!1649 = !DILocalVariable(name: "pixel", scope: !1643, file: !712, line: 395, type: !754)
!1650 = !DILocalVariable(name: "reconstruct_pixel", scope: !1643, file: !712, line: 396, type: !754)
!1651 = !DILocalVariable(name: "indexes", scope: !1643, file: !712, line: 399, type: !777)
!1652 = !DILocalVariable(name: "reconstruct_indexes", scope: !1643, file: !712, line: 400, type: !777)
!1653 = !DILocalVariable(name: "p", scope: !1643, file: !712, line: 403, type: !780)
!1654 = !DILocalVariable(name: "q", scope: !1643, file: !712, line: 404, type: !780)
!1655 = !DILocalVariable(name: "i", scope: !1643, file: !712, line: 407, type: !511)
!1656 = !DILocalVariable(name: "x", scope: !1643, file: !712, line: 408, type: !511)
!1657 = !DILocation(line: 0, scope: !1630)
!1658 = !DILocation(line: 372, column: 3, scope: !1630)
!1659 = !DILocation(line: 373, column: 5, scope: !1630)
!1660 = !DILocation(line: 382, column: 3, scope: !1630)
!1661 = !DILocation(line: 383, column: 14, scope: !1630)
!1662 = !DILocation(line: 384, column: 20, scope: !1630)
!1663 = !DILocation(line: 389, column: 34, scope: !1644)
!1664 = !DILocation(line: 389, column: 15, scope: !1644)
!1665 = !DILocation(line: 389, column: 3, scope: !1645)
!1666 = !DILocation(line: 391, column: 5, scope: !1643)
!1667 = !DILocation(line: 392, column: 7, scope: !1643)
!1668 = !DILocation(line: 394, column: 5, scope: !1643)
!1669 = !DILocation(line: 395, column: 7, scope: !1643)
!1670 = !DILocation(line: 396, column: 7, scope: !1643)
!1671 = !DILocation(line: 410, column: 16, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1643, file: !712, line: 410, column: 9)
!1673 = !DILocation(line: 410, column: 9, scope: !1643)
!1674 = !DILocation(line: 412, column: 55, scope: !1643)
!1675 = !DILocation(line: 412, column: 7, scope: !1643)
!1676 = !DILocation(line: 0, scope: !1643)
!1677 = !DILocation(line: 413, column: 73, scope: !1643)
!1678 = !DILocation(line: 413, column: 7, scope: !1643)
!1679 = !DILocation(line: 415, column: 12, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1643, file: !712, line: 415, column: 9)
!1681 = !DILocation(line: 415, column: 43, scope: !1680)
!1682 = !DILocation(line: 420, column: 13, scope: !1643)
!1683 = !DILocation(line: 421, column: 25, scope: !1643)
!1684 = !DILocation(line: 422, column: 11, scope: !1643)
!1685 = !DILocation(line: 423, column: 23, scope: !1643)
!1686 = !DILocation(line: 424, column: 12, scope: !1643)
!1687 = !DILocation(line: 425, column: 36, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !712, line: 425, column: 5)
!1689 = distinct !DILexicalBlock(scope: !1643, file: !712, line: 425, column: 5)
!1690 = !DILocation(line: 425, column: 17, scope: !1688)
!1691 = !DILocation(line: 425, column: 5, scope: !1689)
!1692 = !DILocation(line: 427, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !712, line: 426, column: 5)
!1694 = !DILocation(line: 0, scope: !1093, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 427, column: 7, scope: !1693)
!1696 = !DILocation(line: 95, column: 31, scope: !1093, inlinedAt: !1695)
!1697 = !DILocation(line: 95, column: 14, scope: !1093, inlinedAt: !1695)
!1698 = !DILocation(line: 95, column: 13, scope: !1093, inlinedAt: !1695)
!1699 = !DILocation(line: 96, column: 33, scope: !1093, inlinedAt: !1695)
!1700 = !DILocation(line: 96, column: 16, scope: !1093, inlinedAt: !1695)
!1701 = !DILocation(line: 96, column: 15, scope: !1093, inlinedAt: !1695)
!1702 = !DILocation(line: 97, column: 32, scope: !1093, inlinedAt: !1695)
!1703 = !DILocation(line: 97, column: 15, scope: !1093, inlinedAt: !1695)
!1704 = !DILocation(line: 97, column: 14, scope: !1093, inlinedAt: !1695)
!1705 = !DILocation(line: 98, column: 35, scope: !1093, inlinedAt: !1695)
!1706 = !DILocation(line: 98, column: 18, scope: !1093, inlinedAt: !1695)
!1707 = !DILocation(line: 98, column: 17, scope: !1093, inlinedAt: !1695)
!1708 = !DILocation(line: 99, column: 26, scope: !1121, inlinedAt: !1695)
!1709 = !DILocation(line: 99, column: 45, scope: !1121, inlinedAt: !1695)
!1710 = !DILocation(line: 427, column: 43, scope: !1693)
!1711 = !DILocation(line: 101, column: 35, scope: !1121, inlinedAt: !1695)
!1712 = !DILocation(line: 101, column: 18, scope: !1121, inlinedAt: !1695)
!1713 = !DILocation(line: 101, column: 17, scope: !1121, inlinedAt: !1695)
!1714 = !DILocation(line: 101, column: 5, scope: !1121, inlinedAt: !1695)
!1715 = !DILocation(line: 428, column: 7, scope: !1693)
!1716 = !DILocation(line: 0, scope: !1093, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 428, column: 7, scope: !1693)
!1718 = !DILocation(line: 95, column: 31, scope: !1093, inlinedAt: !1717)
!1719 = !DILocation(line: 95, column: 14, scope: !1093, inlinedAt: !1717)
!1720 = !DILocation(line: 95, column: 13, scope: !1093, inlinedAt: !1717)
!1721 = !DILocation(line: 96, column: 33, scope: !1093, inlinedAt: !1717)
!1722 = !DILocation(line: 96, column: 16, scope: !1093, inlinedAt: !1717)
!1723 = !DILocation(line: 96, column: 15, scope: !1093, inlinedAt: !1717)
!1724 = !DILocation(line: 97, column: 32, scope: !1093, inlinedAt: !1717)
!1725 = !DILocation(line: 97, column: 15, scope: !1093, inlinedAt: !1717)
!1726 = !DILocation(line: 97, column: 14, scope: !1093, inlinedAt: !1717)
!1727 = !DILocation(line: 98, column: 35, scope: !1093, inlinedAt: !1717)
!1728 = !DILocation(line: 98, column: 18, scope: !1093, inlinedAt: !1717)
!1729 = !DILocation(line: 98, column: 17, scope: !1093, inlinedAt: !1717)
!1730 = !DILocation(line: 99, column: 26, scope: !1121, inlinedAt: !1717)
!1731 = !DILocation(line: 99, column: 45, scope: !1121, inlinedAt: !1717)
!1732 = !DILocation(line: 428, column: 67, scope: !1693)
!1733 = !DILocation(line: 101, column: 35, scope: !1121, inlinedAt: !1717)
!1734 = !DILocation(line: 101, column: 18, scope: !1121, inlinedAt: !1717)
!1735 = !DILocation(line: 101, column: 17, scope: !1121, inlinedAt: !1717)
!1736 = !DILocation(line: 101, column: 5, scope: !1121, inlinedAt: !1717)
!1737 = !DILocation(line: 430, column: 11, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1693, file: !712, line: 430, column: 11)
!1739 = !DILocation(line: 430, column: 59, scope: !1738)
!1740 = !DILocation(line: 430, column: 11, scope: !1693)
!1741 = !DILocation(line: 432, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !712, line: 431, column: 9)
!1743 = !DILocation(line: 433, column: 43, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1742, file: !712, line: 432, column: 15)
!1745 = !DILocation(line: 433, column: 13, scope: !1744)
!1746 = !DILocation(line: 434, column: 15, scope: !1742)
!1747 = !DILocation(line: 435, column: 45, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !712, line: 434, column: 15)
!1749 = !DILocation(line: 435, column: 13, scope: !1748)
!1750 = !DILocation(line: 436, column: 15, scope: !1742)
!1751 = !DILocation(line: 437, column: 44, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1742, file: !712, line: 436, column: 15)
!1753 = !DILocation(line: 437, column: 13, scope: !1752)
!1754 = !DILocation(line: 438, column: 49, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1742, file: !712, line: 438, column: 15)
!1756 = !DILocation(line: 439, column: 23, scope: !1755)
!1757 = !DILocation(line: 439, column: 29, scope: !1755)
!1758 = !DILocation(line: 438, column: 15, scope: !1742)
!1759 = !DILocation(line: 440, column: 47, scope: !1755)
!1760 = !DILocation(line: 440, column: 13, scope: !1755)
!1761 = !DILocation(line: 441, column: 47, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1742, file: !712, line: 441, column: 15)
!1763 = !DILocation(line: 442, column: 23, scope: !1762)
!1764 = !DILocation(line: 442, column: 34, scope: !1762)
!1765 = !DILocation(line: 441, column: 15, scope: !1742)
!1766 = !DILocation(line: 443, column: 45, scope: !1762)
!1767 = !DILocation(line: 443, column: 13, scope: !1762)
!1768 = !DILocation(line: 444, column: 48, scope: !1742)
!1769 = !DILocation(line: 445, column: 9, scope: !1742)
!1770 = !DILocation(line: 446, column: 8, scope: !1693)
!1771 = !DILocation(line: 447, column: 8, scope: !1693)
!1772 = !DILocation(line: 425, column: 46, scope: !1688)
!1773 = distinct !{!1773, !1691, !1774, !1337, !1338}
!1774 = !DILocation(line: 448, column: 5, scope: !1689)
!1775 = !DILocation(line: 452, column: 5, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1643, file: !712, line: 452, column: 5)
!1777 = !DILocation(line: 453, column: 22, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !712, line: 452, column: 5)
!1779 = !DILocation(line: 453, column: 7, scope: !1778)
!1780 = !DILocation(line: 453, column: 20, scope: !1778)
!1781 = !DILocation(line: 452, column: 50, scope: !1778)
!1782 = !DILocation(line: 452, column: 17, scope: !1778)
!1783 = distinct !{!1783, !1775, !1784, !1337, !1338}
!1784 = !DILocation(line: 453, column: 42, scope: !1776)
!1785 = !DILocation(line: 454, column: 3, scope: !1644)
!1786 = !DILocation(line: 389, column: 41, scope: !1644)
!1787 = distinct !{!1787, !1665, !1788, !1337, !1338}
!1788 = !DILocation(line: 454, column: 3, scope: !1645)
!1789 = !DILocation(line: 381, column: 9, scope: !1630)
!1790 = !DILocation(line: 455, column: 20, scope: !1630)
!1791 = !DILocation(line: 456, column: 14, scope: !1630)
!1792 = !DILocation(line: 458, column: 1, scope: !1630)
!1793 = !DILocation(line: 457, column: 3, scope: !1630)
!1794 = distinct !DISubprogram(name: "GetFuzzDistortion", scope: !712, file: !712, line: 482, type: !1456, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1820, !1821}
!1796 = !DILocalVariable(name: "image", arg: 1, scope: !1794, file: !712, line: 482, type: !715)
!1797 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !1794, file: !712, line: 483, type: !715)
!1798 = !DILocalVariable(name: "channel", arg: 3, scope: !1794, file: !712, line: 483, type: !733)
!1799 = !DILocalVariable(name: "distortion", arg: 4, scope: !1794, file: !712, line: 484, type: !673)
!1800 = !DILocalVariable(name: "exception", arg: 5, scope: !1794, file: !712, line: 484, type: !719)
!1801 = !DILocalVariable(name: "image_view", scope: !1794, file: !712, line: 487, type: !743)
!1802 = !DILocalVariable(name: "reconstruct_view", scope: !1794, file: !712, line: 488, type: !743)
!1803 = !DILocalVariable(name: "status", scope: !1794, file: !712, line: 491, type: !463)
!1804 = !DILocalVariable(name: "i", scope: !1794, file: !712, line: 494, type: !511)
!1805 = !DILocalVariable(name: "y", scope: !1794, file: !712, line: 497, type: !511)
!1806 = !DILocalVariable(name: "channel_distortion", scope: !1807, file: !712, line: 509, type: !1646)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !712, line: 507, column: 3)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !712, line: 506, column: 3)
!1809 = distinct !DILexicalBlock(scope: !1794, file: !712, line: 506, column: 3)
!1810 = !DILocalVariable(name: "indexes", scope: !1807, file: !712, line: 512, type: !777)
!1811 = !DILocalVariable(name: "reconstruct_indexes", scope: !1807, file: !712, line: 513, type: !777)
!1812 = !DILocalVariable(name: "p", scope: !1807, file: !712, line: 516, type: !780)
!1813 = !DILocalVariable(name: "q", scope: !1807, file: !712, line: 517, type: !780)
!1814 = !DILocalVariable(name: "i", scope: !1807, file: !712, line: 520, type: !511)
!1815 = !DILocalVariable(name: "x", scope: !1807, file: !712, line: 521, type: !511)
!1816 = !DILocalVariable(name: "distance", scope: !1817, file: !712, line: 539, type: !675)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !712, line: 537, column: 5)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !712, line: 536, column: 5)
!1819 = distinct !DILexicalBlock(scope: !1807, file: !712, line: 536, column: 5)
!1820 = !DILocalVariable(name: "Da", scope: !1817, file: !712, line: 540, type: !675)
!1821 = !DILocalVariable(name: "Sa", scope: !1817, file: !712, line: 541, type: !675)
!1822 = !DILocation(line: 0, scope: !1794)
!1823 = !DILocation(line: 500, column: 14, scope: !1794)
!1824 = !DILocation(line: 501, column: 20, scope: !1794)
!1825 = !DILocation(line: 506, column: 34, scope: !1808)
!1826 = !DILocation(line: 506, column: 15, scope: !1808)
!1827 = !DILocation(line: 506, column: 3, scope: !1809)
!1828 = !DILocation(line: 508, column: 5, scope: !1807)
!1829 = !DILocation(line: 509, column: 7, scope: !1807)
!1830 = !DILocation(line: 523, column: 16, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1807, file: !712, line: 523, column: 9)
!1832 = !DILocation(line: 523, column: 9, scope: !1807)
!1833 = !DILocation(line: 525, column: 55, scope: !1807)
!1834 = !DILocation(line: 525, column: 7, scope: !1807)
!1835 = !DILocation(line: 0, scope: !1807)
!1836 = !DILocation(line: 526, column: 73, scope: !1807)
!1837 = !DILocation(line: 526, column: 7, scope: !1807)
!1838 = !DILocation(line: 528, column: 12, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1807, file: !712, line: 528, column: 9)
!1840 = !DILocation(line: 528, column: 43, scope: !1839)
!1841 = !DILocation(line: 533, column: 13, scope: !1807)
!1842 = !DILocation(line: 534, column: 25, scope: !1807)
!1843 = !DILocation(line: 535, column: 12, scope: !1807)
!1844 = !DILocation(line: 536, column: 17, scope: !1818)
!1845 = !DILocation(line: 536, column: 5, scope: !1819)
!1846 = !DILocation(line: 543, column: 24, scope: !1817)
!1847 = !DILocation(line: 543, column: 54, scope: !1817)
!1848 = !DILocation(line: 543, column: 23, scope: !1817)
!1849 = !DILocation(line: 543, column: 22, scope: !1817)
!1850 = !DILocation(line: 543, column: 10, scope: !1817)
!1851 = !DILocation(line: 0, scope: !1817)
!1852 = !DILocation(line: 545, column: 24, scope: !1817)
!1853 = !DILocation(line: 546, column: 9, scope: !1817)
!1854 = !DILocation(line: 545, column: 23, scope: !1817)
!1855 = !DILocation(line: 545, column: 22, scope: !1817)
!1856 = !DILocation(line: 545, column: 10, scope: !1817)
!1857 = !DILocation(line: 547, column: 11, scope: !1817)
!1858 = !DILocation(line: 549, column: 37, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !712, line: 548, column: 9)
!1860 = distinct !DILexicalBlock(scope: !1817, file: !712, line: 547, column: 11)
!1861 = !DILocation(line: 549, column: 55, scope: !1859)
!1862 = !DILocation(line: 549, column: 51, scope: !1859)
!1863 = !DILocation(line: 549, column: 33, scope: !1859)
!1864 = !DILocation(line: 549, column: 32, scope: !1859)
!1865 = !DILocation(line: 549, column: 20, scope: !1859)
!1866 = !DILocation(line: 550, column: 51, scope: !1859)
!1867 = !DILocation(line: 550, column: 43, scope: !1859)
!1868 = !DILocation(line: 550, column: 41, scope: !1859)
!1869 = !DILocation(line: 551, column: 48, scope: !1859)
!1870 = !DILocation(line: 552, column: 9, scope: !1859)
!1871 = !DILocation(line: 553, column: 11, scope: !1817)
!1872 = !DILocation(line: 555, column: 37, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !712, line: 554, column: 9)
!1874 = distinct !DILexicalBlock(scope: !1817, file: !712, line: 553, column: 11)
!1875 = !DILocation(line: 555, column: 57, scope: !1873)
!1876 = !DILocation(line: 555, column: 53, scope: !1873)
!1877 = !DILocation(line: 555, column: 33, scope: !1873)
!1878 = !DILocation(line: 555, column: 32, scope: !1873)
!1879 = !DILocation(line: 555, column: 20, scope: !1873)
!1880 = !DILocation(line: 556, column: 53, scope: !1873)
!1881 = !DILocation(line: 556, column: 45, scope: !1873)
!1882 = !DILocation(line: 556, column: 43, scope: !1873)
!1883 = !DILocation(line: 557, column: 48, scope: !1873)
!1884 = !DILocation(line: 558, column: 9, scope: !1873)
!1885 = !DILocation(line: 559, column: 11, scope: !1817)
!1886 = !DILocation(line: 561, column: 37, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !712, line: 560, column: 9)
!1888 = distinct !DILexicalBlock(scope: !1817, file: !712, line: 559, column: 11)
!1889 = !DILocation(line: 561, column: 56, scope: !1887)
!1890 = !DILocation(line: 561, column: 52, scope: !1887)
!1891 = !DILocation(line: 561, column: 33, scope: !1887)
!1892 = !DILocation(line: 561, column: 32, scope: !1887)
!1893 = !DILocation(line: 561, column: 20, scope: !1887)
!1894 = !DILocation(line: 562, column: 52, scope: !1887)
!1895 = !DILocation(line: 562, column: 44, scope: !1887)
!1896 = !DILocation(line: 562, column: 42, scope: !1887)
!1897 = !DILocation(line: 563, column: 48, scope: !1887)
!1898 = !DILocation(line: 564, column: 9, scope: !1887)
!1899 = !DILocation(line: 565, column: 45, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1817, file: !712, line: 565, column: 11)
!1901 = !DILocation(line: 565, column: 79, scope: !1900)
!1902 = !DILocation(line: 565, column: 11, scope: !1817)
!1903 = !DILocation(line: 569, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1900, file: !712, line: 567, column: 9)
!1905 = !DILocation(line: 570, column: 14, scope: !1904)
!1906 = !DILocation(line: 571, column: 13, scope: !1904)
!1907 = !DILocation(line: 569, column: 48, scope: !1904)
!1908 = !DILocation(line: 568, column: 33, scope: !1904)
!1909 = !DILocation(line: 568, column: 32, scope: !1904)
!1910 = !DILocation(line: 568, column: 20, scope: !1904)
!1911 = !DILocation(line: 572, column: 55, scope: !1904)
!1912 = !DILocation(line: 572, column: 47, scope: !1904)
!1913 = !DILocation(line: 572, column: 45, scope: !1904)
!1914 = !DILocation(line: 573, column: 48, scope: !1904)
!1915 = !DILocation(line: 574, column: 9, scope: !1904)
!1916 = !DILocation(line: 575, column: 43, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1817, file: !712, line: 575, column: 11)
!1918 = !DILocation(line: 576, column: 19, scope: !1917)
!1919 = !DILocation(line: 576, column: 30, scope: !1917)
!1920 = !DILocation(line: 576, column: 49, scope: !1917)
!1921 = !DILocation(line: 577, column: 31, scope: !1917)
!1922 = !DILocation(line: 577, column: 42, scope: !1917)
!1923 = !DILocation(line: 575, column: 11, scope: !1817)
!1924 = !DILocation(line: 579, column: 37, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1917, file: !712, line: 578, column: 9)
!1926 = !DILocation(line: 580, column: 16, scope: !1925)
!1927 = !DILocation(line: 579, column: 61, scope: !1925)
!1928 = !DILocation(line: 579, column: 33, scope: !1925)
!1929 = !DILocation(line: 579, column: 32, scope: !1925)
!1930 = !DILocation(line: 579, column: 20, scope: !1925)
!1931 = !DILocation(line: 581, column: 53, scope: !1925)
!1932 = !DILocation(line: 581, column: 45, scope: !1925)
!1933 = !DILocation(line: 581, column: 43, scope: !1925)
!1934 = !DILocation(line: 582, column: 48, scope: !1925)
!1935 = !DILocation(line: 583, column: 9, scope: !1925)
!1936 = !DILocation(line: 584, column: 8, scope: !1817)
!1937 = !DILocation(line: 585, column: 8, scope: !1817)
!1938 = !DILocation(line: 536, column: 46, scope: !1818)
!1939 = distinct !{!1939, !1845, !1940, !1337, !1338}
!1940 = !DILocation(line: 586, column: 5, scope: !1819)
!1941 = !DILocation(line: 590, column: 5, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1807, file: !712, line: 590, column: 5)
!1943 = !DILocation(line: 591, column: 22, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1942, file: !712, line: 590, column: 5)
!1945 = !DILocation(line: 591, column: 7, scope: !1944)
!1946 = !DILocation(line: 591, column: 20, scope: !1944)
!1947 = !DILocation(line: 590, column: 50, scope: !1944)
!1948 = !DILocation(line: 590, column: 17, scope: !1944)
!1949 = distinct !{!1949, !1941, !1950, !1337, !1338}
!1950 = !DILocation(line: 591, column: 42, scope: !1942)
!1951 = !DILocation(line: 592, column: 3, scope: !1808)
!1952 = !DILocation(line: 506, column: 41, scope: !1808)
!1953 = distinct !{!1953, !1827, !1954, !1337, !1338}
!1954 = !DILocation(line: 592, column: 3, scope: !1809)
!1955 = !DILocation(line: 499, column: 9, scope: !1794)
!1956 = !DILocation(line: 593, column: 20, scope: !1794)
!1957 = !DILocation(line: 594, column: 14, scope: !1794)
!1958 = !DILocation(line: 595, column: 3, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1794, file: !712, line: 595, column: 3)
!1960 = !DILocation(line: 596, column: 5, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1959, file: !712, line: 595, column: 3)
!1962 = !DILocation(line: 596, column: 18, scope: !1961)
!1963 = !DILocation(line: 595, column: 48, scope: !1961)
!1964 = !DILocation(line: 595, column: 15, scope: !1961)
!1965 = distinct !{!1965, !1958, !1966, !1337, !1338}
!1966 = !DILocation(line: 596, column: 56, scope: !1959)
!1967 = !DILocation(line: 597, column: 17, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1794, file: !712, line: 597, column: 7)
!1969 = !DILocation(line: 597, column: 35, scope: !1968)
!1970 = !DILocation(line: 597, column: 41, scope: !1968)
!1971 = !DILocation(line: 597, column: 53, scope: !1968)
!1972 = !DILocation(line: 597, column: 59, scope: !1968)
!1973 = !DILocation(line: 597, column: 75, scope: !1968)
!1974 = !DILocation(line: 598, column: 27, scope: !1968)
!1975 = !DILocation(line: 598, column: 33, scope: !1968)
!1976 = !DILocation(line: 597, column: 7, scope: !1794)
!1977 = !DILocalVariable(name: "image", arg: 1, scope: !1978, file: !712, line: 460, type: !715)
!1978 = distinct !DISubprogram(name: "GetNumberChannels", scope: !712, file: !712, line: 460, type: !1979, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!458, !715, !733}
!1981 = !{!1977, !1982, !1983}
!1982 = !DILocalVariable(name: "channel", arg: 2, scope: !1978, file: !712, line: 461, type: !733)
!1983 = !DILocalVariable(name: "channels", scope: !1978, file: !712, line: 464, type: !458)
!1984 = !DILocation(line: 0, scope: !1978, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 599, column: 46, scope: !1968)
!1986 = !DILocation(line: 467, column: 16, scope: !1987, inlinedAt: !1985)
!1987 = distinct !DILexicalBlock(scope: !1978, file: !712, line: 467, column: 7)
!1988 = !DILocation(line: 469, column: 7, scope: !1978, inlinedAt: !1985)
!1989 = !DILocation(line: 471, column: 7, scope: !1978, inlinedAt: !1985)
!1990 = !DILocation(line: 474, column: 22, scope: !1991, inlinedAt: !1985)
!1991 = distinct !DILexicalBlock(scope: !1978, file: !712, line: 473, column: 7)
!1992 = !DILocation(line: 473, column: 7, scope: !1978, inlinedAt: !1985)
!1993 = !DILocation(line: 476, column: 17, scope: !1994, inlinedAt: !1985)
!1994 = distinct !DILexicalBlock(scope: !1978, file: !712, line: 476, column: 7)
!1995 = !DILocation(line: 476, column: 33, scope: !1994, inlinedAt: !1985)
!1996 = !DILocation(line: 476, column: 39, scope: !1994, inlinedAt: !1985)
!1997 = !DILocation(line: 477, column: 15, scope: !1994, inlinedAt: !1985)
!1998 = !DILocation(line: 477, column: 26, scope: !1994, inlinedAt: !1985)
!1999 = !DILocation(line: 476, column: 7, scope: !1978, inlinedAt: !1985)
!2000 = !DILocation(line: 599, column: 78, scope: !1968)
!2001 = !DILocation(line: 599, column: 5, scope: !1968)
!2002 = !DILocation(line: 0, scope: !1978, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 601, column: 45, scope: !1968)
!2004 = !DILocation(line: 467, column: 16, scope: !1987, inlinedAt: !2003)
!2005 = !DILocation(line: 469, column: 7, scope: !1978, inlinedAt: !2003)
!2006 = !DILocation(line: 471, column: 7, scope: !1978, inlinedAt: !2003)
!2007 = !DILocation(line: 473, column: 41, scope: !1991, inlinedAt: !2003)
!2008 = !DILocation(line: 474, column: 16, scope: !1991, inlinedAt: !2003)
!2009 = !DILocation(line: 474, column: 22, scope: !1991, inlinedAt: !2003)
!2010 = !DILocation(line: 473, column: 7, scope: !1978, inlinedAt: !2003)
!2011 = !DILocation(line: 476, column: 17, scope: !1994, inlinedAt: !2003)
!2012 = !DILocation(line: 476, column: 33, scope: !1994, inlinedAt: !2003)
!2013 = !DILocation(line: 476, column: 39, scope: !1994, inlinedAt: !2003)
!2014 = !DILocation(line: 477, column: 15, scope: !1994, inlinedAt: !2003)
!2015 = !DILocation(line: 477, column: 26, scope: !1994, inlinedAt: !2003)
!2016 = !DILocation(line: 476, column: 7, scope: !1978, inlinedAt: !2003)
!2017 = !DILocation(line: 0, scope: !1968)
!2018 = !DILocation(line: 602, column: 38, scope: !1794)
!2019 = !DILocation(line: 602, column: 33, scope: !1794)
!2020 = !DILocation(line: 602, column: 32, scope: !1794)
!2021 = !DILocation(line: 603, column: 3, scope: !1794)
!2022 = distinct !DISubprogram(name: "GetMeanAbsoluteDistortion", scope: !712, file: !712, line: 606, type: !1456, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2023)
!2023 = !{!2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2048, !2049}
!2024 = !DILocalVariable(name: "image", arg: 1, scope: !2022, file: !712, line: 606, type: !715)
!2025 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !2022, file: !712, line: 607, type: !715)
!2026 = !DILocalVariable(name: "channel", arg: 3, scope: !2022, file: !712, line: 607, type: !733)
!2027 = !DILocalVariable(name: "distortion", arg: 4, scope: !2022, file: !712, line: 608, type: !673)
!2028 = !DILocalVariable(name: "exception", arg: 5, scope: !2022, file: !712, line: 608, type: !719)
!2029 = !DILocalVariable(name: "image_view", scope: !2022, file: !712, line: 611, type: !743)
!2030 = !DILocalVariable(name: "reconstruct_view", scope: !2022, file: !712, line: 612, type: !743)
!2031 = !DILocalVariable(name: "status", scope: !2022, file: !712, line: 615, type: !463)
!2032 = !DILocalVariable(name: "i", scope: !2022, file: !712, line: 618, type: !511)
!2033 = !DILocalVariable(name: "y", scope: !2022, file: !712, line: 621, type: !511)
!2034 = !DILocalVariable(name: "channel_distortion", scope: !2035, file: !712, line: 633, type: !1646)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !712, line: 631, column: 3)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !712, line: 630, column: 3)
!2037 = distinct !DILexicalBlock(scope: !2022, file: !712, line: 630, column: 3)
!2038 = !DILocalVariable(name: "indexes", scope: !2035, file: !712, line: 636, type: !777)
!2039 = !DILocalVariable(name: "reconstruct_indexes", scope: !2035, file: !712, line: 637, type: !777)
!2040 = !DILocalVariable(name: "p", scope: !2035, file: !712, line: 640, type: !780)
!2041 = !DILocalVariable(name: "q", scope: !2035, file: !712, line: 641, type: !780)
!2042 = !DILocalVariable(name: "i", scope: !2035, file: !712, line: 644, type: !511)
!2043 = !DILocalVariable(name: "x", scope: !2035, file: !712, line: 645, type: !511)
!2044 = !DILocalVariable(name: "distance", scope: !2045, file: !712, line: 663, type: !675)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !712, line: 661, column: 5)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !712, line: 660, column: 5)
!2047 = distinct !DILexicalBlock(scope: !2035, file: !712, line: 660, column: 5)
!2048 = !DILocalVariable(name: "Da", scope: !2045, file: !712, line: 664, type: !675)
!2049 = !DILocalVariable(name: "Sa", scope: !2045, file: !712, line: 665, type: !675)
!2050 = !DILocation(line: 0, scope: !2022)
!2051 = !DILocation(line: 624, column: 14, scope: !2022)
!2052 = !DILocation(line: 625, column: 20, scope: !2022)
!2053 = !DILocation(line: 630, column: 34, scope: !2036)
!2054 = !DILocation(line: 630, column: 15, scope: !2036)
!2055 = !DILocation(line: 630, column: 3, scope: !2037)
!2056 = !DILocation(line: 632, column: 5, scope: !2035)
!2057 = !DILocation(line: 633, column: 7, scope: !2035)
!2058 = !DILocation(line: 647, column: 16, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2035, file: !712, line: 647, column: 9)
!2060 = !DILocation(line: 647, column: 9, scope: !2035)
!2061 = !DILocation(line: 649, column: 55, scope: !2035)
!2062 = !DILocation(line: 649, column: 7, scope: !2035)
!2063 = !DILocation(line: 0, scope: !2035)
!2064 = !DILocation(line: 651, column: 26, scope: !2035)
!2065 = !DILocation(line: 650, column: 7, scope: !2035)
!2066 = !DILocation(line: 652, column: 12, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2035, file: !712, line: 652, column: 9)
!2068 = !DILocation(line: 652, column: 43, scope: !2067)
!2069 = !DILocation(line: 657, column: 13, scope: !2035)
!2070 = !DILocation(line: 658, column: 25, scope: !2035)
!2071 = !DILocation(line: 659, column: 12, scope: !2035)
!2072 = !DILocation(line: 660, column: 17, scope: !2046)
!2073 = !DILocation(line: 660, column: 5, scope: !2047)
!2074 = !DILocation(line: 667, column: 24, scope: !2045)
!2075 = !DILocation(line: 667, column: 54, scope: !2045)
!2076 = !DILocation(line: 667, column: 23, scope: !2045)
!2077 = !DILocation(line: 667, column: 22, scope: !2045)
!2078 = !DILocation(line: 667, column: 10, scope: !2045)
!2079 = !DILocation(line: 0, scope: !2045)
!2080 = !DILocation(line: 669, column: 24, scope: !2045)
!2081 = !DILocation(line: 670, column: 9, scope: !2045)
!2082 = !DILocation(line: 669, column: 23, scope: !2045)
!2083 = !DILocation(line: 669, column: 22, scope: !2045)
!2084 = !DILocation(line: 669, column: 10, scope: !2045)
!2085 = !DILocation(line: 671, column: 11, scope: !2045)
!2086 = !DILocation(line: 673, column: 41, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !712, line: 672, column: 9)
!2088 = distinct !DILexicalBlock(scope: !2045, file: !712, line: 671, column: 11)
!2089 = !DILocation(line: 673, column: 59, scope: !2087)
!2090 = !DILocation(line: 673, column: 55, scope: !2087)
!2091 = !DILocation(line: 673, column: 33, scope: !2087)
!2092 = !DILocation(line: 673, column: 32, scope: !2087)
!2093 = !DILocation(line: 673, column: 20, scope: !2087)
!2094 = !DILocation(line: 674, column: 43, scope: !2087)
!2095 = !DILocation(line: 674, column: 41, scope: !2087)
!2096 = !DILocation(line: 675, column: 48, scope: !2087)
!2097 = !DILocation(line: 676, column: 9, scope: !2087)
!2098 = !DILocation(line: 677, column: 11, scope: !2045)
!2099 = !DILocation(line: 679, column: 41, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !712, line: 678, column: 9)
!2101 = distinct !DILexicalBlock(scope: !2045, file: !712, line: 677, column: 11)
!2102 = !DILocation(line: 679, column: 61, scope: !2100)
!2103 = !DILocation(line: 679, column: 57, scope: !2100)
!2104 = !DILocation(line: 679, column: 33, scope: !2100)
!2105 = !DILocation(line: 679, column: 32, scope: !2100)
!2106 = !DILocation(line: 679, column: 20, scope: !2100)
!2107 = !DILocation(line: 680, column: 45, scope: !2100)
!2108 = !DILocation(line: 680, column: 43, scope: !2100)
!2109 = !DILocation(line: 681, column: 48, scope: !2100)
!2110 = !DILocation(line: 682, column: 9, scope: !2100)
!2111 = !DILocation(line: 683, column: 11, scope: !2045)
!2112 = !DILocation(line: 685, column: 41, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !712, line: 684, column: 9)
!2114 = distinct !DILexicalBlock(scope: !2045, file: !712, line: 683, column: 11)
!2115 = !DILocation(line: 685, column: 60, scope: !2113)
!2116 = !DILocation(line: 685, column: 56, scope: !2113)
!2117 = !DILocation(line: 685, column: 33, scope: !2113)
!2118 = !DILocation(line: 685, column: 32, scope: !2113)
!2119 = !DILocation(line: 685, column: 20, scope: !2113)
!2120 = !DILocation(line: 686, column: 44, scope: !2113)
!2121 = !DILocation(line: 686, column: 42, scope: !2113)
!2122 = !DILocation(line: 687, column: 48, scope: !2113)
!2123 = !DILocation(line: 688, column: 9, scope: !2113)
!2124 = !DILocation(line: 689, column: 45, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2045, file: !712, line: 689, column: 11)
!2126 = !DILocation(line: 692, column: 38, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2125, file: !712, line: 691, column: 9)
!2128 = !DILocation(line: 693, column: 13, scope: !2127)
!2129 = !DILocation(line: 692, column: 57, scope: !2127)
!2130 = !DILocation(line: 692, column: 56, scope: !2127)
!2131 = !DILocation(line: 692, column: 33, scope: !2127)
!2132 = !DILocation(line: 692, column: 32, scope: !2127)
!2133 = !DILocation(line: 692, column: 20, scope: !2127)
!2134 = !DILocation(line: 694, column: 47, scope: !2127)
!2135 = !DILocation(line: 694, column: 45, scope: !2127)
!2136 = !DILocation(line: 695, column: 48, scope: !2127)
!2137 = !DILocation(line: 696, column: 9, scope: !2127)
!2138 = !DILocation(line: 697, column: 43, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2045, file: !712, line: 697, column: 11)
!2140 = !DILocation(line: 698, column: 19, scope: !2139)
!2141 = !DILocation(line: 698, column: 30, scope: !2139)
!2142 = !DILocation(line: 697, column: 11, scope: !2045)
!2143 = !DILocation(line: 700, column: 41, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !712, line: 699, column: 9)
!2145 = !DILocation(line: 701, column: 13, scope: !2144)
!2146 = !DILocation(line: 700, column: 65, scope: !2144)
!2147 = !DILocation(line: 700, column: 33, scope: !2144)
!2148 = !DILocation(line: 700, column: 32, scope: !2144)
!2149 = !DILocation(line: 700, column: 20, scope: !2144)
!2150 = !DILocation(line: 702, column: 45, scope: !2144)
!2151 = !DILocation(line: 702, column: 43, scope: !2144)
!2152 = !DILocation(line: 703, column: 48, scope: !2144)
!2153 = !DILocation(line: 704, column: 9, scope: !2144)
!2154 = !DILocation(line: 705, column: 8, scope: !2045)
!2155 = !DILocation(line: 706, column: 8, scope: !2045)
!2156 = !DILocation(line: 660, column: 46, scope: !2046)
!2157 = distinct !{!2157, !2073, !2158, !1337, !1338}
!2158 = !DILocation(line: 707, column: 5, scope: !2047)
!2159 = !DILocation(line: 711, column: 5, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2035, file: !712, line: 711, column: 5)
!2161 = !DILocation(line: 712, column: 22, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2160, file: !712, line: 711, column: 5)
!2163 = !DILocation(line: 712, column: 7, scope: !2162)
!2164 = !DILocation(line: 712, column: 20, scope: !2162)
!2165 = !DILocation(line: 711, column: 50, scope: !2162)
!2166 = !DILocation(line: 711, column: 17, scope: !2162)
!2167 = distinct !{!2167, !2159, !2168, !1337, !1338}
!2168 = !DILocation(line: 712, column: 42, scope: !2160)
!2169 = !DILocation(line: 713, column: 3, scope: !2036)
!2170 = !DILocation(line: 630, column: 41, scope: !2036)
!2171 = distinct !{!2171, !2055, !2172, !1337, !1338}
!2172 = !DILocation(line: 713, column: 3, scope: !2037)
!2173 = !DILocation(line: 623, column: 9, scope: !2022)
!2174 = !DILocation(line: 714, column: 20, scope: !2022)
!2175 = !DILocation(line: 715, column: 14, scope: !2022)
!2176 = !DILocation(line: 716, column: 3, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2022, file: !712, line: 716, column: 3)
!2178 = !DILocation(line: 717, column: 5, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2177, file: !712, line: 716, column: 3)
!2180 = !DILocation(line: 717, column: 18, scope: !2179)
!2181 = !DILocation(line: 716, column: 48, scope: !2179)
!2182 = !DILocation(line: 716, column: 15, scope: !2179)
!2183 = distinct !{!2183, !2176, !2184, !1337, !1338}
!2184 = !DILocation(line: 717, column: 56, scope: !2177)
!2185 = !DILocation(line: 0, scope: !1978, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 718, column: 43, scope: !2022)
!2187 = !DILocation(line: 467, column: 16, scope: !1987, inlinedAt: !2186)
!2188 = !DILocation(line: 469, column: 7, scope: !1978, inlinedAt: !2186)
!2189 = !DILocation(line: 471, column: 7, scope: !1978, inlinedAt: !2186)
!2190 = !DILocation(line: 473, column: 17, scope: !1991, inlinedAt: !2186)
!2191 = !DILocation(line: 473, column: 35, scope: !1991, inlinedAt: !2186)
!2192 = !DILocation(line: 473, column: 41, scope: !1991, inlinedAt: !2186)
!2193 = !DILocation(line: 474, column: 16, scope: !1991, inlinedAt: !2186)
!2194 = !DILocation(line: 474, column: 22, scope: !1991, inlinedAt: !2186)
!2195 = !DILocation(line: 473, column: 7, scope: !1978, inlinedAt: !2186)
!2196 = !DILocation(line: 476, column: 17, scope: !1994, inlinedAt: !2186)
!2197 = !DILocation(line: 476, column: 33, scope: !1994, inlinedAt: !2186)
!2198 = !DILocation(line: 476, column: 39, scope: !1994, inlinedAt: !2186)
!2199 = !DILocation(line: 477, column: 15, scope: !1994, inlinedAt: !2186)
!2200 = !DILocation(line: 477, column: 26, scope: !1994, inlinedAt: !2186)
!2201 = !DILocation(line: 476, column: 7, scope: !1978, inlinedAt: !2186)
!2202 = !DILocation(line: 718, column: 34, scope: !2022)
!2203 = !DILocation(line: 718, column: 3, scope: !2022)
!2204 = !DILocation(line: 718, column: 32, scope: !2022)
!2205 = !DILocation(line: 719, column: 3, scope: !2022)
!2206 = distinct !DISubprogram(name: "GetMeanErrorPerPixel", scope: !712, file: !712, line: 722, type: !2207, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!463, !447, !715, !733, !673, !719}
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2226, !2227, !2228, !2229, !2230, !2234, !2235}
!2210 = !DILocalVariable(name: "image", arg: 1, scope: !2206, file: !712, line: 722, type: !447)
!2211 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !2206, file: !712, line: 723, type: !715)
!2212 = !DILocalVariable(name: "channel", arg: 3, scope: !2206, file: !712, line: 723, type: !733)
!2213 = !DILocalVariable(name: "distortion", arg: 4, scope: !2206, file: !712, line: 723, type: !673)
!2214 = !DILocalVariable(name: "exception", arg: 5, scope: !2206, file: !712, line: 724, type: !719)
!2215 = !DILocalVariable(name: "image_view", scope: !2206, file: !712, line: 727, type: !743)
!2216 = !DILocalVariable(name: "reconstruct_view", scope: !2206, file: !712, line: 728, type: !743)
!2217 = !DILocalVariable(name: "status", scope: !2206, file: !712, line: 731, type: !463)
!2218 = !DILocalVariable(name: "area", scope: !2206, file: !712, line: 734, type: !675)
!2219 = !DILocalVariable(name: "maximum_error", scope: !2206, file: !712, line: 735, type: !675)
!2220 = !DILocalVariable(name: "mean_error", scope: !2206, file: !712, line: 736, type: !675)
!2221 = !DILocalVariable(name: "y", scope: !2206, file: !712, line: 739, type: !511)
!2222 = !DILocalVariable(name: "indexes", scope: !2223, file: !712, line: 750, type: !777)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !712, line: 748, column: 3)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !712, line: 747, column: 3)
!2225 = distinct !DILexicalBlock(scope: !2206, file: !712, line: 747, column: 3)
!2226 = !DILocalVariable(name: "reconstruct_indexes", scope: !2223, file: !712, line: 751, type: !777)
!2227 = !DILocalVariable(name: "p", scope: !2223, file: !712, line: 754, type: !780)
!2228 = !DILocalVariable(name: "q", scope: !2223, file: !712, line: 755, type: !780)
!2229 = !DILocalVariable(name: "x", scope: !2223, file: !712, line: 758, type: !511)
!2230 = !DILocalVariable(name: "distance", scope: !2231, file: !712, line: 773, type: !675)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !712, line: 771, column: 5)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !712, line: 770, column: 5)
!2233 = distinct !DILexicalBlock(scope: !2223, file: !712, line: 770, column: 5)
!2234 = !DILocalVariable(name: "Da", scope: !2231, file: !712, line: 774, type: !675)
!2235 = !DILocalVariable(name: "Sa", scope: !2231, file: !712, line: 775, type: !675)
!2236 = !DILocation(line: 0, scope: !2206)
!2237 = !DILocation(line: 745, column: 14, scope: !2206)
!2238 = !DILocation(line: 746, column: 20, scope: !2206)
!2239 = !DILocation(line: 747, column: 34, scope: !2224)
!2240 = !DILocation(line: 747, column: 15, scope: !2224)
!2241 = !DILocation(line: 747, column: 3, scope: !2225)
!2242 = !DILocation(line: 760, column: 55, scope: !2223)
!2243 = !DILocation(line: 760, column: 7, scope: !2223)
!2244 = !DILocation(line: 0, scope: !2223)
!2245 = !DILocation(line: 761, column: 73, scope: !2223)
!2246 = !DILocation(line: 761, column: 7, scope: !2223)
!2247 = !DILocation(line: 763, column: 12, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2223, file: !712, line: 763, column: 9)
!2249 = !DILocation(line: 763, column: 43, scope: !2248)
!2250 = !DILocation(line: 768, column: 13, scope: !2223)
!2251 = !DILocation(line: 769, column: 25, scope: !2223)
!2252 = !DILocation(line: 770, column: 17, scope: !2232)
!2253 = !DILocation(line: 770, column: 5, scope: !2233)
!2254 = !DILocation(line: 777, column: 24, scope: !2231)
!2255 = !DILocation(line: 777, column: 54, scope: !2231)
!2256 = !DILocation(line: 777, column: 23, scope: !2231)
!2257 = !DILocation(line: 777, column: 22, scope: !2231)
!2258 = !DILocation(line: 777, column: 10, scope: !2231)
!2259 = !DILocation(line: 0, scope: !2231)
!2260 = !DILocation(line: 779, column: 24, scope: !2231)
!2261 = !DILocation(line: 780, column: 9, scope: !2231)
!2262 = !DILocation(line: 779, column: 23, scope: !2231)
!2263 = !DILocation(line: 779, column: 22, scope: !2231)
!2264 = !DILocation(line: 779, column: 10, scope: !2231)
!2265 = !DILocation(line: 781, column: 11, scope: !2231)
!2266 = !DILocation(line: 783, column: 28, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !712, line: 782, column: 9)
!2268 = distinct !DILexicalBlock(scope: !2231, file: !712, line: 781, column: 11)
!2269 = !DILocation(line: 783, column: 46, scope: !2267)
!2270 = !DILocation(line: 783, column: 42, scope: !2267)
!2271 = !DILocation(line: 783, column: 20, scope: !2267)
!2272 = !DILocation(line: 784, column: 35, scope: !2267)
!2273 = !DILocation(line: 784, column: 33, scope: !2267)
!2274 = !DILocation(line: 785, column: 40, scope: !2267)
!2275 = !DILocation(line: 786, column: 21, scope: !2267)
!2276 = !DILocation(line: 787, column: 24, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2267, file: !712, line: 787, column: 15)
!2278 = !DILocation(line: 787, column: 15, scope: !2267)
!2279 = !DILocation(line: 788, column: 13, scope: !2277)
!2280 = !DILocation(line: 789, column: 15, scope: !2267)
!2281 = !DILocation(line: 790, column: 9, scope: !2267)
!2282 = !DILocation(line: 791, column: 11, scope: !2231)
!2283 = !DILocation(line: 793, column: 28, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !712, line: 792, column: 9)
!2285 = distinct !DILexicalBlock(scope: !2231, file: !712, line: 791, column: 11)
!2286 = !DILocation(line: 793, column: 48, scope: !2284)
!2287 = !DILocation(line: 793, column: 44, scope: !2284)
!2288 = !DILocation(line: 793, column: 20, scope: !2284)
!2289 = !DILocation(line: 794, column: 37, scope: !2284)
!2290 = !DILocation(line: 794, column: 35, scope: !2284)
!2291 = !DILocation(line: 795, column: 40, scope: !2284)
!2292 = !DILocation(line: 796, column: 21, scope: !2284)
!2293 = !DILocation(line: 797, column: 24, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2284, file: !712, line: 797, column: 15)
!2295 = !DILocation(line: 797, column: 15, scope: !2284)
!2296 = !DILocation(line: 798, column: 13, scope: !2294)
!2297 = !DILocation(line: 799, column: 15, scope: !2284)
!2298 = !DILocation(line: 800, column: 9, scope: !2284)
!2299 = !DILocation(line: 801, column: 11, scope: !2231)
!2300 = !DILocation(line: 803, column: 28, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !712, line: 802, column: 9)
!2302 = distinct !DILexicalBlock(scope: !2231, file: !712, line: 801, column: 11)
!2303 = !DILocation(line: 803, column: 47, scope: !2301)
!2304 = !DILocation(line: 803, column: 43, scope: !2301)
!2305 = !DILocation(line: 803, column: 20, scope: !2301)
!2306 = !DILocation(line: 804, column: 36, scope: !2301)
!2307 = !DILocation(line: 804, column: 34, scope: !2301)
!2308 = !DILocation(line: 805, column: 40, scope: !2301)
!2309 = !DILocation(line: 806, column: 21, scope: !2301)
!2310 = !DILocation(line: 807, column: 24, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2301, file: !712, line: 807, column: 15)
!2312 = !DILocation(line: 807, column: 15, scope: !2301)
!2313 = !DILocation(line: 808, column: 13, scope: !2311)
!2314 = !DILocation(line: 809, column: 15, scope: !2301)
!2315 = !DILocation(line: 810, column: 9, scope: !2301)
!2316 = !DILocation(line: 811, column: 45, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2231, file: !712, line: 811, column: 11)
!2318 = !DILocation(line: 814, column: 34, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2317, file: !712, line: 813, column: 9)
!2320 = !DILocation(line: 814, column: 25, scope: !2319)
!2321 = !DILocation(line: 815, column: 13, scope: !2319)
!2322 = !DILocation(line: 814, column: 52, scope: !2319)
!2323 = !DILocation(line: 814, column: 20, scope: !2319)
!2324 = !DILocation(line: 816, column: 39, scope: !2319)
!2325 = !DILocation(line: 816, column: 37, scope: !2319)
!2326 = !DILocation(line: 817, column: 40, scope: !2319)
!2327 = !DILocation(line: 818, column: 21, scope: !2319)
!2328 = !DILocation(line: 819, column: 24, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2319, file: !712, line: 819, column: 15)
!2330 = !DILocation(line: 819, column: 15, scope: !2319)
!2331 = !DILocation(line: 820, column: 13, scope: !2329)
!2332 = !DILocation(line: 821, column: 15, scope: !2319)
!2333 = !DILocation(line: 822, column: 9, scope: !2319)
!2334 = !DILocation(line: 823, column: 43, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2231, file: !712, line: 823, column: 11)
!2336 = !DILocation(line: 824, column: 19, scope: !2335)
!2337 = !DILocation(line: 824, column: 30, scope: !2335)
!2338 = !DILocation(line: 824, column: 49, scope: !2335)
!2339 = !DILocation(line: 825, column: 31, scope: !2335)
!2340 = !DILocation(line: 825, column: 42, scope: !2335)
!2341 = !DILocation(line: 823, column: 11, scope: !2231)
!2342 = !DILocation(line: 827, column: 28, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2335, file: !712, line: 826, column: 9)
!2344 = !DILocation(line: 828, column: 13, scope: !2343)
!2345 = !DILocation(line: 827, column: 52, scope: !2343)
!2346 = !DILocation(line: 827, column: 20, scope: !2343)
!2347 = !DILocation(line: 829, column: 37, scope: !2343)
!2348 = !DILocation(line: 829, column: 35, scope: !2343)
!2349 = !DILocation(line: 830, column: 40, scope: !2343)
!2350 = !DILocation(line: 831, column: 21, scope: !2343)
!2351 = !DILocation(line: 832, column: 24, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2343, file: !712, line: 832, column: 15)
!2353 = !DILocation(line: 832, column: 15, scope: !2343)
!2354 = !DILocation(line: 833, column: 13, scope: !2352)
!2355 = !DILocation(line: 834, column: 15, scope: !2343)
!2356 = !DILocation(line: 835, column: 9, scope: !2343)
!2357 = !DILocation(line: 836, column: 8, scope: !2231)
!2358 = !DILocation(line: 837, column: 8, scope: !2231)
!2359 = !DILocation(line: 770, column: 46, scope: !2232)
!2360 = distinct !{!2360, !2253, !2361, !1337, !1338}
!2361 = !DILocation(line: 838, column: 5, scope: !2233)
!2362 = !DILocation(line: 747, column: 41, scope: !2224)
!2363 = distinct !{!2363, !2241, !2364, !1337, !1338}
!2364 = !DILocation(line: 839, column: 3, scope: !2225)
!2365 = !DILocation(line: 743, column: 16, scope: !2206)
!2366 = !DILocation(line: 744, column: 13, scope: !2206)
!2367 = !DILocation(line: 742, column: 7, scope: !2206)
!2368 = !DILocation(line: 840, column: 20, scope: !2206)
!2369 = !DILocation(line: 841, column: 14, scope: !2206)
!2370 = !DILocation(line: 842, column: 37, scope: !2206)
!2371 = !DILocation(line: 842, column: 67, scope: !2206)
!2372 = !DILocation(line: 842, column: 66, scope: !2206)
!2373 = !DILocation(line: 842, column: 10, scope: !2206)
!2374 = !DILocation(line: 842, column: 36, scope: !2206)
!2375 = !{!800, !807, i64 480}
!2376 = !DILocation(line: 843, column: 64, scope: !2206)
!2377 = !DILocation(line: 843, column: 63, scope: !2206)
!2378 = !DILocation(line: 843, column: 74, scope: !2206)
!2379 = !DILocation(line: 843, column: 16, scope: !2206)
!2380 = !DILocation(line: 843, column: 37, scope: !2206)
!2381 = !{!800, !807, i64 488}
!2382 = !DILocation(line: 844, column: 54, scope: !2206)
!2383 = !DILocation(line: 844, column: 53, scope: !2206)
!2384 = !DILocation(line: 844, column: 16, scope: !2206)
!2385 = !DILocation(line: 844, column: 40, scope: !2206)
!2386 = !{!800, !807, i64 496}
!2387 = !DILocation(line: 845, column: 3, scope: !2206)
!2388 = distinct !DISubprogram(name: "GetMeanSquaredDistortion", scope: !712, file: !712, line: 848, type: !1456, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2414, !2415}
!2390 = !DILocalVariable(name: "image", arg: 1, scope: !2388, file: !712, line: 848, type: !715)
!2391 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !2388, file: !712, line: 849, type: !715)
!2392 = !DILocalVariable(name: "channel", arg: 3, scope: !2388, file: !712, line: 849, type: !733)
!2393 = !DILocalVariable(name: "distortion", arg: 4, scope: !2388, file: !712, line: 850, type: !673)
!2394 = !DILocalVariable(name: "exception", arg: 5, scope: !2388, file: !712, line: 850, type: !719)
!2395 = !DILocalVariable(name: "image_view", scope: !2388, file: !712, line: 853, type: !743)
!2396 = !DILocalVariable(name: "reconstruct_view", scope: !2388, file: !712, line: 854, type: !743)
!2397 = !DILocalVariable(name: "status", scope: !2388, file: !712, line: 857, type: !463)
!2398 = !DILocalVariable(name: "i", scope: !2388, file: !712, line: 860, type: !511)
!2399 = !DILocalVariable(name: "y", scope: !2388, file: !712, line: 863, type: !511)
!2400 = !DILocalVariable(name: "channel_distortion", scope: !2401, file: !712, line: 875, type: !1646)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !712, line: 873, column: 3)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !712, line: 872, column: 3)
!2403 = distinct !DILexicalBlock(scope: !2388, file: !712, line: 872, column: 3)
!2404 = !DILocalVariable(name: "indexes", scope: !2401, file: !712, line: 878, type: !777)
!2405 = !DILocalVariable(name: "reconstruct_indexes", scope: !2401, file: !712, line: 879, type: !777)
!2406 = !DILocalVariable(name: "p", scope: !2401, file: !712, line: 882, type: !780)
!2407 = !DILocalVariable(name: "q", scope: !2401, file: !712, line: 883, type: !780)
!2408 = !DILocalVariable(name: "i", scope: !2401, file: !712, line: 886, type: !511)
!2409 = !DILocalVariable(name: "x", scope: !2401, file: !712, line: 887, type: !511)
!2410 = !DILocalVariable(name: "distance", scope: !2411, file: !712, line: 905, type: !675)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !712, line: 903, column: 5)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !712, line: 902, column: 5)
!2413 = distinct !DILexicalBlock(scope: !2401, file: !712, line: 902, column: 5)
!2414 = !DILocalVariable(name: "Da", scope: !2411, file: !712, line: 906, type: !675)
!2415 = !DILocalVariable(name: "Sa", scope: !2411, file: !712, line: 907, type: !675)
!2416 = !DILocation(line: 0, scope: !2388)
!2417 = !DILocation(line: 866, column: 14, scope: !2388)
!2418 = !DILocation(line: 867, column: 20, scope: !2388)
!2419 = !DILocation(line: 872, column: 34, scope: !2402)
!2420 = !DILocation(line: 872, column: 15, scope: !2402)
!2421 = !DILocation(line: 872, column: 3, scope: !2403)
!2422 = !DILocation(line: 874, column: 5, scope: !2401)
!2423 = !DILocation(line: 875, column: 7, scope: !2401)
!2424 = !DILocation(line: 889, column: 16, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2401, file: !712, line: 889, column: 9)
!2426 = !DILocation(line: 889, column: 9, scope: !2401)
!2427 = !DILocation(line: 891, column: 55, scope: !2401)
!2428 = !DILocation(line: 891, column: 7, scope: !2401)
!2429 = !DILocation(line: 0, scope: !2401)
!2430 = !DILocation(line: 893, column: 26, scope: !2401)
!2431 = !DILocation(line: 892, column: 7, scope: !2401)
!2432 = !DILocation(line: 894, column: 12, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2401, file: !712, line: 894, column: 9)
!2434 = !DILocation(line: 894, column: 43, scope: !2433)
!2435 = !DILocation(line: 899, column: 13, scope: !2401)
!2436 = !DILocation(line: 900, column: 25, scope: !2401)
!2437 = !DILocation(line: 901, column: 12, scope: !2401)
!2438 = !DILocation(line: 902, column: 17, scope: !2412)
!2439 = !DILocation(line: 902, column: 5, scope: !2413)
!2440 = !DILocation(line: 909, column: 24, scope: !2411)
!2441 = !DILocation(line: 909, column: 54, scope: !2411)
!2442 = !DILocation(line: 909, column: 23, scope: !2411)
!2443 = !DILocation(line: 909, column: 22, scope: !2411)
!2444 = !DILocation(line: 909, column: 10, scope: !2411)
!2445 = !DILocation(line: 0, scope: !2411)
!2446 = !DILocation(line: 911, column: 24, scope: !2411)
!2447 = !DILocation(line: 912, column: 9, scope: !2411)
!2448 = !DILocation(line: 911, column: 23, scope: !2411)
!2449 = !DILocation(line: 911, column: 22, scope: !2411)
!2450 = !DILocation(line: 911, column: 10, scope: !2411)
!2451 = !DILocation(line: 913, column: 11, scope: !2411)
!2452 = !DILocation(line: 915, column: 37, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !712, line: 914, column: 9)
!2454 = distinct !DILexicalBlock(scope: !2411, file: !712, line: 913, column: 11)
!2455 = !DILocation(line: 915, column: 55, scope: !2453)
!2456 = !DILocation(line: 915, column: 51, scope: !2453)
!2457 = !DILocation(line: 915, column: 33, scope: !2453)
!2458 = !DILocation(line: 915, column: 32, scope: !2453)
!2459 = !DILocation(line: 915, column: 20, scope: !2453)
!2460 = !DILocation(line: 916, column: 51, scope: !2453)
!2461 = !DILocation(line: 916, column: 43, scope: !2453)
!2462 = !DILocation(line: 916, column: 41, scope: !2453)
!2463 = !DILocation(line: 917, column: 48, scope: !2453)
!2464 = !DILocation(line: 918, column: 9, scope: !2453)
!2465 = !DILocation(line: 919, column: 11, scope: !2411)
!2466 = !DILocation(line: 921, column: 37, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !712, line: 920, column: 9)
!2468 = distinct !DILexicalBlock(scope: !2411, file: !712, line: 919, column: 11)
!2469 = !DILocation(line: 921, column: 57, scope: !2467)
!2470 = !DILocation(line: 921, column: 53, scope: !2467)
!2471 = !DILocation(line: 921, column: 33, scope: !2467)
!2472 = !DILocation(line: 921, column: 32, scope: !2467)
!2473 = !DILocation(line: 921, column: 20, scope: !2467)
!2474 = !DILocation(line: 922, column: 53, scope: !2467)
!2475 = !DILocation(line: 922, column: 45, scope: !2467)
!2476 = !DILocation(line: 922, column: 43, scope: !2467)
!2477 = !DILocation(line: 923, column: 48, scope: !2467)
!2478 = !DILocation(line: 924, column: 9, scope: !2467)
!2479 = !DILocation(line: 925, column: 11, scope: !2411)
!2480 = !DILocation(line: 927, column: 37, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !712, line: 926, column: 9)
!2482 = distinct !DILexicalBlock(scope: !2411, file: !712, line: 925, column: 11)
!2483 = !DILocation(line: 927, column: 56, scope: !2481)
!2484 = !DILocation(line: 927, column: 52, scope: !2481)
!2485 = !DILocation(line: 927, column: 33, scope: !2481)
!2486 = !DILocation(line: 927, column: 32, scope: !2481)
!2487 = !DILocation(line: 927, column: 20, scope: !2481)
!2488 = !DILocation(line: 928, column: 52, scope: !2481)
!2489 = !DILocation(line: 928, column: 44, scope: !2481)
!2490 = !DILocation(line: 928, column: 42, scope: !2481)
!2491 = !DILocation(line: 929, column: 48, scope: !2481)
!2492 = !DILocation(line: 930, column: 9, scope: !2481)
!2493 = !DILocation(line: 931, column: 45, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2411, file: !712, line: 931, column: 11)
!2495 = !DILocation(line: 934, column: 34, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2494, file: !712, line: 933, column: 9)
!2497 = !DILocation(line: 935, column: 13, scope: !2496)
!2498 = !DILocation(line: 934, column: 53, scope: !2496)
!2499 = !DILocation(line: 934, column: 52, scope: !2496)
!2500 = !DILocation(line: 934, column: 33, scope: !2496)
!2501 = !DILocation(line: 934, column: 32, scope: !2496)
!2502 = !DILocation(line: 934, column: 20, scope: !2496)
!2503 = !DILocation(line: 936, column: 55, scope: !2496)
!2504 = !DILocation(line: 936, column: 47, scope: !2496)
!2505 = !DILocation(line: 936, column: 45, scope: !2496)
!2506 = !DILocation(line: 937, column: 48, scope: !2496)
!2507 = !DILocation(line: 938, column: 9, scope: !2496)
!2508 = !DILocation(line: 939, column: 43, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2411, file: !712, line: 939, column: 11)
!2510 = !DILocation(line: 940, column: 19, scope: !2509)
!2511 = !DILocation(line: 940, column: 30, scope: !2509)
!2512 = !DILocation(line: 940, column: 49, scope: !2509)
!2513 = !DILocation(line: 941, column: 31, scope: !2509)
!2514 = !DILocation(line: 941, column: 42, scope: !2509)
!2515 = !DILocation(line: 939, column: 11, scope: !2411)
!2516 = !DILocation(line: 943, column: 37, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2509, file: !712, line: 942, column: 9)
!2518 = !DILocation(line: 944, column: 13, scope: !2517)
!2519 = !DILocation(line: 943, column: 61, scope: !2517)
!2520 = !DILocation(line: 943, column: 33, scope: !2517)
!2521 = !DILocation(line: 943, column: 32, scope: !2517)
!2522 = !DILocation(line: 943, column: 20, scope: !2517)
!2523 = !DILocation(line: 945, column: 53, scope: !2517)
!2524 = !DILocation(line: 945, column: 45, scope: !2517)
!2525 = !DILocation(line: 945, column: 43, scope: !2517)
!2526 = !DILocation(line: 946, column: 48, scope: !2517)
!2527 = !DILocation(line: 947, column: 9, scope: !2517)
!2528 = !DILocation(line: 948, column: 8, scope: !2411)
!2529 = !DILocation(line: 949, column: 8, scope: !2411)
!2530 = !DILocation(line: 902, column: 46, scope: !2412)
!2531 = distinct !{!2531, !2439, !2532, !1337, !1338}
!2532 = !DILocation(line: 950, column: 5, scope: !2413)
!2533 = !DILocation(line: 954, column: 5, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2401, file: !712, line: 954, column: 5)
!2535 = !DILocation(line: 955, column: 22, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2534, file: !712, line: 954, column: 5)
!2537 = !DILocation(line: 955, column: 7, scope: !2536)
!2538 = !DILocation(line: 955, column: 20, scope: !2536)
!2539 = !DILocation(line: 954, column: 50, scope: !2536)
!2540 = !DILocation(line: 954, column: 17, scope: !2536)
!2541 = distinct !{!2541, !2533, !2542, !1337, !1338}
!2542 = !DILocation(line: 955, column: 42, scope: !2534)
!2543 = !DILocation(line: 956, column: 3, scope: !2402)
!2544 = !DILocation(line: 872, column: 41, scope: !2402)
!2545 = distinct !{!2545, !2421, !2546, !1337, !1338}
!2546 = !DILocation(line: 956, column: 3, scope: !2403)
!2547 = !DILocation(line: 865, column: 9, scope: !2388)
!2548 = !DILocation(line: 957, column: 20, scope: !2388)
!2549 = !DILocation(line: 958, column: 14, scope: !2388)
!2550 = !DILocation(line: 959, column: 3, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2388, file: !712, line: 959, column: 3)
!2552 = !DILocation(line: 960, column: 5, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2551, file: !712, line: 959, column: 3)
!2554 = !DILocation(line: 960, column: 18, scope: !2553)
!2555 = !DILocation(line: 959, column: 48, scope: !2553)
!2556 = !DILocation(line: 959, column: 15, scope: !2553)
!2557 = distinct !{!2557, !2550, !2558, !1337, !1338}
!2558 = !DILocation(line: 960, column: 56, scope: !2551)
!2559 = !DILocation(line: 0, scope: !1978, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 961, column: 43, scope: !2388)
!2561 = !DILocation(line: 467, column: 16, scope: !1987, inlinedAt: !2560)
!2562 = !DILocation(line: 469, column: 7, scope: !1978, inlinedAt: !2560)
!2563 = !DILocation(line: 471, column: 7, scope: !1978, inlinedAt: !2560)
!2564 = !DILocation(line: 473, column: 17, scope: !1991, inlinedAt: !2560)
!2565 = !DILocation(line: 473, column: 35, scope: !1991, inlinedAt: !2560)
!2566 = !DILocation(line: 473, column: 41, scope: !1991, inlinedAt: !2560)
!2567 = !DILocation(line: 474, column: 16, scope: !1991, inlinedAt: !2560)
!2568 = !DILocation(line: 474, column: 22, scope: !1991, inlinedAt: !2560)
!2569 = !DILocation(line: 473, column: 7, scope: !1978, inlinedAt: !2560)
!2570 = !DILocation(line: 476, column: 17, scope: !1994, inlinedAt: !2560)
!2571 = !DILocation(line: 476, column: 33, scope: !1994, inlinedAt: !2560)
!2572 = !DILocation(line: 476, column: 39, scope: !1994, inlinedAt: !2560)
!2573 = !DILocation(line: 477, column: 15, scope: !1994, inlinedAt: !2560)
!2574 = !DILocation(line: 477, column: 26, scope: !1994, inlinedAt: !2560)
!2575 = !DILocation(line: 476, column: 7, scope: !1978, inlinedAt: !2560)
!2576 = !DILocation(line: 961, column: 34, scope: !2388)
!2577 = !DILocation(line: 961, column: 3, scope: !2388)
!2578 = !DILocation(line: 961, column: 32, scope: !2388)
!2579 = !DILocation(line: 962, column: 3, scope: !2388)
!2580 = distinct !DISubprogram(name: "GetNormalizedCrossCorrelationDistortion", scope: !712, file: !712, line: 965, type: !1456, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2581)
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2600, !2601, !2602, !2603, !2604, !2608, !2609, !2612}
!2582 = !DILocalVariable(name: "image", arg: 1, scope: !2580, file: !712, line: 966, type: !715)
!2583 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !2580, file: !712, line: 966, type: !715)
!2584 = !DILocalVariable(name: "channel", arg: 3, scope: !2580, file: !712, line: 966, type: !733)
!2585 = !DILocalVariable(name: "distortion", arg: 4, scope: !2580, file: !712, line: 967, type: !673)
!2586 = !DILocalVariable(name: "exception", arg: 5, scope: !2580, file: !712, line: 967, type: !719)
!2587 = !DILocalVariable(name: "image_view", scope: !2580, file: !712, line: 972, type: !743)
!2588 = !DILocalVariable(name: "reconstruct_view", scope: !2580, file: !712, line: 973, type: !743)
!2589 = !DILocalVariable(name: "image_statistics", scope: !2580, file: !712, line: 976, type: !678)
!2590 = !DILocalVariable(name: "reconstruct_statistics", scope: !2580, file: !712, line: 977, type: !678)
!2591 = !DILocalVariable(name: "status", scope: !2580, file: !712, line: 980, type: !463)
!2592 = !DILocalVariable(name: "progress", scope: !2580, file: !712, line: 983, type: !583)
!2593 = !DILocalVariable(name: "area", scope: !2580, file: !712, line: 986, type: !675)
!2594 = !DILocalVariable(name: "i", scope: !2580, file: !712, line: 989, type: !511)
!2595 = !DILocalVariable(name: "y", scope: !2580, file: !712, line: 992, type: !511)
!2596 = !DILocalVariable(name: "indexes", scope: !2597, file: !712, line: 1020, type: !777)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !712, line: 1018, column: 3)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !712, line: 1017, column: 3)
!2599 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 1017, column: 3)
!2600 = !DILocalVariable(name: "reconstruct_indexes", scope: !2597, file: !712, line: 1021, type: !777)
!2601 = !DILocalVariable(name: "p", scope: !2597, file: !712, line: 1024, type: !780)
!2602 = !DILocalVariable(name: "q", scope: !2597, file: !712, line: 1025, type: !780)
!2603 = !DILocalVariable(name: "x", scope: !2597, file: !712, line: 1028, type: !511)
!2604 = !DILocalVariable(name: "Da", scope: !2605, file: !712, line: 1045, type: !675)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !712, line: 1043, column: 5)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !712, line: 1042, column: 5)
!2607 = distinct !DILexicalBlock(scope: !2597, file: !712, line: 1042, column: 5)
!2608 = !DILocalVariable(name: "Sa", scope: !2605, file: !712, line: 1046, type: !675)
!2609 = !DILocalVariable(name: "proceed", scope: !2610, file: !712, line: 1082, type: !463)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !712, line: 1080, column: 7)
!2611 = distinct !DILexicalBlock(scope: !2597, file: !712, line: 1079, column: 9)
!2612 = !DILocalVariable(name: "gamma", scope: !2613, file: !712, line: 1098, type: !484)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !712, line: 1096, column: 3)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !712, line: 1095, column: 3)
!2615 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 1095, column: 3)
!2616 = !DILocation(line: 0, scope: !2580)
!2617 = !DILocation(line: 997, column: 20, scope: !2580)
!2618 = !DILocation(line: 998, column: 26, scope: !2580)
!2619 = !DILocation(line: 999, column: 25, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 999, column: 7)
!2621 = !DILocation(line: 999, column: 56, scope: !2620)
!2622 = !DILocation(line: 1013, column: 18, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !712, line: 1012, column: 3)
!2624 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 1012, column: 3)
!2625 = !DILocation(line: 1014, column: 37, scope: !2580)
!2626 = !DILocation(line: 1014, column: 52, scope: !2580)
!2627 = !DILocation(line: 1015, column: 14, scope: !2580)
!2628 = !DILocation(line: 1016, column: 20, scope: !2580)
!2629 = !DILocation(line: 1017, column: 34, scope: !2598)
!2630 = !DILocation(line: 1017, column: 15, scope: !2598)
!2631 = !DILocation(line: 1017, column: 3, scope: !2599)
!2632 = !DILocation(line: 1002, column: 11, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2620, file: !712, line: 1001, column: 5)
!2634 = !DILocation(line: 1003, column: 48, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2633, file: !712, line: 1002, column: 11)
!2636 = !DILocation(line: 1003, column: 9, scope: !2635)
!2637 = !DILocation(line: 1005, column: 11, scope: !2633)
!2638 = !DILocation(line: 1006, column: 54, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2633, file: !712, line: 1005, column: 11)
!2640 = !DILocation(line: 1006, column: 9, scope: !2639)
!2641 = !DILocation(line: 1014, column: 13, scope: !2580)
!2642 = !DILocation(line: 1014, column: 45, scope: !2580)
!2643 = !DILocation(line: 1014, column: 56, scope: !2580)
!2644 = !DILocation(line: 1014, column: 8, scope: !2580)
!2645 = !DILocation(line: 1030, column: 16, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2597, file: !712, line: 1030, column: 9)
!2647 = !DILocation(line: 1030, column: 9, scope: !2597)
!2648 = !DILocation(line: 1032, column: 55, scope: !2597)
!2649 = !DILocation(line: 1032, column: 7, scope: !2597)
!2650 = !DILocation(line: 0, scope: !2597)
!2651 = !DILocation(line: 1033, column: 73, scope: !2597)
!2652 = !DILocation(line: 1033, column: 7, scope: !2597)
!2653 = !DILocation(line: 1035, column: 12, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2597, file: !712, line: 1035, column: 9)
!2655 = !DILocation(line: 1035, column: 43, scope: !2654)
!2656 = !DILocation(line: 1040, column: 13, scope: !2597)
!2657 = !DILocation(line: 1041, column: 25, scope: !2597)
!2658 = !DILocation(line: 1042, column: 17, scope: !2606)
!2659 = !DILocation(line: 1042, column: 5, scope: !2607)
!2660 = !DILocation(line: 1048, column: 24, scope: !2605)
!2661 = !DILocation(line: 1048, column: 54, scope: !2605)
!2662 = !DILocation(line: 1048, column: 23, scope: !2605)
!2663 = !DILocation(line: 1048, column: 22, scope: !2605)
!2664 = !DILocation(line: 1048, column: 10, scope: !2605)
!2665 = !DILocation(line: 0, scope: !2605)
!2666 = !DILocation(line: 1050, column: 24, scope: !2605)
!2667 = !DILocation(line: 1051, column: 9, scope: !2605)
!2668 = !DILocation(line: 1050, column: 23, scope: !2605)
!2669 = !DILocation(line: 1050, column: 22, scope: !2605)
!2670 = !DILocation(line: 1050, column: 10, scope: !2605)
!2671 = !DILocation(line: 1052, column: 11, scope: !2605)
!2672 = !DILocation(line: 1053, column: 55, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2605, file: !712, line: 1052, column: 11)
!2674 = !DILocation(line: 1053, column: 54, scope: !2673)
!2675 = !DILocation(line: 1053, column: 52, scope: !2673)
!2676 = !DILocation(line: 1054, column: 40, scope: !2673)
!2677 = !{!2678, !807, i64 56}
!2678 = !{!"_ChannelStatistics", !803, i64 0, !807, i64 8, !807, i64 16, !807, i64 24, !807, i64 32, !807, i64 40, !807, i64 48, !807, i64 56, !807, i64 64, !807, i64 72, !807, i64 80, !807, i64 88}
!2679 = !DILocation(line: 1053, column: 69, scope: !2673)
!2680 = !DILocation(line: 1053, column: 50, scope: !2673)
!2681 = !DILocation(line: 1054, column: 50, scope: !2673)
!2682 = !DILocation(line: 1054, column: 49, scope: !2673)
!2683 = !DILocation(line: 1054, column: 47, scope: !2673)
!2684 = !DILocation(line: 1055, column: 46, scope: !2673)
!2685 = !DILocation(line: 1054, column: 64, scope: !2673)
!2686 = !DILocation(line: 1053, column: 31, scope: !2673)
!2687 = !DILocation(line: 1053, column: 9, scope: !2673)
!2688 = !DILocation(line: 1056, column: 11, scope: !2605)
!2689 = !DILocation(line: 1057, column: 57, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2605, file: !712, line: 1056, column: 11)
!2691 = !DILocation(line: 1057, column: 56, scope: !2690)
!2692 = !DILocation(line: 1057, column: 54, scope: !2690)
!2693 = !DILocation(line: 1058, column: 42, scope: !2690)
!2694 = !DILocation(line: 1057, column: 73, scope: !2690)
!2695 = !DILocation(line: 1057, column: 52, scope: !2690)
!2696 = !DILocation(line: 1058, column: 52, scope: !2690)
!2697 = !DILocation(line: 1058, column: 51, scope: !2690)
!2698 = !DILocation(line: 1058, column: 49, scope: !2690)
!2699 = !DILocation(line: 1059, column: 48, scope: !2690)
!2700 = !DILocation(line: 1058, column: 68, scope: !2690)
!2701 = !DILocation(line: 1057, column: 33, scope: !2690)
!2702 = !DILocation(line: 1057, column: 9, scope: !2690)
!2703 = !DILocation(line: 1060, column: 11, scope: !2605)
!2704 = !DILocation(line: 1061, column: 56, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2605, file: !712, line: 1060, column: 11)
!2706 = !DILocation(line: 1061, column: 55, scope: !2705)
!2707 = !DILocation(line: 1061, column: 53, scope: !2705)
!2708 = !DILocation(line: 1062, column: 41, scope: !2705)
!2709 = !DILocation(line: 1061, column: 71, scope: !2705)
!2710 = !DILocation(line: 1061, column: 51, scope: !2705)
!2711 = !DILocation(line: 1062, column: 51, scope: !2705)
!2712 = !DILocation(line: 1062, column: 50, scope: !2705)
!2713 = !DILocation(line: 1062, column: 48, scope: !2705)
!2714 = !DILocation(line: 1063, column: 47, scope: !2705)
!2715 = !DILocation(line: 1062, column: 66, scope: !2705)
!2716 = !DILocation(line: 1061, column: 32, scope: !2705)
!2717 = !DILocation(line: 1061, column: 9, scope: !2705)
!2718 = !DILocation(line: 1064, column: 45, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2605, file: !712, line: 1064, column: 11)
!2720 = !DILocation(line: 1067, column: 11, scope: !2719)
!2721 = !DILocation(line: 1067, column: 63, scope: !2719)
!2722 = !DILocation(line: 1067, column: 29, scope: !2719)
!2723 = !DILocation(line: 1066, column: 54, scope: !2719)
!2724 = !DILocation(line: 1068, column: 12, scope: !2719)
!2725 = !DILocation(line: 1068, column: 70, scope: !2719)
!2726 = !DILocation(line: 1068, column: 30, scope: !2719)
!2727 = !DILocation(line: 1066, column: 35, scope: !2719)
!2728 = !DILocation(line: 1066, column: 9, scope: !2719)
!2729 = !DILocation(line: 1069, column: 43, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2605, file: !712, line: 1069, column: 11)
!2731 = !DILocation(line: 1070, column: 19, scope: !2730)
!2732 = !DILocation(line: 1070, column: 30, scope: !2730)
!2733 = !DILocation(line: 1070, column: 49, scope: !2730)
!2734 = !DILocation(line: 1071, column: 31, scope: !2730)
!2735 = !DILocation(line: 1071, column: 42, scope: !2730)
!2736 = !DILocation(line: 1069, column: 11, scope: !2605)
!2737 = !DILocation(line: 1073, column: 11, scope: !2730)
!2738 = !DILocation(line: 1072, column: 56, scope: !2730)
!2739 = !DILocation(line: 1072, column: 54, scope: !2730)
!2740 = !DILocation(line: 1073, column: 67, scope: !2730)
!2741 = !DILocation(line: 1073, column: 35, scope: !2730)
!2742 = !DILocation(line: 1072, column: 52, scope: !2730)
!2743 = !DILocation(line: 1074, column: 11, scope: !2730)
!2744 = !DILocation(line: 1073, column: 76, scope: !2730)
!2745 = !DILocation(line: 1073, column: 74, scope: !2730)
!2746 = !DILocation(line: 1075, column: 48, scope: !2730)
!2747 = !DILocation(line: 1074, column: 47, scope: !2730)
!2748 = !DILocation(line: 1072, column: 33, scope: !2730)
!2749 = !DILocation(line: 1072, column: 9, scope: !2730)
!2750 = !DILocation(line: 1076, column: 8, scope: !2605)
!2751 = !DILocation(line: 1077, column: 8, scope: !2605)
!2752 = !DILocation(line: 1042, column: 46, scope: !2606)
!2753 = distinct !{!2753, !2659, !2754, !1337, !1338}
!2754 = !DILocation(line: 1078, column: 5, scope: !2607)
!2755 = !DILocation(line: 1079, column: 16, scope: !2611)
!2756 = !{!800, !804, i64 568}
!2757 = !DILocation(line: 1079, column: 33, scope: !2611)
!2758 = !DILocation(line: 1079, column: 9, scope: !2597)
!2759 = !DILocation(line: 1084, column: 67, scope: !2610)
!2760 = !DILocation(line: 1085, column: 18, scope: !2610)
!2761 = !DILocalVariable(name: "image", arg: 1, scope: !2762, file: !2763, line: 27, type: !715)
!2762 = distinct !DISubprogram(name: "SetImageProgress", scope: !2763, file: !2763, line: 27, type: !2764, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2766)
!2763 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!463, !715, !580, !582, !585}
!2766 = !{!2761, !2767, !2768, !2769, !2770}
!2767 = !DILocalVariable(name: "tag", arg: 2, scope: !2762, file: !2763, line: 28, type: !580)
!2768 = !DILocalVariable(name: "offset", arg: 3, scope: !2762, file: !2763, line: 28, type: !582)
!2769 = !DILocalVariable(name: "extent", arg: 4, scope: !2762, file: !2763, line: 28, type: !585)
!2770 = !DILocalVariable(name: "message", scope: !2762, file: !2763, line: 31, type: !600)
!2771 = !DILocation(line: 0, scope: !2762, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1084, column: 17, scope: !2610)
!2773 = !DILocation(line: 30, column: 3, scope: !2762, inlinedAt: !2772)
!2774 = !DILocation(line: 31, column: 5, scope: !2762, inlinedAt: !2772)
!2775 = !DILocation(line: 35, column: 10, scope: !2762, inlinedAt: !2772)
!2776 = !DILocation(line: 36, column: 17, scope: !2762, inlinedAt: !2772)
!2777 = !DILocation(line: 36, column: 63, scope: !2762, inlinedAt: !2772)
!2778 = !{!800, !804, i64 576}
!2779 = !DILocation(line: 36, column: 10, scope: !2762, inlinedAt: !2772)
!2780 = !DILocation(line: 37, column: 1, scope: !2762, inlinedAt: !2772)
!2781 = !DILocation(line: 0, scope: !2610)
!2782 = !DILocation(line: 1086, column: 21, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2610, file: !712, line: 1086, column: 13)
!2784 = !DILocation(line: 1086, column: 13, scope: !2610)
!2785 = !DILocation(line: 1088, column: 7, scope: !2610)
!2786 = !DILocation(line: 1017, column: 41, scope: !2598)
!2787 = distinct !{!2787, !2631, !2788, !1337, !1338}
!2788 = !DILocation(line: 1089, column: 3, scope: !2599)
!2789 = !DILocation(line: 1010, column: 9, scope: !2580)
!2790 = !DILocation(line: 1090, column: 20, scope: !2580)
!2791 = !DILocation(line: 1091, column: 14, scope: !2580)
!2792 = !DILocation(line: 1095, column: 3, scope: !2615)
!2793 = !DILocation(line: 1100, column: 31, scope: !2613)
!2794 = !{!2678, !807, i64 72}
!2795 = !DILocation(line: 1101, column: 33, scope: !2613)
!2796 = !DILocation(line: 1100, column: 49, scope: !2613)
!2797 = !DILocation(line: 0, scope: !2613)
!2798 = !DILocation(line: 1103, column: 15, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2613, file: !712, line: 1103, column: 9)
!2800 = !DILocation(line: 1103, column: 9, scope: !2613)
!2801 = !DILocation(line: 1103, column: 22, scope: !2799)
!2802 = !DILocalVariable(name: "x", arg: 1, scope: !2803, file: !1094, line: 78, type: !2806)
!2803 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !1094, file: !1094, line: 78, type: !2804, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2807)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!484, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!2807 = !{!2802, !2808}
!2808 = !DILocalVariable(name: "sign", scope: !2803, file: !1094, line: 81, type: !484)
!2809 = !DILocation(line: 0, scope: !2803, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 1105, column: 11, scope: !2613)
!2811 = !DILocation(line: 86, column: 10, scope: !2803, inlinedAt: !2810)
!2812 = !DILocation(line: 86, column: 8, scope: !2803, inlinedAt: !2810)
!2813 = !DILocation(line: 87, column: 12, scope: !2814, inlinedAt: !2810)
!2814 = distinct !DILexicalBlock(scope: !2803, file: !1094, line: 87, column: 7)
!2815 = !DILocation(line: 87, column: 16, scope: !2814, inlinedAt: !2810)
!2816 = !DILocation(line: 87, column: 7, scope: !2803, inlinedAt: !2810)
!2817 = !DILocation(line: 88, column: 15, scope: !2814, inlinedAt: !2810)
!2818 = !DILocation(line: 88, column: 5, scope: !2814, inlinedAt: !2810)
!2819 = !DILocation(line: 89, column: 14, scope: !2803, inlinedAt: !2810)
!2820 = !DILocation(line: 89, column: 3, scope: !2803, inlinedAt: !2810)
!2821 = !DILocation(line: 1106, column: 31, scope: !2613)
!2822 = !DILocation(line: 1106, column: 38, scope: !2613)
!2823 = !DILocation(line: 1106, column: 37, scope: !2613)
!2824 = !DILocation(line: 1106, column: 18, scope: !2613)
!2825 = !DILocation(line: 1095, column: 47, scope: !2614)
!2826 = !DILocation(line: 1095, column: 15, scope: !2614)
!2827 = distinct !{!2827, !2792, !2828, !1337, !1338}
!2828 = !DILocation(line: 1107, column: 3, scope: !2615)
!2829 = !DILocation(line: 1108, column: 3, scope: !2580)
!2830 = !DILocation(line: 1109, column: 16, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 1109, column: 7)
!2832 = !DILocation(line: 1109, column: 30, scope: !2831)
!2833 = !DILocation(line: 1109, column: 7, scope: !2580)
!2834 = !DILocation(line: 1110, column: 36, scope: !2831)
!2835 = !DILocation(line: 1110, column: 34, scope: !2831)
!2836 = !DILocation(line: 1110, column: 5, scope: !2831)
!2837 = !DILocation(line: 1112, column: 16, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 1112, column: 7)
!2839 = !DILocation(line: 1112, column: 32, scope: !2838)
!2840 = !DILocation(line: 1112, column: 7, scope: !2580)
!2841 = !DILocation(line: 1113, column: 36, scope: !2838)
!2842 = !DILocation(line: 1113, column: 34, scope: !2838)
!2843 = !DILocation(line: 1113, column: 5, scope: !2838)
!2844 = !DILocation(line: 1115, column: 16, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 1115, column: 7)
!2846 = !DILocation(line: 1115, column: 31, scope: !2845)
!2847 = !DILocation(line: 1115, column: 7, scope: !2580)
!2848 = !DILocation(line: 1116, column: 36, scope: !2845)
!2849 = !DILocation(line: 1116, column: 34, scope: !2845)
!2850 = !DILocation(line: 1116, column: 5, scope: !2845)
!2851 = !DILocation(line: 1118, column: 17, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 1118, column: 7)
!2853 = !DILocation(line: 1118, column: 35, scope: !2852)
!2854 = !DILocation(line: 1118, column: 41, scope: !2852)
!2855 = !DILocation(line: 1118, column: 52, scope: !2852)
!2856 = !DILocation(line: 1118, column: 58, scope: !2852)
!2857 = !DILocation(line: 1118, column: 7, scope: !2580)
!2858 = !DILocation(line: 1119, column: 36, scope: !2852)
!2859 = !DILocation(line: 1119, column: 34, scope: !2852)
!2860 = !DILocation(line: 1119, column: 5, scope: !2852)
!2861 = !DILocation(line: 1121, column: 17, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2580, file: !712, line: 1121, column: 7)
!2863 = !DILocation(line: 1121, column: 33, scope: !2862)
!2864 = !DILocation(line: 1121, column: 39, scope: !2862)
!2865 = !DILocation(line: 1122, column: 15, scope: !2862)
!2866 = !DILocation(line: 1122, column: 26, scope: !2862)
!2867 = !DILocation(line: 1121, column: 7, scope: !2580)
!2868 = !DILocation(line: 1123, column: 36, scope: !2862)
!2869 = !DILocation(line: 1123, column: 34, scope: !2862)
!2870 = !DILocation(line: 1123, column: 5, scope: !2862)
!2871 = !DILocation(line: 1125, column: 38, scope: !2580)
!2872 = !DILocation(line: 0, scope: !1978, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1126, column: 5, scope: !2580)
!2874 = !DILocation(line: 469, column: 7, scope: !1978, inlinedAt: !2873)
!2875 = !DILocation(line: 471, column: 7, scope: !1978, inlinedAt: !2873)
!2876 = !DILocation(line: 473, column: 41, scope: !1991, inlinedAt: !2873)
!2877 = !DILocation(line: 474, column: 16, scope: !1991, inlinedAt: !2873)
!2878 = !DILocation(line: 474, column: 22, scope: !1991, inlinedAt: !2873)
!2879 = !DILocation(line: 473, column: 7, scope: !1978, inlinedAt: !2873)
!2880 = !DILocation(line: 476, column: 39, scope: !1994, inlinedAt: !2873)
!2881 = !DILocation(line: 477, column: 15, scope: !1994, inlinedAt: !2873)
!2882 = !DILocation(line: 477, column: 26, scope: !1994, inlinedAt: !2873)
!2883 = !DILocation(line: 476, column: 7, scope: !1978, inlinedAt: !2873)
!2884 = !DILocation(line: 1126, column: 5, scope: !2580)
!2885 = !DILocation(line: 1125, column: 67, scope: !2580)
!2886 = !DILocation(line: 1125, column: 33, scope: !2580)
!2887 = !DILocation(line: 1125, column: 32, scope: !2580)
!2888 = !DILocation(line: 1130, column: 48, scope: !2580)
!2889 = !DILocation(line: 1132, column: 42, scope: !2580)
!2890 = !DILocation(line: 1134, column: 3, scope: !2580)
!2891 = !DILocation(line: 1135, column: 1, scope: !2580)
!2892 = distinct !DISubprogram(name: "GetPeakAbsoluteDistortion", scope: !712, file: !712, line: 1137, type: !1456, scopeLine: 1140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2893)
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2917, !2918}
!2894 = !DILocalVariable(name: "image", arg: 1, scope: !2892, file: !712, line: 1137, type: !715)
!2895 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !2892, file: !712, line: 1138, type: !715)
!2896 = !DILocalVariable(name: "channel", arg: 3, scope: !2892, file: !712, line: 1138, type: !733)
!2897 = !DILocalVariable(name: "distortion", arg: 4, scope: !2892, file: !712, line: 1139, type: !673)
!2898 = !DILocalVariable(name: "exception", arg: 5, scope: !2892, file: !712, line: 1139, type: !719)
!2899 = !DILocalVariable(name: "image_view", scope: !2892, file: !712, line: 1142, type: !743)
!2900 = !DILocalVariable(name: "reconstruct_view", scope: !2892, file: !712, line: 1143, type: !743)
!2901 = !DILocalVariable(name: "status", scope: !2892, file: !712, line: 1146, type: !463)
!2902 = !DILocalVariable(name: "y", scope: !2892, file: !712, line: 1149, type: !511)
!2903 = !DILocalVariable(name: "channel_distortion", scope: !2904, file: !712, line: 1161, type: !1646)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !712, line: 1159, column: 3)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !712, line: 1158, column: 3)
!2906 = distinct !DILexicalBlock(scope: !2892, file: !712, line: 1158, column: 3)
!2907 = !DILocalVariable(name: "indexes", scope: !2904, file: !712, line: 1164, type: !777)
!2908 = !DILocalVariable(name: "reconstruct_indexes", scope: !2904, file: !712, line: 1165, type: !777)
!2909 = !DILocalVariable(name: "p", scope: !2904, file: !712, line: 1168, type: !780)
!2910 = !DILocalVariable(name: "q", scope: !2904, file: !712, line: 1169, type: !780)
!2911 = !DILocalVariable(name: "i", scope: !2904, file: !712, line: 1172, type: !511)
!2912 = !DILocalVariable(name: "x", scope: !2904, file: !712, line: 1173, type: !511)
!2913 = !DILocalVariable(name: "distance", scope: !2914, file: !712, line: 1191, type: !675)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !712, line: 1189, column: 5)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !712, line: 1188, column: 5)
!2916 = distinct !DILexicalBlock(scope: !2904, file: !712, line: 1188, column: 5)
!2917 = !DILocalVariable(name: "Da", scope: !2914, file: !712, line: 1192, type: !675)
!2918 = !DILocalVariable(name: "Sa", scope: !2914, file: !712, line: 1193, type: !675)
!2919 = !DILocation(line: 0, scope: !2892)
!2920 = !DILocation(line: 1152, column: 14, scope: !2892)
!2921 = !DILocation(line: 1153, column: 20, scope: !2892)
!2922 = !DILocation(line: 1158, column: 34, scope: !2905)
!2923 = !DILocation(line: 1158, column: 15, scope: !2905)
!2924 = !DILocation(line: 1158, column: 3, scope: !2906)
!2925 = !DILocation(line: 1160, column: 5, scope: !2904)
!2926 = !DILocation(line: 1161, column: 7, scope: !2904)
!2927 = !DILocation(line: 1175, column: 16, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2904, file: !712, line: 1175, column: 9)
!2929 = !DILocation(line: 1175, column: 9, scope: !2904)
!2930 = !DILocation(line: 1177, column: 55, scope: !2904)
!2931 = !DILocation(line: 1177, column: 7, scope: !2904)
!2932 = !DILocation(line: 0, scope: !2904)
!2933 = !DILocation(line: 1179, column: 26, scope: !2904)
!2934 = !DILocation(line: 1178, column: 7, scope: !2904)
!2935 = !DILocation(line: 1180, column: 12, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2904, file: !712, line: 1180, column: 9)
!2937 = !DILocation(line: 1180, column: 43, scope: !2936)
!2938 = !DILocation(line: 1185, column: 13, scope: !2904)
!2939 = !DILocation(line: 1186, column: 25, scope: !2904)
!2940 = !DILocation(line: 1187, column: 12, scope: !2904)
!2941 = !DILocation(line: 1188, column: 17, scope: !2915)
!2942 = !DILocation(line: 1188, column: 5, scope: !2916)
!2943 = !DILocation(line: 1195, column: 24, scope: !2914)
!2944 = !DILocation(line: 1195, column: 54, scope: !2914)
!2945 = !DILocation(line: 1195, column: 23, scope: !2914)
!2946 = !DILocation(line: 1195, column: 22, scope: !2914)
!2947 = !DILocation(line: 1195, column: 10, scope: !2914)
!2948 = !DILocation(line: 0, scope: !2914)
!2949 = !DILocation(line: 1197, column: 24, scope: !2914)
!2950 = !DILocation(line: 1198, column: 9, scope: !2914)
!2951 = !DILocation(line: 1197, column: 23, scope: !2914)
!2952 = !DILocation(line: 1197, column: 22, scope: !2914)
!2953 = !DILocation(line: 1197, column: 10, scope: !2914)
!2954 = !DILocation(line: 1199, column: 11, scope: !2914)
!2955 = !DILocation(line: 1201, column: 41, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !712, line: 1200, column: 9)
!2957 = distinct !DILexicalBlock(scope: !2914, file: !712, line: 1199, column: 11)
!2958 = !DILocation(line: 1201, column: 59, scope: !2956)
!2959 = !DILocation(line: 1201, column: 55, scope: !2956)
!2960 = !DILocation(line: 1201, column: 33, scope: !2956)
!2961 = !DILocation(line: 1201, column: 32, scope: !2956)
!2962 = !DILocation(line: 1201, column: 20, scope: !2956)
!2963 = !DILocation(line: 1202, column: 15, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2956, file: !712, line: 1202, column: 15)
!2965 = !DILocation(line: 1202, column: 24, scope: !2964)
!2966 = !DILocation(line: 1202, column: 15, scope: !2956)
!2967 = !DILocation(line: 1203, column: 43, scope: !2964)
!2968 = !DILocation(line: 1203, column: 13, scope: !2964)
!2969 = !DILocation(line: 1204, column: 24, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2956, file: !712, line: 1204, column: 15)
!2971 = !DILocation(line: 1204, column: 15, scope: !2956)
!2972 = !DILocation(line: 1205, column: 50, scope: !2970)
!2973 = !DILocation(line: 1205, column: 13, scope: !2970)
!2974 = !DILocation(line: 1207, column: 11, scope: !2914)
!2975 = !DILocation(line: 1209, column: 41, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !712, line: 1208, column: 9)
!2977 = distinct !DILexicalBlock(scope: !2914, file: !712, line: 1207, column: 11)
!2978 = !DILocation(line: 1209, column: 61, scope: !2976)
!2979 = !DILocation(line: 1209, column: 57, scope: !2976)
!2980 = !DILocation(line: 1209, column: 33, scope: !2976)
!2981 = !DILocation(line: 1209, column: 32, scope: !2976)
!2982 = !DILocation(line: 1209, column: 20, scope: !2976)
!2983 = !DILocation(line: 1210, column: 15, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !712, line: 1210, column: 15)
!2985 = !DILocation(line: 1210, column: 24, scope: !2984)
!2986 = !DILocation(line: 1210, column: 15, scope: !2976)
!2987 = !DILocation(line: 1211, column: 45, scope: !2984)
!2988 = !DILocation(line: 1211, column: 13, scope: !2984)
!2989 = !DILocation(line: 1212, column: 24, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2976, file: !712, line: 1212, column: 15)
!2991 = !DILocation(line: 1212, column: 15, scope: !2976)
!2992 = !DILocation(line: 1213, column: 50, scope: !2990)
!2993 = !DILocation(line: 1213, column: 13, scope: !2990)
!2994 = !DILocation(line: 1215, column: 11, scope: !2914)
!2995 = !DILocation(line: 1217, column: 41, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !712, line: 1216, column: 9)
!2997 = distinct !DILexicalBlock(scope: !2914, file: !712, line: 1215, column: 11)
!2998 = !DILocation(line: 1217, column: 60, scope: !2996)
!2999 = !DILocation(line: 1217, column: 56, scope: !2996)
!3000 = !DILocation(line: 1217, column: 33, scope: !2996)
!3001 = !DILocation(line: 1217, column: 32, scope: !2996)
!3002 = !DILocation(line: 1217, column: 20, scope: !2996)
!3003 = !DILocation(line: 1218, column: 15, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2996, file: !712, line: 1218, column: 15)
!3005 = !DILocation(line: 1218, column: 24, scope: !3004)
!3006 = !DILocation(line: 1218, column: 15, scope: !2996)
!3007 = !DILocation(line: 1219, column: 44, scope: !3004)
!3008 = !DILocation(line: 1219, column: 13, scope: !3004)
!3009 = !DILocation(line: 1220, column: 24, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2996, file: !712, line: 1220, column: 15)
!3011 = !DILocation(line: 1220, column: 15, scope: !2996)
!3012 = !DILocation(line: 1221, column: 50, scope: !3010)
!3013 = !DILocation(line: 1221, column: 13, scope: !3010)
!3014 = !DILocation(line: 1223, column: 45, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2914, file: !712, line: 1223, column: 11)
!3016 = !DILocation(line: 1226, column: 38, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3015, file: !712, line: 1225, column: 9)
!3018 = !DILocation(line: 1227, column: 13, scope: !3017)
!3019 = !DILocation(line: 1226, column: 57, scope: !3017)
!3020 = !DILocation(line: 1226, column: 56, scope: !3017)
!3021 = !DILocation(line: 1226, column: 33, scope: !3017)
!3022 = !DILocation(line: 1226, column: 32, scope: !3017)
!3023 = !DILocation(line: 1226, column: 20, scope: !3017)
!3024 = !DILocation(line: 1228, column: 15, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3017, file: !712, line: 1228, column: 15)
!3026 = !DILocation(line: 1228, column: 24, scope: !3025)
!3027 = !DILocation(line: 1228, column: 15, scope: !3017)
!3028 = !DILocation(line: 1229, column: 47, scope: !3025)
!3029 = !DILocation(line: 1229, column: 13, scope: !3025)
!3030 = !DILocation(line: 1230, column: 24, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3017, file: !712, line: 1230, column: 15)
!3032 = !DILocation(line: 1230, column: 15, scope: !3017)
!3033 = !DILocation(line: 1231, column: 50, scope: !3031)
!3034 = !DILocation(line: 1231, column: 13, scope: !3031)
!3035 = !DILocation(line: 1233, column: 43, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2914, file: !712, line: 1233, column: 11)
!3037 = !DILocation(line: 1234, column: 19, scope: !3036)
!3038 = !DILocation(line: 1234, column: 30, scope: !3036)
!3039 = !DILocation(line: 1234, column: 49, scope: !3036)
!3040 = !DILocation(line: 1235, column: 31, scope: !3036)
!3041 = !DILocation(line: 1235, column: 42, scope: !3036)
!3042 = !DILocation(line: 1233, column: 11, scope: !2914)
!3043 = !DILocation(line: 1237, column: 41, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3036, file: !712, line: 1236, column: 9)
!3045 = !DILocation(line: 1238, column: 13, scope: !3044)
!3046 = !DILocation(line: 1237, column: 65, scope: !3044)
!3047 = !DILocation(line: 1237, column: 33, scope: !3044)
!3048 = !DILocation(line: 1237, column: 32, scope: !3044)
!3049 = !DILocation(line: 1237, column: 20, scope: !3044)
!3050 = !DILocation(line: 1239, column: 15, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3044, file: !712, line: 1239, column: 15)
!3052 = !DILocation(line: 1239, column: 24, scope: !3051)
!3053 = !DILocation(line: 1239, column: 15, scope: !3044)
!3054 = !DILocation(line: 1240, column: 45, scope: !3051)
!3055 = !DILocation(line: 1240, column: 13, scope: !3051)
!3056 = !DILocation(line: 1241, column: 24, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3044, file: !712, line: 1241, column: 15)
!3058 = !DILocation(line: 1241, column: 15, scope: !3044)
!3059 = !DILocation(line: 1242, column: 50, scope: !3057)
!3060 = !DILocation(line: 1242, column: 13, scope: !3057)
!3061 = !DILocation(line: 1244, column: 8, scope: !2914)
!3062 = !DILocation(line: 1245, column: 8, scope: !2914)
!3063 = !DILocation(line: 1188, column: 46, scope: !2915)
!3064 = distinct !{!3064, !2942, !3065, !1337, !1338}
!3065 = !DILocation(line: 1246, column: 5, scope: !2916)
!3066 = !DILocation(line: 1250, column: 5, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2904, file: !712, line: 1250, column: 5)
!3068 = !DILocation(line: 1251, column: 11, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !712, line: 1251, column: 11)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !712, line: 1250, column: 5)
!3071 = !DILocation(line: 1251, column: 35, scope: !3069)
!3072 = !DILocation(line: 1251, column: 33, scope: !3069)
!3073 = !DILocation(line: 1251, column: 11, scope: !3070)
!3074 = !DILocation(line: 1252, column: 22, scope: !3069)
!3075 = !DILocation(line: 1252, column: 9, scope: !3069)
!3076 = !DILocation(line: 1250, column: 50, scope: !3070)
!3077 = !DILocation(line: 1250, column: 17, scope: !3070)
!3078 = distinct !{!3078, !3066, !3079, !1337, !1338}
!3079 = !DILocation(line: 1252, column: 43, scope: !3067)
!3080 = !DILocation(line: 1253, column: 3, scope: !2905)
!3081 = !DILocation(line: 1158, column: 41, scope: !2905)
!3082 = distinct !{!3082, !2924, !3083, !1337, !1338}
!3083 = !DILocation(line: 1253, column: 3, scope: !2906)
!3084 = !DILocation(line: 1151, column: 9, scope: !2892)
!3085 = !DILocation(line: 1254, column: 20, scope: !2892)
!3086 = !DILocation(line: 1255, column: 14, scope: !2892)
!3087 = !DILocation(line: 1256, column: 3, scope: !2892)
!3088 = distinct !DISubprogram(name: "GetPeakSignalToNoiseRatio", scope: !712, file: !712, line: 1268, type: !1456, scopeLine: 1271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3089)
!3089 = !{!3090, !3091, !3092, !3093, !3094, !3095}
!3090 = !DILocalVariable(name: "image", arg: 1, scope: !3088, file: !712, line: 1268, type: !715)
!3091 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !3088, file: !712, line: 1269, type: !715)
!3092 = !DILocalVariable(name: "channel", arg: 3, scope: !3088, file: !712, line: 1269, type: !733)
!3093 = !DILocalVariable(name: "distortion", arg: 4, scope: !3088, file: !712, line: 1270, type: !673)
!3094 = !DILocalVariable(name: "exception", arg: 5, scope: !3088, file: !712, line: 1270, type: !719)
!3095 = !DILocalVariable(name: "status", scope: !3088, file: !712, line: 1273, type: !463)
!3096 = !DILocation(line: 0, scope: !3088)
!3097 = !DILocation(line: 1275, column: 10, scope: !3088)
!3098 = !DILocation(line: 1277, column: 16, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3088, file: !712, line: 1277, column: 7)
!3100 = !DILocation(line: 1277, column: 30, scope: !3099)
!3101 = !DILocation(line: 1277, column: 7, scope: !3088)
!3102 = !DILocation(line: 1279, column: 7, scope: !3099)
!3103 = !DILocation(line: 1278, column: 58, scope: !3099)
!3104 = !DILocation(line: 1278, column: 57, scope: !3099)
!3105 = !DILocalVariable(name: "x", arg: 1, scope: !3106, file: !712, line: 1259, type: !2806)
!3106 = distinct !DISubprogram(name: "MagickLog10", scope: !712, file: !712, line: 1259, type: !2804, scopeLine: 1260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3107)
!3107 = !{!3105}
!3108 = !DILocation(line: 0, scope: !3106, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 1278, column: 33, scope: !3099)
!3110 = !DILocation(line: 1263, column: 6, scope: !3111, inlinedAt: !3109)
!3111 = distinct !DILexicalBlock(scope: !3106, file: !712, line: 1263, column: 6)
!3112 = !DILocation(line: 1263, column: 14, scope: !3111, inlinedAt: !3109)
!3113 = !DILocation(line: 1263, column: 6, scope: !3106, inlinedAt: !3109)
!3114 = !DILocation(line: 1265, column: 9, scope: !3106, inlinedAt: !3109)
!3115 = !DILocation(line: 1265, column: 2, scope: !3106, inlinedAt: !3109)
!3116 = !DILocation(line: 1278, column: 27, scope: !3099)
!3117 = !DILocation(line: 1278, column: 5, scope: !3099)
!3118 = !DILocation(line: 1280, column: 16, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3088, file: !712, line: 1280, column: 7)
!3120 = !DILocation(line: 1280, column: 32, scope: !3119)
!3121 = !DILocation(line: 1280, column: 7, scope: !3088)
!3122 = !DILocation(line: 1282, column: 7, scope: !3119)
!3123 = !DILocation(line: 1281, column: 60, scope: !3119)
!3124 = !DILocation(line: 1281, column: 59, scope: !3119)
!3125 = !DILocation(line: 0, scope: !3106, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1281, column: 35, scope: !3119)
!3127 = !DILocation(line: 1263, column: 6, scope: !3111, inlinedAt: !3126)
!3128 = !DILocation(line: 1263, column: 14, scope: !3111, inlinedAt: !3126)
!3129 = !DILocation(line: 1263, column: 6, scope: !3106, inlinedAt: !3126)
!3130 = !DILocation(line: 1265, column: 9, scope: !3106, inlinedAt: !3126)
!3131 = !DILocation(line: 1265, column: 2, scope: !3106, inlinedAt: !3126)
!3132 = !DILocation(line: 1281, column: 29, scope: !3119)
!3133 = !DILocation(line: 1281, column: 5, scope: !3119)
!3134 = !DILocation(line: 1283, column: 16, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3088, file: !712, line: 1283, column: 7)
!3136 = !DILocation(line: 1283, column: 31, scope: !3135)
!3137 = !DILocation(line: 1283, column: 7, scope: !3088)
!3138 = !DILocation(line: 1285, column: 7, scope: !3135)
!3139 = !DILocation(line: 1284, column: 59, scope: !3135)
!3140 = !DILocation(line: 1284, column: 58, scope: !3135)
!3141 = !DILocation(line: 0, scope: !3106, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 1284, column: 34, scope: !3135)
!3143 = !DILocation(line: 1263, column: 6, scope: !3111, inlinedAt: !3142)
!3144 = !DILocation(line: 1263, column: 14, scope: !3111, inlinedAt: !3142)
!3145 = !DILocation(line: 1263, column: 6, scope: !3106, inlinedAt: !3142)
!3146 = !DILocation(line: 1265, column: 9, scope: !3106, inlinedAt: !3142)
!3147 = !DILocation(line: 1265, column: 2, scope: !3106, inlinedAt: !3142)
!3148 = !DILocation(line: 1284, column: 28, scope: !3135)
!3149 = !DILocation(line: 1284, column: 5, scope: !3135)
!3150 = !DILocation(line: 1286, column: 17, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3088, file: !712, line: 1286, column: 7)
!3152 = !DILocation(line: 1286, column: 35, scope: !3151)
!3153 = !DILocation(line: 1286, column: 41, scope: !3151)
!3154 = !DILocation(line: 1287, column: 15, scope: !3151)
!3155 = !DILocation(line: 1287, column: 21, scope: !3151)
!3156 = !DILocation(line: 1286, column: 7, scope: !3088)
!3157 = !DILocation(line: 1289, column: 7, scope: !3151)
!3158 = !DILocation(line: 1288, column: 62, scope: !3151)
!3159 = !DILocation(line: 1288, column: 61, scope: !3151)
!3160 = !DILocation(line: 0, scope: !3106, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1288, column: 37, scope: !3151)
!3162 = !DILocation(line: 1263, column: 6, scope: !3111, inlinedAt: !3161)
!3163 = !DILocation(line: 1263, column: 14, scope: !3111, inlinedAt: !3161)
!3164 = !DILocation(line: 1263, column: 6, scope: !3106, inlinedAt: !3161)
!3165 = !DILocation(line: 1265, column: 9, scope: !3106, inlinedAt: !3161)
!3166 = !DILocation(line: 1265, column: 2, scope: !3106, inlinedAt: !3161)
!3167 = !DILocation(line: 1288, column: 31, scope: !3151)
!3168 = !DILocation(line: 1288, column: 5, scope: !3151)
!3169 = !DILocation(line: 1290, column: 17, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3088, file: !712, line: 1290, column: 7)
!3171 = !DILocation(line: 1290, column: 33, scope: !3170)
!3172 = !DILocation(line: 1290, column: 39, scope: !3170)
!3173 = !DILocation(line: 1291, column: 15, scope: !3170)
!3174 = !DILocation(line: 1291, column: 26, scope: !3170)
!3175 = !DILocation(line: 1290, column: 7, scope: !3088)
!3176 = !DILocation(line: 1293, column: 7, scope: !3170)
!3177 = !DILocation(line: 1292, column: 60, scope: !3170)
!3178 = !DILocation(line: 1292, column: 59, scope: !3170)
!3179 = !DILocation(line: 0, scope: !3106, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1292, column: 35, scope: !3170)
!3181 = !DILocation(line: 1263, column: 6, scope: !3111, inlinedAt: !3180)
!3182 = !DILocation(line: 1263, column: 14, scope: !3111, inlinedAt: !3180)
!3183 = !DILocation(line: 1263, column: 6, scope: !3106, inlinedAt: !3180)
!3184 = !DILocation(line: 1265, column: 9, scope: !3106, inlinedAt: !3180)
!3185 = !DILocation(line: 1265, column: 2, scope: !3106, inlinedAt: !3180)
!3186 = !DILocation(line: 1292, column: 29, scope: !3170)
!3187 = !DILocation(line: 1292, column: 5, scope: !3170)
!3188 = !DILocation(line: 1295, column: 5, scope: !3088)
!3189 = !DILocation(line: 1294, column: 63, scope: !3088)
!3190 = !DILocation(line: 1294, column: 62, scope: !3088)
!3191 = !DILocation(line: 0, scope: !3106, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1294, column: 38, scope: !3088)
!3193 = !DILocation(line: 1263, column: 6, scope: !3111, inlinedAt: !3192)
!3194 = !DILocation(line: 1263, column: 14, scope: !3111, inlinedAt: !3192)
!3195 = !DILocation(line: 1263, column: 6, scope: !3106, inlinedAt: !3192)
!3196 = !DILocation(line: 1265, column: 9, scope: !3106, inlinedAt: !3192)
!3197 = !DILocation(line: 1265, column: 2, scope: !3106, inlinedAt: !3192)
!3198 = !DILocation(line: 1294, column: 32, scope: !3088)
!3199 = !DILocation(line: 1296, column: 3, scope: !3088)
!3200 = distinct !DISubprogram(name: "GetPerceptualHashDistortion", scope: !712, file: !712, line: 1299, type: !1456, scopeLine: 1302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3202 = !DILocalVariable(name: "image", arg: 1, scope: !3200, file: !712, line: 1299, type: !715)
!3203 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !3200, file: !712, line: 1300, type: !715)
!3204 = !DILocalVariable(name: "channel", arg: 3, scope: !3200, file: !712, line: 1300, type: !733)
!3205 = !DILocalVariable(name: "distortion", arg: 4, scope: !3200, file: !712, line: 1300, type: !673)
!3206 = !DILocalVariable(name: "exception", arg: 5, scope: !3200, file: !712, line: 1301, type: !719)
!3207 = !DILocalVariable(name: "image_phash", scope: !3200, file: !712, line: 1304, type: !695)
!3208 = !DILocalVariable(name: "reconstruct_phash", scope: !3200, file: !712, line: 1305, type: !695)
!3209 = !DILocalVariable(name: "difference", scope: !3200, file: !712, line: 1308, type: !484)
!3210 = !DILocalVariable(name: "i", scope: !3200, file: !712, line: 1311, type: !511)
!3211 = !DILocation(line: 0, scope: !3200)
!3212 = !DILocation(line: 1316, column: 15, scope: !3200)
!3213 = !DILocation(line: 1317, column: 19, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3200, file: !712, line: 1317, column: 7)
!3215 = !DILocation(line: 1317, column: 7, scope: !3200)
!3216 = !DILocation(line: 1319, column: 21, scope: !3200)
!3217 = !DILocation(line: 1320, column: 25, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3200, file: !712, line: 1320, column: 7)
!3219 = !DILocation(line: 1320, column: 7, scope: !3200)
!3220 = !DILocation(line: 1325, column: 3, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3200, file: !712, line: 1325, column: 3)
!3222 = !DILocation(line: 1330, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !712, line: 1326, column: 3)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !712, line: 1325, column: 3)
!3225 = !DILocation(line: 1332, column: 20, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !712, line: 1331, column: 7)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !712, line: 1330, column: 9)
!3228 = !DILocation(line: 1333, column: 11, scope: !3226)
!3229 = !DILocation(line: 1332, column: 54, scope: !3226)
!3230 = !DILocation(line: 1334, column: 31, scope: !3226)
!3231 = !DILocation(line: 1335, column: 38, scope: !3226)
!3232 = !DILocation(line: 1336, column: 7, scope: !3226)
!3233 = !DILocation(line: 1337, column: 9, scope: !3223)
!3234 = !DILocation(line: 1339, column: 20, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !712, line: 1338, column: 7)
!3236 = distinct !DILexicalBlock(scope: !3223, file: !712, line: 1337, column: 9)
!3237 = !DILocation(line: 1340, column: 11, scope: !3235)
!3238 = !DILocation(line: 1339, column: 56, scope: !3235)
!3239 = !DILocation(line: 1341, column: 33, scope: !3235)
!3240 = !DILocation(line: 1342, column: 38, scope: !3235)
!3241 = !DILocation(line: 1343, column: 7, scope: !3235)
!3242 = !DILocation(line: 1344, column: 9, scope: !3223)
!3243 = !DILocation(line: 1346, column: 20, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !712, line: 1345, column: 7)
!3245 = distinct !DILexicalBlock(scope: !3223, file: !712, line: 1344, column: 9)
!3246 = !DILocation(line: 1347, column: 11, scope: !3244)
!3247 = !DILocation(line: 1346, column: 55, scope: !3244)
!3248 = !DILocation(line: 1348, column: 32, scope: !3244)
!3249 = !DILocation(line: 1349, column: 38, scope: !3244)
!3250 = !DILocation(line: 1350, column: 7, scope: !3244)
!3251 = !DILocation(line: 1351, column: 43, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3223, file: !712, line: 1351, column: 9)
!3253 = !DILocation(line: 1351, column: 54, scope: !3252)
!3254 = !DILocation(line: 1351, column: 60, scope: !3252)
!3255 = !DILocation(line: 1351, column: 76, scope: !3252)
!3256 = !DILocation(line: 1352, column: 29, scope: !3252)
!3257 = !DILocation(line: 1352, column: 35, scope: !3252)
!3258 = !DILocation(line: 1351, column: 9, scope: !3223)
!3259 = !DILocation(line: 1354, column: 20, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3252, file: !712, line: 1353, column: 7)
!3261 = !DILocation(line: 1355, column: 11, scope: !3260)
!3262 = !DILocation(line: 1354, column: 58, scope: !3260)
!3263 = !DILocation(line: 1356, column: 35, scope: !3260)
!3264 = !DILocation(line: 1357, column: 38, scope: !3260)
!3265 = !DILocation(line: 1358, column: 7, scope: !3260)
!3266 = !DILocation(line: 1359, column: 41, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3223, file: !712, line: 1359, column: 9)
!3268 = !DILocation(line: 1360, column: 17, scope: !3267)
!3269 = !DILocation(line: 1360, column: 28, scope: !3267)
!3270 = !DILocation(line: 1360, column: 47, scope: !3267)
!3271 = !DILocation(line: 1361, column: 29, scope: !3267)
!3272 = !DILocation(line: 1361, column: 40, scope: !3267)
!3273 = !DILocation(line: 1359, column: 9, scope: !3223)
!3274 = !DILocation(line: 1363, column: 20, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3267, file: !712, line: 1362, column: 7)
!3276 = !DILocation(line: 1364, column: 11, scope: !3275)
!3277 = !DILocation(line: 1363, column: 56, scope: !3275)
!3278 = !DILocation(line: 1365, column: 33, scope: !3275)
!3279 = !DILocation(line: 1366, column: 38, scope: !3275)
!3280 = !DILocation(line: 1367, column: 7, scope: !3275)
!3281 = !DILocation(line: 1325, column: 21, scope: !3224)
!3282 = !DILocation(line: 1325, column: 15, scope: !3224)
!3283 = distinct !{!3283, !3220, !3284, !1337, !1338}
!3284 = !DILocation(line: 1368, column: 3, scope: !3221)
!3285 = !DILocation(line: 1377, column: 9, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !712, line: 1373, column: 3)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !712, line: 1372, column: 3)
!3288 = distinct !DILexicalBlock(scope: !3200, file: !712, line: 1372, column: 3)
!3289 = !DILocation(line: 1379, column: 20, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !712, line: 1378, column: 7)
!3291 = distinct !DILexicalBlock(scope: !3286, file: !712, line: 1377, column: 9)
!3292 = !DILocation(line: 1380, column: 11, scope: !3290)
!3293 = !DILocation(line: 1379, column: 54, scope: !3290)
!3294 = !DILocation(line: 1381, column: 31, scope: !3290)
!3295 = !DILocation(line: 1382, column: 38, scope: !3290)
!3296 = !DILocation(line: 1383, column: 7, scope: !3290)
!3297 = !DILocation(line: 1384, column: 9, scope: !3286)
!3298 = !DILocation(line: 1386, column: 20, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !712, line: 1385, column: 7)
!3300 = distinct !DILexicalBlock(scope: !3286, file: !712, line: 1384, column: 9)
!3301 = !DILocation(line: 1387, column: 11, scope: !3299)
!3302 = !DILocation(line: 1386, column: 56, scope: !3299)
!3303 = !DILocation(line: 1388, column: 33, scope: !3299)
!3304 = !DILocation(line: 1389, column: 38, scope: !3299)
!3305 = !DILocation(line: 1390, column: 7, scope: !3299)
!3306 = !DILocation(line: 1391, column: 9, scope: !3286)
!3307 = !DILocation(line: 1393, column: 20, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !712, line: 1392, column: 7)
!3309 = distinct !DILexicalBlock(scope: !3286, file: !712, line: 1391, column: 9)
!3310 = !DILocation(line: 1394, column: 11, scope: !3308)
!3311 = !DILocation(line: 1393, column: 55, scope: !3308)
!3312 = !DILocation(line: 1395, column: 32, scope: !3308)
!3313 = !DILocation(line: 1396, column: 38, scope: !3308)
!3314 = !DILocation(line: 1397, column: 7, scope: !3308)
!3315 = !DILocation(line: 1398, column: 43, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3286, file: !712, line: 1398, column: 9)
!3317 = !DILocation(line: 1398, column: 54, scope: !3316)
!3318 = !DILocation(line: 1398, column: 60, scope: !3316)
!3319 = !DILocation(line: 1398, column: 76, scope: !3316)
!3320 = !DILocation(line: 1399, column: 29, scope: !3316)
!3321 = !DILocation(line: 1399, column: 35, scope: !3316)
!3322 = !DILocation(line: 1398, column: 9, scope: !3286)
!3323 = !DILocation(line: 1401, column: 20, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3316, file: !712, line: 1400, column: 7)
!3325 = !DILocation(line: 1402, column: 11, scope: !3324)
!3326 = !DILocation(line: 1401, column: 58, scope: !3324)
!3327 = !DILocation(line: 1403, column: 35, scope: !3324)
!3328 = !DILocation(line: 1404, column: 38, scope: !3324)
!3329 = !DILocation(line: 1405, column: 7, scope: !3324)
!3330 = !DILocation(line: 1406, column: 41, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3286, file: !712, line: 1406, column: 9)
!3332 = !DILocation(line: 1407, column: 17, scope: !3331)
!3333 = !DILocation(line: 1407, column: 28, scope: !3331)
!3334 = !DILocation(line: 1407, column: 47, scope: !3331)
!3335 = !DILocation(line: 1408, column: 29, scope: !3331)
!3336 = !DILocation(line: 1408, column: 40, scope: !3331)
!3337 = !DILocation(line: 1406, column: 9, scope: !3286)
!3338 = !DILocation(line: 1410, column: 20, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3331, file: !712, line: 1409, column: 7)
!3340 = !DILocation(line: 1411, column: 11, scope: !3339)
!3341 = !DILocation(line: 1410, column: 56, scope: !3339)
!3342 = !DILocation(line: 1412, column: 33, scope: !3339)
!3343 = !DILocation(line: 1413, column: 38, scope: !3339)
!3344 = !DILocation(line: 1414, column: 7, scope: !3339)
!3345 = !DILocation(line: 1372, column: 21, scope: !3287)
!3346 = !DILocation(line: 1372, column: 15, scope: !3287)
!3347 = !DILocation(line: 1372, column: 3, scope: !3288)
!3348 = distinct !{!3348, !3347, !3349, !1337, !1338}
!3349 = !DILocation(line: 1415, column: 3, scope: !3288)
!3350 = !DILocation(line: 1419, column: 47, scope: !3200)
!3351 = !DILocation(line: 1422, column: 3, scope: !3200)
!3352 = !DILocation(line: 1423, column: 1, scope: !3200)
!3353 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1605, file: !1605, line: 51, type: !3354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!502, !502}
!3356 = !DISubprogram(name: "FormatImageProperty", scope: !3357, file: !3357, line: 38, type: !3358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3357 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!463, !447, !580, !580, null}
!3360 = !DISubprogram(name: "GetMagickPrecision", scope: !1624, file: !1624, line: 119, type: !3361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!614}
!3363 = distinct !DISubprogram(name: "GetImageChannelDistortions", scope: !712, file: !712, line: 1590, type: !3364, scopeLine: 1593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!673, !447, !715, !717, !719}
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3377}
!3367 = !DILocalVariable(name: "image", arg: 1, scope: !3363, file: !712, line: 1590, type: !447)
!3368 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !3363, file: !712, line: 1591, type: !715)
!3369 = !DILocalVariable(name: "metric", arg: 3, scope: !3363, file: !712, line: 1591, type: !717)
!3370 = !DILocalVariable(name: "exception", arg: 4, scope: !3363, file: !712, line: 1592, type: !719)
!3371 = !DILocalVariable(name: "channel_distortion", scope: !3363, file: !712, line: 1595, type: !673)
!3372 = !DILocalVariable(name: "status", scope: !3363, file: !712, line: 1598, type: !463)
!3373 = !DILocalVariable(name: "length", scope: !3363, file: !712, line: 1601, type: !458)
!3374 = !DILocalVariable(name: "message", scope: !3375, file: !712, line: 1626, type: !506)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !712, line: 1626, column: 5)
!3376 = distinct !DILexicalBlock(scope: !3363, file: !712, line: 1625, column: 7)
!3377 = !DILocalVariable(name: "exception", scope: !3375, file: !712, line: 1626, type: !608)
!3378 = !DILocation(line: 0, scope: !3363)
!3379 = !DILocation(line: 1605, column: 14, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3363, file: !712, line: 1605, column: 7)
!3381 = !DILocation(line: 1605, column: 20, scope: !3380)
!3382 = !DILocation(line: 1605, column: 7, scope: !3363)
!3383 = !DILocation(line: 1606, column: 68, scope: !3380)
!3384 = !DILocation(line: 1606, column: 12, scope: !3380)
!3385 = !DILocation(line: 1609, column: 14, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3363, file: !712, line: 1609, column: 7)
!3387 = !DILocation(line: 1609, column: 20, scope: !3386)
!3388 = !DILocation(line: 1609, column: 7, scope: !3363)
!3389 = !DILocation(line: 1610, column: 12, scope: !3386)
!3390 = !DILocation(line: 1610, column: 5, scope: !3386)
!3391 = !DILocation(line: 1611, column: 14, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3363, file: !712, line: 1611, column: 7)
!3393 = !DILocation(line: 1611, column: 7, scope: !3363)
!3394 = !DILocation(line: 1612, column: 29, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !712, line: 1612, column: 9)
!3396 = !DILocation(line: 1612, column: 47, scope: !3395)
!3397 = !DILocation(line: 1612, column: 37, scope: !3395)
!3398 = !DILocation(line: 1612, column: 56, scope: !3395)
!3399 = !DILocation(line: 1613, column: 29, scope: !3395)
!3400 = !DILocation(line: 1613, column: 44, scope: !3395)
!3401 = !DILocation(line: 1613, column: 34, scope: !3395)
!3402 = !DILocation(line: 1612, column: 9, scope: !3392)
!3403 = !DILocation(line: 1615, column: 45, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3395, file: !712, line: 1614, column: 7)
!3405 = !DILocation(line: 1616, column: 55, scope: !3404)
!3406 = !DILocation(line: 1615, column: 16, scope: !3404)
!3407 = !DILocation(line: 1617, column: 9, scope: !3404)
!3408 = !DILocation(line: 1623, column: 33, scope: !3363)
!3409 = !DILocation(line: 1625, column: 26, scope: !3376)
!3410 = !DILocation(line: 1625, column: 7, scope: !3363)
!3411 = !DILocation(line: 1626, column: 5, scope: !3375)
!3412 = !DILocation(line: 0, scope: !3375)
!3413 = !DILocation(line: 1627, column: 10, scope: !3363)
!3414 = !DILocation(line: 1630, column: 3, scope: !3363)
!3415 = !DILocation(line: 1634, column: 14, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1633, column: 5)
!3417 = distinct !DILexicalBlock(scope: !3363, file: !712, line: 1631, column: 3)
!3418 = !DILocation(line: 1636, column: 7, scope: !3416)
!3419 = !DILocation(line: 1640, column: 14, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1639, column: 5)
!3421 = !DILocation(line: 1642, column: 7, scope: !3420)
!3422 = !DILocation(line: 1646, column: 14, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1645, column: 5)
!3424 = !DILocation(line: 1648, column: 7, scope: !3423)
!3425 = !DILocation(line: 1652, column: 14, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1651, column: 5)
!3427 = !DILocation(line: 1654, column: 7, scope: !3426)
!3428 = !DILocation(line: 1658, column: 14, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1657, column: 5)
!3430 = !DILocation(line: 1660, column: 7, scope: !3429)
!3431 = !DILocation(line: 1665, column: 14, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1664, column: 5)
!3433 = !DILocation(line: 1667, column: 7, scope: !3432)
!3434 = !DILocation(line: 1671, column: 14, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1670, column: 5)
!3436 = !DILocation(line: 1673, column: 7, scope: !3435)
!3437 = !DILocation(line: 1677, column: 14, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1676, column: 5)
!3439 = !DILocation(line: 1679, column: 7, scope: !3438)
!3440 = !DILocation(line: 1683, column: 14, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1682, column: 5)
!3442 = !DILocation(line: 1685, column: 7, scope: !3441)
!3443 = !DILocation(line: 0, scope: !1455, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 1689, column: 14, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3417, file: !712, line: 1688, column: 5)
!3446 = !DILocation(line: 1432, column: 10, scope: !1455, inlinedAt: !3444)
!3447 = !DILocation(line: 1435, column: 33, scope: !1469, inlinedAt: !3444)
!3448 = !DILocation(line: 1435, column: 28, scope: !1469, inlinedAt: !3444)
!3449 = !DILocation(line: 1435, column: 27, scope: !1469, inlinedAt: !3444)
!3450 = !DILocation(line: 1437, column: 35, scope: !1477, inlinedAt: !3444)
!3451 = !DILocation(line: 1437, column: 30, scope: !1477, inlinedAt: !3444)
!3452 = !DILocation(line: 1437, column: 29, scope: !1477, inlinedAt: !3444)
!3453 = !DILocation(line: 1439, column: 34, scope: !1485, inlinedAt: !3444)
!3454 = !DILocation(line: 1439, column: 29, scope: !1485, inlinedAt: !3444)
!3455 = !DILocation(line: 1439, column: 28, scope: !1485, inlinedAt: !3444)
!3456 = !DILocation(line: 1441, column: 15, scope: !1493, inlinedAt: !3444)
!3457 = !DILocation(line: 1441, column: 21, scope: !1493, inlinedAt: !3444)
!3458 = !DILocation(line: 1440, column: 7, scope: !1455, inlinedAt: !3444)
!3459 = !DILocation(line: 1442, column: 37, scope: !1493, inlinedAt: !3444)
!3460 = !DILocation(line: 1442, column: 32, scope: !1493, inlinedAt: !3444)
!3461 = !DILocation(line: 1442, column: 31, scope: !1493, inlinedAt: !3444)
!3462 = !DILocation(line: 1442, column: 5, scope: !1493, inlinedAt: !3444)
!3463 = !DILocation(line: 1444, column: 15, scope: !1504, inlinedAt: !3444)
!3464 = !DILocation(line: 1444, column: 26, scope: !1504, inlinedAt: !3444)
!3465 = !DILocation(line: 1443, column: 7, scope: !1455, inlinedAt: !3444)
!3466 = !DILocation(line: 1445, column: 35, scope: !1504, inlinedAt: !3444)
!3467 = !DILocation(line: 1445, column: 30, scope: !1504, inlinedAt: !3444)
!3468 = !DILocation(line: 1445, column: 29, scope: !1504, inlinedAt: !3444)
!3469 = !DILocation(line: 1445, column: 5, scope: !1504, inlinedAt: !3444)
!3470 = !DILocation(line: 1446, column: 38, scope: !1455, inlinedAt: !3444)
!3471 = !DILocation(line: 1446, column: 33, scope: !1455, inlinedAt: !3444)
!3472 = !DILocation(line: 1446, column: 32, scope: !1455, inlinedAt: !3444)
!3473 = !DILocation(line: 1691, column: 7, scope: !3445)
!3474 = !DILocation(line: 0, scope: !3417)
!3475 = !DILocation(line: 1694, column: 14, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3363, file: !712, line: 1694, column: 7)
!3477 = !DILocation(line: 1694, column: 7, scope: !3363)
!3478 = !DILocation(line: 1696, column: 37, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3476, file: !712, line: 1695, column: 5)
!3480 = !DILocation(line: 1697, column: 7, scope: !3479)
!3481 = !DILocation(line: 1700, column: 1, scope: !3363)
!3482 = distinct !DISubprogram(name: "IsImagesEqual", scope: !712, file: !712, line: 1749, type: !3483, scopeLine: 1751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!463, !447, !715}
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3501, !3502, !3503, !3504, !3505}
!3486 = !DILocalVariable(name: "image", arg: 1, scope: !3482, file: !712, line: 1749, type: !447)
!3487 = !DILocalVariable(name: "reconstruct_image", arg: 2, scope: !3482, file: !712, line: 1750, type: !715)
!3488 = !DILocalVariable(name: "image_view", scope: !3482, file: !712, line: 1753, type: !743)
!3489 = !DILocalVariable(name: "reconstruct_view", scope: !3482, file: !712, line: 1754, type: !743)
!3490 = !DILocalVariable(name: "exception", scope: !3482, file: !712, line: 1757, type: !719)
!3491 = !DILocalVariable(name: "status", scope: !3482, file: !712, line: 1760, type: !463)
!3492 = !DILocalVariable(name: "area", scope: !3482, file: !712, line: 1763, type: !675)
!3493 = !DILocalVariable(name: "maximum_error", scope: !3482, file: !712, line: 1764, type: !675)
!3494 = !DILocalVariable(name: "mean_error", scope: !3482, file: !712, line: 1765, type: !675)
!3495 = !DILocalVariable(name: "mean_error_per_pixel", scope: !3482, file: !712, line: 1766, type: !675)
!3496 = !DILocalVariable(name: "y", scope: !3482, file: !712, line: 1769, type: !511)
!3497 = !DILocalVariable(name: "indexes", scope: !3498, file: !712, line: 1788, type: !777)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !712, line: 1786, column: 3)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !712, line: 1785, column: 3)
!3500 = distinct !DILexicalBlock(scope: !3482, file: !712, line: 1785, column: 3)
!3501 = !DILocalVariable(name: "reconstruct_indexes", scope: !3498, file: !712, line: 1789, type: !777)
!3502 = !DILocalVariable(name: "p", scope: !3498, file: !712, line: 1792, type: !780)
!3503 = !DILocalVariable(name: "q", scope: !3498, file: !712, line: 1793, type: !780)
!3504 = !DILocalVariable(name: "x", scope: !3498, file: !712, line: 1796, type: !511)
!3505 = !DILocalVariable(name: "distance", scope: !3506, file: !712, line: 1808, type: !675)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !712, line: 1806, column: 5)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !712, line: 1805, column: 5)
!3508 = distinct !DILexicalBlock(scope: !3498, file: !712, line: 1805, column: 5)
!3509 = !DILocation(line: 0, scope: !3482)
!3510 = !DILocation(line: 1775, column: 27, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3482, file: !712, line: 1775, column: 7)
!3512 = !DILocation(line: 1775, column: 45, scope: !3511)
!3513 = !DILocation(line: 1775, column: 35, scope: !3511)
!3514 = !DILocation(line: 1775, column: 54, scope: !3511)
!3515 = !DILocation(line: 1776, column: 27, scope: !3511)
!3516 = !DILocation(line: 1776, column: 42, scope: !3511)
!3517 = !DILocation(line: 1776, column: 32, scope: !3511)
!3518 = !DILocation(line: 1775, column: 7, scope: !3482)
!3519 = !DILocation(line: 1777, column: 5, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !712, line: 1777, column: 5)
!3521 = distinct !DILexicalBlock(scope: !3511, file: !712, line: 1777, column: 5)
!3522 = !DILocation(line: 1782, column: 22, scope: !3482)
!3523 = !DILocation(line: 1783, column: 14, scope: !3482)
!3524 = !DILocation(line: 1784, column: 20, scope: !3482)
!3525 = !DILocation(line: 1785, column: 34, scope: !3499)
!3526 = !DILocation(line: 1785, column: 15, scope: !3499)
!3527 = !DILocation(line: 1785, column: 3, scope: !3500)
!3528 = !DILocation(line: 1798, column: 55, scope: !3498)
!3529 = !DILocation(line: 1798, column: 7, scope: !3498)
!3530 = !DILocation(line: 0, scope: !3498)
!3531 = !DILocation(line: 1799, column: 73, scope: !3498)
!3532 = !DILocation(line: 1799, column: 7, scope: !3498)
!3533 = !DILocation(line: 1801, column: 12, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3498, file: !712, line: 1801, column: 9)
!3535 = !DILocation(line: 1801, column: 43, scope: !3534)
!3536 = !DILocation(line: 1803, column: 13, scope: !3498)
!3537 = !DILocation(line: 1804, column: 25, scope: !3498)
!3538 = !DILocation(line: 1805, column: 17, scope: !3507)
!3539 = !DILocation(line: 1805, column: 5, scope: !3508)
!3540 = !DILocation(line: 1810, column: 21, scope: !3506)
!3541 = !DILocation(line: 1810, column: 45, scope: !3506)
!3542 = !DILocation(line: 1810, column: 36, scope: !3506)
!3543 = !DILocation(line: 1810, column: 35, scope: !3506)
!3544 = !DILocation(line: 1810, column: 16, scope: !3506)
!3545 = !DILocation(line: 0, scope: !3506)
!3546 = !DILocation(line: 1811, column: 27, scope: !3506)
!3547 = !DILocation(line: 1812, column: 17, scope: !3506)
!3548 = !DILocation(line: 1813, column: 20, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3506, file: !712, line: 1813, column: 11)
!3550 = !DILocation(line: 1813, column: 11, scope: !3506)
!3551 = !DILocation(line: 1814, column: 9, scope: !3549)
!3552 = !DILocation(line: 1815, column: 11, scope: !3506)
!3553 = !DILocation(line: 1816, column: 21, scope: !3506)
!3554 = !DILocation(line: 1816, column: 47, scope: !3506)
!3555 = !DILocation(line: 1816, column: 38, scope: !3506)
!3556 = !DILocation(line: 1816, column: 37, scope: !3506)
!3557 = !DILocation(line: 1816, column: 16, scope: !3506)
!3558 = !DILocation(line: 1817, column: 27, scope: !3506)
!3559 = !DILocation(line: 1818, column: 17, scope: !3506)
!3560 = !DILocation(line: 1819, column: 20, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3506, file: !712, line: 1819, column: 11)
!3562 = !DILocation(line: 1819, column: 11, scope: !3506)
!3563 = !DILocation(line: 1820, column: 9, scope: !3561)
!3564 = !DILocation(line: 1821, column: 11, scope: !3506)
!3565 = !DILocation(line: 1822, column: 21, scope: !3506)
!3566 = !DILocation(line: 1822, column: 46, scope: !3506)
!3567 = !DILocation(line: 1822, column: 37, scope: !3506)
!3568 = !DILocation(line: 1822, column: 36, scope: !3506)
!3569 = !DILocation(line: 1822, column: 16, scope: !3506)
!3570 = !DILocation(line: 1823, column: 27, scope: !3506)
!3571 = !DILocation(line: 1824, column: 17, scope: !3506)
!3572 = !DILocation(line: 1825, column: 20, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3506, file: !712, line: 1825, column: 11)
!3574 = !DILocation(line: 1825, column: 11, scope: !3506)
!3575 = !DILocation(line: 1826, column: 9, scope: !3573)
!3576 = !DILocation(line: 1827, column: 11, scope: !3506)
!3577 = !DILocation(line: 1828, column: 11, scope: !3506)
!3578 = !DILocation(line: 1830, column: 25, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !712, line: 1829, column: 9)
!3580 = distinct !DILexicalBlock(scope: !3506, file: !712, line: 1828, column: 11)
!3581 = !DILocation(line: 1830, column: 53, scope: !3579)
!3582 = !DILocation(line: 1830, column: 44, scope: !3579)
!3583 = !DILocation(line: 1830, column: 43, scope: !3579)
!3584 = !DILocation(line: 1830, column: 20, scope: !3579)
!3585 = !DILocation(line: 1831, column: 31, scope: !3579)
!3586 = !DILocation(line: 1832, column: 21, scope: !3579)
!3587 = !DILocation(line: 1833, column: 24, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3579, file: !712, line: 1833, column: 15)
!3589 = !DILocation(line: 1833, column: 15, scope: !3579)
!3590 = !DILocation(line: 1834, column: 13, scope: !3588)
!3591 = !DILocation(line: 1835, column: 15, scope: !3579)
!3592 = !DILocation(line: 1836, column: 9, scope: !3579)
!3593 = !DILocation(line: 1837, column: 49, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3506, file: !712, line: 1837, column: 11)
!3595 = !DILocation(line: 1838, column: 31, scope: !3594)
!3596 = !DILocation(line: 1838, column: 42, scope: !3594)
!3597 = !DILocation(line: 1837, column: 11, scope: !3506)
!3598 = !DILocation(line: 1840, column: 25, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3594, file: !712, line: 1839, column: 9)
!3600 = !DILocation(line: 1841, column: 13, scope: !3599)
!3601 = !DILocation(line: 1840, column: 50, scope: !3599)
!3602 = !DILocation(line: 1840, column: 49, scope: !3599)
!3603 = !DILocation(line: 1840, column: 20, scope: !3599)
!3604 = !DILocation(line: 1842, column: 31, scope: !3599)
!3605 = !DILocation(line: 1843, column: 21, scope: !3599)
!3606 = !DILocation(line: 1844, column: 24, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3599, file: !712, line: 1844, column: 15)
!3608 = !DILocation(line: 1844, column: 15, scope: !3599)
!3609 = !DILocation(line: 1845, column: 13, scope: !3607)
!3610 = !DILocation(line: 1846, column: 15, scope: !3599)
!3611 = !DILocation(line: 1847, column: 9, scope: !3599)
!3612 = !DILocation(line: 1848, column: 8, scope: !3506)
!3613 = !DILocation(line: 1849, column: 8, scope: !3506)
!3614 = !DILocation(line: 1805, column: 46, scope: !3507)
!3615 = distinct !{!3615, !3539, !3616, !1337, !1338}
!3616 = !DILocation(line: 1850, column: 5, scope: !3508)
!3617 = !DILocation(line: 1785, column: 41, scope: !3499)
!3618 = distinct !{!3618, !3527, !3619, !1337, !1338}
!3619 = !DILocation(line: 1851, column: 3, scope: !3500)
!3620 = !DILocation(line: 1778, column: 7, scope: !3482)
!3621 = !DILocation(line: 1779, column: 16, scope: !3482)
!3622 = !DILocation(line: 1781, column: 13, scope: !3482)
!3623 = !DILocation(line: 1780, column: 23, scope: !3482)
!3624 = !DILocation(line: 1852, column: 20, scope: !3482)
!3625 = !DILocation(line: 1853, column: 14, scope: !3482)
!3626 = !DILocation(line: 1854, column: 67, scope: !3482)
!3627 = !DILocation(line: 1854, column: 37, scope: !3482)
!3628 = !DILocation(line: 1854, column: 10, scope: !3482)
!3629 = !DILocation(line: 1854, column: 36, scope: !3482)
!3630 = !DILocation(line: 1856, column: 5, scope: !3482)
!3631 = !DILocation(line: 1855, column: 73, scope: !3482)
!3632 = !DILocation(line: 1856, column: 16, scope: !3482)
!3633 = !DILocation(line: 1856, column: 15, scope: !3482)
!3634 = !DILocation(line: 1855, column: 16, scope: !3482)
!3635 = !DILocation(line: 1855, column: 37, scope: !3482)
!3636 = !DILocation(line: 1857, column: 64, scope: !3482)
!3637 = !DILocation(line: 1857, column: 63, scope: !3482)
!3638 = !DILocation(line: 1857, column: 16, scope: !3482)
!3639 = !DILocation(line: 1857, column: 40, scope: !3482)
!3640 = !DILocation(line: 1858, column: 44, scope: !3482)
!3641 = !DILocation(line: 1858, column: 10, scope: !3482)
!3642 = !DILocation(line: 1859, column: 3, scope: !3482)
!3643 = !DILocation(line: 1860, column: 1, scope: !3482)
!3644 = distinct !DISubprogram(name: "SimilarityImage", scope: !712, file: !712, line: 1927, type: !3645, scopeLine: 1929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3648)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!447, !447, !715, !3647, !673, !719}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654}
!3649 = !DILocalVariable(name: "image", arg: 1, scope: !3644, file: !712, line: 1927, type: !447)
!3650 = !DILocalVariable(name: "reference", arg: 2, scope: !3644, file: !712, line: 1927, type: !715)
!3651 = !DILocalVariable(name: "offset", arg: 3, scope: !3644, file: !712, line: 1928, type: !3647)
!3652 = !DILocalVariable(name: "similarity_metric", arg: 4, scope: !3644, file: !712, line: 1928, type: !673)
!3653 = !DILocalVariable(name: "exception", arg: 5, scope: !3644, file: !712, line: 1928, type: !719)
!3654 = !DILocalVariable(name: "similarity_image", scope: !3644, file: !712, line: 1931, type: !447)
!3655 = !DILocation(line: 0, scope: !3644)
!3656 = !DILocation(line: 1933, column: 20, scope: !3644)
!3657 = !DILocation(line: 1935, column: 3, scope: !3644)
!3658 = distinct !DISubprogram(name: "SimilarityMetricImage", scope: !712, file: !712, line: 1945, type: !3659, scopeLine: 1948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!447, !447, !715, !717, !3647, !673, !719}
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3679, !3680, !3681}
!3662 = !DILocalVariable(name: "image", arg: 1, scope: !3658, file: !712, line: 1945, type: !447)
!3663 = !DILocalVariable(name: "reference", arg: 2, scope: !3658, file: !712, line: 1945, type: !715)
!3664 = !DILocalVariable(name: "metric", arg: 3, scope: !3658, file: !712, line: 1946, type: !717)
!3665 = !DILocalVariable(name: "offset", arg: 4, scope: !3658, file: !712, line: 1946, type: !3647)
!3666 = !DILocalVariable(name: "similarity_metric", arg: 5, scope: !3658, file: !712, line: 1946, type: !673)
!3667 = !DILocalVariable(name: "exception", arg: 6, scope: !3658, file: !712, line: 1947, type: !719)
!3668 = !DILocalVariable(name: "similarity_view", scope: !3658, file: !712, line: 1952, type: !743)
!3669 = !DILocalVariable(name: "artifact", scope: !3658, file: !712, line: 1955, type: !580)
!3670 = !DILocalVariable(name: "similarity_threshold", scope: !3658, file: !712, line: 1958, type: !484)
!3671 = !DILocalVariable(name: "similarity_image", scope: !3658, file: !712, line: 1961, type: !447)
!3672 = !DILocalVariable(name: "status", scope: !3658, file: !712, line: 1964, type: !463)
!3673 = !DILocalVariable(name: "progress", scope: !3658, file: !712, line: 1967, type: !583)
!3674 = !DILocalVariable(name: "y", scope: !3658, file: !712, line: 1970, type: !511)
!3675 = !DILocalVariable(name: "similarity", scope: !3676, file: !712, line: 2012, type: !484)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !712, line: 2010, column: 3)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !712, line: 2009, column: 3)
!3678 = distinct !DILexicalBlock(scope: !3658, file: !712, line: 2009, column: 3)
!3679 = !DILocalVariable(name: "x", scope: !3676, file: !712, line: 2015, type: !511)
!3680 = !DILocalVariable(name: "q", scope: !3676, file: !712, line: 2018, type: !785)
!3681 = !DILocalVariable(name: "proceed", scope: !3682, file: !712, line: 2063, type: !463)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !712, line: 2061, column: 7)
!3683 = distinct !DILexicalBlock(scope: !3676, file: !712, line: 2060, column: 9)
!3684 = !DILocation(line: 0, scope: !3658)
!3685 = !DILocation(line: 1974, column: 14, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3658, file: !712, line: 1974, column: 7)
!3687 = !DILocation(line: 1974, column: 20, scope: !3686)
!3688 = !DILocation(line: 1974, column: 7, scope: !3658)
!3689 = !DILocation(line: 1975, column: 68, scope: !3686)
!3690 = !DILocation(line: 1975, column: 12, scope: !3686)
!3691 = !DILocation(line: 1975, column: 5, scope: !3686)
!3692 = !DILocation(line: 1979, column: 3, scope: !3658)
!3693 = !DILocation(line: 1980, column: 21, scope: !3658)
!3694 = !DILocation(line: 1981, column: 19, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3658, file: !712, line: 1981, column: 7)
!3696 = !DILocation(line: 1981, column: 36, scope: !3695)
!3697 = !DILocation(line: 1981, column: 27, scope: !3695)
!3698 = !DILocation(line: 1981, column: 45, scope: !3695)
!3699 = !DILocation(line: 1981, column: 60, scope: !3695)
!3700 = !DILocation(line: 1981, column: 74, scope: !3695)
!3701 = !DILocation(line: 1981, column: 65, scope: !3695)
!3702 = !DILocation(line: 1981, column: 7, scope: !3658)
!3703 = !DILocation(line: 1982, column: 5, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3695, file: !712, line: 1982, column: 5)
!3705 = !DILocation(line: 1983, column: 51, scope: !3658)
!3706 = !DILocation(line: 1983, column: 70, scope: !3658)
!3707 = !DILocation(line: 1984, column: 16, scope: !3658)
!3708 = !DILocation(line: 1984, column: 32, scope: !3658)
!3709 = !DILocation(line: 1983, column: 20, scope: !3658)
!3710 = !DILocation(line: 1985, column: 24, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3658, file: !712, line: 1985, column: 7)
!3712 = !DILocation(line: 1985, column: 7, scope: !3658)
!3713 = !DILocation(line: 1987, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3658, file: !712, line: 1987, column: 7)
!3715 = !DILocation(line: 1987, column: 58, scope: !3714)
!3716 = !DILocation(line: 1987, column: 7, scope: !3658)
!3717 = !DILocation(line: 1989, column: 53, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3714, file: !712, line: 1988, column: 5)
!3719 = !DILocation(line: 1989, column: 7, scope: !3718)
!3720 = !DILocation(line: 1990, column: 24, scope: !3718)
!3721 = !DILocation(line: 1991, column: 7, scope: !3718)
!3722 = !DILocation(line: 1993, column: 10, scope: !3658)
!3723 = !DILocation(line: 1998, column: 12, scope: !3658)
!3724 = !DILocation(line: 1999, column: 16, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3658, file: !712, line: 1999, column: 7)
!3726 = !DILocation(line: 1999, column: 7, scope: !3658)
!3727 = !DILocalVariable(name: "string", arg: 1, scope: !3728, file: !3729, line: 42, type: !3732)
!3728 = distinct !DISubprogram(name: "StringToDouble", scope: !3729, file: !3729, line: 42, type: !3730, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3734)
!3729 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!484, !3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !580)
!3733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !674)
!3734 = !{!3727, !3735}
!3735 = !DILocalVariable(name: "sentinal", arg: 2, scope: !3728, file: !3729, line: 43, type: !3733)
!3736 = !DILocation(line: 0, scope: !3728, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 2000, column: 26, scope: !3725)
!3738 = !DILocation(line: 45, column: 10, scope: !3728, inlinedAt: !3737)
!3739 = !DILocation(line: 2000, column: 5, scope: !3725)
!3740 = !DILocation(line: 2003, column: 19, scope: !3658)
!3741 = !DILocation(line: 2009, column: 35, scope: !3677)
!3742 = !DILocation(line: 2009, column: 51, scope: !3677)
!3743 = !DILocation(line: 2009, column: 39, scope: !3677)
!3744 = !DILocation(line: 2009, column: 55, scope: !3677)
!3745 = !DILocation(line: 2009, column: 15, scope: !3677)
!3746 = !DILocation(line: 2009, column: 3, scope: !3678)
!3747 = !DILocation(line: 2074, column: 19, scope: !3658)
!3748 = !DILocation(line: 2075, column: 7, scope: !3658)
!3749 = !DILocation(line: 2020, column: 16, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3676, file: !712, line: 2020, column: 9)
!3751 = !DILocation(line: 2020, column: 9, scope: !3676)
!3752 = !DILocation(line: 2025, column: 9, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3676, file: !712, line: 2025, column: 9)
!3754 = !DILocation(line: 2025, column: 28, scope: !3753)
!3755 = !DILocation(line: 2025, column: 9, scope: !3676)
!3756 = !DILocation(line: 2027, column: 73, scope: !3676)
!3757 = !DILocation(line: 2027, column: 7, scope: !3676)
!3758 = !DILocation(line: 0, scope: !3676)
!3759 = !DILocation(line: 2029, column: 11, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3676, file: !712, line: 2029, column: 9)
!3761 = !DILocation(line: 2029, column: 9, scope: !3676)
!3762 = !DILocation(line: 2034, column: 37, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !712, line: 2034, column: 5)
!3764 = distinct !DILexicalBlock(scope: !3676, file: !712, line: 2034, column: 5)
!3765 = !DILocation(line: 2034, column: 56, scope: !3763)
!3766 = !DILocation(line: 2034, column: 44, scope: !3763)
!3767 = !DILocation(line: 2034, column: 63, scope: !3763)
!3768 = !DILocation(line: 2034, column: 17, scope: !3763)
!3769 = !DILocation(line: 2034, column: 5, scope: !3764)
!3770 = !DILocation(line: 2039, column: 11, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !712, line: 2039, column: 11)
!3772 = distinct !DILexicalBlock(scope: !3763, file: !712, line: 2035, column: 5)
!3773 = !DILocation(line: 2039, column: 30, scope: !3771)
!3774 = !DILocation(line: 2039, column: 11, scope: !3772)
!3775 = !DILocalVariable(name: "image", arg: 1, scope: !3776, file: !712, line: 1897, type: !715)
!3776 = distinct !DISubprogram(name: "GetSimilarityMetric", scope: !712, file: !712, line: 1897, type: !3777, scopeLine: 1900, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!484, !715, !715, !717, !1568, !1568, !719}
!3779 = !{!3775, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788}
!3780 = !DILocalVariable(name: "reference", arg: 2, scope: !3776, file: !712, line: 1897, type: !715)
!3781 = !DILocalVariable(name: "metric", arg: 3, scope: !3776, file: !712, line: 1898, type: !717)
!3782 = !DILocalVariable(name: "x_offset", arg: 4, scope: !3776, file: !712, line: 1898, type: !1568)
!3783 = !DILocalVariable(name: "y_offset", arg: 5, scope: !3776, file: !712, line: 1898, type: !1568)
!3784 = !DILocalVariable(name: "exception", arg: 6, scope: !3776, file: !712, line: 1899, type: !719)
!3785 = !DILocalVariable(name: "distortion", scope: !3776, file: !712, line: 1902, type: !484)
!3786 = !DILocalVariable(name: "similarity_image", scope: !3776, file: !712, line: 1905, type: !447)
!3787 = !DILocalVariable(name: "status", scope: !3776, file: !712, line: 1908, type: !463)
!3788 = !DILocalVariable(name: "geometry", scope: !3776, file: !712, line: 1911, type: !519)
!3789 = !DILocation(line: 0, scope: !3776, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 2041, column: 18, scope: !3772)
!3791 = !DILocation(line: 1901, column: 3, scope: !3776, inlinedAt: !3790)
!3792 = !DILocation(line: 1910, column: 3, scope: !3776, inlinedAt: !3790)
!3793 = !DILocation(line: 1911, column: 5, scope: !3776, inlinedAt: !3790)
!3794 = !DILocation(line: 1913, column: 3, scope: !3776, inlinedAt: !3790)
!3795 = !DILocation(line: 1914, column: 13, scope: !3776, inlinedAt: !3790)
!3796 = !{!810, !803, i64 16}
!3797 = !DILocation(line: 1915, column: 13, scope: !3776, inlinedAt: !3790)
!3798 = !{!810, !803, i64 24}
!3799 = !DILocation(line: 1916, column: 20, scope: !3776, inlinedAt: !3790)
!3800 = !DILocation(line: 1917, column: 24, scope: !3801, inlinedAt: !3790)
!3801 = distinct !DILexicalBlock(scope: !3776, file: !712, line: 1917, column: 7)
!3802 = !DILocation(line: 1917, column: 7, scope: !3776, inlinedAt: !3790)
!3803 = !DILocation(line: 1919, column: 13, scope: !3776, inlinedAt: !3790)
!3804 = !DILocation(line: 0, scope: !1591, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 1920, column: 10, scope: !3776, inlinedAt: !3790)
!3806 = !DILocation(line: 356, column: 10, scope: !1591, inlinedAt: !3805)
!3807 = !DILocation(line: 1923, column: 20, scope: !3776, inlinedAt: !3790)
!3808 = !DILocation(line: 1924, column: 10, scope: !3776, inlinedAt: !3790)
!3809 = !DILocation(line: 1924, column: 3, scope: !3776, inlinedAt: !3790)
!3810 = !DILocation(line: 1925, column: 1, scope: !3776, inlinedAt: !3790)
!3811 = !DILocation(line: 2045, column: 24, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3772, file: !712, line: 2045, column: 11)
!3813 = !DILocation(line: 2045, column: 22, scope: !3812)
!3814 = !DILocation(line: 2045, column: 11, scope: !3772)
!3815 = !DILocation(line: 2047, column: 29, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3812, file: !712, line: 2046, column: 9)
!3817 = !DILocation(line: 2048, column: 20, scope: !3816)
!3818 = !DILocation(line: 2049, column: 20, scope: !3816)
!3819 = !DILocation(line: 2050, column: 9, scope: !3816)
!3820 = !DILocation(line: 2051, column: 11, scope: !3772)
!3821 = !DILocation(line: 2052, column: 34, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3772, file: !712, line: 2051, column: 11)
!3823 = !DILocalVariable(name: "x", arg: 1, scope: !3824, file: !712, line: 1938, type: !2806)
!3824 = distinct !DISubprogram(name: "MagickMin", scope: !712, file: !712, line: 1938, type: !3825, scopeLine: 1939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!484, !2806, !2806}
!3827 = !{!3823, !3828}
!3828 = !DILocalVariable(name: "y", arg: 2, scope: !3824, file: !712, line: 1938, type: !2806)
!3829 = !DILocation(line: 0, scope: !3824, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 2052, column: 20, scope: !3822)
!3831 = !DILocation(line: 1940, column: 9, scope: !3832, inlinedAt: !3830)
!3832 = distinct !DILexicalBlock(scope: !3824, file: !712, line: 1940, column: 7)
!3833 = !DILocation(line: 2052, column: 9, scope: !3822)
!3834 = !DILocation(line: 0, scope: !3772)
!3835 = !DILocation(line: 2053, column: 7, scope: !3772)
!3836 = !DILocation(line: 0, scope: !1204, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 2053, column: 7, scope: !3772)
!3838 = !DILocation(line: 92, column: 13, scope: !1212, inlinedAt: !3837)
!3839 = !DILocation(line: 92, column: 7, scope: !1204, inlinedAt: !3837)
!3840 = !DILocation(line: 94, column: 13, scope: !1215, inlinedAt: !3837)
!3841 = !DILocation(line: 94, column: 7, scope: !1204, inlinedAt: !3837)
!3842 = !DILocation(line: 96, column: 26, scope: !1204, inlinedAt: !3837)
!3843 = !DILocation(line: 96, column: 10, scope: !1204, inlinedAt: !3837)
!3844 = !DILocation(line: 96, column: 3, scope: !1204, inlinedAt: !3837)
!3845 = !DILocation(line: 2054, column: 7, scope: !3772)
!3846 = !DILocation(line: 2055, column: 7, scope: !3772)
!3847 = !DILocation(line: 2056, column: 8, scope: !3772)
!3848 = !DILocation(line: 2034, column: 69, scope: !3763)
!3849 = distinct !{!3849, !3769, !3850, !1337, !1338}
!3850 = !DILocation(line: 2057, column: 5, scope: !3764)
!3851 = !DILocation(line: 2058, column: 9, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3676, file: !712, line: 2058, column: 9)
!3853 = !DILocation(line: 2058, column: 65, scope: !3852)
!3854 = !DILocation(line: 2058, column: 9, scope: !3676)
!3855 = !DILocation(line: 2060, column: 16, scope: !3683)
!3856 = !DILocation(line: 2060, column: 33, scope: !3683)
!3857 = !DILocation(line: 2060, column: 9, scope: !3676)
!3858 = !DILocation(line: 2068, column: 67, scope: !3682)
!3859 = !DILocation(line: 2069, column: 18, scope: !3682)
!3860 = !DILocation(line: 0, scope: !2762, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 2068, column: 17, scope: !3682)
!3862 = !DILocation(line: 30, column: 3, scope: !2762, inlinedAt: !3861)
!3863 = !DILocation(line: 31, column: 5, scope: !2762, inlinedAt: !3861)
!3864 = !DILocation(line: 35, column: 10, scope: !2762, inlinedAt: !3861)
!3865 = !DILocation(line: 36, column: 17, scope: !2762, inlinedAt: !3861)
!3866 = !DILocation(line: 36, column: 63, scope: !2762, inlinedAt: !3861)
!3867 = !DILocation(line: 36, column: 10, scope: !2762, inlinedAt: !3861)
!3868 = !DILocation(line: 37, column: 1, scope: !2762, inlinedAt: !3861)
!3869 = !DILocation(line: 0, scope: !3682)
!3870 = !DILocation(line: 2070, column: 21, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3682, file: !712, line: 2070, column: 13)
!3872 = !DILocation(line: 2070, column: 13, scope: !3682)
!3873 = !DILocation(line: 2072, column: 7, scope: !3682)
!3874 = !DILocation(line: 2009, column: 61, scope: !3677)
!3875 = distinct !{!3875, !3746, !3876, !1337, !1338}
!3876 = !DILocation(line: 2073, column: 3, scope: !3678)
!3877 = !DILocation(line: 2075, column: 14, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3658, file: !712, line: 2075, column: 7)
!3879 = !DILocation(line: 2076, column: 22, scope: !3878)
!3880 = !DILocation(line: 2076, column: 5, scope: !3878)
!3881 = !DILocation(line: 2078, column: 1, scope: !3658)
!3882 = !DISubprogram(name: "SetGeometry", scope: !153, file: !153, line: 154, type: !3883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{null, !715, !3647}
!3885 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !745, file: !745, line: 99, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3886 = !DISubprogram(name: "DecodePixelGamma", scope: !326, file: !326, line: 179, type: !3887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!675, !1207}
!3889 = !DISubprogram(name: "GetImageChannelStatistics", scope: !680, file: !680, line: 127, type: !3890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!678, !715, !719}
!3892 = !DISubprogram(name: "GetImageChannelPerceptualHash", scope: !680, file: !680, line: 133, type: !3893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!695, !715, !719}
!3895 = !DISubprogram(name: "InterpretLocaleValue", scope: !3896, file: !3896, line: 56, type: !3730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3896 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!3897 = !DISubprogram(name: "CropImage", scope: !3898, file: !3898, line: 29, type: !3899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3898 = !DIFile(filename: "apps/538.imagick_r/src/magick/transform.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "38be0c2b8a82bf966e7f55606c3e2192")
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!447, !715, !3901, !719}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!3903 = !DISubprogram(name: "FormatLocaleString", scope: !3896, file: !3896, line: 71, type: !3904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1367)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!511, !3906, !1366, !3732, null}
!3906 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !506)
