; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/shear.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/shear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._PointInfo = type { double, double }

@.str = private unnamed_addr constant [84 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/shear.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"  Deskew angle: %g\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"deskew:angle\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"deskew:auto-crop\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"  Deskew geometry: %.20gx%.20g%+.20g%+.20g\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Rotate/Image\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"AngleIsDiscontinuous\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"XShear/Image\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"YShear/Image\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @DeskewImage(ptr noundef %image, double noundef %threshold, ptr noundef %exception) local_unnamed_addr #0 !dbg !784 {
entry:
  %background.i = alloca %struct._MagickPixelPacket, align 8
  %bits.i = alloca [256 x i16], align 16
  %value.i = alloca i16, align 2
  %value117.i = alloca i16, align 2
  %affine_matrix = alloca %struct._AffineMatrix, align 8
  %geometry = alloca %struct._RectangleInfo, align 8
  %angle = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !791, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata double %threshold, metadata !792, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata ptr %exception, metadata !793, metadata !DIExpression()), !dbg !819
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %affine_matrix) #10, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %affine_matrix, metadata !794, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #10, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !811, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i64 1, metadata !815, metadata !DIExpression()), !dbg !819
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %0 = load i64, ptr %columns, align 8, !tbaa !824
  %add = add i64 %0, 7
  %div157 = lshr i64 %add, 3
  br label %for.cond, !dbg !843

for.cond:                                         ; preds = %for.cond, %entry
  %width.0 = phi i64 [ 1, %entry ], [ %shl, %for.cond ], !dbg !845
  call void @llvm.dbg.value(metadata i64 %width.0, metadata !815, metadata !DIExpression()), !dbg !819
  %cmp = icmp ult i64 %width.0, %div157, !dbg !846
  %shl = shl i64 %width.0, 1, !dbg !848
  call void @llvm.dbg.value(metadata i64 %shl, metadata !815, metadata !DIExpression()), !dbg !819
  br i1 %cmp, label %for.cond, label %for.end, !dbg !849, !llvm.loop !850

for.end:                                          ; preds = %for.cond
  %sub = add i64 %shl, -1, !dbg !854
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef %sub, i64 noundef 8) #11, !dbg !855
  call void @llvm.dbg.value(metadata ptr %call, metadata !814, metadata !DIExpression()), !dbg !819
  %cmp1 = icmp eq ptr %call, null, !dbg !856
  br i1 %cmp1, label %if.then, label %if.end, !dbg !858

if.then:                                          ; preds = %for.end
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !859
  %call2 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 607, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename) #10, !dbg !859
  br label %cleanup, !dbg !859

if.end:                                           ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %image, metadata !861, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata double %threshold, metadata !866, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata ptr %call, metadata !867, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata ptr %exception, metadata !868, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %bits.i) #10, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %bits.i, metadata !878, metadata !DIExpression()) #10, !dbg !904
  call void @llvm.dbg.value(metadata i64 1, metadata !875, metadata !DIExpression()) #10, !dbg !901
  %1 = load i64, ptr %columns, align 8, !tbaa !824
  %add.i = add i64 %1, 7
  %div286.i = lshr i64 %add.i, 3
  br label %for.cond.i, !dbg !905

for.cond.i:                                       ; preds = %for.cond.i, %if.end
  %width.0.i = phi i64 [ 1, %if.end ], [ %shl.i, %for.cond.i ], !dbg !907
  call void @llvm.dbg.value(metadata i64 %width.0.i, metadata !875, metadata !DIExpression()) #10, !dbg !901
  %cmp.i = icmp ult i64 %width.0.i, %div286.i, !dbg !908
  %shl.i = shl i64 %width.0.i, 1, !dbg !910
  call void @llvm.dbg.value(metadata i64 %shl.i, metadata !875, metadata !DIExpression()) #10, !dbg !901
  br i1 %cmp.i, label %for.cond.i, label %for.end.i, !dbg !911, !llvm.loop !912

for.end.i:                                        ; preds = %for.cond.i
  %rows.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !914
  %2 = load i64, ptr %rows.i, align 8, !dbg !914, !tbaa !915
  %call.i = tail call ptr @AcquireMatrixInfo(i64 noundef %width.0.i, i64 noundef %2, i64 noundef 2, ptr noundef %exception) #10, !dbg !916
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !871, metadata !DIExpression()) #10, !dbg !901
  %3 = load i64, ptr %rows.i, align 8, !dbg !917, !tbaa !915
  %call2.i = tail call ptr @AcquireMatrixInfo(i64 noundef %width.0.i, i64 noundef %3, i64 noundef 2, ptr noundef %exception) #10, !dbg !918
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !870, metadata !DIExpression()) #10, !dbg !901
  %cmp3.i = icmp eq ptr %call.i, null, !dbg !919
  %cmp4.i = icmp eq ptr %call2.i, null
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %cmp4.i, !dbg !921
  br i1 %or.cond.i, label %if.then.i, label %if.end12.i, !dbg !921

if.then.i:                                        ; preds = %for.end.i
  br i1 %cmp4.i, label %if.end.i, label %if.then6.i, !dbg !922

if.then6.i:                                       ; preds = %if.then.i
  %call7.i = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %call2.i) #10, !dbg !924
  call void @llvm.dbg.value(metadata ptr %call7.i, metadata !870, metadata !DIExpression()) #10, !dbg !901
  br label %if.end.i, !dbg !926

if.end.i:                                         ; preds = %if.then6.i, %if.then.i
  br i1 %cmp3.i, label %if.then5, label %if.then5.sink.split, !dbg !927

if.end12.i:                                       ; preds = %for.end.i
  %call13.i = tail call i32 @NullMatrix(ptr noundef nonnull %call.i) #10, !dbg !928
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !930
  br i1 %cmp14.i, label %if.then15.i, label %for.body21.i, !dbg !931

if.then15.i:                                      ; preds = %if.end12.i
  %call16.i = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %call2.i) #10, !dbg !932
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !870, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata ptr %call17.i, metadata !871, metadata !DIExpression()) #10, !dbg !901
  br label %if.then5.sink.split, !dbg !934

for.body21.i:                                     ; preds = %if.end12.i, %for.end33.i
  %i.0290.i = phi i64 [ %inc.i, %for.end33.i ], [ 0, %if.end12.i ]
  call void @llvm.dbg.value(metadata i64 %i.0290.i, metadata !873, metadata !DIExpression()) #10, !dbg !901
  %conv.i = trunc i64 %i.0290.i to i32, !dbg !935
  call void @llvm.dbg.value(metadata i64 %i.0290.i, metadata !877, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !874, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata i64 poison, metadata !874, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !877, metadata !DIExpression()) #10, !dbg !901
  %cmp24.not287.i = icmp eq i32 %conv.i, 0, !dbg !939
  br i1 %cmp24.not287.i, label %for.end33.i, label %for.body26.i, !dbg !942

for.body26.i:                                     ; preds = %for.body21.i, %for.body26.i
  %byte.0289.i = phi i32 [ %6, %for.body26.i ], [ %conv.i, %for.body21.i ]
  %count.0288.i = phi i16 [ %add29.i, %for.body26.i ], [ 0, %for.body21.i ]
  call void @llvm.dbg.value(metadata i32 %byte.0289.i, metadata !877, metadata !DIExpression()) #10, !dbg !901
  %4 = trunc i32 %byte.0289.i to i16
  %5 = and i16 %4, 1
  %add29.i = add i16 %5, %count.0288.i, !dbg !943
  call void @llvm.dbg.value(metadata i64 undef, metadata !874, metadata !DIExpression()) #10, !dbg !901
  %6 = lshr i32 %byte.0289.i, 1, !dbg !944
  call void @llvm.dbg.value(metadata i64 poison, metadata !874, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata i32 %6, metadata !877, metadata !DIExpression()) #10, !dbg !901
  %cmp24.not.i = icmp ult i32 %byte.0289.i, 2, !dbg !939
  br i1 %cmp24.not.i, label %for.end33.i, label %for.body26.i, !dbg !942, !llvm.loop !945

for.end33.i:                                      ; preds = %for.body26.i, %for.body21.i
  %count.0.lcssa.i = phi i16 [ 0, %for.body21.i ], [ %add29.i, %for.body26.i ], !dbg !947
  %arrayidx.i = getelementptr inbounds [256 x i16], ptr %bits.i, i64 0, i64 %i.0290.i, !dbg !948
  store i16 %count.0.lcssa.i, ptr %arrayidx.i, align 2, !dbg !949, !tbaa !950
  %inc.i = add nuw nsw i64 %i.0290.i, 1, !dbg !951
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !873, metadata !DIExpression()) #10, !dbg !901
  %exitcond.not.i = icmp eq i64 %inc.i, 256, !dbg !952
  br i1 %exitcond.not.i, label %for.end36.i, label %for.body21.i, !dbg !953, !llvm.loop !954

for.end36.i:                                      ; preds = %for.end33.i
  call void @llvm.dbg.value(metadata i32 1, metadata !872, metadata !DIExpression()) #10, !dbg !901
  %call37.i = tail call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #10, !dbg !956
  call void @llvm.dbg.value(metadata ptr %call37.i, metadata !869, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !876, metadata !DIExpression()) #10, !dbg !901
  %7 = load i64, ptr %rows.i, align 8, !dbg !957, !tbaa !915
  %cmp40302.i = icmp sgt i64 %7, 0, !dbg !958
  br i1 %cmp40302.i, label %for.body42.i, label %for.end105.i, !dbg !959

for.body42.i:                                     ; preds = %for.end36.i, %cleanup.i
  %y.0304.i = phi i64 [ %inc104.i, %cleanup.i ], [ 0, %for.end36.i ]
  %status.0303.i = phi i32 [ %status.1.i, %cleanup.i ], [ 1, %for.end36.i ]
  call void @llvm.dbg.value(metadata i64 %y.0304.i, metadata !876, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata i32 %status.0303.i, metadata !872, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #10, !dbg !960
  %cmp45.i = icmp eq i32 %status.0303.i, 0, !dbg !961
  br i1 %cmp45.i, label %cleanup.i, label %if.end48.i, !dbg !963

if.end48.i:                                       ; preds = %for.body42.i
  %8 = load i64, ptr %columns, align 8, !dbg !964, !tbaa !824
  %call50.i = call ptr @GetCacheViewVirtualPixels(ptr noundef %call37.i, i64 noundef 0, i64 noundef %y.0304.i, i64 noundef %8, i64 noundef 1, ptr noundef %exception) #12, !dbg !965
  call void @llvm.dbg.value(metadata ptr %call50.i, metadata !882, metadata !DIExpression()) #10, !dbg !966
  %cmp51.i = icmp eq ptr %call50.i, null, !dbg !967
  br i1 %cmp51.i, label %cleanup.i, label %if.end54.i, !dbg !969

if.end54.i:                                       ; preds = %if.end48.i
  call void @llvm.dbg.value(metadata i64 0, metadata !889, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !890, metadata !DIExpression()) #10, !dbg !966
  %9 = load i64, ptr %columns, align 8, !dbg !970, !tbaa !824
  call void @llvm.dbg.value(metadata i64 %9, metadata !887, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_constu, 8, DW_OP_div, DW_OP_stack_value)) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !888, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata ptr %call50.i, metadata !882, metadata !DIExpression()) #10, !dbg !966
  %cmp60291.i = icmp sgt i64 %9, 0, !dbg !971
  br i1 %cmp60291.i, label %for.body62.i.outer.preheader, label %cleanup.i, !dbg !974

for.body62.i.outer.preheader:                     ; preds = %if.end54.i
  %add56.i = add nuw i64 %9, 7, !dbg !975
  call void @llvm.dbg.value(metadata i64 %add56.i, metadata !887, metadata !DIExpression(DW_OP_constu, 8, DW_OP_div, DW_OP_stack_value)) #10, !dbg !966
  %div57.i = sdiv i64 %add56.i, 8, !dbg !976
  call void @llvm.dbg.value(metadata i64 %div57.i, metadata !887, metadata !DIExpression()) #10, !dbg !966
  br label %for.body62.i.outer, !dbg !974

for.body62.i.outer:                               ; preds = %for.body62.i.outer.preheader, %if.end86.i.thread
  %.ph214 = phi i64 [ %.pre.i, %if.end86.i.thread ], [ %9, %for.body62.i.outer.preheader ]
  %x.0296.i.ph = phi i64 [ %inc88.i190, %if.end86.i.thread ], [ 0, %for.body62.i.outer.preheader ]
  %i43.0295.i.ph = phi i64 [ %dec.i, %if.end86.i.thread ], [ %div57.i, %for.body62.i.outer.preheader ]
  %p.0292.i.ph = phi ptr [ %incdec.ptr.i189, %if.end86.i.thread ], [ %call50.i, %for.body62.i.outer.preheader ]
  br label %for.body62.i, !dbg !974

for.body62.i:                                     ; preds = %for.body62.i.outer, %if.end86.i
  %byte44.0298.i = phi i64 [ %byte44.1.i, %if.end86.i ], [ 0, %for.body62.i.outer ]
  %bit.0297.i = phi i64 [ %inc80.i, %if.end86.i ], [ 0, %for.body62.i.outer ]
  %x.0296.i = phi i64 [ %inc88.i, %if.end86.i ], [ %x.0296.i.ph, %for.body62.i.outer ]
  %p.0292.i = phi ptr [ %incdec.ptr.i, %if.end86.i ], [ %p.0292.i.ph, %for.body62.i.outer ]
  call void @llvm.dbg.value(metadata i64 %byte44.0298.i, metadata !890, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 %bit.0297.i, metadata !889, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 %x.0296.i, metadata !888, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 %i43.0295.i.ph, metadata !887, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata ptr %p.0292.i, metadata !882, metadata !DIExpression()) #10, !dbg !966
  %shl63.i = shl i64 %byte44.0298.i, 1, !dbg !977
  call void @llvm.dbg.value(metadata i64 %shl63.i, metadata !890, metadata !DIExpression()) #10, !dbg !966
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0292.i, i64 0, i32 2, !dbg !979
  %10 = load i16, ptr %red.i, align 2, !dbg !979, !tbaa !981
  %conv65.i = uitofp i16 %10 to double, !dbg !982
  %cmp66.i = fcmp olt double %conv65.i, %threshold, !dbg !983
  br i1 %cmp66.i, label %if.then78.i, label %lor.lhs.false68.i, !dbg !984

lor.lhs.false68.i:                                ; preds = %for.body62.i
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0292.i, i64 0, i32 1, !dbg !985
  %11 = load i16, ptr %green.i, align 2, !dbg !985, !tbaa !986
  %conv70.i = uitofp i16 %11 to double, !dbg !987
  %cmp71.i = fcmp olt double %conv70.i, %threshold, !dbg !988
  br i1 %cmp71.i, label %if.then78.i, label %lor.lhs.false73.i, !dbg !989

lor.lhs.false73.i:                                ; preds = %lor.lhs.false68.i
  %12 = load i16, ptr %p.0292.i, align 2, !dbg !990, !tbaa !991
  %conv75.i = uitofp i16 %12 to double, !dbg !992
  %cmp76.i = fcmp olt double %conv75.i, %threshold, !dbg !993
  br i1 %cmp76.i, label %if.then78.i, label %if.end79.i, !dbg !994

if.then78.i:                                      ; preds = %lor.lhs.false73.i, %lor.lhs.false68.i, %for.body62.i
  %or.i = or i64 %shl63.i, 1, !dbg !995
  call void @llvm.dbg.value(metadata i64 %or.i, metadata !890, metadata !DIExpression()) #10, !dbg !966
  br label %if.end79.i, !dbg !996

if.end79.i:                                       ; preds = %if.then78.i, %lor.lhs.false73.i
  %byte44.1.i = phi i64 [ %or.i, %if.then78.i ], [ %shl63.i, %lor.lhs.false73.i ], !dbg !997
  call void @llvm.dbg.value(metadata i64 %byte44.1.i, metadata !890, metadata !DIExpression()) #10, !dbg !966
  %inc80.i = add nuw nsw i64 %bit.0297.i, 1, !dbg !998
  call void @llvm.dbg.value(metadata i64 %inc80.i, metadata !889, metadata !DIExpression()) #10, !dbg !966
  %cmp81.i = icmp eq i64 %inc80.i, 8, !dbg !999
  br i1 %cmp81.i, label %if.end86.i.thread, label %if.end86.i, !dbg !1001

if.end86.i:                                       ; preds = %if.end79.i
  call void @llvm.dbg.value(metadata i64 %byte44.1.i, metadata !890, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 %inc80.i, metadata !889, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 %i43.0295.i.ph, metadata !887, metadata !DIExpression()) #10, !dbg !966
  %incdec.ptr.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0292.i, i64 1, !dbg !1002
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !882, metadata !DIExpression()) #10, !dbg !966
  %inc88.i = add nuw nsw i64 %x.0296.i, 1, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %inc88.i, metadata !888, metadata !DIExpression()) #10, !dbg !966
  %cmp60.i = icmp slt i64 %inc88.i, %.ph214, !dbg !971
  br i1 %cmp60.i, label %for.body62.i, label %if.then92.i, !dbg !974, !llvm.loop !1004

if.end86.i.thread:                                ; preds = %if.end79.i
  %arrayidx84.i = getelementptr inbounds [256 x i16], ptr %bits.i, i64 0, i64 %byte44.1.i, !dbg !1006
  %13 = load i16, ptr %arrayidx84.i, align 2, !dbg !1006, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %13, metadata !891, metadata !DIExpression()) #10, !dbg !966
  store i16 %13, ptr %value.i, align 2, !dbg !1008, !tbaa !950
  %dec.i = add nsw i64 %i43.0295.i.ph, -1, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %dec.i, metadata !887, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata ptr %value.i, metadata !891, metadata !DIExpression(DW_OP_deref)) #10, !dbg !966
  %call85.i = call i32 @SetMatrixElement(ptr noundef %call.i, i64 noundef %dec.i, i64 noundef %y.0304.i, ptr noundef nonnull %value.i) #10, !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !889, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 0, metadata !890, metadata !DIExpression()) #10, !dbg !966
  %.pre.i = load i64, ptr %columns, align 8, !dbg !1011, !tbaa !824
  call void @llvm.dbg.value(metadata i64 %byte44.1.i, metadata !890, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 undef, metadata !889, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata i64 %i43.0295.i.ph, metadata !887, metadata !DIExpression()) #10, !dbg !966
  %incdec.ptr.i189 = getelementptr inbounds %struct._PixelPacket, ptr %p.0292.i, i64 1, !dbg !1002
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !882, metadata !DIExpression()) #10, !dbg !966
  %inc88.i190 = add nuw nsw i64 %x.0296.i, 1, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %inc88.i, metadata !888, metadata !DIExpression()) #10, !dbg !966
  %cmp60.i191 = icmp slt i64 %inc88.i190, %.pre.i, !dbg !971
  br i1 %cmp60.i191, label %for.body62.i.outer, label %cleanup.i, !dbg !974, !llvm.loop !1004

if.then92.i:                                      ; preds = %if.end86.i
  %sub.i = sub nsw i64 7, %bit.0297.i, !dbg !1012
  %shl93.i = shl i64 %byte44.1.i, %sub.i, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %shl93.i, metadata !890, metadata !DIExpression()) #10, !dbg !966
  %arrayidx94.i = getelementptr inbounds [256 x i16], ptr %bits.i, i64 0, i64 %shl93.i, !dbg !1016
  %14 = load i16, ptr %arrayidx94.i, align 2, !dbg !1016, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %14, metadata !891, metadata !DIExpression()) #10, !dbg !966
  store i16 %14, ptr %value.i, align 2, !dbg !1017, !tbaa !950
  %dec95.i = add nsw i64 %i43.0295.i.ph, -1, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %dec95.i, metadata !887, metadata !DIExpression()) #10, !dbg !966
  call void @llvm.dbg.value(metadata ptr %value.i, metadata !891, metadata !DIExpression(DW_OP_deref)) #10, !dbg !966
  %call96.i = call i32 @SetMatrixElement(ptr noundef %call.i, i64 noundef %dec95.i, i64 noundef %y.0304.i, ptr noundef nonnull %value.i) #10, !dbg !1019
  br label %cleanup.i, !dbg !1020

cleanup.i:                                        ; preds = %if.end86.i.thread, %if.then92.i, %if.end54.i, %if.end48.i, %for.body42.i
  %status.1.i = phi i32 [ 0, %for.body42.i ], [ 0, %if.end48.i ], [ 1, %if.then92.i ], [ 1, %if.end54.i ], [ 1, %if.end86.i.thread ], !dbg !901
  call void @llvm.dbg.value(metadata i32 %status.1.i, metadata !872, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #10, !dbg !1021
  %inc104.i = add nuw nsw i64 %y.0304.i, 1, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %inc104.i, metadata !876, metadata !DIExpression()) #10, !dbg !901
  %15 = load i64, ptr %rows.i, align 8, !dbg !957, !tbaa !915
  %cmp40.i = icmp slt i64 %inc104.i, %15, !dbg !958
  br i1 %cmp40.i, label %for.body42.i, label %for.end105.i, !dbg !959, !llvm.loop !1023

for.end105.i:                                     ; preds = %cleanup.i, %for.end36.i
  %status.0.lcssa.i = phi i32 [ 1, %for.end36.i ], [ %status.1.i, %cleanup.i ], !dbg !1025
  call fastcc void @RadonProjection(ptr noundef %call.i, ptr noundef %call2.i, i64 noundef -1, ptr noundef nonnull %call) #10, !dbg !1026
  %call106.i = call i32 @NullMatrix(ptr noundef %call.i) #10, !dbg !1027
  call void @llvm.dbg.value(metadata i64 0, metadata !876, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa.i, metadata !872, metadata !DIExpression()) #10, !dbg !901
  %16 = load i64, ptr %rows.i, align 8, !dbg !1028, !tbaa !915
  %cmp109317.i = icmp sgt i64 %16, 0, !dbg !1029
  br i1 %cmp109317.i, label %for.body111.i, label %RadonTransform.exit, !dbg !1030

for.body111.i:                                    ; preds = %for.end105.i, %cleanup175.i
  %y.1319.i = phi i64 [ %inc184.i, %cleanup175.i ], [ 0, %for.end105.i ]
  %status.2318.i = phi i32 [ %status.3.i, %cleanup175.i ], [ %status.0.lcssa.i, %for.end105.i ]
  call void @llvm.dbg.value(metadata i64 %y.1319.i, metadata !876, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.dbg.value(metadata i32 %status.2318.i, metadata !872, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value117.i) #10, !dbg !1031
  %cmp118.i = icmp eq i32 %status.2318.i, 0, !dbg !1032
  br i1 %cmp118.i, label %cleanup175.i, label %if.end121.i, !dbg !1034

if.end121.i:                                      ; preds = %for.body111.i
  %17 = load i64, ptr %columns, align 8, !dbg !1035, !tbaa !824
  %call123.i = call ptr @GetCacheViewVirtualPixels(ptr noundef %call37.i, i64 noundef 0, i64 noundef %y.1319.i, i64 noundef %17, i64 noundef 1, ptr noundef %exception) #12, !dbg !1036
  call void @llvm.dbg.value(metadata ptr %call123.i, metadata !892, metadata !DIExpression()) #10, !dbg !1037
  %cmp124.i = icmp eq ptr %call123.i, null, !dbg !1038
  br i1 %cmp124.i, label %cleanup175.i, label %for.cond128.preheader.i, !dbg !1040

for.cond128.preheader.i:                          ; preds = %if.end121.i
  call void @llvm.dbg.value(metadata i64 0, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !898, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !897, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !896, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata ptr %call123.i, metadata !892, metadata !DIExpression()) #10, !dbg !1037
  %18 = load i64, ptr %columns, align 8, !dbg !1041, !tbaa !824
  %cmp130306.i = icmp sgt i64 %18, 0, !dbg !1044
  br i1 %cmp130306.i, label %for.body132.i.outer, label %cleanup175.i, !dbg !1045

for.body132.i.outer:                              ; preds = %for.cond128.preheader.i, %if.end161.i.thread
  %.ph = phi i64 [ %.pre320.i, %if.end161.i.thread ], [ %18, %for.cond128.preheader.i ]
  %x114.0311.i.ph = phi i64 [ %inc164.i203, %if.end161.i.thread ], [ 0, %for.cond128.preheader.i ]
  %i113.0310.i.ph = phi i64 [ %inc159.i, %if.end161.i.thread ], [ 0, %for.cond128.preheader.i ]
  %p112.0307.i.ph = phi ptr [ %incdec.ptr162.i202, %if.end161.i.thread ], [ %call123.i, %for.cond128.preheader.i ]
  br label %for.body132.i, !dbg !1045

for.body132.i:                                    ; preds = %for.body132.i.outer, %if.end161.i
  %byte116.0313.i = phi i64 [ %byte116.1.i, %if.end161.i ], [ 0, %for.body132.i.outer ]
  %bit115.0312.i = phi i64 [ %inc154.i, %if.end161.i ], [ 0, %for.body132.i.outer ]
  %x114.0311.i = phi i64 [ %inc164.i, %if.end161.i ], [ %x114.0311.i.ph, %for.body132.i.outer ]
  %p112.0307.i = phi ptr [ %incdec.ptr162.i, %if.end161.i ], [ %p112.0307.i.ph, %for.body132.i.outer ]
  call void @llvm.dbg.value(metadata i64 %byte116.0313.i, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %bit115.0312.i, metadata !898, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %x114.0311.i, metadata !897, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %i113.0310.i.ph, metadata !896, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata ptr %p112.0307.i, metadata !892, metadata !DIExpression()) #10, !dbg !1037
  %shl133.i = shl i64 %byte116.0313.i, 1, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %shl133.i, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  %red134.i = getelementptr inbounds %struct._PixelPacket, ptr %p112.0307.i, i64 0, i32 2, !dbg !1048
  %19 = load i16, ptr %red134.i, align 2, !dbg !1048, !tbaa !981
  %conv136.i = uitofp i16 %19 to double, !dbg !1050
  %cmp137.i = fcmp olt double %conv136.i, %threshold, !dbg !1051
  br i1 %cmp137.i, label %if.then151.i, label %lor.lhs.false139.i, !dbg !1052

lor.lhs.false139.i:                               ; preds = %for.body132.i
  %green140.i = getelementptr inbounds %struct._PixelPacket, ptr %p112.0307.i, i64 0, i32 1, !dbg !1053
  %20 = load i16, ptr %green140.i, align 2, !dbg !1053, !tbaa !986
  %conv142.i = uitofp i16 %20 to double, !dbg !1054
  %cmp143.i = fcmp olt double %conv142.i, %threshold, !dbg !1055
  br i1 %cmp143.i, label %if.then151.i, label %lor.lhs.false145.i, !dbg !1056

lor.lhs.false145.i:                               ; preds = %lor.lhs.false139.i
  %21 = load i16, ptr %p112.0307.i, align 2, !dbg !1057, !tbaa !991
  %conv148.i = uitofp i16 %21 to double, !dbg !1058
  %cmp149.i = fcmp olt double %conv148.i, %threshold, !dbg !1059
  br i1 %cmp149.i, label %if.then151.i, label %if.end153.i, !dbg !1060

if.then151.i:                                     ; preds = %lor.lhs.false145.i, %lor.lhs.false139.i, %for.body132.i
  %or152.i = or i64 %shl133.i, 1, !dbg !1061
  call void @llvm.dbg.value(metadata i64 %or152.i, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  br label %if.end153.i, !dbg !1062

if.end153.i:                                      ; preds = %if.then151.i, %lor.lhs.false145.i
  %byte116.1.i = phi i64 [ %or152.i, %if.then151.i ], [ %shl133.i, %lor.lhs.false145.i ], !dbg !1063
  call void @llvm.dbg.value(metadata i64 %byte116.1.i, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  %inc154.i = add nuw nsw i64 %bit115.0312.i, 1, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %inc154.i, metadata !898, metadata !DIExpression()) #10, !dbg !1037
  %cmp155.i = icmp eq i64 %inc154.i, 8, !dbg !1065
  br i1 %cmp155.i, label %if.end161.i.thread, label %if.end161.i, !dbg !1067

if.end161.i:                                      ; preds = %if.end153.i
  call void @llvm.dbg.value(metadata i64 %byte116.1.i, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %inc154.i, metadata !898, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %i113.0310.i.ph, metadata !896, metadata !DIExpression()) #10, !dbg !1037
  %incdec.ptr162.i = getelementptr inbounds %struct._PixelPacket, ptr %p112.0307.i, i64 1, !dbg !1068
  call void @llvm.dbg.value(metadata ptr %incdec.ptr162.i, metadata !892, metadata !DIExpression()) #10, !dbg !1037
  %inc164.i = add nuw nsw i64 %x114.0311.i, 1, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %inc164.i, metadata !897, metadata !DIExpression()) #10, !dbg !1037
  %cmp130.i = icmp slt i64 %inc164.i, %.ph, !dbg !1044
  br i1 %cmp130.i, label %for.body132.i, label %if.then168.i, !dbg !1045, !llvm.loop !1070

if.end161.i.thread:                               ; preds = %if.end153.i
  %arrayidx158.i = getelementptr inbounds [256 x i16], ptr %bits.i, i64 0, i64 %byte116.1.i, !dbg !1072
  %22 = load i16, ptr %arrayidx158.i, align 2, !dbg !1072, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %22, metadata !900, metadata !DIExpression()) #10, !dbg !1037
  store i16 %22, ptr %value117.i, align 2, !dbg !1074, !tbaa !950
  %inc159.i = add nuw nsw i64 %i113.0310.i.ph, 1, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %inc159.i, metadata !896, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata ptr %value117.i, metadata !900, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1037
  %call160.i = call i32 @SetMatrixElement(ptr noundef %call.i, i64 noundef %i113.0310.i.ph, i64 noundef %y.1319.i, ptr noundef nonnull %value117.i) #10, !dbg !1076
  call void @llvm.dbg.value(metadata i64 0, metadata !898, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  %.pre320.i = load i64, ptr %columns, align 8, !dbg !1041, !tbaa !824
  call void @llvm.dbg.value(metadata i64 %byte116.1.i, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 undef, metadata !898, metadata !DIExpression()) #10, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %i113.0310.i.ph, metadata !896, metadata !DIExpression()) #10, !dbg !1037
  %incdec.ptr162.i202 = getelementptr inbounds %struct._PixelPacket, ptr %p112.0307.i, i64 1, !dbg !1068
  call void @llvm.dbg.value(metadata ptr %incdec.ptr162.i, metadata !892, metadata !DIExpression()) #10, !dbg !1037
  %inc164.i203 = add nuw nsw i64 %x114.0311.i, 1, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %inc164.i, metadata !897, metadata !DIExpression()) #10, !dbg !1037
  %cmp130.i204 = icmp slt i64 %inc164.i203, %.pre320.i, !dbg !1044
  br i1 %cmp130.i204, label %for.body132.i.outer, label %cleanup175.i, !dbg !1045, !llvm.loop !1070

if.then168.i:                                     ; preds = %if.end161.i
  %sub169.i = sub nsw i64 7, %bit115.0312.i, !dbg !1077
  %shl170.i = shl i64 %byte116.1.i, %sub169.i, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %shl170.i, metadata !899, metadata !DIExpression()) #10, !dbg !1037
  %arrayidx171.i = getelementptr inbounds [256 x i16], ptr %bits.i, i64 0, i64 %shl170.i, !dbg !1081
  %23 = load i16, ptr %arrayidx171.i, align 2, !dbg !1081, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %23, metadata !900, metadata !DIExpression()) #10, !dbg !1037
  store i16 %23, ptr %value117.i, align 2, !dbg !1082, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %i113.0310.i.ph, metadata !896, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1037
  call void @llvm.dbg.value(metadata ptr %value117.i, metadata !900, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1037
  %call173.i = call i32 @SetMatrixElement(ptr noundef %call.i, i64 noundef %i113.0310.i.ph, i64 noundef %y.1319.i, ptr noundef nonnull %value117.i) #10, !dbg !1083
  br label %cleanup175.i, !dbg !1084

cleanup175.i:                                     ; preds = %if.end161.i.thread, %if.then168.i, %for.cond128.preheader.i, %if.end121.i, %for.body111.i
  %status.3.i = phi i32 [ 0, %for.body111.i ], [ 0, %if.end121.i ], [ 1, %if.then168.i ], [ 1, %for.cond128.preheader.i ], [ 1, %if.end161.i.thread ], !dbg !901
  call void @llvm.dbg.value(metadata i32 %status.3.i, metadata !872, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value117.i) #10, !dbg !1085
  %inc184.i = add nuw nsw i64 %y.1319.i, 1, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %inc184.i, metadata !876, metadata !DIExpression()) #10, !dbg !901
  %24 = load i64, ptr %rows.i, align 8, !dbg !1028, !tbaa !915
  %cmp109.i = icmp slt i64 %inc184.i, %24, !dbg !1029
  br i1 %cmp109.i, label %for.body111.i, label %RadonTransform.exit, !dbg !1030, !llvm.loop !1087

RadonTransform.exit:                              ; preds = %cleanup175.i, %for.end105.i
  call fastcc void @RadonProjection(ptr noundef %call.i, ptr noundef %call2.i, i64 noundef 1, ptr noundef nonnull %call) #10, !dbg !1089
  %call186.i = call ptr @DestroyCacheView(ptr noundef %call37.i) #10, !dbg !1090
  call void @llvm.dbg.value(metadata ptr %call186.i, metadata !869, metadata !DIExpression()) #10, !dbg !901
  %call187.i = call ptr @DestroyMatrixInfo(ptr noundef %call2.i) #10, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %call187.i, metadata !870, metadata !DIExpression()) #10, !dbg !901
  %call188.i = call ptr @DestroyMatrixInfo(ptr noundef %call.i) #10, !dbg !1092
  call void @llvm.dbg.value(metadata ptr %call188.i, metadata !871, metadata !DIExpression()) #10, !dbg !901
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %bits.i) #10, !dbg !1093
  call void @llvm.dbg.value(metadata i32 1, metadata !810, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !816, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !813, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 0, metadata !812, metadata !DIExpression()), !dbg !819
  %cmp14227 = icmp sgt i64 %sub, 0, !dbg !1094
  br i1 %cmp14227, label %for.body15.lr.ph, label %for.end23, !dbg !1097

for.body15.lr.ph:                                 ; preds = %RadonTransform.exit
  %sub18 = sub i64 1, %width.0
  br label %for.body15, !dbg !1097

if.then5.sink.split:                              ; preds = %if.end.i, %if.then15.i
  %call17.i = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %call.i) #10, !dbg !901
  br label %if.then5, !dbg !1093

if.then5:                                         ; preds = %if.then5.sink.split, %if.end.i
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %bits.i) #10, !dbg !1093
  call void @llvm.dbg.value(metadata i32 1, metadata !810, metadata !DIExpression()), !dbg !819
  %call6 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #10, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %call6, metadata !814, metadata !DIExpression()), !dbg !819
  %filename7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1101
  %call9 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename7) #10, !dbg !1101
  br label %cleanup, !dbg !1101

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %skew.0231 = phi i64 [ 0, %for.body15.lr.ph ], [ %spec.select232, %for.body15 ]
  %max_projection.0230 = phi i64 [ 0, %for.body15.lr.ph ], [ %26, %for.body15 ]
  %i.0228 = phi i64 [ 0, %for.body15.lr.ph ], [ %inc, %for.body15 ]
  call void @llvm.dbg.value(metadata i64 %skew.0231, metadata !816, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %max_projection.0230, metadata !813, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %i.0228, metadata !812, metadata !DIExpression()), !dbg !819
  %arrayidx = getelementptr inbounds i64, ptr %call, i64 %i.0228, !dbg !1103
  %25 = load i64, ptr %arrayidx, align 8, !dbg !1103, !tbaa !1106
  %cmp16 = icmp ugt i64 %25, %max_projection.0230, !dbg !1107
  %add19 = add i64 %sub18, %i.0228
  %26 = call i64 @llvm.umax.i64(i64 %25, i64 %max_projection.0230), !dbg !1108
  %spec.select232 = select i1 %cmp16, i64 %add19, i64 %skew.0231, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %spec.select232, metadata !816, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i64 %26, metadata !813, metadata !DIExpression()), !dbg !819
  %inc = add nuw nsw i64 %i.0228, 1, !dbg !1109
  call void @llvm.dbg.value(metadata i64 %inc, metadata !812, metadata !DIExpression()), !dbg !819
  %exitcond.not = icmp eq i64 %inc, %sub, !dbg !1094
  br i1 %exitcond.not, label %for.end23.loopexit, label %for.body15, !dbg !1097, !llvm.loop !1110

for.end23.loopexit:                               ; preds = %for.body15
  %phi.cast = sitofp i64 %spec.select232 to double, !dbg !1112
  br label %for.end23, !dbg !1112

for.end23:                                        ; preds = %for.end23.loopexit, %RadonTransform.exit
  %skew.0.lcssa = phi double [ 0.000000e+00, %RadonTransform.exit ], [ %phi.cast, %for.end23.loopexit ]
  %call24 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #10, !dbg !1112
  call void @llvm.dbg.value(metadata ptr %call24, metadata !814, metadata !DIExpression()), !dbg !819
  %conv25 = uitofp i64 %width.0 to double, !dbg !1113
  %div26 = fdiv double %skew.0.lcssa, %conv25, !dbg !1114
  %div27 = fmul double %div26, 1.250000e-01, !dbg !1115
  %call28 = call double @atan(double noundef %div27) #10, !dbg !1116
  %27 = fptrunc double %call28 to float, !dbg !1117
  %conv29 = fneg float %27, !dbg !1117
  call void @llvm.dbg.value(metadata float %conv29, metadata !1118, metadata !DIExpression()), !dbg !1124
  %conv.i158 = fpext float %conv29 to double, !dbg !1126
  %mul.i = fmul double %conv.i158, 1.800000e+02, !dbg !1127
  %div.i = fdiv double %mul.i, 0x400921FB54442D18, !dbg !1128
  %conv1.i = fptrunc double %div.i to float, !dbg !1129
  %conv31 = fpext float %conv1.i to double, !dbg !1130
  call void @llvm.dbg.value(metadata double %conv31, metadata !805, metadata !DIExpression()), !dbg !819
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1131
  %28 = load i32, ptr %debug, align 8, !dbg !1131, !tbaa !1133
  %cmp32.not = icmp eq i32 %28, 0, !dbg !1134
  br i1 %cmp32.not, label %if.end36, label %if.then34, !dbg !1135

if.then34:                                        ; preds = %for.end23
  %call35 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 627, ptr noundef nonnull @.str.4, double noundef %conv31) #10, !dbg !1136
  br label %if.end36, !dbg !1137

if.end36:                                         ; preds = %if.then34, %for.end23
  %call37 = call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #10, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %call37, metadata !806, metadata !DIExpression()), !dbg !819
  %cmp38 = icmp eq ptr %call37, null, !dbg !1139
  br i1 %cmp38, label %cleanup, label %if.end41, !dbg !1141

if.end41:                                         ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %angle) #10, !dbg !1142
  call void @llvm.dbg.declare(metadata ptr %angle, metadata !817, metadata !DIExpression()), !dbg !1143
  %call43 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %angle, i64 noundef 4096, ptr noundef nonnull @.str.5, double noundef %conv31) #10, !dbg !1144
  %call45 = call i32 @SetImageArtifact(ptr noundef nonnull %call37, ptr noundef nonnull @.str.6, ptr noundef nonnull %angle) #10, !dbg !1145
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %angle) #10, !dbg !1146
  %call46 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %call37, i32 noundef 1) #10, !dbg !1147
  %call47 = call double @fmod(double noundef %conv31, double noundef 3.600000e+02) #10, !dbg !1148
  call void @llvm.dbg.value(metadata double %call47, metadata !1149, metadata !DIExpression()), !dbg !1154
  %mul.i159 = fmul double %call47, 0x400921FB54442D18, !dbg !1156
  %div.i160 = fdiv double %mul.i159, 1.800000e+02, !dbg !1157
  %call49 = call double @cos(double noundef %div.i160) #10, !dbg !1158
  store double %call49, ptr %affine_matrix, align 8, !dbg !1159, !tbaa !1160
  %call50 = call double @fmod(double noundef %conv31, double noundef 3.600000e+02) #10, !dbg !1162
  call void @llvm.dbg.value(metadata double %call50, metadata !1149, metadata !DIExpression()), !dbg !1163
  %mul.i161 = fmul double %call50, 0x400921FB54442D18, !dbg !1165
  %div.i162 = fdiv double %mul.i161, 1.800000e+02, !dbg !1166
  %call52 = call double @sin(double noundef %div.i162) #10, !dbg !1167
  %rx = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 1, !dbg !1168
  store double %call52, ptr %rx, align 8, !dbg !1169, !tbaa !1170
  %call53 = call double @fmod(double noundef %conv31, double noundef 3.600000e+02) #10, !dbg !1171
  call void @llvm.dbg.value(metadata double %call53, metadata !1149, metadata !DIExpression()), !dbg !1172
  %mul.i163 = fmul double %call53, 0x400921FB54442D18, !dbg !1174
  %div.i164 = fdiv double %mul.i163, 1.800000e+02, !dbg !1175
  %call55 = call double @sin(double noundef %div.i164) #10, !dbg !1176
  %fneg56 = fneg double %call55, !dbg !1177
  %ry = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 2, !dbg !1178
  store double %fneg56, ptr %ry, align 8, !dbg !1179, !tbaa !1180
  %call57 = call double @fmod(double noundef %conv31, double noundef 3.600000e+02) #10, !dbg !1181
  call void @llvm.dbg.value(metadata double %call57, metadata !1149, metadata !DIExpression()), !dbg !1182
  %mul.i165 = fmul double %call57, 0x400921FB54442D18, !dbg !1184
  %div.i166 = fdiv double %mul.i165, 1.800000e+02, !dbg !1185
  %call59 = call double @cos(double noundef %div.i166) #10, !dbg !1186
  %sy = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 3, !dbg !1187
  store double %call59, ptr %sy, align 8, !dbg !1188, !tbaa !1189
  %tx = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 4, !dbg !1190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %tx, i8 0, i64 16, i1 false), !dbg !1191
  %call60 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.7) #10, !dbg !1192
  call void @llvm.dbg.value(metadata ptr %call60, metadata !804, metadata !DIExpression()), !dbg !819
  %cmp61 = icmp eq ptr %call60, null, !dbg !1193
  br i1 %cmp61, label %if.then63, label %if.end66, !dbg !1195

if.then63:                                        ; preds = %if.end41
  %call64 = call ptr @AffineTransformImage(ptr noundef nonnull %call37, ptr noundef nonnull %affine_matrix, ptr noundef %exception) #10, !dbg !1196
  call void @llvm.dbg.value(metadata ptr %call64, metadata !808, metadata !DIExpression()), !dbg !819
  %call65 = call ptr @DestroyImage(ptr noundef nonnull %call37) #10, !dbg !1198
  call void @llvm.dbg.value(metadata ptr %call65, metadata !806, metadata !DIExpression()), !dbg !819
  br label %cleanup, !dbg !1199

if.end66:                                         ; preds = %if.end41
  call void @llvm.dbg.value(metadata ptr %call60, metadata !1200, metadata !DIExpression()) #10, !dbg !1207
  %call.i167 = call i64 @strtol(ptr nocapture noundef nonnull %call60, ptr noundef null, i32 noundef 10) #10, !dbg !1209
  call void @llvm.dbg.value(metadata ptr %call37, metadata !1210, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %call.i167, metadata !1215, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1216, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %background.i) #10, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %background.i, metadata !1218, metadata !DIExpression()) #10, !dbg !1229
  %cmp.i168 = icmp slt i64 %call.i167, 1, !dbg !1230
  br i1 %cmp.i168, label %GetImageBackgroundColor.exit, label %if.end.i171, !dbg !1232

if.end.i171:                                      ; preds = %if.end66
  call void @GetMagickPixelPacket(ptr noundef nonnull %call37, ptr noundef nonnull %background.i) #10, !dbg !1233
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1219, metadata !DIExpression()) #10, !dbg !1226
  %call.i169 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %call37, ptr noundef %exception) #10, !dbg !1234
  call void @llvm.dbg.value(metadata ptr %call.i169, metadata !1217, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !1220, metadata !DIExpression()) #10, !dbg !1226
  %rows.i170 = getelementptr inbounds %struct._Image, ptr %call37, i64 0, i32 8
  %29 = load i64, ptr %rows.i170, align 8, !dbg !1235, !tbaa !915
  %cmp1144.i = icmp sgt i64 %29, 0, !dbg !1236
  br i1 %cmp1144.i, label %for.body.lr.ph.i, label %for.end45.i, !dbg !1237

for.body.lr.ph.i:                                 ; preds = %if.end.i171
  %columns.i172 = getelementptr inbounds %struct._Image, ptr %call37, i64 0, i32 7
  %red23.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background.i, i64 0, i32 5
  %green28.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background.i, i64 0, i32 6
  %blue33.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background.i, i64 0, i32 7
  %opacity38.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background.i, i64 0, i32 8
  br label %for.body.i, !dbg !1237

for.body.i:                                       ; preds = %cleanup.i182, %for.body.lr.ph.i
  %30 = phi i64 [ %29, %for.body.lr.ph.i ], [ %41, %cleanup.i182 ]
  %y.0146.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc44.i, %cleanup.i182 ]
  %count.0145.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %count.3.i, %cleanup.i182 ]
  call void @llvm.dbg.value(metadata i64 %y.0146.i, metadata !1220, metadata !DIExpression()) #10, !dbg !1226
  call void @llvm.dbg.value(metadata float %count.0145.i, metadata !1219, metadata !DIExpression()) #10, !dbg !1226
  %cmp2.not.i = icmp sge i64 %y.0146.i, %call.i167, !dbg !1238
  %sub.i173 = sub nsw i64 %30, %call.i167
  %cmp4.i174 = icmp slt i64 %y.0146.i, %sub.i173
  %or.cond.i175 = select i1 %cmp2.not.i, i1 %cmp4.i174, i1 false, !dbg !1240
  br i1 %or.cond.i175, label %cleanup.i182, label %if.end6.i, !dbg !1240

if.end6.i:                                        ; preds = %for.body.i
  %31 = load i64, ptr %columns.i172, align 8, !dbg !1241, !tbaa !824
  %call7.i176 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call.i169, i64 noundef 0, i64 noundef %y.0146.i, i64 noundef %31, i64 noundef 1, ptr noundef %exception) #12, !dbg !1242
  call void @llvm.dbg.value(metadata ptr %call7.i176, metadata !1221, metadata !DIExpression()) #10, !dbg !1243
  %cmp8.i = icmp eq ptr %call7.i176, null, !dbg !1244
  br i1 %cmp8.i, label %cleanup.i182, label %for.cond11.preheader.i, !dbg !1246

for.cond11.preheader.i:                           ; preds = %if.end6.i
  %32 = load i64, ptr %columns.i172, align 8, !tbaa !824
  call void @llvm.dbg.value(metadata i64 0, metadata !1225, metadata !DIExpression()) #10, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %call7.i176, metadata !1221, metadata !DIExpression()) #10, !dbg !1243
  call void @llvm.dbg.value(metadata float %count.0145.i, metadata !1219, metadata !DIExpression()) #10, !dbg !1226
  %cmp13132.i = icmp sgt i64 %32, 0, !dbg !1247
  br i1 %cmp13132.i, label %for.body14.lr.ph.i, label %cleanup.i182, !dbg !1250

for.body14.lr.ph.i:                               ; preds = %for.cond11.preheader.i
  %sub18.i = sub nsw i64 %32, %call.i167
  %red23.promoted.i = load float, ptr %red23.i, align 8, !tbaa !1251
  %green28.promoted.i = load float, ptr %green28.i, align 4, !tbaa !1254
  %blue33.promoted.i = load float, ptr %blue33.i, align 8, !tbaa !1255
  %opacity38.promoted.i = load float, ptr %opacity38.i, align 4, !tbaa !1256
  br label %for.body14.i, !dbg !1250

for.body14.i:                                     ; preds = %for.inc.i, %for.body14.lr.ph.i
  %conv40143.i = phi float [ %opacity38.promoted.i, %for.body14.lr.ph.i ], [ %conv40142.i, %for.inc.i ]
  %conv35141.i = phi float [ %blue33.promoted.i, %for.body14.lr.ph.i ], [ %conv35140.i, %for.inc.i ]
  %conv30139.i = phi float [ %green28.promoted.i, %for.body14.lr.ph.i ], [ %conv30138.i, %for.inc.i ]
  %conv25137.i = phi float [ %red23.promoted.i, %for.body14.lr.ph.i ], [ %conv25136.i, %for.inc.i ]
  %x.0135.i = phi i64 [ 0, %for.body14.lr.ph.i ], [ %inc41.i, %for.inc.i ]
  %p.0134.i = phi ptr [ %call7.i176, %for.body14.lr.ph.i ], [ %p.1.i, %for.inc.i ]
  %count.1133.i = phi float [ %count.0145.i, %for.body14.lr.ph.i ], [ %count.2.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %x.0135.i, metadata !1225, metadata !DIExpression()) #10, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %p.0134.i, metadata !1221, metadata !DIExpression()) #10, !dbg !1243
  call void @llvm.dbg.value(metadata float %count.1133.i, metadata !1219, metadata !DIExpression()) #10, !dbg !1226
  %cmp15.not.i = icmp sge i64 %x.0135.i, %call.i167, !dbg !1257
  %cmp19.i = icmp slt i64 %x.0135.i, %sub18.i
  %or.cond107.i = select i1 %cmp15.not.i, i1 %cmp19.i, i1 false, !dbg !1260
  br i1 %or.cond107.i, label %for.inc.i, label %if.end21.i, !dbg !1260

if.end21.i:                                       ; preds = %for.body14.i
  %red.i177 = getelementptr inbounds %struct._PixelPacket, ptr %p.0134.i, i64 0, i32 2, !dbg !1261
  %33 = load i16, ptr %red.i177, align 2, !dbg !1261, !tbaa !981
  %conv22.i = uitofp i16 %33 to double, !dbg !1261
  %conv24.i = fpext float %conv25137.i to double, !dbg !1262
  %34 = call double @llvm.fmuladd.f64(double %conv22.i, double 0x3EF0001000100010, double %conv24.i) #10, !dbg !1262
  %conv25.i = fptrunc double %34 to float, !dbg !1262
  store float %conv25.i, ptr %red23.i, align 8, !dbg !1262, !tbaa !1251
  %green.i178 = getelementptr inbounds %struct._PixelPacket, ptr %p.0134.i, i64 0, i32 1, !dbg !1263
  %35 = load i16, ptr %green.i178, align 2, !dbg !1263, !tbaa !986
  %conv27.i = uitofp i16 %35 to double, !dbg !1263
  %conv29.i = fpext float %conv30139.i to double, !dbg !1264
  %36 = call double @llvm.fmuladd.f64(double %conv27.i, double 0x3EF0001000100010, double %conv29.i) #10, !dbg !1264
  %conv30.i = fptrunc double %36 to float, !dbg !1264
  store float %conv30.i, ptr %green28.i, align 4, !dbg !1264, !tbaa !1254
  %37 = load i16, ptr %p.0134.i, align 2, !dbg !1265, !tbaa !991
  %conv32.i = uitofp i16 %37 to double, !dbg !1265
  %conv34.i = fpext float %conv35141.i to double, !dbg !1266
  %38 = call double @llvm.fmuladd.f64(double %conv32.i, double 0x3EF0001000100010, double %conv34.i) #10, !dbg !1266
  %conv35.i = fptrunc double %38 to float, !dbg !1266
  store float %conv35.i, ptr %blue33.i, align 8, !dbg !1266, !tbaa !1255
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0134.i, i64 0, i32 3, !dbg !1267
  %39 = load i16, ptr %opacity.i, align 2, !dbg !1267, !tbaa !1268
  %conv37.i = uitofp i16 %39 to double, !dbg !1267
  %conv39.i = fpext float %conv40143.i to double, !dbg !1269
  %40 = call double @llvm.fmuladd.f64(double %conv37.i, double 0x3EF0001000100010, double %conv39.i) #10, !dbg !1269
  %conv40.i = fptrunc double %40 to float, !dbg !1269
  store float %conv40.i, ptr %opacity38.i, align 4, !dbg !1269, !tbaa !1256
  %inc.i179 = fadd float %count.1133.i, 1.000000e+00, !dbg !1270
  call void @llvm.dbg.value(metadata float %inc.i179, metadata !1219, metadata !DIExpression()) #10, !dbg !1226
  %incdec.ptr.i180 = getelementptr inbounds %struct._PixelPacket, ptr %p.0134.i, i64 1, !dbg !1271
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i180, metadata !1221, metadata !DIExpression()) #10, !dbg !1243
  br label %for.inc.i, !dbg !1272

for.inc.i:                                        ; preds = %if.end21.i, %for.body14.i
  %conv40142.i = phi float [ %conv40.i, %if.end21.i ], [ %conv40143.i, %for.body14.i ]
  %conv35140.i = phi float [ %conv35.i, %if.end21.i ], [ %conv35141.i, %for.body14.i ]
  %conv30138.i = phi float [ %conv30.i, %if.end21.i ], [ %conv30139.i, %for.body14.i ]
  %conv25136.i = phi float [ %conv25.i, %if.end21.i ], [ %conv25137.i, %for.body14.i ]
  %count.2.i = phi float [ %inc.i179, %if.end21.i ], [ %count.1133.i, %for.body14.i ], !dbg !1226
  %p.1.i = phi ptr [ %incdec.ptr.i180, %if.end21.i ], [ %p.0134.i, %for.body14.i ], !dbg !1243
  call void @llvm.dbg.value(metadata ptr %p.1.i, metadata !1221, metadata !DIExpression()) #10, !dbg !1243
  call void @llvm.dbg.value(metadata float %count.2.i, metadata !1219, metadata !DIExpression()) #10, !dbg !1226
  %inc41.i = add nuw nsw i64 %x.0135.i, 1, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %inc41.i, metadata !1225, metadata !DIExpression()) #10, !dbg !1243
  %exitcond.not.i181 = icmp eq i64 %inc41.i, %32, !dbg !1247
  br i1 %exitcond.not.i181, label %cleanup.i182, label %for.body14.i, !dbg !1250, !llvm.loop !1274

cleanup.i182:                                     ; preds = %for.inc.i, %for.cond11.preheader.i, %if.end6.i, %for.body.i
  %count.3.i = phi float [ %count.0145.i, %for.body.i ], [ %count.0145.i, %if.end6.i ], [ %count.0145.i, %for.cond11.preheader.i ], [ %count.2.i, %for.inc.i ], !dbg !1276
  call void @llvm.dbg.value(metadata float %count.3.i, metadata !1219, metadata !DIExpression()) #10, !dbg !1226
  %inc44.i = add nuw nsw i64 %y.0146.i, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %inc44.i, metadata !1220, metadata !DIExpression()) #10, !dbg !1226
  %41 = load i64, ptr %rows.i170, align 8, !dbg !1235, !tbaa !915
  %cmp1.i = icmp slt i64 %inc44.i, %41, !dbg !1236
  br i1 %cmp1.i, label %for.body.i, label %for.end45.i, !dbg !1237, !llvm.loop !1278

for.end45.i:                                      ; preds = %cleanup.i182, %if.end.i171
  %count.0.lcssa.i183 = phi float [ 0.000000e+00, %if.end.i171 ], [ %count.3.i, %cleanup.i182 ], !dbg !1276
  %call46.i = call ptr @DestroyCacheView(ptr noundef %call.i169) #10, !dbg !1280
  call void @llvm.dbg.value(metadata ptr %call46.i, metadata !1217, metadata !DIExpression()) #10, !dbg !1226
  %red47.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background.i, i64 0, i32 5, !dbg !1281
  %42 = load float, ptr %red47.i, align 8, !dbg !1281, !tbaa !1251
  %mul.i184 = fmul float %42, 6.553500e+04, !dbg !1282
  %div.i185 = fdiv float %mul.i184, %count.0.lcssa.i183, !dbg !1283
  call void @llvm.dbg.value(metadata float %div.i185, metadata !1284, metadata !DIExpression()) #10, !dbg !1289
  %cmp.i.i = fcmp ugt float %div.i185, 0.000000e+00, !dbg !1291
  br i1 %cmp.i.i, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !1293

if.end.i.i:                                       ; preds = %for.end45.i
  %cmp1.i.i = fcmp ult float %div.i185, 6.553500e+04, !dbg !1294
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !1296

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %div.i185, 5.000000e-01, !dbg !1297
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !1298
  br label %ClampToQuantum.exit.i, !dbg !1299

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %for.end45.i
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %for.end45.i ], [ -1, %if.end.i.i ], !dbg !1289
  %background_color.i = getelementptr inbounds %struct._Image, ptr %call37, i64 0, i32 12, !dbg !1300
  %red49.i = getelementptr inbounds %struct._Image, ptr %call37, i64 0, i32 12, i32 2, !dbg !1301
  store i16 %retval.0.i.i, ptr %red49.i, align 4, !dbg !1302, !tbaa !1303
  %green50.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background.i, i64 0, i32 6, !dbg !1304
  %43 = load float, ptr %green50.i, align 4, !dbg !1304, !tbaa !1254
  %mul51.i = fmul float %43, 6.553500e+04, !dbg !1305
  %div52.i = fdiv float %mul51.i, %count.0.lcssa.i183, !dbg !1306
  call void @llvm.dbg.value(metadata float %div52.i, metadata !1284, metadata !DIExpression()) #10, !dbg !1307
  %cmp.i108.i = fcmp ugt float %div52.i, 0.000000e+00, !dbg !1309
  br i1 %cmp.i108.i, label %if.end.i110.i, label %ClampToQuantum.exit115.i, !dbg !1310

if.end.i110.i:                                    ; preds = %ClampToQuantum.exit.i
  %cmp1.i109.i = fcmp ult float %div52.i, 6.553500e+04, !dbg !1311
  br i1 %cmp1.i109.i, label %if.end3.i113.i, label %ClampToQuantum.exit115.i, !dbg !1312

if.end3.i113.i:                                   ; preds = %if.end.i110.i
  %add.i111.i = fadd float %div52.i, 5.000000e-01, !dbg !1313
  %conv.i112.i = fptoui float %add.i111.i to i16, !dbg !1314
  br label %ClampToQuantum.exit115.i, !dbg !1315

ClampToQuantum.exit115.i:                         ; preds = %if.end3.i113.i, %if.end.i110.i, %ClampToQuantum.exit.i
  %retval.0.i114.i = phi i16 [ %conv.i112.i, %if.end3.i113.i ], [ 0, %ClampToQuantum.exit.i ], [ -1, %if.end.i110.i ], !dbg !1307
  %green55.i = getelementptr inbounds %struct._Image, ptr %call37, i64 0, i32 12, i32 1, !dbg !1316
  store i16 %retval.0.i114.i, ptr %green55.i, align 2, !dbg !1317, !tbaa !1318
  %blue56.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background.i, i64 0, i32 7, !dbg !1319
  %44 = load float, ptr %blue56.i, align 8, !dbg !1319, !tbaa !1255
  %mul57.i = fmul float %44, 6.553500e+04, !dbg !1320
  %div58.i = fdiv float %mul57.i, %count.0.lcssa.i183, !dbg !1321
  call void @llvm.dbg.value(metadata float %div58.i, metadata !1284, metadata !DIExpression()) #10, !dbg !1322
  %cmp.i116.i = fcmp ugt float %div58.i, 0.000000e+00, !dbg !1324
  br i1 %cmp.i116.i, label %if.end.i118.i, label %ClampToQuantum.exit123.i, !dbg !1325

if.end.i118.i:                                    ; preds = %ClampToQuantum.exit115.i
  %cmp1.i117.i = fcmp ult float %div58.i, 6.553500e+04, !dbg !1326
  br i1 %cmp1.i117.i, label %if.end3.i121.i, label %ClampToQuantum.exit123.i, !dbg !1327

if.end3.i121.i:                                   ; preds = %if.end.i118.i
  %add.i119.i = fadd float %div58.i, 5.000000e-01, !dbg !1328
  %conv.i120.i = fptoui float %add.i119.i to i16, !dbg !1329
  br label %ClampToQuantum.exit123.i, !dbg !1330

ClampToQuantum.exit123.i:                         ; preds = %if.end3.i121.i, %if.end.i118.i, %ClampToQuantum.exit115.i
  %retval.0.i122.i = phi i16 [ %conv.i120.i, %if.end3.i121.i ], [ 0, %ClampToQuantum.exit115.i ], [ -1, %if.end.i118.i ], !dbg !1322
  store i16 %retval.0.i122.i, ptr %background_color.i, align 8, !dbg !1331, !tbaa !1332
  %opacity62.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background.i, i64 0, i32 8, !dbg !1333
  %45 = load float, ptr %opacity62.i, align 4, !dbg !1333, !tbaa !1256
  %mul63.i = fmul float %45, 6.553500e+04, !dbg !1334
  %div64.i = fdiv float %mul63.i, %count.0.lcssa.i183, !dbg !1335
  call void @llvm.dbg.value(metadata float %div64.i, metadata !1284, metadata !DIExpression()) #10, !dbg !1336
  %cmp.i124.i = fcmp ugt float %div64.i, 0.000000e+00, !dbg !1338
  br i1 %cmp.i124.i, label %if.end.i126.i, label %ClampToQuantum.exit131.i, !dbg !1339

if.end.i126.i:                                    ; preds = %ClampToQuantum.exit123.i
  %cmp1.i125.i = fcmp ult float %div64.i, 6.553500e+04, !dbg !1340
  br i1 %cmp1.i125.i, label %if.end3.i129.i, label %ClampToQuantum.exit131.i, !dbg !1341

if.end3.i129.i:                                   ; preds = %if.end.i126.i
  %add.i127.i = fadd float %div64.i, 5.000000e-01, !dbg !1342
  %conv.i128.i = fptoui float %add.i127.i to i16, !dbg !1343
  br label %ClampToQuantum.exit131.i, !dbg !1344

ClampToQuantum.exit131.i:                         ; preds = %if.end3.i129.i, %if.end.i126.i, %ClampToQuantum.exit123.i
  %retval.0.i130.i = phi i16 [ %conv.i128.i, %if.end3.i129.i ], [ 0, %ClampToQuantum.exit123.i ], [ -1, %if.end.i126.i ], !dbg !1336
  %opacity67.i = getelementptr inbounds %struct._Image, ptr %call37, i64 0, i32 12, i32 3, !dbg !1345
  store i16 %retval.0.i130.i, ptr %opacity67.i, align 2, !dbg !1346, !tbaa !1347
  br label %GetImageBackgroundColor.exit, !dbg !1348

GetImageBackgroundColor.exit:                     ; preds = %if.end66, %ClampToQuantum.exit131.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background.i) #10, !dbg !1348
  %call68 = call ptr @AffineTransformImage(ptr noundef nonnull %call37, ptr noundef nonnull %affine_matrix, ptr noundef %exception) #10, !dbg !1349
  call void @llvm.dbg.value(metadata ptr %call68, metadata !808, metadata !DIExpression()), !dbg !819
  %call69 = call ptr @DestroyImage(ptr noundef nonnull %call37) #10, !dbg !1350
  call void @llvm.dbg.value(metadata ptr %call69, metadata !806, metadata !DIExpression()), !dbg !819
  %cmp70 = icmp eq ptr %call68, null, !dbg !1351
  br i1 %cmp70, label %cleanup, label %if.end73, !dbg !1353

if.end73:                                         ; preds = %GetImageBackgroundColor.exit
  %call74 = call ptr @StatisticImage(ptr noundef nonnull %call68, i32 noundef 4, i64 noundef 3, i64 noundef 3, ptr noundef %exception) #10, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %call74, metadata !809, metadata !DIExpression()), !dbg !819
  %cmp75 = icmp eq ptr %call74, null, !dbg !1355
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !1357

if.then77:                                        ; preds = %if.end73
  %call78 = call ptr @DestroyImage(ptr noundef nonnull %call68) #10, !dbg !1358
  call void @llvm.dbg.value(metadata ptr %call78, metadata !808, metadata !DIExpression()), !dbg !819
  br label %cleanup, !dbg !1360

if.end79:                                         ; preds = %if.end73
  call void @GetImageBoundingBox(ptr nonnull sret(%struct._RectangleInfo) align 8 %geometry, ptr noundef nonnull %call74, ptr noundef %exception) #10, !dbg !1361
  %call80 = call ptr @DestroyImage(ptr noundef nonnull %call74) #10, !dbg !1362
  call void @llvm.dbg.value(metadata ptr %call80, metadata !809, metadata !DIExpression()), !dbg !819
  %46 = load i32, ptr %debug, align 8, !dbg !1363, !tbaa !1133
  %cmp82.not = icmp eq i32 %46, 0, !dbg !1365
  br i1 %cmp82.not, label %if.end91, label %if.then84, !dbg !1366

if.then84:                                        ; preds = %if.end79
  %47 = load i64, ptr %geometry, align 8, !dbg !1367, !tbaa !1368
  %conv86 = uitofp i64 %47 to double, !dbg !1369
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !1370
  %48 = load i64, ptr %height, align 8, !dbg !1370, !tbaa !1371
  %conv87 = uitofp i64 %48 to double, !dbg !1372
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !1373
  %49 = load i64, ptr %x, align 8, !dbg !1373, !tbaa !1374
  %conv88 = sitofp i64 %49 to double, !dbg !1375
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !1376
  %50 = load i64, ptr %y, align 8, !dbg !1376, !tbaa !1377
  %conv89 = sitofp i64 %50 to double, !dbg !1378
  %call90 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 674, ptr noundef nonnull @.str.8, double noundef %conv86, double noundef %conv87, double noundef %conv88, double noundef %conv89) #10, !dbg !1379
  br label %if.end91, !dbg !1380

if.end91:                                         ; preds = %if.then84, %if.end79
  %call92 = call ptr @CropImage(ptr noundef nonnull %call68, ptr noundef nonnull %geometry, ptr noundef %exception) #10, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %call92, metadata !807, metadata !DIExpression()), !dbg !819
  %call93 = call ptr @DestroyImage(ptr noundef nonnull %call68) #10, !dbg !1382
  call void @llvm.dbg.value(metadata ptr %call93, metadata !808, metadata !DIExpression()), !dbg !819
  br label %cleanup, !dbg !1383

cleanup:                                          ; preds = %GetImageBackgroundColor.exit, %if.end36, %if.end91, %if.then77, %if.then63, %if.then5, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then5 ], [ %call64, %if.then63 ], [ null, %if.then77 ], [ %call92, %if.end91 ], [ null, %if.end36 ], [ null, %GetImageBackgroundColor.exit ], !dbg !819
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #10, !dbg !1384
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %affine_matrix) #10, !dbg !1384
  ret ptr %retval.0, !dbg !1384
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0,1)
declare !dbg !1385 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1390 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1394 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @atan(double noundef) local_unnamed_addr #5

declare !dbg !1397 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1402 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1406 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1411 i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1415 i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #5

declare !dbg !1420 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1423 ptr @AffineTransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1429 ptr @DestroyImage(ptr noundef) local_unnamed_addr #4

declare !dbg !1432 ptr @StatisticImage(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1437 void @GetImageBoundingBox(ptr sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !1441 ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @IntegralRotateImage(ptr noundef %image, i64 noundef %rotations, ptr noundef %exception) local_unnamed_addr #0 !dbg !1447 {
entry:
  %message.i743 = alloca [4096 x i8], align 16
  %message.i733 = alloca [4096 x i8], align 16
  %message.i723 = alloca [4096 x i8], align 16
  %message.i713 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  %tile_height = alloca i64, align 8
  %tile_width = alloca i64, align 8
  %tile_height275 = alloca i64, align 8
  %tile_width276 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1451, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %rotations, metadata !1452, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1453, metadata !DIExpression()), !dbg !1536
  %page1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !1537
  %page.sroa.0.0.copyload = load i64, ptr %page1, align 8, !dbg !1537, !tbaa.struct !1538
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1536
  %page.sroa.18.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 8, !dbg !1537
  %page.sroa.18.0.copyload = load i64, ptr %page.sroa.18.0.page1.sroa_idx, align 8, !dbg !1537, !tbaa.struct !1539
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1536
  %page.sroa.30.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 16, !dbg !1537
  %page.sroa.30.0.copyload = load i64, ptr %page.sroa.30.0.page1.sroa_idx, align 8, !dbg !1537, !tbaa.struct !1540
  call void @llvm.dbg.value(metadata i64 %page.sroa.30.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1536
  %page.sroa.44.0.page1.sroa_idx = getelementptr inbounds i8, ptr %page1, i64 24, !dbg !1537
  %page.sroa.44.0.copyload = load i64, ptr %page.sroa.44.0.page1.sroa_idx, align 8, !dbg !1537, !tbaa.struct !1541
  call void @llvm.dbg.value(metadata i64 %page.sroa.44.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1536
  %rem = and i64 %rotations, 3, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %rem, metadata !1452, metadata !DIExpression()), !dbg !1536
  %cmp = icmp eq i64 %rem, 0, !dbg !1543
  br i1 %cmp, label %if.then, label %if.end, !dbg !1545

if.then:                                          ; preds = %entry
  %call = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #10, !dbg !1546
  br label %cleanup471, !dbg !1547

if.end:                                           ; preds = %entry
  %0 = and i64 %rotations, 1, !dbg !1548
  %.not = icmp eq i64 %0, 0, !dbg !1548
  br i1 %.not, label %if.else, label %if.then4, !dbg !1548

if.then4:                                         ; preds = %if.end
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1550
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1551
  call void @llvm.dbg.value(metadata ptr undef, metadata !1456, metadata !DIExpression()), !dbg !1536
  br label %if.end9, !dbg !1552

if.else:                                          ; preds = %if.end
  %columns6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1553
  %rows7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1554
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1456, metadata !DIExpression()), !dbg !1536
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %rows7.sink = phi ptr [ %rows7, %if.else ], [ %columns, %if.then4 ]
  %.sink.in = phi ptr [ %columns6, %if.else ], [ %rows, %if.then4 ]
  %.sink = load i64, ptr %.sink.in, align 8, !dbg !1555, !tbaa !1106
  %1 = load i64, ptr %rows7.sink, align 8, !dbg !1555, !tbaa !1106
  %call8 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %.sink, i64 noundef %1, i32 noundef 1, ptr noundef %exception) #10, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1456, metadata !DIExpression()), !dbg !1536
  %cmp10 = icmp eq ptr %call8, null, !dbg !1556
  br i1 %cmp10, label %cleanup471, label %if.end12, !dbg !1558

if.end12:                                         ; preds = %if.end9
  call void @llvm.dbg.value(metadata i32 1, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 0, metadata !1458, metadata !DIExpression()), !dbg !1536
  %call13 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #10, !dbg !1559
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1454, metadata !DIExpression()), !dbg !1536
  %call14 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call8, ptr noundef %exception) #10, !dbg !1560
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1455, metadata !DIExpression()), !dbg !1536
  switch i64 %rem, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %for.cond156.preheader
    i64 3, label %sw.bb274
  ], !dbg !1561

for.cond156.preheader:                            ; preds = %if.end12
  %rows157 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 0, metadata !1458, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 0, metadata !1460, metadata !DIExpression()), !dbg !1536
  %2 = load i64, ptr %rows157, align 8, !dbg !1562, !tbaa !915
  %cmp158802 = icmp sgt i64 %2, 0, !dbg !1563
  br i1 %cmp158802, label %for.body159.lr.ph, label %for.end251, !dbg !1564

for.body159.lr.ph:                                ; preds = %for.cond156.preheader
  %columns169 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %progress_monitor228 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i726 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i728 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body159, !dbg !1564

sw.bb:                                            ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tile_height) #10, !dbg !1565
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tile_width) #10, !dbg !1565
  call void @llvm.dbg.value(metadata ptr %tile_height, metadata !1461, metadata !DIExpression(DW_OP_deref)), !dbg !1566
  call void @llvm.dbg.value(metadata ptr %tile_width, metadata !1464, metadata !DIExpression(DW_OP_deref)), !dbg !1566
  call void @GetPixelCacheTileSize(ptr noundef nonnull %image, ptr noundef nonnull %tile_width, ptr noundef nonnull %tile_height) #10, !dbg !1567
  %columns15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1568
  %3 = load i64, ptr %columns15, align 8, !dbg !1568, !tbaa !824
  call void @llvm.dbg.value(metadata i64 %3, metadata !1464, metadata !DIExpression()), !dbg !1566
  store i64 %3, ptr %tile_width, align 8, !dbg !1569, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 0, metadata !1465, metadata !DIExpression()), !dbg !1566
  %rows16 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 0, metadata !1458, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 0, metadata !1465, metadata !DIExpression()), !dbg !1566
  %4 = load i64, ptr %rows16, align 8, !dbg !1570, !tbaa !915
  %cmp17828 = icmp sgt i64 %4, 0, !dbg !1571
  br i1 %cmp17828, label %for.body.lr.ph, label %for.end120, !dbg !1572

for.body.lr.ph:                                   ; preds = %sw.bb
  %columns53 = getelementptr inbounds %struct._Image, ptr %call8, i64 0, i32 7
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !1572

for.body:                                         ; preds = %for.body.lr.ph, %cleanup115
  %status.0833 = phi i32 [ 1, %for.body.lr.ph ], [ %status.9, %cleanup115 ]
  %progress.0832 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup115 ]
  %tile_y.0829 = phi i64 [ 0, %for.body.lr.ph ], [ %add119, %cleanup115 ]
  call void @llvm.dbg.value(metadata i32 %status.0833, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %progress.0832, metadata !1458, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %tile_y.0829, metadata !1465, metadata !DIExpression()), !dbg !1566
  %cmp18 = icmp eq i32 %status.0833, 0, !dbg !1573
  br i1 %cmp18, label %cleanup115, label %for.cond21.preheader, !dbg !1575

for.cond21.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 0, metadata !1466, metadata !DIExpression()), !dbg !1576
  %5 = load i64, ptr %columns15, align 8, !dbg !1577, !tbaa !824
  %cmp23821 = icmp sgt i64 %5, 0, !dbg !1578
  br i1 %cmp23821, label %for.body24.lr.ph, label %for.end105, !dbg !1579

for.body24.lr.ph:                                 ; preds = %for.cond21.preheader
  %.pre846 = load i64, ptr %tile_width, align 8, !dbg !1580, !tbaa !1106
  br label %for.body24, !dbg !1579

for.body24:                                       ; preds = %for.body24.lr.ph, %for.inc103
  %6 = phi i64 [ %.pre846, %for.body24.lr.ph ], [ %17, %for.inc103 ], !dbg !1580
  %7 = phi i64 [ %5, %for.body24.lr.ph ], [ %18, %for.inc103 ]
  %status.1825 = phi i32 [ 1, %for.body24.lr.ph ], [ %status.2.lcssa, %for.inc103 ]
  %tile_x.0822 = phi i64 [ 0, %for.body24.lr.ph ], [ %add104, %for.inc103 ]
  call void @llvm.dbg.value(metadata i32 %status.1825, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %tile_x.0822, metadata !1466, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i64 %6, metadata !1464, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %6, metadata !1481, metadata !DIExpression()), !dbg !1581
  %add = add i64 %6, %tile_x.0822, !dbg !1582
  %cmp27 = icmp slt i64 %7, %add, !dbg !1584
  br i1 %cmp27, label %if.then28, label %if.end32, !dbg !1585

if.then28:                                        ; preds = %for.body24
  %sub.neg = add i64 %6, %7, !dbg !1586
  %sub31 = sub i64 %sub.neg, %add, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %sub31, metadata !1481, metadata !DIExpression()), !dbg !1581
  br label %if.end32, !dbg !1588

if.end32:                                         ; preds = %if.then28, %for.body24
  %width.0 = phi i64 [ %sub31, %if.then28 ], [ %6, %for.body24 ], !dbg !1581
  call void @llvm.dbg.value(metadata i64 %width.0, metadata !1481, metadata !DIExpression()), !dbg !1581
  %8 = load i64, ptr %tile_height, align 8, !dbg !1589, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %8, metadata !1461, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %8, metadata !1480, metadata !DIExpression()), !dbg !1581
  %add33 = add i64 %8, %tile_y.0829, !dbg !1590
  %9 = load i64, ptr %rows16, align 8, !dbg !1592, !tbaa !915
  %cmp35 = icmp slt i64 %9, %add33, !dbg !1593
  %sub40 = sub i64 %9, %tile_y.0829
  %spec.select867 = select i1 %cmp35, i64 %sub40, i64 %8, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %spec.select867, metadata !1480, metadata !DIExpression()), !dbg !1581
  %call42 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call13, i64 noundef %tile_x.0822, i64 noundef %tile_y.0829, i64 noundef %width.0, i64 noundef %spec.select867, ptr noundef %exception) #12, !dbg !1595
  call void @llvm.dbg.value(metadata ptr %call42, metadata !1476, metadata !DIExpression()), !dbg !1581
  %cmp43 = icmp eq ptr %call42, null, !dbg !1596
  br i1 %cmp43, label %for.end105, label %if.end45, !dbg !1598

if.end45:                                         ; preds = %if.end32
  %call46 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call13) #10, !dbg !1599
  call void @llvm.dbg.value(metadata ptr %call46, metadata !1474, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 0, metadata !1479, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i32 %status.1825, metadata !1457, metadata !DIExpression()), !dbg !1536
  %cmp48816 = icmp sgt i64 %width.0, 0, !dbg !1600
  br i1 %cmp48816, label %for.body49.lr.ph, label %for.inc103, !dbg !1601

for.body49.lr.ph:                                 ; preds = %if.end45
  %10 = add i64 %spec.select867, %tile_y.0829
  %sub61 = add i64 %spec.select867, -1
  %mul = mul i64 %sub61, %width.0
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call42, i64 %mul
  %cmp64808 = icmp sgt i64 %spec.select867, 0
  %idx.neg = sub nsw i64 0, %width.0
  %cmp68.not = icmp eq ptr %call46, null
  %add.ptr73 = getelementptr inbounds i16, ptr %call46, i64 %mul
  br i1 %cmp68.not, label %for.body49.us, label %for.body49

for.body49.us:                                    ; preds = %for.body49.lr.ph, %cleanup.us
  %status.2818.us = phi i32 [ %status.4.us, %cleanup.us ], [ %status.1825, %for.body49.lr.ph ]
  %y25.0817.us = phi i64 [ %inc91.us, %cleanup.us ], [ 0, %for.body49.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %status.2818.us, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %y25.0817.us, metadata !1479, metadata !DIExpression()), !dbg !1581
  %cmp50.us = icmp eq i32 %status.2818.us, 0, !dbg !1602
  br i1 %cmp50.us, label %cleanup.us, label %if.end52.us, !dbg !1604

if.end52.us:                                      ; preds = %for.body49.us
  %11 = load i64, ptr %columns53, align 8, !dbg !1605, !tbaa !824
  %sub55.us = sub i64 %11, %10, !dbg !1606
  %add56.us = add nsw i64 %y25.0817.us, %tile_x.0822, !dbg !1607
  %call57.us = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call14, i64 noundef %sub55.us, i64 noundef %add56.us, i64 noundef %spec.select867, i64 noundef 1, ptr noundef %exception) #12, !dbg !1608
  call void @llvm.dbg.value(metadata ptr %call57.us, metadata !1478, metadata !DIExpression()), !dbg !1581
  %cmp58.us = icmp eq ptr %call57.us, null, !dbg !1609
  br i1 %cmp58.us, label %cleanup.us, label %if.end60.us, !dbg !1611

if.end60.us:                                      ; preds = %if.end52.us
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr, i64 %y25.0817.us), metadata !1482, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1612
  call void @llvm.dbg.value(metadata i64 0, metadata !1486, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %call57.us, metadata !1478, metadata !DIExpression()), !dbg !1581
  br i1 %cmp64808, label %for.body65.us.preheader, label %for.end.us, !dbg !1613

for.body65.us.preheader:                          ; preds = %if.end60.us
  %add.ptr62.us = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr, i64 %y25.0817.us, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %add.ptr62.us, metadata !1482, metadata !DIExpression()), !dbg !1612
  br label %for.body65.us, !dbg !1613

for.end.us:                                       ; preds = %for.body65.us, %if.end60.us
  %call67.us = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call14) #10, !dbg !1616
  call void @llvm.dbg.value(metadata ptr %call67.us, metadata !1477, metadata !DIExpression()), !dbg !1581
  %call85.us = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call14, ptr noundef %exception) #12, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %call85.us, metadata !1470, metadata !DIExpression()), !dbg !1581
  %cmp86.us = icmp ne i32 %call85.us, 0, !dbg !1618
  %spec.select.us = zext i1 %cmp86.us to i32, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !1457, metadata !DIExpression()), !dbg !1536
  br label %cleanup.us, !dbg !1621

for.body65.us:                                    ; preds = %for.body65.us.preheader, %for.body65.us
  %x.0811.us = phi i64 [ %inc.us, %for.body65.us ], [ 0, %for.body65.us.preheader ]
  %tile_pixels.0810.us = phi ptr [ %add.ptr66.us, %for.body65.us ], [ %add.ptr62.us, %for.body65.us.preheader ]
  %q.0809.us = phi ptr [ %incdec.ptr.us, %for.body65.us ], [ %call57.us, %for.body65.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0811.us, metadata !1486, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %tile_pixels.0810.us, metadata !1482, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %q.0809.us, metadata !1478, metadata !DIExpression()), !dbg !1581
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0809.us, i64 1, !dbg !1622
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !1478, metadata !DIExpression()), !dbg !1581
  %12 = load i64, ptr %tile_pixels.0810.us, align 2, !dbg !1625
  store i64 %12, ptr %q.0809.us, align 2, !dbg !1625
  %add.ptr66.us = getelementptr inbounds %struct._PixelPacket, ptr %tile_pixels.0810.us, i64 %idx.neg, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %add.ptr66.us, metadata !1482, metadata !DIExpression()), !dbg !1612
  %inc.us = add nuw nsw i64 %x.0811.us, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1486, metadata !DIExpression()), !dbg !1612
  %exitcond845.not = icmp eq i64 %inc.us, %spec.select867, !dbg !1628
  br i1 %exitcond845.not, label %for.end.us, label %for.body65.us, !dbg !1613, !llvm.loop !1629

cleanup.us:                                       ; preds = %for.end.us, %if.end52.us, %for.body49.us
  %status.4.us = phi i32 [ %spec.select.us, %for.end.us ], [ 0, %for.body49.us ], [ 0, %if.end52.us ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.4.us, metadata !1457, metadata !DIExpression()), !dbg !1536
  %inc91.us = add nuw nsw i64 %y25.0817.us, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %inc91.us, metadata !1479, metadata !DIExpression()), !dbg !1581
  %cmp48.us = icmp slt i64 %inc91.us, %width.0, !dbg !1600
  br i1 %cmp48.us, label %for.body49.us, label %for.inc103, !dbg !1601, !llvm.loop !1632

for.body49:                                       ; preds = %for.body49.lr.ph, %cleanup
  %status.2818 = phi i32 [ %status.4, %cleanup ], [ %status.1825, %for.body49.lr.ph ]
  %y25.0817 = phi i64 [ %inc91, %cleanup ], [ 0, %for.body49.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %status.2818, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %y25.0817, metadata !1479, metadata !DIExpression()), !dbg !1581
  %cmp50 = icmp eq i32 %status.2818, 0, !dbg !1602
  br i1 %cmp50, label %cleanup, label %if.end52, !dbg !1604

if.end52:                                         ; preds = %for.body49
  %13 = load i64, ptr %columns53, align 8, !dbg !1605, !tbaa !824
  %sub55 = sub i64 %13, %10, !dbg !1606
  %add56 = add nsw i64 %y25.0817, %tile_x.0822, !dbg !1607
  %call57 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call14, i64 noundef %sub55, i64 noundef %add56, i64 noundef %spec.select867, i64 noundef 1, ptr noundef %exception) #12, !dbg !1608
  call void @llvm.dbg.value(metadata ptr %call57, metadata !1478, metadata !DIExpression()), !dbg !1581
  %cmp58 = icmp eq ptr %call57, null, !dbg !1609
  br i1 %cmp58, label %cleanup, label %if.end60, !dbg !1611

if.end60:                                         ; preds = %if.end52
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr, i64 %y25.0817), metadata !1482, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1612
  call void @llvm.dbg.value(metadata i64 0, metadata !1486, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %call57, metadata !1478, metadata !DIExpression()), !dbg !1581
  br i1 %cmp64808, label %for.body65.preheader, label %for.end.thread, !dbg !1613

for.body65.preheader:                             ; preds = %if.end60
  %add.ptr62 = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr, i64 %y25.0817, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %add.ptr62, metadata !1482, metadata !DIExpression()), !dbg !1612
  br label %for.body65, !dbg !1613

for.body65:                                       ; preds = %for.body65.preheader, %for.body65
  %x.0811 = phi i64 [ %inc, %for.body65 ], [ 0, %for.body65.preheader ]
  %tile_pixels.0810 = phi ptr [ %add.ptr66, %for.body65 ], [ %add.ptr62, %for.body65.preheader ]
  %q.0809 = phi ptr [ %incdec.ptr, %for.body65 ], [ %call57, %for.body65.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0811, metadata !1486, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %tile_pixels.0810, metadata !1482, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %q.0809, metadata !1478, metadata !DIExpression()), !dbg !1581
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0809, i64 1, !dbg !1622
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1478, metadata !DIExpression()), !dbg !1581
  %14 = load i64, ptr %tile_pixels.0810, align 2, !dbg !1625
  store i64 %14, ptr %q.0809, align 2, !dbg !1625
  %add.ptr66 = getelementptr inbounds %struct._PixelPacket, ptr %tile_pixels.0810, i64 %idx.neg, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %add.ptr66, metadata !1482, metadata !DIExpression()), !dbg !1612
  %inc = add nuw nsw i64 %x.0811, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1486, metadata !DIExpression()), !dbg !1612
  %exitcond843.not = icmp eq i64 %inc, %spec.select867, !dbg !1628
  br i1 %exitcond843.not, label %for.end, label %for.body65, !dbg !1613, !llvm.loop !1629

for.end:                                          ; preds = %for.body65
  %call67 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call14) #10, !dbg !1616
  call void @llvm.dbg.value(metadata ptr %call67, metadata !1477, metadata !DIExpression()), !dbg !1581
  %cmp69.not = icmp ne ptr %call67, null
  %15 = and i1 %cmp64808, %cmp69.not, !dbg !1634
  br i1 %15, label %for.body77.preheader, label %if.end84, !dbg !1634

for.end.thread:                                   ; preds = %if.end60
  %call67847 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call14) #10, !dbg !1616
  call void @llvm.dbg.value(metadata ptr %call67, metadata !1477, metadata !DIExpression()), !dbg !1581
  br label %if.end84, !dbg !1634

for.body77.preheader:                             ; preds = %for.end
  %add.ptr74 = getelementptr inbounds i16, ptr %add.ptr73, i64 %y25.0817, !dbg !1635
  call void @llvm.dbg.value(metadata ptr %add.ptr74, metadata !1487, metadata !DIExpression()), !dbg !1636
  br label %for.body77, !dbg !1637

for.body77:                                       ; preds = %for.body77.preheader, %for.body77
  %tile_indexes.0815 = phi ptr [ %add.ptr80, %for.body77 ], [ %add.ptr74, %for.body77.preheader ]
  %x.1814 = phi i64 [ %inc82, %for.body77 ], [ 0, %for.body77.preheader ]
  %rotate_indexes.0813 = phi ptr [ %incdec.ptr78, %for.body77 ], [ %call67, %for.body77.preheader ]
  call void @llvm.dbg.value(metadata ptr %tile_indexes.0815, metadata !1487, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %x.1814, metadata !1486, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %rotate_indexes.0813, metadata !1477, metadata !DIExpression()), !dbg !1581
  %16 = load i16, ptr %tile_indexes.0815, align 2, !dbg !1639, !tbaa !950
  %incdec.ptr78 = getelementptr inbounds i16, ptr %rotate_indexes.0813, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %incdec.ptr78, metadata !1477, metadata !DIExpression()), !dbg !1581
  store i16 %16, ptr %rotate_indexes.0813, align 2, !dbg !1643, !tbaa !950
  %add.ptr80 = getelementptr inbounds i16, ptr %tile_indexes.0815, i64 %idx.neg, !dbg !1644
  call void @llvm.dbg.value(metadata ptr %add.ptr80, metadata !1487, metadata !DIExpression()), !dbg !1636
  %inc82 = add nuw nsw i64 %x.1814, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %inc82, metadata !1486, metadata !DIExpression()), !dbg !1612
  %exitcond844.not = icmp eq i64 %inc82, %spec.select867, !dbg !1646
  br i1 %exitcond844.not, label %if.end84, label %for.body77, !dbg !1637, !llvm.loop !1647

if.end84:                                         ; preds = %for.body77, %for.end, %for.end.thread
  %call85 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call14, ptr noundef %exception) #12, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %call85, metadata !1470, metadata !DIExpression()), !dbg !1581
  %cmp86 = icmp ne i32 %call85, 0, !dbg !1618
  %spec.select = zext i1 %cmp86 to i32, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1457, metadata !DIExpression()), !dbg !1536
  br label %cleanup, !dbg !1621

cleanup:                                          ; preds = %if.end52, %for.body49, %if.end84
  %status.4 = phi i32 [ %spec.select, %if.end84 ], [ 0, %for.body49 ], [ 0, %if.end52 ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !1457, metadata !DIExpression()), !dbg !1536
  %inc91 = add nuw nsw i64 %y25.0817, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %inc91, metadata !1479, metadata !DIExpression()), !dbg !1581
  %cmp48 = icmp slt i64 %inc91, %width.0, !dbg !1600
  br i1 %cmp48, label %for.body49, label %for.inc103, !dbg !1601, !llvm.loop !1632

for.inc103:                                       ; preds = %cleanup, %cleanup.us, %if.end45
  %status.2.lcssa = phi i32 [ %status.1825, %if.end45 ], [ %status.4.us, %cleanup.us ], [ %status.4, %cleanup ], !dbg !1649
  call void @llvm.dbg.value(metadata i32 undef, metadata !1457, metadata !DIExpression()), !dbg !1536
  %17 = load i64, ptr %tile_width, align 8, !dbg !1650, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %17, metadata !1464, metadata !DIExpression()), !dbg !1566
  %add104 = add nsw i64 %17, %tile_x.0822, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %status.2.lcssa, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %add104, metadata !1466, metadata !DIExpression()), !dbg !1576
  %18 = load i64, ptr %columns15, align 8, !dbg !1577, !tbaa !824
  %cmp23 = icmp slt i64 %add104, %18, !dbg !1578
  br i1 %cmp23, label %for.body24, label %for.end105, !dbg !1579, !llvm.loop !1652

for.end105:                                       ; preds = %for.inc103, %if.end32, %for.cond21.preheader
  %status.6 = phi i32 [ 1, %for.cond21.preheader ], [ 0, %if.end32 ], [ %status.2.lcssa, %for.inc103 ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.6, metadata !1457, metadata !DIExpression()), !dbg !1536
  %19 = load ptr, ptr %progress_monitor, align 8, !dbg !1654, !tbaa !1655
  %cmp106.not = icmp eq ptr %19, null, !dbg !1656
  br i1 %cmp106.not, label %cleanup115, label %SetImageProgress.exit, !dbg !1657

SetImageProgress.exit:                            ; preds = %for.end105
  %20 = load i64, ptr %tile_height, align 8, !dbg !1658, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %20, metadata !1461, metadata !DIExpression()), !dbg !1566
  %add108 = add i64 %20, %progress.0832, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %add108, metadata !1458, metadata !DIExpression()), !dbg !1536
  %21 = load i64, ptr %rows16, align 8, !dbg !1660, !tbaa !915
  call void @llvm.dbg.value(metadata ptr %image, metadata !1661, metadata !DIExpression()) #10, !dbg !1671
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1667, metadata !DIExpression()) #10, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %add108, metadata !1668, metadata !DIExpression()) #10, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %21, metadata !1669, metadata !DIExpression()) #10, !dbg !1671
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #10, !dbg !1673
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1670, metadata !DIExpression()) #10, !dbg !1674
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i) #10, !dbg !1675
  %22 = load ptr, ptr %progress_monitor, align 8, !dbg !1676, !tbaa !1655
  %23 = load ptr, ptr %client_data.i, align 8, !dbg !1677, !tbaa !1678
  %call4.i = call i32 %22(ptr noundef nonnull %message.i, i64 noundef %add108, i64 noundef %21, ptr noundef %23) #10, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #10, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1490, metadata !DIExpression()), !dbg !1681
  %cmp111 = icmp eq i32 %call4.i, 0, !dbg !1682
  %spec.select707 = select i1 %cmp111, i32 0, i32 %status.6, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %spec.select707, metadata !1457, metadata !DIExpression()), !dbg !1536
  br label %cleanup115, !dbg !1685

cleanup115:                                       ; preds = %for.end105, %SetImageProgress.exit, %for.body
  %progress.2 = phi i64 [ %progress.0832, %for.body ], [ %add108, %SetImageProgress.exit ], [ %progress.0832, %for.end105 ], !dbg !1536
  %status.9 = phi i32 [ 0, %for.body ], [ %spec.select707, %SetImageProgress.exit ], [ %status.6, %for.end105 ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.9, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !1458, metadata !DIExpression()), !dbg !1536
  %24 = load i64, ptr %tile_height, align 8, !dbg !1686, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %24, metadata !1461, metadata !DIExpression()), !dbg !1566
  %add119 = add nsw i64 %24, %tile_y.0829, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %add119, metadata !1465, metadata !DIExpression()), !dbg !1566
  %25 = load i64, ptr %rows16, align 8, !dbg !1570, !tbaa !915
  %cmp17 = icmp slt i64 %add119, %25, !dbg !1571
  br i1 %cmp17, label %for.body, label %for.end120, !dbg !1572, !llvm.loop !1688

for.end120:                                       ; preds = %cleanup115, %sw.bb
  %status.0.lcssa = phi i32 [ 1, %sw.bb ], [ %status.9, %cleanup115 ], !dbg !1649
  %.lcssa = phi i64 [ %4, %sw.bb ], [ %25, %cleanup115 ], !dbg !1570
  call void @llvm.dbg.value(metadata ptr %image, metadata !1661, metadata !DIExpression()) #10, !dbg !1690
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1667, metadata !DIExpression()) #10, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !1668, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #10, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !1669, metadata !DIExpression()) #10, !dbg !1690
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i713) #10, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %message.i713, metadata !1670, metadata !DIExpression()) #10, !dbg !1693
  %progress_monitor.i714 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47, !dbg !1694
  %26 = load ptr, ptr %progress_monitor.i714, align 8, !dbg !1694, !tbaa !1655
  %cmp.i715 = icmp eq ptr %26, null, !dbg !1696
  br i1 %cmp.i715, label %SetImageProgress.exit722, label %if.end.i720, !dbg !1697

if.end.i720:                                      ; preds = %for.end120
  %sub122 = add nsw i64 %.lcssa, -1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %sub122, metadata !1668, metadata !DIExpression()) #10, !dbg !1690
  %filename.i716 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1699
  %call.i717 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i713, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i716) #10, !dbg !1700
  %27 = load ptr, ptr %progress_monitor.i714, align 8, !dbg !1701, !tbaa !1655
  %client_data.i718 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !1702
  %28 = load ptr, ptr %client_data.i718, align 8, !dbg !1702, !tbaa !1678
  %call4.i719 = call i32 %27(ptr noundef nonnull %message.i713, i64 noundef %sub122, i64 noundef %.lcssa, ptr noundef %28) #10, !dbg !1703
  br label %SetImageProgress.exit722, !dbg !1704

SetImageProgress.exit722:                         ; preds = %for.end120, %if.end.i720
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i713) #10, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.30.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.44.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1536
  %cmp143.not = icmp eq i64 %page.sroa.18.0.copyload, 0, !dbg !1706
  br i1 %cmp143.not, label %if.end151, label %if.then144, !dbg !1708

if.then144:                                       ; preds = %SetImageProgress.exit722
  %columns146 = getelementptr inbounds %struct._Image, ptr %call8, i64 0, i32 7, !dbg !1709
  %29 = load i64, ptr %columns146, align 8, !dbg !1709, !tbaa !824
  %30 = add i64 %page.sroa.44.0.copyload, %29, !dbg !1710
  %sub149 = sub i64 %page.sroa.18.0.copyload, %30, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %sub149, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1536
  br label %if.end151, !dbg !1711

if.end151:                                        ; preds = %if.then144, %SetImageProgress.exit722
  %page.sroa.30.0 = phi i64 [ %sub149, %if.then144 ], [ %page.sroa.44.0.copyload, %SetImageProgress.exit722 ], !dbg !1566
  call void @llvm.dbg.value(metadata i64 %page.sroa.30.0, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tile_width) #10, !dbg !1712
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tile_height) #10, !dbg !1712
  br label %sw.epilog

for.body159:                                      ; preds = %for.body159.lr.ph, %cleanup241
  %status.10806 = phi i32 [ 1, %for.body159.lr.ph ], [ %status.14, %cleanup241 ]
  %progress.3805 = phi i64 [ 0, %for.body159.lr.ph ], [ %progress.5, %cleanup241 ]
  %y.0803 = phi i64 [ 0, %for.body159.lr.ph ], [ %inc250, %cleanup241 ]
  call void @llvm.dbg.value(metadata i32 %status.10806, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %progress.3805, metadata !1458, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %y.0803, metadata !1460, metadata !DIExpression()), !dbg !1536
  %cmp166 = icmp eq i32 %status.10806, 0, !dbg !1713
  br i1 %cmp166, label %cleanup241, label %if.end168, !dbg !1715

if.end168:                                        ; preds = %for.body159
  %31 = load i64, ptr %columns169, align 8, !dbg !1716, !tbaa !824
  %call170 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call13, i64 noundef 0, i64 noundef %y.0803, i64 noundef %31, i64 noundef 1, ptr noundef %exception) #12, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %call170, metadata !1499, metadata !DIExpression()), !dbg !1718
  %32 = load i64, ptr %rows157, align 8, !dbg !1719, !tbaa !915
  %33 = xor i64 %y.0803, -1, !dbg !1720
  %sub173 = add i64 %32, %33, !dbg !1720
  %34 = load i64, ptr %columns169, align 8, !dbg !1721, !tbaa !824
  %call175 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call14, i64 noundef 0, i64 noundef %sub173, i64 noundef %34, i64 noundef 1, ptr noundef %exception) #12, !dbg !1722
  call void @llvm.dbg.value(metadata ptr %call175, metadata !1501, metadata !DIExpression()), !dbg !1718
  %cmp176 = icmp eq ptr %call170, null, !dbg !1723
  %cmp178 = icmp eq ptr %call175, null
  %or.cond479 = select i1 %cmp176, i1 true, i1 %cmp178, !dbg !1725
  br i1 %or.cond479, label %cleanup241, label %if.end180, !dbg !1725

if.end180:                                        ; preds = %if.end168
  %call181 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call13) #10, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %call181, metadata !1498, metadata !DIExpression()), !dbg !1718
  %call182 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call14) #10, !dbg !1727
  call void @llvm.dbg.value(metadata ptr %call182, metadata !1500, metadata !DIExpression()), !dbg !1718
  %35 = load i64, ptr %columns169, align 8, !dbg !1728, !tbaa !824
  call void @llvm.dbg.value(metadata !DIArgList(ptr %call175, i64 %35), metadata !1501, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1718
  call void @llvm.dbg.value(metadata i64 0, metadata !1502, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %call170, metadata !1499, metadata !DIExpression()), !dbg !1718
  %cmp187795 = icmp sgt i64 %35, 0, !dbg !1729
  br i1 %cmp187795, label %for.body188.preheader, label %if.end222, !dbg !1732

for.body188.preheader:                            ; preds = %if.end180
  %add.ptr184 = getelementptr inbounds %struct._PixelPacket, ptr %call175, i64 %35, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %add.ptr184, metadata !1501, metadata !DIExpression()), !dbg !1718
  br label %for.body188, !dbg !1732

for.body188:                                      ; preds = %for.body188.preheader, %for.body188
  %x165.0798 = phi i64 [ %inc192, %for.body188 ], [ 0, %for.body188.preheader ]
  %q164.0797 = phi ptr [ %incdec.ptr189, %for.body188 ], [ %add.ptr184, %for.body188.preheader ]
  %p162.0796 = phi ptr [ %incdec.ptr190, %for.body188 ], [ %call170, %for.body188.preheader ]
  call void @llvm.dbg.value(metadata i64 %x165.0798, metadata !1502, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %q164.0797, metadata !1501, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %p162.0796, metadata !1499, metadata !DIExpression()), !dbg !1718
  %incdec.ptr189 = getelementptr inbounds %struct._PixelPacket, ptr %q164.0797, i64 -1, !dbg !1734
  call void @llvm.dbg.value(metadata ptr %incdec.ptr189, metadata !1501, metadata !DIExpression()), !dbg !1718
  %incdec.ptr190 = getelementptr inbounds %struct._PixelPacket, ptr %p162.0796, i64 1, !dbg !1735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr190, metadata !1499, metadata !DIExpression()), !dbg !1718
  %36 = load i64, ptr %p162.0796, align 2, !dbg !1736
  store i64 %36, ptr %incdec.ptr189, align 2, !dbg !1736
  %inc192 = add nuw nsw i64 %x165.0798, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %inc192, metadata !1502, metadata !DIExpression()), !dbg !1718
  %37 = load i64, ptr %columns169, align 8, !dbg !1738, !tbaa !824
  %cmp187 = icmp slt i64 %inc192, %37, !dbg !1729
  br i1 %cmp187, label %for.body188, label %for.end193, !dbg !1732, !llvm.loop !1739

for.end193:                                       ; preds = %for.body188
  %cmp194 = icmp ne ptr %call181, null, !dbg !1741
  %cmp196 = icmp ne ptr %call182, null
  %or.cond480 = select i1 %cmp194, i1 %cmp196, i1 false, !dbg !1743
  %cmp200800 = icmp sgt i64 %37, 0
  %or.cond = select i1 %or.cond480, i1 %cmp200800, i1 false, !dbg !1743
  call void @llvm.dbg.value(metadata i64 0, metadata !1502, metadata !DIExpression()), !dbg !1718
  br i1 %or.cond, label %for.body201.lr.ph, label %if.end222, !dbg !1743

for.body201.lr.ph:                                ; preds = %for.end193
  %add.ptr214 = getelementptr inbounds i16, ptr %call182, i64 -1
  %add.ptr216 = getelementptr inbounds i16, ptr %add.ptr214, i64 %37
  br label %for.body201, !dbg !1744

for.body201:                                      ; preds = %for.body201.lr.ph, %for.body201
  %x165.1801 = phi i64 [ 0, %for.body201.lr.ph ], [ %inc220, %for.body201 ]
  call void @llvm.dbg.value(metadata i64 %x165.1801, metadata !1502, metadata !DIExpression()), !dbg !1718
  %idx.neg204 = sub nsw i64 0, %x165.1801, !dbg !1746
  %add.ptr209 = getelementptr inbounds i16, ptr %call181, i64 %x165.1801, !dbg !1746
  %38 = load i16, ptr %add.ptr209, align 2, !dbg !1746, !tbaa !950
  %add.ptr217 = getelementptr inbounds i16, ptr %add.ptr216, i64 %idx.neg204, !dbg !1746
  store i16 %38, ptr %add.ptr217, align 2, !dbg !1746, !tbaa !950
  %inc220 = add nuw nsw i64 %x165.1801, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %inc220, metadata !1502, metadata !DIExpression()), !dbg !1718
  %exitcond842.not = icmp eq i64 %inc220, %37, !dbg !1751
  br i1 %exitcond842.not, label %if.end222, label %for.body201, !dbg !1744, !llvm.loop !1752

if.end222:                                        ; preds = %for.body201, %if.end180, %for.end193
  %call223 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call14, ptr noundef %exception) #12, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %call223, metadata !1493, metadata !DIExpression()), !dbg !1718
  %cmp224 = icmp ne i32 %call223, 0, !dbg !1755
  %spec.select708 = zext i1 %cmp224 to i32, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %spec.select708, metadata !1457, metadata !DIExpression()), !dbg !1536
  %39 = load ptr, ptr %progress_monitor228, align 8, !dbg !1758, !tbaa !1655
  %cmp229.not = icmp eq ptr %39, null, !dbg !1759
  br i1 %cmp229.not, label %cleanup241, label %SetImageProgress.exit732, !dbg !1760

SetImageProgress.exit732:                         ; preds = %if.end222
  %inc233 = add nsw i64 %progress.3805, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %inc233, metadata !1458, metadata !DIExpression()), !dbg !1536
  %40 = load i64, ptr %rows157, align 8, !dbg !1762, !tbaa !915
  call void @llvm.dbg.value(metadata ptr %image, metadata !1661, metadata !DIExpression()) #10, !dbg !1763
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1667, metadata !DIExpression()) #10, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %progress.3805, metadata !1668, metadata !DIExpression()) #10, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %40, metadata !1669, metadata !DIExpression()) #10, !dbg !1763
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i723) #10, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %message.i723, metadata !1670, metadata !DIExpression()) #10, !dbg !1766
  %call.i727 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i723, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i726) #10, !dbg !1767
  %41 = load ptr, ptr %progress_monitor228, align 8, !dbg !1768, !tbaa !1655
  %42 = load ptr, ptr %client_data.i728, align 8, !dbg !1769, !tbaa !1678
  %call4.i729 = call i32 %41(ptr noundef nonnull %message.i723, i64 noundef %progress.3805, i64 noundef %40, ptr noundef %42) #10, !dbg !1770
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i723) #10, !dbg !1771
  call void @llvm.dbg.value(metadata i32 %call4.i729, metadata !1503, metadata !DIExpression()), !dbg !1772
  %cmp236 = icmp eq i32 %call4.i729, 0, !dbg !1773
  %spec.select709 = select i1 %cmp236, i32 0, i32 %spec.select708, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %spec.select709, metadata !1457, metadata !DIExpression()), !dbg !1536
  br label %cleanup241, !dbg !1776

cleanup241:                                       ; preds = %if.end222, %SetImageProgress.exit732, %if.end168, %for.body159
  %progress.5 = phi i64 [ %progress.3805, %for.body159 ], [ %progress.3805, %if.end168 ], [ %inc233, %SetImageProgress.exit732 ], [ %progress.3805, %if.end222 ], !dbg !1536
  %status.14 = phi i32 [ 0, %for.body159 ], [ 0, %if.end168 ], [ %spec.select709, %SetImageProgress.exit732 ], [ %spec.select708, %if.end222 ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.14, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %progress.5, metadata !1458, metadata !DIExpression()), !dbg !1536
  %inc250 = add nuw nsw i64 %y.0803, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %inc250, metadata !1460, metadata !DIExpression()), !dbg !1536
  %43 = load i64, ptr %rows157, align 8, !dbg !1562, !tbaa !915
  %cmp158 = icmp slt i64 %inc250, %43, !dbg !1563
  br i1 %cmp158, label %for.body159, label %for.end251, !dbg !1564, !llvm.loop !1778

for.end251:                                       ; preds = %cleanup241, %for.cond156.preheader
  %status.10.lcssa = phi i32 [ 1, %for.cond156.preheader ], [ %status.14, %cleanup241 ], !dbg !1649
  %cmp253.not = icmp eq i64 %page.sroa.0.0.copyload, 0, !dbg !1780
  br i1 %cmp253.not, label %if.end262, label %if.then255, !dbg !1782

if.then255:                                       ; preds = %for.end251
  %columns257 = getelementptr inbounds %struct._Image, ptr %call8, i64 0, i32 7, !dbg !1783
  %44 = load i64, ptr %columns257, align 8, !dbg !1783, !tbaa !824
  %45 = add i64 %page.sroa.30.0.copyload, %44, !dbg !1784
  %sub260 = sub i64 %page.sroa.0.0.copyload, %45, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %sub260, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1536
  br label %if.end262, !dbg !1785

if.end262:                                        ; preds = %if.then255, %for.end251
  %page.sroa.30.1 = phi i64 [ %sub260, %if.then255 ], [ %page.sroa.30.0.copyload, %for.end251 ], !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.30.1, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1536
  %cmp264.not = icmp eq i64 %page.sroa.18.0.copyload, 0, !dbg !1786
  br i1 %cmp264.not, label %sw.epilog, label %if.then266, !dbg !1788

if.then266:                                       ; preds = %if.end262
  %rows268 = getelementptr inbounds %struct._Image, ptr %call8, i64 0, i32 8, !dbg !1789
  %46 = load i64, ptr %rows268, align 8, !dbg !1789, !tbaa !915
  %47 = add i64 %page.sroa.44.0.copyload, %46, !dbg !1790
  %sub271 = sub i64 %page.sroa.18.0.copyload, %47, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %sub271, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1536
  br label %sw.epilog, !dbg !1791

sw.bb274:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tile_height275) #10, !dbg !1792
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tile_width276) #10, !dbg !1792
  call void @llvm.dbg.value(metadata ptr %tile_height275, metadata !1506, metadata !DIExpression(DW_OP_deref)), !dbg !1793
  call void @llvm.dbg.value(metadata ptr %tile_width276, metadata !1508, metadata !DIExpression(DW_OP_deref)), !dbg !1793
  call void @GetPixelCacheTileSize(ptr noundef nonnull %image, ptr noundef nonnull %tile_width276, ptr noundef nonnull %tile_height275) #10, !dbg !1794
  %columns278 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1795
  %48 = load i64, ptr %columns278, align 8, !dbg !1795, !tbaa !824
  call void @llvm.dbg.value(metadata i64 %48, metadata !1508, metadata !DIExpression()), !dbg !1793
  store i64 %48, ptr %tile_width276, align 8, !dbg !1796, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 0, metadata !1509, metadata !DIExpression()), !dbg !1793
  %rows280 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 0, metadata !1458, metadata !DIExpression()), !dbg !1536
  %49 = load i64, ptr %rows280, align 8, !dbg !1797, !tbaa !915
  %cmp281787 = icmp sgt i64 %49, 0, !dbg !1798
  br i1 %cmp281787, label %for.body283.lr.ph, label %for.end425, !dbg !1799

for.body283.lr.ph:                                ; preds = %sw.bb274
  %rows338 = getelementptr inbounds %struct._Image, ptr %call8, i64 0, i32 8
  %progress_monitor407 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i736 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i738 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body283, !dbg !1799

for.body283:                                      ; preds = %for.body283.lr.ph, %cleanup420
  %tile_y277.0790 = phi i64 [ 0, %for.body283.lr.ph ], [ %add424, %cleanup420 ]
  %status.15789 = phi i32 [ 1, %for.body283.lr.ph ], [ %status.24, %cleanup420 ]
  %progress.6788 = phi i64 [ 0, %for.body283.lr.ph ], [ %progress.8, %cleanup420 ]
  call void @llvm.dbg.value(metadata i64 %tile_y277.0790, metadata !1509, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %status.15789, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %progress.6788, metadata !1458, metadata !DIExpression()), !dbg !1536
  %cmp285 = icmp eq i32 %status.15789, 0, !dbg !1800
  br i1 %cmp285, label %cleanup420, label %for.cond289.preheader, !dbg !1802

for.cond289.preheader:                            ; preds = %for.body283
  call void @llvm.dbg.value(metadata i64 0, metadata !1510, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 1, metadata !1457, metadata !DIExpression()), !dbg !1536
  %50 = load i64, ptr %columns278, align 8, !dbg !1804, !tbaa !824
  %cmp291781 = icmp sgt i64 %50, 0, !dbg !1805
  br i1 %cmp291781, label %for.body293.preheader, label %for.end406, !dbg !1806

for.body293.preheader:                            ; preds = %for.cond289.preheader
  %.pre = load i64, ptr %tile_width276, align 8, !dbg !1807, !tbaa !1106
  br label %for.body293, !dbg !1806

for.body293:                                      ; preds = %for.body293.preheader, %for.inc404
  %51 = phi i64 [ %62, %for.inc404 ], [ %.pre, %for.body293.preheader ], !dbg !1807
  %52 = phi i64 [ %63, %for.inc404 ], [ %50, %for.body293.preheader ]
  %tile_x284.0783 = phi i64 [ %add405, %for.inc404 ], [ 0, %for.body293.preheader ]
  %status.16782 = phi i32 [ %status.17.lcssa, %for.inc404 ], [ 1, %for.body293.preheader ]
  call void @llvm.dbg.value(metadata i64 %tile_x284.0783, metadata !1510, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %status.16782, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %51, metadata !1508, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %51, metadata !1524, metadata !DIExpression()), !dbg !1808
  %add302 = add i64 %51, %tile_x284.0783, !dbg !1809
  %cmp304 = icmp slt i64 %52, %add302, !dbg !1811
  br i1 %cmp304, label %if.then306, label %if.end311, !dbg !1812

if.then306:                                       ; preds = %for.body293
  %sub309.neg = add i64 %51, %52, !dbg !1813
  %sub310 = sub i64 %sub309.neg, %add302, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %sub310, metadata !1524, metadata !DIExpression()), !dbg !1808
  br label %if.end311, !dbg !1815

if.end311:                                        ; preds = %if.then306, %for.body293
  %width301.0 = phi i64 [ %sub310, %if.then306 ], [ %51, %for.body293 ], !dbg !1808
  call void @llvm.dbg.value(metadata i64 %width301.0, metadata !1524, metadata !DIExpression()), !dbg !1808
  %53 = load i64, ptr %tile_height275, align 8, !dbg !1816, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %53, metadata !1506, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i64 %53, metadata !1523, metadata !DIExpression()), !dbg !1808
  %add312 = add i64 %53, %tile_y277.0790, !dbg !1817
  %54 = load i64, ptr %rows280, align 8, !dbg !1819, !tbaa !915
  %cmp314 = icmp slt i64 %54, %add312, !dbg !1820
  %sub320 = sub i64 %54, %tile_y277.0790
  %spec.select868 = select i1 %cmp314, i64 %sub320, i64 %53, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %spec.select868, metadata !1523, metadata !DIExpression()), !dbg !1808
  %call322 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call13, i64 noundef %tile_x284.0783, i64 noundef %tile_y277.0790, i64 noundef %width301.0, i64 noundef %spec.select868, ptr noundef %exception) #12, !dbg !1822
  call void @llvm.dbg.value(metadata ptr %call322, metadata !1519, metadata !DIExpression()), !dbg !1808
  %cmp323 = icmp eq ptr %call322, null, !dbg !1823
  br i1 %cmp323, label %for.end406, label %if.end326, !dbg !1825

if.end326:                                        ; preds = %if.end311
  %call327 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call13) #10, !dbg !1826
  call void @llvm.dbg.value(metadata ptr %call327, metadata !1518, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 0, metadata !1522, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %status.16782, metadata !1457, metadata !DIExpression()), !dbg !1536
  %cmp329778 = icmp sgt i64 %width301.0, 0, !dbg !1827
  br i1 %cmp329778, label %for.body331.lr.ph, label %for.inc404, !dbg !1828

for.body331.lr.ph:                                ; preds = %if.end326
  %55 = add i64 %width301.0, %tile_x284.0783
  %sub347 = add nsw i64 %width301.0, -1
  %add.ptr348 = getelementptr inbounds %struct._PixelPacket, ptr %call322, i64 %sub347
  %cmp352770 = icmp sgt i64 %spec.select868, 0
  %cmp361.not = icmp eq ptr %call327, null
  %add.ptr369 = getelementptr inbounds i16, ptr %call327, i64 %sub347
  br i1 %cmp361.not, label %for.body331.us, label %for.body331

for.body331.us:                                   ; preds = %for.body331.lr.ph, %cleanup387.us
  %y299.0780.us = phi i64 [ %inc392.us, %cleanup387.us ], [ 0, %for.body331.lr.ph ]
  %status.17779.us = phi i32 [ %status.19.us, %cleanup387.us ], [ %status.16782, %for.body331.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y299.0780.us, metadata !1522, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %status.17779.us, metadata !1457, metadata !DIExpression()), !dbg !1536
  %cmp334.us = icmp eq i32 %status.17779.us, 0, !dbg !1829
  br i1 %cmp334.us, label %cleanup387.us, label %if.end337.us, !dbg !1831

if.end337.us:                                     ; preds = %for.body331.us
  %56 = load i64, ptr %rows338, align 8, !dbg !1832, !tbaa !915
  %add339.us = sub i64 %y299.0780.us, %55, !dbg !1833
  %sub341.us = add i64 %add339.us, %56, !dbg !1834
  %call342.us = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call14, i64 noundef %tile_y277.0790, i64 noundef %sub341.us, i64 noundef %spec.select868, i64 noundef 1, ptr noundef %exception) #12, !dbg !1835
  call void @llvm.dbg.value(metadata ptr %call342.us, metadata !1521, metadata !DIExpression()), !dbg !1808
  %cmp343.us = icmp eq ptr %call342.us, null, !dbg !1836
  br i1 %cmp343.us, label %cleanup387.us, label %if.end346.us, !dbg !1838

if.end346.us:                                     ; preds = %if.end337.us
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr348, i64 0, i64 %y299.0780.us), metadata !1525, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1839
  call void @llvm.dbg.value(metadata i64 0, metadata !1529, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %call342.us, metadata !1521, metadata !DIExpression()), !dbg !1808
  br i1 %cmp352770, label %for.body354.us.preheader, label %for.end359.us, !dbg !1840

for.body354.us.preheader:                         ; preds = %if.end346.us
  %idx.neg349.us = sub nsw i64 0, %y299.0780.us, !dbg !1842
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr348, i64 %idx.neg349.us), metadata !1525, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1839
  %add.ptr350.us = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr348, i64 %idx.neg349.us, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %add.ptr350.us, metadata !1525, metadata !DIExpression()), !dbg !1839
  br label %for.body354.us, !dbg !1840

for.end359.us:                                    ; preds = %for.body354.us, %if.end346.us
  %call360.us = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call14) #10, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %call360.us, metadata !1520, metadata !DIExpression()), !dbg !1808
  %call382.us = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call14, ptr noundef %exception) #12, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %call382.us, metadata !1514, metadata !DIExpression()), !dbg !1808
  %cmp383.us = icmp ne i32 %call382.us, 0, !dbg !1845
  %spec.select710.us = zext i1 %cmp383.us to i32, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %spec.select710.us, metadata !1457, metadata !DIExpression()), !dbg !1536
  br label %cleanup387.us, !dbg !1848

for.body354.us:                                   ; preds = %for.body354.us.preheader, %for.body354.us
  %x333.0773.us = phi i64 [ %inc358.us, %for.body354.us ], [ 0, %for.body354.us.preheader ]
  %tile_pixels332.0772.us = phi ptr [ %add.ptr356.us, %for.body354.us ], [ %add.ptr350.us, %for.body354.us.preheader ]
  %q298.0771.us = phi ptr [ %incdec.ptr355.us, %for.body354.us ], [ %call342.us, %for.body354.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %x333.0773.us, metadata !1529, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %tile_pixels332.0772.us, metadata !1525, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %q298.0771.us, metadata !1521, metadata !DIExpression()), !dbg !1808
  %incdec.ptr355.us = getelementptr inbounds %struct._PixelPacket, ptr %q298.0771.us, i64 1, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %incdec.ptr355.us, metadata !1521, metadata !DIExpression()), !dbg !1808
  %57 = load i64, ptr %tile_pixels332.0772.us, align 2, !dbg !1852
  store i64 %57, ptr %q298.0771.us, align 2, !dbg !1852
  %add.ptr356.us = getelementptr inbounds %struct._PixelPacket, ptr %tile_pixels332.0772.us, i64 %width301.0, !dbg !1853
  call void @llvm.dbg.value(metadata ptr %add.ptr356.us, metadata !1525, metadata !DIExpression()), !dbg !1839
  %inc358.us = add nuw nsw i64 %x333.0773.us, 1, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %inc358.us, metadata !1529, metadata !DIExpression()), !dbg !1839
  %cmp352.us = icmp slt i64 %inc358.us, %spec.select868, !dbg !1855
  br i1 %cmp352.us, label %for.body354.us, label %for.end359.us, !dbg !1840, !llvm.loop !1856

cleanup387.us:                                    ; preds = %for.end359.us, %if.end337.us, %for.body331.us
  %status.19.us = phi i32 [ %spec.select710.us, %for.end359.us ], [ 0, %for.body331.us ], [ 0, %if.end337.us ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.19.us, metadata !1457, metadata !DIExpression()), !dbg !1536
  %inc392.us = add nuw nsw i64 %y299.0780.us, 1, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %inc392.us, metadata !1522, metadata !DIExpression()), !dbg !1808
  %exitcond841.not = icmp eq i64 %inc392.us, %width301.0, !dbg !1827
  br i1 %exitcond841.not, label %for.inc404, label %for.body331.us, !dbg !1828, !llvm.loop !1859

for.body331:                                      ; preds = %for.body331.lr.ph, %cleanup387
  %y299.0780 = phi i64 [ %inc392, %cleanup387 ], [ 0, %for.body331.lr.ph ]
  %status.17779 = phi i32 [ %status.19, %cleanup387 ], [ %status.16782, %for.body331.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y299.0780, metadata !1522, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %status.17779, metadata !1457, metadata !DIExpression()), !dbg !1536
  %cmp334 = icmp eq i32 %status.17779, 0, !dbg !1829
  br i1 %cmp334, label %cleanup387, label %if.end337, !dbg !1831

if.end337:                                        ; preds = %for.body331
  %58 = load i64, ptr %rows338, align 8, !dbg !1832, !tbaa !915
  %add339 = sub i64 %y299.0780, %55, !dbg !1833
  %sub341 = add i64 %add339, %58, !dbg !1834
  %call342 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call14, i64 noundef %tile_y277.0790, i64 noundef %sub341, i64 noundef %spec.select868, i64 noundef 1, ptr noundef %exception) #12, !dbg !1835
  call void @llvm.dbg.value(metadata ptr %call342, metadata !1521, metadata !DIExpression()), !dbg !1808
  %cmp343 = icmp eq ptr %call342, null, !dbg !1836
  br i1 %cmp343, label %cleanup387, label %if.end346, !dbg !1838

if.end346:                                        ; preds = %if.end337
  %idx.neg349 = sub nsw i64 0, %y299.0780, !dbg !1842
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr348, i64 %idx.neg349), metadata !1525, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1839
  call void @llvm.dbg.value(metadata i64 0, metadata !1529, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %call342, metadata !1521, metadata !DIExpression()), !dbg !1808
  br i1 %cmp352770, label %for.body354.preheader, label %for.end359.thread, !dbg !1840

for.body354.preheader:                            ; preds = %if.end346
  %add.ptr350 = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr348, i64 %idx.neg349, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %add.ptr350, metadata !1525, metadata !DIExpression()), !dbg !1839
  br label %for.body354, !dbg !1840

for.body354:                                      ; preds = %for.body354.preheader, %for.body354
  %x333.0773 = phi i64 [ %inc358, %for.body354 ], [ 0, %for.body354.preheader ]
  %tile_pixels332.0772 = phi ptr [ %add.ptr356, %for.body354 ], [ %add.ptr350, %for.body354.preheader ]
  %q298.0771 = phi ptr [ %incdec.ptr355, %for.body354 ], [ %call342, %for.body354.preheader ]
  call void @llvm.dbg.value(metadata i64 %x333.0773, metadata !1529, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %tile_pixels332.0772, metadata !1525, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %q298.0771, metadata !1521, metadata !DIExpression()), !dbg !1808
  %incdec.ptr355 = getelementptr inbounds %struct._PixelPacket, ptr %q298.0771, i64 1, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %incdec.ptr355, metadata !1521, metadata !DIExpression()), !dbg !1808
  %59 = load i64, ptr %tile_pixels332.0772, align 2, !dbg !1852
  store i64 %59, ptr %q298.0771, align 2, !dbg !1852
  %add.ptr356 = getelementptr inbounds %struct._PixelPacket, ptr %tile_pixels332.0772, i64 %width301.0, !dbg !1853
  call void @llvm.dbg.value(metadata ptr %add.ptr356, metadata !1525, metadata !DIExpression()), !dbg !1839
  %inc358 = add nuw nsw i64 %x333.0773, 1, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %inc358, metadata !1529, metadata !DIExpression()), !dbg !1839
  %cmp352 = icmp slt i64 %inc358, %spec.select868, !dbg !1855
  br i1 %cmp352, label %for.body354, label %for.end359, !dbg !1840, !llvm.loop !1856

for.end359:                                       ; preds = %for.body354
  %call360 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call14) #10, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %call360, metadata !1520, metadata !DIExpression()), !dbg !1808
  %cmp364.not = icmp ne ptr %call360, null
  %60 = and i1 %cmp352770, %cmp364.not, !dbg !1861
  br i1 %60, label %for.body375.preheader, label %if.end381, !dbg !1861

for.end359.thread:                                ; preds = %if.end346
  %call360857 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call14) #10, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %call360, metadata !1520, metadata !DIExpression()), !dbg !1808
  br label %if.end381, !dbg !1861

for.body375.preheader:                            ; preds = %for.end359
  %add.ptr371 = getelementptr inbounds i16, ptr %add.ptr369, i64 %idx.neg349, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %add.ptr371, metadata !1530, metadata !DIExpression()), !dbg !1863
  br label %for.body375, !dbg !1864

for.body375:                                      ; preds = %for.body375.preheader, %for.body375
  %tile_indexes367.0777 = phi ptr [ %add.ptr377, %for.body375 ], [ %add.ptr371, %for.body375.preheader ]
  %x333.1776 = phi i64 [ %inc379, %for.body375 ], [ 0, %for.body375.preheader ]
  %rotate_indexes297.0775 = phi ptr [ %incdec.ptr376, %for.body375 ], [ %call360, %for.body375.preheader ]
  call void @llvm.dbg.value(metadata ptr %tile_indexes367.0777, metadata !1530, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %x333.1776, metadata !1529, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %rotate_indexes297.0775, metadata !1520, metadata !DIExpression()), !dbg !1808
  %61 = load i16, ptr %tile_indexes367.0777, align 2, !dbg !1866, !tbaa !950
  %incdec.ptr376 = getelementptr inbounds i16, ptr %rotate_indexes297.0775, i64 1, !dbg !1869
  call void @llvm.dbg.value(metadata ptr %incdec.ptr376, metadata !1520, metadata !DIExpression()), !dbg !1808
  store i16 %61, ptr %rotate_indexes297.0775, align 2, !dbg !1870, !tbaa !950
  %add.ptr377 = getelementptr inbounds i16, ptr %tile_indexes367.0777, i64 %width301.0, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %add.ptr377, metadata !1530, metadata !DIExpression()), !dbg !1863
  %inc379 = add nuw nsw i64 %x333.1776, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %inc379, metadata !1529, metadata !DIExpression()), !dbg !1839
  %cmp373 = icmp slt i64 %inc379, %spec.select868, !dbg !1873
  br i1 %cmp373, label %for.body375, label %if.end381, !dbg !1864, !llvm.loop !1874

if.end381:                                        ; preds = %for.body375, %for.end359, %for.end359.thread
  %call382 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call14, ptr noundef %exception) #12, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %call382, metadata !1514, metadata !DIExpression()), !dbg !1808
  %cmp383 = icmp ne i32 %call382, 0, !dbg !1845
  %spec.select710 = zext i1 %cmp383 to i32, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %spec.select710, metadata !1457, metadata !DIExpression()), !dbg !1536
  br label %cleanup387, !dbg !1848

cleanup387:                                       ; preds = %if.end337, %for.body331, %if.end381
  %status.19 = phi i32 [ %spec.select710, %if.end381 ], [ 0, %for.body331 ], [ 0, %if.end337 ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.19, metadata !1457, metadata !DIExpression()), !dbg !1536
  %inc392 = add nuw nsw i64 %y299.0780, 1, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %inc392, metadata !1522, metadata !DIExpression()), !dbg !1808
  %exitcond.not = icmp eq i64 %inc392, %width301.0, !dbg !1827
  br i1 %exitcond.not, label %for.inc404, label %for.body331, !dbg !1828, !llvm.loop !1859

for.inc404:                                       ; preds = %cleanup387, %cleanup387.us, %if.end326
  %status.17.lcssa = phi i32 [ %status.16782, %if.end326 ], [ %status.19.us, %cleanup387.us ], [ %status.19, %cleanup387 ], !dbg !1649
  call void @llvm.dbg.value(metadata i32 undef, metadata !1457, metadata !DIExpression()), !dbg !1536
  %62 = load i64, ptr %tile_width276, align 8, !dbg !1876, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %62, metadata !1508, metadata !DIExpression()), !dbg !1793
  %add405 = add nsw i64 %62, %tile_x284.0783, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %add405, metadata !1510, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %status.17.lcssa, metadata !1457, metadata !DIExpression()), !dbg !1536
  %63 = load i64, ptr %columns278, align 8, !dbg !1804, !tbaa !824
  %cmp291 = icmp slt i64 %add405, %63, !dbg !1805
  br i1 %cmp291, label %for.body293, label %for.end406, !dbg !1806, !llvm.loop !1878

for.end406:                                       ; preds = %for.inc404, %if.end311, %for.cond289.preheader
  %status.21 = phi i32 [ 1, %for.cond289.preheader ], [ 0, %if.end311 ], [ %status.17.lcssa, %for.inc404 ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.21, metadata !1457, metadata !DIExpression()), !dbg !1536
  %64 = load ptr, ptr %progress_monitor407, align 8, !dbg !1880, !tbaa !1655
  %cmp408.not = icmp eq ptr %64, null, !dbg !1881
  br i1 %cmp408.not, label %cleanup420, label %SetImageProgress.exit742, !dbg !1882

SetImageProgress.exit742:                         ; preds = %for.end406
  %65 = load i64, ptr %tile_height275, align 8, !dbg !1883, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %65, metadata !1506, metadata !DIExpression()), !dbg !1793
  %add412 = add i64 %65, %progress.6788, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %add412, metadata !1458, metadata !DIExpression()), !dbg !1536
  %66 = load i64, ptr %rows280, align 8, !dbg !1885, !tbaa !915
  call void @llvm.dbg.value(metadata ptr %image, metadata !1661, metadata !DIExpression()) #10, !dbg !1886
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1667, metadata !DIExpression()) #10, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %add412, metadata !1668, metadata !DIExpression()) #10, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %66, metadata !1669, metadata !DIExpression()) #10, !dbg !1886
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i733) #10, !dbg !1888
  call void @llvm.dbg.declare(metadata ptr %message.i733, metadata !1670, metadata !DIExpression()) #10, !dbg !1889
  %call.i737 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i733, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i736) #10, !dbg !1890
  %67 = load ptr, ptr %progress_monitor407, align 8, !dbg !1891, !tbaa !1655
  %68 = load ptr, ptr %client_data.i738, align 8, !dbg !1892, !tbaa !1678
  %call4.i739 = call i32 %67(ptr noundef nonnull %message.i733, i64 noundef %add412, i64 noundef %66, ptr noundef %68) #10, !dbg !1893
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i733) #10, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %call4.i739, metadata !1533, metadata !DIExpression()), !dbg !1895
  %cmp415 = icmp eq i32 %call4.i739, 0, !dbg !1896
  %spec.select712 = select i1 %cmp415, i32 0, i32 %status.21, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %spec.select712, metadata !1457, metadata !DIExpression()), !dbg !1536
  br label %cleanup420, !dbg !1899

cleanup420:                                       ; preds = %for.end406, %SetImageProgress.exit742, %for.body283
  %progress.8 = phi i64 [ %progress.6788, %for.body283 ], [ %add412, %SetImageProgress.exit742 ], [ %progress.6788, %for.end406 ], !dbg !1536
  %status.24 = phi i32 [ 0, %for.body283 ], [ %spec.select712, %SetImageProgress.exit742 ], [ %status.21, %for.end406 ], !dbg !1536
  call void @llvm.dbg.value(metadata i32 %status.24, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %progress.8, metadata !1458, metadata !DIExpression()), !dbg !1536
  %69 = load i64, ptr %tile_height275, align 8, !dbg !1900, !tbaa !1106
  call void @llvm.dbg.value(metadata i64 %69, metadata !1506, metadata !DIExpression()), !dbg !1793
  %add424 = add nsw i64 %69, %tile_y277.0790, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %add424, metadata !1509, metadata !DIExpression()), !dbg !1793
  %70 = load i64, ptr %rows280, align 8, !dbg !1797, !tbaa !915
  %cmp281 = icmp slt i64 %add424, %70, !dbg !1798
  br i1 %cmp281, label %for.body283, label %for.end425, !dbg !1799, !llvm.loop !1902

for.end425:                                       ; preds = %cleanup420, %sw.bb274
  %status.15.lcssa = phi i32 [ 1, %sw.bb274 ], [ %status.24, %cleanup420 ], !dbg !1649
  %.lcssa769 = phi i64 [ %49, %sw.bb274 ], [ %70, %cleanup420 ], !dbg !1797
  call void @llvm.dbg.value(metadata ptr %image, metadata !1661, metadata !DIExpression()) #10, !dbg !1904
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1667, metadata !DIExpression()) #10, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %.lcssa769, metadata !1668, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #10, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %.lcssa769, metadata !1669, metadata !DIExpression()) #10, !dbg !1904
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i743) #10, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %message.i743, metadata !1670, metadata !DIExpression()) #10, !dbg !1907
  %progress_monitor.i744 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47, !dbg !1908
  %71 = load ptr, ptr %progress_monitor.i744, align 8, !dbg !1908, !tbaa !1655
  %cmp.i745 = icmp eq ptr %71, null, !dbg !1909
  br i1 %cmp.i745, label %SetImageProgress.exit752, label %if.end.i750, !dbg !1910

if.end.i750:                                      ; preds = %for.end425
  %sub427 = add nsw i64 %.lcssa769, -1, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %sub427, metadata !1668, metadata !DIExpression()) #10, !dbg !1904
  %filename.i746 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1912
  %call.i747 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i743, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef nonnull %filename.i746) #10, !dbg !1913
  %72 = load ptr, ptr %progress_monitor.i744, align 8, !dbg !1914, !tbaa !1655
  %client_data.i748 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48, !dbg !1915
  %73 = load ptr, ptr %client_data.i748, align 8, !dbg !1915, !tbaa !1678
  %call4.i749 = call i32 %72(ptr noundef nonnull %message.i743, i64 noundef %sub427, i64 noundef %.lcssa769, ptr noundef %73) #10, !dbg !1916
  br label %SetImageProgress.exit752, !dbg !1917

SetImageProgress.exit752:                         ; preds = %for.end425, %if.end.i750
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i743) #10, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.30.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.44.0.copyload, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1536
  %cmp449.not = icmp eq i64 %page.sroa.0.0.copyload, 0, !dbg !1919
  br i1 %cmp449.not, label %if.end458, label %if.then451, !dbg !1921

if.then451:                                       ; preds = %SetImageProgress.exit752
  %rows453 = getelementptr inbounds %struct._Image, ptr %call8, i64 0, i32 8, !dbg !1922
  %74 = load i64, ptr %rows453, align 8, !dbg !1922, !tbaa !915
  %75 = add i64 %page.sroa.30.0.copyload, %74, !dbg !1923
  %sub456 = sub i64 %page.sroa.0.0.copyload, %75, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %sub456, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1536
  br label %if.end458, !dbg !1924

if.end458:                                        ; preds = %if.then451, %SetImageProgress.exit752
  %page.sroa.44.0 = phi i64 [ %sub456, %if.then451 ], [ %page.sroa.30.0.copyload, %SetImageProgress.exit752 ], !dbg !1793
  call void @llvm.dbg.value(metadata i64 %page.sroa.44.0, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tile_width276) #10, !dbg !1925
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tile_height275) #10, !dbg !1925
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end12, %if.end262, %if.then266, %if.end458, %if.end151
  %page.sroa.0.0 = phi i64 [ %page.sroa.0.0.copyload, %if.end12 ], [ %page.sroa.18.0.copyload, %if.end458 ], [ %page.sroa.0.0.copyload, %if.then266 ], [ %page.sroa.0.0.copyload, %if.end262 ], [ %page.sroa.18.0.copyload, %if.end151 ], !dbg !1536
  %page.sroa.18.0 = phi i64 [ %page.sroa.18.0.copyload, %if.end12 ], [ %page.sroa.0.0.copyload, %if.end458 ], [ %page.sroa.18.0.copyload, %if.then266 ], [ 0, %if.end262 ], [ %page.sroa.0.0.copyload, %if.end151 ], !dbg !1536
  %page.sroa.30.2 = phi i64 [ %page.sroa.30.0.copyload, %if.end12 ], [ %page.sroa.44.0.copyload, %if.end458 ], [ %page.sroa.30.1, %if.then266 ], [ %page.sroa.30.1, %if.end262 ], [ %page.sroa.30.0, %if.end151 ], !dbg !1536
  %page.sroa.44.1 = phi i64 [ %page.sroa.44.0.copyload, %if.end12 ], [ %page.sroa.44.0, %if.end458 ], [ %sub271, %if.then266 ], [ %page.sroa.44.0.copyload, %if.end262 ], [ %page.sroa.30.0.copyload, %if.end151 ], !dbg !1536
  %status.25 = phi i32 [ 1, %if.end12 ], [ %status.15.lcssa, %if.end458 ], [ %status.10.lcssa, %if.then266 ], [ %status.10.lcssa, %if.end262 ], [ %status.0.lcssa, %if.end151 ], !dbg !1649
  call void @llvm.dbg.value(metadata i32 %status.25, metadata !1457, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.44.1, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.30.2, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.18.0, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %page.sroa.0.0, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1536
  %call462 = call ptr @DestroyCacheView(ptr noundef %call14) #10, !dbg !1926
  call void @llvm.dbg.value(metadata ptr %call462, metadata !1455, metadata !DIExpression()), !dbg !1536
  %call463 = call ptr @DestroyCacheView(ptr noundef %call13) #10, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %call463, metadata !1454, metadata !DIExpression()), !dbg !1536
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1928
  %76 = load i32, ptr %type, align 8, !dbg !1928, !tbaa !1929
  %type464 = getelementptr inbounds %struct._Image, ptr %call8, i64 0, i32 77, !dbg !1930
  store i32 %76, ptr %type464, align 8, !dbg !1931, !tbaa !1929
  %page465 = getelementptr inbounds %struct._Image, ptr %call8, i64 0, i32 26, !dbg !1932
  store i64 %page.sroa.0.0, ptr %page465, align 8, !dbg !1933, !tbaa.struct !1538
  %page.sroa.18.0.page465.sroa_idx = getelementptr inbounds i8, ptr %page465, i64 8, !dbg !1933
  store i64 %page.sroa.18.0, ptr %page.sroa.18.0.page465.sroa_idx, align 8, !dbg !1933, !tbaa.struct !1539
  %page.sroa.30.0.page465.sroa_idx = getelementptr inbounds i8, ptr %page465, i64 16, !dbg !1933
  store i64 %page.sroa.30.2, ptr %page.sroa.30.0.page465.sroa_idx, align 8, !dbg !1933, !tbaa.struct !1540
  %page.sroa.44.0.page465.sroa_idx = getelementptr inbounds i8, ptr %page465, i64 24, !dbg !1933
  store i64 %page.sroa.44.1, ptr %page.sroa.44.0.page465.sroa_idx, align 8, !dbg !1933, !tbaa.struct !1541
  %cmp466 = icmp eq i32 %status.25, 0, !dbg !1934
  br i1 %cmp466, label %if.then468, label %cleanup471, !dbg !1936

if.then468:                                       ; preds = %sw.epilog
  %call469 = call ptr @DestroyImage(ptr noundef nonnull %call8) #10, !dbg !1937
  call void @llvm.dbg.value(metadata ptr %call469, metadata !1456, metadata !DIExpression()), !dbg !1536
  br label %cleanup471, !dbg !1938

cleanup471:                                       ; preds = %sw.epilog, %if.then468, %if.end9, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ null, %if.end9 ], [ %call469, %if.then468 ], [ %call8, %sw.epilog ], !dbg !1536
  ret ptr %retval.0, !dbg !1939
}

declare !dbg !1940 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1943 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1944 void @GetPixelCacheTileSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1948 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !1953 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1956 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !1959 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1962 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !1965 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @ShearImage(ptr noundef %image, double noundef %x_shear, double noundef %y_shear, ptr noundef %exception) local_unnamed_addr #0 !dbg !1968 {
entry:
  %shear_image = alloca ptr, align 8
  %border_info = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1987, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1988
  call void @llvm.dbg.value(metadata ptr %image, metadata !1972, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata double %x_shear, metadata !1973, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata double %y_shear, metadata !1974, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1975, metadata !DIExpression()), !dbg !1989
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shear_image) #10, !dbg !1990
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %border_info) #10, !dbg !1991
  call void @llvm.dbg.declare(metadata ptr %border_info, metadata !1986, metadata !DIExpression()), !dbg !1992
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1993
  %0 = load i32, ptr %debug, align 8, !dbg !1993, !tbaa !1133
  %cmp.not = icmp eq i32 %0, 0, !dbg !1995
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1996

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1997
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1599, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #10, !dbg !1998
  br label %if.end, !dbg !1999

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = fcmp une double %x_shear, 0.000000e+00, !dbg !2000
  br i1 %cmp1, label %land.lhs.true, label %if.end8, !dbg !2002

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call double @fmod(double noundef %x_shear, double noundef 9.000000e+01) #10, !dbg !2003
  %cmp3 = fcmp oeq double %call2, 0.000000e+00, !dbg !2004
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !2005

if.then4:                                         ; preds = %land.lhs.true
  %filename5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2006
  %call7 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1603, i32 noundef 465, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename5) #10, !dbg !2006
  br label %cleanup, !dbg !2006

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %cmp9 = fcmp une double %y_shear, 0.000000e+00, !dbg !2008
  br i1 %cmp9, label %land.lhs.true10, label %if.end17, !dbg !2010

land.lhs.true10:                                  ; preds = %if.end8
  %call11 = tail call double @fmod(double noundef %y_shear, double noundef 9.000000e+01) #10, !dbg !2011
  %cmp12 = fcmp oeq double %call11, 0.000000e+00, !dbg !2012
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !2013

if.then13:                                        ; preds = %land.lhs.true10
  %filename14 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2014
  %call16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1605, i32 noundef 465, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename14) #10, !dbg !2014
  br label %cleanup, !dbg !2014

if.end17:                                         ; preds = %land.lhs.true10, %if.end8
  %call18 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #10, !dbg !2016
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1976, metadata !DIExpression()), !dbg !1989
  %cmp19 = icmp eq ptr %call18, null, !dbg !2017
  br i1 %cmp19, label %if.then20, label %if.end24, !dbg !2019

if.then20:                                        ; preds = %if.end17
  %filename21 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2020
  %call23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1611, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename21) #10, !dbg !2020
  br label %cleanup, !dbg !2020

if.end24:                                         ; preds = %if.end17
  %call25 = tail call double @fmod(double noundef %x_shear, double noundef 3.600000e+02) #10, !dbg !2022
  call void @llvm.dbg.value(metadata double %call25, metadata !1149, metadata !DIExpression()), !dbg !2023
  %mul.i = fmul double %call25, 0x400921FB54442D18, !dbg !2025
  %div.i = fdiv double %mul.i, 1.800000e+02, !dbg !2026
  %call27 = tail call double @tan(double noundef %div.i) #10, !dbg !2027
  %fneg = fneg double %call27, !dbg !2028
  call void @llvm.dbg.value(metadata double %fneg, metadata !1979, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1989
  %call28 = tail call double @fmod(double noundef %y_shear, double noundef 3.600000e+02) #10, !dbg !2029
  call void @llvm.dbg.value(metadata double %call28, metadata !1149, metadata !DIExpression()), !dbg !2030
  %mul.i204 = fmul double %call28, 0x400921FB54442D18, !dbg !2032
  %div.i205 = fdiv double %mul.i204, 1.800000e+02, !dbg !2033
  %call30 = tail call double @tan(double noundef %div.i205) #10, !dbg !2034
  call void @llvm.dbg.value(metadata double %call30, metadata !1979, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1989
  %cmp32 = fcmp oeq double %call27, 0.000000e+00, !dbg !2035
  %cmp35 = fcmp oeq double %call30, 0.000000e+00
  %or.cond = select i1 %cmp32, i1 %cmp35, i1 false, !dbg !2037
  br i1 %or.cond, label %cleanup, label %if.end37, !dbg !2037

if.end37:                                         ; preds = %if.end24
  %call38 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call18, i32 noundef 1) #10, !dbg !2038
  %cmp39 = icmp eq i32 %call38, 0, !dbg !2040
  br i1 %cmp39, label %if.then40, label %if.end43, !dbg !2041

if.then40:                                        ; preds = %if.end37
  %exception41 = getelementptr inbounds %struct._Image, ptr %call18, i64 0, i32 58, !dbg !2042
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception41) #10, !dbg !2044
  %call42 = tail call ptr @DestroyImage(ptr noundef nonnull %call18) #10, !dbg !2045
  call void @llvm.dbg.value(metadata ptr %call42, metadata !1976, metadata !DIExpression()), !dbg !1989
  br label %cleanup, !dbg !2046

if.end43:                                         ; preds = %if.end37
  %matte = getelementptr inbounds %struct._Image, ptr %call18, i64 0, i32 6, !dbg !2047
  %1 = load i32, ptr %matte, align 8, !dbg !2047, !tbaa !2049
  %cmp44 = icmp eq i32 %1, 0, !dbg !2050
  br i1 %cmp44, label %if.then45, label %if.end47, !dbg !2051

if.then45:                                        ; preds = %if.end43
  %call46 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call18, i32 noundef 6) #10, !dbg !2052
  br label %if.end47, !dbg !2053

if.end47:                                         ; preds = %if.then45, %if.end43
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2054
  %2 = load i64, ptr %columns, align 8, !dbg !2054, !tbaa !824
  %3 = tail call double @llvm.fabs.f64(double %fneg), !dbg !2055
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2056
  %4 = load i64, ptr %rows, align 8, !dbg !2056, !tbaa !915
  %conv = uitofp i64 %4 to double, !dbg !2057
  %5 = tail call double @llvm.fmuladd.f64(double %3, double %conv, double 5.000000e-01), !dbg !2058
  %6 = tail call double @llvm.floor.f64(double %5), !dbg !2059
  %conv49 = fptosi double %6 to i64, !dbg !2060
  %add = add i64 %2, %conv49, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %add, metadata !1987, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1989
  %conv51 = uitofp i64 %2 to double, !dbg !2062
  %neg = fneg double %conv51, !dbg !2063
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %conv, double %neg), !dbg !2063
  %div = fmul double %7, 5.000000e-01, !dbg !2064
  %add57 = fadd double %div, %conv51, !dbg !2065
  %sub = fadd double %add57, -5.000000e-01, !dbg !2066
  %8 = tail call double @llvm.ceil.f64(double %sub), !dbg !2067
  %conv58 = fptosi double %8 to i64, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %conv58, metadata !1987, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1989
  %9 = tail call double @llvm.fabs.f64(double %call30), !dbg !2069
  %conv64 = uitofp i64 %add to double, !dbg !2070
  %neg67 = fneg double %conv, !dbg !2071
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %conv64, double %neg67), !dbg !2071
  %div68 = fmul double %10, 5.000000e-01, !dbg !2072
  %add69 = fadd double %div68, %conv, !dbg !2073
  %sub70 = fadd double %add69, -5.000000e-01, !dbg !2074
  %11 = tail call double @llvm.ceil.f64(double %sub70), !dbg !2075
  %conv71 = fptosi double %11 to i64, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %conv71, metadata !1987, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1989
  %border_color = getelementptr inbounds %struct._Image, ptr %call18, i64 0, i32 13, !dbg !2077
  %background_color = getelementptr inbounds %struct._Image, ptr %call18, i64 0, i32 12, !dbg !2078
  %12 = load i64, ptr %background_color, align 8, !dbg !2078
  store i64 %12, ptr %border_color, align 8, !dbg !2078
  %compose = getelementptr inbounds %struct._Image, ptr %call18, i64 0, i32 36, !dbg !2079
  store i32 13, ptr %compose, align 8, !dbg !2080, !tbaa !2081
  store i64 %conv58, ptr %border_info, align 8, !dbg !2082, !tbaa !1368
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %border_info, i64 0, i32 1, !dbg !2083
  store i64 %conv71, ptr %height, align 8, !dbg !2084, !tbaa !1371
  %call76 = call ptr @BorderImage(ptr noundef nonnull %call18, ptr noundef nonnull %border_info, ptr noundef %exception) #10, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1977, metadata !DIExpression()), !dbg !1989
  store ptr %call76, ptr %shear_image, align 8, !dbg !2086, !tbaa !2087
  %call77 = call ptr @DestroyImage(ptr noundef nonnull %call18) #10, !dbg !2088
  call void @llvm.dbg.value(metadata ptr %call77, metadata !1976, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1977, metadata !DIExpression()), !dbg !1989
  %cmp78 = icmp eq ptr %call76, null, !dbg !2089
  br i1 %cmp78, label %if.then80, label %if.end84, !dbg !2091

if.then80:                                        ; preds = %if.end47
  %filename81 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2092
  %call83 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1642, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename81) #10, !dbg !2092
  br label %cleanup, !dbg !2092

if.end84:                                         ; preds = %if.end47
  %matte85 = getelementptr inbounds %struct._Image, ptr %call76, i64 0, i32 6, !dbg !2094
  %13 = load i32, ptr %matte85, align 8, !dbg !2094, !tbaa !2049
  %cmp86 = icmp eq i32 %13, 0, !dbg !2096
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !2097

if.then88:                                        ; preds = %if.end84
  %call89 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %call76, i32 noundef 6) #10, !dbg !2098
  br label %if.end90, !dbg !2099

if.end90:                                         ; preds = %if.then88, %if.end84
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1977, metadata !DIExpression()), !dbg !1989
  %conv92 = fptrunc double %fneg to float, !dbg !2100
  %14 = load i64, ptr %columns, align 8, !dbg !2101, !tbaa !824
  %15 = load i64, ptr %rows, align 8, !dbg !2102, !tbaa !915
  %rows96 = getelementptr inbounds %struct._Image, ptr %call76, i64 0, i32 8, !dbg !2103
  %16 = load i64, ptr %rows96, align 8, !dbg !2103, !tbaa !915
  %sub98 = sub i64 %16, %15, !dbg !2104
  %div99 = sdiv i64 %sub98, 2, !dbg !2105
  %call100 = call fastcc i32 @XShearImage(ptr noundef nonnull %call76, float noundef %conv92, i64 noundef %14, i64 noundef %15, i64 noundef %conv58, i64 noundef %div99, ptr noundef %exception), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %call100, metadata !1978, metadata !DIExpression()), !dbg !1989
  %cmp101 = icmp eq i32 %call100, 0, !dbg !2107
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1977, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1977, metadata !DIExpression()), !dbg !1989
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !2109

if.then103:                                       ; preds = %if.end90
  %call104 = call ptr @DestroyImage(ptr noundef nonnull %call76) #10, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %call104, metadata !1977, metadata !DIExpression()), !dbg !1989
  store ptr %call104, ptr %shear_image, align 8, !dbg !2112, !tbaa !2087
  br label %cleanup, !dbg !2113

if.end105:                                        ; preds = %if.end90
  %conv107 = fptrunc double %call30 to float, !dbg !2114
  %17 = load i64, ptr %rows, align 8, !dbg !2115, !tbaa !915
  %columns110 = getelementptr inbounds %struct._Image, ptr %call76, i64 0, i32 7, !dbg !2116
  %18 = load i64, ptr %columns110, align 8, !dbg !2116, !tbaa !824
  %sub112 = sub i64 %18, %add, !dbg !2117
  %div113 = sdiv i64 %sub112, 2, !dbg !2118
  %call115 = call fastcc i32 @YShearImage(ptr noundef nonnull %call76, float noundef %conv107, i64 noundef %add, i64 noundef %17, i64 noundef %div113, i64 noundef %conv71, ptr noundef %exception), !dbg !2119
  call void @llvm.dbg.value(metadata i32 %call115, metadata !1978, metadata !DIExpression()), !dbg !1989
  %cmp116 = icmp eq i32 %call115, 0, !dbg !2120
  br i1 %cmp116, label %if.then118, label %if.end120, !dbg !2122

if.then118:                                       ; preds = %if.end105
  call void @llvm.dbg.value(metadata ptr %call76, metadata !1977, metadata !DIExpression()), !dbg !1989
  %call119 = call ptr @DestroyImage(ptr noundef nonnull %call76) #10, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %call119, metadata !1977, metadata !DIExpression()), !dbg !1989
  store ptr %call119, ptr %shear_image, align 8, !dbg !2125, !tbaa !2087
  br label %cleanup, !dbg !2126

if.end120:                                        ; preds = %if.end105
  %19 = load i64, ptr %columns, align 8, !dbg !2127, !tbaa !824
  %conv126 = uitofp i64 %19 to float, !dbg !2128
  %20 = load i64, ptr %rows, align 8, !dbg !2129, !tbaa !915
  %conv128 = uitofp i64 %20 to float, !dbg !2130
  call void @llvm.dbg.value(metadata ptr %shear_image, metadata !1977, metadata !DIExpression(DW_OP_deref)), !dbg !1989
  %call129 = call fastcc i32 @CropToFitImage(ptr noundef nonnull %shear_image, float noundef %conv92, float noundef %conv107, float noundef %conv126, float noundef %conv128, i32 noundef 0, ptr noundef %exception), !dbg !2131
  call void @llvm.dbg.value(metadata i32 %call129, metadata !1978, metadata !DIExpression()), !dbg !1989
  %compose130 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 36, !dbg !2132
  %21 = load i32, ptr %compose130, align 8, !dbg !2132, !tbaa !2081
  %22 = load ptr, ptr %shear_image, align 8, !dbg !2133, !tbaa !2087
  call void @llvm.dbg.value(metadata ptr %22, metadata !1977, metadata !DIExpression()), !dbg !1989
  %compose131 = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 36, !dbg !2134
  store i32 %21, ptr %compose131, align 8, !dbg !2135, !tbaa !2081
  call void @llvm.dbg.value(metadata ptr %22, metadata !1977, metadata !DIExpression()), !dbg !1989
  %page = getelementptr inbounds %struct._Image, ptr %22, i64 0, i32 26, !dbg !2136
  call void @llvm.dbg.value(metadata ptr %22, metadata !1977, metadata !DIExpression()), !dbg !1989
  %cmp135 = icmp eq i32 %call129, 0, !dbg !2137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %page, i8 0, i64 16, i1 false), !dbg !2139
  br i1 %cmp135, label %if.then137, label %cleanup, !dbg !2140

if.then137:                                       ; preds = %if.end120
  call void @llvm.dbg.value(metadata ptr %22, metadata !1977, metadata !DIExpression()), !dbg !1989
  %call138 = call ptr @DestroyImage(ptr noundef nonnull %22) #10, !dbg !2141
  call void @llvm.dbg.value(metadata ptr %call138, metadata !1977, metadata !DIExpression()), !dbg !1989
  store ptr %call138, ptr %shear_image, align 8, !dbg !2142, !tbaa !2087
  br label %cleanup, !dbg !2143

cleanup:                                          ; preds = %if.end120, %if.then137, %if.end24, %if.then118, %if.then103, %if.then80, %if.then40, %if.then20, %if.then13, %if.then4
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %if.then13 ], [ null, %if.then20 ], [ %call42, %if.then40 ], [ null, %if.then80 ], [ null, %if.then103 ], [ null, %if.then118 ], [ %call18, %if.end24 ], [ %call138, %if.then137 ], [ %22, %if.end120 ], !dbg !1989
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %border_info) #10, !dbg !2144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shear_image) #10, !dbg !2144
  ret ptr %retval.0, !dbg !2144
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @tan(double noundef) local_unnamed_addr #5

declare !dbg !2145 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2149 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2154 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

declare !dbg !2160 ptr @BorderImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @XShearImage(ptr noundef %image, float noundef %degrees, i64 noundef %width, i64 noundef %height, i64 noundef %x_offset, i64 noundef %y_offset, ptr noundef %exception) unnamed_addr #0 !dbg !443 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %background = alloca %struct._MagickPixelPacket, align 8
  %source = alloca %struct._MagickPixelPacket, align 8
  %destination = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !675, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata float %degrees, metadata !676, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %width, metadata !677, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %height, metadata !678, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !679, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !680, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %exception, metadata !681, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %background) #10, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %background, metadata !688, metadata !DIExpression()), !dbg !2164
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2165
  %0 = load i32, ptr %debug, align 8, !dbg !2165, !tbaa !1133
  %cmp.not = icmp eq i32 %0, 0, !dbg !2167
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2168

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2169
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #10, !dbg !2170
  br label %if.end, !dbg !2171

if.end:                                           ; preds = %if.then, %entry
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %background) #10, !dbg !2172
  %background_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !2173
  %1 = getelementptr i8, ptr %image, i64 4, !dbg !2174
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata ptr %background_color, metadata !2182, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata ptr null, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata ptr %background, metadata !2184, metadata !DIExpression()), !dbg !2185
  %red.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 2, !dbg !2187
  %2 = load i16, ptr %red.i, align 2, !dbg !2187, !tbaa !981
  %conv.i = uitofp i16 %2 to float, !dbg !2188
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 5, !dbg !2189
  store float %conv.i, ptr %red1.i, align 8, !dbg !2190, !tbaa !1251
  %green.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 1, !dbg !2191
  %3 = load i16, ptr %green.i, align 2, !dbg !2191, !tbaa !986
  %conv2.i = uitofp i16 %3 to float, !dbg !2192
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 6, !dbg !2193
  store float %conv2.i, ptr %green3.i, align 4, !dbg !2194, !tbaa !1254
  %4 = load i16, ptr %background_color, align 2, !dbg !2195, !tbaa !991
  %conv4.i = uitofp i16 %4 to float, !dbg !2196
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 7, !dbg !2197
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !2198, !tbaa !1255
  %opacity.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 3, !dbg !2199
  %5 = load i16, ptr %opacity.i, align 2, !dbg !2199, !tbaa !1268
  %conv6.i = uitofp i16 %5 to float, !dbg !2200
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 8, !dbg !2201
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !2202, !tbaa !1256
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2203
  %6 = load i32, ptr %colorspace, align 4, !dbg !2203, !tbaa !2205
  %cmp1 = icmp eq i32 %6, 12, !dbg !2206
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2207

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %background, metadata !2208, metadata !DIExpression()) #10, !dbg !2221
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 1, !dbg !2223
  %7 = load i32, ptr %colorspace.i, align 4, !dbg !2223, !tbaa !2225
  %cmp.not.i = icmp eq i32 %7, 13, !dbg !2226
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !dbg !2227

if.then.i:                                        ; preds = %if.then2
  %conv.i260 = uitofp i16 %2 to double, !dbg !2228
  %mul.i = fmul double %conv.i260, 0x3EF0001000100010, !dbg !2230
  %conv2.i261 = fptrunc double %mul.i to float, !dbg !2231
  call void @llvm.dbg.value(metadata float %conv2.i261, metadata !2219, metadata !DIExpression()) #10, !dbg !2221
  %conv4.i263 = uitofp i16 %3 to double, !dbg !2232
  %mul5.i = fmul double %conv4.i263, 0x3EF0001000100010, !dbg !2233
  %conv6.i264 = fptrunc double %mul5.i to float, !dbg !2234
  call void @llvm.dbg.value(metadata float %conv6.i264, metadata !2217, metadata !DIExpression()) #10, !dbg !2221
  %conv8.i = uitofp i16 %4 to double, !dbg !2235
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !2236
  %conv10.i = fptrunc double %mul9.i to float, !dbg !2237
  call void @llvm.dbg.value(metadata float %conv10.i, metadata !2215, metadata !DIExpression()) #10, !dbg !2221
  br label %if.end.i, !dbg !2238

if.else.i:                                        ; preds = %if.then2
  %call.i = call float @DecodePixelGamma(float noundef %conv.i) #12, !dbg !2239
  call void @llvm.dbg.value(metadata float %call.i, metadata !2219, metadata !DIExpression()) #10, !dbg !2221
  %8 = load float, ptr %green3.i, align 4, !dbg !2241, !tbaa !1254
  %call13.i = call float @DecodePixelGamma(float noundef %8) #12, !dbg !2242
  call void @llvm.dbg.value(metadata float %call13.i, metadata !2217, metadata !DIExpression()) #10, !dbg !2221
  %9 = load float, ptr %blue5.i, align 8, !dbg !2243, !tbaa !1255
  %call15.i = call float @DecodePixelGamma(float noundef %9) #12, !dbg !2244
  call void @llvm.dbg.value(metadata float %call15.i, metadata !2215, metadata !DIExpression()) #10, !dbg !2221
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blue.0.i = phi float [ %conv10.i, %if.then.i ], [ %call15.i, %if.else.i ], !dbg !2245
  %green.0.i = phi float [ %conv6.i264, %if.then.i ], [ %call13.i, %if.else.i ], !dbg !2245
  %red.0.i = phi float [ %conv2.i261, %if.then.i ], [ %call.i, %if.else.i ], !dbg !2245
  call void @llvm.dbg.value(metadata float %red.0.i, metadata !2219, metadata !DIExpression()) #10, !dbg !2221
  call void @llvm.dbg.value(metadata float %green.0.i, metadata !2217, metadata !DIExpression()) #10, !dbg !2221
  call void @llvm.dbg.value(metadata float %blue.0.i, metadata !2215, metadata !DIExpression()) #10, !dbg !2221
  %10 = call float @llvm.fabs.f32(float %red.0.i) #10, !dbg !2246
  %11 = fpext float %10 to double, !dbg !2246
  %cmp17.i = fcmp olt double %11, 1.000000e-15, !dbg !2248
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end27.i, !dbg !2249

land.lhs.true.i:                                  ; preds = %if.end.i
  %12 = call float @llvm.fabs.f32(float %green.0.i) #10, !dbg !2250
  %13 = fpext float %12 to double, !dbg !2250
  %cmp20.i = fcmp olt double %13, 1.000000e-15, !dbg !2251
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end27.i, !dbg !2252

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %14 = call float @llvm.fabs.f32(float %blue.0.i) #10, !dbg !2253
  %15 = fpext float %14 to double, !dbg !2253
  %cmp24.i = fcmp olt double %15, 1.000000e-15, !dbg !2254
  br i1 %cmp24.i, label %ConvertRGBToCMYK.exit, label %if.end27.i, !dbg !2255

if.end27.i:                                       ; preds = %land.lhs.true22.i, %land.lhs.true.i, %if.end.i
  %conv29.i = fsub float 1.000000e+00, %red.0.i, !dbg !2256
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !2216, metadata !DIExpression()) #10, !dbg !2221
  %conv32.i = fsub float 1.000000e+00, %green.0.i, !dbg !2257
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !2218, metadata !DIExpression()) #10, !dbg !2221
  %conv35.i = fsub float 1.000000e+00, %blue.0.i, !dbg !2258
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !2220, metadata !DIExpression()) #10, !dbg !2221
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !2214, metadata !DIExpression()) #10, !dbg !2221
  %cmp36.i = fcmp olt float %conv32.i, %conv29.i, !dbg !2259
  br i1 %cmp36.i, label %if.then38.i, label %if.end39.i, !dbg !2261

if.then38.i:                                      ; preds = %if.end27.i
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !2214, metadata !DIExpression()) #10, !dbg !2221
  br label %if.end39.i, !dbg !2262

if.end39.i:                                       ; preds = %if.then38.i, %if.end27.i
  %black.0.i = phi float [ %conv32.i, %if.then38.i ], [ %conv29.i, %if.end27.i ], !dbg !2221
  call void @llvm.dbg.value(metadata float %black.0.i, metadata !2214, metadata !DIExpression()) #10, !dbg !2221
  %cmp40.i = fcmp olt float %conv35.i, %black.0.i, !dbg !2263
  br i1 %cmp40.i, label %if.then42.i, label %if.end43.i, !dbg !2265

if.then42.i:                                      ; preds = %if.end39.i
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !2214, metadata !DIExpression()) #10, !dbg !2221
  br label %if.end43.i, !dbg !2266

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i
  %black.1.i = phi float [ %conv35.i, %if.then42.i ], [ %black.0.i, %if.end39.i ], !dbg !2221
  call void @llvm.dbg.value(metadata float %black.1.i, metadata !2214, metadata !DIExpression()) #10, !dbg !2221
  %sub44.i = fsub float %conv29.i, %black.1.i, !dbg !2267
  %conv45.i = fpext float %sub44.i to double, !dbg !2268
  %conv46.i = fpext float %black.1.i to double, !dbg !2269
  %sub47.i = fsub double 1.000000e+00, %conv46.i, !dbg !2270
  %div.i = fdiv double %conv45.i, %sub47.i, !dbg !2271
  %conv48.i = fptrunc double %div.i to float, !dbg !2272
  call void @llvm.dbg.value(metadata float %conv48.i, metadata !2216, metadata !DIExpression()) #10, !dbg !2221
  %sub49.i = fsub float %conv32.i, %black.1.i, !dbg !2273
  %conv50.i = fpext float %sub49.i to double, !dbg !2274
  %div53.i = fdiv double %conv50.i, %sub47.i, !dbg !2275
  %conv54.i = fptrunc double %div53.i to float, !dbg !2276
  call void @llvm.dbg.value(metadata float %conv54.i, metadata !2218, metadata !DIExpression()) #10, !dbg !2221
  %sub55.i = fsub float %conv35.i, %black.1.i, !dbg !2277
  %conv56.i = fpext float %sub55.i to double, !dbg !2278
  %div59.i = fdiv double %conv56.i, %sub47.i, !dbg !2279
  %conv60.i = fptrunc double %div59.i to float, !dbg !2280
  call void @llvm.dbg.value(metadata float %conv60.i, metadata !2220, metadata !DIExpression()) #10, !dbg !2221
  store i32 12, ptr %colorspace.i, align 4, !dbg !2281, !tbaa !2225
  %mul62.i = fmul float %conv48.i, 6.553500e+04, !dbg !2282
  store float %mul62.i, ptr %red1.i, align 8, !dbg !2283, !tbaa !1251
  %mul64.i = fmul float %conv54.i, 6.553500e+04, !dbg !2284
  store float %mul64.i, ptr %green3.i, align 4, !dbg !2285, !tbaa !1254
  %mul66.i = fmul float %conv60.i, 6.553500e+04, !dbg !2286
  store float %mul66.i, ptr %blue5.i, align 8, !dbg !2287, !tbaa !1255
  %mul68.i = fmul float %black.1.i, 6.553500e+04, !dbg !2288
  br label %ConvertRGBToCMYK.exit, !dbg !2289

ConvertRGBToCMYK.exit:                            ; preds = %land.lhs.true22.i, %if.end43.i
  %mul68.sink.i = phi float [ %mul68.i, %if.end43.i ], [ 6.553500e+04, %land.lhs.true22.i ]
  %index69.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 9, !dbg !2221
  store float %mul68.sink.i, ptr %index69.i, align 8, !dbg !2221, !tbaa !2290
  br label %if.end3, !dbg !2291

if.end3:                                          ; preds = %ConvertRGBToCMYK.exit, %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !686, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 0, metadata !687, metadata !DIExpression()), !dbg !2162
  %call4 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef %exception) #10, !dbg !2292
  call void @llvm.dbg.value(metadata ptr %call4, metadata !682, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 0, metadata !702, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 1, metadata !686, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 0, metadata !687, metadata !DIExpression()), !dbg !2162
  %cmp5918 = icmp sgt i64 %height, 0, !dbg !2293
  br i1 %cmp5918, label %for.body.lr.ph, label %for.end143, !dbg !2294

for.body.lr.ph:                                   ; preds = %if.end3
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %conv15 = uitofp i64 %height to double
  %div = fmul double %conv15, 5.000000e-01
  %pixel.sroa.3.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 32
  %pixel.sroa.10.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 36
  %pixel.sroa.17.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 40
  %pixel.sroa.24.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 44
  %pixel.sroa.31.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 48
  %cmp42859 = icmp sgt i64 %width, 0
  %red1.i280 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 5
  %green3.i283 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 6
  %blue5.i285 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 7
  %opacity7.i288 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 8
  %index15.i291 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 9
  %opacity.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 8
  %red13.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 5
  %green20.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 6
  %blue27.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 7
  %colorspace.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 1
  %index35.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 9
  %colorspace.i.i384 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 1
  %index30.i.i388 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 9
  %add87 = add i64 %x_offset, %width
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2294

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0921 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %y.0920 = phi i64 [ 0, %for.body.lr.ph ], [ %inc142, %cleanup ]
  %progress.0919 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0921, metadata !686, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %y.0920, metadata !702, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %progress.0919, metadata !687, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %source) #10, !dbg !2295
  call void @llvm.dbg.declare(metadata ptr %source, metadata !707, metadata !DIExpression()), !dbg !2296
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %destination) #10, !dbg !2295
  call void @llvm.dbg.declare(metadata ptr %destination, metadata !708, metadata !DIExpression()), !dbg !2297
  %cmp6 = icmp eq i32 %status.0921, 0, !dbg !2298
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !2300

if.end8:                                          ; preds = %for.body
  %add = add nsw i64 %y.0920, %y_offset, !dbg !2301
  %16 = load i64, ptr %columns, align 8, !dbg !2302, !tbaa !824
  %call9 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call4, i64 noundef 0, i64 noundef %add, i64 noundef %16, i64 noundef 1, ptr noundef %exception) #12, !dbg !2303
  call void @llvm.dbg.value(metadata ptr %call9, metadata !716, metadata !DIExpression()), !dbg !2304
  %cmp10 = icmp eq ptr %call9, null, !dbg !2305
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !2307

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call4) #10, !dbg !2308
  call void @llvm.dbg.value(metadata ptr %call13, metadata !711, metadata !DIExpression()), !dbg !2304
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call9, i64 %x_offset, !dbg !2309
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !716, metadata !DIExpression()), !dbg !2304
  %add.ptr14 = getelementptr inbounds i16, ptr %call13, i64 %x_offset, !dbg !2310
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !711, metadata !DIExpression()), !dbg !2304
  %conv = sitofp i64 %y.0920 to double, !dbg !2311
  %sub = fsub double %conv, %div, !dbg !2312
  %conv16 = fptrunc double %sub to float, !dbg !2313
  %mul = fmul float %conv16, %degrees, !dbg !2314
  call void @llvm.dbg.value(metadata float %mul, metadata !710, metadata !DIExpression()), !dbg !2304
  %cmp18 = fcmp oeq float %mul, 0.000000e+00, !dbg !2315
  br i1 %cmp18, label %cleanup, label %if.end21, !dbg !2317

if.end21:                                         ; preds = %if.end12
  %cmp23 = fcmp ogt float %mul, 0.000000e+00, !dbg !2318
  br i1 %cmp23, label %if.end29, label %if.else, !dbg !2320

if.else:                                          ; preds = %if.end21
  %conv28 = fneg float %mul, !dbg !2321
  call void @llvm.dbg.value(metadata float %conv28, metadata !710, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 0, metadata !720, metadata !DIExpression()), !dbg !2304
  br label %if.end29

if.end29:                                         ; preds = %if.end21, %if.else
  %displacement.0 = phi float [ %conv28, %if.else ], [ %mul, %if.end21 ], !dbg !2304
  call void @llvm.dbg.value(metadata i32 undef, metadata !720, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata float %displacement.0, metadata !710, metadata !DIExpression()), !dbg !2304
  %17 = call float @llvm.floor.f32(float %displacement.0), !dbg !2323
  %conv31 = fptosi float %17 to i64, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %conv31, metadata !722, metadata !DIExpression()), !dbg !2304
  %conv32 = sitofp i64 %conv31 to float, !dbg !2325
  %sub33 = fsub float %displacement.0, %conv32, !dbg !2326
  call void @llvm.dbg.value(metadata float %sub33, metadata !709, metadata !DIExpression()), !dbg !2304
  %inc = add nsw i64 %conv31, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %inc, metadata !722, metadata !DIExpression()), !dbg !2304
  %pixel.sroa.3.0.copyload = load float, ptr %pixel.sroa.3.0.background.sroa_idx, align 8, !dbg !2328, !tbaa.struct !2329
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  %pixel.sroa.10.0.copyload = load float, ptr %pixel.sroa.10.0.background.sroa_idx, align 4, !dbg !2328, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  %pixel.sroa.17.0.copyload = load float, ptr %pixel.sroa.17.0.background.sroa_idx, align 8, !dbg !2328, !tbaa.struct !2332
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  %pixel.sroa.24.0.copyload = load float, ptr %pixel.sroa.24.0.background.sroa_idx, align 4, !dbg !2328, !tbaa.struct !2333
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  %pixel.sroa.31.0.copyload = load float, ptr %pixel.sroa.31.0.background.sroa_idx, align 8, !dbg !2328, !tbaa.struct !2334
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata i32 undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !2304
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %source) #10, !dbg !2335
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %destination) #10, !dbg !2336
  br i1 %cmp23, label %sw.bb74, label %sw.bb, !dbg !2337

sw.bb:                                            ; preds = %if.end29
  %cmp34.not = icmp slt i64 %conv31, %x_offset, !dbg !2338
  br i1 %cmp34.not, label %if.end37, label %sw.epilog, !dbg !2342

if.end37:                                         ; preds = %sw.bb
  %idx.neg = xor i64 %conv31, -1, !dbg !2343
  %add.ptr38 = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr, i64 %idx.neg, !dbg !2343
  call void @llvm.dbg.value(metadata ptr %add.ptr38, metadata !718, metadata !DIExpression()), !dbg !2304
  %add.ptr40 = getelementptr inbounds i16, ptr %add.ptr14, i64 %idx.neg, !dbg !2344
  call void @llvm.dbg.value(metadata ptr %add.ptr40, metadata !715, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 0, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %add.ptr38, metadata !718, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !716, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !711, metadata !DIExpression()), !dbg !2304
  %conv.i295 = fpext float %sub33 to double
  %sub.i = fsub double 1.000000e+00, %conv.i295
  %neg.i = fneg double %sub.i
  %neg5.i = fneg float %sub33
  br i1 %cmp42859, label %for.body44.lr.ph, label %for.end, !dbg !2345

for.body44.lr.ph:                                 ; preds = %if.end37
  %18 = load i32, ptr %colorspace.i.i, align 4
  %cmp.i.i = icmp eq i32 %18, 12
  %index15.i291.promoted = load float, ptr %index15.i291, align 8, !tbaa !2290
  %index35.i.i.promoted = load float, ptr %index35.i.i, align 8, !tbaa !2290
  br label %for.body44, !dbg !2345

for.body44:                                       ; preds = %for.body44.lr.ph, %for.inc
  %conv34.i.i883 = phi float [ %index35.i.i.promoted, %for.body44.lr.ph ], [ %conv34.i.i884, %for.inc ]
  %conv14.i290880 = phi float [ %index15.i291.promoted, %for.body44.lr.ph ], [ %conv14.i290881, %for.inc ]
  %i.0873 = phi i64 [ 0, %for.body44.lr.ph ], [ %inc59, %for.inc ]
  %q.0871 = phi ptr [ %add.ptr38, %for.body44.lr.ph ], [ %q.1, %for.inc ]
  %p.0870 = phi ptr [ %add.ptr, %for.body44.lr.ph ], [ %p.1, %for.inc ]
  %shear_indexes.0866 = phi ptr [ %add.ptr40, %for.body44.lr.ph ], [ %shear_indexes.1, %for.inc ]
  %indexes.0865 = phi ptr [ %add.ptr14, %for.body44.lr.ph ], [ %indexes.1, %for.inc ]
  %pixel.sroa.3.0864 = phi float [ %pixel.sroa.3.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.3.1, %for.inc ]
  %pixel.sroa.10.0863 = phi float [ %pixel.sroa.10.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.10.1, %for.inc ]
  %pixel.sroa.17.0862 = phi float [ %pixel.sroa.17.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.17.1, %for.inc ]
  %pixel.sroa.24.0861 = phi float [ %pixel.sroa.24.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.24.1, %for.inc ]
  %pixel.sroa.31.0860 = phi float [ %pixel.sroa.31.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.31.3, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.0873, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %q.0871, metadata !718, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %p.0870, metadata !716, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0866, metadata !715, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %indexes.0865, metadata !711, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.0864, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.0863, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.0862, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0861, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.0860, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  %add45 = add nsw i64 %i.0873, %x_offset, !dbg !2347
  %cmp46.not = icmp sgt i64 %add45, %conv31, !dbg !2351
  br i1 %cmp46.not, label %if.end52, label %if.then48, !dbg !2352

if.then48:                                        ; preds = %for.body44
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 1, !dbg !2353
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !716, metadata !DIExpression()), !dbg !2304
  %incdec.ptr49 = getelementptr inbounds i16, ptr %indexes.0865, i64 1, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %incdec.ptr49, metadata !711, metadata !DIExpression()), !dbg !2304
  %image.val258 = load i32, ptr %1, align 4, !dbg !2356, !tbaa !2205
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2182, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %incdec.ptr49, metadata !2183, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr undef, metadata !2184, metadata !DIExpression()), !dbg !2357
  %red.i265 = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 1, i32 2, !dbg !2359
  %19 = load i16, ptr %red.i265, align 2, !dbg !2359, !tbaa !981
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  %green.i268 = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 1, i32 1, !dbg !2360
  %20 = load i16, ptr %green.i268, align 2, !dbg !2360, !tbaa !986
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  %21 = load i16, ptr %incdec.ptr, align 2, !dbg !2361, !tbaa !991
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  %opacity.i273 = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 1, i32 3, !dbg !2362
  %22 = load i16, ptr %opacity.i273, align 2, !dbg !2362, !tbaa !1268
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  %cmp.i276 = icmp eq i32 %image.val258, 12, !dbg !2363
  br i1 %cmp.i276, label %cond.end.i, label %for.inc, !dbg !2365

cond.end.i:                                       ; preds = %if.then48
  %23 = load i16, ptr %incdec.ptr49, align 2, !dbg !2366, !tbaa !950
  %conv14.i = uitofp i16 %23 to float, !dbg !2367
  call void @llvm.dbg.value(metadata float %conv14.i, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  br label %for.inc, !dbg !2368

if.end52:                                         ; preds = %for.body44
  %image.val257 = load i32, ptr %1, align 4, !dbg !2369, !tbaa !2205
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr %p.0870, metadata !2182, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr %indexes.0865, metadata !2183, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr %source, metadata !2184, metadata !DIExpression()), !dbg !2370
  %red.i278 = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 0, i32 2, !dbg !2372
  %24 = load i16, ptr %red.i278, align 2, !dbg !2372, !tbaa !981
  %conv.i279 = uitofp i16 %24 to float, !dbg !2373
  store float %conv.i279, ptr %red1.i280, align 8, !dbg !2374, !tbaa !1251
  %green.i281 = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 0, i32 1, !dbg !2375
  %25 = load i16, ptr %green.i281, align 2, !dbg !2375, !tbaa !986
  %conv2.i282 = uitofp i16 %25 to float, !dbg !2376
  store float %conv2.i282, ptr %green3.i283, align 4, !dbg !2377, !tbaa !1254
  %26 = load i16, ptr %p.0870, align 2, !dbg !2378, !tbaa !991
  %conv4.i284 = uitofp i16 %26 to float, !dbg !2379
  store float %conv4.i284, ptr %blue5.i285, align 8, !dbg !2380, !tbaa !1255
  %opacity.i286 = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 0, i32 3, !dbg !2381
  %27 = load i16, ptr %opacity.i286, align 2, !dbg !2381, !tbaa !1268
  %conv6.i287 = uitofp i16 %27 to float, !dbg !2382
  store float %conv6.i287, ptr %opacity7.i288, align 4, !dbg !2383, !tbaa !1256
  %cmp.i289 = icmp eq i32 %image.val257, 12, !dbg !2384
  %cmp9.i = icmp ne ptr %indexes.0865, null
  %or.cond.i = and i1 %cmp9.i, %cmp.i289, !dbg !2385
  br i1 %or.cond.i, label %cond.end.i292, label %SetMagickPixelPacket.exit294, !dbg !2385

cond.end.i292:                                    ; preds = %if.end52
  %28 = load i16, ptr %indexes.0865, align 2, !dbg !2386, !tbaa !950
  %conv14.i290 = uitofp i16 %28 to float, !dbg !2387
  store float %conv14.i290, ptr %index15.i291, align 8, !dbg !2388, !tbaa !2290
  br label %SetMagickPixelPacket.exit294, !dbg !2389

SetMagickPixelPacket.exit294:                     ; preds = %if.end52, %cond.end.i292
  %conv14.i290882 = phi float [ %conv14.i290880, %if.end52 ], [ %conv14.i290, %cond.end.i292 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !2390, metadata !DIExpression()) #10, !dbg !2403
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0861, metadata !2398, metadata !DIExpression()) #10, !dbg !2403
  call void @llvm.dbg.value(metadata ptr %source, metadata !2399, metadata !DIExpression()) #10, !dbg !2403
  call void @llvm.dbg.value(metadata float %conv6.i287, metadata !2400, metadata !DIExpression()) #10, !dbg !2403
  call void @llvm.dbg.value(metadata float %sub33, metadata !2401, metadata !DIExpression()) #10, !dbg !2403
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2402, metadata !DIExpression()) #10, !dbg !2403
  %sub1.i = fsub float 6.553500e+04, %pixel.sroa.24.0861, !dbg !2405
  %conv2.i296 = fpext float %sub1.i to double, !dbg !2406
  %29 = call double @llvm.fmuladd.f64(double %neg.i, double %conv2.i296, double 6.553500e+04) #10, !dbg !2407
  %conv3.i = fptrunc double %29 to float, !dbg !2408
  %sub4.i = fsub float 6.553500e+04, %conv6.i287, !dbg !2409
  %30 = call float @llvm.fmuladd.f32(float %neg5.i, float %sub4.i, float 6.553500e+04) #10, !dbg !2410
  call void @llvm.dbg.value(metadata ptr undef, metadata !2411, metadata !DIExpression()) #10, !dbg !2423
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !2416, metadata !DIExpression()) #10, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %source, metadata !2417, metadata !DIExpression()) #10, !dbg !2423
  call void @llvm.dbg.value(metadata float %30, metadata !2418, metadata !DIExpression()) #10, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2419, metadata !DIExpression()) #10, !dbg !2423
  %conv.i.i = fpext float %conv3.i to double, !dbg !2425
  %31 = call double @llvm.fmuladd.f64(double %conv.i.i, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !2426
  %conv1.i.i = fptrunc double %31 to float, !dbg !2427
  call void @llvm.dbg.value(metadata float %conv1.i.i, metadata !2422, metadata !DIExpression()) #10, !dbg !2423
  %conv2.i.i = fpext float %30 to double, !dbg !2428
  %32 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !2429
  %conv3.i.i = fptrunc double %32 to float, !dbg !2430
  call void @llvm.dbg.value(metadata float %conv3.i.i, metadata !2421, metadata !DIExpression()) #10, !dbg !2423
  %add.i.i = fadd float %conv1.i.i, %conv3.i.i, !dbg !2431
  call void @llvm.dbg.value(metadata float %add.i.i, metadata !2432, metadata !DIExpression()) #10, !dbg !2435
  %cmp.i.i.i = fcmp olt float %add.i.i, 0.000000e+00, !dbg !2437
  br i1 %cmp.i.i.i, label %RoundToUnity.exit.i.i, label %cond.false.i.i.i, !dbg !2438

cond.false.i.i.i:                                 ; preds = %SetMagickPixelPacket.exit294
  %cmp3.i.i.i = fcmp ogt float %add.i.i, 1.000000e+00, !dbg !2439
  br i1 %cmp3.i.i.i, label %RoundToUnity.exit.i.i, label %cond.false6.i.i.i, !dbg !2440

cond.false6.i.i.i:                                ; preds = %cond.false.i.i.i
  %phi.cast.i.i = fpext float %add.i.i to double, !dbg !2440
  br label %RoundToUnity.exit.i.i, !dbg !2440

RoundToUnity.exit.i.i:                            ; preds = %cond.false6.i.i.i, %cond.false.i.i.i, %SetMagickPixelPacket.exit294
  %cond9.i.i.i = phi double [ 0.000000e+00, %SetMagickPixelPacket.exit294 ], [ %phi.cast.i.i, %cond.false6.i.i.i ], [ 1.000000e+00, %cond.false.i.i.i ]
  call void @llvm.dbg.value(metadata double %cond9.i.i.i, metadata !2420, metadata !DIExpression()) #10, !dbg !2423
  %sub.i.i = fsub double 1.000000e+00, %cond9.i.i.i, !dbg !2441
  %mul.i.i = fmul double %sub.i.i, 6.553500e+04, !dbg !2442
  %conv5.i.i = fptrunc double %mul.i.i to float, !dbg !2443
  store float %conv5.i.i, ptr %opacity.i.i, align 4, !dbg !2444, !tbaa !1256
  call void @llvm.dbg.value(metadata double %cond9.i.i.i, metadata !2445, metadata !DIExpression()) #10, !dbg !2449
  %cmp.i60.i.i = fcmp olt double %cond9.i.i.i, 0.000000e+00, !dbg !2451
  %cond.i.i.i = select i1 %cmp.i60.i.i, double -1.000000e+00, double 1.000000e+00, !dbg !2452
  call void @llvm.dbg.value(metadata double %cond.i.i.i, metadata !2448, metadata !DIExpression()) #10, !dbg !2449
  %mul.i.i.i = fmul double %cond9.i.i.i, %cond.i.i.i, !dbg !2453
  %cmp1.i.i.i = fcmp ult double %mul.i.i.i, 1.000000e-15, !dbg !2455
  br i1 %cmp1.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !dbg !2456

if.then.i.i.i:                                    ; preds = %RoundToUnity.exit.i.i
  %div.i.i.i = fdiv double 1.000000e+00, %cond9.i.i.i, !dbg !2457
  br label %PerceptibleReciprocal.exit.i.i, !dbg !2458

if.end.i.i.i:                                     ; preds = %RoundToUnity.exit.i.i
  %div2.i.i.i = fdiv double %cond.i.i.i, 1.000000e-15, !dbg !2459
  br label %PerceptibleReciprocal.exit.i.i, !dbg !2460

PerceptibleReciprocal.exit.i.i:                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi double [ %div.i.i.i, %if.then.i.i.i ], [ %div2.i.i.i, %if.end.i.i.i ], !dbg !2449
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i, metadata !2420, metadata !DIExpression()) #10, !dbg !2423
  %mul9.i.i = fmul float %conv.i279, %conv3.i.i, !dbg !2461
  %33 = call float @llvm.fmuladd.f32(float %conv1.i.i, float %pixel.sroa.3.0864, float %mul9.i.i) #10, !dbg !2462
  %conv10.i.i = fpext float %33 to double, !dbg !2463
  %mul11.i.i = fmul double %retval.0.i.i.i, %conv10.i.i, !dbg !2464
  %conv12.i.i = fptrunc double %mul11.i.i to float, !dbg !2465
  store float %conv12.i.i, ptr %red13.i.i, align 8, !dbg !2466, !tbaa !1251
  %mul16.i.i = fmul float %conv2.i282, %conv3.i.i, !dbg !2467
  %34 = call float @llvm.fmuladd.f32(float %conv1.i.i, float %pixel.sroa.10.0863, float %mul16.i.i) #10, !dbg !2468
  %conv17.i.i = fpext float %34 to double, !dbg !2469
  %mul18.i.i = fmul double %retval.0.i.i.i, %conv17.i.i, !dbg !2470
  %conv19.i.i = fptrunc double %mul18.i.i to float, !dbg !2471
  store float %conv19.i.i, ptr %green20.i.i, align 4, !dbg !2472, !tbaa !1254
  %mul23.i.i = fmul float %conv4.i284, %conv3.i.i, !dbg !2473
  %35 = call float @llvm.fmuladd.f32(float %conv1.i.i, float %pixel.sroa.17.0862, float %mul23.i.i) #10, !dbg !2474
  %conv24.i.i = fpext float %35 to double, !dbg !2475
  %mul25.i.i = fmul double %retval.0.i.i.i, %conv24.i.i, !dbg !2476
  %conv26.i.i = fptrunc double %mul25.i.i to float, !dbg !2477
  store float %conv26.i.i, ptr %blue27.i.i, align 8, !dbg !2478, !tbaa !1255
  br i1 %cmp.i.i, label %if.then.i.i, label %MagickPixelCompositeAreaBlend.exit, !dbg !2479

if.then.i.i:                                      ; preds = %PerceptibleReciprocal.exit.i.i
  %mul31.i.i = fmul float %conv14.i290882, %conv3.i.i, !dbg !2480
  %36 = call float @llvm.fmuladd.f32(float %conv1.i.i, float %pixel.sroa.31.0860, float %mul31.i.i) #10, !dbg !2482
  %conv32.i.i = fpext float %36 to double, !dbg !2483
  %mul33.i.i = fmul double %retval.0.i.i.i, %conv32.i.i, !dbg !2484
  %conv34.i.i = fptrunc double %mul33.i.i to float, !dbg !2485
  store float %conv34.i.i, ptr %index35.i.i, align 8, !dbg !2486, !tbaa !2290
  br label %MagickPixelCompositeAreaBlend.exit, !dbg !2487

MagickPixelCompositeAreaBlend.exit:               ; preds = %PerceptibleReciprocal.exit.i.i, %if.then.i.i
  %conv34.i.i885 = phi float [ %conv34.i.i883, %PerceptibleReciprocal.exit.i.i ], [ %conv34.i.i, %if.then.i.i ]
  call void @llvm.dbg.value(metadata ptr %q.0871, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0866, metadata !715, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata ptr %q.0871, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0866, metadata !2495, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata float %conv12.i.i, metadata !1284, metadata !DIExpression()), !dbg !2498
  %cmp.i.i298 = fcmp ugt float %conv12.i.i, 0.000000e+00, !dbg !2500
  br i1 %cmp.i.i298, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !2501

if.end.i.i:                                       ; preds = %MagickPixelCompositeAreaBlend.exit
  %cmp1.i.i = fcmp ult float %conv12.i.i, 6.553500e+04, !dbg !2502
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !2503

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i299 = fadd float %conv12.i.i, 5.000000e-01, !dbg !2504
  %conv.i.i300 = fptoui float %add.i.i299 to i16, !dbg !2505
  br label %ClampToQuantum.exit.i, !dbg !2506

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %MagickPixelCompositeAreaBlend.exit
  %retval.0.i.i = phi i16 [ %conv.i.i300, %if.end3.i.i ], [ 0, %MagickPixelCompositeAreaBlend.exit ], [ -1, %if.end.i.i ], !dbg !2498
  %red1.i301 = getelementptr inbounds %struct._PixelPacket, ptr %q.0871, i64 0, i32 2, !dbg !2507
  store i16 %retval.0.i.i, ptr %red1.i301, align 2, !dbg !2507, !tbaa !981
  call void @llvm.dbg.value(metadata float %conv19.i.i, metadata !1284, metadata !DIExpression()), !dbg !2508
  %cmp.i23.i = fcmp ugt float %conv19.i.i, 0.000000e+00, !dbg !2510
  br i1 %cmp.i23.i, label %if.end.i25.i, label %ClampToQuantum.exit30.i, !dbg !2511

if.end.i25.i:                                     ; preds = %ClampToQuantum.exit.i
  %cmp1.i24.i = fcmp ult float %conv19.i.i, 6.553500e+04, !dbg !2512
  br i1 %cmp1.i24.i, label %if.end3.i28.i, label %ClampToQuantum.exit30.i, !dbg !2513

if.end3.i28.i:                                    ; preds = %if.end.i25.i
  %add.i26.i = fadd float %conv19.i.i, 5.000000e-01, !dbg !2514
  %conv.i27.i = fptoui float %add.i26.i to i16, !dbg !2515
  br label %ClampToQuantum.exit30.i, !dbg !2516

ClampToQuantum.exit30.i:                          ; preds = %if.end3.i28.i, %if.end.i25.i, %ClampToQuantum.exit.i
  %retval.0.i29.i = phi i16 [ %conv.i27.i, %if.end3.i28.i ], [ 0, %ClampToQuantum.exit.i ], [ -1, %if.end.i25.i ], !dbg !2508
  %green3.i303 = getelementptr inbounds %struct._PixelPacket, ptr %q.0871, i64 0, i32 1, !dbg !2517
  store i16 %retval.0.i29.i, ptr %green3.i303, align 2, !dbg !2517, !tbaa !986
  call void @llvm.dbg.value(metadata float %conv26.i.i, metadata !1284, metadata !DIExpression()), !dbg !2518
  %cmp.i31.i = fcmp ugt float %conv26.i.i, 0.000000e+00, !dbg !2520
  br i1 %cmp.i31.i, label %if.end.i33.i, label %ClampToQuantum.exit38.i, !dbg !2521

if.end.i33.i:                                     ; preds = %ClampToQuantum.exit30.i
  %cmp1.i32.i = fcmp ult float %conv26.i.i, 6.553500e+04, !dbg !2522
  br i1 %cmp1.i32.i, label %if.end3.i36.i, label %ClampToQuantum.exit38.i, !dbg !2523

if.end3.i36.i:                                    ; preds = %if.end.i33.i
  %add.i34.i = fadd float %conv26.i.i, 5.000000e-01, !dbg !2524
  %conv.i35.i = fptoui float %add.i34.i to i16, !dbg !2525
  br label %ClampToQuantum.exit38.i, !dbg !2526

ClampToQuantum.exit38.i:                          ; preds = %if.end3.i36.i, %if.end.i33.i, %ClampToQuantum.exit30.i
  %retval.0.i37.i = phi i16 [ %conv.i35.i, %if.end3.i36.i ], [ 0, %ClampToQuantum.exit30.i ], [ -1, %if.end.i33.i ], !dbg !2518
  store i16 %retval.0.i37.i, ptr %q.0871, align 2, !dbg !2527, !tbaa !991
  call void @llvm.dbg.value(metadata float %conv5.i.i, metadata !1284, metadata !DIExpression()), !dbg !2528
  %cmp.i39.i = fcmp ugt float %conv5.i.i, 0.000000e+00, !dbg !2530
  br i1 %cmp.i39.i, label %if.end.i41.i, label %ClampToQuantum.exit46.i, !dbg !2531

if.end.i41.i:                                     ; preds = %ClampToQuantum.exit38.i
  %cmp1.i40.i = fcmp ult float %conv5.i.i, 6.553500e+04, !dbg !2532
  br i1 %cmp1.i40.i, label %if.end3.i44.i, label %ClampToQuantum.exit46.i, !dbg !2533

if.end3.i44.i:                                    ; preds = %if.end.i41.i
  %add.i42.i = fadd float %conv5.i.i, 5.000000e-01, !dbg !2534
  %conv.i43.i = fptoui float %add.i42.i to i16, !dbg !2535
  br label %ClampToQuantum.exit46.i, !dbg !2536

ClampToQuantum.exit46.i:                          ; preds = %if.end3.i44.i, %if.end.i41.i, %ClampToQuantum.exit38.i
  %retval.0.i45.i = phi i16 [ %conv.i43.i, %if.end3.i44.i ], [ 0, %ClampToQuantum.exit38.i ], [ -1, %if.end.i41.i ], !dbg !2528
  %opacity7.i305 = getelementptr inbounds %struct._PixelPacket, ptr %q.0871, i64 0, i32 3, !dbg !2537
  store i16 %retval.0.i45.i, ptr %opacity7.i305, align 2, !dbg !2537, !tbaa !1268
  br i1 %cmp.i289, label %if.then.i310, label %lor.lhs.false.i, !dbg !2538

lor.lhs.false.i:                                  ; preds = %ClampToQuantum.exit46.i
  %37 = load i32, ptr %image, align 8, !dbg !2540, !tbaa !2541
  %cmp8.i = icmp eq i32 %37, 2, !dbg !2542
  %cmp9.i308 = icmp ne ptr %shear_indexes.0866, null
  %or.cond.i309 = and i1 %cmp9.i308, %cmp8.i, !dbg !2543
  br i1 %or.cond.i309, label %if.then10.i, label %SetPixelPacket.exit.thread, !dbg !2543

SetPixelPacket.exit.thread:                       ; preds = %lor.lhs.false.i
  %incdec.ptr57963 = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 1, !dbg !2544
  call void @llvm.dbg.value(metadata ptr %incdec.ptr57, metadata !716, metadata !DIExpression()), !dbg !2304
  %incdec.ptr58964 = getelementptr inbounds i16, ptr %indexes.0865, i64 1, !dbg !2545
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58, metadata !711, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %p.0870, metadata !2182, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %indexes.0865, metadata !2183, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr undef, metadata !2184, metadata !DIExpression()), !dbg !2546
  %38 = load i16, ptr %red.i278, align 2, !dbg !2548, !tbaa !981
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  %39 = load i16, ptr %green.i281, align 2, !dbg !2549, !tbaa !986
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  %40 = load i16, ptr %p.0870, align 2, !dbg !2550, !tbaa !991
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  %41 = load i16, ptr %opacity.i286, align 2, !dbg !2551, !tbaa !1268
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  br label %for.inc, !dbg !2552

if.then.i310:                                     ; preds = %ClampToQuantum.exit46.i
  %cmp9.old.not.i = icmp eq ptr %shear_indexes.0866, null, !dbg !2553
  br i1 %cmp9.old.not.i, label %SetPixelPacket.exit, label %if.then10.i, !dbg !2556

if.then10.i:                                      ; preds = %if.then.i310, %lor.lhs.false.i
  call void @llvm.dbg.value(metadata float %conv34.i.i885, metadata !1284, metadata !DIExpression()), !dbg !2557
  %cmp.i47.i = fcmp ugt float %conv34.i.i885, 0.000000e+00, !dbg !2559
  br i1 %cmp.i47.i, label %if.end.i49.i, label %ClampToQuantum.exit54.i, !dbg !2560

if.end.i49.i:                                     ; preds = %if.then10.i
  %cmp1.i48.i = fcmp ult float %conv34.i.i885, 6.553500e+04, !dbg !2561
  br i1 %cmp1.i48.i, label %if.end3.i52.i, label %ClampToQuantum.exit54.i, !dbg !2562

if.end3.i52.i:                                    ; preds = %if.end.i49.i
  %add.i50.i = fadd float %conv34.i.i885, 5.000000e-01, !dbg !2563
  %conv.i51.i = fptoui float %add.i50.i to i16, !dbg !2564
  br label %ClampToQuantum.exit54.i, !dbg !2565

ClampToQuantum.exit54.i:                          ; preds = %if.end3.i52.i, %if.end.i49.i, %if.then10.i
  %retval.0.i53.i = phi i16 [ %conv.i51.i, %if.end3.i52.i ], [ 0, %if.then10.i ], [ -1, %if.end.i49.i ], !dbg !2557
  store i16 %retval.0.i53.i, ptr %shear_indexes.0866, align 2, !dbg !2553, !tbaa !950
  br label %SetPixelPacket.exit, !dbg !2553

SetPixelPacket.exit:                              ; preds = %if.then.i310, %ClampToQuantum.exit54.i
  %incdec.ptr57 = getelementptr inbounds %struct._PixelPacket, ptr %p.0870, i64 1, !dbg !2544
  call void @llvm.dbg.value(metadata ptr %incdec.ptr57, metadata !716, metadata !DIExpression()), !dbg !2304
  %incdec.ptr58 = getelementptr inbounds i16, ptr %indexes.0865, i64 1, !dbg !2545
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58, metadata !711, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %p.0870, metadata !2182, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %indexes.0865, metadata !2183, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr undef, metadata !2184, metadata !DIExpression()), !dbg !2546
  %42 = load i16, ptr %red.i278, align 2, !dbg !2548, !tbaa !981
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  %43 = load i16, ptr %green.i281, align 2, !dbg !2549, !tbaa !986
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  %44 = load i16, ptr %p.0870, align 2, !dbg !2550, !tbaa !991
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  %45 = load i16, ptr %opacity.i286, align 2, !dbg !2551, !tbaa !1268
  call void @llvm.dbg.value(metadata float undef, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  br i1 %or.cond.i, label %cond.end.i327, label %for.inc, !dbg !2552

cond.end.i327:                                    ; preds = %SetPixelPacket.exit
  %46 = load i16, ptr %indexes.0865, align 2, !dbg !2566, !tbaa !950
  %conv14.i325 = uitofp i16 %46 to float, !dbg !2567
  call void @llvm.dbg.value(metadata float %conv14.i325, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  br label %for.inc, !dbg !2568

for.inc:                                          ; preds = %SetPixelPacket.exit.thread, %cond.end.i327, %SetPixelPacket.exit, %cond.end.i, %if.then48
  %conv34.i.i884 = phi float [ %conv34.i.i883, %cond.end.i ], [ %conv34.i.i883, %if.then48 ], [ %conv34.i.i885, %cond.end.i327 ], [ %conv34.i.i885, %SetPixelPacket.exit ], [ %conv34.i.i885, %SetPixelPacket.exit.thread ]
  %conv14.i290881 = phi float [ %conv14.i290880, %cond.end.i ], [ %conv14.i290880, %if.then48 ], [ %conv14.i290882, %cond.end.i327 ], [ %conv14.i290882, %SetPixelPacket.exit ], [ %conv14.i290882, %SetPixelPacket.exit.thread ]
  %pixel.sroa.31.3 = phi float [ %conv14.i, %cond.end.i ], [ %pixel.sroa.31.0860, %if.then48 ], [ %conv14.i325, %cond.end.i327 ], [ %pixel.sroa.31.0860, %SetPixelPacket.exit ], [ %pixel.sroa.31.0860, %SetPixelPacket.exit.thread ], !dbg !2569
  %pixel.sroa.24.1.in = phi i16 [ %22, %cond.end.i ], [ %22, %if.then48 ], [ %45, %cond.end.i327 ], [ %45, %SetPixelPacket.exit ], [ %41, %SetPixelPacket.exit.thread ]
  %pixel.sroa.17.1.in = phi i16 [ %21, %cond.end.i ], [ %21, %if.then48 ], [ %44, %cond.end.i327 ], [ %44, %SetPixelPacket.exit ], [ %40, %SetPixelPacket.exit.thread ]
  %pixel.sroa.10.1.in = phi i16 [ %20, %cond.end.i ], [ %20, %if.then48 ], [ %43, %cond.end.i327 ], [ %43, %SetPixelPacket.exit ], [ %39, %SetPixelPacket.exit.thread ]
  %pixel.sroa.3.1.in = phi i16 [ %19, %cond.end.i ], [ %19, %if.then48 ], [ %42, %cond.end.i327 ], [ %42, %SetPixelPacket.exit ], [ %38, %SetPixelPacket.exit.thread ]
  %indexes.1 = phi ptr [ %incdec.ptr49, %cond.end.i ], [ %incdec.ptr49, %if.then48 ], [ %incdec.ptr58, %cond.end.i327 ], [ %incdec.ptr58, %SetPixelPacket.exit ], [ %incdec.ptr58964, %SetPixelPacket.exit.thread ], !dbg !2569
  %p.1 = phi ptr [ %incdec.ptr, %cond.end.i ], [ %incdec.ptr, %if.then48 ], [ %incdec.ptr57, %cond.end.i327 ], [ %incdec.ptr57, %SetPixelPacket.exit ], [ %incdec.ptr57963, %SetPixelPacket.exit.thread ], !dbg !2569
  %pixel.sroa.3.1 = uitofp i16 %pixel.sroa.3.1.in to float, !dbg !2569
  %pixel.sroa.10.1 = uitofp i16 %pixel.sroa.10.1.in to float, !dbg !2569
  %pixel.sroa.17.1 = uitofp i16 %pixel.sroa.17.1.in to float, !dbg !2569
  %pixel.sroa.24.1 = uitofp i16 %pixel.sroa.24.1.in to float, !dbg !2569
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.1, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.1, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.1, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.1, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  %shear_indexes.1 = getelementptr inbounds i16, ptr %shear_indexes.0866, i64 1, !dbg !2569
  %q.1 = getelementptr inbounds %struct._PixelPacket, ptr %q.0871, i64 1, !dbg !2569
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !718, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !716, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.1, metadata !715, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %indexes.1, metadata !711, metadata !DIExpression()), !dbg !2304
  %inc59 = add nuw nsw i64 %i.0873, 1, !dbg !2570
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.1, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.1, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.1, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.1, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %inc59, metadata !719, metadata !DIExpression()), !dbg !2304
  %exitcond.not = icmp eq i64 %inc59, %width, !dbg !2571
  br i1 %exitcond.not, label %for.end, label %for.body44, !dbg !2345, !llvm.loop !2572

for.end:                                          ; preds = %for.inc, %if.end37
  %pixel.sroa.31.0.lcssa = phi float [ %pixel.sroa.31.0.copyload, %if.end37 ], [ %pixel.sroa.31.3, %for.inc ], !dbg !2304
  %pixel.sroa.24.0.lcssa = phi float [ %pixel.sroa.24.0.copyload, %if.end37 ], [ %pixel.sroa.24.1, %for.inc ], !dbg !2304
  %pixel.sroa.17.0.lcssa = phi float [ %pixel.sroa.17.0.copyload, %if.end37 ], [ %pixel.sroa.17.1, %for.inc ], !dbg !2304
  %pixel.sroa.10.0.lcssa = phi float [ %pixel.sroa.10.0.copyload, %if.end37 ], [ %pixel.sroa.10.1, %for.inc ], !dbg !2304
  %pixel.sroa.3.0.lcssa = phi float [ %pixel.sroa.3.0.copyload, %if.end37 ], [ %pixel.sroa.3.1, %for.inc ], !dbg !2304
  %shear_indexes.0.lcssa = phi ptr [ %add.ptr40, %if.end37 ], [ %shear_indexes.1, %for.inc ], !dbg !2574
  %q.0.lcssa = phi ptr [ %add.ptr38, %if.end37 ], [ %q.1, %for.inc ], !dbg !2574
  %47 = load float, ptr %opacity7.i, align 4, !dbg !2575, !tbaa !1256
  call void @llvm.dbg.value(metadata ptr undef, metadata !2390, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0.lcssa, metadata !2398, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata ptr %background, metadata !2399, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata float %47, metadata !2400, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata float %sub33, metadata !2401, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2402, metadata !DIExpression()) #10, !dbg !2576
  %sub1.i332 = fsub float 6.553500e+04, %pixel.sroa.24.0.lcssa, !dbg !2578
  %conv2.i333 = fpext float %sub1.i332 to double, !dbg !2579
  %48 = call double @llvm.fmuladd.f64(double %neg.i, double %conv2.i333, double 6.553500e+04) #10, !dbg !2580
  %conv3.i335 = fptrunc double %48 to float, !dbg !2581
  %sub4.i336 = fsub float 6.553500e+04, %47, !dbg !2582
  %49 = call float @llvm.fmuladd.f32(float %neg5.i, float %sub4.i336, float 6.553500e+04) #10, !dbg !2583
  call void @llvm.dbg.value(metadata ptr undef, metadata !2411, metadata !DIExpression()) #10, !dbg !2584
  call void @llvm.dbg.value(metadata float %conv3.i335, metadata !2416, metadata !DIExpression()) #10, !dbg !2584
  call void @llvm.dbg.value(metadata ptr %background, metadata !2417, metadata !DIExpression()) #10, !dbg !2584
  call void @llvm.dbg.value(metadata float %49, metadata !2418, metadata !DIExpression()) #10, !dbg !2584
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2419, metadata !DIExpression()) #10, !dbg !2584
  %conv.i.i338 = fpext float %conv3.i335 to double, !dbg !2586
  %50 = call double @llvm.fmuladd.f64(double %conv.i.i338, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !2587
  %conv1.i.i339 = fptrunc double %50 to float, !dbg !2588
  call void @llvm.dbg.value(metadata float %conv1.i.i339, metadata !2422, metadata !DIExpression()) #10, !dbg !2584
  %conv2.i.i340 = fpext float %49 to double, !dbg !2589
  %51 = call double @llvm.fmuladd.f64(double %conv2.i.i340, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !2590
  %conv3.i.i341 = fptrunc double %51 to float, !dbg !2591
  call void @llvm.dbg.value(metadata float %conv3.i.i341, metadata !2421, metadata !DIExpression()) #10, !dbg !2584
  %add.i.i342 = fadd float %conv1.i.i339, %conv3.i.i341, !dbg !2592
  call void @llvm.dbg.value(metadata float %add.i.i342, metadata !2432, metadata !DIExpression()) #10, !dbg !2593
  %cmp.i.i.i343 = fcmp olt float %add.i.i342, 0.000000e+00, !dbg !2595
  br i1 %cmp.i.i.i343, label %RoundToUnity.exit.i.i357, label %cond.false.i.i.i345, !dbg !2596

cond.false.i.i.i345:                              ; preds = %for.end
  %cmp3.i.i.i344 = fcmp ogt float %add.i.i342, 1.000000e+00, !dbg !2597
  br i1 %cmp3.i.i.i344, label %RoundToUnity.exit.i.i357, label %cond.false6.i.i.i347, !dbg !2598

cond.false6.i.i.i347:                             ; preds = %cond.false.i.i.i345
  %phi.cast.i.i346 = fpext float %add.i.i342 to double, !dbg !2598
  br label %RoundToUnity.exit.i.i357, !dbg !2598

RoundToUnity.exit.i.i357:                         ; preds = %cond.false6.i.i.i347, %cond.false.i.i.i345, %for.end
  %cond9.i.i.i348 = phi double [ 0.000000e+00, %for.end ], [ %phi.cast.i.i346, %cond.false6.i.i.i347 ], [ 1.000000e+00, %cond.false.i.i.i345 ]
  call void @llvm.dbg.value(metadata double %cond9.i.i.i348, metadata !2420, metadata !DIExpression()) #10, !dbg !2584
  %sub.i.i349 = fsub double 1.000000e+00, %cond9.i.i.i348, !dbg !2599
  %mul.i.i350 = fmul double %sub.i.i349, 6.553500e+04, !dbg !2600
  %conv5.i.i351 = fptrunc double %mul.i.i350 to float, !dbg !2601
  store float %conv5.i.i351, ptr %opacity.i.i, align 4, !dbg !2602, !tbaa !1256
  call void @llvm.dbg.value(metadata double %cond9.i.i.i348, metadata !2445, metadata !DIExpression()) #10, !dbg !2603
  %cmp.i60.i.i353 = fcmp olt double %cond9.i.i.i348, 0.000000e+00, !dbg !2605
  %cond.i.i.i354 = select i1 %cmp.i60.i.i353, double -1.000000e+00, double 1.000000e+00, !dbg !2606
  call void @llvm.dbg.value(metadata double %cond.i.i.i354, metadata !2448, metadata !DIExpression()) #10, !dbg !2603
  %mul.i.i.i355 = fmul double %cond9.i.i.i348, %cond.i.i.i354, !dbg !2607
  %cmp1.i.i.i356 = fcmp ult double %mul.i.i.i355, 1.000000e-15, !dbg !2608
  br i1 %cmp1.i.i.i356, label %if.end.i.i.i361, label %if.then.i.i.i359, !dbg !2609

if.then.i.i.i359:                                 ; preds = %RoundToUnity.exit.i.i357
  %div.i.i.i358 = fdiv double 1.000000e+00, %cond9.i.i.i348, !dbg !2610
  br label %PerceptibleReciprocal.exit.i.i386, !dbg !2611

if.end.i.i.i361:                                  ; preds = %RoundToUnity.exit.i.i357
  %div2.i.i.i360 = fdiv double %cond.i.i.i354, 1.000000e-15, !dbg !2612
  br label %PerceptibleReciprocal.exit.i.i386, !dbg !2613

PerceptibleReciprocal.exit.i.i386:                ; preds = %if.end.i.i.i361, %if.then.i.i.i359
  %retval.0.i.i.i362 = phi double [ %div.i.i.i358, %if.then.i.i.i359 ], [ %div2.i.i.i360, %if.end.i.i.i361 ], !dbg !2603
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i362, metadata !2420, metadata !DIExpression()) #10, !dbg !2584
  %52 = load float, ptr %red1.i, align 8, !dbg !2614, !tbaa !1251
  %mul9.i.i365 = fmul float %52, %conv3.i.i341, !dbg !2615
  %53 = call float @llvm.fmuladd.f32(float %conv1.i.i339, float %pixel.sroa.3.0.lcssa, float %mul9.i.i365) #10, !dbg !2616
  %conv10.i.i366 = fpext float %53 to double, !dbg !2617
  %mul11.i.i367 = fmul double %retval.0.i.i.i362, %conv10.i.i366, !dbg !2618
  %conv12.i.i368 = fptrunc double %mul11.i.i367 to float, !dbg !2619
  store float %conv12.i.i368, ptr %red13.i.i, align 8, !dbg !2620, !tbaa !1251
  %54 = load float, ptr %green3.i, align 4, !dbg !2621, !tbaa !1254
  %mul16.i.i372 = fmul float %54, %conv3.i.i341, !dbg !2622
  %55 = call float @llvm.fmuladd.f32(float %conv1.i.i339, float %pixel.sroa.10.0.lcssa, float %mul16.i.i372) #10, !dbg !2623
  %conv17.i.i373 = fpext float %55 to double, !dbg !2624
  %mul18.i.i374 = fmul double %retval.0.i.i.i362, %conv17.i.i373, !dbg !2625
  %conv19.i.i375 = fptrunc double %mul18.i.i374 to float, !dbg !2626
  store float %conv19.i.i375, ptr %green20.i.i, align 4, !dbg !2627, !tbaa !1254
  %56 = load float, ptr %blue5.i, align 8, !dbg !2628, !tbaa !1255
  %mul23.i.i379 = fmul float %56, %conv3.i.i341, !dbg !2629
  %57 = call float @llvm.fmuladd.f32(float %conv1.i.i339, float %pixel.sroa.17.0.lcssa, float %mul23.i.i379) #10, !dbg !2630
  %conv24.i.i380 = fpext float %57 to double, !dbg !2631
  %mul25.i.i381 = fmul double %retval.0.i.i.i362, %conv24.i.i380, !dbg !2632
  %conv26.i.i382 = fptrunc double %mul25.i.i381 to float, !dbg !2633
  store float %conv26.i.i382, ptr %blue27.i.i, align 8, !dbg !2634, !tbaa !1255
  %58 = load i32, ptr %colorspace.i.i384, align 4, !dbg !2635, !tbaa !2225
  %cmp.i.i385 = icmp eq i32 %58, 12, !dbg !2636
  br i1 %cmp.i.i385, label %if.then.i.i394, label %MagickPixelCompositeAreaBlend.exit395, !dbg !2637

if.then.i.i394:                                   ; preds = %PerceptibleReciprocal.exit.i.i386
  %59 = load float, ptr %index30.i.i388, align 8, !dbg !2638, !tbaa !2290
  %mul31.i.i389 = fmul float %59, %conv3.i.i341, !dbg !2639
  %60 = call float @llvm.fmuladd.f32(float %conv1.i.i339, float %pixel.sroa.31.0.lcssa, float %mul31.i.i389) #10, !dbg !2640
  %conv32.i.i390 = fpext float %60 to double, !dbg !2641
  %mul33.i.i391 = fmul double %retval.0.i.i.i362, %conv32.i.i390, !dbg !2642
  %conv34.i.i392 = fptrunc double %mul33.i.i391 to float, !dbg !2643
  store float %conv34.i.i392, ptr %index35.i.i, align 8, !dbg !2644, !tbaa !2290
  br label %MagickPixelCompositeAreaBlend.exit395, !dbg !2645

MagickPixelCompositeAreaBlend.exit395:            ; preds = %PerceptibleReciprocal.exit.i.i386, %if.then.i.i394
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.lcssa, metadata !715, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2493, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !2494, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.lcssa, metadata !2495, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata float %conv12.i.i368, metadata !1284, metadata !DIExpression()), !dbg !2648
  %cmp.i.i397 = fcmp ugt float %conv12.i.i368, 0.000000e+00, !dbg !2650
  br i1 %cmp.i.i397, label %if.end.i.i399, label %ClampToQuantum.exit.i407, !dbg !2651

if.end.i.i399:                                    ; preds = %MagickPixelCompositeAreaBlend.exit395
  %cmp1.i.i398 = fcmp ult float %conv12.i.i368, 6.553500e+04, !dbg !2652
  br i1 %cmp1.i.i398, label %if.end3.i.i402, label %ClampToQuantum.exit.i407, !dbg !2653

if.end3.i.i402:                                   ; preds = %if.end.i.i399
  %add.i.i400 = fadd float %conv12.i.i368, 5.000000e-01, !dbg !2654
  %conv.i.i401 = fptoui float %add.i.i400 to i16, !dbg !2655
  br label %ClampToQuantum.exit.i407, !dbg !2656

ClampToQuantum.exit.i407:                         ; preds = %if.end3.i.i402, %if.end.i.i399, %MagickPixelCompositeAreaBlend.exit395
  %retval.0.i.i403 = phi i16 [ %conv.i.i401, %if.end3.i.i402 ], [ 0, %MagickPixelCompositeAreaBlend.exit395 ], [ -1, %if.end.i.i399 ], !dbg !2648
  %red1.i404 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.lcssa, i64 0, i32 2, !dbg !2657
  store i16 %retval.0.i.i403, ptr %red1.i404, align 2, !dbg !2657, !tbaa !981
  call void @llvm.dbg.value(metadata float %conv19.i.i375, metadata !1284, metadata !DIExpression()), !dbg !2658
  %cmp.i23.i406 = fcmp ugt float %conv19.i.i375, 0.000000e+00, !dbg !2660
  br i1 %cmp.i23.i406, label %if.end.i25.i409, label %ClampToQuantum.exit30.i417, !dbg !2661

if.end.i25.i409:                                  ; preds = %ClampToQuantum.exit.i407
  %cmp1.i24.i408 = fcmp ult float %conv19.i.i375, 6.553500e+04, !dbg !2662
  br i1 %cmp1.i24.i408, label %if.end3.i28.i412, label %ClampToQuantum.exit30.i417, !dbg !2663

if.end3.i28.i412:                                 ; preds = %if.end.i25.i409
  %add.i26.i410 = fadd float %conv19.i.i375, 5.000000e-01, !dbg !2664
  %conv.i27.i411 = fptoui float %add.i26.i410 to i16, !dbg !2665
  br label %ClampToQuantum.exit30.i417, !dbg !2666

ClampToQuantum.exit30.i417:                       ; preds = %if.end3.i28.i412, %if.end.i25.i409, %ClampToQuantum.exit.i407
  %retval.0.i29.i413 = phi i16 [ %conv.i27.i411, %if.end3.i28.i412 ], [ 0, %ClampToQuantum.exit.i407 ], [ -1, %if.end.i25.i409 ], !dbg !2658
  %green3.i414 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.lcssa, i64 0, i32 1, !dbg !2667
  store i16 %retval.0.i29.i413, ptr %green3.i414, align 2, !dbg !2667, !tbaa !986
  call void @llvm.dbg.value(metadata float %conv26.i.i382, metadata !1284, metadata !DIExpression()), !dbg !2668
  %cmp.i31.i416 = fcmp ugt float %conv26.i.i382, 0.000000e+00, !dbg !2670
  br i1 %cmp.i31.i416, label %if.end.i33.i419, label %ClampToQuantum.exit38.i426, !dbg !2671

if.end.i33.i419:                                  ; preds = %ClampToQuantum.exit30.i417
  %cmp1.i32.i418 = fcmp ult float %conv26.i.i382, 6.553500e+04, !dbg !2672
  br i1 %cmp1.i32.i418, label %if.end3.i36.i422, label %ClampToQuantum.exit38.i426, !dbg !2673

if.end3.i36.i422:                                 ; preds = %if.end.i33.i419
  %add.i34.i420 = fadd float %conv26.i.i382, 5.000000e-01, !dbg !2674
  %conv.i35.i421 = fptoui float %add.i34.i420 to i16, !dbg !2675
  br label %ClampToQuantum.exit38.i426, !dbg !2676

ClampToQuantum.exit38.i426:                       ; preds = %if.end3.i36.i422, %if.end.i33.i419, %ClampToQuantum.exit30.i417
  %retval.0.i37.i423 = phi i16 [ %conv.i35.i421, %if.end3.i36.i422 ], [ 0, %ClampToQuantum.exit30.i417 ], [ -1, %if.end.i33.i419 ], !dbg !2668
  store i16 %retval.0.i37.i423, ptr %q.0.lcssa, align 2, !dbg !2677, !tbaa !991
  call void @llvm.dbg.value(metadata float %conv5.i.i351, metadata !1284, metadata !DIExpression()), !dbg !2678
  %cmp.i39.i425 = fcmp ugt float %conv5.i.i351, 0.000000e+00, !dbg !2680
  br i1 %cmp.i39.i425, label %if.end.i41.i428, label %ClampToQuantum.exit46.i436, !dbg !2681

if.end.i41.i428:                                  ; preds = %ClampToQuantum.exit38.i426
  %cmp1.i40.i427 = fcmp ult float %conv5.i.i351, 6.553500e+04, !dbg !2682
  br i1 %cmp1.i40.i427, label %if.end3.i44.i431, label %ClampToQuantum.exit46.i436, !dbg !2683

if.end3.i44.i431:                                 ; preds = %if.end.i41.i428
  %add.i42.i429 = fadd float %conv5.i.i351, 5.000000e-01, !dbg !2684
  %conv.i43.i430 = fptoui float %add.i42.i429 to i16, !dbg !2685
  br label %ClampToQuantum.exit46.i436, !dbg !2686

ClampToQuantum.exit46.i436:                       ; preds = %if.end3.i44.i431, %if.end.i41.i428, %ClampToQuantum.exit38.i426
  %retval.0.i45.i432 = phi i16 [ %conv.i43.i430, %if.end3.i44.i431 ], [ 0, %ClampToQuantum.exit38.i426 ], [ -1, %if.end.i41.i428 ], !dbg !2678
  %opacity7.i433 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.lcssa, i64 0, i32 3, !dbg !2687
  store i16 %retval.0.i45.i432, ptr %opacity7.i433, align 2, !dbg !2687, !tbaa !1268
  %61 = load i32, ptr %colorspace, align 4, !dbg !2688, !tbaa !2205
  %cmp.i435 = icmp eq i32 %61, 12, !dbg !2689
  br i1 %cmp.i435, label %if.then.i442, label %lor.lhs.false.i440, !dbg !2690

lor.lhs.false.i440:                               ; preds = %ClampToQuantum.exit46.i436
  %62 = load i32, ptr %image, align 8, !dbg !2691, !tbaa !2541
  %cmp8.i437 = icmp eq i32 %62, 2, !dbg !2692
  %cmp9.i438 = icmp ne ptr %shear_indexes.0.lcssa, null
  %or.cond.i439 = and i1 %cmp9.i438, %cmp8.i437, !dbg !2693
  br i1 %or.cond.i439, label %if.then10.i445, label %SetPixelPacket.exit453, !dbg !2693

if.then.i442:                                     ; preds = %ClampToQuantum.exit46.i436
  %cmp9.old.not.i441 = icmp eq ptr %shear_indexes.0.lcssa, null, !dbg !2694
  br i1 %cmp9.old.not.i441, label %SetPixelPacket.exit453, label %if.then10.i445, !dbg !2695

if.then10.i445:                                   ; preds = %if.then.i442, %lor.lhs.false.i440
  %63 = load float, ptr %index35.i.i, align 8, !dbg !2694, !tbaa !2290
  call void @llvm.dbg.value(metadata float %63, metadata !1284, metadata !DIExpression()), !dbg !2696
  %cmp.i47.i444 = fcmp ugt float %63, 0.000000e+00, !dbg !2698
  br i1 %cmp.i47.i444, label %if.end.i49.i447, label %ClampToQuantum.exit54.i452, !dbg !2699

if.end.i49.i447:                                  ; preds = %if.then10.i445
  %cmp1.i48.i446 = fcmp ult float %63, 6.553500e+04, !dbg !2700
  br i1 %cmp1.i48.i446, label %if.end3.i52.i450, label %ClampToQuantum.exit54.i452, !dbg !2701

if.end3.i52.i450:                                 ; preds = %if.end.i49.i447
  %add.i50.i448 = fadd float %63, 5.000000e-01, !dbg !2702
  %conv.i51.i449 = fptoui float %add.i50.i448 to i16, !dbg !2703
  br label %ClampToQuantum.exit54.i452, !dbg !2704

ClampToQuantum.exit54.i452:                       ; preds = %if.end3.i52.i450, %if.end.i49.i447, %if.then10.i445
  %retval.0.i53.i451 = phi i16 [ %conv.i51.i449, %if.end3.i52.i450 ], [ 0, %if.then10.i445 ], [ -1, %if.end.i49.i447 ], !dbg !2696
  store i16 %retval.0.i53.i451, ptr %shear_indexes.0.lcssa, align 2, !dbg !2694, !tbaa !950
  br label %SetPixelPacket.exit453, !dbg !2694

SetPixelPacket.exit453:                           ; preds = %lor.lhs.false.i440, %if.then.i442, %ClampToQuantum.exit54.i452
  call void @llvm.dbg.value(metadata i64 0, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.lcssa, metadata !715, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2304
  %cmp66886 = icmp sgt i64 %conv31, 0, !dbg !2705
  br i1 %cmp66886, label %for.body68.lr.ph, label %sw.epilog, !dbg !2708

for.body68.lr.ph:                                 ; preds = %SetPixelPacket.exit453
  %cmp.i.i455 = fcmp ole float %52, 0.000000e+00
  %cmp1.i.i456 = fcmp oge float %52, 6.553500e+04
  %add.i.i458 = fadd float %52, 5.000000e-01
  %conv.i.i459 = fptoui float %add.i.i458 to i16
  %cmp.i23.i464 = fcmp ole float %54, 0.000000e+00
  %cmp1.i24.i466 = fcmp oge float %54, 6.553500e+04
  %add.i26.i468 = fadd float %54, 5.000000e-01
  %conv.i27.i469 = fptoui float %add.i26.i468 to i16
  %cmp.i31.i474 = fcmp ole float %56, 0.000000e+00
  %cmp1.i32.i476 = fcmp oge float %56, 6.553500e+04
  %add.i34.i478 = fadd float %56, 5.000000e-01
  %conv.i35.i479 = fptoui float %add.i34.i478 to i16
  %cmp.i39.i483 = fcmp ole float %47, 0.000000e+00
  %cmp1.i40.i485 = fcmp oge float %47, 6.553500e+04
  %add.i42.i487 = fadd float %47, 5.000000e-01
  %conv.i43.i488 = fptoui float %add.i42.i487 to i16
  %64 = load float, ptr %index30.i.i388, align 8
  %cmp.i47.i499 = fcmp ole float %64, 0.000000e+00
  %cmp1.i48.i501 = fcmp oge float %64, 6.553500e+04
  %add.i50.i503 = fadd float %64, 5.000000e-01
  %conv.i51.i504 = fptoui float %add.i50.i503 to i16
  %brmerge = or i1 %cmp.i.i455, %cmp1.i.i456
  %not.cmp.i.i455 = xor i1 %cmp.i.i455, true
  %.mux = sext i1 %not.cmp.i.i455 to i16
  %spec.select941 = select i1 %brmerge, i16 %.mux, i16 %conv.i.i459
  %brmerge923 = or i1 %cmp.i23.i464, %cmp1.i24.i466
  %not.cmp.i23.i464 = xor i1 %cmp.i23.i464, true
  %.mux924 = sext i1 %not.cmp.i23.i464 to i16
  %spec.select947 = select i1 %brmerge923, i16 %.mux924, i16 %conv.i27.i469
  %brmerge925 = or i1 %cmp.i31.i474, %cmp1.i32.i476
  %not.cmp.i31.i474 = xor i1 %cmp.i31.i474, true
  %.mux926 = sext i1 %not.cmp.i31.i474 to i16
  %spec.select942 = select i1 %brmerge925, i16 %.mux926, i16 %conv.i35.i479
  %brmerge927 = or i1 %cmp.i39.i483, %cmp1.i40.i485
  %not.cmp.i39.i483 = xor i1 %cmp.i39.i483, true
  %.mux928 = sext i1 %not.cmp.i39.i483 to i16
  %spec.select949 = select i1 %brmerge927, i16 %.mux928, i16 %conv.i43.i488
  %brmerge929 = or i1 %cmp.i47.i499, %cmp1.i48.i501
  %not.cmp.i47.i499 = xor i1 %cmp.i47.i499, true
  %.mux930 = sext i1 %not.cmp.i47.i499 to i16
  %spec.select943 = select i1 %brmerge929, i16 %.mux930, i16 %conv.i51.i504
  br label %for.body68, !dbg !2708

for.body68:                                       ; preds = %for.body68.lr.ph, %SetPixelPacket.exit508
  %i.1889 = phi i64 [ 0, %for.body68.lr.ph ], [ %inc72, %SetPixelPacket.exit508 ]
  %q.0.pn888 = phi ptr [ %q.0.lcssa, %for.body68.lr.ph ], [ %q.2, %SetPixelPacket.exit508 ]
  %shear_indexes.0.pn887 = phi ptr [ %shear_indexes.0.lcssa, %for.body68.lr.ph ], [ %shear_indexes.2, %SetPixelPacket.exit508 ]
  call void @llvm.dbg.value(metadata i64 %i.1889, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %q.0.pn888, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.pn887, metadata !715, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2304
  %shear_indexes.2 = getelementptr inbounds i16, ptr %shear_indexes.0.pn887, i64 1, !dbg !2574
  call void @llvm.dbg.value(metadata ptr %shear_indexes.2, metadata !715, metadata !DIExpression()), !dbg !2304
  %q.2 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.pn888, i64 1, !dbg !2574
  call void @llvm.dbg.value(metadata ptr %q.0.pn888, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.pn887, metadata !715, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %background, metadata !2493, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %q.2, metadata !2494, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %shear_indexes.2, metadata !2495, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata float %52, metadata !1284, metadata !DIExpression()), !dbg !2711
  %red1.i462 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.pn888, i64 1, i32 2, !dbg !2713
  store i16 %spec.select941, ptr %red1.i462, align 2, !dbg !2713, !tbaa !981
  call void @llvm.dbg.value(metadata float %54, metadata !1284, metadata !DIExpression()), !dbg !2714
  %green3.i472 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.pn888, i64 1, i32 1, !dbg !2716
  store i16 %spec.select947, ptr %green3.i472, align 2, !dbg !2716, !tbaa !986
  call void @llvm.dbg.value(metadata float %56, metadata !1284, metadata !DIExpression()), !dbg !2717
  store i16 %spec.select942, ptr %q.2, align 2, !dbg !2719, !tbaa !991
  call void @llvm.dbg.value(metadata float %47, metadata !1284, metadata !DIExpression()), !dbg !2720
  %opacity7.i491 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.pn888, i64 1, i32 3, !dbg !2722
  store i16 %spec.select949, ptr %opacity7.i491, align 2, !dbg !2722, !tbaa !1268
  br i1 %cmp.i435, label %if.then10.i500, label %lor.lhs.false.i496, !dbg !2723

lor.lhs.false.i496:                               ; preds = %for.body68
  %65 = load i32, ptr %image, align 8, !dbg !2724, !tbaa !2541
  %cmp8.i495 = icmp eq i32 %65, 2, !dbg !2725
  br i1 %cmp8.i495, label %if.then10.i500, label %SetPixelPacket.exit508, !dbg !2726

if.then10.i500:                                   ; preds = %for.body68, %lor.lhs.false.i496
  call void @llvm.dbg.value(metadata float %64, metadata !1284, metadata !DIExpression()), !dbg !2727
  store i16 %spec.select943, ptr %shear_indexes.2, align 2, !dbg !2729, !tbaa !950
  br label %SetPixelPacket.exit508, !dbg !2729

SetPixelPacket.exit508:                           ; preds = %lor.lhs.false.i496, %if.then10.i500
  %inc72 = add nuw nsw i64 %i.1889, 1, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %inc72, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %q.2, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.2, metadata !715, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2304
  %exitcond952.not = icmp eq i64 %inc72, %conv31, !dbg !2705
  br i1 %exitcond952.not, label %sw.epilog, label %for.body68, !dbg !2708, !llvm.loop !2731

sw.bb74:                                          ; preds = %if.end29
  %add.ptr75 = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr, i64 %width, !dbg !2733
  call void @llvm.dbg.value(metadata ptr %add.ptr75, metadata !716, metadata !DIExpression()), !dbg !2304
  %add.ptr76 = getelementptr inbounds i16, ptr %add.ptr14, i64 %width, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %add.ptr76, metadata !711, metadata !DIExpression()), !dbg !2304
  %add.ptr77 = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr75, i64 %inc, !dbg !2736
  call void @llvm.dbg.value(metadata ptr %add.ptr77, metadata !718, metadata !DIExpression()), !dbg !2304
  %add.ptr78 = getelementptr inbounds i16, ptr %add.ptr76, i64 %inc, !dbg !2737
  call void @llvm.dbg.value(metadata ptr %add.ptr78, metadata !715, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 0, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.0.copyload, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  br i1 %cmp42859, label %for.body82.lr.ph, label %sw.bb74.for.end100_crit_edge, !dbg !2738

sw.bb74.for.end100_crit_edge:                     ; preds = %sw.bb74
  %.pre = fpext float %sub33 to double, !dbg !2740
  %.pre956 = fsub double 1.000000e+00, %.pre, !dbg !2742
  %.pre957 = fneg double %.pre956, !dbg !2743
  %.pre958 = fneg float %sub33, !dbg !2744
  br label %for.end100, !dbg !2738

for.body82.lr.ph:                                 ; preds = %sw.bb74
  %add88 = add i64 %add87, %inc
  %66 = load i64, ptr %columns, align 8, !tbaa !824
  %conv.i526 = fpext float %sub33 to double
  %sub.i527 = fsub double 1.000000e+00, %conv.i526
  %neg.i530 = fneg double %sub.i527
  %neg5.i533 = fneg float %sub33
  %67 = load i32, ptr %colorspace.i.i, align 4
  %cmp.i.i581 = icmp eq i32 %67, 12
  %index15.i522.promoted = load float, ptr %index15.i291, align 8, !tbaa !2290
  %index35.i.i589.promoted = load float, ptr %index35.i.i, align 8, !tbaa !2290
  br label %for.body82, !dbg !2738

for.body82:                                       ; preds = %for.body82.lr.ph, %for.inc98
  %conv34.i.i588911 = phi float [ %index35.i.i589.promoted, %for.body82.lr.ph ], [ %conv34.i.i588912, %for.inc98 ]
  %conv14.i521908 = phi float [ %index15.i522.promoted, %for.body82.lr.ph ], [ %conv14.i521909, %for.inc98 ]
  %i.2900 = phi i64 [ 0, %for.body82.lr.ph ], [ %inc99, %for.inc98 ]
  %q.3899 = phi ptr [ %add.ptr77, %for.body82.lr.ph ], [ %incdec.ptr85, %for.inc98 ]
  %p.2898 = phi ptr [ %add.ptr75, %for.body82.lr.ph ], [ %incdec.ptr83, %for.inc98 ]
  %shear_indexes.3897 = phi ptr [ %add.ptr78, %for.body82.lr.ph ], [ %incdec.ptr86, %for.inc98 ]
  %indexes.2896 = phi ptr [ %add.ptr76, %for.body82.lr.ph ], [ %incdec.ptr84, %for.inc98 ]
  %pixel.sroa.3.2895 = phi float [ %pixel.sroa.3.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.3.3, %for.inc98 ]
  %pixel.sroa.10.2894 = phi float [ %pixel.sroa.10.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.10.3, %for.inc98 ]
  %pixel.sroa.17.2893 = phi float [ %pixel.sroa.17.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.17.3, %for.inc98 ]
  %pixel.sroa.24.2892 = phi float [ %pixel.sroa.24.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.24.3, %for.inc98 ]
  %pixel.sroa.31.4891 = phi float [ %pixel.sroa.31.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.31.6, %for.inc98 ]
  call void @llvm.dbg.value(metadata i64 %i.2900, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %q.3899, metadata !718, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %p.2898, metadata !716, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.3897, metadata !715, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %indexes.2896, metadata !711, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.2895, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.2894, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.2893, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.2892, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.4891, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  %incdec.ptr83 = getelementptr inbounds %struct._PixelPacket, ptr %p.2898, i64 -1, !dbg !2745
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !716, metadata !DIExpression()), !dbg !2304
  %incdec.ptr84 = getelementptr inbounds i16, ptr %indexes.2896, i64 -1, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !711, metadata !DIExpression()), !dbg !2304
  %incdec.ptr85 = getelementptr inbounds %struct._PixelPacket, ptr %q.3899, i64 -1, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %incdec.ptr85, metadata !718, metadata !DIExpression()), !dbg !2304
  %incdec.ptr86 = getelementptr inbounds i16, ptr %shear_indexes.3897, i64 -1, !dbg !2750
  call void @llvm.dbg.value(metadata ptr %incdec.ptr86, metadata !715, metadata !DIExpression()), !dbg !2304
  %sub89 = sub i64 %add88, %i.2900, !dbg !2751
  %cmp91 = icmp ugt i64 %sub89, %66, !dbg !2753
  br i1 %cmp91, label %for.inc98, label %if.end94, !dbg !2754

if.end94:                                         ; preds = %for.body82
  %image.val255 = load i32, ptr %1, align 4, !dbg !2755, !tbaa !2205
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !2182, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !2183, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %source, metadata !2184, metadata !DIExpression()), !dbg !2756
  %red.i509 = getelementptr inbounds %struct._PixelPacket, ptr %p.2898, i64 -1, i32 2, !dbg !2758
  %68 = load i16, ptr %red.i509, align 2, !dbg !2758, !tbaa !981
  %conv.i510 = uitofp i16 %68 to float, !dbg !2759
  store float %conv.i510, ptr %red1.i280, align 8, !dbg !2760, !tbaa !1251
  %green.i512 = getelementptr inbounds %struct._PixelPacket, ptr %p.2898, i64 -1, i32 1, !dbg !2761
  %69 = load i16, ptr %green.i512, align 2, !dbg !2761, !tbaa !986
  %conv2.i513 = uitofp i16 %69 to float, !dbg !2762
  store float %conv2.i513, ptr %green3.i283, align 4, !dbg !2763, !tbaa !1254
  %70 = load i16, ptr %incdec.ptr83, align 2, !dbg !2764, !tbaa !991
  %conv4.i515 = uitofp i16 %70 to float, !dbg !2765
  store float %conv4.i515, ptr %blue5.i285, align 8, !dbg !2766, !tbaa !1255
  %opacity.i517 = getelementptr inbounds %struct._PixelPacket, ptr %p.2898, i64 -1, i32 3, !dbg !2767
  %71 = load i16, ptr %opacity.i517, align 2, !dbg !2767, !tbaa !1268
  %conv6.i518 = uitofp i16 %71 to float, !dbg !2768
  store float %conv6.i518, ptr %opacity7.i288, align 4, !dbg !2769, !tbaa !1256
  %cmp.i520 = icmp eq i32 %image.val255, 12, !dbg !2770
  br i1 %cmp.i520, label %cond.end.i523, label %SetMagickPixelPacket.exit525, !dbg !2771

cond.end.i523:                                    ; preds = %if.end94
  %72 = load i16, ptr %incdec.ptr84, align 2, !dbg !2772, !tbaa !950
  %conv14.i521 = uitofp i16 %72 to float, !dbg !2773
  store float %conv14.i521, ptr %index15.i291, align 8, !dbg !2774, !tbaa !2290
  br label %SetMagickPixelPacket.exit525, !dbg !2775

SetMagickPixelPacket.exit525:                     ; preds = %if.end94, %cond.end.i523
  %conv14.i521910 = phi float [ %conv14.i521908, %if.end94 ], [ %conv14.i521, %cond.end.i523 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !2390, metadata !DIExpression()) #10, !dbg !2776
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.2892, metadata !2398, metadata !DIExpression()) #10, !dbg !2776
  call void @llvm.dbg.value(metadata ptr %source, metadata !2399, metadata !DIExpression()) #10, !dbg !2776
  call void @llvm.dbg.value(metadata float %conv6.i518, metadata !2400, metadata !DIExpression()) #10, !dbg !2776
  call void @llvm.dbg.value(metadata float %sub33, metadata !2401, metadata !DIExpression()) #10, !dbg !2776
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2402, metadata !DIExpression()) #10, !dbg !2776
  %sub1.i528 = fsub float 6.553500e+04, %pixel.sroa.24.2892, !dbg !2778
  %conv2.i529 = fpext float %sub1.i528 to double, !dbg !2779
  %73 = call double @llvm.fmuladd.f64(double %neg.i530, double %conv2.i529, double 6.553500e+04) #10, !dbg !2780
  %conv3.i531 = fptrunc double %73 to float, !dbg !2781
  %sub4.i532 = fsub float 6.553500e+04, %conv6.i518, !dbg !2782
  %74 = call float @llvm.fmuladd.f32(float %neg5.i533, float %sub4.i532, float 6.553500e+04) #10, !dbg !2783
  call void @llvm.dbg.value(metadata ptr undef, metadata !2411, metadata !DIExpression()) #10, !dbg !2784
  call void @llvm.dbg.value(metadata float %conv3.i531, metadata !2416, metadata !DIExpression()) #10, !dbg !2784
  call void @llvm.dbg.value(metadata ptr %source, metadata !2417, metadata !DIExpression()) #10, !dbg !2784
  call void @llvm.dbg.value(metadata float %74, metadata !2418, metadata !DIExpression()) #10, !dbg !2784
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2419, metadata !DIExpression()) #10, !dbg !2784
  %conv.i.i534 = fpext float %conv3.i531 to double, !dbg !2786
  %75 = call double @llvm.fmuladd.f64(double %conv.i.i534, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !2787
  %conv1.i.i535 = fptrunc double %75 to float, !dbg !2788
  call void @llvm.dbg.value(metadata float %conv1.i.i535, metadata !2422, metadata !DIExpression()) #10, !dbg !2784
  %conv2.i.i536 = fpext float %74 to double, !dbg !2789
  %76 = call double @llvm.fmuladd.f64(double %conv2.i.i536, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !2790
  %conv3.i.i537 = fptrunc double %76 to float, !dbg !2791
  call void @llvm.dbg.value(metadata float %conv3.i.i537, metadata !2421, metadata !DIExpression()) #10, !dbg !2784
  %add.i.i538 = fadd float %conv1.i.i535, %conv3.i.i537, !dbg !2792
  call void @llvm.dbg.value(metadata float %add.i.i538, metadata !2432, metadata !DIExpression()) #10, !dbg !2793
  %cmp.i.i.i539 = fcmp olt float %add.i.i538, 0.000000e+00, !dbg !2795
  br i1 %cmp.i.i.i539, label %RoundToUnity.exit.i.i553, label %cond.false.i.i.i541, !dbg !2796

cond.false.i.i.i541:                              ; preds = %SetMagickPixelPacket.exit525
  %cmp3.i.i.i540 = fcmp ogt float %add.i.i538, 1.000000e+00, !dbg !2797
  br i1 %cmp3.i.i.i540, label %RoundToUnity.exit.i.i553, label %cond.false6.i.i.i543, !dbg !2798

cond.false6.i.i.i543:                             ; preds = %cond.false.i.i.i541
  %phi.cast.i.i542 = fpext float %add.i.i538 to double, !dbg !2798
  br label %RoundToUnity.exit.i.i553, !dbg !2798

RoundToUnity.exit.i.i553:                         ; preds = %cond.false6.i.i.i543, %cond.false.i.i.i541, %SetMagickPixelPacket.exit525
  %cond9.i.i.i544 = phi double [ 0.000000e+00, %SetMagickPixelPacket.exit525 ], [ %phi.cast.i.i542, %cond.false6.i.i.i543 ], [ 1.000000e+00, %cond.false.i.i.i541 ]
  call void @llvm.dbg.value(metadata double %cond9.i.i.i544, metadata !2420, metadata !DIExpression()) #10, !dbg !2784
  %sub.i.i545 = fsub double 1.000000e+00, %cond9.i.i.i544, !dbg !2799
  %mul.i.i546 = fmul double %sub.i.i545, 6.553500e+04, !dbg !2800
  %conv5.i.i547 = fptrunc double %mul.i.i546 to float, !dbg !2801
  store float %conv5.i.i547, ptr %opacity.i.i, align 4, !dbg !2802, !tbaa !1256
  call void @llvm.dbg.value(metadata double %cond9.i.i.i544, metadata !2445, metadata !DIExpression()) #10, !dbg !2803
  %cmp.i60.i.i549 = fcmp olt double %cond9.i.i.i544, 0.000000e+00, !dbg !2805
  %cond.i.i.i550 = select i1 %cmp.i60.i.i549, double -1.000000e+00, double 1.000000e+00, !dbg !2806
  call void @llvm.dbg.value(metadata double %cond.i.i.i550, metadata !2448, metadata !DIExpression()) #10, !dbg !2803
  %mul.i.i.i551 = fmul double %cond9.i.i.i544, %cond.i.i.i550, !dbg !2807
  %cmp1.i.i.i552 = fcmp ult double %mul.i.i.i551, 1.000000e-15, !dbg !2808
  br i1 %cmp1.i.i.i552, label %if.end.i.i.i557, label %if.then.i.i.i555, !dbg !2809

if.then.i.i.i555:                                 ; preds = %RoundToUnity.exit.i.i553
  %div.i.i.i554 = fdiv double 1.000000e+00, %cond9.i.i.i544, !dbg !2810
  br label %PerceptibleReciprocal.exit.i.i582, !dbg !2811

if.end.i.i.i557:                                  ; preds = %RoundToUnity.exit.i.i553
  %div2.i.i.i556 = fdiv double %cond.i.i.i550, 1.000000e-15, !dbg !2812
  br label %PerceptibleReciprocal.exit.i.i582, !dbg !2813

PerceptibleReciprocal.exit.i.i582:                ; preds = %if.end.i.i.i557, %if.then.i.i.i555
  %retval.0.i.i.i558 = phi double [ %div.i.i.i554, %if.then.i.i.i555 ], [ %div2.i.i.i556, %if.end.i.i.i557 ], !dbg !2803
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i558, metadata !2420, metadata !DIExpression()) #10, !dbg !2784
  %mul9.i.i561 = fmul float %conv.i510, %conv3.i.i537, !dbg !2814
  %77 = call float @llvm.fmuladd.f32(float %conv1.i.i535, float %pixel.sroa.3.2895, float %mul9.i.i561) #10, !dbg !2815
  %conv10.i.i562 = fpext float %77 to double, !dbg !2816
  %mul11.i.i563 = fmul double %retval.0.i.i.i558, %conv10.i.i562, !dbg !2817
  %conv12.i.i564 = fptrunc double %mul11.i.i563 to float, !dbg !2818
  store float %conv12.i.i564, ptr %red13.i.i, align 8, !dbg !2819, !tbaa !1251
  %mul16.i.i568 = fmul float %conv2.i513, %conv3.i.i537, !dbg !2820
  %78 = call float @llvm.fmuladd.f32(float %conv1.i.i535, float %pixel.sroa.10.2894, float %mul16.i.i568) #10, !dbg !2821
  %conv17.i.i569 = fpext float %78 to double, !dbg !2822
  %mul18.i.i570 = fmul double %retval.0.i.i.i558, %conv17.i.i569, !dbg !2823
  %conv19.i.i571 = fptrunc double %mul18.i.i570 to float, !dbg !2824
  store float %conv19.i.i571, ptr %green20.i.i, align 4, !dbg !2825, !tbaa !1254
  %mul23.i.i575 = fmul float %conv4.i515, %conv3.i.i537, !dbg !2826
  %79 = call float @llvm.fmuladd.f32(float %conv1.i.i535, float %pixel.sroa.17.2893, float %mul23.i.i575) #10, !dbg !2827
  %conv24.i.i576 = fpext float %79 to double, !dbg !2828
  %mul25.i.i577 = fmul double %retval.0.i.i.i558, %conv24.i.i576, !dbg !2829
  %conv26.i.i578 = fptrunc double %mul25.i.i577 to float, !dbg !2830
  store float %conv26.i.i578, ptr %blue27.i.i, align 8, !dbg !2831, !tbaa !1255
  br i1 %cmp.i.i581, label %if.then.i.i590, label %MagickPixelCompositeAreaBlend.exit591, !dbg !2832

if.then.i.i590:                                   ; preds = %PerceptibleReciprocal.exit.i.i582
  %mul31.i.i585 = fmul float %conv14.i521910, %conv3.i.i537, !dbg !2833
  %80 = call float @llvm.fmuladd.f32(float %conv1.i.i535, float %pixel.sroa.31.4891, float %mul31.i.i585) #10, !dbg !2834
  %conv32.i.i586 = fpext float %80 to double, !dbg !2835
  %mul33.i.i587 = fmul double %retval.0.i.i.i558, %conv32.i.i586, !dbg !2836
  %conv34.i.i588 = fptrunc double %mul33.i.i587 to float, !dbg !2837
  store float %conv34.i.i588, ptr %index35.i.i, align 8, !dbg !2838, !tbaa !2290
  br label %MagickPixelCompositeAreaBlend.exit591, !dbg !2839

MagickPixelCompositeAreaBlend.exit591:            ; preds = %PerceptibleReciprocal.exit.i.i582, %if.then.i.i590
  %conv34.i.i588913 = phi float [ %conv34.i.i588911, %PerceptibleReciprocal.exit.i.i582 ], [ %conv34.i.i588, %if.then.i.i590 ]
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2493, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %incdec.ptr85, metadata !2494, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr %incdec.ptr86, metadata !2495, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata float %conv12.i.i564, metadata !1284, metadata !DIExpression()), !dbg !2842
  %cmp.i.i593 = fcmp ugt float %conv12.i.i564, 0.000000e+00, !dbg !2844
  br i1 %cmp.i.i593, label %if.end.i.i595, label %ClampToQuantum.exit.i603, !dbg !2845

if.end.i.i595:                                    ; preds = %MagickPixelCompositeAreaBlend.exit591
  %cmp1.i.i594 = fcmp ult float %conv12.i.i564, 6.553500e+04, !dbg !2846
  br i1 %cmp1.i.i594, label %if.end3.i.i598, label %ClampToQuantum.exit.i603, !dbg !2847

if.end3.i.i598:                                   ; preds = %if.end.i.i595
  %add.i.i596 = fadd float %conv12.i.i564, 5.000000e-01, !dbg !2848
  %conv.i.i597 = fptoui float %add.i.i596 to i16, !dbg !2849
  br label %ClampToQuantum.exit.i603, !dbg !2850

ClampToQuantum.exit.i603:                         ; preds = %if.end3.i.i598, %if.end.i.i595, %MagickPixelCompositeAreaBlend.exit591
  %retval.0.i.i599 = phi i16 [ %conv.i.i597, %if.end3.i.i598 ], [ 0, %MagickPixelCompositeAreaBlend.exit591 ], [ -1, %if.end.i.i595 ], !dbg !2842
  %red1.i600 = getelementptr inbounds %struct._PixelPacket, ptr %q.3899, i64 -1, i32 2, !dbg !2851
  store i16 %retval.0.i.i599, ptr %red1.i600, align 2, !dbg !2851, !tbaa !981
  call void @llvm.dbg.value(metadata float %conv19.i.i571, metadata !1284, metadata !DIExpression()), !dbg !2852
  %cmp.i23.i602 = fcmp ugt float %conv19.i.i571, 0.000000e+00, !dbg !2854
  br i1 %cmp.i23.i602, label %if.end.i25.i605, label %ClampToQuantum.exit30.i613, !dbg !2855

if.end.i25.i605:                                  ; preds = %ClampToQuantum.exit.i603
  %cmp1.i24.i604 = fcmp ult float %conv19.i.i571, 6.553500e+04, !dbg !2856
  br i1 %cmp1.i24.i604, label %if.end3.i28.i608, label %ClampToQuantum.exit30.i613, !dbg !2857

if.end3.i28.i608:                                 ; preds = %if.end.i25.i605
  %add.i26.i606 = fadd float %conv19.i.i571, 5.000000e-01, !dbg !2858
  %conv.i27.i607 = fptoui float %add.i26.i606 to i16, !dbg !2859
  br label %ClampToQuantum.exit30.i613, !dbg !2860

ClampToQuantum.exit30.i613:                       ; preds = %if.end3.i28.i608, %if.end.i25.i605, %ClampToQuantum.exit.i603
  %retval.0.i29.i609 = phi i16 [ %conv.i27.i607, %if.end3.i28.i608 ], [ 0, %ClampToQuantum.exit.i603 ], [ -1, %if.end.i25.i605 ], !dbg !2852
  %green3.i610 = getelementptr inbounds %struct._PixelPacket, ptr %q.3899, i64 -1, i32 1, !dbg !2861
  store i16 %retval.0.i29.i609, ptr %green3.i610, align 2, !dbg !2861, !tbaa !986
  call void @llvm.dbg.value(metadata float %conv26.i.i578, metadata !1284, metadata !DIExpression()), !dbg !2862
  %cmp.i31.i612 = fcmp ugt float %conv26.i.i578, 0.000000e+00, !dbg !2864
  br i1 %cmp.i31.i612, label %if.end.i33.i615, label %ClampToQuantum.exit38.i622, !dbg !2865

if.end.i33.i615:                                  ; preds = %ClampToQuantum.exit30.i613
  %cmp1.i32.i614 = fcmp ult float %conv26.i.i578, 6.553500e+04, !dbg !2866
  br i1 %cmp1.i32.i614, label %if.end3.i36.i618, label %ClampToQuantum.exit38.i622, !dbg !2867

if.end3.i36.i618:                                 ; preds = %if.end.i33.i615
  %add.i34.i616 = fadd float %conv26.i.i578, 5.000000e-01, !dbg !2868
  %conv.i35.i617 = fptoui float %add.i34.i616 to i16, !dbg !2869
  br label %ClampToQuantum.exit38.i622, !dbg !2870

ClampToQuantum.exit38.i622:                       ; preds = %if.end3.i36.i618, %if.end.i33.i615, %ClampToQuantum.exit30.i613
  %retval.0.i37.i619 = phi i16 [ %conv.i35.i617, %if.end3.i36.i618 ], [ 0, %ClampToQuantum.exit30.i613 ], [ -1, %if.end.i33.i615 ], !dbg !2862
  store i16 %retval.0.i37.i619, ptr %incdec.ptr85, align 2, !dbg !2871, !tbaa !991
  call void @llvm.dbg.value(metadata float %conv5.i.i547, metadata !1284, metadata !DIExpression()), !dbg !2872
  %cmp.i39.i621 = fcmp ugt float %conv5.i.i547, 0.000000e+00, !dbg !2874
  br i1 %cmp.i39.i621, label %if.end.i41.i624, label %ClampToQuantum.exit46.i632, !dbg !2875

if.end.i41.i624:                                  ; preds = %ClampToQuantum.exit38.i622
  %cmp1.i40.i623 = fcmp ult float %conv5.i.i547, 6.553500e+04, !dbg !2876
  br i1 %cmp1.i40.i623, label %if.end3.i44.i627, label %ClampToQuantum.exit46.i632, !dbg !2877

if.end3.i44.i627:                                 ; preds = %if.end.i41.i624
  %add.i42.i625 = fadd float %conv5.i.i547, 5.000000e-01, !dbg !2878
  %conv.i43.i626 = fptoui float %add.i42.i625 to i16, !dbg !2879
  br label %ClampToQuantum.exit46.i632, !dbg !2880

ClampToQuantum.exit46.i632:                       ; preds = %if.end3.i44.i627, %if.end.i41.i624, %ClampToQuantum.exit38.i622
  %retval.0.i45.i628 = phi i16 [ %conv.i43.i626, %if.end3.i44.i627 ], [ 0, %ClampToQuantum.exit38.i622 ], [ -1, %if.end.i41.i624 ], !dbg !2872
  %opacity7.i629 = getelementptr inbounds %struct._PixelPacket, ptr %q.3899, i64 -1, i32 3, !dbg !2881
  store i16 %retval.0.i45.i628, ptr %opacity7.i629, align 2, !dbg !2881, !tbaa !1268
  br i1 %cmp.i520, label %if.then10.i638, label %lor.lhs.false.i634, !dbg !2882

lor.lhs.false.i634:                               ; preds = %ClampToQuantum.exit46.i632
  %81 = load i32, ptr %image, align 8, !dbg !2883, !tbaa !2541
  %cmp8.i633 = icmp eq i32 %81, 2, !dbg !2884
  br i1 %cmp8.i633, label %if.then10.i638, label %SetPixelPacket.exit646, !dbg !2885

if.then10.i638:                                   ; preds = %ClampToQuantum.exit46.i632, %lor.lhs.false.i634
  call void @llvm.dbg.value(metadata float %conv34.i.i588913, metadata !1284, metadata !DIExpression()), !dbg !2886
  %cmp.i47.i637 = fcmp ugt float %conv34.i.i588913, 0.000000e+00, !dbg !2888
  br i1 %cmp.i47.i637, label %if.end.i49.i640, label %ClampToQuantum.exit54.i645, !dbg !2889

if.end.i49.i640:                                  ; preds = %if.then10.i638
  %cmp1.i48.i639 = fcmp ult float %conv34.i.i588913, 6.553500e+04, !dbg !2890
  br i1 %cmp1.i48.i639, label %if.end3.i52.i643, label %ClampToQuantum.exit54.i645, !dbg !2891

if.end3.i52.i643:                                 ; preds = %if.end.i49.i640
  %add.i50.i641 = fadd float %conv34.i.i588913, 5.000000e-01, !dbg !2892
  %conv.i51.i642 = fptoui float %add.i50.i641 to i16, !dbg !2893
  br label %ClampToQuantum.exit54.i645, !dbg !2894

ClampToQuantum.exit54.i645:                       ; preds = %if.end3.i52.i643, %if.end.i49.i640, %if.then10.i638
  %retval.0.i53.i644 = phi i16 [ %conv.i51.i642, %if.end3.i52.i643 ], [ 0, %if.then10.i638 ], [ -1, %if.end.i49.i640 ], !dbg !2886
  store i16 %retval.0.i53.i644, ptr %incdec.ptr86, align 2, !dbg !2895, !tbaa !950
  br label %SetPixelPacket.exit646, !dbg !2895

SetPixelPacket.exit646:                           ; preds = %lor.lhs.false.i634, %ClampToQuantum.exit54.i645
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !2182, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !2183, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr undef, metadata !2184, metadata !DIExpression()), !dbg !2896
  %82 = load i16, ptr %red.i509, align 2, !dbg !2898, !tbaa !981
  %conv.i648 = uitofp i16 %82 to float, !dbg !2899
  call void @llvm.dbg.value(metadata float %conv.i648, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  %83 = load i16, ptr %green.i512, align 2, !dbg !2900, !tbaa !986
  %conv2.i651 = uitofp i16 %83 to float, !dbg !2901
  call void @llvm.dbg.value(metadata float %conv2.i651, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  %84 = load i16, ptr %incdec.ptr83, align 2, !dbg !2902, !tbaa !991
  %conv4.i653 = uitofp i16 %84 to float, !dbg !2903
  call void @llvm.dbg.value(metadata float %conv4.i653, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  %85 = load i16, ptr %opacity.i517, align 2, !dbg !2904, !tbaa !1268
  %conv6.i656 = uitofp i16 %85 to float, !dbg !2905
  call void @llvm.dbg.value(metadata float %conv6.i656, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  br i1 %cmp.i520, label %cond.end.i661, label %for.inc98, !dbg !2906

cond.end.i661:                                    ; preds = %SetPixelPacket.exit646
  %86 = load i16, ptr %incdec.ptr84, align 2, !dbg !2907, !tbaa !950
  %conv14.i659 = uitofp i16 %86 to float, !dbg !2908
  call void @llvm.dbg.value(metadata float %conv14.i659, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  br label %for.inc98, !dbg !2909

for.inc98:                                        ; preds = %cond.end.i661, %SetPixelPacket.exit646, %for.body82
  %conv34.i.i588912 = phi float [ %conv34.i.i588911, %for.body82 ], [ %conv34.i.i588913, %cond.end.i661 ], [ %conv34.i.i588913, %SetPixelPacket.exit646 ]
  %conv14.i521909 = phi float [ %conv14.i521908, %for.body82 ], [ %conv14.i521910, %cond.end.i661 ], [ %conv14.i521910, %SetPixelPacket.exit646 ]
  %pixel.sroa.31.6 = phi float [ %pixel.sroa.31.4891, %for.body82 ], [ %conv14.i659, %cond.end.i661 ], [ %pixel.sroa.31.4891, %SetPixelPacket.exit646 ], !dbg !2304
  %pixel.sroa.24.3 = phi float [ %pixel.sroa.24.2892, %for.body82 ], [ %conv6.i656, %cond.end.i661 ], [ %conv6.i656, %SetPixelPacket.exit646 ], !dbg !2304
  %pixel.sroa.17.3 = phi float [ %pixel.sroa.17.2893, %for.body82 ], [ %conv4.i653, %cond.end.i661 ], [ %conv4.i653, %SetPixelPacket.exit646 ], !dbg !2304
  %pixel.sroa.10.3 = phi float [ %pixel.sroa.10.2894, %for.body82 ], [ %conv2.i651, %cond.end.i661 ], [ %conv2.i651, %SetPixelPacket.exit646 ], !dbg !2304
  %pixel.sroa.3.3 = phi float [ %pixel.sroa.3.2895, %for.body82 ], [ %conv.i648, %cond.end.i661 ], [ %conv.i648, %SetPixelPacket.exit646 ], !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.6, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  %inc99 = add nuw nsw i64 %i.2900, 1, !dbg !2910
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.3, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.6, metadata !703, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %inc99, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %incdec.ptr85, metadata !718, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !716, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %incdec.ptr86, metadata !715, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !711, metadata !DIExpression()), !dbg !2304
  %exitcond953.not = icmp eq i64 %inc99, %width, !dbg !2911
  br i1 %exitcond953.not, label %for.end100, label %for.body82, !dbg !2738, !llvm.loop !2912

for.end100:                                       ; preds = %for.inc98, %sw.bb74.for.end100_crit_edge
  %neg5.i671.pre-phi = phi float [ %.pre958, %sw.bb74.for.end100_crit_edge ], [ %neg5.i533, %for.inc98 ], !dbg !2744
  %neg.i668.pre-phi = phi double [ %.pre957, %sw.bb74.for.end100_crit_edge ], [ %neg.i530, %for.inc98 ], !dbg !2743
  %pixel.sroa.31.4.lcssa = phi float [ %pixel.sroa.31.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.31.6, %for.inc98 ], !dbg !2328
  %pixel.sroa.24.2.lcssa = phi float [ %pixel.sroa.24.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.24.3, %for.inc98 ], !dbg !2328
  %pixel.sroa.17.2.lcssa = phi float [ %pixel.sroa.17.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.17.3, %for.inc98 ], !dbg !2328
  %pixel.sroa.10.2.lcssa = phi float [ %pixel.sroa.10.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.10.3, %for.inc98 ], !dbg !2328
  %pixel.sroa.3.2.lcssa = phi float [ %pixel.sroa.3.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.3.3, %for.inc98 ], !dbg !2328
  %shear_indexes.3.lcssa = phi ptr [ %add.ptr78, %sw.bb74.for.end100_crit_edge ], [ %incdec.ptr86, %for.inc98 ], !dbg !2914
  %q.3.lcssa = phi ptr [ %add.ptr77, %sw.bb74.for.end100_crit_edge ], [ %incdec.ptr85, %for.inc98 ], !dbg !2914
  %87 = load float, ptr %opacity7.i, align 4, !dbg !2915, !tbaa !1256
  call void @llvm.dbg.value(metadata ptr undef, metadata !2390, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.2.lcssa, metadata !2398, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata ptr %background, metadata !2399, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata float %87, metadata !2400, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata float %sub33, metadata !2401, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2402, metadata !DIExpression()) #10, !dbg !2916
  %sub1.i666 = fsub float 6.553500e+04, %pixel.sroa.24.2.lcssa, !dbg !2917
  %conv2.i667 = fpext float %sub1.i666 to double, !dbg !2918
  %88 = call double @llvm.fmuladd.f64(double %neg.i668.pre-phi, double %conv2.i667, double 6.553500e+04) #10, !dbg !2743
  %conv3.i669 = fptrunc double %88 to float, !dbg !2919
  %sub4.i670 = fsub float 6.553500e+04, %87, !dbg !2920
  %89 = call float @llvm.fmuladd.f32(float %neg5.i671.pre-phi, float %sub4.i670, float 6.553500e+04) #10, !dbg !2744
  call void @llvm.dbg.value(metadata ptr undef, metadata !2411, metadata !DIExpression()) #10, !dbg !2921
  call void @llvm.dbg.value(metadata float %conv3.i669, metadata !2416, metadata !DIExpression()) #10, !dbg !2921
  call void @llvm.dbg.value(metadata ptr %background, metadata !2417, metadata !DIExpression()) #10, !dbg !2921
  call void @llvm.dbg.value(metadata float %89, metadata !2418, metadata !DIExpression()) #10, !dbg !2921
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2419, metadata !DIExpression()) #10, !dbg !2921
  %conv.i.i672 = fpext float %conv3.i669 to double, !dbg !2923
  %90 = call double @llvm.fmuladd.f64(double %conv.i.i672, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !2924
  %conv1.i.i673 = fptrunc double %90 to float, !dbg !2925
  call void @llvm.dbg.value(metadata float %conv1.i.i673, metadata !2422, metadata !DIExpression()) #10, !dbg !2921
  %conv2.i.i674 = fpext float %89 to double, !dbg !2926
  %91 = call double @llvm.fmuladd.f64(double %conv2.i.i674, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !2927
  %conv3.i.i675 = fptrunc double %91 to float, !dbg !2928
  call void @llvm.dbg.value(metadata float %conv3.i.i675, metadata !2421, metadata !DIExpression()) #10, !dbg !2921
  %add.i.i676 = fadd float %conv1.i.i673, %conv3.i.i675, !dbg !2929
  call void @llvm.dbg.value(metadata float %add.i.i676, metadata !2432, metadata !DIExpression()) #10, !dbg !2930
  %cmp.i.i.i677 = fcmp olt float %add.i.i676, 0.000000e+00, !dbg !2932
  br i1 %cmp.i.i.i677, label %RoundToUnity.exit.i.i691, label %cond.false.i.i.i679, !dbg !2933

cond.false.i.i.i679:                              ; preds = %for.end100
  %cmp3.i.i.i678 = fcmp ogt float %add.i.i676, 1.000000e+00, !dbg !2934
  br i1 %cmp3.i.i.i678, label %RoundToUnity.exit.i.i691, label %cond.false6.i.i.i681, !dbg !2935

cond.false6.i.i.i681:                             ; preds = %cond.false.i.i.i679
  %phi.cast.i.i680 = fpext float %add.i.i676 to double, !dbg !2935
  br label %RoundToUnity.exit.i.i691, !dbg !2935

RoundToUnity.exit.i.i691:                         ; preds = %cond.false6.i.i.i681, %cond.false.i.i.i679, %for.end100
  %cond9.i.i.i682 = phi double [ 0.000000e+00, %for.end100 ], [ %phi.cast.i.i680, %cond.false6.i.i.i681 ], [ 1.000000e+00, %cond.false.i.i.i679 ]
  call void @llvm.dbg.value(metadata double %cond9.i.i.i682, metadata !2420, metadata !DIExpression()) #10, !dbg !2921
  %sub.i.i683 = fsub double 1.000000e+00, %cond9.i.i.i682, !dbg !2936
  %mul.i.i684 = fmul double %sub.i.i683, 6.553500e+04, !dbg !2937
  %conv5.i.i685 = fptrunc double %mul.i.i684 to float, !dbg !2938
  store float %conv5.i.i685, ptr %opacity.i.i, align 4, !dbg !2939, !tbaa !1256
  call void @llvm.dbg.value(metadata double %cond9.i.i.i682, metadata !2445, metadata !DIExpression()) #10, !dbg !2940
  %cmp.i60.i.i687 = fcmp olt double %cond9.i.i.i682, 0.000000e+00, !dbg !2942
  %cond.i.i.i688 = select i1 %cmp.i60.i.i687, double -1.000000e+00, double 1.000000e+00, !dbg !2943
  call void @llvm.dbg.value(metadata double %cond.i.i.i688, metadata !2448, metadata !DIExpression()) #10, !dbg !2940
  %mul.i.i.i689 = fmul double %cond9.i.i.i682, %cond.i.i.i688, !dbg !2944
  %cmp1.i.i.i690 = fcmp ult double %mul.i.i.i689, 1.000000e-15, !dbg !2945
  br i1 %cmp1.i.i.i690, label %if.end.i.i.i695, label %if.then.i.i.i693, !dbg !2946

if.then.i.i.i693:                                 ; preds = %RoundToUnity.exit.i.i691
  %div.i.i.i692 = fdiv double 1.000000e+00, %cond9.i.i.i682, !dbg !2947
  br label %PerceptibleReciprocal.exit.i.i720, !dbg !2948

if.end.i.i.i695:                                  ; preds = %RoundToUnity.exit.i.i691
  %div2.i.i.i694 = fdiv double %cond.i.i.i688, 1.000000e-15, !dbg !2949
  br label %PerceptibleReciprocal.exit.i.i720, !dbg !2950

PerceptibleReciprocal.exit.i.i720:                ; preds = %if.end.i.i.i695, %if.then.i.i.i693
  %retval.0.i.i.i696 = phi double [ %div.i.i.i692, %if.then.i.i.i693 ], [ %div2.i.i.i694, %if.end.i.i.i695 ], !dbg !2940
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i696, metadata !2420, metadata !DIExpression()) #10, !dbg !2921
  %92 = load float, ptr %red1.i, align 8, !dbg !2951, !tbaa !1251
  %mul9.i.i699 = fmul float %92, %conv3.i.i675, !dbg !2952
  %93 = call float @llvm.fmuladd.f32(float %conv1.i.i673, float %pixel.sroa.3.2.lcssa, float %mul9.i.i699) #10, !dbg !2953
  %conv10.i.i700 = fpext float %93 to double, !dbg !2954
  %mul11.i.i701 = fmul double %retval.0.i.i.i696, %conv10.i.i700, !dbg !2955
  %conv12.i.i702 = fptrunc double %mul11.i.i701 to float, !dbg !2956
  store float %conv12.i.i702, ptr %red13.i.i, align 8, !dbg !2957, !tbaa !1251
  %94 = load float, ptr %green3.i, align 4, !dbg !2958, !tbaa !1254
  %mul16.i.i706 = fmul float %94, %conv3.i.i675, !dbg !2959
  %95 = call float @llvm.fmuladd.f32(float %conv1.i.i673, float %pixel.sroa.10.2.lcssa, float %mul16.i.i706) #10, !dbg !2960
  %conv17.i.i707 = fpext float %95 to double, !dbg !2961
  %mul18.i.i708 = fmul double %retval.0.i.i.i696, %conv17.i.i707, !dbg !2962
  %conv19.i.i709 = fptrunc double %mul18.i.i708 to float, !dbg !2963
  store float %conv19.i.i709, ptr %green20.i.i, align 4, !dbg !2964, !tbaa !1254
  %96 = load float, ptr %blue5.i, align 8, !dbg !2965, !tbaa !1255
  %mul23.i.i713 = fmul float %96, %conv3.i.i675, !dbg !2966
  %97 = call float @llvm.fmuladd.f32(float %conv1.i.i673, float %pixel.sroa.17.2.lcssa, float %mul23.i.i713) #10, !dbg !2967
  %conv24.i.i714 = fpext float %97 to double, !dbg !2968
  %mul25.i.i715 = fmul double %retval.0.i.i.i696, %conv24.i.i714, !dbg !2969
  %conv26.i.i716 = fptrunc double %mul25.i.i715 to float, !dbg !2970
  store float %conv26.i.i716, ptr %blue27.i.i, align 8, !dbg !2971, !tbaa !1255
  %98 = load i32, ptr %colorspace.i.i384, align 4, !dbg !2972, !tbaa !2225
  %cmp.i.i719 = icmp eq i32 %98, 12, !dbg !2973
  br i1 %cmp.i.i719, label %if.then.i.i728, label %MagickPixelCompositeAreaBlend.exit729, !dbg !2974

if.then.i.i728:                                   ; preds = %PerceptibleReciprocal.exit.i.i720
  %99 = load float, ptr %index30.i.i388, align 8, !dbg !2975, !tbaa !2290
  %mul31.i.i723 = fmul float %99, %conv3.i.i675, !dbg !2976
  %100 = call float @llvm.fmuladd.f32(float %conv1.i.i673, float %pixel.sroa.31.4.lcssa, float %mul31.i.i723) #10, !dbg !2977
  %conv32.i.i724 = fpext float %100 to double, !dbg !2978
  %mul33.i.i725 = fmul double %retval.0.i.i.i696, %conv32.i.i724, !dbg !2979
  %conv34.i.i726 = fptrunc double %mul33.i.i725 to float, !dbg !2980
  store float %conv34.i.i726, ptr %index35.i.i, align 8, !dbg !2981, !tbaa !2290
  br label %MagickPixelCompositeAreaBlend.exit729, !dbg !2982

MagickPixelCompositeAreaBlend.exit729:            ; preds = %PerceptibleReciprocal.exit.i.i720, %if.then.i.i728
  %incdec.ptr103 = getelementptr inbounds %struct._PixelPacket, ptr %q.3.lcssa, i64 -1, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103, metadata !718, metadata !DIExpression()), !dbg !2304
  %incdec.ptr104 = getelementptr inbounds i16, ptr %shear_indexes.3.lcssa, i64 -1, !dbg !2984
  call void @llvm.dbg.value(metadata ptr %incdec.ptr104, metadata !715, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2493, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103, metadata !2494, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %incdec.ptr104, metadata !2495, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata float %conv12.i.i702, metadata !1284, metadata !DIExpression()), !dbg !2987
  %cmp.i.i731 = fcmp ugt float %conv12.i.i702, 0.000000e+00, !dbg !2989
  br i1 %cmp.i.i731, label %if.end.i.i733, label %ClampToQuantum.exit.i741, !dbg !2990

if.end.i.i733:                                    ; preds = %MagickPixelCompositeAreaBlend.exit729
  %cmp1.i.i732 = fcmp ult float %conv12.i.i702, 6.553500e+04, !dbg !2991
  br i1 %cmp1.i.i732, label %if.end3.i.i736, label %ClampToQuantum.exit.i741, !dbg !2992

if.end3.i.i736:                                   ; preds = %if.end.i.i733
  %add.i.i734 = fadd float %conv12.i.i702, 5.000000e-01, !dbg !2993
  %conv.i.i735 = fptoui float %add.i.i734 to i16, !dbg !2994
  br label %ClampToQuantum.exit.i741, !dbg !2995

ClampToQuantum.exit.i741:                         ; preds = %if.end3.i.i736, %if.end.i.i733, %MagickPixelCompositeAreaBlend.exit729
  %retval.0.i.i737 = phi i16 [ %conv.i.i735, %if.end3.i.i736 ], [ 0, %MagickPixelCompositeAreaBlend.exit729 ], [ -1, %if.end.i.i733 ], !dbg !2987
  %red1.i738 = getelementptr inbounds %struct._PixelPacket, ptr %q.3.lcssa, i64 -1, i32 2, !dbg !2996
  store i16 %retval.0.i.i737, ptr %red1.i738, align 2, !dbg !2996, !tbaa !981
  call void @llvm.dbg.value(metadata float %conv19.i.i709, metadata !1284, metadata !DIExpression()), !dbg !2997
  %cmp.i23.i740 = fcmp ugt float %conv19.i.i709, 0.000000e+00, !dbg !2999
  br i1 %cmp.i23.i740, label %if.end.i25.i743, label %ClampToQuantum.exit30.i751, !dbg !3000

if.end.i25.i743:                                  ; preds = %ClampToQuantum.exit.i741
  %cmp1.i24.i742 = fcmp ult float %conv19.i.i709, 6.553500e+04, !dbg !3001
  br i1 %cmp1.i24.i742, label %if.end3.i28.i746, label %ClampToQuantum.exit30.i751, !dbg !3002

if.end3.i28.i746:                                 ; preds = %if.end.i25.i743
  %add.i26.i744 = fadd float %conv19.i.i709, 5.000000e-01, !dbg !3003
  %conv.i27.i745 = fptoui float %add.i26.i744 to i16, !dbg !3004
  br label %ClampToQuantum.exit30.i751, !dbg !3005

ClampToQuantum.exit30.i751:                       ; preds = %if.end3.i28.i746, %if.end.i25.i743, %ClampToQuantum.exit.i741
  %retval.0.i29.i747 = phi i16 [ %conv.i27.i745, %if.end3.i28.i746 ], [ 0, %ClampToQuantum.exit.i741 ], [ -1, %if.end.i25.i743 ], !dbg !2997
  %green3.i748 = getelementptr inbounds %struct._PixelPacket, ptr %q.3.lcssa, i64 -1, i32 1, !dbg !3006
  store i16 %retval.0.i29.i747, ptr %green3.i748, align 2, !dbg !3006, !tbaa !986
  call void @llvm.dbg.value(metadata float %conv26.i.i716, metadata !1284, metadata !DIExpression()), !dbg !3007
  %cmp.i31.i750 = fcmp ugt float %conv26.i.i716, 0.000000e+00, !dbg !3009
  br i1 %cmp.i31.i750, label %if.end.i33.i753, label %ClampToQuantum.exit38.i760, !dbg !3010

if.end.i33.i753:                                  ; preds = %ClampToQuantum.exit30.i751
  %cmp1.i32.i752 = fcmp ult float %conv26.i.i716, 6.553500e+04, !dbg !3011
  br i1 %cmp1.i32.i752, label %if.end3.i36.i756, label %ClampToQuantum.exit38.i760, !dbg !3012

if.end3.i36.i756:                                 ; preds = %if.end.i33.i753
  %add.i34.i754 = fadd float %conv26.i.i716, 5.000000e-01, !dbg !3013
  %conv.i35.i755 = fptoui float %add.i34.i754 to i16, !dbg !3014
  br label %ClampToQuantum.exit38.i760, !dbg !3015

ClampToQuantum.exit38.i760:                       ; preds = %if.end3.i36.i756, %if.end.i33.i753, %ClampToQuantum.exit30.i751
  %retval.0.i37.i757 = phi i16 [ %conv.i35.i755, %if.end3.i36.i756 ], [ 0, %ClampToQuantum.exit30.i751 ], [ -1, %if.end.i33.i753 ], !dbg !3007
  store i16 %retval.0.i37.i757, ptr %incdec.ptr103, align 2, !dbg !3016, !tbaa !991
  call void @llvm.dbg.value(metadata float %conv5.i.i685, metadata !1284, metadata !DIExpression()), !dbg !3017
  %cmp.i39.i759 = fcmp ugt float %conv5.i.i685, 0.000000e+00, !dbg !3019
  br i1 %cmp.i39.i759, label %if.end.i41.i762, label %ClampToQuantum.exit46.i770, !dbg !3020

if.end.i41.i762:                                  ; preds = %ClampToQuantum.exit38.i760
  %cmp1.i40.i761 = fcmp ult float %conv5.i.i685, 6.553500e+04, !dbg !3021
  br i1 %cmp1.i40.i761, label %if.end3.i44.i765, label %ClampToQuantum.exit46.i770, !dbg !3022

if.end3.i44.i765:                                 ; preds = %if.end.i41.i762
  %add.i42.i763 = fadd float %conv5.i.i685, 5.000000e-01, !dbg !3023
  %conv.i43.i764 = fptoui float %add.i42.i763 to i16, !dbg !3024
  br label %ClampToQuantum.exit46.i770, !dbg !3025

ClampToQuantum.exit46.i770:                       ; preds = %if.end3.i44.i765, %if.end.i41.i762, %ClampToQuantum.exit38.i760
  %retval.0.i45.i766 = phi i16 [ %conv.i43.i764, %if.end3.i44.i765 ], [ 0, %ClampToQuantum.exit38.i760 ], [ -1, %if.end.i41.i762 ], !dbg !3017
  %opacity7.i767 = getelementptr inbounds %struct._PixelPacket, ptr %q.3.lcssa, i64 -1, i32 3, !dbg !3026
  store i16 %retval.0.i45.i766, ptr %opacity7.i767, align 2, !dbg !3026, !tbaa !1268
  %101 = load i32, ptr %colorspace, align 4, !dbg !3027, !tbaa !2205
  %cmp.i769 = icmp eq i32 %101, 12, !dbg !3028
  br i1 %cmp.i769, label %if.then10.i776, label %lor.lhs.false.i772, !dbg !3029

lor.lhs.false.i772:                               ; preds = %ClampToQuantum.exit46.i770
  %102 = load i32, ptr %image, align 8, !dbg !3030, !tbaa !2541
  %cmp8.i771 = icmp eq i32 %102, 2, !dbg !3031
  br i1 %cmp8.i771, label %if.then10.i776, label %SetPixelPacket.exit784, !dbg !3032

if.then10.i776:                                   ; preds = %ClampToQuantum.exit46.i770, %lor.lhs.false.i772
  %103 = load float, ptr %index35.i.i, align 8, !dbg !3033, !tbaa !2290
  call void @llvm.dbg.value(metadata float %103, metadata !1284, metadata !DIExpression()), !dbg !3034
  %cmp.i47.i775 = fcmp ugt float %103, 0.000000e+00, !dbg !3036
  br i1 %cmp.i47.i775, label %if.end.i49.i778, label %ClampToQuantum.exit54.i783, !dbg !3037

if.end.i49.i778:                                  ; preds = %if.then10.i776
  %cmp1.i48.i777 = fcmp ult float %103, 6.553500e+04, !dbg !3038
  br i1 %cmp1.i48.i777, label %if.end3.i52.i781, label %ClampToQuantum.exit54.i783, !dbg !3039

if.end3.i52.i781:                                 ; preds = %if.end.i49.i778
  %add.i50.i779 = fadd float %103, 5.000000e-01, !dbg !3040
  %conv.i51.i780 = fptoui float %add.i50.i779 to i16, !dbg !3041
  br label %ClampToQuantum.exit54.i783, !dbg !3042

ClampToQuantum.exit54.i783:                       ; preds = %if.end3.i52.i781, %if.end.i49.i778, %if.then10.i776
  %retval.0.i53.i782 = phi i16 [ %conv.i51.i780, %if.end3.i52.i781 ], [ 0, %if.then10.i776 ], [ -1, %if.end.i49.i778 ], !dbg !3034
  store i16 %retval.0.i53.i782, ptr %incdec.ptr104, align 2, !dbg !3033, !tbaa !950
  br label %SetPixelPacket.exit784, !dbg !3033

SetPixelPacket.exit784:                           ; preds = %lor.lhs.false.i772, %ClampToQuantum.exit54.i783
  call void @llvm.dbg.value(metadata i64 0, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103, metadata !718, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %incdec.ptr104, metadata !715, metadata !DIExpression()), !dbg !2304
  %cmp107914 = icmp sgt i64 %conv31, 0, !dbg !3043
  br i1 %cmp107914, label %for.body109.lr.ph, label %sw.epilog, !dbg !3046

for.body109.lr.ph:                                ; preds = %SetPixelPacket.exit784
  %cmp.i.i786 = fcmp ole float %92, 0.000000e+00
  %cmp1.i.i787 = fcmp oge float %92, 6.553500e+04
  %add.i.i789 = fadd float %92, 5.000000e-01
  %conv.i.i790 = fptoui float %add.i.i789 to i16
  %cmp.i23.i795 = fcmp ole float %94, 0.000000e+00
  %cmp1.i24.i797 = fcmp oge float %94, 6.553500e+04
  %add.i26.i799 = fadd float %94, 5.000000e-01
  %conv.i27.i800 = fptoui float %add.i26.i799 to i16
  %cmp.i31.i805 = fcmp ole float %96, 0.000000e+00
  %cmp1.i32.i807 = fcmp oge float %96, 6.553500e+04
  %add.i34.i809 = fadd float %96, 5.000000e-01
  %conv.i35.i810 = fptoui float %add.i34.i809 to i16
  %cmp.i39.i814 = fcmp ole float %87, 0.000000e+00
  %cmp1.i40.i816 = fcmp oge float %87, 6.553500e+04
  %add.i42.i818 = fadd float %87, 5.000000e-01
  %conv.i43.i819 = fptoui float %add.i42.i818 to i16
  %104 = load float, ptr %index30.i.i388, align 8
  %cmp.i47.i830 = fcmp ole float %104, 0.000000e+00
  %cmp1.i48.i832 = fcmp oge float %104, 6.553500e+04
  %add.i50.i834 = fadd float %104, 5.000000e-01
  %conv.i51.i835 = fptoui float %add.i50.i834 to i16
  %brmerge931 = or i1 %cmp.i.i786, %cmp1.i.i787
  %not.cmp.i.i786 = xor i1 %cmp.i.i786, true
  %.mux932 = sext i1 %not.cmp.i.i786 to i16
  %spec.select944 = select i1 %brmerge931, i16 %.mux932, i16 %conv.i.i790
  %brmerge933 = or i1 %cmp.i23.i795, %cmp1.i24.i797
  %not.cmp.i23.i795 = xor i1 %cmp.i23.i795, true
  %.mux934 = sext i1 %not.cmp.i23.i795 to i16
  %spec.select948 = select i1 %brmerge933, i16 %.mux934, i16 %conv.i27.i800
  %brmerge935 = or i1 %cmp.i31.i805, %cmp1.i32.i807
  %not.cmp.i31.i805 = xor i1 %cmp.i31.i805, true
  %.mux936 = sext i1 %not.cmp.i31.i805 to i16
  %spec.select945 = select i1 %brmerge935, i16 %.mux936, i16 %conv.i35.i810
  %brmerge937 = or i1 %cmp.i39.i814, %cmp1.i40.i816
  %not.cmp.i39.i814 = xor i1 %cmp.i39.i814, true
  %.mux938 = sext i1 %not.cmp.i39.i814 to i16
  %spec.select950 = select i1 %brmerge937, i16 %.mux938, i16 %conv.i43.i819
  %brmerge939 = or i1 %cmp.i47.i830, %cmp1.i48.i832
  %not.cmp.i47.i830 = xor i1 %cmp.i47.i830, true
  %.mux940 = sext i1 %not.cmp.i47.i830 to i16
  %spec.select946 = select i1 %brmerge939, i16 %.mux940, i16 %conv.i51.i835
  br label %for.body109, !dbg !3046

for.body109:                                      ; preds = %for.body109.lr.ph, %SetPixelPacket.exit839
  %i.3917 = phi i64 [ 0, %for.body109.lr.ph ], [ %inc113, %SetPixelPacket.exit839 ]
  %q.4916 = phi ptr [ %incdec.ptr103, %for.body109.lr.ph ], [ %incdec.ptr110, %SetPixelPacket.exit839 ]
  %shear_indexes.4915 = phi ptr [ %incdec.ptr104, %for.body109.lr.ph ], [ %incdec.ptr111, %SetPixelPacket.exit839 ]
  call void @llvm.dbg.value(metadata i64 %i.3917, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %q.4916, metadata !718, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %shear_indexes.4915, metadata !715, metadata !DIExpression()), !dbg !2304
  %incdec.ptr110 = getelementptr inbounds %struct._PixelPacket, ptr %q.4916, i64 -1, !dbg !3047
  call void @llvm.dbg.value(metadata ptr %incdec.ptr110, metadata !718, metadata !DIExpression()), !dbg !2304
  %incdec.ptr111 = getelementptr inbounds i16, ptr %shear_indexes.4915, i64 -1, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %incdec.ptr111, metadata !715, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata ptr %background, metadata !2493, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata ptr %incdec.ptr110, metadata !2494, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata ptr %incdec.ptr111, metadata !2495, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata float %92, metadata !1284, metadata !DIExpression()), !dbg !3051
  %red1.i793 = getelementptr inbounds %struct._PixelPacket, ptr %q.4916, i64 -1, i32 2, !dbg !3053
  store i16 %spec.select944, ptr %red1.i793, align 2, !dbg !3053, !tbaa !981
  call void @llvm.dbg.value(metadata float %94, metadata !1284, metadata !DIExpression()), !dbg !3054
  %green3.i803 = getelementptr inbounds %struct._PixelPacket, ptr %q.4916, i64 -1, i32 1, !dbg !3056
  store i16 %spec.select948, ptr %green3.i803, align 2, !dbg !3056, !tbaa !986
  call void @llvm.dbg.value(metadata float %96, metadata !1284, metadata !DIExpression()), !dbg !3057
  store i16 %spec.select945, ptr %incdec.ptr110, align 2, !dbg !3059, !tbaa !991
  call void @llvm.dbg.value(metadata float %87, metadata !1284, metadata !DIExpression()), !dbg !3060
  %opacity7.i822 = getelementptr inbounds %struct._PixelPacket, ptr %q.4916, i64 -1, i32 3, !dbg !3062
  store i16 %spec.select950, ptr %opacity7.i822, align 2, !dbg !3062, !tbaa !1268
  br i1 %cmp.i769, label %if.then10.i831, label %lor.lhs.false.i827, !dbg !3063

lor.lhs.false.i827:                               ; preds = %for.body109
  %105 = load i32, ptr %image, align 8, !dbg !3064, !tbaa !2541
  %cmp8.i826 = icmp eq i32 %105, 2, !dbg !3065
  br i1 %cmp8.i826, label %if.then10.i831, label %SetPixelPacket.exit839, !dbg !3066

if.then10.i831:                                   ; preds = %for.body109, %lor.lhs.false.i827
  call void @llvm.dbg.value(metadata float %104, metadata !1284, metadata !DIExpression()), !dbg !3067
  store i16 %spec.select946, ptr %incdec.ptr111, align 2, !dbg !3069, !tbaa !950
  br label %SetPixelPacket.exit839, !dbg !3069

SetPixelPacket.exit839:                           ; preds = %lor.lhs.false.i827, %if.then10.i831
  %inc113 = add nuw nsw i64 %i.3917, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %inc113, metadata !719, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %incdec.ptr110, metadata !718, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %incdec.ptr111, metadata !715, metadata !DIExpression()), !dbg !2304
  %exitcond954.not = icmp eq i64 %inc113, %conv31, !dbg !3043
  br i1 %exitcond954.not, label %sw.epilog, label %for.body109, !dbg !3046, !llvm.loop !3071

sw.epilog:                                        ; preds = %SetPixelPacket.exit508, %SetPixelPacket.exit839, %SetPixelPacket.exit453, %SetPixelPacket.exit784, %sw.bb
  %call115 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call4, ptr noundef %exception) #12, !dbg !3073
  %cmp116 = icmp ne i32 %call115, 0, !dbg !3075
  %spec.select = zext i1 %cmp116 to i32, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !686, metadata !DIExpression()), !dbg !2162
  %106 = load ptr, ptr %progress_monitor, align 8, !dbg !3077, !tbaa !1655
  %cmp120.not = icmp eq ptr %106, null, !dbg !3078
  br i1 %cmp120.not, label %cleanup, label %SetImageProgress.exit, !dbg !3079

SetImageProgress.exit:                            ; preds = %sw.epilog
  %inc123 = add nsw i64 %progress.0919, 1, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %inc123, metadata !687, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %image, metadata !1661, metadata !DIExpression()) #10, !dbg !3081
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !1667, metadata !DIExpression()) #10, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %progress.0919, metadata !1668, metadata !DIExpression()) #10, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %height, metadata !1669, metadata !DIExpression()) #10, !dbg !3081
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #10, !dbg !3083
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1670, metadata !DIExpression()) #10, !dbg !3084
  %call.i841 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull %filename.i) #10, !dbg !3085
  %107 = load ptr, ptr %progress_monitor, align 8, !dbg !3086, !tbaa !1655
  %108 = load ptr, ptr %client_data.i, align 8, !dbg !3087, !tbaa !1678
  %call4.i = call i32 %107(ptr noundef nonnull %message.i, i64 noundef %progress.0919, i64 noundef %height, ptr noundef %108) #10, !dbg !3088
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #10, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !723, metadata !DIExpression()), !dbg !3090
  %cmp125 = icmp eq i32 %call4.i, 0, !dbg !3091
  %spec.select254 = select i1 %cmp125, i32 0, i32 %spec.select, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %spec.select254, metadata !686, metadata !DIExpression()), !dbg !2162
  br label %cleanup, !dbg !3094

cleanup:                                          ; preds = %sw.epilog, %SetImageProgress.exit, %if.end12, %if.end8, %for.body
  %progress.2 = phi i64 [ %progress.0919, %for.body ], [ %progress.0919, %if.end8 ], [ %progress.0919, %if.end12 ], [ %inc123, %SetImageProgress.exit ], [ %progress.0919, %sw.epilog ], !dbg !2162
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end8 ], [ 1, %if.end12 ], [ %spec.select254, %SetImageProgress.exit ], [ %spec.select, %sw.epilog ], !dbg !2162
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !686, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !687, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %destination) #10, !dbg !3095
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %source) #10, !dbg !3095
  %inc142 = add nuw nsw i64 %y.0920, 1, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %inc142, metadata !702, metadata !DIExpression()), !dbg !2162
  %exitcond955.not = icmp eq i64 %inc142, %height, !dbg !2293
  br i1 %exitcond955.not, label %for.end143, label %for.body, !dbg !2294, !llvm.loop !3097

for.end143:                                       ; preds = %cleanup, %if.end3
  %status.0.lcssa = phi i32 [ 1, %if.end3 ], [ %status.4, %cleanup ], !dbg !3099
  %call144 = call ptr @DestroyCacheView(ptr noundef %call4) #10, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %call144, metadata !682, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background) #10, !dbg !3101
  ret i32 %status.0.lcssa, !dbg !3102
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @YShearImage(ptr noundef %image, float noundef %degrees, i64 noundef %width, i64 noundef %height, i64 noundef %x_offset, i64 noundef %y_offset, ptr noundef %exception) unnamed_addr #0 !dbg !730 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %background = alloca %struct._MagickPixelPacket, align 8
  %source = alloca %struct._MagickPixelPacket, align 8
  %destination = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !732, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata float %degrees, metadata !733, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %width, metadata !734, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %height, metadata !735, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %x_offset, metadata !736, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %y_offset, metadata !737, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %exception, metadata !738, metadata !DIExpression()), !dbg !3103
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %background) #10, !dbg !3104
  call void @llvm.dbg.declare(metadata ptr %background, metadata !742, metadata !DIExpression()), !dbg !3105
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3106
  %0 = load i32, ptr %debug, align 8, !dbg !3106, !tbaa !1133
  %cmp.not = icmp eq i32 %0, 0, !dbg !3108
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3109

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3110
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1385, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #10, !dbg !3111
  br label %if.end, !dbg !3112

if.end:                                           ; preds = %if.then, %entry
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %background) #10, !dbg !3113
  %background_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !3114
  %1 = getelementptr i8, ptr %image, i64 4, !dbg !3115
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %background_color, metadata !2182, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr null, metadata !2183, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %background, metadata !2184, metadata !DIExpression()), !dbg !3116
  %red.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 2, !dbg !3118
  %2 = load i16, ptr %red.i, align 2, !dbg !3118, !tbaa !981
  %conv.i = uitofp i16 %2 to float, !dbg !3119
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 5, !dbg !3120
  store float %conv.i, ptr %red1.i, align 8, !dbg !3121, !tbaa !1251
  %green.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 1, !dbg !3122
  %3 = load i16, ptr %green.i, align 2, !dbg !3122, !tbaa !986
  %conv2.i = uitofp i16 %3 to float, !dbg !3123
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 6, !dbg !3124
  store float %conv2.i, ptr %green3.i, align 4, !dbg !3125, !tbaa !1254
  %4 = load i16, ptr %background_color, align 2, !dbg !3126, !tbaa !991
  %conv4.i = uitofp i16 %4 to float, !dbg !3127
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 7, !dbg !3128
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !3129, !tbaa !1255
  %opacity.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, i32 3, !dbg !3130
  %5 = load i16, ptr %opacity.i, align 2, !dbg !3130, !tbaa !1268
  %conv6.i = uitofp i16 %5 to float, !dbg !3131
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 8, !dbg !3132
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !3133, !tbaa !1256
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !3134
  %6 = load i32, ptr %colorspace, align 4, !dbg !3134, !tbaa !2205
  %cmp1 = icmp eq i32 %6, 12, !dbg !3136
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3137

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %background, metadata !2208, metadata !DIExpression()) #10, !dbg !3138
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 1, !dbg !3140
  %7 = load i32, ptr %colorspace.i, align 4, !dbg !3140, !tbaa !2225
  %cmp.not.i = icmp eq i32 %7, 13, !dbg !3141
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !dbg !3142

if.then.i:                                        ; preds = %if.then2
  %conv.i261 = uitofp i16 %2 to double, !dbg !3143
  %mul.i = fmul double %conv.i261, 0x3EF0001000100010, !dbg !3144
  %conv2.i262 = fptrunc double %mul.i to float, !dbg !3145
  call void @llvm.dbg.value(metadata float %conv2.i262, metadata !2219, metadata !DIExpression()) #10, !dbg !3138
  %conv4.i264 = uitofp i16 %3 to double, !dbg !3146
  %mul5.i = fmul double %conv4.i264, 0x3EF0001000100010, !dbg !3147
  %conv6.i265 = fptrunc double %mul5.i to float, !dbg !3148
  call void @llvm.dbg.value(metadata float %conv6.i265, metadata !2217, metadata !DIExpression()) #10, !dbg !3138
  %conv8.i = uitofp i16 %4 to double, !dbg !3149
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !3150
  %conv10.i = fptrunc double %mul9.i to float, !dbg !3151
  call void @llvm.dbg.value(metadata float %conv10.i, metadata !2215, metadata !DIExpression()) #10, !dbg !3138
  br label %if.end.i, !dbg !3152

if.else.i:                                        ; preds = %if.then2
  %call.i = call float @DecodePixelGamma(float noundef %conv.i) #12, !dbg !3153
  call void @llvm.dbg.value(metadata float %call.i, metadata !2219, metadata !DIExpression()) #10, !dbg !3138
  %8 = load float, ptr %green3.i, align 4, !dbg !3154, !tbaa !1254
  %call13.i = call float @DecodePixelGamma(float noundef %8) #12, !dbg !3155
  call void @llvm.dbg.value(metadata float %call13.i, metadata !2217, metadata !DIExpression()) #10, !dbg !3138
  %9 = load float, ptr %blue5.i, align 8, !dbg !3156, !tbaa !1255
  %call15.i = call float @DecodePixelGamma(float noundef %9) #12, !dbg !3157
  call void @llvm.dbg.value(metadata float %call15.i, metadata !2215, metadata !DIExpression()) #10, !dbg !3138
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %blue.0.i = phi float [ %conv10.i, %if.then.i ], [ %call15.i, %if.else.i ], !dbg !3158
  %green.0.i = phi float [ %conv6.i265, %if.then.i ], [ %call13.i, %if.else.i ], !dbg !3158
  %red.0.i = phi float [ %conv2.i262, %if.then.i ], [ %call.i, %if.else.i ], !dbg !3158
  call void @llvm.dbg.value(metadata float %red.0.i, metadata !2219, metadata !DIExpression()) #10, !dbg !3138
  call void @llvm.dbg.value(metadata float %green.0.i, metadata !2217, metadata !DIExpression()) #10, !dbg !3138
  call void @llvm.dbg.value(metadata float %blue.0.i, metadata !2215, metadata !DIExpression()) #10, !dbg !3138
  %10 = call float @llvm.fabs.f32(float %red.0.i) #10, !dbg !3159
  %11 = fpext float %10 to double, !dbg !3159
  %cmp17.i = fcmp olt double %11, 1.000000e-15, !dbg !3160
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end27.i, !dbg !3161

land.lhs.true.i:                                  ; preds = %if.end.i
  %12 = call float @llvm.fabs.f32(float %green.0.i) #10, !dbg !3162
  %13 = fpext float %12 to double, !dbg !3162
  %cmp20.i = fcmp olt double %13, 1.000000e-15, !dbg !3163
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end27.i, !dbg !3164

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %14 = call float @llvm.fabs.f32(float %blue.0.i) #10, !dbg !3165
  %15 = fpext float %14 to double, !dbg !3165
  %cmp24.i = fcmp olt double %15, 1.000000e-15, !dbg !3166
  br i1 %cmp24.i, label %ConvertRGBToCMYK.exit, label %if.end27.i, !dbg !3167

if.end27.i:                                       ; preds = %land.lhs.true22.i, %land.lhs.true.i, %if.end.i
  %conv29.i = fsub float 1.000000e+00, %red.0.i, !dbg !3168
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !2216, metadata !DIExpression()) #10, !dbg !3138
  %conv32.i = fsub float 1.000000e+00, %green.0.i, !dbg !3169
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !2218, metadata !DIExpression()) #10, !dbg !3138
  %conv35.i = fsub float 1.000000e+00, %blue.0.i, !dbg !3170
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !2220, metadata !DIExpression()) #10, !dbg !3138
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !2214, metadata !DIExpression()) #10, !dbg !3138
  %cmp36.i = fcmp olt float %conv32.i, %conv29.i, !dbg !3171
  br i1 %cmp36.i, label %if.then38.i, label %if.end39.i, !dbg !3172

if.then38.i:                                      ; preds = %if.end27.i
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !2214, metadata !DIExpression()) #10, !dbg !3138
  br label %if.end39.i, !dbg !3173

if.end39.i:                                       ; preds = %if.then38.i, %if.end27.i
  %black.0.i = phi float [ %conv32.i, %if.then38.i ], [ %conv29.i, %if.end27.i ], !dbg !3138
  call void @llvm.dbg.value(metadata float %black.0.i, metadata !2214, metadata !DIExpression()) #10, !dbg !3138
  %cmp40.i = fcmp olt float %conv35.i, %black.0.i, !dbg !3174
  br i1 %cmp40.i, label %if.then42.i, label %if.end43.i, !dbg !3175

if.then42.i:                                      ; preds = %if.end39.i
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !2214, metadata !DIExpression()) #10, !dbg !3138
  br label %if.end43.i, !dbg !3176

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i
  %black.1.i = phi float [ %conv35.i, %if.then42.i ], [ %black.0.i, %if.end39.i ], !dbg !3138
  call void @llvm.dbg.value(metadata float %black.1.i, metadata !2214, metadata !DIExpression()) #10, !dbg !3138
  %sub44.i = fsub float %conv29.i, %black.1.i, !dbg !3177
  %conv45.i = fpext float %sub44.i to double, !dbg !3178
  %conv46.i = fpext float %black.1.i to double, !dbg !3179
  %sub47.i = fsub double 1.000000e+00, %conv46.i, !dbg !3180
  %div.i = fdiv double %conv45.i, %sub47.i, !dbg !3181
  %conv48.i = fptrunc double %div.i to float, !dbg !3182
  call void @llvm.dbg.value(metadata float %conv48.i, metadata !2216, metadata !DIExpression()) #10, !dbg !3138
  %sub49.i = fsub float %conv32.i, %black.1.i, !dbg !3183
  %conv50.i = fpext float %sub49.i to double, !dbg !3184
  %div53.i = fdiv double %conv50.i, %sub47.i, !dbg !3185
  %conv54.i = fptrunc double %div53.i to float, !dbg !3186
  call void @llvm.dbg.value(metadata float %conv54.i, metadata !2218, metadata !DIExpression()) #10, !dbg !3138
  %sub55.i = fsub float %conv35.i, %black.1.i, !dbg !3187
  %conv56.i = fpext float %sub55.i to double, !dbg !3188
  %div59.i = fdiv double %conv56.i, %sub47.i, !dbg !3189
  %conv60.i = fptrunc double %div59.i to float, !dbg !3190
  call void @llvm.dbg.value(metadata float %conv60.i, metadata !2220, metadata !DIExpression()) #10, !dbg !3138
  store i32 12, ptr %colorspace.i, align 4, !dbg !3191, !tbaa !2225
  %mul62.i = fmul float %conv48.i, 6.553500e+04, !dbg !3192
  store float %mul62.i, ptr %red1.i, align 8, !dbg !3193, !tbaa !1251
  %mul64.i = fmul float %conv54.i, 6.553500e+04, !dbg !3194
  store float %mul64.i, ptr %green3.i, align 4, !dbg !3195, !tbaa !1254
  %mul66.i = fmul float %conv60.i, 6.553500e+04, !dbg !3196
  store float %mul66.i, ptr %blue5.i, align 8, !dbg !3197, !tbaa !1255
  %mul68.i = fmul float %black.1.i, 6.553500e+04, !dbg !3198
  br label %ConvertRGBToCMYK.exit, !dbg !3199

ConvertRGBToCMYK.exit:                            ; preds = %land.lhs.true22.i, %if.end43.i
  %mul68.sink.i = phi float [ %mul68.i, %if.end43.i ], [ 6.553500e+04, %land.lhs.true22.i ]
  %index69.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 9, !dbg !3138
  store float %mul68.sink.i, ptr %index69.i, align 8, !dbg !3138, !tbaa !2290
  br label %if.end3, !dbg !3200

if.end3:                                          ; preds = %ConvertRGBToCMYK.exit, %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !740, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()), !dbg !3103
  %call4 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef %exception) #10, !dbg !3201
  call void @llvm.dbg.value(metadata ptr %call4, metadata !739, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !743, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 1, metadata !740, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()), !dbg !3103
  %cmp5919 = icmp sgt i64 %width, 0, !dbg !3202
  br i1 %cmp5919, label %for.body.lr.ph, label %for.end144, !dbg !3203

for.body.lr.ph:                                   ; preds = %if.end3
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %conv15 = uitofp i64 %width to double
  %div = fmul double %conv15, 5.000000e-01
  %pixel.sroa.3.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 32
  %pixel.sroa.10.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 36
  %pixel.sroa.17.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 40
  %pixel.sroa.24.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 44
  %pixel.sroa.31.0.background.sroa_idx = getelementptr inbounds i8, ptr %background, i64 48
  %cmp42860 = icmp sgt i64 %height, 0
  %red1.i281 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 5
  %green3.i284 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 6
  %blue5.i286 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 7
  %opacity7.i289 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 8
  %index15.i292 = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 9
  %opacity.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 8
  %red13.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 5
  %green20.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 6
  %blue27.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 7
  %colorspace.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %source, i64 0, i32 1
  %index35.i.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %destination, i64 0, i32 9
  %colorspace.i.i385 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 1
  %index30.i.i389 = getelementptr inbounds %struct._MagickPixelPacket, ptr %background, i64 0, i32 9
  %add87 = add i64 %y_offset, %height
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !3203

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0922 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %x.0921 = phi i64 [ 0, %for.body.lr.ph ], [ %inc143, %cleanup ]
  %progress.0920 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0922, metadata !740, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %x.0921, metadata !743, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %progress.0920, metadata !741, metadata !DIExpression()), !dbg !3103
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %source) #10, !dbg !3204
  call void @llvm.dbg.declare(metadata ptr %source, metadata !749, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %destination) #10, !dbg !3204
  call void @llvm.dbg.declare(metadata ptr %destination, metadata !750, metadata !DIExpression()), !dbg !3206
  %cmp6 = icmp eq i32 %status.0922, 0, !dbg !3207
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !3209

if.end8:                                          ; preds = %for.body
  %add = add nsw i64 %x.0921, %x_offset, !dbg !3210
  %16 = load i64, ptr %rows, align 8, !dbg !3211, !tbaa !915
  %call9 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call4, i64 noundef %add, i64 noundef 0, i64 noundef 1, i64 noundef %16, ptr noundef %exception) #12, !dbg !3212
  call void @llvm.dbg.value(metadata ptr %call9, metadata !756, metadata !DIExpression()), !dbg !3213
  %cmp10 = icmp eq ptr %call9, null, !dbg !3214
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !3216

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call4) #10, !dbg !3217
  call void @llvm.dbg.value(metadata ptr %call13, metadata !753, metadata !DIExpression()), !dbg !3213
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call9, i64 %y_offset, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !756, metadata !DIExpression()), !dbg !3213
  %add.ptr14 = getelementptr inbounds i16, ptr %call13, i64 %y_offset, !dbg !3219
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !753, metadata !DIExpression()), !dbg !3213
  %conv = sitofp i64 %x.0921 to double, !dbg !3220
  %sub = fsub double %conv, %div, !dbg !3221
  %conv16 = fptrunc double %sub to float, !dbg !3222
  %mul = fmul float %conv16, %degrees, !dbg !3223
  call void @llvm.dbg.value(metadata float %mul, metadata !752, metadata !DIExpression()), !dbg !3213
  %cmp18 = fcmp oeq float %mul, 0.000000e+00, !dbg !3224
  br i1 %cmp18, label %cleanup, label %if.end21, !dbg !3226

if.end21:                                         ; preds = %if.end12
  %cmp23 = fcmp ogt float %mul, 0.000000e+00, !dbg !3227
  br i1 %cmp23, label %if.end29, label %if.else, !dbg !3229

if.else:                                          ; preds = %if.end21
  %conv28 = fneg float %mul, !dbg !3230
  call void @llvm.dbg.value(metadata float %conv28, metadata !752, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 0, metadata !758, metadata !DIExpression()), !dbg !3213
  br label %if.end29

if.end29:                                         ; preds = %if.end21, %if.else
  %displacement.0 = phi float [ %conv28, %if.else ], [ %mul, %if.end21 ], !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !758, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata float %displacement.0, metadata !752, metadata !DIExpression()), !dbg !3213
  %17 = call float @llvm.floor.f32(float %displacement.0), !dbg !3232
  %conv31 = fptosi float %17 to i64, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %conv31, metadata !744, metadata !DIExpression()), !dbg !3213
  %conv32 = sitofp i64 %conv31 to float, !dbg !3234
  %sub33 = fsub float %displacement.0, %conv32, !dbg !3235
  call void @llvm.dbg.value(metadata float %sub33, metadata !751, metadata !DIExpression()), !dbg !3213
  %inc = add nsw i64 %conv31, 1, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %inc, metadata !744, metadata !DIExpression()), !dbg !3213
  %pixel.sroa.3.0.copyload = load float, ptr %pixel.sroa.3.0.background.sroa_idx, align 8, !dbg !3237, !tbaa.struct !2329
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  %pixel.sroa.10.0.copyload = load float, ptr %pixel.sroa.10.0.background.sroa_idx, align 4, !dbg !3237, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  %pixel.sroa.17.0.copyload = load float, ptr %pixel.sroa.17.0.background.sroa_idx, align 8, !dbg !3237, !tbaa.struct !2332
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  %pixel.sroa.24.0.copyload = load float, ptr %pixel.sroa.24.0.background.sroa_idx, align 4, !dbg !3237, !tbaa.struct !2333
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  %pixel.sroa.31.0.copyload = load float, ptr %pixel.sroa.31.0.background.sroa_idx, align 8, !dbg !3237, !tbaa.struct !2334
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !3213
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %source) #10, !dbg !3238
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %destination) #10, !dbg !3239
  br i1 %cmp23, label %sw.bb74, label %sw.bb, !dbg !3240

sw.bb:                                            ; preds = %if.end29
  %cmp34.not = icmp slt i64 %conv31, %y_offset, !dbg !3241
  br i1 %cmp34.not, label %if.end37, label %sw.epilog, !dbg !3245

if.end37:                                         ; preds = %sw.bb
  %idx.neg = xor i64 %conv31, -1, !dbg !3246
  %add.ptr38 = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr, i64 %idx.neg, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %add.ptr38, metadata !757, metadata !DIExpression()), !dbg !3213
  %add.ptr40 = getelementptr inbounds i16, ptr %add.ptr14, i64 %idx.neg, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %add.ptr40, metadata !754, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %add.ptr38, metadata !757, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !756, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !753, metadata !DIExpression()), !dbg !3213
  %conv.i296 = fpext float %sub33 to double
  %sub.i = fsub double 1.000000e+00, %conv.i296
  %neg.i = fneg double %sub.i
  %neg5.i = fneg float %sub33
  br i1 %cmp42860, label %for.body44.lr.ph, label %for.end, !dbg !3248

for.body44.lr.ph:                                 ; preds = %if.end37
  %18 = load i32, ptr %colorspace.i.i, align 4
  %cmp.i.i = icmp eq i32 %18, 12
  %index15.i292.promoted = load float, ptr %index15.i292, align 8, !tbaa !2290
  %index35.i.i.promoted = load float, ptr %index35.i.i, align 8, !tbaa !2290
  br label %for.body44, !dbg !3248

for.body44:                                       ; preds = %for.body44.lr.ph, %for.inc
  %conv34.i.i884 = phi float [ %index35.i.i.promoted, %for.body44.lr.ph ], [ %conv34.i.i885, %for.inc ]
  %conv14.i291881 = phi float [ %index15.i292.promoted, %for.body44.lr.ph ], [ %conv14.i291882, %for.inc ]
  %q.0873 = phi ptr [ %add.ptr38, %for.body44.lr.ph ], [ %q.1, %for.inc ]
  %p.0872 = phi ptr [ %add.ptr, %for.body44.lr.ph ], [ %p.1, %for.inc ]
  %i.0871 = phi i64 [ 0, %for.body44.lr.ph ], [ %inc59, %for.inc ]
  %shear_indexes.0867 = phi ptr [ %add.ptr40, %for.body44.lr.ph ], [ %shear_indexes.1, %for.inc ]
  %indexes.0866 = phi ptr [ %add.ptr14, %for.body44.lr.ph ], [ %indexes.1, %for.inc ]
  %pixel.sroa.3.0865 = phi float [ %pixel.sroa.3.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.3.1, %for.inc ]
  %pixel.sroa.10.0864 = phi float [ %pixel.sroa.10.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.10.1, %for.inc ]
  %pixel.sroa.17.0863 = phi float [ %pixel.sroa.17.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.17.1, %for.inc ]
  %pixel.sroa.24.0862 = phi float [ %pixel.sroa.24.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.24.1, %for.inc ]
  %pixel.sroa.31.0861 = phi float [ %pixel.sroa.31.0.copyload, %for.body44.lr.ph ], [ %pixel.sroa.31.3, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %q.0873, metadata !757, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %p.0872, metadata !756, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %i.0871, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0867, metadata !754, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %indexes.0866, metadata !753, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.0865, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.0864, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.0863, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0862, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.0861, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  %add45 = add nsw i64 %i.0871, %y_offset, !dbg !3250
  %cmp46.not = icmp sgt i64 %add45, %conv31, !dbg !3254
  br i1 %cmp46.not, label %if.end52, label %if.then48, !dbg !3255

if.then48:                                        ; preds = %for.body44
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 1, !dbg !3256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !756, metadata !DIExpression()), !dbg !3213
  %incdec.ptr49 = getelementptr inbounds i16, ptr %indexes.0866, i64 1, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %incdec.ptr49, metadata !753, metadata !DIExpression()), !dbg !3213
  %image.val259 = load i32, ptr %1, align 4, !dbg !3259, !tbaa !2205
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2182, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %incdec.ptr49, metadata !2183, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr undef, metadata !2184, metadata !DIExpression()), !dbg !3260
  %red.i266 = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 1, i32 2, !dbg !3262
  %19 = load i16, ptr %red.i266, align 2, !dbg !3262, !tbaa !981
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  %green.i269 = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 1, i32 1, !dbg !3263
  %20 = load i16, ptr %green.i269, align 2, !dbg !3263, !tbaa !986
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  %21 = load i16, ptr %incdec.ptr, align 2, !dbg !3264, !tbaa !991
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  %opacity.i274 = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 1, i32 3, !dbg !3265
  %22 = load i16, ptr %opacity.i274, align 2, !dbg !3265, !tbaa !1268
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  %cmp.i277 = icmp eq i32 %image.val259, 12, !dbg !3266
  br i1 %cmp.i277, label %cond.end.i, label %for.inc, !dbg !3267

cond.end.i:                                       ; preds = %if.then48
  %23 = load i16, ptr %incdec.ptr49, align 2, !dbg !3268, !tbaa !950
  %conv14.i = uitofp i16 %23 to float, !dbg !3269
  call void @llvm.dbg.value(metadata float %conv14.i, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  br label %for.inc, !dbg !3270

if.end52:                                         ; preds = %for.body44
  %image.val258 = load i32, ptr %1, align 4, !dbg !3271, !tbaa !2205
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %p.0872, metadata !2182, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %indexes.0866, metadata !2183, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata ptr %source, metadata !2184, metadata !DIExpression()), !dbg !3272
  %red.i279 = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 0, i32 2, !dbg !3274
  %24 = load i16, ptr %red.i279, align 2, !dbg !3274, !tbaa !981
  %conv.i280 = uitofp i16 %24 to float, !dbg !3275
  store float %conv.i280, ptr %red1.i281, align 8, !dbg !3276, !tbaa !1251
  %green.i282 = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 0, i32 1, !dbg !3277
  %25 = load i16, ptr %green.i282, align 2, !dbg !3277, !tbaa !986
  %conv2.i283 = uitofp i16 %25 to float, !dbg !3278
  store float %conv2.i283, ptr %green3.i284, align 4, !dbg !3279, !tbaa !1254
  %26 = load i16, ptr %p.0872, align 2, !dbg !3280, !tbaa !991
  %conv4.i285 = uitofp i16 %26 to float, !dbg !3281
  store float %conv4.i285, ptr %blue5.i286, align 8, !dbg !3282, !tbaa !1255
  %opacity.i287 = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 0, i32 3, !dbg !3283
  %27 = load i16, ptr %opacity.i287, align 2, !dbg !3283, !tbaa !1268
  %conv6.i288 = uitofp i16 %27 to float, !dbg !3284
  store float %conv6.i288, ptr %opacity7.i289, align 4, !dbg !3285, !tbaa !1256
  %cmp.i290 = icmp eq i32 %image.val258, 12, !dbg !3286
  %cmp9.i = icmp ne ptr %indexes.0866, null
  %or.cond.i = and i1 %cmp9.i, %cmp.i290, !dbg !3287
  br i1 %or.cond.i, label %cond.end.i293, label %SetMagickPixelPacket.exit295, !dbg !3287

cond.end.i293:                                    ; preds = %if.end52
  %28 = load i16, ptr %indexes.0866, align 2, !dbg !3288, !tbaa !950
  %conv14.i291 = uitofp i16 %28 to float, !dbg !3289
  store float %conv14.i291, ptr %index15.i292, align 8, !dbg !3290, !tbaa !2290
  br label %SetMagickPixelPacket.exit295, !dbg !3291

SetMagickPixelPacket.exit295:                     ; preds = %if.end52, %cond.end.i293
  %conv14.i291883 = phi float [ %conv14.i291881, %if.end52 ], [ %conv14.i291, %cond.end.i293 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !2390, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0862, metadata !2398, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %source, metadata !2399, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata float %conv6.i288, metadata !2400, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata float %sub33, metadata !2401, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2402, metadata !DIExpression()) #10, !dbg !3292
  %sub1.i = fsub float 6.553500e+04, %pixel.sroa.24.0862, !dbg !3294
  %conv2.i297 = fpext float %sub1.i to double, !dbg !3295
  %29 = call double @llvm.fmuladd.f64(double %neg.i, double %conv2.i297, double 6.553500e+04) #10, !dbg !3296
  %conv3.i = fptrunc double %29 to float, !dbg !3297
  %sub4.i = fsub float 6.553500e+04, %conv6.i288, !dbg !3298
  %30 = call float @llvm.fmuladd.f32(float %neg5.i, float %sub4.i, float 6.553500e+04) #10, !dbg !3299
  call void @llvm.dbg.value(metadata ptr undef, metadata !2411, metadata !DIExpression()) #10, !dbg !3300
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !2416, metadata !DIExpression()) #10, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %source, metadata !2417, metadata !DIExpression()) #10, !dbg !3300
  call void @llvm.dbg.value(metadata float %30, metadata !2418, metadata !DIExpression()) #10, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2419, metadata !DIExpression()) #10, !dbg !3300
  %conv.i.i = fpext float %conv3.i to double, !dbg !3302
  %31 = call double @llvm.fmuladd.f64(double %conv.i.i, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !3303
  %conv1.i.i = fptrunc double %31 to float, !dbg !3304
  call void @llvm.dbg.value(metadata float %conv1.i.i, metadata !2422, metadata !DIExpression()) #10, !dbg !3300
  %conv2.i.i = fpext float %30 to double, !dbg !3305
  %32 = call double @llvm.fmuladd.f64(double %conv2.i.i, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !3306
  %conv3.i.i = fptrunc double %32 to float, !dbg !3307
  call void @llvm.dbg.value(metadata float %conv3.i.i, metadata !2421, metadata !DIExpression()) #10, !dbg !3300
  %add.i.i = fadd float %conv1.i.i, %conv3.i.i, !dbg !3308
  call void @llvm.dbg.value(metadata float %add.i.i, metadata !2432, metadata !DIExpression()) #10, !dbg !3309
  %cmp.i.i.i = fcmp olt float %add.i.i, 0.000000e+00, !dbg !3311
  br i1 %cmp.i.i.i, label %RoundToUnity.exit.i.i, label %cond.false.i.i.i, !dbg !3312

cond.false.i.i.i:                                 ; preds = %SetMagickPixelPacket.exit295
  %cmp3.i.i.i = fcmp ogt float %add.i.i, 1.000000e+00, !dbg !3313
  br i1 %cmp3.i.i.i, label %RoundToUnity.exit.i.i, label %cond.false6.i.i.i, !dbg !3314

cond.false6.i.i.i:                                ; preds = %cond.false.i.i.i
  %phi.cast.i.i = fpext float %add.i.i to double, !dbg !3314
  br label %RoundToUnity.exit.i.i, !dbg !3314

RoundToUnity.exit.i.i:                            ; preds = %cond.false6.i.i.i, %cond.false.i.i.i, %SetMagickPixelPacket.exit295
  %cond9.i.i.i = phi double [ 0.000000e+00, %SetMagickPixelPacket.exit295 ], [ %phi.cast.i.i, %cond.false6.i.i.i ], [ 1.000000e+00, %cond.false.i.i.i ]
  call void @llvm.dbg.value(metadata double %cond9.i.i.i, metadata !2420, metadata !DIExpression()) #10, !dbg !3300
  %sub.i.i = fsub double 1.000000e+00, %cond9.i.i.i, !dbg !3315
  %mul.i.i = fmul double %sub.i.i, 6.553500e+04, !dbg !3316
  %conv5.i.i = fptrunc double %mul.i.i to float, !dbg !3317
  store float %conv5.i.i, ptr %opacity.i.i, align 4, !dbg !3318, !tbaa !1256
  call void @llvm.dbg.value(metadata double %cond9.i.i.i, metadata !2445, metadata !DIExpression()) #10, !dbg !3319
  %cmp.i60.i.i = fcmp olt double %cond9.i.i.i, 0.000000e+00, !dbg !3321
  %cond.i.i.i = select i1 %cmp.i60.i.i, double -1.000000e+00, double 1.000000e+00, !dbg !3322
  call void @llvm.dbg.value(metadata double %cond.i.i.i, metadata !2448, metadata !DIExpression()) #10, !dbg !3319
  %mul.i.i.i = fmul double %cond9.i.i.i, %cond.i.i.i, !dbg !3323
  %cmp1.i.i.i = fcmp ult double %mul.i.i.i, 1.000000e-15, !dbg !3324
  br i1 %cmp1.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !dbg !3325

if.then.i.i.i:                                    ; preds = %RoundToUnity.exit.i.i
  %div.i.i.i = fdiv double 1.000000e+00, %cond9.i.i.i, !dbg !3326
  br label %PerceptibleReciprocal.exit.i.i, !dbg !3327

if.end.i.i.i:                                     ; preds = %RoundToUnity.exit.i.i
  %div2.i.i.i = fdiv double %cond.i.i.i, 1.000000e-15, !dbg !3328
  br label %PerceptibleReciprocal.exit.i.i, !dbg !3329

PerceptibleReciprocal.exit.i.i:                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi double [ %div.i.i.i, %if.then.i.i.i ], [ %div2.i.i.i, %if.end.i.i.i ], !dbg !3319
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i, metadata !2420, metadata !DIExpression()) #10, !dbg !3300
  %mul9.i.i = fmul float %conv.i280, %conv3.i.i, !dbg !3330
  %33 = call float @llvm.fmuladd.f32(float %conv1.i.i, float %pixel.sroa.3.0865, float %mul9.i.i) #10, !dbg !3331
  %conv10.i.i = fpext float %33 to double, !dbg !3332
  %mul11.i.i = fmul double %retval.0.i.i.i, %conv10.i.i, !dbg !3333
  %conv12.i.i = fptrunc double %mul11.i.i to float, !dbg !3334
  store float %conv12.i.i, ptr %red13.i.i, align 8, !dbg !3335, !tbaa !1251
  %mul16.i.i = fmul float %conv2.i283, %conv3.i.i, !dbg !3336
  %34 = call float @llvm.fmuladd.f32(float %conv1.i.i, float %pixel.sroa.10.0864, float %mul16.i.i) #10, !dbg !3337
  %conv17.i.i = fpext float %34 to double, !dbg !3338
  %mul18.i.i = fmul double %retval.0.i.i.i, %conv17.i.i, !dbg !3339
  %conv19.i.i = fptrunc double %mul18.i.i to float, !dbg !3340
  store float %conv19.i.i, ptr %green20.i.i, align 4, !dbg !3341, !tbaa !1254
  %mul23.i.i = fmul float %conv4.i285, %conv3.i.i, !dbg !3342
  %35 = call float @llvm.fmuladd.f32(float %conv1.i.i, float %pixel.sroa.17.0863, float %mul23.i.i) #10, !dbg !3343
  %conv24.i.i = fpext float %35 to double, !dbg !3344
  %mul25.i.i = fmul double %retval.0.i.i.i, %conv24.i.i, !dbg !3345
  %conv26.i.i = fptrunc double %mul25.i.i to float, !dbg !3346
  store float %conv26.i.i, ptr %blue27.i.i, align 8, !dbg !3347, !tbaa !1255
  br i1 %cmp.i.i, label %if.then.i.i, label %MagickPixelCompositeAreaBlend.exit, !dbg !3348

if.then.i.i:                                      ; preds = %PerceptibleReciprocal.exit.i.i
  %mul31.i.i = fmul float %conv14.i291883, %conv3.i.i, !dbg !3349
  %36 = call float @llvm.fmuladd.f32(float %conv1.i.i, float %pixel.sroa.31.0861, float %mul31.i.i) #10, !dbg !3350
  %conv32.i.i = fpext float %36 to double, !dbg !3351
  %mul33.i.i = fmul double %retval.0.i.i.i, %conv32.i.i, !dbg !3352
  %conv34.i.i = fptrunc double %mul33.i.i to float, !dbg !3353
  store float %conv34.i.i, ptr %index35.i.i, align 8, !dbg !3354, !tbaa !2290
  br label %MagickPixelCompositeAreaBlend.exit, !dbg !3355

MagickPixelCompositeAreaBlend.exit:               ; preds = %PerceptibleReciprocal.exit.i.i, %if.then.i.i
  %conv34.i.i886 = phi float [ %conv34.i.i884, %PerceptibleReciprocal.exit.i.i ], [ %conv34.i.i, %if.then.i.i ]
  call void @llvm.dbg.value(metadata ptr %q.0873, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0867, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2493, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %q.0873, metadata !2494, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0867, metadata !2495, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata float %conv12.i.i, metadata !1284, metadata !DIExpression()), !dbg !3358
  %cmp.i.i299 = fcmp ugt float %conv12.i.i, 0.000000e+00, !dbg !3360
  br i1 %cmp.i.i299, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !3361

if.end.i.i:                                       ; preds = %MagickPixelCompositeAreaBlend.exit
  %cmp1.i.i = fcmp ult float %conv12.i.i, 6.553500e+04, !dbg !3362
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !3363

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i300 = fadd float %conv12.i.i, 5.000000e-01, !dbg !3364
  %conv.i.i301 = fptoui float %add.i.i300 to i16, !dbg !3365
  br label %ClampToQuantum.exit.i, !dbg !3366

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %MagickPixelCompositeAreaBlend.exit
  %retval.0.i.i = phi i16 [ %conv.i.i301, %if.end3.i.i ], [ 0, %MagickPixelCompositeAreaBlend.exit ], [ -1, %if.end.i.i ], !dbg !3358
  %red1.i302 = getelementptr inbounds %struct._PixelPacket, ptr %q.0873, i64 0, i32 2, !dbg !3367
  store i16 %retval.0.i.i, ptr %red1.i302, align 2, !dbg !3367, !tbaa !981
  call void @llvm.dbg.value(metadata float %conv19.i.i, metadata !1284, metadata !DIExpression()), !dbg !3368
  %cmp.i23.i = fcmp ugt float %conv19.i.i, 0.000000e+00, !dbg !3370
  br i1 %cmp.i23.i, label %if.end.i25.i, label %ClampToQuantum.exit30.i, !dbg !3371

if.end.i25.i:                                     ; preds = %ClampToQuantum.exit.i
  %cmp1.i24.i = fcmp ult float %conv19.i.i, 6.553500e+04, !dbg !3372
  br i1 %cmp1.i24.i, label %if.end3.i28.i, label %ClampToQuantum.exit30.i, !dbg !3373

if.end3.i28.i:                                    ; preds = %if.end.i25.i
  %add.i26.i = fadd float %conv19.i.i, 5.000000e-01, !dbg !3374
  %conv.i27.i = fptoui float %add.i26.i to i16, !dbg !3375
  br label %ClampToQuantum.exit30.i, !dbg !3376

ClampToQuantum.exit30.i:                          ; preds = %if.end3.i28.i, %if.end.i25.i, %ClampToQuantum.exit.i
  %retval.0.i29.i = phi i16 [ %conv.i27.i, %if.end3.i28.i ], [ 0, %ClampToQuantum.exit.i ], [ -1, %if.end.i25.i ], !dbg !3368
  %green3.i304 = getelementptr inbounds %struct._PixelPacket, ptr %q.0873, i64 0, i32 1, !dbg !3377
  store i16 %retval.0.i29.i, ptr %green3.i304, align 2, !dbg !3377, !tbaa !986
  call void @llvm.dbg.value(metadata float %conv26.i.i, metadata !1284, metadata !DIExpression()), !dbg !3378
  %cmp.i31.i = fcmp ugt float %conv26.i.i, 0.000000e+00, !dbg !3380
  br i1 %cmp.i31.i, label %if.end.i33.i, label %ClampToQuantum.exit38.i, !dbg !3381

if.end.i33.i:                                     ; preds = %ClampToQuantum.exit30.i
  %cmp1.i32.i = fcmp ult float %conv26.i.i, 6.553500e+04, !dbg !3382
  br i1 %cmp1.i32.i, label %if.end3.i36.i, label %ClampToQuantum.exit38.i, !dbg !3383

if.end3.i36.i:                                    ; preds = %if.end.i33.i
  %add.i34.i = fadd float %conv26.i.i, 5.000000e-01, !dbg !3384
  %conv.i35.i = fptoui float %add.i34.i to i16, !dbg !3385
  br label %ClampToQuantum.exit38.i, !dbg !3386

ClampToQuantum.exit38.i:                          ; preds = %if.end3.i36.i, %if.end.i33.i, %ClampToQuantum.exit30.i
  %retval.0.i37.i = phi i16 [ %conv.i35.i, %if.end3.i36.i ], [ 0, %ClampToQuantum.exit30.i ], [ -1, %if.end.i33.i ], !dbg !3378
  store i16 %retval.0.i37.i, ptr %q.0873, align 2, !dbg !3387, !tbaa !991
  call void @llvm.dbg.value(metadata float %conv5.i.i, metadata !1284, metadata !DIExpression()), !dbg !3388
  %cmp.i39.i = fcmp ugt float %conv5.i.i, 0.000000e+00, !dbg !3390
  br i1 %cmp.i39.i, label %if.end.i41.i, label %ClampToQuantum.exit46.i, !dbg !3391

if.end.i41.i:                                     ; preds = %ClampToQuantum.exit38.i
  %cmp1.i40.i = fcmp ult float %conv5.i.i, 6.553500e+04, !dbg !3392
  br i1 %cmp1.i40.i, label %if.end3.i44.i, label %ClampToQuantum.exit46.i, !dbg !3393

if.end3.i44.i:                                    ; preds = %if.end.i41.i
  %add.i42.i = fadd float %conv5.i.i, 5.000000e-01, !dbg !3394
  %conv.i43.i = fptoui float %add.i42.i to i16, !dbg !3395
  br label %ClampToQuantum.exit46.i, !dbg !3396

ClampToQuantum.exit46.i:                          ; preds = %if.end3.i44.i, %if.end.i41.i, %ClampToQuantum.exit38.i
  %retval.0.i45.i = phi i16 [ %conv.i43.i, %if.end3.i44.i ], [ 0, %ClampToQuantum.exit38.i ], [ -1, %if.end.i41.i ], !dbg !3388
  %opacity7.i306 = getelementptr inbounds %struct._PixelPacket, ptr %q.0873, i64 0, i32 3, !dbg !3397
  store i16 %retval.0.i45.i, ptr %opacity7.i306, align 2, !dbg !3397, !tbaa !1268
  br i1 %cmp.i290, label %if.then.i311, label %lor.lhs.false.i, !dbg !3398

lor.lhs.false.i:                                  ; preds = %ClampToQuantum.exit46.i
  %37 = load i32, ptr %image, align 8, !dbg !3399, !tbaa !2541
  %cmp8.i = icmp eq i32 %37, 2, !dbg !3400
  %cmp9.i309 = icmp ne ptr %shear_indexes.0867, null
  %or.cond.i310 = and i1 %cmp9.i309, %cmp8.i, !dbg !3401
  br i1 %or.cond.i310, label %if.then10.i, label %SetPixelPacket.exit.thread, !dbg !3401

SetPixelPacket.exit.thread:                       ; preds = %lor.lhs.false.i
  %incdec.ptr57964 = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 1, !dbg !3402
  call void @llvm.dbg.value(metadata ptr %incdec.ptr57, metadata !756, metadata !DIExpression()), !dbg !3213
  %incdec.ptr58965 = getelementptr inbounds i16, ptr %indexes.0866, i64 1, !dbg !3403
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58, metadata !753, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %p.0872, metadata !2182, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %indexes.0866, metadata !2183, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr undef, metadata !2184, metadata !DIExpression()), !dbg !3404
  %38 = load i16, ptr %red.i279, align 2, !dbg !3406, !tbaa !981
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  %39 = load i16, ptr %green.i282, align 2, !dbg !3407, !tbaa !986
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  %40 = load i16, ptr %p.0872, align 2, !dbg !3408, !tbaa !991
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  %41 = load i16, ptr %opacity.i287, align 2, !dbg !3409, !tbaa !1268
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  br label %for.inc, !dbg !3410

if.then.i311:                                     ; preds = %ClampToQuantum.exit46.i
  %cmp9.old.not.i = icmp eq ptr %shear_indexes.0867, null, !dbg !3411
  br i1 %cmp9.old.not.i, label %SetPixelPacket.exit, label %if.then10.i, !dbg !3412

if.then10.i:                                      ; preds = %if.then.i311, %lor.lhs.false.i
  call void @llvm.dbg.value(metadata float %conv34.i.i886, metadata !1284, metadata !DIExpression()), !dbg !3413
  %cmp.i47.i = fcmp ugt float %conv34.i.i886, 0.000000e+00, !dbg !3415
  br i1 %cmp.i47.i, label %if.end.i49.i, label %ClampToQuantum.exit54.i, !dbg !3416

if.end.i49.i:                                     ; preds = %if.then10.i
  %cmp1.i48.i = fcmp ult float %conv34.i.i886, 6.553500e+04, !dbg !3417
  br i1 %cmp1.i48.i, label %if.end3.i52.i, label %ClampToQuantum.exit54.i, !dbg !3418

if.end3.i52.i:                                    ; preds = %if.end.i49.i
  %add.i50.i = fadd float %conv34.i.i886, 5.000000e-01, !dbg !3419
  %conv.i51.i = fptoui float %add.i50.i to i16, !dbg !3420
  br label %ClampToQuantum.exit54.i, !dbg !3421

ClampToQuantum.exit54.i:                          ; preds = %if.end3.i52.i, %if.end.i49.i, %if.then10.i
  %retval.0.i53.i = phi i16 [ %conv.i51.i, %if.end3.i52.i ], [ 0, %if.then10.i ], [ -1, %if.end.i49.i ], !dbg !3413
  store i16 %retval.0.i53.i, ptr %shear_indexes.0867, align 2, !dbg !3411, !tbaa !950
  br label %SetPixelPacket.exit, !dbg !3411

SetPixelPacket.exit:                              ; preds = %if.then.i311, %ClampToQuantum.exit54.i
  %incdec.ptr57 = getelementptr inbounds %struct._PixelPacket, ptr %p.0872, i64 1, !dbg !3402
  call void @llvm.dbg.value(metadata ptr %incdec.ptr57, metadata !756, metadata !DIExpression()), !dbg !3213
  %incdec.ptr58 = getelementptr inbounds i16, ptr %indexes.0866, i64 1, !dbg !3403
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58, metadata !753, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %p.0872, metadata !2182, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %indexes.0866, metadata !2183, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr undef, metadata !2184, metadata !DIExpression()), !dbg !3404
  %42 = load i16, ptr %red.i279, align 2, !dbg !3406, !tbaa !981
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  %43 = load i16, ptr %green.i282, align 2, !dbg !3407, !tbaa !986
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  %44 = load i16, ptr %p.0872, align 2, !dbg !3408, !tbaa !991
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  %45 = load i16, ptr %opacity.i287, align 2, !dbg !3409, !tbaa !1268
  call void @llvm.dbg.value(metadata float undef, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  br i1 %or.cond.i, label %cond.end.i328, label %for.inc, !dbg !3410

cond.end.i328:                                    ; preds = %SetPixelPacket.exit
  %46 = load i16, ptr %indexes.0866, align 2, !dbg !3422, !tbaa !950
  %conv14.i326 = uitofp i16 %46 to float, !dbg !3423
  call void @llvm.dbg.value(metadata float %conv14.i326, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  br label %for.inc, !dbg !3424

for.inc:                                          ; preds = %SetPixelPacket.exit.thread, %cond.end.i328, %SetPixelPacket.exit, %cond.end.i, %if.then48
  %conv34.i.i885 = phi float [ %conv34.i.i884, %cond.end.i ], [ %conv34.i.i884, %if.then48 ], [ %conv34.i.i886, %cond.end.i328 ], [ %conv34.i.i886, %SetPixelPacket.exit ], [ %conv34.i.i886, %SetPixelPacket.exit.thread ]
  %conv14.i291882 = phi float [ %conv14.i291881, %cond.end.i ], [ %conv14.i291881, %if.then48 ], [ %conv14.i291883, %cond.end.i328 ], [ %conv14.i291883, %SetPixelPacket.exit ], [ %conv14.i291883, %SetPixelPacket.exit.thread ]
  %pixel.sroa.31.3 = phi float [ %conv14.i, %cond.end.i ], [ %pixel.sroa.31.0861, %if.then48 ], [ %conv14.i326, %cond.end.i328 ], [ %pixel.sroa.31.0861, %SetPixelPacket.exit ], [ %pixel.sroa.31.0861, %SetPixelPacket.exit.thread ], !dbg !3425
  %pixel.sroa.24.1.in = phi i16 [ %22, %cond.end.i ], [ %22, %if.then48 ], [ %45, %cond.end.i328 ], [ %45, %SetPixelPacket.exit ], [ %41, %SetPixelPacket.exit.thread ]
  %pixel.sroa.17.1.in = phi i16 [ %21, %cond.end.i ], [ %21, %if.then48 ], [ %44, %cond.end.i328 ], [ %44, %SetPixelPacket.exit ], [ %40, %SetPixelPacket.exit.thread ]
  %pixel.sroa.10.1.in = phi i16 [ %20, %cond.end.i ], [ %20, %if.then48 ], [ %43, %cond.end.i328 ], [ %43, %SetPixelPacket.exit ], [ %39, %SetPixelPacket.exit.thread ]
  %pixel.sroa.3.1.in = phi i16 [ %19, %cond.end.i ], [ %19, %if.then48 ], [ %42, %cond.end.i328 ], [ %42, %SetPixelPacket.exit ], [ %38, %SetPixelPacket.exit.thread ]
  %indexes.1 = phi ptr [ %incdec.ptr49, %cond.end.i ], [ %incdec.ptr49, %if.then48 ], [ %incdec.ptr58, %cond.end.i328 ], [ %incdec.ptr58, %SetPixelPacket.exit ], [ %incdec.ptr58965, %SetPixelPacket.exit.thread ], !dbg !3425
  %p.1 = phi ptr [ %incdec.ptr, %cond.end.i ], [ %incdec.ptr, %if.then48 ], [ %incdec.ptr57, %cond.end.i328 ], [ %incdec.ptr57, %SetPixelPacket.exit ], [ %incdec.ptr57964, %SetPixelPacket.exit.thread ], !dbg !3425
  %pixel.sroa.3.1 = uitofp i16 %pixel.sroa.3.1.in to float, !dbg !3425
  %pixel.sroa.10.1 = uitofp i16 %pixel.sroa.10.1.in to float, !dbg !3425
  %pixel.sroa.17.1 = uitofp i16 %pixel.sroa.17.1.in to float, !dbg !3425
  %pixel.sroa.24.1 = uitofp i16 %pixel.sroa.24.1.in to float, !dbg !3425
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.1, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.1, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.1, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.1, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  %shear_indexes.1 = getelementptr inbounds i16, ptr %shear_indexes.0867, i64 1, !dbg !3425
  %q.1 = getelementptr inbounds %struct._PixelPacket, ptr %q.0873, i64 1, !dbg !3425
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !757, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !756, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.1, metadata !754, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %indexes.1, metadata !753, metadata !DIExpression()), !dbg !3213
  %inc59 = add nuw nsw i64 %i.0871, 1, !dbg !3426
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.1, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.1, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.1, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.1, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %inc59, metadata !755, metadata !DIExpression()), !dbg !3213
  %exitcond.not = icmp eq i64 %inc59, %height, !dbg !3427
  br i1 %exitcond.not, label %for.end, label %for.body44, !dbg !3248, !llvm.loop !3428

for.end:                                          ; preds = %for.inc, %if.end37
  %pixel.sroa.31.0.lcssa = phi float [ %pixel.sroa.31.0.copyload, %if.end37 ], [ %pixel.sroa.31.3, %for.inc ], !dbg !3213
  %pixel.sroa.24.0.lcssa = phi float [ %pixel.sroa.24.0.copyload, %if.end37 ], [ %pixel.sroa.24.1, %for.inc ], !dbg !3213
  %pixel.sroa.17.0.lcssa = phi float [ %pixel.sroa.17.0.copyload, %if.end37 ], [ %pixel.sroa.17.1, %for.inc ], !dbg !3213
  %pixel.sroa.10.0.lcssa = phi float [ %pixel.sroa.10.0.copyload, %if.end37 ], [ %pixel.sroa.10.1, %for.inc ], !dbg !3213
  %pixel.sroa.3.0.lcssa = phi float [ %pixel.sroa.3.0.copyload, %if.end37 ], [ %pixel.sroa.3.1, %for.inc ], !dbg !3213
  %shear_indexes.0.lcssa = phi ptr [ %add.ptr40, %if.end37 ], [ %shear_indexes.1, %for.inc ], !dbg !3430
  %q.0.lcssa = phi ptr [ %add.ptr38, %if.end37 ], [ %q.1, %for.inc ], !dbg !3430
  %47 = load float, ptr %opacity7.i, align 4, !dbg !3431, !tbaa !1256
  call void @llvm.dbg.value(metadata ptr undef, metadata !2390, metadata !DIExpression()) #10, !dbg !3432
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0.lcssa, metadata !2398, metadata !DIExpression()) #10, !dbg !3432
  call void @llvm.dbg.value(metadata ptr %background, metadata !2399, metadata !DIExpression()) #10, !dbg !3432
  call void @llvm.dbg.value(metadata float %47, metadata !2400, metadata !DIExpression()) #10, !dbg !3432
  call void @llvm.dbg.value(metadata float %sub33, metadata !2401, metadata !DIExpression()) #10, !dbg !3432
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2402, metadata !DIExpression()) #10, !dbg !3432
  %sub1.i333 = fsub float 6.553500e+04, %pixel.sroa.24.0.lcssa, !dbg !3434
  %conv2.i334 = fpext float %sub1.i333 to double, !dbg !3435
  %48 = call double @llvm.fmuladd.f64(double %neg.i, double %conv2.i334, double 6.553500e+04) #10, !dbg !3436
  %conv3.i336 = fptrunc double %48 to float, !dbg !3437
  %sub4.i337 = fsub float 6.553500e+04, %47, !dbg !3438
  %49 = call float @llvm.fmuladd.f32(float %neg5.i, float %sub4.i337, float 6.553500e+04) #10, !dbg !3439
  call void @llvm.dbg.value(metadata ptr undef, metadata !2411, metadata !DIExpression()) #10, !dbg !3440
  call void @llvm.dbg.value(metadata float %conv3.i336, metadata !2416, metadata !DIExpression()) #10, !dbg !3440
  call void @llvm.dbg.value(metadata ptr %background, metadata !2417, metadata !DIExpression()) #10, !dbg !3440
  call void @llvm.dbg.value(metadata float %49, metadata !2418, metadata !DIExpression()) #10, !dbg !3440
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2419, metadata !DIExpression()) #10, !dbg !3440
  %conv.i.i339 = fpext float %conv3.i336 to double, !dbg !3442
  %50 = call double @llvm.fmuladd.f64(double %conv.i.i339, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !3443
  %conv1.i.i340 = fptrunc double %50 to float, !dbg !3444
  call void @llvm.dbg.value(metadata float %conv1.i.i340, metadata !2422, metadata !DIExpression()) #10, !dbg !3440
  %conv2.i.i341 = fpext float %49 to double, !dbg !3445
  %51 = call double @llvm.fmuladd.f64(double %conv2.i.i341, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !3446
  %conv3.i.i342 = fptrunc double %51 to float, !dbg !3447
  call void @llvm.dbg.value(metadata float %conv3.i.i342, metadata !2421, metadata !DIExpression()) #10, !dbg !3440
  %add.i.i343 = fadd float %conv1.i.i340, %conv3.i.i342, !dbg !3448
  call void @llvm.dbg.value(metadata float %add.i.i343, metadata !2432, metadata !DIExpression()) #10, !dbg !3449
  %cmp.i.i.i344 = fcmp olt float %add.i.i343, 0.000000e+00, !dbg !3451
  br i1 %cmp.i.i.i344, label %RoundToUnity.exit.i.i358, label %cond.false.i.i.i346, !dbg !3452

cond.false.i.i.i346:                              ; preds = %for.end
  %cmp3.i.i.i345 = fcmp ogt float %add.i.i343, 1.000000e+00, !dbg !3453
  br i1 %cmp3.i.i.i345, label %RoundToUnity.exit.i.i358, label %cond.false6.i.i.i348, !dbg !3454

cond.false6.i.i.i348:                             ; preds = %cond.false.i.i.i346
  %phi.cast.i.i347 = fpext float %add.i.i343 to double, !dbg !3454
  br label %RoundToUnity.exit.i.i358, !dbg !3454

RoundToUnity.exit.i.i358:                         ; preds = %cond.false6.i.i.i348, %cond.false.i.i.i346, %for.end
  %cond9.i.i.i349 = phi double [ 0.000000e+00, %for.end ], [ %phi.cast.i.i347, %cond.false6.i.i.i348 ], [ 1.000000e+00, %cond.false.i.i.i346 ]
  call void @llvm.dbg.value(metadata double %cond9.i.i.i349, metadata !2420, metadata !DIExpression()) #10, !dbg !3440
  %sub.i.i350 = fsub double 1.000000e+00, %cond9.i.i.i349, !dbg !3455
  %mul.i.i351 = fmul double %sub.i.i350, 6.553500e+04, !dbg !3456
  %conv5.i.i352 = fptrunc double %mul.i.i351 to float, !dbg !3457
  store float %conv5.i.i352, ptr %opacity.i.i, align 4, !dbg !3458, !tbaa !1256
  call void @llvm.dbg.value(metadata double %cond9.i.i.i349, metadata !2445, metadata !DIExpression()) #10, !dbg !3459
  %cmp.i60.i.i354 = fcmp olt double %cond9.i.i.i349, 0.000000e+00, !dbg !3461
  %cond.i.i.i355 = select i1 %cmp.i60.i.i354, double -1.000000e+00, double 1.000000e+00, !dbg !3462
  call void @llvm.dbg.value(metadata double %cond.i.i.i355, metadata !2448, metadata !DIExpression()) #10, !dbg !3459
  %mul.i.i.i356 = fmul double %cond9.i.i.i349, %cond.i.i.i355, !dbg !3463
  %cmp1.i.i.i357 = fcmp ult double %mul.i.i.i356, 1.000000e-15, !dbg !3464
  br i1 %cmp1.i.i.i357, label %if.end.i.i.i362, label %if.then.i.i.i360, !dbg !3465

if.then.i.i.i360:                                 ; preds = %RoundToUnity.exit.i.i358
  %div.i.i.i359 = fdiv double 1.000000e+00, %cond9.i.i.i349, !dbg !3466
  br label %PerceptibleReciprocal.exit.i.i387, !dbg !3467

if.end.i.i.i362:                                  ; preds = %RoundToUnity.exit.i.i358
  %div2.i.i.i361 = fdiv double %cond.i.i.i355, 1.000000e-15, !dbg !3468
  br label %PerceptibleReciprocal.exit.i.i387, !dbg !3469

PerceptibleReciprocal.exit.i.i387:                ; preds = %if.end.i.i.i362, %if.then.i.i.i360
  %retval.0.i.i.i363 = phi double [ %div.i.i.i359, %if.then.i.i.i360 ], [ %div2.i.i.i361, %if.end.i.i.i362 ], !dbg !3459
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i363, metadata !2420, metadata !DIExpression()) #10, !dbg !3440
  %52 = load float, ptr %red1.i, align 8, !dbg !3470, !tbaa !1251
  %mul9.i.i366 = fmul float %52, %conv3.i.i342, !dbg !3471
  %53 = call float @llvm.fmuladd.f32(float %conv1.i.i340, float %pixel.sroa.3.0.lcssa, float %mul9.i.i366) #10, !dbg !3472
  %conv10.i.i367 = fpext float %53 to double, !dbg !3473
  %mul11.i.i368 = fmul double %retval.0.i.i.i363, %conv10.i.i367, !dbg !3474
  %conv12.i.i369 = fptrunc double %mul11.i.i368 to float, !dbg !3475
  store float %conv12.i.i369, ptr %red13.i.i, align 8, !dbg !3476, !tbaa !1251
  %54 = load float, ptr %green3.i, align 4, !dbg !3477, !tbaa !1254
  %mul16.i.i373 = fmul float %54, %conv3.i.i342, !dbg !3478
  %55 = call float @llvm.fmuladd.f32(float %conv1.i.i340, float %pixel.sroa.10.0.lcssa, float %mul16.i.i373) #10, !dbg !3479
  %conv17.i.i374 = fpext float %55 to double, !dbg !3480
  %mul18.i.i375 = fmul double %retval.0.i.i.i363, %conv17.i.i374, !dbg !3481
  %conv19.i.i376 = fptrunc double %mul18.i.i375 to float, !dbg !3482
  store float %conv19.i.i376, ptr %green20.i.i, align 4, !dbg !3483, !tbaa !1254
  %56 = load float, ptr %blue5.i, align 8, !dbg !3484, !tbaa !1255
  %mul23.i.i380 = fmul float %56, %conv3.i.i342, !dbg !3485
  %57 = call float @llvm.fmuladd.f32(float %conv1.i.i340, float %pixel.sroa.17.0.lcssa, float %mul23.i.i380) #10, !dbg !3486
  %conv24.i.i381 = fpext float %57 to double, !dbg !3487
  %mul25.i.i382 = fmul double %retval.0.i.i.i363, %conv24.i.i381, !dbg !3488
  %conv26.i.i383 = fptrunc double %mul25.i.i382 to float, !dbg !3489
  store float %conv26.i.i383, ptr %blue27.i.i, align 8, !dbg !3490, !tbaa !1255
  %58 = load i32, ptr %colorspace.i.i385, align 4, !dbg !3491, !tbaa !2225
  %cmp.i.i386 = icmp eq i32 %58, 12, !dbg !3492
  br i1 %cmp.i.i386, label %if.then.i.i395, label %MagickPixelCompositeAreaBlend.exit396, !dbg !3493

if.then.i.i395:                                   ; preds = %PerceptibleReciprocal.exit.i.i387
  %59 = load float, ptr %index30.i.i389, align 8, !dbg !3494, !tbaa !2290
  %mul31.i.i390 = fmul float %59, %conv3.i.i342, !dbg !3495
  %60 = call float @llvm.fmuladd.f32(float %conv1.i.i340, float %pixel.sroa.31.0.lcssa, float %mul31.i.i390) #10, !dbg !3496
  %conv32.i.i391 = fpext float %60 to double, !dbg !3497
  %mul33.i.i392 = fmul double %retval.0.i.i.i363, %conv32.i.i391, !dbg !3498
  %conv34.i.i393 = fptrunc double %mul33.i.i392 to float, !dbg !3499
  store float %conv34.i.i393, ptr %index35.i.i, align 8, !dbg !3500, !tbaa !2290
  br label %MagickPixelCompositeAreaBlend.exit396, !dbg !3501

MagickPixelCompositeAreaBlend.exit396:            ; preds = %PerceptibleReciprocal.exit.i.i387, %if.then.i.i395
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.lcssa, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2493, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !2494, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.lcssa, metadata !2495, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata float %conv12.i.i369, metadata !1284, metadata !DIExpression()), !dbg !3504
  %cmp.i.i398 = fcmp ugt float %conv12.i.i369, 0.000000e+00, !dbg !3506
  br i1 %cmp.i.i398, label %if.end.i.i400, label %ClampToQuantum.exit.i408, !dbg !3507

if.end.i.i400:                                    ; preds = %MagickPixelCompositeAreaBlend.exit396
  %cmp1.i.i399 = fcmp ult float %conv12.i.i369, 6.553500e+04, !dbg !3508
  br i1 %cmp1.i.i399, label %if.end3.i.i403, label %ClampToQuantum.exit.i408, !dbg !3509

if.end3.i.i403:                                   ; preds = %if.end.i.i400
  %add.i.i401 = fadd float %conv12.i.i369, 5.000000e-01, !dbg !3510
  %conv.i.i402 = fptoui float %add.i.i401 to i16, !dbg !3511
  br label %ClampToQuantum.exit.i408, !dbg !3512

ClampToQuantum.exit.i408:                         ; preds = %if.end3.i.i403, %if.end.i.i400, %MagickPixelCompositeAreaBlend.exit396
  %retval.0.i.i404 = phi i16 [ %conv.i.i402, %if.end3.i.i403 ], [ 0, %MagickPixelCompositeAreaBlend.exit396 ], [ -1, %if.end.i.i400 ], !dbg !3504
  %red1.i405 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.lcssa, i64 0, i32 2, !dbg !3513
  store i16 %retval.0.i.i404, ptr %red1.i405, align 2, !dbg !3513, !tbaa !981
  call void @llvm.dbg.value(metadata float %conv19.i.i376, metadata !1284, metadata !DIExpression()), !dbg !3514
  %cmp.i23.i407 = fcmp ugt float %conv19.i.i376, 0.000000e+00, !dbg !3516
  br i1 %cmp.i23.i407, label %if.end.i25.i410, label %ClampToQuantum.exit30.i418, !dbg !3517

if.end.i25.i410:                                  ; preds = %ClampToQuantum.exit.i408
  %cmp1.i24.i409 = fcmp ult float %conv19.i.i376, 6.553500e+04, !dbg !3518
  br i1 %cmp1.i24.i409, label %if.end3.i28.i413, label %ClampToQuantum.exit30.i418, !dbg !3519

if.end3.i28.i413:                                 ; preds = %if.end.i25.i410
  %add.i26.i411 = fadd float %conv19.i.i376, 5.000000e-01, !dbg !3520
  %conv.i27.i412 = fptoui float %add.i26.i411 to i16, !dbg !3521
  br label %ClampToQuantum.exit30.i418, !dbg !3522

ClampToQuantum.exit30.i418:                       ; preds = %if.end3.i28.i413, %if.end.i25.i410, %ClampToQuantum.exit.i408
  %retval.0.i29.i414 = phi i16 [ %conv.i27.i412, %if.end3.i28.i413 ], [ 0, %ClampToQuantum.exit.i408 ], [ -1, %if.end.i25.i410 ], !dbg !3514
  %green3.i415 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.lcssa, i64 0, i32 1, !dbg !3523
  store i16 %retval.0.i29.i414, ptr %green3.i415, align 2, !dbg !3523, !tbaa !986
  call void @llvm.dbg.value(metadata float %conv26.i.i383, metadata !1284, metadata !DIExpression()), !dbg !3524
  %cmp.i31.i417 = fcmp ugt float %conv26.i.i383, 0.000000e+00, !dbg !3526
  br i1 %cmp.i31.i417, label %if.end.i33.i420, label %ClampToQuantum.exit38.i427, !dbg !3527

if.end.i33.i420:                                  ; preds = %ClampToQuantum.exit30.i418
  %cmp1.i32.i419 = fcmp ult float %conv26.i.i383, 6.553500e+04, !dbg !3528
  br i1 %cmp1.i32.i419, label %if.end3.i36.i423, label %ClampToQuantum.exit38.i427, !dbg !3529

if.end3.i36.i423:                                 ; preds = %if.end.i33.i420
  %add.i34.i421 = fadd float %conv26.i.i383, 5.000000e-01, !dbg !3530
  %conv.i35.i422 = fptoui float %add.i34.i421 to i16, !dbg !3531
  br label %ClampToQuantum.exit38.i427, !dbg !3532

ClampToQuantum.exit38.i427:                       ; preds = %if.end3.i36.i423, %if.end.i33.i420, %ClampToQuantum.exit30.i418
  %retval.0.i37.i424 = phi i16 [ %conv.i35.i422, %if.end3.i36.i423 ], [ 0, %ClampToQuantum.exit30.i418 ], [ -1, %if.end.i33.i420 ], !dbg !3524
  store i16 %retval.0.i37.i424, ptr %q.0.lcssa, align 2, !dbg !3533, !tbaa !991
  call void @llvm.dbg.value(metadata float %conv5.i.i352, metadata !1284, metadata !DIExpression()), !dbg !3534
  %cmp.i39.i426 = fcmp ugt float %conv5.i.i352, 0.000000e+00, !dbg !3536
  br i1 %cmp.i39.i426, label %if.end.i41.i429, label %ClampToQuantum.exit46.i437, !dbg !3537

if.end.i41.i429:                                  ; preds = %ClampToQuantum.exit38.i427
  %cmp1.i40.i428 = fcmp ult float %conv5.i.i352, 6.553500e+04, !dbg !3538
  br i1 %cmp1.i40.i428, label %if.end3.i44.i432, label %ClampToQuantum.exit46.i437, !dbg !3539

if.end3.i44.i432:                                 ; preds = %if.end.i41.i429
  %add.i42.i430 = fadd float %conv5.i.i352, 5.000000e-01, !dbg !3540
  %conv.i43.i431 = fptoui float %add.i42.i430 to i16, !dbg !3541
  br label %ClampToQuantum.exit46.i437, !dbg !3542

ClampToQuantum.exit46.i437:                       ; preds = %if.end3.i44.i432, %if.end.i41.i429, %ClampToQuantum.exit38.i427
  %retval.0.i45.i433 = phi i16 [ %conv.i43.i431, %if.end3.i44.i432 ], [ 0, %ClampToQuantum.exit38.i427 ], [ -1, %if.end.i41.i429 ], !dbg !3534
  %opacity7.i434 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.lcssa, i64 0, i32 3, !dbg !3543
  store i16 %retval.0.i45.i433, ptr %opacity7.i434, align 2, !dbg !3543, !tbaa !1268
  %61 = load i32, ptr %colorspace, align 4, !dbg !3544, !tbaa !2205
  %cmp.i436 = icmp eq i32 %61, 12, !dbg !3545
  br i1 %cmp.i436, label %if.then.i443, label %lor.lhs.false.i441, !dbg !3546

lor.lhs.false.i441:                               ; preds = %ClampToQuantum.exit46.i437
  %62 = load i32, ptr %image, align 8, !dbg !3547, !tbaa !2541
  %cmp8.i438 = icmp eq i32 %62, 2, !dbg !3548
  %cmp9.i439 = icmp ne ptr %shear_indexes.0.lcssa, null
  %or.cond.i440 = and i1 %cmp9.i439, %cmp8.i438, !dbg !3549
  br i1 %or.cond.i440, label %if.then10.i446, label %SetPixelPacket.exit454, !dbg !3549

if.then.i443:                                     ; preds = %ClampToQuantum.exit46.i437
  %cmp9.old.not.i442 = icmp eq ptr %shear_indexes.0.lcssa, null, !dbg !3550
  br i1 %cmp9.old.not.i442, label %SetPixelPacket.exit454, label %if.then10.i446, !dbg !3551

if.then10.i446:                                   ; preds = %if.then.i443, %lor.lhs.false.i441
  %63 = load float, ptr %index35.i.i, align 8, !dbg !3550, !tbaa !2290
  call void @llvm.dbg.value(metadata float %63, metadata !1284, metadata !DIExpression()), !dbg !3552
  %cmp.i47.i445 = fcmp ugt float %63, 0.000000e+00, !dbg !3554
  br i1 %cmp.i47.i445, label %if.end.i49.i448, label %ClampToQuantum.exit54.i453, !dbg !3555

if.end.i49.i448:                                  ; preds = %if.then10.i446
  %cmp1.i48.i447 = fcmp ult float %63, 6.553500e+04, !dbg !3556
  br i1 %cmp1.i48.i447, label %if.end3.i52.i451, label %ClampToQuantum.exit54.i453, !dbg !3557

if.end3.i52.i451:                                 ; preds = %if.end.i49.i448
  %add.i50.i449 = fadd float %63, 5.000000e-01, !dbg !3558
  %conv.i51.i450 = fptoui float %add.i50.i449 to i16, !dbg !3559
  br label %ClampToQuantum.exit54.i453, !dbg !3560

ClampToQuantum.exit54.i453:                       ; preds = %if.end3.i52.i451, %if.end.i49.i448, %if.then10.i446
  %retval.0.i53.i452 = phi i16 [ %conv.i51.i450, %if.end3.i52.i451 ], [ 0, %if.then10.i446 ], [ -1, %if.end.i49.i448 ], !dbg !3552
  store i16 %retval.0.i53.i452, ptr %shear_indexes.0.lcssa, align 2, !dbg !3550, !tbaa !950
  br label %SetPixelPacket.exit454, !dbg !3550

SetPixelPacket.exit454:                           ; preds = %lor.lhs.false.i441, %if.then.i443, %ClampToQuantum.exit54.i453
  call void @llvm.dbg.value(metadata i64 0, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.lcssa, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3213
  %cmp66887 = icmp sgt i64 %conv31, 0, !dbg !3561
  br i1 %cmp66887, label %for.body68.lr.ph, label %sw.epilog, !dbg !3564

for.body68.lr.ph:                                 ; preds = %SetPixelPacket.exit454
  %cmp.i.i456 = fcmp ole float %52, 0.000000e+00
  %cmp1.i.i457 = fcmp oge float %52, 6.553500e+04
  %add.i.i459 = fadd float %52, 5.000000e-01
  %conv.i.i460 = fptoui float %add.i.i459 to i16
  %cmp.i23.i465 = fcmp ole float %54, 0.000000e+00
  %cmp1.i24.i467 = fcmp oge float %54, 6.553500e+04
  %add.i26.i469 = fadd float %54, 5.000000e-01
  %conv.i27.i470 = fptoui float %add.i26.i469 to i16
  %cmp.i31.i475 = fcmp ole float %56, 0.000000e+00
  %cmp1.i32.i477 = fcmp oge float %56, 6.553500e+04
  %add.i34.i479 = fadd float %56, 5.000000e-01
  %conv.i35.i480 = fptoui float %add.i34.i479 to i16
  %cmp.i39.i484 = fcmp ole float %47, 0.000000e+00
  %cmp1.i40.i486 = fcmp oge float %47, 6.553500e+04
  %add.i42.i488 = fadd float %47, 5.000000e-01
  %conv.i43.i489 = fptoui float %add.i42.i488 to i16
  %64 = load float, ptr %index30.i.i389, align 8
  %cmp.i47.i500 = fcmp ole float %64, 0.000000e+00
  %cmp1.i48.i502 = fcmp oge float %64, 6.553500e+04
  %add.i50.i504 = fadd float %64, 5.000000e-01
  %conv.i51.i505 = fptoui float %add.i50.i504 to i16
  %brmerge = or i1 %cmp.i.i456, %cmp1.i.i457
  %not.cmp.i.i456 = xor i1 %cmp.i.i456, true
  %.mux = sext i1 %not.cmp.i.i456 to i16
  %spec.select942 = select i1 %brmerge, i16 %.mux, i16 %conv.i.i460
  %brmerge924 = or i1 %cmp.i23.i465, %cmp1.i24.i467
  %not.cmp.i23.i465 = xor i1 %cmp.i23.i465, true
  %.mux925 = sext i1 %not.cmp.i23.i465 to i16
  %spec.select948 = select i1 %brmerge924, i16 %.mux925, i16 %conv.i27.i470
  %brmerge926 = or i1 %cmp.i31.i475, %cmp1.i32.i477
  %not.cmp.i31.i475 = xor i1 %cmp.i31.i475, true
  %.mux927 = sext i1 %not.cmp.i31.i475 to i16
  %spec.select943 = select i1 %brmerge926, i16 %.mux927, i16 %conv.i35.i480
  %brmerge928 = or i1 %cmp.i39.i484, %cmp1.i40.i486
  %not.cmp.i39.i484 = xor i1 %cmp.i39.i484, true
  %.mux929 = sext i1 %not.cmp.i39.i484 to i16
  %spec.select950 = select i1 %brmerge928, i16 %.mux929, i16 %conv.i43.i489
  %brmerge930 = or i1 %cmp.i47.i500, %cmp1.i48.i502
  %not.cmp.i47.i500 = xor i1 %cmp.i47.i500, true
  %.mux931 = sext i1 %not.cmp.i47.i500 to i16
  %spec.select944 = select i1 %brmerge930, i16 %.mux931, i16 %conv.i51.i505
  br label %for.body68, !dbg !3564

for.body68:                                       ; preds = %for.body68.lr.ph, %SetPixelPacket.exit509
  %q.0.pn890 = phi ptr [ %q.0.lcssa, %for.body68.lr.ph ], [ %q.2, %SetPixelPacket.exit509 ]
  %i.1889 = phi i64 [ 0, %for.body68.lr.ph ], [ %inc72, %SetPixelPacket.exit509 ]
  %shear_indexes.0.pn888 = phi ptr [ %shear_indexes.0.lcssa, %for.body68.lr.ph ], [ %shear_indexes.2, %SetPixelPacket.exit509 ]
  call void @llvm.dbg.value(metadata ptr %q.0.pn890, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %i.1889, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.pn888, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3213
  %shear_indexes.2 = getelementptr inbounds i16, ptr %shear_indexes.0.pn888, i64 1, !dbg !3430
  call void @llvm.dbg.value(metadata ptr %shear_indexes.2, metadata !754, metadata !DIExpression()), !dbg !3213
  %q.2 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.pn890, i64 1, !dbg !3430
  call void @llvm.dbg.value(metadata ptr %q.0.pn890, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.0.pn888, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata ptr %background, metadata !2493, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata ptr %q.2, metadata !2494, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata ptr %shear_indexes.2, metadata !2495, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata float %52, metadata !1284, metadata !DIExpression()), !dbg !3567
  %red1.i463 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.pn890, i64 1, i32 2, !dbg !3569
  store i16 %spec.select942, ptr %red1.i463, align 2, !dbg !3569, !tbaa !981
  call void @llvm.dbg.value(metadata float %54, metadata !1284, metadata !DIExpression()), !dbg !3570
  %green3.i473 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.pn890, i64 1, i32 1, !dbg !3572
  store i16 %spec.select948, ptr %green3.i473, align 2, !dbg !3572, !tbaa !986
  call void @llvm.dbg.value(metadata float %56, metadata !1284, metadata !DIExpression()), !dbg !3573
  store i16 %spec.select943, ptr %q.2, align 2, !dbg !3575, !tbaa !991
  call void @llvm.dbg.value(metadata float %47, metadata !1284, metadata !DIExpression()), !dbg !3576
  %opacity7.i492 = getelementptr inbounds %struct._PixelPacket, ptr %q.0.pn890, i64 1, i32 3, !dbg !3578
  store i16 %spec.select950, ptr %opacity7.i492, align 2, !dbg !3578, !tbaa !1268
  br i1 %cmp.i436, label %if.then10.i501, label %lor.lhs.false.i497, !dbg !3579

lor.lhs.false.i497:                               ; preds = %for.body68
  %65 = load i32, ptr %image, align 8, !dbg !3580, !tbaa !2541
  %cmp8.i496 = icmp eq i32 %65, 2, !dbg !3581
  br i1 %cmp8.i496, label %if.then10.i501, label %SetPixelPacket.exit509, !dbg !3582

if.then10.i501:                                   ; preds = %for.body68, %lor.lhs.false.i497
  call void @llvm.dbg.value(metadata float %64, metadata !1284, metadata !DIExpression()), !dbg !3583
  store i16 %spec.select944, ptr %shear_indexes.2, align 2, !dbg !3585, !tbaa !950
  br label %SetPixelPacket.exit509, !dbg !3585

SetPixelPacket.exit509:                           ; preds = %lor.lhs.false.i497, %if.then10.i501
  %inc72 = add nuw nsw i64 %i.1889, 1, !dbg !3586
  call void @llvm.dbg.value(metadata ptr %q.2, metadata !757, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %inc72, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.2, metadata !754, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3213
  %exitcond953.not = icmp eq i64 %inc72, %conv31, !dbg !3561
  br i1 %exitcond953.not, label %sw.epilog, label %for.body68, !dbg !3564, !llvm.loop !3587

sw.bb74:                                          ; preds = %if.end29
  %add.ptr75 = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr, i64 %height, !dbg !3589
  call void @llvm.dbg.value(metadata ptr %add.ptr75, metadata !756, metadata !DIExpression()), !dbg !3213
  %add.ptr76 = getelementptr inbounds i16, ptr %add.ptr14, i64 %height, !dbg !3591
  call void @llvm.dbg.value(metadata ptr %add.ptr76, metadata !753, metadata !DIExpression()), !dbg !3213
  %add.ptr77 = getelementptr inbounds %struct._PixelPacket, ptr %add.ptr75, i64 %inc, !dbg !3592
  call void @llvm.dbg.value(metadata ptr %add.ptr77, metadata !757, metadata !DIExpression()), !dbg !3213
  %add.ptr78 = getelementptr inbounds i16, ptr %add.ptr76, i64 %inc, !dbg !3593
  call void @llvm.dbg.value(metadata ptr %add.ptr78, metadata !754, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.0.copyload, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  br i1 %cmp42860, label %for.body82.lr.ph, label %sw.bb74.for.end100_crit_edge, !dbg !3594

sw.bb74.for.end100_crit_edge:                     ; preds = %sw.bb74
  %.pre = fpext float %sub33 to double, !dbg !3596
  %.pre957 = fsub double 1.000000e+00, %.pre, !dbg !3598
  %.pre958 = fneg double %.pre957, !dbg !3599
  %.pre959 = fneg float %sub33, !dbg !3600
  br label %for.end100, !dbg !3594

for.body82.lr.ph:                                 ; preds = %sw.bb74
  %add88 = add i64 %add87, %inc
  %66 = load i64, ptr %rows, align 8, !tbaa !915
  %conv.i527 = fpext float %sub33 to double
  %sub.i528 = fsub double 1.000000e+00, %conv.i527
  %neg.i531 = fneg double %sub.i528
  %neg5.i534 = fneg float %sub33
  %67 = load i32, ptr %colorspace.i.i, align 4
  %cmp.i.i582 = icmp eq i32 %67, 12
  %index15.i523.promoted = load float, ptr %index15.i292, align 8, !tbaa !2290
  %index35.i.i590.promoted = load float, ptr %index35.i.i, align 8, !tbaa !2290
  br label %for.body82, !dbg !3594

for.body82:                                       ; preds = %for.body82.lr.ph, %for.inc98
  %conv34.i.i589912 = phi float [ %index35.i.i590.promoted, %for.body82.lr.ph ], [ %conv34.i.i589913, %for.inc98 ]
  %conv14.i522909 = phi float [ %index15.i523.promoted, %for.body82.lr.ph ], [ %conv14.i522910, %for.inc98 ]
  %q.3901 = phi ptr [ %add.ptr77, %for.body82.lr.ph ], [ %incdec.ptr85, %for.inc98 ]
  %p.2900 = phi ptr [ %add.ptr75, %for.body82.lr.ph ], [ %incdec.ptr83, %for.inc98 ]
  %i.2899 = phi i64 [ 0, %for.body82.lr.ph ], [ %inc99, %for.inc98 ]
  %shear_indexes.3898 = phi ptr [ %add.ptr78, %for.body82.lr.ph ], [ %incdec.ptr86, %for.inc98 ]
  %indexes.2897 = phi ptr [ %add.ptr76, %for.body82.lr.ph ], [ %incdec.ptr84, %for.inc98 ]
  %pixel.sroa.3.2896 = phi float [ %pixel.sroa.3.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.3.3, %for.inc98 ]
  %pixel.sroa.10.2895 = phi float [ %pixel.sroa.10.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.10.3, %for.inc98 ]
  %pixel.sroa.17.2894 = phi float [ %pixel.sroa.17.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.17.3, %for.inc98 ]
  %pixel.sroa.24.2893 = phi float [ %pixel.sroa.24.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.24.3, %for.inc98 ]
  %pixel.sroa.31.4892 = phi float [ %pixel.sroa.31.0.copyload, %for.body82.lr.ph ], [ %pixel.sroa.31.6, %for.inc98 ]
  call void @llvm.dbg.value(metadata ptr %q.3901, metadata !757, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %p.2900, metadata !756, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %i.2899, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.3898, metadata !754, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %indexes.2897, metadata !753, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.2896, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.2895, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.2894, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.2893, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.4892, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  %incdec.ptr83 = getelementptr inbounds %struct._PixelPacket, ptr %p.2900, i64 -1, !dbg !3601
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !756, metadata !DIExpression()), !dbg !3213
  %incdec.ptr84 = getelementptr inbounds i16, ptr %indexes.2897, i64 -1, !dbg !3604
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !753, metadata !DIExpression()), !dbg !3213
  %incdec.ptr85 = getelementptr inbounds %struct._PixelPacket, ptr %q.3901, i64 -1, !dbg !3605
  call void @llvm.dbg.value(metadata ptr %incdec.ptr85, metadata !757, metadata !DIExpression()), !dbg !3213
  %incdec.ptr86 = getelementptr inbounds i16, ptr %shear_indexes.3898, i64 -1, !dbg !3606
  call void @llvm.dbg.value(metadata ptr %incdec.ptr86, metadata !754, metadata !DIExpression()), !dbg !3213
  %sub89 = sub i64 %add88, %i.2899, !dbg !3607
  %cmp91 = icmp ugt i64 %sub89, %66, !dbg !3609
  br i1 %cmp91, label %for.inc98, label %if.end94, !dbg !3610

if.end94:                                         ; preds = %for.body82
  %image.val256 = load i32, ptr %1, align 4, !dbg !3611, !tbaa !2205
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !2182, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !2183, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata ptr %source, metadata !2184, metadata !DIExpression()), !dbg !3612
  %red.i510 = getelementptr inbounds %struct._PixelPacket, ptr %p.2900, i64 -1, i32 2, !dbg !3614
  %68 = load i16, ptr %red.i510, align 2, !dbg !3614, !tbaa !981
  %conv.i511 = uitofp i16 %68 to float, !dbg !3615
  store float %conv.i511, ptr %red1.i281, align 8, !dbg !3616, !tbaa !1251
  %green.i513 = getelementptr inbounds %struct._PixelPacket, ptr %p.2900, i64 -1, i32 1, !dbg !3617
  %69 = load i16, ptr %green.i513, align 2, !dbg !3617, !tbaa !986
  %conv2.i514 = uitofp i16 %69 to float, !dbg !3618
  store float %conv2.i514, ptr %green3.i284, align 4, !dbg !3619, !tbaa !1254
  %70 = load i16, ptr %incdec.ptr83, align 2, !dbg !3620, !tbaa !991
  %conv4.i516 = uitofp i16 %70 to float, !dbg !3621
  store float %conv4.i516, ptr %blue5.i286, align 8, !dbg !3622, !tbaa !1255
  %opacity.i518 = getelementptr inbounds %struct._PixelPacket, ptr %p.2900, i64 -1, i32 3, !dbg !3623
  %71 = load i16, ptr %opacity.i518, align 2, !dbg !3623, !tbaa !1268
  %conv6.i519 = uitofp i16 %71 to float, !dbg !3624
  store float %conv6.i519, ptr %opacity7.i289, align 4, !dbg !3625, !tbaa !1256
  %cmp.i521 = icmp eq i32 %image.val256, 12, !dbg !3626
  br i1 %cmp.i521, label %cond.end.i524, label %SetMagickPixelPacket.exit526, !dbg !3627

cond.end.i524:                                    ; preds = %if.end94
  %72 = load i16, ptr %incdec.ptr84, align 2, !dbg !3628, !tbaa !950
  %conv14.i522 = uitofp i16 %72 to float, !dbg !3629
  store float %conv14.i522, ptr %index15.i292, align 8, !dbg !3630, !tbaa !2290
  br label %SetMagickPixelPacket.exit526, !dbg !3631

SetMagickPixelPacket.exit526:                     ; preds = %if.end94, %cond.end.i524
  %conv14.i522911 = phi float [ %conv14.i522909, %if.end94 ], [ %conv14.i522, %cond.end.i524 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !2390, metadata !DIExpression()) #10, !dbg !3632
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.2893, metadata !2398, metadata !DIExpression()) #10, !dbg !3632
  call void @llvm.dbg.value(metadata ptr %source, metadata !2399, metadata !DIExpression()) #10, !dbg !3632
  call void @llvm.dbg.value(metadata float %conv6.i519, metadata !2400, metadata !DIExpression()) #10, !dbg !3632
  call void @llvm.dbg.value(metadata float %sub33, metadata !2401, metadata !DIExpression()) #10, !dbg !3632
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2402, metadata !DIExpression()) #10, !dbg !3632
  %sub1.i529 = fsub float 6.553500e+04, %pixel.sroa.24.2893, !dbg !3634
  %conv2.i530 = fpext float %sub1.i529 to double, !dbg !3635
  %73 = call double @llvm.fmuladd.f64(double %neg.i531, double %conv2.i530, double 6.553500e+04) #10, !dbg !3636
  %conv3.i532 = fptrunc double %73 to float, !dbg !3637
  %sub4.i533 = fsub float 6.553500e+04, %conv6.i519, !dbg !3638
  %74 = call float @llvm.fmuladd.f32(float %neg5.i534, float %sub4.i533, float 6.553500e+04) #10, !dbg !3639
  call void @llvm.dbg.value(metadata ptr undef, metadata !2411, metadata !DIExpression()) #10, !dbg !3640
  call void @llvm.dbg.value(metadata float %conv3.i532, metadata !2416, metadata !DIExpression()) #10, !dbg !3640
  call void @llvm.dbg.value(metadata ptr %source, metadata !2417, metadata !DIExpression()) #10, !dbg !3640
  call void @llvm.dbg.value(metadata float %74, metadata !2418, metadata !DIExpression()) #10, !dbg !3640
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2419, metadata !DIExpression()) #10, !dbg !3640
  %conv.i.i535 = fpext float %conv3.i532 to double, !dbg !3642
  %75 = call double @llvm.fmuladd.f64(double %conv.i.i535, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !3643
  %conv1.i.i536 = fptrunc double %75 to float, !dbg !3644
  call void @llvm.dbg.value(metadata float %conv1.i.i536, metadata !2422, metadata !DIExpression()) #10, !dbg !3640
  %conv2.i.i537 = fpext float %74 to double, !dbg !3645
  %76 = call double @llvm.fmuladd.f64(double %conv2.i.i537, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !3646
  %conv3.i.i538 = fptrunc double %76 to float, !dbg !3647
  call void @llvm.dbg.value(metadata float %conv3.i.i538, metadata !2421, metadata !DIExpression()) #10, !dbg !3640
  %add.i.i539 = fadd float %conv1.i.i536, %conv3.i.i538, !dbg !3648
  call void @llvm.dbg.value(metadata float %add.i.i539, metadata !2432, metadata !DIExpression()) #10, !dbg !3649
  %cmp.i.i.i540 = fcmp olt float %add.i.i539, 0.000000e+00, !dbg !3651
  br i1 %cmp.i.i.i540, label %RoundToUnity.exit.i.i554, label %cond.false.i.i.i542, !dbg !3652

cond.false.i.i.i542:                              ; preds = %SetMagickPixelPacket.exit526
  %cmp3.i.i.i541 = fcmp ogt float %add.i.i539, 1.000000e+00, !dbg !3653
  br i1 %cmp3.i.i.i541, label %RoundToUnity.exit.i.i554, label %cond.false6.i.i.i544, !dbg !3654

cond.false6.i.i.i544:                             ; preds = %cond.false.i.i.i542
  %phi.cast.i.i543 = fpext float %add.i.i539 to double, !dbg !3654
  br label %RoundToUnity.exit.i.i554, !dbg !3654

RoundToUnity.exit.i.i554:                         ; preds = %cond.false6.i.i.i544, %cond.false.i.i.i542, %SetMagickPixelPacket.exit526
  %cond9.i.i.i545 = phi double [ 0.000000e+00, %SetMagickPixelPacket.exit526 ], [ %phi.cast.i.i543, %cond.false6.i.i.i544 ], [ 1.000000e+00, %cond.false.i.i.i542 ]
  call void @llvm.dbg.value(metadata double %cond9.i.i.i545, metadata !2420, metadata !DIExpression()) #10, !dbg !3640
  %sub.i.i546 = fsub double 1.000000e+00, %cond9.i.i.i545, !dbg !3655
  %mul.i.i547 = fmul double %sub.i.i546, 6.553500e+04, !dbg !3656
  %conv5.i.i548 = fptrunc double %mul.i.i547 to float, !dbg !3657
  store float %conv5.i.i548, ptr %opacity.i.i, align 4, !dbg !3658, !tbaa !1256
  call void @llvm.dbg.value(metadata double %cond9.i.i.i545, metadata !2445, metadata !DIExpression()) #10, !dbg !3659
  %cmp.i60.i.i550 = fcmp olt double %cond9.i.i.i545, 0.000000e+00, !dbg !3661
  %cond.i.i.i551 = select i1 %cmp.i60.i.i550, double -1.000000e+00, double 1.000000e+00, !dbg !3662
  call void @llvm.dbg.value(metadata double %cond.i.i.i551, metadata !2448, metadata !DIExpression()) #10, !dbg !3659
  %mul.i.i.i552 = fmul double %cond9.i.i.i545, %cond.i.i.i551, !dbg !3663
  %cmp1.i.i.i553 = fcmp ult double %mul.i.i.i552, 1.000000e-15, !dbg !3664
  br i1 %cmp1.i.i.i553, label %if.end.i.i.i558, label %if.then.i.i.i556, !dbg !3665

if.then.i.i.i556:                                 ; preds = %RoundToUnity.exit.i.i554
  %div.i.i.i555 = fdiv double 1.000000e+00, %cond9.i.i.i545, !dbg !3666
  br label %PerceptibleReciprocal.exit.i.i583, !dbg !3667

if.end.i.i.i558:                                  ; preds = %RoundToUnity.exit.i.i554
  %div2.i.i.i557 = fdiv double %cond.i.i.i551, 1.000000e-15, !dbg !3668
  br label %PerceptibleReciprocal.exit.i.i583, !dbg !3669

PerceptibleReciprocal.exit.i.i583:                ; preds = %if.end.i.i.i558, %if.then.i.i.i556
  %retval.0.i.i.i559 = phi double [ %div.i.i.i555, %if.then.i.i.i556 ], [ %div2.i.i.i557, %if.end.i.i.i558 ], !dbg !3659
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i559, metadata !2420, metadata !DIExpression()) #10, !dbg !3640
  %mul9.i.i562 = fmul float %conv.i511, %conv3.i.i538, !dbg !3670
  %77 = call float @llvm.fmuladd.f32(float %conv1.i.i536, float %pixel.sroa.3.2896, float %mul9.i.i562) #10, !dbg !3671
  %conv10.i.i563 = fpext float %77 to double, !dbg !3672
  %mul11.i.i564 = fmul double %retval.0.i.i.i559, %conv10.i.i563, !dbg !3673
  %conv12.i.i565 = fptrunc double %mul11.i.i564 to float, !dbg !3674
  store float %conv12.i.i565, ptr %red13.i.i, align 8, !dbg !3675, !tbaa !1251
  %mul16.i.i569 = fmul float %conv2.i514, %conv3.i.i538, !dbg !3676
  %78 = call float @llvm.fmuladd.f32(float %conv1.i.i536, float %pixel.sroa.10.2895, float %mul16.i.i569) #10, !dbg !3677
  %conv17.i.i570 = fpext float %78 to double, !dbg !3678
  %mul18.i.i571 = fmul double %retval.0.i.i.i559, %conv17.i.i570, !dbg !3679
  %conv19.i.i572 = fptrunc double %mul18.i.i571 to float, !dbg !3680
  store float %conv19.i.i572, ptr %green20.i.i, align 4, !dbg !3681, !tbaa !1254
  %mul23.i.i576 = fmul float %conv4.i516, %conv3.i.i538, !dbg !3682
  %79 = call float @llvm.fmuladd.f32(float %conv1.i.i536, float %pixel.sroa.17.2894, float %mul23.i.i576) #10, !dbg !3683
  %conv24.i.i577 = fpext float %79 to double, !dbg !3684
  %mul25.i.i578 = fmul double %retval.0.i.i.i559, %conv24.i.i577, !dbg !3685
  %conv26.i.i579 = fptrunc double %mul25.i.i578 to float, !dbg !3686
  store float %conv26.i.i579, ptr %blue27.i.i, align 8, !dbg !3687, !tbaa !1255
  br i1 %cmp.i.i582, label %if.then.i.i591, label %MagickPixelCompositeAreaBlend.exit592, !dbg !3688

if.then.i.i591:                                   ; preds = %PerceptibleReciprocal.exit.i.i583
  %mul31.i.i586 = fmul float %conv14.i522911, %conv3.i.i538, !dbg !3689
  %80 = call float @llvm.fmuladd.f32(float %conv1.i.i536, float %pixel.sroa.31.4892, float %mul31.i.i586) #10, !dbg !3690
  %conv32.i.i587 = fpext float %80 to double, !dbg !3691
  %mul33.i.i588 = fmul double %retval.0.i.i.i559, %conv32.i.i587, !dbg !3692
  %conv34.i.i589 = fptrunc double %mul33.i.i588 to float, !dbg !3693
  store float %conv34.i.i589, ptr %index35.i.i, align 8, !dbg !3694, !tbaa !2290
  br label %MagickPixelCompositeAreaBlend.exit592, !dbg !3695

MagickPixelCompositeAreaBlend.exit592:            ; preds = %PerceptibleReciprocal.exit.i.i583, %if.then.i.i591
  %conv34.i.i589914 = phi float [ %conv34.i.i589912, %PerceptibleReciprocal.exit.i.i583 ], [ %conv34.i.i589, %if.then.i.i591 ]
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2493, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %incdec.ptr85, metadata !2494, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %incdec.ptr86, metadata !2495, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata float %conv12.i.i565, metadata !1284, metadata !DIExpression()), !dbg !3698
  %cmp.i.i594 = fcmp ugt float %conv12.i.i565, 0.000000e+00, !dbg !3700
  br i1 %cmp.i.i594, label %if.end.i.i596, label %ClampToQuantum.exit.i604, !dbg !3701

if.end.i.i596:                                    ; preds = %MagickPixelCompositeAreaBlend.exit592
  %cmp1.i.i595 = fcmp ult float %conv12.i.i565, 6.553500e+04, !dbg !3702
  br i1 %cmp1.i.i595, label %if.end3.i.i599, label %ClampToQuantum.exit.i604, !dbg !3703

if.end3.i.i599:                                   ; preds = %if.end.i.i596
  %add.i.i597 = fadd float %conv12.i.i565, 5.000000e-01, !dbg !3704
  %conv.i.i598 = fptoui float %add.i.i597 to i16, !dbg !3705
  br label %ClampToQuantum.exit.i604, !dbg !3706

ClampToQuantum.exit.i604:                         ; preds = %if.end3.i.i599, %if.end.i.i596, %MagickPixelCompositeAreaBlend.exit592
  %retval.0.i.i600 = phi i16 [ %conv.i.i598, %if.end3.i.i599 ], [ 0, %MagickPixelCompositeAreaBlend.exit592 ], [ -1, %if.end.i.i596 ], !dbg !3698
  %red1.i601 = getelementptr inbounds %struct._PixelPacket, ptr %q.3901, i64 -1, i32 2, !dbg !3707
  store i16 %retval.0.i.i600, ptr %red1.i601, align 2, !dbg !3707, !tbaa !981
  call void @llvm.dbg.value(metadata float %conv19.i.i572, metadata !1284, metadata !DIExpression()), !dbg !3708
  %cmp.i23.i603 = fcmp ugt float %conv19.i.i572, 0.000000e+00, !dbg !3710
  br i1 %cmp.i23.i603, label %if.end.i25.i606, label %ClampToQuantum.exit30.i614, !dbg !3711

if.end.i25.i606:                                  ; preds = %ClampToQuantum.exit.i604
  %cmp1.i24.i605 = fcmp ult float %conv19.i.i572, 6.553500e+04, !dbg !3712
  br i1 %cmp1.i24.i605, label %if.end3.i28.i609, label %ClampToQuantum.exit30.i614, !dbg !3713

if.end3.i28.i609:                                 ; preds = %if.end.i25.i606
  %add.i26.i607 = fadd float %conv19.i.i572, 5.000000e-01, !dbg !3714
  %conv.i27.i608 = fptoui float %add.i26.i607 to i16, !dbg !3715
  br label %ClampToQuantum.exit30.i614, !dbg !3716

ClampToQuantum.exit30.i614:                       ; preds = %if.end3.i28.i609, %if.end.i25.i606, %ClampToQuantum.exit.i604
  %retval.0.i29.i610 = phi i16 [ %conv.i27.i608, %if.end3.i28.i609 ], [ 0, %ClampToQuantum.exit.i604 ], [ -1, %if.end.i25.i606 ], !dbg !3708
  %green3.i611 = getelementptr inbounds %struct._PixelPacket, ptr %q.3901, i64 -1, i32 1, !dbg !3717
  store i16 %retval.0.i29.i610, ptr %green3.i611, align 2, !dbg !3717, !tbaa !986
  call void @llvm.dbg.value(metadata float %conv26.i.i579, metadata !1284, metadata !DIExpression()), !dbg !3718
  %cmp.i31.i613 = fcmp ugt float %conv26.i.i579, 0.000000e+00, !dbg !3720
  br i1 %cmp.i31.i613, label %if.end.i33.i616, label %ClampToQuantum.exit38.i623, !dbg !3721

if.end.i33.i616:                                  ; preds = %ClampToQuantum.exit30.i614
  %cmp1.i32.i615 = fcmp ult float %conv26.i.i579, 6.553500e+04, !dbg !3722
  br i1 %cmp1.i32.i615, label %if.end3.i36.i619, label %ClampToQuantum.exit38.i623, !dbg !3723

if.end3.i36.i619:                                 ; preds = %if.end.i33.i616
  %add.i34.i617 = fadd float %conv26.i.i579, 5.000000e-01, !dbg !3724
  %conv.i35.i618 = fptoui float %add.i34.i617 to i16, !dbg !3725
  br label %ClampToQuantum.exit38.i623, !dbg !3726

ClampToQuantum.exit38.i623:                       ; preds = %if.end3.i36.i619, %if.end.i33.i616, %ClampToQuantum.exit30.i614
  %retval.0.i37.i620 = phi i16 [ %conv.i35.i618, %if.end3.i36.i619 ], [ 0, %ClampToQuantum.exit30.i614 ], [ -1, %if.end.i33.i616 ], !dbg !3718
  store i16 %retval.0.i37.i620, ptr %incdec.ptr85, align 2, !dbg !3727, !tbaa !991
  call void @llvm.dbg.value(metadata float %conv5.i.i548, metadata !1284, metadata !DIExpression()), !dbg !3728
  %cmp.i39.i622 = fcmp ugt float %conv5.i.i548, 0.000000e+00, !dbg !3730
  br i1 %cmp.i39.i622, label %if.end.i41.i625, label %ClampToQuantum.exit46.i633, !dbg !3731

if.end.i41.i625:                                  ; preds = %ClampToQuantum.exit38.i623
  %cmp1.i40.i624 = fcmp ult float %conv5.i.i548, 6.553500e+04, !dbg !3732
  br i1 %cmp1.i40.i624, label %if.end3.i44.i628, label %ClampToQuantum.exit46.i633, !dbg !3733

if.end3.i44.i628:                                 ; preds = %if.end.i41.i625
  %add.i42.i626 = fadd float %conv5.i.i548, 5.000000e-01, !dbg !3734
  %conv.i43.i627 = fptoui float %add.i42.i626 to i16, !dbg !3735
  br label %ClampToQuantum.exit46.i633, !dbg !3736

ClampToQuantum.exit46.i633:                       ; preds = %if.end3.i44.i628, %if.end.i41.i625, %ClampToQuantum.exit38.i623
  %retval.0.i45.i629 = phi i16 [ %conv.i43.i627, %if.end3.i44.i628 ], [ 0, %ClampToQuantum.exit38.i623 ], [ -1, %if.end.i41.i625 ], !dbg !3728
  %opacity7.i630 = getelementptr inbounds %struct._PixelPacket, ptr %q.3901, i64 -1, i32 3, !dbg !3737
  store i16 %retval.0.i45.i629, ptr %opacity7.i630, align 2, !dbg !3737, !tbaa !1268
  br i1 %cmp.i521, label %if.then10.i639, label %lor.lhs.false.i635, !dbg !3738

lor.lhs.false.i635:                               ; preds = %ClampToQuantum.exit46.i633
  %81 = load i32, ptr %image, align 8, !dbg !3739, !tbaa !2541
  %cmp8.i634 = icmp eq i32 %81, 2, !dbg !3740
  br i1 %cmp8.i634, label %if.then10.i639, label %SetPixelPacket.exit647, !dbg !3741

if.then10.i639:                                   ; preds = %ClampToQuantum.exit46.i633, %lor.lhs.false.i635
  call void @llvm.dbg.value(metadata float %conv34.i.i589914, metadata !1284, metadata !DIExpression()), !dbg !3742
  %cmp.i47.i638 = fcmp ugt float %conv34.i.i589914, 0.000000e+00, !dbg !3744
  br i1 %cmp.i47.i638, label %if.end.i49.i641, label %ClampToQuantum.exit54.i646, !dbg !3745

if.end.i49.i641:                                  ; preds = %if.then10.i639
  %cmp1.i48.i640 = fcmp ult float %conv34.i.i589914, 6.553500e+04, !dbg !3746
  br i1 %cmp1.i48.i640, label %if.end3.i52.i644, label %ClampToQuantum.exit54.i646, !dbg !3747

if.end3.i52.i644:                                 ; preds = %if.end.i49.i641
  %add.i50.i642 = fadd float %conv34.i.i589914, 5.000000e-01, !dbg !3748
  %conv.i51.i643 = fptoui float %add.i50.i642 to i16, !dbg !3749
  br label %ClampToQuantum.exit54.i646, !dbg !3750

ClampToQuantum.exit54.i646:                       ; preds = %if.end3.i52.i644, %if.end.i49.i641, %if.then10.i639
  %retval.0.i53.i645 = phi i16 [ %conv.i51.i643, %if.end3.i52.i644 ], [ 0, %if.then10.i639 ], [ -1, %if.end.i49.i641 ], !dbg !3742
  store i16 %retval.0.i53.i645, ptr %incdec.ptr86, align 2, !dbg !3751, !tbaa !950
  br label %SetPixelPacket.exit647, !dbg !3751

SetPixelPacket.exit647:                           ; preds = %lor.lhs.false.i635, %ClampToQuantum.exit54.i646
  call void @llvm.dbg.value(metadata ptr undef, metadata !2175, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !2182, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !2183, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr undef, metadata !2184, metadata !DIExpression()), !dbg !3752
  %82 = load i16, ptr %red.i510, align 2, !dbg !3754, !tbaa !981
  %conv.i649 = uitofp i16 %82 to float, !dbg !3755
  call void @llvm.dbg.value(metadata float %conv.i649, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  %83 = load i16, ptr %green.i513, align 2, !dbg !3756, !tbaa !986
  %conv2.i652 = uitofp i16 %83 to float, !dbg !3757
  call void @llvm.dbg.value(metadata float %conv2.i652, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  %84 = load i16, ptr %incdec.ptr83, align 2, !dbg !3758, !tbaa !991
  %conv4.i654 = uitofp i16 %84 to float, !dbg !3759
  call void @llvm.dbg.value(metadata float %conv4.i654, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  %85 = load i16, ptr %opacity.i518, align 2, !dbg !3760, !tbaa !1268
  %conv6.i657 = uitofp i16 %85 to float, !dbg !3761
  call void @llvm.dbg.value(metadata float %conv6.i657, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  br i1 %cmp.i521, label %cond.end.i662, label %for.inc98, !dbg !3762

cond.end.i662:                                    ; preds = %SetPixelPacket.exit647
  %86 = load i16, ptr %incdec.ptr84, align 2, !dbg !3763, !tbaa !950
  %conv14.i660 = uitofp i16 %86 to float, !dbg !3764
  call void @llvm.dbg.value(metadata float %conv14.i660, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  br label %for.inc98, !dbg !3765

for.inc98:                                        ; preds = %cond.end.i662, %SetPixelPacket.exit647, %for.body82
  %conv34.i.i589913 = phi float [ %conv34.i.i589912, %for.body82 ], [ %conv34.i.i589914, %cond.end.i662 ], [ %conv34.i.i589914, %SetPixelPacket.exit647 ]
  %conv14.i522910 = phi float [ %conv14.i522909, %for.body82 ], [ %conv14.i522911, %cond.end.i662 ], [ %conv14.i522911, %SetPixelPacket.exit647 ]
  %pixel.sroa.31.6 = phi float [ %pixel.sroa.31.4892, %for.body82 ], [ %conv14.i660, %cond.end.i662 ], [ %pixel.sroa.31.4892, %SetPixelPacket.exit647 ], !dbg !3213
  %pixel.sroa.24.3 = phi float [ %pixel.sroa.24.2893, %for.body82 ], [ %conv6.i657, %cond.end.i662 ], [ %conv6.i657, %SetPixelPacket.exit647 ], !dbg !3213
  %pixel.sroa.17.3 = phi float [ %pixel.sroa.17.2894, %for.body82 ], [ %conv4.i654, %cond.end.i662 ], [ %conv4.i654, %SetPixelPacket.exit647 ], !dbg !3213
  %pixel.sroa.10.3 = phi float [ %pixel.sroa.10.2895, %for.body82 ], [ %conv2.i652, %cond.end.i662 ], [ %conv2.i652, %SetPixelPacket.exit647 ], !dbg !3213
  %pixel.sroa.3.3 = phi float [ %pixel.sroa.3.2896, %for.body82 ], [ %conv.i649, %cond.end.i662 ], [ %conv.i649, %SetPixelPacket.exit647 ], !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.6, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  %inc99 = add nuw nsw i64 %i.2899, 1, !dbg !3766
  call void @llvm.dbg.value(metadata float %pixel.sroa.3.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.10.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.17.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.3, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata float %pixel.sroa.31.6, metadata !748, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr85, metadata !757, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !756, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %inc99, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr86, metadata !754, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !753, metadata !DIExpression()), !dbg !3213
  %exitcond954.not = icmp eq i64 %inc99, %height, !dbg !3767
  br i1 %exitcond954.not, label %for.end100, label %for.body82, !dbg !3594, !llvm.loop !3768

for.end100:                                       ; preds = %for.inc98, %sw.bb74.for.end100_crit_edge
  %neg5.i672.pre-phi = phi float [ %.pre959, %sw.bb74.for.end100_crit_edge ], [ %neg5.i534, %for.inc98 ], !dbg !3600
  %neg.i669.pre-phi = phi double [ %.pre958, %sw.bb74.for.end100_crit_edge ], [ %neg.i531, %for.inc98 ], !dbg !3599
  %pixel.sroa.31.4.lcssa = phi float [ %pixel.sroa.31.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.31.6, %for.inc98 ], !dbg !3237
  %pixel.sroa.24.2.lcssa = phi float [ %pixel.sroa.24.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.24.3, %for.inc98 ], !dbg !3237
  %pixel.sroa.17.2.lcssa = phi float [ %pixel.sroa.17.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.17.3, %for.inc98 ], !dbg !3237
  %pixel.sroa.10.2.lcssa = phi float [ %pixel.sroa.10.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.10.3, %for.inc98 ], !dbg !3237
  %pixel.sroa.3.2.lcssa = phi float [ %pixel.sroa.3.0.copyload, %sw.bb74.for.end100_crit_edge ], [ %pixel.sroa.3.3, %for.inc98 ], !dbg !3237
  %shear_indexes.3.lcssa = phi ptr [ %add.ptr78, %sw.bb74.for.end100_crit_edge ], [ %incdec.ptr86, %for.inc98 ], !dbg !3770
  %q.3.lcssa = phi ptr [ %add.ptr77, %sw.bb74.for.end100_crit_edge ], [ %incdec.ptr85, %for.inc98 ], !dbg !3770
  %87 = load float, ptr %opacity7.i, align 4, !dbg !3771, !tbaa !1256
  call void @llvm.dbg.value(metadata ptr undef, metadata !2390, metadata !DIExpression()) #10, !dbg !3772
  call void @llvm.dbg.value(metadata float %pixel.sroa.24.2.lcssa, metadata !2398, metadata !DIExpression()) #10, !dbg !3772
  call void @llvm.dbg.value(metadata ptr %background, metadata !2399, metadata !DIExpression()) #10, !dbg !3772
  call void @llvm.dbg.value(metadata float %87, metadata !2400, metadata !DIExpression()) #10, !dbg !3772
  call void @llvm.dbg.value(metadata float %sub33, metadata !2401, metadata !DIExpression()) #10, !dbg !3772
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2402, metadata !DIExpression()) #10, !dbg !3772
  %sub1.i667 = fsub float 6.553500e+04, %pixel.sroa.24.2.lcssa, !dbg !3773
  %conv2.i668 = fpext float %sub1.i667 to double, !dbg !3774
  %88 = call double @llvm.fmuladd.f64(double %neg.i669.pre-phi, double %conv2.i668, double 6.553500e+04) #10, !dbg !3599
  %conv3.i670 = fptrunc double %88 to float, !dbg !3775
  %sub4.i671 = fsub float 6.553500e+04, %87, !dbg !3776
  %89 = call float @llvm.fmuladd.f32(float %neg5.i672.pre-phi, float %sub4.i671, float 6.553500e+04) #10, !dbg !3600
  call void @llvm.dbg.value(metadata ptr undef, metadata !2411, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata float %conv3.i670, metadata !2416, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata ptr %background, metadata !2417, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata float %89, metadata !2418, metadata !DIExpression()) #10, !dbg !3777
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2419, metadata !DIExpression()) #10, !dbg !3777
  %conv.i.i673 = fpext float %conv3.i670 to double, !dbg !3779
  %90 = call double @llvm.fmuladd.f64(double %conv.i.i673, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !3780
  %conv1.i.i674 = fptrunc double %90 to float, !dbg !3781
  call void @llvm.dbg.value(metadata float %conv1.i.i674, metadata !2422, metadata !DIExpression()) #10, !dbg !3777
  %conv2.i.i675 = fpext float %89 to double, !dbg !3782
  %91 = call double @llvm.fmuladd.f64(double %conv2.i.i675, double 0xBEF0001000100010, double 1.000000e+00) #10, !dbg !3783
  %conv3.i.i676 = fptrunc double %91 to float, !dbg !3784
  call void @llvm.dbg.value(metadata float %conv3.i.i676, metadata !2421, metadata !DIExpression()) #10, !dbg !3777
  %add.i.i677 = fadd float %conv1.i.i674, %conv3.i.i676, !dbg !3785
  call void @llvm.dbg.value(metadata float %add.i.i677, metadata !2432, metadata !DIExpression()) #10, !dbg !3786
  %cmp.i.i.i678 = fcmp olt float %add.i.i677, 0.000000e+00, !dbg !3788
  br i1 %cmp.i.i.i678, label %RoundToUnity.exit.i.i692, label %cond.false.i.i.i680, !dbg !3789

cond.false.i.i.i680:                              ; preds = %for.end100
  %cmp3.i.i.i679 = fcmp ogt float %add.i.i677, 1.000000e+00, !dbg !3790
  br i1 %cmp3.i.i.i679, label %RoundToUnity.exit.i.i692, label %cond.false6.i.i.i682, !dbg !3791

cond.false6.i.i.i682:                             ; preds = %cond.false.i.i.i680
  %phi.cast.i.i681 = fpext float %add.i.i677 to double, !dbg !3791
  br label %RoundToUnity.exit.i.i692, !dbg !3791

RoundToUnity.exit.i.i692:                         ; preds = %cond.false6.i.i.i682, %cond.false.i.i.i680, %for.end100
  %cond9.i.i.i683 = phi double [ 0.000000e+00, %for.end100 ], [ %phi.cast.i.i681, %cond.false6.i.i.i682 ], [ 1.000000e+00, %cond.false.i.i.i680 ]
  call void @llvm.dbg.value(metadata double %cond9.i.i.i683, metadata !2420, metadata !DIExpression()) #10, !dbg !3777
  %sub.i.i684 = fsub double 1.000000e+00, %cond9.i.i.i683, !dbg !3792
  %mul.i.i685 = fmul double %sub.i.i684, 6.553500e+04, !dbg !3793
  %conv5.i.i686 = fptrunc double %mul.i.i685 to float, !dbg !3794
  store float %conv5.i.i686, ptr %opacity.i.i, align 4, !dbg !3795, !tbaa !1256
  call void @llvm.dbg.value(metadata double %cond9.i.i.i683, metadata !2445, metadata !DIExpression()) #10, !dbg !3796
  %cmp.i60.i.i688 = fcmp olt double %cond9.i.i.i683, 0.000000e+00, !dbg !3798
  %cond.i.i.i689 = select i1 %cmp.i60.i.i688, double -1.000000e+00, double 1.000000e+00, !dbg !3799
  call void @llvm.dbg.value(metadata double %cond.i.i.i689, metadata !2448, metadata !DIExpression()) #10, !dbg !3796
  %mul.i.i.i690 = fmul double %cond9.i.i.i683, %cond.i.i.i689, !dbg !3800
  %cmp1.i.i.i691 = fcmp ult double %mul.i.i.i690, 1.000000e-15, !dbg !3801
  br i1 %cmp1.i.i.i691, label %if.end.i.i.i696, label %if.then.i.i.i694, !dbg !3802

if.then.i.i.i694:                                 ; preds = %RoundToUnity.exit.i.i692
  %div.i.i.i693 = fdiv double 1.000000e+00, %cond9.i.i.i683, !dbg !3803
  br label %PerceptibleReciprocal.exit.i.i721, !dbg !3804

if.end.i.i.i696:                                  ; preds = %RoundToUnity.exit.i.i692
  %div2.i.i.i695 = fdiv double %cond.i.i.i689, 1.000000e-15, !dbg !3805
  br label %PerceptibleReciprocal.exit.i.i721, !dbg !3806

PerceptibleReciprocal.exit.i.i721:                ; preds = %if.end.i.i.i696, %if.then.i.i.i694
  %retval.0.i.i.i697 = phi double [ %div.i.i.i693, %if.then.i.i.i694 ], [ %div2.i.i.i695, %if.end.i.i.i696 ], !dbg !3796
  call void @llvm.dbg.value(metadata double %retval.0.i.i.i697, metadata !2420, metadata !DIExpression()) #10, !dbg !3777
  %92 = load float, ptr %red1.i, align 8, !dbg !3807, !tbaa !1251
  %mul9.i.i700 = fmul float %92, %conv3.i.i676, !dbg !3808
  %93 = call float @llvm.fmuladd.f32(float %conv1.i.i674, float %pixel.sroa.3.2.lcssa, float %mul9.i.i700) #10, !dbg !3809
  %conv10.i.i701 = fpext float %93 to double, !dbg !3810
  %mul11.i.i702 = fmul double %retval.0.i.i.i697, %conv10.i.i701, !dbg !3811
  %conv12.i.i703 = fptrunc double %mul11.i.i702 to float, !dbg !3812
  store float %conv12.i.i703, ptr %red13.i.i, align 8, !dbg !3813, !tbaa !1251
  %94 = load float, ptr %green3.i, align 4, !dbg !3814, !tbaa !1254
  %mul16.i.i707 = fmul float %94, %conv3.i.i676, !dbg !3815
  %95 = call float @llvm.fmuladd.f32(float %conv1.i.i674, float %pixel.sroa.10.2.lcssa, float %mul16.i.i707) #10, !dbg !3816
  %conv17.i.i708 = fpext float %95 to double, !dbg !3817
  %mul18.i.i709 = fmul double %retval.0.i.i.i697, %conv17.i.i708, !dbg !3818
  %conv19.i.i710 = fptrunc double %mul18.i.i709 to float, !dbg !3819
  store float %conv19.i.i710, ptr %green20.i.i, align 4, !dbg !3820, !tbaa !1254
  %96 = load float, ptr %blue5.i, align 8, !dbg !3821, !tbaa !1255
  %mul23.i.i714 = fmul float %96, %conv3.i.i676, !dbg !3822
  %97 = call float @llvm.fmuladd.f32(float %conv1.i.i674, float %pixel.sroa.17.2.lcssa, float %mul23.i.i714) #10, !dbg !3823
  %conv24.i.i715 = fpext float %97 to double, !dbg !3824
  %mul25.i.i716 = fmul double %retval.0.i.i.i697, %conv24.i.i715, !dbg !3825
  %conv26.i.i717 = fptrunc double %mul25.i.i716 to float, !dbg !3826
  store float %conv26.i.i717, ptr %blue27.i.i, align 8, !dbg !3827, !tbaa !1255
  %98 = load i32, ptr %colorspace.i.i385, align 4, !dbg !3828, !tbaa !2225
  %cmp.i.i720 = icmp eq i32 %98, 12, !dbg !3829
  br i1 %cmp.i.i720, label %if.then.i.i729, label %MagickPixelCompositeAreaBlend.exit730, !dbg !3830

if.then.i.i729:                                   ; preds = %PerceptibleReciprocal.exit.i.i721
  %99 = load float, ptr %index30.i.i389, align 8, !dbg !3831, !tbaa !2290
  %mul31.i.i724 = fmul float %99, %conv3.i.i676, !dbg !3832
  %100 = call float @llvm.fmuladd.f32(float %conv1.i.i674, float %pixel.sroa.31.4.lcssa, float %mul31.i.i724) #10, !dbg !3833
  %conv32.i.i725 = fpext float %100 to double, !dbg !3834
  %mul33.i.i726 = fmul double %retval.0.i.i.i697, %conv32.i.i725, !dbg !3835
  %conv34.i.i727 = fptrunc double %mul33.i.i726 to float, !dbg !3836
  store float %conv34.i.i727, ptr %index35.i.i, align 8, !dbg !3837, !tbaa !2290
  br label %MagickPixelCompositeAreaBlend.exit730, !dbg !3838

MagickPixelCompositeAreaBlend.exit730:            ; preds = %PerceptibleReciprocal.exit.i.i721, %if.then.i.i729
  %incdec.ptr103 = getelementptr inbounds %struct._PixelPacket, ptr %q.3.lcssa, i64 -1, !dbg !3839
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103, metadata !757, metadata !DIExpression()), !dbg !3213
  %incdec.ptr104 = getelementptr inbounds i16, ptr %shear_indexes.3.lcssa, i64 -1, !dbg !3840
  call void @llvm.dbg.value(metadata ptr %incdec.ptr104, metadata !754, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata ptr %destination, metadata !2493, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103, metadata !2494, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata ptr %incdec.ptr104, metadata !2495, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata float %conv12.i.i703, metadata !1284, metadata !DIExpression()), !dbg !3843
  %cmp.i.i732 = fcmp ugt float %conv12.i.i703, 0.000000e+00, !dbg !3845
  br i1 %cmp.i.i732, label %if.end.i.i734, label %ClampToQuantum.exit.i742, !dbg !3846

if.end.i.i734:                                    ; preds = %MagickPixelCompositeAreaBlend.exit730
  %cmp1.i.i733 = fcmp ult float %conv12.i.i703, 6.553500e+04, !dbg !3847
  br i1 %cmp1.i.i733, label %if.end3.i.i737, label %ClampToQuantum.exit.i742, !dbg !3848

if.end3.i.i737:                                   ; preds = %if.end.i.i734
  %add.i.i735 = fadd float %conv12.i.i703, 5.000000e-01, !dbg !3849
  %conv.i.i736 = fptoui float %add.i.i735 to i16, !dbg !3850
  br label %ClampToQuantum.exit.i742, !dbg !3851

ClampToQuantum.exit.i742:                         ; preds = %if.end3.i.i737, %if.end.i.i734, %MagickPixelCompositeAreaBlend.exit730
  %retval.0.i.i738 = phi i16 [ %conv.i.i736, %if.end3.i.i737 ], [ 0, %MagickPixelCompositeAreaBlend.exit730 ], [ -1, %if.end.i.i734 ], !dbg !3843
  %red1.i739 = getelementptr inbounds %struct._PixelPacket, ptr %q.3.lcssa, i64 -1, i32 2, !dbg !3852
  store i16 %retval.0.i.i738, ptr %red1.i739, align 2, !dbg !3852, !tbaa !981
  call void @llvm.dbg.value(metadata float %conv19.i.i710, metadata !1284, metadata !DIExpression()), !dbg !3853
  %cmp.i23.i741 = fcmp ugt float %conv19.i.i710, 0.000000e+00, !dbg !3855
  br i1 %cmp.i23.i741, label %if.end.i25.i744, label %ClampToQuantum.exit30.i752, !dbg !3856

if.end.i25.i744:                                  ; preds = %ClampToQuantum.exit.i742
  %cmp1.i24.i743 = fcmp ult float %conv19.i.i710, 6.553500e+04, !dbg !3857
  br i1 %cmp1.i24.i743, label %if.end3.i28.i747, label %ClampToQuantum.exit30.i752, !dbg !3858

if.end3.i28.i747:                                 ; preds = %if.end.i25.i744
  %add.i26.i745 = fadd float %conv19.i.i710, 5.000000e-01, !dbg !3859
  %conv.i27.i746 = fptoui float %add.i26.i745 to i16, !dbg !3860
  br label %ClampToQuantum.exit30.i752, !dbg !3861

ClampToQuantum.exit30.i752:                       ; preds = %if.end3.i28.i747, %if.end.i25.i744, %ClampToQuantum.exit.i742
  %retval.0.i29.i748 = phi i16 [ %conv.i27.i746, %if.end3.i28.i747 ], [ 0, %ClampToQuantum.exit.i742 ], [ -1, %if.end.i25.i744 ], !dbg !3853
  %green3.i749 = getelementptr inbounds %struct._PixelPacket, ptr %q.3.lcssa, i64 -1, i32 1, !dbg !3862
  store i16 %retval.0.i29.i748, ptr %green3.i749, align 2, !dbg !3862, !tbaa !986
  call void @llvm.dbg.value(metadata float %conv26.i.i717, metadata !1284, metadata !DIExpression()), !dbg !3863
  %cmp.i31.i751 = fcmp ugt float %conv26.i.i717, 0.000000e+00, !dbg !3865
  br i1 %cmp.i31.i751, label %if.end.i33.i754, label %ClampToQuantum.exit38.i761, !dbg !3866

if.end.i33.i754:                                  ; preds = %ClampToQuantum.exit30.i752
  %cmp1.i32.i753 = fcmp ult float %conv26.i.i717, 6.553500e+04, !dbg !3867
  br i1 %cmp1.i32.i753, label %if.end3.i36.i757, label %ClampToQuantum.exit38.i761, !dbg !3868

if.end3.i36.i757:                                 ; preds = %if.end.i33.i754
  %add.i34.i755 = fadd float %conv26.i.i717, 5.000000e-01, !dbg !3869
  %conv.i35.i756 = fptoui float %add.i34.i755 to i16, !dbg !3870
  br label %ClampToQuantum.exit38.i761, !dbg !3871

ClampToQuantum.exit38.i761:                       ; preds = %if.end3.i36.i757, %if.end.i33.i754, %ClampToQuantum.exit30.i752
  %retval.0.i37.i758 = phi i16 [ %conv.i35.i756, %if.end3.i36.i757 ], [ 0, %ClampToQuantum.exit30.i752 ], [ -1, %if.end.i33.i754 ], !dbg !3863
  store i16 %retval.0.i37.i758, ptr %incdec.ptr103, align 2, !dbg !3872, !tbaa !991
  call void @llvm.dbg.value(metadata float %conv5.i.i686, metadata !1284, metadata !DIExpression()), !dbg !3873
  %cmp.i39.i760 = fcmp ugt float %conv5.i.i686, 0.000000e+00, !dbg !3875
  br i1 %cmp.i39.i760, label %if.end.i41.i763, label %ClampToQuantum.exit46.i771, !dbg !3876

if.end.i41.i763:                                  ; preds = %ClampToQuantum.exit38.i761
  %cmp1.i40.i762 = fcmp ult float %conv5.i.i686, 6.553500e+04, !dbg !3877
  br i1 %cmp1.i40.i762, label %if.end3.i44.i766, label %ClampToQuantum.exit46.i771, !dbg !3878

if.end3.i44.i766:                                 ; preds = %if.end.i41.i763
  %add.i42.i764 = fadd float %conv5.i.i686, 5.000000e-01, !dbg !3879
  %conv.i43.i765 = fptoui float %add.i42.i764 to i16, !dbg !3880
  br label %ClampToQuantum.exit46.i771, !dbg !3881

ClampToQuantum.exit46.i771:                       ; preds = %if.end3.i44.i766, %if.end.i41.i763, %ClampToQuantum.exit38.i761
  %retval.0.i45.i767 = phi i16 [ %conv.i43.i765, %if.end3.i44.i766 ], [ 0, %ClampToQuantum.exit38.i761 ], [ -1, %if.end.i41.i763 ], !dbg !3873
  %opacity7.i768 = getelementptr inbounds %struct._PixelPacket, ptr %q.3.lcssa, i64 -1, i32 3, !dbg !3882
  store i16 %retval.0.i45.i767, ptr %opacity7.i768, align 2, !dbg !3882, !tbaa !1268
  %101 = load i32, ptr %colorspace, align 4, !dbg !3883, !tbaa !2205
  %cmp.i770 = icmp eq i32 %101, 12, !dbg !3884
  br i1 %cmp.i770, label %if.then10.i777, label %lor.lhs.false.i773, !dbg !3885

lor.lhs.false.i773:                               ; preds = %ClampToQuantum.exit46.i771
  %102 = load i32, ptr %image, align 8, !dbg !3886, !tbaa !2541
  %cmp8.i772 = icmp eq i32 %102, 2, !dbg !3887
  br i1 %cmp8.i772, label %if.then10.i777, label %SetPixelPacket.exit785, !dbg !3888

if.then10.i777:                                   ; preds = %ClampToQuantum.exit46.i771, %lor.lhs.false.i773
  %103 = load float, ptr %index35.i.i, align 8, !dbg !3889, !tbaa !2290
  call void @llvm.dbg.value(metadata float %103, metadata !1284, metadata !DIExpression()), !dbg !3890
  %cmp.i47.i776 = fcmp ugt float %103, 0.000000e+00, !dbg !3892
  br i1 %cmp.i47.i776, label %if.end.i49.i779, label %ClampToQuantum.exit54.i784, !dbg !3893

if.end.i49.i779:                                  ; preds = %if.then10.i777
  %cmp1.i48.i778 = fcmp ult float %103, 6.553500e+04, !dbg !3894
  br i1 %cmp1.i48.i778, label %if.end3.i52.i782, label %ClampToQuantum.exit54.i784, !dbg !3895

if.end3.i52.i782:                                 ; preds = %if.end.i49.i779
  %add.i50.i780 = fadd float %103, 5.000000e-01, !dbg !3896
  %conv.i51.i781 = fptoui float %add.i50.i780 to i16, !dbg !3897
  br label %ClampToQuantum.exit54.i784, !dbg !3898

ClampToQuantum.exit54.i784:                       ; preds = %if.end3.i52.i782, %if.end.i49.i779, %if.then10.i777
  %retval.0.i53.i783 = phi i16 [ %conv.i51.i781, %if.end3.i52.i782 ], [ 0, %if.then10.i777 ], [ -1, %if.end.i49.i779 ], !dbg !3890
  store i16 %retval.0.i53.i783, ptr %incdec.ptr104, align 2, !dbg !3889, !tbaa !950
  br label %SetPixelPacket.exit785, !dbg !3889

SetPixelPacket.exit785:                           ; preds = %lor.lhs.false.i773, %ClampToQuantum.exit54.i784
  call void @llvm.dbg.value(metadata i64 0, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr103, metadata !757, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr104, metadata !754, metadata !DIExpression()), !dbg !3213
  %cmp107915 = icmp sgt i64 %conv31, 0, !dbg !3899
  br i1 %cmp107915, label %for.body109.lr.ph, label %sw.epilog, !dbg !3902

for.body109.lr.ph:                                ; preds = %SetPixelPacket.exit785
  %cmp.i.i787 = fcmp ole float %92, 0.000000e+00
  %cmp1.i.i788 = fcmp oge float %92, 6.553500e+04
  %add.i.i790 = fadd float %92, 5.000000e-01
  %conv.i.i791 = fptoui float %add.i.i790 to i16
  %cmp.i23.i796 = fcmp ole float %94, 0.000000e+00
  %cmp1.i24.i798 = fcmp oge float %94, 6.553500e+04
  %add.i26.i800 = fadd float %94, 5.000000e-01
  %conv.i27.i801 = fptoui float %add.i26.i800 to i16
  %cmp.i31.i806 = fcmp ole float %96, 0.000000e+00
  %cmp1.i32.i808 = fcmp oge float %96, 6.553500e+04
  %add.i34.i810 = fadd float %96, 5.000000e-01
  %conv.i35.i811 = fptoui float %add.i34.i810 to i16
  %cmp.i39.i815 = fcmp ole float %87, 0.000000e+00
  %cmp1.i40.i817 = fcmp oge float %87, 6.553500e+04
  %add.i42.i819 = fadd float %87, 5.000000e-01
  %conv.i43.i820 = fptoui float %add.i42.i819 to i16
  %104 = load float, ptr %index30.i.i389, align 8
  %cmp.i47.i831 = fcmp ole float %104, 0.000000e+00
  %cmp1.i48.i833 = fcmp oge float %104, 6.553500e+04
  %add.i50.i835 = fadd float %104, 5.000000e-01
  %conv.i51.i836 = fptoui float %add.i50.i835 to i16
  %brmerge932 = or i1 %cmp.i.i787, %cmp1.i.i788
  %not.cmp.i.i787 = xor i1 %cmp.i.i787, true
  %.mux933 = sext i1 %not.cmp.i.i787 to i16
  %spec.select945 = select i1 %brmerge932, i16 %.mux933, i16 %conv.i.i791
  %brmerge934 = or i1 %cmp.i23.i796, %cmp1.i24.i798
  %not.cmp.i23.i796 = xor i1 %cmp.i23.i796, true
  %.mux935 = sext i1 %not.cmp.i23.i796 to i16
  %spec.select949 = select i1 %brmerge934, i16 %.mux935, i16 %conv.i27.i801
  %brmerge936 = or i1 %cmp.i31.i806, %cmp1.i32.i808
  %not.cmp.i31.i806 = xor i1 %cmp.i31.i806, true
  %.mux937 = sext i1 %not.cmp.i31.i806 to i16
  %spec.select946 = select i1 %brmerge936, i16 %.mux937, i16 %conv.i35.i811
  %brmerge938 = or i1 %cmp.i39.i815, %cmp1.i40.i817
  %not.cmp.i39.i815 = xor i1 %cmp.i39.i815, true
  %.mux939 = sext i1 %not.cmp.i39.i815 to i16
  %spec.select951 = select i1 %brmerge938, i16 %.mux939, i16 %conv.i43.i820
  %brmerge940 = or i1 %cmp.i47.i831, %cmp1.i48.i833
  %not.cmp.i47.i831 = xor i1 %cmp.i47.i831, true
  %.mux941 = sext i1 %not.cmp.i47.i831 to i16
  %spec.select947 = select i1 %brmerge940, i16 %.mux941, i16 %conv.i51.i836
  br label %for.body109, !dbg !3902

for.body109:                                      ; preds = %for.body109.lr.ph, %SetPixelPacket.exit840
  %q.4918 = phi ptr [ %incdec.ptr103, %for.body109.lr.ph ], [ %incdec.ptr110, %SetPixelPacket.exit840 ]
  %i.3917 = phi i64 [ 0, %for.body109.lr.ph ], [ %inc113, %SetPixelPacket.exit840 ]
  %shear_indexes.4916 = phi ptr [ %incdec.ptr104, %for.body109.lr.ph ], [ %incdec.ptr111, %SetPixelPacket.exit840 ]
  call void @llvm.dbg.value(metadata ptr %q.4918, metadata !757, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %i.3917, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %shear_indexes.4916, metadata !754, metadata !DIExpression()), !dbg !3213
  %incdec.ptr110 = getelementptr inbounds %struct._PixelPacket, ptr %q.4918, i64 -1, !dbg !3903
  call void @llvm.dbg.value(metadata ptr %incdec.ptr110, metadata !757, metadata !DIExpression()), !dbg !3213
  %incdec.ptr111 = getelementptr inbounds i16, ptr %shear_indexes.4916, i64 -1, !dbg !3904
  call void @llvm.dbg.value(metadata ptr %incdec.ptr111, metadata !754, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %image, metadata !2488, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata ptr %background, metadata !2493, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata ptr %incdec.ptr110, metadata !2494, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata ptr %incdec.ptr111, metadata !2495, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata float %92, metadata !1284, metadata !DIExpression()), !dbg !3907
  %red1.i794 = getelementptr inbounds %struct._PixelPacket, ptr %q.4918, i64 -1, i32 2, !dbg !3909
  store i16 %spec.select945, ptr %red1.i794, align 2, !dbg !3909, !tbaa !981
  call void @llvm.dbg.value(metadata float %94, metadata !1284, metadata !DIExpression()), !dbg !3910
  %green3.i804 = getelementptr inbounds %struct._PixelPacket, ptr %q.4918, i64 -1, i32 1, !dbg !3912
  store i16 %spec.select949, ptr %green3.i804, align 2, !dbg !3912, !tbaa !986
  call void @llvm.dbg.value(metadata float %96, metadata !1284, metadata !DIExpression()), !dbg !3913
  store i16 %spec.select946, ptr %incdec.ptr110, align 2, !dbg !3915, !tbaa !991
  call void @llvm.dbg.value(metadata float %87, metadata !1284, metadata !DIExpression()), !dbg !3916
  %opacity7.i823 = getelementptr inbounds %struct._PixelPacket, ptr %q.4918, i64 -1, i32 3, !dbg !3918
  store i16 %spec.select951, ptr %opacity7.i823, align 2, !dbg !3918, !tbaa !1268
  br i1 %cmp.i770, label %if.then10.i832, label %lor.lhs.false.i828, !dbg !3919

lor.lhs.false.i828:                               ; preds = %for.body109
  %105 = load i32, ptr %image, align 8, !dbg !3920, !tbaa !2541
  %cmp8.i827 = icmp eq i32 %105, 2, !dbg !3921
  br i1 %cmp8.i827, label %if.then10.i832, label %SetPixelPacket.exit840, !dbg !3922

if.then10.i832:                                   ; preds = %for.body109, %lor.lhs.false.i828
  call void @llvm.dbg.value(metadata float %104, metadata !1284, metadata !DIExpression()), !dbg !3923
  store i16 %spec.select947, ptr %incdec.ptr111, align 2, !dbg !3925, !tbaa !950
  br label %SetPixelPacket.exit840, !dbg !3925

SetPixelPacket.exit840:                           ; preds = %lor.lhs.false.i828, %if.then10.i832
  %inc113 = add nuw nsw i64 %i.3917, 1, !dbg !3926
  call void @llvm.dbg.value(metadata ptr %incdec.ptr110, metadata !757, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %inc113, metadata !755, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr111, metadata !754, metadata !DIExpression()), !dbg !3213
  %exitcond955.not = icmp eq i64 %inc113, %conv31, !dbg !3899
  br i1 %exitcond955.not, label %sw.epilog, label %for.body109, !dbg !3902, !llvm.loop !3927

sw.epilog:                                        ; preds = %SetPixelPacket.exit509, %SetPixelPacket.exit840, %SetPixelPacket.exit454, %SetPixelPacket.exit785, %sw.bb
  %call115 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call4, ptr noundef %exception) #12, !dbg !3929
  %cmp116 = icmp ne i32 %call115, 0, !dbg !3931
  %spec.select = zext i1 %cmp116 to i32, !dbg !3932
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !740, metadata !DIExpression()), !dbg !3103
  %106 = load ptr, ptr %progress_monitor, align 8, !dbg !3933, !tbaa !1655
  %cmp120.not = icmp eq ptr %106, null, !dbg !3934
  br i1 %cmp120.not, label %cleanup, label %SetImageProgress.exit, !dbg !3935

SetImageProgress.exit:                            ; preds = %sw.epilog
  %inc123 = add nsw i64 %progress.0920, 1, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %inc123, metadata !741, metadata !DIExpression()), !dbg !3103
  %107 = load i64, ptr %rows, align 8, !dbg !3937, !tbaa !915
  call void @llvm.dbg.value(metadata ptr %image, metadata !1661, metadata !DIExpression()) #10, !dbg !3938
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !1667, metadata !DIExpression()) #10, !dbg !3938
  call void @llvm.dbg.value(metadata i64 %progress.0920, metadata !1668, metadata !DIExpression()) #10, !dbg !3938
  call void @llvm.dbg.value(metadata i64 %107, metadata !1669, metadata !DIExpression()) #10, !dbg !3938
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #10, !dbg !3940
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1670, metadata !DIExpression()) #10, !dbg !3941
  %call.i842 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, ptr noundef nonnull %filename.i) #10, !dbg !3942
  %108 = load ptr, ptr %progress_monitor, align 8, !dbg !3943, !tbaa !1655
  %109 = load ptr, ptr %client_data.i, align 8, !dbg !3944, !tbaa !1678
  %call4.i = call i32 %108(ptr noundef nonnull %message.i, i64 noundef %progress.0920, i64 noundef %107, ptr noundef %109) #10, !dbg !3945
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #10, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !760, metadata !DIExpression()), !dbg !3947
  %cmp126 = icmp eq i32 %call4.i, 0, !dbg !3948
  %spec.select255 = select i1 %cmp126, i32 0, i32 %spec.select, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %spec.select255, metadata !740, metadata !DIExpression()), !dbg !3103
  br label %cleanup, !dbg !3951

cleanup:                                          ; preds = %sw.epilog, %SetImageProgress.exit, %if.end12, %if.end8, %for.body
  %progress.2 = phi i64 [ %progress.0920, %for.body ], [ %progress.0920, %if.end8 ], [ %progress.0920, %if.end12 ], [ %inc123, %SetImageProgress.exit ], [ %progress.0920, %sw.epilog ], !dbg !3103
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end8 ], [ 1, %if.end12 ], [ %spec.select255, %SetImageProgress.exit ], [ %spec.select, %sw.epilog ], !dbg !3103
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !740, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !741, metadata !DIExpression()), !dbg !3103
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %destination) #10, !dbg !3952
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %source) #10, !dbg !3952
  %inc143 = add nuw nsw i64 %x.0921, 1, !dbg !3953
  call void @llvm.dbg.value(metadata i64 %inc143, metadata !743, metadata !DIExpression()), !dbg !3103
  %exitcond956.not = icmp eq i64 %inc143, %width, !dbg !3202
  br i1 %exitcond956.not, label %for.end144, label %for.body, !dbg !3203, !llvm.loop !3954

for.end144:                                       ; preds = %cleanup, %if.end3
  %status.0.lcssa = phi i32 [ 1, %if.end3 ], [ %status.4, %cleanup ], !dbg !3956
  %call145 = call ptr @DestroyCacheView(ptr noundef %call4) #10, !dbg !3957
  call void @llvm.dbg.value(metadata ptr %call145, metadata !739, metadata !DIExpression()), !dbg !3103
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %background) #10, !dbg !3958
  ret i32 %status.0.lcssa, !dbg !3959
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @CropToFitImage(ptr nocapture noundef %image, float noundef %x_shear, float noundef %y_shear, float noundef %width, float noundef %height, i32 noundef %rotate, ptr noundef %exception) unnamed_addr #0 !dbg !3960 {
entry:
  %extent = alloca [4 x %struct._PointInfo], align 16
  %geometry = alloca %struct._RectangleInfo, align 8
  %page = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3965, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata float %x_shear, metadata !3966, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata float %y_shear, metadata !3967, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata float %width, metadata !3968, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata float %height, metadata !3969, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i32 %rotate, metadata !3970, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3971, metadata !DIExpression()), !dbg !3982
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %extent) #10, !dbg !3983
  call void @llvm.dbg.declare(metadata ptr %extent, metadata !3973, metadata !DIExpression()), !dbg !3984
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #10, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !3979, metadata !DIExpression()), !dbg !3986
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %page), !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %page, metadata !3980, metadata !DIExpression()), !dbg !3987
  %fneg = fneg float %width, !dbg !3988
  %conv = fpext float %fneg to double, !dbg !3988
  %div = fmul double %conv, 5.000000e-01, !dbg !3989
  store double %div, ptr %extent, align 16, !dbg !3990, !tbaa !3991
  %fneg1 = fneg float %height, !dbg !3993
  %conv2 = fpext float %fneg1 to double, !dbg !3993
  %div3 = fmul double %conv2, 5.000000e-01, !dbg !3994
  %y = getelementptr inbounds %struct._PointInfo, ptr %extent, i64 0, i32 1, !dbg !3995
  store double %div3, ptr %y, align 8, !dbg !3996, !tbaa !3997
  %conv5 = fpext float %width to double, !dbg !3998
  %div6 = fmul double %conv5, 5.000000e-01, !dbg !3999
  %arrayidx7 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 1, !dbg !4000
  store double %div6, ptr %arrayidx7, align 16, !dbg !4001, !tbaa !3991
  %y13 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 1, i32 1, !dbg !4002
  store double %div3, ptr %y13, align 8, !dbg !4003, !tbaa !3997
  %arrayidx17 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 2, !dbg !4004
  store double %div, ptr %arrayidx17, align 16, !dbg !4005, !tbaa !3991
  %conv19 = fpext float %height to double, !dbg !4006
  %div20 = fmul double %conv19, 5.000000e-01, !dbg !4007
  %y22 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 2, i32 1, !dbg !4008
  store double %div20, ptr %y22, align 8, !dbg !4009, !tbaa !3997
  %arrayidx25 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 3, !dbg !4010
  store double %div6, ptr %arrayidx25, align 16, !dbg !4011, !tbaa !3991
  %y30 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 3, i32 1, !dbg !4012
  store double %div20, ptr %y30, align 8, !dbg !4013, !tbaa !3997
  call void @llvm.dbg.value(metadata i64 0, metadata !3981, metadata !DIExpression()), !dbg !3982
  %conv32 = fpext float %x_shear to double
  %conv37 = fpext float %y_shear to double
  %cmp42.not = icmp eq i32 %rotate, 0
  %0 = load ptr, ptr %image, align 8, !tbaa !2087
  %columns = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %1 = load i64, ptr %columns, align 8, !tbaa !824
  %conv49 = uitofp i64 %1 to double
  %div50 = fmul double %conv49, 5.000000e-01
  %rows = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %2 = load i64, ptr %rows, align 8, !tbaa !915
  %conv53 = uitofp i64 %2 to double
  %div54 = fmul double %conv53, 5.000000e-01
  call void @llvm.dbg.value(metadata i64 0, metadata !3981, metadata !DIExpression()), !dbg !3982
  br i1 %cmp42.not, label %for.body.us.preheader, label %for.body, !dbg !4014

for.body.us.preheader:                            ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !3981, metadata !DIExpression()), !dbg !3982
  %y34.us197 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 0, i32 1, !dbg !4018
  %3 = load double, ptr %y34.us197, align 8, !dbg !4018, !tbaa !3997
  %4 = tail call double @llvm.fmuladd.f64(double %conv32, double %3, double %div), !dbg !4019
  %5 = tail call double @llvm.fmuladd.f64(double %conv37, double %4, double %3), !dbg !4020
  %add.us198 = fadd double %4, %div50, !dbg !4021
  store double %add.us198, ptr %extent, align 16, !dbg !4021, !tbaa !3991
  %add57.us199 = fadd double %5, %div54, !dbg !4022
  store double %add57.us199, ptr %y34.us197, align 8, !dbg !4022, !tbaa !3997
  call void @llvm.dbg.value(metadata i64 1, metadata !3981, metadata !DIExpression()), !dbg !3982
  br label %for.body.us.for.body.us_crit_edge, !dbg !4023

for.body.us.for.body.us_crit_edge:                ; preds = %for.body.us.preheader, %for.body.us.for.body.us_crit_edge
  %inc.us200 = phi i64 [ 1, %for.body.us.preheader ], [ %inc.us, %for.body.us.for.body.us_crit_edge ]
  %arrayidx33.us.phi.trans.insert = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 %inc.us200
  %.pre194 = load double, ptr %arrayidx33.us.phi.trans.insert, align 16, !dbg !4019, !tbaa !3991
  call void @llvm.dbg.value(metadata i64 %inc.us200, metadata !3981, metadata !DIExpression()), !dbg !3982
  %arrayidx33.us = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 %inc.us200, !dbg !4024
  %y34.us = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 %inc.us200, i32 1, !dbg !4018
  %6 = load double, ptr %y34.us, align 8, !dbg !4018, !tbaa !3997
  %7 = tail call double @llvm.fmuladd.f64(double %conv32, double %6, double %.pre194), !dbg !4019
  %8 = tail call double @llvm.fmuladd.f64(double %conv37, double %7, double %6), !dbg !4020
  %add.us = fadd double %7, %div50, !dbg !4021
  store double %add.us, ptr %arrayidx33.us, align 16, !dbg !4021, !tbaa !3991
  %add57.us = fadd double %8, %div54, !dbg !4022
  store double %add57.us, ptr %y34.us, align 8, !dbg !4022, !tbaa !3997
  %inc.us = add nuw nsw i64 %inc.us200, 1, !dbg !4025
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !3981, metadata !DIExpression()), !dbg !3982
  %exitcond192.not = icmp eq i64 %inc.us, 4, !dbg !4026
  br i1 %exitcond192.not, label %for.end, label %for.body.us.for.body.us_crit_edge, !dbg !4023, !llvm.loop !4027

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %9 = phi double [ %.pre, %for.body.for.body_crit_edge ], [ %div, %entry ], !dbg !4019
  %i.0185 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.0185, metadata !3981, metadata !DIExpression()), !dbg !3982
  %arrayidx33 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 %i.0185, !dbg !4024
  %y34 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 %i.0185, i32 1, !dbg !4018
  %10 = load double, ptr %y34, align 8, !dbg !4018, !tbaa !3997
  %11 = tail call double @llvm.fmuladd.f64(double %conv32, double %10, double %9), !dbg !4019
  %12 = tail call double @llvm.fmuladd.f64(double %conv37, double %11, double %10), !dbg !4020
  %13 = tail call double @llvm.fmuladd.f64(double %conv32, double %12, double %11), !dbg !4029
  %add = fadd double %13, %div50, !dbg !4021
  store double %add, ptr %arrayidx33, align 16, !dbg !4021, !tbaa !3991
  %add57 = fadd double %12, %div54, !dbg !4022
  store double %add57, ptr %y34, align 8, !dbg !4022, !tbaa !3997
  %inc = add nuw nsw i64 %i.0185, 1, !dbg !4025
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3981, metadata !DIExpression()), !dbg !3982
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !4026
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge, !dbg !4023, !llvm.loop !4027

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx33.phi.trans.insert = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 %inc
  %.pre = load double, ptr %arrayidx33.phi.trans.insert, align 16, !dbg !4019, !tbaa !3991
  br label %for.body, !dbg !4023

for.end:                                          ; preds = %for.body, %for.body.us.for.body.us_crit_edge
  %min.sroa.0.0.copyload = load double, ptr %extent, align 16, !dbg !4031, !tbaa.struct !4032
  call void @llvm.dbg.value(metadata double %min.sroa.0.0.copyload, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  %min.sroa.7.0.arrayidx58.sroa_idx = getelementptr inbounds i8, ptr %extent, i64 8, !dbg !4031
  %min.sroa.7.0.copyload = load double, ptr %min.sroa.7.0.arrayidx58.sroa_idx, align 8, !dbg !4031, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata double %min.sroa.7.0.copyload, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.0.0.copyload, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.7.0.copyload, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata i64 1, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.0.0.copyload, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  br label %for.body63, !dbg !4035

for.body63:                                       ; preds = %for.end, %for.inc104
  %i.1190 = phi i64 [ 1, %for.end ], [ %inc105, %for.inc104 ]
  %max.sroa.0.0189 = phi double [ %min.sroa.0.0.copyload, %for.end ], [ %max.sroa.0.1, %for.inc104 ]
  %max.sroa.6.0188 = phi double [ %min.sroa.7.0.copyload, %for.end ], [ %max.sroa.6.1, %for.inc104 ]
  %min.sroa.0.0187 = phi double [ %min.sroa.0.0.copyload, %for.end ], [ %min.sroa.0.1, %for.inc104 ]
  %min.sroa.7.0186 = phi double [ %min.sroa.7.0.copyload, %for.end ], [ %min.sroa.7.1, %for.inc104 ]
  call void @llvm.dbg.value(metadata i64 %i.1190, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata double %max.sroa.0.0189, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata double %max.sroa.6.0188, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.0.0187, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.7.0186, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  %arrayidx65 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 %i.1190, !dbg !4037
  %14 = load double, ptr %arrayidx65, align 16, !dbg !4041, !tbaa !3991
  %cmp67 = fcmp ogt double %min.sroa.0.0187, %14, !dbg !4042
  br i1 %cmp67, label %if.then69, label %if.end73, !dbg !4043

if.then69:                                        ; preds = %for.body63
  call void @llvm.dbg.value(metadata double %14, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  br label %if.end73, !dbg !4044

if.end73:                                         ; preds = %if.then69, %for.body63
  %min.sroa.0.1 = phi double [ %14, %if.then69 ], [ %min.sroa.0.0187, %for.body63 ], !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.0.1, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  %y76 = getelementptr inbounds [4 x %struct._PointInfo], ptr %extent, i64 0, i64 %i.1190, i32 1, !dbg !4045
  %15 = load double, ptr %y76, align 8, !dbg !4045, !tbaa !3997
  %cmp77 = fcmp ogt double %min.sroa.7.0186, %15, !dbg !4047
  br i1 %cmp77, label %if.then79, label %if.end83, !dbg !4048

if.then79:                                        ; preds = %if.end73
  call void @llvm.dbg.value(metadata double %15, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  br label %if.end83, !dbg !4049

if.end83:                                         ; preds = %if.then79, %if.end73
  %min.sroa.7.1 = phi double [ %15, %if.then79 ], [ %min.sroa.7.0186, %if.end73 ], !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.7.1, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  %cmp87 = fcmp olt double %max.sroa.0.0189, %14, !dbg !4050
  br i1 %cmp87, label %if.then89, label %if.end93, !dbg !4052

if.then89:                                        ; preds = %if.end83
  call void @llvm.dbg.value(metadata double %14, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  br label %if.end93, !dbg !4053

if.end93:                                         ; preds = %if.then89, %if.end83
  %max.sroa.0.1 = phi double [ %14, %if.then89 ], [ %max.sroa.0.0189, %if.end83 ], !dbg !3982
  call void @llvm.dbg.value(metadata double %max.sroa.0.1, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  %cmp97 = fcmp olt double %max.sroa.6.0188, %15, !dbg !4054
  br i1 %cmp97, label %if.then99, label %for.inc104, !dbg !4056

if.then99:                                        ; preds = %if.end93
  call void @llvm.dbg.value(metadata double %15, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  br label %for.inc104, !dbg !4057

for.inc104:                                       ; preds = %if.end93, %if.then99
  %max.sroa.6.1 = phi double [ %15, %if.then99 ], [ %max.sroa.6.0188, %if.end93 ], !dbg !3982
  call void @llvm.dbg.value(metadata double %max.sroa.6.1, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  %inc105 = add nuw nsw i64 %i.1190, 1, !dbg !4058
  call void @llvm.dbg.value(metadata i64 %inc105, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata double %max.sroa.0.1, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata double %max.sroa.6.1, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.0.1, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3982
  call void @llvm.dbg.value(metadata double %min.sroa.7.1, metadata !3977, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3982
  %exitcond193.not = icmp eq i64 %inc105, 4, !dbg !4059
  br i1 %exitcond193.not, label %for.end106, label %for.body63, !dbg !4035, !llvm.loop !4060

for.end106:                                       ; preds = %for.inc104
  %sub = fadd double %min.sroa.0.1, -5.000000e-01, !dbg !4062
  %16 = tail call double @llvm.ceil.f64(double %sub), !dbg !4063
  %conv108 = fptosi double %16 to i64, !dbg !4064
  %x109 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !4065
  store i64 %conv108, ptr %x109, align 8, !dbg !4066, !tbaa !1374
  %sub111 = fadd double %min.sroa.7.1, -5.000000e-01, !dbg !4067
  %17 = tail call double @llvm.ceil.f64(double %sub111), !dbg !4068
  %conv112 = fptosi double %17 to i64, !dbg !4069
  %y113 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !4070
  store i64 %conv112, ptr %y113, align 8, !dbg !4071, !tbaa !1377
  %sub116 = fsub double %max.sroa.0.1, %min.sroa.0.1, !dbg !4072
  %add117 = fadd double %sub116, 5.000000e-01, !dbg !4073
  %18 = tail call double @llvm.floor.f64(double %add117), !dbg !4074
  %conv118 = fptoui double %18 to i64, !dbg !4075
  store i64 %conv118, ptr %geometry, align 8, !dbg !4076, !tbaa !1368
  %sub122 = fsub double %max.sroa.6.1, %min.sroa.7.1, !dbg !4077
  %add123 = fadd double %sub122, 5.000000e-01, !dbg !4078
  %19 = tail call double @llvm.floor.f64(double %add123), !dbg !4079
  %conv124 = fptoui double %19 to i64, !dbg !4080
  %height125 = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !4081
  store i64 %conv124, ptr %height125, align 8, !dbg !4082, !tbaa !1371
  %page126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, !dbg !4083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page, ptr noundef nonnull align 8 dereferenceable(32) %page126, i64 32, i1 false), !dbg !4083, !tbaa.struct !1538
  %call = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.15, ptr noundef nonnull %page126) #10, !dbg !4084
  %20 = load ptr, ptr %image, align 8, !dbg !4085, !tbaa !2087
  %call128 = call ptr @CropImage(ptr noundef %20, ptr noundef nonnull %geometry, ptr noundef %exception) #10, !dbg !4086
  call void @llvm.dbg.value(metadata ptr %call128, metadata !3972, metadata !DIExpression()), !dbg !3982
  %cmp129 = icmp eq ptr %call128, null, !dbg !4087
  br i1 %cmp129, label %cleanup, label %if.end132, !dbg !4089

if.end132:                                        ; preds = %for.end106
  %page133 = getelementptr inbounds %struct._Image, ptr %call128, i64 0, i32 26, !dbg !4090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page133, ptr noundef nonnull align 8 dereferenceable(32) %page, i64 32, i1 false), !dbg !4091, !tbaa.struct !1538
  %21 = load ptr, ptr %image, align 8, !dbg !4092, !tbaa !2087
  %call134 = call ptr @DestroyImage(ptr noundef %21) #10, !dbg !4093
  store ptr %call128, ptr %image, align 8, !dbg !4094, !tbaa !2087
  br label %cleanup, !dbg !4095

cleanup:                                          ; preds = %for.end106, %if.end132
  %retval.0 = phi i32 [ 1, %if.end132 ], [ 0, %for.end106 ], !dbg !3982
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %page), !dbg !4096
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #10, !dbg !4096
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %extent) #10, !dbg !4096
  ret i32 %retval.0, !dbg !4096
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ShearRotateImage(ptr noundef %image, double noundef %degrees, ptr noundef %exception) local_unnamed_addr #0 !dbg !4097 {
entry:
  %rotate_image = alloca ptr, align 8
  %border_info = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !4099, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata double %degrees, metadata !4100, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %exception, metadata !4101, metadata !DIExpression()), !dbg !4113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rotate_image) #10, !dbg !4114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %border_info) #10, !dbg !4115
  call void @llvm.dbg.declare(metadata ptr %border_info, metadata !4107, metadata !DIExpression()), !dbg !4116
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4117
  %0 = load i32, ptr %debug, align 8, !dbg !4117, !tbaa !1133
  %cmp.not = icmp eq i32 %0, 0, !dbg !4119
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4120

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4121
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1743, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename) #10, !dbg !4122
  br label %if.end, !dbg !4123

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata float undef, metadata !4105, metadata !DIExpression()), !dbg !4113
  %angle.0243 = fptrunc double %degrees to float, !dbg !4113
  call void @llvm.dbg.value(metadata float %angle.0243, metadata !4105, metadata !DIExpression()), !dbg !4113
  %cmp2244 = fcmp olt float %angle.0243, -4.500000e+01, !dbg !4124
  br i1 %cmp2244, label %while.body, label %for.cond.preheader, !dbg !4125

for.cond.preheader:                               ; preds = %while.body, %if.end
  %angle.0.lcssa = phi float [ %angle.0243, %if.end ], [ %angle.0, %while.body ], !dbg !4113
  call void @llvm.dbg.value(metadata i64 0, metadata !4110, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata float %angle.0.lcssa, metadata !4105, metadata !DIExpression()), !dbg !4113
  %cmp7246 = fcmp ogt float %angle.0.lcssa, 4.500000e+01, !dbg !4126
  br i1 %cmp7246, label %for.body, label %for.end, !dbg !4129

while.body:                                       ; preds = %if.end, %while.body
  %angle.0245 = phi float [ %angle.0, %while.body ], [ %angle.0243, %if.end ]
  call void @llvm.dbg.value(metadata float undef, metadata !4105, metadata !DIExpression()), !dbg !4113
  %angle.0 = fadd float %angle.0245, 3.600000e+02, !dbg !4113
  call void @llvm.dbg.value(metadata float %angle.0, metadata !4105, metadata !DIExpression()), !dbg !4113
  %cmp2 = fcmp olt float %angle.0, -4.500000e+01, !dbg !4124
  br i1 %cmp2, label %while.body, label %for.cond.preheader, !dbg !4125, !llvm.loop !4130

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %rotations.0248 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %angle.1247 = phi float [ %conv10, %for.body ], [ %angle.0.lcssa, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %rotations.0248, metadata !4110, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata float %angle.1247, metadata !4105, metadata !DIExpression()), !dbg !4113
  %conv10 = fadd float %angle.1247, -9.000000e+01, !dbg !4132
  call void @llvm.dbg.value(metadata float %conv10, metadata !4105, metadata !DIExpression()), !dbg !4113
  %inc = add i64 %rotations.0248, 1, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4110, metadata !DIExpression()), !dbg !4113
  %cmp7 = fcmp ogt float %conv10, 4.500000e+01, !dbg !4126
  br i1 %cmp7, label %for.body, label %for.end.loopexit, !dbg !4129, !llvm.loop !4134

for.end.loopexit:                                 ; preds = %for.body
  %phi.bo = and i64 %inc, 3, !dbg !4136
  br label %for.end, !dbg !4136

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %angle.1.lcssa = phi float [ %angle.0.lcssa, %for.cond.preheader ], [ %conv10, %for.end.loopexit ]
  %rotations.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %phi.bo, %for.end.loopexit ]
  call void @llvm.dbg.value(metadata i64 %rotations.0.lcssa, metadata !4110, metadata !DIExpression()), !dbg !4113
  %call11 = tail call ptr @IntegralRotateImage(ptr noundef %image, i64 noundef %rotations.0.lcssa, ptr noundef %exception), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %call11, metadata !4102, metadata !DIExpression()), !dbg !4113
  %cmp12 = icmp eq ptr %call11, null, !dbg !4138
  br i1 %cmp12, label %if.then14, label %if.end18, !dbg !4140

if.then14:                                        ; preds = %for.end
  %filename15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4141
  %call17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1757, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename15) #10, !dbg !4141
  br label %cleanup, !dbg !4141

if.end18:                                         ; preds = %for.end
  %conv6.le = fpext float %angle.1.lcssa to double, !dbg !4143
  call void @llvm.dbg.value(metadata double %conv6.le, metadata !1149, metadata !DIExpression()), !dbg !4144
  %mul.i = fmul double %conv6.le, 0x400921FB54442D18, !dbg !4146
  %div.i = fdiv double %mul.i, 1.800000e+02, !dbg !4147
  %div = fmul double %div.i, 5.000000e-01, !dbg !4148
  %call21 = tail call double @tan(double noundef %div) #10, !dbg !4149
  %fneg = fneg double %call21, !dbg !4150
  call void @llvm.dbg.value(metadata double %fneg, metadata !4106, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4113
  call void @llvm.dbg.value(metadata double %conv6.le, metadata !1149, metadata !DIExpression()), !dbg !4151
  %call24 = tail call double @sin(double noundef %div.i) #10, !dbg !4153
  call void @llvm.dbg.value(metadata double %call24, metadata !4106, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4113
  %cmp26 = fcmp oeq double %call21, 0.000000e+00, !dbg !4154
  %cmp29 = fcmp oeq double %call24, 0.000000e+00
  %or.cond = select i1 %cmp26, i1 %cmp29, i1 false, !dbg !4156
  br i1 %or.cond, label %cleanup, label %if.end32, !dbg !4156

if.end32:                                         ; preds = %if.end18
  %call33 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call11, i32 noundef 1) #10, !dbg !4157
  %cmp34 = icmp eq i32 %call33, 0, !dbg !4159
  br i1 %cmp34, label %if.then36, label %if.end39, !dbg !4160

if.then36:                                        ; preds = %if.end32
  %exception37 = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 58, !dbg !4161
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception37) #10, !dbg !4163
  %call38 = tail call ptr @DestroyImage(ptr noundef nonnull %call11) #10, !dbg !4164
  call void @llvm.dbg.value(metadata ptr %call38, metadata !4102, metadata !DIExpression()), !dbg !4113
  br label %cleanup, !dbg !4165

if.end39:                                         ; preds = %if.end32
  %matte = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 6, !dbg !4166
  %1 = load i32, ptr %matte, align 8, !dbg !4166, !tbaa !2049
  %cmp40 = icmp eq i32 %1, 0, !dbg !4168
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !4169

if.then42:                                        ; preds = %if.end39
  %call43 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call11, i32 noundef 6) #10, !dbg !4170
  br label %if.end44, !dbg !4171

if.end44:                                         ; preds = %if.then42, %if.end39
  %columns = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 7, !dbg !4172
  %2 = load i64, ptr %columns, align 8, !dbg !4172, !tbaa !824
  call void @llvm.dbg.value(metadata i64 %2, metadata !4112, metadata !DIExpression()), !dbg !4113
  %rows = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 8, !dbg !4173
  %3 = load i64, ptr %rows, align 8, !dbg !4173, !tbaa !915
  call void @llvm.dbg.value(metadata i64 %3, metadata !4109, metadata !DIExpression()), !dbg !4113
  %conv45 = uitofp i64 %3 to double, !dbg !4174
  %mul = fmul double %fneg, %conv45, !dbg !4175
  %4 = tail call double @llvm.fabs.f64(double %mul), !dbg !4176
  %conv47 = uitofp i64 %2 to double, !dbg !4177
  %add48 = fadd double %4, %conv47, !dbg !4178
  %add49 = fadd double %add48, 5.000000e-01, !dbg !4179
  %5 = tail call double @llvm.floor.f64(double %add49), !dbg !4180
  %conv50 = fptoui double %5 to i64, !dbg !4181
  call void @llvm.dbg.value(metadata i64 %conv50, metadata !4108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4113
  %conv53 = uitofp i64 %conv50 to double, !dbg !4182
  %mul55 = fmul double %call24, %conv53, !dbg !4183
  %6 = tail call double @llvm.fabs.f64(double %mul55), !dbg !4184
  %add57 = fadd double %6, %conv45, !dbg !4185
  %add58 = fadd double %add57, 5.000000e-01, !dbg !4186
  %7 = tail call double @llvm.floor.f64(double %add58), !dbg !4187
  %conv59 = fptoui double %7 to i64, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %conv59, metadata !4108, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4113
  %conv62 = uitofp i64 %conv59 to double, !dbg !4189
  %mul64 = fmul double %fneg, %conv62, !dbg !4190
  %8 = tail call double @llvm.fabs.f64(double %mul64), !dbg !4191
  %add67 = fadd double %8, %conv53, !dbg !4192
  %add68 = fadd double %add67, 5.000000e-01, !dbg !4193
  %9 = tail call double @llvm.floor.f64(double %add68), !dbg !4194
  %conv69 = fptoui double %9 to i64, !dbg !4195
  call void @llvm.dbg.value(metadata i64 %conv69, metadata !4111, metadata !DIExpression()), !dbg !4113
  %cmp71 = icmp ult i64 %conv50, %conv69, !dbg !4196
  br i1 %cmp71, label %cond.end, label %cond.false, !dbg !4197

cond.false:                                       ; preds = %if.end44
  %sub74 = add i64 %conv50, 2, !dbg !4198
  %add75 = sub i64 %sub74, %conv69, !dbg !4199
  %.pre = uitofp i64 %add75 to double, !dbg !4200
  br label %cond.end, !dbg !4197

cond.end:                                         ; preds = %if.end44, %cond.false
  %conv76.pre-phi = phi double [ %conv47, %if.end44 ], [ %.pre, %cond.false ], !dbg !4200
  %div77 = fmul double %conv76.pre-phi, 5.000000e-01, !dbg !4201
  %add78 = fadd double %div77, 5.000000e-01, !dbg !4202
  %10 = tail call double @llvm.floor.f64(double %add78), !dbg !4203
  %conv79 = fptosi double %10 to i64, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %conv79, metadata !4108, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !4113
  %sub84 = fsub double %conv62, %conv45, !dbg !4205
  %add85 = fadd double %sub84, 2.000000e+00, !dbg !4206
  %div86 = fmul double %add85, 5.000000e-01, !dbg !4207
  %add87 = fadd double %div86, 5.000000e-01, !dbg !4208
  %11 = tail call double @llvm.floor.f64(double %add87), !dbg !4209
  %conv88 = fptosi double %11 to i64, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %conv88, metadata !4108, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !4113
  %border_color = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 13, !dbg !4211
  %background_color = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 12, !dbg !4212
  %12 = load i64, ptr %background_color, align 8, !dbg !4212
  store i64 %12, ptr %border_color, align 8, !dbg !4212
  %compose = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 36, !dbg !4213
  store i32 13, ptr %compose, align 8, !dbg !4214, !tbaa !2081
  store i64 %conv79, ptr %border_info, align 8, !dbg !4215, !tbaa !1368
  %height93 = getelementptr inbounds %struct._RectangleInfo, ptr %border_info, i64 0, i32 1, !dbg !4216
  store i64 %conv88, ptr %height93, align 8, !dbg !4217, !tbaa !1371
  %call94 = call ptr @BorderImage(ptr noundef nonnull %call11, ptr noundef nonnull %border_info, ptr noundef %exception) #10, !dbg !4218
  call void @llvm.dbg.value(metadata ptr %call94, metadata !4103, metadata !DIExpression()), !dbg !4113
  store ptr %call94, ptr %rotate_image, align 8, !dbg !4219, !tbaa !2087
  %call95 = call ptr @DestroyImage(ptr noundef nonnull %call11) #10, !dbg !4220
  call void @llvm.dbg.value(metadata ptr %call95, metadata !4102, metadata !DIExpression()), !dbg !4113
  %cmp96 = icmp eq ptr %call94, null, !dbg !4221
  br i1 %cmp96, label %if.then98, label %if.end102, !dbg !4223

if.then98:                                        ; preds = %cond.end
  %filename99 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4224
  %call101 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1792, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename99) #10, !dbg !4224
  br label %cleanup, !dbg !4224

if.end102:                                        ; preds = %cond.end
  %conv104 = fptrunc double %fneg to float, !dbg !4226
  %rows106 = getelementptr inbounds %struct._Image, ptr %call94, i64 0, i32 8, !dbg !4227
  %13 = load i64, ptr %rows106, align 8, !dbg !4227, !tbaa !915
  %sub107 = sub i64 %13, %3, !dbg !4228
  %div108 = sdiv i64 %sub107, 2, !dbg !4229
  %call109 = call fastcc i32 @XShearImage(ptr noundef nonnull %call94, float noundef %conv104, i64 noundef %2, i64 noundef %3, i64 noundef %conv79, i64 noundef %div108, ptr noundef %exception), !dbg !4230
  call void @llvm.dbg.value(metadata i32 %call109, metadata !4104, metadata !DIExpression()), !dbg !4113
  %cmp110 = icmp eq i32 %call109, 0, !dbg !4231
  call void @llvm.dbg.value(metadata ptr %call94, metadata !4103, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %call94, metadata !4103, metadata !DIExpression()), !dbg !4113
  br i1 %cmp110, label %if.then112, label %if.end114, !dbg !4233

if.then112:                                       ; preds = %if.end102
  %call113 = call ptr @DestroyImage(ptr noundef nonnull %call94) #10, !dbg !4234
  call void @llvm.dbg.value(metadata ptr %call113, metadata !4103, metadata !DIExpression()), !dbg !4113
  store ptr %call113, ptr %rotate_image, align 8, !dbg !4236, !tbaa !2087
  br label %cleanup, !dbg !4237

if.end114:                                        ; preds = %if.end102
  %conv116 = fptrunc double %call24 to float, !dbg !4238
  %columns118 = getelementptr inbounds %struct._Image, ptr %call94, i64 0, i32 7, !dbg !4239
  %14 = load i64, ptr %columns118, align 8, !dbg !4239, !tbaa !824
  %sub120 = sub i64 %14, %conv50, !dbg !4240
  %div121 = sdiv i64 %sub120, 2, !dbg !4241
  %call123 = call fastcc i32 @YShearImage(ptr noundef nonnull %call94, float noundef %conv116, i64 noundef %conv50, i64 noundef %3, i64 noundef %div121, i64 noundef %conv88, ptr noundef %exception), !dbg !4242
  call void @llvm.dbg.value(metadata i32 %call123, metadata !4104, metadata !DIExpression()), !dbg !4113
  %cmp124 = icmp eq i32 %call123, 0, !dbg !4243
  call void @llvm.dbg.value(metadata ptr %call94, metadata !4103, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %call94, metadata !4103, metadata !DIExpression()), !dbg !4113
  br i1 %cmp124, label %if.then126, label %if.end128, !dbg !4245

if.then126:                                       ; preds = %if.end114
  %call127 = call ptr @DestroyImage(ptr noundef nonnull %call94) #10, !dbg !4246
  call void @llvm.dbg.value(metadata ptr %call127, metadata !4103, metadata !DIExpression()), !dbg !4113
  store ptr %call127, ptr %rotate_image, align 8, !dbg !4248, !tbaa !2087
  br label %cleanup, !dbg !4249

if.end128:                                        ; preds = %if.end114
  %15 = load i64, ptr %columns118, align 8, !dbg !4250, !tbaa !824
  %sub135 = sub i64 %15, %conv50, !dbg !4251
  %div136 = sdiv i64 %sub135, 2, !dbg !4252
  %16 = load i64, ptr %rows106, align 8, !dbg !4253, !tbaa !915
  %sub139 = sub i64 %16, %conv59, !dbg !4254
  %div140 = sdiv i64 %sub139, 2, !dbg !4255
  %call141 = call fastcc i32 @XShearImage(ptr noundef nonnull %call94, float noundef %conv104, i64 noundef %conv50, i64 noundef %conv59, i64 noundef %div136, i64 noundef %div140, ptr noundef %exception), !dbg !4256
  call void @llvm.dbg.value(metadata i32 %call141, metadata !4104, metadata !DIExpression()), !dbg !4113
  %cmp142 = icmp eq i32 %call141, 0, !dbg !4257
  br i1 %cmp142, label %if.then144, label %if.end146, !dbg !4259

if.then144:                                       ; preds = %if.end128
  call void @llvm.dbg.value(metadata ptr %call94, metadata !4103, metadata !DIExpression()), !dbg !4113
  %call145 = call ptr @DestroyImage(ptr noundef nonnull %call94) #10, !dbg !4260
  call void @llvm.dbg.value(metadata ptr %call145, metadata !4103, metadata !DIExpression()), !dbg !4113
  store ptr %call145, ptr %rotate_image, align 8, !dbg !4262, !tbaa !2087
  br label %cleanup, !dbg !4263

if.end146:                                        ; preds = %if.end128
  %conv151 = uitofp i64 %2 to float, !dbg !4264
  %conv152 = uitofp i64 %3 to float, !dbg !4265
  call void @llvm.dbg.value(metadata ptr %rotate_image, metadata !4103, metadata !DIExpression(DW_OP_deref)), !dbg !4113
  %call153 = call fastcc i32 @CropToFitImage(ptr noundef nonnull %rotate_image, float noundef %conv104, float noundef %conv116, float noundef %conv151, float noundef %conv152, i32 noundef 1, ptr noundef %exception), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %call153, metadata !4104, metadata !DIExpression()), !dbg !4113
  %compose154 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 36, !dbg !4267
  %17 = load i32, ptr %compose154, align 8, !dbg !4267, !tbaa !2081
  %18 = load ptr, ptr %rotate_image, align 8, !dbg !4268, !tbaa !2087
  call void @llvm.dbg.value(metadata ptr %18, metadata !4103, metadata !DIExpression()), !dbg !4113
  %compose155 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 36, !dbg !4269
  store i32 %17, ptr %compose155, align 8, !dbg !4270, !tbaa !2081
  %page = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 26, !dbg !4271
  %cmp159 = icmp eq i32 %call153, 0, !dbg !4272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %page, i8 0, i64 16, i1 false), !dbg !4274
  br i1 %cmp159, label %if.then161, label %cleanup, !dbg !4275

if.then161:                                       ; preds = %if.end146
  call void @llvm.dbg.value(metadata ptr %18, metadata !4103, metadata !DIExpression()), !dbg !4113
  %call162 = call ptr @DestroyImage(ptr noundef nonnull %18) #10, !dbg !4276
  call void @llvm.dbg.value(metadata ptr %call162, metadata !4103, metadata !DIExpression()), !dbg !4113
  store ptr %call162, ptr %rotate_image, align 8, !dbg !4277, !tbaa !2087
  br label %cleanup, !dbg !4278

cleanup:                                          ; preds = %if.end146, %if.then161, %if.end18, %if.then144, %if.then126, %if.then112, %if.then98, %if.then36, %if.then14
  %retval.0 = phi ptr [ null, %if.then14 ], [ %call38, %if.then36 ], [ null, %if.then98 ], [ null, %if.then112 ], [ null, %if.then126 ], [ null, %if.then144 ], [ %call11, %if.end18 ], [ %call162, %if.then161 ], [ %18, %if.end146 ], !dbg !4113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %border_info) #10, !dbg !4279
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rotate_image) #10, !dbg !4279
  ret ptr %retval.0, !dbg !4279
}

declare !dbg !4280 ptr @AcquireMatrixInfo(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !4283 ptr @DestroyMatrixInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !4286 i32 @NullMatrix(ptr noundef) local_unnamed_addr #4

declare !dbg !4289 i32 @SetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @RadonProjection(ptr noundef %source_matrix, ptr noundef %destination_matrix, i64 noundef %sign, ptr nocapture noundef writeonly %projection) unnamed_addr #0 !dbg !4296 {
entry:
  %element = alloca i16, align 2
  %neighbor = alloca i16, align 2
  %element145 = alloca i16, align 2
  %neighbor146 = alloca i16, align 2
  call void @llvm.dbg.value(metadata ptr undef, metadata !4300, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %source_matrix, metadata !4301, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %destination_matrix, metadata !4302, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %sign, metadata !4303, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %projection, metadata !4304, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %source_matrix, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %destination_matrix, metadata !4307, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 1, metadata !4309, metadata !DIExpression()), !dbg !4331
  %call21 = call i64 @GetMatrixColumns(ptr noundef %source_matrix) #10, !dbg !4332
  %cmp22 = icmp ugt i64 %call21, 1, !dbg !4333
  br i1 %cmp22, label %for.cond1.preheader, label %for.cond133.preheader, !dbg !4334

for.cond1.preheader:                              ; preds = %entry, %for.end129
  %p.027 = phi ptr [ %q.023, %for.end129 ], [ %source_matrix, %entry ]
  %step.024 = phi i64 [ %mul131.pre-phi, %for.end129 ], [ 1, %entry ]
  %q.023 = phi ptr [ %p.027, %for.end129 ], [ %destination_matrix, %entry ]
  call void @llvm.dbg.value(metadata ptr %p.027, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %step.024, metadata !4309, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %q.023, metadata !4307, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 0, metadata !4308, metadata !DIExpression()), !dbg !4331
  %call217 = call i64 @GetMatrixColumns(ptr noundef %p.027) #10, !dbg !4335
  %cmp318 = icmp sgt i64 %call217, 0, !dbg !4336
  br i1 %cmp318, label %for.body4.lr.ph, label %for.cond1.preheader.for.end129_crit_edge, !dbg !4337

for.cond1.preheader.for.end129_crit_edge:         ; preds = %for.cond1.preheader
  %.pre = shl i64 %step.024, 1, !dbg !4338
  br label %for.end129, !dbg !4337

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %cmp613 = icmp sgt i64 %step.024, 0
  %mul127 = shl i64 %step.024, 1
  br i1 %cmp613, label %for.body4.us, label %for.body4, !dbg !4339

for.body4.us:                                     ; preds = %for.body4.lr.ph, %for.cond5.for.end125_crit_edge.us
  %x.019.us = phi i64 [ %add128.us, %for.cond5.for.end125_crit_edge.us ], [ 0, %for.body4.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.019.us, metadata !4308, metadata !DIExpression()), !dbg !4331
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %element) #10, !dbg !4341
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %neighbor) #10, !dbg !4341
  call void @llvm.dbg.value(metadata i64 0, metadata !4310, metadata !DIExpression()), !dbg !4342
  br label %for.cond8.preheader.us, !dbg !4339

for.inc123.us:                                    ; preds = %for.inc120.us, %for.cond94.preheader.us
  %inc124.us = add nuw nsw i64 %i.014.us, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 %inc124.us, metadata !4310, metadata !DIExpression()), !dbg !4342
  %exitcond.not = icmp eq i64 %inc124.us, %step.024, !dbg !4345
  br i1 %exitcond.not, label %for.cond5.for.end125_crit_edge.us, label %for.cond8.preheader.us, !dbg !4339, !llvm.loop !4346

for.body98.us:                                    ; preds = %for.body98.lr.ph.us, %for.inc120.us
  %y.212.us = phi i64 [ %y.1.lcssa.us, %for.body98.lr.ph.us ], [ %inc121.us, %for.inc120.us ]
  call void @llvm.dbg.value(metadata i64 %y.212.us, metadata !4317, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata ptr %element, metadata !4318, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call100.us = call i32 @GetMatrixElement(ptr noundef %p.027, i64 noundef %add99.us, i64 noundef %y.212.us, ptr noundef nonnull %element) #10, !dbg !4348
  %cmp101.us = icmp eq i32 %call100.us, 0, !dbg !4354
  br i1 %cmp101.us, label %for.inc120.us, label %if.end104.us, !dbg !4355

if.end104.us:                                     ; preds = %for.body98.us
  call void @llvm.dbg.value(metadata ptr %element, metadata !4318, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call107.us = call i32 @SetMatrixElement(ptr noundef %q.023, i64 noundef %add106.us, i64 noundef %y.212.us, ptr noundef nonnull %element) #10, !dbg !4356
  %cmp108.us = icmp eq i32 %call107.us, 0, !dbg !4358
  br i1 %cmp108.us, label %for.inc120.us, label %if.end111.us, !dbg !4359

if.end111.us:                                     ; preds = %if.end104.us
  call void @llvm.dbg.value(metadata ptr %element, metadata !4318, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call115.us = call i32 @SetMatrixElement(ptr noundef %q.023, i64 noundef %add114.us, i64 noundef %y.212.us, ptr noundef nonnull %element) #10, !dbg !4360
  br label %for.inc120.us, !dbg !4362

for.inc120.us:                                    ; preds = %if.end111.us, %if.end104.us, %for.body98.us
  %inc121.us = add nuw nsw i64 %y.212.us, 1, !dbg !4363
  call void @llvm.dbg.value(metadata i64 %inc121.us, metadata !4317, metadata !DIExpression()), !dbg !4342
  %call95.us = call i64 @GetMatrixRows(ptr noundef %p.027) #10, !dbg !4364
  %cmp96.us = icmp slt i64 %inc121.us, %call95.us, !dbg !4365
  br i1 %cmp96.us, label %for.body98.us, label %for.inc123.us, !dbg !4366, !llvm.loop !4367

for.body57.us:                                    ; preds = %for.body57.lr.ph.us, %for.inc91.us
  %y.18.us = phi i64 [ %y.0.lcssa.us, %for.body57.lr.ph.us ], [ %inc92.us, %for.inc91.us ]
  call void @llvm.dbg.value(metadata i64 %y.18.us, metadata !4317, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata ptr %element, metadata !4318, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call59.us = call i32 @GetMatrixElement(ptr noundef %p.027, i64 noundef %add58.us, i64 noundef %y.18.us, ptr noundef nonnull %element) #10, !dbg !4369
  %cmp60.us = icmp eq i32 %call59.us, 0, !dbg !4374
  br i1 %cmp60.us, label %for.inc91.us, label %if.end63.us, !dbg !4375

if.end63.us:                                      ; preds = %for.body57.us
  %add66.us = add nuw nsw i64 %y.18.us, %i.014.us, !dbg !4376
  call void @llvm.dbg.value(metadata ptr %neighbor, metadata !4319, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call67.us = call i32 @GetMatrixElement(ptr noundef %p.027, i64 noundef %add65.us, i64 noundef %add66.us, ptr noundef nonnull %neighbor) #10, !dbg !4378
  %cmp68.us = icmp eq i32 %call67.us, 0, !dbg !4379
  br i1 %cmp68.us, label %for.inc91.us, label %if.end71.us, !dbg !4380

if.end71.us:                                      ; preds = %if.end63.us
  %0 = load i16, ptr %element, align 2, !dbg !4381, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %0, metadata !4318, metadata !DIExpression()), !dbg !4342
  %1 = load i16, ptr %neighbor, align 2, !dbg !4382, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %1, metadata !4319, metadata !DIExpression()), !dbg !4342
  %add74.us = add i16 %1, %0, !dbg !4382
  call void @llvm.dbg.value(metadata i16 %add74.us, metadata !4319, metadata !DIExpression()), !dbg !4342
  store i16 %add74.us, ptr %neighbor, align 2, !dbg !4382, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %neighbor, metadata !4319, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call78.us = call i32 @SetMatrixElement(ptr noundef %q.023, i64 noundef %add77.us, i64 noundef %y.18.us, ptr noundef nonnull %neighbor) #10, !dbg !4383
  %cmp79.us = icmp eq i32 %call78.us, 0, !dbg !4385
  br i1 %cmp79.us, label %for.inc91.us, label %if.end82.us, !dbg !4386

if.end82.us:                                      ; preds = %if.end71.us
  call void @llvm.dbg.value(metadata ptr %element, metadata !4318, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call86.us = call i32 @SetMatrixElement(ptr noundef %q.023, i64 noundef %add85.us, i64 noundef %y.18.us, ptr noundef nonnull %element) #10, !dbg !4387
  br label %for.inc91.us, !dbg !4389

for.inc91.us:                                     ; preds = %if.end82.us, %if.end71.us, %if.end63.us, %for.body57.us
  %inc92.us = add nuw nsw i64 %y.18.us, 1, !dbg !4390
  call void @llvm.dbg.value(metadata i64 %inc92.us, metadata !4317, metadata !DIExpression()), !dbg !4342
  %call53.us = call i64 @GetMatrixRows(ptr noundef %p.027) #10, !dbg !4391
  %sub54.us = sub i64 %call53.us, %i.014.us, !dbg !4392
  %cmp55.us = icmp slt i64 %inc92.us, %sub54.us, !dbg !4393
  br i1 %cmp55.us, label %for.body57.us, label %for.cond94.preheader.us, !dbg !4394, !llvm.loop !4395

for.body12.us:                                    ; preds = %for.body12.lr.ph.us, %for.inc.us
  %y.04.us = phi i64 [ 0, %for.body12.lr.ph.us ], [ %inc.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %y.04.us, metadata !4317, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata ptr %element, metadata !4318, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call13.us = call i32 @GetMatrixElement(ptr noundef %p.027, i64 noundef %add.us, i64 noundef %y.04.us, ptr noundef nonnull %element) #10, !dbg !4397
  %cmp14.us = icmp eq i32 %call13.us, 0, !dbg !4402
  br i1 %cmp14.us, label %for.inc.us, label %if.end.us, !dbg !4403

if.end.us:                                        ; preds = %for.body12.us
  %add17.us = add nuw nsw i64 %y.04.us, %i.014.us, !dbg !4404
  call void @llvm.dbg.value(metadata ptr %neighbor, metadata !4319, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call18.us = call i32 @GetMatrixElement(ptr noundef %p.027, i64 noundef %add16.us, i64 noundef %add17.us, ptr noundef nonnull %neighbor) #10, !dbg !4406
  %cmp19.us = icmp eq i32 %call18.us, 0, !dbg !4407
  br i1 %cmp19.us, label %for.inc.us, label %if.end21.us, !dbg !4408

if.end21.us:                                      ; preds = %if.end.us
  %2 = load i16, ptr %element, align 2, !dbg !4409, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %2, metadata !4318, metadata !DIExpression()), !dbg !4342
  %3 = load i16, ptr %neighbor, align 2, !dbg !4410, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %3, metadata !4319, metadata !DIExpression()), !dbg !4342
  %add23.us = add i16 %3, %2, !dbg !4410
  call void @llvm.dbg.value(metadata i16 %add23.us, metadata !4319, metadata !DIExpression()), !dbg !4342
  store i16 %add23.us, ptr %neighbor, align 2, !dbg !4410, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %neighbor, metadata !4319, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call26.us = call i32 @SetMatrixElement(ptr noundef %q.023, i64 noundef %add25.us, i64 noundef %y.04.us, ptr noundef nonnull %neighbor) #10, !dbg !4411
  %cmp27.us = icmp eq i32 %call26.us, 0, !dbg !4413
  br i1 %cmp27.us, label %for.inc.us, label %if.end30.us, !dbg !4414

if.end30.us:                                      ; preds = %if.end21.us
  %add34.us = add nuw nsw i64 %add17.us, 1, !dbg !4415
  call void @llvm.dbg.value(metadata ptr %neighbor, metadata !4319, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call35.us = call i32 @GetMatrixElement(ptr noundef %p.027, i64 noundef %add16.us, i64 noundef %add34.us, ptr noundef nonnull %neighbor) #10, !dbg !4417
  %cmp36.us = icmp eq i32 %call35.us, 0, !dbg !4418
  br i1 %cmp36.us, label %for.inc.us, label %if.end39.us, !dbg !4419

if.end39.us:                                      ; preds = %if.end30.us
  %4 = load i16, ptr %element, align 2, !dbg !4420, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %4, metadata !4318, metadata !DIExpression()), !dbg !4342
  %5 = load i16, ptr %neighbor, align 2, !dbg !4421, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %5, metadata !4319, metadata !DIExpression()), !dbg !4342
  %add42.us = add i16 %5, %4, !dbg !4421
  call void @llvm.dbg.value(metadata i16 %add42.us, metadata !4319, metadata !DIExpression()), !dbg !4342
  store i16 %add42.us, ptr %neighbor, align 2, !dbg !4421, !tbaa !950
  call void @llvm.dbg.value(metadata ptr %neighbor, metadata !4319, metadata !DIExpression(DW_OP_deref)), !dbg !4342
  %call47.us = call i32 @SetMatrixElement(ptr noundef %q.023, i64 noundef %add46.us, i64 noundef %y.04.us, ptr noundef nonnull %neighbor) #10, !dbg !4422
  br label %for.inc.us, !dbg !4424

for.inc.us:                                       ; preds = %if.end39.us, %if.end30.us, %if.end21.us, %if.end.us, %for.body12.us
  %inc.us = add nuw nsw i64 %y.04.us, 1, !dbg !4425
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !4317, metadata !DIExpression()), !dbg !4342
  %call9.us = call i64 @GetMatrixRows(ptr noundef %p.027) #10, !dbg !4426
  %sub10.us = add i64 %call9.us, %6, !dbg !4427
  %cmp11.us = icmp slt i64 %inc.us, %sub10.us, !dbg !4428
  br i1 %cmp11.us, label %for.body12.us, label %for.cond52.preheader.us, !dbg !4429, !llvm.loop !4430

for.cond94.preheader.us:                          ; preds = %for.inc91.us, %for.cond52.preheader.us
  %y.1.lcssa.us = phi i64 [ %y.0.lcssa.us, %for.cond52.preheader.us ], [ %inc92.us, %for.inc91.us ], !dbg !4432
  call void @llvm.dbg.value(metadata i64 %y.1.lcssa.us, metadata !4317, metadata !DIExpression()), !dbg !4342
  %call9510.us = call i64 @GetMatrixRows(ptr noundef %p.027) #10, !dbg !4364
  %cmp9611.us = icmp slt i64 %y.1.lcssa.us, %call9510.us, !dbg !4365
  br i1 %cmp9611.us, label %for.body98.lr.ph.us, label %for.inc123.us, !dbg !4366

for.cond52.preheader.us:                          ; preds = %for.inc.us, %for.cond8.preheader.us
  %y.0.lcssa.us = phi i64 [ 0, %for.cond8.preheader.us ], [ %inc.us, %for.inc.us ], !dbg !4433
  call void @llvm.dbg.value(metadata i64 %y.0.lcssa.us, metadata !4317, metadata !DIExpression()), !dbg !4342
  %call535.us = call i64 @GetMatrixRows(ptr noundef %p.027) #10, !dbg !4391
  %sub546.us = sub i64 %call535.us, %i.014.us, !dbg !4392
  %cmp557.us = icmp slt i64 %y.0.lcssa.us, %sub546.us, !dbg !4393
  br i1 %cmp557.us, label %for.body57.lr.ph.us, label %for.cond94.preheader.us, !dbg !4394

for.cond8.preheader.us:                           ; preds = %for.body4.us, %for.inc123.us
  %i.014.us = phi i64 [ 0, %for.body4.us ], [ %inc124.us, %for.inc123.us ]
  call void @llvm.dbg.value(metadata i64 %i.014.us, metadata !4310, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 0, metadata !4317, metadata !DIExpression()), !dbg !4342
  %call91.us = call i64 @GetMatrixRows(ptr noundef %p.027) #10, !dbg !4426
  %6 = xor i64 %i.014.us, -1, !dbg !4427
  %sub102.us = add i64 %call91.us, %6, !dbg !4427
  %cmp113.us = icmp sgt i64 %sub102.us, 0, !dbg !4428
  br i1 %cmp113.us, label %for.body12.lr.ph.us, label %for.cond52.preheader.us, !dbg !4429

for.body12.lr.ph.us:                              ; preds = %for.cond8.preheader.us
  %add.us = add nsw i64 %i.014.us, %x.019.us
  %add16.us = add i64 %add.us, %step.024
  %mul.us = shl nuw nsw i64 %i.014.us, 1
  %add25.us = add nsw i64 %mul.us, %x.019.us
  %add46.us = or i64 %add25.us, 1
  br label %for.body12.us, !dbg !4429

for.body57.lr.ph.us:                              ; preds = %for.cond52.preheader.us
  %add58.us = add nsw i64 %i.014.us, %x.019.us
  %add65.us = add i64 %add58.us, %step.024
  %mul76.us = shl nuw nsw i64 %i.014.us, 1
  %add77.us = add nsw i64 %mul76.us, %x.019.us
  %add85.us = or i64 %add77.us, 1
  br label %for.body57.us, !dbg !4394

for.body98.lr.ph.us:                              ; preds = %for.cond94.preheader.us
  %add99.us = add nsw i64 %i.014.us, %x.019.us
  %mul105.us = shl nuw nsw i64 %i.014.us, 1
  %add106.us = add nsw i64 %mul105.us, %x.019.us
  %add114.us = or i64 %add106.us, 1
  br label %for.body98.us, !dbg !4366

for.cond5.for.end125_crit_edge.us:                ; preds = %for.inc123.us
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %neighbor) #10, !dbg !4434
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %element) #10, !dbg !4434
  %add128.us = add nsw i64 %x.019.us, %mul127, !dbg !4435
  call void @llvm.dbg.value(metadata i64 %add128.us, metadata !4308, metadata !DIExpression()), !dbg !4331
  %call2.us = call i64 @GetMatrixColumns(ptr noundef %p.027) #10, !dbg !4335
  %cmp3.us = icmp slt i64 %add128.us, %call2.us, !dbg !4336
  br i1 %cmp3.us, label %for.body4.us, label %for.end129, !dbg !4337, !llvm.loop !4436

for.cond133.preheader:                            ; preds = %for.end129, %entry
  %p.0.lcssa = phi ptr [ %source_matrix, %entry ], [ %q.023, %for.end129 ], !dbg !4331
  call void @llvm.dbg.value(metadata i64 0, metadata !4308, metadata !DIExpression()), !dbg !4331
  %call13434 = call i64 @GetMatrixColumns(ptr noundef %p.0.lcssa) #10, !dbg !4438
  %cmp13535 = icmp sgt i64 %call13434, 0, !dbg !4439
  br i1 %cmp13535, label %for.cond139.preheader, label %for.end174, !dbg !4440

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %x.019 = phi i64 [ %add128, %for.body4 ], [ 0, %for.body4.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.019, metadata !4308, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 0, metadata !4310, metadata !DIExpression()), !dbg !4342
  %add128 = add nsw i64 %x.019, %mul127, !dbg !4435
  call void @llvm.dbg.value(metadata i64 %add128, metadata !4308, metadata !DIExpression()), !dbg !4331
  %call2 = call i64 @GetMatrixColumns(ptr noundef %p.027) #10, !dbg !4335
  %cmp3 = icmp slt i64 %add128, %call2, !dbg !4336
  br i1 %cmp3, label %for.body4, label %for.end129, !dbg !4337, !llvm.loop !4436

for.end129:                                       ; preds = %for.body4, %for.cond5.for.end125_crit_edge.us, %for.cond1.preheader.for.end129_crit_edge
  %mul131.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.end129_crit_edge ], [ %mul127, %for.cond5.for.end125_crit_edge.us ], [ %mul127, %for.body4 ], !dbg !4338
  call void @llvm.dbg.value(metadata ptr %p.027, metadata !4305, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %q.023, metadata !4306, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %p.027, metadata !4307, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %mul131.pre-phi, metadata !4309, metadata !DIExpression()), !dbg !4331
  %call = call i64 @GetMatrixColumns(ptr noundef %q.023) #10, !dbg !4332
  %cmp = icmp ult i64 %mul131.pre-phi, %call, !dbg !4333
  br i1 %cmp, label %for.cond1.preheader, label %for.cond133.preheader, !dbg !4334, !llvm.loop !4441

for.cond139.preheader:                            ; preds = %for.cond133.preheader, %for.end167
  %x.136 = phi i64 [ %inc173, %for.end167 ], [ 0, %for.cond133.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.136, metadata !4308, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 0, metadata !4324, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 0, metadata !4320, metadata !DIExpression()), !dbg !4443
  %call14028 = call i64 @GetMatrixRows(ptr noundef %p.0.lcssa) #10, !dbg !4444
  %sub14129 = add i64 %call14028, -1, !dbg !4445
  %cmp14230 = icmp sgt i64 %sub14129, 0, !dbg !4446
  br i1 %cmp14230, label %for.body144, label %for.end167, !dbg !4447

for.body144:                                      ; preds = %for.cond139.preheader, %cleanup
  %sum.032 = phi i64 [ %sum.1, %cleanup ], [ 0, %for.cond139.preheader ]
  %y138.031 = phi i64 [ %.pre39, %cleanup ], [ 0, %for.cond139.preheader ]
  call void @llvm.dbg.value(metadata i64 %sum.032, metadata !4324, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %y138.031, metadata !4320, metadata !DIExpression()), !dbg !4443
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %element145) #10, !dbg !4448
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %neighbor146) #10, !dbg !4448
  call void @llvm.dbg.value(metadata ptr %element145, metadata !4329, metadata !DIExpression(DW_OP_deref)), !dbg !4449
  %call147 = call i32 @GetMatrixElement(ptr noundef %p.0.lcssa, i64 noundef %x.136, i64 noundef %y138.031, ptr noundef nonnull %element145) #10, !dbg !4450
  %cmp148 = icmp eq i32 %call147, 0, !dbg !4452
  %.pre39 = add nuw nsw i64 %y138.031, 1, !dbg !4453
  br i1 %cmp148, label %cleanup, label %if.end151, !dbg !4454

if.end151:                                        ; preds = %for.body144
  call void @llvm.dbg.value(metadata ptr %neighbor146, metadata !4330, metadata !DIExpression(DW_OP_deref)), !dbg !4449
  %call153 = call i32 @GetMatrixElement(ptr noundef %p.0.lcssa, i64 noundef %x.136, i64 noundef %.pre39, ptr noundef nonnull %neighbor146) #10, !dbg !4455
  %cmp154 = icmp eq i32 %call153, 0, !dbg !4457
  br i1 %cmp154, label %cleanup, label %if.end157, !dbg !4458

if.end157:                                        ; preds = %if.end151
  %7 = load i16, ptr %element145, align 2, !dbg !4459, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %7, metadata !4329, metadata !DIExpression()), !dbg !4449
  %conv158 = zext i16 %7 to i64, !dbg !4460
  %8 = load i16, ptr %neighbor146, align 2, !dbg !4461, !tbaa !950
  call void @llvm.dbg.value(metadata i16 %8, metadata !4330, metadata !DIExpression()), !dbg !4449
  %conv159 = zext i16 %8 to i64, !dbg !4462
  %sub160 = sub nsw i64 %conv158, %conv159, !dbg !4463
  call void @llvm.dbg.value(metadata i64 %sub160, metadata !4325, metadata !DIExpression()), !dbg !4449
  %mul161 = mul nsw i64 %sub160, %sub160, !dbg !4464
  %add162 = add i64 %mul161, %sum.032, !dbg !4465
  call void @llvm.dbg.value(metadata i64 %add162, metadata !4324, metadata !DIExpression()), !dbg !4443
  br label %cleanup, !dbg !4466

cleanup:                                          ; preds = %for.body144, %if.end151, %if.end157
  %sum.1 = phi i64 [ %sum.032, %if.end151 ], [ %add162, %if.end157 ], [ %sum.032, %for.body144 ], !dbg !4443
  call void @llvm.dbg.value(metadata i64 %sum.1, metadata !4324, metadata !DIExpression()), !dbg !4443
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %neighbor146) #10, !dbg !4466
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %element145) #10, !dbg !4466
  call void @llvm.dbg.value(metadata i64 %.pre39, metadata !4320, metadata !DIExpression()), !dbg !4443
  %call140 = call i64 @GetMatrixRows(ptr noundef %p.0.lcssa) #10, !dbg !4444
  %sub141 = add i64 %call140, -1, !dbg !4445
  %cmp142 = icmp slt i64 %.pre39, %sub141, !dbg !4446
  br i1 %cmp142, label %for.body144, label %for.end167, !dbg !4447, !llvm.loop !4467

for.end167:                                       ; preds = %cleanup, %for.cond139.preheader
  %sum.0.lcssa = phi i64 [ 0, %for.cond139.preheader ], [ %sum.1, %cleanup ], !dbg !4469
  %call168 = call i64 @GetMatrixColumns(ptr noundef %p.0.lcssa) #10, !dbg !4470
  %mul169 = mul nsw i64 %x.136, %sign, !dbg !4471
  %add170 = add i64 %mul169, -1, !dbg !4472
  %sub171 = add i64 %add170, %call168, !dbg !4473
  %arrayidx = getelementptr inbounds i64, ptr %projection, i64 %sub171, !dbg !4474
  store i64 %sum.0.lcssa, ptr %arrayidx, align 8, !dbg !4475, !tbaa !1106
  %inc173 = add nuw nsw i64 %x.136, 1, !dbg !4476
  call void @llvm.dbg.value(metadata i64 %inc173, metadata !4308, metadata !DIExpression()), !dbg !4331
  %call134 = call i64 @GetMatrixColumns(ptr noundef %p.0.lcssa) #10, !dbg !4438
  %cmp135 = icmp slt i64 %inc173, %call134, !dbg !4439
  br i1 %cmp135, label %for.cond139.preheader, label %for.end174, !dbg !4440, !llvm.loop !4477

for.end174:                                       ; preds = %for.end167, %for.cond133.preheader
  ret void, !dbg !4479
}

declare !dbg !4480 i64 @GetMatrixColumns(ptr noundef) local_unnamed_addr #4

declare !dbg !4483 i64 @GetMatrixRows(ptr noundef) local_unnamed_addr #4

declare !dbg !4484 i32 @GetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !4487 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: hot
declare !dbg !4490 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: hot
declare !dbg !4491 float @DecodePixelGamma(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

declare !dbg !4492 i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!777, !778, !779, !780, !781, !782}
!llvm.ident = !{!783}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/shear.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "a152194db47b5d9d396ec7f4166535d4")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !393, !414, !426, !441, !729}
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
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !394, line: 27, baseType: !5, size: 32, elements: !395)
!394 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!396 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!397 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!398 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!399 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!400 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!401 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!402 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!403 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!404 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!405 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!406 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!407 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!408 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!409 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!410 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!411 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!412 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!413 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !415, line: 113, baseType: !5, size: 32, elements: !416)
!415 = !DIFile(filename: "apps/538.imagick_r/src/magick/statistic.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cc0a772b8e2f514bf6d24321fcc65365")
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425}
!417 = !DIEnumerator(name: "UndefinedStatistic", value: 0)
!418 = !DIEnumerator(name: "GradientStatistic", value: 1)
!419 = !DIEnumerator(name: "MaximumStatistic", value: 2)
!420 = !DIEnumerator(name: "MeanStatistic", value: 3)
!421 = !DIEnumerator(name: "MedianStatistic", value: 4)
!422 = !DIEnumerator(name: "MinimumStatistic", value: 5)
!423 = !DIEnumerator(name: "ModeStatistic", value: 6)
!424 = !DIEnumerator(name: "NonpeakStatistic", value: 7)
!425 = !DIEnumerator(name: "StandardDeviationStatistic", value: 8)
!426 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 30, baseType: !5, size: 32, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!428 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!429 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!430 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!431 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!432 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!433 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!434 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!435 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!436 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!437 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!438 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!439 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!440 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!441 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !443, file: !442, line: 1140, baseType: !5, size: 32, elements: !726)
!442 = !DIFile(filename: "apps/538.imagick_r/src/magick/shear.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a152194db47b5d9d396ec7f4166535d4")
!443 = distinct !DISubprogram(name: "XShearImage", scope: !442, file: !442, line: 1134, type: !444, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !674)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !447, !668, !671, !671, !672, !672, !673}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !450)
!450 = !{!451, !453, !455, !457, !461, !463, !464, !465, !466, !467, !468, !469, !480, !481, !482, !483, !485, !499, !501, !503, !505, !508, !509, !510, !516, !517, !518, !526, !527, !528, !529, !530, !531, !533, !535, !537, !539, !541, !543, !545, !546, !547, !548, !549, !550, !551, !559, !574, !588, !589, !590, !591, !595, !599, !603, !604, !605, !606, !607, !625, !626, !628, !629, !639, !640, !642, !643, !644, !645, !646, !647, !649, !650, !651, !652, !653, !654, !655, !657, !658, !659, !660, !661, !665, !667}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !449, file: !73, line: 153, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !449, file: !73, line: 156, baseType: !454, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !449, file: !73, line: 159, baseType: !456, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !449, file: !73, line: 162, baseType: !458, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !459, line: 46, baseType: !460)
!459 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!460 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !449, file: !73, line: 165, baseType: !462, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !449, file: !73, line: 168, baseType: !446, size: 32, offset: 224)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !449, file: !73, line: 169, baseType: !446, size: 32, offset: 256)
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
!579 = !{!446, !580, !582, !585, !502}
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
!618 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !609, file: !253, line: 118, baseType: !446, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !609, file: !253, line: 121, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !622, line: 26, baseType: !623)
!622 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !622, line: 25, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !609, file: !253, line: 124, baseType: !458, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !449, file: !73, line: 288, baseType: !446, size: 32, offset: 103808)
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
!649 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !449, file: !73, line: 316, baseType: !446, size: 32, offset: 104928)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !449, file: !73, line: 319, baseType: !471, size: 64, offset: 104960)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !449, file: !73, line: 322, baseType: !544, size: 64, offset: 105024)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !449, file: !73, line: 325, baseType: !519, size: 256, offset: 105088)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !449, file: !73, line: 328, baseType: !502, size: 64, offset: 105344)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !449, file: !73, line: 329, baseType: !502, size: 64, offset: 105408)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !73, line: 332, baseType: !656, size: 32, offset: 105472)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !449, file: !73, line: 335, baseType: !446, size: 32, offset: 105504)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !449, file: !73, line: 338, baseType: !586, size: 64, offset: 105536)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !449, file: !73, line: 341, baseType: !446, size: 32, offset: 105600)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !449, file: !73, line: 344, baseType: !458, size: 64, offset: 105664)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !449, file: !73, line: 347, baseType: !662, size: 64, offset: 105728)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !663, line: 7, baseType: !664)
!663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !514, line: 160, baseType: !515)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !449, file: !73, line: 350, baseType: !666, size: 32, offset: 105792)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !449, file: !73, line: 353, baseType: !458, size: 64, offset: 105856)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !670)
!670 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !686, !687, !688, !702, !703, !707, !708, !709, !710, !711, !715, !716, !718, !719, !720, !722, !723}
!675 = !DILocalVariable(name: "image", arg: 1, scope: !443, file: !442, line: 1134, type: !447)
!676 = !DILocalVariable(name: "degrees", arg: 2, scope: !443, file: !442, line: 1134, type: !668)
!677 = !DILocalVariable(name: "width", arg: 3, scope: !443, file: !442, line: 1135, type: !671)
!678 = !DILocalVariable(name: "height", arg: 4, scope: !443, file: !442, line: 1135, type: !671)
!679 = !DILocalVariable(name: "x_offset", arg: 5, scope: !443, file: !442, line: 1135, type: !672)
!680 = !DILocalVariable(name: "y_offset", arg: 6, scope: !443, file: !442, line: 1136, type: !672)
!681 = !DILocalVariable(name: "exception", arg: 7, scope: !443, file: !442, line: 1136, type: !673)
!682 = !DILocalVariable(name: "image_view", scope: !443, file: !442, line: 1147, type: !683)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !394, line: 50, baseType: !685)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!686 = !DILocalVariable(name: "status", scope: !443, file: !442, line: 1150, type: !446)
!687 = !DILocalVariable(name: "progress", scope: !443, file: !442, line: 1153, type: !583)
!688 = !DILocalVariable(name: "background", scope: !443, file: !442, line: 1156, type: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !690, file: !326, line: 107, baseType: !452, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !690, file: !326, line: 110, baseType: !454, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !690, file: !326, line: 113, baseType: !446, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !690, file: !326, line: 116, baseType: !484, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !690, file: !326, line: 119, baseType: !458, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !690, file: !326, line: 122, baseType: !669, size: 32, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !690, file: !326, line: 123, baseType: !669, size: 32, offset: 288)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !690, file: !326, line: 124, baseType: !669, size: 32, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !690, file: !326, line: 125, baseType: !669, size: 32, offset: 352)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !690, file: !326, line: 126, baseType: !669, size: 32, offset: 384)
!702 = !DILocalVariable(name: "y", scope: !443, file: !442, line: 1159, type: !511)
!703 = !DILocalVariable(name: "pixel", scope: !704, file: !442, line: 1183, type: !689)
!704 = distinct !DILexicalBlock(scope: !705, file: !442, line: 1181, column: 3)
!705 = distinct !DILexicalBlock(scope: !706, file: !442, line: 1180, column: 3)
!706 = distinct !DILexicalBlock(scope: !443, file: !442, line: 1180, column: 3)
!707 = !DILocalVariable(name: "source", scope: !704, file: !442, line: 1184, type: !689)
!708 = !DILocalVariable(name: "destination", scope: !704, file: !442, line: 1185, type: !689)
!709 = !DILocalVariable(name: "area", scope: !704, file: !442, line: 1188, type: !669)
!710 = !DILocalVariable(name: "displacement", scope: !704, file: !442, line: 1189, type: !669)
!711 = !DILocalVariable(name: "indexes", scope: !704, file: !442, line: 1192, type: !712)
!712 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !475)
!715 = !DILocalVariable(name: "shear_indexes", scope: !704, file: !442, line: 1193, type: !712)
!716 = !DILocalVariable(name: "p", scope: !704, file: !442, line: 1196, type: !717)
!717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !470)
!718 = !DILocalVariable(name: "q", scope: !704, file: !442, line: 1197, type: !717)
!719 = !DILocalVariable(name: "i", scope: !704, file: !442, line: 1200, type: !511)
!720 = !DILocalVariable(name: "direction", scope: !704, file: !442, line: 1203, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ShearDirection", scope: !443, file: !442, line: 1144, baseType: !441)
!722 = !DILocalVariable(name: "step", scope: !704, file: !442, line: 1206, type: !511)
!723 = !DILocalVariable(name: "proceed", scope: !724, file: !442, line: 1305, type: !446)
!724 = distinct !DILexicalBlock(scope: !725, file: !442, line: 1303, column: 7)
!725 = distinct !DILexicalBlock(scope: !704, file: !442, line: 1302, column: 9)
!726 = !{!727, !728}
!727 = !DIEnumerator(name: "LEFT", value: 0)
!728 = !DIEnumerator(name: "RIGHT", value: 1)
!729 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !730, file: !442, line: 1361, baseType: !5, size: 32, elements: !763)
!730 = distinct !DISubprogram(name: "YShearImage", scope: !442, file: !442, line: 1355, type: !444, scopeLine: 1358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !760}
!732 = !DILocalVariable(name: "image", arg: 1, scope: !730, file: !442, line: 1355, type: !447)
!733 = !DILocalVariable(name: "degrees", arg: 2, scope: !730, file: !442, line: 1355, type: !668)
!734 = !DILocalVariable(name: "width", arg: 3, scope: !730, file: !442, line: 1356, type: !671)
!735 = !DILocalVariable(name: "height", arg: 4, scope: !730, file: !442, line: 1356, type: !671)
!736 = !DILocalVariable(name: "x_offset", arg: 5, scope: !730, file: !442, line: 1356, type: !672)
!737 = !DILocalVariable(name: "y_offset", arg: 6, scope: !730, file: !442, line: 1357, type: !672)
!738 = !DILocalVariable(name: "exception", arg: 7, scope: !730, file: !442, line: 1357, type: !673)
!739 = !DILocalVariable(name: "image_view", scope: !730, file: !442, line: 1368, type: !683)
!740 = !DILocalVariable(name: "status", scope: !730, file: !442, line: 1371, type: !446)
!741 = !DILocalVariable(name: "progress", scope: !730, file: !442, line: 1374, type: !583)
!742 = !DILocalVariable(name: "background", scope: !730, file: !442, line: 1377, type: !689)
!743 = !DILocalVariable(name: "x", scope: !730, file: !442, line: 1380, type: !511)
!744 = !DILocalVariable(name: "step", scope: !745, file: !442, line: 1404, type: !511)
!745 = distinct !DILexicalBlock(scope: !746, file: !442, line: 1402, column: 3)
!746 = distinct !DILexicalBlock(scope: !747, file: !442, line: 1401, column: 3)
!747 = distinct !DILexicalBlock(scope: !730, file: !442, line: 1401, column: 3)
!748 = !DILocalVariable(name: "pixel", scope: !745, file: !442, line: 1407, type: !689)
!749 = !DILocalVariable(name: "source", scope: !745, file: !442, line: 1408, type: !689)
!750 = !DILocalVariable(name: "destination", scope: !745, file: !442, line: 1409, type: !689)
!751 = !DILocalVariable(name: "area", scope: !745, file: !442, line: 1412, type: !669)
!752 = !DILocalVariable(name: "displacement", scope: !745, file: !442, line: 1413, type: !669)
!753 = !DILocalVariable(name: "indexes", scope: !745, file: !442, line: 1416, type: !712)
!754 = !DILocalVariable(name: "shear_indexes", scope: !745, file: !442, line: 1417, type: !712)
!755 = !DILocalVariable(name: "i", scope: !745, file: !442, line: 1420, type: !511)
!756 = !DILocalVariable(name: "p", scope: !745, file: !442, line: 1423, type: !717)
!757 = !DILocalVariable(name: "q", scope: !745, file: !442, line: 1424, type: !717)
!758 = !DILocalVariable(name: "direction", scope: !745, file: !442, line: 1427, type: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ShearDirection", scope: !730, file: !442, line: 1365, baseType: !729)
!760 = !DILocalVariable(name: "proceed", scope: !761, file: !442, line: 1526, type: !446)
!761 = distinct !DILexicalBlock(scope: !762, file: !442, line: 1524, column: 7)
!762 = distinct !DILexicalBlock(scope: !745, file: !442, line: 1523, column: 9)
!763 = !{!764, !765}
!764 = !DIEnumerator(name: "UP", value: 0)
!765 = !DIEnumerator(name: "DOWN", value: 1)
!766 = !{!767, !458, !502, !460, !447, !511, !484, !580, !768, !470, !713, !575, !583, !714, !770, !669, !772, !637, !476, !475, !776}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatrixInfo", file: !774, line: 26, baseType: !775)
!774 = !DIFile(filename: "apps/538.imagick_r/src/magick/matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "eb3e46c8fbd61488836928d66ca395c0")
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MatrixInfo", file: !774, line: 25, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!777 = !{i32 7, !"Dwarf Version", i32 5}
!778 = !{i32 2, !"Debug Info Version", i32 3}
!779 = !{i32 1, !"wchar_size", i32 4}
!780 = !{i32 7, !"PIC Level", i32 2}
!781 = !{i32 7, !"PIE Level", i32 2}
!782 = !{i32 7, !"uwtable", i32 2}
!783 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!784 = distinct !DISubprogram(name: "DeskewImage", scope: !442, file: !442, line: 565, type: !785, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !790)
!785 = !DISubroutineType(types: !786)
!786 = !{!447, !787, !789, !673}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!790 = !{!791, !792, !793, !794, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817}
!791 = !DILocalVariable(name: "image", arg: 1, scope: !784, file: !442, line: 565, type: !787)
!792 = !DILocalVariable(name: "threshold", arg: 2, scope: !784, file: !442, line: 565, type: !789)
!793 = !DILocalVariable(name: "exception", arg: 3, scope: !784, file: !442, line: 566, type: !673)
!794 = !DILocalVariable(name: "affine_matrix", scope: !784, file: !442, line: 569, type: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "AffineMatrix", file: !153, line: 102, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_AffineMatrix", file: !153, line: 93, size: 384, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !796, file: !153, line: 96, baseType: !484, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !796, file: !153, line: 97, baseType: !484, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !796, file: !153, line: 98, baseType: !484, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !796, file: !153, line: 99, baseType: !484, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !796, file: !153, line: 100, baseType: !484, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !796, file: !153, line: 101, baseType: !484, size: 64, offset: 320)
!804 = !DILocalVariable(name: "artifact", scope: !784, file: !442, line: 572, type: !580)
!805 = !DILocalVariable(name: "degrees", scope: !784, file: !442, line: 575, type: !484)
!806 = !DILocalVariable(name: "clone_image", scope: !784, file: !442, line: 578, type: !447)
!807 = !DILocalVariable(name: "crop_image", scope: !784, file: !442, line: 579, type: !447)
!808 = !DILocalVariable(name: "deskew_image", scope: !784, file: !442, line: 580, type: !447)
!809 = !DILocalVariable(name: "median_image", scope: !784, file: !442, line: 581, type: !447)
!810 = !DILocalVariable(name: "status", scope: !784, file: !442, line: 584, type: !446)
!811 = !DILocalVariable(name: "geometry", scope: !784, file: !442, line: 587, type: !519)
!812 = !DILocalVariable(name: "i", scope: !784, file: !442, line: 590, type: !511)
!813 = !DILocalVariable(name: "max_projection", scope: !784, file: !442, line: 593, type: !458)
!814 = !DILocalVariable(name: "projection", scope: !784, file: !442, line: 594, type: !767)
!815 = !DILocalVariable(name: "width", scope: !784, file: !442, line: 595, type: !458)
!816 = !DILocalVariable(name: "skew", scope: !784, file: !442, line: 598, type: !511)
!817 = !DILocalVariable(name: "angle", scope: !818, file: !442, line: 637, type: !600)
!818 = distinct !DILexicalBlock(scope: !784, file: !442, line: 635, column: 3)
!819 = !DILocation(line: 0, scope: !784)
!820 = !DILocation(line: 568, column: 3, scope: !784)
!821 = !DILocation(line: 569, column: 5, scope: !784)
!822 = !DILocation(line: 586, column: 3, scope: !784)
!823 = !DILocation(line: 587, column: 5, scope: !784)
!824 = !{!825, !828, i64 40}
!825 = !{!"_Image", !826, i64 0, !826, i64 4, !826, i64 8, !828, i64 16, !826, i64 24, !826, i64 28, !826, i64 32, !828, i64 40, !828, i64 48, !828, i64 56, !828, i64 64, !829, i64 72, !830, i64 80, !830, i64 88, !830, i64 96, !832, i64 104, !833, i64 112, !826, i64 208, !829, i64 216, !826, i64 224, !829, i64 232, !829, i64 240, !829, i64 248, !828, i64 256, !832, i64 264, !832, i64 272, !835, i64 280, !835, i64 312, !835, i64 344, !832, i64 376, !832, i64 384, !832, i64 392, !826, i64 400, !826, i64 404, !826, i64 408, !826, i64 412, !826, i64 416, !826, i64 420, !829, i64 424, !828, i64 432, !828, i64 440, !828, i64 448, !828, i64 456, !828, i64 464, !828, i64 472, !836, i64 480, !837, i64 504, !829, i64 568, !829, i64 576, !829, i64 584, !829, i64 592, !829, i64 600, !829, i64 608, !826, i64 616, !826, i64 4712, !826, i64 8808, !828, i64 12904, !828, i64 12912, !839, i64 12920, !826, i64 12976, !828, i64 12984, !829, i64 12992, !841, i64 13000, !841, i64 13032, !829, i64 13064, !828, i64 13072, !828, i64 13080, !829, i64 13088, !829, i64 13096, !829, i64 13104, !826, i64 13112, !826, i64 13116, !830, i64 13120, !829, i64 13128, !835, i64 13136, !829, i64 13168, !829, i64 13176, !826, i64 13184, !826, i64 13188, !842, i64 13192, !826, i64 13200, !828, i64 13208, !828, i64 13216, !826, i64 13224, !828, i64 13232}
!826 = !{!"omnipotent char", !827, i64 0}
!827 = !{!"Simple C/C++ TBAA"}
!828 = !{!"long", !826, i64 0}
!829 = !{!"any pointer", !826, i64 0}
!830 = !{!"_PixelPacket", !831, i64 0, !831, i64 2, !831, i64 4, !831, i64 6}
!831 = !{!"short", !826, i64 0}
!832 = !{!"double", !826, i64 0}
!833 = !{!"_ChromaticityInfo", !834, i64 0, !834, i64 24, !834, i64 48, !834, i64 72}
!834 = !{!"_PrimaryInfo", !832, i64 0, !832, i64 8, !832, i64 16}
!835 = !{!"_RectangleInfo", !828, i64 0, !828, i64 8, !828, i64 16, !828, i64 24}
!836 = !{!"_ErrorInfo", !832, i64 0, !832, i64 8, !832, i64 16}
!837 = !{!"_TimerInfo", !838, i64 0, !838, i64 24, !826, i64 48, !828, i64 56}
!838 = !{!"_Timer", !832, i64 0, !832, i64 8, !832, i64 16}
!839 = !{!"_ExceptionInfo", !826, i64 0, !840, i64 4, !829, i64 8, !829, i64 16, !829, i64 24, !826, i64 32, !829, i64 40, !828, i64 48}
!840 = !{!"int", !826, i64 0}
!841 = !{!"_ProfileInfo", !829, i64 0, !828, i64 8, !829, i64 16, !828, i64 24}
!842 = !{!"long long", !826, i64 0}
!843 = !DILocation(line: 603, column: 8, scope: !844)
!844 = distinct !DILexicalBlock(scope: !784, file: !442, line: 603, column: 3)
!845 = !DILocation(line: 0, scope: !844)
!846 = !DILocation(line: 603, column: 23, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !442, line: 603, column: 3)
!848 = !DILocation(line: 603, column: 54, scope: !847)
!849 = !DILocation(line: 603, column: 3, scope: !844)
!850 = distinct !{!850, !849, !851, !852, !853}
!851 = !DILocation(line: 603, column: 60, scope: !844)
!852 = !{!"llvm.loop.mustprogress"}
!853 = !{!"llvm.loop.unroll.disable"}
!854 = !DILocation(line: 604, column: 63, scope: !784)
!855 = !DILocation(line: 604, column: 25, scope: !784)
!856 = !DILocation(line: 606, column: 18, scope: !857)
!857 = distinct !DILexicalBlock(scope: !784, file: !442, line: 606, column: 7)
!858 = !DILocation(line: 606, column: 7, scope: !784)
!859 = !DILocation(line: 607, column: 5, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !442, line: 607, column: 5)
!861 = !DILocalVariable(name: "image", arg: 1, scope: !862, file: !442, line: 329, type: !787)
!862 = distinct !DISubprogram(name: "RadonTransform", scope: !442, file: !442, line: 329, type: !863, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!446, !787, !789, !767, !673}
!865 = !{!861, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !882, !887, !888, !889, !890, !891, !892, !896, !897, !898, !899, !900}
!866 = !DILocalVariable(name: "threshold", arg: 2, scope: !862, file: !442, line: 330, type: !789)
!867 = !DILocalVariable(name: "projection", arg: 3, scope: !862, file: !442, line: 330, type: !767)
!868 = !DILocalVariable(name: "exception", arg: 4, scope: !862, file: !442, line: 330, type: !673)
!869 = !DILocalVariable(name: "image_view", scope: !862, file: !442, line: 333, type: !683)
!870 = !DILocalVariable(name: "destination_matrix", scope: !862, file: !442, line: 336, type: !772)
!871 = !DILocalVariable(name: "source_matrix", scope: !862, file: !442, line: 337, type: !772)
!872 = !DILocalVariable(name: "status", scope: !862, file: !442, line: 340, type: !446)
!873 = !DILocalVariable(name: "i", scope: !862, file: !442, line: 343, type: !511)
!874 = !DILocalVariable(name: "count", scope: !862, file: !442, line: 346, type: !458)
!875 = !DILocalVariable(name: "width", scope: !862, file: !442, line: 347, type: !458)
!876 = !DILocalVariable(name: "y", scope: !862, file: !442, line: 350, type: !511)
!877 = !DILocalVariable(name: "byte", scope: !862, file: !442, line: 353, type: !637)
!878 = !DILocalVariable(name: "bits", scope: !862, file: !442, line: 356, type: !879)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 4096, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 256)
!882 = !DILocalVariable(name: "p", scope: !883, file: !442, line: 394, type: !886)
!883 = distinct !DILexicalBlock(scope: !884, file: !442, line: 392, column: 3)
!884 = distinct !DILexicalBlock(scope: !885, file: !442, line: 391, column: 3)
!885 = distinct !DILexicalBlock(scope: !862, file: !442, line: 391, column: 3)
!886 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !768)
!887 = !DILocalVariable(name: "i", scope: !883, file: !442, line: 397, type: !511)
!888 = !DILocalVariable(name: "x", scope: !883, file: !442, line: 398, type: !511)
!889 = !DILocalVariable(name: "bit", scope: !883, file: !442, line: 401, type: !458)
!890 = !DILocalVariable(name: "byte", scope: !883, file: !442, line: 402, type: !458)
!891 = !DILocalVariable(name: "value", scope: !883, file: !442, line: 405, type: !476)
!892 = !DILocalVariable(name: "p", scope: !893, file: !442, line: 451, type: !886)
!893 = distinct !DILexicalBlock(scope: !894, file: !442, line: 449, column: 3)
!894 = distinct !DILexicalBlock(scope: !895, file: !442, line: 448, column: 3)
!895 = distinct !DILexicalBlock(scope: !862, file: !442, line: 448, column: 3)
!896 = !DILocalVariable(name: "i", scope: !893, file: !442, line: 454, type: !511)
!897 = !DILocalVariable(name: "x", scope: !893, file: !442, line: 455, type: !511)
!898 = !DILocalVariable(name: "bit", scope: !893, file: !442, line: 458, type: !458)
!899 = !DILocalVariable(name: "byte", scope: !893, file: !442, line: 459, type: !458)
!900 = !DILocalVariable(name: "value", scope: !893, file: !442, line: 462, type: !476)
!901 = !DILocation(line: 0, scope: !862, inlinedAt: !902)
!902 = distinct !DILocation(line: 608, column: 10, scope: !784)
!903 = !DILocation(line: 355, column: 3, scope: !862, inlinedAt: !902)
!904 = !DILocation(line: 356, column: 5, scope: !862, inlinedAt: !902)
!905 = !DILocation(line: 358, column: 8, scope: !906, inlinedAt: !902)
!906 = distinct !DILexicalBlock(scope: !862, file: !442, line: 358, column: 3)
!907 = !DILocation(line: 0, scope: !906, inlinedAt: !902)
!908 = !DILocation(line: 358, column: 23, scope: !909, inlinedAt: !902)
!909 = distinct !DILexicalBlock(scope: !906, file: !442, line: 358, column: 3)
!910 = !DILocation(line: 358, column: 54, scope: !909, inlinedAt: !902)
!911 = !DILocation(line: 358, column: 3, scope: !906, inlinedAt: !902)
!912 = distinct !{!912, !911, !913, !852, !853}
!913 = !DILocation(line: 358, column: 60, scope: !906, inlinedAt: !902)
!914 = !DILocation(line: 359, column: 48, scope: !862, inlinedAt: !902)
!915 = !{!825, !828, i64 48}
!916 = !DILocation(line: 359, column: 17, scope: !862, inlinedAt: !902)
!917 = !DILocation(line: 361, column: 53, scope: !862, inlinedAt: !902)
!918 = !DILocation(line: 361, column: 22, scope: !862, inlinedAt: !902)
!919 = !DILocation(line: 363, column: 22, scope: !920, inlinedAt: !902)
!920 = distinct !DILexicalBlock(scope: !862, file: !442, line: 363, column: 7)
!921 = !DILocation(line: 363, column: 46, scope: !920, inlinedAt: !902)
!922 = !DILocation(line: 366, column: 11, scope: !923, inlinedAt: !902)
!923 = distinct !DILexicalBlock(scope: !920, file: !442, line: 365, column: 5)
!924 = !DILocation(line: 367, column: 28, scope: !925, inlinedAt: !902)
!925 = distinct !DILexicalBlock(scope: !923, file: !442, line: 366, column: 11)
!926 = !DILocation(line: 367, column: 9, scope: !925, inlinedAt: !902)
!927 = !DILocation(line: 368, column: 11, scope: !923, inlinedAt: !902)
!928 = !DILocation(line: 372, column: 7, scope: !929, inlinedAt: !902)
!929 = distinct !DILexicalBlock(scope: !862, file: !442, line: 372, column: 7)
!930 = !DILocation(line: 372, column: 33, scope: !929, inlinedAt: !902)
!931 = !DILocation(line: 372, column: 7, scope: !862, inlinedAt: !902)
!932 = !DILocation(line: 374, column: 26, scope: !933, inlinedAt: !902)
!933 = distinct !DILexicalBlock(scope: !929, file: !442, line: 373, column: 5)
!934 = !DILocation(line: 376, column: 7, scope: !933, inlinedAt: !902)
!935 = !DILocation(line: 380, column: 10, scope: !936, inlinedAt: !902)
!936 = distinct !DILexicalBlock(scope: !937, file: !442, line: 379, column: 3)
!937 = distinct !DILexicalBlock(scope: !938, file: !442, line: 378, column: 3)
!938 = distinct !DILexicalBlock(scope: !862, file: !442, line: 378, column: 3)
!939 = !DILocation(line: 381, column: 24, scope: !940, inlinedAt: !902)
!940 = distinct !DILexicalBlock(scope: !941, file: !442, line: 381, column: 5)
!941 = distinct !DILexicalBlock(scope: !936, file: !442, line: 381, column: 5)
!942 = !DILocation(line: 381, column: 5, scope: !941, inlinedAt: !902)
!943 = !DILocation(line: 382, column: 12, scope: !940, inlinedAt: !902)
!944 = !DILocation(line: 381, column: 34, scope: !940, inlinedAt: !902)
!945 = distinct !{!945, !942, !946, !852, !853}
!946 = !DILocation(line: 382, column: 21, scope: !941, inlinedAt: !902)
!947 = !DILocation(line: 0, scope: !941, inlinedAt: !902)
!948 = !DILocation(line: 383, column: 5, scope: !936, inlinedAt: !902)
!949 = !DILocation(line: 383, column: 12, scope: !936, inlinedAt: !902)
!950 = !{!831, !831, i64 0}
!951 = !DILocation(line: 378, column: 23, scope: !937, inlinedAt: !902)
!952 = !DILocation(line: 378, column: 15, scope: !937, inlinedAt: !902)
!953 = !DILocation(line: 378, column: 3, scope: !938, inlinedAt: !902)
!954 = distinct !{!954, !953, !955, !852, !853}
!955 = !DILocation(line: 384, column: 3, scope: !938, inlinedAt: !902)
!956 = !DILocation(line: 386, column: 14, scope: !862, inlinedAt: !902)
!957 = !DILocation(line: 391, column: 34, scope: !884, inlinedAt: !902)
!958 = !DILocation(line: 391, column: 15, scope: !884, inlinedAt: !902)
!959 = !DILocation(line: 391, column: 3, scope: !885, inlinedAt: !902)
!960 = !DILocation(line: 404, column: 5, scope: !883, inlinedAt: !902)
!961 = !DILocation(line: 407, column: 16, scope: !962, inlinedAt: !902)
!962 = distinct !DILexicalBlock(scope: !883, file: !442, line: 407, column: 9)
!963 = !DILocation(line: 407, column: 9, scope: !883, inlinedAt: !902)
!964 = !DILocation(line: 409, column: 55, scope: !883, inlinedAt: !902)
!965 = !DILocation(line: 409, column: 7, scope: !883, inlinedAt: !902)
!966 = !DILocation(line: 0, scope: !883, inlinedAt: !902)
!967 = !DILocation(line: 410, column: 11, scope: !968, inlinedAt: !902)
!968 = distinct !DILexicalBlock(scope: !883, file: !442, line: 410, column: 9)
!969 = !DILocation(line: 410, column: 9, scope: !883, inlinedAt: !902)
!970 = !DILocation(line: 417, column: 25, scope: !883, inlinedAt: !902)
!971 = !DILocation(line: 418, column: 17, scope: !972, inlinedAt: !902)
!972 = distinct !DILexicalBlock(scope: !973, file: !442, line: 418, column: 5)
!973 = distinct !DILexicalBlock(scope: !883, file: !442, line: 418, column: 5)
!974 = !DILocation(line: 418, column: 5, scope: !973, inlinedAt: !902)
!975 = !DILocation(line: 417, column: 32, scope: !883, inlinedAt: !902)
!976 = !DILocation(line: 417, column: 35, scope: !883, inlinedAt: !902)
!977 = !DILocation(line: 420, column: 11, scope: !978, inlinedAt: !902)
!978 = distinct !DILexicalBlock(scope: !972, file: !442, line: 419, column: 5)
!979 = !DILocation(line: 421, column: 29, scope: !980, inlinedAt: !902)
!980 = distinct !DILexicalBlock(scope: !978, file: !442, line: 421, column: 11)
!981 = !{!830, !831, i64 4}
!982 = !DILocation(line: 421, column: 12, scope: !980, inlinedAt: !902)
!983 = !DILocation(line: 421, column: 44, scope: !980, inlinedAt: !902)
!984 = !DILocation(line: 421, column: 57, scope: !980, inlinedAt: !902)
!985 = !DILocation(line: 422, column: 29, scope: !980, inlinedAt: !902)
!986 = !{!830, !831, i64 2}
!987 = !DILocation(line: 422, column: 12, scope: !980, inlinedAt: !902)
!988 = !DILocation(line: 422, column: 46, scope: !980, inlinedAt: !902)
!989 = !DILocation(line: 422, column: 59, scope: !980, inlinedAt: !902)
!990 = !DILocation(line: 423, column: 29, scope: !980, inlinedAt: !902)
!991 = !{!830, !831, i64 0}
!992 = !DILocation(line: 423, column: 12, scope: !980, inlinedAt: !902)
!993 = !DILocation(line: 423, column: 45, scope: !980, inlinedAt: !902)
!994 = !DILocation(line: 421, column: 11, scope: !978, inlinedAt: !902)
!995 = !DILocation(line: 424, column: 13, scope: !980, inlinedAt: !902)
!996 = !DILocation(line: 424, column: 9, scope: !980, inlinedAt: !902)
!997 = !DILocation(line: 0, scope: !978, inlinedAt: !902)
!998 = !DILocation(line: 425, column: 10, scope: !978, inlinedAt: !902)
!999 = !DILocation(line: 426, column: 15, scope: !1000, inlinedAt: !902)
!1000 = distinct !DILexicalBlock(scope: !978, file: !442, line: 426, column: 11)
!1001 = !DILocation(line: 426, column: 11, scope: !978, inlinedAt: !902)
!1002 = !DILocation(line: 433, column: 8, scope: !978, inlinedAt: !902)
!1003 = !DILocation(line: 418, column: 46, scope: !972, inlinedAt: !902)
!1004 = distinct !{!1004, !974, !1005, !852, !853}
!1005 = !DILocation(line: 434, column: 5, scope: !973, inlinedAt: !902)
!1006 = !DILocation(line: 428, column: 17, scope: !1007, inlinedAt: !902)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !442, line: 427, column: 9)
!1008 = !DILocation(line: 428, column: 16, scope: !1007, inlinedAt: !902)
!1009 = !DILocation(line: 429, column: 49, scope: !1007, inlinedAt: !902)
!1010 = !DILocation(line: 429, column: 18, scope: !1007, inlinedAt: !902)
!1011 = !DILocation(line: 418, column: 36, scope: !972, inlinedAt: !902)
!1012 = !DILocation(line: 437, column: 18, scope: !1013, inlinedAt: !902)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !442, line: 436, column: 7)
!1014 = distinct !DILexicalBlock(scope: !883, file: !442, line: 435, column: 9)
!1015 = !DILocation(line: 437, column: 13, scope: !1013, inlinedAt: !902)
!1016 = !DILocation(line: 438, column: 15, scope: !1013, inlinedAt: !902)
!1017 = !DILocation(line: 438, column: 14, scope: !1013, inlinedAt: !902)
!1018 = !DILocation(line: 439, column: 47, scope: !1013, inlinedAt: !902)
!1019 = !DILocation(line: 439, column: 16, scope: !1013, inlinedAt: !902)
!1020 = !DILocation(line: 440, column: 7, scope: !1013, inlinedAt: !902)
!1021 = !DILocation(line: 441, column: 3, scope: !884, inlinedAt: !902)
!1022 = !DILocation(line: 391, column: 41, scope: !884, inlinedAt: !902)
!1023 = distinct !{!1023, !959, !1024, !852, !853}
!1024 = !DILocation(line: 441, column: 3, scope: !885, inlinedAt: !902)
!1025 = !DILocation(line: 385, column: 9, scope: !862, inlinedAt: !902)
!1026 = !DILocation(line: 442, column: 3, scope: !862, inlinedAt: !902)
!1027 = !DILocation(line: 443, column: 10, scope: !862, inlinedAt: !902)
!1028 = !DILocation(line: 448, column: 34, scope: !894, inlinedAt: !902)
!1029 = !DILocation(line: 448, column: 15, scope: !894, inlinedAt: !902)
!1030 = !DILocation(line: 448, column: 3, scope: !895, inlinedAt: !902)
!1031 = !DILocation(line: 461, column: 5, scope: !893, inlinedAt: !902)
!1032 = !DILocation(line: 464, column: 16, scope: !1033, inlinedAt: !902)
!1033 = distinct !DILexicalBlock(scope: !893, file: !442, line: 464, column: 9)
!1034 = !DILocation(line: 464, column: 9, scope: !893, inlinedAt: !902)
!1035 = !DILocation(line: 466, column: 55, scope: !893, inlinedAt: !902)
!1036 = !DILocation(line: 466, column: 7, scope: !893, inlinedAt: !902)
!1037 = !DILocation(line: 0, scope: !893, inlinedAt: !902)
!1038 = !DILocation(line: 467, column: 11, scope: !1039, inlinedAt: !902)
!1039 = distinct !DILexicalBlock(scope: !893, file: !442, line: 467, column: 9)
!1040 = !DILocation(line: 467, column: 9, scope: !893, inlinedAt: !902)
!1041 = !DILocation(line: 475, column: 36, scope: !1042, inlinedAt: !902)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !442, line: 475, column: 5)
!1043 = distinct !DILexicalBlock(scope: !893, file: !442, line: 475, column: 5)
!1044 = !DILocation(line: 475, column: 17, scope: !1042, inlinedAt: !902)
!1045 = !DILocation(line: 475, column: 5, scope: !1043, inlinedAt: !902)
!1046 = !DILocation(line: 477, column: 11, scope: !1047, inlinedAt: !902)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !442, line: 476, column: 5)
!1048 = !DILocation(line: 478, column: 29, scope: !1049, inlinedAt: !902)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !442, line: 478, column: 11)
!1050 = !DILocation(line: 478, column: 12, scope: !1049, inlinedAt: !902)
!1051 = !DILocation(line: 478, column: 44, scope: !1049, inlinedAt: !902)
!1052 = !DILocation(line: 478, column: 57, scope: !1049, inlinedAt: !902)
!1053 = !DILocation(line: 479, column: 29, scope: !1049, inlinedAt: !902)
!1054 = !DILocation(line: 479, column: 12, scope: !1049, inlinedAt: !902)
!1055 = !DILocation(line: 479, column: 46, scope: !1049, inlinedAt: !902)
!1056 = !DILocation(line: 479, column: 59, scope: !1049, inlinedAt: !902)
!1057 = !DILocation(line: 480, column: 29, scope: !1049, inlinedAt: !902)
!1058 = !DILocation(line: 480, column: 12, scope: !1049, inlinedAt: !902)
!1059 = !DILocation(line: 480, column: 45, scope: !1049, inlinedAt: !902)
!1060 = !DILocation(line: 478, column: 11, scope: !1047, inlinedAt: !902)
!1061 = !DILocation(line: 481, column: 13, scope: !1049, inlinedAt: !902)
!1062 = !DILocation(line: 481, column: 9, scope: !1049, inlinedAt: !902)
!1063 = !DILocation(line: 0, scope: !1047, inlinedAt: !902)
!1064 = !DILocation(line: 482, column: 10, scope: !1047, inlinedAt: !902)
!1065 = !DILocation(line: 483, column: 15, scope: !1066, inlinedAt: !902)
!1066 = distinct !DILexicalBlock(scope: !1047, file: !442, line: 483, column: 11)
!1067 = !DILocation(line: 483, column: 11, scope: !1047, inlinedAt: !902)
!1068 = !DILocation(line: 490, column: 8, scope: !1047, inlinedAt: !902)
!1069 = !DILocation(line: 475, column: 46, scope: !1042, inlinedAt: !902)
!1070 = distinct !{!1070, !1045, !1071, !852, !853}
!1071 = !DILocation(line: 491, column: 5, scope: !1043, inlinedAt: !902)
!1072 = !DILocation(line: 485, column: 17, scope: !1073, inlinedAt: !902)
!1073 = distinct !DILexicalBlock(scope: !1066, file: !442, line: 484, column: 9)
!1074 = !DILocation(line: 485, column: 16, scope: !1073, inlinedAt: !902)
!1075 = !DILocation(line: 486, column: 50, scope: !1073, inlinedAt: !902)
!1076 = !DILocation(line: 486, column: 18, scope: !1073, inlinedAt: !902)
!1077 = !DILocation(line: 494, column: 18, scope: !1078, inlinedAt: !902)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !442, line: 493, column: 7)
!1079 = distinct !DILexicalBlock(scope: !893, file: !442, line: 492, column: 9)
!1080 = !DILocation(line: 494, column: 13, scope: !1078, inlinedAt: !902)
!1081 = !DILocation(line: 495, column: 15, scope: !1078, inlinedAt: !902)
!1082 = !DILocation(line: 495, column: 14, scope: !1078, inlinedAt: !902)
!1083 = !DILocation(line: 496, column: 16, scope: !1078, inlinedAt: !902)
!1084 = !DILocation(line: 497, column: 7, scope: !1078, inlinedAt: !902)
!1085 = !DILocation(line: 498, column: 3, scope: !894, inlinedAt: !902)
!1086 = !DILocation(line: 448, column: 41, scope: !894, inlinedAt: !902)
!1087 = distinct !{!1087, !1030, !1088, !852, !853}
!1088 = !DILocation(line: 498, column: 3, scope: !895, inlinedAt: !902)
!1089 = !DILocation(line: 499, column: 3, scope: !862, inlinedAt: !902)
!1090 = !DILocation(line: 500, column: 14, scope: !862, inlinedAt: !902)
!1091 = !DILocation(line: 501, column: 22, scope: !862, inlinedAt: !902)
!1092 = !DILocation(line: 502, column: 17, scope: !862, inlinedAt: !902)
!1093 = !DILocation(line: 504, column: 1, scope: !862, inlinedAt: !902)
!1094 = !DILocation(line: 616, column: 15, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !442, line: 616, column: 3)
!1096 = distinct !DILexicalBlock(scope: !784, file: !442, line: 616, column: 3)
!1097 = !DILocation(line: 616, column: 3, scope: !1096)
!1098 = !DILocation(line: 611, column: 29, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !442, line: 610, column: 5)
!1100 = distinct !DILexicalBlock(scope: !784, file: !442, line: 609, column: 7)
!1101 = !DILocation(line: 612, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !442, line: 612, column: 7)
!1103 = !DILocation(line: 618, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !442, line: 618, column: 9)
!1105 = distinct !DILexicalBlock(scope: !1095, file: !442, line: 617, column: 3)
!1106 = !{!828, !828, i64 0}
!1107 = !DILocation(line: 618, column: 23, scope: !1104)
!1108 = !DILocation(line: 618, column: 9, scope: !1105)
!1109 = !DILocation(line: 616, column: 41, scope: !1095)
!1110 = distinct !{!1110, !1097, !1111, !852, !853}
!1111 = !DILocation(line: 623, column: 3, scope: !1096)
!1112 = !DILocation(line: 624, column: 25, scope: !784)
!1113 = !DILocation(line: 625, column: 48, scope: !784)
!1114 = !DILocation(line: 625, column: 47, scope: !784)
!1115 = !DILocation(line: 625, column: 53, scope: !784)
!1116 = !DILocation(line: 625, column: 29, scope: !784)
!1117 = !DILocation(line: 625, column: 28, scope: !784)
!1118 = !DILocalVariable(name: "radians", arg: 1, scope: !1119, file: !1120, line: 59, type: !668)
!1119 = distinct !DISubprogram(name: "RadiansToDegrees", scope: !1120, file: !1120, line: 59, type: !1121, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1123)
!1120 = !DIFile(filename: "apps/538.imagick_r/src/magick/image-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "35ccb704e07ae6f7e4c200a043674ce8")
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!669, !668}
!1123 = !{!1118}
!1124 = !DILocation(line: 0, scope: !1119, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 625, column: 11, scope: !784)
!1126 = !DILocation(line: 61, column: 34, scope: !1119, inlinedAt: !1125)
!1127 = !DILocation(line: 61, column: 33, scope: !1119, inlinedAt: !1125)
!1128 = !DILocation(line: 61, column: 41, scope: !1119, inlinedAt: !1125)
!1129 = !DILocation(line: 61, column: 10, scope: !1119, inlinedAt: !1125)
!1130 = !DILocation(line: 625, column: 11, scope: !784)
!1131 = !DILocation(line: 626, column: 14, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !784, file: !442, line: 626, column: 7)
!1133 = !{!825, !826, i64 12976}
!1134 = !DILocation(line: 626, column: 20, scope: !1132)
!1135 = !DILocation(line: 626, column: 7, scope: !784)
!1136 = !DILocation(line: 627, column: 12, scope: !1132)
!1137 = !DILocation(line: 627, column: 5, scope: !1132)
!1138 = !DILocation(line: 632, column: 15, scope: !784)
!1139 = !DILocation(line: 633, column: 19, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !784, file: !442, line: 633, column: 7)
!1141 = !DILocation(line: 633, column: 7, scope: !784)
!1142 = !DILocation(line: 636, column: 5, scope: !818)
!1143 = !DILocation(line: 637, column: 7, scope: !818)
!1144 = !DILocation(line: 639, column: 12, scope: !818)
!1145 = !DILocation(line: 640, column: 12, scope: !818)
!1146 = !DILocation(line: 641, column: 3, scope: !784)
!1147 = !DILocation(line: 642, column: 10, scope: !784)
!1148 = !DILocation(line: 643, column: 41, scope: !784)
!1149 = !DILocalVariable(name: "degrees", arg: 1, scope: !1150, file: !1120, line: 54, type: !789)
!1150 = distinct !DISubprogram(name: "DegreesToRadians", scope: !1120, file: !1120, line: 54, type: !1151, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!484, !789}
!1153 = !{!1149}
!1154 = !DILocation(line: 0, scope: !1150, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 643, column: 24, scope: !784)
!1156 = !DILocation(line: 56, column: 28, scope: !1150, inlinedAt: !1155)
!1157 = !DILocation(line: 56, column: 36, scope: !1150, inlinedAt: !1155)
!1158 = !DILocation(line: 643, column: 20, scope: !784)
!1159 = !DILocation(line: 643, column: 19, scope: !784)
!1160 = !{!1161, !832, i64 0}
!1161 = !{!"_AffineMatrix", !832, i64 0, !832, i64 8, !832, i64 16, !832, i64 24, !832, i64 32, !832, i64 40}
!1162 = !DILocation(line: 644, column: 41, scope: !784)
!1163 = !DILocation(line: 0, scope: !1150, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 644, column: 24, scope: !784)
!1165 = !DILocation(line: 56, column: 28, scope: !1150, inlinedAt: !1164)
!1166 = !DILocation(line: 56, column: 36, scope: !1150, inlinedAt: !1164)
!1167 = !DILocation(line: 644, column: 20, scope: !784)
!1168 = !DILocation(line: 644, column: 17, scope: !784)
!1169 = !DILocation(line: 644, column: 19, scope: !784)
!1170 = !{!1161, !832, i64 8}
!1171 = !DILocation(line: 645, column: 43, scope: !784)
!1172 = !DILocation(line: 0, scope: !1150, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 645, column: 26, scope: !784)
!1174 = !DILocation(line: 56, column: 28, scope: !1150, inlinedAt: !1173)
!1175 = !DILocation(line: 56, column: 36, scope: !1150, inlinedAt: !1173)
!1176 = !DILocation(line: 645, column: 22, scope: !784)
!1177 = !DILocation(line: 645, column: 21, scope: !784)
!1178 = !DILocation(line: 645, column: 17, scope: !784)
!1179 = !DILocation(line: 645, column: 19, scope: !784)
!1180 = !{!1161, !832, i64 16}
!1181 = !DILocation(line: 646, column: 41, scope: !784)
!1182 = !DILocation(line: 0, scope: !1150, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 646, column: 24, scope: !784)
!1184 = !DILocation(line: 56, column: 28, scope: !1150, inlinedAt: !1183)
!1185 = !DILocation(line: 56, column: 36, scope: !1150, inlinedAt: !1183)
!1186 = !DILocation(line: 646, column: 20, scope: !784)
!1187 = !DILocation(line: 646, column: 17, scope: !784)
!1188 = !DILocation(line: 646, column: 19, scope: !784)
!1189 = !{!1161, !832, i64 24}
!1190 = !DILocation(line: 647, column: 17, scope: !784)
!1191 = !DILocation(line: 648, column: 19, scope: !784)
!1192 = !DILocation(line: 649, column: 12, scope: !784)
!1193 = !DILocation(line: 650, column: 16, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !784, file: !442, line: 650, column: 7)
!1195 = !DILocation(line: 650, column: 7, scope: !784)
!1196 = !DILocation(line: 652, column: 20, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !442, line: 651, column: 5)
!1198 = !DILocation(line: 653, column: 19, scope: !1197)
!1199 = !DILocation(line: 654, column: 7, scope: !1197)
!1200 = !DILocalVariable(name: "value", arg: 1, scope: !1201, file: !1202, line: 68, type: !1205)
!1201 = distinct !DISubprogram(name: "StringToLong", scope: !1202, file: !1202, line: 68, type: !1203, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1206)
!1202 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!515, !1205}
!1205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !580)
!1206 = !{!1200}
!1207 = !DILocation(line: 0, scope: !1201, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 659, column: 49, scope: !784)
!1209 = !DILocation(line: 70, column: 10, scope: !1201, inlinedAt: !1208)
!1210 = !DILocalVariable(name: "image", arg: 1, scope: !1211, file: !442, line: 506, type: !447)
!1211 = distinct !DISubprogram(name: "GetImageBackgroundColor", scope: !442, file: !442, line: 506, type: !1212, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1214)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !447, !672, !673}
!1214 = !{!1210, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1225}
!1215 = !DILocalVariable(name: "offset", arg: 2, scope: !1211, file: !442, line: 506, type: !672)
!1216 = !DILocalVariable(name: "exception", arg: 3, scope: !1211, file: !442, line: 507, type: !673)
!1217 = !DILocalVariable(name: "image_view", scope: !1211, file: !442, line: 510, type: !683)
!1218 = !DILocalVariable(name: "background", scope: !1211, file: !442, line: 513, type: !689)
!1219 = !DILocalVariable(name: "count", scope: !1211, file: !442, line: 516, type: !669)
!1220 = !DILocalVariable(name: "y", scope: !1211, file: !442, line: 519, type: !511)
!1221 = !DILocalVariable(name: "p", scope: !1222, file: !442, line: 532, type: !886)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !442, line: 530, column: 3)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !442, line: 529, column: 3)
!1224 = distinct !DILexicalBlock(scope: !1211, file: !442, line: 529, column: 3)
!1225 = !DILocalVariable(name: "x", scope: !1222, file: !442, line: 535, type: !511)
!1226 = !DILocation(line: 0, scope: !1211, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 659, column: 3, scope: !784)
!1228 = !DILocation(line: 512, column: 3, scope: !1211, inlinedAt: !1227)
!1229 = !DILocation(line: 513, column: 5, scope: !1211, inlinedAt: !1227)
!1230 = !DILocation(line: 524, column: 14, scope: !1231, inlinedAt: !1227)
!1231 = distinct !DILexicalBlock(scope: !1211, file: !442, line: 524, column: 7)
!1232 = !DILocation(line: 524, column: 7, scope: !1211, inlinedAt: !1227)
!1233 = !DILocation(line: 526, column: 3, scope: !1211, inlinedAt: !1227)
!1234 = !DILocation(line: 528, column: 14, scope: !1211, inlinedAt: !1227)
!1235 = !DILocation(line: 529, column: 34, scope: !1223, inlinedAt: !1227)
!1236 = !DILocation(line: 529, column: 15, scope: !1223, inlinedAt: !1227)
!1237 = !DILocation(line: 529, column: 3, scope: !1224, inlinedAt: !1227)
!1238 = !DILocation(line: 537, column: 12, scope: !1239, inlinedAt: !1227)
!1239 = distinct !DILexicalBlock(scope: !1222, file: !442, line: 537, column: 9)
!1240 = !DILocation(line: 537, column: 23, scope: !1239, inlinedAt: !1227)
!1241 = !DILocation(line: 539, column: 55, scope: !1222, inlinedAt: !1227)
!1242 = !DILocation(line: 539, column: 7, scope: !1222, inlinedAt: !1227)
!1243 = !DILocation(line: 0, scope: !1222, inlinedAt: !1227)
!1244 = !DILocation(line: 540, column: 11, scope: !1245, inlinedAt: !1227)
!1245 = distinct !DILexicalBlock(scope: !1222, file: !442, line: 540, column: 9)
!1246 = !DILocation(line: 540, column: 9, scope: !1222, inlinedAt: !1227)
!1247 = !DILocation(line: 542, column: 17, scope: !1248, inlinedAt: !1227)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !442, line: 542, column: 5)
!1249 = distinct !DILexicalBlock(scope: !1222, file: !442, line: 542, column: 5)
!1250 = !DILocation(line: 542, column: 5, scope: !1249, inlinedAt: !1227)
!1251 = !{!1252, !1253, i64 32}
!1252 = !{!"_MagickPixelPacket", !826, i64 0, !826, i64 4, !826, i64 8, !832, i64 16, !828, i64 24, !1253, i64 32, !1253, i64 36, !1253, i64 40, !1253, i64 44, !1253, i64 48}
!1253 = !{!"float", !826, i64 0}
!1254 = !{!1252, !1253, i64 36}
!1255 = !{!1252, !1253, i64 40}
!1256 = !{!1252, !1253, i64 44}
!1257 = !DILocation(line: 544, column: 14, scope: !1258, inlinedAt: !1227)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !442, line: 544, column: 11)
!1259 = distinct !DILexicalBlock(scope: !1248, file: !442, line: 543, column: 5)
!1260 = !DILocation(line: 544, column: 25, scope: !1258, inlinedAt: !1227)
!1261 = !DILocation(line: 546, column: 36, scope: !1259, inlinedAt: !1227)
!1262 = !DILocation(line: 546, column: 21, scope: !1259, inlinedAt: !1227)
!1263 = !DILocation(line: 547, column: 38, scope: !1259, inlinedAt: !1227)
!1264 = !DILocation(line: 547, column: 23, scope: !1259, inlinedAt: !1227)
!1265 = !DILocation(line: 548, column: 37, scope: !1259, inlinedAt: !1227)
!1266 = !DILocation(line: 548, column: 22, scope: !1259, inlinedAt: !1227)
!1267 = !DILocation(line: 549, column: 40, scope: !1259, inlinedAt: !1227)
!1268 = !{!830, !831, i64 6}
!1269 = !DILocation(line: 549, column: 25, scope: !1259, inlinedAt: !1227)
!1270 = !DILocation(line: 550, column: 12, scope: !1259, inlinedAt: !1227)
!1271 = !DILocation(line: 551, column: 8, scope: !1259, inlinedAt: !1227)
!1272 = !DILocation(line: 552, column: 5, scope: !1259, inlinedAt: !1227)
!1273 = !DILocation(line: 542, column: 46, scope: !1248, inlinedAt: !1227)
!1274 = distinct !{!1274, !1250, !1275, !852, !853}
!1275 = !DILocation(line: 552, column: 5, scope: !1249, inlinedAt: !1227)
!1276 = !DILocation(line: 527, column: 8, scope: !1211, inlinedAt: !1227)
!1277 = !DILocation(line: 529, column: 41, scope: !1223, inlinedAt: !1227)
!1278 = distinct !{!1278, !1237, !1279, !852, !853}
!1279 = !DILocation(line: 553, column: 3, scope: !1224, inlinedAt: !1227)
!1280 = !DILocation(line: 554, column: 14, scope: !1211, inlinedAt: !1227)
!1281 = !DILocation(line: 556, column: 16, scope: !1211, inlinedAt: !1227)
!1282 = !DILocation(line: 555, column: 75, scope: !1211, inlinedAt: !1227)
!1283 = !DILocation(line: 556, column: 19, scope: !1211, inlinedAt: !1227)
!1284 = !DILocalVariable(name: "value", arg: 1, scope: !1285, file: !147, line: 87, type: !668)
!1285 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !1286, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!475, !668}
!1288 = !{!1284}
!1289 = !DILocation(line: 0, scope: !1285, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 555, column: 31, scope: !1211, inlinedAt: !1227)
!1291 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !1290)
!1292 = distinct !DILexicalBlock(scope: !1285, file: !147, line: 92, column: 7)
!1293 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !1290)
!1294 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !1290)
!1295 = distinct !DILexicalBlock(scope: !1285, file: !147, line: 94, column: 7)
!1296 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !1290)
!1297 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !1290)
!1298 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !1290)
!1299 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !1290)
!1300 = !DILocation(line: 555, column: 10, scope: !1211, inlinedAt: !1227)
!1301 = !DILocation(line: 555, column: 27, scope: !1211, inlinedAt: !1227)
!1302 = !DILocation(line: 555, column: 30, scope: !1211, inlinedAt: !1227)
!1303 = !{!825, !831, i64 84}
!1304 = !DILocation(line: 558, column: 16, scope: !1211, inlinedAt: !1227)
!1305 = !DILocation(line: 557, column: 77, scope: !1211, inlinedAt: !1227)
!1306 = !DILocation(line: 558, column: 21, scope: !1211, inlinedAt: !1227)
!1307 = !DILocation(line: 0, scope: !1285, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 557, column: 33, scope: !1211, inlinedAt: !1227)
!1309 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !1308)
!1310 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !1308)
!1311 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !1308)
!1312 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !1308)
!1313 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !1308)
!1314 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !1308)
!1315 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !1308)
!1316 = !DILocation(line: 557, column: 27, scope: !1211, inlinedAt: !1227)
!1317 = !DILocation(line: 557, column: 32, scope: !1211, inlinedAt: !1227)
!1318 = !{!825, !831, i64 82}
!1319 = !DILocation(line: 560, column: 16, scope: !1211, inlinedAt: !1227)
!1320 = !DILocation(line: 559, column: 76, scope: !1211, inlinedAt: !1227)
!1321 = !DILocation(line: 560, column: 20, scope: !1211, inlinedAt: !1227)
!1322 = !DILocation(line: 0, scope: !1285, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 559, column: 32, scope: !1211, inlinedAt: !1227)
!1324 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !1323)
!1325 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !1323)
!1326 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !1323)
!1327 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !1323)
!1328 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !1323)
!1329 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !1323)
!1330 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !1323)
!1331 = !DILocation(line: 559, column: 31, scope: !1211, inlinedAt: !1227)
!1332 = !{!825, !831, i64 80}
!1333 = !DILocation(line: 562, column: 16, scope: !1211, inlinedAt: !1227)
!1334 = !DILocation(line: 561, column: 79, scope: !1211, inlinedAt: !1227)
!1335 = !DILocation(line: 562, column: 23, scope: !1211, inlinedAt: !1227)
!1336 = !DILocation(line: 0, scope: !1285, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 561, column: 35, scope: !1211, inlinedAt: !1227)
!1338 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !1337)
!1339 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !1337)
!1340 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !1337)
!1341 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !1337)
!1342 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !1337)
!1343 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !1337)
!1344 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !1337)
!1345 = !DILocation(line: 561, column: 27, scope: !1211, inlinedAt: !1227)
!1346 = !DILocation(line: 561, column: 34, scope: !1211, inlinedAt: !1227)
!1347 = !{!825, !831, i64 86}
!1348 = !DILocation(line: 563, column: 1, scope: !1211, inlinedAt: !1227)
!1349 = !DILocation(line: 661, column: 16, scope: !784)
!1350 = !DILocation(line: 662, column: 15, scope: !784)
!1351 = !DILocation(line: 663, column: 20, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !784, file: !442, line: 663, column: 7)
!1353 = !DILocation(line: 663, column: 7, scope: !784)
!1354 = !DILocation(line: 665, column: 16, scope: !784)
!1355 = !DILocation(line: 666, column: 20, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !784, file: !442, line: 666, column: 7)
!1357 = !DILocation(line: 666, column: 7, scope: !784)
!1358 = !DILocation(line: 668, column: 20, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !442, line: 667, column: 5)
!1360 = !DILocation(line: 669, column: 7, scope: !1359)
!1361 = !DILocation(line: 671, column: 12, scope: !784)
!1362 = !DILocation(line: 672, column: 16, scope: !784)
!1363 = !DILocation(line: 673, column: 14, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !784, file: !442, line: 673, column: 7)
!1365 = !DILocation(line: 673, column: 20, scope: !1364)
!1366 = !DILocation(line: 673, column: 7, scope: !784)
!1367 = !DILocation(line: 675, column: 51, scope: !1364)
!1368 = !{!835, !828, i64 0}
!1369 = !DILocation(line: 675, column: 33, scope: !1364)
!1370 = !DILocation(line: 676, column: 16, scope: !1364)
!1371 = !{!835, !828, i64 8}
!1372 = !DILocation(line: 675, column: 57, scope: !1364)
!1373 = !DILocation(line: 676, column: 41, scope: !1364)
!1374 = !{!835, !828, i64 16}
!1375 = !DILocation(line: 676, column: 23, scope: !1364)
!1376 = !DILocation(line: 676, column: 61, scope: !1364)
!1377 = !{!835, !828, i64 24}
!1378 = !DILocation(line: 676, column: 43, scope: !1364)
!1379 = !DILocation(line: 674, column: 12, scope: !1364)
!1380 = !DILocation(line: 674, column: 5, scope: !1364)
!1381 = !DILocation(line: 677, column: 14, scope: !784)
!1382 = !DILocation(line: 678, column: 16, scope: !784)
!1383 = !DILocation(line: 679, column: 3, scope: !784)
!1384 = !DILocation(line: 680, column: 1, scope: !784)
!1385 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1386, file: !1386, line: 42, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1386 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!502, !671, !671}
!1389 = !{}
!1390 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!446, !673, !580, !580, !671, !1393, !580, !580, null}
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!1394 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1386, file: !1386, line: 51, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!502, !502}
!1397 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !1398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!446, !1400, !580, !580, !671, !580, null}
!1400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!1402 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!447, !787, !671, !671, !1405, !673}
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!1406 = !DISubprogram(name: "FormatLocaleString", scope: !1407, file: !1407, line: 71, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1407 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!511, !1410, !671, !1205, null}
!1410 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !506)
!1411 = !DISubprogram(name: "SetImageArtifact", scope: !1412, file: !1412, line: 36, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1412 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!446, !447, !580, !580}
!1415 = !DISubprogram(name: "SetImageVirtualPixelMethod", scope: !73, file: !73, line: 559, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1418, !787, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !394, line: 47, baseType: !393)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1420 = !DISubprogram(name: "GetImageArtifact", scope: !1412, file: !1412, line: 30, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!580, !787, !580}
!1423 = !DISubprogram(name: "AffineTransformImage", scope: !1424, file: !1424, line: 73, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1424 = !DIFile(filename: "apps/538.imagick_r/src/magick/distort.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "61738a5e0552018447b32d5aafa59fd2")
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!447, !787, !1427, !673}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!1429 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !1430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!447, !447}
!1432 = !DISubprogram(name: "StatisticImage", scope: !415, file: !415, line: 140, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!447, !787, !1435, !671, !671, !673}
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "StatisticType", file: !415, line: 124, baseType: !414)
!1437 = !DISubprogram(name: "GetImageBoundingBox", scope: !1438, file: !1438, line: 40, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1438 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!519, !787, !673}
!1441 = !DISubprogram(name: "CropImage", scope: !1442, file: !1442, line: 29, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1442 = !DIFile(filename: "apps/538.imagick_r/src/magick/transform.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "38be0c2b8a82bf966e7f55606c3e2192")
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!447, !787, !1445, !673}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!1447 = distinct !DISubprogram(name: "IntegralRotateImage", scope: !442, file: !442, line: 709, type: !1448, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!447, !787, !458, !673}
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1464, !1465, !1466, !1470, !1474, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1486, !1487, !1490, !1493, !1498, !1499, !1500, !1501, !1502, !1503, !1506, !1508, !1509, !1510, !1514, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1529, !1530, !1533}
!1451 = !DILocalVariable(name: "image", arg: 1, scope: !1447, file: !442, line: 709, type: !787)
!1452 = !DILocalVariable(name: "rotations", arg: 2, scope: !1447, file: !442, line: 709, type: !458)
!1453 = !DILocalVariable(name: "exception", arg: 3, scope: !1447, file: !442, line: 710, type: !673)
!1454 = !DILocalVariable(name: "image_view", scope: !1447, file: !442, line: 715, type: !683)
!1455 = !DILocalVariable(name: "rotate_view", scope: !1447, file: !442, line: 716, type: !683)
!1456 = !DILocalVariable(name: "rotate_image", scope: !1447, file: !442, line: 719, type: !447)
!1457 = !DILocalVariable(name: "status", scope: !1447, file: !442, line: 722, type: !446)
!1458 = !DILocalVariable(name: "progress", scope: !1447, file: !442, line: 725, type: !583)
!1459 = !DILocalVariable(name: "page", scope: !1447, file: !442, line: 728, type: !519)
!1460 = !DILocalVariable(name: "y", scope: !1447, file: !442, line: 731, type: !511)
!1461 = !DILocalVariable(name: "tile_height", scope: !1462, file: !442, line: 761, type: !458)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !442, line: 759, column: 5)
!1463 = distinct !DILexicalBlock(scope: !1447, file: !442, line: 757, column: 3)
!1464 = !DILocalVariable(name: "tile_width", scope: !1462, file: !442, line: 762, type: !458)
!1465 = !DILocalVariable(name: "tile_y", scope: !1462, file: !442, line: 765, type: !511)
!1466 = !DILocalVariable(name: "tile_x", scope: !1467, file: !442, line: 779, type: !511)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !442, line: 777, column: 7)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !442, line: 776, column: 7)
!1469 = distinct !DILexicalBlock(scope: !1462, file: !442, line: 776, column: 7)
!1470 = !DILocalVariable(name: "sync", scope: !1471, file: !442, line: 786, type: !446)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !442, line: 784, column: 9)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !442, line: 783, column: 9)
!1473 = distinct !DILexicalBlock(scope: !1467, file: !442, line: 783, column: 9)
!1474 = !DILocalVariable(name: "indexes", scope: !1471, file: !442, line: 789, type: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !770)
!1476 = !DILocalVariable(name: "p", scope: !1471, file: !442, line: 792, type: !886)
!1477 = !DILocalVariable(name: "rotate_indexes", scope: !1471, file: !442, line: 795, type: !712)
!1478 = !DILocalVariable(name: "q", scope: !1471, file: !442, line: 798, type: !717)
!1479 = !DILocalVariable(name: "y", scope: !1471, file: !442, line: 801, type: !511)
!1480 = !DILocalVariable(name: "height", scope: !1471, file: !442, line: 804, type: !458)
!1481 = !DILocalVariable(name: "width", scope: !1471, file: !442, line: 805, type: !458)
!1482 = !DILocalVariable(name: "tile_pixels", scope: !1483, file: !442, line: 824, type: !886)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !442, line: 822, column: 11)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !442, line: 821, column: 11)
!1485 = distinct !DILexicalBlock(scope: !1471, file: !442, line: 821, column: 11)
!1486 = !DILocalVariable(name: "x", scope: !1483, file: !442, line: 827, type: !511)
!1487 = !DILocalVariable(name: "tile_indexes", scope: !1488, file: !442, line: 850, type: !1475)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !442, line: 848, column: 15)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !442, line: 846, column: 17)
!1490 = !DILocalVariable(name: "proceed", scope: !1491, file: !442, line: 867, type: !446)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !442, line: 865, column: 11)
!1492 = distinct !DILexicalBlock(scope: !1467, file: !442, line: 864, column: 13)
!1493 = !DILocalVariable(name: "sync", scope: !1494, file: !442, line: 898, type: !446)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !442, line: 896, column: 7)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !442, line: 895, column: 7)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !442, line: 895, column: 7)
!1497 = distinct !DILexicalBlock(scope: !1463, file: !442, line: 887, column: 5)
!1498 = !DILocalVariable(name: "indexes", scope: !1494, file: !442, line: 901, type: !1475)
!1499 = !DILocalVariable(name: "p", scope: !1494, file: !442, line: 904, type: !886)
!1500 = !DILocalVariable(name: "rotate_indexes", scope: !1494, file: !442, line: 907, type: !712)
!1501 = !DILocalVariable(name: "q", scope: !1494, file: !442, line: 910, type: !717)
!1502 = !DILocalVariable(name: "x", scope: !1494, file: !442, line: 913, type: !511)
!1503 = !DILocalVariable(name: "proceed", scope: !1504, file: !442, line: 942, type: !446)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !442, line: 940, column: 11)
!1505 = distinct !DILexicalBlock(scope: !1494, file: !442, line: 939, column: 13)
!1506 = !DILocalVariable(name: "tile_height", scope: !1507, file: !442, line: 962, type: !458)
!1507 = distinct !DILexicalBlock(scope: !1463, file: !442, line: 960, column: 5)
!1508 = !DILocalVariable(name: "tile_width", scope: !1507, file: !442, line: 963, type: !458)
!1509 = !DILocalVariable(name: "tile_y", scope: !1507, file: !442, line: 966, type: !511)
!1510 = !DILocalVariable(name: "tile_x", scope: !1511, file: !442, line: 980, type: !511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !442, line: 978, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !442, line: 977, column: 7)
!1513 = distinct !DILexicalBlock(scope: !1507, file: !442, line: 977, column: 7)
!1514 = !DILocalVariable(name: "sync", scope: !1515, file: !442, line: 987, type: !446)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !442, line: 985, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !442, line: 984, column: 9)
!1517 = distinct !DILexicalBlock(scope: !1511, file: !442, line: 984, column: 9)
!1518 = !DILocalVariable(name: "indexes", scope: !1515, file: !442, line: 990, type: !1475)
!1519 = !DILocalVariable(name: "p", scope: !1515, file: !442, line: 993, type: !886)
!1520 = !DILocalVariable(name: "rotate_indexes", scope: !1515, file: !442, line: 996, type: !712)
!1521 = !DILocalVariable(name: "q", scope: !1515, file: !442, line: 999, type: !717)
!1522 = !DILocalVariable(name: "y", scope: !1515, file: !442, line: 1002, type: !511)
!1523 = !DILocalVariable(name: "height", scope: !1515, file: !442, line: 1005, type: !458)
!1524 = !DILocalVariable(name: "width", scope: !1515, file: !442, line: 1006, type: !458)
!1525 = !DILocalVariable(name: "tile_pixels", scope: !1526, file: !442, line: 1025, type: !886)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !442, line: 1023, column: 11)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !442, line: 1022, column: 11)
!1528 = distinct !DILexicalBlock(scope: !1515, file: !442, line: 1022, column: 11)
!1529 = !DILocalVariable(name: "x", scope: !1526, file: !442, line: 1028, type: !511)
!1530 = !DILocalVariable(name: "tile_indexes", scope: !1531, file: !442, line: 1050, type: !1475)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !442, line: 1048, column: 15)
!1532 = distinct !DILexicalBlock(scope: !1526, file: !442, line: 1046, column: 17)
!1533 = !DILocalVariable(name: "proceed", scope: !1534, file: !442, line: 1067, type: !446)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !442, line: 1065, column: 11)
!1535 = distinct !DILexicalBlock(scope: !1511, file: !442, line: 1064, column: 13)
!1536 = !DILocation(line: 0, scope: !1447)
!1537 = !DILocation(line: 737, column: 15, scope: !1447)
!1538 = !{i64 0, i64 8, !1106, i64 8, i64 8, !1106, i64 16, i64 8, !1106, i64 24, i64 8, !1106}
!1539 = !{i64 0, i64 8, !1106, i64 8, i64 8, !1106, i64 16, i64 8, !1106}
!1540 = !{i64 0, i64 8, !1106, i64 8, i64 8, !1106}
!1541 = !{i64 0, i64 8, !1106}
!1542 = !DILocation(line: 738, column: 12, scope: !1447)
!1543 = !DILocation(line: 739, column: 17, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1447, file: !442, line: 739, column: 7)
!1545 = !DILocation(line: 739, column: 7, scope: !1447)
!1546 = !DILocation(line: 740, column: 12, scope: !1544)
!1547 = !DILocation(line: 740, column: 5, scope: !1544)
!1548 = !DILocation(line: 741, column: 24, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1447, file: !442, line: 741, column: 7)
!1550 = !DILocation(line: 742, column: 42, scope: !1549)
!1551 = !DILocation(line: 742, column: 54, scope: !1549)
!1552 = !DILocation(line: 742, column: 5, scope: !1549)
!1553 = !DILocation(line: 745, column: 42, scope: !1549)
!1554 = !DILocation(line: 745, column: 57, scope: !1549)
!1555 = !DILocation(line: 0, scope: !1549)
!1556 = !DILocation(line: 747, column: 20, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1447, file: !442, line: 747, column: 7)
!1558 = !DILocation(line: 747, column: 7, scope: !1447)
!1559 = !DILocation(line: 754, column: 14, scope: !1447)
!1560 = !DILocation(line: 755, column: 15, scope: !1447)
!1561 = !DILocation(line: 756, column: 3, scope: !1447)
!1562 = !DILocation(line: 895, column: 38, scope: !1495)
!1563 = !DILocation(line: 895, column: 19, scope: !1495)
!1564 = !DILocation(line: 895, column: 7, scope: !1496)
!1565 = !DILocation(line: 760, column: 7, scope: !1462)
!1566 = !DILocation(line: 0, scope: !1462)
!1567 = !DILocation(line: 770, column: 7, scope: !1462)
!1568 = !DILocation(line: 771, column: 25, scope: !1462)
!1569 = !DILocation(line: 771, column: 17, scope: !1462)
!1570 = !DILocation(line: 776, column: 48, scope: !1468)
!1571 = !DILocation(line: 776, column: 29, scope: !1468)
!1572 = !DILocation(line: 776, column: 7, scope: !1469)
!1573 = !DILocation(line: 781, column: 20, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1467, file: !442, line: 781, column: 13)
!1575 = !DILocation(line: 781, column: 13, scope: !1467)
!1576 = !DILocation(line: 0, scope: !1467)
!1577 = !DILocation(line: 783, column: 50, scope: !1472)
!1578 = !DILocation(line: 783, column: 31, scope: !1472)
!1579 = !DILocation(line: 783, column: 9, scope: !1473)
!1580 = !DILocation(line: 807, column: 17, scope: !1471)
!1581 = !DILocation(line: 0, scope: !1471)
!1582 = !DILocation(line: 808, column: 22, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1471, file: !442, line: 808, column: 15)
!1584 = !DILocation(line: 808, column: 45, scope: !1583)
!1585 = !DILocation(line: 808, column: 15, scope: !1471)
!1586 = !DILocation(line: 809, column: 58, scope: !1583)
!1587 = !DILocation(line: 809, column: 39, scope: !1583)
!1588 = !DILocation(line: 809, column: 13, scope: !1583)
!1589 = !DILocation(line: 810, column: 18, scope: !1471)
!1590 = !DILocation(line: 811, column: 22, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1471, file: !442, line: 811, column: 15)
!1592 = !DILocation(line: 811, column: 65, scope: !1591)
!1593 = !DILocation(line: 811, column: 46, scope: !1591)
!1594 = !DILocation(line: 811, column: 15, scope: !1471)
!1595 = !DILocation(line: 813, column: 13, scope: !1471)
!1596 = !DILocation(line: 815, column: 17, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1471, file: !442, line: 815, column: 15)
!1598 = !DILocation(line: 815, column: 15, scope: !1471)
!1599 = !DILocation(line: 820, column: 19, scope: !1471)
!1600 = !DILocation(line: 821, column: 23, scope: !1484)
!1601 = !DILocation(line: 821, column: 11, scope: !1485)
!1602 = !DILocation(line: 829, column: 24, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1483, file: !442, line: 829, column: 17)
!1604 = !DILocation(line: 829, column: 17, scope: !1483)
!1605 = !DILocation(line: 832, column: 30, scope: !1483)
!1606 = !DILocation(line: 832, column: 37, scope: !1483)
!1607 = !DILocation(line: 832, column: 56, scope: !1483)
!1608 = !DILocation(line: 831, column: 15, scope: !1483)
!1609 = !DILocation(line: 834, column: 19, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1483, file: !442, line: 834, column: 17)
!1611 = !DILocation(line: 834, column: 17, scope: !1483)
!1612 = !DILocation(line: 0, scope: !1483)
!1613 = !DILocation(line: 840, column: 13, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1483, file: !442, line: 840, column: 13)
!1615 = !DILocation(line: 839, column: 43, scope: !1483)
!1616 = !DILocation(line: 845, column: 28, scope: !1483)
!1617 = !DILocation(line: 859, column: 18, scope: !1483)
!1618 = !DILocation(line: 860, column: 22, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1483, file: !442, line: 860, column: 17)
!1620 = !DILocation(line: 860, column: 17, scope: !1483)
!1621 = !DILocation(line: 862, column: 11, scope: !1484)
!1622 = !DILocation(line: 842, column: 17, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !442, line: 841, column: 13)
!1624 = distinct !DILexicalBlock(scope: !1614, file: !442, line: 840, column: 13)
!1625 = !DILocation(line: 842, column: 21, scope: !1623)
!1626 = !DILocation(line: 843, column: 26, scope: !1623)
!1627 = !DILocation(line: 840, column: 46, scope: !1624)
!1628 = !DILocation(line: 840, column: 25, scope: !1624)
!1629 = distinct !{!1629, !1613, !1630, !852, !853}
!1630 = !DILocation(line: 844, column: 13, scope: !1614)
!1631 = !DILocation(line: 821, column: 43, scope: !1484)
!1632 = distinct !{!1632, !1601, !1633, !852, !853}
!1633 = !DILocation(line: 862, column: 11, scope: !1485)
!1634 = !DILocation(line: 846, column: 51, scope: !1489)
!1635 = !DILocation(line: 852, column: 54, scope: !1488)
!1636 = !DILocation(line: 0, scope: !1488)
!1637 = !DILocation(line: 853, column: 17, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1488, file: !442, line: 853, column: 17)
!1639 = !DILocation(line: 855, column: 38, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !442, line: 854, column: 17)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !442, line: 853, column: 17)
!1642 = !DILocation(line: 855, column: 34, scope: !1640)
!1643 = !DILocation(line: 855, column: 36, scope: !1640)
!1644 = !DILocation(line: 856, column: 31, scope: !1640)
!1645 = !DILocation(line: 853, column: 50, scope: !1641)
!1646 = !DILocation(line: 853, column: 29, scope: !1641)
!1647 = distinct !{!1647, !1637, !1648, !852, !853}
!1648 = !DILocation(line: 857, column: 17, scope: !1638)
!1649 = !DILocation(line: 752, column: 9, scope: !1447)
!1650 = !DILocation(line: 783, column: 77, scope: !1472)
!1651 = !DILocation(line: 783, column: 65, scope: !1472)
!1652 = distinct !{!1652, !1579, !1653, !852, !853}
!1653 = !DILocation(line: 863, column: 9, scope: !1473)
!1654 = !DILocation(line: 864, column: 20, scope: !1492)
!1655 = !{!825, !829, i64 568}
!1656 = !DILocation(line: 864, column: 37, scope: !1492)
!1657 = !DILocation(line: 864, column: 13, scope: !1467)
!1658 = !DILocation(line: 872, column: 69, scope: !1491)
!1659 = !DILocation(line: 872, column: 67, scope: !1491)
!1660 = !DILocation(line: 873, column: 22, scope: !1491)
!1661 = !DILocalVariable(name: "image", arg: 1, scope: !1662, file: !1663, line: 27, type: !787)
!1662 = distinct !DISubprogram(name: "SetImageProgress", scope: !1663, file: !1663, line: 27, type: !1664, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1666)
!1663 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!446, !787, !580, !582, !585}
!1666 = !{!1661, !1667, !1668, !1669, !1670}
!1667 = !DILocalVariable(name: "tag", arg: 2, scope: !1662, file: !1663, line: 28, type: !580)
!1668 = !DILocalVariable(name: "offset", arg: 3, scope: !1662, file: !1663, line: 28, type: !582)
!1669 = !DILocalVariable(name: "extent", arg: 4, scope: !1662, file: !1663, line: 28, type: !585)
!1670 = !DILocalVariable(name: "message", scope: !1662, file: !1663, line: 31, type: !600)
!1671 = !DILocation(line: 0, scope: !1662, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 872, column: 21, scope: !1491)
!1673 = !DILocation(line: 30, column: 3, scope: !1662, inlinedAt: !1672)
!1674 = !DILocation(line: 31, column: 5, scope: !1662, inlinedAt: !1672)
!1675 = !DILocation(line: 35, column: 10, scope: !1662, inlinedAt: !1672)
!1676 = !DILocation(line: 36, column: 17, scope: !1662, inlinedAt: !1672)
!1677 = !DILocation(line: 36, column: 63, scope: !1662, inlinedAt: !1672)
!1678 = !{!825, !829, i64 576}
!1679 = !DILocation(line: 36, column: 10, scope: !1662, inlinedAt: !1672)
!1680 = !DILocation(line: 37, column: 1, scope: !1662, inlinedAt: !1672)
!1681 = !DILocation(line: 0, scope: !1491)
!1682 = !DILocation(line: 874, column: 25, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1491, file: !442, line: 874, column: 17)
!1684 = !DILocation(line: 874, column: 17, scope: !1491)
!1685 = !DILocation(line: 876, column: 11, scope: !1491)
!1686 = !DILocation(line: 776, column: 72, scope: !1468)
!1687 = !DILocation(line: 776, column: 60, scope: !1468)
!1688 = distinct !{!1688, !1572, !1689, !852, !853}
!1689 = !DILocation(line: 877, column: 7, scope: !1469)
!1690 = !DILocation(line: 0, scope: !1662, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 878, column: 14, scope: !1462)
!1692 = !DILocation(line: 30, column: 3, scope: !1662, inlinedAt: !1691)
!1693 = !DILocation(line: 31, column: 5, scope: !1662, inlinedAt: !1691)
!1694 = !DILocation(line: 33, column: 14, scope: !1695, inlinedAt: !1691)
!1695 = distinct !DILexicalBlock(scope: !1662, file: !1663, line: 33, column: 7)
!1696 = !DILocation(line: 33, column: 31, scope: !1695, inlinedAt: !1691)
!1697 = !DILocation(line: 33, column: 7, scope: !1662, inlinedAt: !1691)
!1698 = !DILocation(line: 879, column: 20, scope: !1462)
!1699 = !DILocation(line: 35, column: 70, scope: !1662, inlinedAt: !1691)
!1700 = !DILocation(line: 35, column: 10, scope: !1662, inlinedAt: !1691)
!1701 = !DILocation(line: 36, column: 17, scope: !1662, inlinedAt: !1691)
!1702 = !DILocation(line: 36, column: 63, scope: !1662, inlinedAt: !1691)
!1703 = !DILocation(line: 36, column: 10, scope: !1662, inlinedAt: !1691)
!1704 = !DILocation(line: 36, column: 3, scope: !1662, inlinedAt: !1691)
!1705 = !DILocation(line: 37, column: 1, scope: !1662, inlinedAt: !1691)
!1706 = !DILocation(line: 882, column: 22, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1462, file: !442, line: 882, column: 11)
!1708 = !DILocation(line: 882, column: 11, scope: !1462)
!1709 = !DILocation(line: 883, column: 52, scope: !1707)
!1710 = !DILocation(line: 883, column: 59, scope: !1707)
!1711 = !DILocation(line: 883, column: 9, scope: !1707)
!1712 = !DILocation(line: 885, column: 5, scope: !1463)
!1713 = !DILocation(line: 915, column: 20, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1494, file: !442, line: 915, column: 13)
!1715 = !DILocation(line: 915, column: 13, scope: !1494)
!1716 = !DILocation(line: 917, column: 59, scope: !1494)
!1717 = !DILocation(line: 917, column: 11, scope: !1494)
!1718 = !DILocation(line: 0, scope: !1494)
!1719 = !DILocation(line: 919, column: 73, scope: !1494)
!1720 = !DILocation(line: 919, column: 79, scope: !1494)
!1721 = !DILocation(line: 920, column: 21, scope: !1494)
!1722 = !DILocation(line: 919, column: 11, scope: !1494)
!1723 = !DILocation(line: 921, column: 16, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1494, file: !442, line: 921, column: 13)
!1725 = !DILocation(line: 921, column: 47, scope: !1724)
!1726 = !DILocation(line: 926, column: 17, scope: !1494)
!1727 = !DILocation(line: 927, column: 24, scope: !1494)
!1728 = !DILocation(line: 928, column: 19, scope: !1494)
!1729 = !DILocation(line: 929, column: 21, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !442, line: 929, column: 9)
!1731 = distinct !DILexicalBlock(scope: !1494, file: !442, line: 929, column: 9)
!1732 = !DILocation(line: 929, column: 9, scope: !1731)
!1733 = !DILocation(line: 928, column: 10, scope: !1494)
!1734 = !DILocation(line: 930, column: 12, scope: !1730)
!1735 = !DILocation(line: 930, column: 19, scope: !1730)
!1736 = !DILocation(line: 930, column: 17, scope: !1730)
!1737 = !DILocation(line: 929, column: 50, scope: !1730)
!1738 = !DILocation(line: 929, column: 40, scope: !1730)
!1739 = distinct !{!1739, !1732, !1740, !852, !853}
!1740 = !DILocation(line: 930, column: 21, scope: !1731)
!1741 = !DILocation(line: 931, column: 22, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1494, file: !442, line: 931, column: 13)
!1743 = !DILocation(line: 931, column: 47, scope: !1742)
!1744 = !DILocation(line: 933, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !442, line: 933, column: 11)
!1746 = !DILocation(line: 934, column: 13, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !442, line: 934, column: 13)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !442, line: 934, column: 13)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !442, line: 933, column: 11)
!1750 = !DILocation(line: 933, column: 52, scope: !1749)
!1751 = !DILocation(line: 933, column: 23, scope: !1749)
!1752 = distinct !{!1752, !1744, !1753, !852, !853}
!1753 = !DILocation(line: 934, column: 13, scope: !1745)
!1754 = !DILocation(line: 936, column: 14, scope: !1494)
!1755 = !DILocation(line: 937, column: 18, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1494, file: !442, line: 937, column: 13)
!1757 = !DILocation(line: 937, column: 13, scope: !1494)
!1758 = !DILocation(line: 939, column: 20, scope: !1505)
!1759 = !DILocation(line: 939, column: 37, scope: !1505)
!1760 = !DILocation(line: 939, column: 13, scope: !1494)
!1761 = !DILocation(line: 947, column: 67, scope: !1504)
!1762 = !DILocation(line: 948, column: 22, scope: !1504)
!1763 = !DILocation(line: 0, scope: !1662, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 947, column: 21, scope: !1504)
!1765 = !DILocation(line: 30, column: 3, scope: !1662, inlinedAt: !1764)
!1766 = !DILocation(line: 31, column: 5, scope: !1662, inlinedAt: !1764)
!1767 = !DILocation(line: 35, column: 10, scope: !1662, inlinedAt: !1764)
!1768 = !DILocation(line: 36, column: 17, scope: !1662, inlinedAt: !1764)
!1769 = !DILocation(line: 36, column: 63, scope: !1662, inlinedAt: !1764)
!1770 = !DILocation(line: 36, column: 10, scope: !1662, inlinedAt: !1764)
!1771 = !DILocation(line: 37, column: 1, scope: !1662, inlinedAt: !1764)
!1772 = !DILocation(line: 0, scope: !1504)
!1773 = !DILocation(line: 949, column: 25, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1504, file: !442, line: 949, column: 17)
!1775 = !DILocation(line: 949, column: 17, scope: !1504)
!1776 = !DILocation(line: 951, column: 11, scope: !1504)
!1777 = !DILocation(line: 895, column: 45, scope: !1495)
!1778 = distinct !{!1778, !1564, !1779, !852, !853}
!1779 = !DILocation(line: 952, column: 7, scope: !1496)
!1780 = !DILocation(line: 953, column: 22, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1497, file: !442, line: 953, column: 11)
!1782 = !DILocation(line: 953, column: 11, scope: !1497)
!1783 = !DILocation(line: 954, column: 52, scope: !1781)
!1784 = !DILocation(line: 954, column: 59, scope: !1781)
!1785 = !DILocation(line: 954, column: 9, scope: !1781)
!1786 = !DILocation(line: 955, column: 23, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1497, file: !442, line: 955, column: 11)
!1788 = !DILocation(line: 955, column: 11, scope: !1497)
!1789 = !DILocation(line: 956, column: 53, scope: !1787)
!1790 = !DILocation(line: 956, column: 57, scope: !1787)
!1791 = !DILocation(line: 956, column: 9, scope: !1787)
!1792 = !DILocation(line: 961, column: 7, scope: !1507)
!1793 = !DILocation(line: 0, scope: !1507)
!1794 = !DILocation(line: 971, column: 7, scope: !1507)
!1795 = !DILocation(line: 972, column: 25, scope: !1507)
!1796 = !DILocation(line: 972, column: 17, scope: !1507)
!1797 = !DILocation(line: 977, column: 48, scope: !1512)
!1798 = !DILocation(line: 977, column: 29, scope: !1512)
!1799 = !DILocation(line: 977, column: 7, scope: !1513)
!1800 = !DILocation(line: 982, column: 20, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1511, file: !442, line: 982, column: 13)
!1802 = !DILocation(line: 982, column: 13, scope: !1511)
!1803 = !DILocation(line: 0, scope: !1511)
!1804 = !DILocation(line: 984, column: 50, scope: !1516)
!1805 = !DILocation(line: 984, column: 31, scope: !1516)
!1806 = !DILocation(line: 984, column: 9, scope: !1517)
!1807 = !DILocation(line: 1008, column: 17, scope: !1515)
!1808 = !DILocation(line: 0, scope: !1515)
!1809 = !DILocation(line: 1009, column: 22, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1515, file: !442, line: 1009, column: 15)
!1811 = !DILocation(line: 1009, column: 45, scope: !1810)
!1812 = !DILocation(line: 1009, column: 15, scope: !1515)
!1813 = !DILocation(line: 1010, column: 58, scope: !1810)
!1814 = !DILocation(line: 1010, column: 39, scope: !1810)
!1815 = !DILocation(line: 1010, column: 13, scope: !1810)
!1816 = !DILocation(line: 1011, column: 18, scope: !1515)
!1817 = !DILocation(line: 1012, column: 22, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1515, file: !442, line: 1012, column: 15)
!1819 = !DILocation(line: 1012, column: 65, scope: !1818)
!1820 = !DILocation(line: 1012, column: 46, scope: !1818)
!1821 = !DILocation(line: 1012, column: 15, scope: !1515)
!1822 = !DILocation(line: 1014, column: 13, scope: !1515)
!1823 = !DILocation(line: 1016, column: 17, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1515, file: !442, line: 1016, column: 15)
!1825 = !DILocation(line: 1016, column: 15, scope: !1515)
!1826 = !DILocation(line: 1021, column: 19, scope: !1515)
!1827 = !DILocation(line: 1022, column: 23, scope: !1527)
!1828 = !DILocation(line: 1022, column: 11, scope: !1528)
!1829 = !DILocation(line: 1030, column: 24, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1526, file: !442, line: 1030, column: 17)
!1831 = !DILocation(line: 1030, column: 17, scope: !1526)
!1832 = !DILocation(line: 1033, column: 29, scope: !1526)
!1833 = !DILocation(line: 1032, column: 76, scope: !1526)
!1834 = !DILocation(line: 1033, column: 33, scope: !1526)
!1835 = !DILocation(line: 1032, column: 15, scope: !1526)
!1836 = !DILocation(line: 1034, column: 19, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1526, file: !442, line: 1034, column: 17)
!1838 = !DILocation(line: 1034, column: 17, scope: !1526)
!1839 = !DILocation(line: 0, scope: !1526)
!1840 = !DILocation(line: 1040, column: 13, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1526, file: !442, line: 1040, column: 13)
!1842 = !DILocation(line: 1039, column: 36, scope: !1526)
!1843 = !DILocation(line: 1045, column: 28, scope: !1526)
!1844 = !DILocation(line: 1059, column: 18, scope: !1526)
!1845 = !DILocation(line: 1060, column: 22, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1526, file: !442, line: 1060, column: 17)
!1847 = !DILocation(line: 1060, column: 17, scope: !1526)
!1848 = !DILocation(line: 1062, column: 11, scope: !1527)
!1849 = !DILocation(line: 1042, column: 17, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !442, line: 1041, column: 13)
!1851 = distinct !DILexicalBlock(scope: !1841, file: !442, line: 1040, column: 13)
!1852 = !DILocation(line: 1042, column: 21, scope: !1850)
!1853 = !DILocation(line: 1043, column: 26, scope: !1850)
!1854 = !DILocation(line: 1040, column: 46, scope: !1851)
!1855 = !DILocation(line: 1040, column: 25, scope: !1851)
!1856 = distinct !{!1856, !1840, !1857, !852, !853}
!1857 = !DILocation(line: 1044, column: 13, scope: !1841)
!1858 = !DILocation(line: 1022, column: 43, scope: !1527)
!1859 = distinct !{!1859, !1828, !1860, !852, !853}
!1860 = !DILocation(line: 1062, column: 11, scope: !1528)
!1861 = !DILocation(line: 1046, column: 51, scope: !1532)
!1862 = !DILocation(line: 1052, column: 47, scope: !1531)
!1863 = !DILocation(line: 0, scope: !1531)
!1864 = !DILocation(line: 1053, column: 17, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1531, file: !442, line: 1053, column: 17)
!1866 = !DILocation(line: 1055, column: 38, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !442, line: 1054, column: 17)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !442, line: 1053, column: 17)
!1869 = !DILocation(line: 1055, column: 34, scope: !1867)
!1870 = !DILocation(line: 1055, column: 36, scope: !1867)
!1871 = !DILocation(line: 1056, column: 31, scope: !1867)
!1872 = !DILocation(line: 1053, column: 50, scope: !1868)
!1873 = !DILocation(line: 1053, column: 29, scope: !1868)
!1874 = distinct !{!1874, !1864, !1875, !852, !853}
!1875 = !DILocation(line: 1057, column: 17, scope: !1865)
!1876 = !DILocation(line: 984, column: 77, scope: !1516)
!1877 = !DILocation(line: 984, column: 65, scope: !1516)
!1878 = distinct !{!1878, !1806, !1879, !852, !853}
!1879 = !DILocation(line: 1063, column: 9, scope: !1517)
!1880 = !DILocation(line: 1064, column: 20, scope: !1535)
!1881 = !DILocation(line: 1064, column: 37, scope: !1535)
!1882 = !DILocation(line: 1064, column: 13, scope: !1511)
!1883 = !DILocation(line: 1072, column: 69, scope: !1534)
!1884 = !DILocation(line: 1072, column: 67, scope: !1534)
!1885 = !DILocation(line: 1073, column: 22, scope: !1534)
!1886 = !DILocation(line: 0, scope: !1662, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 1072, column: 21, scope: !1534)
!1888 = !DILocation(line: 30, column: 3, scope: !1662, inlinedAt: !1887)
!1889 = !DILocation(line: 31, column: 5, scope: !1662, inlinedAt: !1887)
!1890 = !DILocation(line: 35, column: 10, scope: !1662, inlinedAt: !1887)
!1891 = !DILocation(line: 36, column: 17, scope: !1662, inlinedAt: !1887)
!1892 = !DILocation(line: 36, column: 63, scope: !1662, inlinedAt: !1887)
!1893 = !DILocation(line: 36, column: 10, scope: !1662, inlinedAt: !1887)
!1894 = !DILocation(line: 37, column: 1, scope: !1662, inlinedAt: !1887)
!1895 = !DILocation(line: 0, scope: !1534)
!1896 = !DILocation(line: 1074, column: 25, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1534, file: !442, line: 1074, column: 17)
!1898 = !DILocation(line: 1074, column: 17, scope: !1534)
!1899 = !DILocation(line: 1076, column: 11, scope: !1534)
!1900 = !DILocation(line: 977, column: 72, scope: !1512)
!1901 = !DILocation(line: 977, column: 60, scope: !1512)
!1902 = distinct !{!1902, !1799, !1903, !852, !853}
!1903 = !DILocation(line: 1077, column: 7, scope: !1513)
!1904 = !DILocation(line: 0, scope: !1662, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 1078, column: 14, scope: !1507)
!1906 = !DILocation(line: 30, column: 3, scope: !1662, inlinedAt: !1905)
!1907 = !DILocation(line: 31, column: 5, scope: !1662, inlinedAt: !1905)
!1908 = !DILocation(line: 33, column: 14, scope: !1695, inlinedAt: !1905)
!1909 = !DILocation(line: 33, column: 31, scope: !1695, inlinedAt: !1905)
!1910 = !DILocation(line: 33, column: 7, scope: !1662, inlinedAt: !1905)
!1911 = !DILocation(line: 1079, column: 20, scope: !1507)
!1912 = !DILocation(line: 35, column: 70, scope: !1662, inlinedAt: !1905)
!1913 = !DILocation(line: 35, column: 10, scope: !1662, inlinedAt: !1905)
!1914 = !DILocation(line: 36, column: 17, scope: !1662, inlinedAt: !1905)
!1915 = !DILocation(line: 36, column: 63, scope: !1662, inlinedAt: !1905)
!1916 = !DILocation(line: 36, column: 10, scope: !1662, inlinedAt: !1905)
!1917 = !DILocation(line: 36, column: 3, scope: !1662, inlinedAt: !1905)
!1918 = !DILocation(line: 37, column: 1, scope: !1662, inlinedAt: !1905)
!1919 = !DILocation(line: 1082, column: 23, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1507, file: !442, line: 1082, column: 11)
!1921 = !DILocation(line: 1082, column: 11, scope: !1507)
!1922 = !DILocation(line: 1083, column: 53, scope: !1920)
!1923 = !DILocation(line: 1083, column: 57, scope: !1920)
!1924 = !DILocation(line: 1083, column: 9, scope: !1920)
!1925 = !DILocation(line: 1085, column: 5, scope: !1463)
!1926 = !DILocation(line: 1089, column: 15, scope: !1447)
!1927 = !DILocation(line: 1090, column: 14, scope: !1447)
!1928 = !DILocation(line: 1091, column: 29, scope: !1447)
!1929 = !{!825, !826, i64 13184}
!1930 = !DILocation(line: 1091, column: 17, scope: !1447)
!1931 = !DILocation(line: 1091, column: 21, scope: !1447)
!1932 = !DILocation(line: 1092, column: 17, scope: !1447)
!1933 = !DILocation(line: 1092, column: 22, scope: !1447)
!1934 = !DILocation(line: 1093, column: 14, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1447, file: !442, line: 1093, column: 7)
!1936 = !DILocation(line: 1093, column: 7, scope: !1447)
!1937 = !DILocation(line: 1094, column: 18, scope: !1935)
!1938 = !DILocation(line: 1094, column: 5, scope: !1935)
!1939 = !DILocation(line: 1096, column: 1, scope: !1447)
!1940 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !394, file: !394, line: 55, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!683, !787, !673}
!1943 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !394, file: !394, line: 53, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1944 = !DISubprogram(name: "GetPixelCacheTileSize", scope: !1945, file: !1945, line: 268, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1945 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6b4e371270617573d29dc6ff902677c8")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !787, !767, !767}
!1948 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !394, file: !394, line: 69, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!768, !1951, !672, !672, !671, !671, !673}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!1953 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !394, file: !394, line: 66, type: !1954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!770, !1951}
!1956 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !394, file: !394, line: 101, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!470, !683, !672, !672, !671, !671, !673}
!1959 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !394, file: !394, line: 77, type: !1960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!713, !683}
!1962 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !394, file: !394, line: 89, type: !1963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!446, !683, !673}
!1965 = !DISubprogram(name: "DestroyCacheView", scope: !394, file: !394, line: 57, type: !1966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!683, !683}
!1968 = distinct !DISubprogram(name: "ShearImage", scope: !442, file: !442, line: 1579, type: !1969, scopeLine: 1581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!447, !787, !789, !789, !673}
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1986, !1987}
!1972 = !DILocalVariable(name: "image", arg: 1, scope: !1968, file: !442, line: 1579, type: !787)
!1973 = !DILocalVariable(name: "x_shear", arg: 2, scope: !1968, file: !442, line: 1579, type: !789)
!1974 = !DILocalVariable(name: "y_shear", arg: 3, scope: !1968, file: !442, line: 1580, type: !789)
!1975 = !DILocalVariable(name: "exception", arg: 4, scope: !1968, file: !442, line: 1580, type: !673)
!1976 = !DILocalVariable(name: "integral_image", scope: !1968, file: !442, line: 1583, type: !447)
!1977 = !DILocalVariable(name: "shear_image", scope: !1968, file: !442, line: 1584, type: !447)
!1978 = !DILocalVariable(name: "status", scope: !1968, file: !442, line: 1587, type: !446)
!1979 = !DILocalVariable(name: "shear", scope: !1968, file: !442, line: 1590, type: !1980)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !1981, line: 142, baseType: !1982)
!1981 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !1981, line: 137, size: 128, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1982, file: !1981, line: 140, baseType: !484, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1982, file: !1981, line: 141, baseType: !484, size: 64, offset: 64)
!1986 = !DILocalVariable(name: "border_info", scope: !1968, file: !442, line: 1593, type: !519)
!1987 = !DILocalVariable(name: "bounds", scope: !1968, file: !442, line: 1594, type: !519)
!1988 = !DILocation(line: 1594, column: 5, scope: !1968)
!1989 = !DILocation(line: 0, scope: !1968)
!1990 = !DILocation(line: 1582, column: 3, scope: !1968)
!1991 = !DILocation(line: 1592, column: 3, scope: !1968)
!1992 = !DILocation(line: 1593, column: 5, scope: !1968)
!1993 = !DILocation(line: 1598, column: 14, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1598, column: 7)
!1995 = !DILocation(line: 1598, column: 20, scope: !1994)
!1996 = !DILocation(line: 1598, column: 7, scope: !1968)
!1997 = !DILocation(line: 1599, column: 68, scope: !1994)
!1998 = !DILocation(line: 1599, column: 12, scope: !1994)
!1999 = !DILocation(line: 1599, column: 5, scope: !1994)
!2000 = !DILocation(line: 1602, column: 16, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1602, column: 7)
!2002 = !DILocation(line: 1602, column: 24, scope: !2001)
!2003 = !DILocation(line: 1602, column: 28, scope: !2001)
!2004 = !DILocation(line: 1602, column: 47, scope: !2001)
!2005 = !DILocation(line: 1602, column: 7, scope: !1968)
!2006 = !DILocation(line: 1603, column: 5, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2001, file: !442, line: 1603, column: 5)
!2008 = !DILocation(line: 1604, column: 16, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1604, column: 7)
!2010 = !DILocation(line: 1604, column: 24, scope: !2009)
!2011 = !DILocation(line: 1604, column: 28, scope: !2009)
!2012 = !DILocation(line: 1604, column: 47, scope: !2009)
!2013 = !DILocation(line: 1604, column: 7, scope: !1968)
!2014 = !DILocation(line: 1605, column: 5, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2009, file: !442, line: 1605, column: 5)
!2016 = !DILocation(line: 1609, column: 18, scope: !1968)
!2017 = !DILocation(line: 1610, column: 22, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1610, column: 7)
!2019 = !DILocation(line: 1610, column: 7, scope: !1968)
!2020 = !DILocation(line: 1611, column: 5, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !442, line: 1611, column: 5)
!2022 = !DILocation(line: 1612, column: 34, scope: !1968)
!2023 = !DILocation(line: 0, scope: !1150, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 1612, column: 17, scope: !1968)
!2025 = !DILocation(line: 56, column: 28, scope: !1150, inlinedAt: !2024)
!2026 = !DILocation(line: 56, column: 36, scope: !1150, inlinedAt: !2024)
!2027 = !DILocation(line: 1612, column: 13, scope: !1968)
!2028 = !DILocation(line: 1612, column: 12, scope: !1968)
!2029 = !DILocation(line: 1613, column: 32, scope: !1968)
!2030 = !DILocation(line: 0, scope: !1150, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 1613, column: 15, scope: !1968)
!2032 = !DILocation(line: 56, column: 28, scope: !1150, inlinedAt: !2031)
!2033 = !DILocation(line: 56, column: 36, scope: !1150, inlinedAt: !2031)
!2034 = !DILocation(line: 1613, column: 11, scope: !1968)
!2035 = !DILocation(line: 1614, column: 16, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1614, column: 7)
!2037 = !DILocation(line: 1614, column: 24, scope: !2036)
!2038 = !DILocation(line: 1616, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1616, column: 7)
!2040 = !DILocation(line: 1616, column: 56, scope: !2039)
!2041 = !DILocation(line: 1616, column: 7, scope: !1968)
!2042 = !DILocation(line: 1618, column: 51, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !442, line: 1617, column: 5)
!2044 = !DILocation(line: 1618, column: 7, scope: !2043)
!2045 = !DILocation(line: 1619, column: 22, scope: !2043)
!2046 = !DILocation(line: 1620, column: 7, scope: !2043)
!2047 = !DILocation(line: 1622, column: 23, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1622, column: 7)
!2049 = !{!825, !826, i64 32}
!2050 = !DILocation(line: 1622, column: 29, scope: !2048)
!2051 = !DILocation(line: 1622, column: 7, scope: !1968)
!2052 = !DILocation(line: 1623, column: 12, scope: !2048)
!2053 = !DILocation(line: 1623, column: 5, scope: !2048)
!2054 = !DILocation(line: 1627, column: 23, scope: !1968)
!2055 = !DILocation(line: 1627, column: 47, scope: !1968)
!2056 = !DILocation(line: 1627, column: 68, scope: !1968)
!2057 = !DILocation(line: 1627, column: 61, scope: !1968)
!2058 = !DILocation(line: 1627, column: 72, scope: !1968)
!2059 = !DILocation(line: 1627, column: 41, scope: !1968)
!2060 = !DILocation(line: 1627, column: 31, scope: !1968)
!2061 = !DILocation(line: 1627, column: 30, scope: !1968)
!2062 = !DILocation(line: 1628, column: 27, scope: !1968)
!2063 = !DILocation(line: 1628, column: 79, scope: !1968)
!2064 = !DILocation(line: 1629, column: 20, scope: !1968)
!2065 = !DILocation(line: 1628, column: 50, scope: !1968)
!2066 = !DILocation(line: 1629, column: 24, scope: !1968)
!2067 = !DILocation(line: 1628, column: 22, scope: !1968)
!2068 = !DILocation(line: 1628, column: 12, scope: !1968)
!2069 = !DILocation(line: 1630, column: 50, scope: !1968)
!2070 = !DILocation(line: 1630, column: 64, scope: !1968)
!2071 = !DILocation(line: 1630, column: 77, scope: !1968)
!2072 = !DILocation(line: 1631, column: 17, scope: !1968)
!2073 = !DILocation(line: 1630, column: 47, scope: !1968)
!2074 = !DILocation(line: 1631, column: 21, scope: !1968)
!2075 = !DILocation(line: 1630, column: 22, scope: !1968)
!2076 = !DILocation(line: 1630, column: 12, scope: !1968)
!2077 = !DILocation(line: 1635, column: 19, scope: !1968)
!2078 = !DILocation(line: 1635, column: 48, scope: !1968)
!2079 = !DILocation(line: 1636, column: 19, scope: !1968)
!2080 = !DILocation(line: 1636, column: 26, scope: !1968)
!2081 = !{!825, !826, i64 416}
!2082 = !DILocation(line: 1637, column: 20, scope: !1968)
!2083 = !DILocation(line: 1638, column: 15, scope: !1968)
!2084 = !DILocation(line: 1638, column: 21, scope: !1968)
!2085 = !DILocation(line: 1639, column: 15, scope: !1968)
!2086 = !DILocation(line: 1639, column: 14, scope: !1968)
!2087 = !{!829, !829, i64 0}
!2088 = !DILocation(line: 1640, column: 18, scope: !1968)
!2089 = !DILocation(line: 1641, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1641, column: 7)
!2091 = !DILocation(line: 1641, column: 7, scope: !1968)
!2092 = !DILocation(line: 1642, column: 5, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !442, line: 1642, column: 5)
!2094 = !DILocation(line: 1646, column: 20, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1646, column: 7)
!2096 = !DILocation(line: 1646, column: 26, scope: !2095)
!2097 = !DILocation(line: 1646, column: 7, scope: !1968)
!2098 = !DILocation(line: 1647, column: 12, scope: !2095)
!2099 = !DILocation(line: 1647, column: 5, scope: !2095)
!2100 = !DILocation(line: 1648, column: 34, scope: !1968)
!2101 = !DILocation(line: 1648, column: 49, scope: !1968)
!2102 = !DILocation(line: 1648, column: 64, scope: !1968)
!2103 = !DILocation(line: 1649, column: 29, scope: !1968)
!2104 = !DILocation(line: 1649, column: 33, scope: !1968)
!2105 = !DILocation(line: 1649, column: 46, scope: !1968)
!2106 = !DILocation(line: 1648, column: 10, scope: !1968)
!2107 = !DILocation(line: 1650, column: 14, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1650, column: 7)
!2109 = !DILocation(line: 1650, column: 7, scope: !1968)
!2110 = !DILocation(line: 1652, column: 19, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !442, line: 1651, column: 5)
!2112 = !DILocation(line: 1652, column: 18, scope: !2111)
!2113 = !DILocation(line: 1653, column: 7, scope: !2111)
!2114 = !DILocation(line: 1655, column: 34, scope: !1968)
!2115 = !DILocation(line: 1655, column: 62, scope: !1968)
!2116 = !DILocation(line: 1656, column: 19, scope: !1968)
!2117 = !DILocation(line: 1656, column: 26, scope: !1968)
!2118 = !DILocation(line: 1656, column: 40, scope: !1968)
!2119 = !DILocation(line: 1655, column: 10, scope: !1968)
!2120 = !DILocation(line: 1657, column: 14, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1657, column: 7)
!2122 = !DILocation(line: 1657, column: 7, scope: !1968)
!2123 = !DILocation(line: 1659, column: 19, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2121, file: !442, line: 1658, column: 5)
!2125 = !DILocation(line: 1659, column: 18, scope: !2124)
!2126 = !DILocation(line: 1660, column: 7, scope: !2124)
!2127 = !DILocation(line: 1663, column: 12, scope: !1968)
!2128 = !DILocation(line: 1662, column: 54, scope: !1968)
!2129 = !DILocation(line: 1663, column: 44, scope: !1968)
!2130 = !DILocation(line: 1663, column: 20, scope: !1968)
!2131 = !DILocation(line: 1662, column: 10, scope: !1968)
!2132 = !DILocation(line: 1664, column: 31, scope: !1968)
!2133 = !DILocation(line: 1664, column: 3, scope: !1968)
!2134 = !DILocation(line: 1664, column: 16, scope: !1968)
!2135 = !DILocation(line: 1664, column: 23, scope: !1968)
!2136 = !DILocation(line: 1665, column: 16, scope: !1968)
!2137 = !DILocation(line: 1667, column: 14, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1968, file: !442, line: 1667, column: 7)
!2139 = !DILocation(line: 1666, column: 27, scope: !1968)
!2140 = !DILocation(line: 1667, column: 7, scope: !1968)
!2141 = !DILocation(line: 1668, column: 17, scope: !2138)
!2142 = !DILocation(line: 1668, column: 16, scope: !2138)
!2143 = !DILocation(line: 1668, column: 5, scope: !2138)
!2144 = !DILocation(line: 1670, column: 1, scope: !1968)
!2145 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!446, !447, !2148}
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!2149 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !2150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !673, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!2154 = !DISubprogram(name: "SetImageAlphaChannel", scope: !2155, file: !2155, line: 35, type: !2156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!2155 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!446, !447, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !73, line: 45, baseType: !426)
!2160 = !DISubprogram(name: "BorderImage", scope: !2161, file: !2161, line: 39, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!2161 = !DIFile(filename: "apps/538.imagick_r/src/magick/decorate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "93180cd636c18c61cc22d09586313d94")
!2162 = !DILocation(line: 0, scope: !443)
!2163 = !DILocation(line: 1155, column: 3, scope: !443)
!2164 = !DILocation(line: 1156, column: 5, scope: !443)
!2165 = !DILocation(line: 1163, column: 14, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !443, file: !442, line: 1163, column: 7)
!2167 = !DILocation(line: 1163, column: 20, scope: !2166)
!2168 = !DILocation(line: 1163, column: 7, scope: !443)
!2169 = !DILocation(line: 1164, column: 68, scope: !2166)
!2170 = !DILocation(line: 1164, column: 12, scope: !2166)
!2171 = !DILocation(line: 1164, column: 5, scope: !2166)
!2172 = !DILocation(line: 1165, column: 3, scope: !443)
!2173 = !DILocation(line: 1166, column: 38, scope: !443)
!2174 = !DILocation(line: 1166, column: 3, scope: !443)
!2175 = !DILocalVariable(name: "image", arg: 1, scope: !2176, file: !2177, line: 92, type: !787)
!2176 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !2177, file: !2177, line: 92, type: !2178, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2181)
!2177 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !787, !768, !770, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!2181 = !{!2175, !2182, !2183, !2184}
!2182 = !DILocalVariable(name: "color", arg: 2, scope: !2176, file: !2177, line: 93, type: !768)
!2183 = !DILocalVariable(name: "index", arg: 3, scope: !2176, file: !2177, line: 93, type: !770)
!2184 = !DILocalVariable(name: "pixel", arg: 4, scope: !2176, file: !2177, line: 93, type: !2180)
!2185 = !DILocation(line: 0, scope: !2176, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 1166, column: 3, scope: !443)
!2187 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !2186)
!2188 = !DILocation(line: 95, column: 14, scope: !2176, inlinedAt: !2186)
!2189 = !DILocation(line: 95, column: 10, scope: !2176, inlinedAt: !2186)
!2190 = !DILocation(line: 95, column: 13, scope: !2176, inlinedAt: !2186)
!2191 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !2186)
!2192 = !DILocation(line: 96, column: 16, scope: !2176, inlinedAt: !2186)
!2193 = !DILocation(line: 96, column: 10, scope: !2176, inlinedAt: !2186)
!2194 = !DILocation(line: 96, column: 15, scope: !2176, inlinedAt: !2186)
!2195 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !2186)
!2196 = !DILocation(line: 97, column: 15, scope: !2176, inlinedAt: !2186)
!2197 = !DILocation(line: 97, column: 10, scope: !2176, inlinedAt: !2186)
!2198 = !DILocation(line: 97, column: 14, scope: !2176, inlinedAt: !2186)
!2199 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !2186)
!2200 = !DILocation(line: 98, column: 18, scope: !2176, inlinedAt: !2186)
!2201 = !DILocation(line: 98, column: 10, scope: !2176, inlinedAt: !2186)
!2202 = !DILocation(line: 98, column: 17, scope: !2176, inlinedAt: !2186)
!2203 = !DILocation(line: 1168, column: 14, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !443, file: !442, line: 1168, column: 7)
!2205 = !{!825, !826, i64 4}
!2206 = !DILocation(line: 1168, column: 25, scope: !2204)
!2207 = !DILocation(line: 1168, column: 7, scope: !443)
!2208 = !DILocalVariable(name: "pixel", arg: 1, scope: !2209, file: !2210, line: 30, type: !2180)
!2209 = distinct !DISubprogram(name: "ConvertRGBToCMYK", scope: !2210, file: !2210, line: 30, type: !2211, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2213)
!2210 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !2180}
!2213 = !{!2208, !2214, !2215, !2216, !2217, !2218, !2219, !2220}
!2214 = !DILocalVariable(name: "black", scope: !2209, file: !2210, line: 33, type: !669)
!2215 = !DILocalVariable(name: "blue", scope: !2209, file: !2210, line: 34, type: !669)
!2216 = !DILocalVariable(name: "cyan", scope: !2209, file: !2210, line: 35, type: !669)
!2217 = !DILocalVariable(name: "green", scope: !2209, file: !2210, line: 36, type: !669)
!2218 = !DILocalVariable(name: "magenta", scope: !2209, file: !2210, line: 37, type: !669)
!2219 = !DILocalVariable(name: "red", scope: !2209, file: !2210, line: 38, type: !669)
!2220 = !DILocalVariable(name: "yellow", scope: !2209, file: !2210, line: 39, type: !669)
!2221 = !DILocation(line: 0, scope: !2209, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 1169, column: 5, scope: !2204)
!2223 = !DILocation(line: 41, column: 14, scope: !2224, inlinedAt: !2222)
!2224 = distinct !DILexicalBlock(scope: !2209, file: !2210, line: 41, column: 7)
!2225 = !{!1252, !826, i64 4}
!2226 = !DILocation(line: 41, column: 25, scope: !2224, inlinedAt: !2222)
!2227 = !DILocation(line: 41, column: 7, scope: !2209, inlinedAt: !2222)
!2228 = !DILocation(line: 43, column: 24, scope: !2229, inlinedAt: !2222)
!2229 = distinct !DILexicalBlock(scope: !2224, file: !2210, line: 42, column: 5)
!2230 = !DILocation(line: 43, column: 23, scope: !2229, inlinedAt: !2222)
!2231 = !DILocation(line: 43, column: 11, scope: !2229, inlinedAt: !2222)
!2232 = !DILocation(line: 44, column: 26, scope: !2229, inlinedAt: !2222)
!2233 = !DILocation(line: 44, column: 25, scope: !2229, inlinedAt: !2222)
!2234 = !DILocation(line: 44, column: 13, scope: !2229, inlinedAt: !2222)
!2235 = !DILocation(line: 45, column: 25, scope: !2229, inlinedAt: !2222)
!2236 = !DILocation(line: 45, column: 24, scope: !2229, inlinedAt: !2222)
!2237 = !DILocation(line: 45, column: 12, scope: !2229, inlinedAt: !2222)
!2238 = !DILocation(line: 46, column: 5, scope: !2229, inlinedAt: !2222)
!2239 = !DILocation(line: 49, column: 11, scope: !2240, inlinedAt: !2222)
!2240 = distinct !DILexicalBlock(scope: !2224, file: !2210, line: 48, column: 5)
!2241 = !DILocation(line: 50, column: 37, scope: !2240, inlinedAt: !2222)
!2242 = !DILocation(line: 50, column: 13, scope: !2240, inlinedAt: !2222)
!2243 = !DILocation(line: 51, column: 36, scope: !2240, inlinedAt: !2222)
!2244 = !DILocation(line: 51, column: 12, scope: !2240, inlinedAt: !2222)
!2245 = !DILocation(line: 0, scope: !2224, inlinedAt: !2222)
!2246 = !DILocation(line: 53, column: 8, scope: !2247, inlinedAt: !2222)
!2247 = distinct !DILexicalBlock(scope: !2209, file: !2210, line: 53, column: 7)
!2248 = !DILocation(line: 53, column: 18, scope: !2247, inlinedAt: !2222)
!2249 = !DILocation(line: 53, column: 35, scope: !2247, inlinedAt: !2222)
!2250 = !DILocation(line: 53, column: 39, scope: !2247, inlinedAt: !2222)
!2251 = !DILocation(line: 53, column: 51, scope: !2247, inlinedAt: !2222)
!2252 = !DILocation(line: 53, column: 68, scope: !2247, inlinedAt: !2222)
!2253 = !DILocation(line: 54, column: 8, scope: !2247, inlinedAt: !2222)
!2254 = !DILocation(line: 54, column: 19, scope: !2247, inlinedAt: !2222)
!2255 = !DILocation(line: 53, column: 7, scope: !2209, inlinedAt: !2222)
!2256 = !DILocation(line: 59, column: 8, scope: !2209, inlinedAt: !2222)
!2257 = !DILocation(line: 60, column: 11, scope: !2209, inlinedAt: !2222)
!2258 = !DILocation(line: 61, column: 10, scope: !2209, inlinedAt: !2222)
!2259 = !DILocation(line: 63, column: 15, scope: !2260, inlinedAt: !2222)
!2260 = distinct !DILexicalBlock(scope: !2209, file: !2210, line: 63, column: 7)
!2261 = !DILocation(line: 63, column: 7, scope: !2209, inlinedAt: !2222)
!2262 = !DILocation(line: 64, column: 5, scope: !2260, inlinedAt: !2222)
!2263 = !DILocation(line: 65, column: 14, scope: !2264, inlinedAt: !2222)
!2264 = distinct !DILexicalBlock(scope: !2209, file: !2210, line: 65, column: 7)
!2265 = !DILocation(line: 65, column: 7, scope: !2209, inlinedAt: !2222)
!2266 = !DILocation(line: 66, column: 5, scope: !2264, inlinedAt: !2222)
!2267 = !DILocation(line: 67, column: 31, scope: !2209, inlinedAt: !2222)
!2268 = !DILocation(line: 67, column: 26, scope: !2209, inlinedAt: !2222)
!2269 = !DILocation(line: 67, column: 44, scope: !2209, inlinedAt: !2222)
!2270 = !DILocation(line: 67, column: 43, scope: !2209, inlinedAt: !2222)
!2271 = !DILocation(line: 67, column: 38, scope: !2209, inlinedAt: !2222)
!2272 = !DILocation(line: 67, column: 8, scope: !2209, inlinedAt: !2222)
!2273 = !DILocation(line: 68, column: 37, scope: !2209, inlinedAt: !2222)
!2274 = !DILocation(line: 68, column: 29, scope: !2209, inlinedAt: !2222)
!2275 = !DILocation(line: 68, column: 44, scope: !2209, inlinedAt: !2222)
!2276 = !DILocation(line: 68, column: 11, scope: !2209, inlinedAt: !2222)
!2277 = !DILocation(line: 69, column: 35, scope: !2209, inlinedAt: !2222)
!2278 = !DILocation(line: 69, column: 28, scope: !2209, inlinedAt: !2222)
!2279 = !DILocation(line: 69, column: 42, scope: !2209, inlinedAt: !2222)
!2280 = !DILocation(line: 69, column: 10, scope: !2209, inlinedAt: !2222)
!2281 = !DILocation(line: 70, column: 20, scope: !2209, inlinedAt: !2222)
!2282 = !DILocation(line: 71, column: 26, scope: !2209, inlinedAt: !2222)
!2283 = !DILocation(line: 71, column: 13, scope: !2209, inlinedAt: !2222)
!2284 = !DILocation(line: 72, column: 28, scope: !2209, inlinedAt: !2222)
!2285 = !DILocation(line: 72, column: 15, scope: !2209, inlinedAt: !2222)
!2286 = !DILocation(line: 73, column: 27, scope: !2209, inlinedAt: !2222)
!2287 = !DILocation(line: 73, column: 14, scope: !2209, inlinedAt: !2222)
!2288 = !DILocation(line: 74, column: 28, scope: !2209, inlinedAt: !2222)
!2289 = !DILocation(line: 75, column: 1, scope: !2209, inlinedAt: !2222)
!2290 = !{!1252, !1253, i64 48}
!2291 = !DILocation(line: 1169, column: 5, scope: !2204)
!2292 = !DILocation(line: 1175, column: 14, scope: !443)
!2293 = !DILocation(line: 1180, column: 15, scope: !705)
!2294 = !DILocation(line: 1180, column: 3, scope: !706)
!2295 = !DILocation(line: 1182, column: 5, scope: !704)
!2296 = !DILocation(line: 1184, column: 7, scope: !704)
!2297 = !DILocation(line: 1185, column: 7, scope: !704)
!2298 = !DILocation(line: 1208, column: 16, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !704, file: !442, line: 1208, column: 9)
!2300 = !DILocation(line: 1208, column: 9, scope: !704)
!2301 = !DILocation(line: 1210, column: 56, scope: !704)
!2302 = !DILocation(line: 1210, column: 66, scope: !704)
!2303 = !DILocation(line: 1210, column: 7, scope: !704)
!2304 = !DILocation(line: 0, scope: !704)
!2305 = !DILocation(line: 1212, column: 11, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !704, file: !442, line: 1212, column: 9)
!2307 = !DILocation(line: 1212, column: 9, scope: !704)
!2308 = !DILocation(line: 1217, column: 13, scope: !704)
!2309 = !DILocation(line: 1218, column: 6, scope: !704)
!2310 = !DILocation(line: 1219, column: 12, scope: !704)
!2311 = !DILocation(line: 1220, column: 44, scope: !704)
!2312 = !DILocation(line: 1220, column: 45, scope: !704)
!2313 = !DILocation(line: 1220, column: 26, scope: !704)
!2314 = !DILocation(line: 1220, column: 25, scope: !704)
!2315 = !DILocation(line: 1221, column: 22, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !704, file: !442, line: 1221, column: 9)
!2317 = !DILocation(line: 1221, column: 9, scope: !704)
!2318 = !DILocation(line: 1223, column: 22, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !704, file: !442, line: 1223, column: 9)
!2320 = !DILocation(line: 1223, column: 9, scope: !704)
!2321 = !DILocation(line: 1227, column: 21, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !442, line: 1226, column: 7)
!2323 = !DILocation(line: 1230, column: 20, scope: !704)
!2324 = !DILocation(line: 1230, column: 10, scope: !704)
!2325 = !DILocation(line: 1231, column: 41, scope: !704)
!2326 = !DILocation(line: 1231, column: 40, scope: !704)
!2327 = !DILocation(line: 1232, column: 9, scope: !704)
!2328 = !DILocation(line: 1233, column: 11, scope: !704)
!2329 = !{i64 0, i64 4, !2330, i64 4, i64 4, !2330, i64 8, i64 4, !2330, i64 12, i64 4, !2330, i64 16, i64 4, !2330}
!2330 = !{!1253, !1253, i64 0}
!2331 = !{i64 0, i64 4, !2330, i64 4, i64 4, !2330, i64 8, i64 4, !2330, i64 12, i64 4, !2330}
!2332 = !{i64 0, i64 4, !2330, i64 4, i64 4, !2330, i64 8, i64 4, !2330}
!2333 = !{i64 0, i64 4, !2330, i64 4, i64 4, !2330}
!2334 = !{i64 0, i64 4, !2330}
!2335 = !DILocation(line: 1234, column: 5, scope: !704)
!2336 = !DILocation(line: 1235, column: 5, scope: !704)
!2337 = !DILocation(line: 1236, column: 5, scope: !704)
!2338 = !DILocation(line: 1243, column: 18, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !442, line: 1243, column: 13)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !442, line: 1239, column: 7)
!2341 = distinct !DILexicalBlock(scope: !704, file: !442, line: 1237, column: 5)
!2342 = !DILocation(line: 1243, column: 13, scope: !2340)
!2343 = !DILocation(line: 1245, column: 12, scope: !2340)
!2344 = !DILocation(line: 1246, column: 30, scope: !2340)
!2345 = !DILocation(line: 1247, column: 9, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !442, line: 1247, column: 9)
!2347 = !DILocation(line: 1249, column: 24, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !442, line: 1249, column: 15)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !442, line: 1248, column: 9)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !442, line: 1247, column: 9)
!2351 = !DILocation(line: 1249, column: 28, scope: !2348)
!2352 = !DILocation(line: 1249, column: 15, scope: !2349)
!2353 = !DILocation(line: 1251, column: 42, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2348, file: !442, line: 1250, column: 13)
!2355 = !DILocation(line: 1251, column: 46, scope: !2354)
!2356 = !DILocation(line: 1251, column: 15, scope: !2354)
!2357 = !DILocation(line: 0, scope: !2176, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 1251, column: 15, scope: !2354)
!2359 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !2358)
!2360 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !2358)
!2361 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !2358)
!2362 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !2358)
!2363 = !DILocation(line: 99, column: 26, scope: !2364, inlinedAt: !2358)
!2364 = distinct !DILexicalBlock(scope: !2176, file: !2177, line: 99, column: 7)
!2365 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !2358)
!2366 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !2358)
!2367 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !2358)
!2368 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !2358)
!2369 = !DILocation(line: 1256, column: 11, scope: !2349)
!2370 = !DILocation(line: 0, scope: !2176, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 1256, column: 11, scope: !2349)
!2372 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !2371)
!2373 = !DILocation(line: 95, column: 14, scope: !2176, inlinedAt: !2371)
!2374 = !DILocation(line: 95, column: 13, scope: !2176, inlinedAt: !2371)
!2375 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !2371)
!2376 = !DILocation(line: 96, column: 16, scope: !2176, inlinedAt: !2371)
!2377 = !DILocation(line: 96, column: 15, scope: !2176, inlinedAt: !2371)
!2378 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !2371)
!2379 = !DILocation(line: 97, column: 15, scope: !2176, inlinedAt: !2371)
!2380 = !DILocation(line: 97, column: 14, scope: !2176, inlinedAt: !2371)
!2381 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !2371)
!2382 = !DILocation(line: 98, column: 18, scope: !2176, inlinedAt: !2371)
!2383 = !DILocation(line: 98, column: 17, scope: !2176, inlinedAt: !2371)
!2384 = !DILocation(line: 99, column: 26, scope: !2364, inlinedAt: !2371)
!2385 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !2371)
!2386 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !2371)
!2387 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !2371)
!2388 = !DILocation(line: 101, column: 17, scope: !2364, inlinedAt: !2371)
!2389 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !2371)
!2390 = !DILocalVariable(name: "p", arg: 1, scope: !2391, file: !2392, line: 155, type: !2395)
!2391 = distinct !DISubprogram(name: "MagickPixelCompositeAreaBlend", scope: !2392, file: !2392, line: 155, type: !2393, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2397)
!2392 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d355bbd47b32670d0509e796a91effce")
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2395, !668, !2395, !668, !668, !2180}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!2397 = !{!2390, !2398, !2399, !2400, !2401, !2402}
!2398 = !DILocalVariable(name: "alpha", arg: 2, scope: !2391, file: !2392, line: 156, type: !668)
!2399 = !DILocalVariable(name: "q", arg: 3, scope: !2391, file: !2392, line: 156, type: !2395)
!2400 = !DILocalVariable(name: "beta", arg: 4, scope: !2391, file: !2392, line: 157, type: !668)
!2401 = !DILocalVariable(name: "area", arg: 5, scope: !2391, file: !2392, line: 157, type: !668)
!2402 = !DILocalVariable(name: "composite", arg: 6, scope: !2391, file: !2392, line: 158, type: !2180)
!2403 = !DILocation(line: 0, scope: !2391, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 1257, column: 11, scope: !2349)
!2405 = !DILocation(line: 161, column: 18, scope: !2391, inlinedAt: !2404)
!2406 = !DILocation(line: 161, column: 5, scope: !2391, inlinedAt: !2404)
!2407 = !DILocation(line: 160, column: 59, scope: !2391, inlinedAt: !2404)
!2408 = !DILocation(line: 160, column: 30, scope: !2391, inlinedAt: !2404)
!2409 = !DILocation(line: 161, column: 77, scope: !2391, inlinedAt: !2404)
!2410 = !DILocation(line: 161, column: 58, scope: !2391, inlinedAt: !2404)
!2411 = !DILocalVariable(name: "p", arg: 1, scope: !2412, file: !2392, line: 114, type: !2395)
!2412 = distinct !DISubprogram(name: "MagickPixelCompositePlus", scope: !2392, file: !2392, line: 114, type: !2413, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !2395, !668, !2395, !668, !2180}
!2415 = !{!2411, !2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2416 = !DILocalVariable(name: "alpha", arg: 2, scope: !2412, file: !2392, line: 115, type: !668)
!2417 = !DILocalVariable(name: "q", arg: 3, scope: !2412, file: !2392, line: 115, type: !2395)
!2418 = !DILocalVariable(name: "beta", arg: 4, scope: !2412, file: !2392, line: 116, type: !668)
!2419 = !DILocalVariable(name: "composite", arg: 5, scope: !2412, file: !2392, line: 116, type: !2180)
!2420 = !DILocalVariable(name: "gamma", scope: !2412, file: !2392, line: 119, type: !484)
!2421 = !DILocalVariable(name: "Da", scope: !2412, file: !2392, line: 122, type: !669)
!2422 = !DILocalVariable(name: "Sa", scope: !2412, file: !2392, line: 123, type: !669)
!2423 = !DILocation(line: 0, scope: !2412, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 160, column: 3, scope: !2391, inlinedAt: !2404)
!2425 = !DILocation(line: 128, column: 23, scope: !2412, inlinedAt: !2424)
!2426 = !DILocation(line: 128, column: 9, scope: !2412, inlinedAt: !2424)
!2427 = !DILocation(line: 128, column: 6, scope: !2412, inlinedAt: !2424)
!2428 = !DILocation(line: 129, column: 23, scope: !2412, inlinedAt: !2424)
!2429 = !DILocation(line: 129, column: 9, scope: !2412, inlinedAt: !2424)
!2430 = !DILocation(line: 129, column: 6, scope: !2412, inlinedAt: !2424)
!2431 = !DILocation(line: 130, column: 24, scope: !2412, inlinedAt: !2424)
!2432 = !DILocalVariable(name: "value", arg: 1, scope: !2433, file: !2392, line: 33, type: !668)
!2433 = distinct !DISubprogram(name: "RoundToUnity", scope: !2392, file: !2392, line: 33, type: !1121, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2434)
!2434 = !{!2432}
!2435 = !DILocation(line: 0, scope: !2433, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 130, column: 9, scope: !2412, inlinedAt: !2424)
!2437 = !DILocation(line: 35, column: 16, scope: !2433, inlinedAt: !2436)
!2438 = !DILocation(line: 35, column: 10, scope: !2433, inlinedAt: !2436)
!2439 = !DILocation(line: 35, column: 37, scope: !2433, inlinedAt: !2436)
!2440 = !DILocation(line: 35, column: 30, scope: !2433, inlinedAt: !2436)
!2441 = !DILocation(line: 131, column: 56, scope: !2412, inlinedAt: !2424)
!2442 = !DILocation(line: 131, column: 51, scope: !2412, inlinedAt: !2424)
!2443 = !DILocation(line: 131, column: 22, scope: !2412, inlinedAt: !2424)
!2444 = !DILocation(line: 131, column: 21, scope: !2412, inlinedAt: !2424)
!2445 = !DILocalVariable(name: "x", arg: 1, scope: !2446, file: !2177, line: 78, type: !789)
!2446 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !2177, file: !2177, line: 78, type: !1151, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2447)
!2447 = !{!2445, !2448}
!2448 = !DILocalVariable(name: "sign", scope: !2446, file: !2177, line: 81, type: !484)
!2449 = !DILocation(line: 0, scope: !2446, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 132, column: 9, scope: !2412, inlinedAt: !2424)
!2451 = !DILocation(line: 86, column: 10, scope: !2446, inlinedAt: !2450)
!2452 = !DILocation(line: 86, column: 8, scope: !2446, inlinedAt: !2450)
!2453 = !DILocation(line: 87, column: 12, scope: !2454, inlinedAt: !2450)
!2454 = distinct !DILexicalBlock(scope: !2446, file: !2177, line: 87, column: 7)
!2455 = !DILocation(line: 87, column: 16, scope: !2454, inlinedAt: !2450)
!2456 = !DILocation(line: 87, column: 7, scope: !2446, inlinedAt: !2450)
!2457 = !DILocation(line: 88, column: 15, scope: !2454, inlinedAt: !2450)
!2458 = !DILocation(line: 88, column: 5, scope: !2454, inlinedAt: !2450)
!2459 = !DILocation(line: 89, column: 14, scope: !2446, inlinedAt: !2450)
!2460 = !DILocation(line: 89, column: 3, scope: !2446, inlinedAt: !2450)
!2461 = !DILocation(line: 133, column: 37, scope: !2412, inlinedAt: !2424)
!2462 = !DILocation(line: 133, column: 34, scope: !2412, inlinedAt: !2424)
!2463 = !DILocation(line: 133, column: 24, scope: !2412, inlinedAt: !2424)
!2464 = !DILocation(line: 133, column: 23, scope: !2412, inlinedAt: !2424)
!2465 = !DILocation(line: 133, column: 18, scope: !2412, inlinedAt: !2424)
!2466 = !DILocation(line: 133, column: 17, scope: !2412, inlinedAt: !2424)
!2467 = !DILocation(line: 134, column: 41, scope: !2412, inlinedAt: !2424)
!2468 = !DILocation(line: 134, column: 38, scope: !2412, inlinedAt: !2424)
!2469 = !DILocation(line: 134, column: 26, scope: !2412, inlinedAt: !2424)
!2470 = !DILocation(line: 134, column: 25, scope: !2412, inlinedAt: !2424)
!2471 = !DILocation(line: 134, column: 20, scope: !2412, inlinedAt: !2424)
!2472 = !DILocation(line: 134, column: 19, scope: !2412, inlinedAt: !2424)
!2473 = !DILocation(line: 135, column: 39, scope: !2412, inlinedAt: !2424)
!2474 = !DILocation(line: 135, column: 36, scope: !2412, inlinedAt: !2424)
!2475 = !DILocation(line: 135, column: 25, scope: !2412, inlinedAt: !2424)
!2476 = !DILocation(line: 135, column: 24, scope: !2412, inlinedAt: !2424)
!2477 = !DILocation(line: 135, column: 19, scope: !2412, inlinedAt: !2424)
!2478 = !DILocation(line: 135, column: 18, scope: !2412, inlinedAt: !2424)
!2479 = !DILocation(line: 136, column: 7, scope: !2412, inlinedAt: !2424)
!2480 = !DILocation(line: 137, column: 43, scope: !2481, inlinedAt: !2424)
!2481 = distinct !DILexicalBlock(scope: !2412, file: !2392, line: 136, column: 7)
!2482 = !DILocation(line: 137, column: 40, scope: !2481, inlinedAt: !2424)
!2483 = !DILocation(line: 137, column: 28, scope: !2481, inlinedAt: !2424)
!2484 = !DILocation(line: 137, column: 27, scope: !2481, inlinedAt: !2424)
!2485 = !DILocation(line: 137, column: 22, scope: !2481, inlinedAt: !2424)
!2486 = !DILocation(line: 137, column: 21, scope: !2481, inlinedAt: !2424)
!2487 = !DILocation(line: 137, column: 5, scope: !2481, inlinedAt: !2424)
!2488 = !DILocalVariable(name: "image", arg: 1, scope: !2489, file: !2177, line: 117, type: !787)
!2489 = distinct !DISubprogram(name: "SetPixelPacket", scope: !2177, file: !2177, line: 117, type: !2490, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !787, !2395, !470, !713}
!2492 = !{!2488, !2493, !2494, !2495}
!2493 = !DILocalVariable(name: "pixel", arg: 2, scope: !2489, file: !2177, line: 118, type: !2395)
!2494 = !DILocalVariable(name: "color", arg: 3, scope: !2489, file: !2177, line: 118, type: !470)
!2495 = !DILocalVariable(name: "index", arg: 4, scope: !2489, file: !2177, line: 118, type: !713)
!2496 = !DILocation(line: 0, scope: !2489, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 1259, column: 11, scope: !2349)
!2498 = !DILocation(line: 0, scope: !1285, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2497)
!2500 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2499)
!2501 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2499)
!2502 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2499)
!2503 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2499)
!2504 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2499)
!2505 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2499)
!2506 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2499)
!2507 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2497)
!2508 = !DILocation(line: 0, scope: !1285, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2497)
!2510 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2509)
!2511 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2509)
!2512 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2509)
!2513 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2509)
!2514 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2509)
!2515 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2509)
!2516 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2509)
!2517 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2497)
!2518 = !DILocation(line: 0, scope: !1285, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2497)
!2520 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2519)
!2521 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2519)
!2522 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2519)
!2523 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2519)
!2524 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2519)
!2525 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2519)
!2526 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2519)
!2527 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2497)
!2528 = !DILocation(line: 0, scope: !1285, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2497)
!2530 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2529)
!2531 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2529)
!2532 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2529)
!2533 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2529)
!2534 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2529)
!2535 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2529)
!2536 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2529)
!2537 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2497)
!2538 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !2497)
!2539 = distinct !DILexicalBlock(scope: !2489, file: !2177, line: 124, column: 7)
!2540 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !2497)
!2541 = !{!825, !826, i64 0}
!2542 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !2497)
!2543 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !2497)
!2544 = !DILocation(line: 1260, column: 39, scope: !2349)
!2545 = !DILocation(line: 1260, column: 49, scope: !2349)
!2546 = !DILocation(line: 0, scope: !2176, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 1260, column: 11, scope: !2349)
!2548 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !2547)
!2549 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !2547)
!2550 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !2547)
!2551 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !2547)
!2552 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !2547)
!2553 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2497)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !2177, line: 126, column: 5)
!2555 = distinct !DILexicalBlock(scope: !2539, file: !2177, line: 126, column: 5)
!2556 = !DILocation(line: 126, column: 5, scope: !2555, inlinedAt: !2497)
!2557 = !DILocation(line: 0, scope: !1285, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2497)
!2559 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2558)
!2560 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2558)
!2561 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2558)
!2562 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2558)
!2563 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2558)
!2564 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2558)
!2565 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2558)
!2566 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !2547)
!2567 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !2547)
!2568 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !2547)
!2569 = !DILocation(line: 0, scope: !2349)
!2570 = !DILocation(line: 1247, column: 41, scope: !2350)
!2571 = !DILocation(line: 1247, column: 21, scope: !2350)
!2572 = distinct !{!2572, !2345, !2573, !852, !853}
!2573 = !DILocation(line: 1261, column: 9, scope: !2346)
!2574 = !DILocation(line: 0, scope: !2340)
!2575 = !DILocation(line: 1263, column: 51, scope: !2340)
!2576 = !DILocation(line: 0, scope: !2391, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1262, column: 9, scope: !2340)
!2578 = !DILocation(line: 161, column: 18, scope: !2391, inlinedAt: !2577)
!2579 = !DILocation(line: 161, column: 5, scope: !2391, inlinedAt: !2577)
!2580 = !DILocation(line: 160, column: 59, scope: !2391, inlinedAt: !2577)
!2581 = !DILocation(line: 160, column: 30, scope: !2391, inlinedAt: !2577)
!2582 = !DILocation(line: 161, column: 77, scope: !2391, inlinedAt: !2577)
!2583 = !DILocation(line: 161, column: 58, scope: !2391, inlinedAt: !2577)
!2584 = !DILocation(line: 0, scope: !2412, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 160, column: 3, scope: !2391, inlinedAt: !2577)
!2586 = !DILocation(line: 128, column: 23, scope: !2412, inlinedAt: !2585)
!2587 = !DILocation(line: 128, column: 9, scope: !2412, inlinedAt: !2585)
!2588 = !DILocation(line: 128, column: 6, scope: !2412, inlinedAt: !2585)
!2589 = !DILocation(line: 129, column: 23, scope: !2412, inlinedAt: !2585)
!2590 = !DILocation(line: 129, column: 9, scope: !2412, inlinedAt: !2585)
!2591 = !DILocation(line: 129, column: 6, scope: !2412, inlinedAt: !2585)
!2592 = !DILocation(line: 130, column: 24, scope: !2412, inlinedAt: !2585)
!2593 = !DILocation(line: 0, scope: !2433, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 130, column: 9, scope: !2412, inlinedAt: !2585)
!2595 = !DILocation(line: 35, column: 16, scope: !2433, inlinedAt: !2594)
!2596 = !DILocation(line: 35, column: 10, scope: !2433, inlinedAt: !2594)
!2597 = !DILocation(line: 35, column: 37, scope: !2433, inlinedAt: !2594)
!2598 = !DILocation(line: 35, column: 30, scope: !2433, inlinedAt: !2594)
!2599 = !DILocation(line: 131, column: 56, scope: !2412, inlinedAt: !2585)
!2600 = !DILocation(line: 131, column: 51, scope: !2412, inlinedAt: !2585)
!2601 = !DILocation(line: 131, column: 22, scope: !2412, inlinedAt: !2585)
!2602 = !DILocation(line: 131, column: 21, scope: !2412, inlinedAt: !2585)
!2603 = !DILocation(line: 0, scope: !2446, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 132, column: 9, scope: !2412, inlinedAt: !2585)
!2605 = !DILocation(line: 86, column: 10, scope: !2446, inlinedAt: !2604)
!2606 = !DILocation(line: 86, column: 8, scope: !2446, inlinedAt: !2604)
!2607 = !DILocation(line: 87, column: 12, scope: !2454, inlinedAt: !2604)
!2608 = !DILocation(line: 87, column: 16, scope: !2454, inlinedAt: !2604)
!2609 = !DILocation(line: 87, column: 7, scope: !2446, inlinedAt: !2604)
!2610 = !DILocation(line: 88, column: 15, scope: !2454, inlinedAt: !2604)
!2611 = !DILocation(line: 88, column: 5, scope: !2454, inlinedAt: !2604)
!2612 = !DILocation(line: 89, column: 14, scope: !2446, inlinedAt: !2604)
!2613 = !DILocation(line: 89, column: 3, scope: !2446, inlinedAt: !2604)
!2614 = !DILocation(line: 133, column: 41, scope: !2412, inlinedAt: !2585)
!2615 = !DILocation(line: 133, column: 37, scope: !2412, inlinedAt: !2585)
!2616 = !DILocation(line: 133, column: 34, scope: !2412, inlinedAt: !2585)
!2617 = !DILocation(line: 133, column: 24, scope: !2412, inlinedAt: !2585)
!2618 = !DILocation(line: 133, column: 23, scope: !2412, inlinedAt: !2585)
!2619 = !DILocation(line: 133, column: 18, scope: !2412, inlinedAt: !2585)
!2620 = !DILocation(line: 133, column: 17, scope: !2412, inlinedAt: !2585)
!2621 = !DILocation(line: 134, column: 45, scope: !2412, inlinedAt: !2585)
!2622 = !DILocation(line: 134, column: 41, scope: !2412, inlinedAt: !2585)
!2623 = !DILocation(line: 134, column: 38, scope: !2412, inlinedAt: !2585)
!2624 = !DILocation(line: 134, column: 26, scope: !2412, inlinedAt: !2585)
!2625 = !DILocation(line: 134, column: 25, scope: !2412, inlinedAt: !2585)
!2626 = !DILocation(line: 134, column: 20, scope: !2412, inlinedAt: !2585)
!2627 = !DILocation(line: 134, column: 19, scope: !2412, inlinedAt: !2585)
!2628 = !DILocation(line: 135, column: 43, scope: !2412, inlinedAt: !2585)
!2629 = !DILocation(line: 135, column: 39, scope: !2412, inlinedAt: !2585)
!2630 = !DILocation(line: 135, column: 36, scope: !2412, inlinedAt: !2585)
!2631 = !DILocation(line: 135, column: 25, scope: !2412, inlinedAt: !2585)
!2632 = !DILocation(line: 135, column: 24, scope: !2412, inlinedAt: !2585)
!2633 = !DILocation(line: 135, column: 19, scope: !2412, inlinedAt: !2585)
!2634 = !DILocation(line: 135, column: 18, scope: !2412, inlinedAt: !2585)
!2635 = !DILocation(line: 136, column: 10, scope: !2481, inlinedAt: !2585)
!2636 = !DILocation(line: 136, column: 21, scope: !2481, inlinedAt: !2585)
!2637 = !DILocation(line: 136, column: 7, scope: !2412, inlinedAt: !2585)
!2638 = !DILocation(line: 137, column: 47, scope: !2481, inlinedAt: !2585)
!2639 = !DILocation(line: 137, column: 43, scope: !2481, inlinedAt: !2585)
!2640 = !DILocation(line: 137, column: 40, scope: !2481, inlinedAt: !2585)
!2641 = !DILocation(line: 137, column: 28, scope: !2481, inlinedAt: !2585)
!2642 = !DILocation(line: 137, column: 27, scope: !2481, inlinedAt: !2585)
!2643 = !DILocation(line: 137, column: 22, scope: !2481, inlinedAt: !2585)
!2644 = !DILocation(line: 137, column: 21, scope: !2481, inlinedAt: !2585)
!2645 = !DILocation(line: 137, column: 5, scope: !2481, inlinedAt: !2585)
!2646 = !DILocation(line: 0, scope: !2489, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1264, column: 9, scope: !2340)
!2648 = !DILocation(line: 0, scope: !1285, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2647)
!2650 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2649)
!2651 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2649)
!2652 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2649)
!2653 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2649)
!2654 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2649)
!2655 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2649)
!2656 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2649)
!2657 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2647)
!2658 = !DILocation(line: 0, scope: !1285, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2647)
!2660 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2659)
!2661 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2659)
!2662 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2659)
!2663 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2659)
!2664 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2659)
!2665 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2659)
!2666 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2659)
!2667 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2647)
!2668 = !DILocation(line: 0, scope: !1285, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2647)
!2670 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2669)
!2671 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2669)
!2672 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2669)
!2673 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2669)
!2674 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2669)
!2675 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2669)
!2676 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2669)
!2677 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2647)
!2678 = !DILocation(line: 0, scope: !1285, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2647)
!2680 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2679)
!2681 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2679)
!2682 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2679)
!2683 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2679)
!2684 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2679)
!2685 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2679)
!2686 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2679)
!2687 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2647)
!2688 = !DILocation(line: 124, column: 15, scope: !2539, inlinedAt: !2647)
!2689 = !DILocation(line: 124, column: 26, scope: !2539, inlinedAt: !2647)
!2690 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !2647)
!2691 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !2647)
!2692 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !2647)
!2693 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !2647)
!2694 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2647)
!2695 = !DILocation(line: 126, column: 5, scope: !2555, inlinedAt: !2647)
!2696 = !DILocation(line: 0, scope: !1285, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2647)
!2698 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2697)
!2699 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2697)
!2700 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2697)
!2701 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2697)
!2702 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2697)
!2703 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2697)
!2704 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2697)
!2705 = !DILocation(line: 1265, column: 21, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !442, line: 1265, column: 9)
!2707 = distinct !DILexicalBlock(scope: !2340, file: !442, line: 1265, column: 9)
!2708 = !DILocation(line: 1265, column: 9, scope: !2707)
!2709 = !DILocation(line: 0, scope: !2489, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1266, column: 11, scope: !2706)
!2711 = !DILocation(line: 0, scope: !1285, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2710)
!2713 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2710)
!2714 = !DILocation(line: 0, scope: !1285, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2710)
!2716 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2710)
!2717 = !DILocation(line: 0, scope: !1285, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2710)
!2719 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2710)
!2720 = !DILocation(line: 0, scope: !1285, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2710)
!2722 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2710)
!2723 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !2710)
!2724 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !2710)
!2725 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !2710)
!2726 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !2710)
!2727 = !DILocation(line: 0, scope: !1285, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2710)
!2729 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2710)
!2730 = !DILocation(line: 1265, column: 34, scope: !2706)
!2731 = distinct !{!2731, !2708, !2732, !852, !853}
!2732 = !DILocation(line: 1266, column: 63, scope: !2707)
!2733 = !DILocation(line: 1274, column: 10, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2341, file: !442, line: 1270, column: 7)
!2735 = !DILocation(line: 1275, column: 16, scope: !2734)
!2736 = !DILocation(line: 1276, column: 12, scope: !2734)
!2737 = !DILocation(line: 1277, column: 30, scope: !2734)
!2738 = !DILocation(line: 1278, column: 9, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2734, file: !442, line: 1278, column: 9)
!2740 = !DILocation(line: 160, column: 65, scope: !2391, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1292, column: 9, scope: !2734)
!2742 = !DILocation(line: 160, column: 64, scope: !2391, inlinedAt: !2741)
!2743 = !DILocation(line: 160, column: 59, scope: !2391, inlinedAt: !2741)
!2744 = !DILocation(line: 161, column: 58, scope: !2391, inlinedAt: !2741)
!2745 = !DILocation(line: 1280, column: 12, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !442, line: 1279, column: 9)
!2747 = distinct !DILexicalBlock(scope: !2739, file: !442, line: 1278, column: 9)
!2748 = !DILocation(line: 1281, column: 18, scope: !2746)
!2749 = !DILocation(line: 1282, column: 12, scope: !2746)
!2750 = !DILocation(line: 1283, column: 24, scope: !2746)
!2751 = !DILocation(line: 1284, column: 44, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2746, file: !442, line: 1284, column: 15)
!2753 = !DILocation(line: 1284, column: 48, scope: !2752)
!2754 = !DILocation(line: 1284, column: 15, scope: !2746)
!2755 = !DILocation(line: 1286, column: 11, scope: !2746)
!2756 = !DILocation(line: 0, scope: !2176, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1286, column: 11, scope: !2746)
!2758 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !2757)
!2759 = !DILocation(line: 95, column: 14, scope: !2176, inlinedAt: !2757)
!2760 = !DILocation(line: 95, column: 13, scope: !2176, inlinedAt: !2757)
!2761 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !2757)
!2762 = !DILocation(line: 96, column: 16, scope: !2176, inlinedAt: !2757)
!2763 = !DILocation(line: 96, column: 15, scope: !2176, inlinedAt: !2757)
!2764 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !2757)
!2765 = !DILocation(line: 97, column: 15, scope: !2176, inlinedAt: !2757)
!2766 = !DILocation(line: 97, column: 14, scope: !2176, inlinedAt: !2757)
!2767 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !2757)
!2768 = !DILocation(line: 98, column: 18, scope: !2176, inlinedAt: !2757)
!2769 = !DILocation(line: 98, column: 17, scope: !2176, inlinedAt: !2757)
!2770 = !DILocation(line: 99, column: 26, scope: !2364, inlinedAt: !2757)
!2771 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !2757)
!2772 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !2757)
!2773 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !2757)
!2774 = !DILocation(line: 101, column: 17, scope: !2364, inlinedAt: !2757)
!2775 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !2757)
!2776 = !DILocation(line: 0, scope: !2391, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 1287, column: 11, scope: !2746)
!2778 = !DILocation(line: 161, column: 18, scope: !2391, inlinedAt: !2777)
!2779 = !DILocation(line: 161, column: 5, scope: !2391, inlinedAt: !2777)
!2780 = !DILocation(line: 160, column: 59, scope: !2391, inlinedAt: !2777)
!2781 = !DILocation(line: 160, column: 30, scope: !2391, inlinedAt: !2777)
!2782 = !DILocation(line: 161, column: 77, scope: !2391, inlinedAt: !2777)
!2783 = !DILocation(line: 161, column: 58, scope: !2391, inlinedAt: !2777)
!2784 = !DILocation(line: 0, scope: !2412, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 160, column: 3, scope: !2391, inlinedAt: !2777)
!2786 = !DILocation(line: 128, column: 23, scope: !2412, inlinedAt: !2785)
!2787 = !DILocation(line: 128, column: 9, scope: !2412, inlinedAt: !2785)
!2788 = !DILocation(line: 128, column: 6, scope: !2412, inlinedAt: !2785)
!2789 = !DILocation(line: 129, column: 23, scope: !2412, inlinedAt: !2785)
!2790 = !DILocation(line: 129, column: 9, scope: !2412, inlinedAt: !2785)
!2791 = !DILocation(line: 129, column: 6, scope: !2412, inlinedAt: !2785)
!2792 = !DILocation(line: 130, column: 24, scope: !2412, inlinedAt: !2785)
!2793 = !DILocation(line: 0, scope: !2433, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 130, column: 9, scope: !2412, inlinedAt: !2785)
!2795 = !DILocation(line: 35, column: 16, scope: !2433, inlinedAt: !2794)
!2796 = !DILocation(line: 35, column: 10, scope: !2433, inlinedAt: !2794)
!2797 = !DILocation(line: 35, column: 37, scope: !2433, inlinedAt: !2794)
!2798 = !DILocation(line: 35, column: 30, scope: !2433, inlinedAt: !2794)
!2799 = !DILocation(line: 131, column: 56, scope: !2412, inlinedAt: !2785)
!2800 = !DILocation(line: 131, column: 51, scope: !2412, inlinedAt: !2785)
!2801 = !DILocation(line: 131, column: 22, scope: !2412, inlinedAt: !2785)
!2802 = !DILocation(line: 131, column: 21, scope: !2412, inlinedAt: !2785)
!2803 = !DILocation(line: 0, scope: !2446, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 132, column: 9, scope: !2412, inlinedAt: !2785)
!2805 = !DILocation(line: 86, column: 10, scope: !2446, inlinedAt: !2804)
!2806 = !DILocation(line: 86, column: 8, scope: !2446, inlinedAt: !2804)
!2807 = !DILocation(line: 87, column: 12, scope: !2454, inlinedAt: !2804)
!2808 = !DILocation(line: 87, column: 16, scope: !2454, inlinedAt: !2804)
!2809 = !DILocation(line: 87, column: 7, scope: !2446, inlinedAt: !2804)
!2810 = !DILocation(line: 88, column: 15, scope: !2454, inlinedAt: !2804)
!2811 = !DILocation(line: 88, column: 5, scope: !2454, inlinedAt: !2804)
!2812 = !DILocation(line: 89, column: 14, scope: !2446, inlinedAt: !2804)
!2813 = !DILocation(line: 89, column: 3, scope: !2446, inlinedAt: !2804)
!2814 = !DILocation(line: 133, column: 37, scope: !2412, inlinedAt: !2785)
!2815 = !DILocation(line: 133, column: 34, scope: !2412, inlinedAt: !2785)
!2816 = !DILocation(line: 133, column: 24, scope: !2412, inlinedAt: !2785)
!2817 = !DILocation(line: 133, column: 23, scope: !2412, inlinedAt: !2785)
!2818 = !DILocation(line: 133, column: 18, scope: !2412, inlinedAt: !2785)
!2819 = !DILocation(line: 133, column: 17, scope: !2412, inlinedAt: !2785)
!2820 = !DILocation(line: 134, column: 41, scope: !2412, inlinedAt: !2785)
!2821 = !DILocation(line: 134, column: 38, scope: !2412, inlinedAt: !2785)
!2822 = !DILocation(line: 134, column: 26, scope: !2412, inlinedAt: !2785)
!2823 = !DILocation(line: 134, column: 25, scope: !2412, inlinedAt: !2785)
!2824 = !DILocation(line: 134, column: 20, scope: !2412, inlinedAt: !2785)
!2825 = !DILocation(line: 134, column: 19, scope: !2412, inlinedAt: !2785)
!2826 = !DILocation(line: 135, column: 39, scope: !2412, inlinedAt: !2785)
!2827 = !DILocation(line: 135, column: 36, scope: !2412, inlinedAt: !2785)
!2828 = !DILocation(line: 135, column: 25, scope: !2412, inlinedAt: !2785)
!2829 = !DILocation(line: 135, column: 24, scope: !2412, inlinedAt: !2785)
!2830 = !DILocation(line: 135, column: 19, scope: !2412, inlinedAt: !2785)
!2831 = !DILocation(line: 135, column: 18, scope: !2412, inlinedAt: !2785)
!2832 = !DILocation(line: 136, column: 7, scope: !2412, inlinedAt: !2785)
!2833 = !DILocation(line: 137, column: 43, scope: !2481, inlinedAt: !2785)
!2834 = !DILocation(line: 137, column: 40, scope: !2481, inlinedAt: !2785)
!2835 = !DILocation(line: 137, column: 28, scope: !2481, inlinedAt: !2785)
!2836 = !DILocation(line: 137, column: 27, scope: !2481, inlinedAt: !2785)
!2837 = !DILocation(line: 137, column: 22, scope: !2481, inlinedAt: !2785)
!2838 = !DILocation(line: 137, column: 21, scope: !2481, inlinedAt: !2785)
!2839 = !DILocation(line: 137, column: 5, scope: !2481, inlinedAt: !2785)
!2840 = !DILocation(line: 0, scope: !2489, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1289, column: 11, scope: !2746)
!2842 = !DILocation(line: 0, scope: !1285, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2841)
!2844 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2843)
!2845 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2843)
!2846 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2843)
!2847 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2843)
!2848 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2843)
!2849 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2843)
!2850 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2843)
!2851 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2841)
!2852 = !DILocation(line: 0, scope: !1285, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2841)
!2854 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2853)
!2855 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2853)
!2856 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2853)
!2857 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2853)
!2858 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2853)
!2859 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2853)
!2860 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2853)
!2861 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2841)
!2862 = !DILocation(line: 0, scope: !1285, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2841)
!2864 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2863)
!2865 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2863)
!2866 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2863)
!2867 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2863)
!2868 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2863)
!2869 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2863)
!2870 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2863)
!2871 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2841)
!2872 = !DILocation(line: 0, scope: !1285, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2841)
!2874 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2873)
!2875 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2873)
!2876 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2873)
!2877 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2873)
!2878 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2873)
!2879 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2873)
!2880 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2873)
!2881 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2841)
!2882 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !2841)
!2883 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !2841)
!2884 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !2841)
!2885 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !2841)
!2886 = !DILocation(line: 0, scope: !1285, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2841)
!2888 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2887)
!2889 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2887)
!2890 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2887)
!2891 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2887)
!2892 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2887)
!2893 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2887)
!2894 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2887)
!2895 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2841)
!2896 = !DILocation(line: 0, scope: !2176, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1290, column: 11, scope: !2746)
!2898 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !2897)
!2899 = !DILocation(line: 95, column: 14, scope: !2176, inlinedAt: !2897)
!2900 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !2897)
!2901 = !DILocation(line: 96, column: 16, scope: !2176, inlinedAt: !2897)
!2902 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !2897)
!2903 = !DILocation(line: 97, column: 15, scope: !2176, inlinedAt: !2897)
!2904 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !2897)
!2905 = !DILocation(line: 98, column: 18, scope: !2176, inlinedAt: !2897)
!2906 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !2897)
!2907 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !2897)
!2908 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !2897)
!2909 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !2897)
!2910 = !DILocation(line: 1278, column: 41, scope: !2747)
!2911 = !DILocation(line: 1278, column: 21, scope: !2747)
!2912 = distinct !{!2912, !2738, !2913, !852, !853}
!2913 = !DILocation(line: 1291, column: 9, scope: !2739)
!2914 = !DILocation(line: 0, scope: !2734)
!2915 = !DILocation(line: 1293, column: 51, scope: !2734)
!2916 = !DILocation(line: 0, scope: !2391, inlinedAt: !2741)
!2917 = !DILocation(line: 161, column: 18, scope: !2391, inlinedAt: !2741)
!2918 = !DILocation(line: 161, column: 5, scope: !2391, inlinedAt: !2741)
!2919 = !DILocation(line: 160, column: 30, scope: !2391, inlinedAt: !2741)
!2920 = !DILocation(line: 161, column: 77, scope: !2391, inlinedAt: !2741)
!2921 = !DILocation(line: 0, scope: !2412, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 160, column: 3, scope: !2391, inlinedAt: !2741)
!2923 = !DILocation(line: 128, column: 23, scope: !2412, inlinedAt: !2922)
!2924 = !DILocation(line: 128, column: 9, scope: !2412, inlinedAt: !2922)
!2925 = !DILocation(line: 128, column: 6, scope: !2412, inlinedAt: !2922)
!2926 = !DILocation(line: 129, column: 23, scope: !2412, inlinedAt: !2922)
!2927 = !DILocation(line: 129, column: 9, scope: !2412, inlinedAt: !2922)
!2928 = !DILocation(line: 129, column: 6, scope: !2412, inlinedAt: !2922)
!2929 = !DILocation(line: 130, column: 24, scope: !2412, inlinedAt: !2922)
!2930 = !DILocation(line: 0, scope: !2433, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 130, column: 9, scope: !2412, inlinedAt: !2922)
!2932 = !DILocation(line: 35, column: 16, scope: !2433, inlinedAt: !2931)
!2933 = !DILocation(line: 35, column: 10, scope: !2433, inlinedAt: !2931)
!2934 = !DILocation(line: 35, column: 37, scope: !2433, inlinedAt: !2931)
!2935 = !DILocation(line: 35, column: 30, scope: !2433, inlinedAt: !2931)
!2936 = !DILocation(line: 131, column: 56, scope: !2412, inlinedAt: !2922)
!2937 = !DILocation(line: 131, column: 51, scope: !2412, inlinedAt: !2922)
!2938 = !DILocation(line: 131, column: 22, scope: !2412, inlinedAt: !2922)
!2939 = !DILocation(line: 131, column: 21, scope: !2412, inlinedAt: !2922)
!2940 = !DILocation(line: 0, scope: !2446, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 132, column: 9, scope: !2412, inlinedAt: !2922)
!2942 = !DILocation(line: 86, column: 10, scope: !2446, inlinedAt: !2941)
!2943 = !DILocation(line: 86, column: 8, scope: !2446, inlinedAt: !2941)
!2944 = !DILocation(line: 87, column: 12, scope: !2454, inlinedAt: !2941)
!2945 = !DILocation(line: 87, column: 16, scope: !2454, inlinedAt: !2941)
!2946 = !DILocation(line: 87, column: 7, scope: !2446, inlinedAt: !2941)
!2947 = !DILocation(line: 88, column: 15, scope: !2454, inlinedAt: !2941)
!2948 = !DILocation(line: 88, column: 5, scope: !2454, inlinedAt: !2941)
!2949 = !DILocation(line: 89, column: 14, scope: !2446, inlinedAt: !2941)
!2950 = !DILocation(line: 89, column: 3, scope: !2446, inlinedAt: !2941)
!2951 = !DILocation(line: 133, column: 41, scope: !2412, inlinedAt: !2922)
!2952 = !DILocation(line: 133, column: 37, scope: !2412, inlinedAt: !2922)
!2953 = !DILocation(line: 133, column: 34, scope: !2412, inlinedAt: !2922)
!2954 = !DILocation(line: 133, column: 24, scope: !2412, inlinedAt: !2922)
!2955 = !DILocation(line: 133, column: 23, scope: !2412, inlinedAt: !2922)
!2956 = !DILocation(line: 133, column: 18, scope: !2412, inlinedAt: !2922)
!2957 = !DILocation(line: 133, column: 17, scope: !2412, inlinedAt: !2922)
!2958 = !DILocation(line: 134, column: 45, scope: !2412, inlinedAt: !2922)
!2959 = !DILocation(line: 134, column: 41, scope: !2412, inlinedAt: !2922)
!2960 = !DILocation(line: 134, column: 38, scope: !2412, inlinedAt: !2922)
!2961 = !DILocation(line: 134, column: 26, scope: !2412, inlinedAt: !2922)
!2962 = !DILocation(line: 134, column: 25, scope: !2412, inlinedAt: !2922)
!2963 = !DILocation(line: 134, column: 20, scope: !2412, inlinedAt: !2922)
!2964 = !DILocation(line: 134, column: 19, scope: !2412, inlinedAt: !2922)
!2965 = !DILocation(line: 135, column: 43, scope: !2412, inlinedAt: !2922)
!2966 = !DILocation(line: 135, column: 39, scope: !2412, inlinedAt: !2922)
!2967 = !DILocation(line: 135, column: 36, scope: !2412, inlinedAt: !2922)
!2968 = !DILocation(line: 135, column: 25, scope: !2412, inlinedAt: !2922)
!2969 = !DILocation(line: 135, column: 24, scope: !2412, inlinedAt: !2922)
!2970 = !DILocation(line: 135, column: 19, scope: !2412, inlinedAt: !2922)
!2971 = !DILocation(line: 135, column: 18, scope: !2412, inlinedAt: !2922)
!2972 = !DILocation(line: 136, column: 10, scope: !2481, inlinedAt: !2922)
!2973 = !DILocation(line: 136, column: 21, scope: !2481, inlinedAt: !2922)
!2974 = !DILocation(line: 136, column: 7, scope: !2412, inlinedAt: !2922)
!2975 = !DILocation(line: 137, column: 47, scope: !2481, inlinedAt: !2922)
!2976 = !DILocation(line: 137, column: 43, scope: !2481, inlinedAt: !2922)
!2977 = !DILocation(line: 137, column: 40, scope: !2481, inlinedAt: !2922)
!2978 = !DILocation(line: 137, column: 28, scope: !2481, inlinedAt: !2922)
!2979 = !DILocation(line: 137, column: 27, scope: !2481, inlinedAt: !2922)
!2980 = !DILocation(line: 137, column: 22, scope: !2481, inlinedAt: !2922)
!2981 = !DILocation(line: 137, column: 21, scope: !2481, inlinedAt: !2922)
!2982 = !DILocation(line: 137, column: 5, scope: !2481, inlinedAt: !2922)
!2983 = !DILocation(line: 1294, column: 43, scope: !2734)
!2984 = !DILocation(line: 1294, column: 47, scope: !2734)
!2985 = !DILocation(line: 0, scope: !2489, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 1294, column: 9, scope: !2734)
!2987 = !DILocation(line: 0, scope: !1285, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2986)
!2989 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2988)
!2990 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2988)
!2991 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2988)
!2992 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2988)
!2993 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2988)
!2994 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2988)
!2995 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2988)
!2996 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !2986)
!2997 = !DILocation(line: 0, scope: !1285, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2986)
!2999 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !2998)
!3000 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !2998)
!3001 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !2998)
!3002 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !2998)
!3003 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !2998)
!3004 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !2998)
!3005 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !2998)
!3006 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !2986)
!3007 = !DILocation(line: 0, scope: !1285, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2986)
!3009 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3008)
!3010 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3008)
!3011 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3008)
!3012 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3008)
!3013 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3008)
!3014 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3008)
!3015 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3008)
!3016 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !2986)
!3017 = !DILocation(line: 0, scope: !1285, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2986)
!3019 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3018)
!3020 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3018)
!3021 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3018)
!3022 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3018)
!3023 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3018)
!3024 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3018)
!3025 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3018)
!3026 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !2986)
!3027 = !DILocation(line: 124, column: 15, scope: !2539, inlinedAt: !2986)
!3028 = !DILocation(line: 124, column: 26, scope: !2539, inlinedAt: !2986)
!3029 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !2986)
!3030 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !2986)
!3031 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !2986)
!3032 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !2986)
!3033 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2986)
!3034 = !DILocation(line: 0, scope: !1285, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !2986)
!3036 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3035)
!3037 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3035)
!3038 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3035)
!3039 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3035)
!3040 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3035)
!3041 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3035)
!3042 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3035)
!3043 = !DILocation(line: 1295, column: 21, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !442, line: 1295, column: 9)
!3045 = distinct !DILexicalBlock(scope: !2734, file: !442, line: 1295, column: 9)
!3046 = !DILocation(line: 1295, column: 9, scope: !3045)
!3047 = !DILocation(line: 1296, column: 44, scope: !3044)
!3048 = !DILocation(line: 1296, column: 48, scope: !3044)
!3049 = !DILocation(line: 0, scope: !2489, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1296, column: 11, scope: !3044)
!3051 = !DILocation(line: 0, scope: !1285, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3050)
!3053 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3050)
!3054 = !DILocation(line: 0, scope: !1285, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3050)
!3056 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3050)
!3057 = !DILocation(line: 0, scope: !1285, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3050)
!3059 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3050)
!3060 = !DILocation(line: 0, scope: !1285, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3050)
!3062 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3050)
!3063 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !3050)
!3064 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !3050)
!3065 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !3050)
!3066 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !3050)
!3067 = !DILocation(line: 0, scope: !1285, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3050)
!3069 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3050)
!3070 = !DILocation(line: 1295, column: 34, scope: !3044)
!3071 = distinct !{!3071, !3046, !3072, !852, !853}
!3072 = !DILocation(line: 1296, column: 63, scope: !3045)
!3073 = !DILocation(line: 1300, column: 9, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !704, file: !442, line: 1300, column: 9)
!3075 = !DILocation(line: 1300, column: 60, scope: !3074)
!3076 = !DILocation(line: 1300, column: 9, scope: !704)
!3077 = !DILocation(line: 1302, column: 16, scope: !725)
!3078 = !DILocation(line: 1302, column: 33, scope: !725)
!3079 = !DILocation(line: 1302, column: 9, scope: !704)
!3080 = !DILocation(line: 1310, column: 63, scope: !724)
!3081 = !DILocation(line: 0, scope: !1662, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 1310, column: 17, scope: !724)
!3083 = !DILocation(line: 30, column: 3, scope: !1662, inlinedAt: !3082)
!3084 = !DILocation(line: 31, column: 5, scope: !1662, inlinedAt: !3082)
!3085 = !DILocation(line: 35, column: 10, scope: !1662, inlinedAt: !3082)
!3086 = !DILocation(line: 36, column: 17, scope: !1662, inlinedAt: !3082)
!3087 = !DILocation(line: 36, column: 63, scope: !1662, inlinedAt: !3082)
!3088 = !DILocation(line: 36, column: 10, scope: !1662, inlinedAt: !3082)
!3089 = !DILocation(line: 37, column: 1, scope: !1662, inlinedAt: !3082)
!3090 = !DILocation(line: 0, scope: !724)
!3091 = !DILocation(line: 1311, column: 21, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !724, file: !442, line: 1311, column: 13)
!3093 = !DILocation(line: 1311, column: 13, scope: !724)
!3094 = !DILocation(line: 1313, column: 7, scope: !724)
!3095 = !DILocation(line: 1314, column: 3, scope: !705)
!3096 = !DILocation(line: 1180, column: 36, scope: !705)
!3097 = distinct !{!3097, !2294, !3098, !852, !853}
!3098 = !DILocation(line: 1314, column: 3, scope: !706)
!3099 = !DILocation(line: 1173, column: 9, scope: !443)
!3100 = !DILocation(line: 1315, column: 14, scope: !443)
!3101 = !DILocation(line: 1317, column: 1, scope: !443)
!3102 = !DILocation(line: 1316, column: 3, scope: !443)
!3103 = !DILocation(line: 0, scope: !730)
!3104 = !DILocation(line: 1376, column: 3, scope: !730)
!3105 = !DILocation(line: 1377, column: 5, scope: !730)
!3106 = !DILocation(line: 1384, column: 14, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !730, file: !442, line: 1384, column: 7)
!3108 = !DILocation(line: 1384, column: 20, scope: !3107)
!3109 = !DILocation(line: 1384, column: 7, scope: !730)
!3110 = !DILocation(line: 1385, column: 68, scope: !3107)
!3111 = !DILocation(line: 1385, column: 12, scope: !3107)
!3112 = !DILocation(line: 1385, column: 5, scope: !3107)
!3113 = !DILocation(line: 1386, column: 3, scope: !730)
!3114 = !DILocation(line: 1387, column: 38, scope: !730)
!3115 = !DILocation(line: 1387, column: 3, scope: !730)
!3116 = !DILocation(line: 0, scope: !2176, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1387, column: 3, scope: !730)
!3118 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !3117)
!3119 = !DILocation(line: 95, column: 14, scope: !2176, inlinedAt: !3117)
!3120 = !DILocation(line: 95, column: 10, scope: !2176, inlinedAt: !3117)
!3121 = !DILocation(line: 95, column: 13, scope: !2176, inlinedAt: !3117)
!3122 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !3117)
!3123 = !DILocation(line: 96, column: 16, scope: !2176, inlinedAt: !3117)
!3124 = !DILocation(line: 96, column: 10, scope: !2176, inlinedAt: !3117)
!3125 = !DILocation(line: 96, column: 15, scope: !2176, inlinedAt: !3117)
!3126 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !3117)
!3127 = !DILocation(line: 97, column: 15, scope: !2176, inlinedAt: !3117)
!3128 = !DILocation(line: 97, column: 10, scope: !2176, inlinedAt: !3117)
!3129 = !DILocation(line: 97, column: 14, scope: !2176, inlinedAt: !3117)
!3130 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !3117)
!3131 = !DILocation(line: 98, column: 18, scope: !2176, inlinedAt: !3117)
!3132 = !DILocation(line: 98, column: 10, scope: !2176, inlinedAt: !3117)
!3133 = !DILocation(line: 98, column: 17, scope: !2176, inlinedAt: !3117)
!3134 = !DILocation(line: 1389, column: 14, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !730, file: !442, line: 1389, column: 7)
!3136 = !DILocation(line: 1389, column: 25, scope: !3135)
!3137 = !DILocation(line: 1389, column: 7, scope: !730)
!3138 = !DILocation(line: 0, scope: !2209, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 1390, column: 5, scope: !3135)
!3140 = !DILocation(line: 41, column: 14, scope: !2224, inlinedAt: !3139)
!3141 = !DILocation(line: 41, column: 25, scope: !2224, inlinedAt: !3139)
!3142 = !DILocation(line: 41, column: 7, scope: !2209, inlinedAt: !3139)
!3143 = !DILocation(line: 43, column: 24, scope: !2229, inlinedAt: !3139)
!3144 = !DILocation(line: 43, column: 23, scope: !2229, inlinedAt: !3139)
!3145 = !DILocation(line: 43, column: 11, scope: !2229, inlinedAt: !3139)
!3146 = !DILocation(line: 44, column: 26, scope: !2229, inlinedAt: !3139)
!3147 = !DILocation(line: 44, column: 25, scope: !2229, inlinedAt: !3139)
!3148 = !DILocation(line: 44, column: 13, scope: !2229, inlinedAt: !3139)
!3149 = !DILocation(line: 45, column: 25, scope: !2229, inlinedAt: !3139)
!3150 = !DILocation(line: 45, column: 24, scope: !2229, inlinedAt: !3139)
!3151 = !DILocation(line: 45, column: 12, scope: !2229, inlinedAt: !3139)
!3152 = !DILocation(line: 46, column: 5, scope: !2229, inlinedAt: !3139)
!3153 = !DILocation(line: 49, column: 11, scope: !2240, inlinedAt: !3139)
!3154 = !DILocation(line: 50, column: 37, scope: !2240, inlinedAt: !3139)
!3155 = !DILocation(line: 50, column: 13, scope: !2240, inlinedAt: !3139)
!3156 = !DILocation(line: 51, column: 36, scope: !2240, inlinedAt: !3139)
!3157 = !DILocation(line: 51, column: 12, scope: !2240, inlinedAt: !3139)
!3158 = !DILocation(line: 0, scope: !2224, inlinedAt: !3139)
!3159 = !DILocation(line: 53, column: 8, scope: !2247, inlinedAt: !3139)
!3160 = !DILocation(line: 53, column: 18, scope: !2247, inlinedAt: !3139)
!3161 = !DILocation(line: 53, column: 35, scope: !2247, inlinedAt: !3139)
!3162 = !DILocation(line: 53, column: 39, scope: !2247, inlinedAt: !3139)
!3163 = !DILocation(line: 53, column: 51, scope: !2247, inlinedAt: !3139)
!3164 = !DILocation(line: 53, column: 68, scope: !2247, inlinedAt: !3139)
!3165 = !DILocation(line: 54, column: 8, scope: !2247, inlinedAt: !3139)
!3166 = !DILocation(line: 54, column: 19, scope: !2247, inlinedAt: !3139)
!3167 = !DILocation(line: 53, column: 7, scope: !2209, inlinedAt: !3139)
!3168 = !DILocation(line: 59, column: 8, scope: !2209, inlinedAt: !3139)
!3169 = !DILocation(line: 60, column: 11, scope: !2209, inlinedAt: !3139)
!3170 = !DILocation(line: 61, column: 10, scope: !2209, inlinedAt: !3139)
!3171 = !DILocation(line: 63, column: 15, scope: !2260, inlinedAt: !3139)
!3172 = !DILocation(line: 63, column: 7, scope: !2209, inlinedAt: !3139)
!3173 = !DILocation(line: 64, column: 5, scope: !2260, inlinedAt: !3139)
!3174 = !DILocation(line: 65, column: 14, scope: !2264, inlinedAt: !3139)
!3175 = !DILocation(line: 65, column: 7, scope: !2209, inlinedAt: !3139)
!3176 = !DILocation(line: 66, column: 5, scope: !2264, inlinedAt: !3139)
!3177 = !DILocation(line: 67, column: 31, scope: !2209, inlinedAt: !3139)
!3178 = !DILocation(line: 67, column: 26, scope: !2209, inlinedAt: !3139)
!3179 = !DILocation(line: 67, column: 44, scope: !2209, inlinedAt: !3139)
!3180 = !DILocation(line: 67, column: 43, scope: !2209, inlinedAt: !3139)
!3181 = !DILocation(line: 67, column: 38, scope: !2209, inlinedAt: !3139)
!3182 = !DILocation(line: 67, column: 8, scope: !2209, inlinedAt: !3139)
!3183 = !DILocation(line: 68, column: 37, scope: !2209, inlinedAt: !3139)
!3184 = !DILocation(line: 68, column: 29, scope: !2209, inlinedAt: !3139)
!3185 = !DILocation(line: 68, column: 44, scope: !2209, inlinedAt: !3139)
!3186 = !DILocation(line: 68, column: 11, scope: !2209, inlinedAt: !3139)
!3187 = !DILocation(line: 69, column: 35, scope: !2209, inlinedAt: !3139)
!3188 = !DILocation(line: 69, column: 28, scope: !2209, inlinedAt: !3139)
!3189 = !DILocation(line: 69, column: 42, scope: !2209, inlinedAt: !3139)
!3190 = !DILocation(line: 69, column: 10, scope: !2209, inlinedAt: !3139)
!3191 = !DILocation(line: 70, column: 20, scope: !2209, inlinedAt: !3139)
!3192 = !DILocation(line: 71, column: 26, scope: !2209, inlinedAt: !3139)
!3193 = !DILocation(line: 71, column: 13, scope: !2209, inlinedAt: !3139)
!3194 = !DILocation(line: 72, column: 28, scope: !2209, inlinedAt: !3139)
!3195 = !DILocation(line: 72, column: 15, scope: !2209, inlinedAt: !3139)
!3196 = !DILocation(line: 73, column: 27, scope: !2209, inlinedAt: !3139)
!3197 = !DILocation(line: 73, column: 14, scope: !2209, inlinedAt: !3139)
!3198 = !DILocation(line: 74, column: 28, scope: !2209, inlinedAt: !3139)
!3199 = !DILocation(line: 75, column: 1, scope: !2209, inlinedAt: !3139)
!3200 = !DILocation(line: 1390, column: 5, scope: !3135)
!3201 = !DILocation(line: 1396, column: 14, scope: !730)
!3202 = !DILocation(line: 1401, column: 15, scope: !746)
!3203 = !DILocation(line: 1401, column: 3, scope: !747)
!3204 = !DILocation(line: 1406, column: 5, scope: !745)
!3205 = !DILocation(line: 1408, column: 7, scope: !745)
!3206 = !DILocation(line: 1409, column: 7, scope: !745)
!3207 = !DILocation(line: 1429, column: 16, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !745, file: !442, line: 1429, column: 9)
!3209 = !DILocation(line: 1429, column: 9, scope: !745)
!3210 = !DILocation(line: 1431, column: 54, scope: !745)
!3211 = !DILocation(line: 1431, column: 68, scope: !745)
!3212 = !DILocation(line: 1431, column: 7, scope: !745)
!3213 = !DILocation(line: 0, scope: !745)
!3214 = !DILocation(line: 1433, column: 11, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !745, file: !442, line: 1433, column: 9)
!3216 = !DILocation(line: 1433, column: 9, scope: !745)
!3217 = !DILocation(line: 1438, column: 13, scope: !745)
!3218 = !DILocation(line: 1439, column: 6, scope: !745)
!3219 = !DILocation(line: 1440, column: 12, scope: !745)
!3220 = !DILocation(line: 1441, column: 44, scope: !745)
!3221 = !DILocation(line: 1441, column: 45, scope: !745)
!3222 = !DILocation(line: 1441, column: 26, scope: !745)
!3223 = !DILocation(line: 1441, column: 25, scope: !745)
!3224 = !DILocation(line: 1442, column: 22, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !745, file: !442, line: 1442, column: 9)
!3226 = !DILocation(line: 1442, column: 9, scope: !745)
!3227 = !DILocation(line: 1444, column: 22, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !745, file: !442, line: 1444, column: 9)
!3229 = !DILocation(line: 1444, column: 9, scope: !745)
!3230 = !DILocation(line: 1448, column: 21, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3228, file: !442, line: 1447, column: 7)
!3232 = !DILocation(line: 1451, column: 20, scope: !745)
!3233 = !DILocation(line: 1451, column: 10, scope: !745)
!3234 = !DILocation(line: 1452, column: 41, scope: !745)
!3235 = !DILocation(line: 1452, column: 40, scope: !745)
!3236 = !DILocation(line: 1453, column: 9, scope: !745)
!3237 = !DILocation(line: 1454, column: 11, scope: !745)
!3238 = !DILocation(line: 1455, column: 5, scope: !745)
!3239 = !DILocation(line: 1456, column: 5, scope: !745)
!3240 = !DILocation(line: 1457, column: 5, scope: !745)
!3241 = !DILocation(line: 1464, column: 18, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !442, line: 1464, column: 13)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !442, line: 1460, column: 7)
!3244 = distinct !DILexicalBlock(scope: !745, file: !442, line: 1458, column: 5)
!3245 = !DILocation(line: 1464, column: 13, scope: !3243)
!3246 = !DILocation(line: 1466, column: 12, scope: !3243)
!3247 = !DILocation(line: 1467, column: 30, scope: !3243)
!3248 = !DILocation(line: 1468, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3243, file: !442, line: 1468, column: 9)
!3250 = !DILocation(line: 1470, column: 24, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !442, line: 1470, column: 15)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !442, line: 1469, column: 9)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !442, line: 1468, column: 9)
!3254 = !DILocation(line: 1470, column: 28, scope: !3251)
!3255 = !DILocation(line: 1470, column: 15, scope: !3252)
!3256 = !DILocation(line: 1472, column: 42, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3251, file: !442, line: 1471, column: 13)
!3258 = !DILocation(line: 1472, column: 46, scope: !3257)
!3259 = !DILocation(line: 1472, column: 15, scope: !3257)
!3260 = !DILocation(line: 0, scope: !2176, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 1472, column: 15, scope: !3257)
!3262 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !3261)
!3263 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !3261)
!3264 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !3261)
!3265 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !3261)
!3266 = !DILocation(line: 99, column: 26, scope: !2364, inlinedAt: !3261)
!3267 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !3261)
!3268 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !3261)
!3269 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !3261)
!3270 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !3261)
!3271 = !DILocation(line: 1477, column: 11, scope: !3252)
!3272 = !DILocation(line: 0, scope: !2176, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 1477, column: 11, scope: !3252)
!3274 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !3273)
!3275 = !DILocation(line: 95, column: 14, scope: !2176, inlinedAt: !3273)
!3276 = !DILocation(line: 95, column: 13, scope: !2176, inlinedAt: !3273)
!3277 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !3273)
!3278 = !DILocation(line: 96, column: 16, scope: !2176, inlinedAt: !3273)
!3279 = !DILocation(line: 96, column: 15, scope: !2176, inlinedAt: !3273)
!3280 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !3273)
!3281 = !DILocation(line: 97, column: 15, scope: !2176, inlinedAt: !3273)
!3282 = !DILocation(line: 97, column: 14, scope: !2176, inlinedAt: !3273)
!3283 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !3273)
!3284 = !DILocation(line: 98, column: 18, scope: !2176, inlinedAt: !3273)
!3285 = !DILocation(line: 98, column: 17, scope: !2176, inlinedAt: !3273)
!3286 = !DILocation(line: 99, column: 26, scope: !2364, inlinedAt: !3273)
!3287 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !3273)
!3288 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !3273)
!3289 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !3273)
!3290 = !DILocation(line: 101, column: 17, scope: !2364, inlinedAt: !3273)
!3291 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !3273)
!3292 = !DILocation(line: 0, scope: !2391, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 1478, column: 11, scope: !3252)
!3294 = !DILocation(line: 161, column: 18, scope: !2391, inlinedAt: !3293)
!3295 = !DILocation(line: 161, column: 5, scope: !2391, inlinedAt: !3293)
!3296 = !DILocation(line: 160, column: 59, scope: !2391, inlinedAt: !3293)
!3297 = !DILocation(line: 160, column: 30, scope: !2391, inlinedAt: !3293)
!3298 = !DILocation(line: 161, column: 77, scope: !2391, inlinedAt: !3293)
!3299 = !DILocation(line: 161, column: 58, scope: !2391, inlinedAt: !3293)
!3300 = !DILocation(line: 0, scope: !2412, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 160, column: 3, scope: !2391, inlinedAt: !3293)
!3302 = !DILocation(line: 128, column: 23, scope: !2412, inlinedAt: !3301)
!3303 = !DILocation(line: 128, column: 9, scope: !2412, inlinedAt: !3301)
!3304 = !DILocation(line: 128, column: 6, scope: !2412, inlinedAt: !3301)
!3305 = !DILocation(line: 129, column: 23, scope: !2412, inlinedAt: !3301)
!3306 = !DILocation(line: 129, column: 9, scope: !2412, inlinedAt: !3301)
!3307 = !DILocation(line: 129, column: 6, scope: !2412, inlinedAt: !3301)
!3308 = !DILocation(line: 130, column: 24, scope: !2412, inlinedAt: !3301)
!3309 = !DILocation(line: 0, scope: !2433, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 130, column: 9, scope: !2412, inlinedAt: !3301)
!3311 = !DILocation(line: 35, column: 16, scope: !2433, inlinedAt: !3310)
!3312 = !DILocation(line: 35, column: 10, scope: !2433, inlinedAt: !3310)
!3313 = !DILocation(line: 35, column: 37, scope: !2433, inlinedAt: !3310)
!3314 = !DILocation(line: 35, column: 30, scope: !2433, inlinedAt: !3310)
!3315 = !DILocation(line: 131, column: 56, scope: !2412, inlinedAt: !3301)
!3316 = !DILocation(line: 131, column: 51, scope: !2412, inlinedAt: !3301)
!3317 = !DILocation(line: 131, column: 22, scope: !2412, inlinedAt: !3301)
!3318 = !DILocation(line: 131, column: 21, scope: !2412, inlinedAt: !3301)
!3319 = !DILocation(line: 0, scope: !2446, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 132, column: 9, scope: !2412, inlinedAt: !3301)
!3321 = !DILocation(line: 86, column: 10, scope: !2446, inlinedAt: !3320)
!3322 = !DILocation(line: 86, column: 8, scope: !2446, inlinedAt: !3320)
!3323 = !DILocation(line: 87, column: 12, scope: !2454, inlinedAt: !3320)
!3324 = !DILocation(line: 87, column: 16, scope: !2454, inlinedAt: !3320)
!3325 = !DILocation(line: 87, column: 7, scope: !2446, inlinedAt: !3320)
!3326 = !DILocation(line: 88, column: 15, scope: !2454, inlinedAt: !3320)
!3327 = !DILocation(line: 88, column: 5, scope: !2454, inlinedAt: !3320)
!3328 = !DILocation(line: 89, column: 14, scope: !2446, inlinedAt: !3320)
!3329 = !DILocation(line: 89, column: 3, scope: !2446, inlinedAt: !3320)
!3330 = !DILocation(line: 133, column: 37, scope: !2412, inlinedAt: !3301)
!3331 = !DILocation(line: 133, column: 34, scope: !2412, inlinedAt: !3301)
!3332 = !DILocation(line: 133, column: 24, scope: !2412, inlinedAt: !3301)
!3333 = !DILocation(line: 133, column: 23, scope: !2412, inlinedAt: !3301)
!3334 = !DILocation(line: 133, column: 18, scope: !2412, inlinedAt: !3301)
!3335 = !DILocation(line: 133, column: 17, scope: !2412, inlinedAt: !3301)
!3336 = !DILocation(line: 134, column: 41, scope: !2412, inlinedAt: !3301)
!3337 = !DILocation(line: 134, column: 38, scope: !2412, inlinedAt: !3301)
!3338 = !DILocation(line: 134, column: 26, scope: !2412, inlinedAt: !3301)
!3339 = !DILocation(line: 134, column: 25, scope: !2412, inlinedAt: !3301)
!3340 = !DILocation(line: 134, column: 20, scope: !2412, inlinedAt: !3301)
!3341 = !DILocation(line: 134, column: 19, scope: !2412, inlinedAt: !3301)
!3342 = !DILocation(line: 135, column: 39, scope: !2412, inlinedAt: !3301)
!3343 = !DILocation(line: 135, column: 36, scope: !2412, inlinedAt: !3301)
!3344 = !DILocation(line: 135, column: 25, scope: !2412, inlinedAt: !3301)
!3345 = !DILocation(line: 135, column: 24, scope: !2412, inlinedAt: !3301)
!3346 = !DILocation(line: 135, column: 19, scope: !2412, inlinedAt: !3301)
!3347 = !DILocation(line: 135, column: 18, scope: !2412, inlinedAt: !3301)
!3348 = !DILocation(line: 136, column: 7, scope: !2412, inlinedAt: !3301)
!3349 = !DILocation(line: 137, column: 43, scope: !2481, inlinedAt: !3301)
!3350 = !DILocation(line: 137, column: 40, scope: !2481, inlinedAt: !3301)
!3351 = !DILocation(line: 137, column: 28, scope: !2481, inlinedAt: !3301)
!3352 = !DILocation(line: 137, column: 27, scope: !2481, inlinedAt: !3301)
!3353 = !DILocation(line: 137, column: 22, scope: !2481, inlinedAt: !3301)
!3354 = !DILocation(line: 137, column: 21, scope: !2481, inlinedAt: !3301)
!3355 = !DILocation(line: 137, column: 5, scope: !2481, inlinedAt: !3301)
!3356 = !DILocation(line: 0, scope: !2489, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 1480, column: 11, scope: !3252)
!3358 = !DILocation(line: 0, scope: !1285, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3357)
!3360 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3359)
!3361 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3359)
!3362 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3359)
!3363 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3359)
!3364 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3359)
!3365 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3359)
!3366 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3359)
!3367 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3357)
!3368 = !DILocation(line: 0, scope: !1285, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3357)
!3370 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3369)
!3371 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3369)
!3372 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3369)
!3373 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3369)
!3374 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3369)
!3375 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3369)
!3376 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3369)
!3377 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3357)
!3378 = !DILocation(line: 0, scope: !1285, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3357)
!3380 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3379)
!3381 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3379)
!3382 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3379)
!3383 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3379)
!3384 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3379)
!3385 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3379)
!3386 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3379)
!3387 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3357)
!3388 = !DILocation(line: 0, scope: !1285, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3357)
!3390 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3389)
!3391 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3389)
!3392 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3389)
!3393 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3389)
!3394 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3389)
!3395 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3389)
!3396 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3389)
!3397 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3357)
!3398 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !3357)
!3399 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !3357)
!3400 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !3357)
!3401 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !3357)
!3402 = !DILocation(line: 1481, column: 39, scope: !3252)
!3403 = !DILocation(line: 1481, column: 49, scope: !3252)
!3404 = !DILocation(line: 0, scope: !2176, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1481, column: 11, scope: !3252)
!3406 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !3405)
!3407 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !3405)
!3408 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !3405)
!3409 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !3405)
!3410 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !3405)
!3411 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3357)
!3412 = !DILocation(line: 126, column: 5, scope: !2555, inlinedAt: !3357)
!3413 = !DILocation(line: 0, scope: !1285, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3357)
!3415 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3414)
!3416 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3414)
!3417 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3414)
!3418 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3414)
!3419 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3414)
!3420 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3414)
!3421 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3414)
!3422 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !3405)
!3423 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !3405)
!3424 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !3405)
!3425 = !DILocation(line: 0, scope: !3252)
!3426 = !DILocation(line: 1468, column: 42, scope: !3253)
!3427 = !DILocation(line: 1468, column: 21, scope: !3253)
!3428 = distinct !{!3428, !3248, !3429, !852, !853}
!3429 = !DILocation(line: 1482, column: 9, scope: !3249)
!3430 = !DILocation(line: 0, scope: !3243)
!3431 = !DILocation(line: 1484, column: 51, scope: !3243)
!3432 = !DILocation(line: 0, scope: !2391, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 1483, column: 9, scope: !3243)
!3434 = !DILocation(line: 161, column: 18, scope: !2391, inlinedAt: !3433)
!3435 = !DILocation(line: 161, column: 5, scope: !2391, inlinedAt: !3433)
!3436 = !DILocation(line: 160, column: 59, scope: !2391, inlinedAt: !3433)
!3437 = !DILocation(line: 160, column: 30, scope: !2391, inlinedAt: !3433)
!3438 = !DILocation(line: 161, column: 77, scope: !2391, inlinedAt: !3433)
!3439 = !DILocation(line: 161, column: 58, scope: !2391, inlinedAt: !3433)
!3440 = !DILocation(line: 0, scope: !2412, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 160, column: 3, scope: !2391, inlinedAt: !3433)
!3442 = !DILocation(line: 128, column: 23, scope: !2412, inlinedAt: !3441)
!3443 = !DILocation(line: 128, column: 9, scope: !2412, inlinedAt: !3441)
!3444 = !DILocation(line: 128, column: 6, scope: !2412, inlinedAt: !3441)
!3445 = !DILocation(line: 129, column: 23, scope: !2412, inlinedAt: !3441)
!3446 = !DILocation(line: 129, column: 9, scope: !2412, inlinedAt: !3441)
!3447 = !DILocation(line: 129, column: 6, scope: !2412, inlinedAt: !3441)
!3448 = !DILocation(line: 130, column: 24, scope: !2412, inlinedAt: !3441)
!3449 = !DILocation(line: 0, scope: !2433, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 130, column: 9, scope: !2412, inlinedAt: !3441)
!3451 = !DILocation(line: 35, column: 16, scope: !2433, inlinedAt: !3450)
!3452 = !DILocation(line: 35, column: 10, scope: !2433, inlinedAt: !3450)
!3453 = !DILocation(line: 35, column: 37, scope: !2433, inlinedAt: !3450)
!3454 = !DILocation(line: 35, column: 30, scope: !2433, inlinedAt: !3450)
!3455 = !DILocation(line: 131, column: 56, scope: !2412, inlinedAt: !3441)
!3456 = !DILocation(line: 131, column: 51, scope: !2412, inlinedAt: !3441)
!3457 = !DILocation(line: 131, column: 22, scope: !2412, inlinedAt: !3441)
!3458 = !DILocation(line: 131, column: 21, scope: !2412, inlinedAt: !3441)
!3459 = !DILocation(line: 0, scope: !2446, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 132, column: 9, scope: !2412, inlinedAt: !3441)
!3461 = !DILocation(line: 86, column: 10, scope: !2446, inlinedAt: !3460)
!3462 = !DILocation(line: 86, column: 8, scope: !2446, inlinedAt: !3460)
!3463 = !DILocation(line: 87, column: 12, scope: !2454, inlinedAt: !3460)
!3464 = !DILocation(line: 87, column: 16, scope: !2454, inlinedAt: !3460)
!3465 = !DILocation(line: 87, column: 7, scope: !2446, inlinedAt: !3460)
!3466 = !DILocation(line: 88, column: 15, scope: !2454, inlinedAt: !3460)
!3467 = !DILocation(line: 88, column: 5, scope: !2454, inlinedAt: !3460)
!3468 = !DILocation(line: 89, column: 14, scope: !2446, inlinedAt: !3460)
!3469 = !DILocation(line: 89, column: 3, scope: !2446, inlinedAt: !3460)
!3470 = !DILocation(line: 133, column: 41, scope: !2412, inlinedAt: !3441)
!3471 = !DILocation(line: 133, column: 37, scope: !2412, inlinedAt: !3441)
!3472 = !DILocation(line: 133, column: 34, scope: !2412, inlinedAt: !3441)
!3473 = !DILocation(line: 133, column: 24, scope: !2412, inlinedAt: !3441)
!3474 = !DILocation(line: 133, column: 23, scope: !2412, inlinedAt: !3441)
!3475 = !DILocation(line: 133, column: 18, scope: !2412, inlinedAt: !3441)
!3476 = !DILocation(line: 133, column: 17, scope: !2412, inlinedAt: !3441)
!3477 = !DILocation(line: 134, column: 45, scope: !2412, inlinedAt: !3441)
!3478 = !DILocation(line: 134, column: 41, scope: !2412, inlinedAt: !3441)
!3479 = !DILocation(line: 134, column: 38, scope: !2412, inlinedAt: !3441)
!3480 = !DILocation(line: 134, column: 26, scope: !2412, inlinedAt: !3441)
!3481 = !DILocation(line: 134, column: 25, scope: !2412, inlinedAt: !3441)
!3482 = !DILocation(line: 134, column: 20, scope: !2412, inlinedAt: !3441)
!3483 = !DILocation(line: 134, column: 19, scope: !2412, inlinedAt: !3441)
!3484 = !DILocation(line: 135, column: 43, scope: !2412, inlinedAt: !3441)
!3485 = !DILocation(line: 135, column: 39, scope: !2412, inlinedAt: !3441)
!3486 = !DILocation(line: 135, column: 36, scope: !2412, inlinedAt: !3441)
!3487 = !DILocation(line: 135, column: 25, scope: !2412, inlinedAt: !3441)
!3488 = !DILocation(line: 135, column: 24, scope: !2412, inlinedAt: !3441)
!3489 = !DILocation(line: 135, column: 19, scope: !2412, inlinedAt: !3441)
!3490 = !DILocation(line: 135, column: 18, scope: !2412, inlinedAt: !3441)
!3491 = !DILocation(line: 136, column: 10, scope: !2481, inlinedAt: !3441)
!3492 = !DILocation(line: 136, column: 21, scope: !2481, inlinedAt: !3441)
!3493 = !DILocation(line: 136, column: 7, scope: !2412, inlinedAt: !3441)
!3494 = !DILocation(line: 137, column: 47, scope: !2481, inlinedAt: !3441)
!3495 = !DILocation(line: 137, column: 43, scope: !2481, inlinedAt: !3441)
!3496 = !DILocation(line: 137, column: 40, scope: !2481, inlinedAt: !3441)
!3497 = !DILocation(line: 137, column: 28, scope: !2481, inlinedAt: !3441)
!3498 = !DILocation(line: 137, column: 27, scope: !2481, inlinedAt: !3441)
!3499 = !DILocation(line: 137, column: 22, scope: !2481, inlinedAt: !3441)
!3500 = !DILocation(line: 137, column: 21, scope: !2481, inlinedAt: !3441)
!3501 = !DILocation(line: 137, column: 5, scope: !2481, inlinedAt: !3441)
!3502 = !DILocation(line: 0, scope: !2489, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1485, column: 9, scope: !3243)
!3504 = !DILocation(line: 0, scope: !1285, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3503)
!3506 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3505)
!3507 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3505)
!3508 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3505)
!3509 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3505)
!3510 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3505)
!3511 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3505)
!3512 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3505)
!3513 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3503)
!3514 = !DILocation(line: 0, scope: !1285, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3503)
!3516 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3515)
!3517 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3515)
!3518 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3515)
!3519 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3515)
!3520 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3515)
!3521 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3515)
!3522 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3515)
!3523 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3503)
!3524 = !DILocation(line: 0, scope: !1285, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3503)
!3526 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3525)
!3527 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3525)
!3528 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3525)
!3529 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3525)
!3530 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3525)
!3531 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3525)
!3532 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3525)
!3533 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3503)
!3534 = !DILocation(line: 0, scope: !1285, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3503)
!3536 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3535)
!3537 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3535)
!3538 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3535)
!3539 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3535)
!3540 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3535)
!3541 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3535)
!3542 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3535)
!3543 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3503)
!3544 = !DILocation(line: 124, column: 15, scope: !2539, inlinedAt: !3503)
!3545 = !DILocation(line: 124, column: 26, scope: !2539, inlinedAt: !3503)
!3546 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !3503)
!3547 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !3503)
!3548 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !3503)
!3549 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !3503)
!3550 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3503)
!3551 = !DILocation(line: 126, column: 5, scope: !2555, inlinedAt: !3503)
!3552 = !DILocation(line: 0, scope: !1285, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3503)
!3554 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3553)
!3555 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3553)
!3556 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3553)
!3557 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3553)
!3558 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3553)
!3559 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3553)
!3560 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3553)
!3561 = !DILocation(line: 1486, column: 21, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !442, line: 1486, column: 9)
!3563 = distinct !DILexicalBlock(scope: !3243, file: !442, line: 1486, column: 9)
!3564 = !DILocation(line: 1486, column: 9, scope: !3563)
!3565 = !DILocation(line: 0, scope: !2489, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 1487, column: 11, scope: !3562)
!3567 = !DILocation(line: 0, scope: !1285, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3566)
!3569 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3566)
!3570 = !DILocation(line: 0, scope: !1285, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3566)
!3572 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3566)
!3573 = !DILocation(line: 0, scope: !1285, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3566)
!3575 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3566)
!3576 = !DILocation(line: 0, scope: !1285, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3566)
!3578 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3566)
!3579 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !3566)
!3580 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !3566)
!3581 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !3566)
!3582 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !3566)
!3583 = !DILocation(line: 0, scope: !1285, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3566)
!3585 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3566)
!3586 = !DILocation(line: 1486, column: 34, scope: !3562)
!3587 = distinct !{!3587, !3564, !3588, !852, !853}
!3588 = !DILocation(line: 1487, column: 63, scope: !3563)
!3589 = !DILocation(line: 1495, column: 10, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3244, file: !442, line: 1491, column: 7)
!3591 = !DILocation(line: 1496, column: 16, scope: !3590)
!3592 = !DILocation(line: 1497, column: 12, scope: !3590)
!3593 = !DILocation(line: 1498, column: 30, scope: !3590)
!3594 = !DILocation(line: 1499, column: 9, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3590, file: !442, line: 1499, column: 9)
!3596 = !DILocation(line: 160, column: 65, scope: !2391, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 1513, column: 9, scope: !3590)
!3598 = !DILocation(line: 160, column: 64, scope: !2391, inlinedAt: !3597)
!3599 = !DILocation(line: 160, column: 59, scope: !2391, inlinedAt: !3597)
!3600 = !DILocation(line: 161, column: 58, scope: !2391, inlinedAt: !3597)
!3601 = !DILocation(line: 1501, column: 12, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !442, line: 1500, column: 9)
!3603 = distinct !DILexicalBlock(scope: !3595, file: !442, line: 1499, column: 9)
!3604 = !DILocation(line: 1502, column: 18, scope: !3602)
!3605 = !DILocation(line: 1503, column: 12, scope: !3602)
!3606 = !DILocation(line: 1504, column: 24, scope: !3602)
!3607 = !DILocation(line: 1505, column: 45, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3602, file: !442, line: 1505, column: 15)
!3609 = !DILocation(line: 1505, column: 49, scope: !3608)
!3610 = !DILocation(line: 1505, column: 15, scope: !3602)
!3611 = !DILocation(line: 1507, column: 11, scope: !3602)
!3612 = !DILocation(line: 0, scope: !2176, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 1507, column: 11, scope: !3602)
!3614 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !3613)
!3615 = !DILocation(line: 95, column: 14, scope: !2176, inlinedAt: !3613)
!3616 = !DILocation(line: 95, column: 13, scope: !2176, inlinedAt: !3613)
!3617 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !3613)
!3618 = !DILocation(line: 96, column: 16, scope: !2176, inlinedAt: !3613)
!3619 = !DILocation(line: 96, column: 15, scope: !2176, inlinedAt: !3613)
!3620 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !3613)
!3621 = !DILocation(line: 97, column: 15, scope: !2176, inlinedAt: !3613)
!3622 = !DILocation(line: 97, column: 14, scope: !2176, inlinedAt: !3613)
!3623 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !3613)
!3624 = !DILocation(line: 98, column: 18, scope: !2176, inlinedAt: !3613)
!3625 = !DILocation(line: 98, column: 17, scope: !2176, inlinedAt: !3613)
!3626 = !DILocation(line: 99, column: 26, scope: !2364, inlinedAt: !3613)
!3627 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !3613)
!3628 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !3613)
!3629 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !3613)
!3630 = !DILocation(line: 101, column: 17, scope: !2364, inlinedAt: !3613)
!3631 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !3613)
!3632 = !DILocation(line: 0, scope: !2391, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 1508, column: 11, scope: !3602)
!3634 = !DILocation(line: 161, column: 18, scope: !2391, inlinedAt: !3633)
!3635 = !DILocation(line: 161, column: 5, scope: !2391, inlinedAt: !3633)
!3636 = !DILocation(line: 160, column: 59, scope: !2391, inlinedAt: !3633)
!3637 = !DILocation(line: 160, column: 30, scope: !2391, inlinedAt: !3633)
!3638 = !DILocation(line: 161, column: 77, scope: !2391, inlinedAt: !3633)
!3639 = !DILocation(line: 161, column: 58, scope: !2391, inlinedAt: !3633)
!3640 = !DILocation(line: 0, scope: !2412, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 160, column: 3, scope: !2391, inlinedAt: !3633)
!3642 = !DILocation(line: 128, column: 23, scope: !2412, inlinedAt: !3641)
!3643 = !DILocation(line: 128, column: 9, scope: !2412, inlinedAt: !3641)
!3644 = !DILocation(line: 128, column: 6, scope: !2412, inlinedAt: !3641)
!3645 = !DILocation(line: 129, column: 23, scope: !2412, inlinedAt: !3641)
!3646 = !DILocation(line: 129, column: 9, scope: !2412, inlinedAt: !3641)
!3647 = !DILocation(line: 129, column: 6, scope: !2412, inlinedAt: !3641)
!3648 = !DILocation(line: 130, column: 24, scope: !2412, inlinedAt: !3641)
!3649 = !DILocation(line: 0, scope: !2433, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 130, column: 9, scope: !2412, inlinedAt: !3641)
!3651 = !DILocation(line: 35, column: 16, scope: !2433, inlinedAt: !3650)
!3652 = !DILocation(line: 35, column: 10, scope: !2433, inlinedAt: !3650)
!3653 = !DILocation(line: 35, column: 37, scope: !2433, inlinedAt: !3650)
!3654 = !DILocation(line: 35, column: 30, scope: !2433, inlinedAt: !3650)
!3655 = !DILocation(line: 131, column: 56, scope: !2412, inlinedAt: !3641)
!3656 = !DILocation(line: 131, column: 51, scope: !2412, inlinedAt: !3641)
!3657 = !DILocation(line: 131, column: 22, scope: !2412, inlinedAt: !3641)
!3658 = !DILocation(line: 131, column: 21, scope: !2412, inlinedAt: !3641)
!3659 = !DILocation(line: 0, scope: !2446, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 132, column: 9, scope: !2412, inlinedAt: !3641)
!3661 = !DILocation(line: 86, column: 10, scope: !2446, inlinedAt: !3660)
!3662 = !DILocation(line: 86, column: 8, scope: !2446, inlinedAt: !3660)
!3663 = !DILocation(line: 87, column: 12, scope: !2454, inlinedAt: !3660)
!3664 = !DILocation(line: 87, column: 16, scope: !2454, inlinedAt: !3660)
!3665 = !DILocation(line: 87, column: 7, scope: !2446, inlinedAt: !3660)
!3666 = !DILocation(line: 88, column: 15, scope: !2454, inlinedAt: !3660)
!3667 = !DILocation(line: 88, column: 5, scope: !2454, inlinedAt: !3660)
!3668 = !DILocation(line: 89, column: 14, scope: !2446, inlinedAt: !3660)
!3669 = !DILocation(line: 89, column: 3, scope: !2446, inlinedAt: !3660)
!3670 = !DILocation(line: 133, column: 37, scope: !2412, inlinedAt: !3641)
!3671 = !DILocation(line: 133, column: 34, scope: !2412, inlinedAt: !3641)
!3672 = !DILocation(line: 133, column: 24, scope: !2412, inlinedAt: !3641)
!3673 = !DILocation(line: 133, column: 23, scope: !2412, inlinedAt: !3641)
!3674 = !DILocation(line: 133, column: 18, scope: !2412, inlinedAt: !3641)
!3675 = !DILocation(line: 133, column: 17, scope: !2412, inlinedAt: !3641)
!3676 = !DILocation(line: 134, column: 41, scope: !2412, inlinedAt: !3641)
!3677 = !DILocation(line: 134, column: 38, scope: !2412, inlinedAt: !3641)
!3678 = !DILocation(line: 134, column: 26, scope: !2412, inlinedAt: !3641)
!3679 = !DILocation(line: 134, column: 25, scope: !2412, inlinedAt: !3641)
!3680 = !DILocation(line: 134, column: 20, scope: !2412, inlinedAt: !3641)
!3681 = !DILocation(line: 134, column: 19, scope: !2412, inlinedAt: !3641)
!3682 = !DILocation(line: 135, column: 39, scope: !2412, inlinedAt: !3641)
!3683 = !DILocation(line: 135, column: 36, scope: !2412, inlinedAt: !3641)
!3684 = !DILocation(line: 135, column: 25, scope: !2412, inlinedAt: !3641)
!3685 = !DILocation(line: 135, column: 24, scope: !2412, inlinedAt: !3641)
!3686 = !DILocation(line: 135, column: 19, scope: !2412, inlinedAt: !3641)
!3687 = !DILocation(line: 135, column: 18, scope: !2412, inlinedAt: !3641)
!3688 = !DILocation(line: 136, column: 7, scope: !2412, inlinedAt: !3641)
!3689 = !DILocation(line: 137, column: 43, scope: !2481, inlinedAt: !3641)
!3690 = !DILocation(line: 137, column: 40, scope: !2481, inlinedAt: !3641)
!3691 = !DILocation(line: 137, column: 28, scope: !2481, inlinedAt: !3641)
!3692 = !DILocation(line: 137, column: 27, scope: !2481, inlinedAt: !3641)
!3693 = !DILocation(line: 137, column: 22, scope: !2481, inlinedAt: !3641)
!3694 = !DILocation(line: 137, column: 21, scope: !2481, inlinedAt: !3641)
!3695 = !DILocation(line: 137, column: 5, scope: !2481, inlinedAt: !3641)
!3696 = !DILocation(line: 0, scope: !2489, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1510, column: 11, scope: !3602)
!3698 = !DILocation(line: 0, scope: !1285, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3697)
!3700 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3699)
!3701 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3699)
!3702 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3699)
!3703 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3699)
!3704 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3699)
!3705 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3699)
!3706 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3699)
!3707 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3697)
!3708 = !DILocation(line: 0, scope: !1285, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3697)
!3710 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3709)
!3711 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3709)
!3712 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3709)
!3713 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3709)
!3714 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3709)
!3715 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3709)
!3716 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3709)
!3717 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3697)
!3718 = !DILocation(line: 0, scope: !1285, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3697)
!3720 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3719)
!3721 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3719)
!3722 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3719)
!3723 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3719)
!3724 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3719)
!3725 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3719)
!3726 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3719)
!3727 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3697)
!3728 = !DILocation(line: 0, scope: !1285, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3697)
!3730 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3729)
!3731 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3729)
!3732 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3729)
!3733 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3729)
!3734 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3729)
!3735 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3729)
!3736 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3729)
!3737 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3697)
!3738 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !3697)
!3739 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !3697)
!3740 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !3697)
!3741 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !3697)
!3742 = !DILocation(line: 0, scope: !1285, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3697)
!3744 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3743)
!3745 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3743)
!3746 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3743)
!3747 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3743)
!3748 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3743)
!3749 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3743)
!3750 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3743)
!3751 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3697)
!3752 = !DILocation(line: 0, scope: !2176, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 1511, column: 11, scope: !3602)
!3754 = !DILocation(line: 95, column: 31, scope: !2176, inlinedAt: !3753)
!3755 = !DILocation(line: 95, column: 14, scope: !2176, inlinedAt: !3753)
!3756 = !DILocation(line: 96, column: 33, scope: !2176, inlinedAt: !3753)
!3757 = !DILocation(line: 96, column: 16, scope: !2176, inlinedAt: !3753)
!3758 = !DILocation(line: 97, column: 32, scope: !2176, inlinedAt: !3753)
!3759 = !DILocation(line: 97, column: 15, scope: !2176, inlinedAt: !3753)
!3760 = !DILocation(line: 98, column: 35, scope: !2176, inlinedAt: !3753)
!3761 = !DILocation(line: 98, column: 18, scope: !2176, inlinedAt: !3753)
!3762 = !DILocation(line: 99, column: 45, scope: !2364, inlinedAt: !3753)
!3763 = !DILocation(line: 101, column: 35, scope: !2364, inlinedAt: !3753)
!3764 = !DILocation(line: 101, column: 18, scope: !2364, inlinedAt: !3753)
!3765 = !DILocation(line: 101, column: 5, scope: !2364, inlinedAt: !3753)
!3766 = !DILocation(line: 1499, column: 42, scope: !3603)
!3767 = !DILocation(line: 1499, column: 21, scope: !3603)
!3768 = distinct !{!3768, !3594, !3769, !852, !853}
!3769 = !DILocation(line: 1512, column: 9, scope: !3595)
!3770 = !DILocation(line: 0, scope: !3590)
!3771 = !DILocation(line: 1514, column: 51, scope: !3590)
!3772 = !DILocation(line: 0, scope: !2391, inlinedAt: !3597)
!3773 = !DILocation(line: 161, column: 18, scope: !2391, inlinedAt: !3597)
!3774 = !DILocation(line: 161, column: 5, scope: !2391, inlinedAt: !3597)
!3775 = !DILocation(line: 160, column: 30, scope: !2391, inlinedAt: !3597)
!3776 = !DILocation(line: 161, column: 77, scope: !2391, inlinedAt: !3597)
!3777 = !DILocation(line: 0, scope: !2412, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 160, column: 3, scope: !2391, inlinedAt: !3597)
!3779 = !DILocation(line: 128, column: 23, scope: !2412, inlinedAt: !3778)
!3780 = !DILocation(line: 128, column: 9, scope: !2412, inlinedAt: !3778)
!3781 = !DILocation(line: 128, column: 6, scope: !2412, inlinedAt: !3778)
!3782 = !DILocation(line: 129, column: 23, scope: !2412, inlinedAt: !3778)
!3783 = !DILocation(line: 129, column: 9, scope: !2412, inlinedAt: !3778)
!3784 = !DILocation(line: 129, column: 6, scope: !2412, inlinedAt: !3778)
!3785 = !DILocation(line: 130, column: 24, scope: !2412, inlinedAt: !3778)
!3786 = !DILocation(line: 0, scope: !2433, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 130, column: 9, scope: !2412, inlinedAt: !3778)
!3788 = !DILocation(line: 35, column: 16, scope: !2433, inlinedAt: !3787)
!3789 = !DILocation(line: 35, column: 10, scope: !2433, inlinedAt: !3787)
!3790 = !DILocation(line: 35, column: 37, scope: !2433, inlinedAt: !3787)
!3791 = !DILocation(line: 35, column: 30, scope: !2433, inlinedAt: !3787)
!3792 = !DILocation(line: 131, column: 56, scope: !2412, inlinedAt: !3778)
!3793 = !DILocation(line: 131, column: 51, scope: !2412, inlinedAt: !3778)
!3794 = !DILocation(line: 131, column: 22, scope: !2412, inlinedAt: !3778)
!3795 = !DILocation(line: 131, column: 21, scope: !2412, inlinedAt: !3778)
!3796 = !DILocation(line: 0, scope: !2446, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 132, column: 9, scope: !2412, inlinedAt: !3778)
!3798 = !DILocation(line: 86, column: 10, scope: !2446, inlinedAt: !3797)
!3799 = !DILocation(line: 86, column: 8, scope: !2446, inlinedAt: !3797)
!3800 = !DILocation(line: 87, column: 12, scope: !2454, inlinedAt: !3797)
!3801 = !DILocation(line: 87, column: 16, scope: !2454, inlinedAt: !3797)
!3802 = !DILocation(line: 87, column: 7, scope: !2446, inlinedAt: !3797)
!3803 = !DILocation(line: 88, column: 15, scope: !2454, inlinedAt: !3797)
!3804 = !DILocation(line: 88, column: 5, scope: !2454, inlinedAt: !3797)
!3805 = !DILocation(line: 89, column: 14, scope: !2446, inlinedAt: !3797)
!3806 = !DILocation(line: 89, column: 3, scope: !2446, inlinedAt: !3797)
!3807 = !DILocation(line: 133, column: 41, scope: !2412, inlinedAt: !3778)
!3808 = !DILocation(line: 133, column: 37, scope: !2412, inlinedAt: !3778)
!3809 = !DILocation(line: 133, column: 34, scope: !2412, inlinedAt: !3778)
!3810 = !DILocation(line: 133, column: 24, scope: !2412, inlinedAt: !3778)
!3811 = !DILocation(line: 133, column: 23, scope: !2412, inlinedAt: !3778)
!3812 = !DILocation(line: 133, column: 18, scope: !2412, inlinedAt: !3778)
!3813 = !DILocation(line: 133, column: 17, scope: !2412, inlinedAt: !3778)
!3814 = !DILocation(line: 134, column: 45, scope: !2412, inlinedAt: !3778)
!3815 = !DILocation(line: 134, column: 41, scope: !2412, inlinedAt: !3778)
!3816 = !DILocation(line: 134, column: 38, scope: !2412, inlinedAt: !3778)
!3817 = !DILocation(line: 134, column: 26, scope: !2412, inlinedAt: !3778)
!3818 = !DILocation(line: 134, column: 25, scope: !2412, inlinedAt: !3778)
!3819 = !DILocation(line: 134, column: 20, scope: !2412, inlinedAt: !3778)
!3820 = !DILocation(line: 134, column: 19, scope: !2412, inlinedAt: !3778)
!3821 = !DILocation(line: 135, column: 43, scope: !2412, inlinedAt: !3778)
!3822 = !DILocation(line: 135, column: 39, scope: !2412, inlinedAt: !3778)
!3823 = !DILocation(line: 135, column: 36, scope: !2412, inlinedAt: !3778)
!3824 = !DILocation(line: 135, column: 25, scope: !2412, inlinedAt: !3778)
!3825 = !DILocation(line: 135, column: 24, scope: !2412, inlinedAt: !3778)
!3826 = !DILocation(line: 135, column: 19, scope: !2412, inlinedAt: !3778)
!3827 = !DILocation(line: 135, column: 18, scope: !2412, inlinedAt: !3778)
!3828 = !DILocation(line: 136, column: 10, scope: !2481, inlinedAt: !3778)
!3829 = !DILocation(line: 136, column: 21, scope: !2481, inlinedAt: !3778)
!3830 = !DILocation(line: 136, column: 7, scope: !2412, inlinedAt: !3778)
!3831 = !DILocation(line: 137, column: 47, scope: !2481, inlinedAt: !3778)
!3832 = !DILocation(line: 137, column: 43, scope: !2481, inlinedAt: !3778)
!3833 = !DILocation(line: 137, column: 40, scope: !2481, inlinedAt: !3778)
!3834 = !DILocation(line: 137, column: 28, scope: !2481, inlinedAt: !3778)
!3835 = !DILocation(line: 137, column: 27, scope: !2481, inlinedAt: !3778)
!3836 = !DILocation(line: 137, column: 22, scope: !2481, inlinedAt: !3778)
!3837 = !DILocation(line: 137, column: 21, scope: !2481, inlinedAt: !3778)
!3838 = !DILocation(line: 137, column: 5, scope: !2481, inlinedAt: !3778)
!3839 = !DILocation(line: 1515, column: 43, scope: !3590)
!3840 = !DILocation(line: 1515, column: 47, scope: !3590)
!3841 = !DILocation(line: 0, scope: !2489, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 1515, column: 9, scope: !3590)
!3843 = !DILocation(line: 0, scope: !1285, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3842)
!3845 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3844)
!3846 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3844)
!3847 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3844)
!3848 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3844)
!3849 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3844)
!3850 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3844)
!3851 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3844)
!3852 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3842)
!3853 = !DILocation(line: 0, scope: !1285, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3842)
!3855 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3854)
!3856 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3854)
!3857 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3854)
!3858 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3854)
!3859 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3854)
!3860 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3854)
!3861 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3854)
!3862 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3842)
!3863 = !DILocation(line: 0, scope: !1285, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3842)
!3865 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3864)
!3866 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3864)
!3867 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3864)
!3868 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3864)
!3869 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3864)
!3870 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3864)
!3871 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3864)
!3872 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3842)
!3873 = !DILocation(line: 0, scope: !1285, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3842)
!3875 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3874)
!3876 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3874)
!3877 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3874)
!3878 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3874)
!3879 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3874)
!3880 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3874)
!3881 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3874)
!3882 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3842)
!3883 = !DILocation(line: 124, column: 15, scope: !2539, inlinedAt: !3842)
!3884 = !DILocation(line: 124, column: 26, scope: !2539, inlinedAt: !3842)
!3885 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !3842)
!3886 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !3842)
!3887 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !3842)
!3888 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !3842)
!3889 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3842)
!3890 = !DILocation(line: 0, scope: !1285, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3842)
!3892 = !DILocation(line: 92, column: 13, scope: !1292, inlinedAt: !3891)
!3893 = !DILocation(line: 92, column: 7, scope: !1285, inlinedAt: !3891)
!3894 = !DILocation(line: 94, column: 13, scope: !1295, inlinedAt: !3891)
!3895 = !DILocation(line: 94, column: 7, scope: !1285, inlinedAt: !3891)
!3896 = !DILocation(line: 96, column: 26, scope: !1285, inlinedAt: !3891)
!3897 = !DILocation(line: 96, column: 10, scope: !1285, inlinedAt: !3891)
!3898 = !DILocation(line: 96, column: 3, scope: !1285, inlinedAt: !3891)
!3899 = !DILocation(line: 1516, column: 21, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !442, line: 1516, column: 9)
!3901 = distinct !DILexicalBlock(scope: !3590, file: !442, line: 1516, column: 9)
!3902 = !DILocation(line: 1516, column: 9, scope: !3901)
!3903 = !DILocation(line: 1517, column: 44, scope: !3900)
!3904 = !DILocation(line: 1517, column: 48, scope: !3900)
!3905 = !DILocation(line: 0, scope: !2489, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 1517, column: 11, scope: !3900)
!3907 = !DILocation(line: 0, scope: !1285, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3906)
!3909 = !DILocation(line: 120, column: 3, scope: !2489, inlinedAt: !3906)
!3910 = !DILocation(line: 0, scope: !1285, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3906)
!3912 = !DILocation(line: 121, column: 3, scope: !2489, inlinedAt: !3906)
!3913 = !DILocation(line: 0, scope: !1285, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3906)
!3915 = !DILocation(line: 122, column: 3, scope: !2489, inlinedAt: !3906)
!3916 = !DILocation(line: 0, scope: !1285, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3906)
!3918 = !DILocation(line: 123, column: 3, scope: !2489, inlinedAt: !3906)
!3919 = !DILocation(line: 124, column: 45, scope: !2539, inlinedAt: !3906)
!3920 = !DILocation(line: 125, column: 15, scope: !2539, inlinedAt: !3906)
!3921 = !DILocation(line: 125, column: 29, scope: !2539, inlinedAt: !3906)
!3922 = !DILocation(line: 124, column: 7, scope: !2489, inlinedAt: !3906)
!3923 = !DILocation(line: 0, scope: !1285, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3906)
!3925 = !DILocation(line: 126, column: 5, scope: !2554, inlinedAt: !3906)
!3926 = !DILocation(line: 1516, column: 34, scope: !3900)
!3927 = distinct !{!3927, !3902, !3928, !852, !853}
!3928 = !DILocation(line: 1517, column: 63, scope: !3901)
!3929 = !DILocation(line: 1521, column: 9, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !745, file: !442, line: 1521, column: 9)
!3931 = !DILocation(line: 1521, column: 60, scope: !3930)
!3932 = !DILocation(line: 1521, column: 9, scope: !745)
!3933 = !DILocation(line: 1523, column: 16, scope: !762)
!3934 = !DILocation(line: 1523, column: 33, scope: !762)
!3935 = !DILocation(line: 1523, column: 9, scope: !745)
!3936 = !DILocation(line: 1531, column: 63, scope: !761)
!3937 = !DILocation(line: 1531, column: 73, scope: !761)
!3938 = !DILocation(line: 0, scope: !1662, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 1531, column: 17, scope: !761)
!3940 = !DILocation(line: 30, column: 3, scope: !1662, inlinedAt: !3939)
!3941 = !DILocation(line: 31, column: 5, scope: !1662, inlinedAt: !3939)
!3942 = !DILocation(line: 35, column: 10, scope: !1662, inlinedAt: !3939)
!3943 = !DILocation(line: 36, column: 17, scope: !1662, inlinedAt: !3939)
!3944 = !DILocation(line: 36, column: 63, scope: !1662, inlinedAt: !3939)
!3945 = !DILocation(line: 36, column: 10, scope: !1662, inlinedAt: !3939)
!3946 = !DILocation(line: 37, column: 1, scope: !1662, inlinedAt: !3939)
!3947 = !DILocation(line: 0, scope: !761)
!3948 = !DILocation(line: 1532, column: 21, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !761, file: !442, line: 1532, column: 13)
!3950 = !DILocation(line: 1532, column: 13, scope: !761)
!3951 = !DILocation(line: 1534, column: 7, scope: !761)
!3952 = !DILocation(line: 1535, column: 3, scope: !746)
!3953 = !DILocation(line: 1401, column: 35, scope: !746)
!3954 = distinct !{!3954, !3203, !3955, !852, !853}
!3955 = !DILocation(line: 1535, column: 3, scope: !747)
!3956 = !DILocation(line: 1394, column: 9, scope: !730)
!3957 = !DILocation(line: 1536, column: 14, scope: !730)
!3958 = !DILocation(line: 1538, column: 1, scope: !730)
!3959 = !DILocation(line: 1537, column: 3, scope: !730)
!3960 = distinct !DISubprogram(name: "CropToFitImage", scope: !442, file: !442, line: 113, type: !3961, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3964)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!446, !3963, !668, !668, !668, !668, !1405, !673}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3977, !3978, !3979, !3980, !3981}
!3965 = !DILocalVariable(name: "image", arg: 1, scope: !3960, file: !442, line: 113, type: !3963)
!3966 = !DILocalVariable(name: "x_shear", arg: 2, scope: !3960, file: !442, line: 114, type: !668)
!3967 = !DILocalVariable(name: "y_shear", arg: 3, scope: !3960, file: !442, line: 114, type: !668)
!3968 = !DILocalVariable(name: "width", arg: 4, scope: !3960, file: !442, line: 115, type: !668)
!3969 = !DILocalVariable(name: "height", arg: 5, scope: !3960, file: !442, line: 115, type: !668)
!3970 = !DILocalVariable(name: "rotate", arg: 6, scope: !3960, file: !442, line: 116, type: !1405)
!3971 = !DILocalVariable(name: "exception", arg: 7, scope: !3960, file: !442, line: 116, type: !673)
!3972 = !DILocalVariable(name: "crop_image", scope: !3960, file: !442, line: 119, type: !447)
!3973 = !DILocalVariable(name: "extent", scope: !3960, file: !442, line: 122, type: !3974)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1980, size: 512, elements: !3975)
!3975 = !{!3976}
!3976 = !DISubrange(count: 4)
!3977 = !DILocalVariable(name: "min", scope: !3960, file: !442, line: 123, type: !1980)
!3978 = !DILocalVariable(name: "max", scope: !3960, file: !442, line: 124, type: !1980)
!3979 = !DILocalVariable(name: "geometry", scope: !3960, file: !442, line: 127, type: !519)
!3980 = !DILocalVariable(name: "page", scope: !3960, file: !442, line: 128, type: !519)
!3981 = !DILocalVariable(name: "i", scope: !3960, file: !442, line: 131, type: !511)
!3982 = !DILocation(line: 0, scope: !3960)
!3983 = !DILocation(line: 121, column: 3, scope: !3960)
!3984 = !DILocation(line: 122, column: 5, scope: !3960)
!3985 = !DILocation(line: 126, column: 3, scope: !3960)
!3986 = !DILocation(line: 127, column: 5, scope: !3960)
!3987 = !DILocation(line: 128, column: 5, scope: !3960)
!3988 = !DILocation(line: 136, column: 25, scope: !3960)
!3989 = !DILocation(line: 136, column: 31, scope: !3960)
!3990 = !DILocation(line: 136, column: 14, scope: !3960)
!3991 = !{!3992, !832, i64 0}
!3992 = !{!"_PointInfo", !832, i64 0, !832, i64 8}
!3993 = !DILocation(line: 137, column: 25, scope: !3960)
!3994 = !DILocation(line: 137, column: 32, scope: !3960)
!3995 = !DILocation(line: 137, column: 13, scope: !3960)
!3996 = !DILocation(line: 137, column: 14, scope: !3960)
!3997 = !{!3992, !832, i64 8}
!3998 = !DILocation(line: 138, column: 15, scope: !3960)
!3999 = !DILocation(line: 138, column: 29, scope: !3960)
!4000 = !DILocation(line: 138, column: 3, scope: !3960)
!4001 = !DILocation(line: 138, column: 14, scope: !3960)
!4002 = !DILocation(line: 139, column: 13, scope: !3960)
!4003 = !DILocation(line: 139, column: 14, scope: !3960)
!4004 = !DILocation(line: 140, column: 3, scope: !3960)
!4005 = !DILocation(line: 140, column: 14, scope: !3960)
!4006 = !DILocation(line: 141, column: 15, scope: !3960)
!4007 = !DILocation(line: 141, column: 30, scope: !3960)
!4008 = !DILocation(line: 141, column: 13, scope: !3960)
!4009 = !DILocation(line: 141, column: 14, scope: !3960)
!4010 = !DILocation(line: 142, column: 3, scope: !3960)
!4011 = !DILocation(line: 142, column: 14, scope: !3960)
!4012 = !DILocation(line: 143, column: 13, scope: !3960)
!4013 = !DILocation(line: 143, column: 14, scope: !3960)
!4014 = !DILocation(line: 148, column: 9, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !442, line: 145, column: 3)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !442, line: 144, column: 3)
!4017 = distinct !DILexicalBlock(scope: !3960, file: !442, line: 144, column: 3)
!4018 = !DILocation(line: 146, column: 36, scope: !4015)
!4019 = !DILocation(line: 146, column: 16, scope: !4015)
!4020 = !DILocation(line: 147, column: 16, scope: !4015)
!4021 = !DILocation(line: 150, column: 16, scope: !4015)
!4022 = !DILocation(line: 151, column: 16, scope: !4015)
!4023 = !DILocation(line: 144, column: 3, scope: !4017)
!4024 = !DILocation(line: 146, column: 26, scope: !4015)
!4025 = !DILocation(line: 144, column: 21, scope: !4016)
!4026 = !DILocation(line: 144, column: 15, scope: !4016)
!4027 = distinct !{!4027, !4023, !4028, !852, !853}
!4028 = !DILocation(line: 152, column: 3, scope: !4017)
!4029 = !DILocation(line: 149, column: 18, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4015, file: !442, line: 148, column: 9)
!4031 = !DILocation(line: 153, column: 7, scope: !3960)
!4032 = !{i64 0, i64 8, !4033, i64 8, i64 8, !4033}
!4033 = !{!832, !832, i64 0}
!4034 = !{i64 0, i64 8, !4033}
!4035 = !DILocation(line: 155, column: 3, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !3960, file: !442, line: 155, column: 3)
!4037 = !DILocation(line: 157, column: 17, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !442, line: 157, column: 9)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !442, line: 156, column: 3)
!4040 = distinct !DILexicalBlock(scope: !4036, file: !442, line: 155, column: 3)
!4041 = !DILocation(line: 157, column: 27, scope: !4038)
!4042 = !DILocation(line: 157, column: 15, scope: !4038)
!4043 = !DILocation(line: 157, column: 9, scope: !4039)
!4044 = !DILocation(line: 158, column: 7, scope: !4038)
!4045 = !DILocation(line: 159, column: 27, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4039, file: !442, line: 159, column: 9)
!4047 = !DILocation(line: 159, column: 15, scope: !4046)
!4048 = !DILocation(line: 159, column: 9, scope: !4039)
!4049 = !DILocation(line: 160, column: 7, scope: !4046)
!4050 = !DILocation(line: 161, column: 15, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4039, file: !442, line: 161, column: 9)
!4052 = !DILocation(line: 161, column: 9, scope: !4039)
!4053 = !DILocation(line: 162, column: 7, scope: !4051)
!4054 = !DILocation(line: 163, column: 15, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4039, file: !442, line: 163, column: 9)
!4056 = !DILocation(line: 163, column: 9, scope: !4039)
!4057 = !DILocation(line: 164, column: 7, scope: !4055)
!4058 = !DILocation(line: 155, column: 21, scope: !4040)
!4059 = !DILocation(line: 155, column: 15, scope: !4040)
!4060 = distinct !{!4060, !4035, !4061, !852, !853}
!4061 = !DILocation(line: 165, column: 3, scope: !4036)
!4062 = !DILocation(line: 166, column: 34, scope: !3960)
!4063 = !DILocation(line: 166, column: 24, scope: !3960)
!4064 = !DILocation(line: 166, column: 14, scope: !3960)
!4065 = !DILocation(line: 166, column: 12, scope: !3960)
!4066 = !DILocation(line: 166, column: 13, scope: !3960)
!4067 = !DILocation(line: 167, column: 34, scope: !3960)
!4068 = !DILocation(line: 167, column: 24, scope: !3960)
!4069 = !DILocation(line: 167, column: 14, scope: !3960)
!4070 = !DILocation(line: 167, column: 12, scope: !3960)
!4071 = !DILocation(line: 167, column: 13, scope: !3960)
!4072 = !DILocation(line: 168, column: 38, scope: !3960)
!4073 = !DILocation(line: 168, column: 44, scope: !3960)
!4074 = !DILocation(line: 168, column: 27, scope: !3960)
!4075 = !DILocation(line: 168, column: 18, scope: !3960)
!4076 = !DILocation(line: 168, column: 17, scope: !3960)
!4077 = !DILocation(line: 169, column: 39, scope: !3960)
!4078 = !DILocation(line: 169, column: 45, scope: !3960)
!4079 = !DILocation(line: 169, column: 28, scope: !3960)
!4080 = !DILocation(line: 169, column: 19, scope: !3960)
!4081 = !DILocation(line: 169, column: 12, scope: !3960)
!4082 = !DILocation(line: 169, column: 18, scope: !3960)
!4083 = !DILocation(line: 170, column: 18, scope: !3960)
!4084 = !DILocation(line: 171, column: 10, scope: !3960)
!4085 = !DILocation(line: 172, column: 24, scope: !3960)
!4086 = !DILocation(line: 172, column: 14, scope: !3960)
!4087 = !DILocation(line: 173, column: 18, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !3960, file: !442, line: 173, column: 7)
!4089 = !DILocation(line: 173, column: 7, scope: !3960)
!4090 = !DILocation(line: 175, column: 15, scope: !3960)
!4091 = !DILocation(line: 175, column: 20, scope: !3960)
!4092 = !DILocation(line: 176, column: 23, scope: !3960)
!4093 = !DILocation(line: 176, column: 10, scope: !3960)
!4094 = !DILocation(line: 177, column: 9, scope: !3960)
!4095 = !DILocation(line: 178, column: 3, scope: !3960)
!4096 = !DILocation(line: 179, column: 1, scope: !3960)
!4097 = distinct !DISubprogram(name: "ShearRotateImage", scope: !442, file: !442, line: 1711, type: !785, scopeLine: 1713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4098)
!4098 = !{!4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112}
!4099 = !DILocalVariable(name: "image", arg: 1, scope: !4097, file: !442, line: 1711, type: !787)
!4100 = !DILocalVariable(name: "degrees", arg: 2, scope: !4097, file: !442, line: 1711, type: !789)
!4101 = !DILocalVariable(name: "exception", arg: 3, scope: !4097, file: !442, line: 1712, type: !673)
!4102 = !DILocalVariable(name: "integral_image", scope: !4097, file: !442, line: 1715, type: !447)
!4103 = !DILocalVariable(name: "rotate_image", scope: !4097, file: !442, line: 1716, type: !447)
!4104 = !DILocalVariable(name: "status", scope: !4097, file: !442, line: 1719, type: !446)
!4105 = !DILocalVariable(name: "angle", scope: !4097, file: !442, line: 1722, type: !669)
!4106 = !DILocalVariable(name: "shear", scope: !4097, file: !442, line: 1725, type: !1980)
!4107 = !DILocalVariable(name: "border_info", scope: !4097, file: !442, line: 1728, type: !519)
!4108 = !DILocalVariable(name: "bounds", scope: !4097, file: !442, line: 1729, type: !519)
!4109 = !DILocalVariable(name: "height", scope: !4097, file: !442, line: 1732, type: !458)
!4110 = !DILocalVariable(name: "rotations", scope: !4097, file: !442, line: 1733, type: !458)
!4111 = !DILocalVariable(name: "shear_width", scope: !4097, file: !442, line: 1734, type: !458)
!4112 = !DILocalVariable(name: "width", scope: !4097, file: !442, line: 1735, type: !458)
!4113 = !DILocation(line: 0, scope: !4097)
!4114 = !DILocation(line: 1714, column: 3, scope: !4097)
!4115 = !DILocation(line: 1727, column: 3, scope: !4097)
!4116 = !DILocation(line: 1728, column: 5, scope: !4097)
!4117 = !DILocation(line: 1742, column: 14, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1742, column: 7)
!4119 = !DILocation(line: 1742, column: 20, scope: !4118)
!4120 = !DILocation(line: 1742, column: 7, scope: !4097)
!4121 = !DILocation(line: 1743, column: 68, scope: !4118)
!4122 = !DILocation(line: 1743, column: 12, scope: !4118)
!4123 = !DILocation(line: 1743, column: 5, scope: !4118)
!4124 = !DILocation(line: 1747, column: 16, scope: !4097)
!4125 = !DILocation(line: 1747, column: 3, scope: !4097)
!4126 = !DILocation(line: 1749, column: 27, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !442, line: 1749, column: 3)
!4128 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1749, column: 3)
!4129 = !DILocation(line: 1749, column: 3, scope: !4128)
!4130 = distinct !{!4130, !4125, !4131, !852, !853}
!4131 = !DILocation(line: 1748, column: 12, scope: !4097)
!4132 = !DILocation(line: 1750, column: 10, scope: !4127)
!4133 = !DILocation(line: 1749, column: 44, scope: !4127)
!4134 = distinct !{!4134, !4129, !4135, !852, !853}
!4135 = !DILocation(line: 1750, column: 12, scope: !4128)
!4136 = !DILocation(line: 1751, column: 12, scope: !4097)
!4137 = !DILocation(line: 1755, column: 18, scope: !4097)
!4138 = !DILocation(line: 1756, column: 22, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1756, column: 7)
!4140 = !DILocation(line: 1756, column: 7, scope: !4097)
!4141 = !DILocation(line: 1757, column: 5, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4139, file: !442, line: 1757, column: 5)
!4143 = !DILocation(line: 1749, column: 21, scope: !4127)
!4144 = !DILocation(line: 0, scope: !1150, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 1758, column: 26, scope: !4097)
!4146 = !DILocation(line: 56, column: 28, scope: !1150, inlinedAt: !4145)
!4147 = !DILocation(line: 56, column: 36, scope: !1150, inlinedAt: !4145)
!4148 = !DILocation(line: 1758, column: 49, scope: !4097)
!4149 = !DILocation(line: 1758, column: 13, scope: !4097)
!4150 = !DILocation(line: 1758, column: 12, scope: !4097)
!4151 = !DILocation(line: 0, scope: !1150, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 1759, column: 24, scope: !4097)
!4153 = !DILocation(line: 1759, column: 11, scope: !4097)
!4154 = !DILocation(line: 1760, column: 16, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1760, column: 7)
!4156 = !DILocation(line: 1760, column: 24, scope: !4155)
!4157 = !DILocation(line: 1762, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1762, column: 7)
!4159 = !DILocation(line: 1762, column: 56, scope: !4158)
!4160 = !DILocation(line: 1762, column: 7, scope: !4097)
!4161 = !DILocation(line: 1764, column: 51, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4158, file: !442, line: 1763, column: 5)
!4163 = !DILocation(line: 1764, column: 7, scope: !4162)
!4164 = !DILocation(line: 1765, column: 22, scope: !4162)
!4165 = !DILocation(line: 1766, column: 7, scope: !4162)
!4166 = !DILocation(line: 1768, column: 23, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1768, column: 7)
!4168 = !DILocation(line: 1768, column: 29, scope: !4167)
!4169 = !DILocation(line: 1768, column: 7, scope: !4097)
!4170 = !DILocation(line: 1769, column: 12, scope: !4167)
!4171 = !DILocation(line: 1769, column: 5, scope: !4167)
!4172 = !DILocation(line: 1773, column: 25, scope: !4097)
!4173 = !DILocation(line: 1774, column: 26, scope: !4097)
!4174 = !DILocation(line: 1775, column: 36, scope: !4097)
!4175 = !DILocation(line: 1775, column: 51, scope: !4097)
!4176 = !DILocation(line: 1775, column: 31, scope: !4097)
!4177 = !DILocation(line: 1775, column: 61, scope: !4097)
!4178 = !DILocation(line: 1775, column: 60, scope: !4097)
!4179 = !DILocation(line: 1775, column: 66, scope: !4097)
!4180 = !DILocation(line: 1775, column: 25, scope: !4097)
!4181 = !DILocation(line: 1775, column: 16, scope: !4097)
!4182 = !DILocation(line: 1776, column: 37, scope: !4097)
!4183 = !DILocation(line: 1776, column: 58, scope: !4097)
!4184 = !DILocation(line: 1776, column: 32, scope: !4097)
!4185 = !DILocation(line: 1776, column: 67, scope: !4097)
!4186 = !DILocation(line: 1776, column: 74, scope: !4097)
!4187 = !DILocation(line: 1776, column: 26, scope: !4097)
!4188 = !DILocation(line: 1776, column: 17, scope: !4097)
!4189 = !DILocation(line: 1777, column: 35, scope: !4097)
!4190 = !DILocation(line: 1777, column: 57, scope: !4097)
!4191 = !DILocation(line: 1777, column: 30, scope: !4097)
!4192 = !DILocation(line: 1777, column: 66, scope: !4097)
!4193 = !DILocation(line: 1778, column: 17, scope: !4097)
!4194 = !DILocation(line: 1777, column: 24, scope: !4097)
!4195 = !DILocation(line: 1777, column: 15, scope: !4097)
!4196 = !DILocation(line: 1779, column: 51, scope: !4097)
!4197 = !DILocation(line: 1779, column: 38, scope: !4097)
!4198 = !DILocation(line: 1780, column: 17, scope: !4097)
!4199 = !DILocation(line: 1780, column: 29, scope: !4097)
!4200 = !DILocation(line: 1779, column: 28, scope: !4097)
!4201 = !DILocation(line: 1780, column: 32, scope: !4097)
!4202 = !DILocation(line: 1780, column: 36, scope: !4097)
!4203 = !DILocation(line: 1779, column: 22, scope: !4097)
!4204 = !DILocation(line: 1779, column: 12, scope: !4097)
!4205 = !DILocation(line: 1781, column: 51, scope: !4097)
!4206 = !DILocation(line: 1781, column: 58, scope: !4097)
!4207 = !DILocation(line: 1781, column: 61, scope: !4097)
!4208 = !DILocation(line: 1781, column: 65, scope: !4097)
!4209 = !DILocation(line: 1781, column: 22, scope: !4097)
!4210 = !DILocation(line: 1781, column: 12, scope: !4097)
!4211 = !DILocation(line: 1785, column: 19, scope: !4097)
!4212 = !DILocation(line: 1785, column: 48, scope: !4097)
!4213 = !DILocation(line: 1786, column: 19, scope: !4097)
!4214 = !DILocation(line: 1786, column: 26, scope: !4097)
!4215 = !DILocation(line: 1787, column: 20, scope: !4097)
!4216 = !DILocation(line: 1788, column: 15, scope: !4097)
!4217 = !DILocation(line: 1788, column: 21, scope: !4097)
!4218 = !DILocation(line: 1789, column: 16, scope: !4097)
!4219 = !DILocation(line: 1789, column: 15, scope: !4097)
!4220 = !DILocation(line: 1790, column: 18, scope: !4097)
!4221 = !DILocation(line: 1791, column: 20, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1791, column: 7)
!4223 = !DILocation(line: 1791, column: 7, scope: !4097)
!4224 = !DILocation(line: 1792, column: 5, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4222, file: !442, line: 1792, column: 5)
!4226 = !DILocation(line: 1796, column: 35, scope: !4097)
!4227 = !DILocation(line: 1797, column: 20, scope: !4097)
!4228 = !DILocation(line: 1797, column: 24, scope: !4097)
!4229 = !DILocation(line: 1797, column: 32, scope: !4097)
!4230 = !DILocation(line: 1796, column: 10, scope: !4097)
!4231 = !DILocation(line: 1798, column: 14, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1798, column: 7)
!4233 = !DILocation(line: 1798, column: 7, scope: !4097)
!4234 = !DILocation(line: 1800, column: 20, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !442, line: 1799, column: 5)
!4236 = !DILocation(line: 1800, column: 19, scope: !4235)
!4237 = !DILocation(line: 1801, column: 7, scope: !4235)
!4238 = !DILocation(line: 1803, column: 35, scope: !4097)
!4239 = !DILocation(line: 1804, column: 20, scope: !4097)
!4240 = !DILocation(line: 1804, column: 27, scope: !4097)
!4241 = !DILocation(line: 1804, column: 41, scope: !4097)
!4242 = !DILocation(line: 1803, column: 10, scope: !4097)
!4243 = !DILocation(line: 1805, column: 14, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1805, column: 7)
!4245 = !DILocation(line: 1805, column: 7, scope: !4097)
!4246 = !DILocation(line: 1807, column: 20, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !442, line: 1806, column: 5)
!4248 = !DILocation(line: 1807, column: 19, scope: !4247)
!4249 = !DILocation(line: 1808, column: 7, scope: !4247)
!4250 = !DILocation(line: 1811, column: 20, scope: !4097)
!4251 = !DILocation(line: 1811, column: 27, scope: !4097)
!4252 = !DILocation(line: 1811, column: 41, scope: !4097)
!4253 = !DILocation(line: 1811, column: 69, scope: !4097)
!4254 = !DILocation(line: 1811, column: 73, scope: !4097)
!4255 = !DILocation(line: 1812, column: 19, scope: !4097)
!4256 = !DILocation(line: 1810, column: 10, scope: !4097)
!4257 = !DILocation(line: 1813, column: 14, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1813, column: 7)
!4259 = !DILocation(line: 1813, column: 7, scope: !4097)
!4260 = !DILocation(line: 1815, column: 20, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4258, file: !442, line: 1814, column: 5)
!4262 = !DILocation(line: 1815, column: 19, scope: !4261)
!4263 = !DILocation(line: 1816, column: 7, scope: !4261)
!4264 = !DILocation(line: 1818, column: 55, scope: !4097)
!4265 = !DILocation(line: 1819, column: 5, scope: !4097)
!4266 = !DILocation(line: 1818, column: 10, scope: !4097)
!4267 = !DILocation(line: 1820, column: 32, scope: !4097)
!4268 = !DILocation(line: 1820, column: 3, scope: !4097)
!4269 = !DILocation(line: 1820, column: 17, scope: !4097)
!4270 = !DILocation(line: 1820, column: 24, scope: !4097)
!4271 = !DILocation(line: 1821, column: 17, scope: !4097)
!4272 = !DILocation(line: 1823, column: 14, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4097, file: !442, line: 1823, column: 7)
!4274 = !DILocation(line: 1822, column: 28, scope: !4097)
!4275 = !DILocation(line: 1823, column: 7, scope: !4097)
!4276 = !DILocation(line: 1824, column: 18, scope: !4273)
!4277 = !DILocation(line: 1824, column: 17, scope: !4273)
!4278 = !DILocation(line: 1824, column: 5, scope: !4273)
!4279 = !DILocation(line: 1826, column: 1, scope: !4097)
!4280 = !DISubprogram(name: "AcquireMatrixInfo", scope: !774, file: !774, line: 42, type: !4281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!772, !671, !671, !671, !673}
!4283 = !DISubprogram(name: "DestroyMatrixInfo", scope: !774, file: !774, line: 43, type: !4284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!772, !772}
!4286 = !DISubprogram(name: "NullMatrix", scope: !774, file: !774, line: 38, type: !4287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!446, !772}
!4289 = !DISubprogram(name: "SetMatrixElement", scope: !774, file: !774, line: 39, type: !4290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!446, !4292, !672, !672, !4294}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4296 = distinct !DISubprogram(name: "RadonProjection", scope: !442, file: !442, line: 220, type: !4297, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !787, !772, !772, !672, !767}
!4299 = !{!4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4317, !4318, !4319, !4320, !4324, !4325, !4329, !4330}
!4300 = !DILocalVariable(name: "image", arg: 1, scope: !4296, file: !442, line: 220, type: !787)
!4301 = !DILocalVariable(name: "source_matrix", arg: 2, scope: !4296, file: !442, line: 220, type: !772)
!4302 = !DILocalVariable(name: "destination_matrix", arg: 3, scope: !4296, file: !442, line: 221, type: !772)
!4303 = !DILocalVariable(name: "sign", arg: 4, scope: !4296, file: !442, line: 221, type: !672)
!4304 = !DILocalVariable(name: "projection", arg: 5, scope: !4296, file: !442, line: 221, type: !767)
!4305 = !DILocalVariable(name: "swap", scope: !4296, file: !442, line: 224, type: !772)
!4306 = !DILocalVariable(name: "p", scope: !4296, file: !442, line: 227, type: !772)
!4307 = !DILocalVariable(name: "q", scope: !4296, file: !442, line: 228, type: !772)
!4308 = !DILocalVariable(name: "x", scope: !4296, file: !442, line: 231, type: !511)
!4309 = !DILocalVariable(name: "step", scope: !4296, file: !442, line: 234, type: !458)
!4310 = !DILocalVariable(name: "i", scope: !4311, file: !442, line: 243, type: !511)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !442, line: 241, column: 5)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !442, line: 240, column: 5)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !442, line: 240, column: 5)
!4314 = distinct !DILexicalBlock(scope: !4315, file: !442, line: 239, column: 3)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !442, line: 238, column: 3)
!4316 = distinct !DILexicalBlock(scope: !4296, file: !442, line: 238, column: 3)
!4317 = !DILocalVariable(name: "y", scope: !4311, file: !442, line: 246, type: !511)
!4318 = !DILocalVariable(name: "element", scope: !4311, file: !442, line: 249, type: !476)
!4319 = !DILocalVariable(name: "neighbor", scope: !4311, file: !442, line: 250, type: !476)
!4320 = !DILocalVariable(name: "y", scope: !4321, file: !442, line: 303, type: !511)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !442, line: 301, column: 3)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !442, line: 300, column: 3)
!4323 = distinct !DILexicalBlock(scope: !4296, file: !442, line: 300, column: 3)
!4324 = !DILocalVariable(name: "sum", scope: !4321, file: !442, line: 306, type: !458)
!4325 = !DILocalVariable(name: "delta", scope: !4326, file: !442, line: 312, type: !511)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !442, line: 310, column: 5)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !442, line: 309, column: 5)
!4328 = distinct !DILexicalBlock(scope: !4321, file: !442, line: 309, column: 5)
!4329 = !DILocalVariable(name: "element", scope: !4326, file: !442, line: 315, type: !476)
!4330 = !DILocalVariable(name: "neighbor", scope: !4326, file: !442, line: 316, type: !476)
!4331 = !DILocation(line: 0, scope: !4296)
!4332 = !DILocation(line: 238, column: 23, scope: !4315)
!4333 = !DILocation(line: 238, column: 21, scope: !4315)
!4334 = !DILocation(line: 238, column: 3, scope: !4316)
!4335 = !DILocation(line: 240, column: 29, scope: !4312)
!4336 = !DILocation(line: 240, column: 17, scope: !4312)
!4337 = !DILocation(line: 240, column: 5, scope: !4313)
!4338 = !DILocation(line: 238, column: 48, scope: !4315)
!4339 = !DILocation(line: 252, column: 7, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4311, file: !442, line: 252, column: 7)
!4341 = !DILocation(line: 248, column: 7, scope: !4311)
!4342 = !DILocation(line: 0, scope: !4311)
!4343 = !DILocation(line: 252, column: 38, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4340, file: !442, line: 252, column: 7)
!4345 = !DILocation(line: 252, column: 19, scope: !4344)
!4346 = distinct !{!4346, !4339, !4347, !852, !853}
!4347 = !DILocation(line: 290, column: 7, scope: !4340)
!4348 = !DILocation(line: 283, column: 15, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !442, line: 283, column: 15)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !442, line: 282, column: 9)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !442, line: 281, column: 9)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !442, line: 281, column: 9)
!4353 = distinct !DILexicalBlock(scope: !4344, file: !442, line: 253, column: 7)
!4354 = !DILocation(line: 283, column: 50, scope: !4349)
!4355 = !DILocation(line: 283, column: 15, scope: !4350)
!4356 = !DILocation(line: 285, column: 15, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4350, file: !442, line: 285, column: 15)
!4358 = !DILocation(line: 285, column: 52, scope: !4357)
!4359 = !DILocation(line: 285, column: 15, scope: !4350)
!4360 = !DILocation(line: 287, column: 15, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4350, file: !442, line: 287, column: 15)
!4362 = !DILocation(line: 0, scope: !4350)
!4363 = !DILocation(line: 281, column: 50, scope: !4351)
!4364 = !DILocation(line: 281, column: 31, scope: !4351)
!4365 = !DILocation(line: 281, column: 19, scope: !4351)
!4366 = !DILocation(line: 281, column: 9, scope: !4352)
!4367 = distinct !{!4367, !4366, !4368, !852, !853}
!4368 = !DILocation(line: 289, column: 9, scope: !4352)
!4369 = !DILocation(line: 271, column: 15, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4371, file: !442, line: 271, column: 15)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !442, line: 270, column: 9)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !442, line: 269, column: 9)
!4373 = distinct !DILexicalBlock(scope: !4353, file: !442, line: 269, column: 9)
!4374 = !DILocation(line: 271, column: 50, scope: !4370)
!4375 = !DILocation(line: 271, column: 15, scope: !4371)
!4376 = !DILocation(line: 273, column: 44, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4371, file: !442, line: 273, column: 15)
!4378 = !DILocation(line: 273, column: 15, scope: !4377)
!4379 = !DILocation(line: 273, column: 58, scope: !4377)
!4380 = !DILocation(line: 273, column: 15, scope: !4371)
!4381 = !DILocation(line: 275, column: 21, scope: !4371)
!4382 = !DILocation(line: 275, column: 19, scope: !4371)
!4383 = !DILocation(line: 276, column: 15, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4371, file: !442, line: 276, column: 15)
!4385 = !DILocation(line: 276, column: 53, scope: !4384)
!4386 = !DILocation(line: 276, column: 15, scope: !4371)
!4387 = !DILocation(line: 278, column: 15, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4371, file: !442, line: 278, column: 15)
!4389 = !DILocation(line: 0, scope: !4371)
!4390 = !DILocation(line: 269, column: 54, scope: !4372)
!4391 = !DILocation(line: 269, column: 32, scope: !4372)
!4392 = !DILocation(line: 269, column: 48, scope: !4372)
!4393 = !DILocation(line: 269, column: 19, scope: !4372)
!4394 = !DILocation(line: 269, column: 9, scope: !4373)
!4395 = distinct !{!4395, !4394, !4396, !852, !853}
!4396 = !DILocation(line: 280, column: 9, scope: !4373)
!4397 = !DILocation(line: 256, column: 15, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4399, file: !442, line: 256, column: 15)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !442, line: 255, column: 9)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !442, line: 254, column: 9)
!4401 = distinct !DILexicalBlock(scope: !4353, file: !442, line: 254, column: 9)
!4402 = !DILocation(line: 256, column: 50, scope: !4398)
!4403 = !DILocation(line: 256, column: 15, scope: !4399)
!4404 = !DILocation(line: 258, column: 44, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4399, file: !442, line: 258, column: 15)
!4406 = !DILocation(line: 258, column: 15, scope: !4405)
!4407 = !DILocation(line: 258, column: 58, scope: !4405)
!4408 = !DILocation(line: 258, column: 15, scope: !4399)
!4409 = !DILocation(line: 260, column: 21, scope: !4399)
!4410 = !DILocation(line: 260, column: 19, scope: !4399)
!4411 = !DILocation(line: 261, column: 15, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4399, file: !442, line: 261, column: 15)
!4413 = !DILocation(line: 261, column: 53, scope: !4412)
!4414 = !DILocation(line: 261, column: 15, scope: !4399)
!4415 = !DILocation(line: 263, column: 46, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4399, file: !442, line: 263, column: 15)
!4417 = !DILocation(line: 263, column: 15, scope: !4416)
!4418 = !DILocation(line: 263, column: 60, scope: !4416)
!4419 = !DILocation(line: 263, column: 15, scope: !4399)
!4420 = !DILocation(line: 265, column: 21, scope: !4399)
!4421 = !DILocation(line: 265, column: 19, scope: !4399)
!4422 = !DILocation(line: 266, column: 15, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4399, file: !442, line: 266, column: 15)
!4424 = !DILocation(line: 0, scope: !4399)
!4425 = !DILocation(line: 254, column: 58, scope: !4400)
!4426 = !DILocation(line: 254, column: 34, scope: !4400)
!4427 = !DILocation(line: 254, column: 52, scope: !4400)
!4428 = !DILocation(line: 254, column: 21, scope: !4400)
!4429 = !DILocation(line: 254, column: 9, scope: !4401)
!4430 = distinct !{!4430, !4429, !4431, !852, !853}
!4431 = !DILocation(line: 268, column: 9, scope: !4401)
!4432 = !DILocation(line: 0, scope: !4353)
!4433 = !DILocation(line: 0, scope: !4401)
!4434 = !DILocation(line: 291, column: 5, scope: !4312)
!4435 = !DILocation(line: 240, column: 51, scope: !4312)
!4436 = distinct !{!4436, !4337, !4437, !852, !853}
!4437 = !DILocation(line: 291, column: 5, scope: !4313)
!4438 = !DILocation(line: 300, column: 27, scope: !4322)
!4439 = !DILocation(line: 300, column: 15, scope: !4322)
!4440 = !DILocation(line: 300, column: 3, scope: !4323)
!4441 = distinct !{!4441, !4334, !4442, !852, !853}
!4442 = !DILocation(line: 295, column: 3, scope: !4316)
!4443 = !DILocation(line: 0, scope: !4321)
!4444 = !DILocation(line: 309, column: 30, scope: !4327)
!4445 = !DILocation(line: 309, column: 46, scope: !4327)
!4446 = !DILocation(line: 309, column: 17, scope: !4327)
!4447 = !DILocation(line: 309, column: 5, scope: !4328)
!4448 = !DILocation(line: 314, column: 7, scope: !4326)
!4449 = !DILocation(line: 0, scope: !4326)
!4450 = !DILocation(line: 318, column: 11, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4326, file: !442, line: 318, column: 11)
!4452 = !DILocation(line: 318, column: 44, scope: !4451)
!4453 = !DILocation(line: 0, scope: !4327)
!4454 = !DILocation(line: 318, column: 11, scope: !4326)
!4455 = !DILocation(line: 320, column: 11, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4326, file: !442, line: 320, column: 11)
!4457 = !DILocation(line: 320, column: 47, scope: !4456)
!4458 = !DILocation(line: 320, column: 11, scope: !4326)
!4459 = !DILocation(line: 322, column: 23, scope: !4326)
!4460 = !DILocation(line: 322, column: 13, scope: !4326)
!4461 = !DILocation(line: 322, column: 41, scope: !4326)
!4462 = !DILocation(line: 322, column: 31, scope: !4326)
!4463 = !DILocation(line: 322, column: 30, scope: !4326)
!4464 = !DILocation(line: 323, column: 17, scope: !4326)
!4465 = !DILocation(line: 323, column: 10, scope: !4326)
!4466 = !DILocation(line: 324, column: 5, scope: !4327)
!4467 = distinct !{!4467, !4447, !4468, !852, !853}
!4468 = !DILocation(line: 324, column: 5, scope: !4328)
!4469 = !DILocation(line: 308, column: 8, scope: !4321)
!4470 = !DILocation(line: 325, column: 16, scope: !4321)
!4471 = !DILocation(line: 325, column: 40, scope: !4321)
!4472 = !DILocation(line: 325, column: 35, scope: !4321)
!4473 = !DILocation(line: 325, column: 42, scope: !4321)
!4474 = !DILocation(line: 325, column: 5, scope: !4321)
!4475 = !DILocation(line: 325, column: 45, scope: !4321)
!4476 = !DILocation(line: 300, column: 49, scope: !4322)
!4477 = distinct !{!4477, !4440, !4478, !852, !853}
!4478 = !DILocation(line: 326, column: 3, scope: !4323)
!4479 = !DILocation(line: 327, column: 1, scope: !4296)
!4480 = !DISubprogram(name: "GetMatrixColumns", scope: !774, file: !774, line: 46, type: !4481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!458, !4292}
!4483 = !DISubprogram(name: "GetMatrixRows", scope: !774, file: !774, line: 47, type: !4481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4484 = !DISubprogram(name: "GetMatrixElement", scope: !774, file: !774, line: 37, type: !4485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!446, !4292, !672, !672, !502}
!4487 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !4488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !787, !2180}
!4490 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !394, file: !394, line: 99, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4491 = !DISubprogram(name: "DecodePixelGamma", scope: !326, file: !326, line: 179, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4492 = !DISubprogram(name: "ParseAbsoluteGeometry", scope: !153, file: !153, line: 141, type: !4493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1389)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!4495, !580, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
