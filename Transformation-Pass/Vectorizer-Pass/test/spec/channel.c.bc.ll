; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/channel.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/channel.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ImagesAreNotTheSameSize\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Combine/Image\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Separate/Image\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @CombineImages(ptr noundef %image, i32 noundef %channel, ptr noundef %exception) local_unnamed_addr #0 !dbg !668 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !678, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 %channel, metadata !679, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %exception, metadata !680, metadata !DIExpression()), !dbg !708
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !709
  %0 = load i32, ptr %debug, align 8, !dbg !709, !tbaa !711
  %cmp.not = icmp eq i32 %0, 0, !dbg !730
  br i1 %cmp.not, label %for.body.lr.ph, label %if.then, !dbg !731

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !732
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 122, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #6, !dbg !733
  br label %for.body.lr.ph, !dbg !734

for.body.lr.ph:                                   ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata ptr %image, metadata !686, metadata !DIExpression()), !dbg !708
  %columns2 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %rows4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  br label %for.body, !dbg !735

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %next.0409 = phi ptr [ %image, %for.body.lr.ph ], [ %call11, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %next.0409, metadata !686, metadata !DIExpression()), !dbg !708
  %columns = getelementptr inbounds %struct._Image, ptr %next.0409, i64 0, i32 7, !dbg !737
  %1 = load i64, ptr %columns, align 8, !dbg !737, !tbaa !741
  %2 = load i64, ptr %columns2, align 8, !dbg !742, !tbaa !741
  %cmp3.not = icmp eq i64 %1, %2, !dbg !743
  br i1 %cmp3.not, label %lor.lhs.false, label %if.then6, !dbg !744

lor.lhs.false:                                    ; preds = %for.body
  %rows = getelementptr inbounds %struct._Image, ptr %next.0409, i64 0, i32 8, !dbg !745
  %3 = load i64, ptr %rows, align 8, !dbg !745, !tbaa !746
  %4 = load i64, ptr %rows4, align 8, !dbg !747, !tbaa !746
  %cmp5.not = icmp eq i64 %3, %4, !dbg !748
  br i1 %cmp5.not, label %for.inc, label %if.then6, !dbg !749

if.then6:                                         ; preds = %lor.lhs.false, %for.body
  %filename7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !750
  %call9 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 128, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename7) #6, !dbg !750
  br label %cleanup221, !dbg !750

for.inc:                                          ; preds = %lor.lhs.false
  %call11 = tail call ptr @GetNextImageInList(ptr noundef nonnull %next.0409) #6, !dbg !752
  call void @llvm.dbg.value(metadata ptr %call11, metadata !686, metadata !DIExpression()), !dbg !708
  %cmp1.not = icmp eq ptr %call11, null, !dbg !753
  br i1 %cmp1.not, label %for.end, label %for.body, !dbg !735, !llvm.loop !754

for.end:                                          ; preds = %for.inc
  %call12 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #6, !dbg !758
  call void @llvm.dbg.value(metadata ptr %call12, metadata !687, metadata !DIExpression()), !dbg !708
  %cmp13 = icmp eq ptr %call12, null, !dbg !759
  br i1 %cmp13, label %cleanup221, label %if.end15, !dbg !761

if.end15:                                         ; preds = %for.end
  %call16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call12, i32 noundef 1) #6, !dbg !762
  %cmp17 = icmp eq i32 %call16, 0, !dbg !764
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !765

if.then18:                                        ; preds = %if.end15
  %exception19 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 58, !dbg !766
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception19) #6, !dbg !768
  %call20 = tail call ptr @DestroyImage(ptr noundef nonnull %call12) #6, !dbg !769
  call void @llvm.dbg.value(metadata ptr %call20, metadata !687, metadata !DIExpression()), !dbg !708
  br label %cleanup221, !dbg !770

if.end21:                                         ; preds = %if.end15
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !771
  %5 = load i32, ptr %colorspace, align 4, !dbg !771, !tbaa !773
  call void @llvm.dbg.value(metadata i32 %5, metadata !774, metadata !DIExpression()), !dbg !781
  switch i32 %5, label %if.end26 [
    i32 29, label %if.then24
    i32 13, label %if.then24
    i32 3, label %if.then24
    i32 1, label %if.then24
    i32 19, label %if.then24
    i32 17, label %if.then24
    i32 2, label %if.then24
  ], !dbg !783

if.then24:                                        ; preds = %if.end21, %if.end21, %if.end21, %if.end21, %if.end21, %if.end21, %if.end21
  %call25 = tail call i32 @SetImageColorspace(ptr noundef nonnull %call12, i32 noundef 13) #6, !dbg !785
  br label %if.end26, !dbg !786

if.end26:                                         ; preds = %if.end21, %if.then24
  %and = and i32 %channel, 8, !dbg !787
  %cmp27 = icmp ne i32 %and, 0, !dbg !789
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !790

if.then28:                                        ; preds = %if.end26
  %matte = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 6, !dbg !791
  store i32 1, ptr %matte, align 8, !dbg !792, !tbaa !793
  br label %if.end29, !dbg !794

if.end29:                                         ; preds = %if.then28, %if.end26
  %call30 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %call12) #6, !dbg !795
  call void @llvm.dbg.value(metadata i32 1, metadata !688, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 0, metadata !689, metadata !DIExpression()), !dbg !708
  %call31 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call12, ptr noundef %exception) #6, !dbg !796
  call void @llvm.dbg.value(metadata ptr %call31, metadata !681, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 0, metadata !690, metadata !DIExpression()), !dbg !708
  %rows33 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 8
  %6 = load i64, ptr %rows33, align 8, !dbg !797, !tbaa !746
  %cmp34430 = icmp sgt i64 %6, 0, !dbg !798
  br i1 %cmp34430, label %for.body35.lr.ph, label %for.end207, !dbg !799

for.body35.lr.ph:                                 ; preds = %if.end29
  %columns40 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 7
  %and45 = and i32 %channel, 1
  %cmp46.not = icmp eq i32 %and45, 0
  %columns50 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %and67 = and i32 %channel, 2
  %cmp68 = icmp ne i32 %and67, 0
  %and92 = and i32 %channel, 4
  %cmp93 = icmp ne i32 %and92, 0
  %and143 = and i32 %channel, 32
  %cmp144.not = icmp eq i32 %and143, 0
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body35, !dbg !799

for.body35:                                       ; preds = %for.body35.lr.ph, %cleanup197
  %y.0434 = phi i64 [ 0, %for.body35.lr.ph ], [ %inc206, %cleanup197 ]
  %progress.0432 = phi i64 [ 0, %for.body35.lr.ph ], [ %progress.2, %cleanup197 ]
  %status.0431 = phi i32 [ 1, %for.body35.lr.ph ], [ %status.4, %cleanup197 ]
  call void @llvm.dbg.value(metadata i64 %y.0434, metadata !690, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 %progress.0432, metadata !689, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 %status.0431, metadata !688, metadata !DIExpression()), !dbg !708
  %cmp37 = icmp eq i32 %status.0431, 0, !dbg !800
  br i1 %cmp37, label %cleanup197, label %if.end39, !dbg !802

if.end39:                                         ; preds = %for.body35
  %7 = load i64, ptr %columns40, align 8, !dbg !803, !tbaa !741
  %call41 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call31, i64 noundef 0, i64 noundef %y.0434, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #7, !dbg !804
  call void @llvm.dbg.value(metadata ptr %call41, metadata !696, metadata !DIExpression()), !dbg !805
  %cmp42 = icmp eq ptr %call41, null, !dbg !806
  br i1 %cmp42, label %cleanup197, label %if.end44, !dbg !808

if.end44:                                         ; preds = %if.end39
  call void @llvm.dbg.value(metadata ptr %image, metadata !695, metadata !DIExpression()), !dbg !805
  br i1 %cmp46.not, label %if.end66, label %if.then48, !dbg !809

if.then48:                                        ; preds = %if.end44
  %call49 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #6, !dbg !811
  call void @llvm.dbg.value(metadata ptr %call49, metadata !691, metadata !DIExpression()), !dbg !805
  %8 = load i64, ptr %columns50, align 8, !dbg !813, !tbaa !741
  %call51 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call49, i64 noundef 0, i64 noundef %y.0434, i64 noundef %8, i64 noundef 1, ptr noundef %exception) #7, !dbg !814
  call void @llvm.dbg.value(metadata ptr %call51, metadata !697, metadata !DIExpression()), !dbg !805
  %cmp52 = icmp eq ptr %call51, null, !dbg !815
  br i1 %cmp52, label %cleanup197, label %for.cond55.preheader, !dbg !817

for.cond55.preheader:                             ; preds = %if.then48
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call41, metadata !699, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call51, metadata !697, metadata !DIExpression()), !dbg !805
  %9 = load i64, ptr %columns40, align 8, !dbg !818, !tbaa !741
  %cmp57410 = icmp sgt i64 %9, 0, !dbg !821
  br i1 %cmp57410, label %for.body58, label %for.end63, !dbg !822

for.body58:                                       ; preds = %for.cond55.preheader, %ClampToQuantum.exit
  %x.0413 = phi i64 [ %inc, %ClampToQuantum.exit ], [ 0, %for.cond55.preheader ]
  %q.0412 = phi ptr [ %incdec.ptr61, %ClampToQuantum.exit ], [ %call41, %for.cond55.preheader ]
  %p.0411 = phi ptr [ %incdec.ptr, %ClampToQuantum.exit ], [ %call51, %for.cond55.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0413, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %q.0412, metadata !699, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %p.0411, metadata !697, metadata !DIExpression()), !dbg !805
  %call59 = call float @GetPixelIntensity(ptr noundef nonnull %image, ptr noundef nonnull %p.0411) #7, !dbg !823
  call void @llvm.dbg.value(metadata float %call59, metadata !825, metadata !DIExpression()), !dbg !831
  %cmp.i = fcmp ugt float %call59, 0.000000e+00, !dbg !833
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !835

if.end.i:                                         ; preds = %for.body58
  %cmp1.i = fcmp ult float %call59, 6.553500e+04, !dbg !836
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !838

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %call59, 5.000000e-01, !dbg !839
  %conv.i = fptoui float %add.i to i16, !dbg !840
  br label %ClampToQuantum.exit, !dbg !841

ClampToQuantum.exit:                              ; preds = %for.body58, %if.end.i, %if.end3.i
  %retval.0.i366 = phi i16 [ %conv.i, %if.end3.i ], [ 0, %for.body58 ], [ -1, %if.end.i ], !dbg !831
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.0412, i64 0, i32 2, !dbg !823
  store i16 %retval.0.i366, ptr %red, align 2, !dbg !823, !tbaa !842
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0411, i64 1, !dbg !843
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !697, metadata !DIExpression()), !dbg !805
  %incdec.ptr61 = getelementptr inbounds %struct._PixelPacket, ptr %q.0412, i64 1, !dbg !844
  call void @llvm.dbg.value(metadata ptr %incdec.ptr61, metadata !699, metadata !DIExpression()), !dbg !805
  %inc = add nuw nsw i64 %x.0413, 1, !dbg !845
  call void @llvm.dbg.value(metadata i64 %inc, metadata !701, metadata !DIExpression()), !dbg !805
  %10 = load i64, ptr %columns40, align 8, !dbg !818, !tbaa !741
  %cmp57 = icmp slt i64 %inc, %10, !dbg !821
  br i1 %cmp57, label %for.body58, label %for.end63, !dbg !822, !llvm.loop !846

for.end63:                                        ; preds = %ClampToQuantum.exit, %for.cond55.preheader
  %call64 = call ptr @DestroyCacheView(ptr noundef %call49) #6, !dbg !848
  call void @llvm.dbg.value(metadata ptr %call64, metadata !691, metadata !DIExpression()), !dbg !805
  %call65 = call ptr @GetNextImageInList(ptr noundef nonnull %image) #6, !dbg !849
  call void @llvm.dbg.value(metadata ptr %call65, metadata !695, metadata !DIExpression()), !dbg !805
  br label %if.end66, !dbg !850

if.end66:                                         ; preds = %for.end63, %if.end44
  %next36.0 = phi ptr [ %call65, %for.end63 ], [ %image, %if.end44 ], !dbg !805
  call void @llvm.dbg.value(metadata ptr %next36.0, metadata !695, metadata !DIExpression()), !dbg !805
  %cmp70 = icmp ne ptr %next36.0, null
  %or.cond227 = select i1 %cmp68, i1 %cmp70, i1 false, !dbg !851
  br i1 %or.cond227, label %if.then71, label %if.end91, !dbg !851

if.then71:                                        ; preds = %if.end66
  %call72 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %next36.0, ptr noundef %exception) #6, !dbg !853
  call void @llvm.dbg.value(metadata ptr %call72, metadata !691, metadata !DIExpression()), !dbg !805
  %columns73 = getelementptr inbounds %struct._Image, ptr %next36.0, i64 0, i32 7, !dbg !855
  %11 = load i64, ptr %columns73, align 8, !dbg !855, !tbaa !741
  %call74 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call72, i64 noundef 0, i64 noundef %y.0434, i64 noundef %11, i64 noundef 1, ptr noundef %exception) #7, !dbg !856
  call void @llvm.dbg.value(metadata ptr %call74, metadata !697, metadata !DIExpression()), !dbg !805
  %cmp75 = icmp eq ptr %call74, null, !dbg !857
  br i1 %cmp75, label %cleanup197, label %for.cond78.preheader, !dbg !859

for.cond78.preheader:                             ; preds = %if.then71
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call41, metadata !699, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call74, metadata !697, metadata !DIExpression()), !dbg !805
  %12 = load i64, ptr %columns40, align 8, !dbg !860, !tbaa !741
  %cmp80414 = icmp sgt i64 %12, 0, !dbg !863
  br i1 %cmp80414, label %for.body81, label %for.end88, !dbg !864

for.body81:                                       ; preds = %for.cond78.preheader, %ClampToQuantum.exit374
  %x.1417 = phi i64 [ %inc87, %ClampToQuantum.exit374 ], [ 0, %for.cond78.preheader ]
  %q.1416 = phi ptr [ %incdec.ptr85, %ClampToQuantum.exit374 ], [ %call41, %for.cond78.preheader ]
  %p.1415 = phi ptr [ %incdec.ptr84, %ClampToQuantum.exit374 ], [ %call74, %for.cond78.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.1417, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %q.1416, metadata !699, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %p.1415, metadata !697, metadata !DIExpression()), !dbg !805
  %call82 = call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.1415) #7, !dbg !865
  call void @llvm.dbg.value(metadata float %call82, metadata !825, metadata !DIExpression()), !dbg !867
  %cmp.i367 = fcmp ugt float %call82, 0.000000e+00, !dbg !869
  br i1 %cmp.i367, label %if.end.i369, label %ClampToQuantum.exit374, !dbg !870

if.end.i369:                                      ; preds = %for.body81
  %cmp1.i368 = fcmp ult float %call82, 6.553500e+04, !dbg !871
  br i1 %cmp1.i368, label %if.end3.i372, label %ClampToQuantum.exit374, !dbg !872

if.end3.i372:                                     ; preds = %if.end.i369
  %add.i370 = fadd float %call82, 5.000000e-01, !dbg !873
  %conv.i371 = fptoui float %add.i370 to i16, !dbg !874
  br label %ClampToQuantum.exit374, !dbg !875

ClampToQuantum.exit374:                           ; preds = %for.body81, %if.end.i369, %if.end3.i372
  %retval.0.i373 = phi i16 [ %conv.i371, %if.end3.i372 ], [ 0, %for.body81 ], [ -1, %if.end.i369 ], !dbg !867
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q.1416, i64 0, i32 1, !dbg !865
  store i16 %retval.0.i373, ptr %green, align 2, !dbg !865, !tbaa !876
  %incdec.ptr84 = getelementptr inbounds %struct._PixelPacket, ptr %p.1415, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !697, metadata !DIExpression()), !dbg !805
  %incdec.ptr85 = getelementptr inbounds %struct._PixelPacket, ptr %q.1416, i64 1, !dbg !878
  call void @llvm.dbg.value(metadata ptr %incdec.ptr85, metadata !699, metadata !DIExpression()), !dbg !805
  %inc87 = add nuw nsw i64 %x.1417, 1, !dbg !879
  call void @llvm.dbg.value(metadata i64 %inc87, metadata !701, metadata !DIExpression()), !dbg !805
  %13 = load i64, ptr %columns40, align 8, !dbg !860, !tbaa !741
  %cmp80 = icmp slt i64 %inc87, %13, !dbg !863
  br i1 %cmp80, label %for.body81, label %for.end88, !dbg !864, !llvm.loop !880

for.end88:                                        ; preds = %ClampToQuantum.exit374, %for.cond78.preheader
  %call89 = call ptr @DestroyCacheView(ptr noundef %call72) #6, !dbg !882
  call void @llvm.dbg.value(metadata ptr %call89, metadata !691, metadata !DIExpression()), !dbg !805
  %call90 = call ptr @GetNextImageInList(ptr noundef nonnull %next36.0) #6, !dbg !883
  call void @llvm.dbg.value(metadata ptr %call90, metadata !695, metadata !DIExpression()), !dbg !805
  br label %if.end91, !dbg !884

if.end91:                                         ; preds = %for.end88, %if.end66
  %next36.1 = phi ptr [ %call90, %for.end88 ], [ %next36.0, %if.end66 ], !dbg !805
  call void @llvm.dbg.value(metadata ptr %next36.1, metadata !695, metadata !DIExpression()), !dbg !805
  %cmp95 = icmp ne ptr %next36.1, null
  %or.cond228 = select i1 %cmp93, i1 %cmp95, i1 false, !dbg !885
  br i1 %or.cond228, label %if.then96, label %if.end116, !dbg !885

if.then96:                                        ; preds = %if.end91
  %call97 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %next36.1, ptr noundef %exception) #6, !dbg !887
  call void @llvm.dbg.value(metadata ptr %call97, metadata !691, metadata !DIExpression()), !dbg !805
  %columns98 = getelementptr inbounds %struct._Image, ptr %next36.1, i64 0, i32 7, !dbg !889
  %14 = load i64, ptr %columns98, align 8, !dbg !889, !tbaa !741
  %call99 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call97, i64 noundef 0, i64 noundef %y.0434, i64 noundef %14, i64 noundef 1, ptr noundef %exception) #7, !dbg !890
  call void @llvm.dbg.value(metadata ptr %call99, metadata !697, metadata !DIExpression()), !dbg !805
  %cmp100 = icmp eq ptr %call99, null, !dbg !891
  br i1 %cmp100, label %cleanup197, label %for.cond103.preheader, !dbg !893

for.cond103.preheader:                            ; preds = %if.then96
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call41, metadata !699, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call99, metadata !697, metadata !DIExpression()), !dbg !805
  %15 = load i64, ptr %columns40, align 8, !dbg !894, !tbaa !741
  %cmp105418 = icmp sgt i64 %15, 0, !dbg !897
  br i1 %cmp105418, label %for.body106, label %for.end113, !dbg !898

for.body106:                                      ; preds = %for.cond103.preheader, %ClampToQuantum.exit382
  %x.2421 = phi i64 [ %inc112, %ClampToQuantum.exit382 ], [ 0, %for.cond103.preheader ]
  %q.2420 = phi ptr [ %incdec.ptr110, %ClampToQuantum.exit382 ], [ %call41, %for.cond103.preheader ]
  %p.2419 = phi ptr [ %incdec.ptr109, %ClampToQuantum.exit382 ], [ %call99, %for.cond103.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.2421, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %q.2420, metadata !699, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %p.2419, metadata !697, metadata !DIExpression()), !dbg !805
  %call107 = call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.2419) #7, !dbg !899
  call void @llvm.dbg.value(metadata float %call107, metadata !825, metadata !DIExpression()), !dbg !901
  %cmp.i375 = fcmp ugt float %call107, 0.000000e+00, !dbg !903
  br i1 %cmp.i375, label %if.end.i377, label %ClampToQuantum.exit382, !dbg !904

if.end.i377:                                      ; preds = %for.body106
  %cmp1.i376 = fcmp ult float %call107, 6.553500e+04, !dbg !905
  br i1 %cmp1.i376, label %if.end3.i380, label %ClampToQuantum.exit382, !dbg !906

if.end3.i380:                                     ; preds = %if.end.i377
  %add.i378 = fadd float %call107, 5.000000e-01, !dbg !907
  %conv.i379 = fptoui float %add.i378 to i16, !dbg !908
  br label %ClampToQuantum.exit382, !dbg !909

ClampToQuantum.exit382:                           ; preds = %for.body106, %if.end.i377, %if.end3.i380
  %retval.0.i381 = phi i16 [ %conv.i379, %if.end3.i380 ], [ 0, %for.body106 ], [ -1, %if.end.i377 ], !dbg !901
  store i16 %retval.0.i381, ptr %q.2420, align 2, !dbg !899, !tbaa !910
  %incdec.ptr109 = getelementptr inbounds %struct._PixelPacket, ptr %p.2419, i64 1, !dbg !911
  call void @llvm.dbg.value(metadata ptr %incdec.ptr109, metadata !697, metadata !DIExpression()), !dbg !805
  %incdec.ptr110 = getelementptr inbounds %struct._PixelPacket, ptr %q.2420, i64 1, !dbg !912
  call void @llvm.dbg.value(metadata ptr %incdec.ptr110, metadata !699, metadata !DIExpression()), !dbg !805
  %inc112 = add nuw nsw i64 %x.2421, 1, !dbg !913
  call void @llvm.dbg.value(metadata i64 %inc112, metadata !701, metadata !DIExpression()), !dbg !805
  %16 = load i64, ptr %columns40, align 8, !dbg !894, !tbaa !741
  %cmp105 = icmp slt i64 %inc112, %16, !dbg !897
  br i1 %cmp105, label %for.body106, label %for.end113, !dbg !898, !llvm.loop !914

for.end113:                                       ; preds = %ClampToQuantum.exit382, %for.cond103.preheader
  %call114 = call ptr @DestroyCacheView(ptr noundef %call97) #6, !dbg !916
  call void @llvm.dbg.value(metadata ptr %call114, metadata !691, metadata !DIExpression()), !dbg !805
  %call115 = call ptr @GetNextImageInList(ptr noundef nonnull %next36.1) #6, !dbg !917
  call void @llvm.dbg.value(metadata ptr %call115, metadata !695, metadata !DIExpression()), !dbg !805
  br label %if.end116, !dbg !918

if.end116:                                        ; preds = %for.end113, %if.end91
  %next36.2 = phi ptr [ %call115, %for.end113 ], [ %next36.1, %if.end91 ], !dbg !805
  call void @llvm.dbg.value(metadata ptr %next36.2, metadata !695, metadata !DIExpression()), !dbg !805
  %cmp120 = icmp ne ptr %next36.2, null
  %or.cond229 = select i1 %cmp27, i1 %cmp120, i1 false, !dbg !919
  br i1 %or.cond229, label %if.then121, label %if.end142, !dbg !919

if.then121:                                       ; preds = %if.end116
  %call122 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %next36.2, ptr noundef %exception) #6, !dbg !921
  call void @llvm.dbg.value(metadata ptr %call122, metadata !691, metadata !DIExpression()), !dbg !805
  %columns123 = getelementptr inbounds %struct._Image, ptr %next36.2, i64 0, i32 7, !dbg !923
  %17 = load i64, ptr %columns123, align 8, !dbg !923, !tbaa !741
  %call124 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call122, i64 noundef 0, i64 noundef %y.0434, i64 noundef %17, i64 noundef 1, ptr noundef %exception) #7, !dbg !924
  call void @llvm.dbg.value(metadata ptr %call124, metadata !697, metadata !DIExpression()), !dbg !805
  %cmp125 = icmp eq ptr %call124, null, !dbg !925
  br i1 %cmp125, label %cleanup197, label %for.cond128.preheader, !dbg !927

for.cond128.preheader:                            ; preds = %if.then121
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call41, metadata !699, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call124, metadata !697, metadata !DIExpression()), !dbg !805
  %18 = load i64, ptr %columns40, align 8, !dbg !928, !tbaa !741
  %cmp130422 = icmp sgt i64 %18, 0, !dbg !931
  br i1 %cmp130422, label %for.body131, label %for.end139, !dbg !932

for.body131:                                      ; preds = %for.cond128.preheader, %ClampToQuantum.exit390
  %x.3425 = phi i64 [ %inc138, %ClampToQuantum.exit390 ], [ 0, %for.cond128.preheader ]
  %q.3424 = phi ptr [ %incdec.ptr136, %ClampToQuantum.exit390 ], [ %call41, %for.cond128.preheader ]
  %p.3423 = phi ptr [ %incdec.ptr135, %ClampToQuantum.exit390 ], [ %call124, %for.cond128.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.3425, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %q.3424, metadata !699, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %p.3423, metadata !697, metadata !DIExpression()), !dbg !805
  %call132 = call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.3423) #7, !dbg !933
  call void @llvm.dbg.value(metadata float %call132, metadata !825, metadata !DIExpression()), !dbg !935
  %cmp.i383 = fcmp ugt float %call132, 0.000000e+00, !dbg !937
  br i1 %cmp.i383, label %if.end.i385, label %ClampToQuantum.exit390, !dbg !938

if.end.i385:                                      ; preds = %for.body131
  %cmp1.i384 = fcmp ult float %call132, 6.553500e+04, !dbg !939
  br i1 %cmp1.i384, label %if.end3.i388, label %ClampToQuantum.exit390, !dbg !940

if.end3.i388:                                     ; preds = %if.end.i385
  %add.i386 = fadd float %call132, 5.000000e-01, !dbg !941
  %conv.i387 = fptoui float %add.i386 to i16, !dbg !942
  br label %ClampToQuantum.exit390, !dbg !943

ClampToQuantum.exit390:                           ; preds = %for.body131, %if.end.i385, %if.end3.i388
  %retval.0.i389 = phi i16 [ %conv.i387, %if.end3.i388 ], [ 0, %for.body131 ], [ -1, %if.end.i385 ], !dbg !935
  %19 = xor i16 %retval.0.i389, -1, !dbg !933
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %q.3424, i64 0, i32 3, !dbg !933
  store i16 %19, ptr %opacity, align 2, !dbg !933, !tbaa !944
  %incdec.ptr135 = getelementptr inbounds %struct._PixelPacket, ptr %p.3423, i64 1, !dbg !945
  call void @llvm.dbg.value(metadata ptr %incdec.ptr135, metadata !697, metadata !DIExpression()), !dbg !805
  %incdec.ptr136 = getelementptr inbounds %struct._PixelPacket, ptr %q.3424, i64 1, !dbg !946
  call void @llvm.dbg.value(metadata ptr %incdec.ptr136, metadata !699, metadata !DIExpression()), !dbg !805
  %inc138 = add nuw nsw i64 %x.3425, 1, !dbg !947
  call void @llvm.dbg.value(metadata i64 %inc138, metadata !701, metadata !DIExpression()), !dbg !805
  %20 = load i64, ptr %columns40, align 8, !dbg !928, !tbaa !741
  %cmp130 = icmp slt i64 %inc138, %20, !dbg !931
  br i1 %cmp130, label %for.body131, label %for.end139, !dbg !932, !llvm.loop !948

for.end139:                                       ; preds = %ClampToQuantum.exit390, %for.cond128.preheader
  %call140 = call ptr @DestroyCacheView(ptr noundef %call122) #6, !dbg !950
  call void @llvm.dbg.value(metadata ptr %call140, metadata !691, metadata !DIExpression()), !dbg !805
  %call141 = call ptr @GetNextImageInList(ptr noundef nonnull %next36.2) #6, !dbg !951
  call void @llvm.dbg.value(metadata ptr %call141, metadata !695, metadata !DIExpression()), !dbg !805
  br label %if.end142, !dbg !952

if.end142:                                        ; preds = %for.end139, %if.end116
  %next36.3 = phi ptr [ %call141, %for.end139 ], [ %next36.2, %if.end116 ], !dbg !805
  call void @llvm.dbg.value(metadata ptr %next36.3, metadata !695, metadata !DIExpression()), !dbg !805
  br i1 %cmp144.not, label %if.end180, label %land.lhs.true146, !dbg !953

land.lhs.true146:                                 ; preds = %if.end142
  %21 = load i32, ptr %colorspace, align 4, !dbg !954, !tbaa !773
  %cmp148 = icmp eq i32 %21, 12, !dbg !955
  %cmp151 = icmp ne ptr %next36.3, null
  %or.cond230 = select i1 %cmp148, i1 %cmp151, i1 false, !dbg !956
  br i1 %or.cond230, label %if.then153, label %if.end180, !dbg !956

if.then153:                                       ; preds = %land.lhs.true146
  %call154 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %next36.3, ptr noundef %exception) #6, !dbg !957
  call void @llvm.dbg.value(metadata ptr %call154, metadata !691, metadata !DIExpression()), !dbg !805
  %columns155 = getelementptr inbounds %struct._Image, ptr %next36.3, i64 0, i32 7, !dbg !958
  %22 = load i64, ptr %columns155, align 8, !dbg !958, !tbaa !741
  %call156 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call154, i64 noundef 0, i64 noundef %y.0434, i64 noundef %22, i64 noundef 1, ptr noundef %exception) #7, !dbg !959
  call void @llvm.dbg.value(metadata ptr %call156, metadata !697, metadata !DIExpression()), !dbg !805
  %cmp157 = icmp eq ptr %call156, null, !dbg !960
  br i1 %cmp157, label %cleanup197, label %if.end160, !dbg !962

if.end160:                                        ; preds = %if.then153
  %call161 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call31) #6, !dbg !963
  call void @llvm.dbg.value(metadata ptr %call161, metadata !702, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %call156, metadata !697, metadata !DIExpression()), !dbg !805
  %23 = load i64, ptr %columns40, align 8, !dbg !965, !tbaa !741
  %cmp164426 = icmp slt i64 %23, 1, !dbg !968
  %cmp167.not = icmp eq ptr %call161, null
  %or.cond436 = select i1 %cmp164426, i1 true, i1 %cmp167.not, !dbg !969
  br i1 %or.cond436, label %for.end177, label %for.body166, !dbg !969

for.body166:                                      ; preds = %if.end160, %ClampToQuantum.exit398
  %x.4428 = phi i64 [ %inc176, %ClampToQuantum.exit398 ], [ 0, %if.end160 ]
  %p.4427 = phi ptr [ %incdec.ptr174, %ClampToQuantum.exit398 ], [ %call156, %if.end160 ]
  call void @llvm.dbg.value(metadata i64 %x.4428, metadata !701, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %p.4427, metadata !697, metadata !DIExpression()), !dbg !805
  %add.ptr = getelementptr inbounds i16, ptr %call161, i64 %x.4428, !dbg !970
  %call170 = call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %p.4427) #7, !dbg !970
  call void @llvm.dbg.value(metadata float %call170, metadata !825, metadata !DIExpression()), !dbg !974
  %cmp.i391 = fcmp ugt float %call170, 0.000000e+00, !dbg !976
  br i1 %cmp.i391, label %if.end.i393, label %ClampToQuantum.exit398, !dbg !977

if.end.i393:                                      ; preds = %for.body166
  %cmp1.i392 = fcmp ult float %call170, 6.553500e+04, !dbg !978
  br i1 %cmp1.i392, label %if.end3.i396, label %ClampToQuantum.exit398, !dbg !979

if.end3.i396:                                     ; preds = %if.end.i393
  %add.i394 = fadd float %call170, 5.000000e-01, !dbg !980
  %conv.i395 = fptoui float %add.i394 to i16, !dbg !981
  br label %ClampToQuantum.exit398, !dbg !982

ClampToQuantum.exit398:                           ; preds = %for.body166, %if.end.i393, %if.end3.i396
  %retval.0.i397 = phi i16 [ %conv.i395, %if.end3.i396 ], [ 0, %for.body166 ], [ -1, %if.end.i393 ], !dbg !974
  store i16 %retval.0.i397, ptr %add.ptr, align 2, !dbg !970, !tbaa !983
  %incdec.ptr174 = getelementptr inbounds %struct._PixelPacket, ptr %p.4427, i64 1, !dbg !984
  call void @llvm.dbg.value(metadata ptr %incdec.ptr174, metadata !697, metadata !DIExpression()), !dbg !805
  %inc176 = add nuw nsw i64 %x.4428, 1, !dbg !985
  call void @llvm.dbg.value(metadata i64 %inc176, metadata !701, metadata !DIExpression()), !dbg !805
  %24 = load i64, ptr %columns40, align 8, !dbg !965, !tbaa !741
  %cmp164 = icmp slt i64 %inc176, %24, !dbg !968
  br i1 %cmp164, label %for.body166, label %for.end177, !dbg !969, !llvm.loop !986

for.end177:                                       ; preds = %ClampToQuantum.exit398, %if.end160
  %call178 = call ptr @DestroyCacheView(ptr noundef %call154) #6, !dbg !988
  call void @llvm.dbg.value(metadata ptr %call178, metadata !691, metadata !DIExpression()), !dbg !805
  %call179 = call ptr @GetNextImageInList(ptr noundef nonnull %next36.3) #6, !dbg !989
  call void @llvm.dbg.value(metadata ptr %call179, metadata !695, metadata !DIExpression()), !dbg !805
  br label %if.end180

if.end180:                                        ; preds = %for.end177, %land.lhs.true146, %if.end142
  %call181 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call31, ptr noundef %exception) #7, !dbg !990
  %cmp182 = icmp ne i32 %call181, 0, !dbg !992
  %spec.select = zext i1 %cmp182 to i32, !dbg !993
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !688, metadata !DIExpression()), !dbg !708
  %25 = load ptr, ptr %progress_monitor, align 8, !dbg !994, !tbaa !995
  %cmp186.not = icmp eq ptr %25, null, !dbg !996
  br i1 %cmp186.not, label %cleanup197, label %SetImageProgress.exit, !dbg !997

SetImageProgress.exit:                            ; preds = %if.end180
  %inc189 = add nsw i64 %progress.0432, 1, !dbg !998
  call void @llvm.dbg.value(metadata i64 %inc189, metadata !689, metadata !DIExpression()), !dbg !708
  %26 = load i64, ptr %rows33, align 8, !dbg !999, !tbaa !746
  call void @llvm.dbg.value(metadata ptr %image, metadata !1000, metadata !DIExpression()) #6, !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1006, metadata !DIExpression()) #6, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %progress.0432, metadata !1007, metadata !DIExpression()) #6, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %26, metadata !1008, metadata !DIExpression()) #6, !dbg !1010
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #6, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1009, metadata !DIExpression()) #6, !dbg !1013
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename.i) #6, !dbg !1014
  %27 = load ptr, ptr %progress_monitor, align 8, !dbg !1015, !tbaa !995
  %28 = load ptr, ptr %client_data.i, align 8, !dbg !1016, !tbaa !1017
  %call4.i = call i32 %27(ptr noundef nonnull %message.i, i64 noundef %progress.0432, i64 noundef %26, ptr noundef %28) #6, !dbg !1018
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #6, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !705, metadata !DIExpression()), !dbg !1020
  %cmp192 = icmp eq i32 %call4.i, 0, !dbg !1021
  %spec.select365 = select i1 %cmp192, i32 0, i32 %spec.select, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %spec.select365, metadata !688, metadata !DIExpression()), !dbg !708
  br label %cleanup197, !dbg !1024

cleanup197:                                       ; preds = %if.then153, %if.end180, %SetImageProgress.exit, %if.then121, %if.then96, %if.then71, %if.then48, %if.end39, %for.body35
  %status.4 = phi i32 [ 0, %for.body35 ], [ 0, %if.end39 ], [ 1, %if.then48 ], [ 1, %if.then71 ], [ 1, %if.then96 ], [ 1, %if.then121 ], [ %spec.select365, %SetImageProgress.exit ], [ %spec.select, %if.end180 ], [ 1, %if.then153 ], !dbg !708
  %progress.2 = phi i64 [ %progress.0432, %for.body35 ], [ %progress.0432, %if.end39 ], [ %progress.0432, %if.then48 ], [ %progress.0432, %if.then71 ], [ %progress.0432, %if.then96 ], [ %progress.0432, %if.then121 ], [ %inc189, %SetImageProgress.exit ], [ %progress.0432, %if.end180 ], [ %progress.0432, %if.then153 ], !dbg !708
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !689, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !688, metadata !DIExpression()), !dbg !708
  %inc206 = add nuw nsw i64 %y.0434, 1, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %inc206, metadata !690, metadata !DIExpression()), !dbg !708
  %29 = load i64, ptr %rows33, align 8, !dbg !797, !tbaa !746
  %cmp34 = icmp slt i64 %inc206, %29, !dbg !798
  br i1 %cmp34, label %for.body35, label %for.end207, !dbg !799, !llvm.loop !1026

for.end207:                                       ; preds = %cleanup197, %if.end29
  %status.0.lcssa = phi i32 [ 1, %if.end29 ], [ %status.4, %cleanup197 ], !dbg !1028
  %call208 = call ptr @DestroyCacheView(ptr noundef %call31) #6, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %call208, metadata !681, metadata !DIExpression()), !dbg !708
  %colorspace209 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 1, !dbg !1030
  %30 = load i32, ptr %colorspace209, align 4, !dbg !1030, !tbaa !773
  call void @llvm.dbg.value(metadata i32 %30, metadata !1032, metadata !DIExpression()), !dbg !1035
  switch i32 %30, label %if.end215 [
    i32 19, label %if.then213
    i32 17, label %if.then213
    i32 2, label %if.then213
  ], !dbg !1037

if.then213:                                       ; preds = %for.end207, %for.end207, %for.end207
  %call214 = call i32 @TransformImageColorspace(ptr noundef nonnull %call12, i32 noundef 13) #6, !dbg !1039
  br label %if.end215, !dbg !1040

if.end215:                                        ; preds = %for.end207, %if.then213
  %cmp216 = icmp eq i32 %status.0.lcssa, 0, !dbg !1041
  br i1 %cmp216, label %if.then218, label %cleanup221, !dbg !1043

if.then218:                                       ; preds = %if.end215
  %call219 = call ptr @DestroyImage(ptr noundef nonnull %call12) #6, !dbg !1044
  call void @llvm.dbg.value(metadata ptr %call219, metadata !687, metadata !DIExpression()), !dbg !708
  br label %cleanup221, !dbg !1045

cleanup221:                                       ; preds = %if.end215, %if.then218, %for.end, %if.then18, %if.then6
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %if.then18 ], [ null, %for.end ], [ %call219, %if.then218 ], [ %call12, %if.end215 ], !dbg !708
  ret ptr %retval.0, !dbg !1046
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1047 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1054 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1058 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !1062 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1066 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1070 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1075 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !1078 i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1081 i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

declare !dbg !1084 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1087 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1091 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !1092 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1097 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1100 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !1103 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: hot
declare !dbg !1106 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1109 i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageAlphaChannel(ptr nocapture noundef readonly %image) local_unnamed_addr #0 !dbg !1110 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1114, metadata !DIExpression()), !dbg !1115
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1116
  %0 = load i32, ptr %debug, align 8, !dbg !1116, !tbaa !711
  %cmp.not = icmp eq i32 %0, 0, !dbg !1118
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1119

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.6) #6, !dbg !1120
  br label %if.end, !dbg !1121

if.end:                                           ; preds = %if.then, %entry
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1122
  %1 = load i32, ptr %matte, align 8, !dbg !1122, !tbaa !793
  ret i32 %1, !dbg !1123
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SeparateImage(ptr noundef %image, i32 noundef %channel, ptr noundef %exception) local_unnamed_addr #0 !dbg !1124 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1126, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1127, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1128, metadata !DIExpression()), !dbg !1131
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1132
  %0 = load i32, ptr %debug, align 8, !dbg !1132, !tbaa !711
  %cmp.not = icmp eq i32 %0, 0, !dbg !1134
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1135

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1136
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 362, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #6, !dbg !1137
  br label %if.end, !dbg !1138

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #6, !dbg !1139
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1129, metadata !DIExpression()), !dbg !1131
  %cmp2 = icmp eq ptr %call1, null, !dbg !1140
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1142

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %call1, i32 noundef %channel), !dbg !1143
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1130, metadata !DIExpression()), !dbg !1131
  %cmp6 = icmp eq i32 %call5, 0, !dbg !1144
  br i1 %cmp6, label %if.then7, label %cleanup, !dbg !1146

if.then7:                                         ; preds = %if.end4
  %call8 = tail call ptr @DestroyImage(ptr noundef nonnull %call1) #6, !dbg !1147
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1129, metadata !DIExpression()), !dbg !1131
  br label %cleanup, !dbg !1148

cleanup:                                          ; preds = %if.end4, %if.then7, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call8, %if.then7 ], [ %call1, %if.end4 ], !dbg !1131
  ret ptr %retval.0, !dbg !1149
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SeparateImageChannel(ptr noundef %image, i32 noundef %channel) local_unnamed_addr #0 !dbg !1150 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1154, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1155, metadata !DIExpression()), !dbg !1171
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1172
  %0 = load i32, ptr %debug, align 8, !dbg !1172, !tbaa !711
  %cmp.not = icmp eq i32 %0, 0, !dbg !1174
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1175

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1176
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 397, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #6, !dbg !1177
  br label %if.end, !dbg !1178

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #6, !dbg !1179
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1181
  br i1 %cmp2, label %cleanup171, label %if.end4, !dbg !1182

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %channel, 128, !dbg !1183
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1185

if.then6:                                         ; preds = %if.end4
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1186
  store i32 1, ptr %matte, align 8, !dbg !1187, !tbaa !793
  br label %if.end7, !dbg !1188

if.end7:                                          ; preds = %if.then6, %if.end4
  call void @llvm.dbg.value(metadata i32 1, metadata !1158, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 0, metadata !1159, metadata !DIExpression()), !dbg !1171
  %exception8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %exception8, metadata !1157, metadata !DIExpression()), !dbg !1171
  %call9 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception8) #6, !dbg !1190
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1156, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 0, metadata !1160, metadata !DIExpression()), !dbg !1171
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1160, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 0, metadata !1159, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 1, metadata !1158, metadata !DIExpression()), !dbg !1171
  %1 = load i64, ptr %rows, align 8, !dbg !1191, !tbaa !746
  %cmp10303 = icmp sgt i64 %1, 0, !dbg !1192
  br i1 %cmp10303, label %for.body.lr.ph, label %for.end163, !dbg !1193

for.body.lr.ph:                                   ; preds = %if.end7
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !1193

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0306 = phi i64 [ 0, %for.body.lr.ph ], [ %inc162, %cleanup ]
  %progress.0305 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  %status.0304 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0306, metadata !1160, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %progress.0305, metadata !1159, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 %status.0304, metadata !1158, metadata !DIExpression()), !dbg !1171
  %cmp11 = icmp eq i32 %status.0304, 0, !dbg !1194
  br i1 %cmp11, label %cleanup, label %if.end13, !dbg !1196

if.end13:                                         ; preds = %for.body
  %2 = load i64, ptr %columns, align 8, !dbg !1197, !tbaa !741
  %call14 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call9, i64 noundef 0, i64 noundef %y.0306, i64 noundef %2, i64 noundef 1, ptr noundef nonnull %exception8) #7, !dbg !1198
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1166, metadata !DIExpression()), !dbg !1199
  %cmp15 = icmp eq ptr %call14, null, !dbg !1200
  br i1 %cmp15, label %cleanup, label %if.end17, !dbg !1202

if.end17:                                         ; preds = %if.end13
  %call18 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call9) #6, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1161, metadata !DIExpression()), !dbg !1199
  switch i32 %channel, label %sw.epilog [
    i32 1, label %for.cond19.preheader
    i32 2, label %for.cond25.preheader
    i32 4, label %for.cond38.preheader
    i32 8, label %for.cond51.preheader
    i32 32, label %sw.bb64
    i32 64, label %for.cond104.preheader
    i32 128, label %for.cond128.preheader
  ], !dbg !1204

for.cond128.preheader:                            ; preds = %if.end17
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1166, metadata !DIExpression()), !dbg !1199
  %3 = load i64, ptr %columns, align 8, !dbg !1205, !tbaa !741
  %cmp130280 = icmp sgt i64 %3, 0, !dbg !1210
  br i1 %cmp130280, label %for.body132, label %sw.epilog, !dbg !1211

for.cond104.preheader:                            ; preds = %if.end17
  %4 = load i64, ptr %columns, align 8, !tbaa !741
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1166, metadata !DIExpression()), !dbg !1199
  %cmp106283 = icmp sgt i64 %4, 0, !dbg !1212
  br i1 %cmp106283, label %for.body108, label %sw.epilog, !dbg !1216

for.cond51.preheader:                             ; preds = %if.end17
  %5 = load i64, ptr %columns, align 8, !tbaa !741
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1166, metadata !DIExpression()), !dbg !1199
  %cmp53291 = icmp sgt i64 %5, 0, !dbg !1217
  br i1 %cmp53291, label %for.body54, label %sw.epilog, !dbg !1221

for.cond38.preheader:                             ; preds = %if.end17
  %6 = load i64, ptr %columns, align 8, !tbaa !741
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1166, metadata !DIExpression()), !dbg !1199
  %cmp40294 = icmp sgt i64 %6, 0, !dbg !1222
  br i1 %cmp40294, label %for.body41, label %sw.epilog, !dbg !1226

for.cond25.preheader:                             ; preds = %if.end17
  %7 = load i64, ptr %columns, align 8, !tbaa !741
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1166, metadata !DIExpression()), !dbg !1199
  %cmp27297 = icmp sgt i64 %7, 0, !dbg !1227
  br i1 %cmp27297, label %for.body28, label %sw.epilog, !dbg !1231

for.cond19.preheader:                             ; preds = %if.end17
  %8 = load i64, ptr %columns, align 8, !tbaa !741
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1166, metadata !DIExpression()), !dbg !1199
  %cmp21300 = icmp sgt i64 %8, 0, !dbg !1232
  br i1 %cmp21300, label %for.body22, label %sw.epilog, !dbg !1236

for.body22:                                       ; preds = %for.cond19.preheader, %for.body22
  %x.0302 = phi i64 [ %inc, %for.body22 ], [ 0, %for.cond19.preheader ]
  %q.0301 = phi ptr [ %incdec.ptr, %for.body22 ], [ %call14, %for.cond19.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0302, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %q.0301, metadata !1166, metadata !DIExpression()), !dbg !1199
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.0301, i64 0, i32 2, !dbg !1237
  %9 = load i16, ptr %red, align 2, !dbg !1237, !tbaa !842
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q.0301, i64 0, i32 1, !dbg !1237
  store i16 %9, ptr %green, align 2, !dbg !1237, !tbaa !876
  store i16 %9, ptr %q.0301, align 2, !dbg !1239, !tbaa !910
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0301, i64 1, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1166, metadata !DIExpression()), !dbg !1199
  %inc = add nuw nsw i64 %x.0302, 1, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1167, metadata !DIExpression()), !dbg !1199
  %exitcond319.not = icmp eq i64 %inc, %8, !dbg !1232
  br i1 %exitcond319.not, label %sw.epilog, label %for.body22, !dbg !1236, !llvm.loop !1242

for.body28:                                       ; preds = %for.cond25.preheader, %for.body28
  %x.1299 = phi i64 [ %inc35, %for.body28 ], [ 0, %for.cond25.preheader ]
  %q.1298 = phi ptr [ %incdec.ptr33, %for.body28 ], [ %call14, %for.cond25.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.1299, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %q.1298, metadata !1166, metadata !DIExpression()), !dbg !1199
  %green29 = getelementptr inbounds %struct._PixelPacket, ptr %q.1298, i64 0, i32 1, !dbg !1244
  %10 = load i16, ptr %green29, align 2, !dbg !1244, !tbaa !876
  %red30 = getelementptr inbounds %struct._PixelPacket, ptr %q.1298, i64 0, i32 2, !dbg !1244
  store i16 %10, ptr %red30, align 2, !dbg !1244, !tbaa !842
  store i16 %10, ptr %q.1298, align 2, !dbg !1246, !tbaa !910
  %incdec.ptr33 = getelementptr inbounds %struct._PixelPacket, ptr %q.1298, i64 1, !dbg !1247
  call void @llvm.dbg.value(metadata ptr %incdec.ptr33, metadata !1166, metadata !DIExpression()), !dbg !1199
  %inc35 = add nuw nsw i64 %x.1299, 1, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %inc35, metadata !1167, metadata !DIExpression()), !dbg !1199
  %exitcond318.not = icmp eq i64 %inc35, %7, !dbg !1227
  br i1 %exitcond318.not, label %sw.epilog, label %for.body28, !dbg !1231, !llvm.loop !1249

for.body41:                                       ; preds = %for.cond38.preheader, %for.body41
  %x.2296 = phi i64 [ %inc48, %for.body41 ], [ 0, %for.cond38.preheader ]
  %q.2295 = phi ptr [ %incdec.ptr46, %for.body41 ], [ %call14, %for.cond38.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.2296, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %q.2295, metadata !1166, metadata !DIExpression()), !dbg !1199
  %11 = load i16, ptr %q.2295, align 2, !dbg !1251, !tbaa !910
  %red43 = getelementptr inbounds %struct._PixelPacket, ptr %q.2295, i64 0, i32 2, !dbg !1251
  store i16 %11, ptr %red43, align 2, !dbg !1251, !tbaa !842
  %green45 = getelementptr inbounds %struct._PixelPacket, ptr %q.2295, i64 0, i32 1, !dbg !1253
  store i16 %11, ptr %green45, align 2, !dbg !1253, !tbaa !876
  %incdec.ptr46 = getelementptr inbounds %struct._PixelPacket, ptr %q.2295, i64 1, !dbg !1254
  call void @llvm.dbg.value(metadata ptr %incdec.ptr46, metadata !1166, metadata !DIExpression()), !dbg !1199
  %inc48 = add nuw nsw i64 %x.2296, 1, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %inc48, metadata !1167, metadata !DIExpression()), !dbg !1199
  %exitcond317.not = icmp eq i64 %inc48, %6, !dbg !1222
  br i1 %exitcond317.not, label %sw.epilog, label %for.body41, !dbg !1226, !llvm.loop !1256

for.body54:                                       ; preds = %for.cond51.preheader, %for.body54
  %x.3293 = phi i64 [ %inc62, %for.body54 ], [ 0, %for.cond51.preheader ]
  %q.3292 = phi ptr [ %incdec.ptr60, %for.body54 ], [ %call14, %for.cond51.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.3293, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %q.3292, metadata !1166, metadata !DIExpression()), !dbg !1199
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %q.3292, i64 0, i32 3, !dbg !1258
  %12 = load i16, ptr %opacity, align 2, !dbg !1258, !tbaa !944
  %red55 = getelementptr inbounds %struct._PixelPacket, ptr %q.3292, i64 0, i32 2, !dbg !1258
  store i16 %12, ptr %red55, align 2, !dbg !1258, !tbaa !842
  %green57 = getelementptr inbounds %struct._PixelPacket, ptr %q.3292, i64 0, i32 1, !dbg !1260
  store i16 %12, ptr %green57, align 2, !dbg !1260, !tbaa !876
  store i16 %12, ptr %q.3292, align 2, !dbg !1261, !tbaa !910
  %incdec.ptr60 = getelementptr inbounds %struct._PixelPacket, ptr %q.3292, i64 1, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %incdec.ptr60, metadata !1166, metadata !DIExpression()), !dbg !1199
  %inc62 = add nuw nsw i64 %x.3293, 1, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !1167, metadata !DIExpression()), !dbg !1199
  %exitcond316.not = icmp eq i64 %inc62, %5, !dbg !1217
  br i1 %exitcond316.not, label %sw.epilog, label %for.body54, !dbg !1221, !llvm.loop !1264

sw.bb64:                                          ; preds = %if.end17
  %13 = load i32, ptr %image, align 8, !dbg !1266, !tbaa !1269
  %cmp65.not = icmp eq i32 %13, 2, !dbg !1270
  br i1 %cmp65.not, label %if.end68, label %land.lhs.true, !dbg !1271

land.lhs.true:                                    ; preds = %sw.bb64
  %14 = load i32, ptr %colorspace, align 4, !dbg !1272, !tbaa !773
  %cmp66.not = icmp eq i32 %14, 12, !dbg !1273
  br i1 %cmp66.not, label %if.end68, label %sw.epilog, !dbg !1274

if.end68:                                         ; preds = %land.lhs.true, %sw.bb64
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1199
  %15 = load i64, ptr %columns, align 8, !tbaa !741
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1166, metadata !DIExpression()), !dbg !1199
  %cmp71286 = icmp sgt i64 %15, 0, !dbg !1275
  br i1 %cmp71286, label %for.body72.lr.ph, label %sw.epilog, !dbg !1278

for.body72.lr.ph:                                 ; preds = %if.end68
  %cmp73 = icmp eq ptr %call18, null
  br i1 %cmp73, label %for.body72.us, label %for.body72, !dbg !1279

for.body72.us:                                    ; preds = %for.body72.lr.ph, %for.body72.us
  %x.4289.us = phi i64 [ %inc101.us, %for.body72.us ], [ 0, %for.body72.lr.ph ]
  %q.4287.us = phi ptr [ %incdec.ptr99.us, %for.body72.us ], [ %call14, %for.body72.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.4289.us, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %q.4287.us, metadata !1166, metadata !DIExpression()), !dbg !1199
  %red76.c.us = getelementptr inbounds %struct._PixelPacket, ptr %q.4287.us, i64 0, i32 2, !dbg !1279
  store i16 0, ptr %red76.c.us, align 2, !dbg !1279, !tbaa !842
  %green87273.us = getelementptr inbounds %struct._PixelPacket, ptr %q.4287.us, i64 0, i32 1, !dbg !1281
  store i16 0, ptr %green87273.us, align 2, !dbg !1281, !tbaa !876
  store i16 0, ptr %q.4287.us, align 2, !dbg !1282, !tbaa !910
  %incdec.ptr99.us = getelementptr inbounds %struct._PixelPacket, ptr %q.4287.us, i64 1, !dbg !1283
  call void @llvm.dbg.value(metadata ptr %incdec.ptr99.us, metadata !1166, metadata !DIExpression()), !dbg !1199
  %inc101.us = add nuw nsw i64 %x.4289.us, 1, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %inc101.us, metadata !1167, metadata !DIExpression()), !dbg !1199
  %exitcond315.not = icmp eq i64 %inc101.us, %15, !dbg !1275
  br i1 %exitcond315.not, label %sw.epilog, label %for.body72.us, !dbg !1278, !llvm.loop !1285

for.body72:                                       ; preds = %for.body72.lr.ph, %for.body72
  %x.4289 = phi i64 [ %inc101, %for.body72 ], [ 0, %for.body72.lr.ph ]
  %q.4287 = phi ptr [ %incdec.ptr99, %for.body72 ], [ %call14, %for.body72.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.4289, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %q.4287, metadata !1166, metadata !DIExpression()), !dbg !1199
  %add.ptr = getelementptr inbounds i16, ptr %call18, i64 %x.4289, !dbg !1279
  %16 = load i16, ptr %add.ptr, align 2, !dbg !1279, !tbaa !983
  %red76 = getelementptr inbounds %struct._PixelPacket, ptr %q.4287, i64 0, i32 2, !dbg !1279
  store i16 %16, ptr %red76, align 2, !dbg !1279, !tbaa !842
  %17 = load i16, ptr %add.ptr, align 2, !dbg !1281, !tbaa !983
  %green87 = getelementptr inbounds %struct._PixelPacket, ptr %q.4287, i64 0, i32 1, !dbg !1281
  store i16 %17, ptr %green87, align 2, !dbg !1281, !tbaa !876
  %18 = load i16, ptr %add.ptr, align 2, !dbg !1282, !tbaa !983
  store i16 %18, ptr %q.4287, align 2, !dbg !1282, !tbaa !910
  %incdec.ptr99 = getelementptr inbounds %struct._PixelPacket, ptr %q.4287, i64 1, !dbg !1283
  call void @llvm.dbg.value(metadata ptr %incdec.ptr99, metadata !1166, metadata !DIExpression()), !dbg !1199
  %inc101 = add nuw nsw i64 %x.4289, 1, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %inc101, metadata !1167, metadata !DIExpression()), !dbg !1199
  %exitcond314.not = icmp eq i64 %inc101, %15, !dbg !1275
  br i1 %exitcond314.not, label %sw.epilog, label %for.body72, !dbg !1278, !llvm.loop !1285

for.body108:                                      ; preds = %for.cond104.preheader, %for.body108
  %x.5285 = phi i64 [ %inc125, %for.body108 ], [ 0, %for.cond104.preheader ]
  %q.5284 = phi ptr [ %incdec.ptr123, %for.body108 ], [ %call14, %for.cond104.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.5285, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %q.5284, metadata !1166, metadata !DIExpression()), !dbg !1199
  %opacity109 = getelementptr inbounds %struct._PixelPacket, ptr %q.5284, i64 0, i32 3, !dbg !1287
  %19 = load i16, ptr %opacity109, align 2, !dbg !1287, !tbaa !944
  %20 = xor i16 %19, -1, !dbg !1287
  %red112 = getelementptr inbounds %struct._PixelPacket, ptr %q.5284, i64 0, i32 2, !dbg !1287
  store i16 %20, ptr %red112, align 2, !dbg !1287, !tbaa !842
  %green117 = getelementptr inbounds %struct._PixelPacket, ptr %q.5284, i64 0, i32 1, !dbg !1289
  store i16 %20, ptr %green117, align 2, !dbg !1289, !tbaa !876
  store i16 %20, ptr %q.5284, align 2, !dbg !1290, !tbaa !910
  %incdec.ptr123 = getelementptr inbounds %struct._PixelPacket, ptr %q.5284, i64 1, !dbg !1291
  call void @llvm.dbg.value(metadata ptr %incdec.ptr123, metadata !1166, metadata !DIExpression()), !dbg !1199
  %inc125 = add nuw nsw i64 %x.5285, 1, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %inc125, metadata !1167, metadata !DIExpression()), !dbg !1199
  %exitcond.not = icmp eq i64 %inc125, %4, !dbg !1212
  br i1 %exitcond.not, label %sw.epilog, label %for.body108, !dbg !1216, !llvm.loop !1293

for.body132:                                      ; preds = %for.cond128.preheader, %ClampToQuantum.exit
  %x.6282 = phi i64 [ %inc141, %ClampToQuantum.exit ], [ 0, %for.cond128.preheader ]
  %q.6281 = phi ptr [ %incdec.ptr139, %ClampToQuantum.exit ], [ %call14, %for.cond128.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.6282, metadata !1167, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %q.6281, metadata !1166, metadata !DIExpression()), !dbg !1199
  %call133 = call float @GetPixelIntensity(ptr noundef nonnull %image, ptr noundef nonnull %q.6281) #7, !dbg !1295
  call void @llvm.dbg.value(metadata float %call133, metadata !825, metadata !DIExpression()), !dbg !1297
  %cmp.i = fcmp ugt float %call133, 0.000000e+00, !dbg !1299
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1300

if.end.i:                                         ; preds = %for.body132
  %cmp1.i = fcmp ult float %call133, 6.553500e+04, !dbg !1301
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1302

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %call133, 5.000000e-01, !dbg !1303
  %conv.i = fptoui float %add.i to i16, !dbg !1304
  br label %ClampToQuantum.exit, !dbg !1305

ClampToQuantum.exit:                              ; preds = %for.body132, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %for.body132 ], [ -1, %if.end.i ], !dbg !1297
  %21 = xor i16 %retval.0.i, -1, !dbg !1295
  %opacity138 = getelementptr inbounds %struct._PixelPacket, ptr %q.6281, i64 0, i32 3, !dbg !1295
  store i16 %21, ptr %opacity138, align 2, !dbg !1295, !tbaa !944
  %incdec.ptr139 = getelementptr inbounds %struct._PixelPacket, ptr %q.6281, i64 1, !dbg !1306
  call void @llvm.dbg.value(metadata ptr %incdec.ptr139, metadata !1166, metadata !DIExpression()), !dbg !1199
  %inc141 = add nuw nsw i64 %x.6282, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %inc141, metadata !1167, metadata !DIExpression()), !dbg !1199
  %22 = load i64, ptr %columns, align 8, !dbg !1205, !tbaa !741
  %cmp130 = icmp slt i64 %inc141, %22, !dbg !1210
  br i1 %cmp130, label %for.body132, label %sw.epilog, !dbg !1211, !llvm.loop !1308

sw.epilog:                                        ; preds = %ClampToQuantum.exit, %for.body108, %for.body72, %for.body72.us, %for.body54, %for.body41, %for.body28, %for.body22, %for.cond128.preheader, %for.cond104.preheader, %if.end68, %for.cond51.preheader, %for.cond38.preheader, %for.cond25.preheader, %for.cond19.preheader, %if.end17, %land.lhs.true
  %call143 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call9, ptr noundef nonnull %exception8) #7, !dbg !1310
  %cmp144 = icmp ne i32 %call143, 0, !dbg !1312
  %spec.select = zext i1 %cmp144 to i32, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1158, metadata !DIExpression()), !dbg !1171
  %23 = load ptr, ptr %progress_monitor, align 8, !dbg !1314, !tbaa !995
  %cmp148.not = icmp eq ptr %23, null, !dbg !1315
  br i1 %cmp148.not, label %cleanup, label %SetImageProgress.exit, !dbg !1316

SetImageProgress.exit:                            ; preds = %sw.epilog
  %inc151 = add nsw i64 %progress.0305, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %inc151, metadata !1159, metadata !DIExpression()), !dbg !1171
  %24 = load i64, ptr %rows, align 8, !dbg !1318, !tbaa !746
  call void @llvm.dbg.value(metadata ptr %image, metadata !1000, metadata !DIExpression()) #6, !dbg !1319
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !1006, metadata !DIExpression()) #6, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %progress.0305, metadata !1007, metadata !DIExpression()) #6, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %24, metadata !1008, metadata !DIExpression()) #6, !dbg !1319
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #6, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1009, metadata !DIExpression()) #6, !dbg !1322
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i) #6, !dbg !1323
  %25 = load ptr, ptr %progress_monitor, align 8, !dbg !1324, !tbaa !995
  %26 = load ptr, ptr %client_data.i, align 8, !dbg !1325, !tbaa !1017
  %call4.i = call i32 %25(ptr noundef nonnull %message.i, i64 noundef %progress.0305, i64 noundef %24, ptr noundef %26) #6, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #6, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1168, metadata !DIExpression()), !dbg !1328
  %cmp154 = icmp eq i32 %call4.i, 0, !dbg !1329
  %spec.select268 = select i1 %cmp154, i32 0, i32 %spec.select, !dbg !1331
  call void @llvm.dbg.value(metadata i32 %spec.select268, metadata !1158, metadata !DIExpression()), !dbg !1171
  br label %cleanup, !dbg !1332

cleanup:                                          ; preds = %sw.epilog, %SetImageProgress.exit, %if.end13, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end13 ], [ %spec.select268, %SetImageProgress.exit ], [ %spec.select, %sw.epilog ], !dbg !1171
  %progress.2 = phi i64 [ %progress.0305, %for.body ], [ %progress.0305, %if.end13 ], [ %inc151, %SetImageProgress.exit ], [ %progress.0305, %sw.epilog ], !dbg !1171
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1159, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1158, metadata !DIExpression()), !dbg !1171
  %inc162 = add nuw nsw i64 %y.0306, 1, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %inc162, metadata !1160, metadata !DIExpression()), !dbg !1171
  %27 = load i64, ptr %rows, align 8, !dbg !1191, !tbaa !746
  %cmp10 = icmp slt i64 %inc162, %27, !dbg !1192
  br i1 %cmp10, label %for.body, label %for.end163, !dbg !1193, !llvm.loop !1334

for.end163:                                       ; preds = %cleanup, %if.end7
  %status.0.lcssa = phi i32 [ 1, %if.end7 ], [ %status.4, %cleanup ], !dbg !1336
  %call164 = call ptr @DestroyCacheView(ptr noundef %call9) #6, !dbg !1337
  call void @llvm.dbg.value(metadata ptr %call164, metadata !1156, metadata !DIExpression()), !dbg !1171
  br i1 %cmp5, label %if.end169, label %if.then167, !dbg !1338

if.then167:                                       ; preds = %for.end163
  %matte168 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1339
  store i32 0, ptr %matte168, align 8, !dbg !1341, !tbaa !793
  br label %if.end169, !dbg !1342

if.end169:                                        ; preds = %if.then167, %for.end163
  %call170 = call i32 @SetImageColorspace(ptr noundef nonnull %image, i32 noundef 2) #6, !dbg !1343
  br label %cleanup171, !dbg !1344

cleanup171:                                       ; preds = %if.end, %if.end169
  %retval.0 = phi i32 [ %status.0.lcssa, %if.end169 ], [ 0, %if.end ], !dbg !1171
  ret i32 %retval.0, !dbg !1345
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SeparateImages(ptr noundef %image, i32 noundef %channel, ptr noundef %exception) local_unnamed_addr #0 !dbg !1346 {
entry:
  %images = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1348, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1349, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1350, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %images) #6, !dbg !1354
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1355
  %0 = load i32, ptr %debug, align 8, !dbg !1355, !tbaa !711
  %cmp.not = icmp eq i32 %0, 0, !dbg !1357
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1358

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1359
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 575, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #6, !dbg !1360
  br label %if.end, !dbg !1361

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @NewImageList() #6, !dbg !1362
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1351, metadata !DIExpression()), !dbg !1353
  store ptr %call1, ptr %images, align 8, !dbg !1363, !tbaa !1364
  %and = and i32 %channel, 1, !dbg !1365
  %cmp2.not = icmp eq i32 %and, 0, !dbg !1367
  br i1 %cmp2.not, label %if.end6, label %if.then3, !dbg !1368

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #6, !dbg !1369
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1352, metadata !DIExpression()), !dbg !1353
  %call5 = tail call i32 @SeparateImageChannel(ptr noundef %call4, i32 noundef 1), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %images, metadata !1351, metadata !DIExpression(DW_OP_deref)), !dbg !1353
  call void @AppendImageToList(ptr noundef nonnull %images, ptr noundef %call4) #6, !dbg !1372
  br label %if.end6, !dbg !1373

if.end6:                                          ; preds = %if.then3, %if.end
  %and7 = and i32 %channel, 2, !dbg !1374
  %cmp8.not = icmp eq i32 %and7, 0, !dbg !1376
  br i1 %cmp8.not, label %if.end12, label %if.then9, !dbg !1377

if.then9:                                         ; preds = %if.end6
  %call10 = call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #6, !dbg !1378
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1352, metadata !DIExpression()), !dbg !1353
  %call11 = call i32 @SeparateImageChannel(ptr noundef %call10, i32 noundef 2), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %images, metadata !1351, metadata !DIExpression(DW_OP_deref)), !dbg !1353
  call void @AppendImageToList(ptr noundef nonnull %images, ptr noundef %call10) #6, !dbg !1381
  br label %if.end12, !dbg !1382

if.end12:                                         ; preds = %if.then9, %if.end6
  %and13 = and i32 %channel, 4, !dbg !1383
  %cmp14.not = icmp eq i32 %and13, 0, !dbg !1385
  br i1 %cmp14.not, label %if.end18, label %if.then15, !dbg !1386

if.then15:                                        ; preds = %if.end12
  %call16 = call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #6, !dbg !1387
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1352, metadata !DIExpression()), !dbg !1353
  %call17 = call i32 @SeparateImageChannel(ptr noundef %call16, i32 noundef 4), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %images, metadata !1351, metadata !DIExpression(DW_OP_deref)), !dbg !1353
  call void @AppendImageToList(ptr noundef nonnull %images, ptr noundef %call16) #6, !dbg !1390
  br label %if.end18, !dbg !1391

if.end18:                                         ; preds = %if.then15, %if.end12
  %and19 = and i32 %channel, 32, !dbg !1392
  %cmp20.not = icmp eq i32 %and19, 0, !dbg !1394
  br i1 %cmp20.not, label %if.end25, label %land.lhs.true, !dbg !1395

land.lhs.true:                                    ; preds = %if.end18
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1396
  %1 = load i32, ptr %colorspace, align 4, !dbg !1396, !tbaa !773
  %cmp21 = icmp eq i32 %1, 12, !dbg !1397
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !1398

if.then22:                                        ; preds = %land.lhs.true
  %call23 = call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #6, !dbg !1399
  call void @llvm.dbg.value(metadata ptr %call23, metadata !1352, metadata !DIExpression()), !dbg !1353
  %call24 = call i32 @SeparateImageChannel(ptr noundef %call23, i32 noundef 32), !dbg !1401
  call void @llvm.dbg.value(metadata ptr %images, metadata !1351, metadata !DIExpression(DW_OP_deref)), !dbg !1353
  call void @AppendImageToList(ptr noundef nonnull %images, ptr noundef %call23) #6, !dbg !1402
  br label %if.end25, !dbg !1403

if.end25:                                         ; preds = %if.then22, %land.lhs.true, %if.end18
  %and26 = and i32 %channel, 8, !dbg !1404
  %cmp27.not = icmp eq i32 %and26, 0, !dbg !1406
  br i1 %cmp27.not, label %if.end31, label %if.then28, !dbg !1407

if.then28:                                        ; preds = %if.end25
  %call29 = call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #6, !dbg !1408
  call void @llvm.dbg.value(metadata ptr %call29, metadata !1352, metadata !DIExpression()), !dbg !1353
  %call30 = call i32 @SeparateImageChannel(ptr noundef %call29, i32 noundef 64), !dbg !1410
  call void @llvm.dbg.value(metadata ptr %images, metadata !1351, metadata !DIExpression(DW_OP_deref)), !dbg !1353
  call void @AppendImageToList(ptr noundef nonnull %images, ptr noundef %call29) #6, !dbg !1411
  br label %if.end31, !dbg !1412

if.end31:                                         ; preds = %if.then28, %if.end25
  %2 = load ptr, ptr %images, align 8, !dbg !1413, !tbaa !1364
  call void @llvm.dbg.value(metadata ptr %2, metadata !1351, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %images) #6, !dbg !1414
  ret ptr %2, !dbg !1415
}

declare !dbg !1416 ptr @NewImageList() local_unnamed_addr #3

declare !dbg !1419 void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageAlphaChannel(ptr noundef %image, i32 noundef %alpha_type) local_unnamed_addr #0 !dbg !1423 {
entry:
  %background = alloca %struct._MagickPixelPacket, align 8
  %background79 = alloca %struct._MagickPixelPacket, align 8
  %background93 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1429, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %alpha_type, metadata !1430, metadata !DIExpression()), !dbg !1483
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1484
  %0 = load i32, ptr %debug, align 8, !dbg !1484, !tbaa !711
  %cmp.not = icmp eq i32 %0, 0, !dbg !1486
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1487

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 647, ptr noundef nonnull @.str.6) #6, !dbg !1488
  br label %if.end, !dbg !1489

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !1431, metadata !DIExpression()), !dbg !1483
  switch i32 %alpha_type, label %if.end256 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb73
    i32 9, label %sw.bb73
    i32 4, label %sw.bb83
    i32 5, label %sw.bb85
    i32 12, label %sw.bb88
    i32 11, label %sw.bb88
    i32 7, label %sw.bb242
    i32 6, label %sw.bb242
    i32 8, label %sw.bb244
    i32 10, label %sw.bb251
  ], !dbg !1490

sw.bb:                                            ; preds = %if.end
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1491
  store i32 1, ptr %matte, align 8, !dbg !1493, !tbaa !793
  br label %if.end256, !dbg !1494

sw.bb1:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %background) #6, !dbg !1495
  call void @llvm.dbg.declare(metadata ptr %background, metadata !1438, metadata !DIExpression()), !dbg !1496
  %matte3 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1497
  %1 = load i32, ptr %matte3, align 8, !dbg !1497, !tbaa !793
  %cmp4 = icmp eq i32 %1, 0, !dbg !1499
  br i1 %cmp4, label %cleanup65.thread, label %if.end6, !dbg !1500

if.end6:                                          ; preds = %sw.bb1
  %call7 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #6, !dbg !1501
  %cmp8 = icmp eq i32 %call7, 0, !dbg !1503
  br i1 %cmp8, label %cleanup65.thread, label %if.end10, !dbg !1504

if.end10:                                         ; preds = %if.end6
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %background) #6, !dbg !1505
  %background_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !1506
  call void @llvm.dbg.value(metadata ptr undef, metadata !1507, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata ptr %background_color, metadata !1514, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata ptr null, metadata !1515, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata ptr %background, metadata !1516, metadata !DIExpression()), !dbg !1517
  %red.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 2, !dbg !1519
  %2 = load i16, ptr %red.i, align 2, !dbg !1519, !tbaa !842
  %conv.i = uitofp i16 %2 to float, !dbg !1520
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 5, !dbg !1521
  store float %conv.i, ptr %red1.i, align 8, !dbg !1522, !tbaa !1523
  %green.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 1, !dbg !1526
  %3 = load i16, ptr %green.i, align 2, !dbg !1526, !tbaa !876
  %conv2.i = uitofp i16 %3 to float, !dbg !1527
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 6, !dbg !1528
  store float %conv2.i, ptr %green3.i, align 4, !dbg !1529, !tbaa !1530
  %4 = load i16, ptr %background_color, align 2, !dbg !1531, !tbaa !910
  %conv4.i = uitofp i16 %4 to float, !dbg !1532
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 7, !dbg !1533
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1534, !tbaa !1535
  %opacity.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 3, !dbg !1536
  %5 = load i16, ptr %opacity.i, align 2, !dbg !1536, !tbaa !944
  %conv6.i = uitofp i16 %5 to float, !dbg !1537
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 8, !dbg !1538
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !1539, !tbaa !1540
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1541
  %6 = load i32, ptr %colorspace, align 4, !dbg !1541, !tbaa !773
  %cmp11 = icmp eq i32 %6, 12, !dbg !1543
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1544

if.then12:                                        ; preds = %if.end10
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %background), !dbg !1545
  %.pre540 = load float, ptr %red1.i, align 8, !dbg !1546, !tbaa !1523
  br label %if.end13, !dbg !1545

if.end13:                                         ; preds = %if.then12, %if.end10
  %7 = phi float [ %.pre540, %if.then12 ], [ %conv.i, %if.end10 ], !dbg !1546
  call void @llvm.dbg.value(metadata i16 0, metadata !1436, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata ptr %image, metadata !1553, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata ptr %background, metadata !1554, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata ptr undef, metadata !1555, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata ptr undef, metadata !1556, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata float %7, metadata !825, metadata !DIExpression()), !dbg !1560
  %cmp.i.i = fcmp ugt float %7, 0.000000e+00, !dbg !1562
  br i1 %cmp.i.i, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !1563

if.end.i.i:                                       ; preds = %if.end13
  %cmp1.i.i = fcmp ult float %7, 6.553500e+04, !dbg !1564
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !1565

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %7, 5.000000e-01, !dbg !1566
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !1567
  br label %ClampToQuantum.exit.i, !dbg !1568

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %if.end13
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %if.end13 ], [ -1, %if.end.i.i ], !dbg !1560
  call void @llvm.dbg.value(metadata i16 %retval.0.i.i, metadata !1452, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !1558
  %8 = load float, ptr %green3.i, align 4, !dbg !1569, !tbaa !1530
  call void @llvm.dbg.value(metadata float %8, metadata !825, metadata !DIExpression()), !dbg !1570
  %cmp.i23.i = fcmp ugt float %8, 0.000000e+00, !dbg !1572
  br i1 %cmp.i23.i, label %if.end.i25.i, label %ClampToQuantum.exit30.i, !dbg !1573

if.end.i25.i:                                     ; preds = %ClampToQuantum.exit.i
  %cmp1.i24.i = fcmp ult float %8, 6.553500e+04, !dbg !1574
  br i1 %cmp1.i24.i, label %if.end3.i28.i, label %ClampToQuantum.exit30.i, !dbg !1575

if.end3.i28.i:                                    ; preds = %if.end.i25.i
  %add.i26.i = fadd float %8, 5.000000e-01, !dbg !1576
  %conv.i27.i = fptoui float %add.i26.i to i16, !dbg !1577
  br label %ClampToQuantum.exit30.i, !dbg !1578

ClampToQuantum.exit30.i:                          ; preds = %if.end3.i28.i, %if.end.i25.i, %ClampToQuantum.exit.i
  %retval.0.i29.i = phi i16 [ %conv.i27.i, %if.end3.i28.i ], [ 0, %ClampToQuantum.exit.i ], [ -1, %if.end.i25.i ], !dbg !1570
  call void @llvm.dbg.value(metadata i16 %retval.0.i29.i, metadata !1452, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !1558
  %9 = load float, ptr %blue5.i, align 8, !dbg !1579, !tbaa !1535
  call void @llvm.dbg.value(metadata float %9, metadata !825, metadata !DIExpression()), !dbg !1580
  %cmp.i31.i = fcmp ugt float %9, 0.000000e+00, !dbg !1582
  br i1 %cmp.i31.i, label %if.end.i33.i, label %ClampToQuantum.exit38.i, !dbg !1583

if.end.i33.i:                                     ; preds = %ClampToQuantum.exit30.i
  %cmp1.i32.i = fcmp ult float %9, 6.553500e+04, !dbg !1584
  br i1 %cmp1.i32.i, label %if.end3.i36.i, label %ClampToQuantum.exit38.i, !dbg !1585

if.end3.i36.i:                                    ; preds = %if.end.i33.i
  %add.i34.i = fadd float %9, 5.000000e-01, !dbg !1586
  %conv.i35.i = fptoui float %add.i34.i to i16, !dbg !1587
  br label %ClampToQuantum.exit38.i, !dbg !1588

ClampToQuantum.exit38.i:                          ; preds = %if.end3.i36.i, %if.end.i33.i, %ClampToQuantum.exit30.i
  %retval.0.i37.i = phi i16 [ %conv.i35.i, %if.end3.i36.i ], [ 0, %ClampToQuantum.exit30.i ], [ -1, %if.end.i33.i ], !dbg !1580
  call void @llvm.dbg.value(metadata i16 %retval.0.i37.i, metadata !1452, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !1558
  call void @llvm.dbg.value(metadata float undef, metadata !825, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i16 undef, metadata !1452, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1558
  %10 = load i32, ptr %colorspace, align 4, !dbg !1591, !tbaa !773
  %cmp.i = icmp eq i32 %10, 12, !dbg !1593
  br i1 %cmp.i, label %if.then10.i, label %lor.lhs.false.i, !dbg !1594

lor.lhs.false.i:                                  ; preds = %ClampToQuantum.exit38.i
  %11 = load i32, ptr %image, align 8, !dbg !1595, !tbaa !1269
  %cmp8.i = icmp eq i32 %11, 2, !dbg !1596
  br i1 %cmp8.i, label %if.then10.i, label %SetPixelPacket.exit, !dbg !1597

if.then10.i:                                      ; preds = %ClampToQuantum.exit38.i, %lor.lhs.false.i
  %index11.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 9, !dbg !1598
  %12 = load float, ptr %index11.i, align 8, !dbg !1598, !tbaa !1601
  call void @llvm.dbg.value(metadata float %12, metadata !825, metadata !DIExpression()), !dbg !1602
  %cmp.i47.i = fcmp ugt float %12, 0.000000e+00, !dbg !1604
  br i1 %cmp.i47.i, label %if.end.i49.i, label %SetPixelPacket.exit, !dbg !1605

if.end.i49.i:                                     ; preds = %if.then10.i
  %cmp1.i48.i = fcmp ult float %12, 6.553500e+04, !dbg !1606
  br i1 %cmp1.i48.i, label %if.end3.i52.i, label %SetPixelPacket.exit, !dbg !1607

if.end3.i52.i:                                    ; preds = %if.end.i49.i
  %add.i50.i = fadd float %12, 5.000000e-01, !dbg !1608
  %conv.i51.i = fptoui float %add.i50.i to i16, !dbg !1609
  br label %SetPixelPacket.exit, !dbg !1610

SetPixelPacket.exit:                              ; preds = %if.then10.i, %if.end.i49.i, %if.end3.i52.i, %lor.lhs.false.i
  %index.0 = phi i16 [ 0, %lor.lhs.false.i ], [ %conv.i51.i, %if.end3.i52.i ], [ 0, %if.then10.i ], [ -1, %if.end.i49.i ], !dbg !1558
  call void @llvm.dbg.value(metadata i32 1, metadata !1437, metadata !DIExpression()), !dbg !1558
  %exception14 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1611
  call void @llvm.dbg.value(metadata ptr %exception14, metadata !1435, metadata !DIExpression()), !dbg !1558
  %call15 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception14) #6, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1432, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1558
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !1437, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !1453, metadata !DIExpression()), !dbg !1558
  %13 = load i64, ptr %rows, align 8, !dbg !1613, !tbaa !746
  %cmp16528 = icmp sgt i64 %13, 0, !dbg !1614
  br i1 %cmp16528, label %for.body.lr.ph, label %cleanup65, !dbg !1615

for.body.lr.ph:                                   ; preds = %SetPixelPacket.exit
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  br label %for.body, !dbg !1615

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status2.0530 = phi i32 [ 1, %for.body.lr.ph ], [ %status2.2, %cleanup ]
  %y.0529 = phi i64 [ 0, %for.body.lr.ph ], [ %inc62, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status2.0530, metadata !1437, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %y.0529, metadata !1453, metadata !DIExpression()), !dbg !1558
  %cmp17 = icmp eq i32 %status2.0530, 0, !dbg !1616
  br i1 %cmp17, label %cleanup, label %if.end19, !dbg !1618

if.end19:                                         ; preds = %for.body
  %14 = load i64, ptr %columns, align 8, !dbg !1619, !tbaa !741
  %call20 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call15, i64 noundef 0, i64 noundef %y.0529, i64 noundef %14, i64 noundef 1, ptr noundef nonnull %exception14) #7, !dbg !1620
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1458, metadata !DIExpression()), !dbg !1621
  %cmp21 = icmp eq ptr %call20, null, !dbg !1622
  br i1 %cmp21, label %cleanup, label %for.cond24.preheader, !dbg !1624

for.cond24.preheader:                             ; preds = %if.end19
  %15 = load i64, ptr %columns, align 8, !tbaa !741
  call void @llvm.dbg.value(metadata i64 0, metadata !1459, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata ptr %call20, metadata !1458, metadata !DIExpression()), !dbg !1621
  %cmp26521 = icmp sgt i64 %15, 0, !dbg !1625
  br i1 %cmp26521, label %for.body27, label %for.end, !dbg !1628

for.body27:                                       ; preds = %for.cond24.preheader, %if.end34
  %x.0524 = phi i64 [ %inc, %if.end34 ], [ 0, %for.cond24.preheader ]
  %q.0522 = phi ptr [ %incdec.ptr, %if.end34 ], [ %call20, %for.cond24.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0524, metadata !1459, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata ptr %q.0522, metadata !1458, metadata !DIExpression()), !dbg !1621
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %q.0522, i64 0, i32 3, !dbg !1629
  %16 = load i16, ptr %opacity, align 2, !dbg !1629, !tbaa !944
  %cmp28 = icmp eq i16 %16, -1, !dbg !1632
  br i1 %cmp28, label %if.then30, label %if.end34, !dbg !1633

if.then30:                                        ; preds = %for.body27
  %red31 = getelementptr inbounds %struct._PixelPacket, ptr %q.0522, i64 0, i32 2, !dbg !1634
  store i16 %retval.0.i.i, ptr %red31, align 2, !dbg !1634, !tbaa !842
  %green32 = getelementptr inbounds %struct._PixelPacket, ptr %q.0522, i64 0, i32 1, !dbg !1636
  store i16 %retval.0.i29.i, ptr %green32, align 2, !dbg !1636, !tbaa !876
  store i16 %retval.0.i37.i, ptr %q.0522, align 2, !dbg !1637, !tbaa !910
  br label %if.end34, !dbg !1638

if.end34:                                         ; preds = %if.then30, %for.body27
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0522, i64 1, !dbg !1639
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1458, metadata !DIExpression()), !dbg !1621
  %inc = add nuw nsw i64 %x.0524, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1459, metadata !DIExpression()), !dbg !1621
  %exitcond538.not = icmp eq i64 %inc, %15, !dbg !1625
  br i1 %exitcond538.not, label %for.end, label %for.body27, !dbg !1628, !llvm.loop !1641

for.end:                                          ; preds = %if.end34, %for.cond24.preheader
  %17 = load i32, ptr %colorspace, align 4, !dbg !1643, !tbaa !773
  %cmp36 = icmp eq i32 %17, 12, !dbg !1645
  br i1 %cmp36, label %if.then38, label %if.end53, !dbg !1646

if.then38:                                        ; preds = %for.end
  %call39 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call15) #6, !dbg !1647
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1454, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i64 0, metadata !1459, metadata !DIExpression()), !dbg !1621
  %18 = load i64, ptr %columns, align 8, !tbaa !741
  %cmp42525 = icmp slt i64 %18, 1, !dbg !1649
  %cmp45.not = icmp eq ptr %call39, null
  %or.cond = select i1 %cmp42525, i1 true, i1 %cmp45.not, !dbg !1652
  br i1 %or.cond, label %if.end53, label %for.body44, !dbg !1652

for.body44:                                       ; preds = %if.then38, %for.body44
  %x.1526 = phi i64 [ %inc51, %for.body44 ], [ 0, %if.then38 ]
  call void @llvm.dbg.value(metadata i64 %x.1526, metadata !1459, metadata !DIExpression()), !dbg !1621
  %add.ptr = getelementptr inbounds i16, ptr %call39, i64 %x.1526, !dbg !1653
  call void @llvm.dbg.value(metadata i16 %index.0, metadata !1436, metadata !DIExpression()), !dbg !1558
  store i16 %index.0, ptr %add.ptr, align 2, !dbg !1653, !tbaa !983
  %inc51 = add nuw nsw i64 %x.1526, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %inc51, metadata !1459, metadata !DIExpression()), !dbg !1621
  %exitcond539.not = icmp eq i64 %inc51, %18, !dbg !1649
  br i1 %exitcond539.not, label %if.end53, label %for.body44, !dbg !1652, !llvm.loop !1657

if.end53:                                         ; preds = %for.body44, %if.then38, %for.end
  %call54 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call15, ptr noundef nonnull %exception14) #7, !dbg !1659
  %cmp55 = icmp ne i32 %call54, 0, !dbg !1661
  %spec.select = zext i1 %cmp55 to i32, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1437, metadata !DIExpression()), !dbg !1558
  br label %cleanup, !dbg !1663

cleanup:                                          ; preds = %if.end19, %for.body, %if.end53
  %status2.2 = phi i32 [ %spec.select, %if.end53 ], [ 0, %for.body ], [ 0, %if.end19 ], !dbg !1558
  call void @llvm.dbg.value(metadata i32 %status2.2, metadata !1437, metadata !DIExpression()), !dbg !1558
  %inc62 = add nuw nsw i64 %y.0529, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !1453, metadata !DIExpression()), !dbg !1558
  %19 = load i64, ptr %rows, align 8, !dbg !1613, !tbaa !746
  %cmp16 = icmp slt i64 %inc62, %19, !dbg !1614
  br i1 %cmp16, label %for.body, label %cleanup65, !dbg !1615, !llvm.loop !1665

cleanup65.thread:                                 ; preds = %sw.bb1, %if.end6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background) #6, !dbg !1667
  br label %if.end256

cleanup65:                                        ; preds = %cleanup, %SetPixelPacket.exit
  %status2.0.lcssa = phi i32 [ 1, %SetPixelPacket.exit ], [ %status2.2, %cleanup ], !dbg !1668
  %call64 = call ptr @DestroyCacheView(ptr noundef %call15) #6, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %call64, metadata !1432, metadata !DIExpression()), !dbg !1558
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background) #6, !dbg !1667
  br label %cleanup259

sw.bb73:                                          ; preds = %if.end, %if.end
  %call74 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %image, i32 noundef 128), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %call74, metadata !1431, metadata !DIExpression()), !dbg !1483
  %matte75 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1671
  store i32 1, ptr %matte75, align 8, !dbg !1672, !tbaa !793
  %cmp76 = icmp eq i32 %alpha_type, 9, !dbg !1673
  br i1 %cmp76, label %if.then78, label %sw.epilog, !dbg !1674

if.then78:                                        ; preds = %sw.bb73
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %background79) #6, !dbg !1675
  call void @llvm.dbg.declare(metadata ptr %background79, metadata !1460, metadata !DIExpression()), !dbg !1676
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %background79) #6, !dbg !1677
  %background_color80 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !1678
  call void @llvm.dbg.value(metadata ptr undef, metadata !1507, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %background_color80, metadata !1514, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr null, metadata !1515, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %background79, metadata !1516, metadata !DIExpression()), !dbg !1679
  %red.i365 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 2, !dbg !1681
  %20 = load i16, ptr %red.i365, align 2, !dbg !1681, !tbaa !842
  %conv.i366 = uitofp i16 %20 to float, !dbg !1682
  %red1.i367 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background79, i64 0, i32 5, !dbg !1683
  store float %conv.i366, ptr %red1.i367, align 8, !dbg !1684, !tbaa !1523
  %green.i368 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 1, !dbg !1685
  %21 = load i16, ptr %green.i368, align 2, !dbg !1685, !tbaa !876
  %conv2.i369 = uitofp i16 %21 to float, !dbg !1686
  %green3.i370 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background79, i64 0, i32 6, !dbg !1687
  store float %conv2.i369, ptr %green3.i370, align 4, !dbg !1688, !tbaa !1530
  %22 = load i16, ptr %background_color80, align 2, !dbg !1689, !tbaa !910
  %conv4.i371 = uitofp i16 %22 to float, !dbg !1690
  %blue5.i372 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background79, i64 0, i32 7, !dbg !1691
  store float %conv4.i371, ptr %blue5.i372, align 8, !dbg !1692, !tbaa !1535
  %opacity.i373 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 3, !dbg !1693
  %23 = load i16, ptr %opacity.i373, align 2, !dbg !1693, !tbaa !944
  %conv6.i374 = uitofp i16 %23 to float, !dbg !1694
  %opacity7.i375 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background79, i64 0, i32 8, !dbg !1695
  store float %conv6.i374, ptr %opacity7.i375, align 4, !dbg !1696, !tbaa !1540
  %call81 = call i32 @LevelColorsImage(ptr noundef nonnull %image, ptr noundef nonnull %background79, ptr noundef nonnull %background79, i32 noundef 1) #6, !dbg !1697
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background79) #6, !dbg !1698
  br label %sw.epilog, !dbg !1699

sw.bb83:                                          ; preds = %if.end
  %matte84 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1700
  store i32 0, ptr %matte84, align 8, !dbg !1702, !tbaa !793
  br label %if.end256, !dbg !1703

sw.bb85:                                          ; preds = %if.end
  %call86 = tail call i32 @SeparateImageChannel(ptr noundef nonnull %image, i32 noundef 64), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %call86, metadata !1431, metadata !DIExpression()), !dbg !1483
  %matte87 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1706
  store i32 0, ptr %matte87, align 8, !dbg !1707, !tbaa !793
  br label %sw.epilog, !dbg !1708

sw.bb88:                                          ; preds = %if.end, %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %background93) #6, !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %background93, metadata !1469, metadata !DIExpression()), !dbg !1710
  %matte96 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1711
  %24 = load i32, ptr %matte96, align 8, !dbg !1711, !tbaa !793
  %cmp97 = icmp eq i32 %24, 0, !dbg !1713
  br i1 %cmp97, label %cleanup234.thread, label %if.end100, !dbg !1714

if.end100:                                        ; preds = %sw.bb88
  %call101 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #6, !dbg !1715
  %cmp102 = icmp eq i32 %call101, 0, !dbg !1717
  br i1 %cmp102, label %cleanup234.thread, label %if.end105, !dbg !1718

if.end105:                                        ; preds = %if.end100
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %background93) #6, !dbg !1719
  %background_color106 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !1720
  call void @llvm.dbg.value(metadata ptr undef, metadata !1507, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata ptr %background_color106, metadata !1514, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata ptr null, metadata !1515, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata ptr %background93, metadata !1516, metadata !DIExpression()), !dbg !1721
  %red.i376 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 2, !dbg !1723
  %25 = load i16, ptr %red.i376, align 2, !dbg !1723, !tbaa !842
  %conv.i377 = uitofp i16 %25 to float, !dbg !1724
  %red1.i378 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background93, i64 0, i32 5, !dbg !1725
  store float %conv.i377, ptr %red1.i378, align 8, !dbg !1726, !tbaa !1523
  %green.i379 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 1, !dbg !1727
  %26 = load i16, ptr %green.i379, align 2, !dbg !1727, !tbaa !876
  %conv2.i380 = uitofp i16 %26 to float, !dbg !1728
  %green3.i381 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background93, i64 0, i32 6, !dbg !1729
  store float %conv2.i380, ptr %green3.i381, align 4, !dbg !1730, !tbaa !1530
  %27 = load i16, ptr %background_color106, align 2, !dbg !1731, !tbaa !910
  %conv4.i382 = uitofp i16 %27 to float, !dbg !1732
  %blue5.i383 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background93, i64 0, i32 7, !dbg !1733
  store float %conv4.i382, ptr %blue5.i383, align 8, !dbg !1734, !tbaa !1535
  %opacity.i384 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 3, !dbg !1735
  %28 = load i16, ptr %opacity.i384, align 2, !dbg !1735, !tbaa !944
  %conv6.i385 = uitofp i16 %28 to float, !dbg !1736
  %opacity7.i386 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background93, i64 0, i32 8, !dbg !1737
  store float %conv6.i385, ptr %opacity7.i386, align 4, !dbg !1738, !tbaa !1540
  %colorspace107 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1739
  %29 = load i32, ptr %colorspace107, align 4, !dbg !1739, !tbaa !773
  %cmp108 = icmp eq i32 %29, 12, !dbg !1741
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !1742

if.then110:                                       ; preds = %if.end105
  call void @llvm.dbg.value(metadata ptr %background93, metadata !1743, metadata !DIExpression()) #6, !dbg !1755
  %colorspace.i387 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background93, i64 0, i32 1, !dbg !1757
  %30 = load i32, ptr %colorspace.i387, align 4, !dbg !1757, !tbaa !1759
  %cmp.not.i = icmp eq i32 %30, 13, !dbg !1760
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i393, !dbg !1761

if.then.i393:                                     ; preds = %if.then110
  %conv.i388 = uitofp i16 %25 to double, !dbg !1762
  %mul.i = fmul double %conv.i388, 0x3EF0001000100010, !dbg !1764
  %conv2.i389 = fptrunc double %mul.i to float, !dbg !1765
  call void @llvm.dbg.value(metadata float %conv2.i389, metadata !1753, metadata !DIExpression()) #6, !dbg !1755
  %conv4.i391 = uitofp i16 %26 to double, !dbg !1766
  %mul5.i = fmul double %conv4.i391, 0x3EF0001000100010, !dbg !1767
  %conv6.i392 = fptrunc double %mul5.i to float, !dbg !1768
  call void @llvm.dbg.value(metadata float %conv6.i392, metadata !1751, metadata !DIExpression()) #6, !dbg !1755
  %conv8.i = uitofp i16 %27 to double, !dbg !1769
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !1770
  %conv10.i = fptrunc double %mul9.i to float, !dbg !1771
  call void @llvm.dbg.value(metadata float %conv10.i, metadata !1749, metadata !DIExpression()) #6, !dbg !1755
  br label %if.end.i, !dbg !1772

if.else.i:                                        ; preds = %if.then110
  %call.i = call float @DecodePixelGamma(float noundef %conv.i377) #7, !dbg !1773
  call void @llvm.dbg.value(metadata float %call.i, metadata !1753, metadata !DIExpression()) #6, !dbg !1755
  %31 = load float, ptr %green3.i381, align 4, !dbg !1775, !tbaa !1530
  %call13.i = call float @DecodePixelGamma(float noundef %31) #7, !dbg !1776
  call void @llvm.dbg.value(metadata float %call13.i, metadata !1751, metadata !DIExpression()) #6, !dbg !1755
  %32 = load float, ptr %blue5.i383, align 8, !dbg !1777, !tbaa !1535
  %call15.i = call float @DecodePixelGamma(float noundef %32) #7, !dbg !1778
  call void @llvm.dbg.value(metadata float %call15.i, metadata !1749, metadata !DIExpression()) #6, !dbg !1755
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i393
  %blue.0.i = phi float [ %conv10.i, %if.then.i393 ], [ %call15.i, %if.else.i ], !dbg !1779
  %green.0.i = phi float [ %conv6.i392, %if.then.i393 ], [ %call13.i, %if.else.i ], !dbg !1779
  %red.0.i = phi float [ %conv2.i389, %if.then.i393 ], [ %call.i, %if.else.i ], !dbg !1779
  call void @llvm.dbg.value(metadata float %red.0.i, metadata !1753, metadata !DIExpression()) #6, !dbg !1755
  call void @llvm.dbg.value(metadata float %green.0.i, metadata !1751, metadata !DIExpression()) #6, !dbg !1755
  call void @llvm.dbg.value(metadata float %blue.0.i, metadata !1749, metadata !DIExpression()) #6, !dbg !1755
  %33 = call float @llvm.fabs.f32(float %red.0.i) #6, !dbg !1780
  %34 = fpext float %33 to double, !dbg !1780
  %cmp17.i = fcmp olt double %34, 1.000000e-15, !dbg !1782
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end27.i, !dbg !1783

land.lhs.true.i:                                  ; preds = %if.end.i
  %35 = call float @llvm.fabs.f32(float %green.0.i) #6, !dbg !1784
  %36 = fpext float %35 to double, !dbg !1784
  %cmp20.i = fcmp olt double %36, 1.000000e-15, !dbg !1785
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end27.i, !dbg !1786

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %37 = call float @llvm.fabs.f32(float %blue.0.i) #6, !dbg !1787
  %38 = fpext float %37 to double, !dbg !1787
  %cmp24.i = fcmp olt double %38, 1.000000e-15, !dbg !1788
  br i1 %cmp24.i, label %land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge, label %if.end27.i, !dbg !1789

land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge: ; preds = %land.lhs.true22.i
  %.pre.pre = load float, ptr %red1.i378, align 8, !dbg !1790, !tbaa !1523
  br label %ConvertRGBToCMYK.exit, !dbg !1789

if.end27.i:                                       ; preds = %land.lhs.true22.i, %land.lhs.true.i, %if.end.i
  %conv29.i = fsub float 1.000000e+00, %red.0.i, !dbg !1792
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !1750, metadata !DIExpression()) #6, !dbg !1755
  %conv32.i = fsub float 1.000000e+00, %green.0.i, !dbg !1793
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !1752, metadata !DIExpression()) #6, !dbg !1755
  %conv35.i = fsub float 1.000000e+00, %blue.0.i, !dbg !1794
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !1754, metadata !DIExpression()) #6, !dbg !1755
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !1748, metadata !DIExpression()) #6, !dbg !1755
  %cmp36.i = fcmp olt float %conv32.i, %conv29.i, !dbg !1795
  br i1 %cmp36.i, label %if.then38.i, label %if.end39.i, !dbg !1797

if.then38.i:                                      ; preds = %if.end27.i
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !1748, metadata !DIExpression()) #6, !dbg !1755
  br label %if.end39.i, !dbg !1798

if.end39.i:                                       ; preds = %if.then38.i, %if.end27.i
  %black.0.i = phi float [ %conv32.i, %if.then38.i ], [ %conv29.i, %if.end27.i ], !dbg !1755
  call void @llvm.dbg.value(metadata float %black.0.i, metadata !1748, metadata !DIExpression()) #6, !dbg !1755
  %cmp40.i = fcmp olt float %conv35.i, %black.0.i, !dbg !1799
  br i1 %cmp40.i, label %if.then42.i, label %if.end43.i, !dbg !1801

if.then42.i:                                      ; preds = %if.end39.i
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !1748, metadata !DIExpression()) #6, !dbg !1755
  br label %if.end43.i, !dbg !1802

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i
  %black.1.i = phi float [ %conv35.i, %if.then42.i ], [ %black.0.i, %if.end39.i ], !dbg !1755
  call void @llvm.dbg.value(metadata float %black.1.i, metadata !1748, metadata !DIExpression()) #6, !dbg !1755
  %sub44.i = fsub float %conv29.i, %black.1.i, !dbg !1803
  %conv45.i = fpext float %sub44.i to double, !dbg !1804
  %conv46.i = fpext float %black.1.i to double, !dbg !1805
  %sub47.i = fsub double 1.000000e+00, %conv46.i, !dbg !1806
  %div.i = fdiv double %conv45.i, %sub47.i, !dbg !1807
  %conv48.i = fptrunc double %div.i to float, !dbg !1808
  call void @llvm.dbg.value(metadata float %conv48.i, metadata !1750, metadata !DIExpression()) #6, !dbg !1755
  %sub49.i = fsub float %conv32.i, %black.1.i, !dbg !1809
  %conv50.i = fpext float %sub49.i to double, !dbg !1810
  %div53.i = fdiv double %conv50.i, %sub47.i, !dbg !1811
  %conv54.i = fptrunc double %div53.i to float, !dbg !1812
  call void @llvm.dbg.value(metadata float %conv54.i, metadata !1752, metadata !DIExpression()) #6, !dbg !1755
  %sub55.i = fsub float %conv35.i, %black.1.i, !dbg !1813
  %conv56.i = fpext float %sub55.i to double, !dbg !1814
  %div59.i = fdiv double %conv56.i, %sub47.i, !dbg !1815
  %conv60.i = fptrunc double %div59.i to float, !dbg !1816
  call void @llvm.dbg.value(metadata float %conv60.i, metadata !1754, metadata !DIExpression()) #6, !dbg !1755
  store i32 12, ptr %colorspace.i387, align 4, !dbg !1817, !tbaa !1759
  %mul62.i = fmul float %conv48.i, 6.553500e+04, !dbg !1818
  store float %mul62.i, ptr %red1.i378, align 8, !dbg !1819, !tbaa !1523
  %mul64.i = fmul float %conv54.i, 6.553500e+04, !dbg !1820
  store float %mul64.i, ptr %green3.i381, align 4, !dbg !1821, !tbaa !1530
  %mul66.i = fmul float %conv60.i, 6.553500e+04, !dbg !1822
  store float %mul66.i, ptr %blue5.i383, align 8, !dbg !1823, !tbaa !1535
  %mul68.i = fmul float %black.1.i, 6.553500e+04, !dbg !1824
  br label %ConvertRGBToCMYK.exit, !dbg !1825

ConvertRGBToCMYK.exit:                            ; preds = %land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge, %if.end43.i
  %.pre = phi float [ %mul62.i, %if.end43.i ], [ %.pre.pre, %land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge ], !dbg !1790
  %mul68.sink.i = phi float [ %mul68.i, %if.end43.i ], [ 6.553500e+04, %land.lhs.true22.i.ConvertRGBToCMYK.exit_crit_edge ]
  %index69.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background93, i64 0, i32 9, !dbg !1755
  store float %mul68.sink.i, ptr %index69.i, align 8, !dbg !1755, !tbaa !1601
  br label %if.end111, !dbg !1826

if.end111:                                        ; preds = %ConvertRGBToCMYK.exit, %if.end105
  %39 = phi float [ %.pre, %ConvertRGBToCMYK.exit ], [ %conv.i377, %if.end105 ], !dbg !1790
  call void @llvm.dbg.value(metadata i16 0, metadata !1467, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata ptr %image, metadata !1553, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata ptr %background93, metadata !1554, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata ptr undef, metadata !1555, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata ptr undef, metadata !1556, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata float %39, metadata !825, metadata !DIExpression()), !dbg !1829
  %cmp.i.i395 = fcmp ugt float %39, 0.000000e+00, !dbg !1831
  br i1 %cmp.i.i395, label %if.end.i.i397, label %ClampToQuantum.exit.i405, !dbg !1832

if.end.i.i397:                                    ; preds = %if.end111
  %cmp1.i.i396 = fcmp ult float %39, 6.553500e+04, !dbg !1833
  br i1 %cmp1.i.i396, label %if.end3.i.i400, label %ClampToQuantum.exit.i405, !dbg !1834

if.end3.i.i400:                                   ; preds = %if.end.i.i397
  %add.i.i398 = fadd float %39, 5.000000e-01, !dbg !1835
  %conv.i.i399 = fptoui float %add.i.i398 to i16, !dbg !1836
  %phi.cast532 = uitofp i16 %conv.i.i399 to double, !dbg !1837
  br label %ClampToQuantum.exit.i405, !dbg !1837

ClampToQuantum.exit.i405:                         ; preds = %if.end3.i.i400, %if.end.i.i397, %if.end111
  %retval.0.i.i401 = phi double [ %phi.cast532, %if.end3.i.i400 ], [ 0.000000e+00, %if.end111 ], [ 6.553500e+04, %if.end.i.i397 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1470, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16)), !dbg !1827
  %40 = load float, ptr %green3.i381, align 4, !dbg !1838, !tbaa !1530
  call void @llvm.dbg.value(metadata float %40, metadata !825, metadata !DIExpression()), !dbg !1839
  %cmp.i23.i404 = fcmp ugt float %40, 0.000000e+00, !dbg !1841
  br i1 %cmp.i23.i404, label %if.end.i25.i407, label %ClampToQuantum.exit30.i415, !dbg !1842

if.end.i25.i407:                                  ; preds = %ClampToQuantum.exit.i405
  %cmp1.i24.i406 = fcmp ult float %40, 6.553500e+04, !dbg !1843
  br i1 %cmp1.i24.i406, label %if.end3.i28.i410, label %ClampToQuantum.exit30.i415, !dbg !1844

if.end3.i28.i410:                                 ; preds = %if.end.i25.i407
  %add.i26.i408 = fadd float %40, 5.000000e-01, !dbg !1845
  %conv.i27.i409 = fptoui float %add.i26.i408 to i16, !dbg !1846
  %phi.cast533 = uitofp i16 %conv.i27.i409 to double, !dbg !1847
  br label %ClampToQuantum.exit30.i415, !dbg !1847

ClampToQuantum.exit30.i415:                       ; preds = %if.end3.i28.i410, %if.end.i25.i407, %ClampToQuantum.exit.i405
  %retval.0.i29.i411 = phi double [ %phi.cast533, %if.end3.i28.i410 ], [ 0.000000e+00, %ClampToQuantum.exit.i405 ], [ 6.553500e+04, %if.end.i25.i407 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1470, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !1827
  %41 = load float, ptr %blue5.i383, align 8, !dbg !1848, !tbaa !1535
  call void @llvm.dbg.value(metadata float %41, metadata !825, metadata !DIExpression()), !dbg !1849
  %cmp.i31.i414 = fcmp ugt float %41, 0.000000e+00, !dbg !1851
  br i1 %cmp.i31.i414, label %if.end.i33.i417, label %ClampToQuantum.exit38.i424, !dbg !1852

if.end.i33.i417:                                  ; preds = %ClampToQuantum.exit30.i415
  %cmp1.i32.i416 = fcmp ult float %41, 6.553500e+04, !dbg !1853
  br i1 %cmp1.i32.i416, label %if.end3.i36.i420, label %ClampToQuantum.exit38.i424, !dbg !1854

if.end3.i36.i420:                                 ; preds = %if.end.i33.i417
  %add.i34.i418 = fadd float %41, 5.000000e-01, !dbg !1855
  %conv.i35.i419 = fptoui float %add.i34.i418 to i16, !dbg !1856
  %phi.cast534 = uitofp i16 %conv.i35.i419 to double, !dbg !1857
  br label %ClampToQuantum.exit38.i424, !dbg !1857

ClampToQuantum.exit38.i424:                       ; preds = %if.end3.i36.i420, %if.end.i33.i417, %ClampToQuantum.exit30.i415
  %retval.0.i37.i421 = phi double [ %phi.cast534, %if.end3.i36.i420 ], [ 0.000000e+00, %ClampToQuantum.exit30.i415 ], [ 6.553500e+04, %if.end.i33.i417 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1470, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 16)), !dbg !1827
  %42 = load float, ptr %opacity7.i386, align 4, !dbg !1858, !tbaa !1540
  call void @llvm.dbg.value(metadata float %42, metadata !825, metadata !DIExpression()), !dbg !1859
  %cmp.i39.i423 = fcmp ugt float %42, 0.000000e+00, !dbg !1861
  br i1 %cmp.i39.i423, label %if.end.i41.i426, label %ClampToQuantum.exit46.i434, !dbg !1862

if.end.i41.i426:                                  ; preds = %ClampToQuantum.exit38.i424
  %cmp1.i40.i425 = fcmp ult float %42, 6.553500e+04, !dbg !1863
  br i1 %cmp1.i40.i425, label %if.end3.i44.i429, label %ClampToQuantum.exit46.i434, !dbg !1864

if.end3.i44.i429:                                 ; preds = %if.end.i41.i426
  %add.i42.i427 = fadd float %42, 5.000000e-01, !dbg !1865
  %conv.i43.i428 = fptoui float %add.i42.i427 to i16, !dbg !1866
  %phi.cast = uitofp i16 %conv.i43.i428 to double, !dbg !1867
  br label %ClampToQuantum.exit46.i434, !dbg !1867

ClampToQuantum.exit46.i434:                       ; preds = %if.end3.i44.i429, %if.end.i41.i426, %ClampToQuantum.exit38.i424
  %retval.0.i45.i430 = phi double [ %phi.cast, %if.end3.i44.i429 ], [ 0.000000e+00, %ClampToQuantum.exit38.i424 ], [ 6.553500e+04, %if.end.i41.i426 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1470, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1827
  %43 = load i32, ptr %colorspace107, align 4, !dbg !1868, !tbaa !773
  %cmp.i433 = icmp eq i32 %43, 12, !dbg !1869
  br i1 %cmp.i433, label %if.then10.i440, label %lor.lhs.false.i436, !dbg !1870

lor.lhs.false.i436:                               ; preds = %ClampToQuantum.exit46.i434
  %44 = load i32, ptr %image, align 8, !dbg !1871, !tbaa !1269
  %cmp8.i435 = icmp eq i32 %44, 2, !dbg !1872
  br i1 %cmp8.i435, label %if.then10.i440, label %SetPixelPacket.exit448, !dbg !1873

if.then10.i440:                                   ; preds = %ClampToQuantum.exit46.i434, %lor.lhs.false.i436
  %index11.i438 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background93, i64 0, i32 9, !dbg !1874
  %45 = load float, ptr %index11.i438, align 8, !dbg !1874, !tbaa !1601
  call void @llvm.dbg.value(metadata float %45, metadata !825, metadata !DIExpression()), !dbg !1875
  %cmp.i47.i439 = fcmp ugt float %45, 0.000000e+00, !dbg !1877
  br i1 %cmp.i47.i439, label %if.end.i49.i442, label %SetPixelPacket.exit448, !dbg !1878

if.end.i49.i442:                                  ; preds = %if.then10.i440
  %cmp1.i48.i441 = fcmp ult float %45, 6.553500e+04, !dbg !1879
  br i1 %cmp1.i48.i441, label %if.end3.i52.i445, label %SetPixelPacket.exit448, !dbg !1880

if.end3.i52.i445:                                 ; preds = %if.end.i49.i442
  %add.i50.i443 = fadd float %45, 5.000000e-01, !dbg !1881
  %conv.i51.i444 = fptoui float %add.i50.i443 to i16, !dbg !1882
  br label %SetPixelPacket.exit448, !dbg !1883

SetPixelPacket.exit448:                           ; preds = %if.then10.i440, %if.end.i49.i442, %if.end3.i52.i445, %lor.lhs.false.i436
  %index91.0 = phi i16 [ 0, %lor.lhs.false.i436 ], [ %conv.i51.i444, %if.end3.i52.i445 ], [ 0, %if.then10.i440 ], [ -1, %if.end.i49.i442 ], !dbg !1827
  call void @llvm.dbg.value(metadata i32 1, metadata !1468, metadata !DIExpression()), !dbg !1827
  %exception112 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1884
  call void @llvm.dbg.value(metadata ptr %exception112, metadata !1466, metadata !DIExpression()), !dbg !1827
  %call113 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception112) #6, !dbg !1885
  call void @llvm.dbg.value(metadata ptr %call113, metadata !1464, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 0, metadata !1471, metadata !DIExpression()), !dbg !1827
  %rows115 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %46 = load i64, ptr %rows115, align 8, !dbg !1886, !tbaa !746
  %cmp116518 = icmp sgt i64 %46, 0, !dbg !1887
  br i1 %cmp116518, label %for.body118.lr.ph, label %cleanup234, !dbg !1888

for.body118.lr.ph:                                ; preds = %SetPixelPacket.exit448
  %columns126 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %47 = call double @llvm.fmuladd.f64(double %retval.0.i45.i430, double 0xBEF0001000100010, double 1.000000e+00) #6, !dbg !1483
  %mul5.i457 = fmul double %retval.0.i.i401, %47
  %mul6.i = fmul double %mul5.i457, 0x3EF0001000100010
  %mul5.i467 = fmul double %retval.0.i29.i411, %47
  %mul6.i468 = fmul double %mul5.i467, 0x3EF0001000100010
  %mul5.i483 = fmul double %retval.0.i37.i421, %47
  %mul6.i484 = fmul double %mul5.i483, 0x3EF0001000100010
  br label %for.body118, !dbg !1888

for.body118:                                      ; preds = %for.body118.lr.ph, %cleanup225
  %y95.0520 = phi i64 [ 0, %for.body118.lr.ph ], [ %inc231, %cleanup225 ]
  %status92.0519 = phi i32 [ 1, %for.body118.lr.ph ], [ %status92.2, %cleanup225 ]
  call void @llvm.dbg.value(metadata i64 %y95.0520, metadata !1471, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 %status92.0519, metadata !1468, metadata !DIExpression()), !dbg !1827
  %cmp122 = icmp eq i32 %status92.0519, 0, !dbg !1889
  br i1 %cmp122, label %cleanup225, label %if.end125, !dbg !1891

if.end125:                                        ; preds = %for.body118
  %48 = load i64, ptr %columns126, align 8, !dbg !1892, !tbaa !741
  %call127 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call113, i64 noundef 0, i64 noundef %y95.0520, i64 noundef %48, i64 noundef 1, ptr noundef nonnull %exception112) #7, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %call127, metadata !1476, metadata !DIExpression()), !dbg !1894
  %cmp128 = icmp eq ptr %call127, null, !dbg !1895
  br i1 %cmp128, label %cleanup225, label %for.cond132.preheader, !dbg !1897

for.cond132.preheader:                            ; preds = %if.end125
  %49 = load i64, ptr %columns126, align 8, !tbaa !741
  call void @llvm.dbg.value(metadata i64 0, metadata !1477, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr %call127, metadata !1476, metadata !DIExpression()), !dbg !1894
  %cmp134512 = icmp sgt i64 %49, 0, !dbg !1898
  br i1 %cmp134512, label %for.body136, label %for.end199, !dbg !1899

for.body136:                                      ; preds = %for.cond132.preheader, %ClampToQuantum.exit502
  %x121.0514 = phi i64 [ %inc198, %ClampToQuantum.exit502 ], [ 0, %for.cond132.preheader ]
  %q120.0513 = phi ptr [ %incdec.ptr196, %ClampToQuantum.exit502 ], [ %call127, %for.cond132.preheader ]
  call void @llvm.dbg.value(metadata i64 %x121.0514, metadata !1477, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr %q120.0513, metadata !1476, metadata !DIExpression()), !dbg !1894
  %opacity138 = getelementptr inbounds %struct._PixelPacket, ptr %q120.0513, i64 0, i32 3, !dbg !1900
  %50 = load i16, ptr %opacity138, align 2, !dbg !1900, !tbaa !944
  %conv140 = uitofp i16 %50 to double, !dbg !1901
  %neg = fmul double %conv140, 0xBDF0002000300040, !dbg !1902
  %51 = call double @llvm.fmuladd.f64(double %neg, double %retval.0.i45.i430, double 1.000000e+00), !dbg !1902
  call void @llvm.dbg.value(metadata double %51, metadata !1478, metadata !DIExpression()), !dbg !1903
  %cmp145 = fcmp olt double %51, 0.000000e+00, !dbg !1904
  br i1 %cmp145, label %if.then147, label %if.end148, !dbg !1906

if.then147:                                       ; preds = %for.body136
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1478, metadata !DIExpression()), !dbg !1903
  br label %if.end148, !dbg !1907

if.end148:                                        ; preds = %if.then147, %for.body136
  %gamma.0 = phi double [ 0.000000e+00, %if.then147 ], [ %51, %for.body136 ], !dbg !1903
  call void @llvm.dbg.value(metadata double %gamma.0, metadata !1478, metadata !DIExpression()), !dbg !1903
  %sub = fsub double 1.000000e+00, %gamma.0, !dbg !1908
  %mul149 = fmul double %sub, 6.553500e+04, !dbg !1909
  call void @llvm.dbg.value(metadata double %mul149, metadata !1482, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata double %gamma.0, metadata !1910, metadata !DIExpression()), !dbg !1917
  %cmp.i449 = fcmp olt double %gamma.0, 0.000000e+00, !dbg !1919
  %cond.i = select i1 %cmp.i449, double -1.000000e+00, double 1.000000e+00, !dbg !1920
  call void @llvm.dbg.value(metadata double %cond.i, metadata !1916, metadata !DIExpression()), !dbg !1917
  %mul.i450 = fmul double %gamma.0, %cond.i, !dbg !1921
  %cmp1.i = fcmp ult double %mul.i450, 1.000000e-15, !dbg !1923
  br i1 %cmp1.i, label %if.end.i453, label %if.then.i452, !dbg !1924

if.then.i452:                                     ; preds = %if.end148
  %div.i451 = fdiv double 1.000000e+00, %gamma.0, !dbg !1925
  br label %PerceptibleReciprocal.exit, !dbg !1926

if.end.i453:                                      ; preds = %if.end148
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !1927
  br label %PerceptibleReciprocal.exit, !dbg !1928

PerceptibleReciprocal.exit:                       ; preds = %if.then.i452, %if.end.i453
  %retval.0.i = phi double [ %div.i451, %if.then.i452 ], [ %div2.i, %if.end.i453 ], !dbg !1917
  call void @llvm.dbg.value(metadata double %retval.0.i, metadata !1478, metadata !DIExpression()), !dbg !1903
  %red151 = getelementptr inbounds %struct._PixelPacket, ptr %q120.0513, i64 0, i32 2, !dbg !1929
  %52 = load i16, ptr %red151, align 2, !dbg !1929, !tbaa !842
  call void @llvm.dbg.value(metadata float undef, metadata !1930, metadata !DIExpression()) #6, !dbg !1939
  call void @llvm.dbg.value(metadata float undef, metadata !1936, metadata !DIExpression()) #6, !dbg !1939
  call void @llvm.dbg.value(metadata float undef, metadata !1937, metadata !DIExpression()) #6, !dbg !1939
  call void @llvm.dbg.value(metadata float undef, metadata !1938, metadata !DIExpression()) #6, !dbg !1939
  %53 = call double @llvm.fmuladd.f64(double %conv140, double 0xBEF0001000100010, double 1.000000e+00) #6, !dbg !1941
  %conv1.i = uitofp i16 %52 to double, !dbg !1942
  %mul8.i = fmul double %mul6.i, %conv140, !dbg !1943
  %54 = call double @llvm.fmuladd.f64(double %53, double %conv1.i, double %mul8.i) #6, !dbg !1944
  %conv9.i = fptrunc double %54 to float, !dbg !1945
  %conv160 = fpext float %conv9.i to double, !dbg !1946
  %mul161 = fmul double %retval.0.i, %conv160, !dbg !1947
  %conv162 = fptrunc double %mul161 to float, !dbg !1948
  call void @llvm.dbg.value(metadata float %conv162, metadata !825, metadata !DIExpression()), !dbg !1949
  %cmp.i458 = fcmp ugt float %conv162, 0.000000e+00, !dbg !1951
  br i1 %cmp.i458, label %if.end.i460, label %ClampToQuantum.exit, !dbg !1952

if.end.i460:                                      ; preds = %PerceptibleReciprocal.exit
  %cmp1.i459 = fcmp ult float %conv162, 6.553500e+04, !dbg !1953
  br i1 %cmp1.i459, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1954

if.end3.i:                                        ; preds = %if.end.i460
  %add.i = fadd float %conv162, 5.000000e-01, !dbg !1955
  %conv.i461 = fptoui float %add.i to i16, !dbg !1956
  br label %ClampToQuantum.exit, !dbg !1957

ClampToQuantum.exit:                              ; preds = %PerceptibleReciprocal.exit, %if.end.i460, %if.end3.i
  %retval.0.i462 = phi i16 [ %conv.i461, %if.end3.i ], [ 0, %PerceptibleReciprocal.exit ], [ -1, %if.end.i460 ], !dbg !1949
  store i16 %retval.0.i462, ptr %red151, align 2, !dbg !1958, !tbaa !842
  %green165 = getelementptr inbounds %struct._PixelPacket, ptr %q120.0513, i64 0, i32 1, !dbg !1959
  %55 = load i16, ptr %green165, align 2, !dbg !1959, !tbaa !876
  call void @llvm.dbg.value(metadata float undef, metadata !1930, metadata !DIExpression()) #6, !dbg !1960
  call void @llvm.dbg.value(metadata float undef, metadata !1936, metadata !DIExpression()) #6, !dbg !1960
  call void @llvm.dbg.value(metadata float undef, metadata !1937, metadata !DIExpression()) #6, !dbg !1960
  call void @llvm.dbg.value(metadata float undef, metadata !1938, metadata !DIExpression()) #6, !dbg !1960
  %conv1.i464 = uitofp i16 %55 to double, !dbg !1962
  %mul8.i469 = fmul double %mul6.i468, %conv140, !dbg !1963
  %56 = call double @llvm.fmuladd.f64(double %53, double %conv1.i464, double %mul8.i469) #6, !dbg !1964
  %conv9.i470 = fptrunc double %56 to float, !dbg !1965
  %conv174 = fpext float %conv9.i470 to double, !dbg !1966
  %mul175 = fmul double %retval.0.i, %conv174, !dbg !1967
  %conv176 = fptrunc double %mul175 to float, !dbg !1968
  call void @llvm.dbg.value(metadata float %conv176, metadata !825, metadata !DIExpression()), !dbg !1969
  %cmp.i471 = fcmp ugt float %conv176, 0.000000e+00, !dbg !1971
  br i1 %cmp.i471, label %if.end.i473, label %ClampToQuantum.exit478, !dbg !1972

if.end.i473:                                      ; preds = %ClampToQuantum.exit
  %cmp1.i472 = fcmp ult float %conv176, 6.553500e+04, !dbg !1973
  br i1 %cmp1.i472, label %if.end3.i476, label %ClampToQuantum.exit478, !dbg !1974

if.end3.i476:                                     ; preds = %if.end.i473
  %add.i474 = fadd float %conv176, 5.000000e-01, !dbg !1975
  %conv.i475 = fptoui float %add.i474 to i16, !dbg !1976
  br label %ClampToQuantum.exit478, !dbg !1977

ClampToQuantum.exit478:                           ; preds = %ClampToQuantum.exit, %if.end.i473, %if.end3.i476
  %retval.0.i477 = phi i16 [ %conv.i475, %if.end3.i476 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i473 ], !dbg !1969
  store i16 %retval.0.i477, ptr %green165, align 2, !dbg !1978, !tbaa !876
  %57 = load i16, ptr %q120.0513, align 2, !dbg !1979, !tbaa !910
  call void @llvm.dbg.value(metadata float undef, metadata !1930, metadata !DIExpression()) #6, !dbg !1980
  call void @llvm.dbg.value(metadata float undef, metadata !1936, metadata !DIExpression()) #6, !dbg !1980
  call void @llvm.dbg.value(metadata float undef, metadata !1937, metadata !DIExpression()) #6, !dbg !1980
  call void @llvm.dbg.value(metadata float undef, metadata !1938, metadata !DIExpression()) #6, !dbg !1980
  %conv1.i480 = uitofp i16 %57 to double, !dbg !1982
  %mul8.i485 = fmul double %mul6.i484, %conv140, !dbg !1983
  %58 = call double @llvm.fmuladd.f64(double %53, double %conv1.i480, double %mul8.i485) #6, !dbg !1984
  %conv9.i486 = fptrunc double %58 to float, !dbg !1985
  %conv188 = fpext float %conv9.i486 to double, !dbg !1986
  %mul189 = fmul double %retval.0.i, %conv188, !dbg !1987
  %conv190 = fptrunc double %mul189 to float, !dbg !1988
  call void @llvm.dbg.value(metadata float %conv190, metadata !825, metadata !DIExpression()), !dbg !1989
  %cmp.i487 = fcmp ugt float %conv190, 0.000000e+00, !dbg !1991
  br i1 %cmp.i487, label %if.end.i489, label %ClampToQuantum.exit494, !dbg !1992

if.end.i489:                                      ; preds = %ClampToQuantum.exit478
  %cmp1.i488 = fcmp ult float %conv190, 6.553500e+04, !dbg !1993
  br i1 %cmp1.i488, label %if.end3.i492, label %ClampToQuantum.exit494, !dbg !1994

if.end3.i492:                                     ; preds = %if.end.i489
  %add.i490 = fadd float %conv190, 5.000000e-01, !dbg !1995
  %conv.i491 = fptoui float %add.i490 to i16, !dbg !1996
  br label %ClampToQuantum.exit494, !dbg !1997

ClampToQuantum.exit494:                           ; preds = %ClampToQuantum.exit478, %if.end.i489, %if.end3.i492
  %retval.0.i493 = phi i16 [ %conv.i491, %if.end3.i492 ], [ 0, %ClampToQuantum.exit478 ], [ -1, %if.end.i489 ], !dbg !1989
  store i16 %retval.0.i493, ptr %q120.0513, align 2, !dbg !1998, !tbaa !910
  %conv193 = fptrunc double %mul149 to float, !dbg !1999
  call void @llvm.dbg.value(metadata float %conv193, metadata !825, metadata !DIExpression()), !dbg !2000
  %cmp.i495 = fcmp ugt float %conv193, 0.000000e+00, !dbg !2002
  br i1 %cmp.i495, label %if.end.i497, label %ClampToQuantum.exit502, !dbg !2003

if.end.i497:                                      ; preds = %ClampToQuantum.exit494
  %cmp1.i496 = fcmp ult float %conv193, 6.553500e+04, !dbg !2004
  br i1 %cmp1.i496, label %if.end3.i500, label %ClampToQuantum.exit502, !dbg !2005

if.end3.i500:                                     ; preds = %if.end.i497
  %add.i498 = fadd float %conv193, 5.000000e-01, !dbg !2006
  %conv.i499 = fptoui float %add.i498 to i16, !dbg !2007
  br label %ClampToQuantum.exit502, !dbg !2008

ClampToQuantum.exit502:                           ; preds = %ClampToQuantum.exit494, %if.end.i497, %if.end3.i500
  %retval.0.i501 = phi i16 [ %conv.i499, %if.end3.i500 ], [ 0, %ClampToQuantum.exit494 ], [ -1, %if.end.i497 ], !dbg !2000
  store i16 %retval.0.i501, ptr %opacity138, align 2, !dbg !2009, !tbaa !944
  %incdec.ptr196 = getelementptr inbounds %struct._PixelPacket, ptr %q120.0513, i64 1, !dbg !2010
  call void @llvm.dbg.value(metadata ptr %incdec.ptr196, metadata !1476, metadata !DIExpression()), !dbg !1894
  %inc198 = add nuw nsw i64 %x121.0514, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %inc198, metadata !1477, metadata !DIExpression()), !dbg !1894
  %exitcond.not = icmp eq i64 %inc198, %49, !dbg !1898
  br i1 %exitcond.not, label %for.end199, label %for.body136, !dbg !1899, !llvm.loop !2012

for.end199:                                       ; preds = %ClampToQuantum.exit502, %for.cond132.preheader
  %59 = load i32, ptr %colorspace107, align 4, !dbg !2014, !tbaa !773
  %cmp201 = icmp eq i32 %59, 12, !dbg !2016
  br i1 %cmp201, label %if.then203, label %if.end219, !dbg !2017

if.then203:                                       ; preds = %for.end199
  %call204 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call113) #6, !dbg !2018
  call void @llvm.dbg.value(metadata ptr %call204, metadata !1472, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 0, metadata !1477, metadata !DIExpression()), !dbg !1894
  %60 = load i64, ptr %columns126, align 8, !tbaa !741
  %cmp207515 = icmp slt i64 %60, 1, !dbg !2020
  %cmp211.not = icmp eq ptr %call204, null
  %or.cond542 = select i1 %cmp207515, i1 true, i1 %cmp211.not, !dbg !2023
  br i1 %or.cond542, label %if.end219, label %for.body209, !dbg !2023

for.body209:                                      ; preds = %if.then203, %for.body209
  %x121.1516 = phi i64 [ %inc217, %for.body209 ], [ 0, %if.then203 ]
  call void @llvm.dbg.value(metadata i64 %x121.1516, metadata !1477, metadata !DIExpression()), !dbg !1894
  %add.ptr210 = getelementptr inbounds i16, ptr %call204, i64 %x121.1516, !dbg !2024
  call void @llvm.dbg.value(metadata i16 %index91.0, metadata !1467, metadata !DIExpression()), !dbg !1827
  store i16 %index91.0, ptr %add.ptr210, align 2, !dbg !2024, !tbaa !983
  %inc217 = add nuw nsw i64 %x121.1516, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %inc217, metadata !1477, metadata !DIExpression()), !dbg !1894
  %exitcond537.not = icmp eq i64 %inc217, %60, !dbg !2020
  br i1 %exitcond537.not, label %if.end219, label %for.body209, !dbg !2023, !llvm.loop !2028

if.end219:                                        ; preds = %for.body209, %if.then203, %for.end199
  %call220 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call113, ptr noundef nonnull %exception112) #7, !dbg !2030
  %cmp221 = icmp ne i32 %call220, 0, !dbg !2032
  %spec.select358 = zext i1 %cmp221 to i32, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %spec.select358, metadata !1468, metadata !DIExpression()), !dbg !1827
  br label %cleanup225, !dbg !2034

cleanup225:                                       ; preds = %if.end125, %for.body118, %if.end219
  %status92.2 = phi i32 [ %spec.select358, %if.end219 ], [ 0, %for.body118 ], [ 0, %if.end125 ], !dbg !1827
  call void @llvm.dbg.value(metadata i32 %status92.2, metadata !1468, metadata !DIExpression()), !dbg !1827
  %inc231 = add nuw nsw i64 %y95.0520, 1, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %inc231, metadata !1471, metadata !DIExpression()), !dbg !1827
  %61 = load i64, ptr %rows115, align 8, !dbg !1886, !tbaa !746
  %cmp116 = icmp slt i64 %inc231, %61, !dbg !1887
  br i1 %cmp116, label %for.body118, label %cleanup234, !dbg !1888, !llvm.loop !2036

cleanup234.thread:                                ; preds = %sw.bb88, %if.end100
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background93) #6, !dbg !2038
  br label %if.end256

cleanup234:                                       ; preds = %cleanup225, %SetPixelPacket.exit448
  %status92.0.lcssa = phi i32 [ 1, %SetPixelPacket.exit448 ], [ %status92.2, %cleanup225 ], !dbg !2039
  %call233 = call ptr @DestroyCacheView(ptr noundef %call113) #6, !dbg !2040
  call void @llvm.dbg.value(metadata ptr %call233, metadata !1464, metadata !DIExpression()), !dbg !1827
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background93) #6, !dbg !2038
  br label %cleanup259

sw.bb242:                                         ; preds = %if.end, %if.end
  %call243 = tail call i32 @SetImageOpacity(ptr noundef nonnull %image, i16 noundef zeroext 0) #6, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %call243, metadata !1431, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog, !dbg !2043

sw.bb244:                                         ; preds = %if.end
  %matte245 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2044
  %62 = load i32, ptr %matte245, align 8, !dbg !2044, !tbaa !793
  %cmp246 = icmp eq i32 %62, 0, !dbg !2047
  br i1 %cmp246, label %if.then248, label %if.end256, !dbg !2048

if.then248:                                       ; preds = %sw.bb244
  %call249 = tail call i32 @SetImageOpacity(ptr noundef nonnull %image, i16 noundef zeroext 0) #6, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %call249, metadata !1431, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog, !dbg !2050

sw.bb251:                                         ; preds = %if.end
  %call252 = tail call i32 @SetImageOpacity(ptr noundef nonnull %image, i16 noundef zeroext -1) #6, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %call252, metadata !1431, metadata !DIExpression()), !dbg !1483
  br label %sw.epilog, !dbg !2053

sw.epilog:                                        ; preds = %if.then248, %sw.bb73, %if.then78, %sw.bb251, %sw.bb242, %sw.bb85
  %status.0 = phi i32 [ %call252, %sw.bb251 ], [ %call249, %if.then248 ], [ %call243, %sw.bb242 ], [ %call86, %sw.bb85 ], [ %call74, %if.then78 ], [ %call74, %sw.bb73 ], !dbg !1483
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !1431, metadata !DIExpression()), !dbg !1483
  %cmp253 = icmp eq i32 %status.0, 0, !dbg !2054
  br i1 %cmp253, label %cleanup259, label %if.end256, !dbg !2056

if.end256:                                        ; preds = %cleanup234.thread, %cleanup65.thread, %sw.bb, %sw.bb83, %sw.bb244, %if.end, %sw.epilog
  %exception257 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2057
  %call258 = call i32 @SyncImagePixelCache(ptr noundef nonnull %image, ptr noundef nonnull %exception257) #6, !dbg !2058
  br label %cleanup259, !dbg !2059

cleanup259:                                       ; preds = %cleanup234, %cleanup65, %sw.epilog, %if.end256
  %retval.2 = phi i32 [ %call258, %if.end256 ], [ %status92.0.lcssa, %cleanup234 ], [ %status2.0.lcssa, %cleanup65 ], [ 0, %sw.epilog ]
  ret i32 %retval.2, !dbg !2060
}

declare !dbg !2061 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %pixel) unnamed_addr #5 !dbg !1744 {
entry:
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1743, metadata !DIExpression()), !dbg !2064
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1, !dbg !2065
  %0 = load i32, ptr %colorspace, align 4, !dbg !2065, !tbaa !1759
  %cmp.not = icmp eq i32 %0, 13, !dbg !2066
  %red11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !2067
  %1 = load float, ptr %red11, align 8, !dbg !2067, !tbaa !1523
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !2068

if.then:                                          ; preds = %entry
  %conv = fpext float %1 to double, !dbg !2069
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !2070
  %conv2 = fptrunc double %mul to float, !dbg !2071
  call void @llvm.dbg.value(metadata float %conv2, metadata !1753, metadata !DIExpression()), !dbg !2064
  %green3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !2072
  %2 = load float, ptr %green3, align 4, !dbg !2072, !tbaa !1530
  %conv4 = fpext float %2 to double, !dbg !2073
  %mul5 = fmul double %conv4, 0x3EF0001000100010, !dbg !2074
  %conv6 = fptrunc double %mul5 to float, !dbg !2075
  call void @llvm.dbg.value(metadata float %conv6, metadata !1751, metadata !DIExpression()), !dbg !2064
  %blue7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !2076
  %3 = load float, ptr %blue7, align 8, !dbg !2076, !tbaa !1535
  %conv8 = fpext float %3 to double, !dbg !2077
  %mul9 = fmul double %conv8, 0x3EF0001000100010, !dbg !2078
  %conv10 = fptrunc double %mul9 to float, !dbg !2079
  call void @llvm.dbg.value(metadata float %conv10, metadata !1749, metadata !DIExpression()), !dbg !2064
  br label %if.end, !dbg !2080

if.else:                                          ; preds = %entry
  %call = tail call float @DecodePixelGamma(float noundef %1) #7, !dbg !2081
  call void @llvm.dbg.value(metadata float %call, metadata !1753, metadata !DIExpression()), !dbg !2064
  %green12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !2082
  %4 = load float, ptr %green12, align 4, !dbg !2082, !tbaa !1530
  %call13 = tail call float @DecodePixelGamma(float noundef %4) #7, !dbg !2083
  call void @llvm.dbg.value(metadata float %call13, metadata !1751, metadata !DIExpression()), !dbg !2064
  %blue14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !2084
  %5 = load float, ptr %blue14, align 8, !dbg !2084, !tbaa !1535
  %call15 = tail call float @DecodePixelGamma(float noundef %5) #7, !dbg !2085
  call void @llvm.dbg.value(metadata float %call15, metadata !1749, metadata !DIExpression()), !dbg !2064
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %blue.0 = phi float [ %conv10, %if.then ], [ %call15, %if.else ], !dbg !2067
  %green.0 = phi float [ %conv6, %if.then ], [ %call13, %if.else ], !dbg !2067
  %red.0 = phi float [ %conv2, %if.then ], [ %call, %if.else ], !dbg !2067
  call void @llvm.dbg.value(metadata float %red.0, metadata !1753, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata float %green.0, metadata !1751, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata float %blue.0, metadata !1749, metadata !DIExpression()), !dbg !2064
  %6 = tail call float @llvm.fabs.f32(float %red.0), !dbg !2086
  %7 = fpext float %6 to double, !dbg !2086
  %cmp17 = fcmp olt double %7, 1.000000e-15, !dbg !2087
  br i1 %cmp17, label %land.lhs.true, label %if.end27, !dbg !2088

land.lhs.true:                                    ; preds = %if.end
  %8 = tail call float @llvm.fabs.f32(float %green.0), !dbg !2089
  %9 = fpext float %8 to double, !dbg !2089
  %cmp20 = fcmp olt double %9, 1.000000e-15, !dbg !2090
  br i1 %cmp20, label %land.lhs.true22, label %if.end27, !dbg !2091

land.lhs.true22:                                  ; preds = %land.lhs.true
  %10 = tail call float @llvm.fabs.f32(float %blue.0), !dbg !2092
  %11 = fpext float %10 to double, !dbg !2092
  %cmp24 = fcmp olt double %11, 1.000000e-15, !dbg !2093
  br i1 %cmp24, label %cleanup, label %if.end27, !dbg !2094

if.end27:                                         ; preds = %land.lhs.true22, %land.lhs.true, %if.end
  %conv29 = fsub float 1.000000e+00, %red.0, !dbg !2095
  call void @llvm.dbg.value(metadata float %conv29, metadata !1750, metadata !DIExpression()), !dbg !2064
  %conv32 = fsub float 1.000000e+00, %green.0, !dbg !2096
  call void @llvm.dbg.value(metadata float %conv32, metadata !1752, metadata !DIExpression()), !dbg !2064
  %conv35 = fsub float 1.000000e+00, %blue.0, !dbg !2097
  call void @llvm.dbg.value(metadata float %conv35, metadata !1754, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata float %conv29, metadata !1748, metadata !DIExpression()), !dbg !2064
  %cmp36 = fcmp olt float %conv32, %conv29, !dbg !2098
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !2099

if.then38:                                        ; preds = %if.end27
  call void @llvm.dbg.value(metadata float %conv32, metadata !1748, metadata !DIExpression()), !dbg !2064
  br label %if.end39, !dbg !2100

if.end39:                                         ; preds = %if.then38, %if.end27
  %black.0 = phi float [ %conv32, %if.then38 ], [ %conv29, %if.end27 ], !dbg !2064
  call void @llvm.dbg.value(metadata float %black.0, metadata !1748, metadata !DIExpression()), !dbg !2064
  %cmp40 = fcmp olt float %conv35, %black.0, !dbg !2101
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !2102

if.then42:                                        ; preds = %if.end39
  call void @llvm.dbg.value(metadata float %conv35, metadata !1748, metadata !DIExpression()), !dbg !2064
  br label %if.end43, !dbg !2103

if.end43:                                         ; preds = %if.then42, %if.end39
  %black.1 = phi float [ %conv35, %if.then42 ], [ %black.0, %if.end39 ], !dbg !2064
  call void @llvm.dbg.value(metadata float %black.1, metadata !1748, metadata !DIExpression()), !dbg !2064
  %sub44 = fsub float %conv29, %black.1, !dbg !2104
  %conv45 = fpext float %sub44 to double, !dbg !2105
  %conv46 = fpext float %black.1 to double, !dbg !2106
  %sub47 = fsub double 1.000000e+00, %conv46, !dbg !2107
  %div = fdiv double %conv45, %sub47, !dbg !2108
  %conv48 = fptrunc double %div to float, !dbg !2109
  call void @llvm.dbg.value(metadata float %conv48, metadata !1750, metadata !DIExpression()), !dbg !2064
  %sub49 = fsub float %conv32, %black.1, !dbg !2110
  %conv50 = fpext float %sub49 to double, !dbg !2111
  %div53 = fdiv double %conv50, %sub47, !dbg !2112
  %conv54 = fptrunc double %div53 to float, !dbg !2113
  call void @llvm.dbg.value(metadata float %conv54, metadata !1752, metadata !DIExpression()), !dbg !2064
  %sub55 = fsub float %conv35, %black.1, !dbg !2114
  %conv56 = fpext float %sub55 to double, !dbg !2115
  %div59 = fdiv double %conv56, %sub47, !dbg !2116
  %conv60 = fptrunc double %div59 to float, !dbg !2117
  call void @llvm.dbg.value(metadata float %conv60, metadata !1754, metadata !DIExpression()), !dbg !2064
  store i32 12, ptr %colorspace, align 4, !dbg !2118, !tbaa !1759
  %mul62 = fmul float %conv48, 6.553500e+04, !dbg !2119
  %red63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !2120
  store float %mul62, ptr %red63, align 8, !dbg !2121, !tbaa !1523
  %mul64 = fmul float %conv54, 6.553500e+04, !dbg !2122
  %green65 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !2123
  store float %mul64, ptr %green65, align 4, !dbg !2124, !tbaa !1530
  %mul66 = fmul float %conv60, 6.553500e+04, !dbg !2125
  %blue67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !2126
  store float %mul66, ptr %blue67, align 8, !dbg !2127, !tbaa !1535
  %mul68 = fmul float %black.1, 6.553500e+04, !dbg !2128
  br label %cleanup, !dbg !2129

cleanup:                                          ; preds = %land.lhs.true22, %if.end43
  %mul68.sink = phi float [ %mul68, %if.end43 ], [ 6.553500e+04, %land.lhs.true22 ]
  %index69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9, !dbg !2064
  store float %mul68.sink, ptr %index69, align 8, !dbg !2064, !tbaa !1601
  ret void, !dbg !2129
}

declare !dbg !2130 i32 @LevelColorsImage(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

declare !dbg !2134 i32 @SetImageOpacity(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare !dbg !2138 hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2142 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !2148 float @DecodePixelGamma(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!661, !662, !663, !664, !665, !666}
!llvm.ident = !{!667}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !430, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/channel.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "fa3490fc669484185103076548113b37")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !390, !415}
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
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!370 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!371 = !DIEnumerator(name: "RedChannel", value: 1)
!372 = !DIEnumerator(name: "GrayChannel", value: 1)
!373 = !DIEnumerator(name: "CyanChannel", value: 1)
!374 = !DIEnumerator(name: "GreenChannel", value: 2)
!375 = !DIEnumerator(name: "MagentaChannel", value: 2)
!376 = !DIEnumerator(name: "BlueChannel", value: 4)
!377 = !DIEnumerator(name: "YellowChannel", value: 4)
!378 = !DIEnumerator(name: "AlphaChannel", value: 8)
!379 = !DIEnumerator(name: "OpacityChannel", value: 8)
!380 = !DIEnumerator(name: "MatteChannel", value: 8)
!381 = !DIEnumerator(name: "BlackChannel", value: 32)
!382 = !DIEnumerator(name: "IndexChannel", value: 32)
!383 = !DIEnumerator(name: "CompositeChannels", value: 47)
!384 = !DIEnumerator(name: "AllChannels", value: 134217727)
!385 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!386 = !DIEnumerator(name: "RGBChannels", value: 128)
!387 = !DIEnumerator(name: "GrayChannels", value: 128)
!388 = !DIEnumerator(name: "SyncChannels", value: 256)
!389 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !391, line: 34, baseType: !5, size: 32, elements: !392)
!391 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!393 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!394 = !DIEnumerator(name: "NoEvents", value: 0)
!395 = !DIEnumerator(name: "TraceEvent", value: 1)
!396 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!397 = !DIEnumerator(name: "BlobEvent", value: 4)
!398 = !DIEnumerator(name: "CacheEvent", value: 8)
!399 = !DIEnumerator(name: "CoderEvent", value: 16)
!400 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!401 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!402 = !DIEnumerator(name: "DrawEvent", value: 128)
!403 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!404 = !DIEnumerator(name: "ImageEvent", value: 512)
!405 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!406 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!407 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!408 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!409 = !DIEnumerator(name: "TransformEvent", value: 16384)
!410 = !DIEnumerator(name: "UserEvent", value: 36864)
!411 = !DIEnumerator(name: "WandEvent", value: 65536)
!412 = !DIEnumerator(name: "X11Event", value: 131072)
!413 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!414 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!415 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 30, baseType: !5, size: 32, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!417 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!418 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!419 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!420 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!421 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!422 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!423 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!424 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!425 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!426 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!427 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!428 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!429 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!430 = !{!431, !432, !487, !496, !455, !653, !460, !655, !656, !560, !657, !469, !659}
!431 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !435)
!435 = !{!436, !438, !440, !442, !445, !447, !449, !450, !451, !452, !453, !454, !465, !466, !467, !468, !470, !484, !486, !488, !490, !493, !494, !495, !501, !502, !503, !511, !512, !513, !514, !515, !516, !518, !520, !522, !524, !526, !528, !530, !531, !532, !533, !534, !535, !536, !544, !559, !573, !574, !575, !576, !580, !584, !588, !589, !590, !591, !592, !610, !611, !613, !614, !624, !625, !627, !628, !629, !630, !631, !632, !634, !635, !636, !637, !638, !639, !640, !642, !643, !644, !645, !646, !650, !652}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !434, file: !73, line: 153, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !434, file: !73, line: 156, baseType: !439, size: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !434, file: !73, line: 159, baseType: !441, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !434, file: !73, line: 162, baseType: !443, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !444, line: 46, baseType: !431)
!444 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!445 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !434, file: !73, line: 165, baseType: !446, size: 32, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !434, file: !73, line: 168, baseType: !448, size: 32, offset: 224)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !434, file: !73, line: 169, baseType: !448, size: 32, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !434, file: !73, line: 172, baseType: !443, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !434, file: !73, line: 173, baseType: !443, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !434, file: !73, line: 174, baseType: !443, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !434, file: !73, line: 175, baseType: !443, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !434, file: !73, line: 178, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !458)
!458 = !{!459, !462, !463, !464}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !457, file: !326, line: 143, baseType: !460, size: 16)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !461)
!461 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !457, file: !326, line: 144, baseType: !460, size: 16, offset: 16)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !457, file: !326, line: 145, baseType: !460, size: 16, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !457, file: !326, line: 146, baseType: !460, size: 16, offset: 48)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !434, file: !73, line: 179, baseType: !456, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !434, file: !73, line: 180, baseType: !456, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !434, file: !73, line: 181, baseType: !456, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !434, file: !73, line: 184, baseType: !469, size: 64, offset: 832)
!469 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !434, file: !73, line: 187, baseType: !471, size: 768, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !473)
!473 = !{!474, !481, !482, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !472, file: !73, line: 124, baseType: !475, size: 192)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !477)
!477 = !{!478, !479, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !476, file: !73, line: 98, baseType: !469, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !476, file: !73, line: 99, baseType: !469, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !476, file: !73, line: 100, baseType: !469, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !472, file: !73, line: 125, baseType: !475, size: 192, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !472, file: !73, line: 126, baseType: !475, size: 192, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !472, file: !73, line: 127, baseType: !475, size: 192, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !434, file: !73, line: 190, baseType: !485, size: 32, offset: 1664)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !434, file: !73, line: 193, baseType: !487, size: 64, offset: 1728)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !434, file: !73, line: 196, baseType: !489, size: 32, offset: 1792)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !434, file: !73, line: 199, baseType: !491, size: 64, offset: 1856)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !434, file: !73, line: 200, baseType: !491, size: 64, offset: 1920)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !434, file: !73, line: 201, baseType: !491, size: 64, offset: 1984)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !434, file: !73, line: 204, baseType: !496, size: 64, offset: 2048)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !497, line: 77, baseType: !498)
!497 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !499, line: 193, baseType: !500)
!499 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!500 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !434, file: !73, line: 207, baseType: !469, size: 64, offset: 2112)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !434, file: !73, line: 208, baseType: !469, size: 64, offset: 2176)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !434, file: !73, line: 211, baseType: !504, size: 256, offset: 2240)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !505, file: !153, line: 124, baseType: !443, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !505, file: !153, line: 125, baseType: !443, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !505, file: !153, line: 128, baseType: !496, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !505, file: !153, line: 129, baseType: !496, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !434, file: !73, line: 212, baseType: !504, size: 256, offset: 2496)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !434, file: !73, line: 213, baseType: !504, size: 256, offset: 2752)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !434, file: !73, line: 216, baseType: !469, size: 64, offset: 3008)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !434, file: !73, line: 217, baseType: !469, size: 64, offset: 3072)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !434, file: !73, line: 218, baseType: !469, size: 64, offset: 3136)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !434, file: !73, line: 221, baseType: !517, size: 32, offset: 3200)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !434, file: !73, line: 224, baseType: !519, size: 32, offset: 3232)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !434, file: !73, line: 227, baseType: !521, size: 32, offset: 3264)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !434, file: !73, line: 230, baseType: !523, size: 32, offset: 3296)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !434, file: !73, line: 233, baseType: !525, size: 32, offset: 3328)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !434, file: !73, line: 236, baseType: !527, size: 32, offset: 3360)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !434, file: !73, line: 239, baseType: !529, size: 64, offset: 3392)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !434, file: !73, line: 242, baseType: !443, size: 64, offset: 3456)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !434, file: !73, line: 243, baseType: !443, size: 64, offset: 3520)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !434, file: !73, line: 246, baseType: !496, size: 64, offset: 3584)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !434, file: !73, line: 249, baseType: !443, size: 64, offset: 3648)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !434, file: !73, line: 250, baseType: !443, size: 64, offset: 3712)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !434, file: !73, line: 253, baseType: !496, size: 64, offset: 3776)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !434, file: !73, line: 256, baseType: !537, size: 192, offset: 3840)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !538, line: 68, baseType: !539)
!538 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !538, line: 62, size: 192, elements: !540)
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !539, file: !538, line: 65, baseType: !469, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !539, file: !538, line: 66, baseType: !469, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !539, file: !538, line: 67, baseType: !469, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !434, file: !73, line: 259, baseType: !545, size: 512, offset: 4032)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !547)
!547 = !{!548, !555, !556, !558}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !546, file: !247, line: 43, baseType: !549, size: 192)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !551)
!551 = !{!552, !553, !554}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !550, file: !247, line: 35, baseType: !469, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !550, file: !247, line: 36, baseType: !469, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !550, file: !247, line: 37, baseType: !469, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !546, file: !247, line: 44, baseType: !549, size: 192, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !546, file: !247, line: 47, baseType: !557, size: 32, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !546, file: !247, line: 50, baseType: !443, size: 64, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !434, file: !73, line: 262, baseType: !560, size: 64, offset: 4544)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !561, line: 26, baseType: !562)
!561 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!448, !565, !567, !570, !487}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !569)
!569 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !572)
!572 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !434, file: !73, line: 265, baseType: !487, size: 64, offset: 4608)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !434, file: !73, line: 266, baseType: !487, size: 64, offset: 4672)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !434, file: !73, line: 267, baseType: !487, size: 64, offset: 4736)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !434, file: !73, line: 270, baseType: !577, size: 64, offset: 4800)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !579)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !434, file: !73, line: 273, baseType: !581, size: 64, offset: 4864)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !583)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !434, file: !73, line: 276, baseType: !585, size: 32768, offset: 4928)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 32768, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 4096)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !434, file: !73, line: 277, baseType: !585, size: 32768, offset: 37696)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !434, file: !73, line: 278, baseType: !585, size: 32768, offset: 70464)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !434, file: !73, line: 281, baseType: !443, size: 64, offset: 103232)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !434, file: !73, line: 282, baseType: !443, size: 64, offset: 103296)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !434, file: !73, line: 285, baseType: !593, size: 448, offset: 103360)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !595)
!595 = !{!596, !598, !600, !601, !602, !603, !604, !609}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !594, file: !253, line: 105, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !594, file: !253, line: 108, baseType: !599, size: 32, offset: 32)
!599 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !594, file: !253, line: 111, baseType: !491, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !594, file: !253, line: 112, baseType: !491, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !594, file: !253, line: 115, baseType: !487, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !594, file: !253, line: 118, baseType: !448, size: 32, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !594, file: !253, line: 121, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !607, line: 26, baseType: !608)
!607 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !607, line: 25, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !594, file: !253, line: 124, baseType: !443, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !434, file: !73, line: 288, baseType: !448, size: 32, offset: 103808)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !434, file: !73, line: 291, baseType: !612, size: 64, offset: 103872)
!612 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !496)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !434, file: !73, line: 294, baseType: !605, size: 64, offset: 103936)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !434, file: !73, line: 297, baseType: !615, size: 256, offset: 104000)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !617)
!617 = !{!618, !619, !620, !623}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !89, line: 30, baseType: !491, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !616, file: !89, line: 33, baseType: !443, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !616, file: !89, line: 36, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !616, file: !89, line: 39, baseType: !443, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !434, file: !73, line: 298, baseType: !615, size: 256, offset: 104256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !434, file: !73, line: 299, baseType: !626, size: 64, offset: 104512)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !434, file: !73, line: 302, baseType: !443, size: 64, offset: 104576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !434, file: !73, line: 305, baseType: !443, size: 64, offset: 104640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !434, file: !73, line: 308, baseType: !529, size: 64, offset: 104704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !434, file: !73, line: 309, baseType: !529, size: 64, offset: 104768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !73, line: 310, baseType: !529, size: 64, offset: 104832)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !434, file: !73, line: 313, baseType: !633, size: 32, offset: 104896)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !434, file: !73, line: 316, baseType: !448, size: 32, offset: 104928)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !434, file: !73, line: 319, baseType: !456, size: 64, offset: 104960)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !434, file: !73, line: 322, baseType: !529, size: 64, offset: 105024)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !434, file: !73, line: 325, baseType: !504, size: 256, offset: 105088)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !434, file: !73, line: 328, baseType: !487, size: 64, offset: 105344)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !434, file: !73, line: 329, baseType: !487, size: 64, offset: 105408)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !73, line: 332, baseType: !641, size: 32, offset: 105472)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !434, file: !73, line: 335, baseType: !448, size: 32, offset: 105504)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !434, file: !73, line: 338, baseType: !571, size: 64, offset: 105536)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !434, file: !73, line: 341, baseType: !448, size: 32, offset: 105600)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !434, file: !73, line: 344, baseType: !443, size: 64, offset: 105664)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !434, file: !73, line: 347, baseType: !647, size: 64, offset: 105728)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !648, line: 7, baseType: !649)
!648 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !499, line: 160, baseType: !500)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !434, file: !73, line: 350, baseType: !651, size: 32, offset: 105792)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !434, file: !73, line: 353, baseType: !443, size: 64, offset: 105856)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !460)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !660)
!660 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!661 = !{i32 7, !"Dwarf Version", i32 5}
!662 = !{i32 2, !"Debug Info Version", i32 3}
!663 = !{i32 1, !"wchar_size", i32 4}
!664 = !{i32 7, !"PIC Level", i32 2}
!665 = !{i32 7, !"PIE Level", i32 2}
!666 = !{i32 7, !"uwtable", i32 2}
!667 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!668 = distinct !DISubprogram(name: "CombineImages", scope: !669, file: !669, line: 93, type: !670, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !677)
!669 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fa3490fc669484185103076548113b37")
!670 = !DISubroutineType(types: !671)
!671 = !{!432, !672, !674, !676}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !368)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!677 = !{!678, !679, !680, !681, !686, !687, !688, !689, !690, !691, !695, !696, !697, !699, !701, !702, !705}
!678 = !DILocalVariable(name: "image", arg: 1, scope: !668, file: !669, line: 93, type: !672)
!679 = !DILocalVariable(name: "channel", arg: 2, scope: !668, file: !669, line: 93, type: !674)
!680 = !DILocalVariable(name: "exception", arg: 3, scope: !668, file: !669, line: 94, type: !676)
!681 = !DILocalVariable(name: "combine_view", scope: !668, file: !669, line: 99, type: !682)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !684, line: 50, baseType: !685)
!684 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!686 = !DILocalVariable(name: "next", scope: !668, file: !669, line: 102, type: !672)
!687 = !DILocalVariable(name: "combine_image", scope: !668, file: !669, line: 105, type: !432)
!688 = !DILocalVariable(name: "status", scope: !668, file: !669, line: 108, type: !448)
!689 = !DILocalVariable(name: "progress", scope: !668, file: !669, line: 111, type: !568)
!690 = !DILocalVariable(name: "y", scope: !668, file: !669, line: 114, type: !496)
!691 = !DILocalVariable(name: "image_view", scope: !692, file: !669, line: 153, type: !682)
!692 = distinct !DILexicalBlock(scope: !693, file: !669, line: 151, column: 3)
!693 = distinct !DILexicalBlock(scope: !694, file: !669, line: 150, column: 3)
!694 = distinct !DILexicalBlock(scope: !668, file: !669, line: 150, column: 3)
!695 = !DILocalVariable(name: "next", scope: !692, file: !669, line: 156, type: !672)
!696 = !DILocalVariable(name: "pixels", scope: !692, file: !669, line: 159, type: !455)
!697 = !DILocalVariable(name: "p", scope: !692, file: !669, line: 162, type: !698)
!698 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!699 = !DILocalVariable(name: "q", scope: !692, file: !669, line: 165, type: !700)
!700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !455)
!701 = !DILocalVariable(name: "x", scope: !692, file: !669, line: 168, type: !496)
!702 = !DILocalVariable(name: "indexes", scope: !703, file: !669, line: 248, type: !655)
!703 = distinct !DILexicalBlock(scope: !704, file: !669, line: 246, column: 7)
!704 = distinct !DILexicalBlock(scope: !692, file: !669, line: 244, column: 9)
!705 = !DILocalVariable(name: "proceed", scope: !706, file: !669, line: 268, type: !448)
!706 = distinct !DILexicalBlock(scope: !707, file: !669, line: 266, column: 7)
!707 = distinct !DILexicalBlock(scope: !692, file: !669, line: 265, column: 9)
!708 = !DILocation(line: 0, scope: !668)
!709 = !DILocation(line: 121, column: 14, scope: !710)
!710 = distinct !DILexicalBlock(scope: !668, file: !669, line: 121, column: 7)
!711 = !{!712, !713, i64 12976}
!712 = !{!"_Image", !713, i64 0, !713, i64 4, !713, i64 8, !715, i64 16, !713, i64 24, !713, i64 28, !713, i64 32, !715, i64 40, !715, i64 48, !715, i64 56, !715, i64 64, !716, i64 72, !717, i64 80, !717, i64 88, !717, i64 96, !719, i64 104, !720, i64 112, !713, i64 208, !716, i64 216, !713, i64 224, !716, i64 232, !716, i64 240, !716, i64 248, !715, i64 256, !719, i64 264, !719, i64 272, !722, i64 280, !722, i64 312, !722, i64 344, !719, i64 376, !719, i64 384, !719, i64 392, !713, i64 400, !713, i64 404, !713, i64 408, !713, i64 412, !713, i64 416, !713, i64 420, !716, i64 424, !715, i64 432, !715, i64 440, !715, i64 448, !715, i64 456, !715, i64 464, !715, i64 472, !723, i64 480, !724, i64 504, !716, i64 568, !716, i64 576, !716, i64 584, !716, i64 592, !716, i64 600, !716, i64 608, !713, i64 616, !713, i64 4712, !713, i64 8808, !715, i64 12904, !715, i64 12912, !726, i64 12920, !713, i64 12976, !715, i64 12984, !716, i64 12992, !728, i64 13000, !728, i64 13032, !716, i64 13064, !715, i64 13072, !715, i64 13080, !716, i64 13088, !716, i64 13096, !716, i64 13104, !713, i64 13112, !713, i64 13116, !717, i64 13120, !716, i64 13128, !722, i64 13136, !716, i64 13168, !716, i64 13176, !713, i64 13184, !713, i64 13188, !729, i64 13192, !713, i64 13200, !715, i64 13208, !715, i64 13216, !713, i64 13224, !715, i64 13232}
!713 = !{!"omnipotent char", !714, i64 0}
!714 = !{!"Simple C/C++ TBAA"}
!715 = !{!"long", !713, i64 0}
!716 = !{!"any pointer", !713, i64 0}
!717 = !{!"_PixelPacket", !718, i64 0, !718, i64 2, !718, i64 4, !718, i64 6}
!718 = !{!"short", !713, i64 0}
!719 = !{!"double", !713, i64 0}
!720 = !{!"_ChromaticityInfo", !721, i64 0, !721, i64 24, !721, i64 48, !721, i64 72}
!721 = !{!"_PrimaryInfo", !719, i64 0, !719, i64 8, !719, i64 16}
!722 = !{!"_RectangleInfo", !715, i64 0, !715, i64 8, !715, i64 16, !715, i64 24}
!723 = !{!"_ErrorInfo", !719, i64 0, !719, i64 8, !719, i64 16}
!724 = !{!"_TimerInfo", !725, i64 0, !725, i64 24, !713, i64 48, !715, i64 56}
!725 = !{!"_Timer", !719, i64 0, !719, i64 8, !719, i64 16}
!726 = !{!"_ExceptionInfo", !713, i64 0, !727, i64 4, !716, i64 8, !716, i64 16, !716, i64 24, !713, i64 32, !716, i64 40, !715, i64 48}
!727 = !{!"int", !713, i64 0}
!728 = !{!"_ProfileInfo", !716, i64 0, !715, i64 8, !716, i64 16, !715, i64 24}
!729 = !{!"long long", !713, i64 0}
!730 = !DILocation(line: 121, column: 20, scope: !710)
!731 = !DILocation(line: 121, column: 7, scope: !668)
!732 = !DILocation(line: 122, column: 68, scope: !710)
!733 = !DILocation(line: 122, column: 12, scope: !710)
!734 = !DILocation(line: 122, column: 5, scope: !710)
!735 = !DILocation(line: 125, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !668, file: !669, line: 125, column: 3)
!737 = !DILocation(line: 127, column: 16, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !669, line: 127, column: 9)
!739 = distinct !DILexicalBlock(scope: !740, file: !669, line: 126, column: 3)
!740 = distinct !DILexicalBlock(scope: !736, file: !669, line: 125, column: 3)
!741 = !{!712, !715, i64 40}
!742 = !DILocation(line: 127, column: 34, scope: !738)
!743 = !DILocation(line: 127, column: 24, scope: !738)
!744 = !DILocation(line: 127, column: 43, scope: !738)
!745 = !DILocation(line: 127, column: 53, scope: !738)
!746 = !{!712, !715, i64 48}
!747 = !DILocation(line: 127, column: 68, scope: !738)
!748 = !DILocation(line: 127, column: 58, scope: !738)
!749 = !DILocation(line: 127, column: 9, scope: !739)
!750 = !DILocation(line: 128, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !738, file: !669, line: 128, column: 7)
!752 = !DILocation(line: 125, column: 49, scope: !740)
!753 = !DILocation(line: 125, column: 25, scope: !740)
!754 = distinct !{!754, !735, !755, !756, !757}
!755 = !DILocation(line: 129, column: 3, scope: !736)
!756 = !{!"llvm.loop.mustprogress"}
!757 = !{!"llvm.loop.unroll.disable"}
!758 = !DILocation(line: 130, column: 17, scope: !668)
!759 = !DILocation(line: 131, column: 21, scope: !760)
!760 = distinct !DILexicalBlock(scope: !668, file: !669, line: 131, column: 7)
!761 = !DILocation(line: 131, column: 7, scope: !668)
!762 = !DILocation(line: 133, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !668, file: !669, line: 133, column: 7)
!764 = !DILocation(line: 133, column: 55, scope: !763)
!765 = !DILocation(line: 133, column: 7, scope: !668)
!766 = !DILocation(line: 135, column: 50, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !669, line: 134, column: 5)
!768 = !DILocation(line: 135, column: 7, scope: !767)
!769 = !DILocation(line: 136, column: 21, scope: !767)
!770 = !DILocation(line: 137, column: 7, scope: !767)
!771 = !DILocation(line: 139, column: 41, scope: !772)
!772 = distinct !DILexicalBlock(scope: !668, file: !669, line: 139, column: 7)
!773 = !{!712, !713, i64 4}
!774 = !DILocalVariable(name: "colorspace", arg: 1, scope: !775, file: !776, line: 110, type: !779)
!775 = distinct !DISubprogram(name: "IssRGBCompatibleColorspace", scope: !776, file: !776, line: 109, type: !777, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !780)
!776 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!777 = !DISubroutineType(types: !778)
!778 = !{!448, !779}
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!780 = !{!774}
!781 = !DILocation(line: 0, scope: !775, inlinedAt: !782)
!782 = distinct !DILocation(line: 139, column: 7, scope: !772)
!783 = !DILocation(line: 112, column: 38, scope: !784, inlinedAt: !782)
!784 = distinct !DILexicalBlock(scope: !775, file: !776, line: 112, column: 7)
!785 = !DILocation(line: 140, column: 12, scope: !772)
!786 = !DILocation(line: 140, column: 5, scope: !772)
!787 = !DILocation(line: 141, column: 16, scope: !788)
!788 = distinct !DILexicalBlock(scope: !668, file: !669, line: 141, column: 7)
!789 = !DILocation(line: 141, column: 34, scope: !788)
!790 = !DILocation(line: 141, column: 7, scope: !668)
!791 = !DILocation(line: 142, column: 20, scope: !788)
!792 = !DILocation(line: 142, column: 25, scope: !788)
!793 = !{!712, !713, i64 32}
!794 = !DILocation(line: 142, column: 5, scope: !788)
!795 = !DILocation(line: 143, column: 10, scope: !668)
!796 = !DILocation(line: 149, column: 16, scope: !668)
!797 = !DILocation(line: 150, column: 42, scope: !693)
!798 = !DILocation(line: 150, column: 15, scope: !693)
!799 = !DILocation(line: 150, column: 3, scope: !694)
!800 = !DILocation(line: 170, column: 16, scope: !801)
!801 = distinct !DILexicalBlock(scope: !692, file: !669, line: 170, column: 9)
!802 = !DILocation(line: 170, column: 9, scope: !692)
!803 = !DILocation(line: 172, column: 72, scope: !692)
!804 = !DILocation(line: 172, column: 12, scope: !692)
!805 = !DILocation(line: 0, scope: !692)
!806 = !DILocation(line: 174, column: 16, scope: !807)
!807 = distinct !DILexicalBlock(scope: !692, file: !669, line: 174, column: 9)
!808 = !DILocation(line: 174, column: 9, scope: !692)
!809 = !DILocation(line: 180, column: 39, scope: !810)
!810 = distinct !DILexicalBlock(scope: !692, file: !669, line: 180, column: 9)
!811 = !DILocation(line: 182, column: 20, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !669, line: 181, column: 7)
!813 = !DILocation(line: 183, column: 58, scope: !812)
!814 = !DILocation(line: 183, column: 11, scope: !812)
!815 = !DILocation(line: 184, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !812, file: !669, line: 184, column: 13)
!817 = !DILocation(line: 184, column: 13, scope: !812)
!818 = !DILocation(line: 187, column: 48, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !669, line: 187, column: 9)
!820 = distinct !DILexicalBlock(scope: !812, file: !669, line: 187, column: 9)
!821 = !DILocation(line: 187, column: 21, scope: !819)
!822 = !DILocation(line: 187, column: 9, scope: !820)
!823 = !DILocation(line: 189, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !669, line: 188, column: 9)
!825 = !DILocalVariable(name: "value", arg: 1, scope: !826, file: !147, line: 87, type: !829)
!826 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !827, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !830)
!827 = !DISubroutineType(types: !828)
!828 = !{!460, !829}
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!830 = !{!825}
!831 = !DILocation(line: 0, scope: !826, inlinedAt: !832)
!832 = distinct !DILocation(line: 189, column: 11, scope: !824)
!833 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !832)
!834 = distinct !DILexicalBlock(scope: !826, file: !147, line: 92, column: 7)
!835 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !832)
!836 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !832)
!837 = distinct !DILexicalBlock(scope: !826, file: !147, line: 94, column: 7)
!838 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !832)
!839 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !832)
!840 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !832)
!841 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !832)
!842 = !{!717, !718, i64 4}
!843 = !DILocation(line: 190, column: 12, scope: !824)
!844 = !DILocation(line: 191, column: 12, scope: !824)
!845 = !DILocation(line: 187, column: 58, scope: !819)
!846 = distinct !{!846, !822, !847, !756, !757}
!847 = !DILocation(line: 192, column: 9, scope: !820)
!848 = !DILocation(line: 193, column: 20, scope: !812)
!849 = !DILocation(line: 194, column: 14, scope: !812)
!850 = !DILocation(line: 195, column: 7, scope: !812)
!851 = !DILocation(line: 196, column: 41, scope: !852)
!852 = distinct !DILexicalBlock(scope: !692, file: !669, line: 196, column: 9)
!853 = !DILocation(line: 198, column: 20, scope: !854)
!854 = distinct !DILexicalBlock(scope: !852, file: !669, line: 197, column: 7)
!855 = !DILocation(line: 199, column: 58, scope: !854)
!856 = !DILocation(line: 199, column: 11, scope: !854)
!857 = !DILocation(line: 200, column: 15, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !669, line: 200, column: 13)
!859 = !DILocation(line: 200, column: 13, scope: !854)
!860 = !DILocation(line: 203, column: 48, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !669, line: 203, column: 9)
!862 = distinct !DILexicalBlock(scope: !854, file: !669, line: 203, column: 9)
!863 = !DILocation(line: 203, column: 21, scope: !861)
!864 = !DILocation(line: 203, column: 9, scope: !862)
!865 = !DILocation(line: 205, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !669, line: 204, column: 9)
!867 = !DILocation(line: 0, scope: !826, inlinedAt: !868)
!868 = distinct !DILocation(line: 205, column: 11, scope: !866)
!869 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !868)
!870 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !868)
!871 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !868)
!872 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !868)
!873 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !868)
!874 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !868)
!875 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !868)
!876 = !{!717, !718, i64 2}
!877 = !DILocation(line: 206, column: 12, scope: !866)
!878 = !DILocation(line: 207, column: 12, scope: !866)
!879 = !DILocation(line: 203, column: 58, scope: !861)
!880 = distinct !{!880, !864, !881, !756, !757}
!881 = !DILocation(line: 208, column: 9, scope: !862)
!882 = !DILocation(line: 209, column: 20, scope: !854)
!883 = !DILocation(line: 210, column: 14, scope: !854)
!884 = !DILocation(line: 211, column: 7, scope: !854)
!885 = !DILocation(line: 212, column: 40, scope: !886)
!886 = distinct !DILexicalBlock(scope: !692, file: !669, line: 212, column: 9)
!887 = !DILocation(line: 214, column: 20, scope: !888)
!888 = distinct !DILexicalBlock(scope: !886, file: !669, line: 213, column: 7)
!889 = !DILocation(line: 215, column: 58, scope: !888)
!890 = !DILocation(line: 215, column: 11, scope: !888)
!891 = !DILocation(line: 216, column: 15, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !669, line: 216, column: 13)
!893 = !DILocation(line: 216, column: 13, scope: !888)
!894 = !DILocation(line: 219, column: 48, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !669, line: 219, column: 9)
!896 = distinct !DILexicalBlock(scope: !888, file: !669, line: 219, column: 9)
!897 = !DILocation(line: 219, column: 21, scope: !895)
!898 = !DILocation(line: 219, column: 9, scope: !896)
!899 = !DILocation(line: 221, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !669, line: 220, column: 9)
!901 = !DILocation(line: 0, scope: !826, inlinedAt: !902)
!902 = distinct !DILocation(line: 221, column: 11, scope: !900)
!903 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !902)
!904 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !902)
!905 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !902)
!906 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !902)
!907 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !902)
!908 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !902)
!909 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !902)
!910 = !{!717, !718, i64 0}
!911 = !DILocation(line: 222, column: 12, scope: !900)
!912 = !DILocation(line: 223, column: 12, scope: !900)
!913 = !DILocation(line: 219, column: 58, scope: !895)
!914 = distinct !{!914, !898, !915, !756, !757}
!915 = !DILocation(line: 224, column: 9, scope: !896)
!916 = !DILocation(line: 225, column: 20, scope: !888)
!917 = !DILocation(line: 226, column: 14, scope: !888)
!918 = !DILocation(line: 227, column: 7, scope: !888)
!919 = !DILocation(line: 228, column: 43, scope: !920)
!920 = distinct !DILexicalBlock(scope: !692, file: !669, line: 228, column: 9)
!921 = !DILocation(line: 230, column: 20, scope: !922)
!922 = distinct !DILexicalBlock(scope: !920, file: !669, line: 229, column: 7)
!923 = !DILocation(line: 231, column: 58, scope: !922)
!924 = !DILocation(line: 231, column: 11, scope: !922)
!925 = !DILocation(line: 232, column: 15, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !669, line: 232, column: 13)
!927 = !DILocation(line: 232, column: 13, scope: !922)
!928 = !DILocation(line: 235, column: 48, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !669, line: 235, column: 9)
!930 = distinct !DILexicalBlock(scope: !922, file: !669, line: 235, column: 9)
!931 = !DILocation(line: 235, column: 21, scope: !929)
!932 = !DILocation(line: 235, column: 9, scope: !930)
!933 = !DILocation(line: 237, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !669, line: 236, column: 9)
!935 = !DILocation(line: 0, scope: !826, inlinedAt: !936)
!936 = distinct !DILocation(line: 237, column: 11, scope: !934)
!937 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !936)
!938 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !936)
!939 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !936)
!940 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !936)
!941 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !936)
!942 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !936)
!943 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !936)
!944 = !{!717, !718, i64 6}
!945 = !DILocation(line: 238, column: 12, scope: !934)
!946 = !DILocation(line: 239, column: 12, scope: !934)
!947 = !DILocation(line: 235, column: 58, scope: !929)
!948 = distinct !{!948, !932, !949, !756, !757}
!949 = !DILocation(line: 240, column: 9, scope: !930)
!950 = !DILocation(line: 241, column: 20, scope: !922)
!951 = !DILocation(line: 242, column: 14, scope: !922)
!952 = !DILocation(line: 243, column: 7, scope: !922)
!953 = !DILocation(line: 244, column: 41, scope: !704)
!954 = !DILocation(line: 245, column: 17, scope: !704)
!955 = !DILocation(line: 245, column: 28, scope: !704)
!956 = !DILocation(line: 245, column: 47, scope: !704)
!957 = !DILocation(line: 250, column: 20, scope: !703)
!958 = !DILocation(line: 251, column: 58, scope: !703)
!959 = !DILocation(line: 251, column: 11, scope: !703)
!960 = !DILocation(line: 252, column: 15, scope: !961)
!961 = distinct !DILexicalBlock(scope: !703, file: !669, line: 252, column: 13)
!962 = !DILocation(line: 252, column: 13, scope: !703)
!963 = !DILocation(line: 254, column: 17, scope: !703)
!964 = !DILocation(line: 0, scope: !703)
!965 = !DILocation(line: 255, column: 48, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !669, line: 255, column: 9)
!967 = distinct !DILexicalBlock(scope: !703, file: !669, line: 255, column: 9)
!968 = !DILocation(line: 255, column: 21, scope: !966)
!969 = !DILocation(line: 255, column: 9, scope: !967)
!970 = !DILocation(line: 257, column: 11, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !669, line: 257, column: 11)
!972 = distinct !DILexicalBlock(scope: !973, file: !669, line: 257, column: 11)
!973 = distinct !DILexicalBlock(scope: !966, file: !669, line: 256, column: 9)
!974 = !DILocation(line: 0, scope: !826, inlinedAt: !975)
!975 = distinct !DILocation(line: 257, column: 11, scope: !971)
!976 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !975)
!977 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !975)
!978 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !975)
!979 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !975)
!980 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !975)
!981 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !975)
!982 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !975)
!983 = !{!718, !718, i64 0}
!984 = !DILocation(line: 258, column: 12, scope: !973)
!985 = !DILocation(line: 255, column: 58, scope: !966)
!986 = distinct !{!986, !969, !987, !756, !757}
!987 = !DILocation(line: 259, column: 9, scope: !967)
!988 = !DILocation(line: 260, column: 20, scope: !703)
!989 = !DILocation(line: 261, column: 14, scope: !703)
!990 = !DILocation(line: 263, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !692, file: !669, line: 263, column: 9)
!992 = !DILocation(line: 263, column: 62, scope: !991)
!993 = !DILocation(line: 263, column: 9, scope: !692)
!994 = !DILocation(line: 265, column: 16, scope: !707)
!995 = !{!712, !716, i64 568}
!996 = !DILocation(line: 265, column: 33, scope: !707)
!997 = !DILocation(line: 265, column: 9, scope: !692)
!998 = !DILocation(line: 270, column: 64, scope: !706)
!999 = !DILocation(line: 271, column: 26, scope: !706)
!1000 = !DILocalVariable(name: "image", arg: 1, scope: !1001, file: !1002, line: 27, type: !672)
!1001 = distinct !DISubprogram(name: "SetImageProgress", scope: !1002, file: !1002, line: 27, type: !1003, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1005)
!1002 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!448, !672, !565, !567, !570}
!1005 = !{!1000, !1006, !1007, !1008, !1009}
!1006 = !DILocalVariable(name: "tag", arg: 2, scope: !1001, file: !1002, line: 28, type: !565)
!1007 = !DILocalVariable(name: "offset", arg: 3, scope: !1001, file: !1002, line: 28, type: !567)
!1008 = !DILocalVariable(name: "extent", arg: 4, scope: !1001, file: !1002, line: 28, type: !570)
!1009 = !DILocalVariable(name: "message", scope: !1001, file: !1002, line: 31, type: !585)
!1010 = !DILocation(line: 0, scope: !1001, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 270, column: 17, scope: !706)
!1012 = !DILocation(line: 30, column: 3, scope: !1001, inlinedAt: !1011)
!1013 = !DILocation(line: 31, column: 5, scope: !1001, inlinedAt: !1011)
!1014 = !DILocation(line: 35, column: 10, scope: !1001, inlinedAt: !1011)
!1015 = !DILocation(line: 36, column: 17, scope: !1001, inlinedAt: !1011)
!1016 = !DILocation(line: 36, column: 63, scope: !1001, inlinedAt: !1011)
!1017 = !{!712, !716, i64 576}
!1018 = !DILocation(line: 36, column: 10, scope: !1001, inlinedAt: !1011)
!1019 = !DILocation(line: 37, column: 1, scope: !1001, inlinedAt: !1011)
!1020 = !DILocation(line: 0, scope: !706)
!1021 = !DILocation(line: 272, column: 21, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !706, file: !669, line: 272, column: 13)
!1023 = !DILocation(line: 272, column: 13, scope: !706)
!1024 = !DILocation(line: 274, column: 7, scope: !706)
!1025 = !DILocation(line: 150, column: 49, scope: !693)
!1026 = distinct !{!1026, !799, !1027, !756, !757}
!1027 = !DILocation(line: 275, column: 3, scope: !694)
!1028 = !DILocation(line: 147, column: 9, scope: !668)
!1029 = !DILocation(line: 276, column: 16, scope: !668)
!1030 = !DILocation(line: 277, column: 39, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !668, file: !669, line: 277, column: 7)
!1032 = !DILocalVariable(name: "colorspace", arg: 1, scope: !1033, file: !776, line: 86, type: !779)
!1033 = distinct !DISubprogram(name: "IsGrayColorspace", scope: !776, file: !776, line: 85, type: !777, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1034)
!1034 = !{!1032}
!1035 = !DILocation(line: 0, scope: !1033, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 277, column: 7, scope: !1031)
!1037 = !DILocation(line: 88, column: 38, scope: !1038, inlinedAt: !1036)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !776, line: 88, column: 7)
!1039 = !DILocation(line: 278, column: 12, scope: !1031)
!1040 = !DILocation(line: 278, column: 5, scope: !1031)
!1041 = !DILocation(line: 279, column: 14, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !668, file: !669, line: 279, column: 7)
!1043 = !DILocation(line: 279, column: 7, scope: !668)
!1044 = !DILocation(line: 280, column: 19, scope: !1042)
!1045 = !DILocation(line: 280, column: 5, scope: !1042)
!1046 = !DILocation(line: 282, column: 1, scope: !668)
!1047 = !DISubprogram(name: "LogMagickEvent", scope: !391, file: !391, line: 83, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!448, !1050, !565, !565, !1052, !565, null}
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !391, line: 58, baseType: !390)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!1053 = !{}
!1054 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!448, !676, !565, !565, !1052, !1057, !565, !565, null}
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!1058 = !DISubprogram(name: "GetNextImageInList", scope: !1059, file: !1059, line: 33, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1059 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!432, !672}
!1062 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!432, !672, !1052, !1052, !1065, !676}
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!1066 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!448, !432, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!1070 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !676, !1073}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!1075 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!432, !432}
!1078 = !DISubprogram(name: "SetImageColorspace", scope: !11, file: !11, line: 65, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!448, !432, !779}
!1081 = !DISubprogram(name: "SetImageBackgroundColor", scope: !73, file: !73, line: 534, type: !1082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!448, !432}
!1084 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !684, file: !684, line: 53, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!682, !672, !676}
!1087 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !684, file: !684, line: 99, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!455, !682, !1090, !1090, !1052, !1052, !676}
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!1091 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !684, file: !684, line: 55, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1092 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !684, file: !684, line: 69, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!653, !1095, !1090, !1090, !1052, !1052, !676}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!1097 = !DISubprogram(name: "GetPixelIntensity", scope: !326, file: !326, line: 181, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!659, !672, !698}
!1100 = !DISubprogram(name: "DestroyCacheView", scope: !684, file: !684, line: 57, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!682, !682}
!1103 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !684, file: !684, line: 77, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!655, !682}
!1106 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !684, file: !684, line: 89, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!448, !682, !676}
!1109 = !DISubprogram(name: "TransformImageColorspace", scope: !11, file: !11, line: 66, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1110 = distinct !DISubprogram(name: "GetImageAlphaChannel", scope: !669, file: !669, line: 308, type: !1111, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!448, !672}
!1113 = !{!1114}
!1114 = !DILocalVariable(name: "image", arg: 1, scope: !1110, file: !669, line: 308, type: !672)
!1115 = !DILocation(line: 0, scope: !1110)
!1116 = !DILocation(line: 311, column: 14, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1110, file: !669, line: 311, column: 7)
!1118 = !DILocation(line: 311, column: 20, scope: !1117)
!1119 = !DILocation(line: 311, column: 7, scope: !1110)
!1120 = !DILocation(line: 312, column: 12, scope: !1117)
!1121 = !DILocation(line: 312, column: 5, scope: !1117)
!1122 = !DILocation(line: 314, column: 17, scope: !1110)
!1123 = !DILocation(line: 314, column: 3, scope: !1110)
!1124 = distinct !DISubprogram(name: "SeparateImage", scope: !669, file: !669, line: 347, type: !670, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130}
!1126 = !DILocalVariable(name: "image", arg: 1, scope: !1124, file: !669, line: 347, type: !672)
!1127 = !DILocalVariable(name: "channel", arg: 2, scope: !1124, file: !669, line: 347, type: !674)
!1128 = !DILocalVariable(name: "exception", arg: 3, scope: !1124, file: !669, line: 348, type: !676)
!1129 = !DILocalVariable(name: "separate_image", scope: !1124, file: !669, line: 351, type: !432)
!1130 = !DILocalVariable(name: "status", scope: !1124, file: !669, line: 354, type: !448)
!1131 = !DILocation(line: 0, scope: !1124)
!1132 = !DILocation(line: 361, column: 14, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1124, file: !669, line: 361, column: 7)
!1134 = !DILocation(line: 361, column: 20, scope: !1133)
!1135 = !DILocation(line: 361, column: 7, scope: !1124)
!1136 = !DILocation(line: 362, column: 68, scope: !1133)
!1137 = !DILocation(line: 362, column: 12, scope: !1133)
!1138 = !DILocation(line: 362, column: 5, scope: !1133)
!1139 = !DILocation(line: 365, column: 18, scope: !1124)
!1140 = !DILocation(line: 366, column: 22, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1124, file: !669, line: 366, column: 7)
!1142 = !DILocation(line: 366, column: 7, scope: !1124)
!1143 = !DILocation(line: 368, column: 10, scope: !1124)
!1144 = !DILocation(line: 369, column: 14, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1124, file: !669, line: 369, column: 7)
!1146 = !DILocation(line: 369, column: 7, scope: !1124)
!1147 = !DILocation(line: 370, column: 20, scope: !1145)
!1148 = !DILocation(line: 370, column: 5, scope: !1145)
!1149 = !DILocation(line: 372, column: 1, scope: !1124)
!1150 = distinct !DISubprogram(name: "SeparateImageChannel", scope: !669, file: !669, line: 374, type: !1151, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!448, !432, !674}
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1166, !1167, !1168}
!1154 = !DILocalVariable(name: "image", arg: 1, scope: !1150, file: !669, line: 374, type: !432)
!1155 = !DILocalVariable(name: "channel", arg: 2, scope: !1150, file: !669, line: 375, type: !674)
!1156 = !DILocalVariable(name: "image_view", scope: !1150, file: !669, line: 380, type: !682)
!1157 = !DILocalVariable(name: "exception", scope: !1150, file: !669, line: 383, type: !676)
!1158 = !DILocalVariable(name: "status", scope: !1150, file: !669, line: 386, type: !448)
!1159 = !DILocalVariable(name: "progress", scope: !1150, file: !669, line: 389, type: !568)
!1160 = !DILocalVariable(name: "y", scope: !1150, file: !669, line: 392, type: !496)
!1161 = !DILocalVariable(name: "indexes", scope: !1162, file: !669, line: 416, type: !1165)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !669, line: 414, column: 3)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !669, line: 413, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1150, file: !669, line: 413, column: 3)
!1165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !655)
!1166 = !DILocalVariable(name: "q", scope: !1162, file: !669, line: 419, type: !700)
!1167 = !DILocalVariable(name: "x", scope: !1162, file: !669, line: 422, type: !496)
!1168 = !DILocalVariable(name: "proceed", scope: !1169, file: !669, line: 518, type: !448)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !669, line: 516, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1162, file: !669, line: 515, column: 9)
!1171 = !DILocation(line: 0, scope: !1150)
!1172 = !DILocation(line: 396, column: 14, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1150, file: !669, line: 396, column: 7)
!1174 = !DILocation(line: 396, column: 20, scope: !1173)
!1175 = !DILocation(line: 396, column: 7, scope: !1150)
!1176 = !DILocation(line: 397, column: 68, scope: !1173)
!1177 = !DILocation(line: 397, column: 12, scope: !1173)
!1178 = !DILocation(line: 397, column: 5, scope: !1173)
!1179 = !DILocation(line: 398, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1150, file: !669, line: 398, column: 7)
!1181 = !DILocation(line: 398, column: 47, scope: !1180)
!1182 = !DILocation(line: 398, column: 7, scope: !1150)
!1183 = !DILocation(line: 400, column: 15, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1150, file: !669, line: 400, column: 7)
!1185 = !DILocation(line: 400, column: 7, scope: !1150)
!1186 = !DILocation(line: 401, column: 12, scope: !1184)
!1187 = !DILocation(line: 401, column: 17, scope: !1184)
!1188 = !DILocation(line: 401, column: 5, scope: !1184)
!1189 = !DILocation(line: 407, column: 22, scope: !1150)
!1190 = !DILocation(line: 408, column: 14, scope: !1150)
!1191 = !DILocation(line: 413, column: 34, scope: !1163)
!1192 = !DILocation(line: 413, column: 15, scope: !1163)
!1193 = !DILocation(line: 413, column: 3, scope: !1164)
!1194 = !DILocation(line: 424, column: 16, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1162, file: !669, line: 424, column: 9)
!1196 = !DILocation(line: 424, column: 9, scope: !1162)
!1197 = !DILocation(line: 426, column: 57, scope: !1162)
!1198 = !DILocation(line: 426, column: 7, scope: !1162)
!1199 = !DILocation(line: 0, scope: !1162)
!1200 = !DILocation(line: 427, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1162, file: !669, line: 427, column: 9)
!1202 = !DILocation(line: 427, column: 9, scope: !1162)
!1203 = !DILocation(line: 432, column: 13, scope: !1162)
!1204 = !DILocation(line: 433, column: 5, scope: !1162)
!1205 = !DILocation(line: 503, column: 40, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !669, line: 503, column: 9)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !669, line: 503, column: 9)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !669, line: 502, column: 7)
!1209 = distinct !DILexicalBlock(scope: !1162, file: !669, line: 434, column: 5)
!1210 = !DILocation(line: 503, column: 21, scope: !1206)
!1211 = !DILocation(line: 503, column: 9, scope: !1207)
!1212 = !DILocation(line: 492, column: 21, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !669, line: 492, column: 9)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !669, line: 492, column: 9)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !669, line: 491, column: 7)
!1216 = !DILocation(line: 492, column: 9, scope: !1214)
!1217 = !DILocation(line: 467, column: 21, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !669, line: 467, column: 9)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !669, line: 467, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1209, file: !669, line: 466, column: 7)
!1221 = !DILocation(line: 467, column: 9, scope: !1219)
!1222 = !DILocation(line: 457, column: 21, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !669, line: 457, column: 9)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !669, line: 457, column: 9)
!1225 = distinct !DILexicalBlock(scope: !1209, file: !669, line: 456, column: 7)
!1226 = !DILocation(line: 457, column: 9, scope: !1224)
!1227 = !DILocation(line: 447, column: 21, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !669, line: 447, column: 9)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !669, line: 447, column: 9)
!1230 = distinct !DILexicalBlock(scope: !1209, file: !669, line: 446, column: 7)
!1231 = !DILocation(line: 447, column: 9, scope: !1229)
!1232 = !DILocation(line: 437, column: 21, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !669, line: 437, column: 9)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !669, line: 437, column: 9)
!1235 = distinct !DILexicalBlock(scope: !1209, file: !669, line: 436, column: 7)
!1236 = !DILocation(line: 437, column: 9, scope: !1234)
!1237 = !DILocation(line: 439, column: 11, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !669, line: 438, column: 9)
!1239 = !DILocation(line: 440, column: 11, scope: !1238)
!1240 = !DILocation(line: 441, column: 12, scope: !1238)
!1241 = !DILocation(line: 437, column: 50, scope: !1233)
!1242 = distinct !{!1242, !1236, !1243, !756, !757}
!1243 = !DILocation(line: 442, column: 9, scope: !1234)
!1244 = !DILocation(line: 449, column: 11, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1228, file: !669, line: 448, column: 9)
!1246 = !DILocation(line: 450, column: 11, scope: !1245)
!1247 = !DILocation(line: 451, column: 12, scope: !1245)
!1248 = !DILocation(line: 447, column: 50, scope: !1228)
!1249 = distinct !{!1249, !1231, !1250, !756, !757}
!1250 = !DILocation(line: 452, column: 9, scope: !1229)
!1251 = !DILocation(line: 459, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1223, file: !669, line: 458, column: 9)
!1253 = !DILocation(line: 460, column: 11, scope: !1252)
!1254 = !DILocation(line: 461, column: 12, scope: !1252)
!1255 = !DILocation(line: 457, column: 50, scope: !1223)
!1256 = distinct !{!1256, !1226, !1257, !756, !757}
!1257 = !DILocation(line: 462, column: 9, scope: !1224)
!1258 = !DILocation(line: 469, column: 11, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1218, file: !669, line: 468, column: 9)
!1260 = !DILocation(line: 470, column: 11, scope: !1259)
!1261 = !DILocation(line: 471, column: 11, scope: !1259)
!1262 = !DILocation(line: 472, column: 12, scope: !1259)
!1263 = !DILocation(line: 467, column: 50, scope: !1218)
!1264 = distinct !{!1264, !1221, !1265, !756, !757}
!1265 = !DILocation(line: 473, column: 9, scope: !1219)
!1266 = !DILocation(line: 478, column: 21, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !669, line: 478, column: 13)
!1268 = distinct !DILexicalBlock(scope: !1209, file: !669, line: 477, column: 7)
!1269 = !{!712, !713, i64 0}
!1270 = !DILocation(line: 478, column: 35, scope: !1267)
!1271 = !DILocation(line: 478, column: 51, scope: !1267)
!1272 = !DILocation(line: 479, column: 21, scope: !1267)
!1273 = !DILocation(line: 479, column: 32, scope: !1267)
!1274 = !DILocation(line: 478, column: 13, scope: !1268)
!1275 = !DILocation(line: 481, column: 21, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !669, line: 481, column: 9)
!1277 = distinct !DILexicalBlock(scope: !1268, file: !669, line: 481, column: 9)
!1278 = !DILocation(line: 481, column: 9, scope: !1277)
!1279 = !DILocation(line: 483, column: 11, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !669, line: 482, column: 9)
!1281 = !DILocation(line: 484, column: 11, scope: !1280)
!1282 = !DILocation(line: 485, column: 11, scope: !1280)
!1283 = !DILocation(line: 486, column: 12, scope: !1280)
!1284 = !DILocation(line: 481, column: 50, scope: !1276)
!1285 = distinct !{!1285, !1278, !1286, !756, !757}
!1286 = !DILocation(line: 487, column: 9, scope: !1277)
!1287 = !DILocation(line: 494, column: 11, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1213, file: !669, line: 493, column: 9)
!1289 = !DILocation(line: 495, column: 11, scope: !1288)
!1290 = !DILocation(line: 496, column: 11, scope: !1288)
!1291 = !DILocation(line: 497, column: 12, scope: !1288)
!1292 = !DILocation(line: 492, column: 50, scope: !1213)
!1293 = distinct !{!1293, !1216, !1294, !756, !757}
!1294 = !DILocation(line: 498, column: 9, scope: !1214)
!1295 = !DILocation(line: 505, column: 11, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1206, file: !669, line: 504, column: 9)
!1297 = !DILocation(line: 0, scope: !826, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 505, column: 11, scope: !1296)
!1299 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1298)
!1300 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1298)
!1301 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1298)
!1302 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1298)
!1303 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1298)
!1304 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1298)
!1305 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1298)
!1306 = !DILocation(line: 506, column: 12, scope: !1296)
!1307 = !DILocation(line: 503, column: 50, scope: !1206)
!1308 = distinct !{!1308, !1211, !1309, !756, !757}
!1309 = !DILocation(line: 507, column: 9, scope: !1207)
!1310 = !DILocation(line: 513, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1162, file: !669, line: 513, column: 9)
!1312 = !DILocation(line: 513, column: 60, scope: !1311)
!1313 = !DILocation(line: 513, column: 9, scope: !1162)
!1314 = !DILocation(line: 515, column: 16, scope: !1170)
!1315 = !DILocation(line: 515, column: 33, scope: !1170)
!1316 = !DILocation(line: 515, column: 9, scope: !1162)
!1317 = !DILocation(line: 523, column: 65, scope: !1169)
!1318 = !DILocation(line: 523, column: 75, scope: !1169)
!1319 = !DILocation(line: 0, scope: !1001, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 523, column: 17, scope: !1169)
!1321 = !DILocation(line: 30, column: 3, scope: !1001, inlinedAt: !1320)
!1322 = !DILocation(line: 31, column: 5, scope: !1001, inlinedAt: !1320)
!1323 = !DILocation(line: 35, column: 10, scope: !1001, inlinedAt: !1320)
!1324 = !DILocation(line: 36, column: 17, scope: !1001, inlinedAt: !1320)
!1325 = !DILocation(line: 36, column: 63, scope: !1001, inlinedAt: !1320)
!1326 = !DILocation(line: 36, column: 10, scope: !1001, inlinedAt: !1320)
!1327 = !DILocation(line: 37, column: 1, scope: !1001, inlinedAt: !1320)
!1328 = !DILocation(line: 0, scope: !1169)
!1329 = !DILocation(line: 524, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1169, file: !669, line: 524, column: 13)
!1331 = !DILocation(line: 524, column: 13, scope: !1169)
!1332 = !DILocation(line: 526, column: 7, scope: !1169)
!1333 = !DILocation(line: 413, column: 41, scope: !1163)
!1334 = distinct !{!1334, !1193, !1335, !756, !757}
!1335 = !DILocation(line: 527, column: 3, scope: !1164)
!1336 = !DILocation(line: 405, column: 9, scope: !1150)
!1337 = !DILocation(line: 528, column: 14, scope: !1150)
!1338 = !DILocation(line: 529, column: 7, scope: !1150)
!1339 = !DILocation(line: 530, column: 12, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1150, file: !669, line: 529, column: 7)
!1341 = !DILocation(line: 530, column: 17, scope: !1340)
!1342 = !DILocation(line: 530, column: 5, scope: !1340)
!1343 = !DILocation(line: 531, column: 10, scope: !1150)
!1344 = !DILocation(line: 532, column: 3, scope: !1150)
!1345 = !DILocation(line: 533, column: 1, scope: !1150)
!1346 = distinct !DISubprogram(name: "SeparateImages", scope: !669, file: !669, line: 565, type: !670, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352}
!1348 = !DILocalVariable(name: "image", arg: 1, scope: !1346, file: !669, line: 565, type: !672)
!1349 = !DILocalVariable(name: "channel", arg: 2, scope: !1346, file: !669, line: 565, type: !674)
!1350 = !DILocalVariable(name: "exception", arg: 3, scope: !1346, file: !669, line: 566, type: !676)
!1351 = !DILocalVariable(name: "images", scope: !1346, file: !669, line: 569, type: !432)
!1352 = !DILocalVariable(name: "separate_image", scope: !1346, file: !669, line: 570, type: !432)
!1353 = !DILocation(line: 0, scope: !1346)
!1354 = !DILocation(line: 568, column: 3, scope: !1346)
!1355 = !DILocation(line: 574, column: 14, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1346, file: !669, line: 574, column: 7)
!1357 = !DILocation(line: 574, column: 20, scope: !1356)
!1358 = !DILocation(line: 574, column: 7, scope: !1346)
!1359 = !DILocation(line: 575, column: 68, scope: !1356)
!1360 = !DILocation(line: 575, column: 12, scope: !1356)
!1361 = !DILocation(line: 575, column: 5, scope: !1356)
!1362 = !DILocation(line: 576, column: 10, scope: !1346)
!1363 = !DILocation(line: 576, column: 9, scope: !1346)
!1364 = !{!716, !716, i64 0}
!1365 = !DILocation(line: 577, column: 16, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1346, file: !669, line: 577, column: 7)
!1367 = !DILocation(line: 577, column: 30, scope: !1366)
!1368 = !DILocation(line: 577, column: 7, scope: !1346)
!1369 = !DILocation(line: 579, column: 22, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !669, line: 578, column: 5)
!1371 = !DILocation(line: 580, column: 14, scope: !1370)
!1372 = !DILocation(line: 581, column: 7, scope: !1370)
!1373 = !DILocation(line: 582, column: 5, scope: !1370)
!1374 = !DILocation(line: 583, column: 16, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1346, file: !669, line: 583, column: 7)
!1376 = !DILocation(line: 583, column: 32, scope: !1375)
!1377 = !DILocation(line: 583, column: 7, scope: !1346)
!1378 = !DILocation(line: 585, column: 22, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !669, line: 584, column: 5)
!1380 = !DILocation(line: 586, column: 14, scope: !1379)
!1381 = !DILocation(line: 587, column: 7, scope: !1379)
!1382 = !DILocation(line: 588, column: 5, scope: !1379)
!1383 = !DILocation(line: 589, column: 16, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1346, file: !669, line: 589, column: 7)
!1385 = !DILocation(line: 589, column: 31, scope: !1384)
!1386 = !DILocation(line: 589, column: 7, scope: !1346)
!1387 = !DILocation(line: 591, column: 22, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !669, line: 590, column: 5)
!1389 = !DILocation(line: 592, column: 14, scope: !1388)
!1390 = !DILocation(line: 593, column: 7, scope: !1388)
!1391 = !DILocation(line: 594, column: 5, scope: !1388)
!1392 = !DILocation(line: 595, column: 17, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1346, file: !669, line: 595, column: 7)
!1394 = !DILocation(line: 595, column: 33, scope: !1393)
!1395 = !DILocation(line: 595, column: 39, scope: !1393)
!1396 = !DILocation(line: 595, column: 50, scope: !1393)
!1397 = !DILocation(line: 595, column: 61, scope: !1393)
!1398 = !DILocation(line: 595, column: 7, scope: !1346)
!1399 = !DILocation(line: 597, column: 22, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1393, file: !669, line: 596, column: 5)
!1401 = !DILocation(line: 598, column: 14, scope: !1400)
!1402 = !DILocation(line: 599, column: 7, scope: !1400)
!1403 = !DILocation(line: 600, column: 5, scope: !1400)
!1404 = !DILocation(line: 601, column: 16, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1346, file: !669, line: 601, column: 7)
!1406 = !DILocation(line: 601, column: 32, scope: !1405)
!1407 = !DILocation(line: 601, column: 7, scope: !1346)
!1408 = !DILocation(line: 603, column: 22, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !669, line: 602, column: 5)
!1410 = !DILocation(line: 604, column: 14, scope: !1409)
!1411 = !DILocation(line: 605, column: 7, scope: !1409)
!1412 = !DILocation(line: 606, column: 5, scope: !1409)
!1413 = !DILocation(line: 607, column: 10, scope: !1346)
!1414 = !DILocation(line: 608, column: 1, scope: !1346)
!1415 = !DILocation(line: 607, column: 3, scope: !1346)
!1416 = !DISubprogram(name: "NewImageList", scope: !1059, file: !1059, line: 36, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!432}
!1419 = !DISubprogram(name: "AppendImageToList", scope: !1059, file: !1059, line: 51, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !1422, !672}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1423 = distinct !DISubprogram(name: "SetImageAlphaChannel", scope: !669, file: !669, line: 639, type: !1424, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1428)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!448, !432, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !73, line: 45, baseType: !415)
!1428 = !{!1429, !1430, !1431, !1432, !1435, !1436, !1437, !1438, !1452, !1453, !1454, !1458, !1459, !1460, !1464, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1476, !1477, !1478, !1482}
!1429 = !DILocalVariable(name: "image", arg: 1, scope: !1423, file: !669, line: 639, type: !432)
!1430 = !DILocalVariable(name: "alpha_type", arg: 2, scope: !1423, file: !669, line: 640, type: !1426)
!1431 = !DILocalVariable(name: "status", scope: !1423, file: !669, line: 643, type: !448)
!1432 = !DILocalVariable(name: "image_view", scope: !1433, file: !669, line: 660, type: !682)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 658, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1423, file: !669, line: 651, column: 3)
!1435 = !DILocalVariable(name: "exception", scope: !1433, file: !669, line: 663, type: !676)
!1436 = !DILocalVariable(name: "index", scope: !1433, file: !669, line: 666, type: !656)
!1437 = !DILocalVariable(name: "status", scope: !1433, file: !669, line: 669, type: !448)
!1438 = !DILocalVariable(name: "background", scope: !1433, file: !669, line: 672, type: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !1440, file: !326, line: 107, baseType: !437, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1440, file: !326, line: 110, baseType: !439, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !1440, file: !326, line: 113, baseType: !448, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !1440, file: !326, line: 116, baseType: !469, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1440, file: !326, line: 119, baseType: !443, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !1440, file: !326, line: 122, baseType: !659, size: 32, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !1440, file: !326, line: 123, baseType: !659, size: 32, offset: 288)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !1440, file: !326, line: 124, baseType: !659, size: 32, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !1440, file: !326, line: 125, baseType: !659, size: 32, offset: 352)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1440, file: !326, line: 126, baseType: !659, size: 32, offset: 384)
!1452 = !DILocalVariable(name: "pixel", scope: !1433, file: !669, line: 675, type: !456)
!1453 = !DILocalVariable(name: "y", scope: !1433, file: !669, line: 678, type: !496)
!1454 = !DILocalVariable(name: "indexes", scope: !1455, file: !669, line: 704, type: !1165)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !669, line: 702, column: 7)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !669, line: 701, column: 7)
!1457 = distinct !DILexicalBlock(scope: !1433, file: !669, line: 701, column: 7)
!1458 = !DILocalVariable(name: "q", scope: !1455, file: !669, line: 707, type: !700)
!1459 = !DILocalVariable(name: "x", scope: !1455, file: !669, line: 710, type: !496)
!1460 = !DILocalVariable(name: "background", scope: !1461, file: !669, line: 755, type: !1439)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !669, line: 753, column: 9)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !669, line: 752, column: 11)
!1463 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 745, column: 5)
!1464 = !DILocalVariable(name: "image_view", scope: !1465, file: !669, line: 782, type: !682)
!1465 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 780, column: 5)
!1466 = !DILocalVariable(name: "exception", scope: !1465, file: !669, line: 785, type: !676)
!1467 = !DILocalVariable(name: "index", scope: !1465, file: !669, line: 788, type: !656)
!1468 = !DILocalVariable(name: "status", scope: !1465, file: !669, line: 791, type: !448)
!1469 = !DILocalVariable(name: "background", scope: !1465, file: !669, line: 794, type: !1439)
!1470 = !DILocalVariable(name: "pixel", scope: !1465, file: !669, line: 797, type: !456)
!1471 = !DILocalVariable(name: "y", scope: !1465, file: !669, line: 800, type: !496)
!1472 = !DILocalVariable(name: "indexes", scope: !1473, file: !669, line: 826, type: !1165)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !669, line: 824, column: 7)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !669, line: 823, column: 7)
!1475 = distinct !DILexicalBlock(scope: !1465, file: !669, line: 823, column: 7)
!1476 = !DILocalVariable(name: "q", scope: !1473, file: !669, line: 829, type: !700)
!1477 = !DILocalVariable(name: "x", scope: !1473, file: !669, line: 832, type: !496)
!1478 = !DILocalVariable(name: "gamma", scope: !1479, file: !669, line: 846, type: !469)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !669, line: 844, column: 9)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !669, line: 843, column: 9)
!1481 = distinct !DILexicalBlock(scope: !1473, file: !669, line: 843, column: 9)
!1482 = !DILocalVariable(name: "opacity", scope: !1479, file: !669, line: 847, type: !469)
!1483 = !DILocation(line: 0, scope: !1423)
!1484 = !DILocation(line: 646, column: 14, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1423, file: !669, line: 646, column: 7)
!1486 = !DILocation(line: 646, column: 20, scope: !1485)
!1487 = !DILocation(line: 646, column: 7, scope: !1423)
!1488 = !DILocation(line: 647, column: 12, scope: !1485)
!1489 = !DILocation(line: 647, column: 5, scope: !1485)
!1490 = !DILocation(line: 650, column: 3, scope: !1423)
!1491 = !DILocation(line: 654, column: 14, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 653, column: 5)
!1493 = !DILocation(line: 654, column: 19, scope: !1492)
!1494 = !DILocation(line: 655, column: 7, scope: !1492)
!1495 = !DILocation(line: 671, column: 7, scope: !1433)
!1496 = !DILocation(line: 672, column: 9, scope: !1433)
!1497 = !DILocation(line: 683, column: 18, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1433, file: !669, line: 683, column: 11)
!1499 = !DILocation(line: 683, column: 24, scope: !1498)
!1500 = !DILocation(line: 683, column: 11, scope: !1433)
!1501 = !DILocation(line: 685, column: 11, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1433, file: !669, line: 685, column: 11)
!1503 = !DILocation(line: 685, column: 51, scope: !1502)
!1504 = !DILocation(line: 685, column: 11, scope: !1433)
!1505 = !DILocation(line: 687, column: 7, scope: !1433)
!1506 = !DILocation(line: 688, column: 42, scope: !1433)
!1507 = !DILocalVariable(name: "image", arg: 1, scope: !1508, file: !1509, line: 92, type: !672)
!1508 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !1509, file: !1509, line: 92, type: !1510, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1513)
!1509 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !672, !653, !657, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1513 = !{!1507, !1514, !1515, !1516}
!1514 = !DILocalVariable(name: "color", arg: 2, scope: !1508, file: !1509, line: 93, type: !653)
!1515 = !DILocalVariable(name: "index", arg: 3, scope: !1508, file: !1509, line: 93, type: !657)
!1516 = !DILocalVariable(name: "pixel", arg: 4, scope: !1508, file: !1509, line: 93, type: !1512)
!1517 = !DILocation(line: 0, scope: !1508, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 688, column: 7, scope: !1433)
!1519 = !DILocation(line: 95, column: 31, scope: !1508, inlinedAt: !1518)
!1520 = !DILocation(line: 95, column: 14, scope: !1508, inlinedAt: !1518)
!1521 = !DILocation(line: 95, column: 10, scope: !1508, inlinedAt: !1518)
!1522 = !DILocation(line: 95, column: 13, scope: !1508, inlinedAt: !1518)
!1523 = !{!1524, !1525, i64 32}
!1524 = !{!"_MagickPixelPacket", !713, i64 0, !713, i64 4, !713, i64 8, !719, i64 16, !715, i64 24, !1525, i64 32, !1525, i64 36, !1525, i64 40, !1525, i64 44, !1525, i64 48}
!1525 = !{!"float", !713, i64 0}
!1526 = !DILocation(line: 96, column: 33, scope: !1508, inlinedAt: !1518)
!1527 = !DILocation(line: 96, column: 16, scope: !1508, inlinedAt: !1518)
!1528 = !DILocation(line: 96, column: 10, scope: !1508, inlinedAt: !1518)
!1529 = !DILocation(line: 96, column: 15, scope: !1508, inlinedAt: !1518)
!1530 = !{!1524, !1525, i64 36}
!1531 = !DILocation(line: 97, column: 32, scope: !1508, inlinedAt: !1518)
!1532 = !DILocation(line: 97, column: 15, scope: !1508, inlinedAt: !1518)
!1533 = !DILocation(line: 97, column: 10, scope: !1508, inlinedAt: !1518)
!1534 = !DILocation(line: 97, column: 14, scope: !1508, inlinedAt: !1518)
!1535 = !{!1524, !1525, i64 40}
!1536 = !DILocation(line: 98, column: 35, scope: !1508, inlinedAt: !1518)
!1537 = !DILocation(line: 98, column: 18, scope: !1508, inlinedAt: !1518)
!1538 = !DILocation(line: 98, column: 10, scope: !1508, inlinedAt: !1518)
!1539 = !DILocation(line: 98, column: 17, scope: !1508, inlinedAt: !1518)
!1540 = !{!1524, !1525, i64 44}
!1541 = !DILocation(line: 690, column: 18, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1433, file: !669, line: 690, column: 11)
!1543 = !DILocation(line: 690, column: 29, scope: !1542)
!1544 = !DILocation(line: 690, column: 11, scope: !1433)
!1545 = !DILocation(line: 691, column: 9, scope: !1542)
!1546 = !DILocation(line: 120, column: 3, scope: !1547, inlinedAt: !1557)
!1547 = distinct !DISubprogram(name: "SetPixelPacket", scope: !1509, file: !1509, line: 117, type: !1548, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1552)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !672, !1550, !455, !655}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1552 = !{!1553, !1554, !1555, !1556}
!1553 = !DILocalVariable(name: "image", arg: 1, scope: !1547, file: !1509, line: 117, type: !672)
!1554 = !DILocalVariable(name: "pixel", arg: 2, scope: !1547, file: !1509, line: 118, type: !1550)
!1555 = !DILocalVariable(name: "color", arg: 3, scope: !1547, file: !1509, line: 118, type: !455)
!1556 = !DILocalVariable(name: "index", arg: 4, scope: !1547, file: !1509, line: 118, type: !655)
!1557 = distinct !DILocation(line: 693, column: 7, scope: !1433)
!1558 = !DILocation(line: 0, scope: !1433)
!1559 = !DILocation(line: 0, scope: !1547, inlinedAt: !1557)
!1560 = !DILocation(line: 0, scope: !826, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 120, column: 3, scope: !1547, inlinedAt: !1557)
!1562 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1561)
!1563 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1561)
!1564 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1561)
!1565 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1561)
!1566 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1561)
!1567 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1561)
!1568 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1561)
!1569 = !DILocation(line: 121, column: 3, scope: !1547, inlinedAt: !1557)
!1570 = !DILocation(line: 0, scope: !826, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 121, column: 3, scope: !1547, inlinedAt: !1557)
!1572 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1571)
!1573 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1571)
!1574 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1571)
!1575 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1571)
!1576 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1571)
!1577 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1571)
!1578 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1571)
!1579 = !DILocation(line: 122, column: 3, scope: !1547, inlinedAt: !1557)
!1580 = !DILocation(line: 0, scope: !826, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 122, column: 3, scope: !1547, inlinedAt: !1557)
!1582 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1581)
!1583 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1581)
!1584 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1581)
!1585 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1581)
!1586 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1581)
!1587 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1581)
!1588 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1581)
!1589 = !DILocation(line: 0, scope: !826, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 123, column: 3, scope: !1547, inlinedAt: !1557)
!1591 = !DILocation(line: 124, column: 15, scope: !1592, inlinedAt: !1557)
!1592 = distinct !DILexicalBlock(scope: !1547, file: !1509, line: 124, column: 7)
!1593 = !DILocation(line: 124, column: 26, scope: !1592, inlinedAt: !1557)
!1594 = !DILocation(line: 124, column: 45, scope: !1592, inlinedAt: !1557)
!1595 = !DILocation(line: 125, column: 15, scope: !1592, inlinedAt: !1557)
!1596 = !DILocation(line: 125, column: 29, scope: !1592, inlinedAt: !1557)
!1597 = !DILocation(line: 124, column: 7, scope: !1547, inlinedAt: !1557)
!1598 = !DILocation(line: 126, column: 5, scope: !1599, inlinedAt: !1557)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !1509, line: 126, column: 5)
!1600 = distinct !DILexicalBlock(scope: !1592, file: !1509, line: 126, column: 5)
!1601 = !{!1524, !1525, i64 48}
!1602 = !DILocation(line: 0, scope: !826, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 126, column: 5, scope: !1599, inlinedAt: !1557)
!1604 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1603)
!1605 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1603)
!1606 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1603)
!1607 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1603)
!1608 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1603)
!1609 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1603)
!1610 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1603)
!1611 = !DILocation(line: 695, column: 26, scope: !1433)
!1612 = !DILocation(line: 696, column: 18, scope: !1433)
!1613 = !DILocation(line: 701, column: 38, scope: !1456)
!1614 = !DILocation(line: 701, column: 19, scope: !1456)
!1615 = !DILocation(line: 701, column: 7, scope: !1457)
!1616 = !DILocation(line: 712, column: 20, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1455, file: !669, line: 712, column: 13)
!1618 = !DILocation(line: 712, column: 13, scope: !1455)
!1619 = !DILocation(line: 714, column: 61, scope: !1455)
!1620 = !DILocation(line: 714, column: 11, scope: !1455)
!1621 = !DILocation(line: 0, scope: !1455)
!1622 = !DILocation(line: 716, column: 15, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1455, file: !669, line: 716, column: 13)
!1624 = !DILocation(line: 716, column: 13, scope: !1455)
!1625 = !DILocation(line: 721, column: 21, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !669, line: 721, column: 9)
!1627 = distinct !DILexicalBlock(scope: !1455, file: !669, line: 721, column: 9)
!1628 = !DILocation(line: 721, column: 9, scope: !1627)
!1629 = !DILocation(line: 723, column: 18, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !669, line: 723, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !669, line: 722, column: 9)
!1632 = !DILocation(line: 723, column: 26, scope: !1630)
!1633 = !DILocation(line: 723, column: 15, scope: !1631)
!1634 = !DILocation(line: 725, column: 15, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !669, line: 724, column: 13)
!1636 = !DILocation(line: 726, column: 15, scope: !1635)
!1637 = !DILocation(line: 727, column: 15, scope: !1635)
!1638 = !DILocation(line: 728, column: 13, scope: !1635)
!1639 = !DILocation(line: 729, column: 12, scope: !1631)
!1640 = !DILocation(line: 721, column: 50, scope: !1626)
!1641 = distinct !{!1641, !1628, !1642, !756, !757}
!1642 = !DILocation(line: 730, column: 9, scope: !1627)
!1643 = !DILocation(line: 731, column: 20, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1455, file: !669, line: 731, column: 13)
!1645 = !DILocation(line: 731, column: 31, scope: !1644)
!1646 = !DILocation(line: 731, column: 13, scope: !1455)
!1647 = !DILocation(line: 733, column: 21, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !669, line: 732, column: 11)
!1649 = !DILocation(line: 734, column: 25, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !669, line: 734, column: 13)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !669, line: 734, column: 13)
!1652 = !DILocation(line: 734, column: 13, scope: !1651)
!1653 = !DILocation(line: 735, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !669, line: 735, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !669, line: 735, column: 15)
!1656 = !DILocation(line: 734, column: 54, scope: !1650)
!1657 = distinct !{!1657, !1652, !1658, !756, !757}
!1658 = !DILocation(line: 735, column: 15, scope: !1651)
!1659 = !DILocation(line: 737, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1455, file: !669, line: 737, column: 13)
!1661 = !DILocation(line: 737, column: 64, scope: !1660)
!1662 = !DILocation(line: 737, column: 13, scope: !1455)
!1663 = !DILocation(line: 739, column: 7, scope: !1456)
!1664 = !DILocation(line: 701, column: 45, scope: !1456)
!1665 = distinct !{!1665, !1615, !1666, !756, !757}
!1666 = !DILocation(line: 739, column: 7, scope: !1457)
!1667 = !DILocation(line: 742, column: 5, scope: !1434)
!1668 = !DILocation(line: 694, column: 13, scope: !1433)
!1669 = !DILocation(line: 740, column: 18, scope: !1433)
!1670 = !DILocation(line: 750, column: 14, scope: !1463)
!1671 = !DILocation(line: 751, column: 14, scope: !1463)
!1672 = !DILocation(line: 751, column: 19, scope: !1463)
!1673 = !DILocation(line: 752, column: 22, scope: !1462)
!1674 = !DILocation(line: 752, column: 11, scope: !1463)
!1675 = !DILocation(line: 754, column: 11, scope: !1461)
!1676 = !DILocation(line: 755, column: 13, scope: !1461)
!1677 = !DILocation(line: 760, column: 11, scope: !1461)
!1678 = !DILocation(line: 761, column: 47, scope: !1461)
!1679 = !DILocation(line: 0, scope: !1508, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 761, column: 11, scope: !1461)
!1681 = !DILocation(line: 95, column: 31, scope: !1508, inlinedAt: !1680)
!1682 = !DILocation(line: 95, column: 14, scope: !1508, inlinedAt: !1680)
!1683 = !DILocation(line: 95, column: 10, scope: !1508, inlinedAt: !1680)
!1684 = !DILocation(line: 95, column: 13, scope: !1508, inlinedAt: !1680)
!1685 = !DILocation(line: 96, column: 33, scope: !1508, inlinedAt: !1680)
!1686 = !DILocation(line: 96, column: 16, scope: !1508, inlinedAt: !1680)
!1687 = !DILocation(line: 96, column: 10, scope: !1508, inlinedAt: !1680)
!1688 = !DILocation(line: 96, column: 15, scope: !1508, inlinedAt: !1680)
!1689 = !DILocation(line: 97, column: 32, scope: !1508, inlinedAt: !1680)
!1690 = !DILocation(line: 97, column: 15, scope: !1508, inlinedAt: !1680)
!1691 = !DILocation(line: 97, column: 10, scope: !1508, inlinedAt: !1680)
!1692 = !DILocation(line: 97, column: 14, scope: !1508, inlinedAt: !1680)
!1693 = !DILocation(line: 98, column: 35, scope: !1508, inlinedAt: !1680)
!1694 = !DILocation(line: 98, column: 18, scope: !1508, inlinedAt: !1680)
!1695 = !DILocation(line: 98, column: 10, scope: !1508, inlinedAt: !1680)
!1696 = !DILocation(line: 98, column: 17, scope: !1508, inlinedAt: !1680)
!1697 = !DILocation(line: 763, column: 18, scope: !1461)
!1698 = !DILocation(line: 764, column: 9, scope: !1462)
!1699 = !DILocation(line: 764, column: 9, scope: !1461)
!1700 = !DILocation(line: 769, column: 14, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 768, column: 5)
!1702 = !DILocation(line: 769, column: 19, scope: !1701)
!1703 = !DILocation(line: 770, column: 7, scope: !1701)
!1704 = !DILocation(line: 774, column: 14, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 773, column: 5)
!1706 = !DILocation(line: 775, column: 14, scope: !1705)
!1707 = !DILocation(line: 775, column: 19, scope: !1705)
!1708 = !DILocation(line: 776, column: 7, scope: !1705)
!1709 = !DILocation(line: 793, column: 7, scope: !1465)
!1710 = !DILocation(line: 794, column: 9, scope: !1465)
!1711 = !DILocation(line: 805, column: 18, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1465, file: !669, line: 805, column: 11)
!1713 = !DILocation(line: 805, column: 24, scope: !1712)
!1714 = !DILocation(line: 805, column: 11, scope: !1465)
!1715 = !DILocation(line: 807, column: 11, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1465, file: !669, line: 807, column: 11)
!1717 = !DILocation(line: 807, column: 51, scope: !1716)
!1718 = !DILocation(line: 807, column: 11, scope: !1465)
!1719 = !DILocation(line: 809, column: 7, scope: !1465)
!1720 = !DILocation(line: 810, column: 42, scope: !1465)
!1721 = !DILocation(line: 0, scope: !1508, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 810, column: 7, scope: !1465)
!1723 = !DILocation(line: 95, column: 31, scope: !1508, inlinedAt: !1722)
!1724 = !DILocation(line: 95, column: 14, scope: !1508, inlinedAt: !1722)
!1725 = !DILocation(line: 95, column: 10, scope: !1508, inlinedAt: !1722)
!1726 = !DILocation(line: 95, column: 13, scope: !1508, inlinedAt: !1722)
!1727 = !DILocation(line: 96, column: 33, scope: !1508, inlinedAt: !1722)
!1728 = !DILocation(line: 96, column: 16, scope: !1508, inlinedAt: !1722)
!1729 = !DILocation(line: 96, column: 10, scope: !1508, inlinedAt: !1722)
!1730 = !DILocation(line: 96, column: 15, scope: !1508, inlinedAt: !1722)
!1731 = !DILocation(line: 97, column: 32, scope: !1508, inlinedAt: !1722)
!1732 = !DILocation(line: 97, column: 15, scope: !1508, inlinedAt: !1722)
!1733 = !DILocation(line: 97, column: 10, scope: !1508, inlinedAt: !1722)
!1734 = !DILocation(line: 97, column: 14, scope: !1508, inlinedAt: !1722)
!1735 = !DILocation(line: 98, column: 35, scope: !1508, inlinedAt: !1722)
!1736 = !DILocation(line: 98, column: 18, scope: !1508, inlinedAt: !1722)
!1737 = !DILocation(line: 98, column: 10, scope: !1508, inlinedAt: !1722)
!1738 = !DILocation(line: 98, column: 17, scope: !1508, inlinedAt: !1722)
!1739 = !DILocation(line: 812, column: 18, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1465, file: !669, line: 812, column: 11)
!1741 = !DILocation(line: 812, column: 29, scope: !1740)
!1742 = !DILocation(line: 812, column: 11, scope: !1465)
!1743 = !DILocalVariable(name: "pixel", arg: 1, scope: !1744, file: !776, line: 30, type: !1512)
!1744 = distinct !DISubprogram(name: "ConvertRGBToCMYK", scope: !776, file: !776, line: 30, type: !1745, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1512}
!1747 = !{!1743, !1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1748 = !DILocalVariable(name: "black", scope: !1744, file: !776, line: 33, type: !659)
!1749 = !DILocalVariable(name: "blue", scope: !1744, file: !776, line: 34, type: !659)
!1750 = !DILocalVariable(name: "cyan", scope: !1744, file: !776, line: 35, type: !659)
!1751 = !DILocalVariable(name: "green", scope: !1744, file: !776, line: 36, type: !659)
!1752 = !DILocalVariable(name: "magenta", scope: !1744, file: !776, line: 37, type: !659)
!1753 = !DILocalVariable(name: "red", scope: !1744, file: !776, line: 38, type: !659)
!1754 = !DILocalVariable(name: "yellow", scope: !1744, file: !776, line: 39, type: !659)
!1755 = !DILocation(line: 0, scope: !1744, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 813, column: 9, scope: !1740)
!1757 = !DILocation(line: 41, column: 14, scope: !1758, inlinedAt: !1756)
!1758 = distinct !DILexicalBlock(scope: !1744, file: !776, line: 41, column: 7)
!1759 = !{!1524, !713, i64 4}
!1760 = !DILocation(line: 41, column: 25, scope: !1758, inlinedAt: !1756)
!1761 = !DILocation(line: 41, column: 7, scope: !1744, inlinedAt: !1756)
!1762 = !DILocation(line: 43, column: 24, scope: !1763, inlinedAt: !1756)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !776, line: 42, column: 5)
!1764 = !DILocation(line: 43, column: 23, scope: !1763, inlinedAt: !1756)
!1765 = !DILocation(line: 43, column: 11, scope: !1763, inlinedAt: !1756)
!1766 = !DILocation(line: 44, column: 26, scope: !1763, inlinedAt: !1756)
!1767 = !DILocation(line: 44, column: 25, scope: !1763, inlinedAt: !1756)
!1768 = !DILocation(line: 44, column: 13, scope: !1763, inlinedAt: !1756)
!1769 = !DILocation(line: 45, column: 25, scope: !1763, inlinedAt: !1756)
!1770 = !DILocation(line: 45, column: 24, scope: !1763, inlinedAt: !1756)
!1771 = !DILocation(line: 45, column: 12, scope: !1763, inlinedAt: !1756)
!1772 = !DILocation(line: 46, column: 5, scope: !1763, inlinedAt: !1756)
!1773 = !DILocation(line: 49, column: 11, scope: !1774, inlinedAt: !1756)
!1774 = distinct !DILexicalBlock(scope: !1758, file: !776, line: 48, column: 5)
!1775 = !DILocation(line: 50, column: 37, scope: !1774, inlinedAt: !1756)
!1776 = !DILocation(line: 50, column: 13, scope: !1774, inlinedAt: !1756)
!1777 = !DILocation(line: 51, column: 36, scope: !1774, inlinedAt: !1756)
!1778 = !DILocation(line: 51, column: 12, scope: !1774, inlinedAt: !1756)
!1779 = !DILocation(line: 0, scope: !1758, inlinedAt: !1756)
!1780 = !DILocation(line: 53, column: 8, scope: !1781, inlinedAt: !1756)
!1781 = distinct !DILexicalBlock(scope: !1744, file: !776, line: 53, column: 7)
!1782 = !DILocation(line: 53, column: 18, scope: !1781, inlinedAt: !1756)
!1783 = !DILocation(line: 53, column: 35, scope: !1781, inlinedAt: !1756)
!1784 = !DILocation(line: 53, column: 39, scope: !1781, inlinedAt: !1756)
!1785 = !DILocation(line: 53, column: 51, scope: !1781, inlinedAt: !1756)
!1786 = !DILocation(line: 53, column: 68, scope: !1781, inlinedAt: !1756)
!1787 = !DILocation(line: 54, column: 8, scope: !1781, inlinedAt: !1756)
!1788 = !DILocation(line: 54, column: 19, scope: !1781, inlinedAt: !1756)
!1789 = !DILocation(line: 53, column: 7, scope: !1744, inlinedAt: !1756)
!1790 = !DILocation(line: 120, column: 3, scope: !1547, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 815, column: 7, scope: !1465)
!1792 = !DILocation(line: 59, column: 8, scope: !1744, inlinedAt: !1756)
!1793 = !DILocation(line: 60, column: 11, scope: !1744, inlinedAt: !1756)
!1794 = !DILocation(line: 61, column: 10, scope: !1744, inlinedAt: !1756)
!1795 = !DILocation(line: 63, column: 15, scope: !1796, inlinedAt: !1756)
!1796 = distinct !DILexicalBlock(scope: !1744, file: !776, line: 63, column: 7)
!1797 = !DILocation(line: 63, column: 7, scope: !1744, inlinedAt: !1756)
!1798 = !DILocation(line: 64, column: 5, scope: !1796, inlinedAt: !1756)
!1799 = !DILocation(line: 65, column: 14, scope: !1800, inlinedAt: !1756)
!1800 = distinct !DILexicalBlock(scope: !1744, file: !776, line: 65, column: 7)
!1801 = !DILocation(line: 65, column: 7, scope: !1744, inlinedAt: !1756)
!1802 = !DILocation(line: 66, column: 5, scope: !1800, inlinedAt: !1756)
!1803 = !DILocation(line: 67, column: 31, scope: !1744, inlinedAt: !1756)
!1804 = !DILocation(line: 67, column: 26, scope: !1744, inlinedAt: !1756)
!1805 = !DILocation(line: 67, column: 44, scope: !1744, inlinedAt: !1756)
!1806 = !DILocation(line: 67, column: 43, scope: !1744, inlinedAt: !1756)
!1807 = !DILocation(line: 67, column: 38, scope: !1744, inlinedAt: !1756)
!1808 = !DILocation(line: 67, column: 8, scope: !1744, inlinedAt: !1756)
!1809 = !DILocation(line: 68, column: 37, scope: !1744, inlinedAt: !1756)
!1810 = !DILocation(line: 68, column: 29, scope: !1744, inlinedAt: !1756)
!1811 = !DILocation(line: 68, column: 44, scope: !1744, inlinedAt: !1756)
!1812 = !DILocation(line: 68, column: 11, scope: !1744, inlinedAt: !1756)
!1813 = !DILocation(line: 69, column: 35, scope: !1744, inlinedAt: !1756)
!1814 = !DILocation(line: 69, column: 28, scope: !1744, inlinedAt: !1756)
!1815 = !DILocation(line: 69, column: 42, scope: !1744, inlinedAt: !1756)
!1816 = !DILocation(line: 69, column: 10, scope: !1744, inlinedAt: !1756)
!1817 = !DILocation(line: 70, column: 20, scope: !1744, inlinedAt: !1756)
!1818 = !DILocation(line: 71, column: 26, scope: !1744, inlinedAt: !1756)
!1819 = !DILocation(line: 71, column: 13, scope: !1744, inlinedAt: !1756)
!1820 = !DILocation(line: 72, column: 28, scope: !1744, inlinedAt: !1756)
!1821 = !DILocation(line: 72, column: 15, scope: !1744, inlinedAt: !1756)
!1822 = !DILocation(line: 73, column: 27, scope: !1744, inlinedAt: !1756)
!1823 = !DILocation(line: 73, column: 14, scope: !1744, inlinedAt: !1756)
!1824 = !DILocation(line: 74, column: 28, scope: !1744, inlinedAt: !1756)
!1825 = !DILocation(line: 75, column: 1, scope: !1744, inlinedAt: !1756)
!1826 = !DILocation(line: 813, column: 9, scope: !1740)
!1827 = !DILocation(line: 0, scope: !1465)
!1828 = !DILocation(line: 0, scope: !1547, inlinedAt: !1791)
!1829 = !DILocation(line: 0, scope: !826, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 120, column: 3, scope: !1547, inlinedAt: !1791)
!1831 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1830)
!1832 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1830)
!1833 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1830)
!1834 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1830)
!1835 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1830)
!1836 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1830)
!1837 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1830)
!1838 = !DILocation(line: 121, column: 3, scope: !1547, inlinedAt: !1791)
!1839 = !DILocation(line: 0, scope: !826, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 121, column: 3, scope: !1547, inlinedAt: !1791)
!1841 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1840)
!1842 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1840)
!1843 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1840)
!1844 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1840)
!1845 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1840)
!1846 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1840)
!1847 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1840)
!1848 = !DILocation(line: 122, column: 3, scope: !1547, inlinedAt: !1791)
!1849 = !DILocation(line: 0, scope: !826, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 122, column: 3, scope: !1547, inlinedAt: !1791)
!1851 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1850)
!1852 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1850)
!1853 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1850)
!1854 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1850)
!1855 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1850)
!1856 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1850)
!1857 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1850)
!1858 = !DILocation(line: 123, column: 3, scope: !1547, inlinedAt: !1791)
!1859 = !DILocation(line: 0, scope: !826, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 123, column: 3, scope: !1547, inlinedAt: !1791)
!1861 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1860)
!1862 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1860)
!1863 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1860)
!1864 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1860)
!1865 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1860)
!1866 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1860)
!1867 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1860)
!1868 = !DILocation(line: 124, column: 15, scope: !1592, inlinedAt: !1791)
!1869 = !DILocation(line: 124, column: 26, scope: !1592, inlinedAt: !1791)
!1870 = !DILocation(line: 124, column: 45, scope: !1592, inlinedAt: !1791)
!1871 = !DILocation(line: 125, column: 15, scope: !1592, inlinedAt: !1791)
!1872 = !DILocation(line: 125, column: 29, scope: !1592, inlinedAt: !1791)
!1873 = !DILocation(line: 124, column: 7, scope: !1547, inlinedAt: !1791)
!1874 = !DILocation(line: 126, column: 5, scope: !1599, inlinedAt: !1791)
!1875 = !DILocation(line: 0, scope: !826, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 126, column: 5, scope: !1599, inlinedAt: !1791)
!1877 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1876)
!1878 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1876)
!1879 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1876)
!1880 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1876)
!1881 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1876)
!1882 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1876)
!1883 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1876)
!1884 = !DILocation(line: 817, column: 26, scope: !1465)
!1885 = !DILocation(line: 818, column: 18, scope: !1465)
!1886 = !DILocation(line: 823, column: 38, scope: !1474)
!1887 = !DILocation(line: 823, column: 19, scope: !1474)
!1888 = !DILocation(line: 823, column: 7, scope: !1475)
!1889 = !DILocation(line: 834, column: 20, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1473, file: !669, line: 834, column: 13)
!1891 = !DILocation(line: 834, column: 13, scope: !1473)
!1892 = !DILocation(line: 836, column: 61, scope: !1473)
!1893 = !DILocation(line: 836, column: 11, scope: !1473)
!1894 = !DILocation(line: 0, scope: !1473)
!1895 = !DILocation(line: 838, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1473, file: !669, line: 838, column: 13)
!1897 = !DILocation(line: 838, column: 13, scope: !1473)
!1898 = !DILocation(line: 843, column: 21, scope: !1480)
!1899 = !DILocation(line: 843, column: 9, scope: !1481)
!1900 = !DILocation(line: 849, column: 50, scope: !1479)
!1901 = !DILocation(line: 849, column: 47, scope: !1479)
!1902 = !DILocation(line: 849, column: 20, scope: !1479)
!1903 = !DILocation(line: 0, scope: !1479)
!1904 = !DILocation(line: 851, column: 21, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1479, file: !669, line: 851, column: 15)
!1906 = !DILocation(line: 851, column: 15, scope: !1479)
!1907 = !DILocation(line: 851, column: 28, scope: !1905)
!1908 = !DILocation(line: 853, column: 45, scope: !1479)
!1909 = !DILocation(line: 853, column: 40, scope: !1479)
!1910 = !DILocalVariable(name: "x", arg: 1, scope: !1911, file: !1509, line: 78, type: !1914)
!1911 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !1509, file: !1509, line: 78, type: !1912, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1915)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!469, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!1915 = !{!1910, !1916}
!1916 = !DILocalVariable(name: "sign", scope: !1911, file: !1509, line: 81, type: !469)
!1917 = !DILocation(line: 0, scope: !1911, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 854, column: 17, scope: !1479)
!1919 = !DILocation(line: 86, column: 10, scope: !1911, inlinedAt: !1918)
!1920 = !DILocation(line: 86, column: 8, scope: !1911, inlinedAt: !1918)
!1921 = !DILocation(line: 87, column: 12, scope: !1922, inlinedAt: !1918)
!1922 = distinct !DILexicalBlock(scope: !1911, file: !1509, line: 87, column: 7)
!1923 = !DILocation(line: 87, column: 16, scope: !1922, inlinedAt: !1918)
!1924 = !DILocation(line: 87, column: 7, scope: !1911, inlinedAt: !1918)
!1925 = !DILocation(line: 88, column: 15, scope: !1922, inlinedAt: !1918)
!1926 = !DILocation(line: 88, column: 5, scope: !1922, inlinedAt: !1918)
!1927 = !DILocation(line: 89, column: 14, scope: !1911, inlinedAt: !1918)
!1928 = !DILocation(line: 89, column: 3, scope: !1911, inlinedAt: !1918)
!1929 = !DILocation(line: 855, column: 71, scope: !1479)
!1930 = !DILocalVariable(name: "p", arg: 1, scope: !1931, file: !1932, line: 38, type: !829)
!1931 = distinct !DISubprogram(name: "MagickOver_", scope: !1932, file: !1932, line: 38, type: !1933, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1935)
!1932 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d355bbd47b32670d0509e796a91effce")
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!659, !829, !829, !829, !829}
!1935 = !{!1930, !1936, !1937, !1938}
!1936 = !DILocalVariable(name: "alpha", arg: 2, scope: !1931, file: !1932, line: 39, type: !829)
!1937 = !DILocalVariable(name: "q", arg: 3, scope: !1931, file: !1932, line: 39, type: !829)
!1938 = !DILocalVariable(name: "beta", arg: 4, scope: !1931, file: !1932, line: 39, type: !829)
!1939 = !DILocation(line: 0, scope: !1931, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 855, column: 39, scope: !1479)
!1941 = !DILocation(line: 41, column: 14, scope: !1931, inlinedAt: !1940)
!1942 = !DILocation(line: 41, column: 35, scope: !1931, inlinedAt: !1940)
!1943 = !DILocation(line: 42, column: 17, scope: !1931, inlinedAt: !1940)
!1944 = !DILocation(line: 41, column: 36, scope: !1931, inlinedAt: !1940)
!1945 = !DILocation(line: 41, column: 9, scope: !1931, inlinedAt: !1940)
!1946 = !DILocation(line: 855, column: 39, scope: !1479)
!1947 = !DILocation(line: 855, column: 38, scope: !1479)
!1948 = !DILocation(line: 855, column: 33, scope: !1479)
!1949 = !DILocation(line: 0, scope: !826, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 855, column: 18, scope: !1479)
!1951 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1950)
!1952 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1950)
!1953 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1950)
!1954 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1950)
!1955 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1950)
!1956 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1950)
!1957 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1950)
!1958 = !DILocation(line: 855, column: 17, scope: !1479)
!1959 = !DILocation(line: 858, column: 73, scope: !1479)
!1960 = !DILocation(line: 0, scope: !1931, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 858, column: 41, scope: !1479)
!1962 = !DILocation(line: 41, column: 35, scope: !1931, inlinedAt: !1961)
!1963 = !DILocation(line: 42, column: 17, scope: !1931, inlinedAt: !1961)
!1964 = !DILocation(line: 41, column: 36, scope: !1931, inlinedAt: !1961)
!1965 = !DILocation(line: 41, column: 9, scope: !1931, inlinedAt: !1961)
!1966 = !DILocation(line: 858, column: 41, scope: !1479)
!1967 = !DILocation(line: 858, column: 40, scope: !1479)
!1968 = !DILocation(line: 858, column: 35, scope: !1479)
!1969 = !DILocation(line: 0, scope: !826, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 858, column: 20, scope: !1479)
!1971 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1970)
!1972 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1970)
!1973 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1970)
!1974 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1970)
!1975 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1970)
!1976 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1970)
!1977 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1970)
!1978 = !DILocation(line: 858, column: 19, scope: !1479)
!1979 = !DILocation(line: 861, column: 72, scope: !1479)
!1980 = !DILocation(line: 0, scope: !1931, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 861, column: 40, scope: !1479)
!1982 = !DILocation(line: 41, column: 35, scope: !1931, inlinedAt: !1981)
!1983 = !DILocation(line: 42, column: 17, scope: !1931, inlinedAt: !1981)
!1984 = !DILocation(line: 41, column: 36, scope: !1931, inlinedAt: !1981)
!1985 = !DILocation(line: 41, column: 9, scope: !1931, inlinedAt: !1981)
!1986 = !DILocation(line: 861, column: 40, scope: !1479)
!1987 = !DILocation(line: 861, column: 39, scope: !1479)
!1988 = !DILocation(line: 861, column: 34, scope: !1479)
!1989 = !DILocation(line: 0, scope: !826, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 861, column: 19, scope: !1479)
!1991 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !1990)
!1992 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !1990)
!1993 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !1990)
!1994 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !1990)
!1995 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !1990)
!1996 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !1990)
!1997 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !1990)
!1998 = !DILocation(line: 861, column: 18, scope: !1479)
!1999 = !DILocation(line: 864, column: 37, scope: !1479)
!2000 = !DILocation(line: 0, scope: !826, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 864, column: 22, scope: !1479)
!2002 = !DILocation(line: 92, column: 13, scope: !834, inlinedAt: !2001)
!2003 = !DILocation(line: 92, column: 7, scope: !826, inlinedAt: !2001)
!2004 = !DILocation(line: 94, column: 13, scope: !837, inlinedAt: !2001)
!2005 = !DILocation(line: 94, column: 7, scope: !826, inlinedAt: !2001)
!2006 = !DILocation(line: 96, column: 26, scope: !826, inlinedAt: !2001)
!2007 = !DILocation(line: 96, column: 10, scope: !826, inlinedAt: !2001)
!2008 = !DILocation(line: 96, column: 3, scope: !826, inlinedAt: !2001)
!2009 = !DILocation(line: 864, column: 21, scope: !1479)
!2010 = !DILocation(line: 865, column: 12, scope: !1479)
!2011 = !DILocation(line: 843, column: 50, scope: !1480)
!2012 = distinct !{!2012, !1899, !2013, !756, !757}
!2013 = !DILocation(line: 866, column: 9, scope: !1481)
!2014 = !DILocation(line: 867, column: 20, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1473, file: !669, line: 867, column: 13)
!2016 = !DILocation(line: 867, column: 31, scope: !2015)
!2017 = !DILocation(line: 867, column: 13, scope: !1473)
!2018 = !DILocation(line: 869, column: 21, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2015, file: !669, line: 868, column: 11)
!2020 = !DILocation(line: 870, column: 25, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !669, line: 870, column: 13)
!2022 = distinct !DILexicalBlock(scope: !2019, file: !669, line: 870, column: 13)
!2023 = !DILocation(line: 870, column: 13, scope: !2022)
!2024 = !DILocation(line: 871, column: 15, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !669, line: 871, column: 15)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !669, line: 871, column: 15)
!2027 = !DILocation(line: 870, column: 54, scope: !2021)
!2028 = distinct !{!2028, !2023, !2029, !756, !757}
!2029 = !DILocation(line: 871, column: 15, scope: !2022)
!2030 = !DILocation(line: 873, column: 13, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1473, file: !669, line: 873, column: 13)
!2032 = !DILocation(line: 873, column: 64, scope: !2031)
!2033 = !DILocation(line: 873, column: 13, scope: !1473)
!2034 = !DILocation(line: 875, column: 7, scope: !1474)
!2035 = !DILocation(line: 823, column: 45, scope: !1474)
!2036 = distinct !{!2036, !1888, !2037, !756, !757}
!2037 = !DILocation(line: 875, column: 7, scope: !1475)
!2038 = !DILocation(line: 878, column: 5, scope: !1434)
!2039 = !DILocation(line: 816, column: 13, scope: !1465)
!2040 = !DILocation(line: 876, column: 18, scope: !1465)
!2041 = !DILocation(line: 882, column: 14, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 881, column: 5)
!2043 = !DILocation(line: 883, column: 7, scope: !2042)
!2044 = !DILocation(line: 887, column: 18, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !669, line: 887, column: 11)
!2046 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 886, column: 5)
!2047 = !DILocation(line: 887, column: 24, scope: !2045)
!2048 = !DILocation(line: 887, column: 11, scope: !2046)
!2049 = !DILocation(line: 888, column: 16, scope: !2045)
!2050 = !DILocation(line: 888, column: 9, scope: !2045)
!2051 = !DILocation(line: 893, column: 14, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1434, file: !669, line: 892, column: 5)
!2053 = !DILocation(line: 894, column: 7, scope: !2052)
!2054 = !DILocation(line: 899, column: 14, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1423, file: !669, line: 899, column: 7)
!2056 = !DILocation(line: 899, column: 7, scope: !1423)
!2057 = !DILocation(line: 901, column: 44, scope: !1423)
!2058 = !DILocation(line: 901, column: 10, scope: !1423)
!2059 = !DILocation(line: 901, column: 3, scope: !1423)
!2060 = !DILocation(line: 902, column: 1, scope: !1423)
!2061 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !672, !1512}
!2064 = !DILocation(line: 0, scope: !1744)
!2065 = !DILocation(line: 41, column: 14, scope: !1758)
!2066 = !DILocation(line: 41, column: 25, scope: !1758)
!2067 = !DILocation(line: 0, scope: !1758)
!2068 = !DILocation(line: 41, column: 7, scope: !1744)
!2069 = !DILocation(line: 43, column: 24, scope: !1763)
!2070 = !DILocation(line: 43, column: 23, scope: !1763)
!2071 = !DILocation(line: 43, column: 11, scope: !1763)
!2072 = !DILocation(line: 44, column: 33, scope: !1763)
!2073 = !DILocation(line: 44, column: 26, scope: !1763)
!2074 = !DILocation(line: 44, column: 25, scope: !1763)
!2075 = !DILocation(line: 44, column: 13, scope: !1763)
!2076 = !DILocation(line: 45, column: 32, scope: !1763)
!2077 = !DILocation(line: 45, column: 25, scope: !1763)
!2078 = !DILocation(line: 45, column: 24, scope: !1763)
!2079 = !DILocation(line: 45, column: 12, scope: !1763)
!2080 = !DILocation(line: 46, column: 5, scope: !1763)
!2081 = !DILocation(line: 49, column: 11, scope: !1774)
!2082 = !DILocation(line: 50, column: 37, scope: !1774)
!2083 = !DILocation(line: 50, column: 13, scope: !1774)
!2084 = !DILocation(line: 51, column: 36, scope: !1774)
!2085 = !DILocation(line: 51, column: 12, scope: !1774)
!2086 = !DILocation(line: 53, column: 8, scope: !1781)
!2087 = !DILocation(line: 53, column: 18, scope: !1781)
!2088 = !DILocation(line: 53, column: 35, scope: !1781)
!2089 = !DILocation(line: 53, column: 39, scope: !1781)
!2090 = !DILocation(line: 53, column: 51, scope: !1781)
!2091 = !DILocation(line: 53, column: 68, scope: !1781)
!2092 = !DILocation(line: 54, column: 8, scope: !1781)
!2093 = !DILocation(line: 54, column: 19, scope: !1781)
!2094 = !DILocation(line: 53, column: 7, scope: !1744)
!2095 = !DILocation(line: 59, column: 8, scope: !1744)
!2096 = !DILocation(line: 60, column: 11, scope: !1744)
!2097 = !DILocation(line: 61, column: 10, scope: !1744)
!2098 = !DILocation(line: 63, column: 15, scope: !1796)
!2099 = !DILocation(line: 63, column: 7, scope: !1744)
!2100 = !DILocation(line: 64, column: 5, scope: !1796)
!2101 = !DILocation(line: 65, column: 14, scope: !1800)
!2102 = !DILocation(line: 65, column: 7, scope: !1744)
!2103 = !DILocation(line: 66, column: 5, scope: !1800)
!2104 = !DILocation(line: 67, column: 31, scope: !1744)
!2105 = !DILocation(line: 67, column: 26, scope: !1744)
!2106 = !DILocation(line: 67, column: 44, scope: !1744)
!2107 = !DILocation(line: 67, column: 43, scope: !1744)
!2108 = !DILocation(line: 67, column: 38, scope: !1744)
!2109 = !DILocation(line: 67, column: 8, scope: !1744)
!2110 = !DILocation(line: 68, column: 37, scope: !1744)
!2111 = !DILocation(line: 68, column: 29, scope: !1744)
!2112 = !DILocation(line: 68, column: 44, scope: !1744)
!2113 = !DILocation(line: 68, column: 11, scope: !1744)
!2114 = !DILocation(line: 69, column: 35, scope: !1744)
!2115 = !DILocation(line: 69, column: 28, scope: !1744)
!2116 = !DILocation(line: 69, column: 42, scope: !1744)
!2117 = !DILocation(line: 69, column: 10, scope: !1744)
!2118 = !DILocation(line: 70, column: 20, scope: !1744)
!2119 = !DILocation(line: 71, column: 26, scope: !1744)
!2120 = !DILocation(line: 71, column: 10, scope: !1744)
!2121 = !DILocation(line: 71, column: 13, scope: !1744)
!2122 = !DILocation(line: 72, column: 28, scope: !1744)
!2123 = !DILocation(line: 72, column: 10, scope: !1744)
!2124 = !DILocation(line: 72, column: 15, scope: !1744)
!2125 = !DILocation(line: 73, column: 27, scope: !1744)
!2126 = !DILocation(line: 73, column: 10, scope: !1744)
!2127 = !DILocation(line: 73, column: 14, scope: !1744)
!2128 = !DILocation(line: 74, column: 28, scope: !1744)
!2129 = !DILocation(line: 75, column: 1, scope: !1744)
!2130 = !DISubprogram(name: "LevelColorsImage", scope: !2131, file: !2131, line: 55, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!2131 = !DIFile(filename: "apps/538.imagick_r/src/magick/enhance.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6a9430b6e6c4409433b996fd04287515")
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!448, !432, !1550, !1550, !1065}
!2134 = !DISubprogram(name: "SetImageOpacity", scope: !73, file: !73, line: 540, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!448, !432, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!2138 = !DISubprogram(name: "SyncImagePixelCache", scope: !2139, file: !2139, line: 273, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!2139 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6b4e371270617573d29dc6ff902677c8")
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!448, !432, !676}
!2142 = !DISubprogram(name: "FormatLocaleString", scope: !2143, file: !2143, line: 71, type: !2144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!2143 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!496, !2146, !1052, !2147, null}
!2146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !491)
!2147 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !565)
!2148 = !DISubprogram(name: "DecodePixelGamma", scope: !326, file: !326, line: 179, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1053)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!659, !829}
