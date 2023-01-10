; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/attribute.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RectangleInfo = type { i64, i64, i64, i64 }
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
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/attribute.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GeometryDoesNotContainImage\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dither\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @GetImageBoundingBox(ptr noalias nocapture sret(%struct._RectangleInfo) align 8 %agg.result, ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !743 {
entry:
  %target = alloca [3 x %struct._MagickPixelPacket], align 16
  %zero = alloca %struct._MagickPixelPacket, align 8
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !751, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr %exception, metadata !752, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %target) #11, !dbg !790
  call void @llvm.dbg.declare(metadata ptr %target, metadata !758, metadata !DIExpression()), !dbg !791
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #11, !dbg !790
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !775, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !776, metadata !DIExpression()), !dbg !793
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !794
  %0 = load i32, ptr %debug, align 8, !dbg !794, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !815
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !816

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !817
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !818
  br label %if.end, !dbg !819

if.end:                                           ; preds = %if.then, %entry
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %agg.result, i64 0, i32 1, !dbg !820
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !821
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.result, i8 0, i64 16, i1 false), !dbg !822
  %1 = load i64, ptr %columns, align 8, !dbg !821, !tbaa !823
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %agg.result, i64 0, i32 2, !dbg !824
  store i64 %1, ptr %x, align 8, !dbg !825, !tbaa !826
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !827
  %2 = load i64, ptr %rows, align 8, !dbg !827, !tbaa !828
  %y1 = getelementptr inbounds %struct._RectangleInfo, ptr %agg.result, i64 0, i32 3, !dbg !829
  store i64 %2, ptr %y1, align 8, !dbg !830, !tbaa !831
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %target) #11, !dbg !832
  %call2 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !833
  call void @llvm.dbg.value(metadata ptr %call2, metadata !753, metadata !DIExpression()), !dbg !789
  %call3 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call2, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #12, !dbg !834
  call void @llvm.dbg.value(metadata ptr %call3, metadata !777, metadata !DIExpression()), !dbg !789
  %cmp4 = icmp eq ptr %call3, null, !dbg !835
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !837

if.then5:                                         ; preds = %if.end
  %call6 = call ptr @DestroyCacheView(ptr noundef %call2) #11, !dbg !838
  call void @llvm.dbg.value(metadata ptr %call6, metadata !753, metadata !DIExpression()), !dbg !789
  br label %cleanup126, !dbg !840

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call2) #11, !dbg !841
  %3 = getelementptr i8, ptr %image, i64 4, !dbg !842
  %image.val194 = load i32, ptr %3, align 4, !dbg !842, !tbaa !843
  call void @llvm.dbg.value(metadata ptr undef, metadata !844, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr %call3, metadata !851, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr %call8, metadata !852, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata ptr %target, metadata !853, metadata !DIExpression()), !dbg !854
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %call3, i64 0, i32 2, !dbg !856
  %4 = load i16, ptr %red.i, align 2, !dbg !856, !tbaa !857
  %conv.i = uitofp i16 %4 to float, !dbg !858
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 5, !dbg !859
  store float %conv.i, ptr %red1.i, align 16, !dbg !860, !tbaa !861
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %call3, i64 0, i32 1, !dbg !864
  %5 = load i16, ptr %green.i, align 2, !dbg !864, !tbaa !865
  %conv2.i = uitofp i16 %5 to float, !dbg !866
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 6, !dbg !867
  store float %conv2.i, ptr %green3.i, align 4, !dbg !868, !tbaa !869
  %6 = load i16, ptr %call3, align 2, !dbg !870, !tbaa !871
  %conv4.i = uitofp i16 %6 to float, !dbg !872
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 7, !dbg !873
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !874, !tbaa !875
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %call3, i64 0, i32 3, !dbg !876
  %7 = load i16, ptr %opacity.i, align 2, !dbg !876, !tbaa !877
  %conv6.i = uitofp i16 %7 to float, !dbg !878
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 8, !dbg !879
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !880, !tbaa !881
  %cmp.i = icmp eq i32 %image.val194, 12, !dbg !882
  %cmp9.i = icmp ne ptr %call8, null
  %or.cond.i = and i1 %cmp9.i, %cmp.i, !dbg !884
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !884

cond.end.i:                                       ; preds = %if.end7
  %8 = load i16, ptr %call8, align 2, !dbg !885, !tbaa !886
  %conv14.i = uitofp i16 %8 to float, !dbg !887
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 9, !dbg !888
  store float %conv14.i, ptr %index15.i, align 16, !dbg !889, !tbaa !890
  br label %SetMagickPixelPacket.exit, !dbg !891

SetMagickPixelPacket.exit:                        ; preds = %if.end7, %cond.end.i
  %arrayidx10 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 1, !dbg !892
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %arrayidx10) #11, !dbg !893
  %9 = load i64, ptr %columns, align 8, !dbg !894, !tbaa !823
  %sub = add nsw i64 %9, -1, !dbg !895
  %call12 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call2, i64 noundef %sub, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #12, !dbg !896
  call void @llvm.dbg.value(metadata ptr %call12, metadata !777, metadata !DIExpression()), !dbg !789
  %call13 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call2) #11, !dbg !897
  %image.val193 = load i32, ptr %3, align 4, !dbg !898, !tbaa !843
  call void @llvm.dbg.value(metadata ptr undef, metadata !844, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr %call12, metadata !851, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr %call13, metadata !852, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr %arrayidx10, metadata !853, metadata !DIExpression()), !dbg !899
  %red.i195 = getelementptr inbounds %struct._PixelPacket, ptr %call12, i64 0, i32 2, !dbg !901
  %10 = load i16, ptr %red.i195, align 2, !dbg !901, !tbaa !857
  %conv.i196 = uitofp i16 %10 to float, !dbg !902
  %red1.i197 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 1, i32 5, !dbg !903
  store float %conv.i196, ptr %red1.i197, align 8, !dbg !904, !tbaa !861
  %green.i198 = getelementptr inbounds %struct._PixelPacket, ptr %call12, i64 0, i32 1, !dbg !905
  %11 = load i16, ptr %green.i198, align 2, !dbg !905, !tbaa !865
  %conv2.i199 = uitofp i16 %11 to float, !dbg !906
  %green3.i200 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 1, i32 6, !dbg !907
  store float %conv2.i199, ptr %green3.i200, align 4, !dbg !908, !tbaa !869
  %12 = load i16, ptr %call12, align 2, !dbg !909, !tbaa !871
  %conv4.i201 = uitofp i16 %12 to float, !dbg !910
  %blue5.i202 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 1, i32 7, !dbg !911
  store float %conv4.i201, ptr %blue5.i202, align 16, !dbg !912, !tbaa !875
  %opacity.i203 = getelementptr inbounds %struct._PixelPacket, ptr %call12, i64 0, i32 3, !dbg !913
  %13 = load i16, ptr %opacity.i203, align 2, !dbg !913, !tbaa !877
  %conv6.i204 = uitofp i16 %13 to float, !dbg !914
  %opacity7.i205 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 1, i32 8, !dbg !915
  store float %conv6.i204, ptr %opacity7.i205, align 4, !dbg !916, !tbaa !881
  %cmp.i206 = icmp eq i32 %image.val193, 12, !dbg !917
  %cmp9.i207 = icmp ne ptr %call13, null
  %or.cond.i208 = and i1 %cmp9.i207, %cmp.i206, !dbg !918
  br i1 %or.cond.i208, label %cond.end.i211, label %SetMagickPixelPacket.exit212, !dbg !918

cond.end.i211:                                    ; preds = %SetMagickPixelPacket.exit
  %14 = load i16, ptr %call13, align 2, !dbg !919, !tbaa !886
  %conv14.i209 = uitofp i16 %14 to float, !dbg !920
  %index15.i210 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 1, i32 9, !dbg !921
  store float %conv14.i209, ptr %index15.i210, align 8, !dbg !922, !tbaa !890
  br label %SetMagickPixelPacket.exit212, !dbg !923

SetMagickPixelPacket.exit212:                     ; preds = %SetMagickPixelPacket.exit, %cond.end.i211
  %arrayidx15 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 2, !dbg !924
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %arrayidx15) #11, !dbg !925
  %15 = load i64, ptr %rows, align 8, !dbg !926, !tbaa !828
  %sub17 = add nsw i64 %15, -1, !dbg !927
  %call18 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call2, i64 noundef 0, i64 noundef %sub17, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #12, !dbg !928
  call void @llvm.dbg.value(metadata ptr %call18, metadata !777, metadata !DIExpression()), !dbg !789
  %call19 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call2) #11, !dbg !929
  %image.val192 = load i32, ptr %3, align 4, !dbg !930, !tbaa !843
  call void @llvm.dbg.value(metadata ptr undef, metadata !844, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr %call18, metadata !851, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr %call19, metadata !852, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr %arrayidx15, metadata !853, metadata !DIExpression()), !dbg !931
  %red.i213 = getelementptr inbounds %struct._PixelPacket, ptr %call18, i64 0, i32 2, !dbg !933
  %16 = load i16, ptr %red.i213, align 2, !dbg !933, !tbaa !857
  %conv.i214 = uitofp i16 %16 to float, !dbg !934
  %red1.i215 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 2, i32 5, !dbg !935
  store float %conv.i214, ptr %red1.i215, align 16, !dbg !936, !tbaa !861
  %green.i216 = getelementptr inbounds %struct._PixelPacket, ptr %call18, i64 0, i32 1, !dbg !937
  %17 = load i16, ptr %green.i216, align 2, !dbg !937, !tbaa !865
  %conv2.i217 = uitofp i16 %17 to float, !dbg !938
  %green3.i218 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 2, i32 6, !dbg !939
  store float %conv2.i217, ptr %green3.i218, align 4, !dbg !940, !tbaa !869
  %18 = load i16, ptr %call18, align 2, !dbg !941, !tbaa !871
  %conv4.i219 = uitofp i16 %18 to float, !dbg !942
  %blue5.i220 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 2, i32 7, !dbg !943
  store float %conv4.i219, ptr %blue5.i220, align 8, !dbg !944, !tbaa !875
  %opacity.i221 = getelementptr inbounds %struct._PixelPacket, ptr %call18, i64 0, i32 3, !dbg !945
  %19 = load i16, ptr %opacity.i221, align 2, !dbg !945, !tbaa !877
  %conv6.i222 = uitofp i16 %19 to float, !dbg !946
  %opacity7.i223 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 2, i32 8, !dbg !947
  store float %conv6.i222, ptr %opacity7.i223, align 4, !dbg !948, !tbaa !881
  %cmp.i224 = icmp eq i32 %image.val192, 12, !dbg !949
  %cmp9.i225 = icmp ne ptr %call19, null
  %or.cond.i226 = and i1 %cmp9.i225, %cmp.i224, !dbg !950
  br i1 %or.cond.i226, label %cond.end.i229, label %SetMagickPixelPacket.exit230, !dbg !950

cond.end.i229:                                    ; preds = %SetMagickPixelPacket.exit212
  %20 = load i16, ptr %call19, align 2, !dbg !951, !tbaa !886
  %conv14.i227 = uitofp i16 %20 to float, !dbg !952
  %index15.i228 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %target, i64 0, i64 2, i32 9, !dbg !953
  store float %conv14.i227, ptr %index15.i228, align 16, !dbg !954, !tbaa !890
  br label %SetMagickPixelPacket.exit230, !dbg !955

SetMagickPixelPacket.exit230:                     ; preds = %SetMagickPixelPacket.exit212, %cond.end.i229
  call void @llvm.dbg.value(metadata i32 1, metadata !757, metadata !DIExpression()), !dbg !789
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %zero) #11, !dbg !956
  call void @llvm.dbg.value(metadata i64 0, metadata !778, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 1, metadata !757, metadata !DIExpression()), !dbg !789
  %21 = load i64, ptr %rows, align 8, !dbg !957, !tbaa !828
  %cmp22261 = icmp sgt i64 %21, 0, !dbg !958
  br i1 %cmp22261, label %for.body.lr.ph, label %for.end107, !dbg !959

for.body.lr.ph:                                   ; preds = %SetMagickPixelPacket.exit230
  %red1.i233 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i236 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i238 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i241 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  br label %for.body, !dbg !959

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %22 = phi i64 [ 0, %for.body.lr.ph ], [ %35, %cleanup ]
  %23 = phi i64 [ %2, %for.body.lr.ph ], [ %36, %cleanup ]
  %24 = phi i64 [ %1, %for.body.lr.ph ], [ %37, %cleanup ]
  %bounding_box.sroa.15.0.copyload = phi i64 [ %2, %for.body.lr.ph ], [ %bounding_box.sroa.15.0.copyload275, %cleanup ]
  %bounding_box.sroa.11.0.copyload = phi i64 [ %1, %for.body.lr.ph ], [ %bounding_box.sroa.11.0.copyload272, %cleanup ]
  %bounding_box.sroa.7.0.copyload = phi i64 [ 0, %for.body.lr.ph ], [ %bounding_box.sroa.7.0.copyload270, %cleanup ]
  %bounding_box.sroa.0.0.copyload = phi i64 [ 0, %for.body.lr.ph ], [ %bounding_box.sroa.0.0.copyload267, %cleanup ]
  %y.0263 = phi i64 [ 0, %for.body.lr.ph ], [ %inc106, %cleanup ]
  %status.0262 = phi i32 [ 1, %for.body.lr.ph ], [ %status.1, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0263, metadata !778, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i32 %status.0262, metadata !757, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #11, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !779, metadata !DIExpression()), !dbg !961
  %cmp25 = icmp eq i32 %status.0262, 0, !dbg !962
  br i1 %cmp25, label %cleanup, label %if.end27, !dbg !964

if.end27:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.0.0.copyload, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.7.0.copyload, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.11.0.copyload, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.15.0.copyload, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !965
  %25 = load i64, ptr %columns, align 8, !dbg !966, !tbaa !823
  %call29 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call2, i64 noundef 0, i64 noundef %y.0263, i64 noundef %25, i64 noundef 1, ptr noundef %exception) #12, !dbg !967
  call void @llvm.dbg.value(metadata ptr %call29, metadata !786, metadata !DIExpression()), !dbg !965
  %cmp30 = icmp eq ptr %call29, null, !dbg !968
  br i1 %cmp30, label %cleanup, label %if.end32, !dbg !970

if.end32:                                         ; preds = %if.end27
  %call33 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call2) #11, !dbg !971
  call void @llvm.dbg.value(metadata ptr %call33, metadata !784, metadata !DIExpression()), !dbg !965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !972, !tbaa.struct !973
  call void @llvm.dbg.value(metadata i64 0, metadata !788, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr %call29, metadata !786, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.0.0.copyload, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.7.0.copyload, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.11.0.copyload, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.15.0.copyload, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !965
  %26 = load i64, ptr %columns, align 8, !dbg !978, !tbaa !823
  %cmp36250 = icmp sgt i64 %26, 0, !dbg !981
  br i1 %cmp36250, label %for.body37.lr.ph, label %for.end, !dbg !982

for.body37.lr.ph:                                 ; preds = %if.end32
  %cmp9.i243 = icmp ne ptr %call33, null
  br label %for.body37, !dbg !982

for.body37:                                       ; preds = %for.body37.lr.ph, %if.end72
  %x24.0256 = phi i64 [ 0, %for.body37.lr.ph ], [ %inc, %if.end72 ]
  %p23.0255 = phi ptr [ %call29, %for.body37.lr.ph ], [ %incdec.ptr, %if.end72 ]
  %bounding_box.sroa.0.0254 = phi i64 [ %bounding_box.sroa.0.0.copyload, %for.body37.lr.ph ], [ %bounding_box.sroa.0.1, %if.end72 ]
  %bounding_box.sroa.7.0253 = phi i64 [ %bounding_box.sroa.7.0.copyload, %for.body37.lr.ph ], [ %bounding_box.sroa.7.1, %if.end72 ]
  %bounding_box.sroa.11.0252 = phi i64 [ %bounding_box.sroa.11.0.copyload, %for.body37.lr.ph ], [ %bounding_box.sroa.11.1, %if.end72 ]
  %bounding_box.sroa.15.0251 = phi i64 [ %bounding_box.sroa.15.0.copyload, %for.body37.lr.ph ], [ %bounding_box.sroa.15.1, %if.end72 ]
  call void @llvm.dbg.value(metadata i64 %x24.0256, metadata !788, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr %p23.0255, metadata !786, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.0.0254, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.7.0253, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.11.0252, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.15.0251, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !965
  %image.val = load i32, ptr %3, align 4, !dbg !983, !tbaa !843
  call void @llvm.dbg.value(metadata ptr undef, metadata !844, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata ptr %p23.0255, metadata !851, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call33, i64 %x24.0256), metadata !852, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !985
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !853, metadata !DIExpression()), !dbg !985
  %red.i231 = getelementptr inbounds %struct._PixelPacket, ptr %p23.0255, i64 0, i32 2, !dbg !987
  %27 = load i16, ptr %red.i231, align 2, !dbg !987, !tbaa !857
  %conv.i232 = uitofp i16 %27 to float, !dbg !988
  store float %conv.i232, ptr %red1.i233, align 8, !dbg !989, !tbaa !861
  %green.i234 = getelementptr inbounds %struct._PixelPacket, ptr %p23.0255, i64 0, i32 1, !dbg !990
  %28 = load i16, ptr %green.i234, align 2, !dbg !990, !tbaa !865
  %conv2.i235 = uitofp i16 %28 to float, !dbg !991
  store float %conv2.i235, ptr %green3.i236, align 4, !dbg !992, !tbaa !869
  %29 = load i16, ptr %p23.0255, align 2, !dbg !993, !tbaa !871
  %conv4.i237 = uitofp i16 %29 to float, !dbg !994
  store float %conv4.i237, ptr %blue5.i238, align 8, !dbg !995, !tbaa !875
  %opacity.i239 = getelementptr inbounds %struct._PixelPacket, ptr %p23.0255, i64 0, i32 3, !dbg !996
  %30 = load i16, ptr %opacity.i239, align 2, !dbg !996, !tbaa !877
  %conv6.i240 = uitofp i16 %30 to float, !dbg !997
  store float %conv6.i240, ptr %opacity7.i241, align 4, !dbg !998, !tbaa !881
  %cmp.i242 = icmp eq i32 %image.val, 12, !dbg !999
  %or.cond.i244 = and i1 %cmp9.i243, %cmp.i242, !dbg !1000
  br i1 %or.cond.i244, label %cond.end.i247, label %SetMagickPixelPacket.exit248, !dbg !1000

cond.end.i247:                                    ; preds = %for.body37
  %add.ptr = getelementptr inbounds i16, ptr %call33, i64 %x24.0256, !dbg !1001
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !852, metadata !DIExpression()), !dbg !985
  %31 = load i16, ptr %add.ptr, align 2, !dbg !1002, !tbaa !886
  %conv14.i245 = uitofp i16 %31 to float, !dbg !1003
  store float %conv14.i245, ptr %index15.i246, align 8, !dbg !1004, !tbaa !890
  br label %SetMagickPixelPacket.exit248, !dbg !1005

SetMagickPixelPacket.exit248:                     ; preds = %for.body37, %cond.end.i247
  %cmp39 = icmp slt i64 %x24.0256, %bounding_box.sroa.11.0252, !dbg !1006
  br i1 %cmp39, label %land.lhs.true, label %if.end45, !dbg !1008

land.lhs.true:                                    ; preds = %SetMagickPixelPacket.exit248
  %call41 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef nonnull %target) #11, !dbg !1009
  %cmp42 = icmp eq i32 %call41, 0, !dbg !1010
  %spec.select = select i1 %cmp42, i64 %x24.0256, i64 %bounding_box.sroa.11.0252, !dbg !1011
  br label %if.end45, !dbg !1011

if.end45:                                         ; preds = %land.lhs.true, %SetMagickPixelPacket.exit248
  %bounding_box.sroa.11.1 = phi i64 [ %bounding_box.sroa.11.0252, %SetMagickPixelPacket.exit248 ], [ %spec.select, %land.lhs.true ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.11.1, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !965
  %cmp47 = icmp sgt i64 %x24.0256, %bounding_box.sroa.0.0254, !dbg !1012
  br i1 %cmp47, label %land.lhs.true48, label %if.end54, !dbg !1014

land.lhs.true48:                                  ; preds = %if.end45
  %call50 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef nonnull %arrayidx10) #11, !dbg !1015
  %cmp51 = icmp eq i32 %call50, 0, !dbg !1016
  %spec.select189 = select i1 %cmp51, i64 %x24.0256, i64 %bounding_box.sroa.0.0254, !dbg !1017
  br label %if.end54, !dbg !1017

if.end54:                                         ; preds = %land.lhs.true48, %if.end45
  %bounding_box.sroa.0.1 = phi i64 [ %bounding_box.sroa.0.0254, %if.end45 ], [ %spec.select189, %land.lhs.true48 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.0.1, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !965
  %cmp56 = icmp slt i64 %y.0263, %bounding_box.sroa.15.0251, !dbg !1018
  br i1 %cmp56, label %land.lhs.true57, label %if.end63, !dbg !1020

land.lhs.true57:                                  ; preds = %if.end54
  %call59 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef nonnull %target) #11, !dbg !1021
  %cmp60 = icmp eq i32 %call59, 0, !dbg !1022
  %spec.select190 = select i1 %cmp60, i64 %y.0263, i64 %bounding_box.sroa.15.0251, !dbg !1023
  br label %if.end63, !dbg !1023

if.end63:                                         ; preds = %land.lhs.true57, %if.end54
  %bounding_box.sroa.15.1 = phi i64 [ %bounding_box.sroa.15.0251, %if.end54 ], [ %spec.select190, %land.lhs.true57 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.15.1, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !965
  %cmp65 = icmp sgt i64 %y.0263, %bounding_box.sroa.7.0253, !dbg !1024
  br i1 %cmp65, label %land.lhs.true66, label %if.end72, !dbg !1026

land.lhs.true66:                                  ; preds = %if.end63
  %call68 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef nonnull %arrayidx15) #11, !dbg !1027
  %cmp69 = icmp eq i32 %call68, 0, !dbg !1028
  %spec.select191 = select i1 %cmp69, i64 %y.0263, i64 %bounding_box.sroa.7.0253, !dbg !1029
  br label %if.end72, !dbg !1029

if.end72:                                         ; preds = %land.lhs.true66, %if.end63
  %bounding_box.sroa.7.1 = phi i64 [ %bounding_box.sroa.7.0253, %if.end63 ], [ %spec.select191, %land.lhs.true66 ], !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.7.1, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !965
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p23.0255, i64 1, !dbg !1030
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !786, metadata !DIExpression()), !dbg !965
  %inc = add nuw nsw i64 %x24.0256, 1, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %inc, metadata !788, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.0.1, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.7.1, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.11.1, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !965
  call void @llvm.dbg.value(metadata i64 %bounding_box.sroa.15.1, metadata !783, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !965
  %32 = load i64, ptr %columns, align 8, !dbg !978, !tbaa !823
  %cmp36 = icmp slt i64 %inc, %32, !dbg !981
  br i1 %cmp36, label %for.body37, label %for.end, !dbg !982, !llvm.loop !1032

for.end:                                          ; preds = %if.end72, %if.end32
  %bounding_box.sroa.15.0.lcssa = phi i64 [ %bounding_box.sroa.15.0.copyload, %if.end32 ], [ %bounding_box.sroa.15.1, %if.end72 ], !dbg !965
  %bounding_box.sroa.11.0.lcssa = phi i64 [ %bounding_box.sroa.11.0.copyload, %if.end32 ], [ %bounding_box.sroa.11.1, %if.end72 ], !dbg !965
  %bounding_box.sroa.7.0.lcssa = phi i64 [ %bounding_box.sroa.7.0.copyload, %if.end32 ], [ %bounding_box.sroa.7.1, %if.end72 ], !dbg !965
  %bounding_box.sroa.0.0.lcssa = phi i64 [ %bounding_box.sroa.0.0.copyload, %if.end32 ], [ %bounding_box.sroa.0.1, %if.end72 ], !dbg !965
  %cmp75 = icmp slt i64 %bounding_box.sroa.11.0.lcssa, %24, !dbg !1036
  br i1 %cmp75, label %if.then76, label %if.end79, !dbg !1039

if.then76:                                        ; preds = %for.end
  store i64 %bounding_box.sroa.11.0.lcssa, ptr %x, align 8, !dbg !1040, !tbaa !826
  br label %if.end79, !dbg !1041

if.end79:                                         ; preds = %if.then76, %for.end
  %33 = phi i64 [ %bounding_box.sroa.11.0.lcssa, %if.then76 ], [ %24, %for.end ]
  %cmp82 = icmp slt i64 %bounding_box.sroa.15.0.lcssa, %23, !dbg !1042
  br i1 %cmp82, label %if.then83, label %if.end86, !dbg !1044

if.then83:                                        ; preds = %if.end79
  store i64 %bounding_box.sroa.15.0.lcssa, ptr %y1, align 8, !dbg !1045, !tbaa !831
  br label %if.end86, !dbg !1046

if.end86:                                         ; preds = %if.then83, %if.end79
  %34 = phi i64 [ %bounding_box.sroa.15.0.lcssa, %if.then83 ], [ %23, %if.end79 ]
  %cmp89 = icmp ugt i64 %bounding_box.sroa.0.0.lcssa, %bounding_box.sroa.0.0.copyload, !dbg !1047
  br i1 %cmp89, label %if.then90, label %if.end93, !dbg !1049

if.then90:                                        ; preds = %if.end86
  store i64 %bounding_box.sroa.0.0.lcssa, ptr %agg.result, align 8, !dbg !1050, !tbaa !1051
  br label %if.end93, !dbg !1052

if.end93:                                         ; preds = %if.then90, %if.end86
  %bounding_box.sroa.0.0.copyload268 = phi i64 [ %bounding_box.sroa.0.0.lcssa, %if.then90 ], [ %bounding_box.sroa.0.0.copyload, %if.end86 ]
  %cmp96 = icmp ugt i64 %bounding_box.sroa.7.0.lcssa, %22, !dbg !1053
  br i1 %cmp96, label %if.then97, label %cleanup, !dbg !1055

if.then97:                                        ; preds = %if.end93
  store i64 %bounding_box.sroa.7.0.lcssa, ptr %height, align 8, !dbg !1056, !tbaa !1057
  br label %cleanup, !dbg !1058

cleanup:                                          ; preds = %if.end93, %if.then97, %if.end27, %for.body
  %35 = phi i64 [ %22, %for.body ], [ %22, %if.end27 ], [ %bounding_box.sroa.7.0.lcssa, %if.then97 ], [ %22, %if.end93 ]
  %36 = phi i64 [ %23, %for.body ], [ %23, %if.end27 ], [ %34, %if.then97 ], [ %34, %if.end93 ]
  %37 = phi i64 [ %24, %for.body ], [ %24, %if.end27 ], [ %33, %if.then97 ], [ %33, %if.end93 ]
  %bounding_box.sroa.15.0.copyload275 = phi i64 [ %bounding_box.sroa.15.0.copyload, %for.body ], [ %bounding_box.sroa.15.0.copyload, %if.end27 ], [ %34, %if.then97 ], [ %34, %if.end93 ]
  %bounding_box.sroa.11.0.copyload272 = phi i64 [ %bounding_box.sroa.11.0.copyload, %for.body ], [ %bounding_box.sroa.11.0.copyload, %if.end27 ], [ %33, %if.then97 ], [ %33, %if.end93 ]
  %bounding_box.sroa.7.0.copyload270 = phi i64 [ %bounding_box.sroa.7.0.copyload, %for.body ], [ %bounding_box.sroa.7.0.copyload, %if.end27 ], [ %bounding_box.sroa.7.0.lcssa, %if.then97 ], [ %22, %if.end93 ]
  %bounding_box.sroa.0.0.copyload267 = phi i64 [ %bounding_box.sroa.0.0.copyload, %for.body ], [ %bounding_box.sroa.0.0.copyload, %if.end27 ], [ %bounding_box.sroa.0.0.copyload268, %if.then97 ], [ %bounding_box.sroa.0.0.copyload268, %if.end93 ]
  %status.1 = phi i32 [ 0, %for.body ], [ 0, %if.end27 ], [ 1, %if.then97 ], [ 1, %if.end93 ], !dbg !789
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !757, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #11, !dbg !1059
  %inc106 = add nuw nsw i64 %y.0263, 1, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %inc106, metadata !778, metadata !DIExpression()), !dbg !789
  %38 = load i64, ptr %rows, align 8, !dbg !957, !tbaa !828
  %cmp22 = icmp slt i64 %inc106, %38, !dbg !958
  br i1 %cmp22, label %for.body, label %for.end107, !dbg !959, !llvm.loop !1061

for.end107:                                       ; preds = %cleanup, %SetMagickPixelPacket.exit230
  %39 = phi i64 [ %2, %SetMagickPixelPacket.exit230 ], [ %36, %cleanup ]
  %40 = phi i64 [ %1, %SetMagickPixelPacket.exit230 ], [ %37, %cleanup ]
  %41 = phi i64 [ 0, %SetMagickPixelPacket.exit230 ], [ %35, %cleanup ]
  %42 = phi i64 [ 0, %SetMagickPixelPacket.exit230 ], [ %bounding_box.sroa.0.0.copyload267, %cleanup ], !dbg !1063
  %call108 = call ptr @DestroyCacheView(ptr noundef %call2) #11, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %call108, metadata !753, metadata !DIExpression()), !dbg !789
  %cmp110 = icmp eq i64 %42, 0, !dbg !1066
  %cmp112 = icmp eq i64 %41, 0
  %or.cond = select i1 %cmp110, i1 true, i1 %cmp112, !dbg !1067
  br i1 %or.cond, label %if.then113, label %if.else, !dbg !1067

if.then113:                                       ; preds = %for.end107
  %filename114 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1068
  %call116 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 245, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename114) #11, !dbg !1069
  br label %cleanup126, !dbg !1070

if.else:                                          ; preds = %for.end107
  %sub118.neg = add i64 %42, 1, !dbg !1071
  %sub120 = sub i64 %sub118.neg, %40, !dbg !1073
  store i64 %sub120, ptr %agg.result, align 8, !dbg !1073, !tbaa !1051
  %sub122.neg = add i64 %41, 1, !dbg !1074
  %sub124 = sub i64 %sub122.neg, %39, !dbg !1075
  store i64 %sub124, ptr %height, align 8, !dbg !1075, !tbaa !1057
  br label %cleanup126

cleanup126:                                       ; preds = %if.then113, %if.else, %if.then5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #11, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %target) #11, !dbg !1076
  ret void, !dbg !1076
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1077 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1084 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1087 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1090 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1096 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !1099 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !1102 i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1107 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageDepth(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1111 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1116, metadata !DIExpression()), !dbg !1117
  %call = tail call i64 @GetImageChannelDepth(ptr noundef %image, i32 noundef 47, ptr noundef %exception), !dbg !1118
  ret i64 %call, !dbg !1119
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageChannelDepth(ptr noundef %image, i32 noundef %channel, ptr noundef %exception) local_unnamed_addr #0 !dbg !1120 {
entry:
  %exception5 = alloca %struct._ExceptionInfo, align 8
  %exception88 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1126, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1127, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1128, metadata !DIExpression()), !dbg !1177
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1178
  %0 = load i32, ptr %debug, align 8, !dbg !1178, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !1180
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1181

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1182
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 315, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1183
  br label %if.end, !dbg !1184

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #11, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1134, metadata !DIExpression()), !dbg !1177
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef %call1, i64 noundef 8) #13, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1132, metadata !DIExpression()), !dbg !1177
  %cmp3 = icmp eq ptr %call2, null, !dbg !1187
  br i1 %cmp3, label %if.then4, label %for.cond.preheader, !dbg !1188

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1131, metadata !DIExpression()), !dbg !1177
  %cmp12495 = icmp sgt i64 %call1, 0, !dbg !1189
  br i1 %cmp12495, label %for.body, label %for.end, !dbg !1192

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception5) #11, !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %exception5, metadata !1139, metadata !DIExpression()), !dbg !1193
  call void @GetExceptionInfo(ptr noundef nonnull %exception5) #11, !dbg !1193
  %call6 = tail call ptr @__errno_location() #14, !dbg !1193
  %1 = load i32, ptr %call6, align 4, !dbg !1193, !tbaa !1194
  %call7 = call ptr @GetExceptionMessage(i32 noundef %1) #11, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1136, metadata !DIExpression()), !dbg !1195
  %call8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 320, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %call7) #11, !dbg !1193
  %call9 = call ptr @DestroyString(ptr noundef %call7) #11, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1136, metadata !DIExpression()), !dbg !1195
  call void @CatchException(ptr noundef nonnull %exception5) #11, !dbg !1193
  %call10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception5) #11, !dbg !1193
  call void @MagickCoreTerminus() #11, !dbg !1193
  call void @_exit(i32 noundef 1) #15, !dbg !1193
  unreachable, !dbg !1193

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0496 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0496, metadata !1131, metadata !DIExpression()), !dbg !1177
  %arrayidx = getelementptr inbounds i64, ptr %call2, i64 %i.0496, !dbg !1196
  store i64 1, ptr %arrayidx, align 8, !dbg !1197, !tbaa !976
  %inc = add nuw nsw i64 %i.0496, 1, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1131, metadata !DIExpression()), !dbg !1177
  %exitcond.not = icmp eq i64 %inc, %call1, !dbg !1189
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1192, !llvm.loop !1199

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %2 = load i32, ptr %image, align 8, !dbg !1201, !tbaa !1202
  %cmp13 = icmp eq i32 %2, 2, !dbg !1203
  br i1 %cmp13, label %land.lhs.true, label %if.end82, !dbg !1204

land.lhs.true:                                    ; preds = %for.end
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1205
  %3 = load i32, ptr %matte, align 8, !dbg !1205, !tbaa !1206
  %cmp14 = icmp eq i32 %3, 0, !dbg !1207
  br i1 %cmp14, label %for.cond16.preheader, label %if.end82, !dbg !1208

for.cond16.preheader:                             ; preds = %land.lhs.true
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10
  call void @llvm.dbg.value(metadata i64 0, metadata !1131, metadata !DIExpression()), !dbg !1177
  %4 = load i64, ptr %colors, align 8, !dbg !1209, !tbaa !1210
  %cmp17512 = icmp sgt i64 %4, 0, !dbg !1211
  br i1 %cmp17512, label %for.body18.lr.ph, label %for.cond16.preheader.for.end68_crit_edge, !dbg !1212

for.cond16.preheader.for.end68_crit_edge:         ; preds = %for.cond16.preheader
  %.pre532 = load i64, ptr %call2, align 8, !dbg !1213, !tbaa !976
  br label %for.end68, !dbg !1212

for.body18.lr.ph:                                 ; preds = %for.cond16.preheader
  %colormap52 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %and = and i32 %channel, 1
  %cmp27.not = icmp eq i32 %and, 0
  %and37 = and i32 %channel, 2
  %cmp38.not = icmp eq i32 %and37, 0
  %and49 = and i32 %channel, 4
  %cmp50.not = icmp eq i32 %and49, 0
  %5 = load i64, ptr %call2, align 8, !dbg !1214, !tbaa !976
  %6 = icmp ult i64 %5, 16, !dbg !1215
  br i1 %6, label %for.body18, label %for.end68

for.body18:                                       ; preds = %for.body18.lr.ph, %while.end
  %7 = phi i64 [ %17, %while.end ], [ %5, %for.body18.lr.ph ]
  %8 = phi i64 [ %18, %while.end ], [ %4, %for.body18.lr.ph ]
  %.pr = phi i64 [ %.pr528, %while.end ], [ %5, %for.body18.lr.ph ], !dbg !1214
  %i.1513 = phi i64 [ %inc67, %while.end ], [ 0, %for.body18.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.1513, metadata !1131, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 0, metadata !1140, metadata !DIExpression()), !dbg !1216
  %cmp21511 = icmp ult i64 %.pr, 16, !dbg !1215
  br i1 %cmp21511, label %while.body, label %while.end, !dbg !1217

while.body:                                       ; preds = %for.body18, %cleanup
  %9 = phi i64 [ %inc64, %cleanup ], [ %7, %for.body18 ]
  %.pr530 = phi i64 [ %inc64, %cleanup ], [ %.pr, %for.body18 ]
  call void @llvm.dbg.value(metadata i32 1, metadata !1147, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %.pr530, metadata !1219, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i64 1, metadata !1225, metadata !DIExpression()), !dbg !1226
  %sub.i = add nsw i64 %.pr530, -1, !dbg !1228
  %reass.add.i = shl nuw nsw i64 2, %sub.i, !dbg !1229
  %add.i = add i64 %reass.add.i, -1, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1149, metadata !DIExpression()), !dbg !1218
  br i1 %cmp27.not, label %land.lhs.true36, label %if.then28, !dbg !1230

if.then28:                                        ; preds = %while.body
  %10 = load ptr, ptr %colormap52, align 8, !dbg !1231, !tbaa !1234
  %red = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 %i.1513, i32 2, !dbg !1235
  %11 = load i16, ptr %red, align 2, !dbg !1235, !tbaa !857
  call void @llvm.dbg.value(metadata i16 %11, metadata !1236, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1244, metadata !DIExpression()), !dbg !1246
  %conv.i = uitofp i64 %add.i to float, !dbg !1248
  %conv2.i = uitofp i16 %11 to float, !dbg !1249
  %mul.i = fmul float %conv.i, %conv2.i, !dbg !1250
  %div.i = fdiv float %mul.i, 6.553500e+04, !dbg !1251
  %conv3.i = fpext float %div.i to double, !dbg !1252
  %add.i436 = fadd double %conv3.i, 5.000000e-01, !dbg !1253
  %conv4.i = fptoui double %add.i436 to i64, !dbg !1254
  %conv5.i = uitofp i64 %conv4.i to float, !dbg !1255
  %mul6.i = fmul float %conv5.i, 6.553500e+04, !dbg !1256
  %div8.i = fdiv float %mul6.i, %conv.i, !dbg !1257
  %conv9.i = fpext float %div8.i to double, !dbg !1258
  %add10.i = fadd double %conv9.i, 5.000000e-01, !dbg !1259
  %conv11.i = fptoui double %add10.i to i16, !dbg !1260
  call void @llvm.dbg.value(metadata i16 %conv11.i, metadata !1245, metadata !DIExpression()), !dbg !1246
  %cmp.i.not = icmp eq i16 %11, %conv11.i, !dbg !1261
  call void @llvm.dbg.value(metadata i32 undef, metadata !1147, metadata !DIExpression()), !dbg !1218
  br i1 %cmp.i.not, label %land.lhs.true36, label %cleanup, !dbg !1262

land.lhs.true36:                                  ; preds = %while.body, %if.then28
  br i1 %cmp38.not, label %land.lhs.true48, label %if.then39, !dbg !1264

if.then39:                                        ; preds = %land.lhs.true36
  %12 = load ptr, ptr %colormap52, align 8, !dbg !1265, !tbaa !1234
  %green = getelementptr inbounds %struct._PixelPacket, ptr %12, i64 %i.1513, i32 1, !dbg !1267
  %13 = load i16, ptr %green, align 2, !dbg !1267, !tbaa !865
  call void @llvm.dbg.value(metadata i16 %13, metadata !1236, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1244, metadata !DIExpression()), !dbg !1268
  %conv.i437 = uitofp i64 %add.i to float, !dbg !1270
  %conv2.i438 = uitofp i16 %13 to float, !dbg !1271
  %mul.i439 = fmul float %conv.i437, %conv2.i438, !dbg !1272
  %div.i440 = fdiv float %mul.i439, 6.553500e+04, !dbg !1273
  %conv3.i441 = fpext float %div.i440 to double, !dbg !1274
  %add.i442 = fadd double %conv3.i441, 5.000000e-01, !dbg !1275
  %conv4.i443 = fptoui double %add.i442 to i64, !dbg !1276
  %conv5.i444 = uitofp i64 %conv4.i443 to float, !dbg !1277
  %mul6.i445 = fmul float %conv5.i444, 6.553500e+04, !dbg !1278
  %div8.i446 = fdiv float %mul6.i445, %conv.i437, !dbg !1279
  %conv9.i447 = fpext float %div8.i446 to double, !dbg !1280
  %add10.i448 = fadd double %conv9.i447, 5.000000e-01, !dbg !1281
  %conv11.i449 = fptoui double %add10.i448 to i16, !dbg !1282
  call void @llvm.dbg.value(metadata i16 %conv11.i449, metadata !1245, metadata !DIExpression()), !dbg !1268
  %cmp.i450.not = icmp eq i16 %13, %conv11.i449, !dbg !1283
  call void @llvm.dbg.value(metadata i32 undef, metadata !1147, metadata !DIExpression()), !dbg !1218
  br i1 %cmp.i450.not, label %land.lhs.true48, label %cleanup, !dbg !1284

land.lhs.true48:                                  ; preds = %land.lhs.true36, %if.then39
  br i1 %cmp50.not, label %while.end.loopexit, label %if.then51, !dbg !1286

if.then51:                                        ; preds = %land.lhs.true48
  %14 = load ptr, ptr %colormap52, align 8, !dbg !1287, !tbaa !1234
  %arrayidx53 = getelementptr inbounds %struct._PixelPacket, ptr %14, i64 %i.1513, !dbg !1289
  %15 = load i16, ptr %arrayidx53, align 2, !dbg !1290, !tbaa !871
  call void @llvm.dbg.value(metadata i16 %15, metadata !1236, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1244, metadata !DIExpression()), !dbg !1291
  %conv.i452 = uitofp i64 %add.i to float, !dbg !1293
  %conv2.i453 = uitofp i16 %15 to float, !dbg !1294
  %mul.i454 = fmul float %conv.i452, %conv2.i453, !dbg !1295
  %div.i455 = fdiv float %mul.i454, 6.553500e+04, !dbg !1296
  %conv3.i456 = fpext float %div.i455 to double, !dbg !1297
  %add.i457 = fadd double %conv3.i456, 5.000000e-01, !dbg !1298
  %conv4.i458 = fptoui double %add.i457 to i64, !dbg !1299
  %conv5.i459 = uitofp i64 %conv4.i458 to float, !dbg !1300
  %mul6.i460 = fmul float %conv5.i459, 6.553500e+04, !dbg !1301
  %div8.i461 = fdiv float %mul6.i460, %conv.i452, !dbg !1302
  %conv9.i462 = fpext float %div8.i461 to double, !dbg !1303
  %add10.i463 = fadd double %conv9.i462, 5.000000e-01, !dbg !1304
  %conv11.i464 = fptoui double %add10.i463 to i16, !dbg !1305
  call void @llvm.dbg.value(metadata i16 %conv11.i464, metadata !1245, metadata !DIExpression()), !dbg !1291
  %cmp.i465.not = icmp eq i16 %15, %conv11.i464, !dbg !1306
  call void @llvm.dbg.value(metadata i32 undef, metadata !1147, metadata !DIExpression()), !dbg !1218
  br i1 %cmp.i465.not, label %while.end.loopexit, label %cleanup, !dbg !1307

cleanup:                                          ; preds = %if.then51, %if.then39, %if.then28
  %inc64 = add i64 %.pr530, 1, !dbg !1308
  store i64 %inc64, ptr %call2, align 8, !dbg !1308, !tbaa !976
  %exitcond526.not = icmp eq i64 %inc64, 16, !dbg !1215
  br i1 %exitcond526.not, label %while.end.loopexit, label %while.body, !dbg !1217

while.end.loopexit:                               ; preds = %land.lhs.true48, %if.then51, %cleanup
  %16 = phi i64 [ %9, %land.lhs.true48 ], [ %9, %if.then51 ], [ 16, %cleanup ]
  %.pr529 = phi i64 [ %.pr530, %land.lhs.true48 ], [ %.pr530, %if.then51 ], [ 16, %cleanup ]
  %.pre = load i64, ptr %colors, align 8, !dbg !1209, !tbaa !1210
  br label %while.end, !dbg !1309

while.end:                                        ; preds = %while.end.loopexit, %for.body18
  %17 = phi i64 [ %16, %while.end.loopexit ], [ %7, %for.body18 ]
  %18 = phi i64 [ %.pre, %while.end.loopexit ], [ %8, %for.body18 ], !dbg !1209
  %.pr528 = phi i64 [ %.pr529, %while.end.loopexit ], [ %.pr, %for.body18 ]
  %inc67 = add nuw nsw i64 %i.1513, 1, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %inc67, metadata !1131, metadata !DIExpression()), !dbg !1177
  %cmp17 = icmp slt i64 %inc67, %18, !dbg !1211
  br i1 %cmp17, label %for.body18, label %for.end68, !dbg !1212, !llvm.loop !1310

for.end68:                                        ; preds = %while.end, %for.body18.lr.ph, %for.cond16.preheader.for.end68_crit_edge
  %19 = phi i64 [ %.pre532, %for.cond16.preheader.for.end68_crit_edge ], [ %5, %for.body18.lr.ph ], [ %17, %while.end ], !dbg !1213
  call void @llvm.dbg.value(metadata i64 %19, metadata !1133, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 1, metadata !1131, metadata !DIExpression()), !dbg !1177
  %cmp71515 = icmp sgt i64 %call1, 1, !dbg !1313
  br i1 %cmp71515, label %for.body72, label %cleanup293, !dbg !1316

for.body72:                                       ; preds = %for.end68, %for.body72
  %i.2517 = phi i64 [ %inc79, %for.body72 ], [ 1, %for.end68 ]
  %depth.0516 = phi i64 [ %21, %for.body72 ], [ %19, %for.end68 ]
  call void @llvm.dbg.value(metadata i64 %i.2517, metadata !1131, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %depth.0516, metadata !1133, metadata !DIExpression()), !dbg !1177
  %arrayidx73 = getelementptr inbounds i64, ptr %call2, i64 %i.2517, !dbg !1317
  %20 = load i64, ptr %arrayidx73, align 8, !dbg !1317, !tbaa !976
  %21 = tail call i64 @llvm.umax.i64(i64 %depth.0516, i64 %20), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %21, metadata !1133, metadata !DIExpression()), !dbg !1177
  %inc79 = add nuw nsw i64 %i.2517, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %inc79, metadata !1131, metadata !DIExpression()), !dbg !1177
  %exitcond527.not = icmp eq i64 %inc79, %call1, !dbg !1313
  br i1 %exitcond527.not, label %cleanup293, label %for.body72, !dbg !1316, !llvm.loop !1321

if.end82:                                         ; preds = %land.lhs.true, %for.end
  %call83 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %call83, metadata !1129, metadata !DIExpression()), !dbg !1177
  %call84 = tail call ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #13, !dbg !1324
  call void @llvm.dbg.value(metadata ptr %call84, metadata !1150, metadata !DIExpression()), !dbg !1325
  %cmp85 = icmp eq ptr %call84, null, !dbg !1326
  br i1 %cmp85, label %if.then86, label %for.cond99.preheader, !dbg !1327

if.then86:                                        ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception88) #11, !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %exception88, metadata !1156, metadata !DIExpression()), !dbg !1328
  call void @GetExceptionInfo(ptr noundef nonnull %exception88) #11, !dbg !1328
  %call89 = tail call ptr @__errno_location() #14, !dbg !1328
  %22 = load i32, ptr %call89, align 4, !dbg !1328, !tbaa !1194
  %call90 = call ptr @GetExceptionMessage(i32 noundef %22) #11, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %call90, metadata !1153, metadata !DIExpression()), !dbg !1329
  %call91 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception88, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 380, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %call90) #11, !dbg !1328
  %call92 = call ptr @DestroyString(ptr noundef %call90) #11, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %call92, metadata !1153, metadata !DIExpression()), !dbg !1329
  call void @CatchException(ptr noundef nonnull %exception88) #11, !dbg !1328
  %call93 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception88) #11, !dbg !1328
  call void @MagickCoreTerminus() #11, !dbg !1328
  call void @_exit(i32 noundef 1) #15, !dbg !1328
  unreachable, !dbg !1328

for.cond99.preheader:                             ; preds = %if.end82, %for.end119
  %i.3498 = phi i64 [ %inc123, %for.end119 ], [ 0, %if.end82 ]
  call void @llvm.dbg.value(metadata i64 %i.3498, metadata !1131, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 1, metadata !1157, metadata !DIExpression()), !dbg !1330
  %conv104 = trunc i64 %i.3498 to i16
  %conv2.i471 = uitofp i16 %conv104 to float
  br label %for.body101, !dbg !1331

for.cond125.preheader:                            ; preds = %for.end119
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !1130, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 0, metadata !1135, metadata !DIExpression()), !dbg !1177
  %23 = load i64, ptr %rows, align 8, !dbg !1332, !tbaa !828
  %cmp126505 = icmp sgt i64 %23, 0, !dbg !1333
  br i1 %cmp126505, label %for.body128.lr.ph, label %for.end274, !dbg !1334

for.body128.lr.ph:                                ; preds = %for.cond125.preheader
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and147 = and i32 %channel, 1
  %cmp148.not = icmp eq i32 %and147, 0
  %and167 = and i32 %channel, 2
  %cmp168.not = icmp eq i32 %and167, 0
  %and187 = and i32 %channel, 4
  %cmp188.not = icmp eq i32 %and187, 0
  %and207 = and i32 %channel, 8
  %cmp208.not = icmp eq i32 %and207, 0
  %matte211 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %and230 = and i32 %channel, 32
  %cmp231.not = icmp eq i32 %and230, 0
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  br label %for.body128, !dbg !1334

for.body101:                                      ; preds = %for.cond99.preheader, %for.inc117
  %indvars.iv = phi i64 [ 1, %for.cond99.preheader ], [ %indvars.iv.next, %for.inc117 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1157, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1219, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64 1, metadata !1225, metadata !DIExpression()), !dbg !1335
  %sub.i467 = add nsw i64 %indvars.iv, -1, !dbg !1337
  %reass.add.i468 = shl nuw nsw i64 2, %sub.i467, !dbg !1338
  %add.i469 = add i64 %reass.add.i468, -1, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %add.i469, metadata !1165, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i16 %conv104, metadata !1161, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i16 %conv104, metadata !1340, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %add.i469, metadata !1345, metadata !DIExpression()), !dbg !1346
  %conv.i470 = uitofp i64 %add.i469 to float, !dbg !1349
  %mul.i472 = fmul float %conv2.i471, %conv.i470, !dbg !1350
  %div.i473 = fdiv float %mul.i472, 6.553500e+04, !dbg !1351
  %conv3.i474 = fpext float %div.i473 to double, !dbg !1352
  %add.i475 = fadd double %conv3.i474, 5.000000e-01, !dbg !1353
  %conv4.i476 = fptoui double %add.i475 to i64, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %conv4.i476, metadata !1355, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %add.i469, metadata !1360, metadata !DIExpression()), !dbg !1361
  %conv.i477 = uitofp i64 %conv4.i476 to float, !dbg !1363
  %mul.i478 = fmul float %conv.i477, 6.553500e+04, !dbg !1364
  %div.i479 = fdiv float %mul.i478, %conv.i470, !dbg !1365
  %conv2.i480 = fpext float %div.i479 to double, !dbg !1366
  %add.i481 = fadd double %conv2.i480, 5.000000e-01, !dbg !1367
  %conv3.i482 = fptoui double %add.i481 to i16, !dbg !1368
  %cmp109 = icmp eq i16 %conv3.i482, %conv104, !dbg !1369
  br i1 %cmp109, label %for.end119, label %for.inc117

for.inc117:                                       ; preds = %for.body101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1157, metadata !DIExpression()), !dbg !1330
  %exitcond523.not = icmp eq i64 %indvars.iv.next, 16, !dbg !1371
  br i1 %exitcond523.not, label %for.end119, label %for.body101, !dbg !1331, !llvm.loop !1372

for.end119:                                       ; preds = %for.body101, %for.inc117
  %depth98.0.lcssa = phi i64 [ %indvars.iv, %for.body101 ], [ 16, %for.inc117 ], !dbg !1374
  %conv120 = and i64 %depth98.0.lcssa, 4294967295, !dbg !1375
  %arrayidx121 = getelementptr inbounds i64, ptr %call84, i64 %i.3498, !dbg !1376
  store i64 %conv120, ptr %arrayidx121, align 8, !dbg !1377, !tbaa !976
  %inc123 = add nuw nsw i64 %i.3498, 1, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %inc123, metadata !1131, metadata !DIExpression()), !dbg !1177
  %exitcond524.not = icmp eq i64 %inc123, 65536, !dbg !1379
  br i1 %exitcond524.not, label %for.cond125.preheader, label %for.cond99.preheader, !dbg !1380, !llvm.loop !1381

for.body128:                                      ; preds = %for.body128.lr.ph, %cleanup266
  %status.0507 = phi i32 [ 1, %for.body128.lr.ph ], [ %status.2, %cleanup266 ]
  %y.0506 = phi i64 [ 0, %for.body128.lr.ph ], [ %inc273, %cleanup266 ]
  call void @llvm.dbg.value(metadata i32 %status.0507, metadata !1130, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %y.0506, metadata !1135, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 0, metadata !1166, metadata !DIExpression()), !dbg !1383
  %cmp131 = icmp eq i32 %status.0507, 0, !dbg !1384
  br i1 %cmp131, label %cleanup266, label %if.end134, !dbg !1386

if.end134:                                        ; preds = %for.body128
  %24 = load i64, ptr %columns, align 8, !dbg !1387, !tbaa !823
  %call135 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call83, i64 noundef 0, i64 noundef %y.0506, i64 noundef %24, i64 noundef 1, ptr noundef %exception) #12, !dbg !1388
  call void @llvm.dbg.value(metadata ptr %call135, metadata !1171, metadata !DIExpression()), !dbg !1383
  %cmp136 = icmp eq ptr %call135, null, !dbg !1389
  br i1 %cmp136, label %cleanup266, label %if.end139, !dbg !1391

if.end139:                                        ; preds = %if.end134
  %call140 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call83) #11, !dbg !1392
  call void @llvm.dbg.value(metadata ptr %call140, metadata !1170, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata ptr %call135, metadata !1171, metadata !DIExpression()), !dbg !1383
  %25 = load i64, ptr %columns, align 8, !dbg !1393, !tbaa !823
  %cmp143499 = icmp sgt i64 %25, 0, !dbg !1394
  br i1 %cmp143499, label %for.body145.lr.ph, label %for.end259, !dbg !1395

for.body145.lr.ph:                                ; preds = %if.end139
  %cmp237 = icmp eq ptr %call140, null
  br i1 %cmp231.not, label %for.body145.us, label %for.body145.lr.ph.split, !dbg !1396

for.body145.us:                                   ; preds = %for.body145.lr.ph, %if.end229.us
  %x.0502.us = phi i64 [ %inc258.us, %if.end229.us ], [ 0, %for.body145.lr.ph ]
  %p.0500.us = phi ptr [ %incdec.ptr.us, %if.end229.us ], [ %call135, %for.body145.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.0502.us, metadata !1172, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata ptr %p.0500.us, metadata !1171, metadata !DIExpression()), !dbg !1383
  br i1 %cmp148.not, label %if.end166.us, label %if.then150.us, !dbg !1398

if.then150.us:                                    ; preds = %for.body145.us
  %red151.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0500.us, i64 0, i32 2, !dbg !1399
  %26 = load i16, ptr %red151.us, align 2, !dbg !1399, !tbaa !857
  call void @llvm.dbg.value(metadata i16 %26, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom153.us = zext i16 %26 to i64, !dbg !1403
  %arrayidx154.us = getelementptr inbounds i64, ptr %call84, i64 %idxprom153.us, !dbg !1403
  %27 = load i64, ptr %arrayidx154.us, align 8, !dbg !1403, !tbaa !976
  %28 = load i64, ptr %call2, align 8, !dbg !1405, !tbaa !976
  %cmp157.us = icmp ugt i64 %27, %28, !dbg !1406
  br i1 %cmp157.us, label %if.then159.us, label %if.end166.us, !dbg !1407

if.then159.us:                                    ; preds = %if.then150.us
  store i64 %27, ptr %call2, align 8, !dbg !1408, !tbaa !976
  br label %if.end166.us, !dbg !1409

if.end166.us:                                     ; preds = %if.then159.us, %if.then150.us, %for.body145.us
  br i1 %cmp168.not, label %if.end186.us, label %if.then170.us, !dbg !1410

if.then170.us:                                    ; preds = %if.end166.us
  %green171.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0500.us, i64 0, i32 1, !dbg !1411
  %29 = load i16, ptr %green171.us, align 2, !dbg !1411, !tbaa !865
  call void @llvm.dbg.value(metadata i16 %29, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom173.us = zext i16 %29 to i64, !dbg !1414
  %arrayidx174.us = getelementptr inbounds i64, ptr %call84, i64 %idxprom173.us, !dbg !1414
  %30 = load i64, ptr %arrayidx174.us, align 8, !dbg !1414, !tbaa !976
  %31 = load i64, ptr %call2, align 8, !dbg !1416, !tbaa !976
  %cmp177.us = icmp ugt i64 %30, %31, !dbg !1417
  br i1 %cmp177.us, label %if.then179.us, label %if.end186.us, !dbg !1418

if.then179.us:                                    ; preds = %if.then170.us
  store i64 %30, ptr %call2, align 8, !dbg !1419, !tbaa !976
  br label %if.end186.us, !dbg !1420

if.end186.us:                                     ; preds = %if.then179.us, %if.then170.us, %if.end166.us
  br i1 %cmp188.not, label %if.end206.us, label %if.then190.us, !dbg !1421

if.then190.us:                                    ; preds = %if.end186.us
  %32 = load i16, ptr %p.0500.us, align 2, !dbg !1422, !tbaa !871
  call void @llvm.dbg.value(metadata i16 %32, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom193.us = zext i16 %32 to i64, !dbg !1425
  %arrayidx194.us = getelementptr inbounds i64, ptr %call84, i64 %idxprom193.us, !dbg !1425
  %33 = load i64, ptr %arrayidx194.us, align 8, !dbg !1425, !tbaa !976
  %34 = load i64, ptr %call2, align 8, !dbg !1427, !tbaa !976
  %cmp197.us = icmp ugt i64 %33, %34, !dbg !1428
  br i1 %cmp197.us, label %if.then199.us, label %if.end206.us, !dbg !1429

if.then199.us:                                    ; preds = %if.then190.us
  store i64 %33, ptr %call2, align 8, !dbg !1430, !tbaa !976
  br label %if.end206.us, !dbg !1431

if.end206.us:                                     ; preds = %if.then199.us, %if.then190.us, %if.end186.us
  br i1 %cmp208.not, label %if.end229.us, label %land.lhs.true210.us, !dbg !1432

land.lhs.true210.us:                              ; preds = %if.end206.us
  %35 = load i32, ptr %matte211, align 8, !dbg !1434, !tbaa !1206
  %cmp212.not.us = icmp eq i32 %35, 0, !dbg !1435
  br i1 %cmp212.not.us, label %if.end229.us, label %if.then214.us, !dbg !1436

if.then214.us:                                    ; preds = %land.lhs.true210.us
  %opacity.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0500.us, i64 0, i32 3, !dbg !1437
  %36 = load i16, ptr %opacity.us, align 2, !dbg !1437, !tbaa !877
  call void @llvm.dbg.value(metadata i16 %36, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom216.us = zext i16 %36 to i64, !dbg !1439
  %arrayidx217.us = getelementptr inbounds i64, ptr %call84, i64 %idxprom216.us, !dbg !1439
  %37 = load i64, ptr %arrayidx217.us, align 8, !dbg !1439, !tbaa !976
  %38 = load i64, ptr %call2, align 8, !dbg !1441, !tbaa !976
  %cmp220.us = icmp ugt i64 %37, %38, !dbg !1442
  br i1 %cmp220.us, label %if.then222.us, label %if.end229.us, !dbg !1443

if.then222.us:                                    ; preds = %if.then214.us
  store i64 %37, ptr %call2, align 8, !dbg !1444, !tbaa !976
  br label %if.end229.us, !dbg !1445

if.end229.us:                                     ; preds = %if.then222.us, %if.then214.us, %land.lhs.true210.us, %if.end206.us
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0500.us, i64 1, !dbg !1446
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !1171, metadata !DIExpression()), !dbg !1383
  %inc258.us = add nuw nsw i64 %x.0502.us, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %inc258.us, metadata !1172, metadata !DIExpression()), !dbg !1383
  %39 = load i64, ptr %columns, align 8, !dbg !1393, !tbaa !823
  %cmp143.us = icmp slt i64 %inc258.us, %39, !dbg !1394
  br i1 %cmp143.us, label %for.body145.us, label %for.end259, !dbg !1395, !llvm.loop !1448

for.body145.lr.ph.split:                          ; preds = %for.body145.lr.ph
  %40 = load i32, ptr %colorspace, align 4, !tbaa !843
  %cmp234 = icmp eq i32 %40, 12
  br label %for.body145, !dbg !1395

for.body145:                                      ; preds = %for.body145.lr.ph.split, %if.end256
  %x.0502 = phi i64 [ 0, %for.body145.lr.ph.split ], [ %inc258, %if.end256 ]
  %p.0500 = phi ptr [ %call135, %for.body145.lr.ph.split ], [ %incdec.ptr, %if.end256 ]
  call void @llvm.dbg.value(metadata i64 %x.0502, metadata !1172, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata ptr %p.0500, metadata !1171, metadata !DIExpression()), !dbg !1383
  br i1 %cmp148.not, label %if.end166, label %if.then150, !dbg !1398

if.then150:                                       ; preds = %for.body145
  %red151 = getelementptr inbounds %struct._PixelPacket, ptr %p.0500, i64 0, i32 2, !dbg !1399
  %41 = load i16, ptr %red151, align 2, !dbg !1399, !tbaa !857
  call void @llvm.dbg.value(metadata i16 %41, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom153 = zext i16 %41 to i64, !dbg !1403
  %arrayidx154 = getelementptr inbounds i64, ptr %call84, i64 %idxprom153, !dbg !1403
  %42 = load i64, ptr %arrayidx154, align 8, !dbg !1403, !tbaa !976
  %43 = load i64, ptr %call2, align 8, !dbg !1405, !tbaa !976
  %cmp157 = icmp ugt i64 %42, %43, !dbg !1406
  br i1 %cmp157, label %if.then159, label %if.end166, !dbg !1407

if.then159:                                       ; preds = %if.then150
  store i64 %42, ptr %call2, align 8, !dbg !1408, !tbaa !976
  br label %if.end166, !dbg !1409

if.end166:                                        ; preds = %if.then150, %if.then159, %for.body145
  br i1 %cmp168.not, label %if.end186, label %if.then170, !dbg !1410

if.then170:                                       ; preds = %if.end166
  %green171 = getelementptr inbounds %struct._PixelPacket, ptr %p.0500, i64 0, i32 1, !dbg !1411
  %44 = load i16, ptr %green171, align 2, !dbg !1411, !tbaa !865
  call void @llvm.dbg.value(metadata i16 %44, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom173 = zext i16 %44 to i64, !dbg !1414
  %arrayidx174 = getelementptr inbounds i64, ptr %call84, i64 %idxprom173, !dbg !1414
  %45 = load i64, ptr %arrayidx174, align 8, !dbg !1414, !tbaa !976
  %46 = load i64, ptr %call2, align 8, !dbg !1416, !tbaa !976
  %cmp177 = icmp ugt i64 %45, %46, !dbg !1417
  br i1 %cmp177, label %if.then179, label %if.end186, !dbg !1418

if.then179:                                       ; preds = %if.then170
  store i64 %45, ptr %call2, align 8, !dbg !1419, !tbaa !976
  br label %if.end186, !dbg !1420

if.end186:                                        ; preds = %if.then170, %if.then179, %if.end166
  br i1 %cmp188.not, label %if.end206, label %if.then190, !dbg !1421

if.then190:                                       ; preds = %if.end186
  %47 = load i16, ptr %p.0500, align 2, !dbg !1422, !tbaa !871
  call void @llvm.dbg.value(metadata i16 %47, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom193 = zext i16 %47 to i64, !dbg !1425
  %arrayidx194 = getelementptr inbounds i64, ptr %call84, i64 %idxprom193, !dbg !1425
  %48 = load i64, ptr %arrayidx194, align 8, !dbg !1425, !tbaa !976
  %49 = load i64, ptr %call2, align 8, !dbg !1427, !tbaa !976
  %cmp197 = icmp ugt i64 %48, %49, !dbg !1428
  br i1 %cmp197, label %if.then199, label %if.end206, !dbg !1429

if.then199:                                       ; preds = %if.then190
  store i64 %48, ptr %call2, align 8, !dbg !1430, !tbaa !976
  br label %if.end206, !dbg !1431

if.end206:                                        ; preds = %if.then190, %if.then199, %if.end186
  br i1 %cmp208.not, label %if.end229, label %land.lhs.true210, !dbg !1432

land.lhs.true210:                                 ; preds = %if.end206
  %50 = load i32, ptr %matte211, align 8, !dbg !1434, !tbaa !1206
  %cmp212.not = icmp eq i32 %50, 0, !dbg !1435
  br i1 %cmp212.not, label %if.end229, label %if.then214, !dbg !1436

if.then214:                                       ; preds = %land.lhs.true210
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.0500, i64 0, i32 3, !dbg !1437
  %51 = load i16, ptr %opacity, align 2, !dbg !1437, !tbaa !877
  call void @llvm.dbg.value(metadata i16 %51, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom216 = zext i16 %51 to i64, !dbg !1439
  %arrayidx217 = getelementptr inbounds i64, ptr %call84, i64 %idxprom216, !dbg !1439
  %52 = load i64, ptr %arrayidx217, align 8, !dbg !1439, !tbaa !976
  %53 = load i64, ptr %call2, align 8, !dbg !1441, !tbaa !976
  %cmp220 = icmp ugt i64 %52, %53, !dbg !1442
  br i1 %cmp220, label %if.then222, label %if.end229, !dbg !1443

if.then222:                                       ; preds = %if.then214
  store i64 %52, ptr %call2, align 8, !dbg !1444, !tbaa !976
  br label %if.end229, !dbg !1445

if.end229:                                        ; preds = %if.then214, %if.then222, %land.lhs.true210, %if.end206
  br i1 %cmp234, label %if.then236, label %if.end256, !dbg !1450

if.then236:                                       ; preds = %if.end229
  br i1 %cmp237, label %cond.end, label %cond.false, !dbg !1451

cond.false:                                       ; preds = %if.then236
  %add.ptr = getelementptr inbounds i16, ptr %call140, i64 %x.0502, !dbg !1451
  %54 = load i16, ptr %add.ptr, align 2, !dbg !1451, !tbaa !886
  br label %cond.end, !dbg !1451

cond.end:                                         ; preds = %if.then236, %cond.false
  %cond = phi i16 [ %54, %cond.false ], [ 0, %if.then236 ], !dbg !1451
  call void @llvm.dbg.value(metadata i16 %cond, metadata !1173, metadata !DIExpression()), !dbg !1402
  %idxprom243 = zext i16 %cond to i64, !dbg !1453
  %arrayidx244 = getelementptr inbounds i64, ptr %call84, i64 %idxprom243, !dbg !1453
  %55 = load i64, ptr %arrayidx244, align 8, !dbg !1453, !tbaa !976
  %56 = load i64, ptr %call2, align 8, !dbg !1455, !tbaa !976
  %cmp247 = icmp ugt i64 %55, %56, !dbg !1456
  br i1 %cmp247, label %if.then249, label %if.end256, !dbg !1457

if.then249:                                       ; preds = %cond.end
  store i64 %55, ptr %call2, align 8, !dbg !1458, !tbaa !976
  br label %if.end256, !dbg !1459

if.end256:                                        ; preds = %cond.end, %if.then249, %if.end229
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0500, i64 1, !dbg !1446
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1171, metadata !DIExpression()), !dbg !1383
  %inc258 = add nuw nsw i64 %x.0502, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %inc258, metadata !1172, metadata !DIExpression()), !dbg !1383
  %57 = load i64, ptr %columns, align 8, !dbg !1393, !tbaa !823
  %cmp143 = icmp slt i64 %inc258, %57, !dbg !1394
  br i1 %cmp143, label %for.body145, label %for.end259, !dbg !1395, !llvm.loop !1448

for.end259:                                       ; preds = %if.end256, %if.end229.us, %if.end139
  %58 = load i64, ptr %call2, align 8, !dbg !1460, !tbaa !976
  %cmp262 = icmp ne i64 %58, 16, !dbg !1462
  %spec.select434 = zext i1 %cmp262 to i32, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %spec.select434, metadata !1130, metadata !DIExpression()), !dbg !1177
  br label %cleanup266, !dbg !1464

cleanup266:                                       ; preds = %if.end134, %for.body128, %for.end259
  %status.2 = phi i32 [ %spec.select434, %for.end259 ], [ 0, %for.body128 ], [ 1, %if.end134 ], !dbg !1177
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !1130, metadata !DIExpression()), !dbg !1177
  %inc273 = add nuw nsw i64 %y.0506, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %inc273, metadata !1135, metadata !DIExpression()), !dbg !1177
  %59 = load i64, ptr %rows, align 8, !dbg !1332, !tbaa !828
  %cmp126 = icmp slt i64 %inc273, %59, !dbg !1333
  br i1 %cmp126, label %for.body128, label %for.end274, !dbg !1334, !llvm.loop !1466

for.end274:                                       ; preds = %cleanup266, %for.cond125.preheader
  %call275 = tail call ptr @DestroyCacheView(ptr noundef %call83) #11, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %call275, metadata !1129, metadata !DIExpression()), !dbg !1177
  %60 = load i64, ptr %call2, align 8, !dbg !1469, !tbaa !976
  call void @llvm.dbg.value(metadata i64 %60, metadata !1133, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 1, metadata !1131, metadata !DIExpression()), !dbg !1177
  %cmp278508 = icmp sgt i64 %call1, 1, !dbg !1470
  br i1 %cmp278508, label %for.body280, label %for.end289, !dbg !1473

for.body280:                                      ; preds = %for.end274, %for.body280
  %i.4510 = phi i64 [ %inc288, %for.body280 ], [ 1, %for.end274 ]
  %depth.2509 = phi i64 [ %62, %for.body280 ], [ %60, %for.end274 ]
  call void @llvm.dbg.value(metadata i64 %i.4510, metadata !1131, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %depth.2509, metadata !1133, metadata !DIExpression()), !dbg !1177
  %arrayidx281 = getelementptr inbounds i64, ptr %call2, i64 %i.4510, !dbg !1474
  %61 = load i64, ptr %arrayidx281, align 8, !dbg !1474, !tbaa !976
  %62 = tail call i64 @llvm.umax.i64(i64 %depth.2509, i64 %61), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %62, metadata !1133, metadata !DIExpression()), !dbg !1177
  %inc288 = add nuw nsw i64 %i.4510, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %inc288, metadata !1131, metadata !DIExpression()), !dbg !1177
  %exitcond525.not = icmp eq i64 %inc288, %call1, !dbg !1470
  br i1 %exitcond525.not, label %for.end289, label %for.body280, !dbg !1473, !llvm.loop !1478

for.end289:                                       ; preds = %for.body280, %for.end274
  %depth.2.lcssa = phi i64 [ %60, %for.end274 ], [ %62, %for.body280 ], !dbg !1325
  %call290 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call84) #11, !dbg !1480
  call void @llvm.dbg.value(metadata ptr %call290, metadata !1150, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %call291, metadata !1132, metadata !DIExpression()), !dbg !1177
  br label %cleanup293

cleanup293:                                       ; preds = %for.body72, %for.end68, %for.end289
  %retval.0 = phi i64 [ %depth.2.lcssa, %for.end289 ], [ %19, %for.end68 ], [ %21, %for.body72 ], !dbg !1177
  %call291 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #11, !dbg !1177
  ret i64 %retval.0, !dbg !1481
}

declare !dbg !1482 i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !1487 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare !dbg !1491 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1494 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !1497 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1501 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1502 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1505 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare !dbg !1509 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetImageQuantumDepth(ptr nocapture noundef readonly %image, i32 noundef %constrain) local_unnamed_addr #9 !dbg !1512 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1517, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %constrain, metadata !1518, metadata !DIExpression()), !dbg !1520
  %depth1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !1521
  %0 = load i64, ptr %depth1, align 8, !dbg !1521, !tbaa !1522
  call void @llvm.dbg.value(metadata i64 %0, metadata !1519, metadata !DIExpression()), !dbg !1520
  %cmp = icmp ult i64 %0, 9, !dbg !1523
  br i1 %cmp, label %if.end12, label %if.else, !dbg !1525

if.else:                                          ; preds = %entry
  %cmp2 = icmp ult i64 %0, 17, !dbg !1526
  br i1 %cmp2, label %if.end12, label %if.else4, !dbg !1528

if.else4:                                         ; preds = %if.else
  %1 = tail call i64 @llvm.umax.i64(i64 %0, i64 64)
  %cmp5.inv = icmp ugt i64 %0, 32, !dbg !1529
  %spec.select = select i1 %cmp5.inv, i64 %1, i64 32, !dbg !1529
  br label %if.end12, !dbg !1529

if.end12:                                         ; preds = %if.else4, %if.else, %entry
  %depth.0 = phi i64 [ 8, %entry ], [ 16, %if.else ], [ %spec.select, %if.else4 ], !dbg !1530
  call void @llvm.dbg.value(metadata i64 %depth.0, metadata !1519, metadata !DIExpression()), !dbg !1520
  %cmp13.not = icmp eq i32 %constrain, 0, !dbg !1531
  br i1 %cmp13.not, label %if.end16, label %if.then14, !dbg !1533

if.then14:                                        ; preds = %if.end12
  %conv = uitofp i64 %depth.0 to double, !dbg !1534
  call void @llvm.dbg.value(metadata double %conv, metadata !1535, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata double 1.600000e+01, metadata !1541, metadata !DIExpression()), !dbg !1542
  %cmp.i = fcmp olt double %conv, 1.600000e+01, !dbg !1544
  %x..i = select i1 %cmp.i, double %conv, double 1.600000e+01, !dbg !1542
  %conv15 = fptoui double %x..i to i64, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %conv15, metadata !1519, metadata !DIExpression()), !dbg !1520
  br label %if.end16, !dbg !1547

if.end16:                                         ; preds = %if.then14, %if.end12
  %depth.1 = phi i64 [ %conv15, %if.then14 ], [ %depth.0, %if.end12 ], !dbg !1520
  call void @llvm.dbg.value(metadata i64 %depth.1, metadata !1519, metadata !DIExpression()), !dbg !1520
  ret i64 %depth.1, !dbg !1548
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageType(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1549 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1553, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1554, metadata !DIExpression()), !dbg !1555
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1556
  %0 = load i32, ptr %debug, align 8, !dbg !1556, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !1558
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1559

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1560
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1561
  br label %if.end, !dbg !1562

if.end:                                           ; preds = %if.then, %entry
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1563
  %1 = load i32, ptr %colorspace, align 4, !dbg !1563, !tbaa !843
  %cmp1 = icmp eq i32 %1, 12, !dbg !1565
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1566

if.then2:                                         ; preds = %if.end
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1567
  %2 = load i32, ptr %matte, align 8, !dbg !1567, !tbaa !1206
  %cmp3 = icmp eq i32 %2, 0, !dbg !1570
  %. = select i1 %cmp3, i32 8, i32 9, !dbg !1571
  br label %return, !dbg !1571

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @IsMonochromeImage(ptr noundef nonnull %image, ptr noundef %exception), !dbg !1572
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !1574
  br i1 %cmp8.not, label %if.end10, label %return, !dbg !1575

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef %exception), !dbg !1576
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !1578
  br i1 %cmp12.not, label %if.end18, label %if.then13, !dbg !1579

if.then13:                                        ; preds = %if.end10
  %matte14 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1580
  %3 = load i32, ptr %matte14, align 8, !dbg !1580, !tbaa !1206
  %cmp15.not = icmp eq i32 %3, 0, !dbg !1583
  %.42 = select i1 %cmp15.not, i32 2, i32 3, !dbg !1584
  br label %return, !dbg !1584

if.end18:                                         ; preds = %if.end10
  %call19 = tail call i32 @IsPaletteImage(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1585
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !1587
  %matte27 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1555
  %4 = load i32, ptr %matte27, align 8, !dbg !1555, !tbaa !1206
  %cmp28.not = icmp eq i32 %4, 0, !dbg !1555
  br i1 %cmp20.not, label %if.end26, label %if.then21, !dbg !1588

if.then21:                                        ; preds = %if.end18
  %.43 = select i1 %cmp28.not, i32 4, i32 5, !dbg !1589
  br label %return, !dbg !1589

if.end26:                                         ; preds = %if.end18
  %.44 = select i1 %cmp28.not, i32 6, i32 7, !dbg !1555
  br label %return, !dbg !1555

return:                                           ; preds = %if.end26, %if.then21, %if.then13, %if.end6, %if.then2
  %retval.0 = phi i32 [ %., %if.then2 ], [ 1, %if.end6 ], [ %.42, %if.then13 ], [ %.43, %if.then21 ], [ %.44, %if.end26 ], !dbg !1555
  ret i32 %retval.0, !dbg !1591
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsMonochromeImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1592 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1596, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1597, metadata !DIExpression()), !dbg !1604
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1605
  %0 = load i32, ptr %debug, align 8, !dbg !1605, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !1607
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1608

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1609
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 807, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1610
  br label %if.end, !dbg !1611

if.end:                                           ; preds = %if.then, %entry
  %type1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1612
  %1 = load i32, ptr %type1, align 8, !dbg !1612, !tbaa !1614
  %cmp2 = icmp eq i32 %1, 1, !dbg !1615
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1616

if.end4:                                          ; preds = %if.end
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1617
  %2 = load i32, ptr %colorspace, align 4, !dbg !1617, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %2, metadata !1619, metadata !DIExpression()), !dbg !1626
  switch i32 %2, label %cleanup [
    i32 19, label %if.end11
    i32 17, label %if.end11
    i32 2, label %if.end11
    i32 29, label %if.end11
    i32 13, label %if.end11
    i32 3, label %if.end11
    i32 1, label %if.end11
  ], !dbg !1628

if.end11:                                         ; preds = %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4, %if.end4
  call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !1604
  %call12 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1630
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1598, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 0, metadata !1603, metadata !DIExpression()), !dbg !1604
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !1604
  %3 = load i64, ptr %rows, align 8, !dbg !1631, !tbaa !828
  %cmp1383 = icmp sgt i64 %3, 0, !dbg !1634
  br i1 %cmp1383, label %for.body.lr.ph, label %for.end31, !dbg !1635

for.body.lr.ph:                                   ; preds = %if.end11
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %.pre = load i64, ptr %columns, align 8, !dbg !1636, !tbaa !823
  br label %for.body, !dbg !1635

for.body:                                         ; preds = %for.body.lr.ph, %for.inc29
  %4 = phi i64 [ %.pre, %for.body.lr.ph ], [ %5, %for.inc29 ], !dbg !1636
  %y.084 = phi i64 [ 0, %for.body.lr.ph ], [ %inc30, %for.inc29 ]
  call void @llvm.dbg.value(metadata i64 %y.084, metadata !1603, metadata !DIExpression()), !dbg !1604
  %call14 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call12, i64 noundef 0, i64 noundef %y.084, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #12, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1602, metadata !DIExpression()), !dbg !1604
  %cmp15 = icmp eq ptr %call14, null, !dbg !1639
  br i1 %cmp15, label %for.end31, label %for.cond18.preheader, !dbg !1641

for.cond18.preheader:                             ; preds = %for.body
  %5 = load i64, ptr %columns, align 8, !tbaa !823
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1602, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 0, metadata !1601, metadata !DIExpression()), !dbg !1604
  %cmp2080 = icmp sgt i64 %5, 0, !dbg !1642
  br i1 %cmp2080, label %for.body21, label %for.inc29, !dbg !1645

for.body21:                                       ; preds = %for.cond18.preheader, %if.end25
  %p.082 = phi ptr [ %incdec.ptr, %if.end25 ], [ %call14, %for.cond18.preheader ]
  %x.081 = phi i64 [ %inc, %if.end25 ], [ 0, %for.cond18.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.082, metadata !1602, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %x.081, metadata !1601, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr %p.082, metadata !1646, metadata !DIExpression()), !dbg !1651
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.082, i64 0, i32 2, !dbg !1655
  %6 = load i16, ptr %red.i, align 2, !dbg !1655, !tbaa !857
  switch i16 %6, label %if.then34.critedge [
    i16 0, label %land.lhs.true.i
    i16 -1, label %land.lhs.true.i
  ], !dbg !1657

land.lhs.true.i:                                  ; preds = %for.body21, %for.body21
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.082, i64 0, i32 1, !dbg !1658
  %7 = load i16, ptr %green.i, align 2, !dbg !1658, !tbaa !865
  %cmp9.i = icmp eq i16 %6, %7, !dbg !1659
  br i1 %cmp9.i, label %land.lhs.true11.i, label %if.then34.critedge, !dbg !1660

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %8 = load i16, ptr %p.082, align 2, !dbg !1661, !tbaa !871
  %cmp15.i = icmp eq i16 %6, %8, !dbg !1662
  br i1 %cmp15.i, label %if.end25, label %if.then34.critedge, !dbg !1663

if.end25:                                         ; preds = %land.lhs.true11.i
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.082, i64 1, !dbg !1664
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1602, metadata !DIExpression()), !dbg !1604
  %inc = add nuw nsw i64 %x.081, 1, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1601, metadata !DIExpression()), !dbg !1604
  %exitcond.not = icmp eq i64 %inc, %5, !dbg !1642
  br i1 %exitcond.not, label %for.inc29, label %for.body21, !dbg !1645, !llvm.loop !1666

for.inc29:                                        ; preds = %if.end25, %for.cond18.preheader
  %inc30 = add nuw nsw i64 %y.084, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %inc30, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !1604
  %9 = load i64, ptr %rows, align 8, !dbg !1631, !tbaa !828
  %cmp13 = icmp slt i64 %inc30, %9, !dbg !1634
  br i1 %cmp13, label %for.body, label %for.end31, !dbg !1635, !llvm.loop !1669

for.end31:                                        ; preds = %for.inc29, %for.body, %if.end11
  call void @llvm.dbg.value(metadata i32 undef, metadata !1599, metadata !DIExpression()), !dbg !1604
  %call32 = tail call ptr @DestroyCacheView(ptr noundef %call12) #11, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1598, metadata !DIExpression()), !dbg !1604
  store i32 2, ptr %colorspace, align 4, !dbg !1672, !tbaa !843
  %call37 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %call37, metadata !1600, metadata !DIExpression()), !dbg !1604
  %call38 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1674
  %cmp39 = icmp eq i32 %call38, 0, !dbg !1676
  br i1 %cmp39, label %cleanup, label %if.end41, !dbg !1677

if.then34.critedge:                               ; preds = %land.lhs.true11.i, %land.lhs.true.i, %for.body21
  call void @llvm.dbg.value(metadata i32 undef, metadata !1599, metadata !DIExpression()), !dbg !1604
  %call32.c = tail call ptr @DestroyCacheView(ptr noundef %call12) #11, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1598, metadata !DIExpression()), !dbg !1604
  br label %cleanup, !dbg !1678

if.end41:                                         ; preds = %for.end31
  store i32 1, ptr %type1, align 8, !dbg !1680, !tbaa !1614
  br label %cleanup, !dbg !1681

cleanup:                                          ; preds = %if.end4, %for.end31, %if.end, %if.end41, %if.then34.critedge
  %retval.0 = phi i32 [ 0, %if.then34.critedge ], [ 1, %if.end41 ], [ 1, %if.end ], [ %call37, %for.end31 ], [ 0, %if.end4 ], !dbg !1604
  ret i32 %retval.0, !dbg !1682
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsGrayImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1683 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1685, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1686, metadata !DIExpression()), !dbg !1692
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1693
  %0 = load i32, ptr %debug, align 8, !dbg !1693, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !1695
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1696

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1697
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 716, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1698
  br label %if.end, !dbg !1699

if.end:                                           ; preds = %if.then, %entry
  %type1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1700
  %1 = load i32, ptr %type1, align 8, !dbg !1700, !tbaa !1614
  %.off = add i32 %1, -1, !dbg !1702
  %switch = icmp ult i32 %.off, 3, !dbg !1702
  br i1 %switch, label %cleanup, label %if.end9, !dbg !1702

if.end9:                                          ; preds = %if.end
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1703
  %2 = load i32, ptr %colorspace, align 4, !dbg !1703, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %2, metadata !1619, metadata !DIExpression()), !dbg !1705
  switch i32 %2, label %cleanup [
    i32 19, label %if.end16
    i32 17, label %if.end16
    i32 2, label %if.end16
    i32 29, label %if.end16
    i32 13, label %if.end16
    i32 3, label %if.end16
    i32 1, label %if.end16
  ], !dbg !1707

if.end16:                                         ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  call void @llvm.dbg.value(metadata i32 1, metadata !1688, metadata !DIExpression()), !dbg !1692
  %call17 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1708
  call void @llvm.dbg.value(metadata ptr %call17, metadata !1687, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 0, metadata !1691, metadata !DIExpression()), !dbg !1692
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 1, metadata !1688, metadata !DIExpression()), !dbg !1692
  %3 = load i64, ptr %rows, align 8, !dbg !1709, !tbaa !828
  %cmp18121 = icmp sgt i64 %3, 0, !dbg !1712
  br i1 %cmp18121, label %for.body.lr.ph, label %if.end46, !dbg !1713

for.body.lr.ph:                                   ; preds = %if.end16
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %.pre = load i64, ptr %columns, align 8, !dbg !1714, !tbaa !823
  br label %for.body, !dbg !1713

for.body:                                         ; preds = %for.body.lr.ph, %for.inc40
  %4 = phi i64 [ %.pre, %for.body.lr.ph ], [ %5, %for.inc40 ], !dbg !1714
  %y.0123 = phi i64 [ 0, %for.body.lr.ph ], [ %inc41, %for.inc40 ]
  %type.0122 = phi i32 [ 1, %for.body.lr.ph ], [ %type.1.lcssa, %for.inc40 ]
  call void @llvm.dbg.value(metadata i64 %y.0123, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 %type.0122, metadata !1688, metadata !DIExpression()), !dbg !1692
  %call19 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call17, i64 noundef 0, i64 noundef %y.0123, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #12, !dbg !1716
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1689, metadata !DIExpression()), !dbg !1692
  %cmp20 = icmp eq ptr %call19, null, !dbg !1717
  br i1 %cmp20, label %if.end46, label %for.cond23.preheader, !dbg !1719

for.cond23.preheader:                             ; preds = %for.body
  %5 = load i64, ptr %columns, align 8, !tbaa !823
  call void @llvm.dbg.value(metadata i64 0, metadata !1690, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1689, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 %type.0122, metadata !1688, metadata !DIExpression()), !dbg !1692
  %cmp25115 = icmp sgt i64 %5, 0, !dbg !1720
  br i1 %cmp25115, label %for.body26, label %for.inc40, !dbg !1723

for.body26:                                       ; preds = %for.cond23.preheader, %if.end36
  %x.0120 = phi i64 [ %inc, %if.end36 ], [ 0, %for.cond23.preheader ]
  %p.0117 = phi ptr [ %incdec.ptr, %if.end36 ], [ %call19, %for.cond23.preheader ]
  %type.1116 = phi i32 [ %type.2, %if.end36 ], [ %type.0122, %for.cond23.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0120, metadata !1690, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %p.0117, metadata !1689, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 %type.1116, metadata !1688, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %p.0117, metadata !1724, metadata !DIExpression()), !dbg !1727
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0117, i64 0, i32 2, !dbg !1731
  %6 = load i16, ptr %red.i, align 2, !dbg !1731, !tbaa !857
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0117, i64 0, i32 1, !dbg !1733
  %7 = load i16, ptr %green.i, align 2, !dbg !1733, !tbaa !865
  %cmp.i = icmp eq i16 %6, %7, !dbg !1734
  br i1 %cmp.i, label %land.lhs.true.i, label %for.end42, !dbg !1735

land.lhs.true.i:                                  ; preds = %for.body26
  %8 = load i16, ptr %p.0117, align 2, !dbg !1736, !tbaa !871
  %cmp6.i = icmp eq i16 %6, %8, !dbg !1737
  br i1 %cmp6.i, label %if.end30, label %for.end42, !dbg !1738

if.end30:                                         ; preds = %land.lhs.true.i
  %cmp31 = icmp eq i32 %type.1116, 1, !dbg !1739
  br i1 %cmp31, label %land.lhs.true32, label %if.end36, !dbg !1741

land.lhs.true32:                                  ; preds = %if.end30
  call void @llvm.dbg.value(metadata ptr %p.0117, metadata !1646, metadata !DIExpression()), !dbg !1742
  %9 = add i16 %6, 1, !dbg !1744
  %switch.selectcmp = icmp ult i16 %9, 2, !dbg !1744
  %10 = select i1 %switch.selectcmp, i32 1, i32 2, !dbg !1744
  br label %if.end36, !dbg !1744

if.end36:                                         ; preds = %land.lhs.true32, %if.end30
  %type.2 = phi i32 [ 2, %if.end30 ], [ %10, %land.lhs.true32 ], !dbg !1692
  call void @llvm.dbg.value(metadata i32 %type.2, metadata !1688, metadata !DIExpression()), !dbg !1692
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0117, i64 1, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1689, metadata !DIExpression()), !dbg !1692
  %inc = add nuw nsw i64 %x.0120, 1, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1690, metadata !DIExpression()), !dbg !1692
  %exitcond.not = icmp eq i64 %inc, %5, !dbg !1720
  br i1 %exitcond.not, label %for.inc40, label %for.body26, !dbg !1723, !llvm.loop !1747

for.inc40:                                        ; preds = %if.end36, %for.cond23.preheader
  %type.1.lcssa = phi i32 [ %type.0122, %for.cond23.preheader ], [ %type.2, %if.end36 ], !dbg !1692
  call void @llvm.dbg.value(metadata i32 %type.1.lcssa, metadata !1688, metadata !DIExpression()), !dbg !1692
  %inc41 = add nuw nsw i64 %y.0123, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %inc41, metadata !1691, metadata !DIExpression()), !dbg !1692
  %11 = load i64, ptr %rows, align 8, !dbg !1709, !tbaa !828
  %cmp18 = icmp slt i64 %inc41, %11, !dbg !1712
  br i1 %cmp18, label %for.body, label %if.end46, !dbg !1713, !llvm.loop !1750

for.end42:                                        ; preds = %for.body26, %land.lhs.true.i
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1692
  %call43 = tail call ptr @DestroyCacheView(ptr noundef %call17) #11, !dbg !1752
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1687, metadata !DIExpression()), !dbg !1692
  br label %cleanup, !dbg !1753

if.end46:                                         ; preds = %for.inc40, %for.body, %if.end16
  %type.0.lcssa = phi i32 [ 1, %if.end16 ], [ %type.0122, %for.body ], [ %type.1.lcssa, %for.inc40 ], !dbg !1692
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1692
  %call43110 = tail call ptr @DestroyCacheView(ptr noundef %call17) #11, !dbg !1752
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1687, metadata !DIExpression()), !dbg !1692
  store i32 2, ptr %colorspace, align 4, !dbg !1754, !tbaa !843
  %call48 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1755
  %cmp49 = icmp eq i32 %call48, 0, !dbg !1757
  br i1 %cmp49, label %cleanup, label %if.end51, !dbg !1758

if.end51:                                         ; preds = %if.end46
  store i32 %type.0.lcssa, ptr %type1, align 8, !dbg !1759, !tbaa !1614
  %cmp53 = icmp eq i32 %type.0.lcssa, 2, !dbg !1760
  br i1 %cmp53, label %land.lhs.true54, label %cleanup, !dbg !1762

land.lhs.true54:                                  ; preds = %if.end51
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1763
  %12 = load i32, ptr %matte, align 8, !dbg !1763, !tbaa !1206
  %cmp55.not = icmp eq i32 %12, 0, !dbg !1764
  br i1 %cmp55.not, label %cleanup, label %if.then56, !dbg !1765

if.then56:                                        ; preds = %land.lhs.true54
  store i32 3, ptr %type1, align 8, !dbg !1766, !tbaa !1614
  br label %cleanup, !dbg !1767

cleanup:                                          ; preds = %if.end9, %for.end42, %if.end, %if.end51, %land.lhs.true54, %if.then56, %if.end46
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %for.end42 ], [ 0, %if.end46 ], [ 1, %if.then56 ], [ 1, %land.lhs.true54 ], [ 1, %if.end51 ], [ 0, %if.end9 ], !dbg !1692
  ret i32 %retval.0, !dbg !1768
}

declare !dbg !1769 i32 @IsPaletteImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1771 hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @IsOpaqueImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !1775 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1777, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1778, metadata !DIExpression()), !dbg !1783
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1784
  %0 = load i32, ptr %debug, align 8, !dbg !1784, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !1786
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1787

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1788
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1789
  br label %if.end, !dbg !1790

if.end:                                           ; preds = %if.then, %entry
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1791
  %1 = load i32, ptr %matte, align 8, !dbg !1791, !tbaa !1206
  %cmp1 = icmp eq i32 %1, 0, !dbg !1793
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1794

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #11, !dbg !1795
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1779, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !1783
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1782, metadata !DIExpression()), !dbg !1783
  %2 = load i64, ptr %rows, align 8, !dbg !1796, !tbaa !828
  %cmp559 = icmp sgt i64 %2, 0, !dbg !1799
  br i1 %cmp559, label %for.body.lr.ph, label %for.end25, !dbg !1800

for.body.lr.ph:                                   ; preds = %if.end3
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %.pre = load i64, ptr %columns, align 8, !dbg !1801, !tbaa !823
  br label %for.body, !dbg !1800

for.body:                                         ; preds = %for.body.lr.ph, %for.inc23
  %3 = phi i64 [ %.pre, %for.body.lr.ph ], [ %4, %for.inc23 ], !dbg !1801
  %y.060 = phi i64 [ 0, %for.body.lr.ph ], [ %inc24, %for.inc23 ]
  call void @llvm.dbg.value(metadata i64 %y.060, metadata !1782, metadata !DIExpression()), !dbg !1783
  %call6 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %call4, i64 noundef 0, i64 noundef %y.060, i64 noundef %3, i64 noundef 1, ptr noundef %exception) #12, !dbg !1803
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1780, metadata !DIExpression()), !dbg !1783
  %cmp7 = icmp eq ptr %call6, null, !dbg !1804
  br i1 %cmp7, label %for.end25, label %for.cond10.preheader, !dbg !1806

for.cond10.preheader:                             ; preds = %for.body
  %4 = load i64, ptr %columns, align 8, !tbaa !823
  call void @llvm.dbg.value(metadata i64 0, metadata !1781, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1780, metadata !DIExpression()), !dbg !1783
  %cmp1255 = icmp sgt i64 %4, 0, !dbg !1807
  br i1 %cmp1255, label %for.body13, label %for.inc23, !dbg !1810

for.body13:                                       ; preds = %for.cond10.preheader, %if.end17
  %x.057 = phi i64 [ %inc, %if.end17 ], [ 0, %for.cond10.preheader ]
  %p.056 = phi ptr [ %incdec.ptr, %if.end17 ], [ %call6, %for.cond10.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.057, metadata !1781, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata ptr %p.056, metadata !1780, metadata !DIExpression()), !dbg !1783
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.056, i64 0, i32 3, !dbg !1811
  %5 = load i16, ptr %opacity, align 2, !dbg !1811, !tbaa !877
  %cmp14.not = icmp eq i16 %5, 0, !dbg !1814
  br i1 %cmp14.not, label %if.end17, label %for.end25, !dbg !1815

if.end17:                                         ; preds = %for.body13
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.056, i64 1, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1780, metadata !DIExpression()), !dbg !1783
  %inc = add nuw nsw i64 %x.057, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1781, metadata !DIExpression()), !dbg !1783
  %exitcond.not = icmp eq i64 %inc, %4, !dbg !1807
  br i1 %exitcond.not, label %for.inc23, label %for.body13, !dbg !1810, !llvm.loop !1818

for.inc23:                                        ; preds = %if.end17, %for.cond10.preheader
  %inc24 = add nuw nsw i64 %y.060, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %inc24, metadata !1782, metadata !DIExpression()), !dbg !1783
  %6 = load i64, ptr %rows, align 8, !dbg !1796, !tbaa !828
  %cmp5 = icmp slt i64 %inc24, %6, !dbg !1799
  br i1 %cmp5, label %for.body, label %for.end25, !dbg !1800, !llvm.loop !1821

for.end25:                                        ; preds = %for.inc23, %for.body, %for.body13, %if.end3
  %y.054 = phi i64 [ 0, %if.end3 ], [ %y.060, %for.body13 ], [ %inc24, %for.inc23 ], [ %y.060, %for.body ]
  %call26 = tail call ptr @DestroyCacheView(ptr noundef %call4) #11, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %call26, metadata !1779, metadata !DIExpression()), !dbg !1783
  %7 = load i64, ptr %rows, align 8, !dbg !1824, !tbaa !828
  %cmp28 = icmp sge i64 %y.054, %7, !dbg !1825
  %cond = zext i1 %cmp28 to i32, !dbg !1826
  br label %cleanup, !dbg !1827

cleanup:                                          ; preds = %if.end, %for.end25
  %retval.0 = phi i32 [ %cond, %for.end25 ], [ 1, %if.end ], !dbg !1783
  ret i32 %retval.0, !dbg !1828
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageDepth(ptr noundef %image, i64 noundef %depth) local_unnamed_addr #0 !dbg !1829 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1833, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1834, metadata !DIExpression()), !dbg !1835
  %call = tail call i32 @SetImageChannelDepth(ptr noundef %image, i32 noundef 47, i64 noundef %depth), !dbg !1836
  ret i32 %call, !dbg !1837
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageChannelDepth(ptr noundef %image, i32 noundef %channel, i64 noundef %depth) local_unnamed_addr #0 !dbg !1838 {
entry:
  %exception68 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1842, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1843, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1844, metadata !DIExpression()), !dbg !1867
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1868
  %0 = load i32, ptr %debug, align 8, !dbg !1868, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !1870
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1871

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 980, ptr noundef nonnull @.str.6) #11, !dbg !1872
  br label %if.end, !dbg !1873

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp ugt i64 %depth, 15, !dbg !1874
  br i1 %cmp1, label %cleanup166.sink.split, label %if.end4, !dbg !1876

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1219, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i64 1, metadata !1225, metadata !DIExpression()), !dbg !1877
  %sub.i = add nsw i64 %depth, -1, !dbg !1879
  %reass.add.i = shl nuw nsw i64 2, %sub.i, !dbg !1880
  %add.i = add i64 %reass.add.i, -1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1848, metadata !DIExpression()), !dbg !1867
  %1 = load i32, ptr %image, align 8, !dbg !1881, !tbaa !1202
  %cmp6 = icmp eq i32 %1, 2, !dbg !1882
  br i1 %cmp6, label %for.cond.preheader, label %if.end60, !dbg !1883

for.cond.preheader:                               ; preds = %if.end4
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10
  %2 = load i64, ptr %colors, align 8, !tbaa !1210
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !1884
  %cmp8316 = icmp sgt i64 %2, 0, !dbg !1885
  br i1 %cmp8316, label %for.body.lr.ph, label %if.end60, !dbg !1888

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and = and i32 %channel, 1
  %cmp9.not = icmp eq i32 %and, 0
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %conv.i245 = uitofp i64 %add.i to float
  %and18 = and i32 %channel, 2
  %cmp19.not = icmp eq i32 %and18, 0
  %and32 = and i32 %channel, 4
  %cmp33.not = icmp eq i32 %and32, 0
  %and46 = and i32 %channel, 8
  %cmp47.not = icmp eq i32 %and46, 0
  br label %for.body, !dbg !1888

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0317 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.0317, metadata !1850, metadata !DIExpression()), !dbg !1884
  br i1 %cmp9.not, label %if.end17, label %if.then10, !dbg !1889

if.then10:                                        ; preds = %for.body
  %3 = load ptr, ptr %colormap, align 8, !dbg !1891, !tbaa !1234
  %red = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 %i.0317, i32 2, !dbg !1893
  %4 = load i16, ptr %red, align 2, !dbg !1893, !tbaa !857
  call void @llvm.dbg.value(metadata i16 %4, metadata !1340, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1345, metadata !DIExpression()), !dbg !1894
  %conv2.i = uitofp i16 %4 to float, !dbg !1896
  %mul.i = fmul float %conv.i245, %conv2.i, !dbg !1897
  %div.i = fdiv float %mul.i, 6.553500e+04, !dbg !1898
  %conv3.i = fpext float %div.i to double, !dbg !1899
  %add.i246 = fadd double %conv3.i, 5.000000e-01, !dbg !1900
  %conv4.i = fptoui double %add.i246 to i64, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %conv4.i, metadata !1355, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1360, metadata !DIExpression()), !dbg !1902
  %conv.i247 = uitofp i64 %conv4.i to float, !dbg !1904
  %mul.i248 = fmul float %conv.i247, 6.553500e+04, !dbg !1905
  %div.i249 = fdiv float %mul.i248, %conv.i245, !dbg !1906
  %conv2.i250 = fpext float %div.i249 to double, !dbg !1907
  %add.i251 = fadd double %conv2.i250, 5.000000e-01, !dbg !1908
  %conv3.i252 = fptoui double %add.i251 to i16, !dbg !1909
  store i16 %conv3.i252, ptr %red, align 2, !dbg !1910, !tbaa !857
  br label %if.end17, !dbg !1911

if.end17:                                         ; preds = %if.then10, %for.body
  br i1 %cmp19.not, label %if.end31, label %if.then21, !dbg !1912

if.then21:                                        ; preds = %if.end17
  %5 = load ptr, ptr %colormap, align 8, !dbg !1913, !tbaa !1234
  %green = getelementptr inbounds %struct._PixelPacket, ptr %5, i64 %i.0317, i32 1, !dbg !1915
  %6 = load i16, ptr %green, align 2, !dbg !1915, !tbaa !865
  call void @llvm.dbg.value(metadata i16 %6, metadata !1340, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1345, metadata !DIExpression()), !dbg !1916
  %conv2.i255 = uitofp i16 %6 to float, !dbg !1918
  %mul.i256 = fmul float %conv.i245, %conv2.i255, !dbg !1919
  %div.i257 = fdiv float %mul.i256, 6.553500e+04, !dbg !1920
  %conv3.i258 = fpext float %div.i257 to double, !dbg !1921
  %add.i259 = fadd double %conv3.i258, 5.000000e-01, !dbg !1922
  %conv4.i260 = fptoui double %add.i259 to i64, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %conv4.i260, metadata !1355, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1360, metadata !DIExpression()), !dbg !1924
  %conv.i261 = uitofp i64 %conv4.i260 to float, !dbg !1926
  %mul.i262 = fmul float %conv.i261, 6.553500e+04, !dbg !1927
  %div.i264 = fdiv float %mul.i262, %conv.i245, !dbg !1928
  %conv2.i265 = fpext float %div.i264 to double, !dbg !1929
  %add.i266 = fadd double %conv2.i265, 5.000000e-01, !dbg !1930
  %conv3.i267 = fptoui double %add.i266 to i16, !dbg !1931
  store i16 %conv3.i267, ptr %green, align 2, !dbg !1932, !tbaa !865
  br label %if.end31, !dbg !1933

if.end31:                                         ; preds = %if.then21, %if.end17
  br i1 %cmp33.not, label %if.end45, label %if.then35, !dbg !1934

if.then35:                                        ; preds = %if.end31
  %7 = load ptr, ptr %colormap, align 8, !dbg !1935, !tbaa !1234
  %arrayidx37 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 %i.0317, !dbg !1937
  %8 = load i16, ptr %arrayidx37, align 2, !dbg !1938, !tbaa !871
  call void @llvm.dbg.value(metadata i16 %8, metadata !1340, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1345, metadata !DIExpression()), !dbg !1939
  %conv2.i270 = uitofp i16 %8 to float, !dbg !1941
  %mul.i271 = fmul float %conv.i245, %conv2.i270, !dbg !1942
  %div.i272 = fdiv float %mul.i271, 6.553500e+04, !dbg !1943
  %conv3.i273 = fpext float %div.i272 to double, !dbg !1944
  %add.i274 = fadd double %conv3.i273, 5.000000e-01, !dbg !1945
  %conv4.i275 = fptoui double %add.i274 to i64, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %conv4.i275, metadata !1355, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1360, metadata !DIExpression()), !dbg !1947
  %conv.i276 = uitofp i64 %conv4.i275 to float, !dbg !1949
  %mul.i277 = fmul float %conv.i276, 6.553500e+04, !dbg !1950
  %div.i279 = fdiv float %mul.i277, %conv.i245, !dbg !1951
  %conv2.i280 = fpext float %div.i279 to double, !dbg !1952
  %add.i281 = fadd double %conv2.i280, 5.000000e-01, !dbg !1953
  %conv3.i282 = fptoui double %add.i281 to i16, !dbg !1954
  store i16 %conv3.i282, ptr %arrayidx37, align 2, !dbg !1955, !tbaa !871
  br label %if.end45, !dbg !1956

if.end45:                                         ; preds = %if.then35, %if.end31
  br i1 %cmp47.not, label %for.inc, label %if.then49, !dbg !1957

if.then49:                                        ; preds = %if.end45
  %9 = load ptr, ptr %colormap, align 8, !dbg !1958, !tbaa !1234
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 %i.0317, i32 3, !dbg !1960
  %10 = load i16, ptr %opacity, align 2, !dbg !1960, !tbaa !877
  call void @llvm.dbg.value(metadata i16 %10, metadata !1340, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1345, metadata !DIExpression()), !dbg !1961
  %conv2.i285 = uitofp i16 %10 to float, !dbg !1963
  %mul.i286 = fmul float %conv.i245, %conv2.i285, !dbg !1964
  %div.i287 = fdiv float %mul.i286, 6.553500e+04, !dbg !1965
  %conv3.i288 = fpext float %div.i287 to double, !dbg !1966
  %add.i289 = fadd double %conv3.i288, 5.000000e-01, !dbg !1967
  %conv4.i290 = fptoui double %add.i289 to i64, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %conv4.i290, metadata !1355, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1360, metadata !DIExpression()), !dbg !1969
  %conv.i291 = uitofp i64 %conv4.i290 to float, !dbg !1971
  %mul.i292 = fmul float %conv.i291, 6.553500e+04, !dbg !1972
  %div.i294 = fdiv float %mul.i292, %conv.i245, !dbg !1973
  %conv2.i295 = fpext float %div.i294 to double, !dbg !1974
  %add.i296 = fadd double %conv2.i295, 5.000000e-01, !dbg !1975
  %conv3.i297 = fptoui double %add.i296 to i16, !dbg !1976
  store i16 %conv3.i297, ptr %opacity, align 2, !dbg !1977, !tbaa !877
  br label %for.inc, !dbg !1978

for.inc:                                          ; preds = %if.end45, %if.then49
  %inc = add nuw nsw i64 %i.0317, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1850, metadata !DIExpression()), !dbg !1884
  %exitcond.not = icmp eq i64 %inc, %2, !dbg !1885
  br i1 %exitcond.not, label %if.end60, label %for.body, !dbg !1888, !llvm.loop !1980

if.end60:                                         ; preds = %for.inc, %for.cond.preheader, %if.end4
  call void @llvm.dbg.value(metadata i32 1, metadata !1847, metadata !DIExpression()), !dbg !1867
  %exception61 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1982
  call void @llvm.dbg.value(metadata ptr %exception61, metadata !1846, metadata !DIExpression()), !dbg !1867
  %call62 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception61) #11, !dbg !1983
  call void @llvm.dbg.value(metadata ptr %call62, metadata !1845, metadata !DIExpression()), !dbg !1867
  %call64 = tail call ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 2) #13, !dbg !1984
  call void @llvm.dbg.value(metadata ptr %call64, metadata !1853, metadata !DIExpression()), !dbg !1985
  %cmp65 = icmp eq ptr %call64, null, !dbg !1986
  br i1 %cmp65, label %if.then67, label %for.cond75.preheader, !dbg !1987

for.cond75.preheader:                             ; preds = %if.end60
  %conv.i298 = uitofp i64 %add.i to float
  call void @llvm.dbg.value(metadata i64 0, metadata !1856, metadata !DIExpression()), !dbg !1985
  br label %for.body78, !dbg !1988

if.then67:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception68) #11, !dbg !1990
  call void @llvm.dbg.declare(metadata ptr %exception68, metadata !1860, metadata !DIExpression()), !dbg !1990
  call void @GetExceptionInfo(ptr noundef nonnull %exception68) #11, !dbg !1990
  %call69 = tail call ptr @__errno_location() #14, !dbg !1990
  %11 = load i32, ptr %call69, align 4, !dbg !1990, !tbaa !1194
  %call70 = call ptr @GetExceptionMessage(i32 noundef %11) #11, !dbg !1990
  call void @llvm.dbg.value(metadata ptr %call70, metadata !1857, metadata !DIExpression()), !dbg !1991
  %call71 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception68, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1032, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %call70) #11, !dbg !1990
  %call72 = call ptr @DestroyString(ptr noundef %call70) #11, !dbg !1990
  call void @llvm.dbg.value(metadata ptr %call72, metadata !1857, metadata !DIExpression()), !dbg !1991
  call void @CatchException(ptr noundef nonnull %exception68) #11, !dbg !1990
  %call73 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception68) #11, !dbg !1990
  call void @MagickCoreTerminus() #11, !dbg !1990
  call void @_exit(i32 noundef 1) #15, !dbg !1990
  unreachable, !dbg !1990

for.cond86.preheader:                             ; preds = %for.body78
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1849, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 1, metadata !1847, metadata !DIExpression()), !dbg !1867
  %12 = load i64, ptr %rows, align 8, !dbg !1992, !tbaa !828
  %cmp87355 = icmp sgt i64 %12, 0, !dbg !1993
  br i1 %cmp87355, label %for.body89.lr.ph, label %for.end156, !dbg !1994

for.body89.lr.ph:                                 ; preds = %for.cond86.preheader
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and104 = and i32 %channel, 1
  %cmp105.not = icmp eq i32 %and104, 0
  %and113 = and i32 %channel, 2
  %cmp114.not = icmp eq i32 %and113, 0
  %and123 = and i32 %channel, 4
  %cmp124.not = icmp eq i32 %and123, 0
  %and133 = and i32 %channel, 8
  %cmp134.not = icmp eq i32 %and133, 0
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  br i1 %cmp134.not, label %for.body89.us, label %for.body89, !dbg !1995

for.body89.us:                                    ; preds = %for.body89.lr.ph, %cleanup.us
  %y.0357.us = phi i64 [ %inc155.us, %cleanup.us ], [ 0, %for.body89.lr.ph ]
  %status.0356.us = phi i32 [ %status.1.us, %cleanup.us ], [ 1, %for.body89.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.0357.us, metadata !1849, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %status.0356.us, metadata !1847, metadata !DIExpression()), !dbg !1867
  %cmp90.us = icmp eq i32 %status.0356.us, 0, !dbg !2000
  br i1 %cmp90.us, label %cleanup.us, label %if.end93.us, !dbg !2002

if.end93.us:                                      ; preds = %for.body89.us
  %13 = load i64, ptr %columns, align 8, !dbg !2003, !tbaa !823
  %call94.us = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %call62, i64 noundef 0, i64 noundef %y.0357.us, i64 noundef %13, i64 noundef 1, ptr noundef nonnull %exception61) #12, !dbg !2004
  call void @llvm.dbg.value(metadata ptr %call94.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  %cmp95.us = icmp eq ptr %call94.us, null, !dbg !2006
  br i1 %cmp95.us, label %cleanup.us, label %for.cond99.preheader.us, !dbg !2008

for.end147.us:                                    ; preds = %for.body103.us.us, %for.body103.us.us.us369, %for.body103.us.us.us358, %for.body103.us.us.us358.us, %for.body103.us.us.us, %for.body103.us.us.us.us382, %for.body103.us.us.us.us, %for.body103.lr.ph.split.us.us.split.us.split.us, %for.cond99.preheader.us
  %call148.us = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call62, ptr noundef nonnull %exception61) #12, !dbg !2009
  %cmp149.us = icmp ne i32 %call148.us, 0, !dbg !2011
  %..us = zext i1 %cmp149.us to i32, !dbg !2012
  br label %cleanup.us, !dbg !2012

cleanup.us:                                       ; preds = %for.end147.us, %if.end93.us, %for.body89.us
  %status.1.us = phi i32 [ 0, %for.body89.us ], [ 0, %if.end93.us ], [ %..us, %for.end147.us ], !dbg !1867
  call void @llvm.dbg.value(metadata i32 %status.1.us, metadata !1847, metadata !DIExpression()), !dbg !1867
  %inc155.us = add nuw nsw i64 %y.0357.us, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %inc155.us, metadata !1849, metadata !DIExpression()), !dbg !1867
  %14 = load i64, ptr %rows, align 8, !dbg !1992, !tbaa !828
  %cmp87.us = icmp slt i64 %inc155.us, %14, !dbg !1993
  br i1 %cmp87.us, label %for.body89.us, label %for.end156, !dbg !1994, !llvm.loop !2014

for.cond99.preheader.us:                          ; preds = %if.end93.us
  %15 = load i64, ptr %columns, align 8, !tbaa !823
  call void @llvm.dbg.value(metadata ptr %call94.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 0, metadata !1861, metadata !DIExpression()), !dbg !2005
  %cmp101322.us = icmp sgt i64 %15, 0, !dbg !2016
  br i1 %cmp101322.us, label %for.body103.lr.ph.us, label %for.end147.us, !dbg !2017

for.body103.lr.ph.us:                             ; preds = %for.cond99.preheader.us
  br i1 %cmp105.not, label %for.body103.lr.ph.split.us.us.split.us, label %for.body103.lr.ph.split.us.us.split, !dbg !2018

for.body103.lr.ph.split.us.us.split.us:           ; preds = %for.body103.lr.ph.us
  br i1 %cmp114.not, label %for.body103.lr.ph.split.us.us.split.us.split.us, label %for.body103.lr.ph.split.us.us.split.us.split, !dbg !2019

for.body103.lr.ph.split.us.us.split.us.split.us:  ; preds = %for.body103.lr.ph.split.us.us.split.us
  br i1 %cmp124.not, label %for.end147.us, label %for.body103.us.us.us.us, !dbg !2020

for.body103.us.us.us.us:                          ; preds = %for.body103.lr.ph.split.us.us.split.us.split.us, %for.body103.us.us.us.us
  %q.0324.us.us.us.us = phi ptr [ %incdec.ptr.us.us.us.us, %for.body103.us.us.us.us ], [ %call94.us, %for.body103.lr.ph.split.us.us.split.us.split.us ]
  %x.0323.us.us.us.us = phi i64 [ %inc146.us.us.us.us, %for.body103.us.us.us.us ], [ 0, %for.body103.lr.ph.split.us.us.split.us.split.us ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us.us.us.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us.us.us.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %16 = load i16, ptr %q.0324.us.us.us.us, align 2, !dbg !2021, !tbaa !871
  %idxprom129.us.us.us.us = zext i16 %16 to i64, !dbg !2021
  %arrayidx130.us.us.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom129.us.us.us.us, !dbg !2021
  %17 = load i16, ptr %arrayidx130.us.us.us.us, align 2, !dbg !2021, !tbaa !886
  store i16 %17, ptr %q.0324.us.us.us.us, align 2, !dbg !2021, !tbaa !871
  %incdec.ptr.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us.us, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us.us.us.us = add nuw nsw i64 %x.0323.us.us.us.us, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us.us.us.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond413.not = icmp eq i64 %inc146.us.us.us.us, %15, !dbg !2016
  br i1 %exitcond413.not, label %for.end147.us, label %for.body103.us.us.us.us, !dbg !2017, !llvm.loop !2025

for.body103.lr.ph.split.us.us.split.us.split:     ; preds = %for.body103.lr.ph.split.us.us.split.us
  br i1 %cmp124.not, label %for.body103.us.us.us.us382, label %for.body103.us.us.us, !dbg !2020

for.body103.us.us.us.us382:                       ; preds = %for.body103.lr.ph.split.us.us.split.us.split, %for.body103.us.us.us.us382
  %q.0324.us.us.us.us383 = phi ptr [ %incdec.ptr.us.us.us.us386, %for.body103.us.us.us.us382 ], [ %call94.us, %for.body103.lr.ph.split.us.us.split.us.split ]
  %x.0323.us.us.us.us384 = phi i64 [ %inc146.us.us.us.us387, %for.body103.us.us.us.us382 ], [ 0, %for.body103.lr.ph.split.us.us.split.us.split ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us.us.us.us383, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us.us.us.us384, metadata !1861, metadata !DIExpression()), !dbg !2005
  %green117.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us.us383, i64 0, i32 1, !dbg !2027
  %18 = load i16, ptr %green117.us.us.us.us, align 2, !dbg !2027, !tbaa !865
  %idxprom119.us.us.us.us = zext i16 %18 to i64, !dbg !2027
  %arrayidx120.us.us.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom119.us.us.us.us, !dbg !2027
  %19 = load i16, ptr %arrayidx120.us.us.us.us, align 2, !dbg !2027, !tbaa !886
  store i16 %19, ptr %green117.us.us.us.us, align 2, !dbg !2027, !tbaa !865
  %incdec.ptr.us.us.us.us386 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us.us383, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us.us386, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us.us.us.us387 = add nuw nsw i64 %x.0323.us.us.us.us384, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us.us.us.us387, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond412.not = icmp eq i64 %inc146.us.us.us.us387, %15, !dbg !2016
  br i1 %exitcond412.not, label %for.end147.us, label %for.body103.us.us.us.us382, !dbg !2017, !llvm.loop !2025

for.body103.us.us.us:                             ; preds = %for.body103.lr.ph.split.us.us.split.us.split, %for.body103.us.us.us
  %q.0324.us.us.us = phi ptr [ %incdec.ptr.us.us.us, %for.body103.us.us.us ], [ %call94.us, %for.body103.lr.ph.split.us.us.split.us.split ]
  %x.0323.us.us.us = phi i64 [ %inc146.us.us.us, %for.body103.us.us.us ], [ 0, %for.body103.lr.ph.split.us.us.split.us.split ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us.us.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us.us.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %green117.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us, i64 0, i32 1, !dbg !2027
  %20 = load i16, ptr %green117.us.us.us, align 2, !dbg !2027, !tbaa !865
  %idxprom119.us.us.us = zext i16 %20 to i64, !dbg !2027
  %arrayidx120.us.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom119.us.us.us, !dbg !2027
  %21 = load i16, ptr %arrayidx120.us.us.us, align 2, !dbg !2027, !tbaa !886
  store i16 %21, ptr %green117.us.us.us, align 2, !dbg !2027, !tbaa !865
  %22 = load i16, ptr %q.0324.us.us.us, align 2, !dbg !2021, !tbaa !871
  %idxprom129.us.us.us = zext i16 %22 to i64, !dbg !2021
  %arrayidx130.us.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom129.us.us.us, !dbg !2021
  %23 = load i16, ptr %arrayidx130.us.us.us, align 2, !dbg !2021, !tbaa !886
  store i16 %23, ptr %q.0324.us.us.us, align 2, !dbg !2021, !tbaa !871
  %incdec.ptr.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us.us.us = add nuw nsw i64 %x.0323.us.us.us, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us.us.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond411.not = icmp eq i64 %inc146.us.us.us, %15, !dbg !2016
  br i1 %exitcond411.not, label %for.end147.us, label %for.body103.us.us.us, !dbg !2017, !llvm.loop !2025

for.body103.lr.ph.split.us.us.split:              ; preds = %for.body103.lr.ph.us
  br i1 %cmp114.not, label %for.body103.lr.ph.split.us.us.split.split.us, label %for.body103.lr.ph.split.us.us.split.split, !dbg !2019

for.body103.lr.ph.split.us.us.split.split.us:     ; preds = %for.body103.lr.ph.split.us.us.split
  br i1 %cmp124.not, label %for.body103.us.us.us358.us, label %for.body103.us.us.us358, !dbg !2020

for.body103.us.us.us358.us:                       ; preds = %for.body103.lr.ph.split.us.us.split.split.us, %for.body103.us.us.us358.us
  %q.0324.us.us.us359.us = phi ptr [ %incdec.ptr.us.us.us366.us, %for.body103.us.us.us358.us ], [ %call94.us, %for.body103.lr.ph.split.us.us.split.split.us ]
  %x.0323.us.us.us360.us = phi i64 [ %inc146.us.us.us367.us, %for.body103.us.us.us358.us ], [ 0, %for.body103.lr.ph.split.us.us.split.split.us ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us.us.us359.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us.us.us360.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %red108.us.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us359.us, i64 0, i32 2, !dbg !2029
  %24 = load i16, ptr %red108.us.us.us.us, align 2, !dbg !2029, !tbaa !857
  %idxprom.us.us.us.us = zext i16 %24 to i64, !dbg !2029
  %arrayidx110.us.us.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom.us.us.us.us, !dbg !2029
  %25 = load i16, ptr %arrayidx110.us.us.us.us, align 2, !dbg !2029, !tbaa !886
  store i16 %25, ptr %red108.us.us.us.us, align 2, !dbg !2029, !tbaa !857
  %incdec.ptr.us.us.us366.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us359.us, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us366.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us.us.us367.us = add nuw nsw i64 %x.0323.us.us.us360.us, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us.us.us367.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond410.not = icmp eq i64 %inc146.us.us.us367.us, %15, !dbg !2016
  br i1 %exitcond410.not, label %for.end147.us, label %for.body103.us.us.us358.us, !dbg !2017, !llvm.loop !2025

for.body103.us.us.us358:                          ; preds = %for.body103.lr.ph.split.us.us.split.split.us, %for.body103.us.us.us358
  %q.0324.us.us.us359 = phi ptr [ %incdec.ptr.us.us.us366, %for.body103.us.us.us358 ], [ %call94.us, %for.body103.lr.ph.split.us.us.split.split.us ]
  %x.0323.us.us.us360 = phi i64 [ %inc146.us.us.us367, %for.body103.us.us.us358 ], [ 0, %for.body103.lr.ph.split.us.us.split.split.us ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us.us.us359, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us.us.us360, metadata !1861, metadata !DIExpression()), !dbg !2005
  %red108.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us359, i64 0, i32 2, !dbg !2029
  %26 = load i16, ptr %red108.us.us.us, align 2, !dbg !2029, !tbaa !857
  %idxprom.us.us.us = zext i16 %26 to i64, !dbg !2029
  %arrayidx110.us.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom.us.us.us, !dbg !2029
  %27 = load i16, ptr %arrayidx110.us.us.us, align 2, !dbg !2029, !tbaa !886
  store i16 %27, ptr %red108.us.us.us, align 2, !dbg !2029, !tbaa !857
  %28 = load i16, ptr %q.0324.us.us.us359, align 2, !dbg !2021, !tbaa !871
  %idxprom129.us.us.us363 = zext i16 %28 to i64, !dbg !2021
  %arrayidx130.us.us.us364 = getelementptr inbounds i16, ptr %call64, i64 %idxprom129.us.us.us363, !dbg !2021
  %29 = load i16, ptr %arrayidx130.us.us.us364, align 2, !dbg !2021, !tbaa !886
  store i16 %29, ptr %q.0324.us.us.us359, align 2, !dbg !2021, !tbaa !871
  %incdec.ptr.us.us.us366 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us359, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us366, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us.us.us367 = add nuw nsw i64 %x.0323.us.us.us360, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us.us.us367, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond409.not = icmp eq i64 %inc146.us.us.us367, %15, !dbg !2016
  br i1 %exitcond409.not, label %for.end147.us, label %for.body103.us.us.us358, !dbg !2017, !llvm.loop !2025

for.body103.lr.ph.split.us.us.split.split:        ; preds = %for.body103.lr.ph.split.us.us.split
  br i1 %cmp124.not, label %for.body103.us.us.us369, label %for.body103.us.us, !dbg !2020

for.body103.us.us.us369:                          ; preds = %for.body103.lr.ph.split.us.us.split.split, %for.body103.us.us.us369
  %q.0324.us.us.us370 = phi ptr [ %incdec.ptr.us.us.us379, %for.body103.us.us.us369 ], [ %call94.us, %for.body103.lr.ph.split.us.us.split.split ]
  %x.0323.us.us.us371 = phi i64 [ %inc146.us.us.us380, %for.body103.us.us.us369 ], [ 0, %for.body103.lr.ph.split.us.us.split.split ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us.us.us370, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us.us.us371, metadata !1861, metadata !DIExpression()), !dbg !2005
  %red108.us.us.us372 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us370, i64 0, i32 2, !dbg !2029
  %30 = load i16, ptr %red108.us.us.us372, align 2, !dbg !2029, !tbaa !857
  %idxprom.us.us.us373 = zext i16 %30 to i64, !dbg !2029
  %arrayidx110.us.us.us374 = getelementptr inbounds i16, ptr %call64, i64 %idxprom.us.us.us373, !dbg !2029
  %31 = load i16, ptr %arrayidx110.us.us.us374, align 2, !dbg !2029, !tbaa !886
  store i16 %31, ptr %red108.us.us.us372, align 2, !dbg !2029, !tbaa !857
  %green117.us.us.us375 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us370, i64 0, i32 1, !dbg !2027
  %32 = load i16, ptr %green117.us.us.us375, align 2, !dbg !2027, !tbaa !865
  %idxprom119.us.us.us376 = zext i16 %32 to i64, !dbg !2027
  %arrayidx120.us.us.us377 = getelementptr inbounds i16, ptr %call64, i64 %idxprom119.us.us.us376, !dbg !2027
  %33 = load i16, ptr %arrayidx120.us.us.us377, align 2, !dbg !2027, !tbaa !886
  store i16 %33, ptr %green117.us.us.us375, align 2, !dbg !2027, !tbaa !865
  %incdec.ptr.us.us.us379 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us.us370, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us379, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us.us.us380 = add nuw nsw i64 %x.0323.us.us.us371, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us.us.us380, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond408.not = icmp eq i64 %inc146.us.us.us380, %15, !dbg !2016
  br i1 %exitcond408.not, label %for.end147.us, label %for.body103.us.us.us369, !dbg !2017, !llvm.loop !2025

for.body103.us.us:                                ; preds = %for.body103.lr.ph.split.us.us.split.split, %for.body103.us.us
  %q.0324.us.us = phi ptr [ %incdec.ptr.us.us, %for.body103.us.us ], [ %call94.us, %for.body103.lr.ph.split.us.us.split.split ]
  %x.0323.us.us = phi i64 [ %inc146.us.us, %for.body103.us.us ], [ 0, %for.body103.lr.ph.split.us.us.split.split ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %red108.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us, i64 0, i32 2, !dbg !2029
  %34 = load i16, ptr %red108.us.us, align 2, !dbg !2029, !tbaa !857
  %idxprom.us.us = zext i16 %34 to i64, !dbg !2029
  %arrayidx110.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom.us.us, !dbg !2029
  %35 = load i16, ptr %arrayidx110.us.us, align 2, !dbg !2029, !tbaa !886
  store i16 %35, ptr %red108.us.us, align 2, !dbg !2029, !tbaa !857
  %green117.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us, i64 0, i32 1, !dbg !2027
  %36 = load i16, ptr %green117.us.us, align 2, !dbg !2027, !tbaa !865
  %idxprom119.us.us = zext i16 %36 to i64, !dbg !2027
  %arrayidx120.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom119.us.us, !dbg !2027
  %37 = load i16, ptr %arrayidx120.us.us, align 2, !dbg !2027, !tbaa !886
  store i16 %37, ptr %green117.us.us, align 2, !dbg !2027, !tbaa !865
  %38 = load i16, ptr %q.0324.us.us, align 2, !dbg !2021, !tbaa !871
  %idxprom129.us.us = zext i16 %38 to i64, !dbg !2021
  %arrayidx130.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom129.us.us, !dbg !2021
  %39 = load i16, ptr %arrayidx130.us.us, align 2, !dbg !2021, !tbaa !886
  store i16 %39, ptr %q.0324.us.us, align 2, !dbg !2021, !tbaa !871
  %incdec.ptr.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us.us, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us.us = add nuw nsw i64 %x.0323.us.us, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond407.not = icmp eq i64 %inc146.us.us, %15, !dbg !2016
  br i1 %exitcond407.not, label %for.end147.us, label %for.body103.us.us, !dbg !2017, !llvm.loop !2025

for.body78:                                       ; preds = %for.cond75.preheader, %for.body78
  %i63.0321 = phi i64 [ 0, %for.cond75.preheader ], [ %inc84, %for.body78 ]
  call void @llvm.dbg.value(metadata i64 %i63.0321, metadata !1856, metadata !DIExpression()), !dbg !1985
  %conv79 = trunc i64 %i63.0321 to i16, !dbg !2031
  call void @llvm.dbg.value(metadata i16 %conv79, metadata !1340, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1345, metadata !DIExpression()), !dbg !2033
  %conv2.i299 = uitofp i16 %conv79 to float, !dbg !2035
  %mul.i300 = fmul float %conv.i298, %conv2.i299, !dbg !2036
  %div.i301 = fdiv float %mul.i300, 6.553500e+04, !dbg !2037
  %conv3.i302 = fpext float %div.i301 to double, !dbg !2038
  %add.i303 = fadd double %conv3.i302, 5.000000e-01, !dbg !2039
  %conv4.i304 = fptoui double %add.i303 to i64, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %conv4.i304, metadata !1355, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1360, metadata !DIExpression()), !dbg !2041
  %conv.i305 = uitofp i64 %conv4.i304 to float, !dbg !2043
  %mul.i306 = fmul float %conv.i305, 6.553500e+04, !dbg !2044
  %div.i308 = fdiv float %mul.i306, %conv.i298, !dbg !2045
  %conv2.i309 = fpext float %div.i308 to double, !dbg !2046
  %add.i310 = fadd double %conv2.i309, 5.000000e-01, !dbg !2047
  %conv3.i311 = fptoui double %add.i310 to i16, !dbg !2048
  %arrayidx82 = getelementptr inbounds i16, ptr %call64, i64 %i63.0321, !dbg !2049
  store i16 %conv3.i311, ptr %arrayidx82, align 2, !dbg !2050, !tbaa !886
  %inc84 = add nuw nsw i64 %i63.0321, 1, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %inc84, metadata !1856, metadata !DIExpression()), !dbg !1985
  %exitcond401.not = icmp eq i64 %inc84, 65536, !dbg !2052
  br i1 %exitcond401.not, label %for.cond86.preheader, label %for.body78, !dbg !1988, !llvm.loop !2053

for.body89:                                       ; preds = %for.body89.lr.ph, %cleanup
  %y.0357 = phi i64 [ %inc155, %cleanup ], [ 0, %for.body89.lr.ph ]
  %status.0356 = phi i32 [ %status.1, %cleanup ], [ 1, %for.body89.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.0357, metadata !1849, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %status.0356, metadata !1847, metadata !DIExpression()), !dbg !1867
  %cmp90 = icmp eq i32 %status.0356, 0, !dbg !2000
  br i1 %cmp90, label %cleanup, label %if.end93, !dbg !2002

if.end93:                                         ; preds = %for.body89
  %40 = load i64, ptr %columns, align 8, !dbg !2003, !tbaa !823
  %call94 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %call62, i64 noundef 0, i64 noundef %y.0357, i64 noundef %40, i64 noundef 1, ptr noundef nonnull %exception61) #12, !dbg !2004
  call void @llvm.dbg.value(metadata ptr %call94, metadata !1865, metadata !DIExpression()), !dbg !2005
  %cmp95 = icmp eq ptr %call94, null, !dbg !2006
  br i1 %cmp95, label %cleanup, label %for.cond99.preheader, !dbg !2008

for.cond99.preheader:                             ; preds = %if.end93
  %41 = load i64, ptr %columns, align 8, !tbaa !823
  call void @llvm.dbg.value(metadata ptr %call94, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 0, metadata !1861, metadata !DIExpression()), !dbg !2005
  %cmp101322 = icmp sgt i64 %41, 0, !dbg !2016
  br i1 %cmp101322, label %for.body103.lr.ph, label %for.end147, !dbg !2017

for.body103.lr.ph:                                ; preds = %for.cond99.preheader
  %42 = load i32, ptr %matte, align 8, !tbaa !1206
  %cmp136.not = icmp eq i32 %42, 0
  br i1 %cmp105.not, label %for.body103.lr.ph.split.split.us, label %for.body103, !dbg !2018

for.body103.lr.ph.split.split.us:                 ; preds = %for.body103.lr.ph
  br i1 %cmp114.not, label %for.body103.us326.us, label %for.body103.lr.ph.split.split.us.split, !dbg !2019

for.body103.us326.us:                             ; preds = %for.body103.lr.ph.split.split.us, %if.end144.us339.us
  %q.0324.us327.us = phi ptr [ %incdec.ptr.us340.us, %if.end144.us339.us ], [ %call94, %for.body103.lr.ph.split.split.us ]
  %x.0323.us328.us = phi i64 [ %inc146.us341.us, %if.end144.us339.us ], [ 0, %for.body103.lr.ph.split.split.us ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us327.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us328.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  br i1 %cmp124.not, label %if.end132.us338.us, label %if.then126.us335.us, !dbg !2020

if.then126.us335.us:                              ; preds = %for.body103.us326.us
  %43 = load i16, ptr %q.0324.us327.us, align 2, !dbg !2021, !tbaa !871
  %idxprom129.us336.us = zext i16 %43 to i64, !dbg !2021
  %arrayidx130.us337.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom129.us336.us, !dbg !2021
  %44 = load i16, ptr %arrayidx130.us337.us, align 2, !dbg !2021, !tbaa !886
  store i16 %44, ptr %q.0324.us327.us, align 2, !dbg !2021, !tbaa !871
  br label %if.end132.us338.us, !dbg !2021

if.end132.us338.us:                               ; preds = %if.then126.us335.us, %for.body103.us326.us
  br i1 %cmp136.not, label %if.end144.us339.us, label %if.then138.us.us, !dbg !2055

if.then138.us.us:                                 ; preds = %if.end132.us338.us
  %opacity139.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327.us, i64 0, i32 3, !dbg !2056
  %45 = load i16, ptr %opacity139.us.us, align 2, !dbg !2056, !tbaa !877
  %idxprom141.us.us = zext i16 %45 to i64, !dbg !2056
  %arrayidx142.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom141.us.us, !dbg !2056
  %46 = load i16, ptr %arrayidx142.us.us, align 2, !dbg !2056, !tbaa !886
  store i16 %46, ptr %opacity139.us.us, align 2, !dbg !2056, !tbaa !877
  br label %if.end144.us339.us, !dbg !2056

if.end144.us339.us:                               ; preds = %if.then138.us.us, %if.end132.us338.us
  %incdec.ptr.us340.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327.us, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us340.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us341.us = add nuw nsw i64 %x.0323.us328.us, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us341.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond406.not = icmp eq i64 %inc146.us341.us, %41, !dbg !2016
  br i1 %exitcond406.not, label %for.end147, label %for.body103.us326.us, !dbg !2017, !llvm.loop !2025

for.body103.lr.ph.split.split.us.split:           ; preds = %for.body103.lr.ph.split.split.us
  br i1 %cmp124.not, label %for.body103.lr.ph.split.split.us.split.split.us, label %for.body103.us326, !dbg !2020

for.body103.lr.ph.split.split.us.split.split.us:  ; preds = %for.body103.lr.ph.split.split.us.split
  br i1 %cmp136.not, label %for.body103.us326.us343.us, label %for.body103.us326.us343, !dbg !2055

for.body103.us326.us343.us:                       ; preds = %for.body103.lr.ph.split.split.us.split.split.us, %for.body103.us326.us343.us
  %q.0324.us327.us344.us = phi ptr [ %incdec.ptr.us340.us352.us, %for.body103.us326.us343.us ], [ %call94, %for.body103.lr.ph.split.split.us.split.split.us ]
  %x.0323.us328.us345.us = phi i64 [ %inc146.us341.us353.us, %for.body103.us326.us343.us ], [ 0, %for.body103.lr.ph.split.split.us.split.split.us ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us327.us344.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us328.us345.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %green117.us331.us.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327.us344.us, i64 0, i32 1, !dbg !2027
  %47 = load i16, ptr %green117.us331.us.us, align 2, !dbg !2027, !tbaa !865
  %idxprom119.us332.us.us = zext i16 %47 to i64, !dbg !2027
  %arrayidx120.us333.us.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom119.us332.us.us, !dbg !2027
  %48 = load i16, ptr %arrayidx120.us333.us.us, align 2, !dbg !2027, !tbaa !886
  store i16 %48, ptr %green117.us331.us.us, align 2, !dbg !2027, !tbaa !865
  %incdec.ptr.us340.us352.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327.us344.us, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us340.us352.us, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us341.us353.us = add nuw nsw i64 %x.0323.us328.us345.us, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us341.us353.us, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond405.not = icmp eq i64 %inc146.us341.us353.us, %41, !dbg !2016
  br i1 %exitcond405.not, label %for.end147, label %for.body103.us326.us343.us, !dbg !2017, !llvm.loop !2025

for.body103.us326.us343:                          ; preds = %for.body103.lr.ph.split.split.us.split.split.us, %for.body103.us326.us343
  %q.0324.us327.us344 = phi ptr [ %incdec.ptr.us340.us352, %for.body103.us326.us343 ], [ %call94, %for.body103.lr.ph.split.split.us.split.split.us ]
  %x.0323.us328.us345 = phi i64 [ %inc146.us341.us353, %for.body103.us326.us343 ], [ 0, %for.body103.lr.ph.split.split.us.split.split.us ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us327.us344, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us328.us345, metadata !1861, metadata !DIExpression()), !dbg !2005
  %green117.us331.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327.us344, i64 0, i32 1, !dbg !2027
  %49 = load i16, ptr %green117.us331.us, align 2, !dbg !2027, !tbaa !865
  %idxprom119.us332.us = zext i16 %49 to i64, !dbg !2027
  %arrayidx120.us333.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom119.us332.us, !dbg !2027
  %50 = load i16, ptr %arrayidx120.us333.us, align 2, !dbg !2027, !tbaa !886
  store i16 %50, ptr %green117.us331.us, align 2, !dbg !2027, !tbaa !865
  %opacity139.us.us348 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327.us344, i64 0, i32 3, !dbg !2056
  %51 = load i16, ptr %opacity139.us.us348, align 2, !dbg !2056, !tbaa !877
  %idxprom141.us.us349 = zext i16 %51 to i64, !dbg !2056
  %arrayidx142.us.us350 = getelementptr inbounds i16, ptr %call64, i64 %idxprom141.us.us349, !dbg !2056
  %52 = load i16, ptr %arrayidx142.us.us350, align 2, !dbg !2056, !tbaa !886
  store i16 %52, ptr %opacity139.us.us348, align 2, !dbg !2056, !tbaa !877
  %incdec.ptr.us340.us352 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327.us344, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us340.us352, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us341.us353 = add nuw nsw i64 %x.0323.us328.us345, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us341.us353, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond404.not = icmp eq i64 %inc146.us341.us353, %41, !dbg !2016
  br i1 %exitcond404.not, label %for.end147, label %for.body103.us326.us343, !dbg !2017, !llvm.loop !2025

for.body103.us326:                                ; preds = %for.body103.lr.ph.split.split.us.split, %if.end144.us339
  %q.0324.us327 = phi ptr [ %incdec.ptr.us340, %if.end144.us339 ], [ %call94, %for.body103.lr.ph.split.split.us.split ]
  %x.0323.us328 = phi i64 [ %inc146.us341, %if.end144.us339 ], [ 0, %for.body103.lr.ph.split.split.us.split ]
  call void @llvm.dbg.value(metadata ptr %q.0324.us327, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323.us328, metadata !1861, metadata !DIExpression()), !dbg !2005
  %green117.us331 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327, i64 0, i32 1, !dbg !2027
  %53 = load i16, ptr %green117.us331, align 2, !dbg !2027, !tbaa !865
  %idxprom119.us332 = zext i16 %53 to i64, !dbg !2027
  %arrayidx120.us333 = getelementptr inbounds i16, ptr %call64, i64 %idxprom119.us332, !dbg !2027
  %54 = load i16, ptr %arrayidx120.us333, align 2, !dbg !2027, !tbaa !886
  store i16 %54, ptr %green117.us331, align 2, !dbg !2027, !tbaa !865
  %55 = load i16, ptr %q.0324.us327, align 2, !dbg !2021, !tbaa !871
  %idxprom129.us336 = zext i16 %55 to i64, !dbg !2021
  %arrayidx130.us337 = getelementptr inbounds i16, ptr %call64, i64 %idxprom129.us336, !dbg !2021
  %56 = load i16, ptr %arrayidx130.us337, align 2, !dbg !2021, !tbaa !886
  store i16 %56, ptr %q.0324.us327, align 2, !dbg !2021, !tbaa !871
  br i1 %cmp136.not, label %if.end144.us339, label %if.then138.us, !dbg !2055

if.then138.us:                                    ; preds = %for.body103.us326
  %opacity139.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327, i64 0, i32 3, !dbg !2056
  %57 = load i16, ptr %opacity139.us, align 2, !dbg !2056, !tbaa !877
  %idxprom141.us = zext i16 %57 to i64, !dbg !2056
  %arrayidx142.us = getelementptr inbounds i16, ptr %call64, i64 %idxprom141.us, !dbg !2056
  %58 = load i16, ptr %arrayidx142.us, align 2, !dbg !2056, !tbaa !886
  store i16 %58, ptr %opacity139.us, align 2, !dbg !2056, !tbaa !877
  br label %if.end144.us339, !dbg !2056

if.end144.us339:                                  ; preds = %if.then138.us, %for.body103.us326
  %incdec.ptr.us340 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324.us327, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us340, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146.us341 = add nuw nsw i64 %x.0323.us328, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146.us341, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond403.not = icmp eq i64 %inc146.us341, %41, !dbg !2016
  br i1 %exitcond403.not, label %for.end147, label %for.body103.us326, !dbg !2017, !llvm.loop !2025

for.body103:                                      ; preds = %for.body103.lr.ph, %if.end144
  %q.0324 = phi ptr [ %incdec.ptr, %if.end144 ], [ %call94, %for.body103.lr.ph ]
  %x.0323 = phi i64 [ %inc146, %if.end144 ], [ 0, %for.body103.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %q.0324, metadata !1865, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %x.0323, metadata !1861, metadata !DIExpression()), !dbg !2005
  %red108 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324, i64 0, i32 2, !dbg !2029
  %59 = load i16, ptr %red108, align 2, !dbg !2029, !tbaa !857
  %idxprom = zext i16 %59 to i64, !dbg !2029
  %arrayidx110 = getelementptr inbounds i16, ptr %call64, i64 %idxprom, !dbg !2029
  %60 = load i16, ptr %arrayidx110, align 2, !dbg !2029, !tbaa !886
  store i16 %60, ptr %red108, align 2, !dbg !2029, !tbaa !857
  br i1 %cmp114.not, label %if.end122, label %if.then116, !dbg !2019

if.then116:                                       ; preds = %for.body103
  %green117 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324, i64 0, i32 1, !dbg !2027
  %61 = load i16, ptr %green117, align 2, !dbg !2027, !tbaa !865
  %idxprom119 = zext i16 %61 to i64, !dbg !2027
  %arrayidx120 = getelementptr inbounds i16, ptr %call64, i64 %idxprom119, !dbg !2027
  %62 = load i16, ptr %arrayidx120, align 2, !dbg !2027, !tbaa !886
  store i16 %62, ptr %green117, align 2, !dbg !2027, !tbaa !865
  br label %if.end122, !dbg !2027

if.end122:                                        ; preds = %if.then116, %for.body103
  br i1 %cmp124.not, label %if.end132, label %if.then126, !dbg !2020

if.then126:                                       ; preds = %if.end122
  %63 = load i16, ptr %q.0324, align 2, !dbg !2021, !tbaa !871
  %idxprom129 = zext i16 %63 to i64, !dbg !2021
  %arrayidx130 = getelementptr inbounds i16, ptr %call64, i64 %idxprom129, !dbg !2021
  %64 = load i16, ptr %arrayidx130, align 2, !dbg !2021, !tbaa !886
  store i16 %64, ptr %q.0324, align 2, !dbg !2021, !tbaa !871
  br label %if.end132, !dbg !2021

if.end132:                                        ; preds = %if.then126, %if.end122
  br i1 %cmp136.not, label %if.end144, label %if.then138, !dbg !2055

if.then138:                                       ; preds = %if.end132
  %opacity139 = getelementptr inbounds %struct._PixelPacket, ptr %q.0324, i64 0, i32 3, !dbg !2056
  %65 = load i16, ptr %opacity139, align 2, !dbg !2056, !tbaa !877
  %idxprom141 = zext i16 %65 to i64, !dbg !2056
  %arrayidx142 = getelementptr inbounds i16, ptr %call64, i64 %idxprom141, !dbg !2056
  %66 = load i16, ptr %arrayidx142, align 2, !dbg !2056, !tbaa !886
  store i16 %66, ptr %opacity139, align 2, !dbg !2056, !tbaa !877
  br label %if.end144, !dbg !2056

if.end144:                                        ; preds = %if.then138, %if.end132
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0324, i64 1, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1865, metadata !DIExpression()), !dbg !2005
  %inc146 = add nuw nsw i64 %x.0323, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc146, metadata !1861, metadata !DIExpression()), !dbg !2005
  %exitcond402.not = icmp eq i64 %inc146, %41, !dbg !2016
  br i1 %exitcond402.not, label %for.end147, label %for.body103, !dbg !2017, !llvm.loop !2025

for.end147:                                       ; preds = %if.end144, %if.end144.us339, %for.body103.us326.us343, %for.body103.us326.us343.us, %if.end144.us339.us, %for.cond99.preheader
  %call148 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call62, ptr noundef nonnull %exception61) #12, !dbg !2009
  %cmp149 = icmp ne i32 %call148, 0, !dbg !2011
  %. = zext i1 %cmp149 to i32, !dbg !2012
  br label %cleanup, !dbg !2012

cleanup:                                          ; preds = %for.end147, %if.end93, %for.body89
  %status.1 = phi i32 [ 0, %for.body89 ], [ 0, %if.end93 ], [ %., %for.end147 ], !dbg !1867
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !1847, metadata !DIExpression()), !dbg !1867
  %inc155 = add nuw nsw i64 %y.0357, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %inc155, metadata !1849, metadata !DIExpression()), !dbg !1867
  %67 = load i64, ptr %rows, align 8, !dbg !1992, !tbaa !828
  %cmp87 = icmp slt i64 %inc155, %67, !dbg !1993
  br i1 %cmp87, label %for.body89, label %for.end156, !dbg !1994, !llvm.loop !2014

for.end156:                                       ; preds = %cleanup, %cleanup.us, %for.cond86.preheader
  %status.0.lcssa = phi i32 [ 1, %for.cond86.preheader ], [ %status.1.us, %cleanup.us ], [ %status.1, %cleanup ], !dbg !2057
  %call157 = tail call ptr @DestroyCacheView(ptr noundef %call62) #11, !dbg !2058
  call void @llvm.dbg.value(metadata ptr %call157, metadata !1845, metadata !DIExpression()), !dbg !1867
  %call158 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call64) #11, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %call158, metadata !1853, metadata !DIExpression()), !dbg !1985
  %cmp159.not = icmp eq i32 %status.0.lcssa, 0, !dbg !2060
  br i1 %cmp159.not, label %cleanup166, label %cleanup166.sink.split, !dbg !2062

cleanup166.sink.split:                            ; preds = %for.end156, %if.end
  %depth162 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !1867
  store i64 %depth, ptr %depth162, align 8, !dbg !1867, !tbaa !1522
  br label %cleanup166, !dbg !2063

cleanup166:                                       ; preds = %cleanup166.sink.split, %for.end156
  %retval.0 = phi i32 [ 0, %for.end156 ], [ 1, %cleanup166.sink.split ], !dbg !1867
  ret i32 %retval.0, !dbg !2063
}

declare !dbg !2064 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !2065 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !2068 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageType(ptr noundef %image, i32 noundef %type) local_unnamed_addr #0 !dbg !2071 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2076, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %type, metadata !2077, metadata !DIExpression()), !dbg !2222
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2223
  %0 = load i32, ptr %debug, align 8, !dbg !2223, !tbaa !796
  %cmp.not = icmp eq i32 %0, 0, !dbg !2225
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2226

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1178, ptr noundef nonnull @.str.6) #11, !dbg !2227
  br label %if.end, !dbg !2228

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !2208, metadata !DIExpression()), !dbg !2222
  %call1 = tail call ptr @AcquireImageInfo() #11, !dbg !2229
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2079, metadata !DIExpression()), !dbg !2222
  %dither = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 78, !dbg !2230
  %1 = load i32, ptr %dither, align 4, !dbg !2230, !tbaa !2231
  %dither2 = getelementptr inbounds %struct._ImageInfo, ptr %call1, i64 0, i32 27, !dbg !2232
  store i32 %1, ptr %dither2, align 8, !dbg !2233, !tbaa !2234
  %call3 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.7) #11, !dbg !2236
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2078, metadata !DIExpression()), !dbg !2222
  %cmp4.not = icmp eq ptr %call3, null, !dbg !2237
  br i1 %cmp4.not, label %if.end7, label %if.then5, !dbg !2239

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @SetImageOption(ptr noundef nonnull %call1, ptr noundef nonnull @.str.7, ptr noundef nonnull %call3) #11, !dbg !2240
  br label %if.end7, !dbg !2241

if.end7:                                          ; preds = %if.then5, %if.end
  switch i32 %type, label %sw.epilog.thread [
    i32 1, label %sw.bb
    i32 2, label %sw.bb22
    i32 3, label %sw.bb30
    i32 4, label %sw.bb42
    i32 11, label %sw.bb58
    i32 5, label %sw.bb74
    i32 6, label %sw.bb90
    i32 7, label %sw.bb103
    i32 8, label %sw.bb120
    i32 9, label %sw.bb138
  ], !dbg !2242

sw.epilog.thread:                                 ; preds = %if.end7
  call void @llvm.dbg.value(metadata i32 %status.14, metadata !2208, metadata !DIExpression()), !dbg !2222
  %call161279 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call1) #11, !dbg !2243
  call void @llvm.dbg.value(metadata ptr %call161, metadata !2079, metadata !DIExpression()), !dbg !2222
  br label %if.end164, !dbg !2244

sw.bb:                                            ; preds = %if.end7
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2245
  %call8 = tail call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef nonnull %exception), !dbg !2249
  %cmp9 = icmp eq i32 %call8, 0, !dbg !2250
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2251

if.then10:                                        ; preds = %sw.bb
  %call11 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 2) #11, !dbg !2252
  call void @llvm.dbg.value(metadata i32 %call11, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end12, !dbg !2253

if.end12:                                         ; preds = %if.then10, %sw.bb
  %status.0 = phi i32 [ %call11, %if.then10 ], [ 1, %sw.bb ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !2208, metadata !DIExpression()), !dbg !2222
  %call13 = tail call i32 @NormalizeImage(ptr noundef nonnull %image) #11, !dbg !2254
  %call15 = tail call i32 @IsMonochromeImage(ptr noundef nonnull %image, ptr noundef nonnull %exception), !dbg !2255
  %cmp16 = icmp eq i32 %call15, 0, !dbg !2257
  br i1 %cmp16, label %if.then17, label %if.end21, !dbg !2258

if.then17:                                        ; preds = %if.end12
  %call18 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %call1) #11, !dbg !2259
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2209, metadata !DIExpression()), !dbg !2222
  store i64 2, ptr %call18, align 8, !dbg !2261, !tbaa !2262
  %colorspace = getelementptr inbounds %struct._QuantizeInfo, ptr %call18, i64 0, i32 3, !dbg !2264
  store i32 2, ptr %colorspace, align 4, !dbg !2265, !tbaa !2266
  %call19 = tail call i32 @QuantizeImage(ptr noundef nonnull %call18, ptr noundef nonnull %image) #11, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %call19, metadata !2208, metadata !DIExpression()), !dbg !2222
  %call20 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %call18) #11, !dbg !2268
  call void @llvm.dbg.value(metadata ptr %call20, metadata !2209, metadata !DIExpression()), !dbg !2222
  br label %if.end21, !dbg !2269

if.end21:                                         ; preds = %if.then17, %if.end12
  %status.1 = phi i32 [ %call19, %if.then17 ], [ %status.0, %if.end12 ], !dbg !2270
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !2208, metadata !DIExpression()), !dbg !2222
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2271
  store i32 0, ptr %matte, align 8, !dbg !2272, !tbaa !1206
  br label %sw.epilog, !dbg !2273

sw.bb22:                                          ; preds = %if.end7
  %exception23 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2274
  %call24 = tail call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef nonnull %exception23), !dbg !2277
  %cmp25 = icmp eq i32 %call24, 0, !dbg !2278
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !2279

if.then26:                                        ; preds = %sw.bb22
  %call27 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 2) #11, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %call27, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end28, !dbg !2281

if.end28:                                         ; preds = %if.then26, %sw.bb22
  %status.2 = phi i32 [ %call27, %if.then26 ], [ 1, %sw.bb22 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2208, metadata !DIExpression()), !dbg !2222
  %matte29 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2282
  store i32 0, ptr %matte29, align 8, !dbg !2283, !tbaa !1206
  br label %sw.epilog, !dbg !2284

sw.bb30:                                          ; preds = %if.end7
  %exception31 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2285
  %call32 = tail call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef nonnull %exception31), !dbg !2288
  %cmp33 = icmp eq i32 %call32, 0, !dbg !2289
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !2290

if.then34:                                        ; preds = %sw.bb30
  %call35 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 2) #11, !dbg !2291
  call void @llvm.dbg.value(metadata i32 %call35, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end36, !dbg !2292

if.end36:                                         ; preds = %if.then34, %sw.bb30
  %status.3 = phi i32 [ %call35, %if.then34 ], [ 1, %sw.bb30 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !2208, metadata !DIExpression()), !dbg !2222
  %matte37 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2293
  %2 = load i32, ptr %matte37, align 8, !dbg !2293, !tbaa !1206
  %cmp38 = icmp eq i32 %2, 0, !dbg !2295
  br i1 %cmp38, label %if.then39, label %sw.epilog, !dbg !2296

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #11, !dbg !2297
  br label %sw.epilog, !dbg !2298

sw.bb42:                                          ; preds = %if.end7
  %colorspace43 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2299
  %3 = load i32, ptr %colorspace43, align 4, !dbg !2299, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %3, metadata !2302, metadata !DIExpression()), !dbg !2305
  switch i32 %3, label %if.then46 [
    i32 29, label %if.end48
    i32 13, label %if.end48
    i32 3, label %if.end48
    i32 1, label %if.end48
    i32 19, label %if.end48
    i32 17, label %if.end48
    i32 2, label %if.end48
  ], !dbg !2307

if.then46:                                        ; preds = %sw.bb42
  %call47 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #11, !dbg !2309
  call void @llvm.dbg.value(metadata i32 %call47, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end48, !dbg !2310

if.end48:                                         ; preds = %sw.bb42, %sw.bb42, %sw.bb42, %sw.bb42, %sw.bb42, %sw.bb42, %sw.bb42, %if.then46
  %status.4 = phi i32 [ %call47, %if.then46 ], [ 1, %sw.bb42 ], [ 1, %sw.bb42 ], [ 1, %sw.bb42 ], [ 1, %sw.bb42 ], [ 1, %sw.bb42 ], [ 1, %sw.bb42 ], [ 1, %sw.bb42 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2208, metadata !DIExpression()), !dbg !2222
  %4 = load i32, ptr %image, align 8, !dbg !2311, !tbaa !1202
  %cmp49 = icmp eq i32 %4, 1, !dbg !2313
  br i1 %cmp49, label %if.then51, label %lor.lhs.false, !dbg !2314

lor.lhs.false:                                    ; preds = %if.end48
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !2315
  %5 = load i64, ptr %colors, align 8, !dbg !2315, !tbaa !1210
  %cmp50 = icmp ugt i64 %5, 256, !dbg !2316
  br i1 %cmp50, label %if.then51, label %if.end56, !dbg !2317

if.then51:                                        ; preds = %lor.lhs.false, %if.end48
  %call52 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %call1) #11, !dbg !2318
  call void @llvm.dbg.value(metadata ptr %call52, metadata !2209, metadata !DIExpression()), !dbg !2222
  store i64 256, ptr %call52, align 8, !dbg !2320, !tbaa !2262
  %call54 = tail call i32 @QuantizeImage(ptr noundef nonnull %call52, ptr noundef nonnull %image) #11, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %call54, metadata !2208, metadata !DIExpression()), !dbg !2222
  %call55 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %call52) #11, !dbg !2322
  call void @llvm.dbg.value(metadata ptr %call55, metadata !2209, metadata !DIExpression()), !dbg !2222
  br label %if.end56, !dbg !2323

if.end56:                                         ; preds = %if.then51, %lor.lhs.false
  %status.5 = phi i32 [ %call54, %if.then51 ], [ %status.4, %lor.lhs.false ], !dbg !2324
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !2208, metadata !DIExpression()), !dbg !2222
  %matte57 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2325
  store i32 0, ptr %matte57, align 8, !dbg !2326, !tbaa !1206
  br label %sw.epilog, !dbg !2327

sw.bb58:                                          ; preds = %if.end7
  %colorspace59 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2328
  %6 = load i32, ptr %colorspace59, align 4, !dbg !2328, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %6, metadata !2302, metadata !DIExpression()), !dbg !2331
  switch i32 %6, label %if.then62 [
    i32 29, label %if.end64
    i32 13, label %if.end64
    i32 3, label %if.end64
    i32 1, label %if.end64
    i32 19, label %if.end64
    i32 17, label %if.end64
    i32 2, label %if.end64
  ], !dbg !2333

if.then62:                                        ; preds = %sw.bb58
  %call63 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #11, !dbg !2334
  call void @llvm.dbg.value(metadata i32 %call63, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end64, !dbg !2335

if.end64:                                         ; preds = %sw.bb58, %sw.bb58, %sw.bb58, %sw.bb58, %sw.bb58, %sw.bb58, %sw.bb58, %if.then62
  %matte65 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2336
  %7 = load i32, ptr %matte65, align 8, !dbg !2336, !tbaa !1206
  %cmp66 = icmp eq i32 %7, 0, !dbg !2338
  br i1 %cmp66, label %if.then67, label %if.end69, !dbg !2339

if.then67:                                        ; preds = %if.end64
  %call68 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #11, !dbg !2340
  br label %if.end69, !dbg !2341

if.end69:                                         ; preds = %if.then67, %if.end64
  %call70 = tail call i32 @BilevelImageChannel(ptr noundef nonnull %image, i32 noundef 8, double noundef 3.276750e+04) #11, !dbg !2342
  %call71 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %call1) #11, !dbg !2343
  call void @llvm.dbg.value(metadata ptr %call71, metadata !2209, metadata !DIExpression()), !dbg !2222
  %call72 = tail call i32 @QuantizeImage(ptr noundef %call71, ptr noundef nonnull %image) #11, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %call72, metadata !2208, metadata !DIExpression()), !dbg !2222
  %call73 = tail call ptr @DestroyQuantizeInfo(ptr noundef %call71) #11, !dbg !2345
  call void @llvm.dbg.value(metadata ptr %call73, metadata !2209, metadata !DIExpression()), !dbg !2222
  br label %sw.epilog, !dbg !2346

sw.bb74:                                          ; preds = %if.end7
  %colorspace75 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2347
  %8 = load i32, ptr %colorspace75, align 4, !dbg !2347, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %8, metadata !2302, metadata !DIExpression()), !dbg !2350
  switch i32 %8, label %if.then78 [
    i32 29, label %if.end80
    i32 13, label %if.end80
    i32 3, label %if.end80
    i32 1, label %if.end80
    i32 19, label %if.end80
    i32 17, label %if.end80
    i32 2, label %if.end80
  ], !dbg !2352

if.then78:                                        ; preds = %sw.bb74
  %call79 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #11, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %call79, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end80, !dbg !2354

if.end80:                                         ; preds = %sw.bb74, %sw.bb74, %sw.bb74, %sw.bb74, %sw.bb74, %sw.bb74, %sw.bb74, %if.then78
  %matte81 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2355
  %9 = load i32, ptr %matte81, align 8, !dbg !2355, !tbaa !1206
  %cmp82 = icmp eq i32 %9, 0, !dbg !2357
  br i1 %cmp82, label %if.then83, label %if.end85, !dbg !2358

if.then83:                                        ; preds = %if.end80
  %call84 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #11, !dbg !2359
  br label %if.end85, !dbg !2360

if.end85:                                         ; preds = %if.then83, %if.end80
  %call86 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %call1) #11, !dbg !2361
  call void @llvm.dbg.value(metadata ptr %call86, metadata !2209, metadata !DIExpression()), !dbg !2222
  %colorspace87 = getelementptr inbounds %struct._QuantizeInfo, ptr %call86, i64 0, i32 3, !dbg !2362
  store i32 3, ptr %colorspace87, align 4, !dbg !2363, !tbaa !2266
  %call88 = tail call i32 @QuantizeImage(ptr noundef %call86, ptr noundef nonnull %image) #11, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %call88, metadata !2208, metadata !DIExpression()), !dbg !2222
  %call89 = tail call ptr @DestroyQuantizeInfo(ptr noundef %call86) #11, !dbg !2365
  call void @llvm.dbg.value(metadata ptr %call89, metadata !2209, metadata !DIExpression()), !dbg !2222
  br label %sw.epilog, !dbg !2366

sw.bb90:                                          ; preds = %if.end7
  %colorspace91 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2367
  %10 = load i32, ptr %colorspace91, align 4, !dbg !2367, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %10, metadata !2302, metadata !DIExpression()), !dbg !2370
  switch i32 %10, label %if.then94 [
    i32 29, label %if.end96
    i32 13, label %if.end96
    i32 3, label %if.end96
    i32 1, label %if.end96
    i32 19, label %if.end96
    i32 17, label %if.end96
    i32 2, label %if.end96
  ], !dbg !2372

if.then94:                                        ; preds = %sw.bb90
  %call95 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #11, !dbg !2373
  call void @llvm.dbg.value(metadata i32 %call95, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end96, !dbg !2374

if.end96:                                         ; preds = %sw.bb90, %sw.bb90, %sw.bb90, %sw.bb90, %sw.bb90, %sw.bb90, %sw.bb90, %if.then94
  %status.6 = phi i32 [ %call95, %if.then94 ], [ 1, %sw.bb90 ], [ 1, %sw.bb90 ], [ 1, %sw.bb90 ], [ 1, %sw.bb90 ], [ 1, %sw.bb90 ], [ 1, %sw.bb90 ], [ 1, %sw.bb90 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.6, metadata !2208, metadata !DIExpression()), !dbg !2222
  %11 = load i32, ptr %image, align 8, !dbg !2375, !tbaa !1202
  %cmp98.not = icmp eq i32 %11, 1, !dbg !2377
  br i1 %cmp98.not, label %if.end101, label %if.then99, !dbg !2378

if.then99:                                        ; preds = %if.end96
  %call100 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #11, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %call100, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end101, !dbg !2380

if.end101:                                        ; preds = %if.then99, %if.end96
  %status.7 = phi i32 [ %call100, %if.then99 ], [ %status.6, %if.end96 ], !dbg !2381
  call void @llvm.dbg.value(metadata i32 %status.7, metadata !2208, metadata !DIExpression()), !dbg !2222
  %matte102 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2382
  store i32 0, ptr %matte102, align 8, !dbg !2383, !tbaa !1206
  br label %sw.epilog, !dbg !2384

sw.bb103:                                         ; preds = %if.end7
  %colorspace104 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2385
  %12 = load i32, ptr %colorspace104, align 4, !dbg !2385, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %12, metadata !2302, metadata !DIExpression()), !dbg !2388
  switch i32 %12, label %if.then107 [
    i32 29, label %if.end109
    i32 13, label %if.end109
    i32 3, label %if.end109
    i32 1, label %if.end109
    i32 19, label %if.end109
    i32 17, label %if.end109
    i32 2, label %if.end109
  ], !dbg !2390

if.then107:                                       ; preds = %sw.bb103
  %call108 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #11, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %call108, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end109, !dbg !2392

if.end109:                                        ; preds = %sw.bb103, %sw.bb103, %sw.bb103, %sw.bb103, %sw.bb103, %sw.bb103, %sw.bb103, %if.then107
  %status.8 = phi i32 [ %call108, %if.then107 ], [ 1, %sw.bb103 ], [ 1, %sw.bb103 ], [ 1, %sw.bb103 ], [ 1, %sw.bb103 ], [ 1, %sw.bb103 ], [ 1, %sw.bb103 ], [ 1, %sw.bb103 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.8, metadata !2208, metadata !DIExpression()), !dbg !2222
  %13 = load i32, ptr %image, align 8, !dbg !2393, !tbaa !1202
  %cmp111.not = icmp eq i32 %13, 1, !dbg !2395
  br i1 %cmp111.not, label %if.end114, label %if.then112, !dbg !2396

if.then112:                                       ; preds = %if.end109
  %call113 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #11, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %call113, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end114, !dbg !2398

if.end114:                                        ; preds = %if.then112, %if.end109
  %status.9 = phi i32 [ %call113, %if.then112 ], [ %status.8, %if.end109 ], !dbg !2399
  call void @llvm.dbg.value(metadata i32 %status.9, metadata !2208, metadata !DIExpression()), !dbg !2222
  %matte115 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2400
  %14 = load i32, ptr %matte115, align 8, !dbg !2400, !tbaa !1206
  %cmp116 = icmp eq i32 %14, 0, !dbg !2402
  br i1 %cmp116, label %if.then117, label %sw.epilog, !dbg !2403

if.then117:                                       ; preds = %if.end114
  %call118 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #11, !dbg !2404
  br label %sw.epilog, !dbg !2405

sw.bb120:                                         ; preds = %if.end7
  %colorspace121 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2406
  %15 = load i32, ptr %colorspace121, align 4, !dbg !2406, !tbaa !843
  switch i32 %15, label %if.then127 [
    i32 12, label %if.end131
    i32 29, label %if.end129
    i32 13, label %if.end129
    i32 3, label %if.end129
    i32 1, label %if.end129
    i32 19, label %if.end129
    i32 17, label %if.end129
    i32 2, label %if.end129
  ], !dbg !2409

if.then127:                                       ; preds = %sw.bb120
  %call128 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #11, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %call128, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end129, !dbg !2413

if.end129:                                        ; preds = %sw.bb120, %sw.bb120, %sw.bb120, %sw.bb120, %sw.bb120, %sw.bb120, %sw.bb120, %if.then127
  %call130 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 12) #11, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %call130, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end131, !dbg !2415

if.end131:                                        ; preds = %sw.bb120, %if.end129
  %status.10 = phi i32 [ %call130, %if.end129 ], [ 1, %sw.bb120 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.10, metadata !2208, metadata !DIExpression()), !dbg !2222
  %16 = load i32, ptr %image, align 8, !dbg !2416, !tbaa !1202
  %cmp133.not = icmp eq i32 %16, 1, !dbg !2418
  br i1 %cmp133.not, label %if.end136, label %if.then134, !dbg !2419

if.then134:                                       ; preds = %if.end131
  %call135 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #11, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %call135, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end136, !dbg !2421

if.end136:                                        ; preds = %if.then134, %if.end131
  %status.11 = phi i32 [ %call135, %if.then134 ], [ %status.10, %if.end131 ], !dbg !2422
  call void @llvm.dbg.value(metadata i32 %status.11, metadata !2208, metadata !DIExpression()), !dbg !2222
  %matte137 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2423
  store i32 0, ptr %matte137, align 8, !dbg !2424, !tbaa !1206
  br label %sw.epilog, !dbg !2425

sw.bb138:                                         ; preds = %if.end7
  %colorspace139 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2426
  %17 = load i32, ptr %colorspace139, align 4, !dbg !2426, !tbaa !843
  switch i32 %17, label %if.then145 [
    i32 12, label %if.end149
    i32 29, label %if.end147
    i32 13, label %if.end147
    i32 3, label %if.end147
    i32 1, label %if.end147
    i32 19, label %if.end147
    i32 17, label %if.end147
    i32 2, label %if.end147
  ], !dbg !2429

if.then145:                                       ; preds = %sw.bb138
  %call146 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 13) #11, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %call146, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end147, !dbg !2433

if.end147:                                        ; preds = %sw.bb138, %sw.bb138, %sw.bb138, %sw.bb138, %sw.bb138, %sw.bb138, %sw.bb138, %if.then145
  %call148 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %image, i32 noundef 12) #11, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %call148, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end149, !dbg !2435

if.end149:                                        ; preds = %sw.bb138, %if.end147
  %status.12 = phi i32 [ %call148, %if.end147 ], [ 1, %sw.bb138 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.12, metadata !2208, metadata !DIExpression()), !dbg !2222
  %18 = load i32, ptr %image, align 8, !dbg !2436, !tbaa !1202
  %cmp151.not = icmp eq i32 %18, 1, !dbg !2438
  br i1 %cmp151.not, label %if.end154, label %if.then152, !dbg !2439

if.then152:                                       ; preds = %if.end149
  %call153 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #11, !dbg !2440
  call void @llvm.dbg.value(metadata i32 %call153, metadata !2208, metadata !DIExpression()), !dbg !2222
  br label %if.end154, !dbg !2441

if.end154:                                        ; preds = %if.then152, %if.end149
  %status.13 = phi i32 [ %call153, %if.then152 ], [ %status.12, %if.end149 ], !dbg !2442
  call void @llvm.dbg.value(metadata i32 %status.13, metadata !2208, metadata !DIExpression()), !dbg !2222
  %matte155 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2443
  %19 = load i32, ptr %matte155, align 8, !dbg !2443, !tbaa !1206
  %cmp156 = icmp eq i32 %19, 0, !dbg !2445
  br i1 %cmp156, label %if.then157, label %sw.epilog, !dbg !2446

if.then157:                                       ; preds = %if.end154
  %call158 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %image, i32 noundef 6) #11, !dbg !2447
  br label %sw.epilog, !dbg !2448

sw.epilog:                                        ; preds = %if.end154, %if.then157, %if.end114, %if.then117, %if.end36, %if.then39, %if.end136, %if.end101, %if.end85, %if.end69, %if.end56, %if.end28, %if.end21
  %status.14 = phi i32 [ %status.13, %if.then157 ], [ %status.13, %if.end154 ], [ %status.11, %if.end136 ], [ %status.9, %if.then117 ], [ %status.9, %if.end114 ], [ %status.7, %if.end101 ], [ %call88, %if.end85 ], [ %call72, %if.end69 ], [ %status.5, %if.end56 ], [ %status.3, %if.then39 ], [ %status.3, %if.end36 ], [ %status.2, %if.end28 ], [ %status.1, %if.end21 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %status.14, metadata !2208, metadata !DIExpression()), !dbg !2222
  %call161 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %call1) #11, !dbg !2243
  call void @llvm.dbg.value(metadata ptr %call161, metadata !2079, metadata !DIExpression()), !dbg !2222
  %cmp162 = icmp eq i32 %status.14, 0, !dbg !2449
  br i1 %cmp162, label %cleanup, label %if.end164, !dbg !2244

if.end164:                                        ; preds = %sw.epilog.thread, %sw.epilog
  %type165 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !2451
  store i32 %type, ptr %type165, align 8, !dbg !2452, !tbaa !1614
  br label %cleanup, !dbg !2453

cleanup:                                          ; preds = %sw.epilog, %if.end164
  %retval.0 = phi i32 [ 1, %if.end164 ], [ 0, %sw.epilog ], !dbg !2222
  ret i32 %retval.0, !dbg !2454
}

declare !dbg !2455 ptr @AcquireImageInfo() local_unnamed_addr #3

declare !dbg !2458 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2462 i32 @SetImageOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2466 i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2469 i32 @NormalizeImage(ptr noundef) local_unnamed_addr #3

declare !dbg !2473 ptr @AcquireQuantizeInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2478 i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2483 ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !2486 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2492 i32 @BilevelImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

declare !dbg !2496 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2500 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

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
attributes #9 = { argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { hot nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!736, !737, !738, !739, !740, !741}
!llvm.ident = !{!742}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !503, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/attribute.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "cdb5275a78f94e78110e9e1a0cbfdf20")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !393, !415, !427, !460, !481, !488}
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
!415 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !416, line: 25, baseType: !5, size: 32, elements: !417)
!416 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426}
!418 = !DIEnumerator(name: "UndefinedResource", value: 0)
!419 = !DIEnumerator(name: "AreaResource", value: 1)
!420 = !DIEnumerator(name: "DiskResource", value: 2)
!421 = !DIEnumerator(name: "FileResource", value: 3)
!422 = !DIEnumerator(name: "MapResource", value: 4)
!423 = !DIEnumerator(name: "MemoryResource", value: 5)
!424 = !DIEnumerator(name: "ThreadResource", value: 6)
!425 = !DIEnumerator(name: "TimeResource", value: 7)
!426 = !DIEnumerator(name: "ThrottleResource", value: 8)
!427 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !428, line: 27, baseType: !5, size: 32, elements: !429)
!428 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!430 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!431 = !DIEnumerator(name: "RotatePreview", value: 1)
!432 = !DIEnumerator(name: "ShearPreview", value: 2)
!433 = !DIEnumerator(name: "RollPreview", value: 3)
!434 = !DIEnumerator(name: "HuePreview", value: 4)
!435 = !DIEnumerator(name: "SaturationPreview", value: 5)
!436 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!437 = !DIEnumerator(name: "GammaPreview", value: 7)
!438 = !DIEnumerator(name: "SpiffPreview", value: 8)
!439 = !DIEnumerator(name: "DullPreview", value: 9)
!440 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!441 = !DIEnumerator(name: "QuantizePreview", value: 11)
!442 = !DIEnumerator(name: "DespecklePreview", value: 12)
!443 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!444 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!445 = !DIEnumerator(name: "SharpenPreview", value: 15)
!446 = !DIEnumerator(name: "BlurPreview", value: 16)
!447 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!448 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!449 = !DIEnumerator(name: "SpreadPreview", value: 19)
!450 = !DIEnumerator(name: "SolarizePreview", value: 20)
!451 = !DIEnumerator(name: "ShadePreview", value: 21)
!452 = !DIEnumerator(name: "RaisePreview", value: 22)
!453 = !DIEnumerator(name: "SegmentPreview", value: 23)
!454 = !DIEnumerator(name: "SwirlPreview", value: 24)
!455 = !DIEnumerator(name: "ImplodePreview", value: 25)
!456 = !DIEnumerator(name: "WavePreview", value: 26)
!457 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!458 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!459 = !DIEnumerator(name: "JPEGPreview", value: 29)
!460 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !461, line: 27, baseType: !5, size: 32, elements: !462)
!461 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!463 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!464 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!465 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!466 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!467 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!468 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!469 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!470 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!471 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!472 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!473 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!474 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!475 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!476 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!477 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!478 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!479 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!480 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!481 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !482, line: 27, baseType: !5, size: 32, elements: !483)
!482 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3eab4066ac81fc10b9d90b7cb7db1009")
!483 = !{!484, !485, !486, !487}
!484 = !DIEnumerator(name: "UndefinedDitherMethod", value: 0)
!485 = !DIEnumerator(name: "NoDitherMethod", value: 1)
!486 = !DIEnumerator(name: "RiemersmaDitherMethod", value: 2)
!487 = !DIEnumerator(name: "FloydSteinbergDitherMethod", value: 3)
!488 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 30, baseType: !5, size: 32, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!490 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!491 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!492 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!493 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!494 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!495 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!496 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!497 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!498 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!499 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!500 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!501 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!502 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!503 = !{!504, !505, !510, !521, !522, !524, !525, !516, !526, !529, !530, !732, !551, !645, !733, !651, !735, !5}
!504 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !506, line: 77, baseType: !507)
!506 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !508, line: 193, baseType: !509)
!508 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!509 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !514)
!514 = !{!515, !518, !519, !520}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !513, file: !326, line: 143, baseType: !516, size: 16)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !517)
!517 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !513, file: !326, line: 144, baseType: !516, size: 16, offset: 16)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !513, file: !326, line: 145, baseType: !516, size: 16, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !513, file: !326, line: 146, baseType: !516, size: 16, offset: 48)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !523, line: 46, baseType: !504)
!523 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!525 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !516)
!529 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !533)
!533 = !{!534, !536, !538, !540, !541, !543, !545, !546, !547, !548, !549, !550, !552, !553, !554, !555, !556, !570, !572, !573, !575, !578, !579, !580, !581, !582, !583, !591, !592, !593, !594, !595, !596, !598, !600, !602, !604, !606, !608, !610, !611, !612, !613, !614, !615, !616, !624, !639, !653, !654, !655, !656, !660, !664, !668, !669, !670, !671, !672, !689, !690, !692, !693, !703, !704, !706, !707, !708, !709, !710, !711, !713, !714, !715, !716, !717, !718, !719, !721, !722, !723, !724, !725, !729, !731}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !532, file: !73, line: 153, baseType: !535, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !532, file: !73, line: 156, baseType: !537, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !532, file: !73, line: 159, baseType: !539, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !532, file: !73, line: 162, baseType: !522, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !532, file: !73, line: 165, baseType: !542, size: 32, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !532, file: !73, line: 168, baseType: !544, size: 32, offset: 224)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !532, file: !73, line: 169, baseType: !544, size: 32, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !532, file: !73, line: 172, baseType: !522, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !532, file: !73, line: 173, baseType: !522, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !532, file: !73, line: 174, baseType: !522, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !532, file: !73, line: 175, baseType: !522, size: 64, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !532, file: !73, line: 178, baseType: !551, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !532, file: !73, line: 179, baseType: !512, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !532, file: !73, line: 180, baseType: !512, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !532, file: !73, line: 181, baseType: !512, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !532, file: !73, line: 184, baseType: !529, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !532, file: !73, line: 187, baseType: !557, size: 768, offset: 896)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !559)
!559 = !{!560, !567, !568, !569}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !558, file: !73, line: 124, baseType: !561, size: 192)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !563)
!563 = !{!564, !565, !566}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !562, file: !73, line: 98, baseType: !529, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !562, file: !73, line: 99, baseType: !529, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !562, file: !73, line: 100, baseType: !529, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !558, file: !73, line: 125, baseType: !561, size: 192, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !558, file: !73, line: 126, baseType: !561, size: 192, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !558, file: !73, line: 127, baseType: !561, size: 192, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !532, file: !73, line: 190, baseType: !571, size: 32, offset: 1664)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !532, file: !73, line: 193, baseType: !521, size: 64, offset: 1728)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !532, file: !73, line: 196, baseType: !574, size: 32, offset: 1792)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !532, file: !73, line: 199, baseType: !576, size: 64, offset: 1856)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !532, file: !73, line: 200, baseType: !576, size: 64, offset: 1920)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !532, file: !73, line: 201, baseType: !576, size: 64, offset: 1984)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !532, file: !73, line: 204, baseType: !505, size: 64, offset: 2048)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !532, file: !73, line: 207, baseType: !529, size: 64, offset: 2112)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !532, file: !73, line: 208, baseType: !529, size: 64, offset: 2176)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !532, file: !73, line: 211, baseType: !584, size: 256, offset: 2240)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !586)
!586 = !{!587, !588, !589, !590}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !585, file: !153, line: 124, baseType: !522, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !585, file: !153, line: 125, baseType: !522, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !585, file: !153, line: 128, baseType: !505, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !585, file: !153, line: 129, baseType: !505, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !532, file: !73, line: 212, baseType: !584, size: 256, offset: 2496)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !532, file: !73, line: 213, baseType: !584, size: 256, offset: 2752)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !532, file: !73, line: 216, baseType: !529, size: 64, offset: 3008)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !532, file: !73, line: 217, baseType: !529, size: 64, offset: 3072)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !532, file: !73, line: 218, baseType: !529, size: 64, offset: 3136)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !532, file: !73, line: 221, baseType: !597, size: 32, offset: 3200)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !532, file: !73, line: 224, baseType: !599, size: 32, offset: 3232)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !532, file: !73, line: 227, baseType: !601, size: 32, offset: 3264)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !532, file: !73, line: 230, baseType: !603, size: 32, offset: 3296)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !532, file: !73, line: 233, baseType: !605, size: 32, offset: 3328)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !532, file: !73, line: 236, baseType: !607, size: 32, offset: 3360)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !532, file: !73, line: 239, baseType: !609, size: 64, offset: 3392)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !532, file: !73, line: 242, baseType: !522, size: 64, offset: 3456)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !532, file: !73, line: 243, baseType: !522, size: 64, offset: 3520)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !532, file: !73, line: 246, baseType: !505, size: 64, offset: 3584)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !532, file: !73, line: 249, baseType: !522, size: 64, offset: 3648)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !532, file: !73, line: 250, baseType: !522, size: 64, offset: 3712)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !532, file: !73, line: 253, baseType: !505, size: 64, offset: 3776)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !532, file: !73, line: 256, baseType: !617, size: 192, offset: 3840)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !618, line: 68, baseType: !619)
!618 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !618, line: 62, size: 192, elements: !620)
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !619, file: !618, line: 65, baseType: !529, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !619, file: !618, line: 66, baseType: !529, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !619, file: !618, line: 67, baseType: !529, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !532, file: !73, line: 259, baseType: !625, size: 512, offset: 4032)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !627)
!627 = !{!628, !635, !636, !638}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !626, file: !247, line: 43, baseType: !629, size: 192)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !630, file: !247, line: 35, baseType: !529, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !630, file: !247, line: 36, baseType: !529, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !630, file: !247, line: 37, baseType: !529, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !626, file: !247, line: 44, baseType: !629, size: 192, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !626, file: !247, line: 47, baseType: !637, size: 32, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !626, file: !247, line: 50, baseType: !522, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !532, file: !73, line: 262, baseType: !640, size: 64, offset: 4544)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !641, line: 26, baseType: !642)
!641 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!544, !645, !647, !650, !521}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !649)
!649 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !652)
!652 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !532, file: !73, line: 265, baseType: !521, size: 64, offset: 4608)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !532, file: !73, line: 266, baseType: !521, size: 64, offset: 4672)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !532, file: !73, line: 267, baseType: !521, size: 64, offset: 4736)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !532, file: !73, line: 270, baseType: !657, size: 64, offset: 4800)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !659)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !532, file: !73, line: 273, baseType: !661, size: 64, offset: 4864)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !663)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !532, file: !73, line: 276, baseType: !665, size: 32768, offset: 4928)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 32768, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 4096)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !532, file: !73, line: 277, baseType: !665, size: 32768, offset: 37696)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !532, file: !73, line: 278, baseType: !665, size: 32768, offset: 70464)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !532, file: !73, line: 281, baseType: !522, size: 64, offset: 103232)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !532, file: !73, line: 282, baseType: !522, size: 64, offset: 103296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !532, file: !73, line: 285, baseType: !673, size: 448, offset: 103360)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !675)
!675 = !{!676, !678, !679, !680, !681, !682, !683, !688}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !674, file: !253, line: 105, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !674, file: !253, line: 108, baseType: !525, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !674, file: !253, line: 111, baseType: !576, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !674, file: !253, line: 112, baseType: !576, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !674, file: !253, line: 115, baseType: !521, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !674, file: !253, line: 118, baseType: !544, size: 32, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !674, file: !253, line: 121, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !686, line: 26, baseType: !687)
!686 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !686, line: 25, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !674, file: !253, line: 124, baseType: !522, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !532, file: !73, line: 288, baseType: !544, size: 32, offset: 103808)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !532, file: !73, line: 291, baseType: !691, size: 64, offset: 103872)
!691 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !505)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !532, file: !73, line: 294, baseType: !684, size: 64, offset: 103936)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !532, file: !73, line: 297, baseType: !694, size: 256, offset: 104000)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !696)
!696 = !{!697, !698, !699, !702}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !695, file: !89, line: 30, baseType: !576, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !695, file: !89, line: 33, baseType: !522, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !695, file: !89, line: 36, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !695, file: !89, line: 39, baseType: !522, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !532, file: !73, line: 298, baseType: !694, size: 256, offset: 104256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !532, file: !73, line: 299, baseType: !705, size: 64, offset: 104512)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !532, file: !73, line: 302, baseType: !522, size: 64, offset: 104576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !532, file: !73, line: 305, baseType: !522, size: 64, offset: 104640)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !532, file: !73, line: 308, baseType: !609, size: 64, offset: 104704)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !532, file: !73, line: 309, baseType: !609, size: 64, offset: 104768)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !73, line: 310, baseType: !609, size: 64, offset: 104832)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !532, file: !73, line: 313, baseType: !712, size: 32, offset: 104896)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !532, file: !73, line: 316, baseType: !544, size: 32, offset: 104928)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !532, file: !73, line: 319, baseType: !512, size: 64, offset: 104960)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !532, file: !73, line: 322, baseType: !609, size: 64, offset: 105024)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !532, file: !73, line: 325, baseType: !584, size: 256, offset: 105088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !532, file: !73, line: 328, baseType: !521, size: 64, offset: 105344)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !532, file: !73, line: 329, baseType: !521, size: 64, offset: 105408)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !532, file: !73, line: 332, baseType: !720, size: 32, offset: 105472)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !532, file: !73, line: 335, baseType: !544, size: 32, offset: 105504)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !532, file: !73, line: 338, baseType: !651, size: 64, offset: 105536)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !532, file: !73, line: 341, baseType: !544, size: 32, offset: 105600)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !532, file: !73, line: 344, baseType: !522, size: 64, offset: 105664)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !532, file: !73, line: 347, baseType: !726, size: 64, offset: 105728)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !727, line: 7, baseType: !728)
!727 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !508, line: 160, baseType: !509)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !532, file: !73, line: 350, baseType: !730, size: 32, offset: 105792)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !532, file: !73, line: 353, baseType: !522, size: 64, offset: 105856)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !734)
!734 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumAny", file: !4, line: 170, baseType: !651)
!736 = !{i32 7, !"Dwarf Version", i32 5}
!737 = !{i32 2, !"Debug Info Version", i32 3}
!738 = !{i32 1, !"wchar_size", i32 4}
!739 = !{i32 7, !"PIC Level", i32 2}
!740 = !{i32 7, !"PIE Level", i32 2}
!741 = !{i32 7, !"uwtable", i32 2}
!742 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!743 = distinct !DISubprogram(name: "GetImageBoundingBox", scope: !744, file: !744, line: 125, type: !745, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !750)
!744 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cdb5275a78f94e78110e9e1a0cbfdf20")
!745 = !DISubroutineType(types: !746)
!746 = !{!584, !747, !749}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!750 = !{!751, !752, !753, !757, !758, !775, !776, !777, !778, !779, !783, !784, !786, !788}
!751 = !DILocalVariable(name: "image", arg: 1, scope: !743, file: !744, line: 125, type: !747)
!752 = !DILocalVariable(name: "exception", arg: 2, scope: !743, file: !744, line: 126, type: !749)
!753 = !DILocalVariable(name: "image_view", scope: !743, file: !744, line: 129, type: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !461, line: 50, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!757 = !DILocalVariable(name: "status", scope: !743, file: !744, line: 132, type: !544)
!758 = !DILocalVariable(name: "target", scope: !743, file: !744, line: 135, type: !759)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 1344, elements: !773)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !761, file: !326, line: 107, baseType: !535, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !761, file: !326, line: 110, baseType: !537, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !761, file: !326, line: 113, baseType: !544, size: 32, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !761, file: !326, line: 116, baseType: !529, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !761, file: !326, line: 119, baseType: !522, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !761, file: !326, line: 122, baseType: !733, size: 32, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !761, file: !326, line: 123, baseType: !733, size: 32, offset: 288)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !761, file: !326, line: 124, baseType: !733, size: 32, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !761, file: !326, line: 125, baseType: !733, size: 32, offset: 352)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !761, file: !326, line: 126, baseType: !733, size: 32, offset: 384)
!773 = !{!774}
!774 = !DISubrange(count: 3)
!775 = !DILocalVariable(name: "zero", scope: !743, file: !744, line: 136, type: !760)
!776 = !DILocalVariable(name: "bounds", scope: !743, file: !744, line: 139, type: !584)
!777 = !DILocalVariable(name: "p", scope: !743, file: !744, line: 142, type: !510)
!778 = !DILocalVariable(name: "y", scope: !743, file: !744, line: 145, type: !505)
!779 = !DILocalVariable(name: "pixel", scope: !780, file: !744, line: 184, type: !760)
!780 = distinct !DILexicalBlock(scope: !781, file: !744, line: 182, column: 3)
!781 = distinct !DILexicalBlock(scope: !782, file: !744, line: 181, column: 3)
!782 = distinct !DILexicalBlock(scope: !743, file: !744, line: 181, column: 3)
!783 = !DILocalVariable(name: "bounding_box", scope: !780, file: !744, line: 187, type: !584)
!784 = !DILocalVariable(name: "indexes", scope: !780, file: !744, line: 190, type: !785)
!785 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !526)
!786 = !DILocalVariable(name: "p", scope: !780, file: !744, line: 193, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !510)
!788 = !DILocalVariable(name: "x", scope: !780, file: !744, line: 196, type: !505)
!789 = !DILocation(line: 0, scope: !743)
!790 = !DILocation(line: 134, column: 3, scope: !743)
!791 = !DILocation(line: 135, column: 5, scope: !743)
!792 = !DILocation(line: 136, column: 5, scope: !743)
!793 = !DILocation(line: 139, column: 5, scope: !743)
!794 = !DILocation(line: 149, column: 14, scope: !795)
!795 = distinct !DILexicalBlock(scope: !743, file: !744, line: 149, column: 7)
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
!815 = !DILocation(line: 149, column: 20, scope: !795)
!816 = !DILocation(line: 149, column: 7, scope: !743)
!817 = !DILocation(line: 150, column: 68, scope: !795)
!818 = !DILocation(line: 150, column: 12, scope: !795)
!819 = !DILocation(line: 150, column: 5, scope: !795)
!820 = !DILocation(line: 152, column: 10, scope: !743)
!821 = !DILocation(line: 153, column: 29, scope: !743)
!822 = !DILocation(line: 152, column: 16, scope: !743)
!823 = !{!797, !800, i64 40}
!824 = !DILocation(line: 153, column: 10, scope: !743)
!825 = !DILocation(line: 153, column: 11, scope: !743)
!826 = !{!807, !800, i64 16}
!827 = !DILocation(line: 154, column: 29, scope: !743)
!828 = !{!797, !800, i64 48}
!829 = !DILocation(line: 154, column: 10, scope: !743)
!830 = !DILocation(line: 154, column: 11, scope: !743)
!831 = !{!807, !800, i64 24}
!832 = !DILocation(line: 155, column: 3, scope: !743)
!833 = !DILocation(line: 156, column: 14, scope: !743)
!834 = !DILocation(line: 157, column: 5, scope: !743)
!835 = !DILocation(line: 158, column: 9, scope: !836)
!836 = distinct !DILexicalBlock(scope: !743, file: !744, line: 158, column: 7)
!837 = !DILocation(line: 158, column: 7, scope: !743)
!838 = !DILocation(line: 160, column: 18, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !744, line: 159, column: 5)
!840 = !DILocation(line: 161, column: 7, scope: !839)
!841 = !DILocation(line: 163, column: 32, scope: !743)
!842 = !DILocation(line: 163, column: 3, scope: !743)
!843 = !{!797, !798, i64 4}
!844 = !DILocalVariable(name: "image", arg: 1, scope: !845, file: !846, line: 92, type: !747)
!845 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !846, file: !846, line: 92, type: !847, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !850)
!846 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!847 = !DISubroutineType(types: !848)
!848 = !{null, !747, !510, !526, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!850 = !{!844, !851, !852, !853}
!851 = !DILocalVariable(name: "color", arg: 2, scope: !845, file: !846, line: 93, type: !510)
!852 = !DILocalVariable(name: "index", arg: 3, scope: !845, file: !846, line: 93, type: !526)
!853 = !DILocalVariable(name: "pixel", arg: 4, scope: !845, file: !846, line: 93, type: !849)
!854 = !DILocation(line: 0, scope: !845, inlinedAt: !855)
!855 = distinct !DILocation(line: 163, column: 3, scope: !743)
!856 = !DILocation(line: 95, column: 31, scope: !845, inlinedAt: !855)
!857 = !{!802, !803, i64 4}
!858 = !DILocation(line: 95, column: 14, scope: !845, inlinedAt: !855)
!859 = !DILocation(line: 95, column: 10, scope: !845, inlinedAt: !855)
!860 = !DILocation(line: 95, column: 13, scope: !845, inlinedAt: !855)
!861 = !{!862, !863, i64 32}
!862 = !{!"_MagickPixelPacket", !798, i64 0, !798, i64 4, !798, i64 8, !804, i64 16, !800, i64 24, !863, i64 32, !863, i64 36, !863, i64 40, !863, i64 44, !863, i64 48}
!863 = !{!"float", !798, i64 0}
!864 = !DILocation(line: 96, column: 33, scope: !845, inlinedAt: !855)
!865 = !{!802, !803, i64 2}
!866 = !DILocation(line: 96, column: 16, scope: !845, inlinedAt: !855)
!867 = !DILocation(line: 96, column: 10, scope: !845, inlinedAt: !855)
!868 = !DILocation(line: 96, column: 15, scope: !845, inlinedAt: !855)
!869 = !{!862, !863, i64 36}
!870 = !DILocation(line: 97, column: 32, scope: !845, inlinedAt: !855)
!871 = !{!802, !803, i64 0}
!872 = !DILocation(line: 97, column: 15, scope: !845, inlinedAt: !855)
!873 = !DILocation(line: 97, column: 10, scope: !845, inlinedAt: !855)
!874 = !DILocation(line: 97, column: 14, scope: !845, inlinedAt: !855)
!875 = !{!862, !863, i64 40}
!876 = !DILocation(line: 98, column: 35, scope: !845, inlinedAt: !855)
!877 = !{!802, !803, i64 6}
!878 = !DILocation(line: 98, column: 18, scope: !845, inlinedAt: !855)
!879 = !DILocation(line: 98, column: 10, scope: !845, inlinedAt: !855)
!880 = !DILocation(line: 98, column: 17, scope: !845, inlinedAt: !855)
!881 = !{!862, !863, i64 44}
!882 = !DILocation(line: 99, column: 26, scope: !883, inlinedAt: !855)
!883 = distinct !DILexicalBlock(scope: !845, file: !846, line: 99, column: 7)
!884 = !DILocation(line: 99, column: 45, scope: !883, inlinedAt: !855)
!885 = !DILocation(line: 101, column: 35, scope: !883, inlinedAt: !855)
!886 = !{!803, !803, i64 0}
!887 = !DILocation(line: 101, column: 18, scope: !883, inlinedAt: !855)
!888 = !DILocation(line: 101, column: 12, scope: !883, inlinedAt: !855)
!889 = !DILocation(line: 101, column: 17, scope: !883, inlinedAt: !855)
!890 = !{!862, !863, i64 48}
!891 = !DILocation(line: 101, column: 5, scope: !883, inlinedAt: !855)
!892 = !DILocation(line: 165, column: 31, scope: !743)
!893 = !DILocation(line: 165, column: 3, scope: !743)
!894 = !DILocation(line: 166, column: 59, scope: !743)
!895 = !DILocation(line: 166, column: 66, scope: !743)
!896 = !DILocation(line: 166, column: 5, scope: !743)
!897 = !DILocation(line: 168, column: 32, scope: !743)
!898 = !DILocation(line: 168, column: 3, scope: !743)
!899 = !DILocation(line: 0, scope: !845, inlinedAt: !900)
!900 = distinct !DILocation(line: 168, column: 3, scope: !743)
!901 = !DILocation(line: 95, column: 31, scope: !845, inlinedAt: !900)
!902 = !DILocation(line: 95, column: 14, scope: !845, inlinedAt: !900)
!903 = !DILocation(line: 95, column: 10, scope: !845, inlinedAt: !900)
!904 = !DILocation(line: 95, column: 13, scope: !845, inlinedAt: !900)
!905 = !DILocation(line: 96, column: 33, scope: !845, inlinedAt: !900)
!906 = !DILocation(line: 96, column: 16, scope: !845, inlinedAt: !900)
!907 = !DILocation(line: 96, column: 10, scope: !845, inlinedAt: !900)
!908 = !DILocation(line: 96, column: 15, scope: !845, inlinedAt: !900)
!909 = !DILocation(line: 97, column: 32, scope: !845, inlinedAt: !900)
!910 = !DILocation(line: 97, column: 15, scope: !845, inlinedAt: !900)
!911 = !DILocation(line: 97, column: 10, scope: !845, inlinedAt: !900)
!912 = !DILocation(line: 97, column: 14, scope: !845, inlinedAt: !900)
!913 = !DILocation(line: 98, column: 35, scope: !845, inlinedAt: !900)
!914 = !DILocation(line: 98, column: 18, scope: !845, inlinedAt: !900)
!915 = !DILocation(line: 98, column: 10, scope: !845, inlinedAt: !900)
!916 = !DILocation(line: 98, column: 17, scope: !845, inlinedAt: !900)
!917 = !DILocation(line: 99, column: 26, scope: !883, inlinedAt: !900)
!918 = !DILocation(line: 99, column: 45, scope: !883, inlinedAt: !900)
!919 = !DILocation(line: 101, column: 35, scope: !883, inlinedAt: !900)
!920 = !DILocation(line: 101, column: 18, scope: !883, inlinedAt: !900)
!921 = !DILocation(line: 101, column: 12, scope: !883, inlinedAt: !900)
!922 = !DILocation(line: 101, column: 17, scope: !883, inlinedAt: !900)
!923 = !DILocation(line: 101, column: 5, scope: !883, inlinedAt: !900)
!924 = !DILocation(line: 170, column: 31, scope: !743)
!925 = !DILocation(line: 170, column: 3, scope: !743)
!926 = !DILocation(line: 171, column: 61, scope: !743)
!927 = !DILocation(line: 171, column: 65, scope: !743)
!928 = !DILocation(line: 171, column: 5, scope: !743)
!929 = !DILocation(line: 173, column: 32, scope: !743)
!930 = !DILocation(line: 173, column: 3, scope: !743)
!931 = !DILocation(line: 0, scope: !845, inlinedAt: !932)
!932 = distinct !DILocation(line: 173, column: 3, scope: !743)
!933 = !DILocation(line: 95, column: 31, scope: !845, inlinedAt: !932)
!934 = !DILocation(line: 95, column: 14, scope: !845, inlinedAt: !932)
!935 = !DILocation(line: 95, column: 10, scope: !845, inlinedAt: !932)
!936 = !DILocation(line: 95, column: 13, scope: !845, inlinedAt: !932)
!937 = !DILocation(line: 96, column: 33, scope: !845, inlinedAt: !932)
!938 = !DILocation(line: 96, column: 16, scope: !845, inlinedAt: !932)
!939 = !DILocation(line: 96, column: 10, scope: !845, inlinedAt: !932)
!940 = !DILocation(line: 96, column: 15, scope: !845, inlinedAt: !932)
!941 = !DILocation(line: 97, column: 32, scope: !845, inlinedAt: !932)
!942 = !DILocation(line: 97, column: 15, scope: !845, inlinedAt: !932)
!943 = !DILocation(line: 97, column: 10, scope: !845, inlinedAt: !932)
!944 = !DILocation(line: 97, column: 14, scope: !845, inlinedAt: !932)
!945 = !DILocation(line: 98, column: 35, scope: !845, inlinedAt: !932)
!946 = !DILocation(line: 98, column: 18, scope: !845, inlinedAt: !932)
!947 = !DILocation(line: 98, column: 10, scope: !845, inlinedAt: !932)
!948 = !DILocation(line: 98, column: 17, scope: !845, inlinedAt: !932)
!949 = !DILocation(line: 99, column: 26, scope: !883, inlinedAt: !932)
!950 = !DILocation(line: 99, column: 45, scope: !883, inlinedAt: !932)
!951 = !DILocation(line: 101, column: 35, scope: !883, inlinedAt: !932)
!952 = !DILocation(line: 101, column: 18, scope: !883, inlinedAt: !932)
!953 = !DILocation(line: 101, column: 12, scope: !883, inlinedAt: !932)
!954 = !DILocation(line: 101, column: 17, scope: !883, inlinedAt: !932)
!955 = !DILocation(line: 101, column: 5, scope: !883, inlinedAt: !932)
!956 = !DILocation(line: 176, column: 3, scope: !743)
!957 = !DILocation(line: 181, column: 34, scope: !781)
!958 = !DILocation(line: 181, column: 15, scope: !781)
!959 = !DILocation(line: 181, column: 3, scope: !782)
!960 = !DILocation(line: 183, column: 5, scope: !780)
!961 = !DILocation(line: 184, column: 7, scope: !780)
!962 = !DILocation(line: 198, column: 16, scope: !963)
!963 = distinct !DILexicalBlock(scope: !780, file: !744, line: 198, column: 9)
!964 = !DILocation(line: 198, column: 9, scope: !780)
!965 = !DILocation(line: 0, scope: !780)
!966 = !DILocation(line: 204, column: 55, scope: !780)
!967 = !DILocation(line: 204, column: 7, scope: !780)
!968 = !DILocation(line: 205, column: 11, scope: !969)
!969 = distinct !DILexicalBlock(scope: !780, file: !744, line: 205, column: 9)
!970 = !DILocation(line: 205, column: 9, scope: !780)
!971 = !DILocation(line: 210, column: 13, scope: !780)
!972 = !DILocation(line: 211, column: 11, scope: !780)
!973 = !{i64 0, i64 4, !974, i64 4, i64 4, !974, i64 8, i64 4, !974, i64 16, i64 8, !975, i64 24, i64 8, !976, i64 32, i64 4, !977, i64 36, i64 4, !977, i64 40, i64 4, !977, i64 44, i64 4, !977, i64 48, i64 4, !977}
!974 = !{!798, !798, i64 0}
!975 = !{!804, !804, i64 0}
!976 = !{!800, !800, i64 0}
!977 = !{!863, !863, i64 0}
!978 = !DILocation(line: 212, column: 36, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !744, line: 212, column: 5)
!980 = distinct !DILexicalBlock(scope: !780, file: !744, line: 212, column: 5)
!981 = !DILocation(line: 212, column: 17, scope: !979)
!982 = !DILocation(line: 212, column: 5, scope: !980)
!983 = !DILocation(line: 214, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !744, line: 213, column: 5)
!985 = !DILocation(line: 0, scope: !845, inlinedAt: !986)
!986 = distinct !DILocation(line: 214, column: 7, scope: !984)
!987 = !DILocation(line: 95, column: 31, scope: !845, inlinedAt: !986)
!988 = !DILocation(line: 95, column: 14, scope: !845, inlinedAt: !986)
!989 = !DILocation(line: 95, column: 13, scope: !845, inlinedAt: !986)
!990 = !DILocation(line: 96, column: 33, scope: !845, inlinedAt: !986)
!991 = !DILocation(line: 96, column: 16, scope: !845, inlinedAt: !986)
!992 = !DILocation(line: 96, column: 15, scope: !845, inlinedAt: !986)
!993 = !DILocation(line: 97, column: 32, scope: !845, inlinedAt: !986)
!994 = !DILocation(line: 97, column: 15, scope: !845, inlinedAt: !986)
!995 = !DILocation(line: 97, column: 14, scope: !845, inlinedAt: !986)
!996 = !DILocation(line: 98, column: 35, scope: !845, inlinedAt: !986)
!997 = !DILocation(line: 98, column: 18, scope: !845, inlinedAt: !986)
!998 = !DILocation(line: 98, column: 17, scope: !845, inlinedAt: !986)
!999 = !DILocation(line: 99, column: 26, scope: !883, inlinedAt: !986)
!1000 = !DILocation(line: 99, column: 45, scope: !883, inlinedAt: !986)
!1001 = !DILocation(line: 214, column: 43, scope: !984)
!1002 = !DILocation(line: 101, column: 35, scope: !883, inlinedAt: !986)
!1003 = !DILocation(line: 101, column: 18, scope: !883, inlinedAt: !986)
!1004 = !DILocation(line: 101, column: 17, scope: !883, inlinedAt: !986)
!1005 = !DILocation(line: 101, column: 5, scope: !883, inlinedAt: !986)
!1006 = !DILocation(line: 215, column: 14, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !984, file: !744, line: 215, column: 11)
!1008 = !DILocation(line: 215, column: 32, scope: !1007)
!1009 = !DILocation(line: 216, column: 12, scope: !1007)
!1010 = !DILocation(line: 216, column: 52, scope: !1007)
!1011 = !DILocation(line: 215, column: 11, scope: !984)
!1012 = !DILocation(line: 218, column: 14, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !984, file: !744, line: 218, column: 11)
!1014 = !DILocation(line: 218, column: 46, scope: !1013)
!1015 = !DILocation(line: 219, column: 12, scope: !1013)
!1016 = !DILocation(line: 219, column: 52, scope: !1013)
!1017 = !DILocation(line: 218, column: 11, scope: !984)
!1018 = !DILocation(line: 221, column: 14, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !984, file: !744, line: 221, column: 11)
!1020 = !DILocation(line: 221, column: 32, scope: !1019)
!1021 = !DILocation(line: 222, column: 12, scope: !1019)
!1022 = !DILocation(line: 222, column: 52, scope: !1019)
!1023 = !DILocation(line: 221, column: 11, scope: !984)
!1024 = !DILocation(line: 224, column: 14, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !984, file: !744, line: 224, column: 11)
!1026 = !DILocation(line: 224, column: 47, scope: !1025)
!1027 = !DILocation(line: 225, column: 12, scope: !1025)
!1028 = !DILocation(line: 225, column: 52, scope: !1025)
!1029 = !DILocation(line: 224, column: 11, scope: !984)
!1030 = !DILocation(line: 227, column: 8, scope: !984)
!1031 = !DILocation(line: 212, column: 46, scope: !979)
!1032 = distinct !{!1032, !982, !1033, !1034, !1035}
!1033 = !DILocation(line: 228, column: 5, scope: !980)
!1034 = !{!"llvm.loop.mustprogress"}
!1035 = !{!"llvm.loop.unroll.disable"}
!1036 = !DILocation(line: 233, column: 26, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !744, line: 233, column: 11)
!1038 = distinct !DILexicalBlock(scope: !780, file: !744, line: 232, column: 5)
!1039 = !DILocation(line: 233, column: 11, scope: !1038)
!1040 = !DILocation(line: 234, column: 17, scope: !1037)
!1041 = !DILocation(line: 234, column: 9, scope: !1037)
!1042 = !DILocation(line: 235, column: 26, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !744, line: 235, column: 11)
!1044 = !DILocation(line: 235, column: 11, scope: !1038)
!1045 = !DILocation(line: 236, column: 17, scope: !1043)
!1046 = !DILocation(line: 236, column: 9, scope: !1043)
!1047 = !DILocation(line: 237, column: 30, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1038, file: !744, line: 237, column: 11)
!1049 = !DILocation(line: 237, column: 11, scope: !1038)
!1050 = !DILocation(line: 238, column: 21, scope: !1048)
!1051 = !{!807, !800, i64 0}
!1052 = !DILocation(line: 238, column: 9, scope: !1048)
!1053 = !DILocation(line: 239, column: 31, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1038, file: !744, line: 239, column: 11)
!1055 = !DILocation(line: 239, column: 11, scope: !1038)
!1056 = !DILocation(line: 240, column: 22, scope: !1054)
!1057 = !{!807, !800, i64 8}
!1058 = !DILocation(line: 240, column: 9, scope: !1054)
!1059 = !DILocation(line: 242, column: 3, scope: !781)
!1060 = !DILocation(line: 181, column: 41, scope: !781)
!1061 = distinct !{!1061, !959, !1062, !1034, !1035}
!1062 = !DILocation(line: 242, column: 3, scope: !782)
!1063 = !DILocation(line: 244, column: 15, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !743, file: !744, line: 244, column: 7)
!1065 = !DILocation(line: 243, column: 14, scope: !743)
!1066 = !DILocation(line: 244, column: 21, scope: !1064)
!1067 = !DILocation(line: 244, column: 27, scope: !1064)
!1068 = !DILocation(line: 246, column: 51, scope: !1064)
!1069 = !DILocation(line: 245, column: 12, scope: !1064)
!1070 = !DILocation(line: 245, column: 5, scope: !1064)
!1071 = !DILocation(line: 249, column: 30, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1064, file: !744, line: 248, column: 5)
!1073 = !DILocation(line: 249, column: 19, scope: !1072)
!1074 = !DILocation(line: 250, column: 31, scope: !1072)
!1075 = !DILocation(line: 250, column: 20, scope: !1072)
!1076 = !DILocation(line: 253, column: 1, scope: !743)
!1077 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!544, !1080, !645, !645, !1082, !645, null}
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!1083 = !{}
!1084 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !747, !849}
!1087 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !461, file: !461, line: 55, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!754, !747, !749}
!1090 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !461, file: !461, line: 69, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!510, !1093, !1095, !1095, !1082, !1082, !749}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!1096 = !DISubprogram(name: "DestroyCacheView", scope: !461, file: !461, line: 57, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!754, !754}
!1099 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !461, file: !461, line: 66, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!526, !1093}
!1102 = !DISubprogram(name: "IsMagickColorSimilar", scope: !618, file: !618, line: 82, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!544, !1105, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!1107 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!544, !749, !645, !645, !1082, !1110, !645, !645, null}
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!1111 = distinct !DISubprogram(name: "GetImageDepth", scope: !744, file: !744, line: 283, type: !1112, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!522, !747, !749}
!1114 = !{!1115, !1116}
!1115 = !DILocalVariable(name: "image", arg: 1, scope: !1111, file: !744, line: 283, type: !747)
!1116 = !DILocalVariable(name: "exception", arg: 2, scope: !1111, file: !744, line: 283, type: !749)
!1117 = !DILocation(line: 0, scope: !1111)
!1118 = !DILocation(line: 285, column: 10, scope: !1111)
!1119 = !DILocation(line: 285, column: 3, scope: !1111)
!1120 = distinct !DISubprogram(name: "GetImageChannelDepth", scope: !744, file: !744, line: 288, type: !1121, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1125)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!522, !747, !1123, !749}
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !393)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1139, !1140, !1147, !1149, !1150, !1153, !1156, !1157, !1161, !1165, !1166, !1170, !1171, !1172, !1173}
!1126 = !DILocalVariable(name: "image", arg: 1, scope: !1120, file: !744, line: 288, type: !747)
!1127 = !DILocalVariable(name: "channel", arg: 2, scope: !1120, file: !744, line: 289, type: !1123)
!1128 = !DILocalVariable(name: "exception", arg: 3, scope: !1120, file: !744, line: 289, type: !749)
!1129 = !DILocalVariable(name: "image_view", scope: !1120, file: !744, line: 292, type: !754)
!1130 = !DILocalVariable(name: "status", scope: !1120, file: !744, line: 295, type: !544)
!1131 = !DILocalVariable(name: "i", scope: !1120, file: !744, line: 298, type: !505)
!1132 = !DILocalVariable(name: "current_depth", scope: !1120, file: !744, line: 301, type: !524)
!1133 = !DILocalVariable(name: "depth", scope: !1120, file: !744, line: 302, type: !522)
!1134 = !DILocalVariable(name: "number_threads", scope: !1120, file: !744, line: 303, type: !522)
!1135 = !DILocalVariable(name: "y", scope: !1120, file: !744, line: 306, type: !505)
!1136 = !DILocalVariable(name: "message", scope: !1137, file: !744, line: 320, type: !576)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !744, line: 320, column: 5)
!1138 = distinct !DILexicalBlock(scope: !1120, file: !744, line: 319, column: 7)
!1139 = !DILocalVariable(name: "exception", scope: !1137, file: !744, line: 320, type: !673)
!1140 = !DILocalVariable(name: "id", scope: !1141, file: !744, line: 333, type: !1146)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !744, line: 331, column: 7)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !744, line: 330, column: 7)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !744, line: 330, column: 7)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !744, line: 325, column: 5)
!1145 = distinct !DILexicalBlock(scope: !1120, file: !744, line: 324, column: 7)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!1147 = !DILocalVariable(name: "atDepth", scope: !1148, file: !744, line: 338, type: !544)
!1148 = distinct !DILexicalBlock(scope: !1141, file: !744, line: 336, column: 9)
!1149 = !DILocalVariable(name: "range", scope: !1148, file: !744, line: 341, type: !735)
!1150 = !DILocalVariable(name: "depth_map", scope: !1151, file: !744, line: 373, type: !524)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !744, line: 371, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1120, file: !744, line: 369, column: 7)
!1153 = !DILocalVariable(name: "message", scope: !1154, file: !744, line: 380, type: !576)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !744, line: 380, column: 9)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !744, line: 379, column: 11)
!1156 = !DILocalVariable(name: "exception", scope: !1154, file: !744, line: 380, type: !673)
!1157 = !DILocalVariable(name: "depth", scope: !1158, file: !744, line: 384, type: !5)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !744, line: 382, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !744, line: 381, column: 7)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !744, line: 381, column: 7)
!1161 = !DILocalVariable(name: "pixel", scope: !1162, file: !744, line: 389, type: !516)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !744, line: 387, column: 9)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !744, line: 386, column: 9)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !744, line: 386, column: 9)
!1165 = !DILocalVariable(name: "range", scope: !1162, file: !744, line: 392, type: !735)
!1166 = !DILocalVariable(name: "id", scope: !1167, file: !744, line: 408, type: !1146)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !744, line: 406, column: 7)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !744, line: 405, column: 7)
!1169 = distinct !DILexicalBlock(scope: !1151, file: !744, line: 405, column: 7)
!1170 = !DILocalVariable(name: "indexes", scope: !1167, file: !744, line: 411, type: !785)
!1171 = !DILocalVariable(name: "p", scope: !1167, file: !744, line: 414, type: !787)
!1172 = !DILocalVariable(name: "x", scope: !1167, file: !744, line: 417, type: !505)
!1173 = !DILocalVariable(name: "pixel", scope: !1174, file: !744, line: 428, type: !516)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !744, line: 426, column: 9)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !744, line: 425, column: 9)
!1176 = distinct !DILexicalBlock(scope: !1167, file: !744, line: 425, column: 9)
!1177 = !DILocation(line: 0, scope: !1120)
!1178 = !DILocation(line: 314, column: 14, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1120, file: !744, line: 314, column: 7)
!1180 = !DILocation(line: 314, column: 20, scope: !1179)
!1181 = !DILocation(line: 314, column: 7, scope: !1120)
!1182 = !DILocation(line: 315, column: 68, scope: !1179)
!1183 = !DILocation(line: 315, column: 12, scope: !1179)
!1184 = !DILocation(line: 315, column: 5, scope: !1179)
!1185 = !DILocation(line: 316, column: 27, scope: !1120)
!1186 = !DILocation(line: 317, column: 28, scope: !1120)
!1187 = !DILocation(line: 319, column: 21, scope: !1138)
!1188 = !DILocation(line: 319, column: 7, scope: !1120)
!1189 = !DILocation(line: 322, column: 15, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !744, line: 322, column: 3)
!1191 = distinct !DILexicalBlock(scope: !1120, file: !744, line: 322, column: 3)
!1192 = !DILocation(line: 322, column: 3, scope: !1191)
!1193 = !DILocation(line: 320, column: 5, scope: !1137)
!1194 = !{!812, !812, i64 0}
!1195 = !DILocation(line: 0, scope: !1137)
!1196 = !DILocation(line: 323, column: 5, scope: !1190)
!1197 = !DILocation(line: 323, column: 21, scope: !1190)
!1198 = !DILocation(line: 322, column: 44, scope: !1190)
!1199 = distinct !{!1199, !1192, !1200, !1034, !1035}
!1200 = !DILocation(line: 323, column: 22, scope: !1191)
!1201 = !DILocation(line: 324, column: 15, scope: !1145)
!1202 = !{!797, !798, i64 0}
!1203 = !DILocation(line: 324, column: 29, scope: !1145)
!1204 = !DILocation(line: 324, column: 45, scope: !1145)
!1205 = !DILocation(line: 324, column: 56, scope: !1145)
!1206 = !{!797, !798, i64 32}
!1207 = !DILocation(line: 324, column: 62, scope: !1145)
!1208 = !DILocation(line: 324, column: 7, scope: !1120)
!1209 = !DILocation(line: 330, column: 38, scope: !1142)
!1210 = !{!797, !800, i64 64}
!1211 = !DILocation(line: 330, column: 19, scope: !1142)
!1212 = !DILocation(line: 330, column: 7, scope: !1143)
!1213 = !DILocation(line: 359, column: 13, scope: !1144)
!1214 = !DILocation(line: 335, column: 16, scope: !1141)
!1215 = !DILocation(line: 335, column: 34, scope: !1141)
!1216 = !DILocation(line: 0, scope: !1141)
!1217 = !DILocation(line: 335, column: 9, scope: !1141)
!1218 = !DILocation(line: 0, scope: !1148)
!1219 = !DILocalVariable(name: "depth", arg: 1, scope: !1220, file: !1221, line: 91, type: !1082)
!1220 = distinct !DISubprogram(name: "GetQuantumRange", scope: !1221, file: !1221, line: 91, type: !1222, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1224)
!1221 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f56ff413af29c367aaef7b4fe7af9628")
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!651, !1082}
!1224 = !{!1219, !1225}
!1225 = !DILocalVariable(name: "one", scope: !1220, file: !1221, line: 94, type: !651)
!1226 = !DILocation(line: 0, scope: !1220, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 344, column: 17, scope: !1148)
!1228 = !DILocation(line: 97, column: 42, scope: !1220, inlinedAt: !1227)
!1229 = !DILocation(line: 97, column: 46, scope: !1220, inlinedAt: !1227)
!1230 = !DILocation(line: 345, column: 15, scope: !1148)
!1231 = !DILocation(line: 346, column: 39, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !744, line: 346, column: 17)
!1233 = distinct !DILexicalBlock(scope: !1148, file: !744, line: 345, column: 15)
!1234 = !{!797, !801, i64 72}
!1235 = !DILocation(line: 346, column: 51, scope: !1232)
!1236 = !DILocalVariable(name: "pixel", arg: 1, scope: !1237, file: !1238, line: 142, type: !1241)
!1237 = distinct !DISubprogram(name: "IsPixelAtDepth", scope: !1238, file: !1238, line: 142, type: !1239, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1243)
!1238 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-accessor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5a3f95523a4166f31b566bb4d0a07c1b")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!544, !1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!1243 = !{!1236, !1244, !1245}
!1244 = !DILocalVariable(name: "range", arg: 2, scope: !1237, file: !1238, line: 143, type: !1242)
!1245 = !DILocalVariable(name: "quantum", scope: !1237, file: !1238, line: 146, type: !516)
!1246 = !DILocation(line: 0, scope: !1237, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 346, column: 17, scope: !1232)
!1248 = !DILocation(line: 150, column: 7, scope: !1237, inlinedAt: !1247)
!1249 = !DILocation(line: 150, column: 30, scope: !1237, inlinedAt: !1247)
!1250 = !DILocation(line: 150, column: 29, scope: !1237, inlinedAt: !1247)
!1251 = !DILocation(line: 150, column: 36, scope: !1237, inlinedAt: !1247)
!1252 = !DILocation(line: 150, column: 6, scope: !1237, inlinedAt: !1247)
!1253 = !DILocation(line: 150, column: 49, scope: !1237, inlinedAt: !1247)
!1254 = !DILocation(line: 149, column: 54, scope: !1237, inlinedAt: !1247)
!1255 = !DILocation(line: 149, column: 53, scope: !1237, inlinedAt: !1247)
!1256 = !DILocation(line: 149, column: 52, scope: !1237, inlinedAt: !1247)
!1257 = !DILocation(line: 150, column: 56, scope: !1237, inlinedAt: !1247)
!1258 = !DILocation(line: 149, column: 22, scope: !1237, inlinedAt: !1247)
!1259 = !DILocation(line: 150, column: 62, scope: !1237, inlinedAt: !1247)
!1260 = !DILocation(line: 149, column: 11, scope: !1237, inlinedAt: !1247)
!1261 = !DILocation(line: 155, column: 16, scope: !1237, inlinedAt: !1247)
!1262 = !DILocation(line: 348, column: 40, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1148, file: !744, line: 348, column: 15)
!1264 = !DILocation(line: 348, column: 15, scope: !1148)
!1265 = !DILocation(line: 349, column: 39, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !744, line: 349, column: 17)
!1267 = !DILocation(line: 349, column: 51, scope: !1266)
!1268 = !DILocation(line: 0, scope: !1237, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 349, column: 17, scope: !1266)
!1270 = !DILocation(line: 150, column: 7, scope: !1237, inlinedAt: !1269)
!1271 = !DILocation(line: 150, column: 30, scope: !1237, inlinedAt: !1269)
!1272 = !DILocation(line: 150, column: 29, scope: !1237, inlinedAt: !1269)
!1273 = !DILocation(line: 150, column: 36, scope: !1237, inlinedAt: !1269)
!1274 = !DILocation(line: 150, column: 6, scope: !1237, inlinedAt: !1269)
!1275 = !DILocation(line: 150, column: 49, scope: !1237, inlinedAt: !1269)
!1276 = !DILocation(line: 149, column: 54, scope: !1237, inlinedAt: !1269)
!1277 = !DILocation(line: 149, column: 53, scope: !1237, inlinedAt: !1269)
!1278 = !DILocation(line: 149, column: 52, scope: !1237, inlinedAt: !1269)
!1279 = !DILocation(line: 150, column: 56, scope: !1237, inlinedAt: !1269)
!1280 = !DILocation(line: 149, column: 22, scope: !1237, inlinedAt: !1269)
!1281 = !DILocation(line: 150, column: 62, scope: !1237, inlinedAt: !1269)
!1282 = !DILocation(line: 149, column: 11, scope: !1237, inlinedAt: !1269)
!1283 = !DILocation(line: 155, column: 16, scope: !1237, inlinedAt: !1269)
!1284 = !DILocation(line: 351, column: 40, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1148, file: !744, line: 351, column: 15)
!1286 = !DILocation(line: 351, column: 15, scope: !1148)
!1287 = !DILocation(line: 352, column: 39, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !744, line: 352, column: 17)
!1289 = !DILocation(line: 352, column: 32, scope: !1288)
!1290 = !DILocation(line: 352, column: 51, scope: !1288)
!1291 = !DILocation(line: 0, scope: !1237, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 352, column: 17, scope: !1288)
!1293 = !DILocation(line: 150, column: 7, scope: !1237, inlinedAt: !1292)
!1294 = !DILocation(line: 150, column: 30, scope: !1237, inlinedAt: !1292)
!1295 = !DILocation(line: 150, column: 29, scope: !1237, inlinedAt: !1292)
!1296 = !DILocation(line: 150, column: 36, scope: !1237, inlinedAt: !1292)
!1297 = !DILocation(line: 150, column: 6, scope: !1237, inlinedAt: !1292)
!1298 = !DILocation(line: 150, column: 49, scope: !1237, inlinedAt: !1292)
!1299 = !DILocation(line: 149, column: 54, scope: !1237, inlinedAt: !1292)
!1300 = !DILocation(line: 149, column: 53, scope: !1237, inlinedAt: !1292)
!1301 = !DILocation(line: 149, column: 52, scope: !1237, inlinedAt: !1292)
!1302 = !DILocation(line: 150, column: 56, scope: !1237, inlinedAt: !1292)
!1303 = !DILocation(line: 149, column: 22, scope: !1237, inlinedAt: !1292)
!1304 = !DILocation(line: 150, column: 62, scope: !1237, inlinedAt: !1292)
!1305 = !DILocation(line: 149, column: 11, scope: !1237, inlinedAt: !1292)
!1306 = !DILocation(line: 155, column: 16, scope: !1237, inlinedAt: !1292)
!1307 = !DILocation(line: 354, column: 15, scope: !1148)
!1308 = !DILocation(line: 356, column: 28, scope: !1148)
!1309 = !DILocation(line: 330, column: 47, scope: !1142)
!1310 = distinct !{!1310, !1212, !1311, !1034, !1035, !1312}
!1311 = !DILocation(line: 358, column: 7, scope: !1143)
!1312 = !{!"llvm.loop.unswitch.partial.disable"}
!1313 = !DILocation(line: 360, column: 19, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !744, line: 360, column: 7)
!1315 = distinct !DILexicalBlock(scope: !1144, file: !744, line: 360, column: 7)
!1316 = !DILocation(line: 360, column: 7, scope: !1315)
!1317 = !DILocation(line: 361, column: 21, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !744, line: 361, column: 13)
!1319 = !DILocation(line: 361, column: 13, scope: !1314)
!1320 = !DILocation(line: 360, column: 48, scope: !1314)
!1321 = distinct !{!1321, !1316, !1322, !1034, !1035}
!1322 = !DILocation(line: 362, column: 32, scope: !1315)
!1323 = !DILocation(line: 366, column: 14, scope: !1120)
!1324 = !DILocation(line: 378, column: 28, scope: !1151)
!1325 = !DILocation(line: 0, scope: !1151)
!1326 = !DILocation(line: 379, column: 21, scope: !1155)
!1327 = !DILocation(line: 379, column: 11, scope: !1151)
!1328 = !DILocation(line: 380, column: 9, scope: !1154)
!1329 = !DILocation(line: 0, scope: !1154)
!1330 = !DILocation(line: 0, scope: !1158)
!1331 = !DILocation(line: 386, column: 9, scope: !1164)
!1332 = !DILocation(line: 405, column: 38, scope: !1168)
!1333 = !DILocation(line: 405, column: 19, scope: !1168)
!1334 = !DILocation(line: 405, column: 7, scope: !1169)
!1335 = !DILocation(line: 0, scope: !1220, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 394, column: 17, scope: !1162)
!1337 = !DILocation(line: 97, column: 42, scope: !1220, inlinedAt: !1336)
!1338 = !DILocation(line: 97, column: 46, scope: !1220, inlinedAt: !1336)
!1339 = !DILocation(line: 0, scope: !1162)
!1340 = !DILocalVariable(name: "quantum", arg: 1, scope: !1341, file: !1221, line: 281, type: !1241)
!1341 = distinct !DISubprogram(name: "ScaleQuantumToAny", scope: !1221, file: !1221, line: 281, type: !1342, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!735, !1241, !1242}
!1344 = !{!1340, !1345}
!1345 = !DILocalVariable(name: "range", arg: 2, scope: !1341, file: !1221, line: 282, type: !1242)
!1346 = !DILocation(line: 0, scope: !1341, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 396, column: 42, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1162, file: !744, line: 396, column: 15)
!1349 = !DILocation(line: 284, column: 25, scope: !1341, inlinedAt: !1347)
!1350 = !DILocation(line: 284, column: 47, scope: !1341, inlinedAt: !1347)
!1351 = !DILocation(line: 284, column: 56, scope: !1341, inlinedAt: !1347)
!1352 = !DILocation(line: 284, column: 24, scope: !1341, inlinedAt: !1347)
!1353 = !DILocation(line: 284, column: 69, scope: !1341, inlinedAt: !1347)
!1354 = !DILocation(line: 284, column: 10, scope: !1341, inlinedAt: !1347)
!1355 = !DILocalVariable(name: "quantum", arg: 1, scope: !1356, file: !1221, line: 271, type: !1242)
!1356 = distinct !DISubprogram(name: "ScaleAnyToQuantum", scope: !1221, file: !1221, line: 271, type: !1357, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!516, !1242, !1242}
!1359 = !{!1355, !1360}
!1360 = !DILocalVariable(name: "range", arg: 2, scope: !1356, file: !1221, line: 272, type: !1242)
!1361 = !DILocation(line: 0, scope: !1356, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 396, column: 24, scope: !1348)
!1363 = !DILocation(line: 275, column: 52, scope: !1356, inlinedAt: !1362)
!1364 = !DILocation(line: 275, column: 51, scope: !1356, inlinedAt: !1362)
!1365 = !DILocation(line: 275, column: 60, scope: !1356, inlinedAt: !1362)
!1366 = !DILocation(line: 275, column: 21, scope: !1356, inlinedAt: !1362)
!1367 = !DILocation(line: 275, column: 66, scope: !1356, inlinedAt: !1362)
!1368 = !DILocation(line: 275, column: 10, scope: !1356, inlinedAt: !1362)
!1369 = !DILocation(line: 396, column: 21, scope: !1348)
!1370 = !DILocation(line: 386, column: 62, scope: !1163)
!1371 = !DILocation(line: 386, column: 29, scope: !1163)
!1372 = distinct !{!1372, !1331, !1373, !1034, !1035}
!1373 = !DILocation(line: 398, column: 9, scope: !1164)
!1374 = !DILocation(line: 0, scope: !1164)
!1375 = !DILocation(line: 399, column: 22, scope: !1158)
!1376 = !DILocation(line: 399, column: 9, scope: !1158)
!1377 = !DILocation(line: 399, column: 21, scope: !1158)
!1378 = !DILocation(line: 381, column: 41, scope: !1159)
!1379 = !DILocation(line: 381, column: 19, scope: !1159)
!1380 = !DILocation(line: 381, column: 7, scope: !1160)
!1381 = distinct !{!1381, !1380, !1382, !1034, !1035}
!1382 = !DILocation(line: 400, column: 7, scope: !1160)
!1383 = !DILocation(line: 0, scope: !1167)
!1384 = !DILocation(line: 419, column: 20, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1167, file: !744, line: 419, column: 13)
!1386 = !DILocation(line: 419, column: 13, scope: !1167)
!1387 = !DILocation(line: 421, column: 59, scope: !1167)
!1388 = !DILocation(line: 421, column: 11, scope: !1167)
!1389 = !DILocation(line: 422, column: 15, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1167, file: !744, line: 422, column: 13)
!1391 = !DILocation(line: 422, column: 13, scope: !1167)
!1392 = !DILocation(line: 424, column: 17, scope: !1167)
!1393 = !DILocation(line: 425, column: 40, scope: !1175)
!1394 = !DILocation(line: 425, column: 21, scope: !1175)
!1395 = !DILocation(line: 425, column: 9, scope: !1176)
!1396 = !DILocation(line: 455, column: 47, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1174, file: !744, line: 455, column: 15)
!1398 = !DILocation(line: 430, column: 15, scope: !1174)
!1399 = !DILocation(line: 432, column: 21, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !744, line: 431, column: 13)
!1401 = distinct !DILexicalBlock(scope: !1174, file: !744, line: 430, column: 15)
!1402 = !DILocation(line: 0, scope: !1174)
!1403 = !DILocation(line: 433, column: 19, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !744, line: 433, column: 19)
!1405 = !DILocation(line: 433, column: 57, scope: !1404)
!1406 = !DILocation(line: 433, column: 55, scope: !1404)
!1407 = !DILocation(line: 433, column: 19, scope: !1400)
!1408 = !DILocation(line: 434, column: 34, scope: !1404)
!1409 = !DILocation(line: 434, column: 17, scope: !1404)
!1410 = !DILocation(line: 436, column: 15, scope: !1174)
!1411 = !DILocation(line: 438, column: 21, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !744, line: 437, column: 13)
!1413 = distinct !DILexicalBlock(scope: !1174, file: !744, line: 436, column: 15)
!1414 = !DILocation(line: 439, column: 19, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !744, line: 439, column: 19)
!1416 = !DILocation(line: 439, column: 57, scope: !1415)
!1417 = !DILocation(line: 439, column: 55, scope: !1415)
!1418 = !DILocation(line: 439, column: 19, scope: !1412)
!1419 = !DILocation(line: 440, column: 34, scope: !1415)
!1420 = !DILocation(line: 440, column: 17, scope: !1415)
!1421 = !DILocation(line: 442, column: 15, scope: !1174)
!1422 = !DILocation(line: 444, column: 21, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !744, line: 443, column: 13)
!1424 = distinct !DILexicalBlock(scope: !1174, file: !744, line: 442, column: 15)
!1425 = !DILocation(line: 445, column: 19, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !744, line: 445, column: 19)
!1427 = !DILocation(line: 445, column: 57, scope: !1426)
!1428 = !DILocation(line: 445, column: 55, scope: !1426)
!1429 = !DILocation(line: 445, column: 19, scope: !1423)
!1430 = !DILocation(line: 446, column: 34, scope: !1426)
!1431 = !DILocation(line: 446, column: 17, scope: !1426)
!1432 = !DILocation(line: 448, column: 49, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1174, file: !744, line: 448, column: 15)
!1434 = !DILocation(line: 449, column: 24, scope: !1433)
!1435 = !DILocation(line: 449, column: 30, scope: !1433)
!1436 = !DILocation(line: 448, column: 15, scope: !1174)
!1437 = !DILocation(line: 451, column: 21, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !744, line: 450, column: 13)
!1439 = !DILocation(line: 452, column: 19, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1438, file: !744, line: 452, column: 19)
!1441 = !DILocation(line: 452, column: 57, scope: !1440)
!1442 = !DILocation(line: 452, column: 55, scope: !1440)
!1443 = !DILocation(line: 452, column: 19, scope: !1438)
!1444 = !DILocation(line: 453, column: 34, scope: !1440)
!1445 = !DILocation(line: 453, column: 17, scope: !1440)
!1446 = !DILocation(line: 462, column: 12, scope: !1174)
!1447 = !DILocation(line: 425, column: 50, scope: !1175)
!1448 = distinct !{!1448, !1395, !1449, !1034, !1035}
!1449 = !DILocation(line: 463, column: 9, scope: !1176)
!1450 = !DILocation(line: 455, column: 15, scope: !1174)
!1451 = !DILocation(line: 458, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1397, file: !744, line: 457, column: 13)
!1453 = !DILocation(line: 459, column: 19, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1452, file: !744, line: 459, column: 19)
!1455 = !DILocation(line: 459, column: 57, scope: !1454)
!1456 = !DILocation(line: 459, column: 55, scope: !1454)
!1457 = !DILocation(line: 459, column: 19, scope: !1452)
!1458 = !DILocation(line: 460, column: 34, scope: !1454)
!1459 = !DILocation(line: 460, column: 17, scope: !1454)
!1460 = !DILocation(line: 464, column: 13, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1167, file: !744, line: 464, column: 13)
!1462 = !DILocation(line: 464, column: 31, scope: !1461)
!1463 = !DILocation(line: 464, column: 13, scope: !1167)
!1464 = !DILocation(line: 466, column: 7, scope: !1168)
!1465 = !DILocation(line: 405, column: 45, scope: !1168)
!1466 = distinct !{!1466, !1334, !1467, !1034, !1035}
!1467 = !DILocation(line: 466, column: 7, scope: !1169)
!1468 = !DILocation(line: 467, column: 18, scope: !1151)
!1469 = !DILocation(line: 468, column: 13, scope: !1151)
!1470 = !DILocation(line: 469, column: 19, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !744, line: 469, column: 7)
!1472 = distinct !DILexicalBlock(scope: !1151, file: !744, line: 469, column: 7)
!1473 = !DILocation(line: 469, column: 7, scope: !1472)
!1474 = !DILocation(line: 470, column: 21, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !744, line: 470, column: 13)
!1476 = !DILocation(line: 470, column: 13, scope: !1471)
!1477 = !DILocation(line: 469, column: 48, scope: !1471)
!1478 = distinct !{!1478, !1473, !1479, !1034, !1035}
!1479 = !DILocation(line: 471, column: 32, scope: !1472)
!1480 = !DILocation(line: 472, column: 28, scope: !1151)
!1481 = !DILocation(line: 546, column: 1, scope: !1120)
!1482 = !DISubprogram(name: "GetMagickResourceLimit", scope: !416, file: !416, line: 53, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!651, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !416, line: 36, baseType: !415)
!1487 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1488, file: !1488, line: 42, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1488 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!521, !1082, !1082}
!1491 = !DISubprogram(name: "GetExceptionInfo", scope: !253, file: !253, line: 166, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !749}
!1494 = !DISubprogram(name: "GetExceptionMessage", scope: !253, file: !253, line: 137, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!576, !1146}
!1497 = !DISubprogram(name: "DestroyString", scope: !1498, file: !1498, line: 46, type: !1499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1498 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!576, !576}
!1501 = !DISubprogram(name: "CatchException", scope: !253, file: !253, line: 164, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1502 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !1503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!749, !749}
!1505 = !DISubprogram(name: "MagickCoreTerminus", scope: !1506, file: !1506, line: 147, type: !1507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1506 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null}
!1509 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1488, file: !1488, line: 51, type: !1510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!521, !521}
!1512 = distinct !DISubprogram(name: "GetImageQuantumDepth", scope: !744, file: !744, line: 583, type: !1513, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1516)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!522, !747, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!1516 = !{!1517, !1518, !1519}
!1517 = !DILocalVariable(name: "image", arg: 1, scope: !1512, file: !744, line: 583, type: !747)
!1518 = !DILocalVariable(name: "constrain", arg: 2, scope: !1512, file: !744, line: 584, type: !1515)
!1519 = !DILocalVariable(name: "depth", scope: !1512, file: !744, line: 587, type: !522)
!1520 = !DILocation(line: 0, scope: !1512)
!1521 = !DILocation(line: 589, column: 16, scope: !1512)
!1522 = !{!797, !800, i64 56}
!1523 = !DILocation(line: 590, column: 13, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1512, file: !744, line: 590, column: 7)
!1525 = !DILocation(line: 590, column: 7, scope: !1512)
!1526 = !DILocation(line: 593, column: 15, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !744, line: 593, column: 9)
!1528 = !DILocation(line: 593, column: 9, scope: !1524)
!1529 = !DILocation(line: 596, column: 11, scope: !1527)
!1530 = !DILocation(line: 0, scope: !1524)
!1531 = !DILocation(line: 601, column: 17, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1512, file: !744, line: 601, column: 7)
!1533 = !DILocation(line: 601, column: 7, scope: !1512)
!1534 = !DILocation(line: 602, column: 30, scope: !1532)
!1535 = !DILocalVariable(name: "x", arg: 1, scope: !1536, file: !744, line: 576, type: !1539)
!1536 = distinct !DISubprogram(name: "MagickMin", scope: !744, file: !744, line: 576, type: !1537, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1540)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!529, !1539, !1539}
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!1540 = !{!1535, !1541}
!1541 = !DILocalVariable(name: "y", arg: 2, scope: !1536, file: !744, line: 576, type: !1539)
!1542 = !DILocation(line: 0, scope: !1536, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 602, column: 20, scope: !1532)
!1544 = !DILocation(line: 578, column: 9, scope: !1545, inlinedAt: !1543)
!1545 = distinct !DILexicalBlock(scope: !1536, file: !744, line: 578, column: 7)
!1546 = !DILocation(line: 602, column: 11, scope: !1532)
!1547 = !DILocation(line: 602, column: 5, scope: !1532)
!1548 = !DILocation(line: 603, column: 3, scope: !1512)
!1549 = distinct !DISubprogram(name: "GetImageType", scope: !744, file: !744, line: 638, type: !1550, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1552)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!720, !747, !749}
!1552 = !{!1553, !1554}
!1553 = !DILocalVariable(name: "image", arg: 1, scope: !1549, file: !744, line: 638, type: !747)
!1554 = !DILocalVariable(name: "exception", arg: 2, scope: !1549, file: !744, line: 638, type: !749)
!1555 = !DILocation(line: 0, scope: !1549)
!1556 = !DILocation(line: 642, column: 14, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1549, file: !744, line: 642, column: 7)
!1558 = !DILocation(line: 642, column: 20, scope: !1557)
!1559 = !DILocation(line: 642, column: 7, scope: !1549)
!1560 = !DILocation(line: 643, column: 68, scope: !1557)
!1561 = !DILocation(line: 643, column: 12, scope: !1557)
!1562 = !DILocation(line: 643, column: 5, scope: !1557)
!1563 = !DILocation(line: 644, column: 14, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1549, file: !744, line: 644, column: 7)
!1565 = !DILocation(line: 644, column: 25, scope: !1564)
!1566 = !DILocation(line: 644, column: 7, scope: !1549)
!1567 = !DILocation(line: 646, column: 18, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !744, line: 646, column: 11)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !744, line: 645, column: 5)
!1570 = !DILocation(line: 646, column: 24, scope: !1568)
!1571 = !DILocation(line: 0, scope: !1569)
!1572 = !DILocation(line: 650, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1549, file: !744, line: 650, column: 7)
!1574 = !DILocation(line: 650, column: 42, scope: !1573)
!1575 = !DILocation(line: 650, column: 7, scope: !1549)
!1576 = !DILocation(line: 652, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1549, file: !744, line: 652, column: 7)
!1578 = !DILocation(line: 652, column: 36, scope: !1577)
!1579 = !DILocation(line: 652, column: 7, scope: !1549)
!1580 = !DILocation(line: 654, column: 18, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !744, line: 654, column: 11)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !744, line: 653, column: 5)
!1583 = !DILocation(line: 654, column: 24, scope: !1581)
!1584 = !DILocation(line: 0, scope: !1582)
!1585 = !DILocation(line: 658, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1549, file: !744, line: 658, column: 7)
!1587 = !DILocation(line: 658, column: 39, scope: !1586)
!1588 = !DILocation(line: 658, column: 7, scope: !1549)
!1589 = !DILocation(line: 0, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !744, line: 659, column: 5)
!1591 = !DILocation(line: 667, column: 1, scope: !1549)
!1592 = distinct !DISubprogram(name: "IsMonochromeImage", scope: !744, file: !744, line: 783, type: !1593, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!544, !747, !749}
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1596 = !DILocalVariable(name: "image", arg: 1, scope: !1592, file: !744, line: 783, type: !747)
!1597 = !DILocalVariable(name: "exception", arg: 2, scope: !1592, file: !744, line: 784, type: !749)
!1598 = !DILocalVariable(name: "image_view", scope: !1592, file: !744, line: 787, type: !754)
!1599 = !DILocalVariable(name: "type", scope: !1592, file: !744, line: 790, type: !720)
!1600 = !DILocalVariable(name: "status", scope: !1592, file: !744, line: 793, type: !544)
!1601 = !DILocalVariable(name: "x", scope: !1592, file: !744, line: 796, type: !505)
!1602 = !DILocalVariable(name: "p", scope: !1592, file: !744, line: 799, type: !510)
!1603 = !DILocalVariable(name: "y", scope: !1592, file: !744, line: 802, type: !505)
!1604 = !DILocation(line: 0, scope: !1592)
!1605 = !DILocation(line: 806, column: 14, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1592, file: !744, line: 806, column: 7)
!1607 = !DILocation(line: 806, column: 20, scope: !1606)
!1608 = !DILocation(line: 806, column: 7, scope: !1592)
!1609 = !DILocation(line: 807, column: 68, scope: !1606)
!1610 = !DILocation(line: 807, column: 12, scope: !1606)
!1611 = !DILocation(line: 807, column: 5, scope: !1606)
!1612 = !DILocation(line: 808, column: 14, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1592, file: !744, line: 808, column: 7)
!1614 = !{!797, !798, i64 13184}
!1615 = !DILocation(line: 808, column: 19, scope: !1613)
!1616 = !DILocation(line: 808, column: 7, scope: !1592)
!1617 = !DILocation(line: 810, column: 32, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1592, file: !744, line: 810, column: 7)
!1619 = !DILocalVariable(name: "colorspace", arg: 1, scope: !1620, file: !1621, line: 86, type: !1624)
!1620 = distinct !DISubprogram(name: "IsGrayColorspace", scope: !1621, file: !1621, line: 85, type: !1622, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1625)
!1621 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!544, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!1625 = !{!1619}
!1626 = !DILocation(line: 0, scope: !1620, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 810, column: 8, scope: !1618)
!1628 = !DILocation(line: 88, column: 38, scope: !1629, inlinedAt: !1627)
!1629 = distinct !DILexicalBlock(scope: !1620, file: !1621, line: 88, column: 7)
!1630 = !DILocation(line: 814, column: 14, scope: !1592)
!1631 = !DILocation(line: 815, column: 34, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !744, line: 815, column: 3)
!1633 = distinct !DILexicalBlock(scope: !1592, file: !744, line: 815, column: 3)
!1634 = !DILocation(line: 815, column: 15, scope: !1632)
!1635 = !DILocation(line: 815, column: 3, scope: !1633)
!1636 = !DILocation(line: 817, column: 55, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !744, line: 816, column: 3)
!1638 = !DILocation(line: 817, column: 7, scope: !1637)
!1639 = !DILocation(line: 818, column: 11, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !744, line: 818, column: 9)
!1641 = !DILocation(line: 818, column: 9, scope: !1637)
!1642 = !DILocation(line: 820, column: 17, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !744, line: 820, column: 5)
!1644 = distinct !DILexicalBlock(scope: !1637, file: !744, line: 820, column: 5)
!1645 = !DILocation(line: 820, column: 5, scope: !1644)
!1646 = !DILocalVariable(name: "pixel", arg: 1, scope: !1647, file: !846, line: 53, type: !510)
!1647 = distinct !DISubprogram(name: "IsMonochromePixel", scope: !846, file: !846, line: 53, type: !1648, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1650)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!544, !510}
!1650 = !{!1646}
!1651 = !DILocation(line: 0, scope: !1647, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 822, column: 11, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !744, line: 822, column: 11)
!1654 = distinct !DILexicalBlock(scope: !1643, file: !744, line: 821, column: 5)
!1655 = !DILocation(line: 56, column: 9, scope: !1656, inlinedAt: !1652)
!1656 = distinct !DILexicalBlock(scope: !1647, file: !846, line: 56, column: 7)
!1657 = !DILocation(line: 56, column: 34, scope: !1656, inlinedAt: !1652)
!1658 = !DILocation(line: 58, column: 30, scope: !1656, inlinedAt: !1652)
!1659 = !DILocation(line: 58, column: 27, scope: !1656, inlinedAt: !1652)
!1660 = !DILocation(line: 58, column: 52, scope: !1656, inlinedAt: !1652)
!1661 = !DILocation(line: 59, column: 32, scope: !1656, inlinedAt: !1652)
!1662 = !DILocation(line: 59, column: 29, scope: !1656, inlinedAt: !1652)
!1663 = !DILocation(line: 56, column: 7, scope: !1647, inlinedAt: !1652)
!1664 = !DILocation(line: 827, column: 8, scope: !1654)
!1665 = !DILocation(line: 820, column: 46, scope: !1643)
!1666 = distinct !{!1666, !1645, !1667, !1034, !1035}
!1667 = !DILocation(line: 828, column: 5, scope: !1644)
!1668 = !DILocation(line: 815, column: 41, scope: !1632)
!1669 = distinct !{!1669, !1635, !1670, !1034, !1035}
!1670 = !DILocation(line: 831, column: 3, scope: !1633)
!1671 = !DILocation(line: 832, column: 14, scope: !1592)
!1672 = !DILocation(line: 835, column: 32, scope: !1592)
!1673 = !DILocation(line: 836, column: 10, scope: !1592)
!1674 = !DILocation(line: 837, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1592, file: !744, line: 837, column: 7)
!1676 = !DILocation(line: 837, column: 54, scope: !1675)
!1677 = !DILocation(line: 837, column: 7, scope: !1592)
!1678 = !DILocation(line: 834, column: 5, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1592, file: !744, line: 833, column: 7)
!1680 = !DILocation(line: 839, column: 26, scope: !1592)
!1681 = !DILocation(line: 840, column: 3, scope: !1592)
!1682 = !DILocation(line: 841, column: 1, scope: !1592)
!1683 = distinct !DISubprogram(name: "IsGrayImage", scope: !744, file: !744, line: 695, type: !1593, scopeLine: 697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1685 = !DILocalVariable(name: "image", arg: 1, scope: !1683, file: !744, line: 695, type: !747)
!1686 = !DILocalVariable(name: "exception", arg: 2, scope: !1683, file: !744, line: 696, type: !749)
!1687 = !DILocalVariable(name: "image_view", scope: !1683, file: !744, line: 699, type: !754)
!1688 = !DILocalVariable(name: "type", scope: !1683, file: !744, line: 702, type: !720)
!1689 = !DILocalVariable(name: "p", scope: !1683, file: !744, line: 705, type: !510)
!1690 = !DILocalVariable(name: "x", scope: !1683, file: !744, line: 708, type: !505)
!1691 = !DILocalVariable(name: "y", scope: !1683, file: !744, line: 711, type: !505)
!1692 = !DILocation(line: 0, scope: !1683)
!1693 = !DILocation(line: 715, column: 14, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1683, file: !744, line: 715, column: 7)
!1695 = !DILocation(line: 715, column: 20, scope: !1694)
!1696 = !DILocation(line: 715, column: 7, scope: !1683)
!1697 = !DILocation(line: 716, column: 68, scope: !1694)
!1698 = !DILocation(line: 716, column: 12, scope: !1694)
!1699 = !DILocation(line: 716, column: 5, scope: !1694)
!1700 = !DILocation(line: 717, column: 15, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1683, file: !744, line: 717, column: 7)
!1702 = !DILocation(line: 717, column: 36, scope: !1701)
!1703 = !DILocation(line: 720, column: 32, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1683, file: !744, line: 720, column: 7)
!1705 = !DILocation(line: 0, scope: !1620, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 720, column: 8, scope: !1704)
!1707 = !DILocation(line: 88, column: 38, scope: !1629, inlinedAt: !1706)
!1708 = !DILocation(line: 724, column: 14, scope: !1683)
!1709 = !DILocation(line: 725, column: 34, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !744, line: 725, column: 3)
!1711 = distinct !DILexicalBlock(scope: !1683, file: !744, line: 725, column: 3)
!1712 = !DILocation(line: 725, column: 15, scope: !1710)
!1713 = !DILocation(line: 725, column: 3, scope: !1711)
!1714 = !DILocation(line: 727, column: 55, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !744, line: 726, column: 3)
!1716 = !DILocation(line: 727, column: 7, scope: !1715)
!1717 = !DILocation(line: 728, column: 11, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !744, line: 728, column: 9)
!1719 = !DILocation(line: 728, column: 9, scope: !1715)
!1720 = !DILocation(line: 730, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !744, line: 730, column: 5)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !744, line: 730, column: 5)
!1723 = !DILocation(line: 730, column: 5, scope: !1722)
!1724 = !DILocalVariable(name: "pixel", arg: 1, scope: !1725, file: !846, line: 32, type: !510)
!1725 = distinct !DISubprogram(name: "IsGrayPixel", scope: !846, file: !846, line: 32, type: !1648, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1726)
!1726 = !{!1724}
!1727 = !DILocation(line: 0, scope: !1725, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 732, column: 11, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !744, line: 732, column: 11)
!1730 = distinct !DILexicalBlock(scope: !1721, file: !744, line: 731, column: 5)
!1731 = !DILocation(line: 35, column: 8, scope: !1732, inlinedAt: !1728)
!1732 = distinct !DILexicalBlock(scope: !1725, file: !846, line: 35, column: 7)
!1733 = !DILocation(line: 35, column: 30, scope: !1732, inlinedAt: !1728)
!1734 = !DILocation(line: 35, column: 27, scope: !1732, inlinedAt: !1728)
!1735 = !DILocation(line: 35, column: 52, scope: !1732, inlinedAt: !1728)
!1736 = !DILocation(line: 36, column: 32, scope: !1732, inlinedAt: !1728)
!1737 = !DILocation(line: 36, column: 29, scope: !1732, inlinedAt: !1728)
!1738 = !DILocation(line: 35, column: 7, scope: !1725, inlinedAt: !1728)
!1739 = !DILocation(line: 737, column: 17, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1730, file: !744, line: 737, column: 11)
!1741 = !DILocation(line: 737, column: 33, scope: !1740)
!1742 = !DILocation(line: 0, scope: !1647, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 737, column: 37, scope: !1740)
!1744 = !DILocation(line: 56, column: 34, scope: !1656, inlinedAt: !1743)
!1745 = !DILocation(line: 739, column: 8, scope: !1730)
!1746 = !DILocation(line: 730, column: 46, scope: !1721)
!1747 = distinct !{!1747, !1723, !1748, !1034, !1035}
!1748 = !DILocation(line: 740, column: 5, scope: !1722)
!1749 = !DILocation(line: 725, column: 41, scope: !1710)
!1750 = distinct !{!1750, !1713, !1751, !1034, !1035}
!1751 = !DILocation(line: 743, column: 3, scope: !1711)
!1752 = !DILocation(line: 744, column: 14, scope: !1683)
!1753 = !DILocation(line: 745, column: 7, scope: !1683)
!1754 = !DILocation(line: 747, column: 32, scope: !1683)
!1755 = !DILocation(line: 748, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1683, file: !744, line: 748, column: 7)
!1757 = !DILocation(line: 748, column: 54, scope: !1756)
!1758 = !DILocation(line: 748, column: 7, scope: !1683)
!1759 = !DILocation(line: 750, column: 26, scope: !1683)
!1760 = !DILocation(line: 751, column: 13, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1683, file: !744, line: 751, column: 7)
!1762 = !DILocation(line: 751, column: 31, scope: !1761)
!1763 = !DILocation(line: 751, column: 42, scope: !1761)
!1764 = !DILocation(line: 751, column: 48, scope: !1761)
!1765 = !DILocation(line: 751, column: 7, scope: !1683)
!1766 = !DILocation(line: 752, column: 28, scope: !1761)
!1767 = !DILocation(line: 752, column: 5, scope: !1761)
!1768 = !DILocation(line: 754, column: 1, scope: !1683)
!1769 = !DISubprogram(name: "IsPaletteImage", scope: !1770, file: !1770, line: 45, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1770 = !DIFile(filename: "apps/538.imagick_r/src/magick/histogram.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2cf116c94f52893f7dbbcaa9072de9d3")
!1771 = !DISubprogram(name: "SyncImagePixelCache", scope: !1772, file: !1772, line: 273, type: !1773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!1772 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6b4e371270617573d29dc6ff902677c8")
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!544, !530, !749}
!1775 = distinct !DISubprogram(name: "IsOpaqueImage", scope: !744, file: !744, line: 869, type: !1593, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1776)
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1782}
!1777 = !DILocalVariable(name: "image", arg: 1, scope: !1775, file: !744, line: 869, type: !747)
!1778 = !DILocalVariable(name: "exception", arg: 2, scope: !1775, file: !744, line: 870, type: !749)
!1779 = !DILocalVariable(name: "image_view", scope: !1775, file: !744, line: 873, type: !754)
!1780 = !DILocalVariable(name: "p", scope: !1775, file: !744, line: 876, type: !510)
!1781 = !DILocalVariable(name: "x", scope: !1775, file: !744, line: 879, type: !505)
!1782 = !DILocalVariable(name: "y", scope: !1775, file: !744, line: 882, type: !505)
!1783 = !DILocation(line: 0, scope: !1775)
!1784 = !DILocation(line: 889, column: 14, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1775, file: !744, line: 889, column: 7)
!1786 = !DILocation(line: 889, column: 20, scope: !1785)
!1787 = !DILocation(line: 889, column: 7, scope: !1775)
!1788 = !DILocation(line: 890, column: 68, scope: !1785)
!1789 = !DILocation(line: 890, column: 12, scope: !1785)
!1790 = !DILocation(line: 890, column: 5, scope: !1785)
!1791 = !DILocation(line: 891, column: 14, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1775, file: !744, line: 891, column: 7)
!1793 = !DILocation(line: 891, column: 20, scope: !1792)
!1794 = !DILocation(line: 891, column: 7, scope: !1775)
!1795 = !DILocation(line: 893, column: 14, scope: !1775)
!1796 = !DILocation(line: 894, column: 34, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !744, line: 894, column: 3)
!1798 = distinct !DILexicalBlock(scope: !1775, file: !744, line: 894, column: 3)
!1799 = !DILocation(line: 894, column: 15, scope: !1797)
!1800 = !DILocation(line: 894, column: 3, scope: !1798)
!1801 = !DILocation(line: 896, column: 55, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1797, file: !744, line: 895, column: 3)
!1803 = !DILocation(line: 896, column: 7, scope: !1802)
!1804 = !DILocation(line: 897, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1802, file: !744, line: 897, column: 9)
!1806 = !DILocation(line: 897, column: 9, scope: !1802)
!1807 = !DILocation(line: 899, column: 17, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !744, line: 899, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1802, file: !744, line: 899, column: 5)
!1810 = !DILocation(line: 899, column: 5, scope: !1809)
!1811 = !DILocation(line: 901, column: 11, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !744, line: 901, column: 11)
!1813 = distinct !DILexicalBlock(scope: !1808, file: !744, line: 900, column: 5)
!1814 = !DILocation(line: 901, column: 30, scope: !1812)
!1815 = !DILocation(line: 901, column: 11, scope: !1813)
!1816 = !DILocation(line: 903, column: 8, scope: !1813)
!1817 = !DILocation(line: 899, column: 46, scope: !1808)
!1818 = distinct !{!1818, !1810, !1819, !1034, !1035}
!1819 = !DILocation(line: 904, column: 5, scope: !1809)
!1820 = !DILocation(line: 894, column: 41, scope: !1797)
!1821 = distinct !{!1821, !1800, !1822, !1034, !1035}
!1822 = !DILocation(line: 907, column: 3, scope: !1798)
!1823 = !DILocation(line: 908, column: 14, scope: !1775)
!1824 = !DILocation(line: 909, column: 31, scope: !1775)
!1825 = !DILocation(line: 909, column: 12, scope: !1775)
!1826 = !DILocation(line: 909, column: 10, scope: !1775)
!1827 = !DILocation(line: 909, column: 3, scope: !1775)
!1828 = !DILocation(line: 910, column: 1, scope: !1775)
!1829 = distinct !DISubprogram(name: "SetImageDepth", scope: !744, file: !744, line: 954, type: !1830, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!544, !530, !1082}
!1832 = !{!1833, !1834}
!1833 = !DILocalVariable(name: "image", arg: 1, scope: !1829, file: !744, line: 954, type: !530)
!1834 = !DILocalVariable(name: "depth", arg: 2, scope: !1829, file: !744, line: 955, type: !1082)
!1835 = !DILocation(line: 0, scope: !1829)
!1836 = !DILocation(line: 957, column: 10, scope: !1829)
!1837 = !DILocation(line: 957, column: 3, scope: !1829)
!1838 = distinct !DISubprogram(name: "SetImageChannelDepth", scope: !744, file: !744, line: 960, type: !1839, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1841)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!544, !530, !1123, !1082}
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1853, !1856, !1857, !1860, !1861, !1865}
!1842 = !DILocalVariable(name: "image", arg: 1, scope: !1838, file: !744, line: 960, type: !530)
!1843 = !DILocalVariable(name: "channel", arg: 2, scope: !1838, file: !744, line: 961, type: !1123)
!1844 = !DILocalVariable(name: "depth", arg: 3, scope: !1838, file: !744, line: 961, type: !1082)
!1845 = !DILocalVariable(name: "image_view", scope: !1838, file: !744, line: 964, type: !754)
!1846 = !DILocalVariable(name: "exception", scope: !1838, file: !744, line: 967, type: !749)
!1847 = !DILocalVariable(name: "status", scope: !1838, file: !744, line: 970, type: !544)
!1848 = !DILocalVariable(name: "range", scope: !1838, file: !744, line: 973, type: !735)
!1849 = !DILocalVariable(name: "y", scope: !1838, file: !744, line: 976, type: !505)
!1850 = !DILocalVariable(name: "i", scope: !1851, file: !744, line: 991, type: !505)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !744, line: 989, column: 5)
!1852 = distinct !DILexicalBlock(scope: !1838, file: !744, line: 988, column: 7)
!1853 = !DILocalVariable(name: "depth_map", scope: !1854, file: !744, line: 1022, type: !732)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !744, line: 1020, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1838, file: !744, line: 1018, column: 7)
!1856 = !DILocalVariable(name: "i", scope: !1854, file: !744, line: 1025, type: !505)
!1857 = !DILocalVariable(name: "message", scope: !1858, file: !744, line: 1032, type: !576)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !744, line: 1032, column: 9)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !744, line: 1031, column: 11)
!1860 = !DILocalVariable(name: "exception", scope: !1858, file: !744, line: 1032, type: !673)
!1861 = !DILocalVariable(name: "x", scope: !1862, file: !744, line: 1043, type: !505)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !744, line: 1041, column: 7)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !744, line: 1040, column: 7)
!1864 = distinct !DILexicalBlock(scope: !1854, file: !744, line: 1040, column: 7)
!1865 = !DILocalVariable(name: "q", scope: !1862, file: !744, line: 1046, type: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !551)
!1867 = !DILocation(line: 0, scope: !1838)
!1868 = !DILocation(line: 979, column: 14, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1838, file: !744, line: 979, column: 7)
!1870 = !DILocation(line: 979, column: 20, scope: !1869)
!1871 = !DILocation(line: 979, column: 7, scope: !1838)
!1872 = !DILocation(line: 980, column: 12, scope: !1869)
!1873 = !DILocation(line: 980, column: 5, scope: !1869)
!1874 = !DILocation(line: 982, column: 13, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1838, file: !744, line: 982, column: 7)
!1876 = !DILocation(line: 982, column: 7, scope: !1838)
!1877 = !DILocation(line: 0, scope: !1220, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 987, column: 9, scope: !1838)
!1879 = !DILocation(line: 97, column: 42, scope: !1220, inlinedAt: !1878)
!1880 = !DILocation(line: 97, column: 46, scope: !1220, inlinedAt: !1878)
!1881 = !DILocation(line: 988, column: 14, scope: !1852)
!1882 = !DILocation(line: 988, column: 28, scope: !1852)
!1883 = !DILocation(line: 988, column: 7, scope: !1838)
!1884 = !DILocation(line: 0, scope: !1851)
!1885 = !DILocation(line: 997, column: 19, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !744, line: 997, column: 7)
!1887 = distinct !DILexicalBlock(scope: !1851, file: !744, line: 997, column: 7)
!1888 = !DILocation(line: 997, column: 7, scope: !1887)
!1889 = !DILocation(line: 999, column: 13, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !744, line: 998, column: 7)
!1891 = !DILocation(line: 1001, column: 31, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1890, file: !744, line: 999, column: 13)
!1893 = !DILocation(line: 1001, column: 43, scope: !1892)
!1894 = !DILocation(line: 0, scope: !1341, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 1000, column: 52, scope: !1892)
!1896 = !DILocation(line: 284, column: 48, scope: !1341, inlinedAt: !1895)
!1897 = !DILocation(line: 284, column: 47, scope: !1341, inlinedAt: !1895)
!1898 = !DILocation(line: 284, column: 56, scope: !1341, inlinedAt: !1895)
!1899 = !DILocation(line: 284, column: 24, scope: !1341, inlinedAt: !1895)
!1900 = !DILocation(line: 284, column: 69, scope: !1341, inlinedAt: !1895)
!1901 = !DILocation(line: 284, column: 10, scope: !1341, inlinedAt: !1895)
!1902 = !DILocation(line: 0, scope: !1356, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 1000, column: 34, scope: !1892)
!1904 = !DILocation(line: 275, column: 52, scope: !1356, inlinedAt: !1903)
!1905 = !DILocation(line: 275, column: 51, scope: !1356, inlinedAt: !1903)
!1906 = !DILocation(line: 275, column: 60, scope: !1356, inlinedAt: !1903)
!1907 = !DILocation(line: 275, column: 21, scope: !1356, inlinedAt: !1903)
!1908 = !DILocation(line: 275, column: 66, scope: !1356, inlinedAt: !1903)
!1909 = !DILocation(line: 275, column: 10, scope: !1356, inlinedAt: !1903)
!1910 = !DILocation(line: 1000, column: 33, scope: !1892)
!1911 = !DILocation(line: 1000, column: 11, scope: !1892)
!1912 = !DILocation(line: 1002, column: 13, scope: !1890)
!1913 = !DILocation(line: 1004, column: 31, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1890, file: !744, line: 1002, column: 13)
!1915 = !DILocation(line: 1004, column: 43, scope: !1914)
!1916 = !DILocation(line: 0, scope: !1341, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 1003, column: 54, scope: !1914)
!1918 = !DILocation(line: 284, column: 48, scope: !1341, inlinedAt: !1917)
!1919 = !DILocation(line: 284, column: 47, scope: !1341, inlinedAt: !1917)
!1920 = !DILocation(line: 284, column: 56, scope: !1341, inlinedAt: !1917)
!1921 = !DILocation(line: 284, column: 24, scope: !1341, inlinedAt: !1917)
!1922 = !DILocation(line: 284, column: 69, scope: !1341, inlinedAt: !1917)
!1923 = !DILocation(line: 284, column: 10, scope: !1341, inlinedAt: !1917)
!1924 = !DILocation(line: 0, scope: !1356, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 1003, column: 36, scope: !1914)
!1926 = !DILocation(line: 275, column: 52, scope: !1356, inlinedAt: !1925)
!1927 = !DILocation(line: 275, column: 51, scope: !1356, inlinedAt: !1925)
!1928 = !DILocation(line: 275, column: 60, scope: !1356, inlinedAt: !1925)
!1929 = !DILocation(line: 275, column: 21, scope: !1356, inlinedAt: !1925)
!1930 = !DILocation(line: 275, column: 66, scope: !1356, inlinedAt: !1925)
!1931 = !DILocation(line: 275, column: 10, scope: !1356, inlinedAt: !1925)
!1932 = !DILocation(line: 1003, column: 35, scope: !1914)
!1933 = !DILocation(line: 1003, column: 11, scope: !1914)
!1934 = !DILocation(line: 1005, column: 13, scope: !1890)
!1935 = !DILocation(line: 1007, column: 31, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1890, file: !744, line: 1005, column: 13)
!1937 = !DILocation(line: 1007, column: 24, scope: !1936)
!1938 = !DILocation(line: 1007, column: 43, scope: !1936)
!1939 = !DILocation(line: 0, scope: !1341, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 1006, column: 53, scope: !1936)
!1941 = !DILocation(line: 284, column: 48, scope: !1341, inlinedAt: !1940)
!1942 = !DILocation(line: 284, column: 47, scope: !1341, inlinedAt: !1940)
!1943 = !DILocation(line: 284, column: 56, scope: !1341, inlinedAt: !1940)
!1944 = !DILocation(line: 284, column: 24, scope: !1341, inlinedAt: !1940)
!1945 = !DILocation(line: 284, column: 69, scope: !1341, inlinedAt: !1940)
!1946 = !DILocation(line: 284, column: 10, scope: !1341, inlinedAt: !1940)
!1947 = !DILocation(line: 0, scope: !1356, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 1006, column: 35, scope: !1936)
!1949 = !DILocation(line: 275, column: 52, scope: !1356, inlinedAt: !1948)
!1950 = !DILocation(line: 275, column: 51, scope: !1356, inlinedAt: !1948)
!1951 = !DILocation(line: 275, column: 60, scope: !1356, inlinedAt: !1948)
!1952 = !DILocation(line: 275, column: 21, scope: !1356, inlinedAt: !1948)
!1953 = !DILocation(line: 275, column: 66, scope: !1356, inlinedAt: !1948)
!1954 = !DILocation(line: 275, column: 10, scope: !1356, inlinedAt: !1948)
!1955 = !DILocation(line: 1006, column: 34, scope: !1936)
!1956 = !DILocation(line: 1006, column: 11, scope: !1936)
!1957 = !DILocation(line: 1008, column: 13, scope: !1890)
!1958 = !DILocation(line: 1010, column: 31, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1890, file: !744, line: 1008, column: 13)
!1960 = !DILocation(line: 1010, column: 43, scope: !1959)
!1961 = !DILocation(line: 0, scope: !1341, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 1009, column: 56, scope: !1959)
!1963 = !DILocation(line: 284, column: 48, scope: !1341, inlinedAt: !1962)
!1964 = !DILocation(line: 284, column: 47, scope: !1341, inlinedAt: !1962)
!1965 = !DILocation(line: 284, column: 56, scope: !1341, inlinedAt: !1962)
!1966 = !DILocation(line: 284, column: 24, scope: !1341, inlinedAt: !1962)
!1967 = !DILocation(line: 284, column: 69, scope: !1341, inlinedAt: !1962)
!1968 = !DILocation(line: 284, column: 10, scope: !1341, inlinedAt: !1962)
!1969 = !DILocation(line: 0, scope: !1356, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 1009, column: 38, scope: !1959)
!1971 = !DILocation(line: 275, column: 52, scope: !1356, inlinedAt: !1970)
!1972 = !DILocation(line: 275, column: 51, scope: !1356, inlinedAt: !1970)
!1973 = !DILocation(line: 275, column: 60, scope: !1356, inlinedAt: !1970)
!1974 = !DILocation(line: 275, column: 21, scope: !1356, inlinedAt: !1970)
!1975 = !DILocation(line: 275, column: 66, scope: !1356, inlinedAt: !1970)
!1976 = !DILocation(line: 275, column: 10, scope: !1356, inlinedAt: !1970)
!1977 = !DILocation(line: 1009, column: 37, scope: !1959)
!1978 = !DILocation(line: 1009, column: 11, scope: !1959)
!1979 = !DILocation(line: 997, column: 47, scope: !1886)
!1980 = distinct !{!1980, !1888, !1981, !1034, !1035}
!1981 = !DILocation(line: 1011, column: 7, scope: !1887)
!1982 = !DILocation(line: 1014, column: 22, scope: !1838)
!1983 = !DILocation(line: 1015, column: 14, scope: !1838)
!1984 = !DILocation(line: 1030, column: 29, scope: !1854)
!1985 = !DILocation(line: 0, scope: !1854)
!1986 = !DILocation(line: 1031, column: 21, scope: !1859)
!1987 = !DILocation(line: 1031, column: 11, scope: !1854)
!1988 = !DILocation(line: 1033, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1854, file: !744, line: 1033, column: 7)
!1990 = !DILocation(line: 1032, column: 9, scope: !1858)
!1991 = !DILocation(line: 0, scope: !1858)
!1992 = !DILocation(line: 1040, column: 38, scope: !1863)
!1993 = !DILocation(line: 1040, column: 19, scope: !1863)
!1994 = !DILocation(line: 1040, column: 7, scope: !1864)
!1995 = !DILocation(line: 1065, column: 49, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !744, line: 1065, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !744, line: 1058, column: 9)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !744, line: 1057, column: 9)
!1999 = distinct !DILexicalBlock(scope: !1862, file: !744, line: 1057, column: 9)
!2000 = !DILocation(line: 1048, column: 20, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1862, file: !744, line: 1048, column: 13)
!2002 = !DILocation(line: 1048, column: 13, scope: !1862)
!2003 = !DILocation(line: 1050, column: 61, scope: !1862)
!2004 = !DILocation(line: 1050, column: 11, scope: !1862)
!2005 = !DILocation(line: 0, scope: !1862)
!2006 = !DILocation(line: 1052, column: 15, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1862, file: !744, line: 1052, column: 13)
!2008 = !DILocation(line: 1052, column: 13, scope: !1862)
!2009 = !DILocation(line: 1070, column: 13, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1862, file: !744, line: 1070, column: 13)
!2011 = !DILocation(line: 1070, column: 64, scope: !2010)
!2012 = !DILocation(line: 0, scope: !1863)
!2013 = !DILocation(line: 1040, column: 45, scope: !1863)
!2014 = distinct !{!2014, !1994, !2015, !1034, !1035}
!2015 = !DILocation(line: 1075, column: 7, scope: !1864)
!2016 = !DILocation(line: 1057, column: 21, scope: !1998)
!2017 = !DILocation(line: 1057, column: 9, scope: !1999)
!2018 = !DILocation(line: 1059, column: 15, scope: !1997)
!2019 = !DILocation(line: 1061, column: 15, scope: !1997)
!2020 = !DILocation(line: 1063, column: 15, scope: !1997)
!2021 = !DILocation(line: 1064, column: 13, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1997, file: !744, line: 1063, column: 15)
!2023 = !DILocation(line: 1068, column: 12, scope: !1997)
!2024 = !DILocation(line: 1057, column: 50, scope: !1998)
!2025 = distinct !{!2025, !2017, !2026, !1034, !1035}
!2026 = !DILocation(line: 1069, column: 9, scope: !1999)
!2027 = !DILocation(line: 1062, column: 13, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1997, file: !744, line: 1061, column: 15)
!2029 = !DILocation(line: 1060, column: 13, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1997, file: !744, line: 1059, column: 15)
!2031 = !DILocation(line: 1034, column: 58, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1989, file: !744, line: 1033, column: 7)
!2033 = !DILocation(line: 0, scope: !1341, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 1034, column: 40, scope: !2032)
!2035 = !DILocation(line: 284, column: 48, scope: !1341, inlinedAt: !2034)
!2036 = !DILocation(line: 284, column: 47, scope: !1341, inlinedAt: !2034)
!2037 = !DILocation(line: 284, column: 56, scope: !1341, inlinedAt: !2034)
!2038 = !DILocation(line: 284, column: 24, scope: !1341, inlinedAt: !2034)
!2039 = !DILocation(line: 284, column: 69, scope: !1341, inlinedAt: !2034)
!2040 = !DILocation(line: 284, column: 10, scope: !1341, inlinedAt: !2034)
!2041 = !DILocation(line: 0, scope: !1356, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 1034, column: 22, scope: !2032)
!2043 = !DILocation(line: 275, column: 52, scope: !1356, inlinedAt: !2042)
!2044 = !DILocation(line: 275, column: 51, scope: !1356, inlinedAt: !2042)
!2045 = !DILocation(line: 275, column: 60, scope: !1356, inlinedAt: !2042)
!2046 = !DILocation(line: 275, column: 21, scope: !1356, inlinedAt: !2042)
!2047 = !DILocation(line: 275, column: 66, scope: !1356, inlinedAt: !2042)
!2048 = !DILocation(line: 275, column: 10, scope: !1356, inlinedAt: !2042)
!2049 = !DILocation(line: 1034, column: 9, scope: !2032)
!2050 = !DILocation(line: 1034, column: 21, scope: !2032)
!2051 = !DILocation(line: 1033, column: 41, scope: !2032)
!2052 = !DILocation(line: 1033, column: 19, scope: !2032)
!2053 = distinct !{!2053, !1988, !2054, !1034, !1035}
!2054 = !DILocation(line: 1035, column: 16, scope: !1989)
!2055 = !DILocation(line: 1065, column: 15, scope: !1997)
!2056 = !DILocation(line: 1067, column: 13, scope: !1996)
!2057 = !DILocation(line: 1013, column: 9, scope: !1838)
!2058 = !DILocation(line: 1076, column: 18, scope: !1854)
!2059 = !DILocation(line: 1077, column: 29, scope: !1854)
!2060 = !DILocation(line: 1078, column: 18, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1854, file: !744, line: 1078, column: 11)
!2062 = !DILocation(line: 1078, column: 11, scope: !1854)
!2063 = !DILocation(line: 1132, column: 1, scope: !1838)
!2064 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !461, file: !461, line: 53, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2065 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !461, file: !461, line: 99, type: !2066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!551, !754, !1095, !1095, !1082, !1082, !749}
!2068 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !461, file: !461, line: 89, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!544, !754, !749}
!2071 = distinct !DISubprogram(name: "SetImageType", scope: !744, file: !744, line: 1162, type: !2072, scopeLine: 1163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2075)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!544, !530, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!2075 = !{!2076, !2077, !2078, !2079, !2208, !2209}
!2076 = !DILocalVariable(name: "image", arg: 1, scope: !2071, file: !744, line: 1162, type: !530)
!2077 = !DILocalVariable(name: "type", arg: 2, scope: !2071, file: !744, line: 1162, type: !2074)
!2078 = !DILocalVariable(name: "artifact", scope: !2071, file: !744, line: 1165, type: !645)
!2079 = !DILocalVariable(name: "image_info", scope: !2071, file: !744, line: 1168, type: !2080)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !4, line: 223, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !73, line: 356, size: 134336, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2137, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2205, !2206, !2207}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !2082, file: !73, line: 359, baseType: !539, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !2082, file: !73, line: 362, baseType: !542, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !2082, file: !73, line: 365, baseType: !544, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !2082, file: !73, line: 366, baseType: !544, size: 32, offset: 96)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !2082, file: !73, line: 367, baseType: !544, size: 32, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !2082, file: !73, line: 368, baseType: !544, size: 32, offset: 160)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2082, file: !73, line: 371, baseType: !576, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !2082, file: !73, line: 372, baseType: !576, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2082, file: !73, line: 373, baseType: !576, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !2082, file: !73, line: 374, baseType: !576, size: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !2082, file: !73, line: 377, baseType: !522, size: 64, offset: 448)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !2082, file: !73, line: 378, baseType: !522, size: 64, offset: 512)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2082, file: !73, line: 379, baseType: !522, size: 64, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !2082, file: !73, line: 382, baseType: !599, size: 32, offset: 640)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !2082, file: !73, line: 385, baseType: !601, size: 32, offset: 672)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2082, file: !73, line: 388, baseType: !574, size: 32, offset: 704)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !2082, file: !73, line: 391, baseType: !522, size: 64, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !2082, file: !73, line: 394, baseType: !576, size: 64, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !2082, file: !73, line: 395, baseType: !576, size: 64, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !2082, file: !73, line: 396, baseType: !576, size: 64, offset: 960)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !2082, file: !73, line: 397, baseType: !576, size: 64, offset: 1024)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !2082, file: !73, line: 398, baseType: !576, size: 64, offset: 1088)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !2082, file: !73, line: 401, baseType: !529, size: 64, offset: 1152)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !2082, file: !73, line: 402, baseType: !529, size: 64, offset: 1216)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !2082, file: !73, line: 405, baseType: !512, size: 64, offset: 1280)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !2082, file: !73, line: 406, baseType: !512, size: 64, offset: 1344)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !2082, file: !73, line: 407, baseType: !512, size: 64, offset: 1408)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !2082, file: !73, line: 410, baseType: !544, size: 32, offset: 1472)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !2082, file: !73, line: 411, baseType: !544, size: 32, offset: 1504)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !2082, file: !73, line: 414, baseType: !522, size: 64, offset: 1536)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !2082, file: !73, line: 417, baseType: !537, size: 32, offset: 1600)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2082, file: !73, line: 420, baseType: !720, size: 32, offset: 1632)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !2082, file: !73, line: 423, baseType: !2117, size: 32, offset: 1664)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !428, line: 59, baseType: !427)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2082, file: !73, line: 426, baseType: !505, size: 64, offset: 1728)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !2082, file: !73, line: 429, baseType: !544, size: 32, offset: 1792)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !2082, file: !73, line: 430, baseType: !544, size: 32, offset: 1824)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !2082, file: !73, line: 433, baseType: !576, size: 64, offset: 1856)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !2082, file: !73, line: 434, baseType: !576, size: 64, offset: 1920)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !2082, file: !73, line: 437, baseType: !1124, size: 32, offset: 1984)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2082, file: !73, line: 440, baseType: !530, size: 64, offset: 2048)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2082, file: !73, line: 443, baseType: !521, size: 64, offset: 2112)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !2082, file: !73, line: 446, baseType: !640, size: 64, offset: 2176)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2082, file: !73, line: 449, baseType: !521, size: 64, offset: 2240)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2082, file: !73, line: 450, baseType: !521, size: 64, offset: 2304)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !2082, file: !73, line: 453, baseType: !2130, size: 64, offset: 2368)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !2131, line: 26, baseType: !2132)
!2131 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!522, !747, !2135, !1082}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2082, file: !73, line: 456, baseType: !2138, size: 64, offset: 2432)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2140, line: 7, baseType: !2141)
!2140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2142, line: 49, size: 1728, elements: !2143)
!2142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2159, !2161, !2162, !2163, !2165, !2166, !2168, !2172, !2175, !2177, !2180, !2183, !2184, !2185, !2186, !2187}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2141, file: !2142, line: 51, baseType: !525, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2141, file: !2142, line: 54, baseType: !576, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2141, file: !2142, line: 55, baseType: !576, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2141, file: !2142, line: 56, baseType: !576, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2141, file: !2142, line: 57, baseType: !576, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2141, file: !2142, line: 58, baseType: !576, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2141, file: !2142, line: 59, baseType: !576, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2141, file: !2142, line: 60, baseType: !576, size: 64, offset: 448)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2141, file: !2142, line: 61, baseType: !576, size: 64, offset: 512)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2141, file: !2142, line: 64, baseType: !576, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2141, file: !2142, line: 65, baseType: !576, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2141, file: !2142, line: 66, baseType: !576, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2141, file: !2142, line: 68, baseType: !2157, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2142, line: 36, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2141, file: !2142, line: 70, baseType: !2160, size: 64, offset: 832)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2141, file: !2142, line: 72, baseType: !525, size: 32, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2141, file: !2142, line: 73, baseType: !525, size: 32, offset: 928)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2141, file: !2142, line: 74, baseType: !2164, size: 64, offset: 960)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !508, line: 152, baseType: !509)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2141, file: !2142, line: 77, baseType: !517, size: 16, offset: 1024)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2141, file: !2142, line: 78, baseType: !2167, size: 8, offset: 1040)
!2167 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2141, file: !2142, line: 79, baseType: !2169, size: 8, offset: 1048)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 8, elements: !2170)
!2170 = !{!2171}
!2171 = !DISubrange(count: 1)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2141, file: !2142, line: 81, baseType: !2173, size: 64, offset: 1088)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2142, line: 43, baseType: null)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2141, file: !2142, line: 89, baseType: !2176, size: 64, offset: 1152)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !508, line: 153, baseType: !509)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2141, file: !2142, line: 91, baseType: !2178, size: 64, offset: 1216)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2142, line: 37, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2141, file: !2142, line: 92, baseType: !2181, size: 64, offset: 1280)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2142, line: 38, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2141, file: !2142, line: 93, baseType: !2160, size: 64, offset: 1344)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2141, file: !2142, line: 94, baseType: !521, size: 64, offset: 1408)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2141, file: !2142, line: 95, baseType: !522, size: 64, offset: 1472)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2141, file: !2142, line: 96, baseType: !525, size: 32, offset: 1536)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2141, file: !2142, line: 98, baseType: !2188, size: 160, offset: 1568)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 160, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: 20)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !2082, file: !73, line: 459, baseType: !521, size: 64, offset: 2496)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2082, file: !73, line: 462, baseType: !522, size: 64, offset: 2560)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !2082, file: !73, line: 465, baseType: !665, size: 32768, offset: 2624)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !2082, file: !73, line: 466, baseType: !665, size: 32768, offset: 35392)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !2082, file: !73, line: 467, baseType: !665, size: 32768, offset: 68160)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !2082, file: !73, line: 468, baseType: !665, size: 32768, offset: 100928)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !2082, file: !73, line: 471, baseType: !544, size: 32, offset: 133696)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !2082, file: !73, line: 474, baseType: !576, size: 64, offset: 133760)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !2082, file: !73, line: 477, baseType: !522, size: 64, offset: 133824)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !2082, file: !73, line: 478, baseType: !522, size: 64, offset: 133888)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !2082, file: !73, line: 481, baseType: !512, size: 64, offset: 133952)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !2082, file: !73, line: 484, baseType: !522, size: 64, offset: 134016)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !2082, file: !73, line: 487, baseType: !2204, size: 32, offset: 134080)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !461, line: 47, baseType: !460)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !2082, file: !73, line: 490, baseType: !512, size: 64, offset: 134112)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !2082, file: !73, line: 493, baseType: !521, size: 64, offset: 134208)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !2082, file: !73, line: 496, baseType: !544, size: 32, offset: 134272)
!2208 = !DILocalVariable(name: "status", scope: !2071, file: !744, line: 1171, type: !544)
!2209 = !DILocalVariable(name: "quantize_info", scope: !2071, file: !744, line: 1174, type: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantizeInfo", file: !482, line: 57, baseType: !2212)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QuantizeInfo", file: !482, line: 35, size: 384, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2220}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "number_colors", scope: !2212, file: !482, line: 38, baseType: !522, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "tree_depth", scope: !2212, file: !482, line: 41, baseType: !522, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !2212, file: !482, line: 44, baseType: !544, size: 32, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !2212, file: !482, line: 47, baseType: !537, size: 32, offset: 160)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "measure_error", scope: !2212, file: !482, line: 50, baseType: !544, size: 32, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !2212, file: !482, line: 53, baseType: !522, size: 64, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dither_method", scope: !2212, file: !482, line: 56, baseType: !2221, size: 32, offset: 320)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "DitherMethod", file: !482, line: 33, baseType: !481)
!2222 = !DILocation(line: 0, scope: !2071)
!2223 = !DILocation(line: 1177, column: 14, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2071, file: !744, line: 1177, column: 7)
!2225 = !DILocation(line: 1177, column: 20, scope: !2224)
!2226 = !DILocation(line: 1177, column: 7, scope: !2071)
!2227 = !DILocation(line: 1178, column: 12, scope: !2224)
!2228 = !DILocation(line: 1178, column: 5, scope: !2224)
!2229 = !DILocation(line: 1181, column: 14, scope: !2071)
!2230 = !DILocation(line: 1182, column: 29, scope: !2071)
!2231 = !{!797, !798, i64 13188}
!2232 = !DILocation(line: 1182, column: 15, scope: !2071)
!2233 = !DILocation(line: 1182, column: 21, scope: !2071)
!2234 = !{!2235, !798, i64 184}
!2235 = !{!"_ImageInfo", !798, i64 0, !798, i64 4, !798, i64 8, !798, i64 12, !798, i64 16, !798, i64 20, !801, i64 24, !801, i64 32, !801, i64 40, !801, i64 48, !800, i64 56, !800, i64 64, !800, i64 72, !798, i64 80, !798, i64 84, !798, i64 88, !800, i64 96, !801, i64 104, !801, i64 112, !801, i64 120, !801, i64 128, !801, i64 136, !804, i64 144, !804, i64 152, !802, i64 160, !802, i64 168, !802, i64 176, !798, i64 184, !798, i64 188, !800, i64 192, !798, i64 200, !798, i64 204, !798, i64 208, !800, i64 216, !798, i64 224, !798, i64 228, !801, i64 232, !801, i64 240, !798, i64 248, !801, i64 256, !801, i64 264, !801, i64 272, !801, i64 280, !801, i64 288, !801, i64 296, !801, i64 304, !801, i64 312, !800, i64 320, !798, i64 328, !798, i64 4424, !798, i64 8520, !798, i64 12616, !798, i64 16712, !801, i64 16720, !800, i64 16728, !800, i64 16736, !802, i64 16744, !800, i64 16752, !798, i64 16760, !802, i64 16764, !801, i64 16776, !798, i64 16784}
!2236 = !DILocation(line: 1183, column: 12, scope: !2071)
!2237 = !DILocation(line: 1184, column: 16, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2071, file: !744, line: 1184, column: 7)
!2239 = !DILocation(line: 1184, column: 7, scope: !2071)
!2240 = !DILocation(line: 1185, column: 12, scope: !2238)
!2241 = !DILocation(line: 1185, column: 5, scope: !2238)
!2242 = !DILocation(line: 1186, column: 3, scope: !2071)
!2243 = !DILocation(line: 1307, column: 14, scope: !2071)
!2244 = !DILocation(line: 1308, column: 7, scope: !2071)
!2245 = !DILocation(line: 1190, column: 37, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !744, line: 1190, column: 11)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1189, column: 5)
!2248 = distinct !DILexicalBlock(scope: !2071, file: !744, line: 1187, column: 3)
!2249 = !DILocation(line: 1190, column: 11, scope: !2246)
!2250 = !DILocation(line: 1190, column: 48, scope: !2246)
!2251 = !DILocation(line: 1190, column: 11, scope: !2247)
!2252 = !DILocation(line: 1191, column: 16, scope: !2246)
!2253 = !DILocation(line: 1191, column: 9, scope: !2246)
!2254 = !DILocation(line: 1192, column: 14, scope: !2247)
!2255 = !DILocation(line: 1193, column: 11, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2247, file: !744, line: 1193, column: 11)
!2257 = !DILocation(line: 1193, column: 54, scope: !2256)
!2258 = !DILocation(line: 1193, column: 11, scope: !2247)
!2259 = !DILocation(line: 1195, column: 25, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !744, line: 1194, column: 9)
!2261 = !DILocation(line: 1196, column: 39, scope: !2260)
!2262 = !{!2263, !800, i64 0}
!2263 = !{!"_QuantizeInfo", !800, i64 0, !800, i64 8, !798, i64 16, !798, i64 20, !798, i64 24, !800, i64 32, !798, i64 40}
!2264 = !DILocation(line: 1197, column: 26, scope: !2260)
!2265 = !DILocation(line: 1197, column: 36, scope: !2260)
!2266 = !{!2263, !798, i64 20}
!2267 = !DILocation(line: 1198, column: 18, scope: !2260)
!2268 = !DILocation(line: 1199, column: 25, scope: !2260)
!2269 = !DILocation(line: 1200, column: 9, scope: !2260)
!2270 = !DILocation(line: 0, scope: !2247)
!2271 = !DILocation(line: 1201, column: 14, scope: !2247)
!2272 = !DILocation(line: 1201, column: 19, scope: !2247)
!2273 = !DILocation(line: 1202, column: 7, scope: !2247)
!2274 = !DILocation(line: 1206, column: 37, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !744, line: 1206, column: 11)
!2276 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1205, column: 5)
!2277 = !DILocation(line: 1206, column: 11, scope: !2275)
!2278 = !DILocation(line: 1206, column: 48, scope: !2275)
!2279 = !DILocation(line: 1206, column: 11, scope: !2276)
!2280 = !DILocation(line: 1207, column: 16, scope: !2275)
!2281 = !DILocation(line: 1207, column: 9, scope: !2275)
!2282 = !DILocation(line: 1208, column: 14, scope: !2276)
!2283 = !DILocation(line: 1208, column: 19, scope: !2276)
!2284 = !DILocation(line: 1209, column: 7, scope: !2276)
!2285 = !DILocation(line: 1213, column: 37, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !744, line: 1213, column: 11)
!2287 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1212, column: 5)
!2288 = !DILocation(line: 1213, column: 11, scope: !2286)
!2289 = !DILocation(line: 1213, column: 48, scope: !2286)
!2290 = !DILocation(line: 1213, column: 11, scope: !2287)
!2291 = !DILocation(line: 1214, column: 16, scope: !2286)
!2292 = !DILocation(line: 1214, column: 9, scope: !2286)
!2293 = !DILocation(line: 1215, column: 18, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2287, file: !744, line: 1215, column: 11)
!2295 = !DILocation(line: 1215, column: 24, scope: !2294)
!2296 = !DILocation(line: 1215, column: 11, scope: !2287)
!2297 = !DILocation(line: 1216, column: 16, scope: !2294)
!2298 = !DILocation(line: 1216, column: 9, scope: !2294)
!2299 = !DILocation(line: 1221, column: 45, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !744, line: 1221, column: 11)
!2301 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1220, column: 5)
!2302 = !DILocalVariable(name: "colorspace", arg: 1, scope: !2303, file: !1621, line: 110, type: !1624)
!2303 = distinct !DISubprogram(name: "IssRGBCompatibleColorspace", scope: !1621, file: !1621, line: 109, type: !1622, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2304)
!2304 = !{!2302}
!2305 = !DILocation(line: 0, scope: !2303, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 1221, column: 11, scope: !2300)
!2307 = !DILocation(line: 112, column: 38, scope: !2308, inlinedAt: !2306)
!2308 = distinct !DILexicalBlock(scope: !2303, file: !1621, line: 112, column: 7)
!2309 = !DILocation(line: 1222, column: 16, scope: !2300)
!2310 = !DILocation(line: 1222, column: 9, scope: !2300)
!2311 = !DILocation(line: 1223, column: 19, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2301, file: !744, line: 1223, column: 11)
!2313 = !DILocation(line: 1223, column: 33, scope: !2312)
!2314 = !DILocation(line: 1223, column: 49, scope: !2312)
!2315 = !DILocation(line: 1223, column: 60, scope: !2312)
!2316 = !DILocation(line: 1223, column: 67, scope: !2312)
!2317 = !DILocation(line: 1223, column: 11, scope: !2301)
!2318 = !DILocation(line: 1225, column: 25, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2312, file: !744, line: 1224, column: 9)
!2320 = !DILocation(line: 1226, column: 39, scope: !2319)
!2321 = !DILocation(line: 1227, column: 18, scope: !2319)
!2322 = !DILocation(line: 1228, column: 25, scope: !2319)
!2323 = !DILocation(line: 1229, column: 9, scope: !2319)
!2324 = !DILocation(line: 0, scope: !2301)
!2325 = !DILocation(line: 1230, column: 14, scope: !2301)
!2326 = !DILocation(line: 1230, column: 19, scope: !2301)
!2327 = !DILocation(line: 1231, column: 7, scope: !2301)
!2328 = !DILocation(line: 1235, column: 45, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !744, line: 1235, column: 11)
!2330 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1234, column: 5)
!2331 = !DILocation(line: 0, scope: !2303, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 1235, column: 11, scope: !2329)
!2333 = !DILocation(line: 112, column: 38, scope: !2308, inlinedAt: !2332)
!2334 = !DILocation(line: 1236, column: 16, scope: !2329)
!2335 = !DILocation(line: 1236, column: 9, scope: !2329)
!2336 = !DILocation(line: 1237, column: 18, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2330, file: !744, line: 1237, column: 11)
!2338 = !DILocation(line: 1237, column: 24, scope: !2337)
!2339 = !DILocation(line: 1237, column: 11, scope: !2330)
!2340 = !DILocation(line: 1238, column: 16, scope: !2337)
!2341 = !DILocation(line: 1238, column: 9, scope: !2337)
!2342 = !DILocation(line: 1239, column: 14, scope: !2330)
!2343 = !DILocation(line: 1240, column: 21, scope: !2330)
!2344 = !DILocation(line: 1241, column: 14, scope: !2330)
!2345 = !DILocation(line: 1242, column: 21, scope: !2330)
!2346 = !DILocation(line: 1243, column: 7, scope: !2330)
!2347 = !DILocation(line: 1247, column: 45, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !744, line: 1247, column: 11)
!2349 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1246, column: 5)
!2350 = !DILocation(line: 0, scope: !2303, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1247, column: 11, scope: !2348)
!2352 = !DILocation(line: 112, column: 38, scope: !2308, inlinedAt: !2351)
!2353 = !DILocation(line: 1248, column: 16, scope: !2348)
!2354 = !DILocation(line: 1248, column: 9, scope: !2348)
!2355 = !DILocation(line: 1249, column: 18, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2349, file: !744, line: 1249, column: 11)
!2357 = !DILocation(line: 1249, column: 24, scope: !2356)
!2358 = !DILocation(line: 1249, column: 11, scope: !2349)
!2359 = !DILocation(line: 1250, column: 16, scope: !2356)
!2360 = !DILocation(line: 1250, column: 9, scope: !2356)
!2361 = !DILocation(line: 1251, column: 21, scope: !2349)
!2362 = !DILocation(line: 1252, column: 22, scope: !2349)
!2363 = !DILocation(line: 1252, column: 32, scope: !2349)
!2364 = !DILocation(line: 1253, column: 14, scope: !2349)
!2365 = !DILocation(line: 1254, column: 21, scope: !2349)
!2366 = !DILocation(line: 1255, column: 7, scope: !2349)
!2367 = !DILocation(line: 1259, column: 45, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !744, line: 1259, column: 11)
!2369 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1258, column: 5)
!2370 = !DILocation(line: 0, scope: !2303, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 1259, column: 11, scope: !2368)
!2372 = !DILocation(line: 112, column: 38, scope: !2308, inlinedAt: !2371)
!2373 = !DILocation(line: 1260, column: 16, scope: !2368)
!2374 = !DILocation(line: 1260, column: 9, scope: !2368)
!2375 = !DILocation(line: 1261, column: 18, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2369, file: !744, line: 1261, column: 11)
!2377 = !DILocation(line: 1261, column: 32, scope: !2376)
!2378 = !DILocation(line: 1261, column: 11, scope: !2369)
!2379 = !DILocation(line: 1262, column: 16, scope: !2376)
!2380 = !DILocation(line: 1262, column: 9, scope: !2376)
!2381 = !DILocation(line: 0, scope: !2369)
!2382 = !DILocation(line: 1263, column: 14, scope: !2369)
!2383 = !DILocation(line: 1263, column: 19, scope: !2369)
!2384 = !DILocation(line: 1264, column: 7, scope: !2369)
!2385 = !DILocation(line: 1268, column: 45, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !744, line: 1268, column: 11)
!2387 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1267, column: 5)
!2388 = !DILocation(line: 0, scope: !2303, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 1268, column: 11, scope: !2386)
!2390 = !DILocation(line: 112, column: 38, scope: !2308, inlinedAt: !2389)
!2391 = !DILocation(line: 1269, column: 16, scope: !2386)
!2392 = !DILocation(line: 1269, column: 9, scope: !2386)
!2393 = !DILocation(line: 1270, column: 18, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2387, file: !744, line: 1270, column: 11)
!2395 = !DILocation(line: 1270, column: 32, scope: !2394)
!2396 = !DILocation(line: 1270, column: 11, scope: !2387)
!2397 = !DILocation(line: 1271, column: 16, scope: !2394)
!2398 = !DILocation(line: 1271, column: 9, scope: !2394)
!2399 = !DILocation(line: 0, scope: !2387)
!2400 = !DILocation(line: 1272, column: 18, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2387, file: !744, line: 1272, column: 11)
!2402 = !DILocation(line: 1272, column: 24, scope: !2401)
!2403 = !DILocation(line: 1272, column: 11, scope: !2387)
!2404 = !DILocation(line: 1273, column: 16, scope: !2401)
!2405 = !DILocation(line: 1273, column: 9, scope: !2401)
!2406 = !DILocation(line: 1278, column: 18, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !744, line: 1278, column: 11)
!2408 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1277, column: 5)
!2409 = !DILocation(line: 1278, column: 11, scope: !2408)
!2410 = !DILocation(line: 1281, column: 20, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !744, line: 1280, column: 15)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !744, line: 1279, column: 9)
!2413 = !DILocation(line: 1281, column: 13, scope: !2411)
!2414 = !DILocation(line: 1282, column: 18, scope: !2412)
!2415 = !DILocation(line: 1283, column: 9, scope: !2412)
!2416 = !DILocation(line: 1284, column: 18, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2408, file: !744, line: 1284, column: 11)
!2418 = !DILocation(line: 1284, column: 32, scope: !2417)
!2419 = !DILocation(line: 1284, column: 11, scope: !2408)
!2420 = !DILocation(line: 1285, column: 16, scope: !2417)
!2421 = !DILocation(line: 1285, column: 9, scope: !2417)
!2422 = !DILocation(line: 0, scope: !2408)
!2423 = !DILocation(line: 1286, column: 14, scope: !2408)
!2424 = !DILocation(line: 1286, column: 19, scope: !2408)
!2425 = !DILocation(line: 1287, column: 7, scope: !2408)
!2426 = !DILocation(line: 1291, column: 18, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !744, line: 1291, column: 11)
!2428 = distinct !DILexicalBlock(scope: !2248, file: !744, line: 1290, column: 5)
!2429 = !DILocation(line: 1291, column: 11, scope: !2428)
!2430 = !DILocation(line: 1294, column: 20, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !744, line: 1293, column: 15)
!2432 = distinct !DILexicalBlock(scope: !2427, file: !744, line: 1292, column: 9)
!2433 = !DILocation(line: 1294, column: 13, scope: !2431)
!2434 = !DILocation(line: 1295, column: 18, scope: !2432)
!2435 = !DILocation(line: 1296, column: 9, scope: !2432)
!2436 = !DILocation(line: 1297, column: 18, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2428, file: !744, line: 1297, column: 11)
!2438 = !DILocation(line: 1297, column: 32, scope: !2437)
!2439 = !DILocation(line: 1297, column: 11, scope: !2428)
!2440 = !DILocation(line: 1298, column: 16, scope: !2437)
!2441 = !DILocation(line: 1298, column: 9, scope: !2437)
!2442 = !DILocation(line: 0, scope: !2428)
!2443 = !DILocation(line: 1299, column: 18, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2428, file: !744, line: 1299, column: 11)
!2445 = !DILocation(line: 1299, column: 24, scope: !2444)
!2446 = !DILocation(line: 1299, column: 11, scope: !2428)
!2447 = !DILocation(line: 1300, column: 16, scope: !2444)
!2448 = !DILocation(line: 1300, column: 9, scope: !2444)
!2449 = !DILocation(line: 1308, column: 14, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2071, file: !744, line: 1308, column: 7)
!2451 = !DILocation(line: 1310, column: 10, scope: !2071)
!2452 = !DILocation(line: 1310, column: 14, scope: !2071)
!2453 = !DILocation(line: 1311, column: 3, scope: !2071)
!2454 = !DILocation(line: 1312, column: 1, scope: !2071)
!2455 = !DISubprogram(name: "AcquireImageInfo", scope: !73, file: !73, line: 520, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!2080}
!2458 = !DISubprogram(name: "GetImageArtifact", scope: !2459, file: !2459, line: 30, type: !2460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2459 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!645, !747, !645}
!2462 = !DISubprogram(name: "SetImageOption", scope: !2463, file: !2463, line: 166, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2463 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!544, !2080, !645, !645}
!2466 = !DISubprogram(name: "TransformImageColorspace", scope: !11, file: !11, line: 66, type: !2467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!544, !530, !1624}
!2469 = !DISubprogram(name: "NormalizeImage", scope: !2470, file: !2470, line: 63, type: !2471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2470 = !DIFile(filename: "apps/538.imagick_r/src/magick/enhance.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6a9430b6e6c4409433b996fd04287515")
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!544, !530}
!2473 = !DISubprogram(name: "AcquireQuantizeInfo", scope: !482, file: !482, line: 71, type: !2474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!2210, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2478 = !DISubprogram(name: "QuantizeImage", scope: !482, file: !482, line: 65, type: !2479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!544, !2481, !530}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2483 = !DISubprogram(name: "DestroyQuantizeInfo", scope: !482, file: !482, line: 73, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!2210, !2210}
!2486 = !DISubprogram(name: "SetImageAlphaChannel", scope: !2487, file: !2487, line: 35, type: !2488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2487 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!544, !530, !2490}
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2491)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !73, line: 45, baseType: !488)
!2492 = !DISubprogram(name: "BilevelImageChannel", scope: !2493, file: !2493, line: 38, type: !2494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2493 = !DIFile(filename: "apps/538.imagick_r/src/magick/threshold.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "025e5deece754d1f8c0275d8e77e5252")
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!544, !530, !1123, !1539}
!2496 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!544, !530, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!2500 = !DISubprogram(name: "DestroyImageInfo", scope: !73, file: !73, line: 522, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1083)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!2080, !2080}
