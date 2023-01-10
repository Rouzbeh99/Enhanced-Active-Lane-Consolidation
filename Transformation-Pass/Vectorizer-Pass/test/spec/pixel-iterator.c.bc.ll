; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/wand/pixel-iterator.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/pixel-iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelIterator = type { i64, [4096 x i8], ptr, ptr, %struct._RectangleInfo, i32, i64, ptr, i32, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._MagickWand = type { i64, [4096 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [91 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/pixel-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"PixelIterator\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"QuantumDepthMismatch\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ZeroRegionSize\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ClearPixelIterator(ptr noundef %iterator) local_unnamed_addr #0 !dbg !741 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !745, metadata !DIExpression()), !dbg !746
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !747
  %0 = load i32, ptr %debug, align 8, !dbg !747, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !756
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !757

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !758
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 124, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !759
  br label %if.end, !dbg !760

if.end:                                           ; preds = %if.then, %entry
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7, !dbg !761
  %1 = load ptr, ptr %pixel_wands, align 8, !dbg !761, !tbaa !762
  %region = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, !dbg !763
  %2 = load i64, ptr %region, align 8, !dbg !764, !tbaa !765
  %call1 = tail call ptr @DestroyPixelWands(ptr noundef %1, i64 noundef %2) #11, !dbg !766
  store ptr %call1, ptr %pixel_wands, align 8, !dbg !767, !tbaa !762
  %exception = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !768
  %3 = load ptr, ptr %exception, align 8, !dbg !768, !tbaa !769
  tail call void @ClearMagickException(ptr noundef %3) #11, !dbg !770
  %4 = load i64, ptr %region, align 8, !dbg !771, !tbaa !765
  %call5 = tail call ptr @NewPixelWands(i64 noundef %4) #11, !dbg !772
  store ptr %call5, ptr %pixel_wands, align 8, !dbg !773, !tbaa !762
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !774
  store i32 0, ptr %active, align 8, !dbg !775, !tbaa !776
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !777
  store i64 0, ptr %y, align 8, !dbg !778, !tbaa !779
  %call7 = tail call i32 @IsEventLogging() #11, !dbg !780
  store i32 %call7, ptr %debug, align 8, !dbg !781, !tbaa !749
  ret void, !dbg !782
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !783 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !790 ptr @DestroyPixelWands(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !793 void @ClearMagickException(ptr noundef) local_unnamed_addr #2

declare !dbg !796 ptr @NewPixelWands(i64 noundef) local_unnamed_addr #2

declare !dbg !799 i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ClonePixelIterator(ptr noundef %iterator) local_unnamed_addr #0 !dbg !802 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !806, metadata !DIExpression()), !dbg !811
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !812
  %0 = load i32, ptr %debug, align 8, !dbg !812, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !814
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !815

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !816
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 164, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !817
  br label %if.end, !dbg !818

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireMagickMemory(i64 noundef 4192) #12, !dbg !819
  call void @llvm.dbg.value(metadata ptr %call1, metadata !807, metadata !DIExpression()), !dbg !811
  %cmp2 = icmp eq ptr %call1, null, !dbg !820
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !821

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #11, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !808, metadata !DIExpression()), !dbg !822
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !822
  %name4 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !822
  %call6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name4) #11, !dbg !822
  call void @CatchException(ptr noundef nonnull %exception) #11, !dbg !822
  %call7 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !822
  call void @MagickWandTerminus() #11, !dbg !822
  call void @_exit(i32 noundef 1) #13, !dbg !822
  unreachable, !dbg !822

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 4192) #11, !dbg !823
  %call10 = tail call i64 @AcquireWandId() #11, !dbg !824
  store i64 %call10, ptr %call1, align 8, !dbg !825, !tbaa !826
  %name11 = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 1, !dbg !827
  %conv = uitofp i64 %call10 to double, !dbg !828
  %call14 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %name11, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %conv) #11, !dbg !829
  %call15 = tail call ptr @AcquireExceptionInfo() #11, !dbg !830
  %exception16 = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 2, !dbg !831
  store ptr %call15, ptr %exception16, align 8, !dbg !832, !tbaa !769
  %exception18 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !833
  %1 = load ptr, ptr %exception18, align 8, !dbg !833, !tbaa !769
  tail call void @InheritException(ptr noundef %call15, ptr noundef %1) #11, !dbg !834
  %view = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 3, !dbg !835
  %2 = load ptr, ptr %view, align 8, !dbg !835, !tbaa !836
  %call19 = tail call ptr @CloneCacheView(ptr noundef %2) #11, !dbg !837
  %view20 = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 3, !dbg !838
  store ptr %call19, ptr %view20, align 8, !dbg !839, !tbaa !836
  %region = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 4, !dbg !840
  %region21 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, !dbg !841
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %region, ptr noundef nonnull align 8 dereferenceable(32) %region21, i64 32, i1 false), !dbg !841, !tbaa.struct !842
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !844
  %3 = load i32, ptr %active, align 8, !dbg !844, !tbaa !776
  %active22 = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 5, !dbg !845
  store i32 %3, ptr %active22, align 8, !dbg !846, !tbaa !776
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !847
  %4 = load i64, ptr %y, align 8, !dbg !847, !tbaa !779
  %y23 = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 6, !dbg !848
  store i64 %4, ptr %y23, align 8, !dbg !849, !tbaa !779
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7, !dbg !850
  %5 = load ptr, ptr %pixel_wands, align 8, !dbg !850, !tbaa !762
  %6 = load i64, ptr %region21, align 8, !dbg !851, !tbaa !765
  %call25 = tail call ptr @ClonePixelWands(ptr noundef %5, i64 noundef %6) #11, !dbg !852
  %pixel_wands26 = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 7, !dbg !853
  store ptr %call25, ptr %pixel_wands26, align 8, !dbg !854, !tbaa !762
  %7 = load i32, ptr %debug, align 8, !dbg !855, !tbaa !749
  %debug28 = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 8, !dbg !856
  store i32 %7, ptr %debug28, align 8, !dbg !857, !tbaa !749
  %cmp30.not = icmp eq i32 %7, 0, !dbg !858
  br i1 %cmp30.not, label %if.end36, label %if.then32, !dbg !860

if.then32:                                        ; preds = %if.end8
  %call35 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 183, ptr noundef nonnull @.str.2, ptr noundef nonnull %name11) #11, !dbg !861
  br label %if.end36, !dbg !862

if.end36:                                         ; preds = %if.then32, %if.end8
  %signature = getelementptr inbounds %struct._PixelIterator, ptr %call1, i64 0, i32 9, !dbg !863
  store i64 2880220587, ptr %signature, align 8, !dbg !864, !tbaa !865
  ret ptr %call1, !dbg !866
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: allocsize(0)
declare !dbg !867 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

declare !dbg !871 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !872 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !876 void @CatchException(ptr noundef) local_unnamed_addr #2

declare !dbg !877 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !880 void @MagickWandTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare !dbg !884 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !887 i64 @AcquireWandId() local_unnamed_addr #2

declare !dbg !891 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !897 ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare !dbg !900 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !905 ptr @CloneCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !910 ptr @ClonePixelWands(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyPixelIterator(ptr noundef %iterator) local_unnamed_addr #0 !dbg !913 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !917, metadata !DIExpression()), !dbg !918
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !919
  %0 = load i32, ptr %debug, align 8, !dbg !919, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !921
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !922

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !923
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 216, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !924
  br label %if.end, !dbg !925

if.end:                                           ; preds = %if.then, %entry
  %view = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 3, !dbg !926
  %1 = load ptr, ptr %view, align 8, !dbg !926, !tbaa !836
  %call1 = tail call ptr @DestroyCacheView(ptr noundef %1) #11, !dbg !927
  store ptr %call1, ptr %view, align 8, !dbg !928, !tbaa !836
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7, !dbg !929
  %2 = load ptr, ptr %pixel_wands, align 8, !dbg !929, !tbaa !762
  %region = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, !dbg !930
  %3 = load i64, ptr %region, align 8, !dbg !931, !tbaa !765
  %call3 = tail call ptr @DestroyPixelWands(ptr noundef %2, i64 noundef %3) #11, !dbg !932
  store ptr %call3, ptr %pixel_wands, align 8, !dbg !933, !tbaa !762
  %exception = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !934
  %4 = load ptr, ptr %exception, align 8, !dbg !934, !tbaa !769
  %call5 = tail call ptr @DestroyExceptionInfo(ptr noundef %4) #11, !dbg !935
  store ptr %call5, ptr %exception, align 8, !dbg !936, !tbaa !769
  %signature = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 9, !dbg !937
  store i64 -2880220588, ptr %signature, align 8, !dbg !938, !tbaa !865
  %5 = load i64, ptr %iterator, align 8, !dbg !939, !tbaa !826
  tail call void @RelinquishWandId(i64 noundef %5) #11, !dbg !940
  %call7 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %iterator) #11, !dbg !941
  call void @llvm.dbg.value(metadata ptr %call7, metadata !917, metadata !DIExpression()), !dbg !918
  ret ptr %call7, !dbg !942
}

declare !dbg !943 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare !dbg !946 void @RelinquishWandId(i64 noundef) local_unnamed_addr #2

declare !dbg !949 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsPixelIterator(ptr noundef %iterator) local_unnamed_addr #0 !dbg !952 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !956, metadata !DIExpression()), !dbg !958
  %cmp = icmp eq ptr %iterator, null, !dbg !959
  br i1 %cmp, label %cleanup, label %if.end, !dbg !961

if.end:                                           ; preds = %entry
  %signature = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 9, !dbg !962
  %0 = load i64, ptr %signature, align 8, !dbg !962, !tbaa !865
  %cmp1.not = icmp eq i64 %0, 2880220587, !dbg !964
  br i1 %cmp1.not, label %if.end3, label %cleanup, !dbg !965

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 13, metadata !957, metadata !DIExpression()), !dbg !958
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !966
  %call = tail call i32 @LocaleNCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str.6, i64 noundef 13) #11, !dbg !968
  %cmp4.not = icmp eq i32 %call, 0, !dbg !969
  %. = zext i1 %cmp4.not to i32, !dbg !958
  br label %cleanup, !dbg !958

cleanup:                                          ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end3 ], !dbg !958
  ret i32 %retval.0, !dbg !970
}

declare !dbg !971 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @NewPixelIterator(ptr noundef %wand) local_unnamed_addr #0 !dbg !975 {
entry:
  %depth = alloca i64, align 8
  %exception1 = alloca %struct._ExceptionInfo, align 8
  %exception16 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1137, metadata !DIExpression()), !dbg !1150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %depth) #11, !dbg !1151
  call void @llvm.dbg.value(metadata i64 16, metadata !1142, metadata !DIExpression()), !dbg !1150
  store i64 16, ptr %depth, align 8, !dbg !1152, !tbaa !843
  call void @llvm.dbg.value(metadata ptr %depth, metadata !1142, metadata !DIExpression(DW_OP_deref)), !dbg !1150
  %call = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %depth) #11, !dbg !1153
  call void @llvm.dbg.value(metadata ptr %call, metadata !1138, metadata !DIExpression()), !dbg !1150
  %0 = load i64, ptr %depth, align 8, !dbg !1154, !tbaa !843
  call void @llvm.dbg.value(metadata i64 %0, metadata !1142, metadata !DIExpression()), !dbg !1150
  %cmp.not = icmp eq i64 %0, 16, !dbg !1155
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1156

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1) #11, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %exception1, metadata !1144, metadata !DIExpression()), !dbg !1157
  call void @GetExceptionInfo(ptr noundef nonnull %exception1) #11, !dbg !1157
  %call2 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 310, i32 noundef 470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %call) #11, !dbg !1157
  call void @CatchException(ptr noundef nonnull %exception1) #11, !dbg !1157
  %call3 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1) #11, !dbg !1157
  call void @MagickWandTerminus() #11, !dbg !1157
  call void @_exit(i32 noundef -229) #13, !dbg !1157
  unreachable, !dbg !1157

if.end:                                           ; preds = %entry
  %call4 = call ptr @GetImageFromMagickWand(ptr noundef %wand) #11, !dbg !1158
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1140, metadata !DIExpression()), !dbg !1150
  %cmp5 = icmp eq ptr %call4, null, !dbg !1159
  br i1 %cmp5, label %cleanup, label %if.end7, !dbg !1161

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @AcquireExceptionInfo() #11, !dbg !1162
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1139, metadata !DIExpression()), !dbg !1150
  %call9 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call4, ptr noundef %call8) #11, !dbg !1163
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1143, metadata !DIExpression()), !dbg !1150
  %cmp10 = icmp eq ptr %call9, null, !dbg !1164
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !1166

if.end12:                                         ; preds = %if.end7
  %call13 = call ptr @AcquireMagickMemory(i64 noundef 4192) #12, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1141, metadata !DIExpression()), !dbg !1150
  %cmp14 = icmp eq ptr %call13, null, !dbg !1168
  br i1 %cmp14, label %if.then15, label %if.end21, !dbg !1169

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception16) #11, !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %exception16, metadata !1147, metadata !DIExpression()), !dbg !1170
  call void @GetExceptionInfo(ptr noundef nonnull %exception16) #11, !dbg !1170
  %call17 = tail call ptr @__errno_location() #14, !dbg !1170
  %1 = load i32, ptr %call17, align 4, !dbg !1170, !tbaa !1171
  %call18 = call ptr @GetExceptionMessage(i32 noundef %1) #11, !dbg !1170
  %call19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 322, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call18) #11, !dbg !1170
  call void @CatchException(ptr noundef nonnull %exception16) #11, !dbg !1170
  %call20 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception16) #11, !dbg !1170
  call void @MagickWandTerminus() #11, !dbg !1170
  call void @_exit(i32 noundef 1) #13, !dbg !1170
  unreachable, !dbg !1170

if.end21:                                         ; preds = %if.end12
  %call22 = call ptr @ResetMagickMemory(ptr noundef nonnull %call13, i32 noundef 0, i64 noundef 4192) #11, !dbg !1173
  %call23 = call i64 @AcquireWandId() #11, !dbg !1174
  store i64 %call23, ptr %call13, align 8, !dbg !1175, !tbaa !826
  %name = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 1, !dbg !1176
  %conv = uitofp i64 %call23 to double, !dbg !1177
  %call25 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %name, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %conv) #11, !dbg !1178
  %exception26 = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 2, !dbg !1179
  store ptr %call8, ptr %exception26, align 8, !dbg !1180, !tbaa !769
  %view27 = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 3, !dbg !1181
  store ptr %call9, ptr %view27, align 8, !dbg !1182, !tbaa !836
  %region = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 4, !dbg !1183
  call void @SetGeometry(ptr noundef nonnull %call4, ptr noundef nonnull %region) #11, !dbg !1184
  %columns = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 7, !dbg !1185
  %2 = load i64, ptr %columns, align 8, !dbg !1185, !tbaa !1186
  store i64 %2, ptr %region, align 8, !dbg !1199, !tbaa !765
  %rows = getelementptr inbounds %struct._Image, ptr %call4, i64 0, i32 8, !dbg !1200
  %3 = load i64, ptr %rows, align 8, !dbg !1200, !tbaa !1201
  %height = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 4, i32 1, !dbg !1202
  store i64 %3, ptr %height, align 8, !dbg !1203, !tbaa !1204
  %x = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 4, i32 2, !dbg !1205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %x, i8 0, i64 16, i1 false), !dbg !1206
  %call34 = call ptr @NewPixelWands(i64 noundef %2) #11, !dbg !1207
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 7, !dbg !1208
  store ptr %call34, ptr %pixel_wands, align 8, !dbg !1209, !tbaa !762
  %y35 = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 6, !dbg !1210
  store i64 0, ptr %y35, align 8, !dbg !1211, !tbaa !779
  %call36 = call i32 @IsEventLogging() #11, !dbg !1212
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 8, !dbg !1213
  store i32 %call36, ptr %debug, align 8, !dbg !1214, !tbaa !749
  %cmp38.not = icmp eq i32 %call36, 0, !dbg !1215
  br i1 %cmp38.not, label %if.end44, label %if.then40, !dbg !1217

if.then40:                                        ; preds = %if.end21
  %call43 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1218
  br label %if.end44, !dbg !1219

if.end44:                                         ; preds = %if.then40, %if.end21
  %signature = getelementptr inbounds %struct._PixelIterator, ptr %call13, i64 0, i32 9, !dbg !1220
  store i64 2880220587, ptr %signature, align 8, !dbg !1221, !tbaa !865
  br label %cleanup, !dbg !1222

cleanup:                                          ; preds = %if.end7, %if.end, %if.end44
  %retval.0 = phi ptr [ %call13, %if.end44 ], [ null, %if.end ], [ null, %if.end7 ], !dbg !1150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %depth) #11, !dbg !1223
  ret ptr %retval.0, !dbg !1223
}

declare !dbg !1224 ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #2

declare !dbg !1229 ptr @GetImageFromMagickWand(ptr noundef) local_unnamed_addr #2

declare !dbg !1235 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1238 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !1242 void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelClearIteratorException(ptr noundef %iterator) local_unnamed_addr #0 !dbg !1246 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1250, metadata !DIExpression()), !dbg !1251
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1252
  %0 = load i32, ptr %debug, align 8, !dbg !1252, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1254
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1255

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1256
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 372, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1257
  br label %if.end, !dbg !1258

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !1259
  %1 = load ptr, ptr %exception, align 8, !dbg !1259, !tbaa !769
  tail call void @ClearMagickException(ptr noundef %1) #11, !dbg !1260
  ret i32 1, !dbg !1261
}

; Function Attrs: nounwind uwtable
define dso_local ptr @NewPixelRegionIterator(ptr noundef %wand, i64 noundef %x, i64 noundef %y, i64 noundef %width, i64 noundef %height) local_unnamed_addr #0 !dbg !1262 {
entry:
  %depth = alloca i64, align 8
  %exception1 = alloca %struct._ExceptionInfo, align 8
  %exception7 = alloca %struct._ExceptionInfo, align 8
  %exception23 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1267, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %x, metadata !1268, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %y, metadata !1269, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %width, metadata !1270, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %height, metadata !1271, metadata !DIExpression()), !dbg !1287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %depth) #11, !dbg !1288
  call void @llvm.dbg.value(metadata i64 16, metadata !1277, metadata !DIExpression()), !dbg !1287
  store i64 16, ptr %depth, align 8, !dbg !1289, !tbaa !843
  call void @llvm.dbg.value(metadata ptr %depth, metadata !1277, metadata !DIExpression(DW_OP_deref)), !dbg !1287
  %call = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %depth) #11, !dbg !1290
  call void @llvm.dbg.value(metadata ptr %call, metadata !1273, metadata !DIExpression()), !dbg !1287
  %0 = load i64, ptr %depth, align 8, !dbg !1291, !tbaa !843
  call void @llvm.dbg.value(metadata i64 %0, metadata !1277, metadata !DIExpression()), !dbg !1287
  %cmp.not = icmp eq i64 %0, 16, !dbg !1292
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1293

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1) #11, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %exception1, metadata !1278, metadata !DIExpression()), !dbg !1294
  call void @GetExceptionInfo(ptr noundef nonnull %exception1) #11, !dbg !1294
  %call2 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 428, i32 noundef 470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %call) #11, !dbg !1294
  call void @CatchException(ptr noundef nonnull %exception1) #11, !dbg !1294
  %call3 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1) #11, !dbg !1294
  call void @MagickWandTerminus() #11, !dbg !1294
  call void @_exit(i32 noundef -229) #13, !dbg !1294
  unreachable, !dbg !1294

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i64 %width, 0, !dbg !1295
  %cmp5 = icmp eq i64 %height, 0
  %or.cond = or i1 %cmp4, %cmp5, !dbg !1296
  br i1 %or.cond, label %if.then6, label %if.end10, !dbg !1296

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception7) #11, !dbg !1297
  call void @llvm.dbg.declare(metadata ptr %exception7, metadata !1281, metadata !DIExpression()), !dbg !1297
  call void @GetExceptionInfo(ptr noundef nonnull %exception7) #11, !dbg !1297
  %call8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 430, i32 noundef 470, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef %call) #11, !dbg !1297
  call void @CatchException(ptr noundef nonnull %exception7) #11, !dbg !1297
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception7) #11, !dbg !1297
  call void @MagickWandTerminus() #11, !dbg !1297
  call void @_exit(i32 noundef -229) #13, !dbg !1297
  unreachable, !dbg !1297

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @GetImageFromMagickWand(ptr noundef %wand) #11, !dbg !1298
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1275, metadata !DIExpression()), !dbg !1287
  %cmp12 = icmp eq ptr %call11, null, !dbg !1299
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !1301

if.end14:                                         ; preds = %if.end10
  %call15 = call ptr @AcquireExceptionInfo() #11, !dbg !1302
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1274, metadata !DIExpression()), !dbg !1287
  %call16 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call11, ptr noundef %call15) #11, !dbg !1303
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1272, metadata !DIExpression()), !dbg !1287
  %cmp17 = icmp eq ptr %call16, null, !dbg !1304
  br i1 %cmp17, label %cleanup, label %if.end19, !dbg !1306

if.end19:                                         ; preds = %if.end14
  %call20 = call ptr @AcquireMagickMemory(i64 noundef 4192) #12, !dbg !1307
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1276, metadata !DIExpression()), !dbg !1287
  %cmp21 = icmp eq ptr %call20, null, !dbg !1308
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !1309

if.then22:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception23) #11, !dbg !1310
  call void @llvm.dbg.declare(metadata ptr %exception23, metadata !1284, metadata !DIExpression()), !dbg !1310
  call void @GetExceptionInfo(ptr noundef nonnull %exception23) #11, !dbg !1310
  %name = getelementptr inbounds %struct._MagickWand, ptr %wand, i64 0, i32 1, !dbg !1310
  %call24 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 441, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name) #11, !dbg !1310
  call void @CatchException(ptr noundef nonnull %exception23) #11, !dbg !1310
  %call25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception23) #11, !dbg !1310
  call void @MagickWandTerminus() #11, !dbg !1310
  call void @_exit(i32 noundef 1) #13, !dbg !1310
  unreachable, !dbg !1310

if.end26:                                         ; preds = %if.end19
  %call27 = call ptr @ResetMagickMemory(ptr noundef nonnull %call20, i32 noundef 0, i64 noundef 4192) #11, !dbg !1311
  %call28 = call i64 @AcquireWandId() #11, !dbg !1312
  store i64 %call28, ptr %call20, align 8, !dbg !1313, !tbaa !826
  %name29 = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 1, !dbg !1314
  %conv = uitofp i64 %call28 to double, !dbg !1315
  %call32 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %name29, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %conv) #11, !dbg !1316
  %exception33 = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 2, !dbg !1317
  store ptr %call15, ptr %exception33, align 8, !dbg !1318, !tbaa !769
  %view34 = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 3, !dbg !1319
  store ptr %call16, ptr %view34, align 8, !dbg !1320, !tbaa !836
  %region = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 4, !dbg !1321
  call void @SetGeometry(ptr noundef nonnull %call11, ptr noundef nonnull %region) #11, !dbg !1322
  store i64 %width, ptr %region, align 8, !dbg !1323, !tbaa !765
  %height38 = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 4, i32 1, !dbg !1324
  store i64 %height, ptr %height38, align 8, !dbg !1325, !tbaa !1204
  %x40 = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 4, i32 2, !dbg !1326
  store i64 %x, ptr %x40, align 8, !dbg !1327, !tbaa !1328
  %y42 = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 4, i32 3, !dbg !1329
  store i64 %y, ptr %y42, align 8, !dbg !1330, !tbaa !1331
  %call45 = call ptr @NewPixelWands(i64 noundef %width) #11, !dbg !1332
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 7, !dbg !1333
  store ptr %call45, ptr %pixel_wands, align 8, !dbg !1334, !tbaa !762
  %y46 = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 6, !dbg !1335
  store i64 0, ptr %y46, align 8, !dbg !1336, !tbaa !779
  %call47 = call i32 @IsEventLogging() #11, !dbg !1337
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 8, !dbg !1338
  store i32 %call47, ptr %debug, align 8, !dbg !1339, !tbaa !749
  %cmp49.not = icmp eq i32 %call47, 0, !dbg !1340
  br i1 %cmp49.not, label %if.end55, label %if.then51, !dbg !1342

if.then51:                                        ; preds = %if.end26
  %call54 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 457, ptr noundef nonnull @.str.2, ptr noundef nonnull %name29) #11, !dbg !1343
  br label %if.end55, !dbg !1344

if.end55:                                         ; preds = %if.then51, %if.end26
  %signature = getelementptr inbounds %struct._PixelIterator, ptr %call20, i64 0, i32 9, !dbg !1345
  store i64 2880220587, ptr %signature, align 8, !dbg !1346, !tbaa !865
  br label %cleanup, !dbg !1347

cleanup:                                          ; preds = %if.end14, %if.end10, %if.end55
  %retval.0 = phi ptr [ %call20, %if.end55 ], [ null, %if.end10 ], [ null, %if.end14 ], !dbg !1287
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %depth) #11, !dbg !1348
  ret ptr %retval.0, !dbg !1348
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetCurrentIteratorRow(ptr noundef %iterator, ptr nocapture noundef writeonly %number_wands) local_unnamed_addr #0 !dbg !1349 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1353, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata ptr %number_wands, metadata !1354, metadata !DIExpression()), !dbg !1358
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1359
  %0 = load i32, ptr %debug, align 8, !dbg !1359, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1361
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1362

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1363
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 503, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1364
  br label %if.end, !dbg !1365

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %number_wands, align 8, !dbg !1366, !tbaa !843
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !1367
  store i32 1, ptr %active, align 8, !dbg !1368, !tbaa !776
  %view = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 3, !dbg !1369
  %1 = load ptr, ptr %view, align 8, !dbg !1369, !tbaa !836
  %region = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, !dbg !1370
  %x1 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 2, !dbg !1371
  %2 = load i64, ptr %x1, align 8, !dbg !1371, !tbaa !1328
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 3, !dbg !1372
  %3 = load i64, ptr %y, align 8, !dbg !1372, !tbaa !1331
  %y3 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1373
  %4 = load i64, ptr %y3, align 8, !dbg !1373, !tbaa !779
  %add = add nsw i64 %4, %3, !dbg !1374
  %5 = load i64, ptr %region, align 8, !dbg !1375, !tbaa !765
  %exception = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !1376
  %6 = load ptr, ptr %exception, align 8, !dbg !1376, !tbaa !769
  %call5 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %2, i64 noundef %add, i64 noundef %5, i64 noundef 1, ptr noundef %6) #15, !dbg !1377
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1356, metadata !DIExpression()), !dbg !1358
  %cmp6 = icmp eq ptr %call5, null, !dbg !1378
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !1380

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %exception, align 8, !dbg !1381, !tbaa !769
  %8 = load ptr, ptr %view, align 8, !dbg !1383, !tbaa !836
  %call10 = tail call ptr @GetCacheViewException(ptr noundef %8) #11, !dbg !1384
  tail call void @InheritException(ptr noundef %7, ptr noundef %call10) #11, !dbg !1385
  br label %cleanup, !dbg !1386

if.end11:                                         ; preds = %if.end
  %9 = load ptr, ptr %view, align 8, !dbg !1387, !tbaa !836
  %call13 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %9) #11, !dbg !1388
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1355, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 0, metadata !1357, metadata !DIExpression()), !dbg !1358
  %10 = load i64, ptr %region, align 8, !dbg !1389, !tbaa !765
  %cmp1689 = icmp sgt i64 %10, 0, !dbg !1392
  br i1 %cmp1689, label %for.body.lr.ph, label %for.end, !dbg !1393

for.body.lr.ph:                                   ; preds = %if.end11
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body, !dbg !1393

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %x.090 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %x.090, metadata !1357, metadata !DIExpression()), !dbg !1358
  %11 = load ptr, ptr %pixel_wands, align 8, !dbg !1394, !tbaa !762
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %x.090, !dbg !1395
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !1395, !tbaa !1396
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call5, i64 %x.090, !dbg !1397
  tail call void @PixelSetQuantumColor(ptr noundef %12, ptr noundef nonnull %add.ptr) #11, !dbg !1398
  %inc = add nuw nsw i64 %x.090, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1357, metadata !DIExpression()), !dbg !1358
  %13 = load i64, ptr %region, align 8, !dbg !1389, !tbaa !765
  %cmp16 = icmp slt i64 %inc, %13, !dbg !1392
  br i1 %cmp16, label %for.body, label %for.end, !dbg !1393, !llvm.loop !1400

for.end:                                          ; preds = %for.body, %if.end11
  %14 = load ptr, ptr %view, align 8, !dbg !1404, !tbaa !836
  %call18 = tail call i32 @GetCacheViewColorspace(ptr noundef %14) #11, !dbg !1406
  %cmp19 = icmp eq i32 %call18, 12, !dbg !1407
  br i1 %cmp19, label %for.cond21.preheader, label %if.end32, !dbg !1408

for.cond21.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1357, metadata !DIExpression()), !dbg !1358
  %15 = load i64, ptr %region, align 8, !dbg !1409, !tbaa !765
  %cmp2491 = icmp sgt i64 %15, 0, !dbg !1412
  br i1 %cmp2491, label %for.body25.lr.ph, label %if.end32, !dbg !1413

for.body25.lr.ph:                                 ; preds = %for.cond21.preheader
  %pixel_wands26 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body25, !dbg !1413

for.body25:                                       ; preds = %for.body25.lr.ph, %for.body25
  %x.192 = phi i64 [ 0, %for.body25.lr.ph ], [ %inc30, %for.body25 ]
  call void @llvm.dbg.value(metadata i64 %x.192, metadata !1357, metadata !DIExpression()), !dbg !1358
  %16 = load ptr, ptr %pixel_wands26, align 8, !dbg !1414, !tbaa !762
  %arrayidx27 = getelementptr inbounds ptr, ptr %16, i64 %x.192, !dbg !1415
  %17 = load ptr, ptr %arrayidx27, align 8, !dbg !1415, !tbaa !1396
  %add.ptr28 = getelementptr inbounds i16, ptr %call13, i64 %x.192, !dbg !1416
  %18 = load i16, ptr %add.ptr28, align 2, !dbg !1416, !tbaa !1417
  tail call void @PixelSetBlackQuantum(ptr noundef %17, i16 noundef zeroext %18) #11, !dbg !1418
  %inc30 = add nuw nsw i64 %x.192, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %inc30, metadata !1357, metadata !DIExpression()), !dbg !1358
  %19 = load i64, ptr %region, align 8, !dbg !1409, !tbaa !765
  %cmp24 = icmp slt i64 %inc30, %19, !dbg !1412
  br i1 %cmp24, label %for.body25, label %if.end32, !dbg !1413, !llvm.loop !1420

if.end32:                                         ; preds = %for.body25, %for.cond21.preheader, %for.end
  %20 = load ptr, ptr %view, align 8, !dbg !1422, !tbaa !836
  %call34 = tail call i32 @GetCacheViewStorageClass(ptr noundef %20) #11, !dbg !1424
  %cmp35 = icmp eq i32 %call34, 2, !dbg !1425
  %21 = load i64, ptr %region, align 8, !dbg !1358, !tbaa !765
  %cmp4093 = icmp sgt i64 %21, 0
  %or.cond = select i1 %cmp35, i1 %cmp4093, i1 false, !dbg !1426
  call void @llvm.dbg.value(metadata i64 0, metadata !1357, metadata !DIExpression()), !dbg !1358
  br i1 %or.cond, label %for.body41.lr.ph, label %if.end48, !dbg !1426

for.body41.lr.ph:                                 ; preds = %if.end32
  %pixel_wands42 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body41, !dbg !1427

for.body41:                                       ; preds = %for.body41.lr.ph, %for.body41
  %x.294 = phi i64 [ 0, %for.body41.lr.ph ], [ %inc46, %for.body41 ]
  call void @llvm.dbg.value(metadata i64 %x.294, metadata !1357, metadata !DIExpression()), !dbg !1358
  %22 = load ptr, ptr %pixel_wands42, align 8, !dbg !1429, !tbaa !762
  %arrayidx43 = getelementptr inbounds ptr, ptr %22, i64 %x.294, !dbg !1431
  %23 = load ptr, ptr %arrayidx43, align 8, !dbg !1431, !tbaa !1396
  %add.ptr44 = getelementptr inbounds i16, ptr %call13, i64 %x.294, !dbg !1432
  %24 = load i16, ptr %add.ptr44, align 2, !dbg !1432, !tbaa !1417
  tail call void @PixelSetIndex(ptr noundef %23, i16 noundef zeroext %24) #11, !dbg !1433
  %inc46 = add nuw nsw i64 %x.294, 1, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %inc46, metadata !1357, metadata !DIExpression()), !dbg !1358
  %25 = load i64, ptr %region, align 8, !dbg !1435, !tbaa !765
  %cmp40 = icmp slt i64 %inc46, %25, !dbg !1436
  br i1 %cmp40, label %for.body41, label %if.end48, !dbg !1427, !llvm.loop !1437

if.end48:                                         ; preds = %for.body41, %if.end32
  %26 = phi i64 [ %21, %if.end32 ], [ %25, %for.body41 ], !dbg !1439
  store i64 %26, ptr %number_wands, align 8, !dbg !1440, !tbaa !843
  %pixel_wands51 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7, !dbg !1441
  %27 = load ptr, ptr %pixel_wands51, align 8, !dbg !1441, !tbaa !762
  br label %cleanup, !dbg !1442

cleanup:                                          ; preds = %if.end48, %if.then7
  %retval.0 = phi ptr [ null, %if.then7 ], [ %27, %if.end48 ], !dbg !1358
  ret ptr %retval.0, !dbg !1443
}

; Function Attrs: hot
declare !dbg !1444 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !1447 ptr @GetCacheViewException(ptr noundef) local_unnamed_addr #2

declare !dbg !1450 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare !dbg !1453 void @PixelSetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1456 i32 @GetCacheViewColorspace(ptr noundef) local_unnamed_addr #2

declare !dbg !1459 void @PixelSetBlackQuantum(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare !dbg !1463 i32 @GetCacheViewStorageClass(ptr noundef) local_unnamed_addr #2

declare !dbg !1466 void @PixelSetIndex(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetIteratorException(ptr noundef %iterator, ptr nocapture noundef writeonly %severity) local_unnamed_addr #0 !dbg !1469 {
entry:
  %exception5 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1474, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata ptr %severity, metadata !1475, metadata !DIExpression()), !dbg !1480
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1481
  %0 = load i32, ptr %debug, align 8, !dbg !1481, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1483
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1484

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1485
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 565, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1486
  br label %if.end, !dbg !1487

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !1488
  %1 = load ptr, ptr %exception, align 8, !dbg !1488, !tbaa !769
  %2 = load i32, ptr %1, align 8, !dbg !1489, !tbaa !1490
  store i32 %2, ptr %severity, align 4, !dbg !1491, !tbaa !1492
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #16, !dbg !1493
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1476, metadata !DIExpression()), !dbg !1480
  %cmp3 = icmp eq ptr %call2, null, !dbg !1494
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !1495

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception5) #11, !dbg !1496
  call void @llvm.dbg.declare(metadata ptr %exception5, metadata !1477, metadata !DIExpression()), !dbg !1496
  call void @GetExceptionInfo(ptr noundef nonnull %exception5) #11, !dbg !1496
  %name6 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1496
  %call8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 572, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name6) #11, !dbg !1496
  call void @CatchException(ptr noundef nonnull %exception5) #11, !dbg !1496
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception5) #11, !dbg !1496
  call void @MagickWandTerminus() #11, !dbg !1496
  call void @_exit(i32 noundef 1) #13, !dbg !1496
  unreachable, !dbg !1496

if.end10:                                         ; preds = %if.end
  store i8 0, ptr %call2, align 1, !dbg !1497, !tbaa !1492
  %3 = load ptr, ptr %exception, align 8, !dbg !1498, !tbaa !769
  %reason = getelementptr inbounds %struct._ExceptionInfo, ptr %3, i64 0, i32 2, !dbg !1500
  %4 = load ptr, ptr %reason, align 8, !dbg !1500, !tbaa !1501
  %cmp12.not = icmp eq ptr %4, null, !dbg !1502
  br i1 %cmp12.not, label %if.end20, label %if.then13, !dbg !1503

if.then13:                                        ; preds = %if.end10
  %5 = load i32, ptr %3, align 8, !dbg !1504, !tbaa !1490
  %call18 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %5, ptr noundef nonnull %4) #11, !dbg !1505
  %call19 = tail call i64 @CopyMagickString(ptr noundef nonnull %call2, ptr noundef %call18, i64 noundef 4096) #11, !dbg !1506
  %.pre = load ptr, ptr %exception, align 8, !dbg !1507, !tbaa !769
  br label %if.end20, !dbg !1509

if.end20:                                         ; preds = %if.then13, %if.end10
  %6 = phi ptr [ %.pre, %if.then13 ], [ %3, %if.end10 ], !dbg !1507
  %description22 = getelementptr inbounds %struct._ExceptionInfo, ptr %6, i64 0, i32 3, !dbg !1510
  %7 = load ptr, ptr %description22, align 8, !dbg !1510, !tbaa !1511
  %cmp23.not = icmp eq ptr %7, null, !dbg !1512
  br i1 %cmp23.not, label %if.end33, label %if.then24, !dbg !1513

if.then24:                                        ; preds = %if.end20
  %call25 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef nonnull @.str.9, i64 noundef 4096) #11, !dbg !1514
  %8 = load ptr, ptr %exception, align 8, !dbg !1516, !tbaa !769
  %9 = load i32, ptr %8, align 8, !dbg !1517, !tbaa !1490
  %description29 = getelementptr inbounds %struct._ExceptionInfo, ptr %8, i64 0, i32 3, !dbg !1518
  %10 = load ptr, ptr %description29, align 8, !dbg !1518, !tbaa !1511
  %call30 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %9, ptr noundef %10) #11, !dbg !1519
  %call31 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef %call30, i64 noundef 4096) #11, !dbg !1520
  %call32 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef nonnull @.str.10, i64 noundef 4096) #11, !dbg !1521
  br label %if.end33, !dbg !1522

if.end33:                                         ; preds = %if.then24, %if.end20
  ret ptr %call2, !dbg !1523
}

; Function Attrs: allocsize(0,1)
declare !dbg !1524 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

declare !dbg !1527 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1530 ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1533 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelGetIteratorExceptionType(ptr noundef %iterator) local_unnamed_addr #0 !dbg !1534 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1538, metadata !DIExpression()), !dbg !1539
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1540
  %0 = load i32, ptr %debug, align 8, !dbg !1540, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1542
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1543

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1544
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 618, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1545
  br label %if.end, !dbg !1546

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !1547
  %1 = load ptr, ptr %exception, align 8, !dbg !1547, !tbaa !769
  %2 = load i32, ptr %1, align 8, !dbg !1548, !tbaa !1490
  ret i32 %2, !dbg !1549
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PixelGetIteratorRow(ptr noundef %iterator) local_unnamed_addr #0 !dbg !1550 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1554, metadata !DIExpression()), !dbg !1555
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1556
  %0 = load i32, ptr %debug, align 8, !dbg !1556, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1558
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1559

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1560
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 649, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1561
  br label %if.end, !dbg !1562

if.end:                                           ; preds = %if.then, %entry
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1563
  %1 = load i64, ptr %y, align 8, !dbg !1563, !tbaa !779
  ret i64 %1, !dbg !1564
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetNextIteratorRow(ptr noundef %iterator, ptr nocapture noundef writeonly %number_wands) local_unnamed_addr #0 !dbg !1565 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1567, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %number_wands, metadata !1568, metadata !DIExpression()), !dbg !1572
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1573
  %0 = load i32, ptr %debug, align 8, !dbg !1573, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1575
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1576

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1577
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 694, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1578
  br label %if.end, !dbg !1579

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %number_wands, align 8, !dbg !1580, !tbaa !843
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !1581
  %1 = load i32, ptr %active, align 8, !dbg !1581, !tbaa !776
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1583
  %y4.phi.trans.insert = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6
  %.pre = load i64, ptr %y4.phi.trans.insert, align 8, !dbg !1572, !tbaa !779
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1584

if.then2:                                         ; preds = %if.end
  %inc = add nsw i64 %.pre, 1, !dbg !1585
  store i64 %inc, ptr %y4.phi.trans.insert, align 8, !dbg !1585, !tbaa !779
  br label %if.end3, !dbg !1586

if.end3:                                          ; preds = %if.end, %if.then2
  %2 = phi i64 [ %inc, %if.then2 ], [ %.pre, %if.end ], !dbg !1587
  %y4 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1587
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1589, metadata !DIExpression()) #11, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %2, metadata !1594, metadata !DIExpression()) #11, !dbg !1595
  %3 = load i32, ptr %debug, align 8, !dbg !1597, !tbaa !749
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !1599
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1600

if.then.i:                                        ; preds = %if.end3
  %name.i = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1601
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 899, ptr noundef nonnull @.str.2, ptr noundef nonnull %name.i) #11, !dbg !1602
  br label %if.end.i, !dbg !1603

if.end.i:                                         ; preds = %if.then.i, %if.end3
  %cmp1.i = icmp slt i64 %2, 0, !dbg !1604
  br i1 %cmp1.i, label %cleanup, label %lor.lhs.false.i, !dbg !1606

lor.lhs.false.i:                                  ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 1, !dbg !1607
  %4 = load i64, ptr %height.i, align 8, !dbg !1607, !tbaa !1204
  %cmp2.not.i = icmp sgt i64 %4, %2, !dbg !1608
  br i1 %cmp2.not.i, label %if.end8, label %cleanup, !dbg !1609

if.end8:                                          ; preds = %lor.lhs.false.i
  store i32 1, ptr %active, align 8, !dbg !1610, !tbaa !776
  store i64 %2, ptr %y4, align 8, !dbg !1611, !tbaa !779
  %view = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 3, !dbg !1612
  %5 = load ptr, ptr %view, align 8, !dbg !1612, !tbaa !836
  %region = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, !dbg !1613
  %x9 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 2, !dbg !1614
  %6 = load i64, ptr %x9, align 8, !dbg !1614, !tbaa !1328
  %y11 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 3, !dbg !1615
  %7 = load i64, ptr %y11, align 8, !dbg !1615, !tbaa !1331
  %add = add nsw i64 %2, %7, !dbg !1616
  %8 = load i64, ptr %region, align 8, !dbg !1617, !tbaa !765
  %exception = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !1618
  %9 = load ptr, ptr %exception, align 8, !dbg !1618, !tbaa !769
  %call14 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %5, i64 noundef %6, i64 noundef %add, i64 noundef %8, i64 noundef 1, ptr noundef %9) #15, !dbg !1619
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1570, metadata !DIExpression()), !dbg !1572
  %cmp15 = icmp eq ptr %call14, null, !dbg !1620
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !1622

if.then16:                                        ; preds = %if.end8
  %10 = load ptr, ptr %exception, align 8, !dbg !1623, !tbaa !769
  %11 = load ptr, ptr %view, align 8, !dbg !1625, !tbaa !836
  %call19 = tail call ptr @GetCacheViewException(ptr noundef %11) #11, !dbg !1626
  tail call void @InheritException(ptr noundef %10, ptr noundef %call19) #11, !dbg !1627
  br label %cleanup, !dbg !1628

if.end20:                                         ; preds = %if.end8
  %12 = load ptr, ptr %view, align 8, !dbg !1629, !tbaa !836
  %call22 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %12) #11, !dbg !1630
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1569, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 0, metadata !1571, metadata !DIExpression()), !dbg !1572
  %13 = load i64, ptr %region, align 8, !dbg !1631, !tbaa !765
  %cmp25109 = icmp sgt i64 %13, 0, !dbg !1634
  br i1 %cmp25109, label %for.body.lr.ph, label %for.end, !dbg !1635

for.body.lr.ph:                                   ; preds = %if.end20
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body, !dbg !1635

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %x.0110 = phi i64 [ 0, %for.body.lr.ph ], [ %inc26, %for.body ]
  call void @llvm.dbg.value(metadata i64 %x.0110, metadata !1571, metadata !DIExpression()), !dbg !1572
  %14 = load ptr, ptr %pixel_wands, align 8, !dbg !1636, !tbaa !762
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %x.0110, !dbg !1637
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !1637, !tbaa !1396
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call14, i64 %x.0110, !dbg !1638
  tail call void @PixelSetQuantumColor(ptr noundef %15, ptr noundef nonnull %add.ptr) #11, !dbg !1639
  %inc26 = add nuw nsw i64 %x.0110, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %inc26, metadata !1571, metadata !DIExpression()), !dbg !1572
  %16 = load i64, ptr %region, align 8, !dbg !1631, !tbaa !765
  %cmp25 = icmp slt i64 %inc26, %16, !dbg !1634
  br i1 %cmp25, label %for.body, label %for.end, !dbg !1635, !llvm.loop !1641

for.end:                                          ; preds = %for.body, %if.end20
  %17 = load ptr, ptr %view, align 8, !dbg !1643, !tbaa !836
  %call28 = tail call i32 @GetCacheViewColorspace(ptr noundef %17) #11, !dbg !1645
  %cmp29 = icmp eq i32 %call28, 12, !dbg !1646
  br i1 %cmp29, label %for.cond31.preheader, label %if.end42, !dbg !1647

for.cond31.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1571, metadata !DIExpression()), !dbg !1572
  %18 = load i64, ptr %region, align 8, !dbg !1648, !tbaa !765
  %cmp34111 = icmp sgt i64 %18, 0, !dbg !1651
  br i1 %cmp34111, label %for.body35.lr.ph, label %if.end42, !dbg !1652

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %pixel_wands36 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body35, !dbg !1652

for.body35:                                       ; preds = %for.body35.lr.ph, %for.body35
  %x.1112 = phi i64 [ 0, %for.body35.lr.ph ], [ %inc40, %for.body35 ]
  call void @llvm.dbg.value(metadata i64 %x.1112, metadata !1571, metadata !DIExpression()), !dbg !1572
  %19 = load ptr, ptr %pixel_wands36, align 8, !dbg !1653, !tbaa !762
  %arrayidx37 = getelementptr inbounds ptr, ptr %19, i64 %x.1112, !dbg !1654
  %20 = load ptr, ptr %arrayidx37, align 8, !dbg !1654, !tbaa !1396
  %add.ptr38 = getelementptr inbounds i16, ptr %call22, i64 %x.1112, !dbg !1655
  %21 = load i16, ptr %add.ptr38, align 2, !dbg !1655, !tbaa !1417
  tail call void @PixelSetBlackQuantum(ptr noundef %20, i16 noundef zeroext %21) #11, !dbg !1656
  %inc40 = add nuw nsw i64 %x.1112, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %inc40, metadata !1571, metadata !DIExpression()), !dbg !1572
  %22 = load i64, ptr %region, align 8, !dbg !1648, !tbaa !765
  %cmp34 = icmp slt i64 %inc40, %22, !dbg !1651
  br i1 %cmp34, label %for.body35, label %if.end42, !dbg !1652, !llvm.loop !1658

if.end42:                                         ; preds = %for.body35, %for.cond31.preheader, %for.end
  %23 = load ptr, ptr %view, align 8, !dbg !1660, !tbaa !836
  %call44 = tail call i32 @GetCacheViewStorageClass(ptr noundef %23) #11, !dbg !1662
  %cmp45 = icmp eq i32 %call44, 2, !dbg !1663
  %24 = load i64, ptr %region, align 8, !dbg !1572, !tbaa !765
  %cmp50113 = icmp sgt i64 %24, 0
  %or.cond = select i1 %cmp45, i1 %cmp50113, i1 false, !dbg !1664
  call void @llvm.dbg.value(metadata i64 0, metadata !1571, metadata !DIExpression()), !dbg !1572
  br i1 %or.cond, label %for.body51.lr.ph, label %if.end61, !dbg !1664

for.body51.lr.ph:                                 ; preds = %if.end42
  %pixel_wands52 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  %cmp55 = icmp eq ptr %call22, null
  br i1 %cmp55, label %for.body51.us, label %for.body51, !dbg !1665

for.body51.us:                                    ; preds = %for.body51.lr.ph, %for.body51.us
  %x.2114.us = phi i64 [ %inc59.us, %for.body51.us ], [ 0, %for.body51.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.2114.us, metadata !1571, metadata !DIExpression()), !dbg !1572
  %25 = load ptr, ptr %pixel_wands52, align 8, !dbg !1668, !tbaa !762
  %arrayidx53.us = getelementptr inbounds ptr, ptr %25, i64 %x.2114.us, !dbg !1669
  %26 = load ptr, ptr %arrayidx53.us, align 8, !dbg !1669, !tbaa !1396
  tail call void @PixelSetIndex(ptr noundef %26, i16 noundef zeroext 0) #11, !dbg !1670
  %inc59.us = add nuw nsw i64 %x.2114.us, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %inc59.us, metadata !1571, metadata !DIExpression()), !dbg !1572
  %27 = load i64, ptr %region, align 8, !dbg !1672, !tbaa !765
  %cmp50.us = icmp slt i64 %inc59.us, %27, !dbg !1673
  br i1 %cmp50.us, label %for.body51.us, label %if.end61, !dbg !1674, !llvm.loop !1675

for.body51:                                       ; preds = %for.body51.lr.ph, %for.body51
  %x.2114 = phi i64 [ %inc59, %for.body51 ], [ 0, %for.body51.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.2114, metadata !1571, metadata !DIExpression()), !dbg !1572
  %28 = load ptr, ptr %pixel_wands52, align 8, !dbg !1668, !tbaa !762
  %arrayidx53 = getelementptr inbounds ptr, ptr %28, i64 %x.2114, !dbg !1669
  %29 = load ptr, ptr %arrayidx53, align 8, !dbg !1669, !tbaa !1396
  %add.ptr54 = getelementptr inbounds i16, ptr %call22, i64 %x.2114, !dbg !1665
  %30 = load i16, ptr %add.ptr54, align 2, !dbg !1665, !tbaa !1417
  tail call void @PixelSetIndex(ptr noundef %29, i16 noundef zeroext %30) #11, !dbg !1670
  %inc59 = add nuw nsw i64 %x.2114, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %inc59, metadata !1571, metadata !DIExpression()), !dbg !1572
  %31 = load i64, ptr %region, align 8, !dbg !1672, !tbaa !765
  %cmp50 = icmp slt i64 %inc59, %31, !dbg !1673
  br i1 %cmp50, label %for.body51, label %if.end61, !dbg !1674, !llvm.loop !1675

if.end61:                                         ; preds = %for.body51, %for.body51.us, %if.end42
  %32 = phi i64 [ %24, %if.end42 ], [ %27, %for.body51.us ], [ %31, %for.body51 ], !dbg !1677
  store i64 %32, ptr %number_wands, align 8, !dbg !1678, !tbaa !843
  %pixel_wands64 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7, !dbg !1679
  %33 = load ptr, ptr %pixel_wands64, align 8, !dbg !1679, !tbaa !762
  br label %cleanup, !dbg !1680

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i, %if.end61, %if.then16
  %retval.0 = phi ptr [ null, %if.then16 ], [ %33, %if.end61 ], [ null, %lor.lhs.false.i ], [ null, %if.end.i ], !dbg !1572
  ret ptr %retval.0, !dbg !1681
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelSetIteratorRow(ptr noundef %iterator, i64 noundef %row) local_unnamed_addr #0 !dbg !1590 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1589, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %row, metadata !1594, metadata !DIExpression()), !dbg !1682
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1683
  %0 = load i32, ptr %debug, align 8, !dbg !1683, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1684
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1685

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1686
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 899, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1687
  br label %if.end, !dbg !1688

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp slt i64 %row, 0, !dbg !1689
  br i1 %cmp1, label %return, label %lor.lhs.false, !dbg !1690

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 1, !dbg !1691
  %1 = load i64, ptr %height, align 8, !dbg !1691, !tbaa !1204
  %cmp2.not = icmp sgt i64 %1, %row, !dbg !1692
  br i1 %cmp2.not, label %if.end4, label %return, !dbg !1693

if.end4:                                          ; preds = %lor.lhs.false
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !1694
  store i32 1, ptr %active, align 8, !dbg !1695, !tbaa !776
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1696
  store i64 %row, ptr %y, align 8, !dbg !1697, !tbaa !779
  br label %return, !dbg !1698

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], !dbg !1682
  ret i32 %retval.0, !dbg !1699
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetPreviousRow(ptr noundef %iterator) local_unnamed_addr #0 !dbg !1700 {
entry:
  %number_wands = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1704, metadata !DIExpression()), !dbg !1706
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_wands) #11, !dbg !1707
  call void @llvm.dbg.value(metadata ptr %number_wands, metadata !1705, metadata !DIExpression(DW_OP_deref)), !dbg !1706
  %call = call ptr @PixelGetPreviousIteratorRow(ptr noundef %iterator, ptr noundef nonnull %number_wands), !dbg !1708
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_wands) #11, !dbg !1709
  ret ptr %call, !dbg !1710
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetPreviousIteratorRow(ptr noundef %iterator, ptr nocapture noundef writeonly %number_wands) local_unnamed_addr #0 !dbg !1711 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1713, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %number_wands, metadata !1714, metadata !DIExpression()), !dbg !1718
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1719
  %0 = load i32, ptr %debug, align 8, !dbg !1719, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1721
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1722

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1723
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 774, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1724
  br label %if.end, !dbg !1725

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %number_wands, align 8, !dbg !1726, !tbaa !843
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !1727
  %1 = load i32, ptr %active, align 8, !dbg !1727, !tbaa !776
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1729
  %y4.phi.trans.insert = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6
  %.pre = load i64, ptr %y4.phi.trans.insert, align 8, !dbg !1718, !tbaa !779
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1730

if.then2:                                         ; preds = %if.end
  %dec = add nsw i64 %.pre, -1, !dbg !1731
  store i64 %dec, ptr %y4.phi.trans.insert, align 8, !dbg !1731, !tbaa !779
  br label %if.end3, !dbg !1732

if.end3:                                          ; preds = %if.end, %if.then2
  %2 = phi i64 [ %dec, %if.then2 ], [ %.pre, %if.end ], !dbg !1733
  %y4 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1589, metadata !DIExpression()) #11, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %2, metadata !1594, metadata !DIExpression()) #11, !dbg !1735
  %3 = load i32, ptr %debug, align 8, !dbg !1737, !tbaa !749
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !1738
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1739

if.then.i:                                        ; preds = %if.end3
  %name.i = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1740
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 899, ptr noundef nonnull @.str.2, ptr noundef nonnull %name.i) #11, !dbg !1741
  br label %if.end.i, !dbg !1742

if.end.i:                                         ; preds = %if.then.i, %if.end3
  %cmp1.i = icmp slt i64 %2, 0, !dbg !1743
  br i1 %cmp1.i, label %cleanup, label %lor.lhs.false.i, !dbg !1744

lor.lhs.false.i:                                  ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 1, !dbg !1745
  %4 = load i64, ptr %height.i, align 8, !dbg !1745, !tbaa !1204
  %cmp2.not.i = icmp sgt i64 %4, %2, !dbg !1746
  br i1 %cmp2.not.i, label %if.end8, label %cleanup, !dbg !1747

if.end8:                                          ; preds = %lor.lhs.false.i
  store i32 1, ptr %active, align 8, !dbg !1748, !tbaa !776
  store i64 %2, ptr %y4, align 8, !dbg !1749, !tbaa !779
  %view = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 3, !dbg !1750
  %5 = load ptr, ptr %view, align 8, !dbg !1750, !tbaa !836
  %region = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, !dbg !1751
  %x9 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 2, !dbg !1752
  %6 = load i64, ptr %x9, align 8, !dbg !1752, !tbaa !1328
  %y11 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 3, !dbg !1753
  %7 = load i64, ptr %y11, align 8, !dbg !1753, !tbaa !1331
  %add = add nsw i64 %2, %7, !dbg !1754
  %8 = load i64, ptr %region, align 8, !dbg !1755, !tbaa !765
  %exception = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !1756
  %9 = load ptr, ptr %exception, align 8, !dbg !1756, !tbaa !769
  %call14 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %5, i64 noundef %6, i64 noundef %add, i64 noundef %8, i64 noundef 1, ptr noundef %9) #15, !dbg !1757
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1716, metadata !DIExpression()), !dbg !1718
  %cmp15 = icmp eq ptr %call14, null, !dbg !1758
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !1760

if.then16:                                        ; preds = %if.end8
  %10 = load ptr, ptr %exception, align 8, !dbg !1761, !tbaa !769
  %11 = load ptr, ptr %view, align 8, !dbg !1763, !tbaa !836
  %call19 = tail call ptr @GetCacheViewException(ptr noundef %11) #11, !dbg !1764
  tail call void @InheritException(ptr noundef %10, ptr noundef %call19) #11, !dbg !1765
  br label %cleanup, !dbg !1766

if.end20:                                         ; preds = %if.end8
  %12 = load ptr, ptr %view, align 8, !dbg !1767, !tbaa !836
  %call22 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %12) #11, !dbg !1768
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1715, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1718
  %13 = load i64, ptr %region, align 8, !dbg !1769, !tbaa !765
  %cmp25108 = icmp sgt i64 %13, 0, !dbg !1772
  br i1 %cmp25108, label %for.body.lr.ph, label %for.end, !dbg !1773

for.body.lr.ph:                                   ; preds = %if.end20
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body, !dbg !1773

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %x.0109 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %x.0109, metadata !1717, metadata !DIExpression()), !dbg !1718
  %14 = load ptr, ptr %pixel_wands, align 8, !dbg !1774, !tbaa !762
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %x.0109, !dbg !1775
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !1775, !tbaa !1396
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call14, i64 %x.0109, !dbg !1776
  tail call void @PixelSetQuantumColor(ptr noundef %15, ptr noundef nonnull %add.ptr) #11, !dbg !1777
  %inc = add nuw nsw i64 %x.0109, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1717, metadata !DIExpression()), !dbg !1718
  %16 = load i64, ptr %region, align 8, !dbg !1769, !tbaa !765
  %cmp25 = icmp slt i64 %inc, %16, !dbg !1772
  br i1 %cmp25, label %for.body, label %for.end, !dbg !1773, !llvm.loop !1779

for.end:                                          ; preds = %for.body, %if.end20
  %17 = load ptr, ptr %view, align 8, !dbg !1781, !tbaa !836
  %call27 = tail call i32 @GetCacheViewColorspace(ptr noundef %17) #11, !dbg !1783
  %cmp28 = icmp eq i32 %call27, 12, !dbg !1784
  br i1 %cmp28, label %for.cond30.preheader, label %if.end41, !dbg !1785

for.cond30.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1718
  %18 = load i64, ptr %region, align 8, !dbg !1786, !tbaa !765
  %cmp33110 = icmp sgt i64 %18, 0, !dbg !1789
  br i1 %cmp33110, label %for.body34.lr.ph, label %if.end41, !dbg !1790

for.body34.lr.ph:                                 ; preds = %for.cond30.preheader
  %pixel_wands35 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body34, !dbg !1790

for.body34:                                       ; preds = %for.body34.lr.ph, %for.body34
  %x.1111 = phi i64 [ 0, %for.body34.lr.ph ], [ %inc39, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %x.1111, metadata !1717, metadata !DIExpression()), !dbg !1718
  %19 = load ptr, ptr %pixel_wands35, align 8, !dbg !1791, !tbaa !762
  %arrayidx36 = getelementptr inbounds ptr, ptr %19, i64 %x.1111, !dbg !1792
  %20 = load ptr, ptr %arrayidx36, align 8, !dbg !1792, !tbaa !1396
  %add.ptr37 = getelementptr inbounds i16, ptr %call22, i64 %x.1111, !dbg !1793
  %21 = load i16, ptr %add.ptr37, align 2, !dbg !1793, !tbaa !1417
  tail call void @PixelSetBlackQuantum(ptr noundef %20, i16 noundef zeroext %21) #11, !dbg !1794
  %inc39 = add nuw nsw i64 %x.1111, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %inc39, metadata !1717, metadata !DIExpression()), !dbg !1718
  %22 = load i64, ptr %region, align 8, !dbg !1786, !tbaa !765
  %cmp33 = icmp slt i64 %inc39, %22, !dbg !1789
  br i1 %cmp33, label %for.body34, label %if.end41, !dbg !1790, !llvm.loop !1796

if.end41:                                         ; preds = %for.body34, %for.cond30.preheader, %for.end
  %23 = load ptr, ptr %view, align 8, !dbg !1798, !tbaa !836
  %call43 = tail call i32 @GetCacheViewStorageClass(ptr noundef %23) #11, !dbg !1800
  %cmp44 = icmp eq i32 %call43, 2, !dbg !1801
  %24 = load i64, ptr %region, align 8, !dbg !1718, !tbaa !765
  %cmp49112 = icmp sgt i64 %24, 0
  %or.cond = select i1 %cmp44, i1 %cmp49112, i1 false, !dbg !1802
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1718
  br i1 %or.cond, label %for.body50.lr.ph, label %if.end60, !dbg !1802

for.body50.lr.ph:                                 ; preds = %if.end41
  %pixel_wands51 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  %cmp54 = icmp eq ptr %call22, null
  br i1 %cmp54, label %for.body50.us, label %for.body50, !dbg !1803

for.body50.us:                                    ; preds = %for.body50.lr.ph, %for.body50.us
  %x.2113.us = phi i64 [ %inc58.us, %for.body50.us ], [ 0, %for.body50.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.2113.us, metadata !1717, metadata !DIExpression()), !dbg !1718
  %25 = load ptr, ptr %pixel_wands51, align 8, !dbg !1806, !tbaa !762
  %arrayidx52.us = getelementptr inbounds ptr, ptr %25, i64 %x.2113.us, !dbg !1807
  %26 = load ptr, ptr %arrayidx52.us, align 8, !dbg !1807, !tbaa !1396
  tail call void @PixelSetIndex(ptr noundef %26, i16 noundef zeroext 0) #11, !dbg !1808
  %inc58.us = add nuw nsw i64 %x.2113.us, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %inc58.us, metadata !1717, metadata !DIExpression()), !dbg !1718
  %27 = load i64, ptr %region, align 8, !dbg !1810, !tbaa !765
  %cmp49.us = icmp slt i64 %inc58.us, %27, !dbg !1811
  br i1 %cmp49.us, label %for.body50.us, label %if.end60, !dbg !1812, !llvm.loop !1813

for.body50:                                       ; preds = %for.body50.lr.ph, %for.body50
  %x.2113 = phi i64 [ %inc58, %for.body50 ], [ 0, %for.body50.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.2113, metadata !1717, metadata !DIExpression()), !dbg !1718
  %28 = load ptr, ptr %pixel_wands51, align 8, !dbg !1806, !tbaa !762
  %arrayidx52 = getelementptr inbounds ptr, ptr %28, i64 %x.2113, !dbg !1807
  %29 = load ptr, ptr %arrayidx52, align 8, !dbg !1807, !tbaa !1396
  %add.ptr53 = getelementptr inbounds i16, ptr %call22, i64 %x.2113, !dbg !1803
  %30 = load i16, ptr %add.ptr53, align 2, !dbg !1803, !tbaa !1417
  tail call void @PixelSetIndex(ptr noundef %29, i16 noundef zeroext %30) #11, !dbg !1808
  %inc58 = add nuw nsw i64 %x.2113, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %inc58, metadata !1717, metadata !DIExpression()), !dbg !1718
  %31 = load i64, ptr %region, align 8, !dbg !1810, !tbaa !765
  %cmp49 = icmp slt i64 %inc58, %31, !dbg !1811
  br i1 %cmp49, label %for.body50, label %if.end60, !dbg !1812, !llvm.loop !1813

if.end60:                                         ; preds = %for.body50, %for.body50.us, %if.end41
  %32 = phi i64 [ %24, %if.end41 ], [ %27, %for.body50.us ], [ %31, %for.body50 ], !dbg !1815
  store i64 %32, ptr %number_wands, align 8, !dbg !1816, !tbaa !843
  %pixel_wands63 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7, !dbg !1817
  %33 = load ptr, ptr %pixel_wands63, align 8, !dbg !1817, !tbaa !762
  br label %cleanup, !dbg !1818

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i, %if.end60, %if.then16
  %retval.0 = phi ptr [ null, %if.then16 ], [ %33, %if.end60 ], [ null, %lor.lhs.false.i ], [ null, %if.end.i ], !dbg !1718
  ret ptr %retval.0, !dbg !1819
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelResetIterator(ptr noundef %iterator) local_unnamed_addr #0 !dbg !1820 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1822, metadata !DIExpression()), !dbg !1823
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1824
  %0 = load i32, ptr %debug, align 8, !dbg !1824, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1826
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1827

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1828
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 833, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1829
  br label %if.end, !dbg !1830

if.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !1831
  store i32 0, ptr %active, align 8, !dbg !1832, !tbaa !776
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1833
  store i64 0, ptr %y, align 8, !dbg !1834, !tbaa !779
  ret void, !dbg !1835
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetFirstIteratorRow(ptr noundef %iterator) local_unnamed_addr #0 !dbg !1836 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1838, metadata !DIExpression()), !dbg !1839
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1840
  %0 = load i32, ptr %debug, align 8, !dbg !1840, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1842
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1843

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1844
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 865, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1845
  br label %if.end, !dbg !1846

if.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !1847
  store i32 0, ptr %active, align 8, !dbg !1848, !tbaa !776
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 3, !dbg !1849
  %1 = load i64, ptr %y, align 8, !dbg !1849, !tbaa !1331
  %y1 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1850
  store i64 %1, ptr %y1, align 8, !dbg !1851, !tbaa !779
  ret void, !dbg !1852
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetLastIteratorRow(ptr noundef %iterator) local_unnamed_addr #0 !dbg !1853 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1855, metadata !DIExpression()), !dbg !1856
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1857
  %0 = load i32, ptr %debug, align 8, !dbg !1857, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1859
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1860

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1861
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 934, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1862
  br label %if.end, !dbg !1863

if.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 5, !dbg !1864
  store i32 0, ptr %active, align 8, !dbg !1865, !tbaa !776
  %height = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 1, !dbg !1866
  %1 = load i64, ptr %height, align 8, !dbg !1866, !tbaa !1204
  %sub = add nsw i64 %1, -1, !dbg !1867
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1868
  store i64 %sub, ptr %y, align 8, !dbg !1869, !tbaa !779
  ret void, !dbg !1870
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelSyncIterator(ptr noundef %iterator) local_unnamed_addr #0 !dbg !1871 {
entry:
  call void @llvm.dbg.value(metadata ptr %iterator, metadata !1873, metadata !DIExpression()), !dbg !1881
  %debug = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 8, !dbg !1882
  %0 = load i32, ptr %debug, align 8, !dbg !1882, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !1884
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1885

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 1, !dbg !1886
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 978, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #11, !dbg !1887
  br label %if.end, !dbg !1888

if.end:                                           ; preds = %if.then, %entry
  %view = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 3, !dbg !1889
  %1 = load ptr, ptr %view, align 8, !dbg !1889, !tbaa !836
  %call1 = tail call i32 @SetCacheViewStorageClass(ptr noundef %1, i32 noundef 1) #11, !dbg !1891
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1892
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1893

if.end4:                                          ; preds = %if.end
  %exception5 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 2, !dbg !1894
  %2 = load ptr, ptr %exception5, align 8, !dbg !1894, !tbaa !769
  call void @llvm.dbg.value(metadata ptr %2, metadata !1874, metadata !DIExpression()), !dbg !1881
  %3 = load ptr, ptr %view, align 8, !dbg !1895, !tbaa !836
  %region = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, !dbg !1896
  %x7 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 2, !dbg !1897
  %4 = load i64, ptr %x7, align 8, !dbg !1897, !tbaa !1328
  %y = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 4, i32 3, !dbg !1898
  %5 = load i64, ptr %y, align 8, !dbg !1898, !tbaa !1331
  %y9 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 6, !dbg !1899
  %6 = load i64, ptr %y9, align 8, !dbg !1899, !tbaa !779
  %add = add nsw i64 %6, %5, !dbg !1900
  %7 = load i64, ptr %region, align 8, !dbg !1901, !tbaa !765
  %call11 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %3, i64 noundef %4, i64 noundef %add, i64 noundef %7, i64 noundef 1, ptr noundef %2) #15, !dbg !1902
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1879, metadata !DIExpression()), !dbg !1881
  %cmp12 = icmp eq ptr %call11, null, !dbg !1903
  br i1 %cmp12, label %cleanup.sink.split, label %if.end17, !dbg !1905

if.end17:                                         ; preds = %if.end4
  %8 = load ptr, ptr %view, align 8, !dbg !1906, !tbaa !836
  %call19 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %8) #11, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1875, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64 0, metadata !1878, metadata !DIExpression()), !dbg !1881
  %9 = load i64, ptr %region, align 8, !dbg !1908, !tbaa !765
  %cmp2279 = icmp sgt i64 %9, 0, !dbg !1911
  br i1 %cmp2279, label %for.body.lr.ph, label %for.end, !dbg !1912

for.body.lr.ph:                                   ; preds = %if.end17
  %pixel_wands = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body, !dbg !1912

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %x.080 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %x.080, metadata !1878, metadata !DIExpression()), !dbg !1881
  %10 = load ptr, ptr %pixel_wands, align 8, !dbg !1913, !tbaa !762
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %x.080, !dbg !1914
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !1914, !tbaa !1396
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call11, i64 %x.080, !dbg !1915
  tail call void @PixelGetQuantumColor(ptr noundef %11, ptr noundef nonnull %add.ptr) #11, !dbg !1916
  %inc = add nuw nsw i64 %x.080, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1878, metadata !DIExpression()), !dbg !1881
  %12 = load i64, ptr %region, align 8, !dbg !1908, !tbaa !765
  %cmp22 = icmp slt i64 %inc, %12, !dbg !1911
  br i1 %cmp22, label %for.body, label %for.end, !dbg !1912, !llvm.loop !1918

for.end:                                          ; preds = %for.body, %if.end17
  %13 = load ptr, ptr %view, align 8, !dbg !1920, !tbaa !836
  %call24 = tail call i32 @GetCacheViewColorspace(ptr noundef %13) #11, !dbg !1922
  %cmp25 = icmp eq i32 %call24, 12, !dbg !1923
  br i1 %cmp25, label %for.cond27.preheader, label %if.end39, !dbg !1924

for.cond27.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1878, metadata !DIExpression()), !dbg !1881
  %14 = load i64, ptr %region, align 8, !dbg !1925, !tbaa !765
  %cmp3081 = icmp sgt i64 %14, 0, !dbg !1928
  br i1 %cmp3081, label %for.body31.lr.ph, label %if.end39, !dbg !1929

for.body31.lr.ph:                                 ; preds = %for.cond27.preheader
  %pixel_wands32 = getelementptr inbounds %struct._PixelIterator, ptr %iterator, i64 0, i32 7
  br label %for.body31, !dbg !1929

for.body31:                                       ; preds = %for.body31.lr.ph, %for.body31
  %x.182 = phi i64 [ 0, %for.body31.lr.ph ], [ %inc37, %for.body31 ]
  call void @llvm.dbg.value(metadata i64 %x.182, metadata !1878, metadata !DIExpression()), !dbg !1881
  %15 = load ptr, ptr %pixel_wands32, align 8, !dbg !1930, !tbaa !762
  %arrayidx33 = getelementptr inbounds ptr, ptr %15, i64 %x.182, !dbg !1930
  %16 = load ptr, ptr %arrayidx33, align 8, !dbg !1930, !tbaa !1396
  %call34 = tail call zeroext i16 @PixelGetBlackQuantum(ptr noundef %16) #11, !dbg !1930
  %add.ptr35 = getelementptr inbounds i16, ptr %call19, i64 %x.182, !dbg !1930
  store i16 %call34, ptr %add.ptr35, align 2, !dbg !1930, !tbaa !1417
  %inc37 = add nuw nsw i64 %x.182, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %inc37, metadata !1878, metadata !DIExpression()), !dbg !1881
  %17 = load i64, ptr %region, align 8, !dbg !1925, !tbaa !765
  %cmp30 = icmp slt i64 %inc37, %17, !dbg !1928
  br i1 %cmp30, label %for.body31, label %if.end39, !dbg !1929, !llvm.loop !1932

if.end39:                                         ; preds = %for.body31, %for.cond27.preheader, %for.end
  %18 = load ptr, ptr %view, align 8, !dbg !1934, !tbaa !836
  %call41 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %18, ptr noundef %2) #15, !dbg !1936
  %cmp42 = icmp eq i32 %call41, 0, !dbg !1937
  br i1 %cmp42, label %cleanup.sink.split, label %cleanup, !dbg !1938

cleanup.sink.split:                               ; preds = %if.end39, %if.end4
  %19 = load ptr, ptr %exception5, align 8, !dbg !1881, !tbaa !769
  %20 = load ptr, ptr %view, align 8, !dbg !1881, !tbaa !836
  %call46 = tail call ptr @GetCacheViewException(ptr noundef %20) #11, !dbg !1881
  tail call void @InheritException(ptr noundef %19, ptr noundef %call46) #11, !dbg !1881
  br label %cleanup, !dbg !1939

cleanup:                                          ; preds = %cleanup.sink.split, %if.end39, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.end39 ], [ 0, %cleanup.sink.split ], !dbg !1881
  ret i32 %retval.0, !dbg !1939
}

declare !dbg !1940 i32 @SetCacheViewStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: hot
declare !dbg !1944 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !1947 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

declare !dbg !1950 void @PixelGetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1953 zeroext i16 @PixelGetBlackQuantum(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare !dbg !1956 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { hot nounwind }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!734, !735, !736, !737, !738, !739}
!llvm.ident = !{!740}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !476, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/pixel-iterator.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "5f7e519c70361d4872d6600d6035110b")
!2 = !{!3, !77, !82, !107, !132, !144, !154, !160, !165, !202, !216, !249, !271, !276, !284, !319, !334, !405, !413, !419, !436, !448, !469}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 28, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!7 = !DIEnumerator(name: "UndefinedException", value: 0)
!8 = !DIEnumerator(name: "WarningException", value: 300)
!9 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!10 = !DIEnumerator(name: "TypeWarning", value: 305)
!11 = !DIEnumerator(name: "OptionWarning", value: 310)
!12 = !DIEnumerator(name: "DelegateWarning", value: 315)
!13 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!14 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!15 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!16 = !DIEnumerator(name: "BlobWarning", value: 335)
!17 = !DIEnumerator(name: "StreamWarning", value: 340)
!18 = !DIEnumerator(name: "CacheWarning", value: 345)
!19 = !DIEnumerator(name: "CoderWarning", value: 350)
!20 = !DIEnumerator(name: "FilterWarning", value: 352)
!21 = !DIEnumerator(name: "ModuleWarning", value: 355)
!22 = !DIEnumerator(name: "DrawWarning", value: 360)
!23 = !DIEnumerator(name: "ImageWarning", value: 365)
!24 = !DIEnumerator(name: "WandWarning", value: 370)
!25 = !DIEnumerator(name: "RandomWarning", value: 375)
!26 = !DIEnumerator(name: "XServerWarning", value: 380)
!27 = !DIEnumerator(name: "MonitorWarning", value: 385)
!28 = !DIEnumerator(name: "RegistryWarning", value: 390)
!29 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!30 = !DIEnumerator(name: "PolicyWarning", value: 399)
!31 = !DIEnumerator(name: "ErrorException", value: 400)
!32 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!33 = !DIEnumerator(name: "TypeError", value: 405)
!34 = !DIEnumerator(name: "OptionError", value: 410)
!35 = !DIEnumerator(name: "DelegateError", value: 415)
!36 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!37 = !DIEnumerator(name: "CorruptImageError", value: 425)
!38 = !DIEnumerator(name: "FileOpenError", value: 430)
!39 = !DIEnumerator(name: "BlobError", value: 435)
!40 = !DIEnumerator(name: "StreamError", value: 440)
!41 = !DIEnumerator(name: "CacheError", value: 445)
!42 = !DIEnumerator(name: "CoderError", value: 450)
!43 = !DIEnumerator(name: "FilterError", value: 452)
!44 = !DIEnumerator(name: "ModuleError", value: 455)
!45 = !DIEnumerator(name: "DrawError", value: 460)
!46 = !DIEnumerator(name: "ImageError", value: 465)
!47 = !DIEnumerator(name: "WandError", value: 470)
!48 = !DIEnumerator(name: "RandomError", value: 475)
!49 = !DIEnumerator(name: "XServerError", value: 480)
!50 = !DIEnumerator(name: "MonitorError", value: 485)
!51 = !DIEnumerator(name: "RegistryError", value: 490)
!52 = !DIEnumerator(name: "ConfigureError", value: 495)
!53 = !DIEnumerator(name: "PolicyError", value: 499)
!54 = !DIEnumerator(name: "FatalErrorException", value: 700)
!55 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!56 = !DIEnumerator(name: "TypeFatalError", value: 705)
!57 = !DIEnumerator(name: "OptionFatalError", value: 710)
!58 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!59 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!60 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!61 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!62 = !DIEnumerator(name: "BlobFatalError", value: 735)
!63 = !DIEnumerator(name: "StreamFatalError", value: 740)
!64 = !DIEnumerator(name: "CacheFatalError", value: 745)
!65 = !DIEnumerator(name: "CoderFatalError", value: 750)
!66 = !DIEnumerator(name: "FilterFatalError", value: 752)
!67 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!68 = !DIEnumerator(name: "DrawFatalError", value: 760)
!69 = !DIEnumerator(name: "ImageFatalError", value: 765)
!70 = !DIEnumerator(name: "WandFatalError", value: 770)
!71 = !DIEnumerator(name: "RandomFatalError", value: 775)
!72 = !DIEnumerator(name: "XServerFatalError", value: 780)
!73 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!74 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!75 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!76 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 211, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "MagickFalse", value: 0)
!81 = !DIEnumerator(name: "MagickTrue", value: 1)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 34, baseType: !5, size: 32, elements: !84)
!83 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!85 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!86 = !DIEnumerator(name: "NoEvents", value: 0)
!87 = !DIEnumerator(name: "TraceEvent", value: 1)
!88 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!89 = !DIEnumerator(name: "BlobEvent", value: 4)
!90 = !DIEnumerator(name: "CacheEvent", value: 8)
!91 = !DIEnumerator(name: "CoderEvent", value: 16)
!92 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!93 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!94 = !DIEnumerator(name: "DrawEvent", value: 128)
!95 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!96 = !DIEnumerator(name: "ImageEvent", value: 512)
!97 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!98 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!99 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!100 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!101 = !DIEnumerator(name: "TransformEvent", value: 16384)
!102 = !DIEnumerator(name: "UserEvent", value: 36864)
!103 = !DIEnumerator(name: "WandEvent", value: 65536)
!104 = !DIEnumerator(name: "X11Event", value: 131072)
!105 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!106 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 25, baseType: !5, size: 32, elements: !109)
!108 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!110 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!111 = !DIEnumerator(name: "NoCompression", value: 1)
!112 = !DIEnumerator(name: "BZipCompression", value: 2)
!113 = !DIEnumerator(name: "DXT1Compression", value: 3)
!114 = !DIEnumerator(name: "DXT3Compression", value: 4)
!115 = !DIEnumerator(name: "DXT5Compression", value: 5)
!116 = !DIEnumerator(name: "FaxCompression", value: 6)
!117 = !DIEnumerator(name: "Group4Compression", value: 7)
!118 = !DIEnumerator(name: "JPEGCompression", value: 8)
!119 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!120 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!121 = !DIEnumerator(name: "LZWCompression", value: 11)
!122 = !DIEnumerator(name: "RLECompression", value: 12)
!123 = !DIEnumerator(name: "ZipCompression", value: 13)
!124 = !DIEnumerator(name: "ZipSCompression", value: 14)
!125 = !DIEnumerator(name: "PizCompression", value: 15)
!126 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!127 = !DIEnumerator(name: "B44Compression", value: 17)
!128 = !DIEnumerator(name: "B44ACompression", value: 18)
!129 = !DIEnumerator(name: "LZMACompression", value: 19)
!130 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!131 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 75, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143}
!135 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!136 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!137 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!138 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!139 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!140 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!141 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!142 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!143 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 63, baseType: !5, size: 32, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153}
!146 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!147 = !DIEnumerator(name: "NoInterlace", value: 1)
!148 = !DIEnumerator(name: "LineInterlace", value: 2)
!149 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!150 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!151 = !DIEnumerator(name: "GIFInterlace", value: 5)
!152 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!153 = !DIEnumerator(name: "PNGInterlace", value: 7)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 30, baseType: !5, size: 32, elements: !156)
!155 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!156 = !{!157, !158, !159}
!157 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!158 = !DIEnumerator(name: "LSBEndian", value: 1)
!159 = !DIEnumerator(name: "MSBEndian", value: 2)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 88, baseType: !5, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!163 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!164 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 25, baseType: !5, size: 32, elements: !167)
!166 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201}
!168 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!169 = !DIEnumerator(name: "RGBColorspace", value: 1)
!170 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!171 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!172 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!173 = !DIEnumerator(name: "LabColorspace", value: 5)
!174 = !DIEnumerator(name: "XYZColorspace", value: 6)
!175 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!176 = !DIEnumerator(name: "YCCColorspace", value: 8)
!177 = !DIEnumerator(name: "YIQColorspace", value: 9)
!178 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!179 = !DIEnumerator(name: "YUVColorspace", value: 11)
!180 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!181 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!182 = !DIEnumerator(name: "HSBColorspace", value: 14)
!183 = !DIEnumerator(name: "HSLColorspace", value: 15)
!184 = !DIEnumerator(name: "HWBColorspace", value: 16)
!185 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!186 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!187 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!188 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!189 = !DIEnumerator(name: "LogColorspace", value: 21)
!190 = !DIEnumerator(name: "CMYColorspace", value: 22)
!191 = !DIEnumerator(name: "LuvColorspace", value: 23)
!192 = !DIEnumerator(name: "HCLColorspace", value: 24)
!193 = !DIEnumerator(name: "LCHColorspace", value: 25)
!194 = !DIEnumerator(name: "LMSColorspace", value: 26)
!195 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!196 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!197 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!198 = !DIEnumerator(name: "HSIColorspace", value: 30)
!199 = !DIEnumerator(name: "HSVColorspace", value: 31)
!200 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!201 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 47, baseType: !5, size: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!204 = !DIEnumerator(name: "UndefinedType", value: 0)
!205 = !DIEnumerator(name: "BilevelType", value: 1)
!206 = !DIEnumerator(name: "GrayscaleType", value: 2)
!207 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!208 = !DIEnumerator(name: "PaletteType", value: 4)
!209 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!210 = !DIEnumerator(name: "TrueColorType", value: 6)
!211 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!212 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!213 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!214 = !DIEnumerator(name: "OptimizeType", value: 10)
!215 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 27, baseType: !5, size: 32, elements: !218)
!217 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!219 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!220 = !DIEnumerator(name: "RotatePreview", value: 1)
!221 = !DIEnumerator(name: "ShearPreview", value: 2)
!222 = !DIEnumerator(name: "RollPreview", value: 3)
!223 = !DIEnumerator(name: "HuePreview", value: 4)
!224 = !DIEnumerator(name: "SaturationPreview", value: 5)
!225 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!226 = !DIEnumerator(name: "GammaPreview", value: 7)
!227 = !DIEnumerator(name: "SpiffPreview", value: 8)
!228 = !DIEnumerator(name: "DullPreview", value: 9)
!229 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!230 = !DIEnumerator(name: "QuantizePreview", value: 11)
!231 = !DIEnumerator(name: "DespecklePreview", value: 12)
!232 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!233 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!234 = !DIEnumerator(name: "SharpenPreview", value: 15)
!235 = !DIEnumerator(name: "BlurPreview", value: 16)
!236 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!237 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!238 = !DIEnumerator(name: "SpreadPreview", value: 19)
!239 = !DIEnumerator(name: "SolarizePreview", value: 20)
!240 = !DIEnumerator(name: "ShadePreview", value: 21)
!241 = !DIEnumerator(name: "RaisePreview", value: 22)
!242 = !DIEnumerator(name: "SegmentPreview", value: 23)
!243 = !DIEnumerator(name: "SwirlPreview", value: 24)
!244 = !DIEnumerator(name: "ImplodePreview", value: 25)
!245 = !DIEnumerator(name: "WavePreview", value: 26)
!246 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!247 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!248 = !DIEnumerator(name: "JPEGPreview", value: 29)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 177, baseType: !5, size: 32, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!251 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!252 = !DIEnumerator(name: "RedChannel", value: 1)
!253 = !DIEnumerator(name: "GrayChannel", value: 1)
!254 = !DIEnumerator(name: "CyanChannel", value: 1)
!255 = !DIEnumerator(name: "GreenChannel", value: 2)
!256 = !DIEnumerator(name: "MagentaChannel", value: 2)
!257 = !DIEnumerator(name: "BlueChannel", value: 4)
!258 = !DIEnumerator(name: "YellowChannel", value: 4)
!259 = !DIEnumerator(name: "AlphaChannel", value: 8)
!260 = !DIEnumerator(name: "OpacityChannel", value: 8)
!261 = !DIEnumerator(name: "MatteChannel", value: 8)
!262 = !DIEnumerator(name: "BlackChannel", value: 32)
!263 = !DIEnumerator(name: "IndexChannel", value: 32)
!264 = !DIEnumerator(name: "CompositeChannels", value: 47)
!265 = !DIEnumerator(name: "AllChannels", value: 134217727)
!266 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!267 = !DIEnumerator(name: "RGBChannels", value: 128)
!268 = !DIEnumerator(name: "GrayChannels", value: 128)
!269 = !DIEnumerator(name: "SyncChannels", value: 256)
!270 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 204, baseType: !5, size: 32, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIEnumerator(name: "UndefinedClass", value: 0)
!274 = !DIEnumerator(name: "DirectClass", value: 1)
!275 = !DIEnumerator(name: "PseudoClass", value: 2)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 42, baseType: !5, size: 32, elements: !278)
!277 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!278 = !{!279, !280, !281, !282, !283}
!279 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!280 = !DIEnumerator(name: "SaturationIntent", value: 1)
!281 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!282 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!283 = !DIEnumerator(name: "RelativeIntent", value: 4)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !285, line: 32, baseType: !5, size: 32, elements: !286)
!285 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!287 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!288 = !DIEnumerator(name: "PointFilter", value: 1)
!289 = !DIEnumerator(name: "BoxFilter", value: 2)
!290 = !DIEnumerator(name: "TriangleFilter", value: 3)
!291 = !DIEnumerator(name: "HermiteFilter", value: 4)
!292 = !DIEnumerator(name: "HanningFilter", value: 5)
!293 = !DIEnumerator(name: "HammingFilter", value: 6)
!294 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!295 = !DIEnumerator(name: "GaussianFilter", value: 8)
!296 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!297 = !DIEnumerator(name: "CubicFilter", value: 10)
!298 = !DIEnumerator(name: "CatromFilter", value: 11)
!299 = !DIEnumerator(name: "MitchellFilter", value: 12)
!300 = !DIEnumerator(name: "JincFilter", value: 13)
!301 = !DIEnumerator(name: "SincFilter", value: 14)
!302 = !DIEnumerator(name: "SincFastFilter", value: 15)
!303 = !DIEnumerator(name: "KaiserFilter", value: 16)
!304 = !DIEnumerator(name: "WelshFilter", value: 17)
!305 = !DIEnumerator(name: "ParzenFilter", value: 18)
!306 = !DIEnumerator(name: "BohmanFilter", value: 19)
!307 = !DIEnumerator(name: "BartlettFilter", value: 20)
!308 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!309 = !DIEnumerator(name: "LanczosFilter", value: 22)
!310 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!311 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!312 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!313 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!314 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!315 = !DIEnumerator(name: "CosineFilter", value: 28)
!316 = !DIEnumerator(name: "SplineFilter", value: 29)
!317 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!318 = !DIEnumerator(name: "SentinelFilter", value: 31)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !320, line: 77, baseType: !5, size: 32, elements: !321)
!320 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!322 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!323 = !DIEnumerator(name: "ForgetGravity", value: 0)
!324 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!325 = !DIEnumerator(name: "NorthGravity", value: 2)
!326 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!327 = !DIEnumerator(name: "WestGravity", value: 4)
!328 = !DIEnumerator(name: "CenterGravity", value: 5)
!329 = !DIEnumerator(name: "EastGravity", value: 6)
!330 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!331 = !DIEnumerator(name: "SouthGravity", value: 8)
!332 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!333 = !DIEnumerator(name: "StaticGravity", value: 10)
!334 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !335, line: 25, baseType: !5, size: 32, elements: !336)
!335 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404}
!337 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!338 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!339 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!340 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!341 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!342 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!343 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!344 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!345 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!346 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!347 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!348 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!349 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!350 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!351 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!352 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!353 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!354 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!355 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!356 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!357 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!358 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!359 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!360 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!361 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!362 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!363 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!364 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!365 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!366 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!367 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!368 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!369 = !DIEnumerator(name: "InCompositeOp", value: 32)
!370 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!371 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!372 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!373 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!374 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!375 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!376 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!377 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!378 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!379 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!380 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!381 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!382 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!383 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!384 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!385 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!386 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!387 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!388 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!389 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!390 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!391 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!392 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!393 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!394 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!395 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!396 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!397 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!398 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!399 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!400 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!401 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!402 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!403 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!404 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!405 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !406, line: 25, baseType: !5, size: 32, elements: !407)
!406 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!407 = !{!408, !409, !410, !411, !412}
!408 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!409 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!410 = !DIEnumerator(name: "NoneDispose", value: 1)
!411 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!412 = !DIEnumerator(name: "PreviousDispose", value: 3)
!413 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !414, line: 25, baseType: !5, size: 32, elements: !415)
!414 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!415 = !{!416, !417, !418}
!416 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!417 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!418 = !DIEnumerator(name: "RunningTimerState", value: 2)
!419 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !420, line: 31, baseType: !5, size: 32, elements: !421)
!420 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!422 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!423 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!424 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!425 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!426 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!427 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!428 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!429 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!430 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!431 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!432 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!433 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!434 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!435 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!436 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !420, line: 67, baseType: !5, size: 32, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!438 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!439 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!440 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!441 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!442 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!443 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!444 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!445 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!446 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!447 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!448 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 27, baseType: !5, size: 32, elements: !450)
!449 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!451 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!452 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!453 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!454 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!455 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!456 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!457 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!458 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!459 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!460 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!461 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!462 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!463 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!464 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!465 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!466 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!467 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!468 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!469 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !470, line: 27, baseType: !5, size: 32, elements: !471)
!470 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3eab4066ac81fc10b9d90b7cb7db1009")
!471 = !{!472, !473, !474, !475}
!472 = !DIEnumerator(name: "UndefinedDitherMethod", value: 0)
!473 = !DIEnumerator(name: "NoDitherMethod", value: 1)
!474 = !DIEnumerator(name: "RiemersmaDitherMethod", value: 2)
!475 = !DIEnumerator(name: "FloydSteinbergDitherMethod", value: 3)
!476 = !{!477, !478, !505, !500, !541, !542, !545, !547, !515, !729, !534, !525, !502, !731, !567, !572}
!477 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIterator", file: !480, line: 29, baseType: !481)
!480 = !DIFile(filename: "apps/538.imagick_r/src/wand/pixel-iterator.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "45fe21c3b65c21ba717e5dd75920ad62")
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelIterator", file: !482, line: 64, size: 33536, elements: !483)
!482 = !DIFile(filename: "apps/538.imagick_r/src/wand/pixel-iterator.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f7e519c70361d4872d6600d6035110b")
!483 = !{!484, !487, !492, !514, !518, !531, !532, !533, !539, !540}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !481, file: !482, line: 67, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !486, line: 46, baseType: !477)
!486 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !481, file: !482, line: 70, baseType: !488, size: 32768, offset: 64)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 32768, elements: !490)
!489 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!490 = !{!491}
!491 = !DISubrange(count: 4096)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !481, file: !482, line: 73, baseType: !493, size: 64, offset: 32832)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !78, line: 219, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !4, line: 102, size: 448, elements: !496)
!496 = !{!497, !499, !501, !503, !504, !506, !508, !513}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !495, file: !4, line: 105, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !4, line: 100, baseType: !3)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !495, file: !4, line: 108, baseType: !500, size: 32, offset: 32)
!500 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !495, file: !4, line: 111, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !495, file: !4, line: 112, baseType: !502, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !495, file: !4, line: 115, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !495, file: !4, line: 118, baseType: !507, size: 32, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !78, line: 215, baseType: !77)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !495, file: !4, line: 121, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !511, line: 26, baseType: !512)
!511 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !511, line: 25, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !495, file: !4, line: 124, baseType: !485, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !481, file: !482, line: 76, baseType: !515, size: 64, offset: 32896)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !449, line: 50, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !420, line: 160, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !481, file: !482, line: 79, baseType: !519, size: 256, offset: 32960)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !320, line: 130, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !320, line: 121, size: 256, elements: !521)
!521 = !{!522, !523, !524, !530}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !520, file: !320, line: 124, baseType: !485, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !520, file: !320, line: 125, baseType: !485, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !520, file: !320, line: 128, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !526, line: 77, baseType: !527)
!526 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !528, line: 193, baseType: !529)
!528 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!529 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !520, file: !320, line: 129, baseType: !525, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !481, file: !482, line: 82, baseType: !507, size: 32, offset: 33216)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !481, file: !482, line: 85, baseType: !525, size: 64, offset: 33280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_wands", scope: !481, file: !482, line: 88, baseType: !534, size: 64, offset: 33344)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelWand", file: !537, line: 26, baseType: !538)
!537 = !DIFile(filename: "apps/538.imagick_r/src/wand/pixel-wand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3c7d71f46771b27e3f74acd989c109c4")
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelWand", file: !537, line: 25, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !481, file: !482, line: 91, baseType: !507, size: 32, offset: 33408)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !481, file: !482, line: 94, baseType: !485, size: 64, offset: 33472)
!541 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !78, line: 221, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !133, line: 150, size: 105920, elements: !550)
!550 = !{!551, !553, !555, !557, !558, !560, !561, !562, !563, !564, !565, !566, !577, !578, !579, !580, !581, !595, !597, !598, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !614, !616, !618, !620, !622, !624, !626, !627, !628, !629, !630, !631, !632, !640, !655, !669, !670, !671, !672, !676, !680, !681, !682, !683, !684, !685, !686, !687, !689, !690, !700, !701, !703, !704, !705, !706, !707, !708, !710, !711, !712, !713, !714, !715, !716, !718, !719, !720, !721, !722, !726, !728}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !549, file: !133, line: 153, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !78, line: 209, baseType: !271)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !549, file: !133, line: 156, baseType: !554, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !166, line: 61, baseType: !165)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !549, file: !133, line: 159, baseType: !556, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !108, line: 49, baseType: !107)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !549, file: !133, line: 162, baseType: !485, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !549, file: !133, line: 165, baseType: !559, size: 32, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !133, line: 86, baseType: !132)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !549, file: !133, line: 168, baseType: !507, size: 32, offset: 224)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !549, file: !133, line: 169, baseType: !507, size: 32, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !549, file: !133, line: 172, baseType: !485, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !549, file: !133, line: 173, baseType: !485, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !549, file: !133, line: 174, baseType: !485, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !549, file: !133, line: 175, baseType: !485, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !549, file: !133, line: 178, baseType: !567, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !420, line: 148, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !420, line: 131, size: 64, elements: !570)
!570 = !{!571, !574, !575, !576}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !569, file: !420, line: 143, baseType: !572, size: 16)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !78, line: 93, baseType: !573)
!573 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !569, file: !420, line: 144, baseType: !572, size: 16, offset: 16)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !569, file: !420, line: 145, baseType: !572, size: 16, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !569, file: !420, line: 146, baseType: !572, size: 16, offset: 48)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !549, file: !133, line: 179, baseType: !568, size: 64, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !549, file: !133, line: 180, baseType: !568, size: 64, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !549, file: !133, line: 181, baseType: !568, size: 64, offset: 768)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !549, file: !133, line: 184, baseType: !541, size: 64, offset: 832)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !549, file: !133, line: 187, baseType: !582, size: 768, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !133, line: 128, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !133, line: 121, size: 768, elements: !584)
!584 = !{!585, !592, !593, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !583, file: !133, line: 124, baseType: !586, size: 192)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !133, line: 101, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !133, line: 95, size: 192, elements: !588)
!588 = !{!589, !590, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !587, file: !133, line: 98, baseType: !541, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !587, file: !133, line: 99, baseType: !541, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !587, file: !133, line: 100, baseType: !541, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !583, file: !133, line: 125, baseType: !586, size: 192, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !583, file: !133, line: 126, baseType: !586, size: 192, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !583, file: !133, line: 127, baseType: !586, size: 192, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !549, file: !133, line: 190, baseType: !596, size: 32, offset: 1664)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !277, line: 49, baseType: !276)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !549, file: !133, line: 193, baseType: !505, size: 64, offset: 1728)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !549, file: !133, line: 196, baseType: !599, size: 32, offset: 1792)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !133, line: 93, baseType: !160)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !549, file: !133, line: 199, baseType: !502, size: 64, offset: 1856)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !549, file: !133, line: 200, baseType: !502, size: 64, offset: 1920)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !549, file: !133, line: 201, baseType: !502, size: 64, offset: 1984)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !549, file: !133, line: 204, baseType: !525, size: 64, offset: 2048)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !549, file: !133, line: 207, baseType: !541, size: 64, offset: 2112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !549, file: !133, line: 208, baseType: !541, size: 64, offset: 2176)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !549, file: !133, line: 211, baseType: !519, size: 256, offset: 2240)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !549, file: !133, line: 212, baseType: !519, size: 256, offset: 2496)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !549, file: !133, line: 213, baseType: !519, size: 256, offset: 2752)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !549, file: !133, line: 216, baseType: !541, size: 64, offset: 3008)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !549, file: !133, line: 217, baseType: !541, size: 64, offset: 3072)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !549, file: !133, line: 218, baseType: !541, size: 64, offset: 3136)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !549, file: !133, line: 221, baseType: !613, size: 32, offset: 3200)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !285, line: 66, baseType: !284)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !549, file: !133, line: 224, baseType: !615, size: 32, offset: 3232)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !133, line: 73, baseType: !144)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !549, file: !133, line: 227, baseType: !617, size: 32, offset: 3264)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !155, line: 35, baseType: !154)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !549, file: !133, line: 230, baseType: !619, size: 32, offset: 3296)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !320, line: 91, baseType: !319)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !549, file: !133, line: 233, baseType: !621, size: 32, offset: 3328)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !335, line: 99, baseType: !334)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !549, file: !133, line: 236, baseType: !623, size: 32, offset: 3360)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !406, line: 32, baseType: !405)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !549, file: !133, line: 239, baseType: !625, size: 64, offset: 3392)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !549, file: !133, line: 242, baseType: !485, size: 64, offset: 3456)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !549, file: !133, line: 243, baseType: !485, size: 64, offset: 3520)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !549, file: !133, line: 246, baseType: !525, size: 64, offset: 3584)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !549, file: !133, line: 249, baseType: !485, size: 64, offset: 3648)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !549, file: !133, line: 250, baseType: !485, size: 64, offset: 3712)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !549, file: !133, line: 253, baseType: !525, size: 64, offset: 3776)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !549, file: !133, line: 256, baseType: !633, size: 192, offset: 3840)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !634, line: 68, baseType: !635)
!634 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !634, line: 62, size: 192, elements: !636)
!636 = !{!637, !638, !639}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !635, file: !634, line: 65, baseType: !541, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !635, file: !634, line: 66, baseType: !541, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !635, file: !634, line: 67, baseType: !541, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !549, file: !133, line: 259, baseType: !641, size: 512, offset: 4032)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !414, line: 51, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !414, line: 40, size: 512, elements: !643)
!643 = !{!644, !651, !652, !654}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !642, file: !414, line: 43, baseType: !645, size: 192)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !414, line: 38, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !414, line: 32, size: 192, elements: !647)
!647 = !{!648, !649, !650}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !646, file: !414, line: 35, baseType: !541, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !646, file: !414, line: 36, baseType: !541, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !646, file: !414, line: 37, baseType: !541, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !642, file: !414, line: 44, baseType: !645, size: 192, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !642, file: !414, line: 47, baseType: !653, size: 32, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !414, line: 30, baseType: !413)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !642, file: !414, line: 50, baseType: !485, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !549, file: !133, line: 262, baseType: !656, size: 64, offset: 4544)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !657, line: 26, baseType: !658)
!657 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!507, !661, !663, !666, !505}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !78, line: 150, baseType: !665)
!665 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !78, line: 151, baseType: !668)
!668 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !549, file: !133, line: 265, baseType: !505, size: 64, offset: 4608)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !549, file: !133, line: 266, baseType: !505, size: 64, offset: 4672)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !549, file: !133, line: 267, baseType: !505, size: 64, offset: 4736)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !549, file: !133, line: 270, baseType: !673, size: 64, offset: 4800)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !108, line: 52, baseType: !675)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !108, line: 51, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !549, file: !133, line: 273, baseType: !677, size: 64, offset: 4864)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !78, line: 217, baseType: !679)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !78, line: 217, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !549, file: !133, line: 276, baseType: !488, size: 32768, offset: 4928)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !549, file: !133, line: 277, baseType: !488, size: 32768, offset: 37696)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !549, file: !133, line: 278, baseType: !488, size: 32768, offset: 70464)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !549, file: !133, line: 281, baseType: !485, size: 64, offset: 103232)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !549, file: !133, line: 282, baseType: !485, size: 64, offset: 103296)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !549, file: !133, line: 285, baseType: !494, size: 448, offset: 103360)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !549, file: !133, line: 288, baseType: !507, size: 32, offset: 103808)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !549, file: !133, line: 291, baseType: !688, size: 64, offset: 103872)
!688 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !525)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !549, file: !133, line: 294, baseType: !509, size: 64, offset: 103936)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !549, file: !133, line: 297, baseType: !691, size: 256, offset: 104000)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !277, line: 40, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !277, line: 27, size: 256, elements: !693)
!693 = !{!694, !695, !696, !699}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !692, file: !277, line: 30, baseType: !502, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !692, file: !277, line: 33, baseType: !485, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !692, file: !277, line: 36, baseType: !697, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !692, file: !277, line: 39, baseType: !485, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !549, file: !133, line: 298, baseType: !691, size: 256, offset: 104256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !549, file: !133, line: 299, baseType: !702, size: 64, offset: 104512)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !549, file: !133, line: 302, baseType: !485, size: 64, offset: 104576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !549, file: !133, line: 305, baseType: !485, size: 64, offset: 104640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !549, file: !133, line: 308, baseType: !625, size: 64, offset: 104704)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !549, file: !133, line: 309, baseType: !625, size: 64, offset: 104768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !133, line: 310, baseType: !625, size: 64, offset: 104832)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !549, file: !133, line: 313, baseType: !709, size: 32, offset: 104896)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !420, line: 47, baseType: !419)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !549, file: !133, line: 316, baseType: !507, size: 32, offset: 104928)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !549, file: !133, line: 319, baseType: !568, size: 64, offset: 104960)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !549, file: !133, line: 322, baseType: !625, size: 64, offset: 105024)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !549, file: !133, line: 325, baseType: !519, size: 256, offset: 105088)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !549, file: !133, line: 328, baseType: !505, size: 64, offset: 105344)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !549, file: !133, line: 329, baseType: !505, size: 64, offset: 105408)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !549, file: !133, line: 332, baseType: !717, size: 32, offset: 105472)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !133, line: 61, baseType: !202)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !549, file: !133, line: 335, baseType: !507, size: 32, offset: 105504)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !549, file: !133, line: 338, baseType: !667, size: 64, offset: 105536)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !549, file: !133, line: 341, baseType: !507, size: 32, offset: 105600)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !549, file: !133, line: 344, baseType: !485, size: 64, offset: 105664)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !549, file: !133, line: 347, baseType: !723, size: 64, offset: 105728)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !724, line: 7, baseType: !725)
!724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !528, line: 160, baseType: !529)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !549, file: !133, line: 350, baseType: !727, size: 32, offset: 105792)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !420, line: 79, baseType: !436)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !549, file: !133, line: 353, baseType: !485, size: 64, offset: 105856)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !420, line: 129, baseType: !572)
!734 = !{i32 7, !"Dwarf Version", i32 5}
!735 = !{i32 2, !"Debug Info Version", i32 3}
!736 = !{i32 1, !"wchar_size", i32 4}
!737 = !{i32 7, !"PIC Level", i32 2}
!738 = !{i32 7, !"PIE Level", i32 2}
!739 = !{i32 7, !"uwtable", i32 2}
!740 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!741 = distinct !DISubprogram(name: "ClearPixelIterator", scope: !482, file: !482, line: 119, type: !742, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !478}
!744 = !{!745}
!745 = !DILocalVariable(name: "iterator", arg: 1, scope: !741, file: !482, line: 119, type: !478)
!746 = !DILocation(line: 0, scope: !741)
!747 = !DILocation(line: 123, column: 17, scope: !748)
!748 = distinct !DILexicalBlock(scope: !741, file: !482, line: 123, column: 7)
!749 = !{!750, !752, i64 4176}
!750 = !{!"_PixelIterator", !751, i64 0, !752, i64 8, !754, i64 4104, !754, i64 4112, !755, i64 4120, !752, i64 4152, !751, i64 4160, !754, i64 4168, !752, i64 4176, !751, i64 4184}
!751 = !{!"long", !752, i64 0}
!752 = !{!"omnipotent char", !753, i64 0}
!753 = !{!"Simple C/C++ TBAA"}
!754 = !{!"any pointer", !752, i64 0}
!755 = !{!"_RectangleInfo", !751, i64 0, !751, i64 8, !751, i64 16, !751, i64 24}
!756 = !DILocation(line: 123, column: 23, scope: !748)
!757 = !DILocation(line: 123, column: 7, scope: !741)
!758 = !DILocation(line: 124, column: 70, scope: !748)
!759 = !DILocation(line: 124, column: 12, scope: !748)
!760 = !DILocation(line: 124, column: 5, scope: !748)
!761 = !DILocation(line: 125, column: 53, scope: !741)
!762 = !{!750, !754, i64 4168}
!763 = !DILocation(line: 126, column: 15, scope: !741)
!764 = !DILocation(line: 126, column: 22, scope: !741)
!765 = !{!750, !751, i64 4120}
!766 = !DILocation(line: 125, column: 25, scope: !741)
!767 = !DILocation(line: 125, column: 24, scope: !741)
!768 = !DILocation(line: 127, column: 34, scope: !741)
!769 = !{!750, !754, i64 4104}
!770 = !DILocation(line: 127, column: 3, scope: !741)
!771 = !DILocation(line: 128, column: 56, scope: !741)
!772 = !DILocation(line: 128, column: 25, scope: !741)
!773 = !DILocation(line: 128, column: 24, scope: !741)
!774 = !DILocation(line: 129, column: 13, scope: !741)
!775 = !DILocation(line: 129, column: 19, scope: !741)
!776 = !{!750, !752, i64 4152}
!777 = !DILocation(line: 130, column: 13, scope: !741)
!778 = !DILocation(line: 130, column: 14, scope: !741)
!779 = !{!750, !751, i64 4160}
!780 = !DILocation(line: 131, column: 19, scope: !741)
!781 = !DILocation(line: 131, column: 18, scope: !741)
!782 = !DILocation(line: 132, column: 1, scope: !741)
!783 = !DISubprogram(name: "LogMagickEvent", scope: !83, file: !83, line: 83, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!784 = !DISubroutineType(types: !785)
!785 = !{!507, !786, !661, !661, !788, !661, null}
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !83, line: 58, baseType: !82)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!789 = !{}
!790 = !DISubprogram(name: "DestroyPixelWands", scope: !537, file: !537, line: 61, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!791 = !DISubroutineType(types: !792)
!792 = !{!534, !534, !788}
!793 = !DISubprogram(name: "ClearMagickException", scope: !4, file: !4, line: 165, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !493}
!796 = !DISubprogram(name: "NewPixelWands", scope: !537, file: !537, line: 63, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!797 = !DISubroutineType(types: !798)
!798 = !{!534, !788}
!799 = !DISubprogram(name: "IsEventLogging", scope: !83, file: !83, line: 80, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!800 = !DISubroutineType(types: !801)
!801 = !{!507}
!802 = distinct !DISubprogram(name: "ClonePixelIterator", scope: !482, file: !482, line: 156, type: !803, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{!478, !545}
!805 = !{!806, !807, !808}
!806 = !DILocalVariable(name: "iterator", arg: 1, scope: !802, file: !482, line: 156, type: !545)
!807 = !DILocalVariable(name: "clone_iterator", scope: !802, file: !482, line: 159, type: !478)
!808 = !DILocalVariable(name: "exception", scope: !809, file: !482, line: 167, type: !494)
!809 = distinct !DILexicalBlock(scope: !810, file: !482, line: 167, column: 5)
!810 = distinct !DILexicalBlock(scope: !802, file: !482, line: 166, column: 7)
!811 = !DILocation(line: 0, scope: !802)
!812 = !DILocation(line: 163, column: 17, scope: !813)
!813 = distinct !DILexicalBlock(scope: !802, file: !482, line: 163, column: 7)
!814 = !DILocation(line: 163, column: 23, scope: !813)
!815 = !DILocation(line: 163, column: 7, scope: !802)
!816 = !DILocation(line: 164, column: 70, scope: !813)
!817 = !DILocation(line: 164, column: 12, scope: !813)
!818 = !DILocation(line: 164, column: 5, scope: !813)
!819 = !DILocation(line: 165, column: 36, scope: !802)
!820 = !DILocation(line: 166, column: 22, scope: !810)
!821 = !DILocation(line: 166, column: 7, scope: !802)
!822 = !DILocation(line: 167, column: 5, scope: !809)
!823 = !DILocation(line: 169, column: 10, scope: !802)
!824 = !DILocation(line: 170, column: 22, scope: !802)
!825 = !DILocation(line: 170, column: 21, scope: !802)
!826 = !{!750, !751, i64 0}
!827 = !DILocation(line: 171, column: 45, scope: !802)
!828 = !DILocation(line: 172, column: 21, scope: !802)
!829 = !DILocation(line: 171, column: 10, scope: !802)
!830 = !DILocation(line: 173, column: 29, scope: !802)
!831 = !DILocation(line: 173, column: 19, scope: !802)
!832 = !DILocation(line: 173, column: 28, scope: !802)
!833 = !DILocation(line: 174, column: 56, scope: !802)
!834 = !DILocation(line: 174, column: 3, scope: !802)
!835 = !DILocation(line: 175, column: 49, scope: !802)
!836 = !{!750, !754, i64 4112}
!837 = !DILocation(line: 175, column: 24, scope: !802)
!838 = !DILocation(line: 175, column: 19, scope: !802)
!839 = !DILocation(line: 175, column: 23, scope: !802)
!840 = !DILocation(line: 176, column: 19, scope: !802)
!841 = !DILocation(line: 176, column: 36, scope: !802)
!842 = !{i64 0, i64 8, !843, i64 8, i64 8, !843, i64 16, i64 8, !843, i64 24, i64 8, !843}
!843 = !{!751, !751, i64 0}
!844 = !DILocation(line: 177, column: 36, scope: !802)
!845 = !DILocation(line: 177, column: 19, scope: !802)
!846 = !DILocation(line: 177, column: 25, scope: !802)
!847 = !DILocation(line: 178, column: 31, scope: !802)
!848 = !DILocation(line: 178, column: 19, scope: !802)
!849 = !DILocation(line: 178, column: 20, scope: !802)
!850 = !DILocation(line: 180, column: 15, scope: !802)
!851 = !DILocation(line: 180, column: 44, scope: !802)
!852 = !DILocation(line: 179, column: 31, scope: !802)
!853 = !DILocation(line: 179, column: 19, scope: !802)
!854 = !DILocation(line: 179, column: 30, scope: !802)
!855 = !DILocation(line: 181, column: 35, scope: !802)
!856 = !DILocation(line: 181, column: 19, scope: !802)
!857 = !DILocation(line: 181, column: 24, scope: !802)
!858 = !DILocation(line: 182, column: 29, scope: !859)
!859 = distinct !DILexicalBlock(scope: !802, file: !482, line: 182, column: 7)
!860 = !DILocation(line: 182, column: 7, scope: !802)
!861 = !DILocation(line: 183, column: 12, scope: !859)
!862 = !DILocation(line: 183, column: 5, scope: !859)
!863 = !DILocation(line: 185, column: 19, scope: !802)
!864 = !DILocation(line: 185, column: 28, scope: !802)
!865 = !{!750, !751, i64 4184}
!866 = !DILocation(line: 186, column: 3, scope: !802)
!867 = !DISubprogram(name: "AcquireMagickMemory", scope: !868, file: !868, line: 40, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!868 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!869 = !DISubroutineType(types: !870)
!870 = !{!505, !788}
!871 = !DISubprogram(name: "GetExceptionInfo", scope: !4, file: !4, line: 166, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!872 = !DISubprogram(name: "ThrowMagickException", scope: !4, file: !4, line: 156, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!873 = !DISubroutineType(types: !874)
!874 = !{!507, !493, !661, !661, !788, !875, !661, !661, null}
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!876 = !DISubprogram(name: "CatchException", scope: !4, file: !4, line: 164, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!877 = !DISubprogram(name: "DestroyExceptionInfo", scope: !4, file: !4, line: 148, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!878 = !DISubroutineType(types: !879)
!879 = !{!493, !493}
!880 = !DISubprogram(name: "MagickWandTerminus", scope: !881, file: !881, line: 116, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!881 = !DIFile(filename: "apps/538.imagick_r/src/wand/MagickWand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ffc9981fe595b674b5932183b4455d96")
!882 = !DISubroutineType(types: !883)
!883 = !{null}
!884 = !DISubprogram(name: "ResetMagickMemory", scope: !868, file: !868, line: 52, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!885 = !DISubroutineType(types: !886)
!886 = !{!505, !505, !500, !788}
!887 = !DISubprogram(name: "AcquireWandId", scope: !888, file: !888, line: 26, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!888 = !DIFile(filename: "apps/538.imagick_r/src/wand/wand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04fee0d7de953bb2b067eac76943bcb6")
!889 = !DISubroutineType(types: !890)
!890 = !{!485}
!891 = !DISubprogram(name: "FormatLocaleString", scope: !892, file: !892, line: 71, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!892 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!893 = !DISubroutineType(types: !894)
!894 = !{!525, !895, !788, !896, null}
!895 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !502)
!896 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !661)
!897 = !DISubprogram(name: "AcquireExceptionInfo", scope: !4, file: !4, line: 146, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!898 = !DISubroutineType(types: !899)
!899 = !{!493}
!900 = !DISubprogram(name: "InheritException", scope: !4, file: !4, line: 167, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !493, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!905 = !DISubprogram(name: "CloneCacheView", scope: !449, file: !449, line: 56, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!906 = !DISubroutineType(types: !907)
!907 = !{!515, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!910 = !DISubprogram(name: "ClonePixelWands", scope: !537, file: !537, line: 59, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!911 = !DISubroutineType(types: !912)
!912 = !{!534, !542, !788}
!913 = distinct !DISubprogram(name: "DestroyPixelIterator", scope: !482, file: !482, line: 211, type: !914, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{!478, !478}
!916 = !{!917}
!917 = !DILocalVariable(name: "iterator", arg: 1, scope: !913, file: !482, line: 211, type: !478)
!918 = !DILocation(line: 0, scope: !913)
!919 = !DILocation(line: 215, column: 17, scope: !920)
!920 = distinct !DILexicalBlock(scope: !913, file: !482, line: 215, column: 7)
!921 = !DILocation(line: 215, column: 23, scope: !920)
!922 = !DILocation(line: 215, column: 7, scope: !913)
!923 = !DILocation(line: 216, column: 70, scope: !920)
!924 = !DILocation(line: 216, column: 12, scope: !920)
!925 = !DILocation(line: 216, column: 5, scope: !920)
!926 = !DILocation(line: 217, column: 45, scope: !913)
!927 = !DILocation(line: 217, column: 18, scope: !913)
!928 = !DILocation(line: 217, column: 17, scope: !913)
!929 = !DILocation(line: 218, column: 53, scope: !913)
!930 = !DILocation(line: 219, column: 15, scope: !913)
!931 = !DILocation(line: 219, column: 22, scope: !913)
!932 = !DILocation(line: 218, column: 25, scope: !913)
!933 = !DILocation(line: 218, column: 24, scope: !913)
!934 = !DILocation(line: 220, column: 54, scope: !913)
!935 = !DILocation(line: 220, column: 23, scope: !913)
!936 = !DILocation(line: 220, column: 22, scope: !913)
!937 = !DILocation(line: 221, column: 13, scope: !913)
!938 = !DILocation(line: 221, column: 22, scope: !913)
!939 = !DILocation(line: 222, column: 30, scope: !913)
!940 = !DILocation(line: 222, column: 3, scope: !913)
!941 = !DILocation(line: 223, column: 30, scope: !913)
!942 = !DILocation(line: 224, column: 3, scope: !913)
!943 = !DISubprogram(name: "DestroyCacheView", scope: !449, file: !449, line: 57, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!944 = !DISubroutineType(types: !945)
!945 = !{!515, !515}
!946 = !DISubprogram(name: "RelinquishWandId", scope: !888, file: !888, line: 30, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !788}
!949 = !DISubprogram(name: "RelinquishMagickMemory", scope: !868, file: !868, line: 51, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!950 = !DISubroutineType(types: !951)
!951 = !{!505, !505}
!952 = distinct !DISubprogram(name: "IsPixelIterator", scope: !482, file: !482, line: 250, type: !953, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{!507, !545}
!955 = !{!956, !957}
!956 = !DILocalVariable(name: "iterator", arg: 1, scope: !952, file: !482, line: 250, type: !545)
!957 = !DILocalVariable(name: "length", scope: !952, file: !482, line: 253, type: !485)
!958 = !DILocation(line: 0, scope: !952)
!959 = !DILocation(line: 255, column: 16, scope: !960)
!960 = distinct !DILexicalBlock(scope: !952, file: !482, line: 255, column: 7)
!961 = !DILocation(line: 255, column: 7, scope: !952)
!962 = !DILocation(line: 257, column: 17, scope: !963)
!963 = distinct !DILexicalBlock(scope: !952, file: !482, line: 257, column: 7)
!964 = !DILocation(line: 257, column: 27, scope: !963)
!965 = !DILocation(line: 257, column: 7, scope: !952)
!966 = !DILocation(line: 260, column: 32, scope: !967)
!967 = distinct !DILexicalBlock(scope: !952, file: !482, line: 260, column: 7)
!968 = !DILocation(line: 260, column: 7, scope: !967)
!969 = !DILocation(line: 260, column: 61, scope: !967)
!970 = !DILocation(line: 263, column: 1, scope: !952)
!971 = !DISubprogram(name: "LocaleNCompare", scope: !972, file: !972, line: 67, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!972 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!973 = !DISubroutineType(types: !974)
!974 = !{!500, !661, !661, !788}
!975 = distinct !DISubprogram(name: "NewPixelIterator", scope: !482, file: !482, line: 287, type: !976, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1136)
!976 = !DISubroutineType(types: !977)
!977 = !{!478, !978}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickWand", file: !881, line: 69, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickWand", file: !981, line: 50, size: 33280, elements: !982)
!981 = !DIFile(filename: "apps/538.imagick_r/src/wand/magick-wand-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "acd9e5d3507eb9a242a35f2a3efc4904")
!982 = !{!983, !984, !985, !986, !1118, !1131, !1132, !1133, !1134, !1135}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !980, file: !981, line: 53, baseType: !485, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !980, file: !981, line: 56, baseType: !488, size: 32768, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !980, file: !981, line: 59, baseType: !493, size: 64, offset: 32832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !980, file: !981, line: 62, baseType: !987, size: 64, offset: 32896)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !78, line: 223, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !133, line: 356, size: 134336, elements: !990)
!990 = !{!991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1025, !1026, !1027, !1028, !1029, !1030, !1032, !1033, !1034, !1035, !1036, !1037, !1047, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1115, !1116, !1117}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !989, file: !133, line: 359, baseType: !556, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !989, file: !133, line: 362, baseType: !559, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !989, file: !133, line: 365, baseType: !507, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !989, file: !133, line: 366, baseType: !507, size: 32, offset: 96)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !989, file: !133, line: 367, baseType: !507, size: 32, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !989, file: !133, line: 368, baseType: !507, size: 32, offset: 160)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !989, file: !133, line: 371, baseType: !502, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !989, file: !133, line: 372, baseType: !502, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !989, file: !133, line: 373, baseType: !502, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !989, file: !133, line: 374, baseType: !502, size: 64, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !989, file: !133, line: 377, baseType: !485, size: 64, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !989, file: !133, line: 378, baseType: !485, size: 64, offset: 512)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !989, file: !133, line: 379, baseType: !485, size: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !989, file: !133, line: 382, baseType: !615, size: 32, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !989, file: !133, line: 385, baseType: !617, size: 32, offset: 672)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !989, file: !133, line: 388, baseType: !599, size: 32, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !989, file: !133, line: 391, baseType: !485, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !989, file: !133, line: 394, baseType: !502, size: 64, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !989, file: !133, line: 395, baseType: !502, size: 64, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !989, file: !133, line: 396, baseType: !502, size: 64, offset: 960)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !989, file: !133, line: 397, baseType: !502, size: 64, offset: 1024)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !989, file: !133, line: 398, baseType: !502, size: 64, offset: 1088)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !989, file: !133, line: 401, baseType: !541, size: 64, offset: 1152)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !989, file: !133, line: 402, baseType: !541, size: 64, offset: 1216)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !989, file: !133, line: 405, baseType: !568, size: 64, offset: 1280)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !989, file: !133, line: 406, baseType: !568, size: 64, offset: 1344)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !989, file: !133, line: 407, baseType: !568, size: 64, offset: 1408)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !989, file: !133, line: 410, baseType: !507, size: 32, offset: 1472)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !989, file: !133, line: 411, baseType: !507, size: 32, offset: 1504)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !989, file: !133, line: 414, baseType: !485, size: 64, offset: 1536)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !989, file: !133, line: 417, baseType: !554, size: 32, offset: 1600)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !989, file: !133, line: 420, baseType: !717, size: 32, offset: 1632)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !989, file: !133, line: 423, baseType: !1024, size: 32, offset: 1664)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !217, line: 59, baseType: !216)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !989, file: !133, line: 426, baseType: !525, size: 64, offset: 1728)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !989, file: !133, line: 429, baseType: !507, size: 32, offset: 1792)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !989, file: !133, line: 430, baseType: !507, size: 32, offset: 1824)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !989, file: !133, line: 433, baseType: !502, size: 64, offset: 1856)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !989, file: !133, line: 434, baseType: !502, size: 64, offset: 1920)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !989, file: !133, line: 437, baseType: !1031, size: 32, offset: 1984)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !78, line: 202, baseType: !249)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !989, file: !133, line: 440, baseType: !547, size: 64, offset: 2048)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !989, file: !133, line: 443, baseType: !505, size: 64, offset: 2112)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !989, file: !133, line: 446, baseType: !656, size: 64, offset: 2176)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !989, file: !133, line: 449, baseType: !505, size: 64, offset: 2240)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !989, file: !133, line: 450, baseType: !505, size: 64, offset: 2304)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !989, file: !133, line: 453, baseType: !1038, size: 64, offset: 2368)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !1039, line: 26, baseType: !1040)
!1039 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!485, !1043, !1045, !788}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !989, file: !133, line: 456, baseType: !1048, size: 64, offset: 2432)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1050, line: 7, baseType: !1051)
!1050 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1052, line: 49, size: 1728, elements: !1053)
!1052 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1069, !1071, !1072, !1073, !1075, !1076, !1078, !1082, !1085, !1087, !1090, !1093, !1094, !1095, !1096, !1097}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1051, file: !1052, line: 51, baseType: !500, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1051, file: !1052, line: 54, baseType: !502, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1051, file: !1052, line: 55, baseType: !502, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1051, file: !1052, line: 56, baseType: !502, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1051, file: !1052, line: 57, baseType: !502, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1051, file: !1052, line: 58, baseType: !502, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1051, file: !1052, line: 59, baseType: !502, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1051, file: !1052, line: 60, baseType: !502, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1051, file: !1052, line: 61, baseType: !502, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1051, file: !1052, line: 64, baseType: !502, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1051, file: !1052, line: 65, baseType: !502, size: 64, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1051, file: !1052, line: 66, baseType: !502, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1051, file: !1052, line: 68, baseType: !1067, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1052, line: 36, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1051, file: !1052, line: 70, baseType: !1070, size: 64, offset: 832)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1051, file: !1052, line: 72, baseType: !500, size: 32, offset: 896)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1051, file: !1052, line: 73, baseType: !500, size: 32, offset: 928)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1051, file: !1052, line: 74, baseType: !1074, size: 64, offset: 960)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !528, line: 152, baseType: !529)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1051, file: !1052, line: 77, baseType: !573, size: 16, offset: 1024)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1051, file: !1052, line: 78, baseType: !1077, size: 8, offset: 1040)
!1077 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1051, file: !1052, line: 79, baseType: !1079, size: 8, offset: 1048)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 8, elements: !1080)
!1080 = !{!1081}
!1081 = !DISubrange(count: 1)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1051, file: !1052, line: 81, baseType: !1083, size: 64, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1052, line: 43, baseType: null)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1051, file: !1052, line: 89, baseType: !1086, size: 64, offset: 1152)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !528, line: 153, baseType: !529)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1051, file: !1052, line: 91, baseType: !1088, size: 64, offset: 1216)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1052, line: 37, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1051, file: !1052, line: 92, baseType: !1091, size: 64, offset: 1280)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1052, line: 38, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1051, file: !1052, line: 93, baseType: !1070, size: 64, offset: 1344)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1051, file: !1052, line: 94, baseType: !505, size: 64, offset: 1408)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1051, file: !1052, line: 95, baseType: !485, size: 64, offset: 1472)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1051, file: !1052, line: 96, baseType: !500, size: 32, offset: 1536)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1051, file: !1052, line: 98, baseType: !1098, size: 160, offset: 1568)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 160, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 20)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !989, file: !133, line: 459, baseType: !505, size: 64, offset: 2496)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !989, file: !133, line: 462, baseType: !485, size: 64, offset: 2560)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !989, file: !133, line: 465, baseType: !488, size: 32768, offset: 2624)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !989, file: !133, line: 466, baseType: !488, size: 32768, offset: 35392)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !989, file: !133, line: 467, baseType: !488, size: 32768, offset: 68160)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !989, file: !133, line: 468, baseType: !488, size: 32768, offset: 100928)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !989, file: !133, line: 471, baseType: !507, size: 32, offset: 133696)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !989, file: !133, line: 474, baseType: !502, size: 64, offset: 133760)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !989, file: !133, line: 477, baseType: !485, size: 64, offset: 133824)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !989, file: !133, line: 478, baseType: !485, size: 64, offset: 133888)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !989, file: !133, line: 481, baseType: !568, size: 64, offset: 133952)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !989, file: !133, line: 484, baseType: !485, size: 64, offset: 134016)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !989, file: !133, line: 487, baseType: !1114, size: 32, offset: 134080)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !449, line: 47, baseType: !448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !989, file: !133, line: 490, baseType: !568, size: 64, offset: 134112)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !989, file: !133, line: 493, baseType: !505, size: 64, offset: 134208)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !989, file: !133, line: 496, baseType: !507, size: 32, offset: 134272)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_info", scope: !980, file: !981, line: 65, baseType: !1119, size: 64, offset: 32960)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantizeInfo", file: !470, line: 57, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantizeInfo", file: !470, line: 35, size: 384, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "number_colors", scope: !1121, file: !470, line: 38, baseType: !485, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tree_depth", scope: !1121, file: !470, line: 41, baseType: !485, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !1121, file: !470, line: 44, baseType: !507, size: 32, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1121, file: !470, line: 47, baseType: !554, size: 32, offset: 160)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "measure_error", scope: !1121, file: !470, line: 50, baseType: !507, size: 32, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1121, file: !470, line: 53, baseType: !485, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dither_method", scope: !1121, file: !470, line: 56, baseType: !1130, size: 32, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "DitherMethod", file: !470, line: 33, baseType: !469)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "images", scope: !980, file: !981, line: 68, baseType: !547, size: 64, offset: 33024)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "insert_before", scope: !980, file: !981, line: 71, baseType: !507, size: 32, offset: 33088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "image_pending", scope: !980, file: !981, line: 72, baseType: !507, size: 32, offset: 33120)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !980, file: !981, line: 73, baseType: !507, size: 32, offset: 33152)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !980, file: !981, line: 76, baseType: !485, size: 64, offset: 33216)
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1147}
!1137 = !DILocalVariable(name: "wand", arg: 1, scope: !975, file: !482, line: 287, type: !978)
!1138 = !DILocalVariable(name: "quantum", scope: !975, file: !482, line: 290, type: !661)
!1139 = !DILocalVariable(name: "exception", scope: !975, file: !482, line: 293, type: !493)
!1140 = !DILocalVariable(name: "image", scope: !975, file: !482, line: 296, type: !547)
!1141 = !DILocalVariable(name: "iterator", scope: !975, file: !482, line: 299, type: !478)
!1142 = !DILocalVariable(name: "depth", scope: !975, file: !482, line: 302, type: !485)
!1143 = !DILocalVariable(name: "view", scope: !975, file: !482, line: 305, type: !515)
!1144 = !DILocalVariable(name: "exception", scope: !1145, file: !482, line: 310, type: !494)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !482, line: 310, column: 5)
!1146 = distinct !DILexicalBlock(scope: !975, file: !482, line: 309, column: 7)
!1147 = !DILocalVariable(name: "exception", scope: !1148, file: !482, line: 321, type: !494)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !482, line: 321, column: 5)
!1149 = distinct !DILexicalBlock(scope: !975, file: !482, line: 320, column: 7)
!1150 = !DILocation(line: 0, scope: !975)
!1151 = !DILocation(line: 301, column: 3, scope: !975)
!1152 = !DILocation(line: 307, column: 8, scope: !975)
!1153 = !DILocation(line: 308, column: 11, scope: !975)
!1154 = !DILocation(line: 309, column: 7, scope: !1146)
!1155 = !DILocation(line: 309, column: 13, scope: !1146)
!1156 = !DILocation(line: 309, column: 7, scope: !975)
!1157 = !DILocation(line: 310, column: 5, scope: !1145)
!1158 = !DILocation(line: 312, column: 9, scope: !975)
!1159 = !DILocation(line: 313, column: 13, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !975, file: !482, line: 313, column: 7)
!1161 = !DILocation(line: 313, column: 7, scope: !975)
!1162 = !DILocation(line: 315, column: 13, scope: !975)
!1163 = !DILocation(line: 316, column: 8, scope: !975)
!1164 = !DILocation(line: 317, column: 12, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !975, file: !482, line: 317, column: 7)
!1166 = !DILocation(line: 317, column: 7, scope: !975)
!1167 = !DILocation(line: 319, column: 30, scope: !975)
!1168 = !DILocation(line: 320, column: 16, scope: !1149)
!1169 = !DILocation(line: 320, column: 7, scope: !975)
!1170 = !DILocation(line: 321, column: 5, scope: !1148)
!1171 = !{!1172, !1172, i64 0}
!1172 = !{!"int", !752, i64 0}
!1173 = !DILocation(line: 323, column: 10, scope: !975)
!1174 = !DILocation(line: 324, column: 16, scope: !975)
!1175 = !DILocation(line: 324, column: 15, scope: !975)
!1176 = !DILocation(line: 325, column: 39, scope: !975)
!1177 = !DILocation(line: 326, column: 21, scope: !975)
!1178 = !DILocation(line: 325, column: 10, scope: !975)
!1179 = !DILocation(line: 327, column: 13, scope: !975)
!1180 = !DILocation(line: 327, column: 22, scope: !975)
!1181 = !DILocation(line: 328, column: 13, scope: !975)
!1182 = !DILocation(line: 328, column: 17, scope: !975)
!1183 = !DILocation(line: 329, column: 32, scope: !975)
!1184 = !DILocation(line: 329, column: 3, scope: !975)
!1185 = !DILocation(line: 330, column: 33, scope: !975)
!1186 = !{!1187, !751, i64 40}
!1187 = !{!"_Image", !752, i64 0, !752, i64 4, !752, i64 8, !751, i64 16, !752, i64 24, !752, i64 28, !752, i64 32, !751, i64 40, !751, i64 48, !751, i64 56, !751, i64 64, !754, i64 72, !1188, i64 80, !1188, i64 88, !1188, i64 96, !1190, i64 104, !1191, i64 112, !752, i64 208, !754, i64 216, !752, i64 224, !754, i64 232, !754, i64 240, !754, i64 248, !751, i64 256, !1190, i64 264, !1190, i64 272, !755, i64 280, !755, i64 312, !755, i64 344, !1190, i64 376, !1190, i64 384, !1190, i64 392, !752, i64 400, !752, i64 404, !752, i64 408, !752, i64 412, !752, i64 416, !752, i64 420, !754, i64 424, !751, i64 432, !751, i64 440, !751, i64 448, !751, i64 456, !751, i64 464, !751, i64 472, !1193, i64 480, !1194, i64 504, !754, i64 568, !754, i64 576, !754, i64 584, !754, i64 592, !754, i64 600, !754, i64 608, !752, i64 616, !752, i64 4712, !752, i64 8808, !751, i64 12904, !751, i64 12912, !1196, i64 12920, !752, i64 12976, !751, i64 12984, !754, i64 12992, !1197, i64 13000, !1197, i64 13032, !754, i64 13064, !751, i64 13072, !751, i64 13080, !754, i64 13088, !754, i64 13096, !754, i64 13104, !752, i64 13112, !752, i64 13116, !1188, i64 13120, !754, i64 13128, !755, i64 13136, !754, i64 13168, !754, i64 13176, !752, i64 13184, !752, i64 13188, !1198, i64 13192, !752, i64 13200, !751, i64 13208, !751, i64 13216, !752, i64 13224, !751, i64 13232}
!1188 = !{!"_PixelPacket", !1189, i64 0, !1189, i64 2, !1189, i64 4, !1189, i64 6}
!1189 = !{!"short", !752, i64 0}
!1190 = !{!"double", !752, i64 0}
!1191 = !{!"_ChromaticityInfo", !1192, i64 0, !1192, i64 24, !1192, i64 48, !1192, i64 72}
!1192 = !{!"_PrimaryInfo", !1190, i64 0, !1190, i64 8, !1190, i64 16}
!1193 = !{!"_ErrorInfo", !1190, i64 0, !1190, i64 8, !1190, i64 16}
!1194 = !{!"_TimerInfo", !1195, i64 0, !1195, i64 24, !752, i64 48, !751, i64 56}
!1195 = !{!"_Timer", !1190, i64 0, !1190, i64 8, !1190, i64 16}
!1196 = !{!"_ExceptionInfo", !752, i64 0, !1172, i64 4, !754, i64 8, !754, i64 16, !754, i64 24, !752, i64 32, !754, i64 40, !751, i64 48}
!1197 = !{!"_ProfileInfo", !754, i64 0, !751, i64 8, !754, i64 16, !751, i64 24}
!1198 = !{!"long long", !752, i64 0}
!1199 = !DILocation(line: 330, column: 25, scope: !975)
!1200 = !DILocation(line: 331, column: 34, scope: !975)
!1201 = !{!1187, !751, i64 48}
!1202 = !DILocation(line: 331, column: 20, scope: !975)
!1203 = !DILocation(line: 331, column: 26, scope: !975)
!1204 = !{!750, !751, i64 4128}
!1205 = !DILocation(line: 332, column: 20, scope: !975)
!1206 = !DILocation(line: 333, column: 21, scope: !975)
!1207 = !DILocation(line: 334, column: 25, scope: !975)
!1208 = !DILocation(line: 334, column: 13, scope: !975)
!1209 = !DILocation(line: 334, column: 24, scope: !975)
!1210 = !DILocation(line: 335, column: 13, scope: !975)
!1211 = !DILocation(line: 335, column: 14, scope: !975)
!1212 = !DILocation(line: 336, column: 19, scope: !975)
!1213 = !DILocation(line: 336, column: 13, scope: !975)
!1214 = !DILocation(line: 336, column: 18, scope: !975)
!1215 = !DILocation(line: 337, column: 23, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !975, file: !482, line: 337, column: 7)
!1217 = !DILocation(line: 337, column: 7, scope: !975)
!1218 = !DILocation(line: 338, column: 12, scope: !1216)
!1219 = !DILocation(line: 338, column: 5, scope: !1216)
!1220 = !DILocation(line: 339, column: 13, scope: !975)
!1221 = !DILocation(line: 339, column: 22, scope: !975)
!1222 = !DILocation(line: 340, column: 3, scope: !975)
!1223 = !DILocation(line: 341, column: 1, scope: !975)
!1224 = !DISubprogram(name: "GetMagickQuantumDepth", scope: !1225, file: !1225, line: 98, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1225 = !DIFile(filename: "apps/538.imagick_r/src/magick/version.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5bbd8280cb91779d444e54bd210c3e35")
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!661, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1229 = !DISubprogram(name: "GetImageFromMagickWand", scope: !1230, file: !1230, line: 65, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1230 = !DIFile(filename: "apps/538.imagick_r/src/wand/magick-image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3750484d096928011bb7a6e3bfd549de")
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!547, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!1235 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !449, file: !449, line: 55, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!515, !1043, !493}
!1238 = !DISubprogram(name: "GetExceptionMessage", scope: !4, file: !4, line: 137, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!502, !1241}
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!1242 = !DISubprogram(name: "SetGeometry", scope: !320, file: !320, line: 154, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !1043, !1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1246 = distinct !DISubprogram(name: "PixelClearIteratorException", scope: !482, file: !482, line: 366, type: !1247, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!507, !478}
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "iterator", arg: 1, scope: !1246, file: !482, line: 367, type: !478)
!1251 = !DILocation(line: 0, scope: !1246)
!1252 = !DILocation(line: 371, column: 17, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1246, file: !482, line: 371, column: 7)
!1254 = !DILocation(line: 371, column: 23, scope: !1253)
!1255 = !DILocation(line: 371, column: 7, scope: !1246)
!1256 = !DILocation(line: 372, column: 70, scope: !1253)
!1257 = !DILocation(line: 372, column: 12, scope: !1253)
!1258 = !DILocation(line: 372, column: 5, scope: !1253)
!1259 = !DILocation(line: 373, column: 34, scope: !1246)
!1260 = !DILocation(line: 373, column: 3, scope: !1246)
!1261 = !DILocation(line: 374, column: 3, scope: !1246)
!1262 = distinct !DISubprogram(name: "NewPixelRegionIterator", scope: !482, file: !482, line: 403, type: !1263, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1266)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!478, !978, !1265, !1265, !788, !788}
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1281, !1284}
!1267 = !DILocalVariable(name: "wand", arg: 1, scope: !1262, file: !482, line: 403, type: !978)
!1268 = !DILocalVariable(name: "x", arg: 2, scope: !1262, file: !482, line: 404, type: !1265)
!1269 = !DILocalVariable(name: "y", arg: 3, scope: !1262, file: !482, line: 404, type: !1265)
!1270 = !DILocalVariable(name: "width", arg: 4, scope: !1262, file: !482, line: 404, type: !788)
!1271 = !DILocalVariable(name: "height", arg: 5, scope: !1262, file: !482, line: 404, type: !788)
!1272 = !DILocalVariable(name: "view", scope: !1262, file: !482, line: 407, type: !515)
!1273 = !DILocalVariable(name: "quantum", scope: !1262, file: !482, line: 410, type: !661)
!1274 = !DILocalVariable(name: "exception", scope: !1262, file: !482, line: 413, type: !493)
!1275 = !DILocalVariable(name: "image", scope: !1262, file: !482, line: 416, type: !547)
!1276 = !DILocalVariable(name: "iterator", scope: !1262, file: !482, line: 419, type: !478)
!1277 = !DILocalVariable(name: "depth", scope: !1262, file: !482, line: 422, type: !485)
!1278 = !DILocalVariable(name: "exception", scope: !1279, file: !482, line: 428, type: !494)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !482, line: 428, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1262, file: !482, line: 427, column: 7)
!1281 = !DILocalVariable(name: "exception", scope: !1282, file: !482, line: 430, type: !494)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !482, line: 430, column: 5)
!1283 = distinct !DILexicalBlock(scope: !1262, file: !482, line: 429, column: 7)
!1284 = !DILocalVariable(name: "exception", scope: !1285, file: !482, line: 440, type: !494)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !482, line: 440, column: 5)
!1286 = distinct !DILexicalBlock(scope: !1262, file: !482, line: 439, column: 7)
!1287 = !DILocation(line: 0, scope: !1262)
!1288 = !DILocation(line: 421, column: 3, scope: !1262)
!1289 = !DILocation(line: 425, column: 8, scope: !1262)
!1290 = !DILocation(line: 426, column: 11, scope: !1262)
!1291 = !DILocation(line: 427, column: 7, scope: !1280)
!1292 = !DILocation(line: 427, column: 13, scope: !1280)
!1293 = !DILocation(line: 427, column: 7, scope: !1262)
!1294 = !DILocation(line: 428, column: 5, scope: !1279)
!1295 = !DILocation(line: 429, column: 14, scope: !1283)
!1296 = !DILocation(line: 429, column: 20, scope: !1283)
!1297 = !DILocation(line: 430, column: 5, scope: !1282)
!1298 = !DILocation(line: 431, column: 9, scope: !1262)
!1299 = !DILocation(line: 432, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1262, file: !482, line: 432, column: 7)
!1301 = !DILocation(line: 432, column: 7, scope: !1262)
!1302 = !DILocation(line: 434, column: 13, scope: !1262)
!1303 = !DILocation(line: 435, column: 8, scope: !1262)
!1304 = !DILocation(line: 436, column: 12, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1262, file: !482, line: 436, column: 7)
!1306 = !DILocation(line: 436, column: 7, scope: !1262)
!1307 = !DILocation(line: 438, column: 30, scope: !1262)
!1308 = !DILocation(line: 439, column: 16, scope: !1286)
!1309 = !DILocation(line: 439, column: 7, scope: !1262)
!1310 = !DILocation(line: 440, column: 5, scope: !1285)
!1311 = !DILocation(line: 442, column: 10, scope: !1262)
!1312 = !DILocation(line: 443, column: 16, scope: !1262)
!1313 = !DILocation(line: 443, column: 15, scope: !1262)
!1314 = !DILocation(line: 444, column: 39, scope: !1262)
!1315 = !DILocation(line: 445, column: 21, scope: !1262)
!1316 = !DILocation(line: 444, column: 10, scope: !1262)
!1317 = !DILocation(line: 446, column: 13, scope: !1262)
!1318 = !DILocation(line: 446, column: 22, scope: !1262)
!1319 = !DILocation(line: 447, column: 13, scope: !1262)
!1320 = !DILocation(line: 447, column: 17, scope: !1262)
!1321 = !DILocation(line: 448, column: 32, scope: !1262)
!1322 = !DILocation(line: 448, column: 3, scope: !1262)
!1323 = !DILocation(line: 449, column: 25, scope: !1262)
!1324 = !DILocation(line: 450, column: 20, scope: !1262)
!1325 = !DILocation(line: 450, column: 26, scope: !1262)
!1326 = !DILocation(line: 451, column: 20, scope: !1262)
!1327 = !DILocation(line: 451, column: 21, scope: !1262)
!1328 = !{!750, !751, i64 4136}
!1329 = !DILocation(line: 452, column: 20, scope: !1262)
!1330 = !DILocation(line: 452, column: 21, scope: !1262)
!1331 = !{!750, !751, i64 4144}
!1332 = !DILocation(line: 453, column: 25, scope: !1262)
!1333 = !DILocation(line: 453, column: 13, scope: !1262)
!1334 = !DILocation(line: 453, column: 24, scope: !1262)
!1335 = !DILocation(line: 454, column: 13, scope: !1262)
!1336 = !DILocation(line: 454, column: 14, scope: !1262)
!1337 = !DILocation(line: 455, column: 19, scope: !1262)
!1338 = !DILocation(line: 455, column: 13, scope: !1262)
!1339 = !DILocation(line: 455, column: 18, scope: !1262)
!1340 = !DILocation(line: 456, column: 23, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1262, file: !482, line: 456, column: 7)
!1342 = !DILocation(line: 456, column: 7, scope: !1262)
!1343 = !DILocation(line: 457, column: 12, scope: !1341)
!1344 = !DILocation(line: 457, column: 5, scope: !1341)
!1345 = !DILocation(line: 458, column: 13, scope: !1262)
!1346 = !DILocation(line: 458, column: 22, scope: !1262)
!1347 = !DILocation(line: 459, column: 3, scope: !1262)
!1348 = !DILocation(line: 460, column: 1, scope: !1262)
!1349 = distinct !DISubprogram(name: "PixelGetCurrentIteratorRow", scope: !482, file: !482, line: 488, type: !1350, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!534, !478, !1228}
!1352 = !{!1353, !1354, !1355, !1356, !1357}
!1353 = !DILocalVariable(name: "iterator", arg: 1, scope: !1349, file: !482, line: 488, type: !478)
!1354 = !DILocalVariable(name: "number_wands", arg: 2, scope: !1349, file: !482, line: 489, type: !1228)
!1355 = !DILocalVariable(name: "indexes", scope: !1349, file: !482, line: 492, type: !731)
!1356 = !DILocalVariable(name: "pixels", scope: !1349, file: !482, line: 495, type: !729)
!1357 = !DILocalVariable(name: "x", scope: !1349, file: !482, line: 498, type: !525)
!1358 = !DILocation(line: 0, scope: !1349)
!1359 = !DILocation(line: 502, column: 17, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1349, file: !482, line: 502, column: 7)
!1361 = !DILocation(line: 502, column: 23, scope: !1360)
!1362 = !DILocation(line: 502, column: 7, scope: !1349)
!1363 = !DILocation(line: 503, column: 70, scope: !1360)
!1364 = !DILocation(line: 503, column: 12, scope: !1360)
!1365 = !DILocation(line: 503, column: 5, scope: !1360)
!1366 = !DILocation(line: 504, column: 16, scope: !1349)
!1367 = !DILocation(line: 505, column: 13, scope: !1349)
!1368 = !DILocation(line: 505, column: 19, scope: !1349)
!1369 = !DILocation(line: 506, column: 46, scope: !1349)
!1370 = !DILocation(line: 506, column: 61, scope: !1349)
!1371 = !DILocation(line: 506, column: 68, scope: !1349)
!1372 = !DILocation(line: 507, column: 22, scope: !1349)
!1373 = !DILocation(line: 507, column: 34, scope: !1349)
!1374 = !DILocation(line: 507, column: 23, scope: !1349)
!1375 = !DILocation(line: 507, column: 53, scope: !1349)
!1376 = !DILocation(line: 508, column: 15, scope: !1349)
!1377 = !DILocation(line: 506, column: 10, scope: !1349)
!1378 = !DILocation(line: 509, column: 14, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1349, file: !482, line: 509, column: 7)
!1380 = !DILocation(line: 509, column: 7, scope: !1349)
!1381 = !DILocation(line: 511, column: 34, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !482, line: 510, column: 5)
!1383 = !DILocation(line: 512, column: 19, scope: !1382)
!1384 = !DILocation(line: 511, column: 44, scope: !1382)
!1385 = !DILocation(line: 511, column: 7, scope: !1382)
!1386 = !DILocation(line: 513, column: 7, scope: !1382)
!1387 = !DILocation(line: 515, column: 51, scope: !1349)
!1388 = !DILocation(line: 515, column: 11, scope: !1349)
!1389 = !DILocation(line: 516, column: 44, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !482, line: 516, column: 3)
!1391 = distinct !DILexicalBlock(scope: !1349, file: !482, line: 516, column: 3)
!1392 = !DILocation(line: 516, column: 15, scope: !1390)
!1393 = !DILocation(line: 516, column: 3, scope: !1391)
!1394 = !DILocation(line: 517, column: 36, scope: !1390)
!1395 = !DILocation(line: 517, column: 26, scope: !1390)
!1396 = !{!754, !754, i64 0}
!1397 = !DILocation(line: 517, column: 57, scope: !1390)
!1398 = !DILocation(line: 517, column: 5, scope: !1390)
!1399 = !DILocation(line: 516, column: 52, scope: !1390)
!1400 = distinct !{!1400, !1393, !1401, !1402, !1403}
!1401 = !DILocation(line: 517, column: 59, scope: !1391)
!1402 = !{!"llvm.loop.mustprogress"}
!1403 = !{!"llvm.loop.unroll.disable"}
!1404 = !DILocation(line: 518, column: 40, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1349, file: !482, line: 518, column: 7)
!1406 = !DILocation(line: 518, column: 7, scope: !1405)
!1407 = !DILocation(line: 518, column: 46, scope: !1405)
!1408 = !DILocation(line: 518, column: 7, scope: !1349)
!1409 = !DILocation(line: 519, column: 46, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !482, line: 519, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !482, line: 519, column: 5)
!1412 = !DILocation(line: 519, column: 17, scope: !1410)
!1413 = !DILocation(line: 519, column: 5, scope: !1411)
!1414 = !DILocation(line: 520, column: 38, scope: !1410)
!1415 = !DILocation(line: 520, column: 28, scope: !1410)
!1416 = !DILocation(line: 521, column: 9, scope: !1410)
!1417 = !{!1189, !1189, i64 0}
!1418 = !DILocation(line: 520, column: 7, scope: !1410)
!1419 = !DILocation(line: 519, column: 54, scope: !1410)
!1420 = distinct !{!1420, !1413, !1421, !1402, !1403}
!1421 = !DILocation(line: 521, column: 33, scope: !1411)
!1422 = !DILocation(line: 522, column: 42, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1349, file: !482, line: 522, column: 7)
!1424 = !DILocation(line: 522, column: 7, scope: !1423)
!1425 = !DILocation(line: 522, column: 48, scope: !1423)
!1426 = !DILocation(line: 522, column: 7, scope: !1349)
!1427 = !DILocation(line: 523, column: 5, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !482, line: 523, column: 5)
!1429 = !DILocation(line: 524, column: 31, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1428, file: !482, line: 523, column: 5)
!1431 = !DILocation(line: 524, column: 21, scope: !1430)
!1432 = !DILocation(line: 525, column: 9, scope: !1430)
!1433 = !DILocation(line: 524, column: 7, scope: !1430)
!1434 = !DILocation(line: 523, column: 54, scope: !1430)
!1435 = !DILocation(line: 523, column: 46, scope: !1430)
!1436 = !DILocation(line: 523, column: 17, scope: !1430)
!1437 = distinct !{!1437, !1427, !1438, !1402, !1403}
!1438 = !DILocation(line: 525, column: 33, scope: !1428)
!1439 = !DILocation(line: 526, column: 34, scope: !1349)
!1440 = !DILocation(line: 526, column: 16, scope: !1349)
!1441 = !DILocation(line: 527, column: 20, scope: !1349)
!1442 = !DILocation(line: 527, column: 3, scope: !1349)
!1443 = !DILocation(line: 528, column: 1, scope: !1349)
!1444 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !449, file: !449, line: 69, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!729, !908, !1265, !1265, !788, !788, !493}
!1447 = !DISubprogram(name: "GetCacheViewException", scope: !449, file: !449, line: 74, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!493, !908}
!1450 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !449, file: !449, line: 66, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!731, !908}
!1453 = !DISubprogram(name: "PixelSetQuantumColor", scope: !537, file: !537, line: 104, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !535, !729}
!1456 = !DISubprogram(name: "GetCacheViewColorspace", scope: !449, file: !449, line: 63, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!554, !908}
!1459 = !DISubprogram(name: "PixelSetBlackQuantum", scope: !537, file: !537, line: 87, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !535, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!1463 = !DISubprogram(name: "GetCacheViewStorageClass", scope: !449, file: !449, line: 60, type: !1464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!552, !908}
!1466 = !DISubprogram(name: "PixelSetIndex", scope: !537, file: !537, line: 98, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !535, !732}
!1469 = distinct !DISubprogram(name: "PixelGetIteratorException", scope: !482, file: !482, line: 556, type: !1470, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1473)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!502, !545, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!1473 = !{!1474, !1475, !1476, !1477}
!1474 = !DILocalVariable(name: "iterator", arg: 1, scope: !1469, file: !482, line: 556, type: !545)
!1475 = !DILocalVariable(name: "severity", arg: 2, scope: !1469, file: !482, line: 557, type: !1472)
!1476 = !DILocalVariable(name: "description", scope: !1469, file: !482, line: 560, type: !502)
!1477 = !DILocalVariable(name: "exception", scope: !1478, file: !482, line: 571, type: !494)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !482, line: 571, column: 5)
!1479 = distinct !DILexicalBlock(scope: !1469, file: !482, line: 570, column: 7)
!1480 = !DILocation(line: 0, scope: !1469)
!1481 = !DILocation(line: 564, column: 17, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1469, file: !482, line: 564, column: 7)
!1483 = !DILocation(line: 564, column: 23, scope: !1482)
!1484 = !DILocation(line: 564, column: 7, scope: !1469)
!1485 = !DILocation(line: 565, column: 70, scope: !1482)
!1486 = !DILocation(line: 565, column: 12, scope: !1482)
!1487 = !DILocation(line: 565, column: 5, scope: !1482)
!1488 = !DILocation(line: 567, column: 23, scope: !1469)
!1489 = !DILocation(line: 567, column: 34, scope: !1469)
!1490 = !{!1196, !752, i64 0}
!1491 = !DILocation(line: 567, column: 12, scope: !1469)
!1492 = !{!752, !752, i64 0}
!1493 = !DILocation(line: 568, column: 24, scope: !1469)
!1494 = !DILocation(line: 570, column: 19, scope: !1479)
!1495 = !DILocation(line: 570, column: 7, scope: !1469)
!1496 = !DILocation(line: 571, column: 5, scope: !1478)
!1497 = !DILocation(line: 573, column: 15, scope: !1469)
!1498 = !DILocation(line: 574, column: 17, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1469, file: !482, line: 574, column: 7)
!1500 = !DILocation(line: 574, column: 28, scope: !1499)
!1501 = !{!1196, !754, i64 8}
!1502 = !DILocation(line: 574, column: 35, scope: !1499)
!1503 = !DILocation(line: 574, column: 7, scope: !1469)
!1504 = !DILocation(line: 576, column: 28, scope: !1499)
!1505 = !DILocation(line: 575, column: 41, scope: !1499)
!1506 = !DILocation(line: 575, column: 12, scope: !1499)
!1507 = !DILocation(line: 577, column: 17, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1469, file: !482, line: 577, column: 7)
!1509 = !DILocation(line: 575, column: 5, scope: !1499)
!1510 = !DILocation(line: 577, column: 28, scope: !1508)
!1511 = !{!1196, !754, i64 16}
!1512 = !DILocation(line: 577, column: 40, scope: !1508)
!1513 = !DILocation(line: 577, column: 7, scope: !1469)
!1514 = !DILocation(line: 579, column: 14, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1508, file: !482, line: 578, column: 5)
!1516 = !DILocation(line: 581, column: 19, scope: !1515)
!1517 = !DILocation(line: 581, column: 30, scope: !1515)
!1518 = !DILocation(line: 581, column: 60, scope: !1515)
!1519 = !DILocation(line: 580, column: 50, scope: !1515)
!1520 = !DILocation(line: 580, column: 14, scope: !1515)
!1521 = !DILocation(line: 583, column: 14, scope: !1515)
!1522 = !DILocation(line: 584, column: 5, scope: !1515)
!1523 = !DILocation(line: 585, column: 3, scope: !1469)
!1524 = !DISubprogram(name: "AcquireQuantumMemory", scope: !868, file: !868, line: 42, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!505, !788, !788}
!1527 = !DISubprogram(name: "CopyMagickString", scope: !972, file: !972, line: 78, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!485, !502, !661, !788}
!1530 = !DISubprogram(name: "GetLocaleExceptionMessage", scope: !4, file: !4, line: 140, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!661, !875, !661}
!1533 = !DISubprogram(name: "ConcatenateMagickString", scope: !972, file: !972, line: 76, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1534 = distinct !DISubprogram(name: "PixelGetIteratorExceptionType", scope: !482, file: !482, line: 612, type: !1535, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!498, !545}
!1537 = !{!1538}
!1538 = !DILocalVariable(name: "iterator", arg: 1, scope: !1534, file: !482, line: 613, type: !545)
!1539 = !DILocation(line: 0, scope: !1534)
!1540 = !DILocation(line: 617, column: 17, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1534, file: !482, line: 617, column: 7)
!1542 = !DILocation(line: 617, column: 23, scope: !1541)
!1543 = !DILocation(line: 617, column: 7, scope: !1534)
!1544 = !DILocation(line: 618, column: 70, scope: !1541)
!1545 = !DILocation(line: 618, column: 12, scope: !1541)
!1546 = !DILocation(line: 618, column: 5, scope: !1541)
!1547 = !DILocation(line: 619, column: 20, scope: !1534)
!1548 = !DILocation(line: 619, column: 31, scope: !1534)
!1549 = !DILocation(line: 619, column: 3, scope: !1534)
!1550 = distinct !DISubprogram(name: "PixelGetIteratorRow", scope: !482, file: !482, line: 644, type: !1551, scopeLine: 645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!525, !478}
!1553 = !{!1554}
!1554 = !DILocalVariable(name: "iterator", arg: 1, scope: !1550, file: !482, line: 644, type: !478)
!1555 = !DILocation(line: 0, scope: !1550)
!1556 = !DILocation(line: 648, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !482, line: 648, column: 7)
!1558 = !DILocation(line: 648, column: 23, scope: !1557)
!1559 = !DILocation(line: 648, column: 7, scope: !1550)
!1560 = !DILocation(line: 649, column: 70, scope: !1557)
!1561 = !DILocation(line: 649, column: 12, scope: !1557)
!1562 = !DILocation(line: 649, column: 5, scope: !1557)
!1563 = !DILocation(line: 650, column: 20, scope: !1550)
!1564 = !DILocation(line: 650, column: 3, scope: !1550)
!1565 = distinct !DISubprogram(name: "PixelGetNextIteratorRow", scope: !482, file: !482, line: 679, type: !1350, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1566)
!1566 = !{!1567, !1568, !1569, !1570, !1571}
!1567 = !DILocalVariable(name: "iterator", arg: 1, scope: !1565, file: !482, line: 679, type: !478)
!1568 = !DILocalVariable(name: "number_wands", arg: 2, scope: !1565, file: !482, line: 680, type: !1228)
!1569 = !DILocalVariable(name: "indexes", scope: !1565, file: !482, line: 683, type: !731)
!1570 = !DILocalVariable(name: "pixels", scope: !1565, file: !482, line: 686, type: !729)
!1571 = !DILocalVariable(name: "x", scope: !1565, file: !482, line: 689, type: !525)
!1572 = !DILocation(line: 0, scope: !1565)
!1573 = !DILocation(line: 693, column: 17, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1565, file: !482, line: 693, column: 7)
!1575 = !DILocation(line: 693, column: 23, scope: !1574)
!1576 = !DILocation(line: 693, column: 7, scope: !1565)
!1577 = !DILocation(line: 694, column: 70, scope: !1574)
!1578 = !DILocation(line: 694, column: 12, scope: !1574)
!1579 = !DILocation(line: 694, column: 5, scope: !1574)
!1580 = !DILocation(line: 695, column: 16, scope: !1565)
!1581 = !DILocation(line: 696, column: 17, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1565, file: !482, line: 696, column: 7)
!1583 = !DILocation(line: 696, column: 24, scope: !1582)
!1584 = !DILocation(line: 696, column: 7, scope: !1565)
!1585 = !DILocation(line: 697, column: 16, scope: !1582)
!1586 = !DILocation(line: 697, column: 5, scope: !1582)
!1587 = !DILocation(line: 698, column: 46, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1565, file: !482, line: 698, column: 7)
!1589 = !DILocalVariable(name: "iterator", arg: 1, scope: !1590, file: !482, line: 893, type: !478)
!1590 = distinct !DISubprogram(name: "PixelSetIteratorRow", scope: !482, file: !482, line: 893, type: !1591, scopeLine: 895, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!507, !478, !1265}
!1593 = !{!1589, !1594}
!1594 = !DILocalVariable(name: "row", arg: 2, scope: !1590, file: !482, line: 894, type: !1265)
!1595 = !DILocation(line: 0, scope: !1590, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 698, column: 7, scope: !1588)
!1597 = !DILocation(line: 898, column: 17, scope: !1598, inlinedAt: !1596)
!1598 = distinct !DILexicalBlock(scope: !1590, file: !482, line: 898, column: 7)
!1599 = !DILocation(line: 898, column: 23, scope: !1598, inlinedAt: !1596)
!1600 = !DILocation(line: 898, column: 7, scope: !1590, inlinedAt: !1596)
!1601 = !DILocation(line: 899, column: 70, scope: !1598, inlinedAt: !1596)
!1602 = !DILocation(line: 899, column: 12, scope: !1598, inlinedAt: !1596)
!1603 = !DILocation(line: 899, column: 5, scope: !1598, inlinedAt: !1596)
!1604 = !DILocation(line: 900, column: 12, scope: !1605, inlinedAt: !1596)
!1605 = distinct !DILexicalBlock(scope: !1590, file: !482, line: 900, column: 7)
!1606 = !DILocation(line: 900, column: 17, scope: !1605, inlinedAt: !1596)
!1607 = !DILocation(line: 900, column: 55, scope: !1605, inlinedAt: !1596)
!1608 = !DILocation(line: 900, column: 25, scope: !1605, inlinedAt: !1596)
!1609 = !DILocation(line: 900, column: 7, scope: !1590, inlinedAt: !1596)
!1610 = !DILocation(line: 902, column: 19, scope: !1590, inlinedAt: !1596)
!1611 = !DILocation(line: 903, column: 14, scope: !1590, inlinedAt: !1596)
!1612 = !DILocation(line: 700, column: 46, scope: !1565)
!1613 = !DILocation(line: 700, column: 61, scope: !1565)
!1614 = !DILocation(line: 700, column: 68, scope: !1565)
!1615 = !DILocation(line: 701, column: 22, scope: !1565)
!1616 = !DILocation(line: 701, column: 23, scope: !1565)
!1617 = !DILocation(line: 701, column: 53, scope: !1565)
!1618 = !DILocation(line: 702, column: 15, scope: !1565)
!1619 = !DILocation(line: 700, column: 10, scope: !1565)
!1620 = !DILocation(line: 703, column: 14, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1565, file: !482, line: 703, column: 7)
!1622 = !DILocation(line: 703, column: 7, scope: !1565)
!1623 = !DILocation(line: 705, column: 34, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !482, line: 704, column: 5)
!1625 = !DILocation(line: 706, column: 19, scope: !1624)
!1626 = !DILocation(line: 705, column: 44, scope: !1624)
!1627 = !DILocation(line: 705, column: 7, scope: !1624)
!1628 = !DILocation(line: 707, column: 7, scope: !1624)
!1629 = !DILocation(line: 709, column: 51, scope: !1565)
!1630 = !DILocation(line: 709, column: 11, scope: !1565)
!1631 = !DILocation(line: 710, column: 44, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !482, line: 710, column: 3)
!1633 = distinct !DILexicalBlock(scope: !1565, file: !482, line: 710, column: 3)
!1634 = !DILocation(line: 710, column: 15, scope: !1632)
!1635 = !DILocation(line: 710, column: 3, scope: !1633)
!1636 = !DILocation(line: 711, column: 36, scope: !1632)
!1637 = !DILocation(line: 711, column: 26, scope: !1632)
!1638 = !DILocation(line: 711, column: 57, scope: !1632)
!1639 = !DILocation(line: 711, column: 5, scope: !1632)
!1640 = !DILocation(line: 710, column: 52, scope: !1632)
!1641 = distinct !{!1641, !1635, !1642, !1402, !1403}
!1642 = !DILocation(line: 711, column: 59, scope: !1633)
!1643 = !DILocation(line: 712, column: 40, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1565, file: !482, line: 712, column: 7)
!1645 = !DILocation(line: 712, column: 7, scope: !1644)
!1646 = !DILocation(line: 712, column: 46, scope: !1644)
!1647 = !DILocation(line: 712, column: 7, scope: !1565)
!1648 = !DILocation(line: 713, column: 46, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !482, line: 713, column: 5)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !482, line: 713, column: 5)
!1651 = !DILocation(line: 713, column: 17, scope: !1649)
!1652 = !DILocation(line: 713, column: 5, scope: !1650)
!1653 = !DILocation(line: 714, column: 38, scope: !1649)
!1654 = !DILocation(line: 714, column: 28, scope: !1649)
!1655 = !DILocation(line: 715, column: 9, scope: !1649)
!1656 = !DILocation(line: 714, column: 7, scope: !1649)
!1657 = !DILocation(line: 713, column: 54, scope: !1649)
!1658 = distinct !{!1658, !1652, !1659, !1402, !1403}
!1659 = !DILocation(line: 715, column: 33, scope: !1650)
!1660 = !DILocation(line: 716, column: 42, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1565, file: !482, line: 716, column: 7)
!1662 = !DILocation(line: 716, column: 7, scope: !1661)
!1663 = !DILocation(line: 716, column: 48, scope: !1661)
!1664 = !DILocation(line: 716, column: 7, scope: !1565)
!1665 = !DILocation(line: 719, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !482, line: 717, column: 5)
!1667 = distinct !DILexicalBlock(scope: !1661, file: !482, line: 717, column: 5)
!1668 = !DILocation(line: 718, column: 31, scope: !1666)
!1669 = !DILocation(line: 718, column: 21, scope: !1666)
!1670 = !DILocation(line: 718, column: 7, scope: !1666)
!1671 = !DILocation(line: 717, column: 54, scope: !1666)
!1672 = !DILocation(line: 717, column: 46, scope: !1666)
!1673 = !DILocation(line: 717, column: 17, scope: !1666)
!1674 = !DILocation(line: 717, column: 5, scope: !1667)
!1675 = distinct !{!1675, !1674, !1676, !1402, !1403}
!1676 = !DILocation(line: 719, column: 33, scope: !1667)
!1677 = !DILocation(line: 720, column: 34, scope: !1565)
!1678 = !DILocation(line: 720, column: 16, scope: !1565)
!1679 = !DILocation(line: 721, column: 20, scope: !1565)
!1680 = !DILocation(line: 721, column: 3, scope: !1565)
!1681 = !DILocation(line: 722, column: 1, scope: !1565)
!1682 = !DILocation(line: 0, scope: !1590)
!1683 = !DILocation(line: 898, column: 17, scope: !1598)
!1684 = !DILocation(line: 898, column: 23, scope: !1598)
!1685 = !DILocation(line: 898, column: 7, scope: !1590)
!1686 = !DILocation(line: 899, column: 70, scope: !1598)
!1687 = !DILocation(line: 899, column: 12, scope: !1598)
!1688 = !DILocation(line: 899, column: 5, scope: !1598)
!1689 = !DILocation(line: 900, column: 12, scope: !1605)
!1690 = !DILocation(line: 900, column: 17, scope: !1605)
!1691 = !DILocation(line: 900, column: 55, scope: !1605)
!1692 = !DILocation(line: 900, column: 25, scope: !1605)
!1693 = !DILocation(line: 900, column: 7, scope: !1590)
!1694 = !DILocation(line: 902, column: 13, scope: !1590)
!1695 = !DILocation(line: 902, column: 19, scope: !1590)
!1696 = !DILocation(line: 903, column: 13, scope: !1590)
!1697 = !DILocation(line: 903, column: 14, scope: !1590)
!1698 = !DILocation(line: 904, column: 3, scope: !1590)
!1699 = !DILocation(line: 905, column: 1, scope: !1590)
!1700 = distinct !DISubprogram(name: "PixelGetPreviousRow", scope: !482, file: !482, line: 751, type: !1701, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!534, !478}
!1703 = !{!1704, !1705}
!1704 = !DILocalVariable(name: "iterator", arg: 1, scope: !1700, file: !482, line: 751, type: !478)
!1705 = !DILocalVariable(name: "number_wands", scope: !1700, file: !482, line: 754, type: !485)
!1706 = !DILocation(line: 0, scope: !1700)
!1707 = !DILocation(line: 753, column: 3, scope: !1700)
!1708 = !DILocation(line: 756, column: 10, scope: !1700)
!1709 = !DILocation(line: 757, column: 1, scope: !1700)
!1710 = !DILocation(line: 756, column: 3, scope: !1700)
!1711 = distinct !DISubprogram(name: "PixelGetPreviousIteratorRow", scope: !482, file: !482, line: 759, type: !1350, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717}
!1713 = !DILocalVariable(name: "iterator", arg: 1, scope: !1711, file: !482, line: 759, type: !478)
!1714 = !DILocalVariable(name: "number_wands", arg: 2, scope: !1711, file: !482, line: 760, type: !1228)
!1715 = !DILocalVariable(name: "indexes", scope: !1711, file: !482, line: 763, type: !731)
!1716 = !DILocalVariable(name: "pixels", scope: !1711, file: !482, line: 766, type: !729)
!1717 = !DILocalVariable(name: "x", scope: !1711, file: !482, line: 769, type: !525)
!1718 = !DILocation(line: 0, scope: !1711)
!1719 = !DILocation(line: 773, column: 17, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1711, file: !482, line: 773, column: 7)
!1721 = !DILocation(line: 773, column: 23, scope: !1720)
!1722 = !DILocation(line: 773, column: 7, scope: !1711)
!1723 = !DILocation(line: 774, column: 70, scope: !1720)
!1724 = !DILocation(line: 774, column: 12, scope: !1720)
!1725 = !DILocation(line: 774, column: 5, scope: !1720)
!1726 = !DILocation(line: 775, column: 16, scope: !1711)
!1727 = !DILocation(line: 776, column: 17, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1711, file: !482, line: 776, column: 7)
!1729 = !DILocation(line: 776, column: 24, scope: !1728)
!1730 = !DILocation(line: 776, column: 7, scope: !1711)
!1731 = !DILocation(line: 777, column: 16, scope: !1728)
!1732 = !DILocation(line: 777, column: 5, scope: !1728)
!1733 = !DILocation(line: 778, column: 46, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1711, file: !482, line: 778, column: 7)
!1735 = !DILocation(line: 0, scope: !1590, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 778, column: 7, scope: !1734)
!1737 = !DILocation(line: 898, column: 17, scope: !1598, inlinedAt: !1736)
!1738 = !DILocation(line: 898, column: 23, scope: !1598, inlinedAt: !1736)
!1739 = !DILocation(line: 898, column: 7, scope: !1590, inlinedAt: !1736)
!1740 = !DILocation(line: 899, column: 70, scope: !1598, inlinedAt: !1736)
!1741 = !DILocation(line: 899, column: 12, scope: !1598, inlinedAt: !1736)
!1742 = !DILocation(line: 899, column: 5, scope: !1598, inlinedAt: !1736)
!1743 = !DILocation(line: 900, column: 12, scope: !1605, inlinedAt: !1736)
!1744 = !DILocation(line: 900, column: 17, scope: !1605, inlinedAt: !1736)
!1745 = !DILocation(line: 900, column: 55, scope: !1605, inlinedAt: !1736)
!1746 = !DILocation(line: 900, column: 25, scope: !1605, inlinedAt: !1736)
!1747 = !DILocation(line: 900, column: 7, scope: !1590, inlinedAt: !1736)
!1748 = !DILocation(line: 902, column: 19, scope: !1590, inlinedAt: !1736)
!1749 = !DILocation(line: 903, column: 14, scope: !1590, inlinedAt: !1736)
!1750 = !DILocation(line: 780, column: 46, scope: !1711)
!1751 = !DILocation(line: 780, column: 61, scope: !1711)
!1752 = !DILocation(line: 780, column: 68, scope: !1711)
!1753 = !DILocation(line: 781, column: 22, scope: !1711)
!1754 = !DILocation(line: 781, column: 23, scope: !1711)
!1755 = !DILocation(line: 781, column: 53, scope: !1711)
!1756 = !DILocation(line: 782, column: 15, scope: !1711)
!1757 = !DILocation(line: 780, column: 10, scope: !1711)
!1758 = !DILocation(line: 783, column: 14, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1711, file: !482, line: 783, column: 7)
!1760 = !DILocation(line: 783, column: 7, scope: !1711)
!1761 = !DILocation(line: 785, column: 34, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !482, line: 784, column: 5)
!1763 = !DILocation(line: 786, column: 19, scope: !1762)
!1764 = !DILocation(line: 785, column: 44, scope: !1762)
!1765 = !DILocation(line: 785, column: 7, scope: !1762)
!1766 = !DILocation(line: 787, column: 7, scope: !1762)
!1767 = !DILocation(line: 789, column: 51, scope: !1711)
!1768 = !DILocation(line: 789, column: 11, scope: !1711)
!1769 = !DILocation(line: 790, column: 44, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !482, line: 790, column: 3)
!1771 = distinct !DILexicalBlock(scope: !1711, file: !482, line: 790, column: 3)
!1772 = !DILocation(line: 790, column: 15, scope: !1770)
!1773 = !DILocation(line: 790, column: 3, scope: !1771)
!1774 = !DILocation(line: 791, column: 36, scope: !1770)
!1775 = !DILocation(line: 791, column: 26, scope: !1770)
!1776 = !DILocation(line: 791, column: 57, scope: !1770)
!1777 = !DILocation(line: 791, column: 5, scope: !1770)
!1778 = !DILocation(line: 790, column: 52, scope: !1770)
!1779 = distinct !{!1779, !1773, !1780, !1402, !1403}
!1780 = !DILocation(line: 791, column: 59, scope: !1771)
!1781 = !DILocation(line: 792, column: 40, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1711, file: !482, line: 792, column: 7)
!1783 = !DILocation(line: 792, column: 7, scope: !1782)
!1784 = !DILocation(line: 792, column: 46, scope: !1782)
!1785 = !DILocation(line: 792, column: 7, scope: !1711)
!1786 = !DILocation(line: 793, column: 46, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !482, line: 793, column: 5)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !482, line: 793, column: 5)
!1789 = !DILocation(line: 793, column: 17, scope: !1787)
!1790 = !DILocation(line: 793, column: 5, scope: !1788)
!1791 = !DILocation(line: 794, column: 38, scope: !1787)
!1792 = !DILocation(line: 794, column: 28, scope: !1787)
!1793 = !DILocation(line: 795, column: 9, scope: !1787)
!1794 = !DILocation(line: 794, column: 7, scope: !1787)
!1795 = !DILocation(line: 793, column: 54, scope: !1787)
!1796 = distinct !{!1796, !1790, !1797, !1402, !1403}
!1797 = !DILocation(line: 795, column: 33, scope: !1788)
!1798 = !DILocation(line: 796, column: 42, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1711, file: !482, line: 796, column: 7)
!1800 = !DILocation(line: 796, column: 7, scope: !1799)
!1801 = !DILocation(line: 796, column: 48, scope: !1799)
!1802 = !DILocation(line: 796, column: 7, scope: !1711)
!1803 = !DILocation(line: 799, column: 9, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !482, line: 797, column: 5)
!1805 = distinct !DILexicalBlock(scope: !1799, file: !482, line: 797, column: 5)
!1806 = !DILocation(line: 798, column: 31, scope: !1804)
!1807 = !DILocation(line: 798, column: 21, scope: !1804)
!1808 = !DILocation(line: 798, column: 7, scope: !1804)
!1809 = !DILocation(line: 797, column: 54, scope: !1804)
!1810 = !DILocation(line: 797, column: 46, scope: !1804)
!1811 = !DILocation(line: 797, column: 17, scope: !1804)
!1812 = !DILocation(line: 797, column: 5, scope: !1805)
!1813 = distinct !{!1813, !1812, !1814, !1402, !1403}
!1814 = !DILocation(line: 799, column: 33, scope: !1805)
!1815 = !DILocation(line: 800, column: 34, scope: !1711)
!1816 = !DILocation(line: 800, column: 16, scope: !1711)
!1817 = !DILocation(line: 801, column: 20, scope: !1711)
!1818 = !DILocation(line: 801, column: 3, scope: !1711)
!1819 = !DILocation(line: 802, column: 1, scope: !1711)
!1820 = distinct !DISubprogram(name: "PixelResetIterator", scope: !482, file: !482, line: 828, type: !742, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1821)
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "iterator", arg: 1, scope: !1820, file: !482, line: 828, type: !478)
!1823 = !DILocation(line: 0, scope: !1820)
!1824 = !DILocation(line: 832, column: 17, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !482, line: 832, column: 7)
!1826 = !DILocation(line: 832, column: 23, scope: !1825)
!1827 = !DILocation(line: 832, column: 7, scope: !1820)
!1828 = !DILocation(line: 833, column: 70, scope: !1825)
!1829 = !DILocation(line: 833, column: 12, scope: !1825)
!1830 = !DILocation(line: 833, column: 5, scope: !1825)
!1831 = !DILocation(line: 834, column: 13, scope: !1820)
!1832 = !DILocation(line: 834, column: 19, scope: !1820)
!1833 = !DILocation(line: 835, column: 13, scope: !1820)
!1834 = !DILocation(line: 835, column: 14, scope: !1820)
!1835 = !DILocation(line: 836, column: 1, scope: !1820)
!1836 = distinct !DISubprogram(name: "PixelSetFirstIteratorRow", scope: !482, file: !482, line: 860, type: !742, scopeLine: 861, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1837)
!1837 = !{!1838}
!1838 = !DILocalVariable(name: "iterator", arg: 1, scope: !1836, file: !482, line: 860, type: !478)
!1839 = !DILocation(line: 0, scope: !1836)
!1840 = !DILocation(line: 864, column: 17, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !482, line: 864, column: 7)
!1842 = !DILocation(line: 864, column: 23, scope: !1841)
!1843 = !DILocation(line: 864, column: 7, scope: !1836)
!1844 = !DILocation(line: 865, column: 70, scope: !1841)
!1845 = !DILocation(line: 865, column: 12, scope: !1841)
!1846 = !DILocation(line: 865, column: 5, scope: !1841)
!1847 = !DILocation(line: 866, column: 13, scope: !1836)
!1848 = !DILocation(line: 866, column: 19, scope: !1836)
!1849 = !DILocation(line: 867, column: 32, scope: !1836)
!1850 = !DILocation(line: 867, column: 13, scope: !1836)
!1851 = !DILocation(line: 867, column: 14, scope: !1836)
!1852 = !DILocation(line: 868, column: 1, scope: !1836)
!1853 = distinct !DISubprogram(name: "PixelSetLastIteratorRow", scope: !482, file: !482, line: 929, type: !742, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1854)
!1854 = !{!1855}
!1855 = !DILocalVariable(name: "iterator", arg: 1, scope: !1853, file: !482, line: 929, type: !478)
!1856 = !DILocation(line: 0, scope: !1853)
!1857 = !DILocation(line: 933, column: 17, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1853, file: !482, line: 933, column: 7)
!1859 = !DILocation(line: 933, column: 23, scope: !1858)
!1860 = !DILocation(line: 933, column: 7, scope: !1853)
!1861 = !DILocation(line: 934, column: 70, scope: !1858)
!1862 = !DILocation(line: 934, column: 12, scope: !1858)
!1863 = !DILocation(line: 934, column: 5, scope: !1858)
!1864 = !DILocation(line: 935, column: 13, scope: !1853)
!1865 = !DILocation(line: 935, column: 19, scope: !1853)
!1866 = !DILocation(line: 936, column: 42, scope: !1853)
!1867 = !DILocation(line: 936, column: 48, scope: !1853)
!1868 = !DILocation(line: 936, column: 13, scope: !1853)
!1869 = !DILocation(line: 936, column: 14, scope: !1853)
!1870 = !DILocation(line: 937, column: 1, scope: !1853)
!1871 = distinct !DISubprogram(name: "PixelSyncIterator", scope: !482, file: !482, line: 961, type: !1247, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1872)
!1872 = !{!1873, !1874, !1875, !1878, !1879}
!1873 = !DILocalVariable(name: "iterator", arg: 1, scope: !1871, file: !482, line: 961, type: !478)
!1874 = !DILocalVariable(name: "exception", scope: !1871, file: !482, line: 964, type: !493)
!1875 = !DILocalVariable(name: "indexes", scope: !1871, file: !482, line: 967, type: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!1878 = !DILocalVariable(name: "x", scope: !1871, file: !482, line: 970, type: !525)
!1879 = !DILocalVariable(name: "pixels", scope: !1871, file: !482, line: 973, type: !1880)
!1880 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !567)
!1881 = !DILocation(line: 0, scope: !1871)
!1882 = !DILocation(line: 977, column: 17, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1871, file: !482, line: 977, column: 7)
!1884 = !DILocation(line: 977, column: 23, scope: !1883)
!1885 = !DILocation(line: 977, column: 7, scope: !1871)
!1886 = !DILocation(line: 978, column: 70, scope: !1883)
!1887 = !DILocation(line: 978, column: 12, scope: !1883)
!1888 = !DILocation(line: 978, column: 5, scope: !1883)
!1889 = !DILocation(line: 979, column: 42, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1871, file: !482, line: 979, column: 7)
!1891 = !DILocation(line: 979, column: 7, scope: !1890)
!1892 = !DILocation(line: 979, column: 60, scope: !1890)
!1893 = !DILocation(line: 979, column: 7, scope: !1871)
!1894 = !DILocation(line: 981, column: 23, scope: !1871)
!1895 = !DILocation(line: 982, column: 48, scope: !1871)
!1896 = !DILocation(line: 982, column: 63, scope: !1871)
!1897 = !DILocation(line: 982, column: 70, scope: !1871)
!1898 = !DILocation(line: 983, column: 22, scope: !1871)
!1899 = !DILocation(line: 983, column: 34, scope: !1871)
!1900 = !DILocation(line: 983, column: 23, scope: !1871)
!1901 = !DILocation(line: 983, column: 53, scope: !1871)
!1902 = !DILocation(line: 982, column: 10, scope: !1871)
!1903 = !DILocation(line: 984, column: 14, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1871, file: !482, line: 984, column: 7)
!1905 = !DILocation(line: 984, column: 7, scope: !1871)
!1906 = !DILocation(line: 990, column: 53, scope: !1871)
!1907 = !DILocation(line: 990, column: 11, scope: !1871)
!1908 = !DILocation(line: 991, column: 44, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !482, line: 991, column: 3)
!1910 = distinct !DILexicalBlock(scope: !1871, file: !482, line: 991, column: 3)
!1911 = !DILocation(line: 991, column: 15, scope: !1909)
!1912 = !DILocation(line: 991, column: 3, scope: !1910)
!1913 = !DILocation(line: 992, column: 36, scope: !1909)
!1914 = !DILocation(line: 992, column: 26, scope: !1909)
!1915 = !DILocation(line: 992, column: 57, scope: !1909)
!1916 = !DILocation(line: 992, column: 5, scope: !1909)
!1917 = !DILocation(line: 991, column: 52, scope: !1909)
!1918 = distinct !{!1918, !1912, !1919, !1402, !1403}
!1919 = !DILocation(line: 992, column: 59, scope: !1910)
!1920 = !DILocation(line: 993, column: 40, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1871, file: !482, line: 993, column: 7)
!1922 = !DILocation(line: 993, column: 7, scope: !1921)
!1923 = !DILocation(line: 993, column: 46, scope: !1921)
!1924 = !DILocation(line: 993, column: 7, scope: !1871)
!1925 = !DILocation(line: 994, column: 46, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !482, line: 994, column: 5)
!1927 = distinct !DILexicalBlock(scope: !1921, file: !482, line: 994, column: 5)
!1928 = !DILocation(line: 994, column: 17, scope: !1926)
!1929 = !DILocation(line: 994, column: 5, scope: !1927)
!1930 = !DILocation(line: 995, column: 7, scope: !1926)
!1931 = !DILocation(line: 994, column: 54, scope: !1926)
!1932 = distinct !{!1932, !1929, !1933, !1402, !1403}
!1933 = !DILocation(line: 995, column: 7, scope: !1927)
!1934 = !DILocation(line: 997, column: 46, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1871, file: !482, line: 997, column: 7)
!1936 = !DILocation(line: 997, column: 7, scope: !1935)
!1937 = !DILocation(line: 997, column: 62, scope: !1935)
!1938 = !DILocation(line: 997, column: 7, scope: !1871)
!1939 = !DILocation(line: 1004, column: 1, scope: !1871)
!1940 = !DISubprogram(name: "SetCacheViewStorageClass", scope: !449, file: !449, line: 87, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!507, !515, !1943}
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!1944 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !449, file: !449, line: 99, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!567, !515, !1265, !1265, !788, !788, !493}
!1947 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !449, file: !449, line: 77, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1877, !515}
!1950 = !DISubprogram(name: "PixelGetQuantumColor", scope: !537, file: !537, line: 83, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !543, !567}
!1953 = !DISubprogram(name: "PixelGetBlackQuantum", scope: !537, file: !537, line: 67, type: !1954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!572, !543}
!1956 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !449, file: !449, line: 89, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !789)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!507, !515, !493}
