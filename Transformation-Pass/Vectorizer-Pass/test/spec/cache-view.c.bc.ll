; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/cache-view.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/cache-view.c"
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
%struct._CacheView = type { ptr, i32, i64, ptr, i32, i64 }
%struct._NexusInfo = type { i32, %struct._RectangleInfo, i64, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [89 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/cache-view.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"UnableToAcquireCacheView\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireAuthenticCacheView(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !686 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !693, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata ptr %exception, metadata !694, metadata !DIExpression()), !dbg !697
  %call = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr undef), !dbg !698
  call void @llvm.dbg.value(metadata ptr %call, metadata !695, metadata !DIExpression()), !dbg !697
  %0 = load ptr, ptr %call, align 8, !dbg !699, !tbaa !700
  %call2 = tail call i32 @SyncImagePixelCache(ptr noundef %0, ptr noundef %exception) #11, !dbg !706
  ret ptr %call, !dbg !707
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireVirtualCacheView(ptr noundef %image, ptr nocapture readnone %exception) local_unnamed_addr #0 !dbg !708 {
entry:
  %exception4 = alloca %struct._ExceptionInfo, align 8
  %exception36 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !710, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata ptr undef, metadata !711, metadata !DIExpression()), !dbg !721
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !722
  %0 = load i32, ptr %debug, align 8, !dbg !722, !tbaa !724
  %cmp.not = icmp eq i32 %0, 0, !dbg !739
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !740

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !741
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !742
  br label %if.end, !dbg !743

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 48) #12, !dbg !744
  call void @llvm.dbg.value(metadata ptr %call1, metadata !712, metadata !DIExpression()), !dbg !721
  %cmp2 = icmp eq ptr %call1, null, !dbg !745
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !746

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception4) #11, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %exception4, metadata !716, metadata !DIExpression()), !dbg !747
  call void @GetExceptionInfo(ptr noundef nonnull %exception4) #11, !dbg !747
  %call5 = tail call ptr @__errno_location() #13, !dbg !747
  %1 = load i32, ptr %call5, align 4, !dbg !747, !tbaa !748
  %call6 = call ptr @GetExceptionMessage(i32 noundef %1) #11, !dbg !747
  call void @llvm.dbg.value(metadata ptr %call6, metadata !713, metadata !DIExpression()), !dbg !749
  %call7 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call6) #11, !dbg !747
  %call8 = call ptr @DestroyString(ptr noundef %call6) #11, !dbg !747
  call void @llvm.dbg.value(metadata ptr %call8, metadata !713, metadata !DIExpression()), !dbg !749
  call void @CatchException(ptr noundef nonnull %exception4) #11, !dbg !747
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception4) #11, !dbg !747
  call void @MagickCoreTerminus() #11, !dbg !747
  call void @_exit(i32 noundef 1) #14, !dbg !747
  unreachable, !dbg !747

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 48) #11, !dbg !750
  %call12 = tail call ptr @ReferenceImage(ptr noundef nonnull %image) #11, !dbg !751
  store ptr %call12, ptr %call1, align 8, !dbg !752, !tbaa !700
  %number_threads = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 2, !dbg !753
  store i64 1, ptr %number_threads, align 8, !dbg !754, !tbaa !755
  %call15 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11, !dbg !756
  %2 = load i64, ptr %number_threads, align 8, !dbg !758, !tbaa !755
  %cmp17 = icmp ugt i64 %call15, %2, !dbg !759
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !760

if.then18:                                        ; preds = %if.end10
  %call19 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11, !dbg !761
  store i64 %call19, ptr %number_threads, align 8, !dbg !762, !tbaa !755
  br label %if.end21, !dbg !763

if.end21:                                         ; preds = %if.then18, %if.end10
  %3 = phi i64 [ %call19, %if.then18 ], [ %2, %if.end10 ], !dbg !764
  %cmp23 = icmp eq i64 %3, 0, !dbg !766
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !767

if.then24:                                        ; preds = %if.end21
  store i64 1, ptr %number_threads, align 8, !dbg !768, !tbaa !755
  br label %if.end26, !dbg !769

if.end26:                                         ; preds = %if.then24, %if.end21
  %4 = phi i64 [ 1, %if.then24 ], [ %3, %if.end21 ], !dbg !770
  %call28 = tail call ptr @AcquirePixelCacheNexus(i64 noundef %4) #11, !dbg !771
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 3, !dbg !772
  store ptr %call28, ptr %nexus_info, align 8, !dbg !773, !tbaa !774
  %call29 = tail call i32 @GetImageVirtualPixelMethod(ptr noundef nonnull %image) #11, !dbg !775
  %virtual_pixel_method = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 1, !dbg !776
  store i32 %call29, ptr %virtual_pixel_method, align 8, !dbg !777, !tbaa !778
  %call30 = tail call i32 @IsEventLogging() #11, !dbg !779
  %debug31 = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 4, !dbg !780
  store i32 %call30, ptr %debug31, align 8, !dbg !781, !tbaa !782
  %signature = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 5, !dbg !783
  store i64 2880220587, ptr %signature, align 8, !dbg !784, !tbaa !785
  %5 = load ptr, ptr %nexus_info, align 8, !dbg !786, !tbaa !774
  %cmp33 = icmp eq ptr %5, null, !dbg !787
  br i1 %cmp33, label %if.then34, label %if.end42, !dbg !788

if.then34:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception36) #11, !dbg !789
  call void @llvm.dbg.declare(metadata ptr %exception36, metadata !720, metadata !DIExpression()), !dbg !789
  call void @GetExceptionInfo(ptr noundef nonnull %exception36) #11, !dbg !789
  %call37 = tail call ptr @__errno_location() #13, !dbg !789
  %6 = load i32, ptr %call37, align 4, !dbg !789, !tbaa !748
  %call38 = call ptr @GetExceptionMessage(i32 noundef %6) #11, !dbg !789
  call void @llvm.dbg.value(metadata ptr %call38, metadata !717, metadata !DIExpression()), !dbg !790
  %call39 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception36, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 181, i32 noundef 745, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %call38) #11, !dbg !789
  %call40 = call ptr @DestroyString(ptr noundef %call38) #11, !dbg !789
  call void @llvm.dbg.value(metadata ptr %call40, metadata !717, metadata !DIExpression()), !dbg !790
  call void @CatchException(ptr noundef nonnull %exception36) #11, !dbg !789
  %call41 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception36) #11, !dbg !789
  call void @MagickCoreTerminus() #11, !dbg !789
  call void @_exit(i32 noundef 46) #14, !dbg !789
  unreachable, !dbg !789

if.end42:                                         ; preds = %if.end26
  ret ptr %call1, !dbg !791
}

declare !dbg !792 hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireCacheView(ptr noundef %image) local_unnamed_addr #0 !dbg !796 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !800, metadata !DIExpression()), !dbg !801
  %call = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr undef), !dbg !802
  ret ptr %call, !dbg !803
}

declare !dbg !804 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !810 ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !814 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !817 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !821 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !825 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !829 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !830 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !833 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !837 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !840 ptr @ReferenceImage(ptr noundef) local_unnamed_addr #3

declare !dbg !843 i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

declare !dbg !848 ptr @AcquirePixelCacheNexus(i64 noundef) local_unnamed_addr #3

declare !dbg !851 i32 @GetImageVirtualPixelMethod(ptr noundef) local_unnamed_addr #3

declare !dbg !854 i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneCacheView(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #0 !dbg !857 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !863, metadata !DIExpression()), !dbg !869
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !870
  %0 = load i32, ptr %debug, align 8, !dbg !870, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !872
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !873

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !874, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !875
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 215, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !876
  br label %if.end, !dbg !877

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 48) #12, !dbg !878
  call void @llvm.dbg.value(metadata ptr %call1, metadata !864, metadata !DIExpression()), !dbg !869
  %cmp2 = icmp eq ptr %call1, null, !dbg !879
  br i1 %cmp2, label %if.then3, label %if.end9, !dbg !880

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #11, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !868, metadata !DIExpression()), !dbg !881
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !881
  %call4 = tail call ptr @__errno_location() #13, !dbg !881
  %2 = load i32, ptr %call4, align 4, !dbg !881, !tbaa !748
  %call5 = call ptr @GetExceptionMessage(i32 noundef %2) #11, !dbg !881
  call void @llvm.dbg.value(metadata ptr %call5, metadata !865, metadata !DIExpression()), !dbg !882
  %call6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 220, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call5) #11, !dbg !881
  %call7 = call ptr @DestroyString(ptr noundef %call5) #11, !dbg !881
  call void @llvm.dbg.value(metadata ptr %call7, metadata !865, metadata !DIExpression()), !dbg !882
  call void @CatchException(ptr noundef nonnull %exception) #11, !dbg !881
  %call8 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !881
  call void @MagickCoreTerminus() #11, !dbg !881
  call void @_exit(i32 noundef 1) #14, !dbg !881
  unreachable, !dbg !881

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 48) #11, !dbg !883
  %3 = load ptr, ptr %cache_view, align 8, !dbg !884, !tbaa !700
  %call12 = tail call ptr @ReferenceImage(ptr noundef %3) #11, !dbg !885
  store ptr %call12, ptr %call1, align 8, !dbg !886, !tbaa !700
  %number_threads = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 2, !dbg !887
  %4 = load i64, ptr %number_threads, align 8, !dbg !887, !tbaa !755
  %number_threads14 = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 2, !dbg !888
  store i64 %4, ptr %number_threads14, align 8, !dbg !889, !tbaa !755
  %5 = load i64, ptr %number_threads, align 8, !dbg !890, !tbaa !755
  %call16 = tail call ptr @AcquirePixelCacheNexus(i64 noundef %5) #11, !dbg !891
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 3, !dbg !892
  store ptr %call16, ptr %nexus_info, align 8, !dbg !893, !tbaa !774
  %virtual_pixel_method = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 1, !dbg !894
  %6 = load i32, ptr %virtual_pixel_method, align 8, !dbg !894, !tbaa !778
  %virtual_pixel_method17 = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 1, !dbg !895
  store i32 %6, ptr %virtual_pixel_method17, align 8, !dbg !896, !tbaa !778
  %7 = load i32, ptr %debug, align 8, !dbg !897, !tbaa !782
  %debug19 = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 4, !dbg !898
  store i32 %7, ptr %debug19, align 8, !dbg !899, !tbaa !782
  %signature = getelementptr inbounds %struct._CacheView, ptr %call1, i64 0, i32 5, !dbg !900
  store i64 2880220587, ptr %signature, align 8, !dbg !901, !tbaa !785
  ret ptr %call1, !dbg !902
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyCacheView(ptr noundef %cache_view) local_unnamed_addr #0 !dbg !903 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !907, metadata !DIExpression()), !dbg !908
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !909
  %0 = load i32, ptr %debug, align 8, !dbg !909, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !911
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !912

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !913, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !914
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 259, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !915
  br label %if.end, !dbg !916

if.end:                                           ; preds = %if.then, %entry
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !917
  %2 = load ptr, ptr %nexus_info, align 8, !dbg !917, !tbaa !774
  %cmp1.not = icmp eq ptr %2, null, !dbg !919
  br i1 %cmp1.not, label %if.end6, label %if.then2, !dbg !920

if.then2:                                         ; preds = %if.end
  %number_threads = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 2, !dbg !921
  %3 = load i64, ptr %number_threads, align 8, !dbg !921, !tbaa !755
  %call4 = tail call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %2, i64 noundef %3) #11, !dbg !922
  store ptr %call4, ptr %nexus_info, align 8, !dbg !923, !tbaa !774
  br label %if.end6, !dbg !924

if.end6:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %cache_view, align 8, !dbg !925, !tbaa !700
  %call8 = tail call ptr @DestroyImage(ptr noundef %4) #11, !dbg !926
  store ptr %call8, ptr %cache_view, align 8, !dbg !927, !tbaa !700
  %signature = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 5, !dbg !928
  store i64 -2880220588, ptr %signature, align 8, !dbg !929, !tbaa !785
  %call10 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %cache_view) #11, !dbg !930
  call void @llvm.dbg.value(metadata ptr %call10, metadata !907, metadata !DIExpression()), !dbg !908
  ret ptr %call10, !dbg !931
}

declare !dbg !932 ptr @DestroyPixelCacheNexus(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !935 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !936 ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @GetCacheViewChannels(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #0 !dbg !939 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !943, metadata !DIExpression()), !dbg !944
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !945
  %0 = load i32, ptr %debug, align 8, !dbg !945, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !947
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !948

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !949, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !950
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 298, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !951
  br label %if.end, !dbg !952

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cache_view, align 8, !dbg !953, !tbaa !700
  %cache = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 49, !dbg !954
  %3 = load ptr, ptr %cache, align 8, !dbg !954, !tbaa !955
  %call2 = tail call i64 @GetPixelCacheChannels(ptr noundef %3) #11, !dbg !956
  ret i64 %call2, !dbg !957
}

declare !dbg !958 i64 @GetPixelCacheChannels(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetCacheViewColorspace(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #0 !dbg !963 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !967, metadata !DIExpression()), !dbg !968
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !969
  %0 = load i32, ptr %debug, align 8, !dbg !969, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !971
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !972

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !973, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !974
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 331, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !975
  br label %if.end, !dbg !976

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cache_view, align 8, !dbg !977, !tbaa !700
  %cache = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 49, !dbg !978
  %3 = load ptr, ptr %cache, align 8, !dbg !978, !tbaa !955
  %call2 = tail call i32 @GetPixelCacheColorspace(ptr noundef %3) #11, !dbg !979
  ret i32 %call2, !dbg !980
}

declare !dbg !981 i32 @GetPixelCacheColorspace(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @GetCacheViewException(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #0 !dbg !984 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !988, metadata !DIExpression()), !dbg !989
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !990
  %0 = load i32, ptr %debug, align 8, !dbg !990, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !992
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !993

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !994, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !995
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 364, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !996
  br label %if.end, !dbg !997

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cache_view, align 8, !dbg !998, !tbaa !700
  %exception = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58, !dbg !999
  ret ptr %exception, !dbg !1000
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetCacheViewExtent(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #0 !dbg !1001 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1005, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 0, metadata !1006, metadata !DIExpression()), !dbg !1007
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !1008
  %0 = load i32, ptr %debug, align 8, !dbg !1008, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !1010
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1011

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !1012, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !1013
  %call1 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 401, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1014
  br label %if.end, !dbg !1015

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cache_view, align 8, !dbg !1016, !tbaa !700
  %cache = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 49, !dbg !1017
  %3 = load ptr, ptr %cache, align 8, !dbg !1017, !tbaa !955
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1018
  %4 = load ptr, ptr %nexus_info, align 8, !dbg !1018, !tbaa !774
  %5 = load ptr, ptr %4, align 8, !dbg !1019, !tbaa !1020
  %call3 = tail call i64 @GetPixelCacheNexusExtent(ptr noundef %3, ptr noundef %5) #11, !dbg !1021
  ret i64 %call3, !dbg !1022
}

declare !dbg !1023 i64 @GetPixelCacheNexusExtent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetCacheViewStorageClass(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #0 !dbg !1026 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1030, metadata !DIExpression()), !dbg !1031
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !1032
  %0 = load i32, ptr %debug, align 8, !dbg !1032, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !1034
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1035

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !1036, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !1037
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 437, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1038
  br label %if.end, !dbg !1039

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cache_view, align 8, !dbg !1040, !tbaa !700
  %cache = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 49, !dbg !1041
  %3 = load ptr, ptr %cache, align 8, !dbg !1041, !tbaa !955
  %call2 = tail call i32 @GetPixelCacheStorageClass(ptr noundef %3) #11, !dbg !1042
  ret i32 %call2, !dbg !1043
}

declare !dbg !1044 i32 @GetPixelCacheStorageClass(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot nounwind uwtable
define dso_local ptr @GetCacheViewAuthenticPixels(ptr nocapture noundef readonly %cache_view, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) local_unnamed_addr #7 !dbg !1047 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1052, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %x, metadata !1053, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %y, metadata !1054, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %columns, metadata !1055, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %rows, metadata !1056, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1057, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 0, metadata !1058, metadata !DIExpression()), !dbg !1059
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1060, !tbaa !700
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1061
  %1 = load ptr, ptr %nexus_info, align 8, !dbg !1061, !tbaa !774
  %2 = load ptr, ptr %1, align 8, !dbg !1062, !tbaa !1020
  %call1 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %2, ptr noundef %exception) #15, !dbg !1063
  ret ptr %call1, !dbg !1064
}

; Function Attrs: hot
declare !dbg !1065 ptr @GetAuthenticPixelCacheNexus(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @GetOneCacheViewAuthenticPixel(ptr noalias nocapture noundef readonly %cache_view, i64 noundef %x, i64 noundef %y, ptr noalias nocapture noundef writeonly %pixel, ptr noundef %exception) local_unnamed_addr #0 !dbg !1068 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1074, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %x, metadata !1075, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %y, metadata !1076, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1077, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1078, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32 0, metadata !1079, metadata !DIExpression()), !dbg !1081
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1082, !tbaa !700
  %background_color = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, !dbg !1083
  %1 = load i64, ptr %background_color, align 8, !dbg !1083
  store i64 %1, ptr %pixel, align 2, !dbg !1083
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1084
  %2 = load ptr, ptr %nexus_info, align 8, !dbg !1084, !tbaa !774
  %3 = load ptr, ptr %2, align 8, !dbg !1085, !tbaa !1020
  %call2 = tail call ptr @GetAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %x, i64 noundef %y, i64 noundef 1, i64 noundef 1, ptr noundef %3, ptr noundef %exception) #15, !dbg !1086
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1080, metadata !DIExpression()), !dbg !1081
  %cmp = icmp eq ptr %call2, null, !dbg !1087
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1089

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %call2, align 2, !dbg !1090
  store i64 %4, ptr %pixel, align 2, !dbg !1090
  br label %cleanup, !dbg !1091

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !1081
  ret i32 %retval.0, !dbg !1092
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetCacheViewAuthenticIndexQueue(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #9 !dbg !1093 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1097, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 0, metadata !1098, metadata !DIExpression()), !dbg !1099
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1100
  %0 = load ptr, ptr %nexus_info, align 8, !dbg !1100, !tbaa !774
  %1 = load ptr, ptr %0, align 8, !dbg !1101, !tbaa !1020
  %indexes = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 6, !dbg !1102
  %2 = load ptr, ptr %indexes, align 8, !dbg !1102, !tbaa !1103
  ret ptr %2, !dbg !1105
}

; Function Attrs: hot mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetCacheViewAuthenticPixelQueue(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #10 !dbg !1106 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1110, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 0, metadata !1111, metadata !DIExpression()), !dbg !1112
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1113
  %0 = load ptr, ptr %nexus_info, align 8, !dbg !1113, !tbaa !774
  %1 = load ptr, ptr %0, align 8, !dbg !1114, !tbaa !1020
  %pixels = getelementptr inbounds %struct._NexusInfo, ptr %1, i64 0, i32 4, !dbg !1115
  %2 = load ptr, ptr %pixels, align 8, !dbg !1115, !tbaa !1116
  ret ptr %2, !dbg !1117
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCacheViewVirtualIndexQueue(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #0 !dbg !1118 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1124, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i32 0, metadata !1125, metadata !DIExpression()), !dbg !1126
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1127, !tbaa !700
  %cache = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49, !dbg !1128
  %1 = load ptr, ptr %cache, align 8, !dbg !1128, !tbaa !955
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1129
  %2 = load ptr, ptr %nexus_info, align 8, !dbg !1129, !tbaa !774
  %3 = load ptr, ptr %2, align 8, !dbg !1130, !tbaa !1020
  %call1 = tail call ptr @GetVirtualIndexesFromNexus(ptr noundef %1, ptr noundef %3) #11, !dbg !1131
  ret ptr %call1, !dbg !1132
}

declare !dbg !1133 ptr @GetVirtualIndexesFromNexus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot nounwind uwtable
define dso_local ptr @GetCacheViewVirtualPixelQueue(ptr nocapture noundef readonly %cache_view) local_unnamed_addr #7 !dbg !1136 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1140, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i32 0, metadata !1141, metadata !DIExpression()), !dbg !1142
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1143, !tbaa !700
  %cache = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49, !dbg !1144
  %1 = load ptr, ptr %cache, align 8, !dbg !1144, !tbaa !955
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1145
  %2 = load ptr, ptr %nexus_info, align 8, !dbg !1145, !tbaa !774
  %3 = load ptr, ptr %2, align 8, !dbg !1146, !tbaa !1020
  %call1 = tail call ptr @GetVirtualPixelsNexus(ptr noundef %1, ptr noundef %3) #11, !dbg !1147
  ret ptr %call1, !dbg !1148
}

declare !dbg !1149 ptr @GetVirtualPixelsNexus(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot nounwind uwtable
define dso_local ptr @GetCacheViewVirtualPixels(ptr nocapture noundef readonly %cache_view, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) local_unnamed_addr #7 !dbg !1152 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1156, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %x, metadata !1157, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %y, metadata !1158, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %columns, metadata !1159, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %rows, metadata !1160, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1161, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i32 0, metadata !1162, metadata !DIExpression()), !dbg !1163
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1164, !tbaa !700
  %virtual_pixel_method = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 1, !dbg !1165
  %1 = load i32, ptr %virtual_pixel_method, align 8, !dbg !1165, !tbaa !778
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1166
  %2 = load ptr, ptr %nexus_info, align 8, !dbg !1166, !tbaa !774
  %3 = load ptr, ptr %2, align 8, !dbg !1167, !tbaa !1020
  %call1 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %1, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %3, ptr noundef %exception) #15, !dbg !1168
  ret ptr %call1, !dbg !1169
}

; Function Attrs: hot
declare !dbg !1170 ptr @GetVirtualPixelsFromNexus(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @GetOneCacheViewVirtualPixel(ptr noalias nocapture noundef readonly %cache_view, i64 noundef %x, i64 noundef %y, ptr noalias nocapture noundef writeonly %pixel, ptr noundef %exception) local_unnamed_addr #0 !dbg !1174 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1176, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %x, metadata !1177, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %y, metadata !1178, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1179, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1180, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 0, metadata !1181, metadata !DIExpression()), !dbg !1184
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1185, !tbaa !700
  %background_color = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, !dbg !1186
  %1 = load i64, ptr %background_color, align 8, !dbg !1186
  store i64 %1, ptr %pixel, align 2, !dbg !1186
  %virtual_pixel_method = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 1, !dbg !1187
  %2 = load i32, ptr %virtual_pixel_method, align 8, !dbg !1187, !tbaa !778
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1188
  %3 = load ptr, ptr %nexus_info, align 8, !dbg !1188, !tbaa !774
  %4 = load ptr, ptr %3, align 8, !dbg !1189, !tbaa !1020
  %call2 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %0, i32 noundef %2, i64 noundef %x, i64 noundef %y, i64 noundef 1, i64 noundef 1, ptr noundef %4, ptr noundef %exception) #15, !dbg !1190
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1182, metadata !DIExpression()), !dbg !1184
  %cmp = icmp eq ptr %call2, null, !dbg !1191
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1193

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %call2, align 2, !dbg !1194
  store i64 %5, ptr %pixel, align 2, !dbg !1194
  br label %cleanup, !dbg !1195

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !1184
  ret i32 %retval.0, !dbg !1196
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetOneCacheViewVirtualMethodPixel(ptr nocapture noundef readonly %cache_view, i32 noundef %virtual_pixel_method, i64 noundef %x, i64 noundef %y, ptr nocapture noundef writeonly %pixel, ptr noundef %exception) local_unnamed_addr #0 !dbg !1197 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1201, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %virtual_pixel_method, metadata !1202, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %x, metadata !1203, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %y, metadata !1204, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1205, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1206, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 0, metadata !1207, metadata !DIExpression()), !dbg !1209
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1210, !tbaa !700
  %background_color = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, !dbg !1211
  %1 = load i64, ptr %background_color, align 8, !dbg !1211
  store i64 %1, ptr %pixel, align 2, !dbg !1211
  %2 = load ptr, ptr %cache_view, align 8, !dbg !1212, !tbaa !700
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1213
  %3 = load ptr, ptr %nexus_info, align 8, !dbg !1213, !tbaa !774
  %4 = load ptr, ptr %3, align 8, !dbg !1214, !tbaa !1020
  %call2 = tail call ptr @GetVirtualPixelsFromNexus(ptr noundef %2, i32 noundef %virtual_pixel_method, i64 noundef %x, i64 noundef %y, i64 noundef 1, i64 noundef 1, ptr noundef %4, ptr noundef %exception) #15, !dbg !1215
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1208, metadata !DIExpression()), !dbg !1209
  %cmp = icmp eq ptr %call2, null, !dbg !1216
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1218

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %call2, align 2, !dbg !1219
  store i64 %5, ptr %pixel, align 2, !dbg !1219
  br label %cleanup, !dbg !1220

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !1209
  ret i32 %retval.0, !dbg !1221
}

; Function Attrs: hot nounwind uwtable
define dso_local ptr @QueueCacheViewAuthenticPixels(ptr nocapture noundef readonly %cache_view, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) local_unnamed_addr #7 !dbg !1222 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1224, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %x, metadata !1225, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %y, metadata !1226, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %columns, metadata !1227, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %rows, metadata !1228, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1229, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !1231
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1232, !tbaa !700
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1233
  %1 = load ptr, ptr %nexus_info, align 8, !dbg !1233, !tbaa !774
  %2 = load ptr, ptr %1, align 8, !dbg !1234, !tbaa !1020
  %call1 = tail call ptr @QueueAuthenticPixelCacheNexus(ptr noundef %0, i64 noundef %x, i64 noundef %y, i64 noundef %columns, i64 noundef %rows, i32 noundef 0, ptr noundef %2, ptr noundef %exception) #15, !dbg !1235
  ret ptr %call1, !dbg !1236
}

; Function Attrs: hot
declare !dbg !1237 ptr @QueueAuthenticPixelCacheNexus(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @SetCacheViewStorageClass(ptr nocapture noundef readonly %cache_view, i32 noundef %storage_class) local_unnamed_addr #0 !dbg !1241 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1246, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata i32 %storage_class, metadata !1247, metadata !DIExpression()), !dbg !1248
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !1249
  %0 = load i32, ptr %debug, align 8, !dbg !1249, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !1251
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1252

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !1253, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !1254
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 927, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1255
  br label %if.end, !dbg !1256

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cache_view, align 8, !dbg !1257, !tbaa !700
  %call2 = tail call i32 @SetImageStorageClass(ptr noundef %2, i32 noundef %storage_class) #11, !dbg !1258
  ret i32 %call2, !dbg !1259
}

declare !dbg !1260 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SetCacheViewVirtualPixelMethod(ptr noalias nocapture noundef %cache_view, i32 noundef %virtual_pixel_method) local_unnamed_addr #0 !dbg !1263 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1267, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %virtual_pixel_method, metadata !1268, metadata !DIExpression()), !dbg !1269
  %debug = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 4, !dbg !1270
  %0 = load i32, ptr %debug, align 8, !dbg !1270, !tbaa !782
  %cmp.not = icmp eq i32 %0, 0, !dbg !1272
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1273

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cache_view, align 8, !dbg !1274, !tbaa !700
  %filename = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53, !dbg !1275
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 964, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1276
  br label %if.end, !dbg !1277

if.end:                                           ; preds = %if.then, %entry
  %virtual_pixel_method1 = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 1, !dbg !1278
  store i32 %virtual_pixel_method, ptr %virtual_pixel_method1, align 8, !dbg !1279, !tbaa !778
  ret i32 1, !dbg !1280
}

; Function Attrs: hot nounwind uwtable
define dso_local i32 @SyncCacheViewAuthenticPixels(ptr noalias nocapture noundef readonly %cache_view, ptr noundef %exception) local_unnamed_addr #7 !dbg !1281 {
entry:
  call void @llvm.dbg.value(metadata ptr %cache_view, metadata !1285, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1286, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i32 0, metadata !1287, metadata !DIExpression()), !dbg !1288
  %0 = load ptr, ptr %cache_view, align 8, !dbg !1289, !tbaa !700
  %nexus_info = getelementptr inbounds %struct._CacheView, ptr %cache_view, i64 0, i32 3, !dbg !1290
  %1 = load ptr, ptr %nexus_info, align 8, !dbg !1290, !tbaa !774
  %2 = load ptr, ptr %1, align 8, !dbg !1291, !tbaa !1020
  %call1 = tail call i32 @SyncAuthenticPixelCacheNexus(ptr noundef %0, ptr noundef %2, ptr noundef %exception) #15, !dbg !1292
  ret i32 %call1, !dbg !1293
}

; Function Attrs: hot
declare !dbg !1294 i32 @SyncAuthenticPixelCacheNexus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { hot mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!679, !680, !681, !682, !683, !684}
!llvm.ident = !{!685}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !426, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/cache-view.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "1c02c36d1afff9640ebc3240e403cf60")
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
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !415, line: 25, baseType: !5, size: 32, elements: !416)
!415 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425}
!417 = !DIEnumerator(name: "UndefinedResource", value: 0)
!418 = !DIEnumerator(name: "AreaResource", value: 1)
!419 = !DIEnumerator(name: "DiskResource", value: 2)
!420 = !DIEnumerator(name: "FileResource", value: 3)
!421 = !DIEnumerator(name: "MapResource", value: 4)
!422 = !DIEnumerator(name: "MemoryResource", value: 5)
!423 = !DIEnumerator(name: "ThreadResource", value: 6)
!424 = !DIEnumerator(name: "TimeResource", value: 7)
!425 = !DIEnumerator(name: "ThrottleResource", value: 8)
!426 = !{!427, !440, !649, !483, !595, !438, !659, !677}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !430)
!430 = !{!431, !433, !435, !437, !441, !443, !445, !446, !447, !448, !449, !450, !461, !462, !463, !464, !466, !480, !482, !484, !486, !489, !490, !491, !497, !498, !499, !507, !508, !509, !510, !511, !512, !514, !516, !518, !520, !522, !524, !526, !527, !528, !529, !530, !531, !532, !540, !555, !569, !570, !571, !572, !576, !580, !584, !585, !586, !587, !588, !606, !607, !609, !610, !620, !621, !623, !624, !625, !626, !627, !628, !630, !631, !632, !633, !634, !635, !636, !638, !639, !640, !641, !642, !646, !648}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !429, file: !73, line: 153, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !429, file: !73, line: 156, baseType: !434, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !429, file: !73, line: 159, baseType: !436, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !429, file: !73, line: 162, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !439, line: 46, baseType: !440)
!439 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!440 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !429, file: !73, line: 165, baseType: !442, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !429, file: !73, line: 168, baseType: !444, size: 32, offset: 224)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !429, file: !73, line: 169, baseType: !444, size: 32, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !429, file: !73, line: 172, baseType: !438, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !429, file: !73, line: 173, baseType: !438, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !429, file: !73, line: 174, baseType: !438, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !429, file: !73, line: 175, baseType: !438, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !429, file: !73, line: 178, baseType: !451, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !454)
!454 = !{!455, !458, !459, !460}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !453, file: !326, line: 143, baseType: !456, size: 16)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !457)
!457 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !453, file: !326, line: 144, baseType: !456, size: 16, offset: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !453, file: !326, line: 145, baseType: !456, size: 16, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !453, file: !326, line: 146, baseType: !456, size: 16, offset: 48)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !429, file: !73, line: 179, baseType: !452, size: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !429, file: !73, line: 180, baseType: !452, size: 64, offset: 704)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !429, file: !73, line: 181, baseType: !452, size: 64, offset: 768)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !429, file: !73, line: 184, baseType: !465, size: 64, offset: 832)
!465 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !429, file: !73, line: 187, baseType: !467, size: 768, offset: 896)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !469)
!469 = !{!470, !477, !478, !479}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !468, file: !73, line: 124, baseType: !471, size: 192)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !472, file: !73, line: 98, baseType: !465, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !472, file: !73, line: 99, baseType: !465, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !472, file: !73, line: 100, baseType: !465, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !468, file: !73, line: 125, baseType: !471, size: 192, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !468, file: !73, line: 126, baseType: !471, size: 192, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !468, file: !73, line: 127, baseType: !471, size: 192, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !429, file: !73, line: 190, baseType: !481, size: 32, offset: 1664)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !429, file: !73, line: 193, baseType: !483, size: 64, offset: 1728)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !429, file: !73, line: 196, baseType: !485, size: 32, offset: 1792)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !429, file: !73, line: 199, baseType: !487, size: 64, offset: 1856)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !429, file: !73, line: 200, baseType: !487, size: 64, offset: 1920)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !429, file: !73, line: 201, baseType: !487, size: 64, offset: 1984)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !429, file: !73, line: 204, baseType: !492, size: 64, offset: 2048)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !493, line: 77, baseType: !494)
!493 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !495, line: 193, baseType: !496)
!495 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!496 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !429, file: !73, line: 207, baseType: !465, size: 64, offset: 2112)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !429, file: !73, line: 208, baseType: !465, size: 64, offset: 2176)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !429, file: !73, line: 211, baseType: !500, size: 256, offset: 2240)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !501, file: !153, line: 124, baseType: !438, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !501, file: !153, line: 125, baseType: !438, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !501, file: !153, line: 128, baseType: !492, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !501, file: !153, line: 129, baseType: !492, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !429, file: !73, line: 212, baseType: !500, size: 256, offset: 2496)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !429, file: !73, line: 213, baseType: !500, size: 256, offset: 2752)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !429, file: !73, line: 216, baseType: !465, size: 64, offset: 3008)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !429, file: !73, line: 217, baseType: !465, size: 64, offset: 3072)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !429, file: !73, line: 218, baseType: !465, size: 64, offset: 3136)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !429, file: !73, line: 221, baseType: !513, size: 32, offset: 3200)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !429, file: !73, line: 224, baseType: !515, size: 32, offset: 3232)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !429, file: !73, line: 227, baseType: !517, size: 32, offset: 3264)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !429, file: !73, line: 230, baseType: !519, size: 32, offset: 3296)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !429, file: !73, line: 233, baseType: !521, size: 32, offset: 3328)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !429, file: !73, line: 236, baseType: !523, size: 32, offset: 3360)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !429, file: !73, line: 239, baseType: !525, size: 64, offset: 3392)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !429, file: !73, line: 242, baseType: !438, size: 64, offset: 3456)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !429, file: !73, line: 243, baseType: !438, size: 64, offset: 3520)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !429, file: !73, line: 246, baseType: !492, size: 64, offset: 3584)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !429, file: !73, line: 249, baseType: !438, size: 64, offset: 3648)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !429, file: !73, line: 250, baseType: !438, size: 64, offset: 3712)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !429, file: !73, line: 253, baseType: !492, size: 64, offset: 3776)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !429, file: !73, line: 256, baseType: !533, size: 192, offset: 3840)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !534, line: 68, baseType: !535)
!534 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !534, line: 62, size: 192, elements: !536)
!536 = !{!537, !538, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !535, file: !534, line: 65, baseType: !465, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !535, file: !534, line: 66, baseType: !465, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !535, file: !534, line: 67, baseType: !465, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !429, file: !73, line: 259, baseType: !541, size: 512, offset: 4032)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !543)
!543 = !{!544, !551, !552, !554}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !542, file: !247, line: 43, baseType: !545, size: 192)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !547)
!547 = !{!548, !549, !550}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !546, file: !247, line: 35, baseType: !465, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !546, file: !247, line: 36, baseType: !465, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !546, file: !247, line: 37, baseType: !465, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !542, file: !247, line: 44, baseType: !545, size: 192, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !542, file: !247, line: 47, baseType: !553, size: 32, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !542, file: !247, line: 50, baseType: !438, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !429, file: !73, line: 262, baseType: !556, size: 64, offset: 4544)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !557, line: 26, baseType: !558)
!557 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!444, !561, !563, !566, !483}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !565)
!565 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !568)
!568 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !429, file: !73, line: 265, baseType: !483, size: 64, offset: 4608)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !429, file: !73, line: 266, baseType: !483, size: 64, offset: 4672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !429, file: !73, line: 267, baseType: !483, size: 64, offset: 4736)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !429, file: !73, line: 270, baseType: !573, size: 64, offset: 4800)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !429, file: !73, line: 273, baseType: !577, size: 64, offset: 4864)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !579)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !429, file: !73, line: 276, baseType: !581, size: 32768, offset: 4928)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 32768, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 4096)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !429, file: !73, line: 277, baseType: !581, size: 32768, offset: 37696)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !429, file: !73, line: 278, baseType: !581, size: 32768, offset: 70464)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !429, file: !73, line: 281, baseType: !438, size: 64, offset: 103232)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !429, file: !73, line: 282, baseType: !438, size: 64, offset: 103296)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !429, file: !73, line: 285, baseType: !589, size: 448, offset: 103360)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !591)
!591 = !{!592, !594, !596, !597, !598, !599, !600, !605}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !590, file: !253, line: 105, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !590, file: !253, line: 108, baseType: !595, size: 32, offset: 32)
!595 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !590, file: !253, line: 111, baseType: !487, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !590, file: !253, line: 112, baseType: !487, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !590, file: !253, line: 115, baseType: !483, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !590, file: !253, line: 118, baseType: !444, size: 32, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !590, file: !253, line: 121, baseType: !601, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !603, line: 26, baseType: !604)
!603 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !603, line: 25, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !590, file: !253, line: 124, baseType: !438, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !429, file: !73, line: 288, baseType: !444, size: 32, offset: 103808)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !429, file: !73, line: 291, baseType: !608, size: 64, offset: 103872)
!608 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !492)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !429, file: !73, line: 294, baseType: !601, size: 64, offset: 103936)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !429, file: !73, line: 297, baseType: !611, size: 256, offset: 104000)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !613)
!613 = !{!614, !615, !616, !619}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !89, line: 30, baseType: !487, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !612, file: !89, line: 33, baseType: !438, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !612, file: !89, line: 36, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !612, file: !89, line: 39, baseType: !438, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !429, file: !73, line: 298, baseType: !611, size: 256, offset: 104256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !429, file: !73, line: 299, baseType: !622, size: 64, offset: 104512)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !429, file: !73, line: 302, baseType: !438, size: 64, offset: 104576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !429, file: !73, line: 305, baseType: !438, size: 64, offset: 104640)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !429, file: !73, line: 308, baseType: !525, size: 64, offset: 104704)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !429, file: !73, line: 309, baseType: !525, size: 64, offset: 104768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !429, file: !73, line: 310, baseType: !525, size: 64, offset: 104832)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !429, file: !73, line: 313, baseType: !629, size: 32, offset: 104896)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !429, file: !73, line: 316, baseType: !444, size: 32, offset: 104928)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !429, file: !73, line: 319, baseType: !452, size: 64, offset: 104960)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !429, file: !73, line: 322, baseType: !525, size: 64, offset: 105024)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !429, file: !73, line: 325, baseType: !500, size: 256, offset: 105088)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !429, file: !73, line: 328, baseType: !483, size: 64, offset: 105344)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !429, file: !73, line: 329, baseType: !483, size: 64, offset: 105408)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !73, line: 332, baseType: !637, size: 32, offset: 105472)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !429, file: !73, line: 335, baseType: !444, size: 32, offset: 105504)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !429, file: !73, line: 338, baseType: !567, size: 64, offset: 105536)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !429, file: !73, line: 341, baseType: !444, size: 32, offset: 105600)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !429, file: !73, line: 344, baseType: !438, size: 64, offset: 105664)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !429, file: !73, line: 347, baseType: !643, size: 64, offset: 105728)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !644, line: 7, baseType: !645)
!644 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !495, line: 160, baseType: !496)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !429, file: !73, line: 350, baseType: !647, size: 32, offset: 105792)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !429, file: !73, line: 353, baseType: !438, size: 64, offset: 105856)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !369, line: 50, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !652, line: 65, size: 384, elements: !653)
!652 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1c02c36d1afff9640ebc3240e403cf60")
!653 = !{!654, !655, !657, !658, !675, !676}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !651, file: !652, line: 68, baseType: !427, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !651, file: !652, line: 71, baseType: !656, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !369, line: 47, baseType: !368)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "number_threads", scope: !651, file: !652, line: 74, baseType: !438, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nexus_info", scope: !651, file: !652, line: 77, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "NexusInfo", file: !662, line: 126, baseType: !663)
!662 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6b4e371270617573d29dc6ff902677c8")
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NexusInfo", file: !662, line: 103, size: 704, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !674}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !663, file: !662, line: 106, baseType: !444, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !663, file: !662, line: 109, baseType: !500, size: 256, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !663, file: !662, line: 112, baseType: !567, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !663, file: !662, line: 115, baseType: !451, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !663, file: !662, line: 116, baseType: !451, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "authentic_pixel_cache", scope: !663, file: !662, line: 119, baseType: !444, size: 32, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "indexes", scope: !663, file: !662, line: 122, baseType: !672, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !456)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !663, file: !662, line: 125, baseType: !438, size: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !651, file: !652, line: 80, baseType: !444, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !651, file: !652, line: 83, baseType: !438, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!679 = !{i32 7, !"Dwarf Version", i32 5}
!680 = !{i32 2, !"Debug Info Version", i32 3}
!681 = !{i32 1, !"wchar_size", i32 4}
!682 = !{i32 7, !"PIC Level", i32 2}
!683 = !{i32 7, !"PIE Level", i32 2}
!684 = !{i32 7, !"uwtable", i32 2}
!685 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!686 = distinct !DISubprogram(name: "AcquireAuthenticCacheView", scope: !652, file: !652, line: 111, type: !687, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!687 = !DISubroutineType(types: !688)
!688 = !{!649, !689, !691}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!692 = !{!693, !694, !695}
!693 = !DILocalVariable(name: "image", arg: 1, scope: !686, file: !652, line: 111, type: !689)
!694 = !DILocalVariable(name: "exception", arg: 2, scope: !686, file: !652, line: 112, type: !691)
!695 = !DILocalVariable(name: "cache_view", scope: !686, file: !652, line: 115, type: !696)
!696 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !649)
!697 = !DILocation(line: 0, scope: !686)
!698 = !DILocation(line: 117, column: 14, scope: !686)
!699 = !DILocation(line: 118, column: 42, scope: !686)
!700 = !{!701, !702, i64 0}
!701 = !{!"_CacheView", !702, i64 0, !703, i64 8, !705, i64 16, !702, i64 24, !703, i64 32, !705, i64 40}
!702 = !{!"any pointer", !703, i64 0}
!703 = !{!"omnipotent char", !704, i64 0}
!704 = !{!"Simple C/C++ TBAA"}
!705 = !{!"long", !703, i64 0}
!706 = !DILocation(line: 118, column: 10, scope: !686)
!707 = !DILocation(line: 119, column: 3, scope: !686)
!708 = distinct !DISubprogram(name: "AcquireVirtualCacheView", scope: !652, file: !652, line: 154, type: !687, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !709)
!709 = !{!710, !711, !712, !713, !716, !717, !720}
!710 = !DILocalVariable(name: "image", arg: 1, scope: !708, file: !652, line: 154, type: !689)
!711 = !DILocalVariable(name: "exception", arg: 2, scope: !708, file: !652, line: 155, type: !691)
!712 = !DILocalVariable(name: "cache_view", scope: !708, file: !652, line: 158, type: !696)
!713 = !DILocalVariable(name: "message", scope: !714, file: !652, line: 168, type: !487)
!714 = distinct !DILexicalBlock(scope: !715, file: !652, line: 168, column: 5)
!715 = distinct !DILexicalBlock(scope: !708, file: !652, line: 167, column: 7)
!716 = !DILocalVariable(name: "exception", scope: !714, file: !652, line: 168, type: !589)
!717 = !DILocalVariable(name: "message", scope: !718, file: !652, line: 181, type: !487)
!718 = distinct !DILexicalBlock(scope: !719, file: !652, line: 181, column: 5)
!719 = distinct !DILexicalBlock(scope: !708, file: !652, line: 180, column: 7)
!720 = !DILocalVariable(name: "exception", scope: !718, file: !652, line: 181, type: !589)
!721 = !DILocation(line: 0, scope: !708)
!722 = !DILocation(line: 162, column: 14, scope: !723)
!723 = distinct !DILexicalBlock(scope: !708, file: !652, line: 162, column: 7)
!724 = !{!725, !703, i64 12976}
!725 = !{!"_Image", !703, i64 0, !703, i64 4, !703, i64 8, !705, i64 16, !703, i64 24, !703, i64 28, !703, i64 32, !705, i64 40, !705, i64 48, !705, i64 56, !705, i64 64, !702, i64 72, !726, i64 80, !726, i64 88, !726, i64 96, !728, i64 104, !729, i64 112, !703, i64 208, !702, i64 216, !703, i64 224, !702, i64 232, !702, i64 240, !702, i64 248, !705, i64 256, !728, i64 264, !728, i64 272, !731, i64 280, !731, i64 312, !731, i64 344, !728, i64 376, !728, i64 384, !728, i64 392, !703, i64 400, !703, i64 404, !703, i64 408, !703, i64 412, !703, i64 416, !703, i64 420, !702, i64 424, !705, i64 432, !705, i64 440, !705, i64 448, !705, i64 456, !705, i64 464, !705, i64 472, !732, i64 480, !733, i64 504, !702, i64 568, !702, i64 576, !702, i64 584, !702, i64 592, !702, i64 600, !702, i64 608, !703, i64 616, !703, i64 4712, !703, i64 8808, !705, i64 12904, !705, i64 12912, !735, i64 12920, !703, i64 12976, !705, i64 12984, !702, i64 12992, !737, i64 13000, !737, i64 13032, !702, i64 13064, !705, i64 13072, !705, i64 13080, !702, i64 13088, !702, i64 13096, !702, i64 13104, !703, i64 13112, !703, i64 13116, !726, i64 13120, !702, i64 13128, !731, i64 13136, !702, i64 13168, !702, i64 13176, !703, i64 13184, !703, i64 13188, !738, i64 13192, !703, i64 13200, !705, i64 13208, !705, i64 13216, !703, i64 13224, !705, i64 13232}
!726 = !{!"_PixelPacket", !727, i64 0, !727, i64 2, !727, i64 4, !727, i64 6}
!727 = !{!"short", !703, i64 0}
!728 = !{!"double", !703, i64 0}
!729 = !{!"_ChromaticityInfo", !730, i64 0, !730, i64 24, !730, i64 48, !730, i64 72}
!730 = !{!"_PrimaryInfo", !728, i64 0, !728, i64 8, !728, i64 16}
!731 = !{!"_RectangleInfo", !705, i64 0, !705, i64 8, !705, i64 16, !705, i64 24}
!732 = !{!"_ErrorInfo", !728, i64 0, !728, i64 8, !728, i64 16}
!733 = !{!"_TimerInfo", !734, i64 0, !734, i64 24, !703, i64 48, !705, i64 56}
!734 = !{!"_Timer", !728, i64 0, !728, i64 8, !728, i64 16}
!735 = !{!"_ExceptionInfo", !703, i64 0, !736, i64 4, !702, i64 8, !702, i64 16, !702, i64 24, !703, i64 32, !702, i64 40, !705, i64 48}
!736 = !{!"int", !703, i64 0}
!737 = !{!"_ProfileInfo", !702, i64 0, !705, i64 8, !702, i64 16, !705, i64 24}
!738 = !{!"long long", !703, i64 0}
!739 = !DILocation(line: 162, column: 20, scope: !723)
!740 = !DILocation(line: 162, column: 7, scope: !708)
!741 = !DILocation(line: 163, column: 68, scope: !723)
!742 = !DILocation(line: 163, column: 12, scope: !723)
!743 = !DILocation(line: 163, column: 5, scope: !723)
!744 = !DILocation(line: 165, column: 28, scope: !708)
!745 = !DILocation(line: 167, column: 18, scope: !715)
!746 = !DILocation(line: 167, column: 7, scope: !708)
!747 = !DILocation(line: 168, column: 5, scope: !714)
!748 = !{!736, !736, i64 0}
!749 = !DILocation(line: 0, scope: !714)
!750 = !DILocation(line: 169, column: 10, scope: !708)
!751 = !DILocation(line: 170, column: 21, scope: !708)
!752 = !DILocation(line: 170, column: 20, scope: !708)
!753 = !DILocation(line: 171, column: 15, scope: !708)
!754 = !DILocation(line: 171, column: 29, scope: !708)
!755 = !{!701, !705, i64 16}
!756 = !DILocation(line: 172, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !708, file: !652, line: 172, column: 7)
!758 = !DILocation(line: 172, column: 60, scope: !757)
!759 = !DILocation(line: 172, column: 46, scope: !757)
!760 = !DILocation(line: 172, column: 7, scope: !708)
!761 = !DILocation(line: 173, column: 41, scope: !757)
!762 = !DILocation(line: 173, column: 31, scope: !757)
!763 = !DILocation(line: 173, column: 5, scope: !757)
!764 = !DILocation(line: 174, column: 19, scope: !765)
!765 = distinct !DILexicalBlock(scope: !708, file: !652, line: 174, column: 7)
!766 = !DILocation(line: 174, column: 34, scope: !765)
!767 = !DILocation(line: 174, column: 7, scope: !708)
!768 = !DILocation(line: 175, column: 31, scope: !765)
!769 = !DILocation(line: 175, column: 5, scope: !765)
!770 = !DILocation(line: 176, column: 61, scope: !708)
!771 = !DILocation(line: 176, column: 26, scope: !708)
!772 = !DILocation(line: 176, column: 15, scope: !708)
!773 = !DILocation(line: 176, column: 25, scope: !708)
!774 = !{!701, !702, i64 24}
!775 = !DILocation(line: 177, column: 36, scope: !708)
!776 = !DILocation(line: 177, column: 15, scope: !708)
!777 = !DILocation(line: 177, column: 35, scope: !708)
!778 = !{!701, !703, i64 8}
!779 = !DILocation(line: 178, column: 21, scope: !708)
!780 = !DILocation(line: 178, column: 15, scope: !708)
!781 = !DILocation(line: 178, column: 20, scope: !708)
!782 = !{!701, !703, i64 32}
!783 = !DILocation(line: 179, column: 15, scope: !708)
!784 = !DILocation(line: 179, column: 24, scope: !708)
!785 = !{!701, !705, i64 40}
!786 = !DILocation(line: 180, column: 19, scope: !719)
!787 = !DILocation(line: 180, column: 30, scope: !719)
!788 = !DILocation(line: 180, column: 7, scope: !708)
!789 = !DILocation(line: 181, column: 5, scope: !718)
!790 = !DILocation(line: 0, scope: !718)
!791 = !DILocation(line: 182, column: 3, scope: !708)
!792 = !DISubprogram(name: "SyncImagePixelCache", scope: !662, file: !662, line: 273, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!444, !427, !691}
!795 = !{}
!796 = distinct !DISubprogram(name: "AcquireCacheView", scope: !652, file: !652, line: 149, type: !797, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!649, !689}
!799 = !{!800}
!800 = !DILocalVariable(name: "image", arg: 1, scope: !796, file: !652, line: 149, type: !689)
!801 = !DILocation(line: 0, scope: !796)
!802 = !DILocation(line: 151, column: 10, scope: !796)
!803 = !DILocation(line: 151, column: 3, scope: !796)
!804 = !DISubprogram(name: "LogMagickEvent", scope: !390, file: !390, line: 83, type: !805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!805 = !DISubroutineType(types: !806)
!806 = !{!444, !807, !561, !561, !809, !561, null}
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !390, line: 58, baseType: !389)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!810 = !DISubprogram(name: "AcquireAlignedMemory", scope: !811, file: !811, line: 38, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!811 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!812 = !DISubroutineType(types: !813)
!813 = !{!483, !809, !809}
!814 = !DISubprogram(name: "GetExceptionInfo", scope: !253, file: !253, line: 166, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !691}
!817 = !DISubprogram(name: "GetExceptionMessage", scope: !253, file: !253, line: 137, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!818 = !DISubroutineType(types: !819)
!819 = !{!487, !820}
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!821 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!822 = !DISubroutineType(types: !823)
!823 = !{!444, !691, !561, !561, !809, !824, !561, !561, null}
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!825 = !DISubprogram(name: "DestroyString", scope: !826, file: !826, line: 46, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!826 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!827 = !DISubroutineType(types: !828)
!828 = !{!487, !487}
!829 = !DISubprogram(name: "CatchException", scope: !253, file: !253, line: 164, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!830 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!831 = !DISubroutineType(types: !832)
!832 = !{!691, !691}
!833 = !DISubprogram(name: "MagickCoreTerminus", scope: !834, file: !834, line: 147, type: !835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!834 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!835 = !DISubroutineType(types: !836)
!836 = !{null}
!837 = !DISubprogram(name: "ResetMagickMemory", scope: !811, file: !811, line: 52, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!838 = !DISubroutineType(types: !839)
!839 = !{!483, !483, !595, !809}
!840 = !DISubprogram(name: "ReferenceImage", scope: !73, file: !73, line: 515, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!841 = !DISubroutineType(types: !842)
!842 = !{!427, !427}
!843 = !DISubprogram(name: "GetMagickResourceLimit", scope: !415, file: !415, line: 53, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!844 = !DISubroutineType(types: !845)
!845 = !{!567, !846}
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !415, line: 36, baseType: !414)
!848 = !DISubprogram(name: "AcquirePixelCacheNexus", scope: !662, file: !662, line: 251, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!849 = !DISubroutineType(types: !850)
!850 = !{!659, !809}
!851 = !DISubprogram(name: "GetImageVirtualPixelMethod", scope: !73, file: !73, line: 558, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!852 = !DISubroutineType(types: !853)
!853 = !{!656, !689}
!854 = !DISubprogram(name: "IsEventLogging", scope: !390, file: !390, line: 80, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!855 = !DISubroutineType(types: !856)
!856 = !{!444}
!857 = distinct !DISubprogram(name: "CloneCacheView", scope: !652, file: !652, line: 207, type: !858, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !862)
!858 = !DISubroutineType(types: !859)
!859 = !{!649, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!862 = !{!863, !864, !865, !868}
!863 = !DILocalVariable(name: "cache_view", arg: 1, scope: !857, file: !652, line: 207, type: !860)
!864 = !DILocalVariable(name: "clone_view", scope: !857, file: !652, line: 210, type: !696)
!865 = !DILocalVariable(name: "message", scope: !866, file: !652, line: 220, type: !487)
!866 = distinct !DILexicalBlock(scope: !867, file: !652, line: 220, column: 5)
!867 = distinct !DILexicalBlock(scope: !857, file: !652, line: 219, column: 7)
!868 = !DILocalVariable(name: "exception", scope: !866, file: !652, line: 220, type: !589)
!869 = !DILocation(line: 0, scope: !857)
!870 = !DILocation(line: 214, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !857, file: !652, line: 214, column: 7)
!872 = !DILocation(line: 214, column: 25, scope: !871)
!873 = !DILocation(line: 214, column: 7, scope: !857)
!874 = !DILocation(line: 216, column: 19, scope: !871)
!875 = !DILocation(line: 216, column: 26, scope: !871)
!876 = !DILocation(line: 215, column: 12, scope: !871)
!877 = !DILocation(line: 215, column: 5, scope: !871)
!878 = !DILocation(line: 217, column: 28, scope: !857)
!879 = !DILocation(line: 219, column: 18, scope: !867)
!880 = !DILocation(line: 219, column: 7, scope: !857)
!881 = !DILocation(line: 220, column: 5, scope: !866)
!882 = !DILocation(line: 0, scope: !866)
!883 = !DILocation(line: 221, column: 10, scope: !857)
!884 = !DILocation(line: 222, column: 48, scope: !857)
!885 = !DILocation(line: 222, column: 21, scope: !857)
!886 = !DILocation(line: 222, column: 20, scope: !857)
!887 = !DILocation(line: 223, column: 42, scope: !857)
!888 = !DILocation(line: 223, column: 15, scope: !857)
!889 = !DILocation(line: 223, column: 29, scope: !857)
!890 = !DILocation(line: 224, column: 61, scope: !857)
!891 = !DILocation(line: 224, column: 26, scope: !857)
!892 = !DILocation(line: 224, column: 15, scope: !857)
!893 = !DILocation(line: 224, column: 25, scope: !857)
!894 = !DILocation(line: 225, column: 48, scope: !857)
!895 = !DILocation(line: 225, column: 15, scope: !857)
!896 = !DILocation(line: 225, column: 35, scope: !857)
!897 = !DILocation(line: 226, column: 33, scope: !857)
!898 = !DILocation(line: 226, column: 15, scope: !857)
!899 = !DILocation(line: 226, column: 20, scope: !857)
!900 = !DILocation(line: 227, column: 15, scope: !857)
!901 = !DILocation(line: 227, column: 24, scope: !857)
!902 = !DILocation(line: 228, column: 3, scope: !857)
!903 = distinct !DISubprogram(name: "DestroyCacheView", scope: !652, file: !652, line: 254, type: !904, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!649, !649}
!906 = !{!907}
!907 = !DILocalVariable(name: "cache_view", arg: 1, scope: !903, file: !652, line: 254, type: !649)
!908 = !DILocation(line: 0, scope: !903)
!909 = !DILocation(line: 258, column: 19, scope: !910)
!910 = distinct !DILexicalBlock(scope: !903, file: !652, line: 258, column: 7)
!911 = !DILocation(line: 258, column: 25, scope: !910)
!912 = !DILocation(line: 258, column: 7, scope: !903)
!913 = !DILocation(line: 260, column: 19, scope: !910)
!914 = !DILocation(line: 260, column: 26, scope: !910)
!915 = !DILocation(line: 259, column: 12, scope: !910)
!916 = !DILocation(line: 259, column: 5, scope: !910)
!917 = !DILocation(line: 261, column: 19, scope: !918)
!918 = distinct !DILexicalBlock(scope: !903, file: !652, line: 261, column: 7)
!919 = !DILocation(line: 261, column: 30, scope: !918)
!920 = !DILocation(line: 261, column: 7, scope: !903)
!921 = !DILocation(line: 263, column: 19, scope: !918)
!922 = !DILocation(line: 262, column: 28, scope: !918)
!923 = !DILocation(line: 262, column: 27, scope: !918)
!924 = !DILocation(line: 262, column: 5, scope: !918)
!925 = !DILocation(line: 264, column: 46, scope: !903)
!926 = !DILocation(line: 264, column: 21, scope: !903)
!927 = !DILocation(line: 264, column: 20, scope: !903)
!928 = !DILocation(line: 265, column: 15, scope: !903)
!929 = !DILocation(line: 265, column: 24, scope: !903)
!930 = !DILocation(line: 266, column: 28, scope: !903)
!931 = !DILocation(line: 267, column: 3, scope: !903)
!932 = !DISubprogram(name: "DestroyPixelCacheNexus", scope: !662, file: !662, line: 252, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!933 = !DISubroutineType(types: !934)
!934 = !{!659, !659, !809}
!935 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!936 = !DISubprogram(name: "RelinquishAlignedMemory", scope: !811, file: !811, line: 50, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!937 = !DISubroutineType(types: !938)
!938 = !{!483, !483}
!939 = distinct !DISubprogram(name: "GetCacheViewChannels", scope: !652, file: !652, line: 293, type: !940, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{!438, !860}
!942 = !{!943}
!943 = !DILocalVariable(name: "cache_view", arg: 1, scope: !939, file: !652, line: 293, type: !860)
!944 = !DILocation(line: 0, scope: !939)
!945 = !DILocation(line: 297, column: 19, scope: !946)
!946 = distinct !DILexicalBlock(scope: !939, file: !652, line: 297, column: 7)
!947 = !DILocation(line: 297, column: 25, scope: !946)
!948 = !DILocation(line: 297, column: 7, scope: !939)
!949 = !DILocation(line: 299, column: 19, scope: !946)
!950 = !DILocation(line: 299, column: 26, scope: !946)
!951 = !DILocation(line: 298, column: 12, scope: !946)
!952 = !DILocation(line: 298, column: 5, scope: !946)
!953 = !DILocation(line: 300, column: 44, scope: !939)
!954 = !DILocation(line: 300, column: 51, scope: !939)
!955 = !{!725, !702, i64 584}
!956 = !DILocation(line: 300, column: 10, scope: !939)
!957 = !DILocation(line: 300, column: 3, scope: !939)
!958 = !DISubprogram(name: "GetPixelCacheChannels", scope: !662, file: !662, line: 264, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!959 = !DISubroutineType(types: !960)
!960 = !{!438, !961}
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cache", file: !662, line: 33, baseType: !483)
!963 = distinct !DISubprogram(name: "GetCacheViewColorspace", scope: !652, file: !652, line: 326, type: !964, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{!434, !860}
!966 = !{!967}
!967 = !DILocalVariable(name: "cache_view", arg: 1, scope: !963, file: !652, line: 326, type: !860)
!968 = !DILocation(line: 0, scope: !963)
!969 = !DILocation(line: 330, column: 19, scope: !970)
!970 = distinct !DILexicalBlock(scope: !963, file: !652, line: 330, column: 7)
!971 = !DILocation(line: 330, column: 25, scope: !970)
!972 = !DILocation(line: 330, column: 7, scope: !963)
!973 = !DILocation(line: 332, column: 19, scope: !970)
!974 = !DILocation(line: 332, column: 26, scope: !970)
!975 = !DILocation(line: 331, column: 12, scope: !970)
!976 = !DILocation(line: 331, column: 5, scope: !970)
!977 = !DILocation(line: 333, column: 46, scope: !963)
!978 = !DILocation(line: 333, column: 53, scope: !963)
!979 = !DILocation(line: 333, column: 10, scope: !963)
!980 = !DILocation(line: 333, column: 3, scope: !963)
!981 = !DISubprogram(name: "GetPixelCacheColorspace", scope: !662, file: !662, line: 232, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!982 = !DISubroutineType(types: !983)
!983 = !{!434, !961}
!984 = distinct !DISubprogram(name: "GetCacheViewException", scope: !652, file: !652, line: 359, type: !985, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!691, !860}
!987 = !{!988}
!988 = !DILocalVariable(name: "cache_view", arg: 1, scope: !984, file: !652, line: 359, type: !860)
!989 = !DILocation(line: 0, scope: !984)
!990 = !DILocation(line: 363, column: 19, scope: !991)
!991 = distinct !DILexicalBlock(scope: !984, file: !652, line: 363, column: 7)
!992 = !DILocation(line: 363, column: 25, scope: !991)
!993 = !DILocation(line: 363, column: 7, scope: !984)
!994 = !DILocation(line: 365, column: 19, scope: !991)
!995 = !DILocation(line: 365, column: 26, scope: !991)
!996 = !DILocation(line: 364, column: 12, scope: !991)
!997 = !DILocation(line: 364, column: 5, scope: !991)
!998 = !DILocation(line: 366, column: 23, scope: !984)
!999 = !DILocation(line: 366, column: 30, scope: !984)
!1000 = !DILocation(line: 366, column: 3, scope: !984)
!1001 = distinct !DISubprogram(name: "GetCacheViewExtent", scope: !652, file: !652, line: 393, type: !1002, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!567, !860}
!1004 = !{!1005, !1006}
!1005 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1001, file: !652, line: 393, type: !860)
!1006 = !DILocalVariable(name: "id", scope: !1001, file: !652, line: 396, type: !820)
!1007 = !DILocation(line: 0, scope: !1001)
!1008 = !DILocation(line: 400, column: 19, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1001, file: !652, line: 400, column: 7)
!1010 = !DILocation(line: 400, column: 25, scope: !1009)
!1011 = !DILocation(line: 400, column: 7, scope: !1001)
!1012 = !DILocation(line: 402, column: 19, scope: !1009)
!1013 = !DILocation(line: 402, column: 26, scope: !1009)
!1014 = !DILocation(line: 401, column: 12, scope: !1009)
!1015 = !DILocation(line: 401, column: 5, scope: !1009)
!1016 = !DILocation(line: 405, column: 47, scope: !1001)
!1017 = !DILocation(line: 405, column: 54, scope: !1001)
!1018 = !DILocation(line: 406, column: 17, scope: !1001)
!1019 = !DILocation(line: 406, column: 5, scope: !1001)
!1020 = !{!702, !702, i64 0}
!1021 = !DILocation(line: 405, column: 10, scope: !1001)
!1022 = !DILocation(line: 405, column: 3, scope: !1001)
!1023 = !DISubprogram(name: "GetPixelCacheNexusExtent", scope: !662, file: !662, line: 248, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!567, !961, !660}
!1026 = distinct !DISubprogram(name: "GetCacheViewStorageClass", scope: !652, file: !652, line: 432, type: !1027, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!432, !860}
!1029 = !{!1030}
!1030 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1026, file: !652, line: 432, type: !860)
!1031 = !DILocation(line: 0, scope: !1026)
!1032 = !DILocation(line: 436, column: 19, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1026, file: !652, line: 436, column: 7)
!1034 = !DILocation(line: 436, column: 25, scope: !1033)
!1035 = !DILocation(line: 436, column: 7, scope: !1026)
!1036 = !DILocation(line: 438, column: 19, scope: !1033)
!1037 = !DILocation(line: 438, column: 26, scope: !1033)
!1038 = !DILocation(line: 437, column: 12, scope: !1033)
!1039 = !DILocation(line: 437, column: 5, scope: !1033)
!1040 = !DILocation(line: 439, column: 48, scope: !1026)
!1041 = !DILocation(line: 439, column: 55, scope: !1026)
!1042 = !DILocation(line: 439, column: 10, scope: !1026)
!1043 = !DILocation(line: 439, column: 3, scope: !1026)
!1044 = !DISubprogram(name: "GetPixelCacheStorageClass", scope: !662, file: !662, line: 229, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!432, !961}
!1047 = distinct !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !652, file: !652, line: 471, type: !1048, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1051)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!451, !649, !1050, !1050, !809, !809, !691}
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1052 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1047, file: !652, line: 471, type: !649)
!1053 = !DILocalVariable(name: "x", arg: 2, scope: !1047, file: !652, line: 472, type: !1050)
!1054 = !DILocalVariable(name: "y", arg: 3, scope: !1047, file: !652, line: 472, type: !1050)
!1055 = !DILocalVariable(name: "columns", arg: 4, scope: !1047, file: !652, line: 472, type: !809)
!1056 = !DILocalVariable(name: "rows", arg: 5, scope: !1047, file: !652, line: 472, type: !809)
!1057 = !DILocalVariable(name: "exception", arg: 6, scope: !1047, file: !652, line: 473, type: !691)
!1058 = !DILocalVariable(name: "id", scope: !1047, file: !652, line: 476, type: !820)
!1059 = !DILocation(line: 0, scope: !1047)
!1060 = !DILocation(line: 481, column: 50, scope: !1047)
!1061 = !DILocation(line: 482, column: 17, scope: !1047)
!1062 = !DILocation(line: 482, column: 5, scope: !1047)
!1063 = !DILocation(line: 481, column: 10, scope: !1047)
!1064 = !DILocation(line: 481, column: 3, scope: !1047)
!1065 = !DISubprogram(name: "GetAuthenticPixelCacheNexus", scope: !662, file: !662, line: 255, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!451, !427, !1050, !1050, !809, !809, !660, !691}
!1068 = distinct !DISubprogram(name: "GetOneCacheViewAuthenticPixel", scope: !652, file: !652, line: 516, type: !1069, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1073)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!444, !1071, !1050, !1050, !1072, !691}
!1071 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !860)
!1072 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !451)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080}
!1074 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1068, file: !652, line: 517, type: !1071)
!1075 = !DILocalVariable(name: "x", arg: 2, scope: !1068, file: !652, line: 517, type: !1050)
!1076 = !DILocalVariable(name: "y", arg: 3, scope: !1068, file: !652, line: 517, type: !1050)
!1077 = !DILocalVariable(name: "pixel", arg: 4, scope: !1068, file: !652, line: 518, type: !1072)
!1078 = !DILocalVariable(name: "exception", arg: 5, scope: !1068, file: !652, line: 518, type: !691)
!1079 = !DILocalVariable(name: "id", scope: !1068, file: !652, line: 521, type: !820)
!1080 = !DILocalVariable(name: "pixels", scope: !1068, file: !652, line: 524, type: !1072)
!1081 = !DILocation(line: 0, scope: !1068)
!1082 = !DILocation(line: 528, column: 22, scope: !1068)
!1083 = !DILocation(line: 528, column: 29, scope: !1068)
!1084 = !DILocation(line: 531, column: 17, scope: !1068)
!1085 = !DILocation(line: 531, column: 5, scope: !1068)
!1086 = !DILocation(line: 530, column: 10, scope: !1068)
!1087 = !DILocation(line: 532, column: 14, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1068, file: !652, line: 532, column: 7)
!1089 = !DILocation(line: 532, column: 7, scope: !1068)
!1090 = !DILocation(line: 534, column: 11, scope: !1068)
!1091 = !DILocation(line: 535, column: 3, scope: !1068)
!1092 = !DILocation(line: 536, column: 1, scope: !1068)
!1093 = distinct !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !652, file: !652, line: 562, type: !1094, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!672, !649}
!1096 = !{!1097, !1098}
!1097 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1093, file: !652, line: 562, type: !649)
!1098 = !DILocalVariable(name: "id", scope: !1093, file: !652, line: 565, type: !820)
!1099 = !DILocation(line: 0, scope: !1093)
!1100 = !DILocation(line: 571, column: 22, scope: !1093)
!1101 = !DILocation(line: 571, column: 10, scope: !1093)
!1102 = !DILocation(line: 571, column: 38, scope: !1093)
!1103 = !{!1104, !702, i64 72}
!1104 = !{!"_NexusInfo", !703, i64 0, !731, i64 8, !738, i64 40, !702, i64 48, !702, i64 56, !703, i64 64, !702, i64 72, !705, i64 80}
!1105 = !DILocation(line: 571, column: 3, scope: !1093)
!1106 = distinct !DISubprogram(name: "GetCacheViewAuthenticPixelQueue", scope: !652, file: !652, line: 599, type: !1107, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!451, !649}
!1109 = !{!1110, !1111}
!1110 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1106, file: !652, line: 599, type: !649)
!1111 = !DILocalVariable(name: "id", scope: !1106, file: !652, line: 602, type: !820)
!1112 = !DILocation(line: 0, scope: !1106)
!1113 = !DILocation(line: 608, column: 22, scope: !1106)
!1114 = !DILocation(line: 608, column: 10, scope: !1106)
!1115 = !DILocation(line: 608, column: 38, scope: !1106)
!1116 = !{!1104, !702, i64 56}
!1117 = !DILocation(line: 608, column: 3, scope: !1106)
!1118 = distinct !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !652, file: !652, line: 636, type: !1119, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1123)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!1121, !860}
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!1123 = !{!1124, !1125}
!1124 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1118, file: !652, line: 637, type: !860)
!1125 = !DILocalVariable(name: "id", scope: !1118, file: !652, line: 640, type: !820)
!1126 = !DILocation(line: 0, scope: !1118)
!1127 = !DILocation(line: 646, column: 49, scope: !1118)
!1128 = !DILocation(line: 646, column: 56, scope: !1118)
!1129 = !DILocation(line: 647, column: 17, scope: !1118)
!1130 = !DILocation(line: 647, column: 5, scope: !1118)
!1131 = !DILocation(line: 646, column: 10, scope: !1118)
!1132 = !DILocation(line: 646, column: 3, scope: !1118)
!1133 = !DISubprogram(name: "GetVirtualIndexesFromNexus", scope: !662, file: !662, line: 235, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1121, !961, !660}
!1136 = distinct !DISubprogram(name: "GetCacheViewVirtualPixelQueue", scope: !652, file: !652, line: 675, type: !1137, scopeLine: 677, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!677, !860}
!1139 = !{!1140, !1141}
!1140 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1136, file: !652, line: 676, type: !860)
!1141 = !DILocalVariable(name: "id", scope: !1136, file: !652, line: 679, type: !820)
!1142 = !DILocation(line: 0, scope: !1136)
!1143 = !DILocation(line: 685, column: 44, scope: !1136)
!1144 = !DILocation(line: 685, column: 51, scope: !1136)
!1145 = !DILocation(line: 686, column: 17, scope: !1136)
!1146 = !DILocation(line: 686, column: 5, scope: !1136)
!1147 = !DILocation(line: 685, column: 10, scope: !1136)
!1148 = !DILocation(line: 685, column: 3, scope: !1136)
!1149 = !DISubprogram(name: "GetVirtualPixelsNexus", scope: !662, file: !662, line: 241, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!677, !961, !660}
!1152 = distinct !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !652, file: !652, line: 721, type: !1153, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!677, !860, !1050, !1050, !809, !809, !691}
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1156 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1152, file: !652, line: 722, type: !860)
!1157 = !DILocalVariable(name: "x", arg: 2, scope: !1152, file: !652, line: 722, type: !1050)
!1158 = !DILocalVariable(name: "y", arg: 3, scope: !1152, file: !652, line: 722, type: !1050)
!1159 = !DILocalVariable(name: "columns", arg: 4, scope: !1152, file: !652, line: 723, type: !809)
!1160 = !DILocalVariable(name: "rows", arg: 5, scope: !1152, file: !652, line: 723, type: !809)
!1161 = !DILocalVariable(name: "exception", arg: 6, scope: !1152, file: !652, line: 723, type: !691)
!1162 = !DILocalVariable(name: "id", scope: !1152, file: !652, line: 726, type: !820)
!1163 = !DILocation(line: 0, scope: !1152)
!1164 = !DILocation(line: 731, column: 48, scope: !1152)
!1165 = !DILocation(line: 732, column: 17, scope: !1152)
!1166 = !DILocation(line: 733, column: 17, scope: !1152)
!1167 = !DILocation(line: 733, column: 5, scope: !1152)
!1168 = !DILocation(line: 731, column: 10, scope: !1152)
!1169 = !DILocation(line: 731, column: 3, scope: !1152)
!1170 = !DISubprogram(name: "GetVirtualPixelsFromNexus", scope: !662, file: !662, line: 238, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!677, !689, !1173, !1050, !1050, !809, !809, !660, !691}
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!1174 = distinct !DISubprogram(name: "GetOneCacheViewVirtualPixel", scope: !652, file: !652, line: 768, type: !1069, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1176 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1174, file: !652, line: 769, type: !1071)
!1177 = !DILocalVariable(name: "x", arg: 2, scope: !1174, file: !652, line: 769, type: !1050)
!1178 = !DILocalVariable(name: "y", arg: 3, scope: !1174, file: !652, line: 769, type: !1050)
!1179 = !DILocalVariable(name: "pixel", arg: 4, scope: !1174, file: !652, line: 770, type: !1072)
!1180 = !DILocalVariable(name: "exception", arg: 5, scope: !1174, file: !652, line: 770, type: !691)
!1181 = !DILocalVariable(name: "id", scope: !1174, file: !652, line: 773, type: !820)
!1182 = !DILocalVariable(name: "pixels", scope: !1174, file: !652, line: 776, type: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !677)
!1184 = !DILocation(line: 0, scope: !1174)
!1185 = !DILocation(line: 780, column: 22, scope: !1174)
!1186 = !DILocation(line: 780, column: 29, scope: !1174)
!1187 = !DILocation(line: 783, column: 17, scope: !1174)
!1188 = !DILocation(line: 783, column: 58, scope: !1174)
!1189 = !DILocation(line: 783, column: 46, scope: !1174)
!1190 = !DILocation(line: 782, column: 10, scope: !1174)
!1191 = !DILocation(line: 785, column: 14, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1174, file: !652, line: 785, column: 7)
!1193 = !DILocation(line: 785, column: 7, scope: !1174)
!1194 = !DILocation(line: 787, column: 11, scope: !1174)
!1195 = !DILocation(line: 788, column: 3, scope: !1174)
!1196 = !DILocation(line: 789, column: 1, scope: !1174)
!1197 = distinct !DISubprogram(name: "GetOneCacheViewVirtualMethodPixel", scope: !652, file: !652, line: 827, type: !1198, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1200)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!444, !860, !1173, !1050, !1050, !451, !691}
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1201 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1197, file: !652, line: 828, type: !860)
!1202 = !DILocalVariable(name: "virtual_pixel_method", arg: 2, scope: !1197, file: !652, line: 828, type: !1173)
!1203 = !DILocalVariable(name: "x", arg: 3, scope: !1197, file: !652, line: 829, type: !1050)
!1204 = !DILocalVariable(name: "y", arg: 4, scope: !1197, file: !652, line: 829, type: !1050)
!1205 = !DILocalVariable(name: "pixel", arg: 5, scope: !1197, file: !652, line: 829, type: !451)
!1206 = !DILocalVariable(name: "exception", arg: 6, scope: !1197, file: !652, line: 829, type: !691)
!1207 = !DILocalVariable(name: "id", scope: !1197, file: !652, line: 832, type: !820)
!1208 = !DILocalVariable(name: "pixels", scope: !1197, file: !652, line: 835, type: !1183)
!1209 = !DILocation(line: 0, scope: !1197)
!1210 = !DILocation(line: 839, column: 22, scope: !1197)
!1211 = !DILocation(line: 839, column: 29, scope: !1197)
!1212 = !DILocation(line: 841, column: 48, scope: !1197)
!1213 = !DILocation(line: 842, column: 19, scope: !1197)
!1214 = !DILocation(line: 842, column: 7, scope: !1197)
!1215 = !DILocation(line: 841, column: 10, scope: !1197)
!1216 = !DILocation(line: 843, column: 14, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1197, file: !652, line: 843, column: 7)
!1218 = !DILocation(line: 843, column: 7, scope: !1197)
!1219 = !DILocation(line: 845, column: 11, scope: !1197)
!1220 = !DILocation(line: 846, column: 3, scope: !1197)
!1221 = !DILocation(line: 847, column: 1, scope: !1197)
!1222 = distinct !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !652, file: !652, line: 881, type: !1048, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1224 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1222, file: !652, line: 881, type: !649)
!1225 = !DILocalVariable(name: "x", arg: 2, scope: !1222, file: !652, line: 882, type: !1050)
!1226 = !DILocalVariable(name: "y", arg: 3, scope: !1222, file: !652, line: 882, type: !1050)
!1227 = !DILocalVariable(name: "columns", arg: 4, scope: !1222, file: !652, line: 882, type: !809)
!1228 = !DILocalVariable(name: "rows", arg: 5, scope: !1222, file: !652, line: 882, type: !809)
!1229 = !DILocalVariable(name: "exception", arg: 6, scope: !1222, file: !652, line: 883, type: !691)
!1230 = !DILocalVariable(name: "id", scope: !1222, file: !652, line: 886, type: !820)
!1231 = !DILocation(line: 0, scope: !1222)
!1232 = !DILocation(line: 891, column: 52, scope: !1222)
!1233 = !DILocation(line: 892, column: 29, scope: !1222)
!1234 = !DILocation(line: 892, column: 17, scope: !1222)
!1235 = !DILocation(line: 891, column: 10, scope: !1222)
!1236 = !DILocation(line: 891, column: 3, scope: !1222)
!1237 = !DISubprogram(name: "QueueAuthenticPixelCacheNexus", scope: !662, file: !662, line: 259, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!451, !427, !1050, !1050, !809, !809, !1240, !660, !691}
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!1241 = distinct !DISubprogram(name: "SetCacheViewStorageClass", scope: !652, file: !652, line: 921, type: !1242, scopeLine: 923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1245)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!444, !649, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!1245 = !{!1246, !1247}
!1246 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1241, file: !652, line: 921, type: !649)
!1247 = !DILocalVariable(name: "storage_class", arg: 2, scope: !1241, file: !652, line: 922, type: !1244)
!1248 = !DILocation(line: 0, scope: !1241)
!1249 = !DILocation(line: 926, column: 19, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1241, file: !652, line: 926, column: 7)
!1251 = !DILocation(line: 926, column: 25, scope: !1250)
!1252 = !DILocation(line: 926, column: 7, scope: !1241)
!1253 = !DILocation(line: 928, column: 19, scope: !1250)
!1254 = !DILocation(line: 928, column: 26, scope: !1250)
!1255 = !DILocation(line: 927, column: 12, scope: !1250)
!1256 = !DILocation(line: 927, column: 5, scope: !1250)
!1257 = !DILocation(line: 929, column: 43, scope: !1241)
!1258 = !DILocation(line: 929, column: 10, scope: !1241)
!1259 = !DILocation(line: 929, column: 3, scope: !1241)
!1260 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!444, !427, !1244}
!1263 = distinct !DISubprogram(name: "SetCacheViewVirtualPixelMethod", scope: !652, file: !652, line: 958, type: !1264, scopeLine: 960, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!444, !696, !1173}
!1266 = !{!1267, !1268}
!1267 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1263, file: !652, line: 959, type: !696)
!1268 = !DILocalVariable(name: "virtual_pixel_method", arg: 2, scope: !1263, file: !652, line: 959, type: !1173)
!1269 = !DILocation(line: 0, scope: !1263)
!1270 = !DILocation(line: 963, column: 19, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1263, file: !652, line: 963, column: 7)
!1272 = !DILocation(line: 963, column: 25, scope: !1271)
!1273 = !DILocation(line: 963, column: 7, scope: !1263)
!1274 = !DILocation(line: 965, column: 19, scope: !1271)
!1275 = !DILocation(line: 965, column: 26, scope: !1271)
!1276 = !DILocation(line: 964, column: 12, scope: !1271)
!1277 = !DILocation(line: 964, column: 5, scope: !1271)
!1278 = !DILocation(line: 966, column: 15, scope: !1263)
!1279 = !DILocation(line: 966, column: 35, scope: !1263)
!1280 = !DILocation(line: 967, column: 3, scope: !1263)
!1281 = distinct !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !652, file: !652, line: 997, type: !1282, scopeLine: 999, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1284)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!444, !696, !691}
!1284 = !{!1285, !1286, !1287}
!1285 = !DILocalVariable(name: "cache_view", arg: 1, scope: !1281, file: !652, line: 998, type: !696)
!1286 = !DILocalVariable(name: "exception", arg: 2, scope: !1281, file: !652, line: 998, type: !691)
!1287 = !DILocalVariable(name: "id", scope: !1281, file: !652, line: 1001, type: !820)
!1288 = !DILocation(line: 0, scope: !1281)
!1289 = !DILocation(line: 1006, column: 51, scope: !1281)
!1290 = !DILocation(line: 1007, column: 17, scope: !1281)
!1291 = !DILocation(line: 1007, column: 5, scope: !1281)
!1292 = !DILocation(line: 1006, column: 10, scope: !1281)
!1293 = !DILocation(line: 1006, column: 3, scope: !1281)
!1294 = !DISubprogram(name: "SyncAuthenticPixelCacheNexus", scope: !662, file: !662, line: 244, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!444, !427, !660, !691}
