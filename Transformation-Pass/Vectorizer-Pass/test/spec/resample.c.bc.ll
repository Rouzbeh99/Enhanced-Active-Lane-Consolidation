; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/resample.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ResampleFilter = type { ptr, ptr, ptr, i32, i64, i32, i32, i32, i32, i32, i32, %struct._MagickPixelPacket, double, double, double, double, double, double, double, [1024 x double], double, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resample.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"UnableToSetFilteringValue\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Fall back to Interpolated 'Point' filter\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"resample:verbose\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"# Resampling Filter LUT (%d values) for '%s' filter\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%8.*g %.*g\0A\00", align 1
@str.18 = private unnamed_addr constant [59 x i8] c"# Note: values in table are using a squared radius lookup.\00", align 1
@str.19 = private unnamed_addr constant [43 x i8] c"# As such its distribution is not uniform.\00", align 1
@str.21 = private unnamed_addr constant [55 x i8] c"# The X value is the support distance for the Y weight\00", align 1
@str.22 = private unnamed_addr constant [57 x i8] c"# so you can use gnuplot to plot this cylindrical filter\00", align 1
@str.23 = private unnamed_addr constant [44 x i8] c"#    plot [0:2][-.2:1] \22lut.dat\22 with lines\00", align 1
@str.24 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireResampleFilter(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !780 {
entry:
  %exception4 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !786, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %exception, metadata !787, metadata !DIExpression()), !dbg !793
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !794
  %0 = load i32, ptr %debug, align 8, !dbg !794, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !815
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !816

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !817
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 215, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #14, !dbg !818
  br label %if.end, !dbg !819

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireMagickMemory(i64 noundef 8384) #15, !dbg !820
  call void @llvm.dbg.value(metadata ptr %call1, metadata !788, metadata !DIExpression()), !dbg !793
  %cmp2 = icmp eq ptr %call1, null, !dbg !821
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !822

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception4) #14, !dbg !823
  call void @llvm.dbg.declare(metadata ptr %exception4, metadata !792, metadata !DIExpression()), !dbg !823
  call void @GetExceptionInfo(ptr noundef nonnull %exception4) #14, !dbg !823
  %call5 = tail call ptr @__errno_location() #16, !dbg !823
  %1 = load i32, ptr %call5, align 4, !dbg !823, !tbaa !824
  %call6 = call ptr @GetExceptionMessage(i32 noundef %1) #14, !dbg !823
  call void @llvm.dbg.value(metadata ptr %call6, metadata !789, metadata !DIExpression()), !dbg !825
  %call7 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 222, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call6) #14, !dbg !823
  %call8 = call ptr @DestroyString(ptr noundef %call6) #14, !dbg !823
  call void @llvm.dbg.value(metadata ptr %call8, metadata !789, metadata !DIExpression()), !dbg !825
  call void @CatchException(ptr noundef nonnull %exception4) #14, !dbg !823
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception4) #14, !dbg !823
  call void @MagickCoreTerminus() #14, !dbg !823
  call void @_exit(i32 noundef 1) #17, !dbg !823
  unreachable, !dbg !823

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 8384) #14, !dbg !826
  %exception12 = getelementptr inbounds %struct._ResampleFilter, ptr %call1, i64 0, i32 2, !dbg !827
  store ptr %exception, ptr %exception12, align 8, !dbg !828, !tbaa !829
  %call13 = tail call ptr @ReferenceImage(ptr noundef nonnull %image) #14, !dbg !833
  %image14 = getelementptr inbounds %struct._ResampleFilter, ptr %call1, i64 0, i32 1, !dbg !834
  store ptr %call13, ptr %image14, align 8, !dbg !835, !tbaa !836
  %call16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %call13, ptr noundef %exception) #14, !dbg !837
  store ptr %call16, ptr %call1, align 8, !dbg !838, !tbaa !839
  %call17 = tail call i32 @IsEventLogging() #14, !dbg !840
  %debug18 = getelementptr inbounds %struct._ResampleFilter, ptr %call1, i64 0, i32 3, !dbg !841
  store i32 %call17, ptr %debug18, align 8, !dbg !842, !tbaa !843
  %signature = getelementptr inbounds %struct._ResampleFilter, ptr %call1, i64 0, i32 21, !dbg !844
  store i64 2880220587, ptr %signature, align 8, !dbg !845, !tbaa !846
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !847
  %2 = load i64, ptr %columns, align 8, !dbg !847, !tbaa !848
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !849
  %3 = load i64, ptr %rows, align 8, !dbg !849, !tbaa !850
  %mul = mul i64 %3, %2, !dbg !851
  %image_area = getelementptr inbounds %struct._ResampleFilter, ptr %call1, i64 0, i32 4, !dbg !852
  store i64 %mul, ptr %image_area, align 8, !dbg !853, !tbaa !854
  %average_defined = getelementptr inbounds %struct._ResampleFilter, ptr %call1, i64 0, i32 10, !dbg !855
  store i32 0, ptr %average_defined, align 4, !dbg !856, !tbaa !857
  %filter = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 32, !dbg !858
  %4 = load i32, ptr %filter, align 8, !dbg !858, !tbaa !859
  %blur = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 30, !dbg !860
  %5 = load double, ptr %blur, align 8, !dbg !860, !tbaa !861
  tail call void @SetResampleFilter(ptr noundef nonnull %call1, i32 noundef %4, double noundef %5), !dbg !862
  %interpolate = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 70, !dbg !863
  %6 = load i32, ptr %interpolate, align 8, !dbg !863, !tbaa !864
  call void @llvm.dbg.value(metadata ptr %call1, metadata !865, metadata !DIExpression()) #14, !dbg !872
  call void @llvm.dbg.value(metadata i32 %6, metadata !871, metadata !DIExpression()) #14, !dbg !872
  %7 = load i32, ptr %debug18, align 8, !dbg !874, !tbaa !843
  %cmp.not.i = icmp eq i32 %7, 0, !dbg !876
  br i1 %cmp.not.i, label %SetResampleFilterInterpolateMethod.exit, label %if.then.i, !dbg !877

if.then.i:                                        ; preds = %if.end10
  %8 = load ptr, ptr %image14, align 8, !dbg !878, !tbaa !836
  %filename.i = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 53, !dbg !879
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1423, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #14, !dbg !880
  br label %SetResampleFilterInterpolateMethod.exit, !dbg !881

SetResampleFilterInterpolateMethod.exit:          ; preds = %if.end10, %if.then.i
  %interpolate.i = getelementptr inbounds %struct._ResampleFilter, ptr %call1, i64 0, i32 5, !dbg !882
  store i32 %6, ptr %interpolate.i, align 8, !dbg !883, !tbaa !884
  %call20 = tail call i32 @GetImageVirtualPixelMethod(ptr noundef nonnull %image) #14, !dbg !885
  call void @llvm.dbg.value(metadata ptr %call1, metadata !886, metadata !DIExpression()) #14, !dbg !893
  call void @llvm.dbg.value(metadata i32 %call20, metadata !892, metadata !DIExpression()) #14, !dbg !893
  %9 = load i32, ptr %debug18, align 8, !dbg !895, !tbaa !843
  %cmp.not.i46 = icmp eq i32 %9, 0, !dbg !897
  br i1 %cmp.not.i46, label %if.end.i, label %if.then.i50, !dbg !898

if.then.i50:                                      ; preds = %SetResampleFilterInterpolateMethod.exit
  %10 = load ptr, ptr %image14, align 8, !dbg !899, !tbaa !836
  %filename.i48 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 53, !dbg !900
  %call.i49 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1462, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i48) #14, !dbg !901
  br label %if.end.i, !dbg !902

if.end.i:                                         ; preds = %if.then.i50, %SetResampleFilterInterpolateMethod.exit
  %virtual_pixel.i = getelementptr inbounds %struct._ResampleFilter, ptr %call1, i64 0, i32 6, !dbg !903
  store i32 %call20, ptr %virtual_pixel.i, align 4, !dbg !904, !tbaa !905
  %cmp1.not.i = icmp eq i32 %call20, 0, !dbg !906
  br i1 %cmp1.not.i, label %SetResampleFilterVirtualPixelMethod.exit, label %if.then2.i, !dbg !908

if.then2.i:                                       ; preds = %if.end.i
  %11 = load ptr, ptr %call1, align 8, !dbg !909, !tbaa !839
  %call3.i = tail call i32 @SetCacheViewVirtualPixelMethod(ptr noundef %11, i32 noundef %call20) #14, !dbg !910
  br label %SetResampleFilterVirtualPixelMethod.exit, !dbg !911

SetResampleFilterVirtualPixelMethod.exit:         ; preds = %if.end.i, %if.then2.i
  ret ptr %call1, !dbg !912
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !913 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !920 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

declare !dbg !924 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !927 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !931 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !935 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !939 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !940 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !943 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !947 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !950 ptr @ReferenceImage(ptr noundef) local_unnamed_addr #3

declare !dbg !953 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !956 i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SetResampleFilter(ptr nocapture noundef %resample_filter, i32 noundef %filter, double noundef %blur) local_unnamed_addr #0 !dbg !959 {
entry:
  call void @llvm.dbg.value(metadata ptr %resample_filter, metadata !965, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i32 %filter, metadata !966, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata double %blur, metadata !967, metadata !DIExpression()), !dbg !977
  %do_interpolate = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 9, !dbg !978
  store i32 0, ptr %do_interpolate, align 8, !dbg !979, !tbaa !980
  %filter1 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 7, !dbg !981
  %cmp = icmp eq i32 %filter, 0, !dbg !982
  %spec.select = select i1 %cmp, i32 26, i32 %filter, !dbg !984
  store i32 %spec.select, ptr %filter1, align 8, !dbg !977, !tbaa !985
  %cmp4 = icmp eq i32 %spec.select, 1, !dbg !986
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !988

if.then5:                                         ; preds = %entry
  store i32 1, ptr %do_interpolate, align 8, !dbg !989, !tbaa !980
  br label %cleanup, !dbg !991

if.end7:                                          ; preds = %entry
  %image = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !992
  %0 = load ptr, ptr %image, align 8, !dbg !992, !tbaa !836
  %conv = fptrunc double %blur to float, !dbg !993
  %exception = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 2, !dbg !994
  %1 = load ptr, ptr %exception, align 8, !dbg !994, !tbaa !829
  %call = tail call ptr @AcquireResizeFilter(ptr noundef %0, i32 noundef %spec.select, float noundef %conv, i32 noundef 1, ptr noundef %1) #14, !dbg !995
  call void @llvm.dbg.value(metadata ptr %call, metadata !968, metadata !DIExpression()), !dbg !977
  %cmp9 = icmp eq ptr %call, null, !dbg !996
  br i1 %cmp9, label %if.then11, label %if.end16, !dbg !998

if.then11:                                        ; preds = %if.end7
  %2 = load ptr, ptr %exception, align 8, !dbg !999, !tbaa !829
  %call13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1277, i32 noundef 455, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #14, !dbg !1001
  store i32 1, ptr %filter1, align 8, !dbg !1002, !tbaa !985
  store i32 1, ptr %do_interpolate, align 8, !dbg !1003, !tbaa !980
  br label %cleanup, !dbg !1004

if.end16:                                         ; preds = %if.end7
  %call17 = tail call float @GetResizeFilterSupport(ptr noundef nonnull %call) #14, !dbg !1005
  %conv18 = fpext float %call17 to double, !dbg !1005
  %support = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 20, !dbg !1006
  store double %conv18, ptr %support, align 8, !dbg !1007, !tbaa !1008
  %mul = fmul double %conv18, 3.125000e-02, !dbg !1009
  call void @llvm.dbg.value(metadata double %mul, metadata !971, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 0, metadata !969, metadata !DIExpression()), !dbg !1010
  br label %for.body, !dbg !1011

for.body:                                         ; preds = %if.end16, %for.body
  %indvars.iv = phi i64 [ 0, %if.end16 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !969, metadata !DIExpression()), !dbg !1010
  %3 = trunc i64 %indvars.iv to i32, !dbg !1013
  %conv23 = sitofp i32 %3 to double, !dbg !1013
  %call24 = tail call double @sqrt(double noundef %conv23) #14, !dbg !1015
  %mul25 = fmul double %mul, %call24, !dbg !1016
  %conv26 = fptrunc double %mul25 to float, !dbg !1015
  %call27 = tail call float @GetResizeFilterWeight(ptr noundef nonnull %call, float noundef %conv26) #14, !dbg !1017
  %conv28 = fpext float %call27 to double, !dbg !1018
  %arrayidx = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 19, i64 %indvars.iv, !dbg !1019
  store double %conv28, ptr %arrayidx, align 8, !dbg !1020, !tbaa !1021
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !969, metadata !DIExpression()), !dbg !1010
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024, !dbg !1023
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1011, !llvm.loop !1024

for.end:                                          ; preds = %for.body
  %call29 = tail call ptr @DestroyResizeFilter(ptr noundef nonnull %call) #14, !dbg !1028
  call void @llvm.dbg.value(metadata ptr %call29, metadata !968, metadata !DIExpression()), !dbg !977
  tail call void @ScaleResampleFilter(ptr noundef nonnull %resample_filter, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00), !dbg !1029
  %4 = load ptr, ptr %image, align 8, !dbg !1030, !tbaa !836
  %call31 = tail call ptr @GetImageArtifact(ptr noundef %4, ptr noundef nonnull @.str.7) #14, !dbg !1031
  %call32 = tail call i32 @IsMagickTrue(ptr noundef %call31) #14, !dbg !1032
  %tobool.not = icmp eq i32 %call32, 0, !dbg !1032
  br i1 %tobool.not, label %cleanup, label %if.then33, !dbg !1033

if.then33:                                        ; preds = %for.end
  %puts = tail call i32 @puts(ptr nonnull @str.24), !dbg !1034
  %5 = load i32, ptr %filter1, align 8, !dbg !1035, !tbaa !985
  %conv38 = zext i32 %5 to i64, !dbg !1036
  %call39 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %conv38) #14, !dbg !1037
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i32 noundef 1024, ptr noundef %call39), !dbg !1038
  %puts98 = tail call i32 @puts(ptr nonnull @str.24), !dbg !1039
  %puts99 = tail call i32 @puts(ptr nonnull @str.18), !dbg !1040
  %puts100 = tail call i32 @puts(ptr nonnull @str.19), !dbg !1041
  %puts101 = tail call i32 @puts(ptr nonnull @str.24), !dbg !1042
  %puts102 = tail call i32 @puts(ptr nonnull @str.21), !dbg !1043
  %puts103 = tail call i32 @puts(ptr nonnull @str.22), !dbg !1044
  %puts104 = tail call i32 @puts(ptr nonnull @str.23), !dbg !1045
  %puts105 = tail call i32 @puts(ptr nonnull @str.24), !dbg !1046
  %6 = load double, ptr %support, align 8, !dbg !1047, !tbaa !1008
  %mul51 = fmul double %6, 3.125000e-02, !dbg !1048
  call void @llvm.dbg.value(metadata double %mul51, metadata !976, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !1049
  br label %for.body55, !dbg !1050

for.body55:                                       ; preds = %if.then33, %for.body55
  %indvars.iv110 = phi i64 [ 0, %if.then33 ], [ %indvars.iv.next111, %for.body55 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv110, metadata !972, metadata !DIExpression()), !dbg !1049
  %call56 = tail call i32 @GetMagickPrecision() #14, !dbg !1052
  %7 = trunc i64 %indvars.iv110 to i32, !dbg !1054
  %conv57 = sitofp i32 %7 to double, !dbg !1054
  %call58 = tail call double @sqrt(double noundef %conv57) #14, !dbg !1055
  %mul59 = fmul double %mul51, %call58, !dbg !1056
  %call60 = tail call i32 @GetMagickPrecision() #14, !dbg !1057
  %arrayidx63 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 19, i64 %indvars.iv110, !dbg !1058
  %8 = load double, ptr %arrayidx63, align 8, !dbg !1058, !tbaa !1021
  %call64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i32 noundef %call56, double noundef %mul59, i32 noundef %call60, double noundef %8), !dbg !1059
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next111, metadata !972, metadata !DIExpression()), !dbg !1049
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 1024, !dbg !1061
  br i1 %exitcond113.not, label %for.end67, label %for.body55, !dbg !1050, !llvm.loop !1062

for.end67:                                        ; preds = %for.body55
  %puts106 = tail call i32 @puts(ptr nonnull @str.25), !dbg !1064
  br label %cleanup, !dbg !1065

cleanup:                                          ; preds = %for.end, %for.end67, %if.then11, %if.then5
  ret void, !dbg !1066
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetResampleFilterInterpolateMethod(ptr nocapture noundef %resample_filter, i32 noundef %method) local_unnamed_addr #0 !dbg !866 {
entry:
  call void @llvm.dbg.value(metadata ptr %resample_filter, metadata !865, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 %method, metadata !871, metadata !DIExpression()), !dbg !1067
  %debug = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 3, !dbg !1068
  %0 = load i32, ptr %debug, align 8, !dbg !1068, !tbaa !843
  %cmp.not = icmp eq i32 %0, 0, !dbg !1069
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1070

if.then:                                          ; preds = %entry
  %image = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1071
  %1 = load ptr, ptr %image, align 8, !dbg !1071, !tbaa !836
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !1072
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1423, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #14, !dbg !1073
  br label %if.end, !dbg !1074

if.end:                                           ; preds = %if.then, %entry
  %interpolate = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 5, !dbg !1075
  store i32 %method, ptr %interpolate, align 8, !dbg !1076, !tbaa !884
  ret i32 1, !dbg !1077
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetResampleFilterVirtualPixelMethod(ptr nocapture noundef %resample_filter, i32 noundef %method) local_unnamed_addr #0 !dbg !887 {
entry:
  call void @llvm.dbg.value(metadata ptr %resample_filter, metadata !886, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 %method, metadata !892, metadata !DIExpression()), !dbg !1078
  %debug = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 3, !dbg !1079
  %0 = load i32, ptr %debug, align 8, !dbg !1079, !tbaa !843
  %cmp.not = icmp eq i32 %0, 0, !dbg !1080
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1081

if.then:                                          ; preds = %entry
  %image = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1082
  %1 = load ptr, ptr %image, align 8, !dbg !1082, !tbaa !836
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !1083
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1462, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #14, !dbg !1084
  br label %if.end, !dbg !1085

if.end:                                           ; preds = %if.then, %entry
  %virtual_pixel = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 6, !dbg !1086
  store i32 %method, ptr %virtual_pixel, align 4, !dbg !1087, !tbaa !905
  %cmp1.not = icmp eq i32 %method, 0, !dbg !1088
  br i1 %cmp1.not, label %if.end4, label %if.then2, !dbg !1089

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %resample_filter, align 8, !dbg !1090, !tbaa !839
  %call3 = tail call i32 @SetCacheViewVirtualPixelMethod(ptr noundef %2, i32 noundef %method) #14, !dbg !1091
  br label %if.end4, !dbg !1092

if.end4:                                          ; preds = %if.then2, %if.end
  ret i32 1, !dbg !1093
}

declare !dbg !1094 i32 @GetImageVirtualPixelMethod(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyResampleFilter(ptr noundef %resample_filter) local_unnamed_addr #0 !dbg !1097 {
entry:
  call void @llvm.dbg.value(metadata ptr %resample_filter, metadata !1101, metadata !DIExpression()), !dbg !1102
  %debug = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 3, !dbg !1103
  %0 = load i32, ptr %debug, align 8, !dbg !1103, !tbaa !843
  %cmp.not = icmp eq i32 %0, 0, !dbg !1105
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1106

if.then:                                          ; preds = %entry
  %image = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1107
  %1 = load ptr, ptr %image, align 8, !dbg !1107, !tbaa !836
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !1108
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #14, !dbg !1109
  br label %if.end, !dbg !1110

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %resample_filter, align 8, !dbg !1111, !tbaa !839
  %call1 = tail call ptr @DestroyCacheView(ptr noundef %2) #14, !dbg !1112
  store ptr %call1, ptr %resample_filter, align 8, !dbg !1113, !tbaa !839
  %image3 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1114
  %3 = load ptr, ptr %image3, align 8, !dbg !1114, !tbaa !836
  %call4 = tail call ptr @DestroyImage(ptr noundef %3) #14, !dbg !1115
  store ptr %call4, ptr %image3, align 8, !dbg !1116, !tbaa !836
  %signature = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 21, !dbg !1117
  store i64 -2880220588, ptr %signature, align 8, !dbg !1118, !tbaa !846
  %call6 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %resample_filter) #14, !dbg !1119
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1101, metadata !DIExpression()), !dbg !1102
  ret ptr %call6, !dbg !1120
}

declare !dbg !1121 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !1124 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !1125 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ResamplePixelColor(ptr noundef %resample_filter, double noundef %u0, double noundef %v0, ptr noundef %pixel) local_unnamed_addr #0 !dbg !1128 {
entry:
  call void @llvm.dbg.value(metadata ptr %resample_filter, metadata !1132, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %u0, metadata !1133, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %v0, metadata !1134, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1135, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 1, metadata !1136, metadata !DIExpression()), !dbg !1161
  %do_interpolate = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 9, !dbg !1162
  %0 = load i32, ptr %do_interpolate, align 8, !dbg !1162, !tbaa !980
  %tobool.not = icmp eq i32 %0, 0, !dbg !1164
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1165

if.then:                                          ; preds = %entry
  %image = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1166
  %1 = load ptr, ptr %image, align 8, !dbg !1166, !tbaa !836
  %2 = load ptr, ptr %resample_filter, align 8, !dbg !1168, !tbaa !839
  %interpolate = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 5, !dbg !1169
  %3 = load i32, ptr %interpolate, align 8, !dbg !1169, !tbaa !884
  %exception = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 2, !dbg !1170
  %4 = load ptr, ptr %exception, align 8, !dbg !1170, !tbaa !829
  %call = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %u0, double noundef %v0, ptr noundef %pixel, ptr noundef %4) #14, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %call, metadata !1136, metadata !DIExpression()), !dbg !1161
  br label %cleanup496, !dbg !1172

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1142, metadata !DIExpression()), !dbg !1161
  %virtual_pixel = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 6, !dbg !1173
  %5 = load i32, ptr %virtual_pixel, align 4, !dbg !1173, !tbaa !905
  switch i32 %5, label %if.end180 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 9, label %sw.bb
    i32 0, label %sw.bb22
    i32 4, label %sw.bb22
    i32 13, label %sw.bb80
    i32 14, label %sw.bb97
    i32 3, label %sw.bb114
  ], !dbg !1174

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %limit_reached = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 8, !dbg !1175
  %6 = load i32, ptr %limit_reached, align 4, !dbg !1175, !tbaa !1178
  %tobool1.not = icmp eq i32 %6, 0, !dbg !1179
  br i1 %tobool1.not, label %lor.lhs.false, label %if.then175, !dbg !1180

lor.lhs.false:                                    ; preds = %sw.bb
  %Ulimit = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 16, !dbg !1181
  %7 = load double, ptr %Ulimit, align 8, !dbg !1181, !tbaa !1182
  %add = fadd double %7, %u0, !dbg !1183
  %cmp = fcmp olt double %add, 0.000000e+00, !dbg !1184
  br i1 %cmp, label %if.then175, label %lor.lhs.false2, !dbg !1185

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %sub = fsub double %u0, %7, !dbg !1186
  %image4 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1187
  %8 = load ptr, ptr %image4, align 8, !dbg !1187, !tbaa !836
  %columns = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 7, !dbg !1188
  %9 = load i64, ptr %columns, align 8, !dbg !1188, !tbaa !848
  %conv = uitofp i64 %9 to double, !dbg !1189
  %sub5 = fadd double %conv, -1.000000e+00, !dbg !1190
  %cmp6 = fcmp ogt double %sub, %sub5, !dbg !1191
  br i1 %cmp6, label %if.then175, label %lor.lhs.false8, !dbg !1192

lor.lhs.false8:                                   ; preds = %lor.lhs.false2
  %Vlimit = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 15, !dbg !1193
  %10 = load double, ptr %Vlimit, align 8, !dbg !1193, !tbaa !1194
  %add9 = fadd double %10, %v0, !dbg !1195
  %cmp10 = fcmp olt double %add9, 0.000000e+00, !dbg !1196
  br i1 %cmp10, label %if.then175, label %lor.lhs.false12, !dbg !1197

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %sub14 = fsub double %v0, %10, !dbg !1198
  %rows = getelementptr inbounds %struct._Image, ptr %8, i64 0, i32 8, !dbg !1199
  %11 = load i64, ptr %rows, align 8, !dbg !1199, !tbaa !850
  %conv16 = uitofp i64 %11 to double, !dbg !1200
  %sub17 = fadd double %conv16, -1.000000e+00, !dbg !1201
  %cmp18 = fcmp ogt double %sub14, %sub17, !dbg !1202
  br i1 %cmp18, label %if.then175, label %if.end180, !dbg !1203

sw.bb22:                                          ; preds = %if.end, %if.end
  %Ulimit23 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 16, !dbg !1204
  %12 = load double, ptr %Ulimit23, align 8, !dbg !1204, !tbaa !1182
  %add24 = fadd double %12, %u0, !dbg !1206
  %cmp25 = fcmp olt double %add24, 0.000000e+00, !dbg !1207
  br i1 %cmp25, label %land.lhs.true, label %sw.bb22.lor.lhs.false45_crit_edge, !dbg !1208

sw.bb22.lor.lhs.false45_crit_edge:                ; preds = %sw.bb22
  %image48.phi.trans.insert = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1
  %.pre837 = load ptr, ptr %image48.phi.trans.insert, align 8, !dbg !1209, !tbaa !836
  br label %lor.lhs.false45, !dbg !1208

land.lhs.true:                                    ; preds = %sw.bb22
  %Vlimit27 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 15, !dbg !1210
  %13 = load double, ptr %Vlimit27, align 8, !dbg !1210, !tbaa !1194
  %add28 = fadd double %13, %v0, !dbg !1211
  %cmp29 = fcmp olt double %add28, 0.000000e+00, !dbg !1212
  br i1 %cmp29, label %if.then175, label %land.lhs.true36, !dbg !1213

land.lhs.true36:                                  ; preds = %land.lhs.true
  %sub38 = fsub double %v0, %13, !dbg !1214
  %image39 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1215
  %14 = load ptr, ptr %image39, align 8, !dbg !1215, !tbaa !836
  %rows40 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8, !dbg !1216
  %15 = load i64, ptr %rows40, align 8, !dbg !1216, !tbaa !850
  %conv41 = uitofp i64 %15 to double, !dbg !1217
  %sub42 = fadd double %conv41, -1.000000e+00, !dbg !1218
  %cmp43 = fcmp ogt double %sub38, %sub42, !dbg !1219
  br i1 %cmp43, label %if.then175, label %lor.lhs.false45, !dbg !1220

lor.lhs.false45:                                  ; preds = %sw.bb22.lor.lhs.false45_crit_edge, %land.lhs.true36
  %16 = phi ptr [ %.pre837, %sw.bb22.lor.lhs.false45_crit_edge ], [ %14, %land.lhs.true36 ], !dbg !1209
  %sub47 = fsub double %u0, %12, !dbg !1221
  %columns49 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 7, !dbg !1222
  %17 = load i64, ptr %columns49, align 8, !dbg !1222, !tbaa !848
  %conv50 = uitofp i64 %17 to double, !dbg !1223
  %sub51 = fadd double %conv50, -1.000000e+00, !dbg !1224
  %cmp52 = fcmp ogt double %sub47, %sub51, !dbg !1225
  br i1 %cmp52, label %land.lhs.true54, label %if.end180, !dbg !1226

land.lhs.true54:                                  ; preds = %lor.lhs.false45
  %Vlimit55 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 15, !dbg !1227
  %18 = load double, ptr %Vlimit55, align 8, !dbg !1227, !tbaa !1194
  %add56 = fadd double %18, %v0, !dbg !1228
  %cmp57 = fcmp olt double %add56, 0.000000e+00, !dbg !1229
  br i1 %cmp57, label %if.then175, label %land.lhs.true68, !dbg !1230

land.lhs.true68:                                  ; preds = %land.lhs.true54
  %sub70 = fsub double %v0, %18, !dbg !1231
  %rows72 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8, !dbg !1232
  %19 = load i64, ptr %rows72, align 8, !dbg !1232, !tbaa !850
  %conv73 = uitofp i64 %19 to double, !dbg !1233
  %sub74 = fadd double %conv73, -1.000000e+00, !dbg !1234
  %cmp75 = fcmp ogt double %sub70, %sub74, !dbg !1235
  br i1 %cmp75, label %if.then175, label %if.end180, !dbg !1236

sw.bb80:                                          ; preds = %if.end
  %Vlimit81 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 15, !dbg !1237
  %20 = load double, ptr %Vlimit81, align 8, !dbg !1237, !tbaa !1194
  %add82 = fadd double %20, %v0, !dbg !1239
  %cmp83 = fcmp olt double %add82, 0.000000e+00, !dbg !1240
  br i1 %cmp83, label %if.then175, label %lor.lhs.false85, !dbg !1241

lor.lhs.false85:                                  ; preds = %sw.bb80
  %sub87 = fsub double %v0, %20, !dbg !1242
  %image88 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1243
  %21 = load ptr, ptr %image88, align 8, !dbg !1243, !tbaa !836
  %rows89 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8, !dbg !1244
  %22 = load i64, ptr %rows89, align 8, !dbg !1244, !tbaa !850
  %conv90 = uitofp i64 %22 to double, !dbg !1245
  %sub91 = fadd double %conv90, -1.000000e+00, !dbg !1246
  %cmp92 = fcmp ogt double %sub87, %sub91, !dbg !1247
  br i1 %cmp92, label %if.then175, label %if.end180, !dbg !1248

sw.bb97:                                          ; preds = %if.end
  %Ulimit98 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 16, !dbg !1249
  %23 = load double, ptr %Ulimit98, align 8, !dbg !1249, !tbaa !1182
  %add99 = fadd double %23, %u0, !dbg !1251
  %cmp100 = fcmp olt double %add99, 0.000000e+00, !dbg !1252
  br i1 %cmp100, label %if.then175, label %lor.lhs.false102, !dbg !1253

lor.lhs.false102:                                 ; preds = %sw.bb97
  %sub104 = fsub double %u0, %23, !dbg !1254
  %image105 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1255
  %24 = load ptr, ptr %image105, align 8, !dbg !1255, !tbaa !836
  %columns106 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 7, !dbg !1256
  %25 = load i64, ptr %columns106, align 8, !dbg !1256, !tbaa !848
  %conv107 = uitofp i64 %25 to double, !dbg !1257
  %sub108 = fadd double %conv107, -1.000000e+00, !dbg !1258
  %cmp109 = fcmp ogt double %sub104, %sub108, !dbg !1259
  br i1 %cmp109, label %if.then175, label %if.end180, !dbg !1260

sw.bb114:                                         ; preds = %if.end
  %Ulimit115 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 16, !dbg !1261
  %26 = load double, ptr %Ulimit115, align 8, !dbg !1261, !tbaa !1182
  %add116 = fadd double %26, %u0, !dbg !1263
  %cmp117 = fcmp olt double %add116, -3.200000e+01, !dbg !1264
  br i1 %cmp117, label %land.lhs.true119, label %sw.bb114.lor.lhs.false138_crit_edge, !dbg !1265

sw.bb114.lor.lhs.false138_crit_edge:              ; preds = %sw.bb114
  %image141.phi.trans.insert = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1
  %.pre = load ptr, ptr %image141.phi.trans.insert, align 8, !dbg !1266, !tbaa !836
  br label %lor.lhs.false138, !dbg !1265

land.lhs.true119:                                 ; preds = %sw.bb114
  %Vlimit120 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 15, !dbg !1267
  %27 = load double, ptr %Vlimit120, align 8, !dbg !1267, !tbaa !1194
  %add121 = fadd double %27, %v0, !dbg !1268
  %cmp122 = fcmp olt double %add121, -3.200000e+01, !dbg !1269
  br i1 %cmp122, label %if.then175, label %land.lhs.true129, !dbg !1270

land.lhs.true129:                                 ; preds = %land.lhs.true119
  %sub131 = fsub double %v0, %27, !dbg !1271
  %image132 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1272
  %28 = load ptr, ptr %image132, align 8, !dbg !1272, !tbaa !836
  %rows133 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8, !dbg !1273
  %29 = load i64, ptr %rows133, align 8, !dbg !1273, !tbaa !850
  %conv134 = uitofp i64 %29 to double, !dbg !1274
  %add135 = fadd double %conv134, 3.100000e+01, !dbg !1275
  %cmp136 = fcmp ogt double %sub131, %add135, !dbg !1276
  br i1 %cmp136, label %if.then175, label %lor.lhs.false138, !dbg !1277

lor.lhs.false138:                                 ; preds = %sw.bb114.lor.lhs.false138_crit_edge, %land.lhs.true129
  %30 = phi ptr [ %.pre, %sw.bb114.lor.lhs.false138_crit_edge ], [ %28, %land.lhs.true129 ], !dbg !1266
  %sub140 = fsub double %u0, %26, !dbg !1278
  %columns142 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7, !dbg !1279
  %31 = load i64, ptr %columns142, align 8, !dbg !1279, !tbaa !848
  %conv143 = uitofp i64 %31 to double, !dbg !1280
  %add144 = fadd double %conv143, 3.100000e+01, !dbg !1281
  %cmp145 = fcmp ogt double %sub140, %add144, !dbg !1282
  br i1 %cmp145, label %land.lhs.true147, label %if.end180, !dbg !1283

land.lhs.true147:                                 ; preds = %lor.lhs.false138
  %Vlimit148 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 15, !dbg !1284
  %32 = load double, ptr %Vlimit148, align 8, !dbg !1284, !tbaa !1194
  %add149 = fadd double %32, %v0, !dbg !1285
  %cmp150 = fcmp olt double %add149, -3.200000e+01, !dbg !1286
  br i1 %cmp150, label %if.then175, label %land.lhs.true161, !dbg !1287

land.lhs.true161:                                 ; preds = %land.lhs.true147
  %sub163 = fsub double %v0, %32, !dbg !1288
  %rows165 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8, !dbg !1289
  %33 = load i64, ptr %rows165, align 8, !dbg !1289, !tbaa !850
  %conv166 = uitofp i64 %33 to double, !dbg !1290
  %add167 = fadd double %conv166, 3.100000e+01, !dbg !1291
  %cmp168 = fcmp ogt double %sub163, %add167, !dbg !1292
  br i1 %cmp168, label %if.then175, label %if.end180, !dbg !1293

if.then175:                                       ; preds = %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false2, %lor.lhs.false, %sw.bb, %land.lhs.true68, %land.lhs.true54, %land.lhs.true36, %land.lhs.true, %lor.lhs.false85, %sw.bb80, %lor.lhs.false102, %sw.bb97, %land.lhs.true161, %land.lhs.true147, %land.lhs.true129, %land.lhs.true119
  %image176 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1294
  %34 = load ptr, ptr %image176, align 8, !dbg !1294, !tbaa !836
  %35 = load ptr, ptr %resample_filter, align 8, !dbg !1297, !tbaa !839
  %exception178 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 2, !dbg !1298
  %36 = load ptr, ptr %exception178, align 8, !dbg !1298, !tbaa !829
  %call179 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %34, ptr noundef %35, i32 noundef 5, double noundef %u0, double noundef %v0, ptr noundef %pixel, ptr noundef %36) #14, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %call179, metadata !1136, metadata !DIExpression()), !dbg !1161
  br label %cleanup496, !dbg !1300

if.end180:                                        ; preds = %lor.lhs.false138, %lor.lhs.false45, %lor.lhs.false12, %land.lhs.true68, %lor.lhs.false85, %lor.lhs.false102, %land.lhs.true161, %if.end
  %limit_reached181 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 8, !dbg !1301
  %37 = load i32, ptr %limit_reached181, align 4, !dbg !1301, !tbaa !1178
  %tobool182.not = icmp eq i32 %37, 0, !dbg !1302
  br i1 %tobool182.not, label %if.end312, label %if.then183, !dbg !1303

if.then183:                                       ; preds = %if.end180
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb185
    i32 4, label %sw.bb185
    i32 3, label %sw.bb185
    i32 15, label %sw.bb185
    i32 16, label %sw.bb185
    i32 13, label %sw.bb190
    i32 14, label %sw.bb190
  ], !dbg !1304

sw.bb185:                                         ; preds = %if.then183, %if.then183, %if.then183, %if.then183, %if.then183
  %image186 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1305
  %38 = load ptr, ptr %image186, align 8, !dbg !1305, !tbaa !836
  %39 = load ptr, ptr %resample_filter, align 8, !dbg !1306, !tbaa !839
  %exception188 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 2, !dbg !1307
  %40 = load ptr, ptr %exception188, align 8, !dbg !1307, !tbaa !829
  %call189 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %38, ptr noundef %39, i32 noundef 1, double noundef %u0, double noundef %v0, ptr noundef %pixel, ptr noundef %40) #14, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %call189, metadata !1136, metadata !DIExpression()), !dbg !1161
  br label %cleanup496, !dbg !1309

sw.bb190:                                         ; preds = %if.then183, %if.then183
  %image191 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1310
  %41 = load ptr, ptr %image191, align 8, !dbg !1310, !tbaa !836
  %42 = load ptr, ptr %resample_filter, align 8, !dbg !1311, !tbaa !839
  %exception193 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 2, !dbg !1312
  %43 = load ptr, ptr %exception193, align 8, !dbg !1312, !tbaa !829
  %call194 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %41, ptr noundef %42, i32 noundef 5, double noundef -1.000000e+00, double noundef -1.000000e+00, ptr noundef %pixel, ptr noundef %43) #14, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %call194, metadata !1136, metadata !DIExpression()), !dbg !1161
  br label %cleanup496, !dbg !1314

sw.default:                                       ; preds = %if.then183
  %average_defined = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 10, !dbg !1315
  %44 = load i32, ptr %average_defined, align 4, !dbg !1315, !tbaa !857
  %cmp196 = icmp eq i32 %44, 0, !dbg !1316
  br i1 %cmp196, label %if.then198, label %if.end309, !dbg !1317

if.then198:                                       ; preds = %sw.default
  %image199 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1318
  %45 = load ptr, ptr %image199, align 8, !dbg !1318, !tbaa !836
  %average_pixel = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 11, !dbg !1319
  tail call void @GetMagickPixelPacket(ptr noundef %45, ptr noundef nonnull %average_pixel) #14, !dbg !1320
  store i32 1, ptr %average_defined, align 4, !dbg !1321, !tbaa !857
  %46 = load ptr, ptr %image199, align 8, !dbg !1322, !tbaa !836
  %exception202 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 2, !dbg !1323
  %47 = load ptr, ptr %exception202, align 8, !dbg !1323, !tbaa !829
  %call203 = tail call ptr @ResizeImage(ptr noundef %46, i64 noundef 1, i64 noundef 1, i32 noundef 2, double noundef 1.000000e+00, ptr noundef %47) #14, !dbg !1324
  call void @llvm.dbg.value(metadata ptr %call203, metadata !1154, metadata !DIExpression()), !dbg !1325
  %cmp204 = icmp eq ptr %call203, null, !dbg !1326
  br i1 %cmp204, label %if.then206, label %if.end208, !dbg !1328

if.then206:                                       ; preds = %if.then198
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %average_pixel, i64 56, i1 false), !dbg !1329, !tbaa.struct !1331
  br label %cleanup496, !dbg !1335

if.end208:                                        ; preds = %if.then198
  %exception209 = getelementptr inbounds %struct._Image, ptr %call203, i64 0, i32 58, !dbg !1336
  %call210 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call203, ptr noundef nonnull %exception209) #14, !dbg !1337
  call void @llvm.dbg.value(metadata ptr %call210, metadata !1160, metadata !DIExpression()), !dbg !1325
  %48 = load ptr, ptr %exception202, align 8, !dbg !1338, !tbaa !829
  %call212 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call210, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %48) #18, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %call212, metadata !1152, metadata !DIExpression()), !dbg !1161
  %cmp213 = icmp eq ptr %call212, null, !dbg !1340
  br i1 %cmp213, label %if.then215, label %if.end219, !dbg !1342

if.then215:                                       ; preds = %if.end208
  %call216 = tail call ptr @DestroyCacheView(ptr noundef %call210) #14, !dbg !1343
  call void @llvm.dbg.value(metadata ptr %call216, metadata !1160, metadata !DIExpression()), !dbg !1325
  %call217 = tail call ptr @DestroyImage(ptr noundef nonnull %call203) #14, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %call217, metadata !1154, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %average_pixel, i64 56, i1 false), !dbg !1346, !tbaa.struct !1331
  br label %cleanup496, !dbg !1347

if.end219:                                        ; preds = %if.end208
  %call220 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call210) #14, !dbg !1348
  call void @llvm.dbg.value(metadata ptr %call220, metadata !1153, metadata !DIExpression()), !dbg !1161
  %49 = load ptr, ptr %image199, align 8, !dbg !1349, !tbaa !836
  %50 = getelementptr i8, ptr %49, i64 4, !dbg !1350
  %.val = load i32, ptr %50, align 4, !dbg !1350, !tbaa !1351
  tail call fastcc void @SetMagickPixelPacket(i32 %.val, ptr noundef nonnull %call212, ptr noundef %call220, ptr noundef nonnull %average_pixel), !dbg !1350
  %call223 = tail call ptr @DestroyCacheView(ptr noundef %call210) #14, !dbg !1352
  call void @llvm.dbg.value(metadata ptr %call223, metadata !1160, metadata !DIExpression()), !dbg !1325
  %call224 = tail call ptr @DestroyImage(ptr noundef nonnull %call203) #14, !dbg !1353
  call void @llvm.dbg.value(metadata ptr %call224, metadata !1154, metadata !DIExpression()), !dbg !1325
  %51 = load i32, ptr %virtual_pixel, align 4, !dbg !1354, !tbaa !905
  %cmp226 = icmp eq i32 %51, 17, !dbg !1356
  br i1 %cmp226, label %if.then228, label %if.end309, !dbg !1357

if.then228:                                       ; preds = %if.end219
  %opacity = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 11, i32 8, !dbg !1358
  %52 = load float, ptr %opacity, align 4, !dbg !1358, !tbaa !1360
  %sub230 = fsub float 6.553500e+04, %52, !dbg !1361
  %conv231 = fpext float %sub230 to double, !dbg !1362
  %mul = fmul double %conv231, 0x3EF0001000100010, !dbg !1363
  call void @llvm.dbg.value(metadata double %mul, metadata !1151, metadata !DIExpression()), !dbg !1161
  %red = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 11, i32 5, !dbg !1364
  %53 = load float, ptr %red, align 8, !dbg !1365, !tbaa !1366
  %conv233 = fpext float %53 to double, !dbg !1365
  %mul234 = fmul double %mul, %conv233, !dbg !1365
  %conv235 = fptrunc double %mul234 to float, !dbg !1365
  %green = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 11, i32 6, !dbg !1367
  %54 = load float, ptr %green, align 4, !dbg !1368, !tbaa !1369
  %conv237 = fpext float %54 to double, !dbg !1368
  %mul238 = fmul double %mul, %conv237, !dbg !1368
  %conv239 = fptrunc double %mul238 to float, !dbg !1368
  %blue = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 11, i32 7, !dbg !1370
  %55 = load float, ptr %blue, align 8, !dbg !1371, !tbaa !1372
  %conv241 = fpext float %55 to double, !dbg !1371
  %mul242 = fmul double %mul, %conv241, !dbg !1371
  %conv243 = fptrunc double %mul242 to float, !dbg !1371
  call void @llvm.dbg.value(metadata double %mul, metadata !1149, metadata !DIExpression()), !dbg !1161
  %56 = load ptr, ptr %image199, align 8, !dbg !1373, !tbaa !836
  %opacity245 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 12, i32 3, !dbg !1374
  %57 = load i16, ptr %opacity245, align 2, !dbg !1374, !tbaa !1375
  %58 = xor i16 %57, -1, !dbg !1376
  %conv249 = uitofp i16 %58 to double, !dbg !1377
  %mul250 = fmul double %conv249, 0x3EF0001000100010, !dbg !1378
  call void @llvm.dbg.value(metadata double %mul250, metadata !1151, metadata !DIExpression()), !dbg !1161
  %red253 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 12, i32 2, !dbg !1379
  %59 = load i16, ptr %red253, align 4, !dbg !1379, !tbaa !1380
  %conv255 = uitofp i16 %59 to double, !dbg !1381
  %conv259 = fpext float %conv235 to double, !dbg !1382
  %60 = tail call double @llvm.fmuladd.f64(double %mul250, double %conv255, double %conv259), !dbg !1382
  %conv260 = fptrunc double %60 to float, !dbg !1382
  %green263 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 12, i32 1, !dbg !1383
  %61 = load i16, ptr %green263, align 2, !dbg !1383, !tbaa !1384
  %conv265 = uitofp i16 %61 to double, !dbg !1385
  %conv269 = fpext float %conv239 to double, !dbg !1386
  %62 = tail call double @llvm.fmuladd.f64(double %mul250, double %conv265, double %conv269), !dbg !1386
  %conv270 = fptrunc double %62 to float, !dbg !1386
  %background_color272 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 12, !dbg !1387
  %63 = load i16, ptr %background_color272, align 8, !dbg !1388, !tbaa !1389
  %conv275 = uitofp i16 %63 to double, !dbg !1390
  %conv279 = fpext float %conv243 to double, !dbg !1391
  %64 = tail call double @llvm.fmuladd.f64(double %mul250, double %conv275, double %conv279), !dbg !1391
  %conv280 = fptrunc double %64 to float, !dbg !1391
  %conv285 = uitofp i16 %57 to float, !dbg !1392
  %add288 = fadd float %52, %conv285, !dbg !1393
  %add289 = fadd double %mul, %mul250, !dbg !1394
  call void @llvm.dbg.value(metadata double %add289, metadata !1149, metadata !DIExpression()), !dbg !1161
  %conv292 = fpext float %conv260 to double, !dbg !1395
  %div = fdiv double %conv292, %add289, !dbg !1395
  %conv293 = fptrunc double %div to float, !dbg !1395
  store float %conv293, ptr %red, align 8, !dbg !1395, !tbaa !1366
  %conv296 = fpext float %conv270 to double, !dbg !1396
  %div297 = fdiv double %conv296, %add289, !dbg !1396
  %conv298 = fptrunc double %div297 to float, !dbg !1396
  store float %conv298, ptr %green, align 4, !dbg !1396, !tbaa !1369
  %conv301 = fpext float %conv280 to double, !dbg !1397
  %div302 = fdiv double %conv301, %add289, !dbg !1397
  %conv303 = fptrunc double %div302 to float, !dbg !1397
  store float %conv303, ptr %blue, align 8, !dbg !1397, !tbaa !1372
  %div306 = fmul float %add288, 5.000000e-01, !dbg !1398
  store float %div306, ptr %opacity, align 4, !dbg !1398, !tbaa !1360
  br label %if.end309, !dbg !1399

if.end309:                                        ; preds = %if.end219, %if.then228, %sw.default
  %average_pixel310 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 11, !dbg !1400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %average_pixel310, i64 56, i1 false), !dbg !1400, !tbaa.struct !1331
  br label %cleanup496, !dbg !1401

if.end312:                                        ; preds = %if.end180
  call void @llvm.dbg.value(metadata i64 0, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1150, metadata !DIExpression()), !dbg !1161
  %blue313 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !1402
  store float 0.000000e+00, ptr %blue313, align 8, !dbg !1403, !tbaa !1404
  %green314 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !1405
  store float 0.000000e+00, ptr %green314, align 4, !dbg !1406, !tbaa !1407
  %red315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !1408
  store float 0.000000e+00, ptr %red315, align 8, !dbg !1409, !tbaa !1410
  %matte = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 2, !dbg !1411
  %65 = load i32, ptr %matte, align 8, !dbg !1411, !tbaa !1413
  %cmp316.not = icmp eq i32 %65, 0, !dbg !1414
  br i1 %cmp316.not, label %if.end320, label %if.then318, !dbg !1415

if.then318:                                       ; preds = %if.end312
  %opacity319 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !1416
  store float 0.000000e+00, ptr %opacity319, align 4, !dbg !1417, !tbaa !1418
  br label %if.end320, !dbg !1419

if.end320:                                        ; preds = %if.then318, %if.end312
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1, !dbg !1420
  %66 = load i32, ptr %colorspace, align 4, !dbg !1420, !tbaa !1422
  %cmp321 = icmp eq i32 %66, 12, !dbg !1423
  br i1 %cmp321, label %if.then323, label %if.end324, !dbg !1424

if.then323:                                       ; preds = %if.end320
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9, !dbg !1425
  store float 0.000000e+00, ptr %index, align 8, !dbg !1426, !tbaa !1427
  br label %if.end324, !dbg !1428

if.end324:                                        ; preds = %if.then323, %if.end320
  %Vlimit325 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 15, !dbg !1429
  %67 = load double, ptr %Vlimit325, align 8, !dbg !1429, !tbaa !1194
  %sub326 = fsub double %v0, %67, !dbg !1430
  %68 = tail call double @llvm.ceil.f64(double %sub326), !dbg !1431
  %conv327 = fptosi double %68 to i64, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %conv327, metadata !1139, metadata !DIExpression()), !dbg !1161
  %add329 = fadd double %67, %v0, !dbg !1433
  %69 = tail call double @llvm.floor.f64(double %add329), !dbg !1434
  %conv330 = fptosi double %69 to i64, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %conv330, metadata !1140, metadata !DIExpression()), !dbg !1161
  %slope = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 18, !dbg !1436
  %Uwidth = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 17, !dbg !1437
  %70 = load double, ptr %Uwidth, align 8, !dbg !1437, !tbaa !1438
  call void @llvm.dbg.value(metadata double undef, metadata !1143, metadata !DIExpression()), !dbg !1161
  %mul336 = fmul double %70, 2.000000e+00, !dbg !1439
  %conv337 = fptosi double %mul336 to i64, !dbg !1440
  %add338 = add i64 %conv337, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %add338, metadata !1141, metadata !DIExpression()), !dbg !1161
  %A = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 12, !dbg !1442
  %71 = load double, ptr %A, align 8, !dbg !1442, !tbaa !1443
  %mul339 = fmul double %71, 2.000000e+00, !dbg !1444
  call void @llvm.dbg.value(metadata double %mul339, metadata !1148, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %conv327, metadata !1138, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 0, metadata !1142, metadata !DIExpression()), !dbg !1161
  %cmp340.not822 = icmp sgt i64 %conv327, %conv330, !dbg !1445
  br i1 %cmp340.not822, label %if.then447, label %for.body.lr.ph, !dbg !1448

for.body.lr.ph:                                   ; preds = %if.end324
  %conv331 = sitofp i64 %conv327 to double, !dbg !1449
  %sub332 = fsub double %conv331, %v0, !dbg !1450
  %72 = load double, ptr %slope, align 8, !dbg !1436, !tbaa !1451
  %73 = tail call double @llvm.fmuladd.f64(double %sub332, double %72, double %u0), !dbg !1452
  %sub334 = fsub double %73, %70, !dbg !1453
  call void @llvm.dbg.value(metadata double %sub334, metadata !1143, metadata !DIExpression()), !dbg !1161
  %B = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 13
  %C = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 14
  %exception361 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 2
  %cmp370.not809 = icmp slt i64 %conv337, 0
  %opacity381 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index425 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %74 = tail call double @llvm.ceil.f64(double %sub334), !dbg !1454
  %conv342.us862 = fptosi double %74 to i64, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %conv342.us862, metadata !1137, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %conv342.us862, metadata !1137, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1144, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1144, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1145, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1145, metadata !DIExpression()), !dbg !1161
  br i1 %cmp370.not809, label %for.body.us.preheader, label %for.body.preheader, !dbg !1457

for.body.preheader:                               ; preds = %for.body.lr.ph
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %sub334, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 0, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %conv327, metadata !1138, metadata !DIExpression()), !dbg !1161
  %75 = load double, ptr %B, align 8, !dbg !1459, !tbaa !1460
  %76 = load double, ptr %C, align 8, !dbg !1461, !tbaa !1462
  call void @llvm.dbg.value(metadata double undef, metadata !1146, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1147, metadata !DIExpression()), !dbg !1161
  %77 = load ptr, ptr %resample_filter, align 8, !dbg !1463, !tbaa !839
  %78 = load ptr, ptr %exception361, align 8, !dbg !1464, !tbaa !829
  %call362853 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %77, i64 noundef %conv342.us862, i64 noundef %conv327, i64 noundef %add338, i64 noundef 1, ptr noundef %78) #18, !dbg !1465
  call void @llvm.dbg.value(metadata ptr %call362853, metadata !1152, metadata !DIExpression()), !dbg !1161
  %cmp363854 = icmp eq ptr %call362853, null, !dbg !1466
  br i1 %cmp363854, label %cleanup496, label %if.end366.lr.ph, !dbg !1468

if.end366.lr.ph:                                  ; preds = %for.body.preheader
  %add344852 = fadd double %sub334, %72, !dbg !1469
  call void @llvm.dbg.value(metadata double %add344852, metadata !1143, metadata !DIExpression()), !dbg !1161
  br label %if.end366, !dbg !1468

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  call void @llvm.dbg.value(metadata double undef, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %sub334, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 undef, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %conv327, metadata !1138, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1146, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1147, metadata !DIExpression()), !dbg !1161
  %79 = load ptr, ptr %resample_filter, align 8, !dbg !1463, !tbaa !839
  %80 = load ptr, ptr %exception361, align 8, !dbg !1464, !tbaa !829
  %call362.us863 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %79, i64 noundef %conv342.us862, i64 noundef %conv327, i64 noundef %add338, i64 noundef 1, ptr noundef %80) #18, !dbg !1465
  call void @llvm.dbg.value(metadata ptr %call362.us863, metadata !1152, metadata !DIExpression()), !dbg !1161
  %cmp363.us864 = icmp eq ptr %call362.us863, null, !dbg !1466
  br i1 %cmp363.us864, label %cleanup496, label %if.end366.us, !dbg !1468

if.end366.us:                                     ; preds = %for.body.us.preheader, %if.end366.us.for.body.us_crit_edge
  %v.0823.us866 = phi i64 [ %inc437.us, %if.end366.us.for.body.us_crit_edge ], [ %conv327, %for.body.us.preheader ]
  %u1.0825.us865 = phi double [ %add344.us, %if.end366.us.for.body.us_crit_edge ], [ %sub334, %for.body.us.preheader ]
  %81 = phi double [ %.pre840, %if.end366.us.for.body.us_crit_edge ], [ %72, %for.body.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %v.0823.us866, metadata !1138, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %u1.0825.us865, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1144, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1145, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1147, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1146, metadata !DIExpression()), !dbg !1161
  %82 = load ptr, ptr %resample_filter, align 8, !dbg !1470, !tbaa !839
  %call368.us = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %82) #14, !dbg !1471
  call void @llvm.dbg.value(metadata ptr %call368.us, metadata !1153, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 0, metadata !1137, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata ptr undef, metadata !1152, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1147, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1146, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 undef, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 undef, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %v.0823.us866, metadata !1138, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1161
  %exitcond836.not = icmp eq i64 %v.0823.us866, %conv330, !dbg !1445
  br i1 %exitcond836.not, label %if.then447, label %if.end366.us.for.body.us_crit_edge, !dbg !1448, !llvm.loop !1472

if.end366.us.for.body.us_crit_edge:               ; preds = %if.end366.us
  %inc437.us = add i64 %v.0823.us866, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %inc437.us, metadata !1138, metadata !DIExpression()), !dbg !1161
  %add344.us = fadd double %u1.0825.us865, %81, !dbg !1469
  call void @llvm.dbg.value(metadata double %add344.us, metadata !1143, metadata !DIExpression()), !dbg !1161
  %.pre840 = load double, ptr %slope, align 8, !dbg !1475, !tbaa !1451
  call void @llvm.dbg.value(metadata double undef, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 undef, metadata !1142, metadata !DIExpression()), !dbg !1161
  %83 = tail call double @llvm.ceil.f64(double %add344.us), !dbg !1454
  %conv342.us = fptosi double %83 to i64, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %conv342.us, metadata !1137, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1144, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1145, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1146, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1147, metadata !DIExpression()), !dbg !1161
  %84 = load ptr, ptr %resample_filter, align 8, !dbg !1463, !tbaa !839
  %85 = load ptr, ptr %exception361, align 8, !dbg !1464, !tbaa !829
  %call362.us = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %84, i64 noundef %conv342.us, i64 noundef %inc437.us, i64 noundef %add338, i64 noundef 1, ptr noundef %85) #18, !dbg !1465
  call void @llvm.dbg.value(metadata ptr %call362.us, metadata !1152, metadata !DIExpression()), !dbg !1161
  %cmp363.us = icmp eq ptr %call362.us, null, !dbg !1466
  br i1 %cmp363.us, label %cleanup496, label %if.end366.us, !dbg !1468

if.end366:                                        ; preds = %if.end366.lr.ph, %for.cond369.for.inc436_crit_edge.for.body_crit_edge
  %call362861 = phi ptr [ %call362853, %if.end366.lr.ph ], [ %call362, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %86 = phi double [ %76, %if.end366.lr.ph ], [ %115, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %87 = phi double [ %75, %if.end366.lr.ph ], [ %114, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %add344860 = phi double [ %add344852, %if.end366.lr.ph ], [ %add344, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %conv342859 = phi i64 [ %conv342.us862, %if.end366.lr.ph ], [ %conv342, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %v.0823858 = phi i64 [ %conv327, %if.end366.lr.ph ], [ %inc437, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %hit.1824857 = phi i64 [ 0, %if.end366.lr.ph ], [ %hit.3, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %divisor_c.0826856 = phi double [ 0.000000e+00, %if.end366.lr.ph ], [ %divisor_c.2, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %divisor_m.0827855 = phi double [ 0.000000e+00, %if.end366.lr.ph ], [ %divisor_m.2, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  %88 = phi double [ %71, %if.end366.lr.ph ], [ %.pre839, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %v.0823858, metadata !1138, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %hit.1824857, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_c.0826856, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_m.0827855, metadata !1150, metadata !DIExpression()), !dbg !1161
  %conv345 = sitofp i64 %conv342859 to double, !dbg !1476
  %sub346 = fsub double %conv345, %u0, !dbg !1477
  call void @llvm.dbg.value(metadata double %sub346, metadata !1144, metadata !DIExpression()), !dbg !1161
  %89 = tail call double @llvm.fmuladd.f64(double %sub346, double 2.000000e+00, double 1.000000e+00), !dbg !1478
  %conv347 = sitofp i64 %v.0823858 to double, !dbg !1479
  %sub348 = fsub double %conv347, %v0, !dbg !1480
  call void @llvm.dbg.value(metadata double %sub348, metadata !1145, metadata !DIExpression()), !dbg !1161
  %mul351 = fmul double %sub348, %87, !dbg !1481
  %90 = tail call double @llvm.fmuladd.f64(double %88, double %89, double %mul351), !dbg !1482
  call void @llvm.dbg.value(metadata double %90, metadata !1147, metadata !DIExpression()), !dbg !1161
  %91 = tail call double @llvm.fmuladd.f64(double %88, double %sub346, double %mul351), !dbg !1483
  %mul353 = fmul double %sub348, %86, !dbg !1484
  %mul354 = fmul double %sub348, %mul353, !dbg !1485
  %92 = tail call double @llvm.fmuladd.f64(double %91, double %sub346, double %mul354), !dbg !1486
  call void @llvm.dbg.value(metadata double %92, metadata !1146, metadata !DIExpression()), !dbg !1161
  %93 = load ptr, ptr %resample_filter, align 8, !dbg !1470, !tbaa !839
  %call368 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %93) #14, !dbg !1471
  call void @llvm.dbg.value(metadata ptr %call368, metadata !1153, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 0, metadata !1137, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata ptr %call362861, metadata !1152, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_m.0827855, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_c.0826856, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %90, metadata !1147, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %92, metadata !1146, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %hit.1824857, metadata !1142, metadata !DIExpression()), !dbg !1161
  br label %for.body372, !dbg !1457

for.body372:                                      ; preds = %if.end366, %if.end431
  %indexes.0819 = phi ptr [ %call368, %if.end366 ], [ %incdec.ptr432, %if.end431 ]
  %pixels.0817 = phi ptr [ %call362861, %if.end366 ], [ %incdec.ptr, %if.end431 ]
  %divisor_m.1816 = phi double [ %divisor_m.0827855, %if.end366 ], [ %divisor_m.2, %if.end431 ]
  %divisor_c.1815 = phi double [ %divisor_c.0826856, %if.end366 ], [ %divisor_c.2, %if.end431 ]
  %DQ.0814 = phi double [ %90, %if.end366 ], [ %add434, %if.end431 ]
  %Q.0812 = phi double [ %92, %if.end366 ], [ %add433, %if.end431 ]
  %u.0811 = phi i64 [ 0, %if.end366 ], [ %inc435, %if.end431 ]
  %hit.2810 = phi i64 [ %hit.1824857, %if.end366 ], [ %hit.3, %if.end431 ]
  call void @llvm.dbg.value(metadata ptr %indexes.0819, metadata !1153, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata ptr %pixels.0817, metadata !1152, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_m.1816, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_c.1815, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %DQ.0814, metadata !1147, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %Q.0812, metadata !1146, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %u.0811, metadata !1137, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %hit.2810, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1151, metadata !DIExpression()), !dbg !1161
  %cmp373 = fcmp olt double %Q.0812, 1.024000e+03, !dbg !1487
  br i1 %cmp373, label %if.then375, label %if.end431, !dbg !1491

if.then375:                                       ; preds = %for.body372
  %conv376 = fptosi double %Q.0812 to i32, !dbg !1492
  %idxprom = sext i32 %conv376 to i64, !dbg !1494
  %arrayidx = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 19, i64 %idxprom, !dbg !1494
  %94 = load double, ptr %arrayidx, align 8, !dbg !1494, !tbaa !1021
  call void @llvm.dbg.value(metadata double %94, metadata !1151, metadata !DIExpression()), !dbg !1161
  %opacity377 = getelementptr inbounds %struct._PixelPacket, ptr %pixels.0817, i64 0, i32 3, !dbg !1495
  %95 = load i16, ptr %opacity377, align 2, !dbg !1495, !tbaa !1496
  %conv379 = uitofp i16 %95 to double, !dbg !1497
  %96 = load float, ptr %opacity381, align 4, !dbg !1498, !tbaa !1418
  %conv382 = fpext float %96 to double, !dbg !1498
  %97 = tail call double @llvm.fmuladd.f64(double %94, double %conv379, double %conv382), !dbg !1498
  %conv383 = fptrunc double %97 to float, !dbg !1498
  store float %conv383, ptr %opacity381, align 4, !dbg !1498, !tbaa !1418
  %add384 = fadd double %divisor_m.1816, %94, !dbg !1499
  call void @llvm.dbg.value(metadata double %add384, metadata !1150, metadata !DIExpression()), !dbg !1161
  %98 = load i32, ptr %matte, align 8, !dbg !1500, !tbaa !1413
  %cmp386.not = icmp eq i32 %98, 0, !dbg !1502
  br i1 %cmp386.not, label %if.end396, label %if.then388, !dbg !1503

if.then388:                                       ; preds = %if.then375
  %99 = xor i16 %95, -1, !dbg !1504
  %conv393 = uitofp i16 %99 to double, !dbg !1505
  %mul394 = fmul double %conv393, 0x3EF0001000100010, !dbg !1506
  %mul395 = fmul double %94, %mul394, !dbg !1507
  call void @llvm.dbg.value(metadata double %mul395, metadata !1151, metadata !DIExpression()), !dbg !1161
  br label %if.end396, !dbg !1508

if.end396:                                        ; preds = %if.then388, %if.then375
  %weight.0 = phi double [ %mul395, %if.then388 ], [ %94, %if.then375 ], !dbg !1509
  call void @llvm.dbg.value(metadata double %weight.0, metadata !1151, metadata !DIExpression()), !dbg !1161
  %red397 = getelementptr inbounds %struct._PixelPacket, ptr %pixels.0817, i64 0, i32 2, !dbg !1510
  %100 = load i16, ptr %red397, align 2, !dbg !1510, !tbaa !1511
  %conv399 = uitofp i16 %100 to double, !dbg !1512
  %101 = load float, ptr %red315, align 8, !dbg !1513, !tbaa !1410
  %conv402 = fpext float %101 to double, !dbg !1513
  %102 = tail call double @llvm.fmuladd.f64(double %weight.0, double %conv399, double %conv402), !dbg !1513
  %conv403 = fptrunc double %102 to float, !dbg !1513
  store float %conv403, ptr %red315, align 8, !dbg !1513, !tbaa !1410
  %green404 = getelementptr inbounds %struct._PixelPacket, ptr %pixels.0817, i64 0, i32 1, !dbg !1514
  %103 = load i16, ptr %green404, align 2, !dbg !1514, !tbaa !1515
  %conv406 = uitofp i16 %103 to double, !dbg !1516
  %104 = load float, ptr %green314, align 4, !dbg !1517, !tbaa !1407
  %conv409 = fpext float %104 to double, !dbg !1517
  %105 = tail call double @llvm.fmuladd.f64(double %weight.0, double %conv406, double %conv409), !dbg !1517
  %conv410 = fptrunc double %105 to float, !dbg !1517
  store float %conv410, ptr %green314, align 4, !dbg !1517, !tbaa !1407
  %106 = load i16, ptr %pixels.0817, align 2, !dbg !1518, !tbaa !1519
  %conv413 = uitofp i16 %106 to double, !dbg !1520
  %107 = load float, ptr %blue313, align 8, !dbg !1521, !tbaa !1404
  %conv416 = fpext float %107 to double, !dbg !1521
  %108 = tail call double @llvm.fmuladd.f64(double %weight.0, double %conv413, double %conv416), !dbg !1521
  %conv417 = fptrunc double %108 to float, !dbg !1521
  store float %conv417, ptr %blue313, align 8, !dbg !1521, !tbaa !1404
  %109 = load i32, ptr %colorspace, align 4, !dbg !1522, !tbaa !1422
  %cmp419 = icmp eq i32 %109, 12, !dbg !1524
  br i1 %cmp419, label %if.then421, label %if.end428, !dbg !1525

if.then421:                                       ; preds = %if.end396
  %110 = load i16, ptr %indexes.0819, align 2, !dbg !1526, !tbaa !1527
  %conv423 = uitofp i16 %110 to double, !dbg !1528
  %111 = load float, ptr %index425, align 8, !dbg !1529, !tbaa !1427
  %conv426 = fpext float %111 to double, !dbg !1529
  %112 = tail call double @llvm.fmuladd.f64(double %weight.0, double %conv423, double %conv426), !dbg !1529
  %conv427 = fptrunc double %112 to float, !dbg !1529
  store float %conv427, ptr %index425, align 8, !dbg !1529, !tbaa !1427
  br label %if.end428, !dbg !1530

if.end428:                                        ; preds = %if.then421, %if.end396
  %add429 = fadd double %divisor_c.1815, %weight.0, !dbg !1531
  call void @llvm.dbg.value(metadata double %add429, metadata !1149, metadata !DIExpression()), !dbg !1161
  %inc430 = add nsw i64 %hit.2810, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %inc430, metadata !1142, metadata !DIExpression()), !dbg !1161
  br label %if.end431, !dbg !1533

if.end431:                                        ; preds = %if.end428, %for.body372
  %hit.3 = phi i64 [ %inc430, %if.end428 ], [ %hit.2810, %for.body372 ], !dbg !1161
  %divisor_c.2 = phi double [ %add429, %if.end428 ], [ %divisor_c.1815, %for.body372 ], !dbg !1161
  %divisor_m.2 = phi double [ %add384, %if.end428 ], [ %divisor_m.1816, %for.body372 ], !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_m.2, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_c.2, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %hit.3, metadata !1142, metadata !DIExpression()), !dbg !1161
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %pixels.0817, i64 1, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1152, metadata !DIExpression()), !dbg !1161
  %incdec.ptr432 = getelementptr inbounds i16, ptr %indexes.0819, i64 1, !dbg !1535
  call void @llvm.dbg.value(metadata ptr %incdec.ptr432, metadata !1153, metadata !DIExpression()), !dbg !1161
  %add433 = fadd double %Q.0812, %DQ.0814, !dbg !1536
  call void @llvm.dbg.value(metadata double %add433, metadata !1146, metadata !DIExpression()), !dbg !1161
  %add434 = fadd double %mul339, %DQ.0814, !dbg !1537
  call void @llvm.dbg.value(metadata double %add434, metadata !1147, metadata !DIExpression()), !dbg !1161
  %inc435 = add nuw i64 %u.0811, 1, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %inc435, metadata !1137, metadata !DIExpression()), !dbg !1161
  %exitcond.not = icmp eq i64 %u.0811, %conv337, !dbg !1539
  br i1 %exitcond.not, label %for.cond369.for.inc436_crit_edge, label %for.body372, !dbg !1457, !llvm.loop !1540

for.cond369.for.inc436_crit_edge:                 ; preds = %if.end431
  call void @llvm.dbg.value(metadata double undef, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %add344860, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 undef, metadata !1142, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %v.0823858, metadata !1138, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1161
  %exitcond835.not = icmp eq i64 %v.0823858, %conv330, !dbg !1445
  br i1 %exitcond835.not, label %for.end438, label %for.cond369.for.inc436_crit_edge.for.body_crit_edge, !dbg !1448, !llvm.loop !1472

for.cond369.for.inc436_crit_edge.for.body_crit_edge: ; preds = %for.cond369.for.inc436_crit_edge
  %inc437 = add i64 %v.0823858, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %inc437, metadata !1138, metadata !DIExpression()), !dbg !1161
  %.pre838 = load double, ptr %slope, align 8, !dbg !1475, !tbaa !1451
  %.pre839 = load double, ptr %A, align 8, !dbg !1542, !tbaa !1443
  call void @llvm.dbg.value(metadata double %divisor_m.2, metadata !1150, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %divisor_c.2, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %add344860, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %hit.3, metadata !1142, metadata !DIExpression()), !dbg !1161
  %113 = tail call double @llvm.ceil.f64(double %add344860), !dbg !1454
  %conv342 = fptosi double %113 to i64, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %conv342, metadata !1137, metadata !DIExpression()), !dbg !1161
  %add344 = fadd double %add344860, %.pre838, !dbg !1469
  call void @llvm.dbg.value(metadata double %add344, metadata !1143, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1144, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1145, metadata !DIExpression()), !dbg !1161
  %114 = load double, ptr %B, align 8, !dbg !1459, !tbaa !1460
  %115 = load double, ptr %C, align 8, !dbg !1461, !tbaa !1462
  call void @llvm.dbg.value(metadata double undef, metadata !1146, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double undef, metadata !1147, metadata !DIExpression()), !dbg !1161
  %116 = load ptr, ptr %resample_filter, align 8, !dbg !1463, !tbaa !839
  %117 = load ptr, ptr %exception361, align 8, !dbg !1464, !tbaa !829
  %call362 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %116, i64 noundef %conv342, i64 noundef %inc437, i64 noundef %add338, i64 noundef 1, ptr noundef %117) #18, !dbg !1465
  call void @llvm.dbg.value(metadata ptr %call362, metadata !1152, metadata !DIExpression()), !dbg !1161
  %cmp363 = icmp eq ptr %call362, null, !dbg !1466
  br i1 %cmp363, label %cleanup496, label %if.end366, !dbg !1468

for.end438:                                       ; preds = %for.cond369.for.inc436_crit_edge
  %cmp439 = icmp eq i64 %hit.3, 0, !dbg !1543
  %cmp442 = fcmp ole double %divisor_m.2, 1.000000e-15
  %or.cond = select i1 %cmp439, i1 true, i1 %cmp442, !dbg !1545
  %cmp445 = fcmp ole double %divisor_c.2, 1.000000e-15
  %or.cond514 = select i1 %or.cond, i1 true, i1 %cmp445, !dbg !1545
  br i1 %or.cond514, label %if.then447, label %if.end453, !dbg !1545

if.then447:                                       ; preds = %if.end366.us, %if.end324, %for.end438
  %image448 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 1, !dbg !1546
  %118 = load ptr, ptr %image448, align 8, !dbg !1546, !tbaa !836
  %119 = load ptr, ptr %resample_filter, align 8, !dbg !1548, !tbaa !839
  %interpolate450 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 5, !dbg !1549
  %120 = load i32, ptr %interpolate450, align 8, !dbg !1549, !tbaa !884
  %exception451 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 2, !dbg !1550
  %121 = load ptr, ptr %exception451, align 8, !dbg !1550, !tbaa !829
  %call452 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef %118, ptr noundef %119, i32 noundef %120, double noundef %u0, double noundef %v0, ptr noundef %pixel, ptr noundef %121) #14, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %call452, metadata !1136, metadata !DIExpression()), !dbg !1161
  br label %cleanup496, !dbg !1552

if.end453:                                        ; preds = %for.end438
  %div454 = fdiv double 1.000000e+00, %divisor_m.2, !dbg !1553
  call void @llvm.dbg.value(metadata double %div454, metadata !1150, metadata !DIExpression()), !dbg !1161
  %opacity455 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !1554
  %122 = load float, ptr %opacity455, align 4, !dbg !1554, !tbaa !1418
  %conv456 = fpext float %122 to double, !dbg !1555
  %mul457 = fmul double %div454, %conv456, !dbg !1556
  %conv458 = fptrunc double %mul457 to float, !dbg !1557
  call void @llvm.dbg.value(metadata float %conv458, metadata !1558, metadata !DIExpression()), !dbg !1564
  %cmp.i = fcmp ugt float %conv458, 0.000000e+00, !dbg !1566
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1568

if.end.i:                                         ; preds = %if.end453
  %cmp1.i = fcmp ult float %conv458, 6.553500e+04, !dbg !1569
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1571

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv458, 5.000000e-01, !dbg !1572
  %conv.i = fptoui float %add.i to i16, !dbg !1573
  %phi.cast = uitofp i16 %conv.i to float, !dbg !1574
  br label %ClampToQuantum.exit, !dbg !1574

ClampToQuantum.exit:                              ; preds = %if.end453, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end453 ], [ 6.553500e+04, %if.end.i ]
  store float %retval.0.i, ptr %opacity455, align 4, !dbg !1575, !tbaa !1418
  %div462 = fdiv double 1.000000e+00, %divisor_c.2, !dbg !1576
  call void @llvm.dbg.value(metadata double %div462, metadata !1149, metadata !DIExpression()), !dbg !1161
  %123 = load float, ptr %red315, align 8, !dbg !1577, !tbaa !1410
  %conv464 = fpext float %123 to double, !dbg !1578
  %mul465 = fmul double %div462, %conv464, !dbg !1579
  %conv466 = fptrunc double %mul465 to float, !dbg !1580
  call void @llvm.dbg.value(metadata float %conv466, metadata !1558, metadata !DIExpression()), !dbg !1581
  %cmp.i768 = fcmp ugt float %conv466, 0.000000e+00, !dbg !1583
  br i1 %cmp.i768, label %if.end.i770, label %ClampToQuantum.exit775, !dbg !1584

if.end.i770:                                      ; preds = %ClampToQuantum.exit
  %cmp1.i769 = fcmp ult float %conv466, 6.553500e+04, !dbg !1585
  br i1 %cmp1.i769, label %if.end3.i773, label %ClampToQuantum.exit775, !dbg !1586

if.end3.i773:                                     ; preds = %if.end.i770
  %add.i771 = fadd float %conv466, 5.000000e-01, !dbg !1587
  %conv.i772 = fptoui float %add.i771 to i16, !dbg !1588
  %phi.cast802 = uitofp i16 %conv.i772 to float, !dbg !1589
  br label %ClampToQuantum.exit775, !dbg !1589

ClampToQuantum.exit775:                           ; preds = %ClampToQuantum.exit, %if.end.i770, %if.end3.i773
  %retval.0.i774 = phi float [ %phi.cast802, %if.end3.i773 ], [ 0.000000e+00, %ClampToQuantum.exit ], [ 6.553500e+04, %if.end.i770 ]
  store float %retval.0.i774, ptr %red315, align 8, !dbg !1590, !tbaa !1410
  %124 = load float, ptr %green314, align 4, !dbg !1591, !tbaa !1407
  %conv471 = fpext float %124 to double, !dbg !1592
  %mul472 = fmul double %div462, %conv471, !dbg !1593
  %conv473 = fptrunc double %mul472 to float, !dbg !1594
  call void @llvm.dbg.value(metadata float %conv473, metadata !1558, metadata !DIExpression()), !dbg !1595
  %cmp.i776 = fcmp ugt float %conv473, 0.000000e+00, !dbg !1597
  br i1 %cmp.i776, label %if.end.i778, label %ClampToQuantum.exit783, !dbg !1598

if.end.i778:                                      ; preds = %ClampToQuantum.exit775
  %cmp1.i777 = fcmp ult float %conv473, 6.553500e+04, !dbg !1599
  br i1 %cmp1.i777, label %if.end3.i781, label %ClampToQuantum.exit783, !dbg !1600

if.end3.i781:                                     ; preds = %if.end.i778
  %add.i779 = fadd float %conv473, 5.000000e-01, !dbg !1601
  %conv.i780 = fptoui float %add.i779 to i16, !dbg !1602
  %phi.cast803 = uitofp i16 %conv.i780 to float, !dbg !1603
  br label %ClampToQuantum.exit783, !dbg !1603

ClampToQuantum.exit783:                           ; preds = %ClampToQuantum.exit775, %if.end.i778, %if.end3.i781
  %retval.0.i782 = phi float [ %phi.cast803, %if.end3.i781 ], [ 0.000000e+00, %ClampToQuantum.exit775 ], [ 6.553500e+04, %if.end.i778 ]
  store float %retval.0.i782, ptr %green314, align 4, !dbg !1604, !tbaa !1407
  %125 = load float, ptr %blue313, align 8, !dbg !1605, !tbaa !1404
  %conv478 = fpext float %125 to double, !dbg !1606
  %mul479 = fmul double %div462, %conv478, !dbg !1607
  %conv480 = fptrunc double %mul479 to float, !dbg !1608
  call void @llvm.dbg.value(metadata float %conv480, metadata !1558, metadata !DIExpression()), !dbg !1609
  %cmp.i784 = fcmp ugt float %conv480, 0.000000e+00, !dbg !1611
  br i1 %cmp.i784, label %if.end.i786, label %ClampToQuantum.exit791, !dbg !1612

if.end.i786:                                      ; preds = %ClampToQuantum.exit783
  %cmp1.i785 = fcmp ult float %conv480, 6.553500e+04, !dbg !1613
  br i1 %cmp1.i785, label %if.end3.i789, label %ClampToQuantum.exit791, !dbg !1614

if.end3.i789:                                     ; preds = %if.end.i786
  %add.i787 = fadd float %conv480, 5.000000e-01, !dbg !1615
  %conv.i788 = fptoui float %add.i787 to i16, !dbg !1616
  %phi.cast804 = uitofp i16 %conv.i788 to float, !dbg !1617
  br label %ClampToQuantum.exit791, !dbg !1617

ClampToQuantum.exit791:                           ; preds = %ClampToQuantum.exit783, %if.end.i786, %if.end3.i789
  %retval.0.i790 = phi float [ %phi.cast804, %if.end3.i789 ], [ 0.000000e+00, %ClampToQuantum.exit783 ], [ 6.553500e+04, %if.end.i786 ]
  store float %retval.0.i790, ptr %blue313, align 8, !dbg !1618, !tbaa !1404
  %126 = load i32, ptr %colorspace, align 4, !dbg !1619, !tbaa !1422
  %cmp485 = icmp eq i32 %126, 12, !dbg !1621
  br i1 %cmp485, label %if.then487, label %cleanup496, !dbg !1622

if.then487:                                       ; preds = %ClampToQuantum.exit791
  %index488 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9, !dbg !1623
  %127 = load float, ptr %index488, align 8, !dbg !1623, !tbaa !1427
  %conv489 = fpext float %127 to double, !dbg !1624
  %mul490 = fmul double %div462, %conv489, !dbg !1625
  %conv491 = fptrunc double %mul490 to float, !dbg !1626
  call void @llvm.dbg.value(metadata float %conv491, metadata !1558, metadata !DIExpression()), !dbg !1627
  %cmp.i792 = fcmp ugt float %conv491, 0.000000e+00, !dbg !1629
  br i1 %cmp.i792, label %if.end.i794, label %ClampToQuantum.exit799, !dbg !1630

if.end.i794:                                      ; preds = %if.then487
  %cmp1.i793 = fcmp ult float %conv491, 6.553500e+04, !dbg !1631
  br i1 %cmp1.i793, label %if.end3.i797, label %ClampToQuantum.exit799, !dbg !1632

if.end3.i797:                                     ; preds = %if.end.i794
  %add.i795 = fadd float %conv491, 5.000000e-01, !dbg !1633
  %conv.i796 = fptoui float %add.i795 to i16, !dbg !1634
  %phi.cast805 = uitofp i16 %conv.i796 to float, !dbg !1635
  br label %ClampToQuantum.exit799, !dbg !1635

ClampToQuantum.exit799:                           ; preds = %if.then487, %if.end.i794, %if.end3.i797
  %retval.0.i798 = phi float [ %phi.cast805, %if.end3.i797 ], [ 0.000000e+00, %if.then487 ], [ 6.553500e+04, %if.end.i794 ]
  store float %retval.0.i798, ptr %index488, align 8, !dbg !1636, !tbaa !1427
  br label %cleanup496, !dbg !1637

cleanup496:                                       ; preds = %for.cond369.for.inc436_crit_edge.for.body_crit_edge, %if.end366.us.for.body.us_crit_edge, %for.body.preheader, %for.body.us.preheader, %if.then206, %if.then215, %ClampToQuantum.exit791, %ClampToQuantum.exit799, %sw.bb185, %sw.bb190, %if.end309, %if.then447, %if.then175, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call179, %if.then175 ], [ %call452, %if.then447 ], [ 1, %if.end309 ], [ %call194, %sw.bb190 ], [ %call189, %sw.bb185 ], [ 1, %ClampToQuantum.exit799 ], [ 1, %ClampToQuantum.exit791 ], [ 1, %if.then215 ], [ 1, %if.then206 ], [ 0, %for.body.us.preheader ], [ 0, %for.body.preheader ], [ 0, %if.end366.us.for.body.us_crit_edge ], [ 0, %for.cond369.for.inc436_crit_edge.for.body_crit_edge ], !dbg !1161
  ret i32 %retval.0, !dbg !1638
}

declare !dbg !1639 i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1645 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1648 ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: hot
declare !dbg !1651 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !1657 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal fastcc void @SetMagickPixelPacket(i32 %image.4.val, ptr nocapture noundef readonly %color, ptr noundef readonly %index, ptr nocapture noundef writeonly %pixel) unnamed_addr #9 !dbg !1660 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !1665, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %color, metadata !1666, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %index, metadata !1667, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1668, metadata !DIExpression()), !dbg !1669
  %red = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 2, !dbg !1670
  %0 = load i16, ptr %red, align 2, !dbg !1670, !tbaa !1511
  %conv = uitofp i16 %0 to float, !dbg !1671
  %red1 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !1672
  store float %conv, ptr %red1, align 8, !dbg !1673, !tbaa !1410
  %green = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 1, !dbg !1674
  %1 = load i16, ptr %green, align 2, !dbg !1674, !tbaa !1515
  %conv2 = uitofp i16 %1 to float, !dbg !1675
  %green3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !1676
  store float %conv2, ptr %green3, align 4, !dbg !1677, !tbaa !1407
  %2 = load i16, ptr %color, align 2, !dbg !1678, !tbaa !1519
  %conv4 = uitofp i16 %2 to float, !dbg !1679
  %blue5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !1680
  store float %conv4, ptr %blue5, align 8, !dbg !1681, !tbaa !1404
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 3, !dbg !1682
  %3 = load i16, ptr %opacity, align 2, !dbg !1682, !tbaa !1496
  %conv6 = uitofp i16 %3 to float, !dbg !1683
  %opacity7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !1684
  store float %conv6, ptr %opacity7, align 4, !dbg !1685, !tbaa !1418
  %cmp = icmp eq i32 %image.4.val, 12, !dbg !1686
  %cmp9 = icmp ne ptr %index, null
  %or.cond = and i1 %cmp, %cmp9, !dbg !1688
  br i1 %or.cond, label %cond.end, label %if.end, !dbg !1688

cond.end:                                         ; preds = %entry
  %4 = load i16, ptr %index, align 2, !dbg !1689, !tbaa !1527
  %conv14 = uitofp i16 %4 to float, !dbg !1690
  %index15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9, !dbg !1691
  store float %conv14, ptr %index15, align 8, !dbg !1692, !tbaa !1427
  br label %if.end, !dbg !1693

if.end:                                           ; preds = %cond.end, %entry
  ret void, !dbg !1694
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare !dbg !1695 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local void @ScaleResampleFilter(ptr nocapture noundef %resample_filter, double noundef %dux, double noundef %duy, double noundef %dvx, double noundef %dvy) local_unnamed_addr #10 !dbg !1698 {
entry:
  call void @llvm.dbg.value(metadata ptr %resample_filter, metadata !1702, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata double %dux, metadata !1703, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata double %duy, metadata !1704, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata double %dvx, metadata !1705, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata double %dvy, metadata !1706, metadata !DIExpression()), !dbg !1720
  %limit_reached = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 8, !dbg !1721
  store i32 0, ptr %limit_reached, align 4, !dbg !1722, !tbaa !1178
  %filter = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 7, !dbg !1723
  %0 = load i32, ptr %filter, align 8, !dbg !1723, !tbaa !985
  %cmp = icmp eq i32 %0, 1, !dbg !1725
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1726

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata double %dux, metadata !1727, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata double %dvx, metadata !1733, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata double %duy, metadata !1734, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata double %dvy, metadata !1735, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata ptr undef, metadata !1736, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata ptr undef, metadata !1737, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata ptr undef, metadata !1738, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata ptr undef, metadata !1739, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata ptr undef, metadata !1740, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata ptr undef, metadata !1741, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata double %dux, metadata !1742, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata double %duy, metadata !1743, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata double %dvx, metadata !1744, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata double %dvy, metadata !1745, metadata !DIExpression()) #14, !dbg !1770
  %mul.i = fmul double %dux, %dux, !dbg !1772
  call void @llvm.dbg.value(metadata double %mul.i, metadata !1746, metadata !DIExpression()) #14, !dbg !1770
  %mul1.i = fmul double %duy, %duy, !dbg !1773
  call void @llvm.dbg.value(metadata double %mul1.i, metadata !1747, metadata !DIExpression()) #14, !dbg !1770
  %mul2.i = fmul double %dvx, %dvx, !dbg !1774
  call void @llvm.dbg.value(metadata double %mul2.i, metadata !1748, metadata !DIExpression()) #14, !dbg !1770
  %mul3.i = fmul double %dvy, %dvy, !dbg !1775
  call void @llvm.dbg.value(metadata double %mul3.i, metadata !1749, metadata !DIExpression()) #14, !dbg !1770
  %add.i = fadd double %mul.i, %mul1.i, !dbg !1776
  call void @llvm.dbg.value(metadata double %add.i, metadata !1750, metadata !DIExpression()) #14, !dbg !1770
  %mul5.i = fmul double %duy, %dvy, !dbg !1777
  %1 = tail call double @llvm.fmuladd.f64(double %dux, double %dvx, double %mul5.i) #14, !dbg !1778
  call void @llvm.dbg.value(metadata double %1, metadata !1751, metadata !DIExpression()) #14, !dbg !1770
  call void @llvm.dbg.value(metadata double %1, metadata !1752, metadata !DIExpression()) #14, !dbg !1770
  %add6.i = fadd double %mul2.i, %mul3.i, !dbg !1779
  call void @llvm.dbg.value(metadata double %add6.i, metadata !1753, metadata !DIExpression()) #14, !dbg !1770
  %2 = fneg double %duy, !dbg !1780
  %neg.i = fmul double %2, %dvx, !dbg !1780
  %3 = tail call double @llvm.fmuladd.f64(double %dux, double %dvy, double %neg.i) #14, !dbg !1780
  call void @llvm.dbg.value(metadata double %3, metadata !1754, metadata !DIExpression()) #14, !dbg !1770
  %add9.i = fadd double %3, %3, !dbg !1781
  call void @llvm.dbg.value(metadata double %add9.i, metadata !1755, metadata !DIExpression()) #14, !dbg !1770
  %add10.i = fadd double %add.i, %add6.i, !dbg !1782
  call void @llvm.dbg.value(metadata double %add10.i, metadata !1756, metadata !DIExpression()) #14, !dbg !1770
  %add11.i = fadd double %add9.i, %add10.i, !dbg !1783
  %sub.i = fsub double %add10.i, %add9.i, !dbg !1784
  %mul12.i = fmul double %add11.i, %sub.i, !dbg !1785
  call void @llvm.dbg.value(metadata double %mul12.i, metadata !1757, metadata !DIExpression()) #14, !dbg !1770
  %cmp.i = fcmp ogt double %mul12.i, 0.000000e+00, !dbg !1786
  br i1 %cmp.i, label %cond.true.i, label %cond.end.i, !dbg !1787

cond.true.i:                                      ; preds = %if.end
  br label %cond.end.i, !dbg !1787

cond.end.i:                                       ; preds = %cond.true.i, %if.end
  %cond.i = phi double [ %mul12.i, %cond.true.i ], [ 0.000000e+00, %if.end ], !dbg !1787
  %call.i = tail call double @sqrt(double noundef %cond.i) #14, !dbg !1788
  call void @llvm.dbg.value(metadata double %call.i, metadata !1758, metadata !DIExpression()) #14, !dbg !1770
  %add13.i = fadd double %add10.i, %call.i, !dbg !1789
  %mul14.i = fmul double %add13.i, 5.000000e-01, !dbg !1790
  call void @llvm.dbg.value(metadata double %mul14.i, metadata !1759, metadata !DIExpression()) #14, !dbg !1770
  %sub15.i = fsub double %add10.i, %call.i, !dbg !1791
  %mul16.i = fmul double %sub15.i, 5.000000e-01, !dbg !1792
  call void @llvm.dbg.value(metadata double %mul16.i, metadata !1760, metadata !DIExpression()) #14, !dbg !1770
  %sub17.i = fsub double %mul14.i, %add.i, !dbg !1793
  call void @llvm.dbg.value(metadata double %sub17.i, metadata !1761, metadata !DIExpression()) #14, !dbg !1770
  %sub18.i = fsub double %mul14.i, %add6.i, !dbg !1794
  call void @llvm.dbg.value(metadata double %sub18.i, metadata !1762, metadata !DIExpression()) #14, !dbg !1770
  %mul19.i = fmul double %sub17.i, %sub17.i, !dbg !1795
  call void @llvm.dbg.value(metadata double %mul19.i, metadata !1763, metadata !DIExpression()) #14, !dbg !1770
  %mul20.i = fmul double %sub18.i, %sub18.i, !dbg !1796
  call void @llvm.dbg.value(metadata double %mul20.i, metadata !1764, metadata !DIExpression()) #14, !dbg !1770
  %cmp21.i = fcmp oge double %mul19.i, %mul20.i, !dbg !1797
  %.sub18.i = select i1 %cmp21.i, double %1, double %sub18.i, !dbg !1798
  call void @llvm.dbg.value(metadata double %.sub18.i, metadata !1765, metadata !DIExpression()) #14, !dbg !1770
  br i1 %cmp21.i, label %cond.end29.i, label %cond.false28.i, !dbg !1799

cond.false28.i:                                   ; preds = %cond.end.i
  %.pre.i = fmul double %1, %1, !dbg !1800
  br label %cond.end29.i, !dbg !1799

cond.end29.i:                                     ; preds = %cond.false28.i, %cond.end.i
  %mul32.pre-phi.i = phi double [ %mul19.i, %cond.end.i ], [ %.pre.i, %cond.false28.i ], !dbg !1800
  %cond30.i = phi double [ %sub17.i, %cond.end.i ], [ %1, %cond.false28.i ], !dbg !1799
  call void @llvm.dbg.value(metadata double %cond30.i, metadata !1766, metadata !DIExpression()) #14, !dbg !1770
  %4 = tail call double @llvm.fmuladd.f64(double %.sub18.i, double %.sub18.i, double %mul32.pre-phi.i) #14, !dbg !1801
  %call33.i = tail call double @sqrt(double noundef %4) #14, !dbg !1802
  call void @llvm.dbg.value(metadata double %call33.i, metadata !1767, metadata !DIExpression()) #14, !dbg !1770
  %cmp34.i = fcmp ogt double %call33.i, 0.000000e+00, !dbg !1803
  br i1 %cmp34.i, label %cond.true40.i, label %cond.end43.i, !dbg !1804

cond.true40.i:                                    ; preds = %cond.end29.i
  %div.i = fdiv double %.sub18.i, %call33.i, !dbg !1805
  call void @llvm.dbg.value(metadata double undef, metadata !1768, metadata !DIExpression()) #14, !dbg !1770
  %div41.i = fdiv double %cond30.i, %call33.i, !dbg !1806
  br label %cond.end43.i, !dbg !1807

cond.end43.i:                                     ; preds = %cond.true40.i, %cond.end29.i
  %cond3899.i = phi double [ %div.i, %cond.true40.i ], [ 1.000000e+00, %cond.end29.i ]
  %cond44.i = phi double [ %div41.i, %cond.true40.i ], [ 0.000000e+00, %cond.end29.i ], !dbg !1807
  call void @llvm.dbg.value(metadata double %cond44.i, metadata !1769, metadata !DIExpression()) #14, !dbg !1770
  %cmp45.i = fcmp ugt double %mul14.i, 1.000000e+00, !dbg !1808
  br i1 %cmp45.i, label %cond.false47.i, label %cond.end49.i, !dbg !1809

cond.false47.i:                                   ; preds = %cond.end43.i
  %call48.i = tail call double @sqrt(double noundef %mul14.i) #14, !dbg !1810
  br label %cond.end49.i, !dbg !1809

cond.end49.i:                                     ; preds = %cond.false47.i, %cond.end43.i
  %cond50.i = phi double [ %call48.i, %cond.false47.i ], [ 1.000000e+00, %cond.end43.i ], !dbg !1809
  %cmp51.i = fcmp ugt double %mul16.i, 1.000000e+00, !dbg !1811
  br i1 %cmp51.i, label %cond.false53.i, label %ClampUpAxes.exit, !dbg !1812

cond.false53.i:                                   ; preds = %cond.end49.i
  %call54.i = tail call double @sqrt(double noundef %mul16.i) #14, !dbg !1813
  br label %ClampUpAxes.exit, !dbg !1812

ClampUpAxes.exit:                                 ; preds = %cond.end49.i, %cond.false53.i
  %cond56.i = phi double [ %call54.i, %cond.false53.i ], [ 1.000000e+00, %cond.end49.i ], !dbg !1812
  %fneg.i = fneg double %cond44.i, !dbg !1814
  call void @llvm.dbg.value(metadata double %cond50.i, metadata !1711, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %cond3899.i, metadata !1714, metadata !DIExpression()), !dbg !1815
  %mul = fmul double %cond3899.i, %cond50.i, !dbg !1816
  call void @llvm.dbg.value(metadata double %mul, metadata !1714, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %cond50.i, metadata !1711, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %cond44.i, metadata !1715, metadata !DIExpression()), !dbg !1815
  %mul1 = fmul double %cond44.i, %cond50.i, !dbg !1817
  call void @llvm.dbg.value(metadata double %mul1, metadata !1715, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %cond56.i, metadata !1713, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %fneg.i, metadata !1716, metadata !DIExpression()), !dbg !1815
  %mul2 = fmul double %cond56.i, %fneg.i, !dbg !1818
  call void @llvm.dbg.value(metadata double %mul2, metadata !1716, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %cond56.i, metadata !1713, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %cond3899.i, metadata !1717, metadata !DIExpression()), !dbg !1815
  %mul3 = fmul double %cond3899.i, %cond56.i, !dbg !1819
  call void @llvm.dbg.value(metadata double %mul3, metadata !1717, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %mul1, metadata !1715, metadata !DIExpression()), !dbg !1815
  %mul5 = fmul double %mul3, %mul3, !dbg !1820
  %5 = tail call double @llvm.fmuladd.f64(double %mul1, double %mul1, double %mul5), !dbg !1821
  call void @llvm.dbg.value(metadata double %5, metadata !1707, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata double %mul, metadata !1714, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %mul2, metadata !1716, metadata !DIExpression()), !dbg !1815
  %mul7 = fmul double %mul2, %mul3, !dbg !1822
  %6 = tail call double @llvm.fmuladd.f64(double %mul, double %mul1, double %mul7), !dbg !1823
  %mul8 = fmul double %6, -2.000000e+00, !dbg !1824
  call void @llvm.dbg.value(metadata double %mul8, metadata !1708, metadata !DIExpression()), !dbg !1720
  %mul10 = fmul double %mul2, %mul2, !dbg !1825
  %7 = tail call double @llvm.fmuladd.f64(double %mul, double %mul, double %mul10), !dbg !1826
  call void @llvm.dbg.value(metadata double %7, metadata !1709, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata double %cond50.i, metadata !1711, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double %cond56.i, metadata !1713, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata double undef, metadata !1710, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata double undef, metadata !1710, metadata !DIExpression()), !dbg !1720
  %mul13 = fmul double %5, 4.000000e+00, !dbg !1827
  %8 = fneg double %mul8, !dbg !1829
  %neg = fmul double %mul8, %8, !dbg !1829
  %9 = tail call double @llvm.fmuladd.f64(double %mul13, double %7, double %neg), !dbg !1829
  %cmp16 = fcmp ogt double %9, 0x7FEFFFFFFFFFFFFF, !dbg !1830
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !1831

if.then17:                                        ; preds = %ClampUpAxes.exit
  store i32 1, ptr %limit_reached, align 4, !dbg !1832, !tbaa !1178
  br label %cleanup, !dbg !1834

if.end19:                                         ; preds = %ClampUpAxes.exit
  %mul11 = fmul double %cond50.i, %cond56.i, !dbg !1835
  call void @llvm.dbg.value(metadata double %mul11, metadata !1710, metadata !DIExpression()), !dbg !1720
  %mul12 = fmul double %mul11, %mul11, !dbg !1836
  call void @llvm.dbg.value(metadata double %mul12, metadata !1710, metadata !DIExpression()), !dbg !1720
  %support = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 20, !dbg !1837
  %10 = load double, ptr %support, align 8, !dbg !1837, !tbaa !1008
  %mul20 = fmul double %mul12, %10, !dbg !1838
  call void @llvm.dbg.value(metadata double %mul20, metadata !1710, metadata !DIExpression()), !dbg !1720
  %mul22 = fmul double %10, %mul20, !dbg !1839
  call void @llvm.dbg.value(metadata double %mul22, metadata !1710, metadata !DIExpression()), !dbg !1720
  %mul23 = fmul double %7, %mul22, !dbg !1840
  %11 = fmul double %mul8, -2.500000e-01, !dbg !1841
  %neg27 = fmul double %mul8, %11, !dbg !1841
  %12 = tail call double @llvm.fmuladd.f64(double %5, double %7, double %neg27), !dbg !1841
  %div = fdiv double %mul23, %12, !dbg !1842
  %call = tail call double @sqrt(double noundef %div) #14, !dbg !1843
  %Ulimit = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 16, !dbg !1844
  store double %call, ptr %Ulimit, align 8, !dbg !1845, !tbaa !1182
  %mul28 = fmul double %5, %mul22, !dbg !1846
  %div33 = fdiv double %mul28, %12, !dbg !1847
  %call34 = tail call double @sqrt(double noundef %div33) #14, !dbg !1848
  %Vlimit = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 15, !dbg !1849
  store double %call34, ptr %Vlimit, align 8, !dbg !1850, !tbaa !1194
  %div35 = fdiv double %mul22, %5, !dbg !1851
  %call36 = tail call double @sqrt(double noundef %div35) #14, !dbg !1852
  %Uwidth = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 17, !dbg !1853
  store double %call36, ptr %Uwidth, align 8, !dbg !1854, !tbaa !1438
  %mul37 = fmul double %5, 2.000000e+00, !dbg !1855
  %div38 = fdiv double %8, %mul37, !dbg !1856
  %slope = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 18, !dbg !1857
  store double %div38, ptr %slope, align 8, !dbg !1858, !tbaa !1451
  %13 = load double, ptr %Vlimit, align 8, !dbg !1859, !tbaa !1194
  %mul41 = fmul double %call36, %13, !dbg !1861
  %image_area = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 4, !dbg !1862
  %14 = load i64, ptr %image_area, align 8, !dbg !1862, !tbaa !854
  %conv = sitofp i64 %14 to double, !dbg !1863
  %mul42 = fmul double %conv, 4.000000e+00, !dbg !1864
  %cmp43 = fcmp ogt double %mul41, %mul42, !dbg !1865
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !1866

if.then45:                                        ; preds = %if.end19
  store i32 1, ptr %limit_reached, align 4, !dbg !1867, !tbaa !1178
  br label %cleanup, !dbg !1869

if.end47:                                         ; preds = %if.end19
  %div48 = fdiv double 1.024000e+03, %mul22, !dbg !1870
  call void @llvm.dbg.value(metadata double %div48, metadata !1718, metadata !DIExpression()), !dbg !1871
  %mul49 = fmul double %5, %div48, !dbg !1872
  %A50 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 12, !dbg !1873
  store double %mul49, ptr %A50, align 8, !dbg !1874, !tbaa !1443
  %mul51 = fmul double %mul8, %div48, !dbg !1875
  %B52 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 13, !dbg !1876
  store double %mul51, ptr %B52, align 8, !dbg !1877, !tbaa !1460
  %mul53 = fmul double %7, %div48, !dbg !1878
  %C54 = getelementptr inbounds %struct._ResampleFilter, ptr %resample_filter, i64 0, i32 14, !dbg !1879
  store double %mul53, ptr %C54, align 8, !dbg !1880, !tbaa !1462
  br label %cleanup, !dbg !1881

cleanup:                                          ; preds = %entry, %if.end47, %if.then45, %if.then17
  ret void, !dbg !1881
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #11

declare !dbg !1882 ptr @AcquireResizeFilter(ptr noundef, i32 noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1887 float @GetResizeFilterSupport(ptr noundef) local_unnamed_addr #3

declare !dbg !1892 float @GetResizeFilterWeight(ptr noundef, float noundef) local_unnamed_addr #3

declare !dbg !1895 ptr @DestroyResizeFilter(ptr noundef) local_unnamed_addr #3

declare !dbg !1898 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #3

declare !dbg !1902 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

declare !dbg !1906 ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1911 i32 @GetMagickPrecision() local_unnamed_addr #3

declare !dbg !1914 i32 @SetCacheViewVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!773, !774, !775, !776, !777, !778}
!llvm.ident = !{!779}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !490, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resample.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "0925f091e7fc2ff137e3e9e645f8a517")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !389, !414}
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
!369 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!371 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!372 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!373 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!374 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!375 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!376 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!377 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!378 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!379 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!380 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!381 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!382 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!383 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!384 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!385 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!386 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!387 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!388 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!389 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !390, line: 34, baseType: !5, size: 32, elements: !391)
!390 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!392 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!393 = !DIEnumerator(name: "NoEvents", value: 0)
!394 = !DIEnumerator(name: "TraceEvent", value: 1)
!395 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!396 = !DIEnumerator(name: "BlobEvent", value: 4)
!397 = !DIEnumerator(name: "CacheEvent", value: 8)
!398 = !DIEnumerator(name: "CoderEvent", value: 16)
!399 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!400 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!401 = !DIEnumerator(name: "DrawEvent", value: 128)
!402 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!403 = !DIEnumerator(name: "ImageEvent", value: 512)
!404 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!405 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!406 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!407 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!408 = !DIEnumerator(name: "TransformEvent", value: 16384)
!409 = !DIEnumerator(name: "UserEvent", value: 36864)
!410 = !DIEnumerator(name: "WandEvent", value: 65536)
!411 = !DIEnumerator(name: "X11Event", value: 131072)
!412 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!413 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !415, line: 25, baseType: !416, size: 32, elements: !417)
!415 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!416 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489}
!418 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!419 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!420 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!421 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!422 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!423 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!424 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!425 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!426 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!427 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!428 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!429 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!430 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!431 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!432 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!433 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!434 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!435 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!436 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!437 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!438 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!439 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!440 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!441 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!442 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!443 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!444 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!445 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!446 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!447 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!448 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!449 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!450 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!451 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!452 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!453 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!454 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!455 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!456 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!457 = !DIEnumerator(name: "MagickListOptions", value: 38)
!458 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!459 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!460 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!461 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!462 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!463 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!464 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!465 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!466 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!467 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!468 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!469 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!470 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!471 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!472 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!473 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!474 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!475 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!476 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!477 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!478 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!479 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!480 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!481 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!482 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!483 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!484 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!485 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!486 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!487 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!488 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!489 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!490 = !{!491, !492, !557, !416, !502, !566, !539, !762, !525, !763, !765, !530, !743, !513, !767, !771}
!491 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResampleFilter", file: !102, line: 76, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ResampleFilter", file: !495, line: 91, size: 67072, elements: !496)
!495 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0925f091e7fc2ff137e3e9e645f8a517")
!496 = !{!497, !501, !722, !724, !725, !726, !727, !729, !730, !731, !732, !733, !749, !750, !751, !752, !753, !754, !755, !756, !760, !761}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !494, file: !495, line: 94, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !369, line: 50, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !494, file: !495, line: 97, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !505)
!505 = !{!506, !508, !510, !512, !515, !517, !519, !520, !521, !522, !523, !524, !535, !536, !537, !538, !540, !554, !556, !558, !560, !563, !564, !565, !571, !572, !573, !581, !582, !583, !584, !585, !586, !588, !590, !592, !594, !596, !598, !600, !601, !602, !603, !604, !605, !606, !614, !629, !643, !644, !645, !646, !650, !654, !658, !659, !660, !661, !662, !679, !680, !682, !683, !693, !694, !696, !697, !698, !699, !700, !701, !703, !704, !705, !706, !707, !708, !709, !711, !712, !713, !714, !715, !719, !721}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !504, file: !73, line: 153, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !504, file: !73, line: 156, baseType: !509, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !504, file: !73, line: 159, baseType: !511, size: 32, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !504, file: !73, line: 162, baseType: !513, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !514, line: 46, baseType: !491)
!514 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!515 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !504, file: !73, line: 165, baseType: !516, size: 32, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !504, file: !73, line: 168, baseType: !518, size: 32, offset: 224)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !504, file: !73, line: 169, baseType: !518, size: 32, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !504, file: !73, line: 172, baseType: !513, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !504, file: !73, line: 173, baseType: !513, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !504, file: !73, line: 174, baseType: !513, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !504, file: !73, line: 175, baseType: !513, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !504, file: !73, line: 178, baseType: !525, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !528)
!528 = !{!529, !532, !533, !534}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !527, file: !326, line: 143, baseType: !530, size: 16)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !531)
!531 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !527, file: !326, line: 144, baseType: !530, size: 16, offset: 16)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !527, file: !326, line: 145, baseType: !530, size: 16, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !527, file: !326, line: 146, baseType: !530, size: 16, offset: 48)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !504, file: !73, line: 179, baseType: !526, size: 64, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !504, file: !73, line: 180, baseType: !526, size: 64, offset: 704)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !504, file: !73, line: 181, baseType: !526, size: 64, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !504, file: !73, line: 184, baseType: !539, size: 64, offset: 832)
!539 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !504, file: !73, line: 187, baseType: !541, size: 768, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !543)
!543 = !{!544, !551, !552, !553}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !542, file: !73, line: 124, baseType: !545, size: 192)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !547)
!547 = !{!548, !549, !550}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !546, file: !73, line: 98, baseType: !539, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !546, file: !73, line: 99, baseType: !539, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !546, file: !73, line: 100, baseType: !539, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !542, file: !73, line: 125, baseType: !545, size: 192, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !542, file: !73, line: 126, baseType: !545, size: 192, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !542, file: !73, line: 127, baseType: !545, size: 192, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !504, file: !73, line: 190, baseType: !555, size: 32, offset: 1664)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !504, file: !73, line: 193, baseType: !557, size: 64, offset: 1728)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !504, file: !73, line: 196, baseType: !559, size: 32, offset: 1792)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !504, file: !73, line: 199, baseType: !561, size: 64, offset: 1856)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !504, file: !73, line: 200, baseType: !561, size: 64, offset: 1920)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !504, file: !73, line: 201, baseType: !561, size: 64, offset: 1984)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !504, file: !73, line: 204, baseType: !566, size: 64, offset: 2048)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !567, line: 77, baseType: !568)
!567 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !569, line: 193, baseType: !570)
!569 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!570 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !504, file: !73, line: 207, baseType: !539, size: 64, offset: 2112)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !504, file: !73, line: 208, baseType: !539, size: 64, offset: 2176)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !504, file: !73, line: 211, baseType: !574, size: 256, offset: 2240)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !576)
!576 = !{!577, !578, !579, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !575, file: !153, line: 124, baseType: !513, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !575, file: !153, line: 125, baseType: !513, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !575, file: !153, line: 128, baseType: !566, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !575, file: !153, line: 129, baseType: !566, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !504, file: !73, line: 212, baseType: !574, size: 256, offset: 2496)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !504, file: !73, line: 213, baseType: !574, size: 256, offset: 2752)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !504, file: !73, line: 216, baseType: !539, size: 64, offset: 3008)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !504, file: !73, line: 217, baseType: !539, size: 64, offset: 3072)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !504, file: !73, line: 218, baseType: !539, size: 64, offset: 3136)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !504, file: !73, line: 221, baseType: !587, size: 32, offset: 3200)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !504, file: !73, line: 224, baseType: !589, size: 32, offset: 3232)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !504, file: !73, line: 227, baseType: !591, size: 32, offset: 3264)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !504, file: !73, line: 230, baseType: !593, size: 32, offset: 3296)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !504, file: !73, line: 233, baseType: !595, size: 32, offset: 3328)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !504, file: !73, line: 236, baseType: !597, size: 32, offset: 3360)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !504, file: !73, line: 239, baseType: !599, size: 64, offset: 3392)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !504, file: !73, line: 242, baseType: !513, size: 64, offset: 3456)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !504, file: !73, line: 243, baseType: !513, size: 64, offset: 3520)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !504, file: !73, line: 246, baseType: !566, size: 64, offset: 3584)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !504, file: !73, line: 249, baseType: !513, size: 64, offset: 3648)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !504, file: !73, line: 250, baseType: !513, size: 64, offset: 3712)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !504, file: !73, line: 253, baseType: !566, size: 64, offset: 3776)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !504, file: !73, line: 256, baseType: !607, size: 192, offset: 3840)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !608, line: 68, baseType: !609)
!608 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !608, line: 62, size: 192, elements: !610)
!610 = !{!611, !612, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !609, file: !608, line: 65, baseType: !539, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !609, file: !608, line: 66, baseType: !539, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !609, file: !608, line: 67, baseType: !539, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !504, file: !73, line: 259, baseType: !615, size: 512, offset: 4032)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !617)
!617 = !{!618, !625, !626, !628}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !616, file: !247, line: 43, baseType: !619, size: 192)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !621)
!621 = !{!622, !623, !624}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !620, file: !247, line: 35, baseType: !539, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !620, file: !247, line: 36, baseType: !539, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !620, file: !247, line: 37, baseType: !539, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !616, file: !247, line: 44, baseType: !619, size: 192, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !616, file: !247, line: 47, baseType: !627, size: 32, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !616, file: !247, line: 50, baseType: !513, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !504, file: !73, line: 262, baseType: !630, size: 64, offset: 4544)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !631, line: 26, baseType: !632)
!631 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!518, !635, !637, !640, !557}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !639)
!639 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !642)
!642 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !504, file: !73, line: 265, baseType: !557, size: 64, offset: 4608)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !504, file: !73, line: 266, baseType: !557, size: 64, offset: 4672)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !504, file: !73, line: 267, baseType: !557, size: 64, offset: 4736)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !504, file: !73, line: 270, baseType: !647, size: 64, offset: 4800)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !649)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !504, file: !73, line: 273, baseType: !651, size: 64, offset: 4864)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !653)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !504, file: !73, line: 276, baseType: !655, size: 32768, offset: 4928)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 32768, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 4096)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !504, file: !73, line: 277, baseType: !655, size: 32768, offset: 37696)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !504, file: !73, line: 278, baseType: !655, size: 32768, offset: 70464)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !504, file: !73, line: 281, baseType: !513, size: 64, offset: 103232)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !504, file: !73, line: 282, baseType: !513, size: 64, offset: 103296)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !504, file: !73, line: 285, baseType: !663, size: 448, offset: 103360)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !665)
!665 = !{!666, !668, !669, !670, !671, !672, !673, !678}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !664, file: !253, line: 105, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !664, file: !253, line: 108, baseType: !416, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !664, file: !253, line: 111, baseType: !561, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !664, file: !253, line: 112, baseType: !561, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !664, file: !253, line: 115, baseType: !557, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !664, file: !253, line: 118, baseType: !518, size: 32, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !664, file: !253, line: 121, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !676, line: 26, baseType: !677)
!676 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !676, line: 25, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !664, file: !253, line: 124, baseType: !513, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !504, file: !73, line: 288, baseType: !518, size: 32, offset: 103808)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !73, line: 291, baseType: !681, size: 64, offset: 103872)
!681 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !566)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !504, file: !73, line: 294, baseType: !674, size: 64, offset: 103936)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !504, file: !73, line: 297, baseType: !684, size: 256, offset: 104000)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !686)
!686 = !{!687, !688, !689, !692}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !685, file: !89, line: 30, baseType: !561, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !685, file: !89, line: 33, baseType: !513, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !685, file: !89, line: 36, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !685, file: !89, line: 39, baseType: !513, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !504, file: !73, line: 298, baseType: !684, size: 256, offset: 104256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !504, file: !73, line: 299, baseType: !695, size: 64, offset: 104512)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !504, file: !73, line: 302, baseType: !513, size: 64, offset: 104576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !504, file: !73, line: 305, baseType: !513, size: 64, offset: 104640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !504, file: !73, line: 308, baseType: !599, size: 64, offset: 104704)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !504, file: !73, line: 309, baseType: !599, size: 64, offset: 104768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !73, line: 310, baseType: !599, size: 64, offset: 104832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !504, file: !73, line: 313, baseType: !702, size: 32, offset: 104896)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !504, file: !73, line: 316, baseType: !518, size: 32, offset: 104928)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !504, file: !73, line: 319, baseType: !526, size: 64, offset: 104960)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !504, file: !73, line: 322, baseType: !599, size: 64, offset: 105024)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !504, file: !73, line: 325, baseType: !574, size: 256, offset: 105088)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !504, file: !73, line: 328, baseType: !557, size: 64, offset: 105344)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !504, file: !73, line: 329, baseType: !557, size: 64, offset: 105408)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !73, line: 332, baseType: !710, size: 32, offset: 105472)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !504, file: !73, line: 335, baseType: !518, size: 32, offset: 105504)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !504, file: !73, line: 338, baseType: !641, size: 64, offset: 105536)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !504, file: !73, line: 341, baseType: !518, size: 32, offset: 105600)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !504, file: !73, line: 344, baseType: !513, size: 64, offset: 105664)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !504, file: !73, line: 347, baseType: !716, size: 64, offset: 105728)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !717, line: 7, baseType: !718)
!717 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !569, line: 160, baseType: !570)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !504, file: !73, line: 350, baseType: !720, size: 32, offset: 105792)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !504, file: !73, line: 353, baseType: !513, size: 64, offset: 105856)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !494, file: !495, line: 100, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !494, file: !495, line: 103, baseType: !518, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "image_area", scope: !494, file: !495, line: 107, baseType: !566, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !494, file: !495, line: 110, baseType: !702, size: 32, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel", scope: !494, file: !495, line: 113, baseType: !728, size: 32, offset: 352)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !369, line: 47, baseType: !368)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !494, file: !495, line: 116, baseType: !587, size: 32, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "limit_reached", scope: !494, file: !495, line: 120, baseType: !518, size: 32, offset: 416)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "do_interpolate", scope: !494, file: !495, line: 121, baseType: !518, size: 32, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "average_defined", scope: !494, file: !495, line: 122, baseType: !518, size: 32, offset: 480)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "average_pixel", scope: !494, file: !495, line: 125, baseType: !734, size: 448, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !745, !746, !747, !748}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !735, file: !326, line: 107, baseType: !507, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !735, file: !326, line: 110, baseType: !509, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !735, file: !326, line: 113, baseType: !518, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !735, file: !326, line: 116, baseType: !539, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !735, file: !326, line: 119, baseType: !513, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !735, file: !326, line: 122, baseType: !743, size: 32, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !744)
!744 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !735, file: !326, line: 123, baseType: !743, size: 32, offset: 288)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !735, file: !326, line: 124, baseType: !743, size: 32, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !735, file: !326, line: 125, baseType: !743, size: 32, offset: 352)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !735, file: !326, line: 126, baseType: !743, size: 32, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !494, file: !495, line: 129, baseType: !539, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !494, file: !495, line: 129, baseType: !539, size: 64, offset: 1024)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !494, file: !495, line: 129, baseType: !539, size: 64, offset: 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "Vlimit", scope: !494, file: !495, line: 130, baseType: !539, size: 64, offset: 1152)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "Ulimit", scope: !494, file: !495, line: 130, baseType: !539, size: 64, offset: 1216)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "Uwidth", scope: !494, file: !495, line: 130, baseType: !539, size: 64, offset: 1280)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !494, file: !495, line: 130, baseType: !539, size: 64, offset: 1344)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "filter_lut", scope: !494, file: !495, line: 135, baseType: !757, size: 65536, offset: 1408)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 65536, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 1024)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "support", scope: !494, file: !495, line: 147, baseType: !539, size: 64, offset: 66944)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !494, file: !495, line: 150, baseType: !513, size: 64, offset: 67008)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !530)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResizeFilter", file: !769, line: 26, baseType: !770)
!769 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3d8d663b1b2fd0b2a79f67f76b4db66b")
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ResizeFilter", file: !769, line: 25, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!773 = !{i32 7, !"Dwarf Version", i32 5}
!774 = !{i32 2, !"Debug Info Version", i32 3}
!775 = !{i32 1, !"wchar_size", i32 4}
!776 = !{i32 7, !"PIC Level", i32 2}
!777 = !{i32 7, !"PIE Level", i32 2}
!778 = !{i32 7, !"uwtable", i32 2}
!779 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!780 = distinct !DISubprogram(name: "AcquireResampleFilter", scope: !495, file: !495, line: 206, type: !781, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !785)
!781 = !DISubroutineType(types: !782)
!782 = !{!492, !783, !723}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!785 = !{!786, !787, !788, !789, !792}
!786 = !DILocalVariable(name: "image", arg: 1, scope: !780, file: !495, line: 206, type: !783)
!787 = !DILocalVariable(name: "exception", arg: 2, scope: !780, file: !495, line: 207, type: !723)
!788 = !DILocalVariable(name: "resample_filter", scope: !780, file: !495, line: 210, type: !492)
!789 = !DILocalVariable(name: "message", scope: !790, file: !495, line: 222, type: !561)
!790 = distinct !DILexicalBlock(scope: !791, file: !495, line: 222, column: 5)
!791 = distinct !DILexicalBlock(scope: !780, file: !495, line: 221, column: 7)
!792 = !DILocalVariable(name: "exception", scope: !790, file: !495, line: 222, type: !663)
!793 = !DILocation(line: 0, scope: !780)
!794 = !DILocation(line: 214, column: 14, scope: !795)
!795 = distinct !DILexicalBlock(scope: !780, file: !495, line: 214, column: 7)
!796 = !{!797, !798, i64 12976}
!797 = !{!"_Image", !798, i64 0, !798, i64 4, !798, i64 8, !800, i64 16, !798, i64 24, !798, i64 28, !798, i64 32, !800, i64 40, !800, i64 48, !800, i64 56, !800, i64 64, !801, i64 72, !802, i64 80, !802, i64 88, !802, i64 96, !804, i64 104, !805, i64 112, !798, i64 208, !801, i64 216, !798, i64 224, !801, i64 232, !801, i64 240, !801, i64 248, !800, i64 256, !804, i64 264, !804, i64 272, !807, i64 280, !807, i64 312, !807, i64 344, !804, i64 376, !804, i64 384, !804, i64 392, !798, i64 400, !798, i64 404, !798, i64 408, !798, i64 412, !798, i64 416, !798, i64 420, !801, i64 424, !800, i64 432, !800, i64 440, !800, i64 448, !800, i64 456, !800, i64 464, !800, i64 472, !808, i64 480, !809, i64 504, !801, i64 568, !801, i64 576, !801, i64 584, !801, i64 592, !801, i64 600, !801, i64 608, !798, i64 616, !798, i64 4712, !798, i64 8808, !800, i64 12904, !800, i64 12912, !811, i64 12920, !798, i64 12976, !800, i64 12984, !801, i64 12992, !813, i64 13000, !813, i64 13032, !801, i64 13064, !800, i64 13072, !800, i64 13080, !801, i64 13088, !801, i64 13096, !801, i64 13104, !798, i64 13112, !798, i64 13116, !802, i64 13120, !801, i64 13128, !807, i64 13136, !801, i64 13168, !801, i64 13176, !798, i64 13184, !798, i64 13188, !814, i64 13192, !798, i64 13200, !800, i64 13208, !800, i64 13216, !798, i64 13224, !800, i64 13232}
!798 = !{!"omnipotent char", !799, i64 0}
!799 = !{!"Simple C/C++ TBAA"}
!800 = !{!"long", !798, i64 0}
!801 = !{!"any pointer", !798, i64 0}
!802 = !{!"_PixelPacket", !803, i64 0, !803, i64 2, !803, i64 4, !803, i64 6}
!803 = !{!"short", !798, i64 0}
!804 = !{!"double", !798, i64 0}
!805 = !{!"_ChromaticityInfo", !806, i64 0, !806, i64 24, !806, i64 48, !806, i64 72}
!806 = !{!"_PrimaryInfo", !804, i64 0, !804, i64 8, !804, i64 16}
!807 = !{!"_RectangleInfo", !800, i64 0, !800, i64 8, !800, i64 16, !800, i64 24}
!808 = !{!"_ErrorInfo", !804, i64 0, !804, i64 8, !804, i64 16}
!809 = !{!"_TimerInfo", !810, i64 0, !810, i64 24, !798, i64 48, !800, i64 56}
!810 = !{!"_Timer", !804, i64 0, !804, i64 8, !804, i64 16}
!811 = !{!"_ExceptionInfo", !798, i64 0, !812, i64 4, !801, i64 8, !801, i64 16, !801, i64 24, !798, i64 32, !801, i64 40, !800, i64 48}
!812 = !{!"int", !798, i64 0}
!813 = !{!"_ProfileInfo", !801, i64 0, !800, i64 8, !801, i64 16, !800, i64 24}
!814 = !{!"long long", !798, i64 0}
!815 = !DILocation(line: 214, column: 20, scope: !795)
!816 = !DILocation(line: 214, column: 7, scope: !780)
!817 = !DILocation(line: 215, column: 68, scope: !795)
!818 = !DILocation(line: 215, column: 12, scope: !795)
!819 = !DILocation(line: 215, column: 5, scope: !795)
!820 = !DILocation(line: 219, column: 38, scope: !780)
!821 = !DILocation(line: 221, column: 23, scope: !791)
!822 = !DILocation(line: 221, column: 7, scope: !780)
!823 = !DILocation(line: 222, column: 5, scope: !790)
!824 = !{!812, !812, i64 0}
!825 = !DILocation(line: 0, scope: !790)
!826 = !DILocation(line: 223, column: 10, scope: !780)
!827 = !DILocation(line: 225, column: 20, scope: !780)
!828 = !DILocation(line: 225, column: 29, scope: !780)
!829 = !{!830, !801, i64 16}
!830 = !{!"_ResampleFilter", !801, i64 0, !801, i64 8, !801, i64 16, !798, i64 24, !800, i64 32, !798, i64 40, !798, i64 44, !798, i64 48, !798, i64 52, !798, i64 56, !798, i64 60, !831, i64 64, !804, i64 120, !804, i64 128, !804, i64 136, !804, i64 144, !804, i64 152, !804, i64 160, !804, i64 168, !798, i64 176, !804, i64 8368, !800, i64 8376}
!831 = !{!"_MagickPixelPacket", !798, i64 0, !798, i64 4, !798, i64 8, !804, i64 16, !800, i64 24, !832, i64 32, !832, i64 36, !832, i64 40, !832, i64 44, !832, i64 48}
!832 = !{!"float", !798, i64 0}
!833 = !DILocation(line: 226, column: 26, scope: !780)
!834 = !DILocation(line: 226, column: 20, scope: !780)
!835 = !DILocation(line: 226, column: 25, scope: !780)
!836 = !{!830, !801, i64 8}
!837 = !DILocation(line: 227, column: 25, scope: !780)
!838 = !DILocation(line: 227, column: 24, scope: !780)
!839 = !{!830, !801, i64 0}
!840 = !DILocation(line: 229, column: 26, scope: !780)
!841 = !DILocation(line: 229, column: 20, scope: !780)
!842 = !DILocation(line: 229, column: 25, scope: !780)
!843 = !{!830, !798, i64 24}
!844 = !DILocation(line: 230, column: 20, scope: !780)
!845 = !DILocation(line: 230, column: 29, scope: !780)
!846 = !{!830, !800, i64 8376}
!847 = !DILocation(line: 232, column: 49, scope: !780)
!848 = !{!797, !800, i64 40}
!849 = !DILocation(line: 232, column: 64, scope: !780)
!850 = !{!797, !800, i64 48}
!851 = !DILocation(line: 232, column: 56, scope: !780)
!852 = !DILocation(line: 232, column: 20, scope: !780)
!853 = !DILocation(line: 232, column: 30, scope: !780)
!854 = !{!830, !800, i64 32}
!855 = !DILocation(line: 233, column: 20, scope: !780)
!856 = !DILocation(line: 233, column: 36, scope: !780)
!857 = !{!830, !798, i64 60}
!858 = !DILocation(line: 236, column: 45, scope: !780)
!859 = !{!797, !798, i64 400}
!860 = !DILocation(line: 236, column: 60, scope: !780)
!861 = !{!797, !804, i64 384}
!862 = !DILocation(line: 236, column: 3, scope: !780)
!863 = !DILocation(line: 238, column: 12, scope: !780)
!864 = !{!797, !798, i64 13112}
!865 = !DILocalVariable(name: "resample_filter", arg: 1, scope: !866, file: !495, line: 1417, type: !492)
!866 = distinct !DISubprogram(name: "SetResampleFilterInterpolateMethod", scope: !495, file: !495, line: 1416, type: !867, scopeLine: 1418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !870)
!867 = !DISubroutineType(types: !868)
!868 = !{!518, !492, !869}
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!870 = !{!865, !871}
!871 = !DILocalVariable(name: "method", arg: 2, scope: !866, file: !495, line: 1417, type: !869)
!872 = !DILocation(line: 0, scope: !866, inlinedAt: !873)
!873 = distinct !DILocation(line: 237, column: 10, scope: !780)
!874 = !DILocation(line: 1422, column: 24, scope: !875, inlinedAt: !873)
!875 = distinct !DILexicalBlock(scope: !866, file: !495, line: 1422, column: 7)
!876 = !DILocation(line: 1422, column: 30, scope: !875, inlinedAt: !873)
!877 = !DILocation(line: 1422, column: 7, scope: !866, inlinedAt: !873)
!878 = !DILocation(line: 1424, column: 24, scope: !875, inlinedAt: !873)
!879 = !DILocation(line: 1424, column: 31, scope: !875, inlinedAt: !873)
!880 = !DILocation(line: 1423, column: 12, scope: !875, inlinedAt: !873)
!881 = !DILocation(line: 1423, column: 5, scope: !875, inlinedAt: !873)
!882 = !DILocation(line: 1425, column: 20, scope: !866, inlinedAt: !873)
!883 = !DILocation(line: 1425, column: 31, scope: !866, inlinedAt: !873)
!884 = !{!830, !798, i64 40}
!885 = !DILocation(line: 240, column: 5, scope: !780)
!886 = !DILocalVariable(name: "resample_filter", arg: 1, scope: !887, file: !495, line: 1456, type: !492)
!887 = distinct !DISubprogram(name: "SetResampleFilterVirtualPixelMethod", scope: !495, file: !495, line: 1455, type: !888, scopeLine: 1457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !891)
!888 = !DISubroutineType(types: !889)
!889 = !{!518, !492, !890}
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!891 = !{!886, !892}
!892 = !DILocalVariable(name: "method", arg: 2, scope: !887, file: !495, line: 1456, type: !890)
!893 = !DILocation(line: 0, scope: !887, inlinedAt: !894)
!894 = distinct !DILocation(line: 239, column: 10, scope: !780)
!895 = !DILocation(line: 1461, column: 24, scope: !896, inlinedAt: !894)
!896 = distinct !DILexicalBlock(scope: !887, file: !495, line: 1461, column: 7)
!897 = !DILocation(line: 1461, column: 30, scope: !896, inlinedAt: !894)
!898 = !DILocation(line: 1461, column: 7, scope: !887, inlinedAt: !894)
!899 = !DILocation(line: 1463, column: 24, scope: !896, inlinedAt: !894)
!900 = !DILocation(line: 1463, column: 31, scope: !896, inlinedAt: !894)
!901 = !DILocation(line: 1462, column: 12, scope: !896, inlinedAt: !894)
!902 = !DILocation(line: 1462, column: 5, scope: !896, inlinedAt: !894)
!903 = !DILocation(line: 1464, column: 20, scope: !887, inlinedAt: !894)
!904 = !DILocation(line: 1464, column: 33, scope: !887, inlinedAt: !894)
!905 = !{!830, !798, i64 44}
!906 = !DILocation(line: 1465, column: 14, scope: !907, inlinedAt: !894)
!907 = distinct !DILexicalBlock(scope: !887, file: !495, line: 1465, column: 7)
!908 = !DILocation(line: 1465, column: 7, scope: !887, inlinedAt: !894)
!909 = !DILocation(line: 1466, column: 60, scope: !907, inlinedAt: !894)
!910 = !DILocation(line: 1466, column: 12, scope: !907, inlinedAt: !894)
!911 = !DILocation(line: 1466, column: 5, scope: !907, inlinedAt: !894)
!912 = !DILocation(line: 242, column: 3, scope: !780)
!913 = !DISubprogram(name: "LogMagickEvent", scope: !390, file: !390, line: 83, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!914 = !DISubroutineType(types: !915)
!915 = !{!518, !916, !635, !635, !918, !635, null}
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !390, line: 58, baseType: !389)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!919 = !{}
!920 = !DISubprogram(name: "AcquireMagickMemory", scope: !921, file: !921, line: 40, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!921 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!922 = !DISubroutineType(types: !923)
!923 = !{!557, !918}
!924 = !DISubprogram(name: "GetExceptionInfo", scope: !253, file: !253, line: 166, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !723}
!927 = !DISubprogram(name: "GetExceptionMessage", scope: !253, file: !253, line: 137, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!928 = !DISubroutineType(types: !929)
!929 = !{!561, !930}
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!931 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!932 = !DISubroutineType(types: !933)
!933 = !{!518, !723, !635, !635, !918, !934, !635, !635, null}
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!935 = !DISubprogram(name: "DestroyString", scope: !936, file: !936, line: 46, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!936 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!937 = !DISubroutineType(types: !938)
!938 = !{!561, !561}
!939 = !DISubprogram(name: "CatchException", scope: !253, file: !253, line: 164, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!940 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!941 = !DISubroutineType(types: !942)
!942 = !{!723, !723}
!943 = !DISubprogram(name: "MagickCoreTerminus", scope: !944, file: !944, line: 147, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!944 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!945 = !DISubroutineType(types: !946)
!946 = !{null}
!947 = !DISubprogram(name: "ResetMagickMemory", scope: !921, file: !921, line: 52, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!948 = !DISubroutineType(types: !949)
!949 = !{!557, !557, !416, !918}
!950 = !DISubprogram(name: "ReferenceImage", scope: !73, file: !73, line: 515, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!951 = !DISubroutineType(types: !952)
!952 = !{!502, !502}
!953 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !369, file: !369, line: 55, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!954 = !DISubroutineType(types: !955)
!955 = !{!498, !783, !723}
!956 = !DISubprogram(name: "IsEventLogging", scope: !390, file: !390, line: 80, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!957 = !DISubroutineType(types: !958)
!958 = !{!518}
!959 = distinct !DISubprogram(name: "SetResampleFilter", scope: !495, file: !495, line: 1253, type: !960, scopeLine: 1255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !964)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !492, !962, !963}
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!964 = !{!965, !966, !967, !968, !969, !971, !972, !976}
!965 = !DILocalVariable(name: "resample_filter", arg: 1, scope: !959, file: !495, line: 1253, type: !492)
!966 = !DILocalVariable(name: "filter", arg: 2, scope: !959, file: !495, line: 1254, type: !962)
!967 = !DILocalVariable(name: "blur", arg: 3, scope: !959, file: !495, line: 1254, type: !963)
!968 = !DILocalVariable(name: "resize_filter", scope: !959, file: !495, line: 1257, type: !767)
!969 = !DILocalVariable(name: "Q", scope: !970, file: !495, line: 1297, type: !416)
!970 = distinct !DILexicalBlock(scope: !959, file: !495, line: 1296, column: 3)
!971 = !DILocalVariable(name: "r_scale", scope: !970, file: !495, line: 1299, type: !539)
!972 = !DILocalVariable(name: "Q", scope: !973, file: !495, line: 1352, type: !416)
!973 = distinct !DILexicalBlock(scope: !974, file: !495, line: 1350, column: 7)
!974 = distinct !DILexicalBlock(scope: !975, file: !495, line: 1348, column: 9)
!975 = distinct !DILexicalBlock(scope: !959, file: !495, line: 1347, column: 3)
!976 = !DILocalVariable(name: "r_scale", scope: !973, file: !495, line: 1354, type: !539)
!977 = !DILocation(line: 0, scope: !959)
!978 = !DILocation(line: 1262, column: 20, scope: !959)
!979 = !DILocation(line: 1262, column: 35, scope: !959)
!980 = !{!830, !798, i64 56}
!981 = !DILocation(line: 1263, column: 20, scope: !959)
!982 = !DILocation(line: 1266, column: 15, scope: !983)
!983 = distinct !DILexicalBlock(scope: !959, file: !495, line: 1266, column: 8)
!984 = !DILocation(line: 1266, column: 8, scope: !959)
!985 = !{!830, !798, i64 48}
!986 = !DILocation(line: 1269, column: 32, scope: !987)
!987 = distinct !DILexicalBlock(scope: !959, file: !495, line: 1269, column: 8)
!988 = !DILocation(line: 1269, column: 8, scope: !959)
!989 = !DILocation(line: 1270, column: 37, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !495, line: 1269, column: 49)
!991 = !DILocation(line: 1271, column: 5, scope: !990)
!992 = !DILocation(line: 1274, column: 56, scope: !959)
!993 = !DILocation(line: 1275, column: 32, scope: !959)
!994 = !DILocation(line: 1275, column: 65, scope: !959)
!995 = !DILocation(line: 1274, column: 19, scope: !959)
!996 = !DILocation(line: 1276, column: 21, scope: !997)
!997 = distinct !DILexicalBlock(scope: !959, file: !495, line: 1276, column: 7)
!998 = !DILocation(line: 1276, column: 7, scope: !959)
!999 = !DILocation(line: 1277, column: 50, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !495, line: 1276, column: 47)
!1001 = !DILocation(line: 1277, column: 12, scope: !1000)
!1002 = !DILocation(line: 1280, column: 29, scope: !1000)
!1003 = !DILocation(line: 1281, column: 37, scope: !1000)
!1004 = !DILocation(line: 1282, column: 5, scope: !1000)
!1005 = !DILocation(line: 1289, column: 30, scope: !959)
!1006 = !DILocation(line: 1289, column: 20, scope: !959)
!1007 = !DILocation(line: 1289, column: 28, scope: !959)
!1008 = !{!830, !804, i64 8368}
!1009 = !DILocation(line: 1302, column: 39, scope: !970)
!1010 = !DILocation(line: 0, scope: !970)
!1011 = !DILocation(line: 1303, column: 5, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !970, file: !495, line: 1303, column: 5)
!1013 = !DILocation(line: 1305, column: 53, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1012, file: !495, line: 1303, column: 5)
!1015 = !DILocation(line: 1305, column: 48, scope: !1014)
!1016 = !DILocation(line: 1305, column: 63, scope: !1014)
!1017 = !DILocation(line: 1305, column: 12, scope: !1014)
!1018 = !DILocation(line: 1304, column: 40, scope: !1014)
!1019 = !DILocation(line: 1304, column: 7, scope: !1014)
!1020 = !DILocation(line: 1304, column: 38, scope: !1014)
!1021 = !{!804, !804, i64 0}
!1022 = !DILocation(line: 1303, column: 29, scope: !1014)
!1023 = !DILocation(line: 1303, column: 15, scope: !1014)
!1024 = distinct !{!1024, !1011, !1025, !1026, !1027}
!1025 = !DILocation(line: 1305, column: 71, scope: !1012)
!1026 = !{!"llvm.loop.mustprogress"}
!1027 = !{!"llvm.loop.unroll.disable"}
!1028 = !DILocation(line: 1308, column: 21, scope: !970)
!1029 = !DILocation(line: 1321, column: 3, scope: !959)
!1030 = !DILocation(line: 1348, column: 56, scope: !974)
!1031 = !DILocation(line: 1348, column: 22, scope: !974)
!1032 = !DILocation(line: 1348, column: 9, scope: !974)
!1033 = !DILocation(line: 1348, column: 9, scope: !975)
!1034 = !DILocation(line: 1361, column: 9, scope: !973)
!1035 = !DILocation(line: 1364, column: 37, scope: !973)
!1036 = !DILocation(line: 1364, column: 20, scope: !973)
!1037 = !DILocation(line: 1363, column: 32, scope: !973)
!1038 = !DILocation(line: 1362, column: 9, scope: !973)
!1039 = !DILocation(line: 1365, column: 9, scope: !973)
!1040 = !DILocation(line: 1366, column: 9, scope: !973)
!1041 = !DILocation(line: 1367, column: 9, scope: !973)
!1042 = !DILocation(line: 1368, column: 9, scope: !973)
!1043 = !DILocation(line: 1369, column: 9, scope: !973)
!1044 = !DILocation(line: 1370, column: 9, scope: !973)
!1045 = !DILocation(line: 1371, column: 9, scope: !973)
!1046 = !DILocation(line: 1372, column: 9, scope: !973)
!1047 = !DILocation(line: 1375, column: 36, scope: !973)
!1048 = !DILocation(line: 1375, column: 43, scope: !973)
!1049 = !DILocation(line: 0, scope: !973)
!1050 = !DILocation(line: 1376, column: 9, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !973, file: !495, line: 1376, column: 9)
!1052 = !DILocation(line: 1378, column: 15, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1051, file: !495, line: 1376, column: 9)
!1054 = !DILocation(line: 1378, column: 41, scope: !1053)
!1055 = !DILocation(line: 1378, column: 36, scope: !1053)
!1056 = !DILocation(line: 1378, column: 51, scope: !1053)
!1057 = !DILocation(line: 1379, column: 15, scope: !1053)
!1058 = !DILocation(line: 1379, column: 36, scope: !1053)
!1059 = !DILocation(line: 1377, column: 11, scope: !1053)
!1060 = !DILocation(line: 1376, column: 33, scope: !1053)
!1061 = !DILocation(line: 1376, column: 19, scope: !1053)
!1062 = distinct !{!1062, !1050, !1063, !1026, !1027}
!1063 = !DILocation(line: 1379, column: 67, scope: !1051)
!1064 = !DILocation(line: 1380, column: 9, scope: !973)
!1065 = !DILocation(line: 1381, column: 7, scope: !973)
!1066 = !DILocation(line: 1388, column: 1, scope: !959)
!1067 = !DILocation(line: 0, scope: !866)
!1068 = !DILocation(line: 1422, column: 24, scope: !875)
!1069 = !DILocation(line: 1422, column: 30, scope: !875)
!1070 = !DILocation(line: 1422, column: 7, scope: !866)
!1071 = !DILocation(line: 1424, column: 24, scope: !875)
!1072 = !DILocation(line: 1424, column: 31, scope: !875)
!1073 = !DILocation(line: 1423, column: 12, scope: !875)
!1074 = !DILocation(line: 1423, column: 5, scope: !875)
!1075 = !DILocation(line: 1425, column: 20, scope: !866)
!1076 = !DILocation(line: 1425, column: 31, scope: !866)
!1077 = !DILocation(line: 1426, column: 3, scope: !866)
!1078 = !DILocation(line: 0, scope: !887)
!1079 = !DILocation(line: 1461, column: 24, scope: !896)
!1080 = !DILocation(line: 1461, column: 30, scope: !896)
!1081 = !DILocation(line: 1461, column: 7, scope: !887)
!1082 = !DILocation(line: 1463, column: 24, scope: !896)
!1083 = !DILocation(line: 1463, column: 31, scope: !896)
!1084 = !DILocation(line: 1462, column: 12, scope: !896)
!1085 = !DILocation(line: 1462, column: 5, scope: !896)
!1086 = !DILocation(line: 1464, column: 20, scope: !887)
!1087 = !DILocation(line: 1464, column: 33, scope: !887)
!1088 = !DILocation(line: 1465, column: 14, scope: !907)
!1089 = !DILocation(line: 1465, column: 7, scope: !887)
!1090 = !DILocation(line: 1466, column: 60, scope: !907)
!1091 = !DILocation(line: 1466, column: 12, scope: !907)
!1092 = !DILocation(line: 1466, column: 5, scope: !907)
!1093 = !DILocation(line: 1467, column: 3, scope: !887)
!1094 = !DISubprogram(name: "GetImageVirtualPixelMethod", scope: !73, file: !73, line: 558, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!728, !783}
!1097 = distinct !DISubprogram(name: "DestroyResampleFilter", scope: !495, file: !495, line: 269, type: !1098, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!492, !492}
!1100 = !{!1101}
!1101 = !DILocalVariable(name: "resample_filter", arg: 1, scope: !1097, file: !495, line: 270, type: !492)
!1102 = !DILocation(line: 0, scope: !1097)
!1103 = !DILocation(line: 275, column: 24, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1097, file: !495, line: 275, column: 7)
!1105 = !DILocation(line: 275, column: 30, scope: !1104)
!1106 = !DILocation(line: 275, column: 7, scope: !1097)
!1107 = !DILocation(line: 277, column: 24, scope: !1104)
!1108 = !DILocation(line: 277, column: 31, scope: !1104)
!1109 = !DILocation(line: 276, column: 12, scope: !1104)
!1110 = !DILocation(line: 276, column: 5, scope: !1104)
!1111 = !DILocation(line: 278, column: 59, scope: !1097)
!1112 = !DILocation(line: 278, column: 25, scope: !1097)
!1113 = !DILocation(line: 278, column: 24, scope: !1097)
!1114 = !DILocation(line: 279, column: 56, scope: !1097)
!1115 = !DILocation(line: 279, column: 26, scope: !1097)
!1116 = !DILocation(line: 279, column: 25, scope: !1097)
!1117 = !DILocation(line: 283, column: 20, scope: !1097)
!1118 = !DILocation(line: 283, column: 29, scope: !1097)
!1119 = !DILocation(line: 284, column: 38, scope: !1097)
!1120 = !DILocation(line: 285, column: 3, scope: !1097)
!1121 = !DISubprogram(name: "DestroyCacheView", scope: !369, file: !369, line: 57, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!498, !498}
!1124 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1125 = !DISubprogram(name: "RelinquishMagickMemory", scope: !921, file: !921, line: 51, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!557, !557}
!1128 = distinct !DISubprogram(name: "ResamplePixelColor", scope: !495, file: !495, line: 319, type: !1129, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!518, !492, !963, !963, !762}
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1160}
!1132 = !DILocalVariable(name: "resample_filter", arg: 1, scope: !1128, file: !495, line: 320, type: !492)
!1133 = !DILocalVariable(name: "u0", arg: 2, scope: !1128, file: !495, line: 320, type: !963)
!1134 = !DILocalVariable(name: "v0", arg: 3, scope: !1128, file: !495, line: 320, type: !963)
!1135 = !DILocalVariable(name: "pixel", arg: 4, scope: !1128, file: !495, line: 321, type: !762)
!1136 = !DILocalVariable(name: "status", scope: !1128, file: !495, line: 324, type: !518)
!1137 = !DILocalVariable(name: "u", scope: !1128, file: !495, line: 326, type: !566)
!1138 = !DILocalVariable(name: "v", scope: !1128, file: !495, line: 326, type: !566)
!1139 = !DILocalVariable(name: "v1", scope: !1128, file: !495, line: 326, type: !566)
!1140 = !DILocalVariable(name: "v2", scope: !1128, file: !495, line: 326, type: !566)
!1141 = !DILocalVariable(name: "uw", scope: !1128, file: !495, line: 326, type: !566)
!1142 = !DILocalVariable(name: "hit", scope: !1128, file: !495, line: 326, type: !566)
!1143 = !DILocalVariable(name: "u1", scope: !1128, file: !495, line: 327, type: !539)
!1144 = !DILocalVariable(name: "U", scope: !1128, file: !495, line: 328, type: !539)
!1145 = !DILocalVariable(name: "V", scope: !1128, file: !495, line: 328, type: !539)
!1146 = !DILocalVariable(name: "Q", scope: !1128, file: !495, line: 328, type: !539)
!1147 = !DILocalVariable(name: "DQ", scope: !1128, file: !495, line: 328, type: !539)
!1148 = !DILocalVariable(name: "DDQ", scope: !1128, file: !495, line: 328, type: !539)
!1149 = !DILocalVariable(name: "divisor_c", scope: !1128, file: !495, line: 329, type: !539)
!1150 = !DILocalVariable(name: "divisor_m", scope: !1128, file: !495, line: 329, type: !539)
!1151 = !DILocalVariable(name: "weight", scope: !1128, file: !495, line: 330, type: !539)
!1152 = !DILocalVariable(name: "pixels", scope: !1128, file: !495, line: 331, type: !763)
!1153 = !DILocalVariable(name: "indexes", scope: !1128, file: !495, line: 332, type: !771)
!1154 = !DILocalVariable(name: "average_image", scope: !1155, file: !495, line: 475, type: !502)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !495, line: 473, column: 64)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !495, line: 473, column: 14)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !495, line: 436, column: 47)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !495, line: 435, column: 41)
!1159 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 435, column: 8)
!1160 = !DILocalVariable(name: "average_view", scope: !1155, file: !495, line: 478, type: !498)
!1161 = !DILocation(line: 0, scope: !1128)
!1162 = !DILocation(line: 338, column: 25, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 338, column: 8)
!1164 = !DILocation(line: 338, column: 8, scope: !1163)
!1165 = !DILocation(line: 338, column: 8, scope: !1128)
!1166 = !DILocation(line: 339, column: 58, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !495, line: 338, column: 42)
!1168 = !DILocation(line: 340, column: 24, scope: !1167)
!1169 = !DILocation(line: 340, column: 46, scope: !1167)
!1170 = !DILocation(line: 341, column: 24, scope: !1167)
!1171 = !DILocation(line: 339, column: 12, scope: !1167)
!1172 = !DILocation(line: 342, column: 5, scope: !1167)
!1173 = !DILocation(line: 359, column: 29, scope: !1128)
!1174 = !DILocation(line: 359, column: 3, scope: !1128)
!1175 = !DILocation(line: 367, column: 29, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !495, line: 367, column: 12)
!1177 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 359, column: 45)
!1178 = !{!830, !798, i64 52}
!1179 = !DILocation(line: 367, column: 12, scope: !1176)
!1180 = !DILocation(line: 368, column: 12, scope: !1176)
!1181 = !DILocation(line: 368, column: 37, scope: !1176)
!1182 = !{!830, !804, i64 152}
!1183 = !DILocation(line: 368, column: 18, scope: !1176)
!1184 = !DILocation(line: 368, column: 44, scope: !1176)
!1185 = !DILocation(line: 369, column: 12, scope: !1176)
!1186 = !DILocation(line: 369, column: 18, scope: !1176)
!1187 = !DILocation(line: 369, column: 72, scope: !1176)
!1188 = !DILocation(line: 369, column: 79, scope: !1176)
!1189 = !DILocation(line: 369, column: 46, scope: !1176)
!1190 = !DILocation(line: 369, column: 86, scope: !1176)
!1191 = !DILocation(line: 369, column: 44, scope: !1176)
!1192 = !DILocation(line: 370, column: 12, scope: !1176)
!1193 = !DILocation(line: 370, column: 37, scope: !1176)
!1194 = !{!830, !804, i64 144}
!1195 = !DILocation(line: 370, column: 18, scope: !1176)
!1196 = !DILocation(line: 370, column: 44, scope: !1176)
!1197 = !DILocation(line: 371, column: 12, scope: !1176)
!1198 = !DILocation(line: 371, column: 18, scope: !1176)
!1199 = !DILocation(line: 371, column: 79, scope: !1176)
!1200 = !DILocation(line: 371, column: 46, scope: !1176)
!1201 = !DILocation(line: 371, column: 83, scope: !1176)
!1202 = !DILocation(line: 371, column: 44, scope: !1176)
!1203 = !DILocation(line: 367, column: 12, scope: !1177)
!1204 = !DILocation(line: 378, column: 39, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1177, file: !495, line: 378, column: 15)
!1206 = !DILocation(line: 378, column: 20, scope: !1205)
!1207 = !DILocation(line: 378, column: 46, scope: !1205)
!1208 = !DILocation(line: 378, column: 52, scope: !1205)
!1209 = !DILocation(line: 381, column: 74, scope: !1205)
!1210 = !DILocation(line: 378, column: 77, scope: !1205)
!1211 = !DILocation(line: 378, column: 58, scope: !1205)
!1212 = !DILocation(line: 378, column: 84, scope: !1205)
!1213 = !DILocation(line: 379, column: 12, scope: !1205)
!1214 = !DILocation(line: 380, column: 23, scope: !1205)
!1215 = !DILocation(line: 380, column: 77, scope: !1205)
!1216 = !DILocation(line: 380, column: 84, scope: !1205)
!1217 = !DILocation(line: 380, column: 51, scope: !1205)
!1218 = !DILocation(line: 380, column: 88, scope: !1205)
!1219 = !DILocation(line: 380, column: 49, scope: !1205)
!1220 = !DILocation(line: 381, column: 12, scope: !1205)
!1221 = !DILocation(line: 381, column: 20, scope: !1205)
!1222 = !DILocation(line: 381, column: 81, scope: !1205)
!1223 = !DILocation(line: 381, column: 48, scope: !1205)
!1224 = !DILocation(line: 381, column: 88, scope: !1205)
!1225 = !DILocation(line: 381, column: 46, scope: !1205)
!1226 = !DILocation(line: 382, column: 17, scope: !1205)
!1227 = !DILocation(line: 382, column: 42, scope: !1205)
!1228 = !DILocation(line: 382, column: 23, scope: !1205)
!1229 = !DILocation(line: 382, column: 49, scope: !1205)
!1230 = !DILocation(line: 383, column: 12, scope: !1205)
!1231 = !DILocation(line: 384, column: 23, scope: !1205)
!1232 = !DILocation(line: 384, column: 84, scope: !1205)
!1233 = !DILocation(line: 384, column: 51, scope: !1205)
!1234 = !DILocation(line: 384, column: 88, scope: !1205)
!1235 = !DILocation(line: 384, column: 49, scope: !1205)
!1236 = !DILocation(line: 378, column: 15, scope: !1177)
!1237 = !DILocation(line: 389, column: 37, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1177, file: !495, line: 389, column: 15)
!1239 = !DILocation(line: 389, column: 18, scope: !1238)
!1240 = !DILocation(line: 389, column: 44, scope: !1238)
!1241 = !DILocation(line: 390, column: 12, scope: !1238)
!1242 = !DILocation(line: 390, column: 18, scope: !1238)
!1243 = !DILocation(line: 390, column: 72, scope: !1238)
!1244 = !DILocation(line: 390, column: 79, scope: !1238)
!1245 = !DILocation(line: 390, column: 46, scope: !1238)
!1246 = !DILocation(line: 390, column: 83, scope: !1238)
!1247 = !DILocation(line: 390, column: 44, scope: !1238)
!1248 = !DILocation(line: 389, column: 15, scope: !1177)
!1249 = !DILocation(line: 395, column: 37, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1177, file: !495, line: 395, column: 15)
!1251 = !DILocation(line: 395, column: 18, scope: !1250)
!1252 = !DILocation(line: 395, column: 44, scope: !1250)
!1253 = !DILocation(line: 396, column: 12, scope: !1250)
!1254 = !DILocation(line: 396, column: 18, scope: !1250)
!1255 = !DILocation(line: 396, column: 72, scope: !1250)
!1256 = !DILocation(line: 396, column: 79, scope: !1250)
!1257 = !DILocation(line: 396, column: 46, scope: !1250)
!1258 = !DILocation(line: 396, column: 86, scope: !1250)
!1259 = !DILocation(line: 396, column: 44, scope: !1250)
!1260 = !DILocation(line: 395, column: 15, scope: !1177)
!1261 = !DILocation(line: 401, column: 39, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1177, file: !495, line: 401, column: 15)
!1263 = !DILocation(line: 401, column: 20, scope: !1262)
!1264 = !DILocation(line: 401, column: 46, scope: !1262)
!1265 = !DILocation(line: 401, column: 54, scope: !1262)
!1266 = !DILocation(line: 404, column: 74, scope: !1262)
!1267 = !DILocation(line: 401, column: 79, scope: !1262)
!1268 = !DILocation(line: 401, column: 60, scope: !1262)
!1269 = !DILocation(line: 401, column: 86, scope: !1262)
!1270 = !DILocation(line: 402, column: 12, scope: !1262)
!1271 = !DILocation(line: 403, column: 23, scope: !1262)
!1272 = !DILocation(line: 403, column: 77, scope: !1262)
!1273 = !DILocation(line: 403, column: 84, scope: !1262)
!1274 = !DILocation(line: 403, column: 51, scope: !1262)
!1275 = !DILocation(line: 403, column: 88, scope: !1262)
!1276 = !DILocation(line: 403, column: 49, scope: !1262)
!1277 = !DILocation(line: 404, column: 12, scope: !1262)
!1278 = !DILocation(line: 404, column: 20, scope: !1262)
!1279 = !DILocation(line: 404, column: 81, scope: !1262)
!1280 = !DILocation(line: 404, column: 48, scope: !1262)
!1281 = !DILocation(line: 404, column: 88, scope: !1262)
!1282 = !DILocation(line: 404, column: 46, scope: !1262)
!1283 = !DILocation(line: 405, column: 17, scope: !1262)
!1284 = !DILocation(line: 405, column: 42, scope: !1262)
!1285 = !DILocation(line: 405, column: 23, scope: !1262)
!1286 = !DILocation(line: 405, column: 49, scope: !1262)
!1287 = !DILocation(line: 406, column: 12, scope: !1262)
!1288 = !DILocation(line: 407, column: 23, scope: !1262)
!1289 = !DILocation(line: 407, column: 84, scope: !1262)
!1290 = !DILocation(line: 407, column: 51, scope: !1262)
!1291 = !DILocation(line: 407, column: 88, scope: !1262)
!1292 = !DILocation(line: 407, column: 49, scope: !1262)
!1293 = !DILocation(line: 401, column: 15, scope: !1177)
!1294 = !DILocation(line: 426, column: 58, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !495, line: 420, column: 14)
!1296 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 420, column: 8)
!1297 = !DILocation(line: 427, column: 24, scope: !1295)
!1298 = !DILocation(line: 428, column: 24, scope: !1295)
!1299 = !DILocation(line: 426, column: 12, scope: !1295)
!1300 = !DILocation(line: 429, column: 5, scope: !1295)
!1301 = !DILocation(line: 435, column: 25, scope: !1159)
!1302 = !DILocation(line: 435, column: 8, scope: !1159)
!1303 = !DILocation(line: 435, column: 8, scope: !1128)
!1304 = !DILocation(line: 436, column: 5, scope: !1158)
!1305 = !DILocation(line: 456, column: 62, scope: !1157)
!1306 = !DILocation(line: 457, column: 28, scope: !1157)
!1307 = !DILocation(line: 458, column: 28, scope: !1157)
!1308 = !DILocation(line: 456, column: 16, scope: !1157)
!1309 = !DILocation(line: 459, column: 9, scope: !1157)
!1310 = !DILocation(line: 463, column: 62, scope: !1157)
!1311 = !DILocation(line: 464, column: 28, scope: !1157)
!1312 = !DILocation(line: 465, column: 28, scope: !1157)
!1313 = !DILocation(line: 463, column: 16, scope: !1157)
!1314 = !DILocation(line: 466, column: 9, scope: !1157)
!1315 = !DILocation(line: 473, column: 31, scope: !1156)
!1316 = !DILocation(line: 473, column: 47, scope: !1156)
!1317 = !DILocation(line: 473, column: 14, scope: !1157)
!1318 = !DILocation(line: 480, column: 49, scope: !1155)
!1319 = !DILocation(line: 481, column: 31, scope: !1155)
!1320 = !DILocation(line: 480, column: 11, scope: !1155)
!1321 = !DILocation(line: 482, column: 43, scope: !1155)
!1322 = !DILocation(line: 485, column: 54, scope: !1155)
!1323 = !DILocation(line: 486, column: 30, scope: !1155)
!1324 = !DILocation(line: 485, column: 25, scope: !1155)
!1325 = !DILocation(line: 0, scope: !1155)
!1326 = !DILocation(line: 487, column: 29, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1155, file: !495, line: 487, column: 15)
!1328 = !DILocation(line: 487, column: 15, scope: !1155)
!1329 = !DILocation(line: 489, column: 39, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !495, line: 488, column: 13)
!1331 = !{i64 0, i64 4, !1332, i64 4, i64 4, !1332, i64 8, i64 4, !1332, i64 16, i64 8, !1021, i64 24, i64 8, !1333, i64 32, i64 4, !1334, i64 36, i64 4, !1334, i64 40, i64 4, !1334, i64 44, i64 4, !1334, i64 48, i64 4, !1334}
!1332 = !{!798, !798, i64 0}
!1333 = !{!800, !800, i64 0}
!1334 = !{!832, !832, i64 0}
!1335 = !DILocation(line: 490, column: 15, scope: !1330)
!1336 = !DILocation(line: 493, column: 29, scope: !1155)
!1337 = !DILocation(line: 492, column: 24, scope: !1155)
!1338 = !DILocation(line: 495, column: 30, scope: !1155)
!1339 = !DILocation(line: 494, column: 33, scope: !1155)
!1340 = !DILocation(line: 496, column: 22, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1155, file: !495, line: 496, column: 15)
!1342 = !DILocation(line: 496, column: 15, scope: !1155)
!1343 = !DILocation(line: 497, column: 26, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !495, line: 496, column: 53)
!1345 = !DILocation(line: 498, column: 27, scope: !1344)
!1346 = !DILocation(line: 499, column: 37, scope: !1344)
!1347 = !DILocation(line: 500, column: 13, scope: !1344)
!1348 = !DILocation(line: 502, column: 35, scope: !1155)
!1349 = !DILocation(line: 503, column: 49, scope: !1155)
!1350 = !DILocation(line: 503, column: 11, scope: !1155)
!1351 = !{!797, !798, i64 4}
!1352 = !DILocation(line: 505, column: 24, scope: !1155)
!1353 = !DILocation(line: 506, column: 25, scope: !1155)
!1354 = !DILocation(line: 508, column: 33, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1155, file: !495, line: 508, column: 16)
!1356 = !DILocation(line: 508, column: 47, scope: !1355)
!1357 = !DILocation(line: 508, column: 16, scope: !1155)
!1358 = !DILocation(line: 515, column: 58, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !495, line: 509, column: 13)
!1360 = !{!830, !832, i64 108}
!1361 = !DILocation(line: 514, column: 67, scope: !1359)
!1362 = !DILocation(line: 514, column: 37, scope: !1359)
!1363 = !DILocation(line: 514, column: 36, scope: !1359)
!1364 = !DILocation(line: 516, column: 46, scope: !1359)
!1365 = !DILocation(line: 516, column: 50, scope: !1359)
!1366 = !{!830, !832, i64 96}
!1367 = !DILocation(line: 517, column: 46, scope: !1359)
!1368 = !DILocation(line: 517, column: 52, scope: !1359)
!1369 = !{!830, !832, i64 100}
!1370 = !DILocation(line: 518, column: 46, scope: !1359)
!1371 = !DILocation(line: 518, column: 51, scope: !1359)
!1372 = !{!830, !832, i64 104}
!1373 = !DILocation(line: 523, column: 44, scope: !1359)
!1374 = !DILocation(line: 523, column: 68, scope: !1359)
!1375 = !{!797, !803, i64 86}
!1376 = !DILocation(line: 522, column: 67, scope: !1359)
!1377 = !DILocation(line: 522, column: 37, scope: !1359)
!1378 = !DILocation(line: 522, column: 36, scope: !1359)
!1379 = !DILocation(line: 525, column: 71, scope: !1359)
!1380 = !{!797, !803, i64 84}
!1381 = !DILocation(line: 525, column: 30, scope: !1359)
!1382 = !DILocation(line: 524, column: 50, scope: !1359)
!1383 = !DILocation(line: 527, column: 71, scope: !1359)
!1384 = !{!797, !803, i64 82}
!1385 = !DILocation(line: 527, column: 30, scope: !1359)
!1386 = !DILocation(line: 526, column: 52, scope: !1359)
!1387 = !DILocation(line: 529, column: 54, scope: !1359)
!1388 = !DILocation(line: 529, column: 71, scope: !1359)
!1389 = !{!797, !803, i64 80}
!1390 = !DILocation(line: 529, column: 30, scope: !1359)
!1391 = !DILocation(line: 528, column: 51, scope: !1359)
!1392 = !DILocation(line: 531, column: 23, scope: !1359)
!1393 = !DILocation(line: 530, column: 54, scope: !1359)
!1394 = !DILocation(line: 532, column: 25, scope: !1359)
!1395 = !DILocation(line: 535, column: 50, scope: !1359)
!1396 = !DILocation(line: 536, column: 52, scope: !1359)
!1397 = !DILocation(line: 537, column: 51, scope: !1359)
!1398 = !DILocation(line: 538, column: 54, scope: !1359)
!1399 = !DILocation(line: 540, column: 13, scope: !1359)
!1400 = !DILocation(line: 542, column: 33, scope: !1157)
!1401 = !DILocation(line: 543, column: 9, scope: !1157)
!1402 = !DILocation(line: 554, column: 38, scope: !1128)
!1403 = !DILocation(line: 554, column: 43, scope: !1128)
!1404 = !{!831, !832, i64 40}
!1405 = !DILocation(line: 554, column: 23, scope: !1128)
!1406 = !DILocation(line: 554, column: 29, scope: !1128)
!1407 = !{!831, !832, i64 36}
!1408 = !DILocation(line: 554, column: 10, scope: !1128)
!1409 = !DILocation(line: 554, column: 14, scope: !1128)
!1410 = !{!831, !832, i64 32}
!1411 = !DILocation(line: 555, column: 14, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 555, column: 7)
!1413 = !{!831, !798, i64 8}
!1414 = !DILocation(line: 555, column: 20, scope: !1412)
!1415 = !DILocation(line: 555, column: 7, scope: !1128)
!1416 = !DILocation(line: 555, column: 43, scope: !1412)
!1417 = !DILocation(line: 555, column: 51, scope: !1412)
!1418 = !{!831, !832, i64 44}
!1419 = !DILocation(line: 555, column: 36, scope: !1412)
!1420 = !DILocation(line: 556, column: 14, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 556, column: 7)
!1422 = !{!831, !798, i64 4}
!1423 = !DILocation(line: 556, column: 25, scope: !1421)
!1424 = !DILocation(line: 556, column: 7, scope: !1128)
!1425 = !DILocation(line: 556, column: 51, scope: !1421)
!1426 = !DILocation(line: 556, column: 57, scope: !1421)
!1427 = !{!831, !832, i64 48}
!1428 = !DILocation(line: 556, column: 44, scope: !1421)
!1429 = !DILocation(line: 562, column: 44, scope: !1128)
!1430 = !DILocation(line: 562, column: 25, scope: !1128)
!1431 = !DILocation(line: 562, column: 17, scope: !1128)
!1432 = !DILocation(line: 562, column: 8, scope: !1128)
!1433 = !DILocation(line: 563, column: 26, scope: !1128)
!1434 = !DILocation(line: 563, column: 17, scope: !1128)
!1435 = !DILocation(line: 563, column: 8, scope: !1128)
!1436 = !DILocation(line: 566, column: 38, scope: !1128)
!1437 = !DILocation(line: 566, column: 63, scope: !1128)
!1438 = !{!830, !804, i64 160}
!1439 = !DILocation(line: 567, column: 21, scope: !1128)
!1440 = !DILocation(line: 567, column: 8, scope: !1128)
!1441 = !DILocation(line: 567, column: 46, scope: !1128)
!1442 = !DILocation(line: 580, column: 28, scope: !1128)
!1443 = !{!830, !804, i64 120}
!1444 = !DILocation(line: 580, column: 10, scope: !1128)
!1445 = !DILocation(line: 581, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !495, line: 581, column: 3)
!1447 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 581, column: 3)
!1448 = !DILocation(line: 581, column: 3, scope: !1447)
!1449 = !DILocation(line: 566, column: 14, scope: !1128)
!1450 = !DILocation(line: 566, column: 16, scope: !1128)
!1451 = !{!830, !804, i64 168}
!1452 = !DILocation(line: 566, column: 11, scope: !1128)
!1453 = !DILocation(line: 566, column: 44, scope: !1128)
!1454 = !DILocation(line: 586, column: 18, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1446, file: !495, line: 581, column: 28)
!1456 = !DILocation(line: 586, column: 9, scope: !1455)
!1457 = !DILocation(line: 606, column: 5, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !495, line: 606, column: 5)
!1459 = !DILocation(line: 595, column: 50, scope: !1455)
!1460 = !{!830, !804, i64 128}
!1461 = !DILocation(line: 595, column: 76, scope: !1455)
!1462 = !{!830, !804, i64 136}
!1463 = !DILocation(line: 599, column: 55, scope: !1455)
!1464 = !DILocation(line: 600, column: 26, scope: !1455)
!1465 = !DILocation(line: 599, column: 12, scope: !1455)
!1466 = !DILocation(line: 601, column: 16, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1455, file: !495, line: 601, column: 9)
!1468 = !DILocation(line: 601, column: 9, scope: !1455)
!1469 = !DILocation(line: 587, column: 8, scope: !1455)
!1470 = !DILocation(line: 603, column: 60, scope: !1455)
!1471 = !DILocation(line: 603, column: 13, scope: !1455)
!1472 = distinct !{!1472, !1448, !1473, !1026, !1027}
!1473 = !DILocation(line: 653, column: 3, scope: !1447)
!1474 = !DILocation(line: 581, column: 23, scope: !1446)
!1475 = !DILocation(line: 587, column: 28, scope: !1455)
!1476 = !DILocation(line: 591, column: 9, scope: !1455)
!1477 = !DILocation(line: 591, column: 18, scope: !1455)
!1478 = !DILocation(line: 596, column: 35, scope: !1455)
!1479 = !DILocation(line: 592, column: 9, scope: !1455)
!1480 = !DILocation(line: 592, column: 18, scope: !1455)
!1481 = !DILocation(line: 595, column: 51, scope: !1455)
!1482 = !DILocation(line: 596, column: 39, scope: !1455)
!1483 = !DILocation(line: 595, column: 31, scope: !1455)
!1484 = !DILocation(line: 595, column: 77, scope: !1455)
!1485 = !DILocation(line: 595, column: 79, scope: !1455)
!1486 = !DILocation(line: 595, column: 57, scope: !1455)
!1487 = !DILocation(line: 610, column: 14, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !495, line: 610, column: 12)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !495, line: 606, column: 27)
!1490 = distinct !DILexicalBlock(scope: !1458, file: !495, line: 606, column: 5)
!1491 = !DILocation(line: 610, column: 12, scope: !1489)
!1492 = !DILocation(line: 611, column: 46, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !495, line: 610, column: 37)
!1494 = !DILocation(line: 611, column: 18, scope: !1493)
!1495 = !DILocation(line: 619, column: 43, scope: !1493)
!1496 = !{!802, !803, i64 6}
!1497 = !DILocation(line: 619, column: 35, scope: !1493)
!1498 = !DILocation(line: 619, column: 25, scope: !1493)
!1499 = !DILocation(line: 620, column: 19, scope: !1493)
!1500 = !DILocation(line: 622, column: 20, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !495, line: 622, column: 13)
!1502 = !DILocation(line: 622, column: 26, scope: !1501)
!1503 = !DILocation(line: 622, column: 13, scope: !1493)
!1504 = !DILocation(line: 623, column: 64, scope: !1501)
!1505 = !DILocation(line: 623, column: 34, scope: !1501)
!1506 = !DILocation(line: 623, column: 33, scope: !1501)
!1507 = !DILocation(line: 623, column: 18, scope: !1501)
!1508 = !DILocation(line: 623, column: 11, scope: !1501)
!1509 = !DILocation(line: 0, scope: !1493)
!1510 = !DILocation(line: 624, column: 40, scope: !1493)
!1511 = !{!802, !803, i64 4}
!1512 = !DILocation(line: 624, column: 32, scope: !1493)
!1513 = !DILocation(line: 624, column: 22, scope: !1493)
!1514 = !DILocation(line: 625, column: 40, scope: !1493)
!1515 = !{!802, !803, i64 2}
!1516 = !DILocation(line: 625, column: 32, scope: !1493)
!1517 = !DILocation(line: 625, column: 22, scope: !1493)
!1518 = !DILocation(line: 626, column: 40, scope: !1493)
!1519 = !{!802, !803, i64 0}
!1520 = !DILocation(line: 626, column: 32, scope: !1493)
!1521 = !DILocation(line: 626, column: 22, scope: !1493)
!1522 = !DILocation(line: 627, column: 20, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1493, file: !495, line: 627, column: 13)
!1524 = !DILocation(line: 627, column: 31, scope: !1523)
!1525 = !DILocation(line: 627, column: 13, scope: !1493)
!1526 = !DILocation(line: 628, column: 35, scope: !1523)
!1527 = !{!803, !803, i64 0}
!1528 = !DILocation(line: 628, column: 34, scope: !1523)
!1529 = !DILocation(line: 628, column: 24, scope: !1523)
!1530 = !DILocation(line: 628, column: 11, scope: !1523)
!1531 = !DILocation(line: 629, column: 19, scope: !1493)
!1532 = !DILocation(line: 631, column: 12, scope: !1493)
!1533 = !DILocation(line: 646, column: 7, scope: !1493)
!1534 = !DILocation(line: 648, column: 13, scope: !1489)
!1535 = !DILocation(line: 649, column: 14, scope: !1489)
!1536 = !DILocation(line: 650, column: 9, scope: !1489)
!1537 = !DILocation(line: 651, column: 10, scope: !1489)
!1538 = !DILocation(line: 606, column: 22, scope: !1490)
!1539 = !DILocation(line: 606, column: 16, scope: !1490)
!1540 = distinct !{!1540, !1457, !1541, !1026, !1027}
!1541 = !DILocation(line: 652, column: 5, scope: !1458)
!1542 = !DILocation(line: 595, column: 27, scope: !1455)
!1543 = !DILocation(line: 661, column: 12, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 661, column: 8)
!1545 = !DILocation(line: 661, column: 17, scope: !1544)
!1546 = !DILocation(line: 668, column: 58, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !495, line: 661, column: 79)
!1548 = !DILocation(line: 669, column: 24, scope: !1547)
!1549 = !DILocation(line: 669, column: 46, scope: !1547)
!1550 = !DILocation(line: 670, column: 24, scope: !1547)
!1551 = !DILocation(line: 668, column: 12, scope: !1547)
!1552 = !DILocation(line: 672, column: 5, scope: !1547)
!1553 = !DILocation(line: 678, column: 18, scope: !1128)
!1554 = !DILocation(line: 679, column: 69, scope: !1128)
!1555 = !DILocation(line: 679, column: 62, scope: !1128)
!1556 = !DILocation(line: 679, column: 61, scope: !1128)
!1557 = !DILocation(line: 679, column: 52, scope: !1128)
!1558 = !DILocalVariable(name: "value", arg: 1, scope: !1559, file: !147, line: 87, type: !1562)
!1559 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !1560, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1563)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!530, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!1563 = !{!1558}
!1564 = !DILocation(line: 0, scope: !1559, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 679, column: 37, scope: !1128)
!1566 = !DILocation(line: 92, column: 13, scope: !1567, inlinedAt: !1565)
!1567 = distinct !DILexicalBlock(scope: !1559, file: !147, line: 92, column: 7)
!1568 = !DILocation(line: 92, column: 7, scope: !1559, inlinedAt: !1565)
!1569 = !DILocation(line: 94, column: 13, scope: !1570, inlinedAt: !1565)
!1570 = distinct !DILexicalBlock(scope: !1559, file: !147, line: 94, column: 7)
!1571 = !DILocation(line: 94, column: 7, scope: !1559, inlinedAt: !1565)
!1572 = !DILocation(line: 96, column: 26, scope: !1559, inlinedAt: !1565)
!1573 = !DILocation(line: 96, column: 10, scope: !1559, inlinedAt: !1565)
!1574 = !DILocation(line: 96, column: 3, scope: !1559, inlinedAt: !1565)
!1575 = !DILocation(line: 679, column: 18, scope: !1128)
!1576 = !DILocation(line: 680, column: 18, scope: !1128)
!1577 = !DILocation(line: 681, column: 67, scope: !1128)
!1578 = !DILocation(line: 681, column: 60, scope: !1128)
!1579 = !DILocation(line: 681, column: 59, scope: !1128)
!1580 = !DILocation(line: 681, column: 50, scope: !1128)
!1581 = !DILocation(line: 0, scope: !1559, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 681, column: 35, scope: !1128)
!1583 = !DILocation(line: 92, column: 13, scope: !1567, inlinedAt: !1582)
!1584 = !DILocation(line: 92, column: 7, scope: !1559, inlinedAt: !1582)
!1585 = !DILocation(line: 94, column: 13, scope: !1570, inlinedAt: !1582)
!1586 = !DILocation(line: 94, column: 7, scope: !1559, inlinedAt: !1582)
!1587 = !DILocation(line: 96, column: 26, scope: !1559, inlinedAt: !1582)
!1588 = !DILocation(line: 96, column: 10, scope: !1559, inlinedAt: !1582)
!1589 = !DILocation(line: 96, column: 3, scope: !1559, inlinedAt: !1582)
!1590 = !DILocation(line: 681, column: 16, scope: !1128)
!1591 = !DILocation(line: 682, column: 67, scope: !1128)
!1592 = !DILocation(line: 682, column: 60, scope: !1128)
!1593 = !DILocation(line: 682, column: 59, scope: !1128)
!1594 = !DILocation(line: 682, column: 50, scope: !1128)
!1595 = !DILocation(line: 0, scope: !1559, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 682, column: 35, scope: !1128)
!1597 = !DILocation(line: 92, column: 13, scope: !1567, inlinedAt: !1596)
!1598 = !DILocation(line: 92, column: 7, scope: !1559, inlinedAt: !1596)
!1599 = !DILocation(line: 94, column: 13, scope: !1570, inlinedAt: !1596)
!1600 = !DILocation(line: 94, column: 7, scope: !1559, inlinedAt: !1596)
!1601 = !DILocation(line: 96, column: 26, scope: !1559, inlinedAt: !1596)
!1602 = !DILocation(line: 96, column: 10, scope: !1559, inlinedAt: !1596)
!1603 = !DILocation(line: 96, column: 3, scope: !1559, inlinedAt: !1596)
!1604 = !DILocation(line: 682, column: 16, scope: !1128)
!1605 = !DILocation(line: 683, column: 67, scope: !1128)
!1606 = !DILocation(line: 683, column: 60, scope: !1128)
!1607 = !DILocation(line: 683, column: 59, scope: !1128)
!1608 = !DILocation(line: 683, column: 50, scope: !1128)
!1609 = !DILocation(line: 0, scope: !1559, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 683, column: 35, scope: !1128)
!1611 = !DILocation(line: 92, column: 13, scope: !1567, inlinedAt: !1610)
!1612 = !DILocation(line: 92, column: 7, scope: !1559, inlinedAt: !1610)
!1613 = !DILocation(line: 94, column: 13, scope: !1570, inlinedAt: !1610)
!1614 = !DILocation(line: 94, column: 7, scope: !1559, inlinedAt: !1610)
!1615 = !DILocation(line: 96, column: 26, scope: !1559, inlinedAt: !1610)
!1616 = !DILocation(line: 96, column: 10, scope: !1559, inlinedAt: !1610)
!1617 = !DILocation(line: 96, column: 3, scope: !1559, inlinedAt: !1610)
!1618 = !DILocation(line: 683, column: 16, scope: !1128)
!1619 = !DILocation(line: 684, column: 14, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1128, file: !495, line: 684, column: 7)
!1621 = !DILocation(line: 684, column: 25, scope: !1620)
!1622 = !DILocation(line: 684, column: 7, scope: !1128)
!1623 = !DILocation(line: 685, column: 69, scope: !1620)
!1624 = !DILocation(line: 685, column: 62, scope: !1620)
!1625 = !DILocation(line: 685, column: 61, scope: !1620)
!1626 = !DILocation(line: 685, column: 52, scope: !1620)
!1627 = !DILocation(line: 0, scope: !1559, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 685, column: 37, scope: !1620)
!1629 = !DILocation(line: 92, column: 13, scope: !1567, inlinedAt: !1628)
!1630 = !DILocation(line: 92, column: 7, scope: !1559, inlinedAt: !1628)
!1631 = !DILocation(line: 94, column: 13, scope: !1570, inlinedAt: !1628)
!1632 = !DILocation(line: 94, column: 7, scope: !1559, inlinedAt: !1628)
!1633 = !DILocation(line: 96, column: 26, scope: !1559, inlinedAt: !1628)
!1634 = !DILocation(line: 96, column: 10, scope: !1559, inlinedAt: !1628)
!1635 = !DILocation(line: 96, column: 3, scope: !1559, inlinedAt: !1628)
!1636 = !DILocation(line: 685, column: 18, scope: !1620)
!1637 = !DILocation(line: 685, column: 5, scope: !1620)
!1638 = !DILocation(line: 687, column: 1, scope: !1128)
!1639 = !DISubprogram(name: "InterpolateMagickPixelPacket", scope: !326, file: !326, line: 171, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!518, !783, !1642, !869, !963, !963, !762, !723}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView_", file: !326, line: 161, baseType: !500)
!1645 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !1646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !783, !762}
!1648 = !DISubprogram(name: "ResizeImage", scope: !769, file: !769, line: 38, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!502, !783, !918, !918, !962, !963, !723}
!1651 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !369, file: !369, line: 69, type: !1652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!763, !1654, !1656, !1656, !918, !918, !723}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!1657 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !369, file: !369, line: 77, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!765, !498}
!1660 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !1661, file: !1661, line: 92, type: !1662, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1664)
!1661 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !783, !763, !771, !762}
!1664 = !{!1665, !1666, !1667, !1668}
!1665 = !DILocalVariable(name: "image", arg: 1, scope: !1660, file: !1661, line: 92, type: !783)
!1666 = !DILocalVariable(name: "color", arg: 2, scope: !1660, file: !1661, line: 93, type: !763)
!1667 = !DILocalVariable(name: "index", arg: 3, scope: !1660, file: !1661, line: 93, type: !771)
!1668 = !DILocalVariable(name: "pixel", arg: 4, scope: !1660, file: !1661, line: 93, type: !762)
!1669 = !DILocation(line: 0, scope: !1660)
!1670 = !DILocation(line: 95, column: 31, scope: !1660)
!1671 = !DILocation(line: 95, column: 14, scope: !1660)
!1672 = !DILocation(line: 95, column: 10, scope: !1660)
!1673 = !DILocation(line: 95, column: 13, scope: !1660)
!1674 = !DILocation(line: 96, column: 33, scope: !1660)
!1675 = !DILocation(line: 96, column: 16, scope: !1660)
!1676 = !DILocation(line: 96, column: 10, scope: !1660)
!1677 = !DILocation(line: 96, column: 15, scope: !1660)
!1678 = !DILocation(line: 97, column: 32, scope: !1660)
!1679 = !DILocation(line: 97, column: 15, scope: !1660)
!1680 = !DILocation(line: 97, column: 10, scope: !1660)
!1681 = !DILocation(line: 97, column: 14, scope: !1660)
!1682 = !DILocation(line: 98, column: 35, scope: !1660)
!1683 = !DILocation(line: 98, column: 18, scope: !1660)
!1684 = !DILocation(line: 98, column: 10, scope: !1660)
!1685 = !DILocation(line: 98, column: 17, scope: !1660)
!1686 = !DILocation(line: 99, column: 26, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1660, file: !1661, line: 99, column: 7)
!1688 = !DILocation(line: 99, column: 45, scope: !1687)
!1689 = !DILocation(line: 101, column: 35, scope: !1687)
!1690 = !DILocation(line: 101, column: 18, scope: !1687)
!1691 = !DILocation(line: 101, column: 12, scope: !1687)
!1692 = !DILocation(line: 101, column: 17, scope: !1687)
!1693 = !DILocation(line: 101, column: 5, scope: !1687)
!1694 = !DILocation(line: 102, column: 1, scope: !1660)
!1695 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !369, file: !369, line: 66, type: !1696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!771, !1654}
!1698 = distinct !DISubprogram(name: "ScaleResampleFilter", scope: !495, file: !495, line: 1048, type: !1699, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !492, !963, !963, !963, !963}
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1713, !1714, !1715, !1716, !1717, !1718}
!1702 = !DILocalVariable(name: "resample_filter", arg: 1, scope: !1698, file: !495, line: 1048, type: !492)
!1703 = !DILocalVariable(name: "dux", arg: 2, scope: !1698, file: !495, line: 1049, type: !963)
!1704 = !DILocalVariable(name: "duy", arg: 3, scope: !1698, file: !495, line: 1049, type: !963)
!1705 = !DILocalVariable(name: "dvx", arg: 4, scope: !1698, file: !495, line: 1049, type: !963)
!1706 = !DILocalVariable(name: "dvy", arg: 5, scope: !1698, file: !495, line: 1049, type: !963)
!1707 = !DILocalVariable(name: "A", scope: !1698, file: !495, line: 1051, type: !539)
!1708 = !DILocalVariable(name: "B", scope: !1698, file: !495, line: 1051, type: !539)
!1709 = !DILocalVariable(name: "C", scope: !1698, file: !495, line: 1051, type: !539)
!1710 = !DILocalVariable(name: "F", scope: !1698, file: !495, line: 1051, type: !539)
!1711 = !DILocalVariable(name: "major_mag", scope: !1712, file: !495, line: 1082, type: !539)
!1712 = distinct !DILexicalBlock(scope: !1698, file: !495, line: 1082, column: 3)
!1713 = !DILocalVariable(name: "minor_mag", scope: !1712, file: !495, line: 1083, type: !539)
!1714 = !DILocalVariable(name: "major_x", scope: !1712, file: !495, line: 1084, type: !539)
!1715 = !DILocalVariable(name: "major_y", scope: !1712, file: !495, line: 1085, type: !539)
!1716 = !DILocalVariable(name: "minor_x", scope: !1712, file: !495, line: 1086, type: !539)
!1717 = !DILocalVariable(name: "minor_y", scope: !1712, file: !495, line: 1087, type: !539)
!1718 = !DILocalVariable(name: "scale", scope: !1719, file: !495, line: 1210, type: !539)
!1719 = distinct !DILexicalBlock(scope: !1698, file: !495, line: 1210, column: 3)
!1720 = !DILocation(line: 0, scope: !1698)
!1721 = !DILocation(line: 1056, column: 20, scope: !1698)
!1722 = !DILocation(line: 1056, column: 34, scope: !1698)
!1723 = !DILocation(line: 1059, column: 25, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1698, file: !495, line: 1059, column: 8)
!1725 = !DILocation(line: 1059, column: 32, scope: !1724)
!1726 = !DILocation(line: 1059, column: 8, scope: !1698)
!1727 = !DILocalVariable(name: "dux", arg: 1, scope: !1728, file: !495, line: 719, type: !963)
!1728 = distinct !DISubprogram(name: "ClampUpAxes", scope: !495, file: !495, line: 719, type: !1729, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1732)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !963, !963, !963, !963, !1731, !1731, !1731, !1731, !1731, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!1732 = !{!1727, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1733 = !DILocalVariable(name: "dvx", arg: 2, scope: !1728, file: !495, line: 720, type: !963)
!1734 = !DILocalVariable(name: "duy", arg: 3, scope: !1728, file: !495, line: 721, type: !963)
!1735 = !DILocalVariable(name: "dvy", arg: 4, scope: !1728, file: !495, line: 722, type: !963)
!1736 = !DILocalVariable(name: "major_mag", arg: 5, scope: !1728, file: !495, line: 723, type: !1731)
!1737 = !DILocalVariable(name: "minor_mag", arg: 6, scope: !1728, file: !495, line: 724, type: !1731)
!1738 = !DILocalVariable(name: "major_unit_x", arg: 7, scope: !1728, file: !495, line: 725, type: !1731)
!1739 = !DILocalVariable(name: "major_unit_y", arg: 8, scope: !1728, file: !495, line: 726, type: !1731)
!1740 = !DILocalVariable(name: "minor_unit_x", arg: 9, scope: !1728, file: !495, line: 727, type: !1731)
!1741 = !DILocalVariable(name: "minor_unit_y", arg: 10, scope: !1728, file: !495, line: 728, type: !1731)
!1742 = !DILocalVariable(name: "a", scope: !1728, file: !495, line: 892, type: !963)
!1743 = !DILocalVariable(name: "b", scope: !1728, file: !495, line: 893, type: !963)
!1744 = !DILocalVariable(name: "c", scope: !1728, file: !495, line: 894, type: !963)
!1745 = !DILocalVariable(name: "d", scope: !1728, file: !495, line: 895, type: !963)
!1746 = !DILocalVariable(name: "aa", scope: !1728, file: !495, line: 900, type: !963)
!1747 = !DILocalVariable(name: "bb", scope: !1728, file: !495, line: 901, type: !963)
!1748 = !DILocalVariable(name: "cc", scope: !1728, file: !495, line: 902, type: !963)
!1749 = !DILocalVariable(name: "dd", scope: !1728, file: !495, line: 903, type: !963)
!1750 = !DILocalVariable(name: "n11", scope: !1728, file: !495, line: 907, type: !963)
!1751 = !DILocalVariable(name: "n12", scope: !1728, file: !495, line: 908, type: !963)
!1752 = !DILocalVariable(name: "n21", scope: !1728, file: !495, line: 909, type: !963)
!1753 = !DILocalVariable(name: "n22", scope: !1728, file: !495, line: 910, type: !963)
!1754 = !DILocalVariable(name: "det", scope: !1728, file: !495, line: 911, type: !963)
!1755 = !DILocalVariable(name: "twice_det", scope: !1728, file: !495, line: 912, type: !963)
!1756 = !DILocalVariable(name: "frobenius_squared", scope: !1728, file: !495, line: 913, type: !963)
!1757 = !DILocalVariable(name: "discriminant", scope: !1728, file: !495, line: 914, type: !963)
!1758 = !DILocalVariable(name: "sqrt_discriminant", scope: !1728, file: !495, line: 921, type: !963)
!1759 = !DILocalVariable(name: "s1s1", scope: !1728, file: !495, line: 933, type: !963)
!1760 = !DILocalVariable(name: "s2s2", scope: !1728, file: !495, line: 939, type: !963)
!1761 = !DILocalVariable(name: "s1s1minusn11", scope: !1728, file: !495, line: 940, type: !963)
!1762 = !DILocalVariable(name: "s1s1minusn22", scope: !1728, file: !495, line: 941, type: !963)
!1763 = !DILocalVariable(name: "s1s1minusn11_squared", scope: !1728, file: !495, line: 949, type: !963)
!1764 = !DILocalVariable(name: "s1s1minusn22_squared", scope: !1728, file: !495, line: 950, type: !963)
!1765 = !DILocalVariable(name: "temp_u11", scope: !1728, file: !495, line: 960, type: !963)
!1766 = !DILocalVariable(name: "temp_u21", scope: !1728, file: !495, line: 962, type: !963)
!1767 = !DILocalVariable(name: "norm", scope: !1728, file: !495, line: 964, type: !963)
!1768 = !DILocalVariable(name: "u11", scope: !1728, file: !495, line: 969, type: !963)
!1769 = !DILocalVariable(name: "u21", scope: !1728, file: !495, line: 970, type: !963)
!1770 = !DILocation(line: 0, scope: !1728, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 1089, column: 3, scope: !1712)
!1772 = !DILocation(line: 900, column: 22, scope: !1728, inlinedAt: !1771)
!1773 = !DILocation(line: 901, column: 22, scope: !1728, inlinedAt: !1771)
!1774 = !DILocation(line: 902, column: 22, scope: !1728, inlinedAt: !1771)
!1775 = !DILocation(line: 903, column: 22, scope: !1728, inlinedAt: !1771)
!1776 = !DILocation(line: 907, column: 24, scope: !1728, inlinedAt: !1771)
!1777 = !DILocation(line: 908, column: 27, scope: !1728, inlinedAt: !1771)
!1778 = !DILocation(line: 908, column: 25, scope: !1728, inlinedAt: !1771)
!1779 = !DILocation(line: 910, column: 24, scope: !1728, inlinedAt: !1771)
!1780 = !DILocation(line: 911, column: 25, scope: !1728, inlinedAt: !1771)
!1781 = !DILocation(line: 912, column: 31, scope: !1728, inlinedAt: !1771)
!1782 = !DILocation(line: 913, column: 39, scope: !1728, inlinedAt: !1771)
!1783 = !DILocation(line: 915, column: 23, scope: !1728, inlinedAt: !1771)
!1784 = !DILocation(line: 915, column: 53, scope: !1728, inlinedAt: !1771)
!1785 = !DILocation(line: 915, column: 34, scope: !1728, inlinedAt: !1771)
!1786 = !DILocation(line: 922, column: 23, scope: !1728, inlinedAt: !1771)
!1787 = !DILocation(line: 922, column: 10, scope: !1728, inlinedAt: !1771)
!1788 = !DILocation(line: 922, column: 5, scope: !1728, inlinedAt: !1771)
!1789 = !DILocation(line: 933, column: 45, scope: !1728, inlinedAt: !1771)
!1790 = !DILocation(line: 933, column: 26, scope: !1728, inlinedAt: !1771)
!1791 = !DILocation(line: 939, column: 45, scope: !1728, inlinedAt: !1771)
!1792 = !DILocation(line: 939, column: 26, scope: !1728, inlinedAt: !1771)
!1793 = !DILocation(line: 940, column: 35, scope: !1728, inlinedAt: !1771)
!1794 = !DILocation(line: 941, column: 35, scope: !1728, inlinedAt: !1771)
!1795 = !DILocation(line: 949, column: 51, scope: !1728, inlinedAt: !1771)
!1796 = !DILocation(line: 950, column: 51, scope: !1728, inlinedAt: !1771)
!1797 = !DILocation(line: 961, column: 28, scope: !1728, inlinedAt: !1771)
!1798 = !DILocation(line: 961, column: 7, scope: !1728, inlinedAt: !1771)
!1799 = !DILocation(line: 963, column: 7, scope: !1728, inlinedAt: !1771)
!1800 = !DILocation(line: 964, column: 54, scope: !1728, inlinedAt: !1771)
!1801 = !DILocation(line: 964, column: 45, scope: !1728, inlinedAt: !1771)
!1802 = !DILocation(line: 964, column: 23, scope: !1728, inlinedAt: !1771)
!1803 = !DILocation(line: 969, column: 29, scope: !1728, inlinedAt: !1771)
!1804 = !DILocation(line: 969, column: 24, scope: !1728, inlinedAt: !1771)
!1805 = !DILocation(line: 969, column: 45, scope: !1728, inlinedAt: !1771)
!1806 = !DILocation(line: 970, column: 45, scope: !1728, inlinedAt: !1771)
!1807 = !DILocation(line: 970, column: 24, scope: !1728, inlinedAt: !1771)
!1808 = !DILocation(line: 974, column: 23, scope: !1728, inlinedAt: !1771)
!1809 = !DILocation(line: 974, column: 18, scope: !1728, inlinedAt: !1771)
!1810 = !DILocation(line: 974, column: 38, scope: !1728, inlinedAt: !1771)
!1811 = !DILocation(line: 975, column: 23, scope: !1728, inlinedAt: !1771)
!1812 = !DILocation(line: 975, column: 18, scope: !1728, inlinedAt: !1771)
!1813 = !DILocation(line: 975, column: 38, scope: !1728, inlinedAt: !1771)
!1814 = !DILocation(line: 981, column: 19, scope: !1728, inlinedAt: !1771)
!1815 = !DILocation(line: 0, scope: !1712)
!1816 = !DILocation(line: 1091, column: 11, scope: !1712)
!1817 = !DILocation(line: 1091, column: 34, scope: !1712)
!1818 = !DILocation(line: 1092, column: 11, scope: !1712)
!1819 = !DILocation(line: 1092, column: 34, scope: !1712)
!1820 = !DILocation(line: 1097, column: 30, scope: !1712)
!1821 = !DILocation(line: 1097, column: 22, scope: !1712)
!1822 = !DILocation(line: 1098, column: 36, scope: !1712)
!1823 = !DILocation(line: 1098, column: 28, scope: !1712)
!1824 = !DILocation(line: 1098, column: 11, scope: !1712)
!1825 = !DILocation(line: 1099, column: 30, scope: !1712)
!1826 = !DILocation(line: 1099, column: 22, scope: !1712)
!1827 = !DILocation(line: 1173, column: 10, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1698, file: !495, line: 1173, column: 8)
!1829 = !DILocation(line: 1173, column: 15, scope: !1828)
!1830 = !DILocation(line: 1173, column: 22, scope: !1828)
!1831 = !DILocation(line: 1173, column: 8, scope: !1698)
!1832 = !DILocation(line: 1174, column: 36, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1828, file: !495, line: 1173, column: 45)
!1834 = !DILocation(line: 1175, column: 5, scope: !1833)
!1835 = !DILocation(line: 1100, column: 16, scope: !1712)
!1836 = !DILocation(line: 1101, column: 5, scope: !1712)
!1837 = !DILocation(line: 1182, column: 25, scope: !1698)
!1838 = !DILocation(line: 1182, column: 5, scope: !1698)
!1839 = !DILocation(line: 1183, column: 5, scope: !1698)
!1840 = !DILocation(line: 1186, column: 35, scope: !1698)
!1841 = !DILocation(line: 1186, column: 42, scope: !1698)
!1842 = !DILocation(line: 1186, column: 37, scope: !1698)
!1843 = !DILocation(line: 1186, column: 29, scope: !1698)
!1844 = !DILocation(line: 1186, column: 20, scope: !1698)
!1845 = !DILocation(line: 1186, column: 27, scope: !1698)
!1846 = !DILocation(line: 1187, column: 35, scope: !1698)
!1847 = !DILocation(line: 1187, column: 37, scope: !1698)
!1848 = !DILocation(line: 1187, column: 29, scope: !1698)
!1849 = !DILocation(line: 1187, column: 20, scope: !1698)
!1850 = !DILocation(line: 1187, column: 27, scope: !1698)
!1851 = !DILocation(line: 1190, column: 35, scope: !1698)
!1852 = !DILocation(line: 1190, column: 29, scope: !1698)
!1853 = !DILocation(line: 1190, column: 20, scope: !1698)
!1854 = !DILocation(line: 1190, column: 27, scope: !1698)
!1855 = !DILocation(line: 1191, column: 35, scope: !1698)
!1856 = !DILocation(line: 1191, column: 30, scope: !1698)
!1857 = !DILocation(line: 1191, column: 20, scope: !1698)
!1858 = !DILocation(line: 1191, column: 26, scope: !1698)
!1859 = !DILocation(line: 1203, column: 52, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1698, file: !495, line: 1203, column: 8)
!1861 = !DILocation(line: 1203, column: 33, scope: !1860)
!1862 = !DILocation(line: 1204, column: 34, scope: !1860)
!1863 = !DILocation(line: 1204, column: 17, scope: !1860)
!1864 = !DILocation(line: 1204, column: 16, scope: !1860)
!1865 = !DILocation(line: 1204, column: 10, scope: !1860)
!1866 = !DILocation(line: 1203, column: 8, scope: !1698)
!1867 = !DILocation(line: 1205, column: 36, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !495, line: 1204, column: 47)
!1869 = !DILocation(line: 1206, column: 5, scope: !1868)
!1870 = !DILocation(line: 1213, column: 31, scope: !1719)
!1871 = !DILocation(line: 0, scope: !1719)
!1872 = !DILocation(line: 1218, column: 27, scope: !1719)
!1873 = !DILocation(line: 1218, column: 22, scope: !1719)
!1874 = !DILocation(line: 1218, column: 24, scope: !1719)
!1875 = !DILocation(line: 1219, column: 27, scope: !1719)
!1876 = !DILocation(line: 1219, column: 22, scope: !1719)
!1877 = !DILocation(line: 1219, column: 24, scope: !1719)
!1878 = !DILocation(line: 1220, column: 27, scope: !1719)
!1879 = !DILocation(line: 1220, column: 22, scope: !1719)
!1880 = !DILocation(line: 1220, column: 24, scope: !1719)
!1881 = !DILocation(line: 1222, column: 1, scope: !1698)
!1882 = !DISubprogram(name: "AcquireResizeFilter", scope: !1883, file: !1883, line: 55, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1883 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ee028ba2160e82968d2b02ff146f9934")
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!767, !783, !962, !1562, !1886, !723}
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!1887 = !DISubprogram(name: "GetResizeFilterSupport", scope: !1883, file: !1883, line: 51, type: !1888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!743, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!1892 = !DISubprogram(name: "GetResizeFilterWeight", scope: !1883, file: !1883, line: 52, type: !1893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!743, !1890, !1562}
!1895 = !DISubprogram(name: "DestroyResizeFilter", scope: !1883, file: !1883, line: 57, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!767, !767}
!1898 = !DISubprogram(name: "IsMagickTrue", scope: !1899, file: !1899, line: 38, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1899 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!518, !635}
!1902 = !DISubprogram(name: "GetImageArtifact", scope: !1903, file: !1903, line: 30, type: !1904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1903 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!635, !783, !635}
!1906 = !DISubprogram(name: "CommandOptionToMnemonic", scope: !415, file: !415, line: 157, type: !1907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!635, !1909, !1656}
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !415, line: 99, baseType: !414)
!1911 = !DISubprogram(name: "GetMagickPrecision", scope: !944, file: !944, line: 119, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!416}
!1914 = !DISubprogram(name: "SetCacheViewVirtualPixelMethod", scope: !369, file: !369, line: 88, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !919)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!518, !498, !890}
